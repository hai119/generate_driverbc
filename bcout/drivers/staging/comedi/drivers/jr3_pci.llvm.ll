; ModuleID = '../bcout/drivers/staging/comedi/drivers/jr3_pci.llvm.bc'
source_filename = "drivers/staging/comedi/drivers/jr3_pci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_jr3_pci_driver_init6:\09\09\09"
module asm ".long\09jr3_pci_driver_init - .\09\09\09"
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
%struct.jr3_pci_board = type { i8*, i32 }
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
%struct.jr3_pci_dev_private = type { %struct.timer_list, %struct.comedi_device* }
%struct.jr3_pci_subdev_private = type { %struct.jr3_sensor*, i64, i32, i32, i32, [9 x %union.jr3_pci_single_range], [58 x %struct.comedi_lrange*], [58 x i32], i16, i32 }
%struct.jr3_sensor = type { [16 x %struct.raw_channel], [24 x i32], [8 x i32], %struct.six_axis_array, [2 x i32], %struct.six_axis_array, i32, i32, %struct.six_axis_array, i32, i32, %struct.six_axis_array, i32, i32, %struct.force_array, %struct.six_axis_array, i32, i32, [7 x %struct.force_array], %struct.force_array, %struct.force_array, %struct.force_array, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x %struct.le_struct], [16 x %struct.intern_transform] }
%struct.raw_channel = type { i32, i32, [2 x i32] }
%struct.six_axis_array = type { i32, i32, i32, i32, i32, i32 }
%struct.force_array = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.le_struct = type { i32, i32, i32, [4 x %struct.thresh_struct], i32 }
%struct.thresh_struct = type { i32, i32, i32 }
%struct.intern_transform = type { [8 x %struct.anon.66] }
%struct.anon.66 = type { i32, i32 }
%union.jr3_pci_single_range = type { %struct.comedi_lrange, [12 x i8] }
%struct.jr3_block = type { [16384 x i32], %struct.jr3_sensor, [193536 x i8], [32768 x i32], i32, [131068 x i8] }
%struct.jr3_pci_poll_delay = type { i32, i32 }
%struct.jr3_pci_transform = type { [8 x %struct.anon.67] }
%struct.anon.67 = type { i16, i16 }
%struct.six_axis_t = type { i16, i16, i16, i16, i16, i16 }

@__UNIQUE_ID___addressable_jr3_pci_driver_init236 = internal global i8* bitcast (i32 ()* @jr3_pci_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@jr3_pci_driver = internal global %struct.comedi_driver { %struct.comedi_driver* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct.module* null, i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* null, void (%struct.comedi_device*)* @jr3_pci_detach, i32 (%struct.comedi_device*, i64)* @jr3_pci_auto_attach, i32 0, i8** null, i32 0 }, align 8, !dbg !4012
@jr3_pci_pci_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct.pci_device_id* getelementptr inbounds ([6 x %struct.pci_device_id], [6 x %struct.pci_device_id]* @jr3_pci_pci_table, i32 0, i32 0), i32 (%struct.pci_dev*, %struct.pci_device_id*)* @jr3_pci_pci_probe, void (%struct.pci_dev*)* @comedi_pci_auto_unconfig, i32 (%struct.pci_dev*, i32)* null, i32 (%struct.pci_dev*)* null, void (%struct.pci_dev*)* null, i32 (%struct.pci_dev*, i32)* null, %struct.pci_error_handlers* null, %struct.attribute_group** null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, align 8, !dbg !4026
@__exitcall_jr3_pci_driver_exit = internal global void ()* @jr3_pci_driver_exit, section ".exitcall.exit", align 8, !dbg !3984
@__UNIQUE_ID_author237 = internal constant [45 x i8] c"jr3_pci.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1, !dbg !3989
@__UNIQUE_ID_description238 = internal constant [65 x i8] c"jr3_pci.description=Comedi driver for JR3/PCI force sensor board\00", section ".modinfo", align 1, !dbg !3994
@__UNIQUE_ID_file239 = internal constant [52 x i8] c"jr3_pci.file=drivers/staging/comedi/drivers/jr3_pci\00", section ".modinfo", align 1, !dbg !3999
@__UNIQUE_ID_license240 = internal constant [20 x i8] c"jr3_pci.license=GPL\00", section ".modinfo", align 1, !dbg !4004
@__UNIQUE_ID_firmware241 = internal constant [35 x i8] c"jr3_pci.firmware=comedi/jr3pci.idm\00", section ".modinfo", align 1, !dbg !4007
@.str = private unnamed_addr constant [8 x i8] c"jr3_pci\00", align 1
@jr3_pci_auto_attach.board = internal global %struct.jr3_pci_board* null, align 8, !dbg !4014
@jr3_pci_boards = internal constant [4 x %struct.jr3_pci_board] [%struct.jr3_pci_board { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 1 }, %struct.jr3_pci_board { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 2 }, %struct.jr3_pci_board { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i32 3 }, %struct.jr3_pci_board { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i32 4 }], align 16, !dbg !4023
@.str.1 = private unnamed_addr constant [18 x i8] c"comedi/jr3pci.idm\00", align 1
@jiffies = external dso_local global i64, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"jr3_pci_1\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"jr3_pci_2\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"jr3_pci_3\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"jr3_pci_4\00", align 1
@_ctype = external dso_local constant [0 x i8], align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@jr3_pci_pci_table = internal constant [6 x %struct.pci_device_id] [%struct.pci_device_id { i32 5986, i32 4369, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 5986, i32 12561, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 5986, i32 12562, i32 -1, i32 -1, i32 0, i32 0, i64 1 }, %struct.pci_device_id { i32 5986, i32 12563, i32 -1, i32 -1, i32 0, i32 0, i64 2 }, %struct.pci_device_id { i32 5986, i32 12564, i32 -1, i32 -1, i32 0, i32 0, i64 3 }, %struct.pci_device_id zeroinitializer], align 16, !dbg !4307
@llvm.used = appending global [8 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_jr3_pci_driver_init236 to i8*), i8* bitcast (void ()* @jr3_pci_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_jr3_pci_driver_exit to i8*), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__UNIQUE_ID_author237, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @__UNIQUE_ID_description238, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__UNIQUE_ID_file239, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__UNIQUE_ID_license240, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__UNIQUE_ID_firmware241, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @jr3_pci_driver_init() #0 section ".init.text" !dbg !4316 {
entry:
  %call = call i32 @comedi_pci_driver_register(%struct.comedi_driver* @jr3_pci_driver, %struct.pci_driver* @jr3_pci_pci_driver) #8, !dbg !4319
  ret i32 %call, !dbg !4319
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @jr3_pci_driver_exit() #0 section ".exit.text" !dbg !4320 {
entry:
  call void @comedi_pci_driver_unregister(%struct.comedi_driver* @jr3_pci_driver, %struct.pci_driver* @jr3_pci_pci_driver) #8, !dbg !4321
  ret void, !dbg !4321
}

; Function Attrs: noredzone
declare dso_local void @comedi_pci_driver_unregister(%struct.comedi_driver*, %struct.pci_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_pci_driver_register(%struct.comedi_driver*, %struct.pci_driver*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @jr3_pci_detach(%struct.comedi_device* %dev) #2 !dbg !4322 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %devpriv = alloca %struct.jr3_pci_dev_private*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4323, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.declare(metadata %struct.jr3_pci_dev_private** %devpriv, metadata !4325, metadata !DIExpression()), !dbg !4326
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4327
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !4328
  %1 = load i8*, i8** %private, align 8, !dbg !4328
  %2 = bitcast i8* %1 to %struct.jr3_pci_dev_private*, !dbg !4327
  store %struct.jr3_pci_dev_private* %2, %struct.jr3_pci_dev_private** %devpriv, align 8, !dbg !4326
  %3 = load %struct.jr3_pci_dev_private*, %struct.jr3_pci_dev_private** %devpriv, align 8, !dbg !4329
  %tobool = icmp ne %struct.jr3_pci_dev_private* %3, null, !dbg !4329
  br i1 %tobool, label %if.then, label %if.end, !dbg !4331

if.then:                                          ; preds = %entry
  %4 = load %struct.jr3_pci_dev_private*, %struct.jr3_pci_dev_private** %devpriv, align 8, !dbg !4332
  %timer = getelementptr inbounds %struct.jr3_pci_dev_private, %struct.jr3_pci_dev_private* %4, i32 0, i32 0, !dbg !4332
  %call = call i32 @del_timer(%struct.timer_list* %timer) #8, !dbg !4332
  br label %if.end, !dbg !4332

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4333
  call void @comedi_pci_detach(%struct.comedi_device* %5) #8, !dbg !4334
  ret void, !dbg !4335
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @jr3_pci_auto_attach(%struct.comedi_device* %dev, i64 %context) #2 !dbg !4016 {
entry:
  %retval.i86 = alloca i64, align 8
  %m.addr.i87 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i87, metadata !4336, metadata !DIExpression()), !dbg !4341
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !4336, metadata !DIExpression()), !dbg !4343
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %context.addr = alloca i64, align 8
  %pcidev = alloca %struct.pci_dev*, align 8
  %devpriv = alloca %struct.jr3_pci_dev_private*, align 8
  %spriv = alloca %struct.jr3_pci_subdev_private*, align 8
  %block = alloca %struct.jr3_block*, align 8
  %s = alloca %struct.comedi_subdevice*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4348, metadata !DIExpression()), !dbg !4349
  store i64 %context, i64* %context.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %context.addr, metadata !4350, metadata !DIExpression()), !dbg !4351
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pcidev, metadata !4352, metadata !DIExpression()), !dbg !4353
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4354
  %call = call %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device* %0) #8, !dbg !4355
  store %struct.pci_dev* %call, %struct.pci_dev** %pcidev, align 8, !dbg !4353
  call void @llvm.dbg.declare(metadata %struct.jr3_pci_dev_private** %devpriv, metadata !4356, metadata !DIExpression()), !dbg !4357
  call void @llvm.dbg.declare(metadata %struct.jr3_pci_subdev_private** %spriv, metadata !4358, metadata !DIExpression()), !dbg !4495
  call void @llvm.dbg.declare(metadata %struct.jr3_block** %block, metadata !4496, metadata !DIExpression()), !dbg !4518
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s, metadata !4519, metadata !DIExpression()), !dbg !4520
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4521, metadata !DIExpression()), !dbg !4522
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4523, metadata !DIExpression()), !dbg !4524
  br label %do.body, !dbg !4525

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4526

do.end:                                           ; preds = %do.body
  %1 = load i64, i64* %context.addr, align 8, !dbg !4528
  %cmp = icmp ult i64 %1, 4, !dbg !4530
  br i1 %cmp, label %if.then, label %if.end, !dbg !4531

if.then:                                          ; preds = %do.end
  %2 = load i64, i64* %context.addr, align 8, !dbg !4532
  %arrayidx = getelementptr [4 x %struct.jr3_pci_board], [4 x %struct.jr3_pci_board]* @jr3_pci_boards, i64 0, i64 %2, !dbg !4533
  store %struct.jr3_pci_board* %arrayidx, %struct.jr3_pci_board** @jr3_pci_auto_attach.board, align 8, !dbg !4534
  br label %if.end, !dbg !4535

if.end:                                           ; preds = %if.then, %do.end
  %3 = load %struct.jr3_pci_board*, %struct.jr3_pci_board** @jr3_pci_auto_attach.board, align 8, !dbg !4536
  %tobool = icmp ne %struct.jr3_pci_board* %3, null, !dbg !4536
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !4538

if.then1:                                         ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !4539
  br label %return, !dbg !4539

if.end2:                                          ; preds = %if.end
  %4 = load %struct.jr3_pci_board*, %struct.jr3_pci_board** @jr3_pci_auto_attach.board, align 8, !dbg !4540
  %5 = bitcast %struct.jr3_pci_board* %4 to i8*, !dbg !4540
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4541
  %board_ptr = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 9, !dbg !4542
  store i8* %5, i8** %board_ptr, align 8, !dbg !4543
  %7 = load %struct.jr3_pci_board*, %struct.jr3_pci_board** @jr3_pci_auto_attach.board, align 8, !dbg !4544
  %name = getelementptr inbounds %struct.jr3_pci_board, %struct.jr3_pci_board* %7, i32 0, i32 0, !dbg !4545
  %8 = load i8*, i8** %name, align 8, !dbg !4545
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4546
  %board_name = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 8, !dbg !4547
  store i8* %8, i8** %board_name, align 8, !dbg !4548
  %10 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4549
  %call3 = call i8* @comedi_alloc_devpriv(%struct.comedi_device* %10, i64 48) #8, !dbg !4550
  %11 = bitcast i8* %call3 to %struct.jr3_pci_dev_private*, !dbg !4550
  store %struct.jr3_pci_dev_private* %11, %struct.jr3_pci_dev_private** %devpriv, align 8, !dbg !4551
  %12 = load %struct.jr3_pci_dev_private*, %struct.jr3_pci_dev_private** %devpriv, align 8, !dbg !4552
  %tobool4 = icmp ne %struct.jr3_pci_dev_private* %12, null, !dbg !4552
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !4554

if.then5:                                         ; preds = %if.end2
  store i32 -12, i32* %retval, align 4, !dbg !4555
  br label %return, !dbg !4555

if.end6:                                          ; preds = %if.end2
  %13 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4556
  %call7 = call i32 @comedi_pci_enable(%struct.comedi_device* %13) #8, !dbg !4557
  store i32 %call7, i32* %ret, align 4, !dbg !4558
  %14 = load i32, i32* %ret, align 4, !dbg !4559
  %tobool8 = icmp ne i32 %14, 0, !dbg !4559
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !4561

if.then9:                                         ; preds = %if.end6
  %15 = load i32, i32* %ret, align 4, !dbg !4562
  store i32 %15, i32* %retval, align 4, !dbg !4563
  br label %return, !dbg !4563

if.end10:                                         ; preds = %if.end6
  %16 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4564
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 44, !dbg !4564
  %arrayidx11 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 0, !dbg !4564
  %start = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx11, i32 0, i32 0, !dbg !4564
  %17 = load i64, i64* %start, align 8, !dbg !4564
  %cmp12 = icmp eq i64 %17, 0, !dbg !4564
  br i1 %cmp12, label %land.lhs.true, label %cond.false, !dbg !4564

land.lhs.true:                                    ; preds = %if.end10
  %18 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4564
  %resource13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 44, !dbg !4564
  %arrayidx14 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource13, i64 0, i64 0, !dbg !4564
  %end = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx14, i32 0, i32 1, !dbg !4564
  %19 = load i64, i64* %end, align 8, !dbg !4564
  %20 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4564
  %resource15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 44, !dbg !4564
  %arrayidx16 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource15, i64 0, i64 0, !dbg !4564
  %start17 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx16, i32 0, i32 0, !dbg !4564
  %21 = load i64, i64* %start17, align 8, !dbg !4564
  %cmp18 = icmp eq i64 %19, %21, !dbg !4564
  br i1 %cmp18, label %cond.true, label %cond.false, !dbg !4564

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end, !dbg !4564

cond.false:                                       ; preds = %land.lhs.true, %if.end10
  %22 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4564
  %resource19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 44, !dbg !4564
  %arrayidx20 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource19, i64 0, i64 0, !dbg !4564
  %end21 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx20, i32 0, i32 1, !dbg !4564
  %23 = load i64, i64* %end21, align 8, !dbg !4564
  %24 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4564
  %resource22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 44, !dbg !4564
  %arrayidx23 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource22, i64 0, i64 0, !dbg !4564
  %start24 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx23, i32 0, i32 0, !dbg !4564
  %25 = load i64, i64* %start24, align 8, !dbg !4564
  %sub = sub i64 %23, %25, !dbg !4564
  %add = add i64 %sub, 1, !dbg !4564
  br label %cond.end, !dbg !4564

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %add, %cond.false ], !dbg !4564
  %26 = load %struct.jr3_pci_board*, %struct.jr3_pci_board** @jr3_pci_auto_attach.board, align 8, !dbg !4566
  %n_subdevs = getelementptr inbounds %struct.jr3_pci_board, %struct.jr3_pci_board* %26, i32 0, i32 1, !dbg !4567
  %27 = load i32, i32* %n_subdevs, align 8, !dbg !4567
  %conv = sext i32 %27 to i64, !dbg !4566
  %mul = mul i64 %conv, 524288, !dbg !4568
  %cmp25 = icmp ult i64 %cond, %mul, !dbg !4569
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !4570

if.then27:                                        ; preds = %cond.end
  store i32 -6, i32* %retval, align 4, !dbg !4571
  br label %return, !dbg !4571

if.end28:                                         ; preds = %cond.end
  %28 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4572
  %call29 = call i8* @pci_ioremap_bar(%struct.pci_dev* %28, i32 0) #8, !dbg !4573
  %29 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4574
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %29, i32 0, i32 17, !dbg !4575
  store i8* %call29, i8** %mmio, align 8, !dbg !4576
  %30 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4577
  %mmio30 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %30, i32 0, i32 17, !dbg !4579
  %31 = load i8*, i8** %mmio30, align 8, !dbg !4579
  %tobool31 = icmp ne i8* %31, null, !dbg !4577
  br i1 %tobool31, label %if.end33, label %if.then32, !dbg !4580

if.then32:                                        ; preds = %if.end28
  store i32 -12, i32* %retval, align 4, !dbg !4581
  br label %return, !dbg !4581

if.end33:                                         ; preds = %if.end28
  %32 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4582
  %mmio34 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %32, i32 0, i32 17, !dbg !4583
  %33 = load i8*, i8** %mmio34, align 8, !dbg !4583
  %34 = bitcast i8* %33 to %struct.jr3_block*, !dbg !4582
  store %struct.jr3_block* %34, %struct.jr3_block** %block, align 8, !dbg !4584
  %35 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4585
  %36 = load %struct.jr3_pci_board*, %struct.jr3_pci_board** @jr3_pci_auto_attach.board, align 8, !dbg !4586
  %n_subdevs35 = getelementptr inbounds %struct.jr3_pci_board, %struct.jr3_pci_board* %36, i32 0, i32 1, !dbg !4587
  %37 = load i32, i32* %n_subdevs35, align 8, !dbg !4587
  %call36 = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %35, i32 %37) #8, !dbg !4588
  store i32 %call36, i32* %ret, align 4, !dbg !4589
  %38 = load i32, i32* %ret, align 4, !dbg !4590
  %tobool37 = icmp ne i32 %38, 0, !dbg !4590
  br i1 %tobool37, label %if.then38, label %if.end39, !dbg !4592

if.then38:                                        ; preds = %if.end33
  %39 = load i32, i32* %ret, align 4, !dbg !4593
  store i32 %39, i32* %retval, align 4, !dbg !4594
  br label %return, !dbg !4594

if.end39:                                         ; preds = %if.end33
  %40 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4595
  %open = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %40, i32 0, i32 24, !dbg !4596
  store i32 (%struct.comedi_device*)* @jr3_pci_open, i32 (%struct.comedi_device*)** %open, align 8, !dbg !4597
  store i32 0, i32* %i, align 4, !dbg !4598
  br label %for.cond, !dbg !4600

for.cond:                                         ; preds = %for.inc, %if.end39
  %41 = load i32, i32* %i, align 4, !dbg !4601
  %42 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4603
  %n_subdevices = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %42, i32 0, i32 15, !dbg !4604
  %43 = load i32, i32* %n_subdevices, align 4, !dbg !4604
  %cmp40 = icmp slt i32 %41, %43, !dbg !4605
  br i1 %cmp40, label %for.body, label %for.end, !dbg !4606

for.body:                                         ; preds = %for.cond
  %44 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4607
  %subdevices = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %44, i32 0, i32 16, !dbg !4609
  %45 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices, align 8, !dbg !4609
  %46 = load i32, i32* %i, align 4, !dbg !4610
  %idxprom = sext i32 %46 to i64, !dbg !4607
  %arrayidx42 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %45, i64 %idxprom, !dbg !4607
  store %struct.comedi_subdevice* %arrayidx42, %struct.comedi_subdevice** %s, align 8, !dbg !4611
  %47 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4612
  %type = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %47, i32 0, i32 2, !dbg !4613
  store i32 1, i32* %type, align 4, !dbg !4614
  %48 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4615
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %48, i32 0, i32 4, !dbg !4616
  store i32 1114112, i32* %subdev_flags, align 4, !dbg !4617
  %49 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4618
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %49, i32 0, i32 3, !dbg !4619
  store i32 58, i32* %n_chan, align 8, !dbg !4620
  %50 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4621
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %50, i32 0, i32 18, !dbg !4622
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @jr3_pci_ai_insn_read, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_read, align 8, !dbg !4623
  %51 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4624
  %52 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4625
  %call43 = call %struct.jr3_pci_subdev_private* @jr3_pci_alloc_spriv(%struct.comedi_device* %51, %struct.comedi_subdevice* %52) #8, !dbg !4626
  store %struct.jr3_pci_subdev_private* %call43, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !4627
  %53 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !4628
  %tobool44 = icmp ne %struct.jr3_pci_subdev_private* %53, null, !dbg !4628
  br i1 %tobool44, label %if.end46, label %if.then45, !dbg !4630

if.then45:                                        ; preds = %for.body
  store i32 -12, i32* %retval, align 4, !dbg !4631
  br label %return, !dbg !4631

if.end46:                                         ; preds = %for.body
  %54 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !4632
  %range_table_list = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %54, i32 0, i32 6, !dbg !4633
  %arraydecay = getelementptr inbounds [58 x %struct.comedi_lrange*], [58 x %struct.comedi_lrange*]* %range_table_list, i64 0, i64 0, !dbg !4632
  %55 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4634
  %range_table_list47 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %55, i32 0, i32 16, !dbg !4635
  store %struct.comedi_lrange** %arraydecay, %struct.comedi_lrange*** %range_table_list47, align 8, !dbg !4636
  %56 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !4637
  %maxdata_list = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %56, i32 0, i32 7, !dbg !4638
  %arraydecay48 = getelementptr inbounds [58 x i32], [58 x i32]* %maxdata_list, i64 0, i64 0, !dbg !4637
  %57 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4639
  %maxdata_list49 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %57, i32 0, i32 14, !dbg !4640
  store i32* %arraydecay48, i32** %maxdata_list49, align 8, !dbg !4641
  br label %for.inc, !dbg !4642

for.inc:                                          ; preds = %if.end46
  %58 = load i32, i32* %i, align 4, !dbg !4643
  %inc = add i32 %58, 1, !dbg !4643
  store i32 %inc, i32* %i, align 4, !dbg !4643
  br label %for.cond, !dbg !4644, !llvm.loop !4645

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !4647
  br label %for.cond50, !dbg !4649

for.cond50:                                       ; preds = %for.inc57, %for.end
  %59 = load i32, i32* %i, align 4, !dbg !4650
  %60 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4652
  %n_subdevices51 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %60, i32 0, i32 15, !dbg !4653
  %61 = load i32, i32* %n_subdevices51, align 4, !dbg !4653
  %cmp52 = icmp slt i32 %59, %61, !dbg !4654
  br i1 %cmp52, label %for.body54, label %for.end59, !dbg !4655

for.body54:                                       ; preds = %for.cond50
  %62 = load %struct.jr3_block*, %struct.jr3_block** %block, align 8, !dbg !4656
  %63 = load i32, i32* %i, align 4, !dbg !4657
  %idxprom55 = sext i32 %63 to i64, !dbg !4656
  %arrayidx56 = getelementptr %struct.jr3_block, %struct.jr3_block* %62, i64 %idxprom55, !dbg !4656
  %reset = getelementptr inbounds %struct.jr3_block, %struct.jr3_block* %arrayidx56, i32 0, i32 4, !dbg !4658
  %64 = bitcast i32* %reset to i8*, !dbg !4659
  call void @writel(i32 0, i8* %64) #8, !dbg !4660
  br label %for.inc57, !dbg !4660

for.inc57:                                        ; preds = %for.body54
  %65 = load i32, i32* %i, align 4, !dbg !4661
  %inc58 = add i32 %65, 1, !dbg !4661
  store i32 %inc58, i32* %i, align 4, !dbg !4661
  br label %for.cond50, !dbg !4662, !llvm.loop !4663

for.end59:                                        ; preds = %for.cond50
  %66 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4665
  %67 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4666
  %call60 = call %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device* %67) #8, !dbg !4667
  %dev61 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %call60, i32 0, i32 41, !dbg !4668
  %call62 = call i32 @comedi_load_firmware(%struct.comedi_device* %66, %struct.device* %dev61, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 (%struct.comedi_device*, i8*, i64, i64)* @jr3_download_firmware, i64 0) #8, !dbg !4669
  store i32 %call62, i32* %ret, align 4, !dbg !4670
  %68 = load i32, i32* %ret, align 4, !dbg !4671
  %cmp63 = icmp slt i32 %68, 0, !dbg !4673
  br i1 %cmp63, label %if.then65, label %if.end66, !dbg !4674

if.then65:                                        ; preds = %for.end59
  %69 = load i32, i32* %ret, align 4, !dbg !4675
  store i32 %69, i32* %retval, align 4, !dbg !4676
  br label %return, !dbg !4676

if.end66:                                         ; preds = %for.end59
  %call67 = call i64 @msleep_interruptible(i32 25) #8, !dbg !4677
  %70 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4678
  call void @jr3_pci_show_copyright(%struct.comedi_device* %70) #8, !dbg !4679
  store i32 0, i32* %i, align 4, !dbg !4680
  br label %for.cond68, !dbg !4681

for.cond68:                                       ; preds = %for.inc78, %if.end66
  %71 = load i32, i32* %i, align 4, !dbg !4682
  %72 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4683
  %n_subdevices69 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %72, i32 0, i32 15, !dbg !4684
  %73 = load i32, i32* %n_subdevices69, align 4, !dbg !4684
  %cmp70 = icmp slt i32 %71, %73, !dbg !4685
  br i1 %cmp70, label %for.body72, label %for.end80, !dbg !4686

for.body72:                                       ; preds = %for.cond68
  %74 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4687
  %subdevices73 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %74, i32 0, i32 16, !dbg !4688
  %75 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices73, align 8, !dbg !4688
  %76 = load i32, i32* %i, align 4, !dbg !4689
  %idxprom74 = sext i32 %76 to i64, !dbg !4687
  %arrayidx75 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %75, i64 %idxprom74, !dbg !4687
  store %struct.comedi_subdevice* %arrayidx75, %struct.comedi_subdevice** %s, align 8, !dbg !4690
  %77 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4691
  %private = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %77, i32 0, i32 6, !dbg !4692
  %78 = load i8*, i8** %private, align 8, !dbg !4692
  %79 = bitcast i8* %78 to %struct.jr3_pci_subdev_private*, !dbg !4691
  store %struct.jr3_pci_subdev_private* %79, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !4693
  %80 = load volatile i64, i64* @jiffies, align 8, !dbg !4694
  store i32 500, i32* %m.addr.i, align 4
  %81 = load i32, i32* %m.addr.i, align 4, !dbg !4695
  %82 = call i1 @llvm.is.constant.i32(i32 %81) #7, !dbg !4697
  br i1 %82, label %if.then.i, label %if.else.i, !dbg !4698

if.then.i:                                        ; preds = %for.body72
  %83 = load i32, i32* %m.addr.i, align 4, !dbg !4699
  %cmp.i = icmp slt i32 %83, 0, !dbg !4702
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4703

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !4704
  br label %msecs_to_jiffies.exit, !dbg !4704

if.end.i:                                         ; preds = %if.then.i
  %84 = load i32, i32* %m.addr.i, align 4, !dbg !4705
  %call.i = call i64 @_msecs_to_jiffies(i32 %84) #9, !dbg !4706
  store i64 %call.i, i64* %retval.i, align 8, !dbg !4707
  br label %msecs_to_jiffies.exit, !dbg !4707

if.else.i:                                        ; preds = %for.body72
  %85 = load i32, i32* %m.addr.i, align 4, !dbg !4708
  %call2.i = call i64 @__msecs_to_jiffies(i32 %85) #9, !dbg !4710
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !4711
  br label %msecs_to_jiffies.exit, !dbg !4711

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %86 = load i64, i64* %retval.i, align 8, !dbg !4712
  %add77 = add i64 %80, %86, !dbg !4713
  %87 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !4714
  %next_time_min = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %87, i32 0, i32 1, !dbg !4715
  store i64 %add77, i64* %next_time_min, align 8, !dbg !4716
  br label %for.inc78, !dbg !4717

for.inc78:                                        ; preds = %msecs_to_jiffies.exit
  %88 = load i32, i32* %i, align 4, !dbg !4718
  %inc79 = add i32 %88, 1, !dbg !4718
  store i32 %inc79, i32* %i, align 4, !dbg !4718
  br label %for.cond68, !dbg !4719, !llvm.loop !4720

for.end80:                                        ; preds = %for.cond68
  %89 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4722
  %90 = load %struct.jr3_pci_dev_private*, %struct.jr3_pci_dev_private** %devpriv, align 8, !dbg !4723
  %dev81 = getelementptr inbounds %struct.jr3_pci_dev_private, %struct.jr3_pci_dev_private* %90, i32 0, i32 1, !dbg !4724
  store %struct.comedi_device* %89, %struct.comedi_device** %dev81, align 8, !dbg !4725
  %91 = load %struct.jr3_pci_dev_private*, %struct.jr3_pci_dev_private** %devpriv, align 8, !dbg !4726
  %timer = getelementptr inbounds %struct.jr3_pci_dev_private, %struct.jr3_pci_dev_private* %91, i32 0, i32 0, !dbg !4726
  call void @init_timer_key(%struct.timer_list* %timer, void (%struct.timer_list*)* @jr3_pci_poll_dev, i32 0, i8* null, %struct.lock_class_key* null) #8, !dbg !4726
  %92 = load volatile i64, i64* @jiffies, align 8, !dbg !4727
  store i32 1000, i32* %m.addr.i87, align 4
  %93 = load i32, i32* %m.addr.i87, align 4, !dbg !4728
  %94 = call i1 @llvm.is.constant.i32(i32 %93) #7, !dbg !4729
  br i1 %94, label %if.then.i89, label %if.else.i94, !dbg !4730

if.then.i89:                                      ; preds = %for.end80
  %95 = load i32, i32* %m.addr.i87, align 4, !dbg !4731
  %cmp.i88 = icmp slt i32 %95, 0, !dbg !4732
  br i1 %cmp.i88, label %if.then1.i90, label %if.end.i92, !dbg !4733

if.then1.i90:                                     ; preds = %if.then.i89
  store i64 4611686018427387902, i64* %retval.i86, align 8, !dbg !4734
  br label %msecs_to_jiffies.exit95, !dbg !4734

if.end.i92:                                       ; preds = %if.then.i89
  %96 = load i32, i32* %m.addr.i87, align 4, !dbg !4735
  %call.i91 = call i64 @_msecs_to_jiffies(i32 %96) #9, !dbg !4736
  store i64 %call.i91, i64* %retval.i86, align 8, !dbg !4737
  br label %msecs_to_jiffies.exit95, !dbg !4737

if.else.i94:                                      ; preds = %for.end80
  %97 = load i32, i32* %m.addr.i87, align 4, !dbg !4738
  %call2.i93 = call i64 @__msecs_to_jiffies(i32 %97) #9, !dbg !4739
  store i64 %call2.i93, i64* %retval.i86, align 8, !dbg !4740
  br label %msecs_to_jiffies.exit95, !dbg !4740

msecs_to_jiffies.exit95:                          ; preds = %if.then1.i90, %if.end.i92, %if.else.i94
  %98 = load i64, i64* %retval.i86, align 8, !dbg !4741
  %add83 = add i64 %92, %98, !dbg !4742
  %99 = load %struct.jr3_pci_dev_private*, %struct.jr3_pci_dev_private** %devpriv, align 8, !dbg !4743
  %timer84 = getelementptr inbounds %struct.jr3_pci_dev_private, %struct.jr3_pci_dev_private* %99, i32 0, i32 0, !dbg !4744
  %expires = getelementptr inbounds %struct.timer_list, %struct.timer_list* %timer84, i32 0, i32 1, !dbg !4745
  store i64 %add83, i64* %expires, align 8, !dbg !4746
  %100 = load %struct.jr3_pci_dev_private*, %struct.jr3_pci_dev_private** %devpriv, align 8, !dbg !4747
  %timer85 = getelementptr inbounds %struct.jr3_pci_dev_private, %struct.jr3_pci_dev_private* %100, i32 0, i32 0, !dbg !4748
  call void @add_timer(%struct.timer_list* %timer85) #8, !dbg !4749
  store i32 0, i32* %retval, align 4, !dbg !4750
  br label %return, !dbg !4750

return:                                           ; preds = %msecs_to_jiffies.exit95, %if.then65, %if.then45, %if.then38, %if.then32, %if.then27, %if.then9, %if.then5, %if.then1
  %101 = load i32, i32* %retval, align 4, !dbg !4751
  ret i32 %101, !dbg !4751
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noredzone
declare dso_local i32 @del_timer(%struct.timer_list*) #1

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

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @jr3_pci_open(%struct.comedi_device* %dev) #2 !dbg !4752 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %spriv = alloca %struct.jr3_pci_subdev_private*, align 8
  %s = alloca %struct.comedi_subdevice*, align 8
  %i = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4753, metadata !DIExpression()), !dbg !4754
  call void @llvm.dbg.declare(metadata %struct.jr3_pci_subdev_private** %spriv, metadata !4755, metadata !DIExpression()), !dbg !4756
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s, metadata !4757, metadata !DIExpression()), !dbg !4758
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4759, metadata !DIExpression()), !dbg !4760
  store i32 0, i32* %i, align 4, !dbg !4761
  br label %for.cond, !dbg !4763

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !4764
  %1 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4766
  %n_subdevices = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %1, i32 0, i32 15, !dbg !4767
  %2 = load i32, i32* %n_subdevices, align 4, !dbg !4767
  %cmp = icmp slt i32 %0, %2, !dbg !4768
  br i1 %cmp, label %for.body, label %for.end, !dbg !4769

for.body:                                         ; preds = %for.cond
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4770
  %subdevices = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %3, i32 0, i32 16, !dbg !4772
  %4 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices, align 8, !dbg !4772
  %5 = load i32, i32* %i, align 4, !dbg !4773
  %idxprom = sext i32 %5 to i64, !dbg !4770
  %arrayidx = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %4, i64 %idxprom, !dbg !4770
  store %struct.comedi_subdevice* %arrayidx, %struct.comedi_subdevice** %s, align 8, !dbg !4774
  %6 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4775
  %private = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %6, i32 0, i32 6, !dbg !4776
  %7 = load i8*, i8** %private, align 8, !dbg !4776
  %8 = bitcast i8* %7 to %struct.jr3_pci_subdev_private*, !dbg !4775
  store %struct.jr3_pci_subdev_private* %8, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !4777
  br label %for.inc, !dbg !4778

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !4779
  %inc = add i32 %9, 1, !dbg !4779
  store i32 %inc, i32* %i, align 4, !dbg !4779
  br label %for.cond, !dbg !4780, !llvm.loop !4781

for.end:                                          ; preds = %for.cond
  ret i32 0, !dbg !4783
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @jr3_pci_ai_insn_read(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !4784 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %spriv = alloca %struct.jr3_pci_subdev_private*, align 8
  %chan = alloca i32, align 4
  %errors = alloca i16, align 2
  %i = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4785, metadata !DIExpression()), !dbg !4786
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4787, metadata !DIExpression()), !dbg !4788
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !4789, metadata !DIExpression()), !dbg !4790
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !4791, metadata !DIExpression()), !dbg !4792
  call void @llvm.dbg.declare(metadata %struct.jr3_pci_subdev_private** %spriv, metadata !4793, metadata !DIExpression()), !dbg !4794
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4795
  %private = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 6, !dbg !4796
  %1 = load i8*, i8** %private, align 8, !dbg !4796
  %2 = bitcast i8* %1 to %struct.jr3_pci_subdev_private*, !dbg !4795
  store %struct.jr3_pci_subdev_private* %2, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !4794
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !4797, metadata !DIExpression()), !dbg !4798
  %3 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4799
  %chanspec = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %3, i32 0, i32 4, !dbg !4799
  %4 = load i32, i32* %chanspec, align 4, !dbg !4799
  %and = and i32 %4, 65535, !dbg !4799
  store i32 %and, i32* %chan, align 4, !dbg !4798
  call void @llvm.dbg.declare(metadata i16* %errors, metadata !4800, metadata !DIExpression()), !dbg !4801
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4802, metadata !DIExpression()), !dbg !4803
  %5 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !4804
  %sensor = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %5, i32 0, i32 0, !dbg !4805
  %6 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor, align 8, !dbg !4805
  %errors1 = getelementptr inbounds %struct.jr3_sensor, %struct.jr3_sensor* %6, i32 0, i32 39, !dbg !4806
  %call = call zeroext i16 @get_u16(i32* %errors1) #8, !dbg !4807
  store i16 %call, i16* %errors, align 2, !dbg !4808
  %7 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !4809
  %state = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %7, i32 0, i32 2, !dbg !4811
  %8 = load i32, i32* %state, align 8, !dbg !4811
  %cmp = icmp ne i32 %8, 5, !dbg !4812
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4813

lor.lhs.false:                                    ; preds = %entry
  %9 = load i16, i16* %errors, align 2, !dbg !4814
  %conv = zext i16 %9 to i32, !dbg !4814
  %and2 = and i32 %conv, 51200, !dbg !4815
  %tobool = icmp ne i32 %and2, 0, !dbg !4815
  br i1 %tobool, label %if.then, label %if.end8, !dbg !4816

if.then:                                          ; preds = %lor.lhs.false, %entry
  %10 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !4817
  %state3 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %10, i32 0, i32 2, !dbg !4820
  %11 = load i32, i32* %state3, align 8, !dbg !4820
  %cmp4 = icmp eq i32 %11, 5, !dbg !4821
  br i1 %cmp4, label %if.then6, label %if.end, !dbg !4822

if.then6:                                         ; preds = %if.then
  %12 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !4823
  %state7 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %12, i32 0, i32 2, !dbg !4825
  store i32 0, i32* %state7, align 8, !dbg !4826
  br label %if.end, !dbg !4827

if.end:                                           ; preds = %if.then6, %if.then
  store i32 -11, i32* %retval, align 4, !dbg !4828
  br label %return, !dbg !4828

if.end8:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4, !dbg !4829
  br label %for.cond, !dbg !4831

for.cond:                                         ; preds = %for.inc, %if.end8
  %13 = load i32, i32* %i, align 4, !dbg !4832
  %14 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4834
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %14, i32 0, i32 1, !dbg !4835
  %15 = load i32, i32* %n, align 4, !dbg !4835
  %cmp9 = icmp ult i32 %13, %15, !dbg !4836
  br i1 %cmp9, label %for.body, label %for.end, !dbg !4837

for.body:                                         ; preds = %for.cond
  %16 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4838
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4839
  %18 = load i32, i32* %chan, align 4, !dbg !4840
  %call11 = call i32 @jr3_pci_ai_read_chan(%struct.comedi_device* %16, %struct.comedi_subdevice* %17, i32 %18) #8, !dbg !4841
  %19 = load i32*, i32** %data.addr, align 8, !dbg !4842
  %20 = load i32, i32* %i, align 4, !dbg !4843
  %idxprom = sext i32 %20 to i64, !dbg !4842
  %arrayidx = getelementptr i32, i32* %19, i64 %idxprom, !dbg !4842
  store i32 %call11, i32* %arrayidx, align 4, !dbg !4844
  br label %for.inc, !dbg !4842

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4, !dbg !4845
  %inc = add i32 %21, 1, !dbg !4845
  store i32 %inc, i32* %i, align 4, !dbg !4845
  br label %for.cond, !dbg !4846, !llvm.loop !4847

for.end:                                          ; preds = %for.cond
  %22 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4849
  %n12 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %22, i32 0, i32 1, !dbg !4850
  %23 = load i32, i32* %n12, align 4, !dbg !4850
  store i32 %23, i32* %retval, align 4, !dbg !4851
  br label %return, !dbg !4851

return:                                           ; preds = %for.end, %if.end
  %24 = load i32, i32* %retval, align 4, !dbg !4852
  ret i32 %24, !dbg !4852
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.jr3_pci_subdev_private* @jr3_pci_alloc_spriv(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #2 !dbg !4853 {
entry:
  %retval = alloca %struct.jr3_pci_subdev_private*, align 8
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %block = alloca %struct.jr3_block*, align 8
  %spriv = alloca %struct.jr3_pci_subdev_private*, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4856, metadata !DIExpression()), !dbg !4857
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4858, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.declare(metadata %struct.jr3_block** %block, metadata !4860, metadata !DIExpression()), !dbg !4861
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4862
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 17, !dbg !4863
  %1 = load i8*, i8** %mmio, align 8, !dbg !4863
  %2 = bitcast i8* %1 to %struct.jr3_block*, !dbg !4862
  store %struct.jr3_block* %2, %struct.jr3_block** %block, align 8, !dbg !4861
  call void @llvm.dbg.declare(metadata %struct.jr3_pci_subdev_private** %spriv, metadata !4864, metadata !DIExpression()), !dbg !4865
  call void @llvm.dbg.declare(metadata i32* %j, metadata !4866, metadata !DIExpression()), !dbg !4867
  call void @llvm.dbg.declare(metadata i32* %k, metadata !4868, metadata !DIExpression()), !dbg !4869
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4870
  %call = call i8* @comedi_alloc_spriv(%struct.comedi_subdevice* %3, i64 880) #8, !dbg !4871
  %4 = bitcast i8* %call to %struct.jr3_pci_subdev_private*, !dbg !4871
  store %struct.jr3_pci_subdev_private* %4, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !4872
  %5 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !4873
  %tobool = icmp ne %struct.jr3_pci_subdev_private* %5, null, !dbg !4873
  br i1 %tobool, label %if.end, label %if.then, !dbg !4875

if.then:                                          ; preds = %entry
  store %struct.jr3_pci_subdev_private* null, %struct.jr3_pci_subdev_private** %retval, align 8, !dbg !4876
  br label %return, !dbg !4876

if.end:                                           ; preds = %entry
  %6 = load %struct.jr3_block*, %struct.jr3_block** %block, align 8, !dbg !4877
  %7 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4878
  %index = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %7, i32 0, i32 1, !dbg !4879
  %8 = load i32, i32* %index, align 8, !dbg !4879
  %idxprom = sext i32 %8 to i64, !dbg !4877
  %arrayidx = getelementptr %struct.jr3_block, %struct.jr3_block* %6, i64 %idxprom, !dbg !4877
  %sensor = getelementptr inbounds %struct.jr3_block, %struct.jr3_block* %arrayidx, i32 0, i32 1, !dbg !4880
  %9 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !4881
  %sensor1 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %9, i32 0, i32 0, !dbg !4882
  store %struct.jr3_sensor* %sensor, %struct.jr3_sensor** %sensor1, align 8, !dbg !4883
  store i32 0, i32* %j, align 4, !dbg !4884
  br label %for.cond, !dbg !4886

for.cond:                                         ; preds = %for.inc29, %if.end
  %10 = load i32, i32* %j, align 4, !dbg !4887
  %cmp = icmp slt i32 %10, 8, !dbg !4889
  br i1 %cmp, label %for.body, label %for.end31, !dbg !4890

for.body:                                         ; preds = %for.cond
  %11 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !4891
  %range = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %11, i32 0, i32 5, !dbg !4893
  %12 = load i32, i32* %j, align 4, !dbg !4894
  %idxprom2 = sext i32 %12 to i64, !dbg !4891
  %arrayidx3 = getelementptr [9 x %union.jr3_pci_single_range], [9 x %union.jr3_pci_single_range]* %range, i64 0, i64 %idxprom2, !dbg !4891
  %l = bitcast %union.jr3_pci_single_range* %arrayidx3 to %struct.comedi_lrange*, !dbg !4895
  %length = getelementptr inbounds %struct.comedi_lrange, %struct.comedi_lrange* %l, i32 0, i32 0, !dbg !4896
  store i32 1, i32* %length, align 4, !dbg !4897
  %13 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !4898
  %range4 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %13, i32 0, i32 5, !dbg !4899
  %14 = load i32, i32* %j, align 4, !dbg !4900
  %idxprom5 = sext i32 %14 to i64, !dbg !4898
  %arrayidx6 = getelementptr [9 x %union.jr3_pci_single_range], [9 x %union.jr3_pci_single_range]* %range4, i64 0, i64 %idxprom5, !dbg !4898
  %l7 = bitcast %union.jr3_pci_single_range* %arrayidx6 to %struct.comedi_lrange*, !dbg !4901
  %range8 = getelementptr inbounds %struct.comedi_lrange, %struct.comedi_lrange* %l7, i32 0, i32 1, !dbg !4902
  %arrayidx9 = getelementptr [0 x %struct.comedi_krange], [0 x %struct.comedi_krange]* %range8, i64 0, i64 0, !dbg !4898
  %min = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %arrayidx9, i32 0, i32 0, !dbg !4903
  store i32 -1000000, i32* %min, align 4, !dbg !4904
  %15 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !4905
  %range10 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %15, i32 0, i32 5, !dbg !4906
  %16 = load i32, i32* %j, align 4, !dbg !4907
  %idxprom11 = sext i32 %16 to i64, !dbg !4905
  %arrayidx12 = getelementptr [9 x %union.jr3_pci_single_range], [9 x %union.jr3_pci_single_range]* %range10, i64 0, i64 %idxprom11, !dbg !4905
  %l13 = bitcast %union.jr3_pci_single_range* %arrayidx12 to %struct.comedi_lrange*, !dbg !4908
  %range14 = getelementptr inbounds %struct.comedi_lrange, %struct.comedi_lrange* %l13, i32 0, i32 1, !dbg !4909
  %arrayidx15 = getelementptr [0 x %struct.comedi_krange], [0 x %struct.comedi_krange]* %range14, i64 0, i64 0, !dbg !4905
  %max = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %arrayidx15, i32 0, i32 1, !dbg !4910
  store i32 1000000, i32* %max, align 4, !dbg !4911
  store i32 0, i32* %k, align 4, !dbg !4912
  br label %for.cond16, !dbg !4914

for.cond16:                                       ; preds = %for.inc, %for.body
  %17 = load i32, i32* %k, align 4, !dbg !4915
  %cmp17 = icmp slt i32 %17, 7, !dbg !4917
  br i1 %cmp17, label %for.body18, label %for.end, !dbg !4918

for.body18:                                       ; preds = %for.cond16
  %18 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !4919
  %range19 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %18, i32 0, i32 5, !dbg !4921
  %19 = load i32, i32* %j, align 4, !dbg !4922
  %idxprom20 = sext i32 %19 to i64, !dbg !4919
  %arrayidx21 = getelementptr [9 x %union.jr3_pci_single_range], [9 x %union.jr3_pci_single_range]* %range19, i64 0, i64 %idxprom20, !dbg !4919
  %l22 = bitcast %union.jr3_pci_single_range* %arrayidx21 to %struct.comedi_lrange*, !dbg !4923
  %20 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !4924
  %range_table_list = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %20, i32 0, i32 6, !dbg !4925
  %21 = load i32, i32* %j, align 4, !dbg !4926
  %22 = load i32, i32* %k, align 4, !dbg !4927
  %mul = mul i32 %22, 8, !dbg !4928
  %add = add i32 %21, %mul, !dbg !4929
  %idxprom23 = sext i32 %add to i64, !dbg !4924
  %arrayidx24 = getelementptr [58 x %struct.comedi_lrange*], [58 x %struct.comedi_lrange*]* %range_table_list, i64 0, i64 %idxprom23, !dbg !4924
  store %struct.comedi_lrange* %l22, %struct.comedi_lrange** %arrayidx24, align 8, !dbg !4930
  %23 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !4931
  %maxdata_list = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %23, i32 0, i32 7, !dbg !4932
  %24 = load i32, i32* %j, align 4, !dbg !4933
  %25 = load i32, i32* %k, align 4, !dbg !4934
  %mul25 = mul i32 %25, 8, !dbg !4935
  %add26 = add i32 %24, %mul25, !dbg !4936
  %idxprom27 = sext i32 %add26 to i64, !dbg !4931
  %arrayidx28 = getelementptr [58 x i32], [58 x i32]* %maxdata_list, i64 0, i64 %idxprom27, !dbg !4931
  store i32 32767, i32* %arrayidx28, align 4, !dbg !4937
  br label %for.inc, !dbg !4938

for.inc:                                          ; preds = %for.body18
  %26 = load i32, i32* %k, align 4, !dbg !4939
  %inc = add i32 %26, 1, !dbg !4939
  store i32 %inc, i32* %k, align 4, !dbg !4939
  br label %for.cond16, !dbg !4940, !llvm.loop !4941

for.end:                                          ; preds = %for.cond16
  br label %for.inc29, !dbg !4943

for.inc29:                                        ; preds = %for.end
  %27 = load i32, i32* %j, align 4, !dbg !4944
  %inc30 = add i32 %27, 1, !dbg !4944
  store i32 %inc30, i32* %j, align 4, !dbg !4944
  br label %for.cond, !dbg !4945, !llvm.loop !4946

for.end31:                                        ; preds = %for.cond
  %28 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !4948
  %range32 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %28, i32 0, i32 5, !dbg !4949
  %arrayidx33 = getelementptr [9 x %union.jr3_pci_single_range], [9 x %union.jr3_pci_single_range]* %range32, i64 0, i64 8, !dbg !4948
  %l34 = bitcast %union.jr3_pci_single_range* %arrayidx33 to %struct.comedi_lrange*, !dbg !4950
  %length35 = getelementptr inbounds %struct.comedi_lrange, %struct.comedi_lrange* %l34, i32 0, i32 0, !dbg !4951
  store i32 1, i32* %length35, align 4, !dbg !4952
  %29 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !4953
  %range36 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %29, i32 0, i32 5, !dbg !4954
  %arrayidx37 = getelementptr [9 x %union.jr3_pci_single_range], [9 x %union.jr3_pci_single_range]* %range36, i64 0, i64 8, !dbg !4953
  %l38 = bitcast %union.jr3_pci_single_range* %arrayidx37 to %struct.comedi_lrange*, !dbg !4955
  %range39 = getelementptr inbounds %struct.comedi_lrange, %struct.comedi_lrange* %l38, i32 0, i32 1, !dbg !4956
  %arrayidx40 = getelementptr [0 x %struct.comedi_krange], [0 x %struct.comedi_krange]* %range39, i64 0, i64 0, !dbg !4953
  %min41 = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %arrayidx40, i32 0, i32 0, !dbg !4957
  store i32 0, i32* %min41, align 4, !dbg !4958
  %30 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !4959
  %range42 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %30, i32 0, i32 5, !dbg !4960
  %arrayidx43 = getelementptr [9 x %union.jr3_pci_single_range], [9 x %union.jr3_pci_single_range]* %range42, i64 0, i64 8, !dbg !4959
  %l44 = bitcast %union.jr3_pci_single_range* %arrayidx43 to %struct.comedi_lrange*, !dbg !4961
  %range45 = getelementptr inbounds %struct.comedi_lrange, %struct.comedi_lrange* %l44, i32 0, i32 1, !dbg !4962
  %arrayidx46 = getelementptr [0 x %struct.comedi_krange], [0 x %struct.comedi_krange]* %range45, i64 0, i64 0, !dbg !4959
  %max47 = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %arrayidx46, i32 0, i32 1, !dbg !4963
  store i32 65535, i32* %max47, align 4, !dbg !4964
  %31 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !4965
  %range48 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %31, i32 0, i32 5, !dbg !4966
  %arrayidx49 = getelementptr [9 x %union.jr3_pci_single_range], [9 x %union.jr3_pci_single_range]* %range48, i64 0, i64 8, !dbg !4965
  %l50 = bitcast %union.jr3_pci_single_range* %arrayidx49 to %struct.comedi_lrange*, !dbg !4967
  %32 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !4968
  %range_table_list51 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %32, i32 0, i32 6, !dbg !4969
  %arrayidx52 = getelementptr [58 x %struct.comedi_lrange*], [58 x %struct.comedi_lrange*]* %range_table_list51, i64 0, i64 56, !dbg !4968
  store %struct.comedi_lrange* %l50, %struct.comedi_lrange** %arrayidx52, align 8, !dbg !4970
  %33 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !4971
  %range53 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %33, i32 0, i32 5, !dbg !4972
  %arrayidx54 = getelementptr [9 x %union.jr3_pci_single_range], [9 x %union.jr3_pci_single_range]* %range53, i64 0, i64 8, !dbg !4971
  %l55 = bitcast %union.jr3_pci_single_range* %arrayidx54 to %struct.comedi_lrange*, !dbg !4973
  %34 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !4974
  %range_table_list56 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %34, i32 0, i32 6, !dbg !4975
  %arrayidx57 = getelementptr [58 x %struct.comedi_lrange*], [58 x %struct.comedi_lrange*]* %range_table_list56, i64 0, i64 57, !dbg !4974
  store %struct.comedi_lrange* %l55, %struct.comedi_lrange** %arrayidx57, align 8, !dbg !4976
  %35 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !4977
  %maxdata_list58 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %35, i32 0, i32 7, !dbg !4978
  %arrayidx59 = getelementptr [58 x i32], [58 x i32]* %maxdata_list58, i64 0, i64 56, !dbg !4977
  store i32 65535, i32* %arrayidx59, align 8, !dbg !4979
  %36 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !4980
  %maxdata_list60 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %36, i32 0, i32 7, !dbg !4981
  %arrayidx61 = getelementptr [58 x i32], [58 x i32]* %maxdata_list60, i64 0, i64 57, !dbg !4980
  store i32 65535, i32* %arrayidx61, align 4, !dbg !4982
  %37 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !4983
  store %struct.jr3_pci_subdev_private* %37, %struct.jr3_pci_subdev_private** %retval, align 8, !dbg !4984
  br label %return, !dbg !4984

return:                                           ; preds = %for.end31, %if.then
  %38 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %retval, align 8, !dbg !4985
  ret %struct.jr3_pci_subdev_private* %38, !dbg !4985
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writel(i32 %val, i8* %addr) #2 !dbg !4986 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !4992, metadata !DIExpression()), !dbg !4993
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !4994, metadata !DIExpression()), !dbg !4993
  %0 = load i32, i32* %val.addr, align 4, !dbg !4993
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !4993
  %2 = bitcast i8* %1 to i32*, !dbg !4993
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #7, !dbg !4993, !srcloc !4995
  ret void, !dbg !4993
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_load_firmware(%struct.comedi_device*, %struct.device*, i8*, i32 (%struct.comedi_device*, i8*, i64, i64)*, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @jr3_download_firmware(%struct.comedi_device* %dev, i8* %data, i64 %size, i64 %context) #2 !dbg !4996 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %context.addr = alloca i64, align 8
  %subdev = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5001, metadata !DIExpression()), !dbg !5002
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5003, metadata !DIExpression()), !dbg !5004
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5005, metadata !DIExpression()), !dbg !5006
  store i64 %context, i64* %context.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %context.addr, metadata !5007, metadata !DIExpression()), !dbg !5008
  call void @llvm.dbg.declare(metadata i32* %subdev, metadata !5009, metadata !DIExpression()), !dbg !5010
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5011, metadata !DIExpression()), !dbg !5012
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5013
  %1 = load i8*, i8** %data.addr, align 8, !dbg !5014
  %2 = load i64, i64* %size.addr, align 8, !dbg !5015
  %call = call i32 @jr3_check_firmware(%struct.comedi_device* %0, i8* %1, i64 %2) #8, !dbg !5016
  store i32 %call, i32* %ret, align 4, !dbg !5017
  %3 = load i32, i32* %ret, align 4, !dbg !5018
  %tobool = icmp ne i32 %3, 0, !dbg !5018
  br i1 %tobool, label %if.then, label %if.end, !dbg !5020

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %ret, align 4, !dbg !5021
  store i32 %4, i32* %retval, align 4, !dbg !5022
  br label %return, !dbg !5022

if.end:                                           ; preds = %entry
  store i32 0, i32* %subdev, align 4, !dbg !5023
  br label %for.cond, !dbg !5025

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %subdev, align 4, !dbg !5026
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5028
  %n_subdevices = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 15, !dbg !5029
  %7 = load i32, i32* %n_subdevices, align 4, !dbg !5029
  %cmp = icmp slt i32 %5, %7, !dbg !5030
  br i1 %cmp, label %for.body, label %for.end, !dbg !5031

for.body:                                         ; preds = %for.cond
  %8 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5032
  %9 = load i32, i32* %subdev, align 4, !dbg !5033
  %10 = load i8*, i8** %data.addr, align 8, !dbg !5034
  %11 = load i64, i64* %size.addr, align 8, !dbg !5035
  call void @jr3_write_firmware(%struct.comedi_device* %8, i32 %9, i8* %10, i64 %11) #8, !dbg !5036
  br label %for.inc, !dbg !5036

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %subdev, align 4, !dbg !5037
  %inc = add i32 %12, 1, !dbg !5037
  store i32 %inc, i32* %subdev, align 4, !dbg !5037
  br label %for.cond, !dbg !5038, !llvm.loop !5039

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !5041
  br label %return, !dbg !5041

return:                                           ; preds = %for.end, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !5042
  ret i32 %13, !dbg !5042
}

; Function Attrs: noredzone
declare dso_local i64 @msleep_interruptible(i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @jr3_pci_show_copyright(%struct.comedi_device* %dev) #2 !dbg !5043 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %block = alloca %struct.jr3_block*, align 8
  %sensor0 = alloca %struct.jr3_sensor*, align 8
  %copy = alloca [25 x i8], align 16
  %i = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5044, metadata !DIExpression()), !dbg !5045
  call void @llvm.dbg.declare(metadata %struct.jr3_block** %block, metadata !5046, metadata !DIExpression()), !dbg !5047
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5048
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 17, !dbg !5049
  %1 = load i8*, i8** %mmio, align 8, !dbg !5049
  %2 = bitcast i8* %1 to %struct.jr3_block*, !dbg !5048
  store %struct.jr3_block* %2, %struct.jr3_block** %block, align 8, !dbg !5047
  call void @llvm.dbg.declare(metadata %struct.jr3_sensor** %sensor0, metadata !5050, metadata !DIExpression()), !dbg !5051
  %3 = load %struct.jr3_block*, %struct.jr3_block** %block, align 8, !dbg !5052
  %arrayidx = getelementptr %struct.jr3_block, %struct.jr3_block* %3, i64 0, !dbg !5052
  %sensor = getelementptr inbounds %struct.jr3_block, %struct.jr3_block* %arrayidx, i32 0, i32 1, !dbg !5053
  store %struct.jr3_sensor* %sensor, %struct.jr3_sensor** %sensor0, align 8, !dbg !5051
  call void @llvm.dbg.declare(metadata [25 x i8]* %copy, metadata !5054, metadata !DIExpression()), !dbg !5058
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5059, metadata !DIExpression()), !dbg !5060
  store i32 0, i32* %i, align 4, !dbg !5061
  br label %for.cond, !dbg !5063

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !dbg !5064
  %conv = sext i32 %4 to i64, !dbg !5064
  %cmp = icmp ult i64 %conv, 24, !dbg !5066
  br i1 %cmp, label %for.body, label %for.end, !dbg !5067

for.body:                                         ; preds = %for.cond
  %5 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor0, align 8, !dbg !5068
  %copyright = getelementptr inbounds %struct.jr3_sensor, %struct.jr3_sensor* %5, i32 0, i32 1, !dbg !5069
  %6 = load i32, i32* %i, align 4, !dbg !5070
  %idxprom = sext i32 %6 to i64, !dbg !5068
  %arrayidx2 = getelementptr [24 x i32], [24 x i32]* %copyright, i64 0, i64 %idxprom, !dbg !5068
  %call = call zeroext i16 @get_u16(i32* %arrayidx2) #8, !dbg !5071
  %conv3 = zext i16 %call to i32, !dbg !5071
  %shr = ashr i32 %conv3, 8, !dbg !5072
  %conv4 = trunc i32 %shr to i8, !dbg !5073
  %7 = load i32, i32* %i, align 4, !dbg !5074
  %idxprom5 = sext i32 %7 to i64, !dbg !5075
  %arrayidx6 = getelementptr [25 x i8], [25 x i8]* %copy, i64 0, i64 %idxprom5, !dbg !5075
  store i8 %conv4, i8* %arrayidx6, align 1, !dbg !5076
  br label %for.inc, !dbg !5075

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !5077
  %inc = add i32 %8, 1, !dbg !5077
  store i32 %inc, i32* %i, align 4, !dbg !5077
  br label %for.cond, !dbg !5078, !llvm.loop !5079

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !dbg !5081
  %idxprom7 = sext i32 %9 to i64, !dbg !5082
  %arrayidx8 = getelementptr [25 x i8], [25 x i8]* %copy, i64 0, i64 %idxprom7, !dbg !5082
  store i8 0, i8* %arrayidx8, align 1, !dbg !5083
  ret void, !dbg !5084
}

; Function Attrs: noredzone
declare dso_local void @init_timer_key(%struct.timer_list*, void (%struct.timer_list*)*, i32, i8*, %struct.lock_class_key*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @jr3_pci_poll_dev(%struct.timer_list* %t) #2 !dbg !5085 {
entry:
  %lock.addr.i51 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i51, metadata !5086, metadata !DIExpression()), !dbg !5091
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !5093, metadata !DIExpression()), !dbg !5094
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %retval.i41 = alloca i64, align 8
  %m.addr.i42 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i42, metadata !4336, metadata !DIExpression()), !dbg !5095
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !4336, metadata !DIExpression()), !dbg !5102
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !5104, metadata !DIExpression()), !dbg !5109
  %t.addr = alloca %struct.timer_list*, align 8
  %devpriv = alloca %struct.jr3_pci_dev_private*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.jr3_pci_dev_private*, align 8
  %dev = alloca %struct.comedi_device*, align 8
  %spriv = alloca %struct.jr3_pci_subdev_private*, align 8
  %s = alloca %struct.comedi_subdevice*, align 8
  %flags = alloca i64, align 8
  %now = alloca i64, align 8
  %delay = alloca i32, align 4
  %i = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp4 = alloca i32, align 4
  %__dummy8 = alloca i64, align 8
  %__dummy29 = alloca i64, align 8
  %tmp12 = alloca i32, align 4
  %sub_delay = alloca %struct.jr3_pci_poll_delay, align 4
  %tmp27 = alloca %struct.jr3_pci_poll_delay, align 4
  store %struct.timer_list* %t, %struct.timer_list** %t.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.timer_list** %t.addr, metadata !5116, metadata !DIExpression()), !dbg !5117
  call void @llvm.dbg.declare(metadata %struct.jr3_pci_dev_private** %devpriv, metadata !5118, metadata !DIExpression()), !dbg !5119
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5120, metadata !DIExpression()), !dbg !5122
  %0 = load %struct.timer_list*, %struct.timer_list** %t.addr, align 8, !dbg !5122
  %1 = bitcast %struct.timer_list* %0 to i8*, !dbg !5122
  store i8* %1, i8** %__mptr, align 8, !dbg !5122
  br label %do.body, !dbg !5122

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5123

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5122
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !5122
  %3 = bitcast i8* %add.ptr to %struct.jr3_pci_dev_private*, !dbg !5122
  store %struct.jr3_pci_dev_private* %3, %struct.jr3_pci_dev_private** %tmp, align 8, !dbg !5123
  %4 = load %struct.jr3_pci_dev_private*, %struct.jr3_pci_dev_private** %tmp, align 8, !dbg !5122
  store %struct.jr3_pci_dev_private* %4, %struct.jr3_pci_dev_private** %devpriv, align 8, !dbg !5119
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev, metadata !5125, metadata !DIExpression()), !dbg !5126
  %5 = load %struct.jr3_pci_dev_private*, %struct.jr3_pci_dev_private** %devpriv, align 8, !dbg !5127
  %dev1 = getelementptr inbounds %struct.jr3_pci_dev_private, %struct.jr3_pci_dev_private* %5, i32 0, i32 1, !dbg !5128
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev1, align 8, !dbg !5128
  store %struct.comedi_device* %6, %struct.comedi_device** %dev, align 8, !dbg !5126
  call void @llvm.dbg.declare(metadata %struct.jr3_pci_subdev_private** %spriv, metadata !5129, metadata !DIExpression()), !dbg !5130
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s, metadata !5131, metadata !DIExpression()), !dbg !5132
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5133, metadata !DIExpression()), !dbg !5134
  call void @llvm.dbg.declare(metadata i64* %now, metadata !5135, metadata !DIExpression()), !dbg !5136
  call void @llvm.dbg.declare(metadata i32* %delay, metadata !5137, metadata !DIExpression()), !dbg !5138
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5139, metadata !DIExpression()), !dbg !5140
  br label %do.body2, !dbg !5141

do.body2:                                         ; preds = %do.end
  br label %do.body3, !dbg !5142

do.body3:                                         ; preds = %do.body2
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5143, metadata !DIExpression()), !dbg !5145
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5146, metadata !DIExpression()), !dbg !5145
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !5145
  %conv = zext i1 %cmp to i32, !dbg !5145
  store i32 1, i32* %tmp4, align 4, !dbg !5145
  %7 = load i32, i32* %tmp4, align 4, !dbg !5145
  br label %do.body5, !dbg !5147

do.body5:                                         ; preds = %do.body3
  br label %do.body6, !dbg !5148

do.body6:                                         ; preds = %do.body5
  br label %do.body7, !dbg !5149

do.body7:                                         ; preds = %do.body6
  call void @llvm.dbg.declare(metadata i64* %__dummy8, metadata !5151, metadata !DIExpression()), !dbg !5154
  call void @llvm.dbg.declare(metadata i64* %__dummy29, metadata !5155, metadata !DIExpression()), !dbg !5154
  %cmp10 = icmp eq i64* %__dummy8, %__dummy29, !dbg !5154
  %conv11 = zext i1 %cmp10 to i32, !dbg !5154
  store i32 1, i32* %tmp12, align 4, !dbg !5154
  %8 = load i32, i32* %tmp12, align 4, !dbg !5154
  %call = call i64 @arch_local_irq_save() #8, !dbg !5156
  store i64 %call, i64* %flags, align 8, !dbg !5156
  br label %do.end13, !dbg !5156

do.end13:                                         ; preds = %do.body7
  br label %do.end14, !dbg !5149

do.end14:                                         ; preds = %do.end13
  br label %do.body15, !dbg !5148

do.body15:                                        ; preds = %do.end14
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5157, !srcloc !5158
  br label %do.body16, !dbg !5157

do.body16:                                        ; preds = %do.body15
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5159
  %spinlock = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 11, !dbg !5159
  store %struct.spinlock* %spinlock, %struct.spinlock** %lock.addr.i, align 8
  %10 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5160
  %11 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %10, i32 0, i32 0, !dbg !5161
  %rlock.i = bitcast %union.anon.3* %11 to %struct.raw_spinlock*, !dbg !5161
  br label %do.end18, !dbg !5159

do.end18:                                         ; preds = %do.body16
  br label %do.end19, !dbg !5157

do.end19:                                         ; preds = %do.end18
  br label %do.end20, !dbg !5148

do.end20:                                         ; preds = %do.end19
  br label %do.end21, !dbg !5147

do.end21:                                         ; preds = %do.end20
  br label %do.end22, !dbg !5142

do.end22:                                         ; preds = %do.end21
  store i32 1000, i32* %delay, align 4, !dbg !5162
  %12 = load volatile i64, i64* @jiffies, align 8, !dbg !5163
  store i64 %12, i64* %now, align 8, !dbg !5164
  store i32 0, i32* %i, align 4, !dbg !5165
  br label %for.cond, !dbg !5166

for.cond:                                         ; preds = %for.inc, %do.end22
  %13 = load i32, i32* %i, align 4, !dbg !5167
  %14 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5168
  %n_subdevices = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 15, !dbg !5169
  %15 = load i32, i32* %n_subdevices, align 4, !dbg !5169
  %cmp23 = icmp slt i32 %13, %15, !dbg !5170
  br i1 %cmp23, label %for.body, label %for.end, !dbg !5171

for.body:                                         ; preds = %for.cond
  %16 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5172
  %subdevices = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 16, !dbg !5173
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices, align 8, !dbg !5173
  %18 = load i32, i32* %i, align 4, !dbg !5174
  %idxprom = sext i32 %18 to i64, !dbg !5172
  %arrayidx = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %17, i64 %idxprom, !dbg !5172
  store %struct.comedi_subdevice* %arrayidx, %struct.comedi_subdevice** %s, align 8, !dbg !5175
  %19 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !5176
  %private = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %19, i32 0, i32 6, !dbg !5177
  %20 = load i8*, i8** %private, align 8, !dbg !5177
  %21 = bitcast i8* %20 to %struct.jr3_pci_subdev_private*, !dbg !5176
  store %struct.jr3_pci_subdev_private* %21, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !5178
  %22 = load i64, i64* %now, align 8, !dbg !5179
  %23 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !5179
  %next_time_min = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %23, i32 0, i32 1, !dbg !5179
  %24 = load i64, i64* %next_time_min, align 8, !dbg !5179
  %sub = sub i64 %22, %24, !dbg !5179
  %cmp25 = icmp sge i64 %sub, 0, !dbg !5179
  br i1 %cmp25, label %if.then, label %if.end36, !dbg !5180

if.then:                                          ; preds = %for.body
  call void @llvm.dbg.declare(metadata %struct.jr3_pci_poll_delay* %sub_delay, metadata !5181, metadata !DIExpression()), !dbg !5186
  %25 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !5187
  %call28 = call i64 @jr3_pci_poll_subdevice(%struct.comedi_subdevice* %25) #8, !dbg !5188
  %26 = bitcast %struct.jr3_pci_poll_delay* %tmp27 to i64*, !dbg !5188
  store i64 %call28, i64* %26, align 4, !dbg !5188
  %27 = bitcast %struct.jr3_pci_poll_delay* %sub_delay to i8*, !dbg !5188
  %28 = bitcast %struct.jr3_pci_poll_delay* %tmp27 to i8*, !dbg !5188
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 8, i1 false), !dbg !5188
  %29 = load volatile i64, i64* @jiffies, align 8, !dbg !5189
  %min = getelementptr inbounds %struct.jr3_pci_poll_delay, %struct.jr3_pci_poll_delay* %sub_delay, i32 0, i32 0, !dbg !5190
  %30 = load i32, i32* %min, align 4, !dbg !5190
  store i32 %30, i32* %m.addr.i42, align 4
  %31 = load i32, i32* %m.addr.i42, align 4, !dbg !5191
  %32 = call i1 @llvm.is.constant.i32(i32 %31) #7, !dbg !5192
  br i1 %32, label %if.then.i44, label %if.else.i49, !dbg !5193

if.then.i44:                                      ; preds = %if.then
  %33 = load i32, i32* %m.addr.i42, align 4, !dbg !5194
  %cmp.i43 = icmp slt i32 %33, 0, !dbg !5195
  br i1 %cmp.i43, label %if.then1.i45, label %if.end.i47, !dbg !5196

if.then1.i45:                                     ; preds = %if.then.i44
  store i64 4611686018427387902, i64* %retval.i41, align 8, !dbg !5197
  br label %msecs_to_jiffies.exit50, !dbg !5197

if.end.i47:                                       ; preds = %if.then.i44
  %34 = load i32, i32* %m.addr.i42, align 4, !dbg !5198
  %call.i46 = call i64 @_msecs_to_jiffies(i32 %34) #9, !dbg !5199
  store i64 %call.i46, i64* %retval.i41, align 8, !dbg !5200
  br label %msecs_to_jiffies.exit50, !dbg !5200

if.else.i49:                                      ; preds = %if.then
  %35 = load i32, i32* %m.addr.i42, align 4, !dbg !5201
  %call2.i48 = call i64 @__msecs_to_jiffies(i32 %35) #9, !dbg !5202
  store i64 %call2.i48, i64* %retval.i41, align 8, !dbg !5203
  br label %msecs_to_jiffies.exit50, !dbg !5203

msecs_to_jiffies.exit50:                          ; preds = %if.then1.i45, %if.end.i47, %if.else.i49
  %36 = load i64, i64* %retval.i41, align 8, !dbg !5204
  %add = add i64 %29, %36, !dbg !5205
  %37 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !5206
  %next_time_min30 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %37, i32 0, i32 1, !dbg !5207
  store i64 %add, i64* %next_time_min30, align 8, !dbg !5208
  %max = getelementptr inbounds %struct.jr3_pci_poll_delay, %struct.jr3_pci_poll_delay* %sub_delay, i32 0, i32 1, !dbg !5209
  %38 = load i32, i32* %max, align 4, !dbg !5209
  %tobool = icmp ne i32 %38, 0, !dbg !5211
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5212

land.lhs.true:                                    ; preds = %msecs_to_jiffies.exit50
  %max31 = getelementptr inbounds %struct.jr3_pci_poll_delay, %struct.jr3_pci_poll_delay* %sub_delay, i32 0, i32 1, !dbg !5213
  %39 = load i32, i32* %max31, align 4, !dbg !5213
  %40 = load i32, i32* %delay, align 4, !dbg !5214
  %cmp32 = icmp slt i32 %39, %40, !dbg !5215
  br i1 %cmp32, label %if.then34, label %if.end, !dbg !5216

if.then34:                                        ; preds = %land.lhs.true
  %max35 = getelementptr inbounds %struct.jr3_pci_poll_delay, %struct.jr3_pci_poll_delay* %sub_delay, i32 0, i32 1, !dbg !5217
  %41 = load i32, i32* %max35, align 4, !dbg !5217
  store i32 %41, i32* %delay, align 4, !dbg !5218
  br label %if.end, !dbg !5219

if.end:                                           ; preds = %if.then34, %land.lhs.true, %msecs_to_jiffies.exit50
  br label %if.end36, !dbg !5220

if.end36:                                         ; preds = %if.end, %for.body
  br label %for.inc, !dbg !5221

for.inc:                                          ; preds = %if.end36
  %42 = load i32, i32* %i, align 4, !dbg !5222
  %inc = add i32 %42, 1, !dbg !5222
  store i32 %inc, i32* %i, align 4, !dbg !5222
  br label %for.cond, !dbg !5223, !llvm.loop !5224

for.end:                                          ; preds = %for.cond
  %43 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5226
  %spinlock37 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %43, i32 0, i32 11, !dbg !5227
  %44 = load i64, i64* %flags, align 8, !dbg !5228
  store %struct.spinlock* %spinlock37, %struct.spinlock** %lock.addr.i51, align 8
  store i64 %44, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !277, metadata !5229, metadata !DIExpression()) #7, !dbg !5232
  call void @llvm.dbg.declare(metadata !277, metadata !5233, metadata !DIExpression()) #7, !dbg !5232
  store i32 1, i32* %tmp.i, align 4, !dbg !5232
  %45 = load i32, i32* %tmp.i, align 4, !dbg !5232
  call void @llvm.dbg.declare(metadata !277, metadata !5234, metadata !DIExpression()) #7, !dbg !5239
  call void @llvm.dbg.declare(metadata !277, metadata !5240, metadata !DIExpression()) #7, !dbg !5239
  store i32 1, i32* %tmp8.i, align 4, !dbg !5239
  %46 = load i32, i32* %tmp8.i, align 4, !dbg !5239
  %47 = load i64, i64* %flags.addr.i, align 8, !dbg !5241
  call void @arch_local_irq_restore(i64 %47) #9, !dbg !5241
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5242, !srcloc !5244
  %48 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i51, align 8, !dbg !5245
  %49 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %48, i32 0, i32 0, !dbg !5245
  %rlock.i52 = bitcast %union.anon.3* %49 to %struct.raw_spinlock*, !dbg !5245
  %50 = load volatile i64, i64* @jiffies, align 8, !dbg !5247
  %51 = load i32, i32* %delay, align 4, !dbg !5248
  store i32 %51, i32* %m.addr.i, align 4
  %52 = load i32, i32* %m.addr.i, align 4, !dbg !5249
  %53 = call i1 @llvm.is.constant.i32(i32 %52) #7, !dbg !5250
  br i1 %53, label %if.then.i, label %if.else.i, !dbg !5251

if.then.i:                                        ; preds = %for.end
  %54 = load i32, i32* %m.addr.i, align 4, !dbg !5252
  %cmp.i = icmp slt i32 %54, 0, !dbg !5253
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5254

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !5255
  br label %msecs_to_jiffies.exit, !dbg !5255

if.end.i:                                         ; preds = %if.then.i
  %55 = load i32, i32* %m.addr.i, align 4, !dbg !5256
  %call.i = call i64 @_msecs_to_jiffies(i32 %55) #9, !dbg !5257
  store i64 %call.i, i64* %retval.i, align 8, !dbg !5258
  br label %msecs_to_jiffies.exit, !dbg !5258

if.else.i:                                        ; preds = %for.end
  %56 = load i32, i32* %m.addr.i, align 4, !dbg !5259
  %call2.i = call i64 @__msecs_to_jiffies(i32 %56) #9, !dbg !5260
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !5261
  br label %msecs_to_jiffies.exit, !dbg !5261

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %57 = load i64, i64* %retval.i, align 8, !dbg !5262
  %add39 = add i64 %50, %57, !dbg !5263
  %58 = load %struct.jr3_pci_dev_private*, %struct.jr3_pci_dev_private** %devpriv, align 8, !dbg !5264
  %timer = getelementptr inbounds %struct.jr3_pci_dev_private, %struct.jr3_pci_dev_private* %58, i32 0, i32 0, !dbg !5265
  %expires = getelementptr inbounds %struct.timer_list, %struct.timer_list* %timer, i32 0, i32 1, !dbg !5266
  store i64 %add39, i64* %expires, align 8, !dbg !5267
  %59 = load %struct.jr3_pci_dev_private*, %struct.jr3_pci_dev_private** %devpriv, align 8, !dbg !5268
  %timer40 = getelementptr inbounds %struct.jr3_pci_dev_private, %struct.jr3_pci_dev_private* %59, i32 0, i32 0, !dbg !5269
  call void @add_timer(%struct.timer_list* %timer40) #8, !dbg !5270
  ret void, !dbg !5271
}

; Function Attrs: noredzone
declare dso_local void @add_timer(%struct.timer_list*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i16 @get_u16(i32* %p) #2 !dbg !5272 {
entry:
  %p.addr = alloca i32*, align 8
  store i32* %p, i32** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr, metadata !5277, metadata !DIExpression()), !dbg !5278
  %0 = load i32*, i32** %p.addr, align 8, !dbg !5279
  %1 = bitcast i32* %0 to i8*, !dbg !5279
  %call = call i32 @readl(i8* %1) #8, !dbg !5280
  %conv = trunc i32 %call to i16, !dbg !5281
  ret i16 %conv, !dbg !5282
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @jr3_pci_ai_read_chan(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, i32 %chan) #2 !dbg !5283 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %chan.addr = alloca i32, align 4
  %spriv = alloca %struct.jr3_pci_subdev_private*, align 8
  %val = alloca i32, align 4
  %axis = alloca i32, align 4
  %filter = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5286, metadata !DIExpression()), !dbg !5287
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5288, metadata !DIExpression()), !dbg !5289
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !5290, metadata !DIExpression()), !dbg !5291
  call void @llvm.dbg.declare(metadata %struct.jr3_pci_subdev_private** %spriv, metadata !5292, metadata !DIExpression()), !dbg !5293
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5294
  %private = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 6, !dbg !5295
  %1 = load i8*, i8** %private, align 8, !dbg !5295
  %2 = bitcast i8* %1 to %struct.jr3_pci_subdev_private*, !dbg !5294
  store %struct.jr3_pci_subdev_private* %2, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !5293
  call void @llvm.dbg.declare(metadata i32* %val, metadata !5296, metadata !DIExpression()), !dbg !5297
  store i32 0, i32* %val, align 4, !dbg !5297
  %3 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !5298
  %state = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %3, i32 0, i32 2, !dbg !5300
  %4 = load i32, i32* %state, align 8, !dbg !5300
  %cmp = icmp ne i32 %4, 5, !dbg !5301
  br i1 %cmp, label %if.then, label %if.end, !dbg !5302

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5303
  br label %return, !dbg !5303

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %chan.addr, align 4, !dbg !5304
  %cmp1 = icmp ult i32 %5, 56, !dbg !5306
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !5307

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %axis, metadata !5308, metadata !DIExpression()), !dbg !5310
  %6 = load i32, i32* %chan.addr, align 4, !dbg !5311
  %rem = urem i32 %6, 8, !dbg !5312
  store i32 %rem, i32* %axis, align 4, !dbg !5310
  call void @llvm.dbg.declare(metadata i32* %filter, metadata !5313, metadata !DIExpression()), !dbg !5314
  %7 = load i32, i32* %chan.addr, align 4, !dbg !5315
  %div = udiv i32 %7, 8, !dbg !5316
  store i32 %div, i32* %filter, align 4, !dbg !5314
  %8 = load i32, i32* %axis, align 4, !dbg !5317
  switch i32 %8, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb11
    i32 3, label %sw.bb18
    i32 4, label %sw.bb25
    i32 5, label %sw.bb32
    i32 6, label %sw.bb39
    i32 7, label %sw.bb46
  ], !dbg !5318

sw.bb:                                            ; preds = %if.then2
  %9 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !5319
  %sensor = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %9, i32 0, i32 0, !dbg !5321
  %10 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor, align 8, !dbg !5321
  %filter3 = getelementptr inbounds %struct.jr3_sensor, %struct.jr3_sensor* %10, i32 0, i32 18, !dbg !5322
  %11 = load i32, i32* %filter, align 4, !dbg !5323
  %idxprom = zext i32 %11 to i64, !dbg !5319
  %arrayidx = getelementptr [7 x %struct.force_array], [7 x %struct.force_array]* %filter3, i64 0, i64 %idxprom, !dbg !5319
  %fx = getelementptr inbounds %struct.force_array, %struct.force_array* %arrayidx, i32 0, i32 0, !dbg !5324
  %call = call signext i16 @get_s16(i32* %fx) #8, !dbg !5325
  %conv = sext i16 %call to i32, !dbg !5325
  store i32 %conv, i32* %val, align 4, !dbg !5326
  br label %sw.epilog, !dbg !5327

sw.bb4:                                           ; preds = %if.then2
  %12 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !5328
  %sensor5 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %12, i32 0, i32 0, !dbg !5329
  %13 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor5, align 8, !dbg !5329
  %filter6 = getelementptr inbounds %struct.jr3_sensor, %struct.jr3_sensor* %13, i32 0, i32 18, !dbg !5330
  %14 = load i32, i32* %filter, align 4, !dbg !5331
  %idxprom7 = zext i32 %14 to i64, !dbg !5328
  %arrayidx8 = getelementptr [7 x %struct.force_array], [7 x %struct.force_array]* %filter6, i64 0, i64 %idxprom7, !dbg !5328
  %fy = getelementptr inbounds %struct.force_array, %struct.force_array* %arrayidx8, i32 0, i32 1, !dbg !5332
  %call9 = call signext i16 @get_s16(i32* %fy) #8, !dbg !5333
  %conv10 = sext i16 %call9 to i32, !dbg !5333
  store i32 %conv10, i32* %val, align 4, !dbg !5334
  br label %sw.epilog, !dbg !5335

sw.bb11:                                          ; preds = %if.then2
  %15 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !5336
  %sensor12 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %15, i32 0, i32 0, !dbg !5337
  %16 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor12, align 8, !dbg !5337
  %filter13 = getelementptr inbounds %struct.jr3_sensor, %struct.jr3_sensor* %16, i32 0, i32 18, !dbg !5338
  %17 = load i32, i32* %filter, align 4, !dbg !5339
  %idxprom14 = zext i32 %17 to i64, !dbg !5336
  %arrayidx15 = getelementptr [7 x %struct.force_array], [7 x %struct.force_array]* %filter13, i64 0, i64 %idxprom14, !dbg !5336
  %fz = getelementptr inbounds %struct.force_array, %struct.force_array* %arrayidx15, i32 0, i32 2, !dbg !5340
  %call16 = call signext i16 @get_s16(i32* %fz) #8, !dbg !5341
  %conv17 = sext i16 %call16 to i32, !dbg !5341
  store i32 %conv17, i32* %val, align 4, !dbg !5342
  br label %sw.epilog, !dbg !5343

sw.bb18:                                          ; preds = %if.then2
  %18 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !5344
  %sensor19 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %18, i32 0, i32 0, !dbg !5345
  %19 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor19, align 8, !dbg !5345
  %filter20 = getelementptr inbounds %struct.jr3_sensor, %struct.jr3_sensor* %19, i32 0, i32 18, !dbg !5346
  %20 = load i32, i32* %filter, align 4, !dbg !5347
  %idxprom21 = zext i32 %20 to i64, !dbg !5344
  %arrayidx22 = getelementptr [7 x %struct.force_array], [7 x %struct.force_array]* %filter20, i64 0, i64 %idxprom21, !dbg !5344
  %mx = getelementptr inbounds %struct.force_array, %struct.force_array* %arrayidx22, i32 0, i32 3, !dbg !5348
  %call23 = call signext i16 @get_s16(i32* %mx) #8, !dbg !5349
  %conv24 = sext i16 %call23 to i32, !dbg !5349
  store i32 %conv24, i32* %val, align 4, !dbg !5350
  br label %sw.epilog, !dbg !5351

sw.bb25:                                          ; preds = %if.then2
  %21 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !5352
  %sensor26 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %21, i32 0, i32 0, !dbg !5353
  %22 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor26, align 8, !dbg !5353
  %filter27 = getelementptr inbounds %struct.jr3_sensor, %struct.jr3_sensor* %22, i32 0, i32 18, !dbg !5354
  %23 = load i32, i32* %filter, align 4, !dbg !5355
  %idxprom28 = zext i32 %23 to i64, !dbg !5352
  %arrayidx29 = getelementptr [7 x %struct.force_array], [7 x %struct.force_array]* %filter27, i64 0, i64 %idxprom28, !dbg !5352
  %my = getelementptr inbounds %struct.force_array, %struct.force_array* %arrayidx29, i32 0, i32 4, !dbg !5356
  %call30 = call signext i16 @get_s16(i32* %my) #8, !dbg !5357
  %conv31 = sext i16 %call30 to i32, !dbg !5357
  store i32 %conv31, i32* %val, align 4, !dbg !5358
  br label %sw.epilog, !dbg !5359

sw.bb32:                                          ; preds = %if.then2
  %24 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !5360
  %sensor33 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %24, i32 0, i32 0, !dbg !5361
  %25 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor33, align 8, !dbg !5361
  %filter34 = getelementptr inbounds %struct.jr3_sensor, %struct.jr3_sensor* %25, i32 0, i32 18, !dbg !5362
  %26 = load i32, i32* %filter, align 4, !dbg !5363
  %idxprom35 = zext i32 %26 to i64, !dbg !5360
  %arrayidx36 = getelementptr [7 x %struct.force_array], [7 x %struct.force_array]* %filter34, i64 0, i64 %idxprom35, !dbg !5360
  %mz = getelementptr inbounds %struct.force_array, %struct.force_array* %arrayidx36, i32 0, i32 5, !dbg !5364
  %call37 = call signext i16 @get_s16(i32* %mz) #8, !dbg !5365
  %conv38 = sext i16 %call37 to i32, !dbg !5365
  store i32 %conv38, i32* %val, align 4, !dbg !5366
  br label %sw.epilog, !dbg !5367

sw.bb39:                                          ; preds = %if.then2
  %27 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !5368
  %sensor40 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %27, i32 0, i32 0, !dbg !5369
  %28 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor40, align 8, !dbg !5369
  %filter41 = getelementptr inbounds %struct.jr3_sensor, %struct.jr3_sensor* %28, i32 0, i32 18, !dbg !5370
  %29 = load i32, i32* %filter, align 4, !dbg !5371
  %idxprom42 = zext i32 %29 to i64, !dbg !5368
  %arrayidx43 = getelementptr [7 x %struct.force_array], [7 x %struct.force_array]* %filter41, i64 0, i64 %idxprom42, !dbg !5368
  %v1 = getelementptr inbounds %struct.force_array, %struct.force_array* %arrayidx43, i32 0, i32 6, !dbg !5372
  %call44 = call signext i16 @get_s16(i32* %v1) #8, !dbg !5373
  %conv45 = sext i16 %call44 to i32, !dbg !5373
  store i32 %conv45, i32* %val, align 4, !dbg !5374
  br label %sw.epilog, !dbg !5375

sw.bb46:                                          ; preds = %if.then2
  %30 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !5376
  %sensor47 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %30, i32 0, i32 0, !dbg !5377
  %31 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor47, align 8, !dbg !5377
  %filter48 = getelementptr inbounds %struct.jr3_sensor, %struct.jr3_sensor* %31, i32 0, i32 18, !dbg !5378
  %32 = load i32, i32* %filter, align 4, !dbg !5379
  %idxprom49 = zext i32 %32 to i64, !dbg !5376
  %arrayidx50 = getelementptr [7 x %struct.force_array], [7 x %struct.force_array]* %filter48, i64 0, i64 %idxprom49, !dbg !5376
  %v2 = getelementptr inbounds %struct.force_array, %struct.force_array* %arrayidx50, i32 0, i32 7, !dbg !5380
  %call51 = call signext i16 @get_s16(i32* %v2) #8, !dbg !5381
  %conv52 = sext i16 %call51 to i32, !dbg !5381
  store i32 %conv52, i32* %val, align 4, !dbg !5382
  br label %sw.epilog, !dbg !5383

sw.epilog:                                        ; preds = %if.then2, %sw.bb46, %sw.bb39, %sw.bb32, %sw.bb25, %sw.bb18, %sw.bb11, %sw.bb4, %sw.bb
  %33 = load i32, i32* %val, align 4, !dbg !5384
  %add = add i32 %33, 16384, !dbg !5384
  store i32 %add, i32* %val, align 4, !dbg !5384
  br label %if.end68, !dbg !5385

if.else:                                          ; preds = %if.end
  %34 = load i32, i32* %chan.addr, align 4, !dbg !5386
  %cmp53 = icmp eq i32 %34, 56, !dbg !5388
  br i1 %cmp53, label %if.then55, label %if.else59, !dbg !5389

if.then55:                                        ; preds = %if.else
  %35 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !5390
  %sensor56 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %35, i32 0, i32 0, !dbg !5392
  %36 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor56, align 8, !dbg !5392
  %model_no = getelementptr inbounds %struct.jr3_sensor, %struct.jr3_sensor* %36, i32 0, i32 47, !dbg !5393
  %call57 = call zeroext i16 @get_u16(i32* %model_no) #8, !dbg !5394
  %conv58 = zext i16 %call57 to i32, !dbg !5394
  store i32 %conv58, i32* %val, align 4, !dbg !5395
  br label %if.end67, !dbg !5396

if.else59:                                        ; preds = %if.else
  %37 = load i32, i32* %chan.addr, align 4, !dbg !5397
  %cmp60 = icmp eq i32 %37, 57, !dbg !5399
  br i1 %cmp60, label %if.then62, label %if.end66, !dbg !5400

if.then62:                                        ; preds = %if.else59
  %38 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !5401
  %sensor63 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %38, i32 0, i32 0, !dbg !5403
  %39 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor63, align 8, !dbg !5403
  %serial_no = getelementptr inbounds %struct.jr3_sensor, %struct.jr3_sensor* %39, i32 0, i32 46, !dbg !5404
  %call64 = call zeroext i16 @get_u16(i32* %serial_no) #8, !dbg !5405
  %conv65 = zext i16 %call64 to i32, !dbg !5405
  store i32 %conv65, i32* %val, align 4, !dbg !5406
  br label %if.end66, !dbg !5407

if.end66:                                         ; preds = %if.then62, %if.else59
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.then55
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %sw.epilog
  %40 = load i32, i32* %val, align 4, !dbg !5408
  store i32 %40, i32* %retval, align 4, !dbg !5409
  br label %return, !dbg !5409

return:                                           ; preds = %if.end68, %if.then
  %41 = load i32, i32* %retval, align 4, !dbg !5410
  ret i32 %41, !dbg !5410
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @readl(i8* %addr) #2 !dbg !5411 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5416, metadata !DIExpression()), !dbg !5417
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5418, metadata !DIExpression()), !dbg !5417
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !5417
  %1 = bitcast i8* %0 to i32*, !dbg !5417
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %1) #7, !dbg !5417, !srcloc !5419
  store i32 %2, i32* %ret, align 4, !dbg !5417
  %3 = load i32, i32* %ret, align 4, !dbg !5417
  ret i32 %3, !dbg !5417
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal signext i16 @get_s16(i32* %p) #2 !dbg !5420 {
entry:
  %p.addr = alloca i32*, align 8
  store i32* %p, i32** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr, metadata !5425, metadata !DIExpression()), !dbg !5426
  %0 = load i32*, i32** %p.addr, align 8, !dbg !5427
  %1 = bitcast i32* %0 to i8*, !dbg !5427
  %call = call i32 @readl(i8* %1) #8, !dbg !5428
  %conv = trunc i32 %call to i16, !dbg !5429
  ret i16 %conv, !dbg !5430
}

; Function Attrs: noredzone
declare dso_local i8* @comedi_alloc_spriv(%struct.comedi_subdevice*, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @jr3_check_firmware(%struct.comedi_device* %dev, i8* %data, i64 %size) #2 !dbg !5431 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %more = alloca i32, align 4
  %pos = alloca i32, align 4
  %count = alloca i32, align 4
  %addr = alloca i32, align 4
  %dummy = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5434, metadata !DIExpression()), !dbg !5435
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5436, metadata !DIExpression()), !dbg !5437
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5438, metadata !DIExpression()), !dbg !5439
  call void @llvm.dbg.declare(metadata i32* %more, metadata !5440, metadata !DIExpression()), !dbg !5441
  store i32 1, i32* %more, align 4, !dbg !5441
  call void @llvm.dbg.declare(metadata i32* %pos, metadata !5442, metadata !DIExpression()), !dbg !5443
  store i32 0, i32* %pos, align 4, !dbg !5443
  br label %while.cond, !dbg !5444

while.cond:                                       ; preds = %while.end, %entry
  %0 = load i32, i32* %more, align 4, !dbg !5445
  %tobool = icmp ne i32 %0, 0, !dbg !5444
  br i1 %tobool, label %while.body, label %while.end23, !dbg !5444

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i32* %count, metadata !5446, metadata !DIExpression()), !dbg !5448
  store i32 0, i32* %count, align 4, !dbg !5448
  call void @llvm.dbg.declare(metadata i32* %addr, metadata !5449, metadata !DIExpression()), !dbg !5450
  store i32 0, i32* %addr, align 4, !dbg !5450
  %1 = load i32, i32* %more, align 4, !dbg !5451
  %tobool1 = icmp ne i32 %1, 0, !dbg !5451
  br i1 %tobool1, label %land.rhs, label %land.end, !dbg !5452

land.rhs:                                         ; preds = %while.body
  %2 = load i8*, i8** %data.addr, align 8, !dbg !5453
  %3 = load i64, i64* %size.addr, align 8, !dbg !5454
  %call = call i32 @read_idm_word(i8* %2, i64 %3, i32* %pos, i32* %count) #8, !dbg !5455
  %tobool2 = icmp ne i32 %call, 0, !dbg !5452
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.body
  %4 = phi i1 [ false, %while.body ], [ %tobool2, %land.rhs ], !dbg !5456
  %land.ext = zext i1 %4 to i32, !dbg !5452
  store i32 %land.ext, i32* %more, align 4, !dbg !5457
  %5 = load i32, i32* %more, align 4, !dbg !5458
  %tobool3 = icmp ne i32 %5, 0, !dbg !5458
  br i1 %tobool3, label %land.lhs.true, label %if.end, !dbg !5460

land.lhs.true:                                    ; preds = %land.end
  %6 = load i32, i32* %count, align 4, !dbg !5461
  %cmp = icmp eq i32 %6, 65535, !dbg !5462
  br i1 %cmp, label %if.then, label %if.end, !dbg !5463

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4, !dbg !5464
  br label %return, !dbg !5464

if.end:                                           ; preds = %land.lhs.true, %land.end
  %7 = load i32, i32* %more, align 4, !dbg !5465
  %tobool4 = icmp ne i32 %7, 0, !dbg !5465
  br i1 %tobool4, label %land.rhs5, label %land.end8, !dbg !5466

land.rhs5:                                        ; preds = %if.end
  %8 = load i8*, i8** %data.addr, align 8, !dbg !5467
  %9 = load i64, i64* %size.addr, align 8, !dbg !5468
  %call6 = call i32 @read_idm_word(i8* %8, i64 %9, i32* %pos, i32* %addr) #8, !dbg !5469
  %tobool7 = icmp ne i32 %call6, 0, !dbg !5466
  br label %land.end8

land.end8:                                        ; preds = %land.rhs5, %if.end
  %10 = phi i1 [ false, %if.end ], [ %tobool7, %land.rhs5 ], !dbg !5456
  %land.ext9 = zext i1 %10 to i32, !dbg !5466
  store i32 %land.ext9, i32* %more, align 4, !dbg !5470
  br label %while.cond10, !dbg !5471

while.cond10:                                     ; preds = %land.end21, %land.end8
  %11 = load i32, i32* %more, align 4, !dbg !5472
  %tobool11 = icmp ne i32 %11, 0, !dbg !5472
  br i1 %tobool11, label %land.rhs12, label %land.end14, !dbg !5473

land.rhs12:                                       ; preds = %while.cond10
  %12 = load i32, i32* %count, align 4, !dbg !5474
  %cmp13 = icmp ugt i32 %12, 0, !dbg !5475
  br label %land.end14

land.end14:                                       ; preds = %land.rhs12, %while.cond10
  %13 = phi i1 [ false, %while.cond10 ], [ %cmp13, %land.rhs12 ], !dbg !5456
  br i1 %13, label %while.body16, label %while.end, !dbg !5471

while.body16:                                     ; preds = %land.end14
  call void @llvm.dbg.declare(metadata i32* %dummy, metadata !5476, metadata !DIExpression()), !dbg !5478
  store i32 0, i32* %dummy, align 4, !dbg !5478
  %14 = load i32, i32* %more, align 4, !dbg !5479
  %tobool17 = icmp ne i32 %14, 0, !dbg !5479
  br i1 %tobool17, label %land.rhs18, label %land.end21, !dbg !5480

land.rhs18:                                       ; preds = %while.body16
  %15 = load i8*, i8** %data.addr, align 8, !dbg !5481
  %16 = load i64, i64* %size.addr, align 8, !dbg !5482
  %call19 = call i32 @read_idm_word(i8* %15, i64 %16, i32* %pos, i32* %dummy) #8, !dbg !5483
  %tobool20 = icmp ne i32 %call19, 0, !dbg !5480
  br label %land.end21

land.end21:                                       ; preds = %land.rhs18, %while.body16
  %17 = phi i1 [ false, %while.body16 ], [ %tobool20, %land.rhs18 ], !dbg !5484
  %land.ext22 = zext i1 %17 to i32, !dbg !5480
  store i32 %land.ext22, i32* %more, align 4, !dbg !5485
  %18 = load i32, i32* %count, align 4, !dbg !5486
  %dec = add i32 %18, -1, !dbg !5486
  store i32 %dec, i32* %count, align 4, !dbg !5486
  br label %while.cond10, !dbg !5471, !llvm.loop !5487

while.end:                                        ; preds = %land.end14
  br label %while.cond, !dbg !5444, !llvm.loop !5489

while.end23:                                      ; preds = %while.cond
  store i32 -61, i32* %retval, align 4, !dbg !5491
  br label %return, !dbg !5491

return:                                           ; preds = %while.end23, %if.then
  %19 = load i32, i32* %retval, align 4, !dbg !5492
  ret i32 %19, !dbg !5492
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @jr3_write_firmware(%struct.comedi_device* %dev, i32 %subdev, i8* %data, i64 %size) #2 !dbg !5493 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %subdev.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %block = alloca %struct.jr3_block*, align 8
  %lo = alloca i32*, align 8
  %hi = alloca i32*, align 8
  %more = alloca i32, align 4
  %pos = alloca i32, align 4
  %count = alloca i32, align 4
  %addr = alloca i32, align 4
  %data1 = alloca i32, align 4
  %data125 = alloca i32, align 4
  %data2 = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5496, metadata !DIExpression()), !dbg !5497
  store i32 %subdev, i32* %subdev.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %subdev.addr, metadata !5498, metadata !DIExpression()), !dbg !5499
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5500, metadata !DIExpression()), !dbg !5501
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5502, metadata !DIExpression()), !dbg !5503
  call void @llvm.dbg.declare(metadata %struct.jr3_block** %block, metadata !5504, metadata !DIExpression()), !dbg !5505
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5506
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 17, !dbg !5507
  %1 = load i8*, i8** %mmio, align 8, !dbg !5507
  %2 = bitcast i8* %1 to %struct.jr3_block*, !dbg !5506
  store %struct.jr3_block* %2, %struct.jr3_block** %block, align 8, !dbg !5505
  call void @llvm.dbg.declare(metadata i32** %lo, metadata !5508, metadata !DIExpression()), !dbg !5509
  call void @llvm.dbg.declare(metadata i32** %hi, metadata !5510, metadata !DIExpression()), !dbg !5511
  call void @llvm.dbg.declare(metadata i32* %more, metadata !5512, metadata !DIExpression()), !dbg !5513
  store i32 1, i32* %more, align 4, !dbg !5513
  call void @llvm.dbg.declare(metadata i32* %pos, metadata !5514, metadata !DIExpression()), !dbg !5515
  store i32 0, i32* %pos, align 4, !dbg !5515
  br label %while.cond, !dbg !5516

while.cond:                                       ; preds = %while.end, %entry
  %3 = load i32, i32* %more, align 4, !dbg !5517
  %tobool = icmp ne i32 %3, 0, !dbg !5516
  br i1 %tobool, label %while.body, label %while.end49, !dbg !5516

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i32* %count, metadata !5518, metadata !DIExpression()), !dbg !5520
  store i32 0, i32* %count, align 4, !dbg !5520
  call void @llvm.dbg.declare(metadata i32* %addr, metadata !5521, metadata !DIExpression()), !dbg !5522
  store i32 0, i32* %addr, align 4, !dbg !5522
  %4 = load i32, i32* %more, align 4, !dbg !5523
  %tobool1 = icmp ne i32 %4, 0, !dbg !5523
  br i1 %tobool1, label %land.rhs, label %land.end, !dbg !5524

land.rhs:                                         ; preds = %while.body
  %5 = load i8*, i8** %data.addr, align 8, !dbg !5525
  %6 = load i64, i64* %size.addr, align 8, !dbg !5526
  %call = call i32 @read_idm_word(i8* %5, i64 %6, i32* %pos, i32* %count) #8, !dbg !5527
  %tobool2 = icmp ne i32 %call, 0, !dbg !5524
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.body
  %7 = phi i1 [ false, %while.body ], [ %tobool2, %land.rhs ], !dbg !5528
  %land.ext = zext i1 %7 to i32, !dbg !5524
  store i32 %land.ext, i32* %more, align 4, !dbg !5529
  %8 = load i32, i32* %more, align 4, !dbg !5530
  %tobool3 = icmp ne i32 %8, 0, !dbg !5530
  br i1 %tobool3, label %land.lhs.true, label %if.end, !dbg !5532

land.lhs.true:                                    ; preds = %land.end
  %9 = load i32, i32* %count, align 4, !dbg !5533
  %cmp = icmp eq i32 %9, 65535, !dbg !5534
  br i1 %cmp, label %if.then, label %if.end, !dbg !5535

if.then:                                          ; preds = %land.lhs.true
  br label %while.end49, !dbg !5536

if.end:                                           ; preds = %land.lhs.true, %land.end
  %10 = load i32, i32* %more, align 4, !dbg !5537
  %tobool4 = icmp ne i32 %10, 0, !dbg !5537
  br i1 %tobool4, label %land.rhs5, label %land.end8, !dbg !5538

land.rhs5:                                        ; preds = %if.end
  %11 = load i8*, i8** %data.addr, align 8, !dbg !5539
  %12 = load i64, i64* %size.addr, align 8, !dbg !5540
  %call6 = call i32 @read_idm_word(i8* %11, i64 %12, i32* %pos, i32* %addr) #8, !dbg !5541
  %tobool7 = icmp ne i32 %call6, 0, !dbg !5538
  br label %land.end8

land.end8:                                        ; preds = %land.rhs5, %if.end
  %13 = phi i1 [ false, %if.end ], [ %tobool7, %land.rhs5 ], !dbg !5528
  %land.ext9 = zext i1 %13 to i32, !dbg !5538
  store i32 %land.ext9, i32* %more, align 4, !dbg !5542
  br label %while.cond10, !dbg !5543

while.cond10:                                     ; preds = %if.end48, %land.end8
  %14 = load i32, i32* %more, align 4, !dbg !5544
  %tobool11 = icmp ne i32 %14, 0, !dbg !5544
  br i1 %tobool11, label %land.rhs12, label %land.end14, !dbg !5545

land.rhs12:                                       ; preds = %while.cond10
  %15 = load i32, i32* %count, align 4, !dbg !5546
  %cmp13 = icmp ugt i32 %15, 0, !dbg !5547
  br label %land.end14

land.end14:                                       ; preds = %land.rhs12, %while.cond10
  %16 = phi i1 [ false, %while.cond10 ], [ %cmp13, %land.rhs12 ], !dbg !5528
  br i1 %16, label %while.body16, label %while.end, !dbg !5543

while.body16:                                     ; preds = %land.end14
  %17 = load i32, i32* %addr, align 4, !dbg !5548
  %and = and i32 %17, 16384, !dbg !5551
  %tobool17 = icmp ne i32 %and, 0, !dbg !5551
  br i1 %tobool17, label %if.then18, label %if.else, !dbg !5552

if.then18:                                        ; preds = %while.body16
  call void @llvm.dbg.declare(metadata i32* %data1, metadata !5553, metadata !DIExpression()), !dbg !5555
  store i32 0, i32* %data1, align 4, !dbg !5555
  %18 = load i32, i32* %more, align 4, !dbg !5556
  %tobool19 = icmp ne i32 %18, 0, !dbg !5556
  br i1 %tobool19, label %land.rhs20, label %land.end23, !dbg !5557

land.rhs20:                                       ; preds = %if.then18
  %19 = load i8*, i8** %data.addr, align 8, !dbg !5558
  %20 = load i64, i64* %size.addr, align 8, !dbg !5559
  %call21 = call i32 @read_idm_word(i8* %19, i64 %20, i32* %pos, i32* %data1) #8, !dbg !5560
  %tobool22 = icmp ne i32 %call21, 0, !dbg !5557
  br label %land.end23

land.end23:                                       ; preds = %land.rhs20, %if.then18
  %21 = phi i1 [ false, %if.then18 ], [ %tobool22, %land.rhs20 ], !dbg !5561
  %land.ext24 = zext i1 %21 to i32, !dbg !5557
  store i32 %land.ext24, i32* %more, align 4, !dbg !5562
  %22 = load i32, i32* %count, align 4, !dbg !5563
  %dec = add i32 %22, -1, !dbg !5563
  store i32 %dec, i32* %count, align 4, !dbg !5563
  br label %if.end48, !dbg !5564

if.else:                                          ; preds = %while.body16
  call void @llvm.dbg.declare(metadata i32* %data125, metadata !5565, metadata !DIExpression()), !dbg !5567
  store i32 0, i32* %data125, align 4, !dbg !5567
  call void @llvm.dbg.declare(metadata i32* %data2, metadata !5568, metadata !DIExpression()), !dbg !5569
  store i32 0, i32* %data2, align 4, !dbg !5569
  %23 = load %struct.jr3_block*, %struct.jr3_block** %block, align 8, !dbg !5570
  %24 = load i32, i32* %subdev.addr, align 4, !dbg !5571
  %idxprom = sext i32 %24 to i64, !dbg !5570
  %arrayidx = getelementptr %struct.jr3_block, %struct.jr3_block* %23, i64 %idxprom, !dbg !5570
  %program_lo = getelementptr inbounds %struct.jr3_block, %struct.jr3_block* %arrayidx, i32 0, i32 0, !dbg !5572
  %25 = load i32, i32* %addr, align 4, !dbg !5573
  %idxprom26 = zext i32 %25 to i64, !dbg !5570
  %arrayidx27 = getelementptr [16384 x i32], [16384 x i32]* %program_lo, i64 0, i64 %idxprom26, !dbg !5570
  store i32* %arrayidx27, i32** %lo, align 8, !dbg !5574
  %26 = load %struct.jr3_block*, %struct.jr3_block** %block, align 8, !dbg !5575
  %27 = load i32, i32* %subdev.addr, align 4, !dbg !5576
  %idxprom28 = sext i32 %27 to i64, !dbg !5575
  %arrayidx29 = getelementptr %struct.jr3_block, %struct.jr3_block* %26, i64 %idxprom28, !dbg !5575
  %program_hi = getelementptr inbounds %struct.jr3_block, %struct.jr3_block* %arrayidx29, i32 0, i32 3, !dbg !5577
  %28 = load i32, i32* %addr, align 4, !dbg !5578
  %idxprom30 = zext i32 %28 to i64, !dbg !5575
  %arrayidx31 = getelementptr [32768 x i32], [32768 x i32]* %program_hi, i64 0, i64 %idxprom30, !dbg !5575
  store i32* %arrayidx31, i32** %hi, align 8, !dbg !5579
  %29 = load i32, i32* %more, align 4, !dbg !5580
  %tobool32 = icmp ne i32 %29, 0, !dbg !5580
  br i1 %tobool32, label %land.rhs33, label %land.end36, !dbg !5581

land.rhs33:                                       ; preds = %if.else
  %30 = load i8*, i8** %data.addr, align 8, !dbg !5582
  %31 = load i64, i64* %size.addr, align 8, !dbg !5583
  %call34 = call i32 @read_idm_word(i8* %30, i64 %31, i32* %pos, i32* %data125) #8, !dbg !5584
  %tobool35 = icmp ne i32 %call34, 0, !dbg !5581
  br label %land.end36

land.end36:                                       ; preds = %land.rhs33, %if.else
  %32 = phi i1 [ false, %if.else ], [ %tobool35, %land.rhs33 ], !dbg !5585
  %land.ext37 = zext i1 %32 to i32, !dbg !5581
  store i32 %land.ext37, i32* %more, align 4, !dbg !5586
  %33 = load i32, i32* %more, align 4, !dbg !5587
  %tobool38 = icmp ne i32 %33, 0, !dbg !5587
  br i1 %tobool38, label %land.rhs39, label %land.end42, !dbg !5588

land.rhs39:                                       ; preds = %land.end36
  %34 = load i8*, i8** %data.addr, align 8, !dbg !5589
  %35 = load i64, i64* %size.addr, align 8, !dbg !5590
  %call40 = call i32 @read_idm_word(i8* %34, i64 %35, i32* %pos, i32* %data2) #8, !dbg !5591
  %tobool41 = icmp ne i32 %call40, 0, !dbg !5588
  br label %land.end42

land.end42:                                       ; preds = %land.rhs39, %land.end36
  %36 = phi i1 [ false, %land.end36 ], [ %tobool41, %land.rhs39 ], !dbg !5585
  %land.ext43 = zext i1 %36 to i32, !dbg !5588
  store i32 %land.ext43, i32* %more, align 4, !dbg !5592
  %37 = load i32, i32* %count, align 4, !dbg !5593
  %sub = sub i32 %37, 2, !dbg !5593
  store i32 %sub, i32* %count, align 4, !dbg !5593
  %38 = load i32, i32* %more, align 4, !dbg !5594
  %tobool44 = icmp ne i32 %38, 0, !dbg !5594
  br i1 %tobool44, label %if.then45, label %if.end47, !dbg !5596

if.then45:                                        ; preds = %land.end42
  %39 = load i32*, i32** %lo, align 8, !dbg !5597
  %40 = load i32, i32* %data125, align 4, !dbg !5599
  %conv = trunc i32 %40 to i16, !dbg !5599
  call void @set_u16(i32* %39, i16 zeroext %conv) #8, !dbg !5600
  call void @__const_udelay(i64 4295) #8, !dbg !5601
  %41 = load i32*, i32** %hi, align 8, !dbg !5606
  %42 = load i32, i32* %data2, align 4, !dbg !5607
  %conv46 = trunc i32 %42 to i16, !dbg !5607
  call void @set_u16(i32* %41, i16 zeroext %conv46) #8, !dbg !5608
  call void @__const_udelay(i64 4295) #8, !dbg !5609
  br label %if.end47, !dbg !5614

if.end47:                                         ; preds = %if.then45, %land.end42
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %land.end23
  %43 = load i32, i32* %addr, align 4, !dbg !5615
  %inc = add i32 %43, 1, !dbg !5615
  store i32 %inc, i32* %addr, align 4, !dbg !5615
  br label %while.cond10, !dbg !5543, !llvm.loop !5616

while.end:                                        ; preds = %land.end14
  br label %while.cond, !dbg !5516, !llvm.loop !5618

while.end49:                                      ; preds = %if.then, %while.cond
  ret void, !dbg !5620
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @read_idm_word(i8* %data, i64 %size, i32* %pos, i32* %val) #2 !dbg !5621 {
entry:
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %pos.addr = alloca i32*, align 8
  %val.addr = alloca i32*, align 8
  %result = alloca i32, align 4
  %value = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5624, metadata !DIExpression()), !dbg !5625
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5626, metadata !DIExpression()), !dbg !5627
  store i32* %pos, i32** %pos.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %pos.addr, metadata !5628, metadata !DIExpression()), !dbg !5629
  store i32* %val, i32** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %val.addr, metadata !5630, metadata !DIExpression()), !dbg !5631
  call void @llvm.dbg.declare(metadata i32* %result, metadata !5632, metadata !DIExpression()), !dbg !5633
  store i32 0, i32* %result, align 4, !dbg !5633
  call void @llvm.dbg.declare(metadata i32* %value, metadata !5634, metadata !DIExpression()), !dbg !5635
  %0 = load i32*, i32** %pos.addr, align 8, !dbg !5636
  %tobool = icmp ne i32* %0, null, !dbg !5636
  br i1 %tobool, label %land.lhs.true, label %if.end22, !dbg !5638

land.lhs.true:                                    ; preds = %entry
  %1 = load i32*, i32** %val.addr, align 8, !dbg !5639
  %tobool1 = icmp ne i32* %1, null, !dbg !5639
  br i1 %tobool1, label %if.then, label %if.end22, !dbg !5640

if.then:                                          ; preds = %land.lhs.true
  br label %for.cond, !dbg !5641

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32*, i32** %pos.addr, align 8, !dbg !5643
  %3 = load i32, i32* %2, align 4, !dbg !5646
  %conv = sext i32 %3 to i64, !dbg !5646
  %4 = load i64, i64* %size.addr, align 8, !dbg !5647
  %cmp = icmp ult i64 %conv, %4, !dbg !5648
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5649

land.rhs:                                         ; preds = %for.cond
  %5 = load i8*, i8** %data.addr, align 8, !dbg !5650
  %6 = load i32*, i32** %pos.addr, align 8, !dbg !5650
  %7 = load i32, i32* %6, align 4, !dbg !5650
  %idxprom = sext i32 %7 to i64, !dbg !5650
  %arrayidx = getelementptr i8, i8* %5, i64 %idxprom, !dbg !5650
  %8 = load i8, i8* %arrayidx, align 1, !dbg !5650
  %conv3 = zext i8 %8 to i32, !dbg !5650
  %idxprom4 = sext i32 %conv3 to i64, !dbg !5650
  %arrayidx5 = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %idxprom4, !dbg !5650
  %9 = load i8, i8* %arrayidx5, align 1, !dbg !5650
  %conv6 = zext i8 %9 to i32, !dbg !5650
  %and = and i32 %conv6, 68, !dbg !5650
  %cmp7 = icmp ne i32 %and, 0, !dbg !5650
  %lnot = xor i1 %cmp7, true, !dbg !5651
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %10 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ], !dbg !5652
  br i1 %10, label %for.body, label %for.end, !dbg !5653

for.body:                                         ; preds = %land.end
  br label %for.inc, !dbg !5653

for.inc:                                          ; preds = %for.body
  %11 = load i32*, i32** %pos.addr, align 8, !dbg !5654
  %12 = load i32, i32* %11, align 4, !dbg !5655
  %inc = add i32 %12, 1, !dbg !5655
  store i32 %inc, i32* %11, align 4, !dbg !5655
  br label %for.cond, !dbg !5656, !llvm.loop !5657

for.end:                                          ; preds = %land.end
  %13 = load i32*, i32** %val.addr, align 8, !dbg !5659
  store i32 0, i32* %13, align 4, !dbg !5660
  br label %for.cond9, !dbg !5661

for.cond9:                                        ; preds = %for.inc19, %for.end
  %14 = load i32*, i32** %pos.addr, align 8, !dbg !5662
  %15 = load i32, i32* %14, align 4, !dbg !5665
  %conv10 = sext i32 %15 to i64, !dbg !5665
  %16 = load i64, i64* %size.addr, align 8, !dbg !5666
  %cmp11 = icmp ult i64 %conv10, %16, !dbg !5667
  br i1 %cmp11, label %for.body13, label %for.end21, !dbg !5668

for.body13:                                       ; preds = %for.cond9
  %17 = load i8*, i8** %data.addr, align 8, !dbg !5669
  %18 = load i32*, i32** %pos.addr, align 8, !dbg !5671
  %19 = load i32, i32* %18, align 4, !dbg !5672
  %idxprom14 = sext i32 %19 to i64, !dbg !5669
  %arrayidx15 = getelementptr i8, i8* %17, i64 %idxprom14, !dbg !5669
  %20 = load i8, i8* %arrayidx15, align 1, !dbg !5669
  %call = call i32 @hex_to_bin(i8 signext %20) #8, !dbg !5673
  store i32 %call, i32* %value, align 4, !dbg !5674
  %21 = load i32, i32* %value, align 4, !dbg !5675
  %cmp16 = icmp sge i32 %21, 0, !dbg !5677
  br i1 %cmp16, label %if.then18, label %if.else, !dbg !5678

if.then18:                                        ; preds = %for.body13
  store i32 1, i32* %result, align 4, !dbg !5679
  %22 = load i32*, i32** %val.addr, align 8, !dbg !5681
  %23 = load i32, i32* %22, align 4, !dbg !5682
  %shl = shl i32 %23, 4, !dbg !5683
  %24 = load i32, i32* %value, align 4, !dbg !5684
  %add = add i32 %shl, %24, !dbg !5685
  %25 = load i32*, i32** %val.addr, align 8, !dbg !5686
  store i32 %add, i32* %25, align 4, !dbg !5687
  br label %if.end, !dbg !5688

if.else:                                          ; preds = %for.body13
  br label %for.end21, !dbg !5689

if.end:                                           ; preds = %if.then18
  br label %for.inc19, !dbg !5691

for.inc19:                                        ; preds = %if.end
  %26 = load i32*, i32** %pos.addr, align 8, !dbg !5692
  %27 = load i32, i32* %26, align 4, !dbg !5693
  %inc20 = add i32 %27, 1, !dbg !5693
  store i32 %inc20, i32* %26, align 4, !dbg !5693
  br label %for.cond9, !dbg !5694, !llvm.loop !5695

for.end21:                                        ; preds = %if.else, %for.cond9
  br label %if.end22, !dbg !5697

if.end22:                                         ; preds = %for.end21, %land.lhs.true, %entry
  %28 = load i32, i32* %result, align 4, !dbg !5698
  ret i32 %28, !dbg !5699
}

; Function Attrs: noredzone
declare dso_local i32 @hex_to_bin(i8 signext) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_u16(i32* %p, i16 zeroext %val) #2 !dbg !5700 {
entry:
  %p.addr = alloca i32*, align 8
  %val.addr = alloca i16, align 2
  store i32* %p, i32** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr, metadata !5703, metadata !DIExpression()), !dbg !5704
  store i16 %val, i16* %val.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %val.addr, metadata !5705, metadata !DIExpression()), !dbg !5706
  %0 = load i16, i16* %val.addr, align 2, !dbg !5707
  %conv = zext i16 %0 to i32, !dbg !5707
  %1 = load i32*, i32** %p.addr, align 8, !dbg !5708
  %2 = bitcast i32* %1 to i8*, !dbg !5708
  call void @writel(i32 %conv, i8* %2) #8, !dbg !5709
  ret void, !dbg !5710
}

; Function Attrs: noredzone
declare dso_local void @__const_udelay(i64) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @_msecs_to_jiffies(i32 %m) #2 !dbg !5711 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr, metadata !5712, metadata !DIExpression()), !dbg !5713
  %0 = load i32, i32* %m.addr, align 4, !dbg !5714
  %conv = zext i32 %0 to i64, !dbg !5714
  %add = add i64 %conv, 4, !dbg !5715
  %sub = sub i64 %add, 1, !dbg !5716
  %div = sdiv i64 %sub, 4, !dbg !5717
  ret i64 %div, !dbg !5718
}

; Function Attrs: noredzone
declare dso_local i64 @__msecs_to_jiffies(i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #2 !dbg !5719 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !5723, metadata !DIExpression()), !dbg !5724
  %call = call i64 @arch_local_save_flags() #8, !dbg !5725
  store i64 %call, i64* %f, align 8, !dbg !5726
  call void @arch_local_irq_disable() #8, !dbg !5727
  %0 = load i64, i64* %f, align 8, !dbg !5728
  ret i64 %0, !dbg !5729
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @jr3_pci_poll_subdevice(%struct.comedi_subdevice* %s) #2 !dbg !5730 {
entry:
  %retval = alloca %struct.jr3_pci_poll_delay, align 4
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %spriv = alloca %struct.jr3_pci_subdev_private*, align 8
  %sensor = alloca %struct.jr3_sensor*, align 8
  %model_no = alloca i16, align 2
  %serial_no = alloca i16, align 2
  %errors = alloca i32, align 4
  %i = alloca i32, align 4
  %transf = alloca %struct.jr3_pci_transform, align 2
  %tmp = alloca %struct.jr3_pci_poll_delay, align 4
  %tmp57 = alloca %struct.jr3_pci_poll_delay, align 4
  %min_full_scale = alloca %struct.six_axis_t, align 2
  %max_full_scale = alloca %struct.six_axis_t, align 2
  %tmp60 = alloca %struct.six_axis_t, align 2
  %tmp62 = alloca { i64, i32 }, align 8
  %tmp63 = alloca %struct.six_axis_t, align 2
  %tmp65 = alloca { i64, i32 }, align 8
  %max_full_scale.coerce = alloca { i64, i32 }, align 2
  %tmp67 = alloca %struct.jr3_pci_poll_delay, align 4
  %tmp74 = alloca %struct.jr3_pci_poll_delay, align 4
  %fs = alloca %struct.force_array*, align 8
  %r = alloca %union.jr3_pci_single_range*, align 8
  %tmp227 = alloca %struct.jr3_pci_poll_delay, align 4
  %tmp234 = alloca %struct.jr3_pci_poll_delay, align 4
  %tmp251 = alloca %struct.jr3_pci_poll_delay, align 4
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5733, metadata !DIExpression()), !dbg !5734
  call void @llvm.dbg.declare(metadata %struct.jr3_pci_subdev_private** %spriv, metadata !5735, metadata !DIExpression()), !dbg !5736
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5737
  %private = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 6, !dbg !5738
  %1 = load i8*, i8** %private, align 8, !dbg !5738
  %2 = bitcast i8* %1 to %struct.jr3_pci_subdev_private*, !dbg !5737
  store %struct.jr3_pci_subdev_private* %2, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !5736
  call void @llvm.dbg.declare(metadata %struct.jr3_pci_poll_delay* %retval, metadata !5739, metadata !DIExpression()), !dbg !5740
  %call = call i64 @poll_delay_min_max(i32 1000, i32 2000) #8, !dbg !5741
  %3 = bitcast %struct.jr3_pci_poll_delay* %retval to i64*, !dbg !5741
  store i64 %call, i64* %3, align 4, !dbg !5741
  call void @llvm.dbg.declare(metadata %struct.jr3_sensor** %sensor, metadata !5742, metadata !DIExpression()), !dbg !5743
  call void @llvm.dbg.declare(metadata i16* %model_no, metadata !5744, metadata !DIExpression()), !dbg !5745
  call void @llvm.dbg.declare(metadata i16* %serial_no, metadata !5746, metadata !DIExpression()), !dbg !5747
  call void @llvm.dbg.declare(metadata i32* %errors, metadata !5748, metadata !DIExpression()), !dbg !5749
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5750, metadata !DIExpression()), !dbg !5751
  %4 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !5752
  %sensor1 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %4, i32 0, i32 0, !dbg !5753
  %5 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor1, align 8, !dbg !5753
  store %struct.jr3_sensor* %5, %struct.jr3_sensor** %sensor, align 8, !dbg !5754
  %6 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor, align 8, !dbg !5755
  %errors2 = getelementptr inbounds %struct.jr3_sensor, %struct.jr3_sensor* %6, i32 0, i32 39, !dbg !5756
  %call3 = call zeroext i16 @get_u16(i32* %errors2) #8, !dbg !5757
  %conv = zext i16 %call3 to i32, !dbg !5757
  store i32 %conv, i32* %errors, align 4, !dbg !5758
  %7 = load i32, i32* %errors, align 4, !dbg !5759
  %8 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !5761
  %errors4 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %8, i32 0, i32 8, !dbg !5762
  %9 = load i16, i16* %errors4, align 8, !dbg !5762
  %conv5 = zext i16 %9 to i32, !dbg !5761
  %cmp = icmp ne i32 %7, %conv5, !dbg !5763
  br i1 %cmp, label %if.then, label %if.end, !dbg !5764

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %errors, align 4, !dbg !5765
  %conv7 = trunc i32 %10 to i16, !dbg !5765
  %11 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !5766
  %errors8 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %11, i32 0, i32 8, !dbg !5767
  store i16 %conv7, i16* %errors8, align 8, !dbg !5768
  br label %if.end, !dbg !5766

if.end:                                           ; preds = %if.then, %entry
  %12 = load i32, i32* %errors, align 4, !dbg !5769
  %and = and i32 %12, 51200, !dbg !5771
  %tobool = icmp ne i32 %and, 0, !dbg !5771
  br i1 %tobool, label %if.then9, label %if.end10, !dbg !5772

if.then9:                                         ; preds = %if.end
  %13 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !5773
  %state = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %13, i32 0, i32 2, !dbg !5774
  store i32 0, i32* %state, align 8, !dbg !5775
  br label %if.end10, !dbg !5773

if.end10:                                         ; preds = %if.then9, %if.end
  %14 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !5776
  %state11 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %14, i32 0, i32 2, !dbg !5777
  %15 = load i32, i32* %state11, align 8, !dbg !5777
  switch i32 %15, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb28
    i32 2, label %sw.bb53
    i32 3, label %sw.bb70
    i32 4, label %sw.bb230
    i32 5, label %sw.bb250
  ], !dbg !5778

sw.bb:                                            ; preds = %if.end10
  %16 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor, align 8, !dbg !5779
  %model_no12 = getelementptr inbounds %struct.jr3_sensor, %struct.jr3_sensor* %16, i32 0, i32 47, !dbg !5781
  %call13 = call zeroext i16 @get_u16(i32* %model_no12) #8, !dbg !5782
  store i16 %call13, i16* %model_no, align 2, !dbg !5783
  %17 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor, align 8, !dbg !5784
  %serial_no14 = getelementptr inbounds %struct.jr3_sensor, %struct.jr3_sensor* %17, i32 0, i32 46, !dbg !5785
  %call15 = call zeroext i16 @get_u16(i32* %serial_no14) #8, !dbg !5786
  store i16 %call15, i16* %serial_no, align 2, !dbg !5787
  %18 = load i32, i32* %errors, align 4, !dbg !5788
  %and16 = and i32 %18, 49152, !dbg !5790
  %tobool17 = icmp ne i32 %and16, 0, !dbg !5790
  br i1 %tobool17, label %if.then25, label %lor.lhs.false, !dbg !5791

lor.lhs.false:                                    ; preds = %sw.bb
  %19 = load i16, i16* %model_no, align 2, !dbg !5792
  %conv18 = zext i16 %19 to i32, !dbg !5792
  %cmp19 = icmp eq i32 %conv18, 0, !dbg !5793
  br i1 %cmp19, label %if.then25, label %lor.lhs.false21, !dbg !5794

lor.lhs.false21:                                  ; preds = %lor.lhs.false
  %20 = load i16, i16* %serial_no, align 2, !dbg !5795
  %conv22 = zext i16 %20 to i32, !dbg !5795
  %cmp23 = icmp eq i32 %conv22, 0, !dbg !5796
  br i1 %cmp23, label %if.then25, label %if.else, !dbg !5797

if.then25:                                        ; preds = %lor.lhs.false21, %lor.lhs.false, %sw.bb
  br label %if.end27, !dbg !5798

if.else:                                          ; preds = %lor.lhs.false21
  %21 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !5800
  %retries = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %21, i32 0, i32 9, !dbg !5802
  store i32 0, i32* %retries, align 4, !dbg !5803
  %22 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !5804
  %state26 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %22, i32 0, i32 2, !dbg !5805
  store i32 1, i32* %state26, align 8, !dbg !5806
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then25
  br label %sw.epilog, !dbg !5807

sw.bb28:                                          ; preds = %if.end10
  %23 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !5808
  %retries29 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %23, i32 0, i32 9, !dbg !5809
  %24 = load i32, i32* %retries29, align 4, !dbg !5810
  %inc = add i32 %24, 1, !dbg !5810
  store i32 %inc, i32* %retries29, align 4, !dbg !5810
  %25 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !5811
  %retries30 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %25, i32 0, i32 9, !dbg !5813
  %26 = load i32, i32* %retries30, align 4, !dbg !5813
  %cmp31 = icmp slt i32 %26, 10, !dbg !5814
  br i1 %cmp31, label %if.then33, label %if.else34, !dbg !5815

if.then33:                                        ; preds = %sw.bb28
  br label %if.end52, !dbg !5816

if.else34:                                        ; preds = %sw.bb28
  call void @llvm.dbg.declare(metadata %struct.jr3_pci_transform* %transf, metadata !5818, metadata !DIExpression()), !dbg !5828
  %27 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor, align 8, !dbg !5829
  %model_no35 = getelementptr inbounds %struct.jr3_sensor, %struct.jr3_sensor* %27, i32 0, i32 47, !dbg !5830
  %call36 = call zeroext i16 @get_u16(i32* %model_no35) #8, !dbg !5831
  %conv37 = zext i16 %call36 to i32, !dbg !5831
  %28 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !5832
  %model_no38 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %28, i32 0, i32 4, !dbg !5833
  store i32 %conv37, i32* %model_no38, align 8, !dbg !5834
  %29 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor, align 8, !dbg !5835
  %serial_no39 = getelementptr inbounds %struct.jr3_sensor, %struct.jr3_sensor* %29, i32 0, i32 46, !dbg !5836
  %call40 = call zeroext i16 @get_u16(i32* %serial_no39) #8, !dbg !5837
  %conv41 = zext i16 %call40 to i32, !dbg !5837
  %30 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !5838
  %serial_no42 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %30, i32 0, i32 3, !dbg !5839
  store i32 %conv41, i32* %serial_no42, align 4, !dbg !5840
  store i32 0, i32* %i, align 4, !dbg !5841
  br label %for.cond, !dbg !5843

for.cond:                                         ; preds = %for.inc, %if.else34
  %31 = load i32, i32* %i, align 4, !dbg !5844
  %conv43 = sext i32 %31 to i64, !dbg !5844
  %cmp44 = icmp ult i64 %conv43, 8, !dbg !5846
  br i1 %cmp44, label %for.body, label %for.end, !dbg !5847

for.body:                                         ; preds = %for.cond
  %link = getelementptr inbounds %struct.jr3_pci_transform, %struct.jr3_pci_transform* %transf, i32 0, i32 0, !dbg !5848
  %32 = load i32, i32* %i, align 4, !dbg !5850
  %idxprom = sext i32 %32 to i64, !dbg !5851
  %arrayidx = getelementptr [8 x %struct.anon.67], [8 x %struct.anon.67]* %link, i64 0, i64 %idxprom, !dbg !5851
  %link_type = getelementptr inbounds %struct.anon.67, %struct.anon.67* %arrayidx, i32 0, i32 0, !dbg !5852
  store i16 0, i16* %link_type, align 2, !dbg !5853
  %link46 = getelementptr inbounds %struct.jr3_pci_transform, %struct.jr3_pci_transform* %transf, i32 0, i32 0, !dbg !5854
  %33 = load i32, i32* %i, align 4, !dbg !5855
  %idxprom47 = sext i32 %33 to i64, !dbg !5856
  %arrayidx48 = getelementptr [8 x %struct.anon.67], [8 x %struct.anon.67]* %link46, i64 0, i64 %idxprom47, !dbg !5856
  %link_amount = getelementptr inbounds %struct.anon.67, %struct.anon.67* %arrayidx48, i32 0, i32 1, !dbg !5857
  store i16 0, i16* %link_amount, align 2, !dbg !5858
  br label %for.inc, !dbg !5859

for.inc:                                          ; preds = %for.body
  %34 = load i32, i32* %i, align 4, !dbg !5860
  %inc49 = add i32 %34, 1, !dbg !5860
  store i32 %inc49, i32* %i, align 4, !dbg !5860
  br label %for.cond, !dbg !5861, !llvm.loop !5862

for.end:                                          ; preds = %for.cond
  %35 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor, align 8, !dbg !5864
  call void @set_transforms(%struct.jr3_sensor* %35, %struct.jr3_pci_transform* %transf, i16 signext 0) #8, !dbg !5865
  %36 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor, align 8, !dbg !5866
  call void @use_transform(%struct.jr3_sensor* %36, i16 signext 0) #8, !dbg !5867
  %37 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !5868
  %state50 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %37, i32 0, i32 2, !dbg !5869
  store i32 2, i32* %state50, align 8, !dbg !5870
  %call51 = call i64 @poll_delay_min_max(i32 20, i32 100) #8, !dbg !5871
  %38 = bitcast %struct.jr3_pci_poll_delay* %tmp to i64*, !dbg !5871
  store i64 %call51, i64* %38, align 4, !dbg !5871
  %39 = bitcast %struct.jr3_pci_poll_delay* %retval to i8*, !dbg !5871
  %40 = bitcast %struct.jr3_pci_poll_delay* %tmp to i8*, !dbg !5871
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %40, i64 8, i1 false), !dbg !5871
  br label %if.end52

if.end52:                                         ; preds = %for.end, %if.then33
  br label %sw.epilog, !dbg !5872

sw.bb53:                                          ; preds = %if.end10
  %41 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor, align 8, !dbg !5873
  %call54 = call i32 @is_complete(%struct.jr3_sensor* %41) #8, !dbg !5875
  %tobool55 = icmp ne i32 %call54, 0, !dbg !5875
  br i1 %tobool55, label %if.else59, label %if.then56, !dbg !5876

if.then56:                                        ; preds = %sw.bb53
  %call58 = call i64 @poll_delay_min_max(i32 20, i32 100) #8, !dbg !5877
  %42 = bitcast %struct.jr3_pci_poll_delay* %tmp57 to i64*, !dbg !5877
  store i64 %call58, i64* %42, align 4, !dbg !5877
  %43 = bitcast %struct.jr3_pci_poll_delay* %retval to i8*, !dbg !5877
  %44 = bitcast %struct.jr3_pci_poll_delay* %tmp57 to i8*, !dbg !5877
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 %44, i64 8, i1 false), !dbg !5877
  br label %if.end69, !dbg !5879

if.else59:                                        ; preds = %sw.bb53
  call void @llvm.dbg.declare(metadata %struct.six_axis_t* %min_full_scale, metadata !5880, metadata !DIExpression()), !dbg !5890
  call void @llvm.dbg.declare(metadata %struct.six_axis_t* %max_full_scale, metadata !5891, metadata !DIExpression()), !dbg !5892
  %45 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor, align 8, !dbg !5893
  %call61 = call { i64, i32 } @get_min_full_scales(%struct.jr3_sensor* %45) #8, !dbg !5894
  store { i64, i32 } %call61, { i64, i32 }* %tmp62, align 8, !dbg !5894
  %46 = bitcast { i64, i32 }* %tmp62 to i8*, !dbg !5894
  %47 = bitcast %struct.six_axis_t* %tmp60 to i8*, !dbg !5894
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %47, i8* align 8 %46, i64 12, i1 false), !dbg !5894
  %48 = bitcast %struct.six_axis_t* %min_full_scale to i8*, !dbg !5894
  %49 = bitcast %struct.six_axis_t* %tmp60 to i8*, !dbg !5894
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %48, i8* align 2 %49, i64 12, i1 false), !dbg !5894
  %50 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor, align 8, !dbg !5895
  %call64 = call { i64, i32 } @get_max_full_scales(%struct.jr3_sensor* %50) #8, !dbg !5896
  store { i64, i32 } %call64, { i64, i32 }* %tmp65, align 8, !dbg !5896
  %51 = bitcast { i64, i32 }* %tmp65 to i8*, !dbg !5896
  %52 = bitcast %struct.six_axis_t* %tmp63 to i8*, !dbg !5896
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %52, i8* align 8 %51, i64 12, i1 false), !dbg !5896
  %53 = bitcast %struct.six_axis_t* %max_full_scale to i8*, !dbg !5896
  %54 = bitcast %struct.six_axis_t* %tmp63 to i8*, !dbg !5896
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %53, i8* align 2 %54, i64 12, i1 false), !dbg !5896
  %55 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor, align 8, !dbg !5897
  %56 = bitcast { i64, i32 }* %max_full_scale.coerce to i8*, !dbg !5898
  %57 = bitcast %struct.six_axis_t* %max_full_scale to i8*, !dbg !5898
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %56, i8* align 2 %57, i64 12, i1 false), !dbg !5898
  %58 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %max_full_scale.coerce, i32 0, i32 0, !dbg !5898
  %59 = load i64, i64* %58, align 2, !dbg !5898
  %60 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %max_full_scale.coerce, i32 0, i32 1, !dbg !5898
  %61 = load i32, i32* %60, align 2, !dbg !5898
  call void @set_full_scales(%struct.jr3_sensor* %55, i64 %59, i32 %61) #8, !dbg !5898
  %62 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !5899
  %state66 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %62, i32 0, i32 2, !dbg !5900
  store i32 3, i32* %state66, align 8, !dbg !5901
  %call68 = call i64 @poll_delay_min_max(i32 20, i32 100) #8, !dbg !5902
  %63 = bitcast %struct.jr3_pci_poll_delay* %tmp67 to i64*, !dbg !5902
  store i64 %call68, i64* %63, align 4, !dbg !5902
  %64 = bitcast %struct.jr3_pci_poll_delay* %retval to i8*, !dbg !5902
  %65 = bitcast %struct.jr3_pci_poll_delay* %tmp67 to i8*, !dbg !5902
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %64, i8* align 4 %65, i64 8, i1 false), !dbg !5902
  br label %if.end69

if.end69:                                         ; preds = %if.else59, %if.then56
  br label %sw.epilog, !dbg !5903

sw.bb70:                                          ; preds = %if.end10
  %66 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor, align 8, !dbg !5904
  %call71 = call i32 @is_complete(%struct.jr3_sensor* %66) #8, !dbg !5906
  %tobool72 = icmp ne i32 %call71, 0, !dbg !5906
  br i1 %tobool72, label %if.else76, label %if.then73, !dbg !5907

if.then73:                                        ; preds = %sw.bb70
  %call75 = call i64 @poll_delay_min_max(i32 20, i32 100) #8, !dbg !5908
  %67 = bitcast %struct.jr3_pci_poll_delay* %tmp74 to i64*, !dbg !5908
  store i64 %call75, i64* %67, align 4, !dbg !5908
  %68 = bitcast %struct.jr3_pci_poll_delay* %retval to i8*, !dbg !5908
  %69 = bitcast %struct.jr3_pci_poll_delay* %tmp74 to i8*, !dbg !5908
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %68, i8* align 4 %69, i64 8, i1 false), !dbg !5908
  br label %if.end229, !dbg !5910

if.else76:                                        ; preds = %sw.bb70
  call void @llvm.dbg.declare(metadata %struct.force_array** %fs, metadata !5911, metadata !DIExpression()), !dbg !5914
  %70 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor, align 8, !dbg !5915
  %full_scale = getelementptr inbounds %struct.jr3_sensor, %struct.jr3_sensor* %70, i32 0, i32 14, !dbg !5916
  store %struct.force_array* %full_scale, %struct.force_array** %fs, align 8, !dbg !5914
  call void @llvm.dbg.declare(metadata %union.jr3_pci_single_range** %r, metadata !5917, metadata !DIExpression()), !dbg !5919
  %71 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !5920
  %range = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %71, i32 0, i32 5, !dbg !5921
  %arraydecay = getelementptr inbounds [9 x %union.jr3_pci_single_range], [9 x %union.jr3_pci_single_range]* %range, i64 0, i64 0, !dbg !5920
  store %union.jr3_pci_single_range* %arraydecay, %union.jr3_pci_single_range** %r, align 8, !dbg !5919
  %72 = load %struct.force_array*, %struct.force_array** %fs, align 8, !dbg !5922
  %fx = getelementptr inbounds %struct.force_array, %struct.force_array* %72, i32 0, i32 0, !dbg !5923
  %call77 = call signext i16 @get_s16(i32* %fx) #8, !dbg !5924
  %conv78 = sext i16 %call77 to i32, !dbg !5924
  %sub = sub i32 0, %conv78, !dbg !5925
  %mul = mul i32 %sub, 1000, !dbg !5926
  %73 = load %union.jr3_pci_single_range*, %union.jr3_pci_single_range** %r, align 8, !dbg !5927
  %arrayidx79 = getelementptr %union.jr3_pci_single_range, %union.jr3_pci_single_range* %73, i64 0, !dbg !5927
  %l = bitcast %union.jr3_pci_single_range* %arrayidx79 to %struct.comedi_lrange*, !dbg !5928
  %range80 = getelementptr inbounds %struct.comedi_lrange, %struct.comedi_lrange* %l, i32 0, i32 1, !dbg !5929
  %arrayidx81 = getelementptr [0 x %struct.comedi_krange], [0 x %struct.comedi_krange]* %range80, i64 0, i64 0, !dbg !5927
  %min = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %arrayidx81, i32 0, i32 0, !dbg !5930
  store i32 %mul, i32* %min, align 4, !dbg !5931
  %74 = load %struct.force_array*, %struct.force_array** %fs, align 8, !dbg !5932
  %fx82 = getelementptr inbounds %struct.force_array, %struct.force_array* %74, i32 0, i32 0, !dbg !5933
  %call83 = call signext i16 @get_s16(i32* %fx82) #8, !dbg !5934
  %conv84 = sext i16 %call83 to i32, !dbg !5934
  %mul85 = mul i32 %conv84, 1000, !dbg !5935
  %75 = load %union.jr3_pci_single_range*, %union.jr3_pci_single_range** %r, align 8, !dbg !5936
  %arrayidx86 = getelementptr %union.jr3_pci_single_range, %union.jr3_pci_single_range* %75, i64 0, !dbg !5936
  %l87 = bitcast %union.jr3_pci_single_range* %arrayidx86 to %struct.comedi_lrange*, !dbg !5937
  %range88 = getelementptr inbounds %struct.comedi_lrange, %struct.comedi_lrange* %l87, i32 0, i32 1, !dbg !5938
  %arrayidx89 = getelementptr [0 x %struct.comedi_krange], [0 x %struct.comedi_krange]* %range88, i64 0, i64 0, !dbg !5936
  %max = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %arrayidx89, i32 0, i32 1, !dbg !5939
  store i32 %mul85, i32* %max, align 4, !dbg !5940
  %76 = load %struct.force_array*, %struct.force_array** %fs, align 8, !dbg !5941
  %fy = getelementptr inbounds %struct.force_array, %struct.force_array* %76, i32 0, i32 1, !dbg !5942
  %call90 = call signext i16 @get_s16(i32* %fy) #8, !dbg !5943
  %conv91 = sext i16 %call90 to i32, !dbg !5943
  %sub92 = sub i32 0, %conv91, !dbg !5944
  %mul93 = mul i32 %sub92, 1000, !dbg !5945
  %77 = load %union.jr3_pci_single_range*, %union.jr3_pci_single_range** %r, align 8, !dbg !5946
  %arrayidx94 = getelementptr %union.jr3_pci_single_range, %union.jr3_pci_single_range* %77, i64 1, !dbg !5946
  %l95 = bitcast %union.jr3_pci_single_range* %arrayidx94 to %struct.comedi_lrange*, !dbg !5947
  %range96 = getelementptr inbounds %struct.comedi_lrange, %struct.comedi_lrange* %l95, i32 0, i32 1, !dbg !5948
  %arrayidx97 = getelementptr [0 x %struct.comedi_krange], [0 x %struct.comedi_krange]* %range96, i64 0, i64 0, !dbg !5946
  %min98 = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %arrayidx97, i32 0, i32 0, !dbg !5949
  store i32 %mul93, i32* %min98, align 4, !dbg !5950
  %78 = load %struct.force_array*, %struct.force_array** %fs, align 8, !dbg !5951
  %fy99 = getelementptr inbounds %struct.force_array, %struct.force_array* %78, i32 0, i32 1, !dbg !5952
  %call100 = call signext i16 @get_s16(i32* %fy99) #8, !dbg !5953
  %conv101 = sext i16 %call100 to i32, !dbg !5953
  %mul102 = mul i32 %conv101, 1000, !dbg !5954
  %79 = load %union.jr3_pci_single_range*, %union.jr3_pci_single_range** %r, align 8, !dbg !5955
  %arrayidx103 = getelementptr %union.jr3_pci_single_range, %union.jr3_pci_single_range* %79, i64 1, !dbg !5955
  %l104 = bitcast %union.jr3_pci_single_range* %arrayidx103 to %struct.comedi_lrange*, !dbg !5956
  %range105 = getelementptr inbounds %struct.comedi_lrange, %struct.comedi_lrange* %l104, i32 0, i32 1, !dbg !5957
  %arrayidx106 = getelementptr [0 x %struct.comedi_krange], [0 x %struct.comedi_krange]* %range105, i64 0, i64 0, !dbg !5955
  %max107 = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %arrayidx106, i32 0, i32 1, !dbg !5958
  store i32 %mul102, i32* %max107, align 4, !dbg !5959
  %80 = load %struct.force_array*, %struct.force_array** %fs, align 8, !dbg !5960
  %fz = getelementptr inbounds %struct.force_array, %struct.force_array* %80, i32 0, i32 2, !dbg !5961
  %call108 = call signext i16 @get_s16(i32* %fz) #8, !dbg !5962
  %conv109 = sext i16 %call108 to i32, !dbg !5962
  %sub110 = sub i32 0, %conv109, !dbg !5963
  %mul111 = mul i32 %sub110, 1000, !dbg !5964
  %81 = load %union.jr3_pci_single_range*, %union.jr3_pci_single_range** %r, align 8, !dbg !5965
  %arrayidx112 = getelementptr %union.jr3_pci_single_range, %union.jr3_pci_single_range* %81, i64 2, !dbg !5965
  %l113 = bitcast %union.jr3_pci_single_range* %arrayidx112 to %struct.comedi_lrange*, !dbg !5966
  %range114 = getelementptr inbounds %struct.comedi_lrange, %struct.comedi_lrange* %l113, i32 0, i32 1, !dbg !5967
  %arrayidx115 = getelementptr [0 x %struct.comedi_krange], [0 x %struct.comedi_krange]* %range114, i64 0, i64 0, !dbg !5965
  %min116 = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %arrayidx115, i32 0, i32 0, !dbg !5968
  store i32 %mul111, i32* %min116, align 4, !dbg !5969
  %82 = load %struct.force_array*, %struct.force_array** %fs, align 8, !dbg !5970
  %fz117 = getelementptr inbounds %struct.force_array, %struct.force_array* %82, i32 0, i32 2, !dbg !5971
  %call118 = call signext i16 @get_s16(i32* %fz117) #8, !dbg !5972
  %conv119 = sext i16 %call118 to i32, !dbg !5972
  %mul120 = mul i32 %conv119, 1000, !dbg !5973
  %83 = load %union.jr3_pci_single_range*, %union.jr3_pci_single_range** %r, align 8, !dbg !5974
  %arrayidx121 = getelementptr %union.jr3_pci_single_range, %union.jr3_pci_single_range* %83, i64 2, !dbg !5974
  %l122 = bitcast %union.jr3_pci_single_range* %arrayidx121 to %struct.comedi_lrange*, !dbg !5975
  %range123 = getelementptr inbounds %struct.comedi_lrange, %struct.comedi_lrange* %l122, i32 0, i32 1, !dbg !5976
  %arrayidx124 = getelementptr [0 x %struct.comedi_krange], [0 x %struct.comedi_krange]* %range123, i64 0, i64 0, !dbg !5974
  %max125 = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %arrayidx124, i32 0, i32 1, !dbg !5977
  store i32 %mul120, i32* %max125, align 4, !dbg !5978
  %84 = load %struct.force_array*, %struct.force_array** %fs, align 8, !dbg !5979
  %mx = getelementptr inbounds %struct.force_array, %struct.force_array* %84, i32 0, i32 3, !dbg !5980
  %call126 = call signext i16 @get_s16(i32* %mx) #8, !dbg !5981
  %conv127 = sext i16 %call126 to i32, !dbg !5981
  %sub128 = sub i32 0, %conv127, !dbg !5982
  %mul129 = mul i32 %sub128, 100, !dbg !5983
  %85 = load %union.jr3_pci_single_range*, %union.jr3_pci_single_range** %r, align 8, !dbg !5984
  %arrayidx130 = getelementptr %union.jr3_pci_single_range, %union.jr3_pci_single_range* %85, i64 3, !dbg !5984
  %l131 = bitcast %union.jr3_pci_single_range* %arrayidx130 to %struct.comedi_lrange*, !dbg !5985
  %range132 = getelementptr inbounds %struct.comedi_lrange, %struct.comedi_lrange* %l131, i32 0, i32 1, !dbg !5986
  %arrayidx133 = getelementptr [0 x %struct.comedi_krange], [0 x %struct.comedi_krange]* %range132, i64 0, i64 0, !dbg !5984
  %min134 = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %arrayidx133, i32 0, i32 0, !dbg !5987
  store i32 %mul129, i32* %min134, align 4, !dbg !5988
  %86 = load %struct.force_array*, %struct.force_array** %fs, align 8, !dbg !5989
  %mx135 = getelementptr inbounds %struct.force_array, %struct.force_array* %86, i32 0, i32 3, !dbg !5990
  %call136 = call signext i16 @get_s16(i32* %mx135) #8, !dbg !5991
  %conv137 = sext i16 %call136 to i32, !dbg !5991
  %mul138 = mul i32 %conv137, 100, !dbg !5992
  %87 = load %union.jr3_pci_single_range*, %union.jr3_pci_single_range** %r, align 8, !dbg !5993
  %arrayidx139 = getelementptr %union.jr3_pci_single_range, %union.jr3_pci_single_range* %87, i64 3, !dbg !5993
  %l140 = bitcast %union.jr3_pci_single_range* %arrayidx139 to %struct.comedi_lrange*, !dbg !5994
  %range141 = getelementptr inbounds %struct.comedi_lrange, %struct.comedi_lrange* %l140, i32 0, i32 1, !dbg !5995
  %arrayidx142 = getelementptr [0 x %struct.comedi_krange], [0 x %struct.comedi_krange]* %range141, i64 0, i64 0, !dbg !5993
  %max143 = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %arrayidx142, i32 0, i32 1, !dbg !5996
  store i32 %mul138, i32* %max143, align 4, !dbg !5997
  %88 = load %struct.force_array*, %struct.force_array** %fs, align 8, !dbg !5998
  %my = getelementptr inbounds %struct.force_array, %struct.force_array* %88, i32 0, i32 4, !dbg !5999
  %call144 = call signext i16 @get_s16(i32* %my) #8, !dbg !6000
  %conv145 = sext i16 %call144 to i32, !dbg !6000
  %sub146 = sub i32 0, %conv145, !dbg !6001
  %mul147 = mul i32 %sub146, 100, !dbg !6002
  %89 = load %union.jr3_pci_single_range*, %union.jr3_pci_single_range** %r, align 8, !dbg !6003
  %arrayidx148 = getelementptr %union.jr3_pci_single_range, %union.jr3_pci_single_range* %89, i64 4, !dbg !6003
  %l149 = bitcast %union.jr3_pci_single_range* %arrayidx148 to %struct.comedi_lrange*, !dbg !6004
  %range150 = getelementptr inbounds %struct.comedi_lrange, %struct.comedi_lrange* %l149, i32 0, i32 1, !dbg !6005
  %arrayidx151 = getelementptr [0 x %struct.comedi_krange], [0 x %struct.comedi_krange]* %range150, i64 0, i64 0, !dbg !6003
  %min152 = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %arrayidx151, i32 0, i32 0, !dbg !6006
  store i32 %mul147, i32* %min152, align 4, !dbg !6007
  %90 = load %struct.force_array*, %struct.force_array** %fs, align 8, !dbg !6008
  %my153 = getelementptr inbounds %struct.force_array, %struct.force_array* %90, i32 0, i32 4, !dbg !6009
  %call154 = call signext i16 @get_s16(i32* %my153) #8, !dbg !6010
  %conv155 = sext i16 %call154 to i32, !dbg !6010
  %mul156 = mul i32 %conv155, 100, !dbg !6011
  %91 = load %union.jr3_pci_single_range*, %union.jr3_pci_single_range** %r, align 8, !dbg !6012
  %arrayidx157 = getelementptr %union.jr3_pci_single_range, %union.jr3_pci_single_range* %91, i64 4, !dbg !6012
  %l158 = bitcast %union.jr3_pci_single_range* %arrayidx157 to %struct.comedi_lrange*, !dbg !6013
  %range159 = getelementptr inbounds %struct.comedi_lrange, %struct.comedi_lrange* %l158, i32 0, i32 1, !dbg !6014
  %arrayidx160 = getelementptr [0 x %struct.comedi_krange], [0 x %struct.comedi_krange]* %range159, i64 0, i64 0, !dbg !6012
  %max161 = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %arrayidx160, i32 0, i32 1, !dbg !6015
  store i32 %mul156, i32* %max161, align 4, !dbg !6016
  %92 = load %struct.force_array*, %struct.force_array** %fs, align 8, !dbg !6017
  %mz = getelementptr inbounds %struct.force_array, %struct.force_array* %92, i32 0, i32 5, !dbg !6018
  %call162 = call signext i16 @get_s16(i32* %mz) #8, !dbg !6019
  %conv163 = sext i16 %call162 to i32, !dbg !6019
  %sub164 = sub i32 0, %conv163, !dbg !6020
  %mul165 = mul i32 %sub164, 100, !dbg !6021
  %93 = load %union.jr3_pci_single_range*, %union.jr3_pci_single_range** %r, align 8, !dbg !6022
  %arrayidx166 = getelementptr %union.jr3_pci_single_range, %union.jr3_pci_single_range* %93, i64 5, !dbg !6022
  %l167 = bitcast %union.jr3_pci_single_range* %arrayidx166 to %struct.comedi_lrange*, !dbg !6023
  %range168 = getelementptr inbounds %struct.comedi_lrange, %struct.comedi_lrange* %l167, i32 0, i32 1, !dbg !6024
  %arrayidx169 = getelementptr [0 x %struct.comedi_krange], [0 x %struct.comedi_krange]* %range168, i64 0, i64 0, !dbg !6022
  %min170 = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %arrayidx169, i32 0, i32 0, !dbg !6025
  store i32 %mul165, i32* %min170, align 4, !dbg !6026
  %94 = load %struct.force_array*, %struct.force_array** %fs, align 8, !dbg !6027
  %mz171 = getelementptr inbounds %struct.force_array, %struct.force_array* %94, i32 0, i32 5, !dbg !6028
  %call172 = call signext i16 @get_s16(i32* %mz171) #8, !dbg !6029
  %conv173 = sext i16 %call172 to i32, !dbg !6029
  %mul174 = mul i32 %conv173, 100, !dbg !6030
  %95 = load %union.jr3_pci_single_range*, %union.jr3_pci_single_range** %r, align 8, !dbg !6031
  %arrayidx175 = getelementptr %union.jr3_pci_single_range, %union.jr3_pci_single_range* %95, i64 5, !dbg !6031
  %l176 = bitcast %union.jr3_pci_single_range* %arrayidx175 to %struct.comedi_lrange*, !dbg !6032
  %range177 = getelementptr inbounds %struct.comedi_lrange, %struct.comedi_lrange* %l176, i32 0, i32 1, !dbg !6033
  %arrayidx178 = getelementptr [0 x %struct.comedi_krange], [0 x %struct.comedi_krange]* %range177, i64 0, i64 0, !dbg !6031
  %max179 = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %arrayidx178, i32 0, i32 1, !dbg !6034
  store i32 %mul174, i32* %max179, align 4, !dbg !6035
  %96 = load %struct.force_array*, %struct.force_array** %fs, align 8, !dbg !6036
  %v1 = getelementptr inbounds %struct.force_array, %struct.force_array* %96, i32 0, i32 6, !dbg !6037
  %call180 = call signext i16 @get_s16(i32* %v1) #8, !dbg !6038
  %conv181 = sext i16 %call180 to i32, !dbg !6038
  %sub182 = sub i32 0, %conv181, !dbg !6039
  %mul183 = mul i32 %sub182, 100, !dbg !6040
  %97 = load %union.jr3_pci_single_range*, %union.jr3_pci_single_range** %r, align 8, !dbg !6041
  %arrayidx184 = getelementptr %union.jr3_pci_single_range, %union.jr3_pci_single_range* %97, i64 6, !dbg !6041
  %l185 = bitcast %union.jr3_pci_single_range* %arrayidx184 to %struct.comedi_lrange*, !dbg !6042
  %range186 = getelementptr inbounds %struct.comedi_lrange, %struct.comedi_lrange* %l185, i32 0, i32 1, !dbg !6043
  %arrayidx187 = getelementptr [0 x %struct.comedi_krange], [0 x %struct.comedi_krange]* %range186, i64 0, i64 0, !dbg !6041
  %min188 = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %arrayidx187, i32 0, i32 0, !dbg !6044
  store i32 %mul183, i32* %min188, align 4, !dbg !6045
  %98 = load %struct.force_array*, %struct.force_array** %fs, align 8, !dbg !6046
  %v1189 = getelementptr inbounds %struct.force_array, %struct.force_array* %98, i32 0, i32 6, !dbg !6047
  %call190 = call signext i16 @get_s16(i32* %v1189) #8, !dbg !6048
  %conv191 = sext i16 %call190 to i32, !dbg !6048
  %mul192 = mul i32 %conv191, 100, !dbg !6049
  %99 = load %union.jr3_pci_single_range*, %union.jr3_pci_single_range** %r, align 8, !dbg !6050
  %arrayidx193 = getelementptr %union.jr3_pci_single_range, %union.jr3_pci_single_range* %99, i64 6, !dbg !6050
  %l194 = bitcast %union.jr3_pci_single_range* %arrayidx193 to %struct.comedi_lrange*, !dbg !6051
  %range195 = getelementptr inbounds %struct.comedi_lrange, %struct.comedi_lrange* %l194, i32 0, i32 1, !dbg !6052
  %arrayidx196 = getelementptr [0 x %struct.comedi_krange], [0 x %struct.comedi_krange]* %range195, i64 0, i64 0, !dbg !6050
  %max197 = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %arrayidx196, i32 0, i32 1, !dbg !6053
  store i32 %mul192, i32* %max197, align 4, !dbg !6054
  %100 = load %struct.force_array*, %struct.force_array** %fs, align 8, !dbg !6055
  %v2 = getelementptr inbounds %struct.force_array, %struct.force_array* %100, i32 0, i32 7, !dbg !6056
  %call198 = call signext i16 @get_s16(i32* %v2) #8, !dbg !6057
  %conv199 = sext i16 %call198 to i32, !dbg !6057
  %sub200 = sub i32 0, %conv199, !dbg !6058
  %mul201 = mul i32 %sub200, 100, !dbg !6059
  %101 = load %union.jr3_pci_single_range*, %union.jr3_pci_single_range** %r, align 8, !dbg !6060
  %arrayidx202 = getelementptr %union.jr3_pci_single_range, %union.jr3_pci_single_range* %101, i64 7, !dbg !6060
  %l203 = bitcast %union.jr3_pci_single_range* %arrayidx202 to %struct.comedi_lrange*, !dbg !6061
  %range204 = getelementptr inbounds %struct.comedi_lrange, %struct.comedi_lrange* %l203, i32 0, i32 1, !dbg !6062
  %arrayidx205 = getelementptr [0 x %struct.comedi_krange], [0 x %struct.comedi_krange]* %range204, i64 0, i64 0, !dbg !6060
  %min206 = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %arrayidx205, i32 0, i32 0, !dbg !6063
  store i32 %mul201, i32* %min206, align 4, !dbg !6064
  %102 = load %struct.force_array*, %struct.force_array** %fs, align 8, !dbg !6065
  %v2207 = getelementptr inbounds %struct.force_array, %struct.force_array* %102, i32 0, i32 7, !dbg !6066
  %call208 = call signext i16 @get_s16(i32* %v2207) #8, !dbg !6067
  %conv209 = sext i16 %call208 to i32, !dbg !6067
  %mul210 = mul i32 %conv209, 100, !dbg !6068
  %103 = load %union.jr3_pci_single_range*, %union.jr3_pci_single_range** %r, align 8, !dbg !6069
  %arrayidx211 = getelementptr %union.jr3_pci_single_range, %union.jr3_pci_single_range* %103, i64 7, !dbg !6069
  %l212 = bitcast %union.jr3_pci_single_range* %arrayidx211 to %struct.comedi_lrange*, !dbg !6070
  %range213 = getelementptr inbounds %struct.comedi_lrange, %struct.comedi_lrange* %l212, i32 0, i32 1, !dbg !6071
  %arrayidx214 = getelementptr [0 x %struct.comedi_krange], [0 x %struct.comedi_krange]* %range213, i64 0, i64 0, !dbg !6069
  %max215 = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %arrayidx214, i32 0, i32 1, !dbg !6072
  store i32 %mul210, i32* %max215, align 4, !dbg !6073
  %104 = load %union.jr3_pci_single_range*, %union.jr3_pci_single_range** %r, align 8, !dbg !6074
  %arrayidx216 = getelementptr %union.jr3_pci_single_range, %union.jr3_pci_single_range* %104, i64 8, !dbg !6074
  %l217 = bitcast %union.jr3_pci_single_range* %arrayidx216 to %struct.comedi_lrange*, !dbg !6075
  %range218 = getelementptr inbounds %struct.comedi_lrange, %struct.comedi_lrange* %l217, i32 0, i32 1, !dbg !6076
  %arrayidx219 = getelementptr [0 x %struct.comedi_krange], [0 x %struct.comedi_krange]* %range218, i64 0, i64 0, !dbg !6074
  %min220 = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %arrayidx219, i32 0, i32 0, !dbg !6077
  store i32 0, i32* %min220, align 4, !dbg !6078
  %105 = load %union.jr3_pci_single_range*, %union.jr3_pci_single_range** %r, align 8, !dbg !6079
  %arrayidx221 = getelementptr %union.jr3_pci_single_range, %union.jr3_pci_single_range* %105, i64 8, !dbg !6079
  %l222 = bitcast %union.jr3_pci_single_range* %arrayidx221 to %struct.comedi_lrange*, !dbg !6080
  %range223 = getelementptr inbounds %struct.comedi_lrange, %struct.comedi_lrange* %l222, i32 0, i32 1, !dbg !6081
  %arrayidx224 = getelementptr [0 x %struct.comedi_krange], [0 x %struct.comedi_krange]* %range223, i64 0, i64 0, !dbg !6079
  %max225 = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %arrayidx224, i32 0, i32 1, !dbg !6082
  store i32 65535, i32* %max225, align 4, !dbg !6083
  %106 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor, align 8, !dbg !6084
  call void @use_offset(%struct.jr3_sensor* %106, i16 signext 0) #8, !dbg !6085
  %107 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !6086
  %state226 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %107, i32 0, i32 2, !dbg !6087
  store i32 4, i32* %state226, align 8, !dbg !6088
  %call228 = call i64 @poll_delay_min_max(i32 40, i32 100) #8, !dbg !6089
  %108 = bitcast %struct.jr3_pci_poll_delay* %tmp227 to i64*, !dbg !6089
  store i64 %call228, i64* %108, align 4, !dbg !6089
  %109 = bitcast %struct.jr3_pci_poll_delay* %retval to i8*, !dbg !6089
  %110 = bitcast %struct.jr3_pci_poll_delay* %tmp227 to i8*, !dbg !6089
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %109, i8* align 4 %110, i64 8, i1 false), !dbg !6089
  br label %if.end229

if.end229:                                        ; preds = %if.else76, %if.then73
  br label %sw.epilog, !dbg !6090

sw.bb230:                                         ; preds = %if.end10
  %111 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor, align 8, !dbg !6091
  %call231 = call i32 @is_complete(%struct.jr3_sensor* %111) #8, !dbg !6093
  %tobool232 = icmp ne i32 %call231, 0, !dbg !6093
  br i1 %tobool232, label %if.else236, label %if.then233, !dbg !6094

if.then233:                                       ; preds = %sw.bb230
  %call235 = call i64 @poll_delay_min_max(i32 20, i32 100) #8, !dbg !6095
  %112 = bitcast %struct.jr3_pci_poll_delay* %tmp234 to i64*, !dbg !6095
  store i64 %call235, i64* %112, align 4, !dbg !6095
  %113 = bitcast %struct.jr3_pci_poll_delay* %retval to i8*, !dbg !6095
  %114 = bitcast %struct.jr3_pci_poll_delay* %tmp234 to i8*, !dbg !6095
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %113, i8* align 4 %114, i64 8, i1 false), !dbg !6095
  br label %if.end249, !dbg !6097

if.else236:                                       ; preds = %sw.bb230
  %115 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor, align 8, !dbg !6098
  %offsets = getelementptr inbounds %struct.jr3_sensor, %struct.jr3_sensor* %115, i32 0, i32 15, !dbg !6100
  %fx237 = getelementptr inbounds %struct.six_axis_array, %struct.six_axis_array* %offsets, i32 0, i32 0, !dbg !6101
  call void @set_s16(i32* %fx237, i16 signext 0) #8, !dbg !6102
  %116 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor, align 8, !dbg !6103
  %offsets238 = getelementptr inbounds %struct.jr3_sensor, %struct.jr3_sensor* %116, i32 0, i32 15, !dbg !6104
  %fy239 = getelementptr inbounds %struct.six_axis_array, %struct.six_axis_array* %offsets238, i32 0, i32 1, !dbg !6105
  call void @set_s16(i32* %fy239, i16 signext 0) #8, !dbg !6106
  %117 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor, align 8, !dbg !6107
  %offsets240 = getelementptr inbounds %struct.jr3_sensor, %struct.jr3_sensor* %117, i32 0, i32 15, !dbg !6108
  %fz241 = getelementptr inbounds %struct.six_axis_array, %struct.six_axis_array* %offsets240, i32 0, i32 2, !dbg !6109
  call void @set_s16(i32* %fz241, i16 signext 0) #8, !dbg !6110
  %118 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor, align 8, !dbg !6111
  %offsets242 = getelementptr inbounds %struct.jr3_sensor, %struct.jr3_sensor* %118, i32 0, i32 15, !dbg !6112
  %mx243 = getelementptr inbounds %struct.six_axis_array, %struct.six_axis_array* %offsets242, i32 0, i32 3, !dbg !6113
  call void @set_s16(i32* %mx243, i16 signext 0) #8, !dbg !6114
  %119 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor, align 8, !dbg !6115
  %offsets244 = getelementptr inbounds %struct.jr3_sensor, %struct.jr3_sensor* %119, i32 0, i32 15, !dbg !6116
  %my245 = getelementptr inbounds %struct.six_axis_array, %struct.six_axis_array* %offsets244, i32 0, i32 4, !dbg !6117
  call void @set_s16(i32* %my245, i16 signext 0) #8, !dbg !6118
  %120 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor, align 8, !dbg !6119
  %offsets246 = getelementptr inbounds %struct.jr3_sensor, %struct.jr3_sensor* %120, i32 0, i32 15, !dbg !6120
  %mz247 = getelementptr inbounds %struct.six_axis_array, %struct.six_axis_array* %offsets246, i32 0, i32 5, !dbg !6121
  call void @set_s16(i32* %mz247, i16 signext 0) #8, !dbg !6122
  %121 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor, align 8, !dbg !6123
  call void @set_offset(%struct.jr3_sensor* %121) #8, !dbg !6124
  %122 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %spriv, align 8, !dbg !6125
  %state248 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %122, i32 0, i32 2, !dbg !6126
  store i32 5, i32* %state248, align 8, !dbg !6127
  br label %if.end249

if.end249:                                        ; preds = %if.else236, %if.then233
  br label %sw.epilog, !dbg !6128

sw.bb250:                                         ; preds = %if.end10
  %call252 = call i64 @poll_delay_min_max(i32 10000, i32 20000) #8, !dbg !6129
  %123 = bitcast %struct.jr3_pci_poll_delay* %tmp251 to i64*, !dbg !6129
  store i64 %call252, i64* %123, align 4, !dbg !6129
  %124 = bitcast %struct.jr3_pci_poll_delay* %retval to i8*, !dbg !6129
  %125 = bitcast %struct.jr3_pci_poll_delay* %tmp251 to i8*, !dbg !6129
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %124, i8* align 4 %125, i64 8, i1 false), !dbg !6129
  br label %sw.epilog, !dbg !6130

sw.default:                                       ; preds = %if.end10
  br label %sw.epilog, !dbg !6131

sw.epilog:                                        ; preds = %sw.default, %sw.bb250, %if.end249, %if.end229, %if.end69, %if.end52, %if.end27
  %126 = bitcast %struct.jr3_pci_poll_delay* %retval to i64*, !dbg !6132
  %127 = load i64, i64* %126, align 4, !dbg !6132
  ret i64 %127, !dbg !6132
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #2 !dbg !6133 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !6134, metadata !DIExpression()), !dbg !6136
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6137, metadata !DIExpression()), !dbg !6136
  %0 = load i64, i64* %__edi, align 8, !dbg !6136
  store i64 %0, i64* %__edi, align 8, !dbg !6136
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6138, metadata !DIExpression()), !dbg !6136
  %1 = load i64, i64* %__esi, align 8, !dbg !6136
  store i64 %1, i64* %__esi, align 8, !dbg !6136
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6139, metadata !DIExpression()), !dbg !6136
  %2 = load i64, i64* %__edx, align 8, !dbg !6136
  store i64 %2, i64* %__edx, align 8, !dbg !6136
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6140, metadata !DIExpression()), !dbg !6136
  %3 = load i64, i64* %__ecx, align 8, !dbg !6136
  store i64 %3, i64* %__ecx, align 8, !dbg !6136
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6141, metadata !DIExpression()), !dbg !6136
  %4 = load i64, i64* %__eax, align 8, !dbg !6136
  store i64 %4, i64* %__eax, align 8, !dbg !6136
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !6136
  %6 = call i64 @llvm.read_register.i64(metadata !4310), !dbg !6142
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #7, !dbg !6142, !srcloc !6145
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !6142
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !6142
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6142
  call void @llvm.write_register.i64(metadata !4310, i64 %asmresult1), !dbg !6142
  %8 = load i64, i64* %__eax, align 8, !dbg !6142
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !6146, metadata !DIExpression()), !dbg !6148
  store i64 -1, i64* %__mask, align 8, !dbg !6148
  %9 = load i64, i64* %__mask, align 8, !dbg !6148
  store i64 %9, i64* %tmp, align 8, !dbg !6148
  %10 = load i64, i64* %tmp, align 8, !dbg !6148
  %and = and i64 %8, %10, !dbg !6142
  store i64 %and, i64* %__ret, align 8, !dbg !6142
  %11 = load i64, i64* %__ret, align 8, !dbg !6136
  store i64 %11, i64* %tmp2, align 8, !dbg !6149
  %12 = load i64, i64* %tmp2, align 8, !dbg !6136
  ret i64 %12, !dbg !6150
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #2 !dbg !6151 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6152, metadata !DIExpression()), !dbg !6154
  %0 = load i64, i64* %__edi, align 8, !dbg !6154
  store i64 %0, i64* %__edi, align 8, !dbg !6154
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6155, metadata !DIExpression()), !dbg !6154
  %1 = load i64, i64* %__esi, align 8, !dbg !6154
  store i64 %1, i64* %__esi, align 8, !dbg !6154
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6156, metadata !DIExpression()), !dbg !6154
  %2 = load i64, i64* %__edx, align 8, !dbg !6154
  store i64 %2, i64* %__edx, align 8, !dbg !6154
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6157, metadata !DIExpression()), !dbg !6154
  %3 = load i64, i64* %__ecx, align 8, !dbg !6154
  store i64 %3, i64* %__ecx, align 8, !dbg !6154
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6158, metadata !DIExpression()), !dbg !6154
  %4 = load i64, i64* %__eax, align 8, !dbg !6154
  store i64 %4, i64* %__eax, align 8, !dbg !6154
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !6154
  %6 = call i64 @llvm.read_register.i64(metadata !4310), !dbg !6154
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #7, !dbg !6154, !srcloc !6159
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !6154
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !6154
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6154
  call void @llvm.write_register.i64(metadata !4310, i64 %asmresult1), !dbg !6154
  ret void, !dbg !6160
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @poll_delay_min_max(i32 %min, i32 %max) #2 !dbg !6161 {
entry:
  %retval = alloca %struct.jr3_pci_poll_delay, align 4
  %min.addr = alloca i32, align 4
  %max.addr = alloca i32, align 4
  store i32 %min, i32* %min.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %min.addr, metadata !6164, metadata !DIExpression()), !dbg !6165
  store i32 %max, i32* %max.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %max.addr, metadata !6166, metadata !DIExpression()), !dbg !6167
  call void @llvm.dbg.declare(metadata %struct.jr3_pci_poll_delay* %retval, metadata !6168, metadata !DIExpression()), !dbg !6169
  %0 = load i32, i32* %min.addr, align 4, !dbg !6170
  %min1 = getelementptr inbounds %struct.jr3_pci_poll_delay, %struct.jr3_pci_poll_delay* %retval, i32 0, i32 0, !dbg !6171
  store i32 %0, i32* %min1, align 4, !dbg !6172
  %1 = load i32, i32* %max.addr, align 4, !dbg !6173
  %max2 = getelementptr inbounds %struct.jr3_pci_poll_delay, %struct.jr3_pci_poll_delay* %retval, i32 0, i32 1, !dbg !6174
  store i32 %1, i32* %max2, align 4, !dbg !6175
  %2 = bitcast %struct.jr3_pci_poll_delay* %retval to i64*, !dbg !6176
  %3 = load i64, i64* %2, align 4, !dbg !6176
  ret i64 %3, !dbg !6176
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_transforms(%struct.jr3_sensor* %sensor, %struct.jr3_pci_transform* %transf, i16 signext %num) #2 !dbg !6177 {
entry:
  %sensor.addr = alloca %struct.jr3_sensor*, align 8
  %transf.addr = alloca %struct.jr3_pci_transform*, align 8
  %num.addr = alloca i16, align 2
  %i = alloca i32, align 4
  store %struct.jr3_sensor* %sensor, %struct.jr3_sensor** %sensor.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.jr3_sensor** %sensor.addr, metadata !6182, metadata !DIExpression()), !dbg !6183
  store %struct.jr3_pci_transform* %transf, %struct.jr3_pci_transform** %transf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.jr3_pci_transform** %transf.addr, metadata !6184, metadata !DIExpression()), !dbg !6185
  store i16 %num, i16* %num.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %num.addr, metadata !6186, metadata !DIExpression()), !dbg !6187
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6188, metadata !DIExpression()), !dbg !6189
  %0 = load i16, i16* %num.addr, align 2, !dbg !6190
  %conv = sext i16 %0 to i32, !dbg !6190
  %and = and i32 %conv, 15, !dbg !6190
  %conv1 = trunc i32 %and to i16, !dbg !6190
  store i16 %conv1, i16* %num.addr, align 2, !dbg !6190
  store i32 0, i32* %i, align 4, !dbg !6191
  br label %for.cond, !dbg !6193

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !6194
  %cmp = icmp slt i32 %1, 8, !dbg !6196
  br i1 %cmp, label %for.body, label %for.end, !dbg !6197

for.body:                                         ; preds = %for.cond
  %2 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor.addr, align 8, !dbg !6198
  %transforms = getelementptr inbounds %struct.jr3_sensor, %struct.jr3_sensor* %2, i32 0, i32 55, !dbg !6200
  %3 = load i16, i16* %num.addr, align 2, !dbg !6201
  %idxprom = sext i16 %3 to i64, !dbg !6198
  %arrayidx = getelementptr [16 x %struct.intern_transform], [16 x %struct.intern_transform]* %transforms, i64 0, i64 %idxprom, !dbg !6198
  %link = getelementptr inbounds %struct.intern_transform, %struct.intern_transform* %arrayidx, i32 0, i32 0, !dbg !6202
  %4 = load i32, i32* %i, align 4, !dbg !6203
  %idxprom3 = sext i32 %4 to i64, !dbg !6198
  %arrayidx4 = getelementptr [8 x %struct.anon.66], [8 x %struct.anon.66]* %link, i64 0, i64 %idxprom3, !dbg !6198
  %link_type = getelementptr inbounds %struct.anon.66, %struct.anon.66* %arrayidx4, i32 0, i32 0, !dbg !6204
  %5 = load %struct.jr3_pci_transform*, %struct.jr3_pci_transform** %transf.addr, align 8, !dbg !6205
  %link5 = getelementptr inbounds %struct.jr3_pci_transform, %struct.jr3_pci_transform* %5, i32 0, i32 0, !dbg !6206
  %6 = load i32, i32* %i, align 4, !dbg !6207
  %idxprom6 = sext i32 %6 to i64, !dbg !6205
  %arrayidx7 = getelementptr [8 x %struct.anon.67], [8 x %struct.anon.67]* %link5, i64 0, i64 %idxprom6, !dbg !6205
  %link_type8 = getelementptr inbounds %struct.anon.67, %struct.anon.67* %arrayidx7, i32 0, i32 0, !dbg !6208
  %7 = load i16, i16* %link_type8, align 2, !dbg !6208
  call void @set_u16(i32* %link_type, i16 zeroext %7) #8, !dbg !6209
  call void @__const_udelay(i64 4295) #8, !dbg !6210
  %8 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor.addr, align 8, !dbg !6215
  %transforms9 = getelementptr inbounds %struct.jr3_sensor, %struct.jr3_sensor* %8, i32 0, i32 55, !dbg !6216
  %9 = load i16, i16* %num.addr, align 2, !dbg !6217
  %idxprom10 = sext i16 %9 to i64, !dbg !6215
  %arrayidx11 = getelementptr [16 x %struct.intern_transform], [16 x %struct.intern_transform]* %transforms9, i64 0, i64 %idxprom10, !dbg !6215
  %link12 = getelementptr inbounds %struct.intern_transform, %struct.intern_transform* %arrayidx11, i32 0, i32 0, !dbg !6218
  %10 = load i32, i32* %i, align 4, !dbg !6219
  %idxprom13 = sext i32 %10 to i64, !dbg !6215
  %arrayidx14 = getelementptr [8 x %struct.anon.66], [8 x %struct.anon.66]* %link12, i64 0, i64 %idxprom13, !dbg !6215
  %link_amount = getelementptr inbounds %struct.anon.66, %struct.anon.66* %arrayidx14, i32 0, i32 1, !dbg !6220
  %11 = load %struct.jr3_pci_transform*, %struct.jr3_pci_transform** %transf.addr, align 8, !dbg !6221
  %link15 = getelementptr inbounds %struct.jr3_pci_transform, %struct.jr3_pci_transform* %11, i32 0, i32 0, !dbg !6222
  %12 = load i32, i32* %i, align 4, !dbg !6223
  %idxprom16 = sext i32 %12 to i64, !dbg !6221
  %arrayidx17 = getelementptr [8 x %struct.anon.67], [8 x %struct.anon.67]* %link15, i64 0, i64 %idxprom16, !dbg !6221
  %link_amount18 = getelementptr inbounds %struct.anon.67, %struct.anon.67* %arrayidx17, i32 0, i32 1, !dbg !6224
  %13 = load i16, i16* %link_amount18, align 2, !dbg !6224
  call void @set_s16(i32* %link_amount, i16 signext %13) #8, !dbg !6225
  call void @__const_udelay(i64 4295) #8, !dbg !6226
  %14 = load %struct.jr3_pci_transform*, %struct.jr3_pci_transform** %transf.addr, align 8, !dbg !6231
  %link19 = getelementptr inbounds %struct.jr3_pci_transform, %struct.jr3_pci_transform* %14, i32 0, i32 0, !dbg !6233
  %15 = load i32, i32* %i, align 4, !dbg !6234
  %idxprom20 = sext i32 %15 to i64, !dbg !6231
  %arrayidx21 = getelementptr [8 x %struct.anon.67], [8 x %struct.anon.67]* %link19, i64 0, i64 %idxprom20, !dbg !6231
  %link_type22 = getelementptr inbounds %struct.anon.67, %struct.anon.67* %arrayidx21, i32 0, i32 0, !dbg !6235
  %16 = load i16, i16* %link_type22, align 2, !dbg !6235
  %conv23 = zext i16 %16 to i32, !dbg !6231
  %cmp24 = icmp eq i32 %conv23, 0, !dbg !6236
  br i1 %cmp24, label %if.then, label %if.end, !dbg !6237

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !6238

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !6239

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %i, align 4, !dbg !6240
  %inc = add i32 %17, 1, !dbg !6240
  store i32 %inc, i32* %i, align 4, !dbg !6240
  br label %for.cond, !dbg !6241, !llvm.loop !6242

for.end:                                          ; preds = %if.then, %for.cond
  ret void, !dbg !6244
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @use_transform(%struct.jr3_sensor* %sensor, i16 signext %transf_num) #2 !dbg !6245 {
entry:
  %sensor.addr = alloca %struct.jr3_sensor*, align 8
  %transf_num.addr = alloca i16, align 2
  store %struct.jr3_sensor* %sensor, %struct.jr3_sensor** %sensor.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.jr3_sensor** %sensor.addr, metadata !6248, metadata !DIExpression()), !dbg !6249
  store i16 %transf_num, i16* %transf_num.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %transf_num.addr, metadata !6250, metadata !DIExpression()), !dbg !6251
  %0 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor.addr, align 8, !dbg !6252
  %command_word0 = getelementptr inbounds %struct.jr3_sensor, %struct.jr3_sensor* %0, i32 0, i32 29, !dbg !6253
  %1 = load i16, i16* %transf_num.addr, align 2, !dbg !6254
  %conv = sext i16 %1 to i32, !dbg !6254
  %and = and i32 %conv, 15, !dbg !6255
  %add = add i32 1280, %and, !dbg !6256
  %conv1 = trunc i32 %add to i16, !dbg !6257
  call void @set_s16(i32* %command_word0, i16 signext %conv1) #8, !dbg !6258
  ret void, !dbg !6259
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @is_complete(%struct.jr3_sensor* %sensor) #2 !dbg !6260 {
entry:
  %sensor.addr = alloca %struct.jr3_sensor*, align 8
  store %struct.jr3_sensor* %sensor, %struct.jr3_sensor** %sensor.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.jr3_sensor** %sensor.addr, metadata !6263, metadata !DIExpression()), !dbg !6264
  %0 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor.addr, align 8, !dbg !6265
  %command_word0 = getelementptr inbounds %struct.jr3_sensor, %struct.jr3_sensor* %0, i32 0, i32 29, !dbg !6266
  %call = call signext i16 @get_s16(i32* %command_word0) #8, !dbg !6267
  %conv = sext i16 %call to i32, !dbg !6267
  %cmp = icmp eq i32 %conv, 0, !dbg !6268
  %conv1 = zext i1 %cmp to i32, !dbg !6268
  ret i32 %conv1, !dbg !6269
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal { i64, i32 } @get_min_full_scales(%struct.jr3_sensor* %sensor) #2 !dbg !6270 {
entry:
  %retval = alloca %struct.six_axis_t, align 2
  %sensor.addr = alloca %struct.jr3_sensor*, align 8
  %tmp = alloca { i64, i32 }, align 8
  store %struct.jr3_sensor* %sensor, %struct.jr3_sensor** %sensor.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.jr3_sensor** %sensor.addr, metadata !6273, metadata !DIExpression()), !dbg !6274
  call void @llvm.dbg.declare(metadata %struct.six_axis_t* %retval, metadata !6275, metadata !DIExpression()), !dbg !6276
  %0 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor.addr, align 8, !dbg !6277
  %min_full_scale = getelementptr inbounds %struct.jr3_sensor, %struct.jr3_sensor* %0, i32 0, i32 8, !dbg !6278
  %fx = getelementptr inbounds %struct.six_axis_array, %struct.six_axis_array* %min_full_scale, i32 0, i32 0, !dbg !6279
  %call = call signext i16 @get_s16(i32* %fx) #8, !dbg !6280
  %fx1 = getelementptr inbounds %struct.six_axis_t, %struct.six_axis_t* %retval, i32 0, i32 0, !dbg !6281
  store i16 %call, i16* %fx1, align 2, !dbg !6282
  %1 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor.addr, align 8, !dbg !6283
  %min_full_scale2 = getelementptr inbounds %struct.jr3_sensor, %struct.jr3_sensor* %1, i32 0, i32 8, !dbg !6284
  %fy = getelementptr inbounds %struct.six_axis_array, %struct.six_axis_array* %min_full_scale2, i32 0, i32 1, !dbg !6285
  %call3 = call signext i16 @get_s16(i32* %fy) #8, !dbg !6286
  %fy4 = getelementptr inbounds %struct.six_axis_t, %struct.six_axis_t* %retval, i32 0, i32 1, !dbg !6287
  store i16 %call3, i16* %fy4, align 2, !dbg !6288
  %2 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor.addr, align 8, !dbg !6289
  %min_full_scale5 = getelementptr inbounds %struct.jr3_sensor, %struct.jr3_sensor* %2, i32 0, i32 8, !dbg !6290
  %fz = getelementptr inbounds %struct.six_axis_array, %struct.six_axis_array* %min_full_scale5, i32 0, i32 2, !dbg !6291
  %call6 = call signext i16 @get_s16(i32* %fz) #8, !dbg !6292
  %fz7 = getelementptr inbounds %struct.six_axis_t, %struct.six_axis_t* %retval, i32 0, i32 2, !dbg !6293
  store i16 %call6, i16* %fz7, align 2, !dbg !6294
  %3 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor.addr, align 8, !dbg !6295
  %min_full_scale8 = getelementptr inbounds %struct.jr3_sensor, %struct.jr3_sensor* %3, i32 0, i32 8, !dbg !6296
  %mx = getelementptr inbounds %struct.six_axis_array, %struct.six_axis_array* %min_full_scale8, i32 0, i32 3, !dbg !6297
  %call9 = call signext i16 @get_s16(i32* %mx) #8, !dbg !6298
  %mx10 = getelementptr inbounds %struct.six_axis_t, %struct.six_axis_t* %retval, i32 0, i32 3, !dbg !6299
  store i16 %call9, i16* %mx10, align 2, !dbg !6300
  %4 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor.addr, align 8, !dbg !6301
  %min_full_scale11 = getelementptr inbounds %struct.jr3_sensor, %struct.jr3_sensor* %4, i32 0, i32 8, !dbg !6302
  %my = getelementptr inbounds %struct.six_axis_array, %struct.six_axis_array* %min_full_scale11, i32 0, i32 4, !dbg !6303
  %call12 = call signext i16 @get_s16(i32* %my) #8, !dbg !6304
  %my13 = getelementptr inbounds %struct.six_axis_t, %struct.six_axis_t* %retval, i32 0, i32 4, !dbg !6305
  store i16 %call12, i16* %my13, align 2, !dbg !6306
  %5 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor.addr, align 8, !dbg !6307
  %min_full_scale14 = getelementptr inbounds %struct.jr3_sensor, %struct.jr3_sensor* %5, i32 0, i32 8, !dbg !6308
  %mz = getelementptr inbounds %struct.six_axis_array, %struct.six_axis_array* %min_full_scale14, i32 0, i32 5, !dbg !6309
  %call15 = call signext i16 @get_s16(i32* %mz) #8, !dbg !6310
  %mz16 = getelementptr inbounds %struct.six_axis_t, %struct.six_axis_t* %retval, i32 0, i32 5, !dbg !6311
  store i16 %call15, i16* %mz16, align 2, !dbg !6312
  %6 = bitcast { i64, i32 }* %tmp to i8*, !dbg !6313
  %7 = bitcast %struct.six_axis_t* %retval to i8*, !dbg !6313
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 2 %7, i64 12, i1 false), !dbg !6313
  %8 = load { i64, i32 }, { i64, i32 }* %tmp, align 8, !dbg !6313
  ret { i64, i32 } %8, !dbg !6313
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal { i64, i32 } @get_max_full_scales(%struct.jr3_sensor* %sensor) #2 !dbg !6314 {
entry:
  %retval = alloca %struct.six_axis_t, align 2
  %sensor.addr = alloca %struct.jr3_sensor*, align 8
  %tmp = alloca { i64, i32 }, align 8
  store %struct.jr3_sensor* %sensor, %struct.jr3_sensor** %sensor.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.jr3_sensor** %sensor.addr, metadata !6315, metadata !DIExpression()), !dbg !6316
  call void @llvm.dbg.declare(metadata %struct.six_axis_t* %retval, metadata !6317, metadata !DIExpression()), !dbg !6318
  %0 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor.addr, align 8, !dbg !6319
  %max_full_scale = getelementptr inbounds %struct.jr3_sensor, %struct.jr3_sensor* %0, i32 0, i32 11, !dbg !6320
  %fx = getelementptr inbounds %struct.six_axis_array, %struct.six_axis_array* %max_full_scale, i32 0, i32 0, !dbg !6321
  %call = call signext i16 @get_s16(i32* %fx) #8, !dbg !6322
  %fx1 = getelementptr inbounds %struct.six_axis_t, %struct.six_axis_t* %retval, i32 0, i32 0, !dbg !6323
  store i16 %call, i16* %fx1, align 2, !dbg !6324
  %1 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor.addr, align 8, !dbg !6325
  %max_full_scale2 = getelementptr inbounds %struct.jr3_sensor, %struct.jr3_sensor* %1, i32 0, i32 11, !dbg !6326
  %fy = getelementptr inbounds %struct.six_axis_array, %struct.six_axis_array* %max_full_scale2, i32 0, i32 1, !dbg !6327
  %call3 = call signext i16 @get_s16(i32* %fy) #8, !dbg !6328
  %fy4 = getelementptr inbounds %struct.six_axis_t, %struct.six_axis_t* %retval, i32 0, i32 1, !dbg !6329
  store i16 %call3, i16* %fy4, align 2, !dbg !6330
  %2 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor.addr, align 8, !dbg !6331
  %max_full_scale5 = getelementptr inbounds %struct.jr3_sensor, %struct.jr3_sensor* %2, i32 0, i32 11, !dbg !6332
  %fz = getelementptr inbounds %struct.six_axis_array, %struct.six_axis_array* %max_full_scale5, i32 0, i32 2, !dbg !6333
  %call6 = call signext i16 @get_s16(i32* %fz) #8, !dbg !6334
  %fz7 = getelementptr inbounds %struct.six_axis_t, %struct.six_axis_t* %retval, i32 0, i32 2, !dbg !6335
  store i16 %call6, i16* %fz7, align 2, !dbg !6336
  %3 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor.addr, align 8, !dbg !6337
  %max_full_scale8 = getelementptr inbounds %struct.jr3_sensor, %struct.jr3_sensor* %3, i32 0, i32 11, !dbg !6338
  %mx = getelementptr inbounds %struct.six_axis_array, %struct.six_axis_array* %max_full_scale8, i32 0, i32 3, !dbg !6339
  %call9 = call signext i16 @get_s16(i32* %mx) #8, !dbg !6340
  %mx10 = getelementptr inbounds %struct.six_axis_t, %struct.six_axis_t* %retval, i32 0, i32 3, !dbg !6341
  store i16 %call9, i16* %mx10, align 2, !dbg !6342
  %4 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor.addr, align 8, !dbg !6343
  %max_full_scale11 = getelementptr inbounds %struct.jr3_sensor, %struct.jr3_sensor* %4, i32 0, i32 11, !dbg !6344
  %my = getelementptr inbounds %struct.six_axis_array, %struct.six_axis_array* %max_full_scale11, i32 0, i32 4, !dbg !6345
  %call12 = call signext i16 @get_s16(i32* %my) #8, !dbg !6346
  %my13 = getelementptr inbounds %struct.six_axis_t, %struct.six_axis_t* %retval, i32 0, i32 4, !dbg !6347
  store i16 %call12, i16* %my13, align 2, !dbg !6348
  %5 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor.addr, align 8, !dbg !6349
  %max_full_scale14 = getelementptr inbounds %struct.jr3_sensor, %struct.jr3_sensor* %5, i32 0, i32 11, !dbg !6350
  %mz = getelementptr inbounds %struct.six_axis_array, %struct.six_axis_array* %max_full_scale14, i32 0, i32 5, !dbg !6351
  %call15 = call signext i16 @get_s16(i32* %mz) #8, !dbg !6352
  %mz16 = getelementptr inbounds %struct.six_axis_t, %struct.six_axis_t* %retval, i32 0, i32 5, !dbg !6353
  store i16 %call15, i16* %mz16, align 2, !dbg !6354
  %6 = bitcast { i64, i32 }* %tmp to i8*, !dbg !6355
  %7 = bitcast %struct.six_axis_t* %retval to i8*, !dbg !6355
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 2 %7, i64 12, i1 false), !dbg !6355
  %8 = load { i64, i32 }, { i64, i32 }* %tmp, align 8, !dbg !6355
  ret { i64, i32 } %8, !dbg !6355
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_full_scales(%struct.jr3_sensor* %sensor, i64 %full_scale.coerce0, i32 %full_scale.coerce1) #2 !dbg !6356 {
entry:
  %full_scale = alloca %struct.six_axis_t, align 2
  %coerce = alloca { i64, i32 }, align 2
  %sensor.addr = alloca %struct.jr3_sensor*, align 8
  %0 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %coerce, i32 0, i32 0
  store i64 %full_scale.coerce0, i64* %0, align 2
  %1 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %coerce, i32 0, i32 1
  store i32 %full_scale.coerce1, i32* %1, align 2
  %2 = bitcast %struct.six_axis_t* %full_scale to i8*
  %3 = bitcast { i64, i32 }* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %2, i8* align 2 %3, i64 12, i1 false)
  store %struct.jr3_sensor* %sensor, %struct.jr3_sensor** %sensor.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.jr3_sensor** %sensor.addr, metadata !6359, metadata !DIExpression()), !dbg !6360
  call void @llvm.dbg.declare(metadata %struct.six_axis_t* %full_scale, metadata !6361, metadata !DIExpression()), !dbg !6362
  %4 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor.addr, align 8, !dbg !6363
  %full_scale1 = getelementptr inbounds %struct.jr3_sensor, %struct.jr3_sensor* %4, i32 0, i32 14, !dbg !6364
  %fx = getelementptr inbounds %struct.force_array, %struct.force_array* %full_scale1, i32 0, i32 0, !dbg !6365
  %fx2 = getelementptr inbounds %struct.six_axis_t, %struct.six_axis_t* %full_scale, i32 0, i32 0, !dbg !6366
  %5 = load i16, i16* %fx2, align 2, !dbg !6366
  call void @set_s16(i32* %fx, i16 signext %5) #8, !dbg !6367
  %6 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor.addr, align 8, !dbg !6368
  %full_scale3 = getelementptr inbounds %struct.jr3_sensor, %struct.jr3_sensor* %6, i32 0, i32 14, !dbg !6369
  %fy = getelementptr inbounds %struct.force_array, %struct.force_array* %full_scale3, i32 0, i32 1, !dbg !6370
  %fy4 = getelementptr inbounds %struct.six_axis_t, %struct.six_axis_t* %full_scale, i32 0, i32 1, !dbg !6371
  %7 = load i16, i16* %fy4, align 2, !dbg !6371
  call void @set_s16(i32* %fy, i16 signext %7) #8, !dbg !6372
  %8 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor.addr, align 8, !dbg !6373
  %full_scale5 = getelementptr inbounds %struct.jr3_sensor, %struct.jr3_sensor* %8, i32 0, i32 14, !dbg !6374
  %fz = getelementptr inbounds %struct.force_array, %struct.force_array* %full_scale5, i32 0, i32 2, !dbg !6375
  %fz6 = getelementptr inbounds %struct.six_axis_t, %struct.six_axis_t* %full_scale, i32 0, i32 2, !dbg !6376
  %9 = load i16, i16* %fz6, align 2, !dbg !6376
  call void @set_s16(i32* %fz, i16 signext %9) #8, !dbg !6377
  %10 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor.addr, align 8, !dbg !6378
  %full_scale7 = getelementptr inbounds %struct.jr3_sensor, %struct.jr3_sensor* %10, i32 0, i32 14, !dbg !6379
  %mx = getelementptr inbounds %struct.force_array, %struct.force_array* %full_scale7, i32 0, i32 3, !dbg !6380
  %mx8 = getelementptr inbounds %struct.six_axis_t, %struct.six_axis_t* %full_scale, i32 0, i32 3, !dbg !6381
  %11 = load i16, i16* %mx8, align 2, !dbg !6381
  call void @set_s16(i32* %mx, i16 signext %11) #8, !dbg !6382
  %12 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor.addr, align 8, !dbg !6383
  %full_scale9 = getelementptr inbounds %struct.jr3_sensor, %struct.jr3_sensor* %12, i32 0, i32 14, !dbg !6384
  %my = getelementptr inbounds %struct.force_array, %struct.force_array* %full_scale9, i32 0, i32 4, !dbg !6385
  %my10 = getelementptr inbounds %struct.six_axis_t, %struct.six_axis_t* %full_scale, i32 0, i32 4, !dbg !6386
  %13 = load i16, i16* %my10, align 2, !dbg !6386
  call void @set_s16(i32* %my, i16 signext %13) #8, !dbg !6387
  %14 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor.addr, align 8, !dbg !6388
  %full_scale11 = getelementptr inbounds %struct.jr3_sensor, %struct.jr3_sensor* %14, i32 0, i32 14, !dbg !6389
  %mz = getelementptr inbounds %struct.force_array, %struct.force_array* %full_scale11, i32 0, i32 5, !dbg !6390
  %mz12 = getelementptr inbounds %struct.six_axis_t, %struct.six_axis_t* %full_scale, i32 0, i32 5, !dbg !6391
  %15 = load i16, i16* %mz12, align 2, !dbg !6391
  call void @set_s16(i32* %mz, i16 signext %15) #8, !dbg !6392
  %16 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor.addr, align 8, !dbg !6393
  %command_word0 = getelementptr inbounds %struct.jr3_sensor, %struct.jr3_sensor* %16, i32 0, i32 29, !dbg !6394
  call void @set_s16(i32* %command_word0, i16 signext 2560) #8, !dbg !6395
  ret void, !dbg !6396
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @use_offset(%struct.jr3_sensor* %sensor, i16 signext %offset_num) #2 !dbg !6397 {
entry:
  %sensor.addr = alloca %struct.jr3_sensor*, align 8
  %offset_num.addr = alloca i16, align 2
  store %struct.jr3_sensor* %sensor, %struct.jr3_sensor** %sensor.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.jr3_sensor** %sensor.addr, metadata !6398, metadata !DIExpression()), !dbg !6399
  store i16 %offset_num, i16* %offset_num.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %offset_num.addr, metadata !6400, metadata !DIExpression()), !dbg !6401
  %0 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor.addr, align 8, !dbg !6402
  %command_word0 = getelementptr inbounds %struct.jr3_sensor, %struct.jr3_sensor* %0, i32 0, i32 29, !dbg !6403
  %1 = load i16, i16* %offset_num.addr, align 2, !dbg !6404
  %conv = sext i16 %1 to i32, !dbg !6404
  %and = and i32 %conv, 15, !dbg !6405
  %add = add i32 1536, %and, !dbg !6406
  %conv1 = trunc i32 %add to i16, !dbg !6407
  call void @set_s16(i32* %command_word0, i16 signext %conv1) #8, !dbg !6408
  ret void, !dbg !6409
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_s16(i32* %p, i16 signext %val) #2 !dbg !6410 {
entry:
  %p.addr = alloca i32*, align 8
  %val.addr = alloca i16, align 2
  store i32* %p, i32** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr, metadata !6414, metadata !DIExpression()), !dbg !6415
  store i16 %val, i16* %val.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %val.addr, metadata !6416, metadata !DIExpression()), !dbg !6417
  %0 = load i16, i16* %val.addr, align 2, !dbg !6418
  %conv = sext i16 %0 to i32, !dbg !6418
  %1 = load i32*, i32** %p.addr, align 8, !dbg !6419
  %2 = bitcast i32* %1 to i8*, !dbg !6419
  call void @writel(i32 %conv, i8* %2) #8, !dbg !6420
  ret void, !dbg !6421
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_offset(%struct.jr3_sensor* %sensor) #2 !dbg !6422 {
entry:
  %sensor.addr = alloca %struct.jr3_sensor*, align 8
  store %struct.jr3_sensor* %sensor, %struct.jr3_sensor** %sensor.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.jr3_sensor** %sensor.addr, metadata !6425, metadata !DIExpression()), !dbg !6426
  %0 = load %struct.jr3_sensor*, %struct.jr3_sensor** %sensor.addr, align 8, !dbg !6427
  %command_word0 = getelementptr inbounds %struct.jr3_sensor, %struct.jr3_sensor* %0, i32 0, i32 29, !dbg !6428
  call void @set_s16(i32* %command_word0, i16 signext 1792) #8, !dbg !6429
  ret void, !dbg !6430
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #2 !dbg !6431 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !6434, metadata !DIExpression()), !dbg !6435
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6436, metadata !DIExpression()), !dbg !6438
  %0 = load i64, i64* %__edi, align 8, !dbg !6438
  store i64 %0, i64* %__edi, align 8, !dbg !6438
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6439, metadata !DIExpression()), !dbg !6438
  %1 = load i64, i64* %__esi, align 8, !dbg !6438
  store i64 %1, i64* %__esi, align 8, !dbg !6438
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6440, metadata !DIExpression()), !dbg !6438
  %2 = load i64, i64* %__edx, align 8, !dbg !6438
  store i64 %2, i64* %__edx, align 8, !dbg !6438
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6441, metadata !DIExpression()), !dbg !6438
  %3 = load i64, i64* %__ecx, align 8, !dbg !6438
  store i64 %3, i64* %__ecx, align 8, !dbg !6438
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6442, metadata !DIExpression()), !dbg !6438
  %4 = load i64, i64* %__eax, align 8, !dbg !6438
  store i64 %4, i64* %__eax, align 8, !dbg !6438
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !6438
  %6 = call i64 @llvm.read_register.i64(metadata !4310), !dbg !6438
  %7 = load i64, i64* %f.addr, align 8, !dbg !6438
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #7, !dbg !6438, !srcloc !6443
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !6438
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !6438
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6438
  call void @llvm.write_register.i64(metadata !4310, i64 %asmresult1), !dbg !6438
  ret void, !dbg !6444
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @jr3_pci_pci_probe(%struct.pci_dev* %dev, %struct.pci_device_id* %id) #2 !dbg !6445 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %id.addr = alloca %struct.pci_device_id*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !6446, metadata !DIExpression()), !dbg !6447
  store %struct.pci_device_id* %id, %struct.pci_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_device_id** %id.addr, metadata !6448, metadata !DIExpression()), !dbg !6449
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !6450
  %1 = load %struct.pci_device_id*, %struct.pci_device_id** %id.addr, align 8, !dbg !6451
  %driver_data = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %1, i32 0, i32 6, !dbg !6452
  %2 = load i64, i64* %driver_data, align 8, !dbg !6452
  %call = call i32 @comedi_pci_auto_config(%struct.pci_dev* %0, %struct.comedi_driver* @jr3_pci_driver, i64 %2) #8, !dbg !6453
  ret i32 %call, !dbg !6454
}

; Function Attrs: noredzone
declare dso_local void @comedi_pci_auto_unconfig(%struct.pci_dev*) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_pci_auto_config(%struct.pci_dev*, %struct.comedi_driver*, i64) #1

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { noredzone }
attributes #9 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4310}
!llvm.module.flags = !{!4311, !4312, !4313, !4314}
!llvm.ident = !{!4315}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_jr3_pci_driver_init236", scope: !2, file: !3, line: 811, type: !164, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !149, globals: !3983, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/staging/comedi/drivers/jr3_pci.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !100, !108, !124, !139}
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
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "jr3_pci_poll_state", file: !3, line: 98, baseType: !7, size: 32, elements: !101)
!101 = !{!102, !103, !104, !105, !106, !107}
!102 = !DIEnumerator(name: "state_jr3_poll", value: 0, isUnsigned: true)
!103 = !DIEnumerator(name: "state_jr3_init_wait_for_offset", value: 1, isUnsigned: true)
!104 = !DIEnumerator(name: "state_jr3_init_transform_complete", value: 2, isUnsigned: true)
!105 = !DIEnumerator(name: "state_jr3_init_set_full_scale_complete", value: 3, isUnsigned: true)
!106 = !DIEnumerator(name: "state_jr3_init_use_offset_complete", value: 4, isUnsigned: true)
!107 = !DIEnumerator(name: "state_jr3_done", value: 5, isUnsigned: true)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "comedi_subdevice_type", file: !109, line: 221, baseType: !7, size: 32, elements: !110)
!109 = !DIFile(filename: "drivers/staging/comedi/drivers/../comedi.h", directory: "/home/lizy2001/genbc/linux")
!110 = !{!111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123}
!111 = !DIEnumerator(name: "COMEDI_SUBD_UNUSED", value: 0, isUnsigned: true)
!112 = !DIEnumerator(name: "COMEDI_SUBD_AI", value: 1, isUnsigned: true)
!113 = !DIEnumerator(name: "COMEDI_SUBD_AO", value: 2, isUnsigned: true)
!114 = !DIEnumerator(name: "COMEDI_SUBD_DI", value: 3, isUnsigned: true)
!115 = !DIEnumerator(name: "COMEDI_SUBD_DO", value: 4, isUnsigned: true)
!116 = !DIEnumerator(name: "COMEDI_SUBD_DIO", value: 5, isUnsigned: true)
!117 = !DIEnumerator(name: "COMEDI_SUBD_COUNTER", value: 6, isUnsigned: true)
!118 = !DIEnumerator(name: "COMEDI_SUBD_TIMER", value: 7, isUnsigned: true)
!119 = !DIEnumerator(name: "COMEDI_SUBD_MEMORY", value: 8, isUnsigned: true)
!120 = !DIEnumerator(name: "COMEDI_SUBD_CALIB", value: 9, isUnsigned: true)
!121 = !DIEnumerator(name: "COMEDI_SUBD_PROC", value: 10, isUnsigned: true)
!122 = !DIEnumerator(name: "COMEDI_SUBD_SERIAL", value: 11, isUnsigned: true)
!123 = !DIEnumerator(name: "COMEDI_SUBD_PWM", value: 12, isUnsigned: true)
!124 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "error_bits_t", file: !125, line: 192, baseType: !7, size: 32, elements: !126)
!125 = !DIFile(filename: "drivers/staging/comedi/drivers/jr3_pci.h", directory: "/home/lizy2001/genbc/linux")
!126 = !{!127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138}
!127 = !DIEnumerator(name: "fx_sat", value: 1, isUnsigned: true)
!128 = !DIEnumerator(name: "fy_sat", value: 2, isUnsigned: true)
!129 = !DIEnumerator(name: "fz_sat", value: 4, isUnsigned: true)
!130 = !DIEnumerator(name: "mx_sat", value: 8, isUnsigned: true)
!131 = !DIEnumerator(name: "my_sat", value: 16, isUnsigned: true)
!132 = !DIEnumerator(name: "mz_sat", value: 32, isUnsigned: true)
!133 = !DIEnumerator(name: "memory_error", value: 1024, isUnsigned: true)
!134 = !DIEnumerator(name: "sensor_change", value: 2048, isUnsigned: true)
!135 = !DIEnumerator(name: "system_busy", value: 4096, isUnsigned: true)
!136 = !DIEnumerator(name: "cal_crc_bad", value: 8192, isUnsigned: true)
!137 = !DIEnumerator(name: "watch_dog2", value: 16384, isUnsigned: true)
!138 = !DIEnumerator(name: "watch_dog", value: 32768, isUnsigned: true)
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "link_types", file: !125, line: 259, baseType: !7, size: 32, elements: !140)
!140 = !{!141, !142, !143, !144, !145, !146, !147, !148}
!141 = !DIEnumerator(name: "end_x_form", value: 0, isUnsigned: true)
!142 = !DIEnumerator(name: "tx", value: 1, isUnsigned: true)
!143 = !DIEnumerator(name: "ty", value: 2, isUnsigned: true)
!144 = !DIEnumerator(name: "tz", value: 3, isUnsigned: true)
!145 = !DIEnumerator(name: "rx", value: 4, isUnsigned: true)
!146 = !DIEnumerator(name: "ry", value: 5, isUnsigned: true)
!147 = !DIEnumerator(name: "rz", value: 6, isUnsigned: true)
!148 = !DIEnumerator(name: "neg", value: 7, isUnsigned: true)
!149 = !{!150, !151, !156, !158, !161, !162, !163, !164, !165, !181, !139}
!150 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !152, line: 19, baseType: !153)
!152 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !154, line: 24, baseType: !155)
!154 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!155 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !152, line: 18, baseType: !159)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !154, line: 23, baseType: !160)
!160 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!161 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!162 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!163 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jr3_pci_dev_private", file: !3, line: 88, size: 384, elements: !167)
!167 = !{!168, !190}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !166, file: !3, line: 89, baseType: !169, size: 320)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !170, line: 11, size: 320, elements: !171)
!170 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!171 = !{!172, !180, !182, !187}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !169, file: !170, line: 16, baseType: !173, size: 128)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !174, line: 186, size: 128, elements: !175)
!174 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!175 = !{!176, !178}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !173, file: !174, line: 187, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !173, file: !174, line: 187, baseType: !179, size: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !169, file: !170, line: 17, baseType: !181, size: 64, offset: 128)
!181 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !169, file: !170, line: 18, baseType: !183, size: 64, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{null, !186}
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !169, file: !170, line: 19, baseType: !188, size: 32, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !152, line: 21, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !154, line: 27, baseType: !7)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !166, file: !3, line: 90, baseType: !191, size: 64, offset: 320)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_device", file: !193, line: 541, size: 1920, elements: !194)
!193 = !DIFile(filename: "drivers/staging/comedi/drivers/../comedidev.h", directory: "/home/lizy2001/genbc/linux")
!194 = !{!195, !196, !236, !239, !240, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3974, !3975, !3979}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !192, file: !193, line: 542, baseType: !150, size: 32)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !192, file: !193, line: 543, baseType: !197, size: 64, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_driver", file: !193, line: 437, size: 576, elements: !199)
!199 = !{!200, !201, !204, !208, !223, !227, !231, !232, !235}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !198, file: !193, line: 439, baseType: !197, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !198, file: !193, line: 441, baseType: !202, size: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !162)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !198, file: !193, line: 442, baseType: !205, size: 64, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !207, line: 76, flags: DIFlagFwdDecl)
!207 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!208 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !198, file: !193, line: 443, baseType: !209, size: 64, offset: 192)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{!150, !191, !212}
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_devconfig", file: !109, line: 834, size: 1184, elements: !214)
!214 = !{!215, !219}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !213, file: !109, line: 835, baseType: !216, size: 160)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 160, elements: !217)
!217 = !{!218}
!218 = !DISubrange(count: 20)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !213, file: !109, line: 836, baseType: !220, size: 1024, offset: 160)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 1024, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 32)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !198, file: !193, line: 444, baseType: !224, size: 64, offset: 256)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{null, !191}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "auto_attach", scope: !198, file: !193, line: 445, baseType: !228, size: 64, offset: 320)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{!150, !191, !181}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "num_names", scope: !198, file: !193, line: 446, baseType: !7, size: 32, offset: 384)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !198, file: !193, line: 447, baseType: !233, size: 64, offset: 448)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !198, file: !193, line: 448, baseType: !150, size: 32, offset: 512)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "pacer", scope: !192, file: !193, line: 544, baseType: !237, size: 64, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_8254", file: !193, line: 544, flags: DIFlagFwdDecl)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !192, file: !193, line: 545, baseType: !164, size: 64, offset: 192)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !192, file: !193, line: 547, baseType: !241, size: 64, offset: 256)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !243)
!243 = !{!244, !3382, !3383, !3386, !3387, !3438, !3529, !3530, !3531, !3532, !3533, !3542, !3636, !3649, !3652, !3653, !3657, !3659, !3660, !3661, !3665, !3671, !3672, !3675, !3679, !3769, !3770, !3771, !3772, !3773, !3805, !3806, !3807, !3810, !3813, !3814, !3815, !3816}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !242, file: !73, line: 462, baseType: !245, size: 512)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !246, line: 64, size: 512, elements: !247)
!246 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!247 = !{!248, !249, !255, !257, !317, !3233, !3372, !3377, !3378, !3379, !3380, !3381}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !245, file: !246, line: 65, baseType: !202, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !245, file: !246, line: 66, baseType: !250, size: 128, offset: 64)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !174, line: 178, size: 128, elements: !251)
!251 = !{!252, !254}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !250, file: !174, line: 179, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !250, file: !174, line: 179, baseType: !253, size: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !245, file: !246, line: 67, baseType: !256, size: 64, offset: 192)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !245, file: !246, line: 68, baseType: !258, size: 64, offset: 256)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !246, line: 192, size: 704, elements: !260)
!260 = !{!261, !262, !278, !279}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !259, file: !246, line: 193, baseType: !250, size: 128)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !259, file: !246, line: 194, baseType: !263, offset: 128)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !264, line: 83, baseType: !265)
!264 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !264, line: 71, elements: !266)
!266 = !{!267}
!267 = !DIDerivedType(tag: DW_TAG_member, scope: !265, file: !264, line: 72, baseType: !268)
!268 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !265, file: !264, line: 72, elements: !269)
!269 = !{!270}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !268, file: !264, line: 73, baseType: !271)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !264, line: 20, elements: !272)
!272 = !{!273}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !271, file: !264, line: 21, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !275, line: 25, baseType: !276)
!275 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !275, line: 25, elements: !277)
!277 = !{}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !259, file: !246, line: 195, baseType: !245, size: 512, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !259, file: !246, line: 196, baseType: !280, size: 64, offset: 640)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !282)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !246, line: 156, size: 192, elements: !283)
!283 = !{!284, !289, !294}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !282, file: !246, line: 157, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !286)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{!150, !258, !256}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !282, file: !246, line: 158, baseType: !290, size: 64, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!202, !258, !256}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !282, file: !246, line: 159, baseType: !295, size: 64, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !296)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!150, !258, !256, !299}
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !246, line: 148, size: 20736, elements: !301)
!301 = !{!302, !307, !311, !312, !316}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !300, file: !246, line: 149, baseType: !303, size: 192)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 192, elements: !305)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!305 = !{!306}
!306 = !DISubrange(count: 3)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !300, file: !246, line: 150, baseType: !308, size: 4096, offset: 192)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 4096, elements: !309)
!309 = !{!310}
!310 = !DISubrange(count: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !300, file: !246, line: 151, baseType: !150, size: 32, offset: 4288)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !300, file: !246, line: 152, baseType: !313, size: 16384, offset: 4320)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 16384, elements: !314)
!314 = !{!315}
!315 = !DISubrange(count: 2048)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !300, file: !246, line: 153, baseType: !150, size: 32, offset: 20704)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !245, file: !246, line: 69, baseType: !318, size: 64, offset: 320)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !246, line: 138, size: 448, elements: !320)
!320 = !{!321, !325, !352, !354, !3195, !3223, !3227}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !319, file: !246, line: 139, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{null, !256}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !319, file: !246, line: 140, baseType: !326, size: 64, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !328)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !329, line: 230, size: 128, elements: !330)
!329 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!330 = !{!331, !345}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !328, file: !329, line: 231, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!335, !256, !339, !304}
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !174, line: 60, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !337, line: 73, baseType: !338)
!337 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !337, line: 15, baseType: !163)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !329, line: 30, size: 128, elements: !341)
!341 = !{!342, !343}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !340, file: !329, line: 31, baseType: !202, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !340, file: !329, line: 32, baseType: !344, size: 16, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !174, line: 19, baseType: !155)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !328, file: !329, line: 232, baseType: !346, size: 64, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DISubroutineType(types: !348)
!348 = !{!335, !256, !339, !202, !349}
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !174, line: 55, baseType: !350)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !337, line: 72, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !337, line: 16, baseType: !181)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !319, file: !246, line: 141, baseType: !353, size: 64, offset: 128)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !319, file: !246, line: 142, baseType: !355, size: 64, offset: 192)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !358)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !329, line: 84, size: 320, elements: !359)
!359 = !{!360, !361, !365, !3192, !3193}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !358, file: !329, line: 85, baseType: !202, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !358, file: !329, line: 86, baseType: !362, size: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DISubroutineType(types: !364)
!364 = !{!344, !256, !339, !150}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !358, file: !329, line: 88, baseType: !366, size: 64, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DISubroutineType(types: !368)
!368 = !{!344, !256, !369, !150}
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !329, line: 168, size: 448, elements: !371)
!371 = !{!372, !373, !374, !375, !3187, !3188}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !370, file: !329, line: 169, baseType: !340, size: 128)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !370, file: !329, line: 170, baseType: !349, size: 64, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !370, file: !329, line: 171, baseType: !164, size: 64, offset: 192)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !370, file: !329, line: 172, baseType: !376, size: 64, offset: 256)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{!335, !379, !256, !369, !304, !553, !349}
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !381)
!381 = !{!382, !400, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3170, !3171, !3180, !3181, !3182, !3183, !3184, !3185, !3186}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !380, file: !44, line: 920, baseType: !383, size: 128)
!383 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !380, file: !44, line: 917, size: 128, elements: !384)
!384 = !{!385, !391}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !383, file: !44, line: 918, baseType: !386, size: 64)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !387, line: 58, size: 64, elements: !388)
!387 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!388 = !{!389}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !386, file: !387, line: 59, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !383, file: !44, line: 919, baseType: !392, size: 128, align: 64)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !174, line: 216, size: 128, align: 64, elements: !393)
!393 = !{!394, !396}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !392, file: !174, line: 217, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !392, file: !174, line: 218, baseType: !397, size: 64, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DISubroutineType(types: !399)
!399 = !{null, !395}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !380, file: !44, line: 921, baseType: !401, size: 128, offset: 128)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !402, line: 8, size: 128, elements: !403)
!402 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!403 = !{!404, !408}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !401, file: !402, line: 9, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !407, line: 18, flags: DIFlagFwdDecl)
!407 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!408 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !401, file: !402, line: 10, baseType: !409, size: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !407, line: 89, size: 1536, elements: !411)
!411 = !{!412, !413, !423, !431, !432, !450, !3120, !3122, !3134, !3135, !3136, !3137, !3138, !3144, !3145, !3146}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !410, file: !407, line: 91, baseType: !7, size: 32)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !410, file: !407, line: 92, baseType: !414, size: 32, offset: 32)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !415, line: 277, baseType: !416)
!415 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !415, line: 277, size: 32, elements: !417)
!417 = !{!418}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !416, file: !415, line: 277, baseType: !419, size: 32)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !415, line: 70, baseType: !420)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !415, line: 65, size: 32, elements: !421)
!421 = !{!422}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !420, file: !415, line: 66, baseType: !7, size: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !410, file: !407, line: 93, baseType: !424, size: 128, offset: 64)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !425, line: 38, size: 128, elements: !426)
!425 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!426 = !{!427, !429}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !424, file: !425, line: 39, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !424, file: !425, line: 39, baseType: !430, size: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !410, file: !407, line: 94, baseType: !409, size: 64, offset: 192)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !410, file: !407, line: 95, baseType: !433, size: 128, offset: 256)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !407, line: 47, size: 128, elements: !434)
!434 = !{!435, !447}
!435 = !DIDerivedType(tag: DW_TAG_member, scope: !433, file: !407, line: 48, baseType: !436, size: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !433, file: !407, line: 48, size: 64, elements: !437)
!437 = !{!438, !443}
!438 = !DIDerivedType(tag: DW_TAG_member, scope: !436, file: !407, line: 49, baseType: !439, size: 64)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !436, file: !407, line: 49, size: 64, elements: !440)
!440 = !{!441, !442}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !439, file: !407, line: 50, baseType: !188, size: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !439, file: !407, line: 50, baseType: !188, size: 32, offset: 32)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !436, file: !407, line: 52, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !152, line: 23, baseType: !445)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !154, line: 31, baseType: !446)
!446 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !433, file: !407, line: 54, baseType: !448, size: 64, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !410, file: !407, line: 96, baseType: !451, size: 64, offset: 384)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !453)
!453 = !{!454, !455, !456, !464, !471, !472, !620, !2831, !2832, !2833, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !3096, !3104, !3105, !3106, !3116, !3117, !3118, !3119}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !452, file: !44, line: 611, baseType: !344, size: 16)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !452, file: !44, line: 612, baseType: !155, size: 16, offset: 16)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !452, file: !44, line: 613, baseType: !457, size: 32, offset: 32)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !458, line: 23, baseType: !459)
!458 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !458, line: 21, size: 32, elements: !460)
!460 = !{!461}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !459, file: !458, line: 22, baseType: !462, size: 32)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !174, line: 32, baseType: !463)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !337, line: 49, baseType: !7)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !452, file: !44, line: 614, baseType: !465, size: 32, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !458, line: 28, baseType: !466)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !458, line: 26, size: 32, elements: !467)
!467 = !{!468}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !466, file: !458, line: 27, baseType: !469, size: 32)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !174, line: 33, baseType: !470)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !337, line: 50, baseType: !7)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !452, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !452, file: !44, line: 622, baseType: !473, size: 64, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !475)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !476)
!476 = !{!477, !481, !494, !498, !504, !508, !514, !518, !522, !526, !530, !531, !537, !541, !567, !596, !600, !606, !611, !615, !616}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !475, file: !44, line: 1865, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DISubroutineType(types: !480)
!480 = !{!409, !451, !409, !7}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !475, file: !44, line: 1866, baseType: !482, size: 64, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!202, !409, !451, !485}
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !487, line: 10, size: 128, elements: !488)
!487 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!488 = !{!489, !493}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !486, file: !487, line: 11, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DISubroutineType(types: !492)
!492 = !{null, !164}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !486, file: !487, line: 12, baseType: !164, size: 64, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !475, file: !44, line: 1867, baseType: !495, size: 64, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!150, !451, !150}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !475, file: !44, line: 1868, baseType: !499, size: 64, offset: 192)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!502, !451, !150}
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !475, file: !44, line: 1870, baseType: !505, size: 64, offset: 256)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{!150, !409, !304, !150}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !475, file: !44, line: 1872, baseType: !509, size: 64, offset: 320)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!150, !451, !409, !344, !512}
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !174, line: 30, baseType: !513)
!513 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !475, file: !44, line: 1873, baseType: !515, size: 64, offset: 384)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{!150, !409, !451, !409}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !475, file: !44, line: 1874, baseType: !519, size: 64, offset: 448)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{!150, !451, !409}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !475, file: !44, line: 1875, baseType: !523, size: 64, offset: 512)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{!150, !451, !409, !202}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !475, file: !44, line: 1876, baseType: !527, size: 64, offset: 576)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!150, !451, !409, !344}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !475, file: !44, line: 1877, baseType: !519, size: 64, offset: 640)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !475, file: !44, line: 1878, baseType: !532, size: 64, offset: 704)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!150, !451, !409, !344, !535}
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !174, line: 16, baseType: !536)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !174, line: 13, baseType: !188)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !475, file: !44, line: 1879, baseType: !538, size: 64, offset: 768)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!150, !451, !409, !451, !409, !7}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !475, file: !44, line: 1881, baseType: !542, size: 64, offset: 832)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{!150, !409, !545}
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !547)
!547 = !{!548, !549, !550, !551, !552, !556, !564, !565, !566}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !546, file: !44, line: 220, baseType: !7, size: 32)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !546, file: !44, line: 221, baseType: !344, size: 16, offset: 32)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !546, file: !44, line: 222, baseType: !457, size: 32, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !546, file: !44, line: 223, baseType: !465, size: 32, offset: 96)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !546, file: !44, line: 224, baseType: !553, size: 64, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !174, line: 46, baseType: !554)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !337, line: 88, baseType: !555)
!555 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !546, file: !44, line: 225, baseType: !557, size: 128, offset: 192)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !558, line: 13, size: 128, elements: !559)
!558 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!559 = !{!560, !563}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !557, file: !558, line: 14, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !558, line: 8, baseType: !562)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !154, line: 30, baseType: !555)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !557, file: !558, line: 15, baseType: !163, size: 64, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !546, file: !44, line: 226, baseType: !557, size: 128, offset: 320)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !546, file: !44, line: 227, baseType: !557, size: 128, offset: 448)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !546, file: !44, line: 234, baseType: !379, size: 64, offset: 576)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !475, file: !44, line: 1882, baseType: !568, size: 64, offset: 896)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!150, !571, !573, !188, !7}
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !401)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !575, line: 22, size: 1152, elements: !576)
!575 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!576 = !{!577, !578, !579, !580, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !574, file: !575, line: 23, baseType: !188, size: 32)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !574, file: !575, line: 24, baseType: !344, size: 16, offset: 32)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !574, file: !575, line: 25, baseType: !7, size: 32, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !574, file: !575, line: 26, baseType: !581, size: 32, offset: 96)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !174, line: 104, baseType: !188)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !574, file: !575, line: 27, baseType: !444, size: 64, offset: 128)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !574, file: !575, line: 28, baseType: !444, size: 64, offset: 192)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !574, file: !575, line: 37, baseType: !444, size: 64, offset: 256)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !574, file: !575, line: 38, baseType: !535, size: 32, offset: 320)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !574, file: !575, line: 39, baseType: !535, size: 32, offset: 352)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !574, file: !575, line: 40, baseType: !457, size: 32, offset: 384)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !574, file: !575, line: 41, baseType: !465, size: 32, offset: 416)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !574, file: !575, line: 42, baseType: !553, size: 64, offset: 448)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !574, file: !575, line: 43, baseType: !557, size: 128, offset: 512)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !574, file: !575, line: 44, baseType: !557, size: 128, offset: 640)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !574, file: !575, line: 45, baseType: !557, size: 128, offset: 768)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !574, file: !575, line: 46, baseType: !557, size: 128, offset: 896)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !574, file: !575, line: 47, baseType: !444, size: 64, offset: 1024)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !574, file: !575, line: 48, baseType: !444, size: 64, offset: 1088)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !475, file: !44, line: 1883, baseType: !597, size: 64, offset: 960)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DISubroutineType(types: !599)
!599 = !{!335, !409, !304, !349}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !475, file: !44, line: 1884, baseType: !601, size: 64, offset: 1024)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!150, !451, !604, !444, !444}
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !475, file: !44, line: 1886, baseType: !607, size: 64, offset: 1088)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DISubroutineType(types: !609)
!609 = !{!150, !451, !610, !150}
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !475, file: !44, line: 1887, baseType: !612, size: 64, offset: 1152)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DISubroutineType(types: !614)
!614 = !{!150, !451, !409, !379, !7, !344}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !475, file: !44, line: 1890, baseType: !527, size: 64, offset: 1216)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !475, file: !44, line: 1891, baseType: !617, size: 64, offset: 1280)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{!150, !451, !502, !150}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !452, file: !44, line: 623, baseType: !621, size: 64, offset: 192)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !623)
!623 = !{!624, !625, !626, !627, !628, !629, !670, !2438, !2520, !2603, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2619, !2623, !2624, !2627, !2628, !2631, !2632, !2633, !2674, !2701, !2702, !2703, !2704, !2705, !2706, !2709, !2711, !2718, !2719, !2721, !2722, !2723, !2782, !2783, !2798, !2799, !2800, !2801, !2802, !2805, !2806, !2807, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !622, file: !44, line: 1417, baseType: !250, size: 128)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !622, file: !44, line: 1418, baseType: !535, size: 32, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !622, file: !44, line: 1419, baseType: !161, size: 8, offset: 160)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !622, file: !44, line: 1420, baseType: !181, size: 64, offset: 192)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !622, file: !44, line: 1421, baseType: !553, size: 64, offset: 256)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !622, file: !44, line: 1422, baseType: !630, size: 64, offset: 320)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !632)
!632 = !{!633, !634, !635, !642, !646, !650, !654, !655, !656, !660, !663, !664, !665, !667, !668, !669}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !631, file: !44, line: 2229, baseType: !202, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !631, file: !44, line: 2230, baseType: !150, size: 32, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !631, file: !44, line: 2238, baseType: !636, size: 64, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DISubroutineType(types: !638)
!638 = !{!150, !639}
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !641, line: 28, flags: DIFlagFwdDecl)
!641 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!642 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !631, file: !44, line: 2239, baseType: !643, size: 64, offset: 192)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !645)
!645 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !631, file: !44, line: 2240, baseType: !647, size: 64, offset: 256)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{!409, !630, !150, !202, !164}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !631, file: !44, line: 2242, baseType: !651, size: 64, offset: 320)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{null, !621}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !631, file: !44, line: 2243, baseType: !205, size: 64, offset: 384)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !631, file: !44, line: 2244, baseType: !630, size: 64, offset: 448)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !631, file: !44, line: 2245, baseType: !657, size: 64, offset: 512)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !174, line: 182, size: 64, elements: !658)
!658 = !{!659}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !657, file: !174, line: 183, baseType: !177, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !631, file: !44, line: 2247, baseType: !661, offset: 576)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !662, line: 187, elements: !277)
!662 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!663 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !631, file: !44, line: 2248, baseType: !661, offset: 576)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !631, file: !44, line: 2249, baseType: !661, offset: 576)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !631, file: !44, line: 2250, baseType: !666, offset: 576)
!666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !661, elements: !305)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !631, file: !44, line: 2252, baseType: !661, offset: 576)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !631, file: !44, line: 2253, baseType: !661, offset: 576)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !631, file: !44, line: 2254, baseType: !661, offset: 576)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !622, file: !44, line: 1423, baseType: !671, size: 64, offset: 384)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !673)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !674)
!674 = !{!675, !679, !683, !684, !688, !694, !698, !699, !700, !704, !708, !709, !710, !711, !717, !722, !723, !730, !731, !732, !733, !2422, !2437}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !673, file: !44, line: 1936, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DISubroutineType(types: !678)
!678 = !{!451, !621}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !673, file: !44, line: 1937, baseType: !680, size: 64, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{null, !451}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !673, file: !44, line: 1938, baseType: !680, size: 64, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !673, file: !44, line: 1940, baseType: !685, size: 64, offset: 192)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DISubroutineType(types: !687)
!687 = !{null, !451, !150}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !673, file: !44, line: 1941, baseType: !689, size: 64, offset: 256)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{!150, !451, !692}
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !673, file: !44, line: 1942, baseType: !695, size: 64, offset: 320)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{!150, !451}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !673, file: !44, line: 1943, baseType: !680, size: 64, offset: 384)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !673, file: !44, line: 1944, baseType: !651, size: 64, offset: 448)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !673, file: !44, line: 1945, baseType: !701, size: 64, offset: 512)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DISubroutineType(types: !703)
!703 = !{!150, !621, !150}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !673, file: !44, line: 1946, baseType: !705, size: 64, offset: 576)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DISubroutineType(types: !707)
!707 = !{!150, !621}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !673, file: !44, line: 1947, baseType: !705, size: 64, offset: 640)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !673, file: !44, line: 1948, baseType: !705, size: 64, offset: 704)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !673, file: !44, line: 1949, baseType: !705, size: 64, offset: 768)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !673, file: !44, line: 1950, baseType: !712, size: 64, offset: 832)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DISubroutineType(types: !714)
!714 = !{!150, !409, !715}
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !673, file: !44, line: 1951, baseType: !718, size: 64, offset: 896)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{!150, !621, !721, !304}
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !673, file: !44, line: 1952, baseType: !651, size: 64, offset: 960)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !673, file: !44, line: 1954, baseType: !724, size: 64, offset: 1024)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{!150, !727, !409}
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !729, line: 539, flags: DIFlagFwdDecl)
!729 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!730 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !673, file: !44, line: 1955, baseType: !724, size: 64, offset: 1088)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !673, file: !44, line: 1956, baseType: !724, size: 64, offset: 1152)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !673, file: !44, line: 1957, baseType: !724, size: 64, offset: 1216)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !673, file: !44, line: 1963, baseType: !734, size: 64, offset: 1280)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!150, !621, !737, !760}
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !739, line: 68, size: 512, align: 128, elements: !740)
!739 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!740 = !{!741, !742, !2414, !2421}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !738, file: !739, line: 69, baseType: !181, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, scope: !738, file: !739, line: 77, baseType: !743, size: 320, offset: 64)
!743 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !738, file: !739, line: 77, size: 320, elements: !744)
!744 = !{!745, !931, !936, !964, !972, !978, !2345, !2413}
!745 = !DIDerivedType(tag: DW_TAG_member, scope: !743, file: !739, line: 78, baseType: !746, size: 320)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !743, file: !739, line: 78, size: 320, elements: !747)
!747 = !{!748, !749, !929, !930}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !746, file: !739, line: 84, baseType: !250, size: 128)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !746, file: !739, line: 86, baseType: !750, size: 64, offset: 128)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !752)
!752 = !{!753, !754, !762, !763, !768, !783, !799, !800, !801, !802, !922, !923, !926, !927, !928}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !751, file: !44, line: 452, baseType: !451, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !751, file: !44, line: 453, baseType: !755, size: 128, offset: 64)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !756, line: 292, size: 128, elements: !757)
!756 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!757 = !{!758, !759, !761}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !755, file: !756, line: 293, baseType: !263)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !755, file: !756, line: 295, baseType: !760, size: 32)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !174, line: 148, baseType: !7)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !755, file: !756, line: 296, baseType: !164, size: 64, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !751, file: !44, line: 454, baseType: !760, size: 32, offset: 192)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !751, file: !44, line: 455, baseType: !764, size: 32, offset: 224)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !174, line: 168, baseType: !765)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !174, line: 166, size: 32, elements: !766)
!766 = !{!767}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !765, file: !174, line: 167, baseType: !150, size: 32)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !751, file: !44, line: 460, baseType: !769, size: 128, offset: 256)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !770, line: 125, size: 128, elements: !771)
!770 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!771 = !{!772, !782}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !769, file: !770, line: 126, baseType: !773, size: 64)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !770, line: 31, size: 64, elements: !774)
!774 = !{!775}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !773, file: !770, line: 32, baseType: !776, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !770, line: 24, size: 192, align: 64, elements: !778)
!778 = !{!779, !780, !781}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !777, file: !770, line: 25, baseType: !181, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !777, file: !770, line: 26, baseType: !776, size: 64, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !777, file: !770, line: 27, baseType: !776, size: 64, offset: 128)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !769, file: !770, line: 127, baseType: !776, size: 64, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !751, file: !44, line: 461, baseType: !784, size: 256, offset: 384)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !785, line: 35, size: 256, elements: !786)
!785 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!786 = !{!787, !795, !796, !798}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !784, file: !785, line: 36, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !789, line: 13, baseType: !790)
!789 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !174, line: 175, baseType: !791)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !174, line: 173, size: 64, elements: !792)
!792 = !{!793}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !791, file: !174, line: 174, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !152, line: 22, baseType: !562)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !784, file: !785, line: 42, baseType: !788, size: 64, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !784, file: !785, line: 46, baseType: !797, offset: 128)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !264, line: 29, baseType: !271)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !784, file: !785, line: 47, baseType: !250, size: 128, offset: 128)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !751, file: !44, line: 462, baseType: !181, size: 64, offset: 640)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !751, file: !44, line: 463, baseType: !181, size: 64, offset: 704)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !751, file: !44, line: 464, baseType: !181, size: 64, offset: 768)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !751, file: !44, line: 465, baseType: !803, size: 64, offset: 832)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !805)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !806)
!806 = !{!807, !811, !815, !819, !823, !827, !833, !839, !843, !848, !852, !856, !860, !886, !890, !896, !897, !898, !902, !907, !911, !918}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !805, file: !44, line: 368, baseType: !808, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{!150, !737, !692}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !805, file: !44, line: 369, baseType: !812, size: 64, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{!150, !379, !737}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !805, file: !44, line: 372, baseType: !816, size: 64, offset: 128)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{!150, !750, !692}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !805, file: !44, line: 375, baseType: !820, size: 64, offset: 192)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{!150, !737}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !805, file: !44, line: 381, baseType: !824, size: 64, offset: 256)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{!150, !379, !750, !253, !7}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !805, file: !44, line: 383, baseType: !828, size: 64, offset: 320)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{null, !831}
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !805, file: !44, line: 385, baseType: !834, size: 64, offset: 384)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{!150, !379, !750, !553, !7, !7, !837, !838}
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !805, file: !44, line: 388, baseType: !840, size: 64, offset: 448)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{!150, !379, !750, !553, !7, !7, !737, !164}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !805, file: !44, line: 393, baseType: !844, size: 64, offset: 512)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DISubroutineType(types: !846)
!846 = !{!847, !750, !847}
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !174, line: 125, baseType: !444)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !805, file: !44, line: 394, baseType: !849, size: 64, offset: 576)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{null, !737, !7, !7}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !805, file: !44, line: 395, baseType: !853, size: 64, offset: 640)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!150, !737, !760}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !805, file: !44, line: 396, baseType: !857, size: 64, offset: 704)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{null, !737}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !805, file: !44, line: 397, baseType: !861, size: 64, offset: 768)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{!335, !864, !884}
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !866)
!866 = !{!867, !868, !869, !873, !874, !875, !876, !877}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !865, file: !44, line: 321, baseType: !379, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !865, file: !44, line: 326, baseType: !553, size: 64, offset: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !865, file: !44, line: 327, baseType: !870, size: 64, offset: 128)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{null, !864, !163, !163}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !865, file: !44, line: 328, baseType: !164, size: 64, offset: 192)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !865, file: !44, line: 329, baseType: !150, size: 32, offset: 256)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !865, file: !44, line: 330, baseType: !151, size: 16, offset: 288)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !865, file: !44, line: 331, baseType: !151, size: 16, offset: 304)
!877 = !DIDerivedType(tag: DW_TAG_member, scope: !865, file: !44, line: 332, baseType: !878, size: 64, offset: 320)
!878 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !865, file: !44, line: 332, size: 64, elements: !879)
!879 = !{!880, !881}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !878, file: !44, line: 333, baseType: !7, size: 32)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !878, file: !44, line: 334, baseType: !882, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !805, file: !44, line: 402, baseType: !887, size: 64, offset: 832)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DISubroutineType(types: !889)
!889 = !{!150, !750, !737, !737, !5}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !805, file: !44, line: 404, baseType: !891, size: 64, offset: 896)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{!512, !737, !894}
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !895, line: 305, baseType: !7)
!895 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!896 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !805, file: !44, line: 405, baseType: !857, size: 64, offset: 960)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !805, file: !44, line: 406, baseType: !820, size: 64, offset: 1024)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !805, file: !44, line: 407, baseType: !899, size: 64, offset: 1088)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DISubroutineType(types: !901)
!901 = !{!150, !737, !181, !181}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !805, file: !44, line: 409, baseType: !903, size: 64, offset: 1152)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DISubroutineType(types: !905)
!905 = !{null, !737, !906, !906}
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !805, file: !44, line: 410, baseType: !908, size: 64, offset: 1216)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DISubroutineType(types: !910)
!910 = !{!150, !750, !737}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !805, file: !44, line: 413, baseType: !912, size: 64, offset: 1280)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DISubroutineType(types: !914)
!914 = !{!150, !915, !379, !917}
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !805, file: !44, line: 415, baseType: !919, size: 64, offset: 1344)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DISubroutineType(types: !921)
!921 = !{null, !379}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !751, file: !44, line: 466, baseType: !181, size: 64, offset: 896)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !751, file: !44, line: 467, baseType: !924, size: 32, offset: 960)
!924 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !925, line: 8, baseType: !188)
!925 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!926 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !751, file: !44, line: 468, baseType: !263, offset: 992)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !751, file: !44, line: 469, baseType: !250, size: 128, offset: 1024)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !751, file: !44, line: 470, baseType: !164, size: 64, offset: 1152)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !746, file: !739, line: 87, baseType: !181, size: 64, offset: 192)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !746, file: !739, line: 94, baseType: !181, size: 64, offset: 256)
!931 = !DIDerivedType(tag: DW_TAG_member, scope: !743, file: !739, line: 96, baseType: !932, size: 64)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !743, file: !739, line: 96, size: 64, elements: !933)
!933 = !{!934}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !932, file: !739, line: 101, baseType: !935, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !174, line: 143, baseType: !444)
!936 = !DIDerivedType(tag: DW_TAG_member, scope: !743, file: !739, line: 103, baseType: !937, size: 320)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !743, file: !739, line: 103, size: 320, elements: !938)
!938 = !{!939, !949, !952, !953}
!939 = !DIDerivedType(tag: DW_TAG_member, scope: !937, file: !739, line: 104, baseType: !940, size: 128)
!940 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !937, file: !739, line: 104, size: 128, elements: !941)
!941 = !{!942, !943}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !940, file: !739, line: 105, baseType: !250, size: 128)
!943 = !DIDerivedType(tag: DW_TAG_member, scope: !940, file: !739, line: 106, baseType: !944, size: 128)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !940, file: !739, line: 106, size: 128, elements: !945)
!945 = !{!946, !947, !948}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !944, file: !739, line: 107, baseType: !737, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !944, file: !739, line: 109, baseType: !150, size: 32, offset: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !944, file: !739, line: 110, baseType: !150, size: 32, offset: 96)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !937, file: !739, line: 117, baseType: !950, size: 64, offset: 128)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !739, line: 117, flags: DIFlagFwdDecl)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !937, file: !739, line: 119, baseType: !164, size: 64, offset: 192)
!953 = !DIDerivedType(tag: DW_TAG_member, scope: !937, file: !739, line: 120, baseType: !954, size: 64, offset: 256)
!954 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !937, file: !739, line: 120, size: 64, elements: !955)
!955 = !{!956, !957, !958}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !954, file: !739, line: 121, baseType: !164, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !954, file: !739, line: 122, baseType: !181, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, scope: !954, file: !739, line: 123, baseType: !959, size: 32)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !954, file: !739, line: 123, size: 32, elements: !960)
!960 = !{!961, !962, !963}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !959, file: !739, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !959, file: !739, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !959, file: !739, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!964 = !DIDerivedType(tag: DW_TAG_member, scope: !743, file: !739, line: 130, baseType: !965, size: 192)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !743, file: !739, line: 130, size: 192, elements: !966)
!966 = !{!967, !968, !969, !970, !971}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !965, file: !739, line: 131, baseType: !181, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !965, file: !739, line: 134, baseType: !161, size: 8, offset: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !965, file: !739, line: 135, baseType: !161, size: 8, offset: 72)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !965, file: !739, line: 136, baseType: !764, size: 32, offset: 96)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !965, file: !739, line: 137, baseType: !7, size: 32, offset: 128)
!972 = !DIDerivedType(tag: DW_TAG_member, scope: !743, file: !739, line: 139, baseType: !973, size: 256)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !743, file: !739, line: 139, size: 256, elements: !974)
!974 = !{!975, !976, !977}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !973, file: !739, line: 140, baseType: !181, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !973, file: !739, line: 141, baseType: !764, size: 32, offset: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !973, file: !739, line: 143, baseType: !250, size: 128, offset: 128)
!978 = !DIDerivedType(tag: DW_TAG_member, scope: !743, file: !739, line: 145, baseType: !979, size: 256)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !743, file: !739, line: 145, size: 256, elements: !980)
!980 = !{!981, !982, !984, !985, !2344}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !979, file: !739, line: 146, baseType: !181, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !979, file: !739, line: 147, baseType: !983, size: 64, offset: 64)
!983 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !729, line: 509, baseType: !737)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !979, file: !739, line: 148, baseType: !181, size: 64, offset: 128)
!985 = !DIDerivedType(tag: DW_TAG_member, scope: !979, file: !739, line: 149, baseType: !986, size: 64, offset: 192)
!986 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !979, file: !739, line: 149, size: 64, elements: !987)
!987 = !{!988, !2343}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !986, file: !739, line: 150, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !739, line: 388, size: 7296, elements: !991)
!991 = !{!992, !2339}
!992 = !DIDerivedType(tag: DW_TAG_member, scope: !990, file: !739, line: 389, baseType: !993, size: 7296)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !990, file: !739, line: 389, size: 7296, elements: !994)
!994 = !{!995, !1113, !1114, !1115, !1119, !1120, !1121, !1122, !1123, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1164, !1172, !1175, !1218, !1219, !2323, !2324, !2327, !2328, !2329, !2332, !2333, !2334, !2337, !2338}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !993, file: !739, line: 390, baseType: !996, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !739, line: 305, size: 1472, elements: !998)
!998 = !{!999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1013, !1014, !1019, !1020, !1023, !1107, !1108, !1109, !1110, !1111}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !997, file: !739, line: 308, baseType: !181, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !997, file: !739, line: 309, baseType: !181, size: 64, offset: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !997, file: !739, line: 313, baseType: !996, size: 64, offset: 128)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !997, file: !739, line: 313, baseType: !996, size: 64, offset: 192)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !997, file: !739, line: 315, baseType: !777, size: 192, align: 64, offset: 256)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !997, file: !739, line: 323, baseType: !181, size: 64, offset: 448)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !997, file: !739, line: 327, baseType: !989, size: 64, offset: 512)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !997, file: !739, line: 333, baseType: !1007, size: 64, offset: 576)
!1007 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !729, line: 284, baseType: !1008)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !729, line: 284, size: 64, elements: !1009)
!1009 = !{!1010}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1008, file: !729, line: 284, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1012, line: 19, baseType: !181)
!1012 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !997, file: !739, line: 334, baseType: !181, size: 64, offset: 640)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !997, file: !739, line: 343, baseType: !1015, size: 256, offset: 704)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !997, file: !739, line: 340, size: 256, elements: !1016)
!1016 = !{!1017, !1018}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1015, file: !739, line: 341, baseType: !777, size: 192, align: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1015, file: !739, line: 342, baseType: !181, size: 64, offset: 192)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !997, file: !739, line: 351, baseType: !250, size: 128, offset: 960)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !997, file: !739, line: 353, baseType: !1021, size: 64, offset: 1088)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !739, line: 353, flags: DIFlagFwdDecl)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !997, file: !739, line: 356, baseType: !1024, size: 64, offset: 1152)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1026)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1027)
!1027 = !{!1028, !1032, !1033, !1037, !1041, !1081, !1085, !1089, !1093, !1094, !1095, !1099, !1103}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1026, file: !14, line: 558, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{null, !996}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1026, file: !14, line: 559, baseType: !1029, size: 64, offset: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1026, file: !14, line: 560, baseType: !1034, size: 64, offset: 128)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!150, !996, !181}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1026, file: !14, line: 561, baseType: !1038, size: 64, offset: 192)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!150, !996}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1026, file: !14, line: 562, baseType: !1042, size: 64, offset: 256)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!1045, !1046}
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !739, line: 682, baseType: !7)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1048)
!1048 = !{!1049, !1050, !1051, !1052, !1053, !1054, !1061, !1068, !1074, !1075, !1076, !1078, !1080}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1047, file: !14, line: 509, baseType: !996, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1047, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1047, file: !14, line: 511, baseType: !760, size: 32, offset: 96)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1047, file: !14, line: 512, baseType: !181, size: 64, offset: 128)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1047, file: !14, line: 513, baseType: !181, size: 64, offset: 192)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1047, file: !14, line: 514, baseType: !1055, size: 64, offset: 256)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !729, line: 385, baseType: !1057)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !729, line: 385, size: 64, elements: !1058)
!1058 = !{!1059}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1057, file: !729, line: 385, baseType: !1060, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1012, line: 15, baseType: !181)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1047, file: !14, line: 516, baseType: !1062, size: 64, offset: 320)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !729, line: 359, baseType: !1064)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !729, line: 359, size: 64, elements: !1065)
!1065 = !{!1066}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1064, file: !729, line: 359, baseType: !1067, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1012, line: 16, baseType: !181)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1047, file: !14, line: 519, baseType: !1069, size: 64, offset: 384)
!1069 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1012, line: 21, baseType: !1070)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1012, line: 21, size: 64, elements: !1071)
!1071 = !{!1072}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1070, file: !1012, line: 21, baseType: !1073, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1012, line: 14, baseType: !181)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1047, file: !14, line: 521, baseType: !737, size: 64, offset: 448)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1047, file: !14, line: 522, baseType: !737, size: 64, offset: 512)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1047, file: !14, line: 528, baseType: !1077, size: 64, offset: 576)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1047, file: !14, line: 532, baseType: !1079, size: 64, offset: 640)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1047, file: !14, line: 536, baseType: !983, size: 64, offset: 704)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1026, file: !14, line: 563, baseType: !1082, size: 64, offset: 320)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!1045, !1046, !13}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1026, file: !14, line: 565, baseType: !1086, size: 64, offset: 384)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{null, !1046, !181, !181}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1026, file: !14, line: 567, baseType: !1090, size: 64, offset: 448)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!181, !996}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1026, file: !14, line: 571, baseType: !1042, size: 64, offset: 512)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1026, file: !14, line: 574, baseType: !1042, size: 64, offset: 576)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1026, file: !14, line: 579, baseType: !1096, size: 64, offset: 640)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!150, !996, !181, !164, !150, !150}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1026, file: !14, line: 585, baseType: !1100, size: 64, offset: 704)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!202, !996}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1026, file: !14, line: 615, baseType: !1104, size: 64, offset: 768)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!737, !996, !181}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !997, file: !739, line: 359, baseType: !181, size: 64, offset: 1216)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !997, file: !739, line: 361, baseType: !379, size: 64, offset: 1280)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !997, file: !739, line: 362, baseType: !164, size: 64, offset: 1344)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !997, file: !739, line: 365, baseType: !788, size: 64, offset: 1408)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !997, file: !739, line: 373, baseType: !1112, offset: 1472)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !739, line: 296, elements: !277)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !993, file: !739, line: 391, baseType: !773, size: 64, offset: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !993, file: !739, line: 392, baseType: !444, size: 64, offset: 128)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !993, file: !739, line: 394, baseType: !1116, size: 64, offset: 192)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{!181, !379, !181, !181, !181, !181}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !993, file: !739, line: 398, baseType: !181, size: 64, offset: 256)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !993, file: !739, line: 399, baseType: !181, size: 64, offset: 320)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !993, file: !739, line: 405, baseType: !181, size: 64, offset: 384)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !993, file: !739, line: 406, baseType: !181, size: 64, offset: 448)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !993, file: !739, line: 407, baseType: !1124, size: 64, offset: 512)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !729, line: 286, baseType: !1126)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !729, line: 286, size: 64, elements: !1127)
!1127 = !{!1128}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1126, file: !729, line: 286, baseType: !1129, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1012, line: 18, baseType: !181)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !993, file: !739, line: 416, baseType: !764, size: 32, offset: 576)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !993, file: !739, line: 428, baseType: !764, size: 32, offset: 608)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !993, file: !739, line: 437, baseType: !764, size: 32, offset: 640)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !993, file: !739, line: 447, baseType: !764, size: 32, offset: 672)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !993, file: !739, line: 450, baseType: !788, size: 64, offset: 704)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !993, file: !739, line: 452, baseType: !150, size: 32, offset: 768)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !993, file: !739, line: 454, baseType: !263, offset: 800)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !993, file: !739, line: 457, baseType: !784, size: 256, offset: 832)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !993, file: !739, line: 459, baseType: !250, size: 128, offset: 1088)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !993, file: !739, line: 466, baseType: !181, size: 64, offset: 1216)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !993, file: !739, line: 467, baseType: !181, size: 64, offset: 1280)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !993, file: !739, line: 469, baseType: !181, size: 64, offset: 1344)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !993, file: !739, line: 470, baseType: !181, size: 64, offset: 1408)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !993, file: !739, line: 471, baseType: !790, size: 64, offset: 1472)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !993, file: !739, line: 472, baseType: !181, size: 64, offset: 1536)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !993, file: !739, line: 473, baseType: !181, size: 64, offset: 1600)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !993, file: !739, line: 474, baseType: !181, size: 64, offset: 1664)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !993, file: !739, line: 475, baseType: !181, size: 64, offset: 1728)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !993, file: !739, line: 477, baseType: !263, offset: 1792)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !993, file: !739, line: 478, baseType: !181, size: 64, offset: 1792)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !993, file: !739, line: 478, baseType: !181, size: 64, offset: 1856)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !993, file: !739, line: 478, baseType: !181, size: 64, offset: 1920)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !993, file: !739, line: 478, baseType: !181, size: 64, offset: 1984)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !993, file: !739, line: 479, baseType: !181, size: 64, offset: 2048)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !993, file: !739, line: 479, baseType: !181, size: 64, offset: 2112)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !993, file: !739, line: 479, baseType: !181, size: 64, offset: 2176)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !993, file: !739, line: 480, baseType: !181, size: 64, offset: 2240)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !993, file: !739, line: 480, baseType: !181, size: 64, offset: 2304)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !993, file: !739, line: 480, baseType: !181, size: 64, offset: 2368)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !993, file: !739, line: 480, baseType: !181, size: 64, offset: 2432)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !993, file: !739, line: 482, baseType: !1161, size: 2816, offset: 2496)
!1161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 2816, elements: !1162)
!1162 = !{!1163}
!1163 = !DISubrange(count: 44)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !993, file: !739, line: 488, baseType: !1165, size: 256, offset: 5312)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1166, line: 60, size: 256, elements: !1167)
!1166 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1167 = !{!1168}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1165, file: !1166, line: 61, baseType: !1169, size: 256)
!1169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !788, size: 256, elements: !1170)
!1170 = !{!1171}
!1171 = !DISubrange(count: 4)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !993, file: !739, line: 490, baseType: !1173, size: 64, offset: 5568)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !739, line: 490, flags: DIFlagFwdDecl)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !993, file: !739, line: 493, baseType: !1176, size: 896, offset: 5632)
!1176 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1177, line: 53, baseType: !1178)
!1177 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1177, line: 13, size: 896, elements: !1179)
!1179 = !{!1180, !1181, !1182, !1183, !1186, !1187, !1194, !1195, !1215, !1216, !1217}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1178, file: !1177, line: 18, baseType: !444, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1178, file: !1177, line: 28, baseType: !790, size: 64, offset: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1178, file: !1177, line: 31, baseType: !784, size: 256, offset: 128)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1178, file: !1177, line: 32, baseType: !1184, size: 64, offset: 384)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1177, line: 32, flags: DIFlagFwdDecl)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1178, file: !1177, line: 37, baseType: !155, size: 16, offset: 448)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1178, file: !1177, line: 40, baseType: !1188, size: 192, offset: 512)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1189, line: 53, size: 192, elements: !1190)
!1189 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1190 = !{!1191, !1192, !1193}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1188, file: !1189, line: 54, baseType: !788, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1188, file: !1189, line: 55, baseType: !263, offset: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1188, file: !1189, line: 59, baseType: !250, size: 128, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1178, file: !1177, line: 41, baseType: !164, size: 64, offset: 704)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1178, file: !1177, line: 42, baseType: !1196, size: 64, offset: 768)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1198)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1199, line: 13, size: 896, elements: !1200)
!1199 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1200 = !{!1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1198, file: !1199, line: 14, baseType: !164, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1198, file: !1199, line: 15, baseType: !181, size: 64, offset: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1198, file: !1199, line: 17, baseType: !181, size: 64, offset: 128)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1198, file: !1199, line: 17, baseType: !181, size: 64, offset: 192)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1198, file: !1199, line: 19, baseType: !163, size: 64, offset: 256)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1198, file: !1199, line: 21, baseType: !163, size: 64, offset: 320)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1198, file: !1199, line: 22, baseType: !163, size: 64, offset: 384)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1198, file: !1199, line: 23, baseType: !163, size: 64, offset: 448)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1198, file: !1199, line: 24, baseType: !163, size: 64, offset: 512)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1198, file: !1199, line: 25, baseType: !163, size: 64, offset: 576)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1198, file: !1199, line: 26, baseType: !163, size: 64, offset: 640)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1198, file: !1199, line: 27, baseType: !163, size: 64, offset: 704)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1198, file: !1199, line: 28, baseType: !163, size: 64, offset: 768)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1198, file: !1199, line: 29, baseType: !163, size: 64, offset: 832)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1178, file: !1177, line: 44, baseType: !764, size: 32, offset: 832)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1178, file: !1177, line: 50, baseType: !151, size: 16, offset: 864)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1178, file: !1177, line: 51, baseType: !158, size: 16, offset: 880)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !993, file: !739, line: 495, baseType: !181, size: 64, offset: 6528)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !993, file: !739, line: 497, baseType: !1220, size: 64, offset: 6592)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !739, line: 381, size: 384, elements: !1222)
!1222 = !{!1223, !1224, !2322}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1221, file: !739, line: 382, baseType: !764, size: 32)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1221, file: !739, line: 383, baseType: !1225, size: 128, offset: 64)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !739, line: 376, size: 128, elements: !1226)
!1226 = !{!1227, !2320}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1225, file: !739, line: 377, baseType: !1228, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1230, line: 640, size: 48640, elements: !1231)
!1230 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1231 = !{!1232, !1238, !1240, !1241, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1258, !1276, !1287, !1372, !1373, !1374, !1385, !1386, !1388, !1389, !1390, !1391, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1470, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1508, !1510, !1511, !1512, !1524, !1525, !1526, !1527, !1528, !1529, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1553, !1558, !1742, !1743, !1744, !1745, !1749, !1752, !1755, !1758, !1761, !1765, !1866, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1912, !1913, !1914, !1915, !1916, !1921, !1922, !1923, !1926, !1927, !1930, !1933, !1936, !1939, !1982, !1985, !1986, !2065, !2066, !2069, !2070, !2073, !2074, !2075, !2079, !2080, !2081, !2094, !2095, !2096, !2106, !2111, !2114, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1229, file: !1230, line: 646, baseType: !1233, size: 128)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1234, line: 56, size: 128, elements: !1235)
!1234 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1235 = !{!1236, !1237}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1233, file: !1234, line: 57, baseType: !181, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1233, file: !1234, line: 58, baseType: !188, size: 32, offset: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1229, file: !1230, line: 649, baseType: !1239, size: 64, offset: 128)
!1239 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !163)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1229, file: !1230, line: 657, baseType: !164, size: 64, offset: 192)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1229, file: !1230, line: 658, baseType: !1242, size: 32, offset: 256)
!1242 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1243, line: 113, baseType: !1244)
!1243 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1243, line: 111, size: 32, elements: !1245)
!1245 = !{!1246}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1244, file: !1243, line: 112, baseType: !764, size: 32)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1229, file: !1230, line: 660, baseType: !7, size: 32, offset: 288)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1229, file: !1230, line: 661, baseType: !7, size: 32, offset: 320)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1229, file: !1230, line: 684, baseType: !150, size: 32, offset: 352)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1229, file: !1230, line: 686, baseType: !150, size: 32, offset: 384)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1229, file: !1230, line: 687, baseType: !150, size: 32, offset: 416)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1229, file: !1230, line: 688, baseType: !150, size: 32, offset: 448)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1229, file: !1230, line: 689, baseType: !7, size: 32, offset: 480)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1229, file: !1230, line: 691, baseType: !1255, size: 64, offset: 512)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1257)
!1257 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1230, line: 691, flags: DIFlagFwdDecl)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1229, file: !1230, line: 692, baseType: !1259, size: 832, offset: 576)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1230, line: 451, size: 832, elements: !1260)
!1260 = !{!1261, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1259, file: !1230, line: 453, baseType: !1262, size: 128)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1230, line: 325, size: 128, elements: !1263)
!1263 = !{!1264, !1265}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1262, file: !1230, line: 326, baseType: !181, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1262, file: !1230, line: 327, baseType: !188, size: 32, offset: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1259, file: !1230, line: 454, baseType: !777, size: 192, align: 64, offset: 128)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1259, file: !1230, line: 455, baseType: !250, size: 128, offset: 320)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1259, file: !1230, line: 456, baseType: !7, size: 32, offset: 448)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1259, file: !1230, line: 458, baseType: !444, size: 64, offset: 512)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1259, file: !1230, line: 459, baseType: !444, size: 64, offset: 576)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1259, file: !1230, line: 460, baseType: !444, size: 64, offset: 640)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1259, file: !1230, line: 461, baseType: !444, size: 64, offset: 704)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1259, file: !1230, line: 463, baseType: !444, size: 64, offset: 768)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1259, file: !1230, line: 465, baseType: !1275, offset: 832)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1230, line: 415, elements: !277)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1229, file: !1230, line: 693, baseType: !1277, size: 384, offset: 1408)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1230, line: 489, size: 384, elements: !1278)
!1278 = !{!1279, !1280, !1281, !1282, !1283, !1284, !1285}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1277, file: !1230, line: 490, baseType: !250, size: 128)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1277, file: !1230, line: 491, baseType: !181, size: 64, offset: 128)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1277, file: !1230, line: 492, baseType: !181, size: 64, offset: 192)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1277, file: !1230, line: 493, baseType: !7, size: 32, offset: 256)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1277, file: !1230, line: 494, baseType: !155, size: 16, offset: 288)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1277, file: !1230, line: 495, baseType: !155, size: 16, offset: 304)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1277, file: !1230, line: 497, baseType: !1286, size: 64, offset: 320)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1229, file: !1230, line: 697, baseType: !1288, size: 1792, offset: 1792)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1230, line: 507, size: 1792, elements: !1289)
!1289 = !{!1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1369, !1370}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1288, file: !1230, line: 508, baseType: !777, size: 192, align: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1288, file: !1230, line: 515, baseType: !444, size: 64, offset: 192)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1288, file: !1230, line: 516, baseType: !444, size: 64, offset: 256)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1288, file: !1230, line: 517, baseType: !444, size: 64, offset: 320)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1288, file: !1230, line: 518, baseType: !444, size: 64, offset: 384)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1288, file: !1230, line: 519, baseType: !444, size: 64, offset: 448)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1288, file: !1230, line: 526, baseType: !794, size: 64, offset: 512)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1288, file: !1230, line: 527, baseType: !444, size: 64, offset: 576)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1288, file: !1230, line: 528, baseType: !7, size: 32, offset: 640)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1288, file: !1230, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1288, file: !1230, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1288, file: !1230, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1288, file: !1230, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1288, file: !1230, line: 563, baseType: !1304, size: 512, offset: 704)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1305)
!1305 = !{!1306, !1314, !1315, !1320, !1363, !1366, !1367, !1368}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1304, file: !20, line: 119, baseType: !1307, size: 256)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1308, line: 9, size: 256, elements: !1309)
!1308 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1309 = !{!1310, !1311}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1307, file: !1308, line: 10, baseType: !777, size: 192, align: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1307, file: !1308, line: 11, baseType: !1312, size: 64, offset: 192)
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1313, line: 29, baseType: !794)
!1313 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1304, file: !20, line: 120, baseType: !1312, size: 64, offset: 256)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1304, file: !20, line: 121, baseType: !1316, size: 64, offset: 320)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!19, !1319}
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1304, file: !20, line: 122, baseType: !1321, size: 64, offset: 384)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1323)
!1323 = !{!1324, !1344, !1345, !1348, !1353, !1354, !1358, !1362}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1322, file: !20, line: 160, baseType: !1325, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1327)
!1327 = !{!1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1326, file: !20, line: 215, baseType: !797)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1326, file: !20, line: 216, baseType: !7, size: 32)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1326, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1326, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1326, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1326, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1326, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1326, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1326, file: !20, line: 233, baseType: !1312, size: 64, offset: 128)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1326, file: !20, line: 234, baseType: !1319, size: 64, offset: 192)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1326, file: !20, line: 235, baseType: !1312, size: 64, offset: 256)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1326, file: !20, line: 236, baseType: !1319, size: 64, offset: 320)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1326, file: !20, line: 237, baseType: !1341, size: 4096, offset: 512)
!1341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1322, size: 4096, elements: !1342)
!1342 = !{!1343}
!1343 = !DISubrange(count: 8)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1322, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1322, file: !20, line: 162, baseType: !1346, size: 32, offset: 96)
!1346 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !174, line: 27, baseType: !1347)
!1347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !337, line: 96, baseType: !150)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1322, file: !20, line: 163, baseType: !1349, size: 32, offset: 128)
!1349 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !415, line: 276, baseType: !1350)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !415, line: 276, size: 32, elements: !1351)
!1351 = !{!1352}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1350, file: !415, line: 276, baseType: !419, size: 32)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1322, file: !20, line: 164, baseType: !1319, size: 64, offset: 192)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1322, file: !20, line: 165, baseType: !1355, size: 128, offset: 256)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1308, line: 14, size: 128, elements: !1356)
!1356 = !{!1357}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1355, file: !1308, line: 15, baseType: !769, size: 128)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1322, file: !20, line: 166, baseType: !1359, size: 64, offset: 384)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!1312}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1322, file: !20, line: 167, baseType: !1312, size: 64, offset: 448)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1304, file: !20, line: 123, baseType: !1364, size: 8, offset: 448)
!1364 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !152, line: 17, baseType: !1365)
!1365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !154, line: 21, baseType: !161)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1304, file: !20, line: 124, baseType: !1364, size: 8, offset: 456)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1304, file: !20, line: 125, baseType: !1364, size: 8, offset: 464)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1304, file: !20, line: 126, baseType: !1364, size: 8, offset: 472)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1288, file: !1230, line: 572, baseType: !1304, size: 512, offset: 1216)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1288, file: !1230, line: 580, baseType: !1371, size: 64, offset: 1728)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1229, file: !1230, line: 721, baseType: !7, size: 32, offset: 3584)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1229, file: !1230, line: 722, baseType: !150, size: 32, offset: 3616)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1229, file: !1230, line: 723, baseType: !1375, size: 64, offset: 3648)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1377)
!1377 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1378, line: 17, baseType: !1379)
!1378 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1378, line: 17, size: 64, elements: !1380)
!1380 = !{!1381}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1379, file: !1378, line: 17, baseType: !1382, size: 64)
!1382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 64, elements: !1383)
!1383 = !{!1384}
!1384 = !DISubrange(count: 1)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1229, file: !1230, line: 724, baseType: !1377, size: 64, offset: 3712)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1229, file: !1230, line: 749, baseType: !1387, offset: 3776)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1230, line: 290, elements: !277)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1229, file: !1230, line: 751, baseType: !250, size: 128, offset: 3776)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1229, file: !1230, line: 757, baseType: !989, size: 64, offset: 3904)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1229, file: !1230, line: 758, baseType: !989, size: 64, offset: 3968)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1229, file: !1230, line: 761, baseType: !1392, size: 320, offset: 4032)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1166, line: 34, size: 320, elements: !1393)
!1393 = !{!1394, !1395}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1392, file: !1166, line: 35, baseType: !444, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1392, file: !1166, line: 36, baseType: !1396, size: 256, offset: 64)
!1396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !996, size: 256, elements: !1170)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1229, file: !1230, line: 766, baseType: !150, size: 32, offset: 4352)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1229, file: !1230, line: 767, baseType: !150, size: 32, offset: 4384)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1229, file: !1230, line: 768, baseType: !150, size: 32, offset: 4416)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1229, file: !1230, line: 770, baseType: !150, size: 32, offset: 4448)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1229, file: !1230, line: 772, baseType: !181, size: 64, offset: 4480)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1229, file: !1230, line: 775, baseType: !7, size: 32, offset: 4544)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1229, file: !1230, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1229, file: !1230, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1229, file: !1230, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1229, file: !1230, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1229, file: !1230, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1229, file: !1230, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1229, file: !1230, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1229, file: !1230, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1229, file: !1230, line: 831, baseType: !181, size: 64, offset: 4672)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1229, file: !1230, line: 833, baseType: !1413, size: 384, offset: 4736)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1414)
!1414 = !{!1415, !1420}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1413, file: !25, line: 26, baseType: !1416, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!163, !1419}
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, scope: !1413, file: !25, line: 27, baseType: !1421, size: 320, offset: 64)
!1421 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1413, file: !25, line: 27, size: 320, elements: !1422)
!1422 = !{!1423, !1433, !1460}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1421, file: !25, line: 36, baseType: !1424, size: 320)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1421, file: !25, line: 29, size: 320, elements: !1425)
!1425 = !{!1426, !1428, !1429, !1430, !1431, !1432}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1424, file: !25, line: 30, baseType: !1427, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1424, file: !25, line: 31, baseType: !188, size: 32, offset: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1424, file: !25, line: 32, baseType: !188, size: 32, offset: 96)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1424, file: !25, line: 33, baseType: !188, size: 32, offset: 128)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1424, file: !25, line: 34, baseType: !444, size: 64, offset: 192)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1424, file: !25, line: 35, baseType: !1427, size: 64, offset: 256)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1421, file: !25, line: 46, baseType: !1434, size: 192)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1421, file: !25, line: 38, size: 192, elements: !1435)
!1435 = !{!1436, !1437, !1438, !1459}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1434, file: !25, line: 39, baseType: !1346, size: 32)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1434, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1438 = !DIDerivedType(tag: DW_TAG_member, scope: !1434, file: !25, line: 41, baseType: !1439, size: 64, offset: 64)
!1439 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1434, file: !25, line: 41, size: 64, elements: !1440)
!1440 = !{!1441, !1449}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1439, file: !25, line: 42, baseType: !1442, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1444, line: 7, size: 128, elements: !1445)
!1444 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1445 = !{!1446, !1448}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1443, file: !1444, line: 8, baseType: !1447, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !337, line: 93, baseType: !555)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1443, file: !1444, line: 9, baseType: !555, size: 64, offset: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1439, file: !25, line: 43, baseType: !1450, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1452, line: 7, size: 64, elements: !1453)
!1452 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1453 = !{!1454, !1458}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1451, file: !1452, line: 8, baseType: !1455, size: 32)
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1452, line: 5, baseType: !1456)
!1456 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !152, line: 20, baseType: !1457)
!1457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !154, line: 26, baseType: !150)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1451, file: !1452, line: 9, baseType: !1456, size: 32, offset: 32)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1434, file: !25, line: 45, baseType: !444, size: 64, offset: 128)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1421, file: !25, line: 54, baseType: !1461, size: 256)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1421, file: !25, line: 48, size: 256, elements: !1462)
!1462 = !{!1463, !1466, !1467, !1468, !1469}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1461, file: !25, line: 49, baseType: !1464, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1461, file: !25, line: 50, baseType: !150, size: 32, offset: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1461, file: !25, line: 51, baseType: !150, size: 32, offset: 96)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1461, file: !25, line: 52, baseType: !181, size: 64, offset: 128)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1461, file: !25, line: 53, baseType: !181, size: 64, offset: 192)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1229, file: !1230, line: 835, baseType: !1471, size: 32, offset: 5120)
!1471 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !174, line: 22, baseType: !1472)
!1472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !337, line: 28, baseType: !150)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1229, file: !1230, line: 836, baseType: !1471, size: 32, offset: 5152)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1229, file: !1230, line: 840, baseType: !181, size: 64, offset: 5184)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1229, file: !1230, line: 849, baseType: !1228, size: 64, offset: 5248)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1229, file: !1230, line: 852, baseType: !1228, size: 64, offset: 5312)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1229, file: !1230, line: 857, baseType: !250, size: 128, offset: 5376)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1229, file: !1230, line: 858, baseType: !250, size: 128, offset: 5504)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1229, file: !1230, line: 859, baseType: !1228, size: 64, offset: 5632)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1229, file: !1230, line: 867, baseType: !250, size: 128, offset: 5696)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1229, file: !1230, line: 868, baseType: !250, size: 128, offset: 5824)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1229, file: !1230, line: 871, baseType: !1483, size: 64, offset: 5952)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1485)
!1485 = !{!1486, !1487, !1488, !1489, !1491, !1492, !1499, !1500}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1484, file: !53, line: 61, baseType: !1242, size: 32)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1484, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1484, file: !53, line: 63, baseType: !263, offset: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1484, file: !53, line: 65, baseType: !1490, size: 256, offset: 64)
!1490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !657, size: 256, elements: !1170)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1484, file: !53, line: 66, baseType: !657, size: 64, offset: 320)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1484, file: !53, line: 68, baseType: !1493, size: 128, offset: 384)
!1493 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1494, line: 40, baseType: !1495)
!1494 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1494, line: 36, size: 128, elements: !1496)
!1496 = !{!1497, !1498}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1495, file: !1494, line: 37, baseType: !263)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1495, file: !1494, line: 38, baseType: !250, size: 128)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1484, file: !53, line: 69, baseType: !392, size: 128, align: 64, offset: 512)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1484, file: !53, line: 70, baseType: !1501, size: 128, offset: 640)
!1501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1502, size: 128, elements: !1383)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1503)
!1503 = !{!1504, !1505}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1502, file: !53, line: 55, baseType: !150, size: 32)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1502, file: !53, line: 56, baseType: !1506, size: 64, offset: 64)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1229, file: !1230, line: 872, baseType: !1509, size: 512, offset: 6016)
!1509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 512, elements: !1170)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1229, file: !1230, line: 873, baseType: !250, size: 128, offset: 6528)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1229, file: !1230, line: 874, baseType: !250, size: 128, offset: 6656)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1229, file: !1230, line: 876, baseType: !1513, size: 64, offset: 6784)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1515, line: 26, size: 192, elements: !1516)
!1515 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1516 = !{!1517, !1518}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1514, file: !1515, line: 27, baseType: !7, size: 32)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1514, file: !1515, line: 28, baseType: !1519, size: 128, offset: 64)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1520, line: 43, size: 128, elements: !1521)
!1520 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1521 = !{!1522, !1523}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1519, file: !1520, line: 44, baseType: !797)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1519, file: !1520, line: 45, baseType: !250, size: 128)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1229, file: !1230, line: 879, baseType: !721, size: 64, offset: 6848)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1229, file: !1230, line: 882, baseType: !721, size: 64, offset: 6912)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1229, file: !1230, line: 884, baseType: !444, size: 64, offset: 6976)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1229, file: !1230, line: 885, baseType: !444, size: 64, offset: 7040)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1229, file: !1230, line: 890, baseType: !444, size: 64, offset: 7104)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1229, file: !1230, line: 891, baseType: !1530, size: 128, offset: 7168)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1230, line: 242, size: 128, elements: !1531)
!1531 = !{!1532, !1533, !1534}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1530, file: !1230, line: 244, baseType: !444, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1530, file: !1230, line: 245, baseType: !444, size: 64, offset: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1530, file: !1230, line: 246, baseType: !797, offset: 128)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1229, file: !1230, line: 900, baseType: !181, size: 64, offset: 7296)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1229, file: !1230, line: 901, baseType: !181, size: 64, offset: 7360)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1229, file: !1230, line: 904, baseType: !444, size: 64, offset: 7424)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1229, file: !1230, line: 907, baseType: !444, size: 64, offset: 7488)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1229, file: !1230, line: 910, baseType: !181, size: 64, offset: 7552)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1229, file: !1230, line: 911, baseType: !181, size: 64, offset: 7616)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1229, file: !1230, line: 914, baseType: !1542, size: 640, offset: 7680)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1543, line: 123, size: 640, elements: !1544)
!1543 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1544 = !{!1545, !1551, !1552}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1542, file: !1543, line: 124, baseType: !1546, size: 576)
!1546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1547, size: 576, elements: !305)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1543, line: 108, size: 192, elements: !1548)
!1548 = !{!1549, !1550}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1547, file: !1543, line: 109, baseType: !444, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1547, file: !1543, line: 110, baseType: !1355, size: 128, offset: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1542, file: !1543, line: 125, baseType: !7, size: 32, offset: 576)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1542, file: !1543, line: 126, baseType: !7, size: 32, offset: 608)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1229, file: !1230, line: 917, baseType: !1554, size: 192, offset: 8320)
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1543, line: 134, size: 192, elements: !1555)
!1555 = !{!1556, !1557}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1554, file: !1543, line: 135, baseType: !392, size: 128, align: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1554, file: !1543, line: 136, baseType: !7, size: 32, offset: 128)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1229, file: !1230, line: 923, baseType: !1559, size: 64, offset: 8512)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1561)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1562, line: 111, size: 1280, elements: !1563)
!1562 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1563 = !{!1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1583, !1584, !1585, !1586, !1587, !1588, !1695, !1696, !1697, !1698, !1724, !1727, !1737}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1561, file: !1562, line: 112, baseType: !764, size: 32)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1561, file: !1562, line: 120, baseType: !457, size: 32, offset: 32)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1561, file: !1562, line: 121, baseType: !465, size: 32, offset: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1561, file: !1562, line: 122, baseType: !457, size: 32, offset: 96)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1561, file: !1562, line: 123, baseType: !465, size: 32, offset: 128)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1561, file: !1562, line: 124, baseType: !457, size: 32, offset: 160)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1561, file: !1562, line: 125, baseType: !465, size: 32, offset: 192)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1561, file: !1562, line: 126, baseType: !457, size: 32, offset: 224)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1561, file: !1562, line: 127, baseType: !465, size: 32, offset: 256)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1561, file: !1562, line: 128, baseType: !7, size: 32, offset: 288)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1561, file: !1562, line: 129, baseType: !1575, size: 64, offset: 320)
!1575 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1576, line: 26, baseType: !1577)
!1576 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1576, line: 24, size: 64, elements: !1578)
!1578 = !{!1579}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1577, file: !1576, line: 25, baseType: !1580, size: 64)
!1580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 64, elements: !1581)
!1581 = !{!1582}
!1582 = !DISubrange(count: 2)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1561, file: !1562, line: 130, baseType: !1575, size: 64, offset: 384)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1561, file: !1562, line: 131, baseType: !1575, size: 64, offset: 448)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1561, file: !1562, line: 132, baseType: !1575, size: 64, offset: 512)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1561, file: !1562, line: 133, baseType: !1575, size: 64, offset: 576)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1561, file: !1562, line: 135, baseType: !161, size: 8, offset: 640)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1561, file: !1562, line: 137, baseType: !1589, size: 64, offset: 704)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1591, line: 189, size: 1664, elements: !1592)
!1591 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1592 = !{!1593, !1594, !1597, !1602, !1603, !1606, !1607, !1612, !1613, !1614, !1615, !1617, !1618, !1619, !1620, !1621, !1659, !1680}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1590, file: !1591, line: 190, baseType: !1242, size: 32)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1590, file: !1591, line: 191, baseType: !1595, size: 32, offset: 32)
!1595 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1591, line: 28, baseType: !1596)
!1596 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !174, line: 98, baseType: !1456)
!1597 = !DIDerivedType(tag: DW_TAG_member, scope: !1590, file: !1591, line: 192, baseType: !1598, size: 192, offset: 64)
!1598 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1590, file: !1591, line: 192, size: 192, elements: !1599)
!1599 = !{!1600, !1601}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1598, file: !1591, line: 193, baseType: !250, size: 128)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1598, file: !1591, line: 194, baseType: !777, size: 192, align: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1590, file: !1591, line: 199, baseType: !784, size: 256, offset: 256)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1590, file: !1591, line: 200, baseType: !1604, size: 64, offset: 512)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1591, line: 200, flags: DIFlagFwdDecl)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1590, file: !1591, line: 201, baseType: !164, size: 64, offset: 576)
!1607 = !DIDerivedType(tag: DW_TAG_member, scope: !1590, file: !1591, line: 202, baseType: !1608, size: 64, offset: 640)
!1608 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1590, file: !1591, line: 202, size: 64, elements: !1609)
!1609 = !{!1610, !1611}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1608, file: !1591, line: 203, baseType: !561, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1608, file: !1591, line: 204, baseType: !561, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1590, file: !1591, line: 206, baseType: !561, size: 64, offset: 704)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1590, file: !1591, line: 207, baseType: !457, size: 32, offset: 768)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1590, file: !1591, line: 208, baseType: !465, size: 32, offset: 800)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1590, file: !1591, line: 209, baseType: !1616, size: 32, offset: 832)
!1616 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1591, line: 31, baseType: !581)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1590, file: !1591, line: 210, baseType: !155, size: 16, offset: 864)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1590, file: !1591, line: 211, baseType: !155, size: 16, offset: 880)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1590, file: !1591, line: 215, baseType: !160, size: 16, offset: 896)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1590, file: !1591, line: 222, baseType: !181, size: 64, offset: 960)
!1621 = !DIDerivedType(tag: DW_TAG_member, scope: !1590, file: !1591, line: 239, baseType: !1622, size: 320, offset: 1024)
!1622 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1590, file: !1591, line: 239, size: 320, elements: !1623)
!1623 = !{!1624, !1651}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1622, file: !1591, line: 240, baseType: !1625, size: 320)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1591, line: 108, size: 320, elements: !1626)
!1626 = !{!1627, !1628, !1640, !1643, !1650}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1625, file: !1591, line: 110, baseType: !181, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, scope: !1625, file: !1591, line: 111, baseType: !1629, size: 64, offset: 64)
!1629 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1625, file: !1591, line: 111, size: 64, elements: !1630)
!1630 = !{!1631, !1639}
!1631 = !DIDerivedType(tag: DW_TAG_member, scope: !1629, file: !1591, line: 112, baseType: !1632, size: 64)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1629, file: !1591, line: 112, size: 64, elements: !1633)
!1633 = !{!1634, !1635}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1632, file: !1591, line: 114, baseType: !151, size: 16)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1632, file: !1591, line: 115, baseType: !1636, size: 48, offset: 16)
!1636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 48, elements: !1637)
!1637 = !{!1638}
!1638 = !DISubrange(count: 6)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1629, file: !1591, line: 121, baseType: !181, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1625, file: !1591, line: 123, baseType: !1641, size: 64, offset: 128)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1591, line: 96, flags: DIFlagFwdDecl)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1625, file: !1591, line: 124, baseType: !1644, size: 64, offset: 192)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1591, line: 102, size: 192, elements: !1646)
!1646 = !{!1647, !1648, !1649}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1645, file: !1591, line: 103, baseType: !392, size: 128, align: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1645, file: !1591, line: 104, baseType: !1242, size: 32, offset: 128)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1645, file: !1591, line: 105, baseType: !512, size: 8, offset: 160)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1625, file: !1591, line: 125, baseType: !202, size: 64, offset: 256)
!1651 = !DIDerivedType(tag: DW_TAG_member, scope: !1622, file: !1591, line: 241, baseType: !1652, size: 320)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1622, file: !1591, line: 241, size: 320, elements: !1653)
!1653 = !{!1654, !1655, !1656, !1657, !1658}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1652, file: !1591, line: 242, baseType: !181, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1652, file: !1591, line: 243, baseType: !181, size: 64, offset: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1652, file: !1591, line: 244, baseType: !1641, size: 64, offset: 128)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1652, file: !1591, line: 245, baseType: !1644, size: 64, offset: 192)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1652, file: !1591, line: 246, baseType: !304, size: 64, offset: 256)
!1659 = !DIDerivedType(tag: DW_TAG_member, scope: !1590, file: !1591, line: 254, baseType: !1660, size: 256, offset: 1344)
!1660 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1590, file: !1591, line: 254, size: 256, elements: !1661)
!1661 = !{!1662, !1668}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1660, file: !1591, line: 255, baseType: !1663, size: 256)
!1663 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1591, line: 128, size: 256, elements: !1664)
!1664 = !{!1665, !1666}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1663, file: !1591, line: 129, baseType: !164, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1663, file: !1591, line: 130, baseType: !1667, size: 256)
!1667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 256, elements: !1170)
!1668 = !DIDerivedType(tag: DW_TAG_member, scope: !1660, file: !1591, line: 256, baseType: !1669, size: 256)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1660, file: !1591, line: 256, size: 256, elements: !1670)
!1670 = !{!1671, !1672}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1669, file: !1591, line: 258, baseType: !250, size: 128)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1669, file: !1591, line: 259, baseType: !1673, size: 128, offset: 128)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1674, line: 22, size: 128, elements: !1675)
!1674 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1675 = !{!1676, !1679}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1673, file: !1674, line: 23, baseType: !1677, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1674, line: 23, flags: DIFlagFwdDecl)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1673, file: !1674, line: 24, baseType: !181, size: 64, offset: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1590, file: !1591, line: 274, baseType: !1681, size: 64, offset: 1600)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1591, line: 170, size: 192, elements: !1683)
!1683 = !{!1684, !1693, !1694}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1682, file: !1591, line: 171, baseType: !1685, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1591, line: 165, baseType: !1686)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!150, !1589, !1689, !1691, !1589}
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1642)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1663)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1682, file: !1591, line: 172, baseType: !1589, size: 64, offset: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1682, file: !1591, line: 173, baseType: !1641, size: 64, offset: 128)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1561, file: !1562, line: 138, baseType: !1589, size: 64, offset: 768)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1561, file: !1562, line: 139, baseType: !1589, size: 64, offset: 832)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1561, file: !1562, line: 140, baseType: !1589, size: 64, offset: 896)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1561, file: !1562, line: 145, baseType: !1699, size: 64, offset: 960)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1701, line: 13, size: 896, elements: !1702)
!1701 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1702 = !{!1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1700, file: !1701, line: 14, baseType: !1242, size: 32)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1700, file: !1701, line: 15, baseType: !764, size: 32, offset: 32)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1700, file: !1701, line: 16, baseType: !764, size: 32, offset: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1700, file: !1701, line: 21, baseType: !788, size: 64, offset: 128)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1700, file: !1701, line: 27, baseType: !181, size: 64, offset: 192)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1700, file: !1701, line: 28, baseType: !181, size: 64, offset: 256)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1700, file: !1701, line: 29, baseType: !788, size: 64, offset: 320)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1700, file: !1701, line: 32, baseType: !173, size: 128, offset: 384)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1700, file: !1701, line: 33, baseType: !457, size: 32, offset: 512)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1700, file: !1701, line: 37, baseType: !788, size: 64, offset: 576)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1700, file: !1701, line: 44, baseType: !1714, size: 256, offset: 640)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1715, line: 15, size: 256, elements: !1716)
!1715 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1716 = !{!1717, !1718, !1719, !1720, !1721, !1722, !1723}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1714, file: !1715, line: 16, baseType: !797)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1714, file: !1715, line: 18, baseType: !150, size: 32)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1714, file: !1715, line: 19, baseType: !150, size: 32, offset: 32)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1714, file: !1715, line: 20, baseType: !150, size: 32, offset: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1714, file: !1715, line: 21, baseType: !150, size: 32, offset: 96)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1714, file: !1715, line: 22, baseType: !181, size: 64, offset: 128)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1714, file: !1715, line: 23, baseType: !181, size: 64, offset: 192)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1561, file: !1562, line: 146, baseType: !1725, size: 64, offset: 1024)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !458, line: 18, flags: DIFlagFwdDecl)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1561, file: !1562, line: 147, baseType: !1728, size: 64, offset: 1088)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1562, line: 25, size: 64, elements: !1730)
!1730 = !{!1731, !1732, !1733}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1729, file: !1562, line: 26, baseType: !764, size: 32)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1729, file: !1562, line: 27, baseType: !150, size: 32, offset: 32)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1729, file: !1562, line: 28, baseType: !1734, offset: 64)
!1734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !465, elements: !1735)
!1735 = !{!1736}
!1736 = !DISubrange(count: 0)
!1737 = !DIDerivedType(tag: DW_TAG_member, scope: !1561, file: !1562, line: 149, baseType: !1738, size: 128, offset: 1152)
!1738 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1561, file: !1562, line: 149, size: 128, elements: !1739)
!1739 = !{!1740, !1741}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1738, file: !1562, line: 150, baseType: !150, size: 32)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1738, file: !1562, line: 151, baseType: !392, size: 128, align: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1229, file: !1230, line: 926, baseType: !1559, size: 64, offset: 8576)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1229, file: !1230, line: 929, baseType: !1559, size: 64, offset: 8640)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1229, file: !1230, line: 933, baseType: !1589, size: 64, offset: 8704)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1229, file: !1230, line: 943, baseType: !1746, size: 128, offset: 8768)
!1746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 128, elements: !1747)
!1747 = !{!1748}
!1748 = !DISubrange(count: 16)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1229, file: !1230, line: 945, baseType: !1750, size: 64, offset: 8896)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1230, line: 49, flags: DIFlagFwdDecl)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1229, file: !1230, line: 956, baseType: !1753, size: 64, offset: 8960)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1230, line: 45, flags: DIFlagFwdDecl)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1229, file: !1230, line: 959, baseType: !1756, size: 64, offset: 9024)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1230, line: 959, flags: DIFlagFwdDecl)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1229, file: !1230, line: 962, baseType: !1759, size: 64, offset: 9088)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1230, line: 66, flags: DIFlagFwdDecl)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1229, file: !1230, line: 966, baseType: !1762, size: 64, offset: 9152)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1764, line: 35, flags: DIFlagFwdDecl)
!1764 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1229, file: !1230, line: 969, baseType: !1766, size: 64, offset: 9216)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1768, line: 82, size: 7296, elements: !1769)
!1768 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1769 = !{!1770, !1771, !1772, !1773, !1774, !1775, !1776, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1805, !1814, !1815, !1817, !1818, !1819, !1822, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1852, !1853, !1860, !1861, !1862, !1863, !1864, !1865}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1767, file: !1768, line: 83, baseType: !1242, size: 32)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1767, file: !1768, line: 84, baseType: !764, size: 32, offset: 32)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1767, file: !1768, line: 85, baseType: !150, size: 32, offset: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1767, file: !1768, line: 86, baseType: !250, size: 128, offset: 128)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1767, file: !1768, line: 88, baseType: !1493, size: 128, offset: 256)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1767, file: !1768, line: 91, baseType: !1228, size: 64, offset: 384)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1767, file: !1768, line: 94, baseType: !1777, size: 192, offset: 448)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1778, line: 30, size: 192, elements: !1779)
!1778 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1779 = !{!1780, !1781}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1777, file: !1778, line: 31, baseType: !250, size: 128)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1777, file: !1778, line: 32, baseType: !1782, size: 64, offset: 128)
!1782 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1783, line: 25, baseType: !1784)
!1783 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1783, line: 23, size: 64, elements: !1785)
!1785 = !{!1786}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1784, file: !1783, line: 24, baseType: !1382, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1767, file: !1768, line: 97, baseType: !657, size: 64, offset: 640)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1767, file: !1768, line: 100, baseType: !150, size: 32, offset: 704)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1767, file: !1768, line: 106, baseType: !150, size: 32, offset: 736)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1767, file: !1768, line: 107, baseType: !1228, size: 64, offset: 768)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1767, file: !1768, line: 110, baseType: !150, size: 32, offset: 832)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1767, file: !1768, line: 111, baseType: !7, size: 32, offset: 864)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1767, file: !1768, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1767, file: !1768, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1767, file: !1768, line: 128, baseType: !150, size: 32, offset: 928)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1767, file: !1768, line: 129, baseType: !250, size: 128, offset: 960)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1767, file: !1768, line: 132, baseType: !1304, size: 512, offset: 1088)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1767, file: !1768, line: 133, baseType: !1312, size: 64, offset: 1600)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1767, file: !1768, line: 140, baseType: !1800, size: 256, offset: 1664)
!1800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1801, size: 256, elements: !1581)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1768, line: 38, size: 128, elements: !1802)
!1802 = !{!1803, !1804}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1801, file: !1768, line: 39, baseType: !444, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1801, file: !1768, line: 40, baseType: !444, size: 64, offset: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1767, file: !1768, line: 146, baseType: !1806, size: 192, offset: 1920)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1768, line: 66, size: 192, elements: !1807)
!1807 = !{!1808}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1806, file: !1768, line: 67, baseType: !1809, size: 192)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1768, line: 47, size: 192, elements: !1810)
!1810 = !{!1811, !1812, !1813}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1809, file: !1768, line: 48, baseType: !790, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1809, file: !1768, line: 49, baseType: !790, size: 64, offset: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1809, file: !1768, line: 50, baseType: !790, size: 64, offset: 128)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1767, file: !1768, line: 150, baseType: !1542, size: 640, offset: 2112)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1767, file: !1768, line: 153, baseType: !1816, size: 256, offset: 2752)
!1816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1483, size: 256, elements: !1170)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1767, file: !1768, line: 159, baseType: !1483, size: 64, offset: 3008)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1767, file: !1768, line: 162, baseType: !150, size: 32, offset: 3072)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1767, file: !1768, line: 164, baseType: !1820, size: 64, offset: 3136)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1768, line: 164, flags: DIFlagFwdDecl)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1767, file: !1768, line: 175, baseType: !1823, size: 32, offset: 3200)
!1823 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !415, line: 805, baseType: !1824)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !415, line: 798, size: 32, elements: !1825)
!1825 = !{!1826, !1827}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1824, file: !415, line: 803, baseType: !414, size: 32)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1824, file: !415, line: 804, baseType: !263, offset: 32)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1767, file: !1768, line: 176, baseType: !444, size: 64, offset: 3264)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1767, file: !1768, line: 176, baseType: !444, size: 64, offset: 3328)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1767, file: !1768, line: 176, baseType: !444, size: 64, offset: 3392)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1767, file: !1768, line: 176, baseType: !444, size: 64, offset: 3456)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1767, file: !1768, line: 177, baseType: !444, size: 64, offset: 3520)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1767, file: !1768, line: 178, baseType: !444, size: 64, offset: 3584)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1767, file: !1768, line: 179, baseType: !1530, size: 128, offset: 3648)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1767, file: !1768, line: 180, baseType: !181, size: 64, offset: 3776)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1767, file: !1768, line: 180, baseType: !181, size: 64, offset: 3840)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1767, file: !1768, line: 180, baseType: !181, size: 64, offset: 3904)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1767, file: !1768, line: 180, baseType: !181, size: 64, offset: 3968)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1767, file: !1768, line: 181, baseType: !181, size: 64, offset: 4032)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1767, file: !1768, line: 181, baseType: !181, size: 64, offset: 4096)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1767, file: !1768, line: 181, baseType: !181, size: 64, offset: 4160)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1767, file: !1768, line: 181, baseType: !181, size: 64, offset: 4224)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1767, file: !1768, line: 182, baseType: !181, size: 64, offset: 4288)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1767, file: !1768, line: 182, baseType: !181, size: 64, offset: 4352)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1767, file: !1768, line: 182, baseType: !181, size: 64, offset: 4416)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1767, file: !1768, line: 182, baseType: !181, size: 64, offset: 4480)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1767, file: !1768, line: 183, baseType: !181, size: 64, offset: 4544)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1767, file: !1768, line: 183, baseType: !181, size: 64, offset: 4608)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1767, file: !1768, line: 184, baseType: !1850, offset: 4672)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1851, line: 12, elements: !277)
!1851 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1767, file: !1768, line: 192, baseType: !446, size: 64, offset: 4672)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1767, file: !1768, line: 203, baseType: !1854, size: 2048, offset: 4736)
!1854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1855, size: 2048, elements: !1747)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1856, line: 43, size: 128, elements: !1857)
!1856 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1857 = !{!1858, !1859}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1855, file: !1856, line: 44, baseType: !351, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1855, file: !1856, line: 45, baseType: !351, size: 64, offset: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1767, file: !1768, line: 220, baseType: !512, size: 8, offset: 6784)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1767, file: !1768, line: 221, baseType: !160, size: 16, offset: 6800)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1767, file: !1768, line: 222, baseType: !160, size: 16, offset: 6816)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1767, file: !1768, line: 224, baseType: !989, size: 64, offset: 6848)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1767, file: !1768, line: 227, baseType: !1188, size: 192, offset: 6912)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1767, file: !1768, line: 233, baseType: !1188, size: 192, offset: 7104)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1229, file: !1230, line: 970, baseType: !1867, size: 64, offset: 9280)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1768, line: 20, size: 16576, elements: !1869)
!1869 = !{!1870, !1871, !1872, !1873}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1868, file: !1768, line: 21, baseType: !263)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1868, file: !1768, line: 22, baseType: !1242, size: 32)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1868, file: !1768, line: 23, baseType: !1493, size: 128, offset: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1868, file: !1768, line: 24, baseType: !1874, size: 16384, offset: 192)
!1874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1875, size: 16384, elements: !309)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1778, line: 49, size: 256, elements: !1876)
!1876 = !{!1877}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1875, file: !1778, line: 50, baseType: !1878, size: 256)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1778, line: 35, size: 256, elements: !1879)
!1879 = !{!1880, !1887, !1888, !1894}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1878, file: !1778, line: 37, baseType: !1881, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1882, line: 19, baseType: !1883)
!1882 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1882, line: 18, baseType: !1885)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{null, !150}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1878, file: !1778, line: 38, baseType: !181, size: 64, offset: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1878, file: !1778, line: 44, baseType: !1889, size: 64, offset: 128)
!1889 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1882, line: 22, baseType: !1890)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1882, line: 21, baseType: !1892)
!1892 = !DISubroutineType(types: !1893)
!1893 = !{null}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1878, file: !1778, line: 46, baseType: !1782, size: 64, offset: 192)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1229, file: !1230, line: 971, baseType: !1782, size: 64, offset: 9344)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1229, file: !1230, line: 972, baseType: !1782, size: 64, offset: 9408)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1229, file: !1230, line: 974, baseType: !1782, size: 64, offset: 9472)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1229, file: !1230, line: 975, baseType: !1777, size: 192, offset: 9536)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1229, file: !1230, line: 976, baseType: !181, size: 64, offset: 9728)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1229, file: !1230, line: 977, baseType: !349, size: 64, offset: 9792)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1229, file: !1230, line: 978, baseType: !7, size: 32, offset: 9856)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1229, file: !1230, line: 980, baseType: !395, size: 64, offset: 9920)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1229, file: !1230, line: 989, baseType: !1904, size: 128, offset: 9984)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1905, line: 35, size: 128, elements: !1906)
!1905 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1906 = !{!1907, !1908, !1909}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1904, file: !1905, line: 36, baseType: !150, size: 32)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1904, file: !1905, line: 37, baseType: !764, size: 32, offset: 32)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1904, file: !1905, line: 38, baseType: !1910, size: 64, offset: 64)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1905, line: 23, flags: DIFlagFwdDecl)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1229, file: !1230, line: 992, baseType: !444, size: 64, offset: 10112)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1229, file: !1230, line: 993, baseType: !444, size: 64, offset: 10176)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1229, file: !1230, line: 996, baseType: !263, offset: 10240)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1229, file: !1230, line: 999, baseType: !797, offset: 10240)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1229, file: !1230, line: 1001, baseType: !1917, size: 64, offset: 10240)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1230, line: 636, size: 64, elements: !1918)
!1918 = !{!1919}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1917, file: !1230, line: 637, baseType: !1920, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1229, file: !1230, line: 1005, baseType: !769, size: 128, offset: 10304)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1229, file: !1230, line: 1007, baseType: !1228, size: 64, offset: 10432)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1229, file: !1230, line: 1009, baseType: !1924, size: 64, offset: 10496)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1230, line: 1009, flags: DIFlagFwdDecl)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1229, file: !1230, line: 1043, baseType: !164, size: 64, offset: 10560)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1229, file: !1230, line: 1046, baseType: !1928, size: 64, offset: 10624)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1230, line: 41, flags: DIFlagFwdDecl)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1229, file: !1230, line: 1050, baseType: !1931, size: 64, offset: 10688)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1230, line: 42, flags: DIFlagFwdDecl)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1229, file: !1230, line: 1054, baseType: !1934, size: 64, offset: 10752)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1230, line: 55, flags: DIFlagFwdDecl)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1229, file: !1230, line: 1056, baseType: !1937, size: 64, offset: 10816)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1230, line: 40, flags: DIFlagFwdDecl)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1229, file: !1230, line: 1058, baseType: !1940, size: 64, offset: 10880)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1942, line: 99, size: 704, elements: !1943)
!1942 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1943 = !{!1944, !1945, !1946, !1947, !1948, !1949, !1950, !1969, !1970}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1941, file: !1942, line: 100, baseType: !788, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1941, file: !1942, line: 101, baseType: !764, size: 32, offset: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1941, file: !1942, line: 102, baseType: !764, size: 32, offset: 96)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1941, file: !1942, line: 105, baseType: !263, offset: 128)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1941, file: !1942, line: 107, baseType: !155, size: 16, offset: 128)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1941, file: !1942, line: 109, baseType: !755, size: 128, offset: 192)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1941, file: !1942, line: 110, baseType: !1951, size: 64, offset: 320)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1942, line: 73, size: 448, elements: !1953)
!1953 = !{!1954, !1957, !1958, !1963, !1968}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1952, file: !1942, line: 74, baseType: !1955, size: 64)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1942, line: 74, flags: DIFlagFwdDecl)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1952, file: !1942, line: 75, baseType: !1940, size: 64, offset: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, scope: !1952, file: !1942, line: 83, baseType: !1959, size: 128, offset: 128)
!1959 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1952, file: !1942, line: 83, size: 128, elements: !1960)
!1960 = !{!1961, !1962}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1959, file: !1942, line: 84, baseType: !250, size: 128)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1959, file: !1942, line: 85, baseType: !950, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, scope: !1952, file: !1942, line: 87, baseType: !1964, size: 128, offset: 256)
!1964 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1952, file: !1942, line: 87, size: 128, elements: !1965)
!1965 = !{!1966, !1967}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1964, file: !1942, line: 88, baseType: !173, size: 128)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1964, file: !1942, line: 89, baseType: !392, size: 128, align: 64)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1952, file: !1942, line: 92, baseType: !7, size: 32, offset: 384)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1941, file: !1942, line: 111, baseType: !657, size: 64, offset: 384)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1941, file: !1942, line: 113, baseType: !1971, size: 256, offset: 448)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1972, line: 102, size: 256, elements: !1973)
!1972 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1973 = !{!1974, !1975, !1976}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1971, file: !1972, line: 103, baseType: !788, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1971, file: !1972, line: 104, baseType: !250, size: 128, offset: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1971, file: !1972, line: 105, baseType: !1977, size: 64, offset: 192)
!1977 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1972, line: 21, baseType: !1978)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{null, !1981}
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1229, file: !1230, line: 1061, baseType: !1983, size: 64, offset: 10944)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1230, line: 43, flags: DIFlagFwdDecl)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1229, file: !1230, line: 1064, baseType: !181, size: 64, offset: 11008)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1229, file: !1230, line: 1065, baseType: !1987, size: 64, offset: 11072)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1778, line: 14, baseType: !1989)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1778, line: 12, size: 384, elements: !1990)
!1990 = !{!1991}
!1991 = !DIDerivedType(tag: DW_TAG_member, scope: !1989, file: !1778, line: 13, baseType: !1992, size: 384)
!1992 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1989, file: !1778, line: 13, size: 384, elements: !1993)
!1993 = !{!1994, !1995, !1996, !1997}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1992, file: !1778, line: 13, baseType: !150, size: 32)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1992, file: !1778, line: 13, baseType: !150, size: 32, offset: 32)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1992, file: !1778, line: 13, baseType: !150, size: 32, offset: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1992, file: !1778, line: 13, baseType: !1998, size: 256, offset: 128)
!1998 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1999, line: 32, size: 256, elements: !2000)
!1999 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2000 = !{!2001, !2006, !2019, !2025, !2034, !2054, !2059}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1998, file: !1999, line: 37, baseType: !2002, size: 64)
!2002 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1998, file: !1999, line: 34, size: 64, elements: !2003)
!2003 = !{!2004, !2005}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2002, file: !1999, line: 35, baseType: !1472, size: 32)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2002, file: !1999, line: 36, baseType: !463, size: 32, offset: 32)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1998, file: !1999, line: 45, baseType: !2007, size: 192)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1998, file: !1999, line: 40, size: 192, elements: !2008)
!2008 = !{!2009, !2011, !2012, !2018}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2007, file: !1999, line: 41, baseType: !2010, size: 32)
!2010 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !337, line: 95, baseType: !150)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2007, file: !1999, line: 42, baseType: !150, size: 32, offset: 32)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2007, file: !1999, line: 43, baseType: !2013, size: 64, offset: 64)
!2013 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1999, line: 11, baseType: !2014)
!2014 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1999, line: 8, size: 64, elements: !2015)
!2015 = !{!2016, !2017}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2014, file: !1999, line: 9, baseType: !150, size: 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2014, file: !1999, line: 10, baseType: !164, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2007, file: !1999, line: 44, baseType: !150, size: 32, offset: 128)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1998, file: !1999, line: 52, baseType: !2020, size: 128)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1998, file: !1999, line: 48, size: 128, elements: !2021)
!2021 = !{!2022, !2023, !2024}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2020, file: !1999, line: 49, baseType: !1472, size: 32)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2020, file: !1999, line: 50, baseType: !463, size: 32, offset: 32)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2020, file: !1999, line: 51, baseType: !2013, size: 64, offset: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1998, file: !1999, line: 61, baseType: !2026, size: 256)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1998, file: !1999, line: 55, size: 256, elements: !2027)
!2027 = !{!2028, !2029, !2030, !2031, !2033}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2026, file: !1999, line: 56, baseType: !1472, size: 32)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2026, file: !1999, line: 57, baseType: !463, size: 32, offset: 32)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2026, file: !1999, line: 58, baseType: !150, size: 32, offset: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2026, file: !1999, line: 59, baseType: !2032, size: 64, offset: 128)
!2032 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !337, line: 94, baseType: !338)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2026, file: !1999, line: 60, baseType: !2032, size: 64, offset: 192)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1998, file: !1999, line: 95, baseType: !2035, size: 256)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1998, file: !1999, line: 64, size: 256, elements: !2036)
!2036 = !{!2037, !2038}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2035, file: !1999, line: 65, baseType: !164, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, scope: !2035, file: !1999, line: 77, baseType: !2039, size: 192, offset: 64)
!2039 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2035, file: !1999, line: 77, size: 192, elements: !2040)
!2040 = !{!2041, !2042, !2049}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2039, file: !1999, line: 82, baseType: !160, size: 16)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2039, file: !1999, line: 88, baseType: !2043, size: 192)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2039, file: !1999, line: 84, size: 192, elements: !2044)
!2044 = !{!2045, !2047, !2048}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2043, file: !1999, line: 85, baseType: !2046, size: 64)
!2046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 64, elements: !1342)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2043, file: !1999, line: 86, baseType: !164, size: 64, offset: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2043, file: !1999, line: 87, baseType: !164, size: 64, offset: 128)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2039, file: !1999, line: 93, baseType: !2050, size: 96)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2039, file: !1999, line: 90, size: 96, elements: !2051)
!2051 = !{!2052, !2053}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2050, file: !1999, line: 91, baseType: !2046, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2050, file: !1999, line: 92, baseType: !189, size: 32, offset: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1998, file: !1999, line: 101, baseType: !2055, size: 128)
!2055 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1998, file: !1999, line: 98, size: 128, elements: !2056)
!2056 = !{!2057, !2058}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2055, file: !1999, line: 99, baseType: !163, size: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2055, file: !1999, line: 100, baseType: !150, size: 32, offset: 64)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1998, file: !1999, line: 108, baseType: !2060, size: 128)
!2060 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1998, file: !1999, line: 104, size: 128, elements: !2061)
!2061 = !{!2062, !2063, !2064}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2060, file: !1999, line: 105, baseType: !164, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2060, file: !1999, line: 106, baseType: !150, size: 32, offset: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2060, file: !1999, line: 107, baseType: !7, size: 32, offset: 96)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1229, file: !1230, line: 1067, baseType: !1850, offset: 11136)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1229, file: !1230, line: 1099, baseType: !2067, size: 64, offset: 11136)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1230, line: 56, flags: DIFlagFwdDecl)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1229, file: !1230, line: 1103, baseType: !250, size: 128, offset: 11200)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1229, file: !1230, line: 1104, baseType: !2071, size: 64, offset: 11328)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1230, line: 46, flags: DIFlagFwdDecl)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1229, file: !1230, line: 1105, baseType: !1188, size: 192, offset: 11392)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1229, file: !1230, line: 1106, baseType: !7, size: 32, offset: 11584)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1229, file: !1230, line: 1109, baseType: !2076, size: 128, offset: 11648)
!2076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2077, size: 128, elements: !1581)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1230, line: 51, flags: DIFlagFwdDecl)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1229, file: !1230, line: 1110, baseType: !1188, size: 192, offset: 11776)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1229, file: !1230, line: 1111, baseType: !250, size: 128, offset: 11968)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1229, file: !1230, line: 1173, baseType: !2082, size: 64, offset: 12096)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2084, line: 62, size: 256, align: 256, elements: !2085)
!2084 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2085 = !{!2086, !2087, !2088, !2093}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2083, file: !2084, line: 75, baseType: !189, size: 32)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2083, file: !2084, line: 90, baseType: !189, size: 32, offset: 32)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2083, file: !2084, line: 124, baseType: !2089, size: 64, offset: 64)
!2089 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2083, file: !2084, line: 109, size: 64, elements: !2090)
!2090 = !{!2091, !2092}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2089, file: !2084, line: 110, baseType: !445, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2089, file: !2084, line: 112, baseType: !445, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2083, file: !2084, line: 144, baseType: !189, size: 32, offset: 128)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1229, file: !1230, line: 1174, baseType: !188, size: 32, offset: 12160)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1229, file: !1230, line: 1179, baseType: !181, size: 64, offset: 12224)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1229, file: !1230, line: 1182, baseType: !2097, size: 128, offset: 12288)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1166, line: 76, size: 128, elements: !2098)
!2098 = !{!2099, !2104, !2105}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2097, file: !1166, line: 85, baseType: !2100, size: 64)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2101, line: 7, size: 64, elements: !2102)
!2101 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2102 = !{!2103}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2100, file: !2101, line: 12, baseType: !1379, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2097, file: !1166, line: 88, baseType: !512, size: 8, offset: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2097, file: !1166, line: 95, baseType: !512, size: 8, offset: 72)
!2106 = !DIDerivedType(tag: DW_TAG_member, scope: !1229, file: !1230, line: 1184, baseType: !2107, size: 128, offset: 12416)
!2107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1229, file: !1230, line: 1184, size: 128, elements: !2108)
!2108 = !{!2109, !2110}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2107, file: !1230, line: 1185, baseType: !1242, size: 32)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2107, file: !1230, line: 1186, baseType: !392, size: 128, align: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1229, file: !1230, line: 1190, baseType: !2112, size: 64, offset: 12544)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1230, line: 53, flags: DIFlagFwdDecl)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1229, file: !1230, line: 1192, baseType: !2115, size: 128, offset: 12608)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1166, line: 64, size: 128, elements: !2116)
!2116 = !{!2117, !2118, !2119}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2115, file: !1166, line: 65, baseType: !737, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2115, file: !1166, line: 67, baseType: !189, size: 32, offset: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2115, file: !1166, line: 68, baseType: !189, size: 32, offset: 96)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1229, file: !1230, line: 1206, baseType: !150, size: 32, offset: 12736)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1229, file: !1230, line: 1207, baseType: !150, size: 32, offset: 12768)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1229, file: !1230, line: 1209, baseType: !181, size: 64, offset: 12800)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1229, file: !1230, line: 1219, baseType: !444, size: 64, offset: 12864)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1229, file: !1230, line: 1220, baseType: !444, size: 64, offset: 12928)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1229, file: !1230, line: 1317, baseType: !150, size: 32, offset: 12992)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1229, file: !1230, line: 1319, baseType: !1228, size: 64, offset: 13056)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1229, file: !1230, line: 1322, baseType: !2128, size: 64, offset: 13120)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2130, line: 56, size: 512, elements: !2131)
!2130 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2131 = !{!2132, !2133, !2134, !2135, !2136, !2137, !2138, !2140}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2129, file: !2130, line: 57, baseType: !2128, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2129, file: !2130, line: 58, baseType: !164, size: 64, offset: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2129, file: !2130, line: 59, baseType: !181, size: 64, offset: 128)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2129, file: !2130, line: 60, baseType: !181, size: 64, offset: 192)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2129, file: !2130, line: 61, baseType: !837, size: 64, offset: 256)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2129, file: !2130, line: 62, baseType: !7, size: 32, offset: 320)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2129, file: !2130, line: 63, baseType: !2139, size: 64, offset: 384)
!2139 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !174, line: 153, baseType: !444)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2129, file: !2130, line: 64, baseType: !2141, size: 64, offset: 448)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1229, file: !1230, line: 1326, baseType: !1242, size: 32, offset: 13184)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1229, file: !1230, line: 1342, baseType: !164, size: 64, offset: 13248)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1229, file: !1230, line: 1343, baseType: !445, size: 64, offset: 13312)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1229, file: !1230, line: 1344, baseType: !444, size: 64, offset: 13376)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1229, file: !1230, line: 1345, baseType: !445, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1229, file: !1230, line: 1346, baseType: !445, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1229, file: !1230, line: 1347, baseType: !445, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1229, file: !1230, line: 1348, baseType: !392, size: 128, align: 64, offset: 13504)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1229, file: !1230, line: 1358, baseType: !2152, size: 34816, offset: 13824)
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2153, line: 485, size: 34816, elements: !2154)
!2153 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2154 = !{!2155, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2184, !2185, !2186, !2187, !2188, !2189, !2192, !2193, !2194}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2152, file: !2153, line: 487, baseType: !2156, size: 192)
!2156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2157, size: 192, elements: !305)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2158, line: 16, size: 64, elements: !2159)
!2158 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2159 = !{!2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2157, file: !2158, line: 17, baseType: !151, size: 16)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2157, file: !2158, line: 18, baseType: !151, size: 16, offset: 16)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2157, file: !2158, line: 19, baseType: !151, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2157, file: !2158, line: 19, baseType: !151, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2157, file: !2158, line: 19, baseType: !151, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2157, file: !2158, line: 19, baseType: !151, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2157, file: !2158, line: 19, baseType: !151, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2157, file: !2158, line: 20, baseType: !151, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2157, file: !2158, line: 20, baseType: !151, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2157, file: !2158, line: 20, baseType: !151, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2157, file: !2158, line: 20, baseType: !151, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2157, file: !2158, line: 20, baseType: !151, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2157, file: !2158, line: 20, baseType: !151, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2152, file: !2153, line: 491, baseType: !181, size: 64, offset: 192)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2152, file: !2153, line: 495, baseType: !155, size: 16, offset: 256)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2152, file: !2153, line: 496, baseType: !155, size: 16, offset: 272)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2152, file: !2153, line: 497, baseType: !155, size: 16, offset: 288)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2152, file: !2153, line: 498, baseType: !155, size: 16, offset: 304)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2152, file: !2153, line: 502, baseType: !181, size: 64, offset: 320)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2152, file: !2153, line: 503, baseType: !181, size: 64, offset: 384)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2152, file: !2153, line: 514, baseType: !2181, size: 256, offset: 448)
!2181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2182, size: 256, elements: !1170)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2153, line: 483, flags: DIFlagFwdDecl)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2152, file: !2153, line: 516, baseType: !181, size: 64, offset: 704)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2152, file: !2153, line: 518, baseType: !181, size: 64, offset: 768)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2152, file: !2153, line: 520, baseType: !181, size: 64, offset: 832)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2152, file: !2153, line: 521, baseType: !181, size: 64, offset: 896)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2152, file: !2153, line: 522, baseType: !181, size: 64, offset: 960)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2152, file: !2153, line: 528, baseType: !2190, size: 64, offset: 1024)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2153, line: 10, flags: DIFlagFwdDecl)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2152, file: !2153, line: 535, baseType: !181, size: 64, offset: 1088)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2152, file: !2153, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2152, file: !2153, line: 540, baseType: !2195, size: 33280, offset: 1536)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2196, line: 317, size: 33280, elements: !2197)
!2196 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2197 = !{!2198, !2199, !2200}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2195, file: !2196, line: 330, baseType: !7, size: 32)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2195, file: !2196, line: 337, baseType: !181, size: 64, offset: 64)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2195, file: !2196, line: 348, baseType: !2201, size: 32768, offset: 512)
!2201 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2196, line: 304, size: 32768, elements: !2202)
!2202 = !{!2203, !2216, !2253, !2303, !2316}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2201, file: !2196, line: 305, baseType: !2204, size: 896)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2196, line: 12, size: 896, elements: !2205)
!2205 = !{!2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2215}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2204, file: !2196, line: 13, baseType: !188, size: 32)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2204, file: !2196, line: 14, baseType: !188, size: 32, offset: 32)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2204, file: !2196, line: 15, baseType: !188, size: 32, offset: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2204, file: !2196, line: 16, baseType: !188, size: 32, offset: 96)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2204, file: !2196, line: 17, baseType: !188, size: 32, offset: 128)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2204, file: !2196, line: 18, baseType: !188, size: 32, offset: 160)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2204, file: !2196, line: 19, baseType: !188, size: 32, offset: 192)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2204, file: !2196, line: 22, baseType: !2214, size: 640, offset: 224)
!2214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 640, elements: !217)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2204, file: !2196, line: 25, baseType: !188, size: 32, offset: 864)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2201, file: !2196, line: 306, baseType: !2217, size: 4096, align: 128)
!2217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2196, line: 34, size: 4096, align: 128, elements: !2218)
!2218 = !{!2219, !2220, !2221, !2222, !2223, !2238, !2239, !2240, !2242, !2244, !2248}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2217, file: !2196, line: 35, baseType: !151, size: 16)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2217, file: !2196, line: 36, baseType: !151, size: 16, offset: 16)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2217, file: !2196, line: 37, baseType: !151, size: 16, offset: 32)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2217, file: !2196, line: 38, baseType: !151, size: 16, offset: 48)
!2223 = !DIDerivedType(tag: DW_TAG_member, scope: !2217, file: !2196, line: 39, baseType: !2224, size: 128, offset: 64)
!2224 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2217, file: !2196, line: 39, size: 128, elements: !2225)
!2225 = !{!2226, !2231}
!2226 = !DIDerivedType(tag: DW_TAG_member, scope: !2224, file: !2196, line: 40, baseType: !2227, size: 128)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2224, file: !2196, line: 40, size: 128, elements: !2228)
!2228 = !{!2229, !2230}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2227, file: !2196, line: 41, baseType: !444, size: 64)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2227, file: !2196, line: 42, baseType: !444, size: 64, offset: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, scope: !2224, file: !2196, line: 44, baseType: !2232, size: 128)
!2232 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2224, file: !2196, line: 44, size: 128, elements: !2233)
!2233 = !{!2234, !2235, !2236, !2237}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2232, file: !2196, line: 45, baseType: !188, size: 32)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2232, file: !2196, line: 46, baseType: !188, size: 32, offset: 32)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2232, file: !2196, line: 47, baseType: !188, size: 32, offset: 64)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2232, file: !2196, line: 48, baseType: !188, size: 32, offset: 96)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2217, file: !2196, line: 51, baseType: !188, size: 32, offset: 192)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2217, file: !2196, line: 52, baseType: !188, size: 32, offset: 224)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2217, file: !2196, line: 55, baseType: !2241, size: 1024, offset: 256)
!2241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 1024, elements: !221)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2217, file: !2196, line: 58, baseType: !2243, size: 2048, offset: 1280)
!2243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 2048, elements: !309)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2217, file: !2196, line: 60, baseType: !2245, size: 384, offset: 3328)
!2245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 384, elements: !2246)
!2246 = !{!2247}
!2247 = !DISubrange(count: 12)
!2248 = !DIDerivedType(tag: DW_TAG_member, scope: !2217, file: !2196, line: 62, baseType: !2249, size: 384, offset: 3712)
!2249 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2217, file: !2196, line: 62, size: 384, elements: !2250)
!2250 = !{!2251, !2252}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2249, file: !2196, line: 63, baseType: !2245, size: 384)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2249, file: !2196, line: 64, baseType: !2245, size: 384)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2201, file: !2196, line: 307, baseType: !2254, size: 1088)
!2254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2196, line: 79, size: 1088, elements: !2255)
!2255 = !{!2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2302}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2254, file: !2196, line: 80, baseType: !188, size: 32)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2254, file: !2196, line: 81, baseType: !188, size: 32, offset: 32)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2254, file: !2196, line: 82, baseType: !188, size: 32, offset: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2254, file: !2196, line: 83, baseType: !188, size: 32, offset: 96)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2254, file: !2196, line: 84, baseType: !188, size: 32, offset: 128)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2254, file: !2196, line: 85, baseType: !188, size: 32, offset: 160)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2254, file: !2196, line: 86, baseType: !188, size: 32, offset: 192)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2254, file: !2196, line: 88, baseType: !2214, size: 640, offset: 224)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2254, file: !2196, line: 89, baseType: !1364, size: 8, offset: 864)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2254, file: !2196, line: 90, baseType: !1364, size: 8, offset: 872)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2254, file: !2196, line: 91, baseType: !1364, size: 8, offset: 880)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2254, file: !2196, line: 92, baseType: !1364, size: 8, offset: 888)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2254, file: !2196, line: 93, baseType: !1364, size: 8, offset: 896)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2254, file: !2196, line: 94, baseType: !1364, size: 8, offset: 904)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2254, file: !2196, line: 95, baseType: !2271, size: 64, offset: 960)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2273, line: 11, size: 128, elements: !2274)
!2273 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2274 = !{!2275, !2276}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2272, file: !2273, line: 12, baseType: !163, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2272, file: !2273, line: 13, baseType: !2277, size: 64, offset: 64)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2279, line: 56, size: 1344, elements: !2280)
!2279 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2280 = !{!2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2278, file: !2279, line: 61, baseType: !181, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2278, file: !2279, line: 62, baseType: !181, size: 64, offset: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2278, file: !2279, line: 63, baseType: !181, size: 64, offset: 128)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2278, file: !2279, line: 64, baseType: !181, size: 64, offset: 192)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2278, file: !2279, line: 65, baseType: !181, size: 64, offset: 256)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2278, file: !2279, line: 66, baseType: !181, size: 64, offset: 320)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2278, file: !2279, line: 68, baseType: !181, size: 64, offset: 384)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2278, file: !2279, line: 69, baseType: !181, size: 64, offset: 448)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2278, file: !2279, line: 70, baseType: !181, size: 64, offset: 512)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2278, file: !2279, line: 71, baseType: !181, size: 64, offset: 576)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2278, file: !2279, line: 72, baseType: !181, size: 64, offset: 640)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2278, file: !2279, line: 73, baseType: !181, size: 64, offset: 704)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2278, file: !2279, line: 74, baseType: !181, size: 64, offset: 768)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2278, file: !2279, line: 75, baseType: !181, size: 64, offset: 832)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2278, file: !2279, line: 76, baseType: !181, size: 64, offset: 896)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2278, file: !2279, line: 81, baseType: !181, size: 64, offset: 960)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2278, file: !2279, line: 83, baseType: !181, size: 64, offset: 1024)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2278, file: !2279, line: 84, baseType: !181, size: 64, offset: 1088)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2278, file: !2279, line: 85, baseType: !181, size: 64, offset: 1152)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2278, file: !2279, line: 86, baseType: !181, size: 64, offset: 1216)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2278, file: !2279, line: 87, baseType: !181, size: 64, offset: 1280)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2254, file: !2196, line: 96, baseType: !188, size: 32, offset: 1024)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2201, file: !2196, line: 308, baseType: !2304, size: 4608, align: 512)
!2304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2196, line: 289, size: 4608, align: 512, elements: !2305)
!2305 = !{!2306, !2307, !2314}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2304, file: !2196, line: 290, baseType: !2217, size: 4096, align: 128)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2304, file: !2196, line: 291, baseType: !2308, size: 512, offset: 4096)
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2196, line: 268, size: 512, elements: !2309)
!2309 = !{!2310, !2311, !2312}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2308, file: !2196, line: 269, baseType: !444, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2308, file: !2196, line: 270, baseType: !444, size: 64, offset: 64)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2308, file: !2196, line: 271, baseType: !2313, size: 384, offset: 128)
!2313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 384, elements: !1637)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2304, file: !2196, line: 292, baseType: !2315, offset: 4608)
!2315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1364, elements: !1735)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2201, file: !2196, line: 309, baseType: !2317, size: 32768)
!2317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1364, size: 32768, elements: !2318)
!2318 = !{!2319}
!2319 = !DISubrange(count: 4096)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1225, file: !739, line: 378, baseType: !2321, size: 64, offset: 64)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1221, file: !739, line: 384, baseType: !1514, size: 192, offset: 192)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !993, file: !739, line: 500, baseType: !263, offset: 6656)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !993, file: !739, line: 501, baseType: !2325, size: 64, offset: 6656)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !739, line: 387, flags: DIFlagFwdDecl)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !993, file: !739, line: 516, baseType: !1725, size: 64, offset: 6720)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !993, file: !739, line: 519, baseType: !379, size: 64, offset: 6784)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !993, file: !739, line: 521, baseType: !2330, size: 64, offset: 6848)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !739, line: 521, flags: DIFlagFwdDecl)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !993, file: !739, line: 545, baseType: !764, size: 32, offset: 6912)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !993, file: !739, line: 548, baseType: !512, size: 8, offset: 6944)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !993, file: !739, line: 550, baseType: !2335, offset: 6952)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2336, line: 142, elements: !277)
!2336 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !993, file: !739, line: 554, baseType: !1971, size: 256, offset: 6976)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !993, file: !739, line: 557, baseType: !188, size: 32, offset: 7232)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !990, file: !739, line: 565, baseType: !2340, offset: 7296)
!2340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, elements: !2341)
!2341 = !{!2342}
!2342 = !DISubrange(count: -1)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !986, file: !739, line: 151, baseType: !764, size: 32)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !979, file: !739, line: 156, baseType: !263, offset: 256)
!2345 = !DIDerivedType(tag: DW_TAG_member, scope: !743, file: !739, line: 159, baseType: !2346, size: 128)
!2346 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !743, file: !739, line: 159, size: 128, elements: !2347)
!2347 = !{!2348, !2412}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2346, file: !739, line: 161, baseType: !2349, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2351)
!2351 = !{!2352, !2362, !2383, !2384, !2385, !2386, !2387, !2399, !2400, !2401}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2350, file: !31, line: 111, baseType: !2353, size: 384)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2354)
!2354 = !{!2355, !2357, !2358, !2359, !2360, !2361}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2353, file: !31, line: 20, baseType: !2356, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2353, file: !31, line: 21, baseType: !2356, size: 64, offset: 64)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2353, file: !31, line: 22, baseType: !2356, size: 64, offset: 128)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2353, file: !31, line: 23, baseType: !181, size: 64, offset: 192)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2353, file: !31, line: 24, baseType: !181, size: 64, offset: 256)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2353, file: !31, line: 25, baseType: !181, size: 64, offset: 320)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2350, file: !31, line: 112, baseType: !2363, size: 64, offset: 384)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2365, line: 105, size: 128, elements: !2366)
!2365 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2366 = !{!2367, !2368}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2364, file: !2365, line: 110, baseType: !181, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2364, file: !2365, line: 118, baseType: !2369, size: 64, offset: 64)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2365, line: 95, size: 448, elements: !2371)
!2371 = !{!2372, !2373, !2378, !2379, !2380, !2381, !2382}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2370, file: !2365, line: 96, baseType: !788, size: 64)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2370, file: !2365, line: 97, baseType: !2374, size: 64, offset: 64)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2365, line: 60, baseType: !2376)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{null, !2363}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2370, file: !2365, line: 98, baseType: !2374, size: 64, offset: 128)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2370, file: !2365, line: 99, baseType: !512, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2370, file: !2365, line: 100, baseType: !512, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2370, file: !2365, line: 101, baseType: !392, size: 128, align: 64, offset: 256)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2370, file: !2365, line: 102, baseType: !2363, size: 64, offset: 384)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2350, file: !31, line: 113, baseType: !2364, size: 128, offset: 448)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2350, file: !31, line: 114, baseType: !1514, size: 192, offset: 576)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2350, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2350, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2350, file: !31, line: 117, baseType: !2388, size: 64, offset: 832)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2390)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2391)
!2391 = !{!2392, !2393, !2397, !2398}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2390, file: !31, line: 73, baseType: !857, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2390, file: !31, line: 78, baseType: !2394, size: 64, offset: 64)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{null, !2349}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2390, file: !31, line: 83, baseType: !2394, size: 64, offset: 128)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2390, file: !31, line: 89, baseType: !1042, size: 64, offset: 192)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2350, file: !31, line: 118, baseType: !164, size: 64, offset: 896)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2350, file: !31, line: 119, baseType: !150, size: 32, offset: 960)
!2401 = !DIDerivedType(tag: DW_TAG_member, scope: !2350, file: !31, line: 120, baseType: !2402, size: 128, offset: 1024)
!2402 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2350, file: !31, line: 120, size: 128, elements: !2403)
!2403 = !{!2404, !2410}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2402, file: !31, line: 121, baseType: !2405, size: 128)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2406, line: 6, size: 128, elements: !2407)
!2406 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2407 = !{!2408, !2409}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2405, file: !2406, line: 7, baseType: !444, size: 64)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2405, file: !2406, line: 8, baseType: !444, size: 64, offset: 64)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2402, file: !31, line: 122, baseType: !2411)
!2411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2405, elements: !1735)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2346, file: !739, line: 162, baseType: !164, size: 64, offset: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !743, file: !739, line: 176, baseType: !392, size: 128, align: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, scope: !738, file: !739, line: 179, baseType: !2415, size: 32, offset: 384)
!2415 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !738, file: !739, line: 179, size: 32, elements: !2416)
!2416 = !{!2417, !2418, !2419, !2420}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2415, file: !739, line: 184, baseType: !764, size: 32)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2415, file: !739, line: 192, baseType: !7, size: 32)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2415, file: !739, line: 194, baseType: !7, size: 32)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2415, file: !739, line: 195, baseType: !150, size: 32)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !738, file: !739, line: 199, baseType: !764, size: 32, offset: 416)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !673, file: !44, line: 1964, baseType: !2423, size: 64, offset: 1344)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!163, !621, !2426}
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2428, line: 12, size: 256, elements: !2429)
!2428 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2429 = !{!2430, !2431, !2432, !2433, !2434}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2427, file: !2428, line: 13, baseType: !760, size: 32)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2427, file: !2428, line: 16, baseType: !150, size: 32, offset: 32)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2427, file: !2428, line: 23, baseType: !181, size: 64, offset: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2427, file: !2428, line: 30, baseType: !181, size: 64, offset: 128)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2427, file: !2428, line: 33, baseType: !2435, size: 64, offset: 192)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !739, line: 27, flags: DIFlagFwdDecl)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !673, file: !44, line: 1966, baseType: !2423, size: 64, offset: 1408)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !622, file: !44, line: 1424, baseType: !2439, size: 64, offset: 448)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2441)
!2441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2442)
!2442 = !{!2443, !2489, !2493, !2497, !2498, !2499, !2500, !2501, !2506, !2511, !2515}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2441, file: !38, line: 323, baseType: !2444, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!150, !2447}
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2449)
!2449 = !{!2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2474, !2475, !2476}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2448, file: !38, line: 295, baseType: !173, size: 128)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2448, file: !38, line: 296, baseType: !250, size: 128, offset: 128)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2448, file: !38, line: 297, baseType: !250, size: 128, offset: 256)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2448, file: !38, line: 298, baseType: !250, size: 128, offset: 384)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2448, file: !38, line: 299, baseType: !1188, size: 192, offset: 512)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2448, file: !38, line: 300, baseType: !263, offset: 704)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2448, file: !38, line: 301, baseType: !764, size: 32, offset: 704)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2448, file: !38, line: 302, baseType: !621, size: 64, offset: 768)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2448, file: !38, line: 303, baseType: !2459, size: 64, offset: 832)
!2459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2460)
!2460 = !{!2461, !2473}
!2461 = !DIDerivedType(tag: DW_TAG_member, scope: !2459, file: !38, line: 69, baseType: !2462, size: 32)
!2462 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2459, file: !38, line: 69, size: 32, elements: !2463)
!2463 = !{!2464, !2465, !2466}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2462, file: !38, line: 70, baseType: !457, size: 32)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2462, file: !38, line: 71, baseType: !465, size: 32)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2462, file: !38, line: 72, baseType: !2467, size: 32)
!2467 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2468, line: 24, baseType: !2469)
!2468 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2469 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2468, line: 22, size: 32, elements: !2470)
!2470 = !{!2471}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2469, file: !2468, line: 23, baseType: !2472, size: 32)
!2472 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2468, line: 20, baseType: !463)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2459, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2448, file: !38, line: 304, baseType: !553, size: 64, offset: 896)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2448, file: !38, line: 305, baseType: !181, size: 64, offset: 960)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2448, file: !38, line: 306, baseType: !2477, size: 576, offset: 1024)
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2478)
!2478 = !{!2479, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2477, file: !38, line: 206, baseType: !2480, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !555)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2477, file: !38, line: 207, baseType: !2480, size: 64, offset: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2477, file: !38, line: 208, baseType: !2480, size: 64, offset: 128)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2477, file: !38, line: 209, baseType: !2480, size: 64, offset: 192)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2477, file: !38, line: 210, baseType: !2480, size: 64, offset: 256)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2477, file: !38, line: 211, baseType: !2480, size: 64, offset: 320)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2477, file: !38, line: 212, baseType: !2480, size: 64, offset: 384)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2477, file: !38, line: 213, baseType: !561, size: 64, offset: 448)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2477, file: !38, line: 214, baseType: !561, size: 64, offset: 512)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2441, file: !38, line: 324, baseType: !2490, size: 64, offset: 64)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{!2447, !621, !150}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2441, file: !38, line: 325, baseType: !2494, size: 64, offset: 128)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = !DISubroutineType(types: !2496)
!2496 = !{null, !2447}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2441, file: !38, line: 326, baseType: !2444, size: 64, offset: 192)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2441, file: !38, line: 327, baseType: !2444, size: 64, offset: 256)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2441, file: !38, line: 328, baseType: !2444, size: 64, offset: 320)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2441, file: !38, line: 329, baseType: !701, size: 64, offset: 384)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2441, file: !38, line: 332, baseType: !2502, size: 64, offset: 448)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{!2505, !451}
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2441, file: !38, line: 333, baseType: !2507, size: 64, offset: 512)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DISubroutineType(types: !2509)
!2509 = !{!150, !451, !2510}
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2441, file: !38, line: 335, baseType: !2512, size: 64, offset: 576)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!150, !451, !2505}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2441, file: !38, line: 337, baseType: !2516, size: 64, offset: 640)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{!150, !621, !2519}
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !622, file: !44, line: 1425, baseType: !2521, size: 64, offset: 512)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2523)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2524)
!2524 = !{!2525, !2529, !2530, !2534, !2535, !2536, !2551, !2574, !2578, !2579, !2602}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2523, file: !38, line: 429, baseType: !2526, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!150, !621, !150, !150, !571}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2523, file: !38, line: 430, baseType: !701, size: 64, offset: 64)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2523, file: !38, line: 431, baseType: !2531, size: 64, offset: 128)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!150, !621, !7}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2523, file: !38, line: 432, baseType: !2531, size: 64, offset: 192)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2523, file: !38, line: 433, baseType: !701, size: 64, offset: 256)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2523, file: !38, line: 434, baseType: !2537, size: 64, offset: 320)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!150, !621, !150, !2540}
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2542)
!2542 = !{!2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2541, file: !38, line: 416, baseType: !150, size: 32)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2541, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2541, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2541, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2541, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2541, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2541, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2541, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2523, file: !38, line: 435, baseType: !2552, size: 64, offset: 384)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!150, !621, !2459, !2555}
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2557)
!2557 = !{!2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2556, file: !38, line: 344, baseType: !150, size: 32)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2556, file: !38, line: 345, baseType: !444, size: 64, offset: 64)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2556, file: !38, line: 346, baseType: !444, size: 64, offset: 128)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2556, file: !38, line: 347, baseType: !444, size: 64, offset: 192)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2556, file: !38, line: 348, baseType: !444, size: 64, offset: 256)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2556, file: !38, line: 349, baseType: !444, size: 64, offset: 320)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2556, file: !38, line: 350, baseType: !444, size: 64, offset: 384)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2556, file: !38, line: 351, baseType: !794, size: 64, offset: 448)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2556, file: !38, line: 353, baseType: !794, size: 64, offset: 512)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2556, file: !38, line: 354, baseType: !150, size: 32, offset: 576)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2556, file: !38, line: 355, baseType: !150, size: 32, offset: 608)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2556, file: !38, line: 356, baseType: !444, size: 64, offset: 640)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2556, file: !38, line: 357, baseType: !444, size: 64, offset: 704)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2556, file: !38, line: 358, baseType: !444, size: 64, offset: 768)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2556, file: !38, line: 359, baseType: !794, size: 64, offset: 832)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2556, file: !38, line: 360, baseType: !150, size: 32, offset: 896)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2523, file: !38, line: 436, baseType: !2575, size: 64, offset: 448)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = !DISubroutineType(types: !2577)
!2577 = !{!150, !621, !2519, !2555}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2523, file: !38, line: 438, baseType: !2552, size: 64, offset: 512)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2523, file: !38, line: 439, baseType: !2580, size: 64, offset: 576)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{!150, !621, !2583}
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2585)
!2585 = !{!2586, !2587}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2584, file: !38, line: 410, baseType: !7, size: 32)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2584, file: !38, line: 411, baseType: !2588, size: 1344, offset: 64)
!2588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2589, size: 1344, elements: !305)
!2589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2590)
!2590 = !{!2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2601}
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2589, file: !38, line: 396, baseType: !7, size: 32)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2589, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2589, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2589, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2589, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2589, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2589, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2589, file: !38, line: 404, baseType: !446, size: 64, offset: 256)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2589, file: !38, line: 405, baseType: !2600, size: 64, offset: 320)
!2600 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !174, line: 126, baseType: !444)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2589, file: !38, line: 406, baseType: !2600, size: 64, offset: 384)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2523, file: !38, line: 440, baseType: !2531, size: 64, offset: 640)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !622, file: !44, line: 1426, baseType: !2604, size: 64, offset: 576)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2606)
!2606 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !622, file: !44, line: 1427, baseType: !181, size: 64, offset: 640)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !622, file: !44, line: 1428, baseType: !181, size: 64, offset: 704)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !622, file: !44, line: 1429, baseType: !181, size: 64, offset: 768)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !622, file: !44, line: 1430, baseType: !409, size: 64, offset: 832)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !622, file: !44, line: 1431, baseType: !784, size: 256, offset: 896)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !622, file: !44, line: 1432, baseType: !150, size: 32, offset: 1152)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !622, file: !44, line: 1433, baseType: !764, size: 32, offset: 1184)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !622, file: !44, line: 1437, baseType: !2615, size: 64, offset: 1216)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2618)
!2618 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !622, file: !44, line: 1449, baseType: !2620, size: 64, offset: 1280)
!2620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !425, line: 34, size: 64, elements: !2621)
!2621 = !{!2622}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2620, file: !425, line: 35, baseType: !428, size: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !622, file: !44, line: 1450, baseType: !250, size: 128, offset: 1344)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !622, file: !44, line: 1451, baseType: !2625, size: 64, offset: 1472)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !622, file: !44, line: 1452, baseType: !1937, size: 64, offset: 1536)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !622, file: !44, line: 1453, baseType: !2629, size: 64, offset: 1600)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !622, file: !44, line: 1454, baseType: !173, size: 128, offset: 1664)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !622, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !622, file: !44, line: 1456, baseType: !2634, size: 2432, offset: 1856)
!2634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2635)
!2635 = !{!2636, !2637, !2638, !2640, !2672}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2634, file: !38, line: 519, baseType: !7, size: 32)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2634, file: !38, line: 520, baseType: !784, size: 256, offset: 64)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2634, file: !38, line: 521, baseType: !2639, size: 192, offset: 320)
!2639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !451, size: 192, elements: !305)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2634, file: !38, line: 522, baseType: !2641, size: 1728, offset: 512)
!2641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2642, size: 1728, elements: !305)
!2642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2643)
!2643 = !{!2644, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2642, file: !38, line: 223, baseType: !2645, size: 64)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2647)
!2647 = !{!2648, !2649, !2662, !2663}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2646, file: !38, line: 444, baseType: !150, size: 32)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2646, file: !38, line: 445, baseType: !2650, size: 64, offset: 64)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2652)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2653)
!2653 = !{!2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2652, file: !38, line: 311, baseType: !701, size: 64)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2652, file: !38, line: 312, baseType: !701, size: 64, offset: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2652, file: !38, line: 313, baseType: !701, size: 64, offset: 128)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2652, file: !38, line: 314, baseType: !701, size: 64, offset: 192)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2652, file: !38, line: 315, baseType: !2444, size: 64, offset: 256)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2652, file: !38, line: 316, baseType: !2444, size: 64, offset: 320)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2652, file: !38, line: 317, baseType: !2444, size: 64, offset: 384)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2652, file: !38, line: 318, baseType: !2516, size: 64, offset: 448)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2646, file: !38, line: 446, baseType: !205, size: 64, offset: 128)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2646, file: !38, line: 447, baseType: !2645, size: 64, offset: 192)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2642, file: !38, line: 224, baseType: !150, size: 32, offset: 64)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2642, file: !38, line: 226, baseType: !250, size: 128, offset: 128)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2642, file: !38, line: 227, baseType: !181, size: 64, offset: 256)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2642, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2642, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2642, file: !38, line: 230, baseType: !2480, size: 64, offset: 384)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2642, file: !38, line: 231, baseType: !2480, size: 64, offset: 448)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2642, file: !38, line: 232, baseType: !164, size: 64, offset: 512)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2634, file: !38, line: 523, baseType: !2673, size: 192, offset: 2240)
!2673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2650, size: 192, elements: !305)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !622, file: !44, line: 1458, baseType: !2675, size: 2112, offset: 4288)
!2675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2676)
!2676 = !{!2677, !2678, !2679}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2675, file: !44, line: 1411, baseType: !150, size: 32)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2675, file: !44, line: 1412, baseType: !1493, size: 128, offset: 64)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2675, file: !44, line: 1413, baseType: !2680, size: 1920, offset: 192)
!2680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2681, size: 1920, elements: !305)
!2681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2682, line: 12, size: 640, elements: !2683)
!2682 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2683 = !{!2684, !2692, !2694, !2699, !2700}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2681, file: !2682, line: 13, baseType: !2685, size: 320)
!2685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2686, line: 17, size: 320, elements: !2687)
!2686 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2687 = !{!2688, !2689, !2690, !2691}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2685, file: !2686, line: 18, baseType: !150, size: 32)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2685, file: !2686, line: 19, baseType: !150, size: 32, offset: 32)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2685, file: !2686, line: 20, baseType: !1493, size: 128, offset: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2685, file: !2686, line: 22, baseType: !392, size: 128, align: 64, offset: 192)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2681, file: !2682, line: 14, baseType: !2693, size: 64, offset: 320)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2681, file: !2682, line: 15, baseType: !2695, size: 64, offset: 384)
!2695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2696, line: 16, size: 64, elements: !2697)
!2696 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2697 = !{!2698}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2695, file: !2696, line: 17, baseType: !1228, size: 64)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2681, file: !2682, line: 16, baseType: !1493, size: 128, offset: 448)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2681, file: !2682, line: 17, baseType: !764, size: 32, offset: 576)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !622, file: !44, line: 1465, baseType: !164, size: 64, offset: 6400)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !622, file: !44, line: 1468, baseType: !188, size: 32, offset: 6464)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !622, file: !44, line: 1470, baseType: !561, size: 64, offset: 6528)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !622, file: !44, line: 1471, baseType: !561, size: 64, offset: 6592)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !622, file: !44, line: 1473, baseType: !189, size: 32, offset: 6656)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !622, file: !44, line: 1474, baseType: !2707, size: 64, offset: 6720)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !622, file: !44, line: 1477, baseType: !2710, size: 256, offset: 6784)
!2710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 256, elements: !221)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !622, file: !44, line: 1478, baseType: !2712, size: 128, offset: 7040)
!2712 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2713, line: 18, baseType: !2714)
!2713 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2714 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2713, line: 16, size: 128, elements: !2715)
!2715 = !{!2716}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2714, file: !2713, line: 17, baseType: !2717, size: 128)
!2717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1365, size: 128, elements: !1747)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !622, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !622, file: !44, line: 1481, baseType: !2720, size: 32, offset: 7200)
!2720 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !174, line: 150, baseType: !7)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !622, file: !44, line: 1487, baseType: !1188, size: 192, offset: 7232)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !622, file: !44, line: 1493, baseType: !202, size: 64, offset: 7424)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !622, file: !44, line: 1495, baseType: !2724, size: 64, offset: 7488)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2726)
!2726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !407, line: 135, size: 1024, align: 512, elements: !2727)
!2727 = !{!2728, !2732, !2733, !2740, !2746, !2750, !2754, !2758, !2759, !2763, !2767, !2772, !2776}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2726, file: !407, line: 136, baseType: !2729, size: 64)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{!150, !409, !7}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2726, file: !407, line: 137, baseType: !2729, size: 64, offset: 64)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2726, file: !407, line: 138, baseType: !2734, size: 64, offset: 128)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{!150, !2737, !2739}
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !410)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2726, file: !407, line: 139, baseType: !2741, size: 64, offset: 192)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = !DISubroutineType(types: !2743)
!2743 = !{!150, !2737, !7, !202, !2744}
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !433)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2726, file: !407, line: 141, baseType: !2747, size: 64, offset: 256)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{!150, !2737}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2726, file: !407, line: 142, baseType: !2751, size: 64, offset: 320)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2752 = !DISubroutineType(types: !2753)
!2753 = !{!150, !409}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2726, file: !407, line: 143, baseType: !2755, size: 64, offset: 384)
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = !DISubroutineType(types: !2757)
!2757 = !{null, !409}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2726, file: !407, line: 144, baseType: !2755, size: 64, offset: 448)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2726, file: !407, line: 145, baseType: !2760, size: 64, offset: 512)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{null, !409, !451}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2726, file: !407, line: 146, baseType: !2764, size: 64, offset: 576)
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2765 = !DISubroutineType(types: !2766)
!2766 = !{!304, !409, !304, !150}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2726, file: !407, line: 147, baseType: !2768, size: 64, offset: 640)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = !DISubroutineType(types: !2770)
!2770 = !{!405, !2771}
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2726, file: !407, line: 148, baseType: !2773, size: 64, offset: 704)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DISubroutineType(types: !2775)
!2775 = !{!150, !571, !512}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2726, file: !407, line: 149, baseType: !2777, size: 64, offset: 768)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{!409, !409, !2780}
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !452)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !622, file: !44, line: 1500, baseType: !150, size: 32, offset: 7552)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !622, file: !44, line: 1502, baseType: !2784, size: 448, offset: 7616)
!2784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2428, line: 60, size: 448, elements: !2785)
!2785 = !{!2786, !2791, !2792, !2793, !2794, !2795, !2796}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2784, file: !2428, line: 61, baseType: !2787, size: 64)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{!181, !2790, !2426}
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2784, file: !2428, line: 63, baseType: !2787, size: 64, offset: 64)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2784, file: !2428, line: 66, baseType: !163, size: 64, offset: 128)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2784, file: !2428, line: 67, baseType: !150, size: 32, offset: 192)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2784, file: !2428, line: 68, baseType: !7, size: 32, offset: 224)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2784, file: !2428, line: 71, baseType: !250, size: 128, offset: 256)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2784, file: !2428, line: 77, baseType: !2797, size: 64, offset: 384)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !622, file: !44, line: 1505, baseType: !788, size: 64, offset: 8064)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !622, file: !44, line: 1508, baseType: !788, size: 64, offset: 8128)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !622, file: !44, line: 1511, baseType: !150, size: 32, offset: 8192)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !622, file: !44, line: 1514, baseType: !924, size: 32, offset: 8224)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !622, file: !44, line: 1517, baseType: !2803, size: 64, offset: 8256)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1972, line: 18, flags: DIFlagFwdDecl)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !622, file: !44, line: 1518, baseType: !657, size: 64, offset: 8320)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !622, file: !44, line: 1525, baseType: !1725, size: 64, offset: 8384)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !622, file: !44, line: 1532, baseType: !2808, size: 64, offset: 8448)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2809, line: 52, size: 64, elements: !2810)
!2809 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2810 = !{!2811}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2808, file: !2809, line: 53, baseType: !2812, size: 64)
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2809, line: 40, size: 256, elements: !2814)
!2814 = !{!2815, !2816, !2821}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2813, file: !2809, line: 42, baseType: !263)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2813, file: !2809, line: 44, baseType: !2817, size: 192)
!2817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2809, line: 28, size: 192, elements: !2818)
!2818 = !{!2819, !2820}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2817, file: !2809, line: 29, baseType: !250, size: 128)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2817, file: !2809, line: 31, baseType: !163, size: 64, offset: 128)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2813, file: !2809, line: 49, baseType: !163, size: 64, offset: 192)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !622, file: !44, line: 1533, baseType: !2808, size: 64, offset: 8512)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !622, file: !44, line: 1534, baseType: !392, size: 128, align: 64, offset: 8576)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !622, file: !44, line: 1535, baseType: !1971, size: 256, offset: 8704)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !622, file: !44, line: 1537, baseType: !1188, size: 192, offset: 8960)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !622, file: !44, line: 1542, baseType: !150, size: 32, offset: 9152)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !622, file: !44, line: 1545, baseType: !263, offset: 9184)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !622, file: !44, line: 1546, baseType: !250, size: 128, offset: 9216)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !622, file: !44, line: 1548, baseType: !263, offset: 9344)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !622, file: !44, line: 1549, baseType: !250, size: 128, offset: 9344)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !452, file: !44, line: 624, baseType: !750, size: 64, offset: 256)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !452, file: !44, line: 631, baseType: !181, size: 64, offset: 320)
!2833 = !DIDerivedType(tag: DW_TAG_member, scope: !452, file: !44, line: 639, baseType: !2834, size: 32, offset: 384)
!2834 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !452, file: !44, line: 639, size: 32, elements: !2835)
!2835 = !{!2836, !2838}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2834, file: !44, line: 640, baseType: !2837, size: 32)
!2837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2834, file: !44, line: 641, baseType: !7, size: 32)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !452, file: !44, line: 643, baseType: !535, size: 32, offset: 416)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !452, file: !44, line: 644, baseType: !553, size: 64, offset: 448)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !452, file: !44, line: 645, baseType: !557, size: 128, offset: 512)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !452, file: !44, line: 646, baseType: !557, size: 128, offset: 640)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !452, file: !44, line: 647, baseType: !557, size: 128, offset: 768)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !452, file: !44, line: 648, baseType: !263, offset: 896)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !452, file: !44, line: 649, baseType: !155, size: 16, offset: 896)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !452, file: !44, line: 650, baseType: !1364, size: 8, offset: 912)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !452, file: !44, line: 651, baseType: !1364, size: 8, offset: 920)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !452, file: !44, line: 652, baseType: !2600, size: 64, offset: 960)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !452, file: !44, line: 659, baseType: !181, size: 64, offset: 1024)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !452, file: !44, line: 660, baseType: !784, size: 256, offset: 1088)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !452, file: !44, line: 662, baseType: !181, size: 64, offset: 1344)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !452, file: !44, line: 663, baseType: !181, size: 64, offset: 1408)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !452, file: !44, line: 665, baseType: !173, size: 128, offset: 1472)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !452, file: !44, line: 666, baseType: !250, size: 128, offset: 1600)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !452, file: !44, line: 675, baseType: !250, size: 128, offset: 1728)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !452, file: !44, line: 676, baseType: !250, size: 128, offset: 1856)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !452, file: !44, line: 677, baseType: !250, size: 128, offset: 1984)
!2858 = !DIDerivedType(tag: DW_TAG_member, scope: !452, file: !44, line: 678, baseType: !2859, size: 128, offset: 2112)
!2859 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !452, file: !44, line: 678, size: 128, elements: !2860)
!2860 = !{!2861, !2862}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2859, file: !44, line: 679, baseType: !657, size: 64)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2859, file: !44, line: 680, baseType: !392, size: 128, align: 64)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !452, file: !44, line: 682, baseType: !790, size: 64, offset: 2240)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !452, file: !44, line: 683, baseType: !790, size: 64, offset: 2304)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !452, file: !44, line: 684, baseType: !764, size: 32, offset: 2368)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !452, file: !44, line: 685, baseType: !764, size: 32, offset: 2400)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !452, file: !44, line: 686, baseType: !764, size: 32, offset: 2432)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !452, file: !44, line: 688, baseType: !764, size: 32, offset: 2464)
!2869 = !DIDerivedType(tag: DW_TAG_member, scope: !452, file: !44, line: 690, baseType: !2870, size: 64, offset: 2496)
!2870 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !452, file: !44, line: 690, size: 64, elements: !2871)
!2871 = !{!2872, !3095}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2870, file: !44, line: 691, baseType: !2873, size: 64)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2875)
!2875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2876)
!2876 = !{!2877, !2878, !2882, !2887, !2891, !2892, !2893, !2897, !2910, !2911, !2919, !2923, !2924, !2928, !2929, !2933, !2938, !2939, !2943, !2947, !3055, !3059, !3060, !3064, !3065, !3069, !3073, !3078, !3082, !3086, !3090, !3094}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2875, file: !44, line: 1823, baseType: !205, size: 64)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2875, file: !44, line: 1824, baseType: !2879, size: 64, offset: 64)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!553, !379, !553, !150}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2875, file: !44, line: 1825, baseType: !2883, size: 64, offset: 128)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{!335, !379, !304, !349, !2886}
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2875, file: !44, line: 1826, baseType: !2888, size: 64, offset: 192)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{!335, !379, !202, !349, !2886}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2875, file: !44, line: 1827, baseType: !861, size: 64, offset: 256)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2875, file: !44, line: 1828, baseType: !861, size: 64, offset: 320)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2875, file: !44, line: 1829, baseType: !2894, size: 64, offset: 384)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!150, !864, !512}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2875, file: !44, line: 1830, baseType: !2898, size: 64, offset: 448)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{!150, !379, !2901}
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2903)
!2903 = !{!2904, !2909}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2902, file: !44, line: 1777, baseType: !2905, size: 64)
!2905 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2906)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{!150, !2901, !202, !150, !553, !444, !7}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2902, file: !44, line: 1778, baseType: !553, size: 64, offset: 64)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2875, file: !44, line: 1831, baseType: !2898, size: 64, offset: 512)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2875, file: !44, line: 1832, baseType: !2912, size: 64, offset: 576)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!2915, !379, !2917}
!2915 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2916, line: 52, baseType: !7)
!2916 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !641, line: 27, flags: DIFlagFwdDecl)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2875, file: !44, line: 1833, baseType: !2920, size: 64, offset: 640)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{!163, !379, !7, !181}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2875, file: !44, line: 1834, baseType: !2920, size: 64, offset: 704)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2875, file: !44, line: 1835, baseType: !2925, size: 64, offset: 768)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!150, !379, !996}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2875, file: !44, line: 1836, baseType: !181, size: 64, offset: 832)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2875, file: !44, line: 1837, baseType: !2930, size: 64, offset: 896)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!150, !451, !379}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2875, file: !44, line: 1838, baseType: !2934, size: 64, offset: 960)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{!150, !379, !2937}
!2937 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !164)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2875, file: !44, line: 1839, baseType: !2930, size: 64, offset: 1024)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2875, file: !44, line: 1840, baseType: !2940, size: 64, offset: 1088)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!150, !379, !553, !553, !150}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2875, file: !44, line: 1841, baseType: !2944, size: 64, offset: 1152)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{!150, !150, !379, !150}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2875, file: !44, line: 1842, baseType: !2948, size: 64, offset: 1216)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{!150, !379, !150, !2951}
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2953)
!2953 = !{!2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2985, !2986, !2987, !3000, !3031}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2952, file: !44, line: 1063, baseType: !2951, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2952, file: !44, line: 1064, baseType: !250, size: 128, offset: 64)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2952, file: !44, line: 1065, baseType: !173, size: 128, offset: 192)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2952, file: !44, line: 1066, baseType: !250, size: 128, offset: 320)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2952, file: !44, line: 1069, baseType: !250, size: 128, offset: 448)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2952, file: !44, line: 1072, baseType: !2937, size: 64, offset: 576)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2952, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2952, file: !44, line: 1074, baseType: !161, size: 8, offset: 672)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2952, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2952, file: !44, line: 1076, baseType: !150, size: 32, offset: 736)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2952, file: !44, line: 1077, baseType: !1493, size: 128, offset: 768)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2952, file: !44, line: 1078, baseType: !379, size: 64, offset: 896)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2952, file: !44, line: 1079, baseType: !553, size: 64, offset: 960)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2952, file: !44, line: 1080, baseType: !553, size: 64, offset: 1024)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2952, file: !44, line: 1082, baseType: !2969, size: 64, offset: 1088)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2971)
!2971 = !{!2972, !2980, !2981, !2982, !2983, !2984}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2970, file: !44, line: 1315, baseType: !2973)
!2973 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2974, line: 20, baseType: !2975)
!2974 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2975 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2974, line: 11, elements: !2976)
!2976 = !{!2977}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2975, file: !2974, line: 12, baseType: !2978)
!2978 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !275, line: 33, baseType: !2979)
!2979 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !275, line: 31, elements: !277)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2970, file: !44, line: 1316, baseType: !150, size: 32)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2970, file: !44, line: 1317, baseType: !150, size: 32, offset: 32)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2970, file: !44, line: 1318, baseType: !2969, size: 64, offset: 64)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2970, file: !44, line: 1319, baseType: !379, size: 64, offset: 128)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2970, file: !44, line: 1320, baseType: !392, size: 128, align: 64, offset: 192)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2952, file: !44, line: 1084, baseType: !181, size: 64, offset: 1152)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2952, file: !44, line: 1085, baseType: !181, size: 64, offset: 1216)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2952, file: !44, line: 1087, baseType: !2988, size: 64, offset: 1280)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2990)
!2990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !2991)
!2991 = !{!2992, !2996}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2990, file: !44, line: 1012, baseType: !2993, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{null, !2951, !2951}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2990, file: !44, line: 1013, baseType: !2997, size: 64, offset: 64)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{null, !2951}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2952, file: !44, line: 1088, baseType: !3001, size: 64, offset: 1344)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3003)
!3003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !3004)
!3004 = !{!3005, !3009, !3013, !3014, !3018, !3022, !3026, !3030}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3003, file: !44, line: 1017, baseType: !3006, size: 64)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{!2937, !2937}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3003, file: !44, line: 1018, baseType: !3010, size: 64, offset: 64)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{null, !2937}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3003, file: !44, line: 1019, baseType: !2997, size: 64, offset: 128)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3003, file: !44, line: 1020, baseType: !3015, size: 64, offset: 192)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{!150, !2951, !150}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3003, file: !44, line: 1021, baseType: !3019, size: 64, offset: 256)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!512, !2951}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3003, file: !44, line: 1022, baseType: !3023, size: 64, offset: 320)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!150, !2951, !150, !253}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3003, file: !44, line: 1023, baseType: !3027, size: 64, offset: 384)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{null, !2951, !838}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3003, file: !44, line: 1024, baseType: !3019, size: 64, offset: 448)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2952, file: !44, line: 1097, baseType: !3032, size: 256, offset: 1408)
!3032 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2952, file: !44, line: 1089, size: 256, elements: !3033)
!3033 = !{!3034, !3043, !3049}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3032, file: !44, line: 1090, baseType: !3035, size: 256)
!3035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3036, line: 10, size: 256, elements: !3037)
!3036 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3037 = !{!3038, !3039, !3042}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3035, file: !3036, line: 11, baseType: !188, size: 32)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3035, file: !3036, line: 12, baseType: !3040, size: 64, offset: 64)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3036, line: 5, flags: DIFlagFwdDecl)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3035, file: !3036, line: 13, baseType: !250, size: 128, offset: 128)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3032, file: !44, line: 1091, baseType: !3044, size: 64)
!3044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3036, line: 17, size: 64, elements: !3045)
!3045 = !{!3046}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3044, file: !3036, line: 18, baseType: !3047, size: 64)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3036, line: 16, flags: DIFlagFwdDecl)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3032, file: !44, line: 1096, baseType: !3050, size: 192)
!3050 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3032, file: !44, line: 1092, size: 192, elements: !3051)
!3051 = !{!3052, !3053, !3054}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3050, file: !44, line: 1093, baseType: !250, size: 128)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3050, file: !44, line: 1094, baseType: !150, size: 32, offset: 128)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3050, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2875, file: !44, line: 1843, baseType: !3056, size: 64, offset: 1280)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{!335, !379, !737, !150, !349, !2886, !150}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2875, file: !44, line: 1844, baseType: !1116, size: 64, offset: 1344)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2875, file: !44, line: 1845, baseType: !3061, size: 64, offset: 1408)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{!150, !150}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2875, file: !44, line: 1846, baseType: !2948, size: 64, offset: 1472)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2875, file: !44, line: 1847, baseType: !3066, size: 64, offset: 1536)
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{!335, !2112, !379, !2886, !349, !7}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2875, file: !44, line: 1848, baseType: !3070, size: 64, offset: 1600)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{!335, !379, !2886, !2112, !349, !7}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2875, file: !44, line: 1849, baseType: !3074, size: 64, offset: 1664)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{!150, !379, !163, !3077, !838}
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2875, file: !44, line: 1850, baseType: !3079, size: 64, offset: 1728)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{!163, !379, !150, !553, !553}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2875, file: !44, line: 1852, baseType: !3083, size: 64, offset: 1792)
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{null, !727, !379}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2875, file: !44, line: 1856, baseType: !3087, size: 64, offset: 1856)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!335, !379, !553, !379, !553, !349, !7}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2875, file: !44, line: 1858, baseType: !3091, size: 64, offset: 1920)
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3092, size: 64)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{!553, !379, !553, !379, !553, !553, !7}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2875, file: !44, line: 1861, baseType: !2940, size: 64, offset: 1984)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2870, file: !44, line: 692, baseType: !680, size: 64)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !452, file: !44, line: 694, baseType: !3097, size: 64, offset: 2560)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3099)
!3099 = !{!3100, !3101, !3102, !3103}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3098, file: !44, line: 1101, baseType: !263)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3098, file: !44, line: 1102, baseType: !250, size: 128)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3098, file: !44, line: 1103, baseType: !250, size: 128, offset: 128)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3098, file: !44, line: 1104, baseType: !250, size: 128, offset: 256)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !452, file: !44, line: 695, baseType: !751, size: 1216, align: 64, offset: 2624)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !452, file: !44, line: 696, baseType: !250, size: 128, offset: 3840)
!3106 = !DIDerivedType(tag: DW_TAG_member, scope: !452, file: !44, line: 697, baseType: !3107, size: 64, offset: 3968)
!3107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !452, file: !44, line: 697, size: 64, elements: !3108)
!3108 = !{!3109, !3110, !3111, !3114, !3115}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3107, file: !44, line: 698, baseType: !2112, size: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3107, file: !44, line: 699, baseType: !2625, size: 64)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3107, file: !44, line: 700, baseType: !3112, size: 64)
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3113 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3107, file: !44, line: 701, baseType: !304, size: 64)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3107, file: !44, line: 702, baseType: !7, size: 32)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !452, file: !44, line: 705, baseType: !189, size: 32, offset: 4032)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !452, file: !44, line: 708, baseType: !189, size: 32, offset: 4064)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !452, file: !44, line: 709, baseType: !2707, size: 64, offset: 4096)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !452, file: !44, line: 720, baseType: !164, size: 64, offset: 4160)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !410, file: !407, line: 98, baseType: !3121, size: 256, offset: 448)
!3121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 256, elements: !221)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !410, file: !407, line: 101, baseType: !3123, size: 32, offset: 704)
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3124, line: 25, size: 32, elements: !3125)
!3124 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3125 = !{!3126}
!3126 = !DIDerivedType(tag: DW_TAG_member, scope: !3123, file: !3124, line: 26, baseType: !3127, size: 32)
!3127 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3123, file: !3124, line: 26, size: 32, elements: !3128)
!3128 = !{!3129}
!3129 = !DIDerivedType(tag: DW_TAG_member, scope: !3127, file: !3124, line: 30, baseType: !3130, size: 32)
!3130 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3127, file: !3124, line: 30, size: 32, elements: !3131)
!3131 = !{!3132, !3133}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3130, file: !3124, line: 31, baseType: !263)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3130, file: !3124, line: 32, baseType: !150, size: 32)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !410, file: !407, line: 102, baseType: !2724, size: 64, offset: 768)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !410, file: !407, line: 103, baseType: !621, size: 64, offset: 832)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !410, file: !407, line: 104, baseType: !181, size: 64, offset: 896)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !410, file: !407, line: 105, baseType: !164, size: 64, offset: 960)
!3138 = !DIDerivedType(tag: DW_TAG_member, scope: !410, file: !407, line: 107, baseType: !3139, size: 128, offset: 1024)
!3139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !410, file: !407, line: 107, size: 128, elements: !3140)
!3140 = !{!3141, !3142}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3139, file: !407, line: 108, baseType: !250, size: 128)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3139, file: !407, line: 109, baseType: !3143, size: 64)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !410, file: !407, line: 111, baseType: !250, size: 128, offset: 1152)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !410, file: !407, line: 112, baseType: !250, size: 128, offset: 1280)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !410, file: !407, line: 120, baseType: !3147, size: 128, offset: 1408)
!3147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !410, file: !407, line: 116, size: 128, elements: !3148)
!3148 = !{!3149, !3150, !3151}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3147, file: !407, line: 117, baseType: !173, size: 128)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3147, file: !407, line: 118, baseType: !424, size: 128)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3147, file: !407, line: 119, baseType: !392, size: 128, align: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !380, file: !44, line: 922, baseType: !451, size: 64, offset: 256)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !380, file: !44, line: 923, baseType: !2873, size: 64, offset: 320)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !380, file: !44, line: 929, baseType: !263, offset: 384)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !380, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !380, file: !44, line: 931, baseType: !788, size: 64, offset: 448)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !380, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !380, file: !44, line: 933, baseType: !2720, size: 32, offset: 544)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !380, file: !44, line: 934, baseType: !1188, size: 192, offset: 576)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !380, file: !44, line: 935, baseType: !553, size: 64, offset: 768)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !380, file: !44, line: 936, baseType: !3162, size: 192, offset: 832)
!3162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3163)
!3163 = !{!3164, !3165, !3166, !3167, !3168, !3169}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3162, file: !44, line: 886, baseType: !2973)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3162, file: !44, line: 887, baseType: !1483, size: 64)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3162, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3162, file: !44, line: 889, baseType: !457, size: 32, offset: 96)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3162, file: !44, line: 889, baseType: !457, size: 32, offset: 128)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3162, file: !44, line: 890, baseType: !150, size: 32, offset: 160)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !380, file: !44, line: 937, baseType: !1559, size: 64, offset: 1024)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !380, file: !44, line: 938, baseType: !3172, size: 256, offset: 1088)
!3172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3173)
!3173 = !{!3174, !3175, !3176, !3177, !3178, !3179}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3172, file: !44, line: 897, baseType: !181, size: 64)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3172, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3172, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3172, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3172, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3172, file: !44, line: 904, baseType: !553, size: 64, offset: 192)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !380, file: !44, line: 940, baseType: !444, size: 64, offset: 1344)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !380, file: !44, line: 945, baseType: !164, size: 64, offset: 1408)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !380, file: !44, line: 949, baseType: !250, size: 128, offset: 1472)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !380, file: !44, line: 950, baseType: !250, size: 128, offset: 1600)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !380, file: !44, line: 952, baseType: !750, size: 64, offset: 1728)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !380, file: !44, line: 953, baseType: !924, size: 32, offset: 1792)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !380, file: !44, line: 954, baseType: !924, size: 32, offset: 1824)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !370, file: !329, line: 174, baseType: !376, size: 64, offset: 320)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !370, file: !329, line: 176, baseType: !3189, size: 64, offset: 384)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{!150, !379, !256, !369, !996}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !358, file: !329, line: 90, baseType: !353, size: 64, offset: 192)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !358, file: !329, line: 91, baseType: !3194, size: 64, offset: 256)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !319, file: !246, line: 143, baseType: !3196, size: 64, offset: 256)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{!3199, !256}
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3201)
!3201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3202)
!3202 = !{!3203, !3204, !3208, !3212, !3218, !3222}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3201, file: !61, line: 40, baseType: !60, size: 32)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3201, file: !61, line: 41, baseType: !3205, size: 64, offset: 64)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!512}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3201, file: !61, line: 42, baseType: !3209, size: 64, offset: 128)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!164}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3201, file: !61, line: 43, baseType: !3213, size: 64, offset: 192)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!2141, !3216}
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3201, file: !61, line: 44, baseType: !3219, size: 64, offset: 256)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{!2141}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3201, file: !61, line: 45, baseType: !490, size: 64, offset: 320)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !319, file: !246, line: 144, baseType: !3224, size: 64, offset: 320)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!2141, !256}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !319, file: !246, line: 145, baseType: !3228, size: 64, offset: 384)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{null, !256, !3231, !3232}
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !245, file: !246, line: 70, baseType: !3234, size: 64, offset: 384)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !641, line: 123, size: 1024, elements: !3236)
!3236 = !{!3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3365, !3366, !3367, !3368, !3369}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3235, file: !641, line: 124, baseType: !764, size: 32)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3235, file: !641, line: 125, baseType: !764, size: 32, offset: 32)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3235, file: !641, line: 135, baseType: !3234, size: 64, offset: 64)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3235, file: !641, line: 136, baseType: !202, size: 64, offset: 128)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3235, file: !641, line: 138, baseType: !777, size: 192, align: 64, offset: 192)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3235, file: !641, line: 140, baseType: !2141, size: 64, offset: 384)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3235, file: !641, line: 141, baseType: !7, size: 32, offset: 448)
!3244 = !DIDerivedType(tag: DW_TAG_member, scope: !3235, file: !641, line: 142, baseType: !3245, size: 256, offset: 512)
!3245 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3235, file: !641, line: 142, size: 256, elements: !3246)
!3246 = !{!3247, !3293, !3297}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3245, file: !641, line: 143, baseType: !3248, size: 192)
!3248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !641, line: 91, size: 192, elements: !3249)
!3249 = !{!3250, !3251, !3252}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3248, file: !641, line: 92, baseType: !181, size: 64)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3248, file: !641, line: 94, baseType: !773, size: 64, offset: 64)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3248, file: !641, line: 100, baseType: !3253, size: 64, offset: 128)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !641, line: 180, size: 704, elements: !3255)
!3255 = !{!3256, !3257, !3258, !3265, !3266, !3267, !3291, !3292}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3254, file: !641, line: 182, baseType: !3234, size: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3254, file: !641, line: 183, baseType: !7, size: 32, offset: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3254, file: !641, line: 186, baseType: !3259, size: 192, offset: 128)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3260, line: 19, size: 192, elements: !3261)
!3260 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3261 = !{!3262, !3263, !3264}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3259, file: !3260, line: 20, baseType: !755, size: 128)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3259, file: !3260, line: 21, baseType: !7, size: 32, offset: 128)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3259, file: !3260, line: 22, baseType: !7, size: 32, offset: 160)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3254, file: !641, line: 187, baseType: !188, size: 32, offset: 320)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3254, file: !641, line: 188, baseType: !188, size: 32, offset: 352)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3254, file: !641, line: 189, baseType: !3268, size: 64, offset: 384)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !641, line: 168, size: 320, elements: !3270)
!3270 = !{!3271, !3275, !3279, !3283, !3287}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3269, file: !641, line: 169, baseType: !3272, size: 64)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{!150, !727, !3253}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3269, file: !641, line: 171, baseType: !3276, size: 64, offset: 64)
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{!150, !3234, !202, !344}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3269, file: !641, line: 173, baseType: !3280, size: 64, offset: 128)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = !DISubroutineType(types: !3282)
!3282 = !{!150, !3234}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3269, file: !641, line: 174, baseType: !3284, size: 64, offset: 192)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = !DISubroutineType(types: !3286)
!3286 = !{!150, !3234, !3234, !202}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3269, file: !641, line: 176, baseType: !3288, size: 64, offset: 256)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = !DISubroutineType(types: !3290)
!3290 = !{!150, !727, !3234, !3253}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3254, file: !641, line: 192, baseType: !250, size: 128, offset: 448)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3254, file: !641, line: 194, baseType: !1493, size: 128, offset: 576)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3245, file: !641, line: 144, baseType: !3294, size: 64)
!3294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !641, line: 103, size: 64, elements: !3295)
!3295 = !{!3296}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3294, file: !641, line: 104, baseType: !3234, size: 64)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3245, file: !641, line: 145, baseType: !3298, size: 256)
!3298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !641, line: 107, size: 256, elements: !3299)
!3299 = !{!3300, !3360, !3363, !3364}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3298, file: !641, line: 108, baseType: !3301, size: 64)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3303)
!3303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !641, line: 217, size: 768, elements: !3304)
!3304 = !{!3305, !3325, !3329, !3333, !3337, !3341, !3345, !3349, !3350, !3351, !3352, !3356}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3303, file: !641, line: 222, baseType: !3306, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!150, !3309}
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !641, line: 197, size: 1088, elements: !3311)
!3311 = !{!3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3310, file: !641, line: 199, baseType: !3234, size: 64)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3310, file: !641, line: 200, baseType: !379, size: 64, offset: 64)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3310, file: !641, line: 201, baseType: !727, size: 64, offset: 128)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3310, file: !641, line: 202, baseType: !164, size: 64, offset: 192)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3310, file: !641, line: 205, baseType: !1188, size: 192, offset: 256)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3310, file: !641, line: 206, baseType: !1188, size: 192, offset: 448)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3310, file: !641, line: 207, baseType: !150, size: 32, offset: 640)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3310, file: !641, line: 208, baseType: !250, size: 128, offset: 704)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3310, file: !641, line: 209, baseType: !304, size: 64, offset: 832)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3310, file: !641, line: 211, baseType: !349, size: 64, offset: 896)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3310, file: !641, line: 212, baseType: !512, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3310, file: !641, line: 213, baseType: !512, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3310, file: !641, line: 214, baseType: !1024, size: 64, offset: 1024)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3303, file: !641, line: 223, baseType: !3326, size: 64, offset: 64)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DISubroutineType(types: !3328)
!3328 = !{null, !3309}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3303, file: !641, line: 236, baseType: !3330, size: 64, offset: 128)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!150, !727, !164}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3303, file: !641, line: 238, baseType: !3334, size: 64, offset: 192)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{!164, !727, !2886}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3303, file: !641, line: 239, baseType: !3338, size: 64, offset: 256)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DISubroutineType(types: !3340)
!3340 = !{!164, !727, !164, !2886}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3303, file: !641, line: 240, baseType: !3342, size: 64, offset: 320)
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3343 = !DISubroutineType(types: !3344)
!3344 = !{null, !727, !164}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3303, file: !641, line: 242, baseType: !3346, size: 64, offset: 384)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = !DISubroutineType(types: !3348)
!3348 = !{!335, !3309, !304, !349, !553}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3303, file: !641, line: 252, baseType: !349, size: 64, offset: 448)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3303, file: !641, line: 259, baseType: !512, size: 8, offset: 512)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3303, file: !641, line: 260, baseType: !3346, size: 64, offset: 576)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3303, file: !641, line: 263, baseType: !3353, size: 64, offset: 640)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DISubroutineType(types: !3355)
!3355 = !{!2915, !3309, !2917}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3303, file: !641, line: 266, baseType: !3357, size: 64, offset: 704)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{!150, !3309, !996}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3298, file: !641, line: 109, baseType: !3361, size: 64, offset: 64)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !641, line: 31, flags: DIFlagFwdDecl)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3298, file: !641, line: 110, baseType: !553, size: 64, offset: 128)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3298, file: !641, line: 111, baseType: !3234, size: 64, offset: 192)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3235, file: !641, line: 148, baseType: !164, size: 64, offset: 768)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3235, file: !641, line: 154, baseType: !444, size: 64, offset: 832)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3235, file: !641, line: 156, baseType: !155, size: 16, offset: 896)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3235, file: !641, line: 157, baseType: !344, size: 16, offset: 912)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3235, file: !641, line: 158, baseType: !3370, size: 64, offset: 960)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !641, line: 32, flags: DIFlagFwdDecl)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !245, file: !246, line: 71, baseType: !3373, size: 32, offset: 448)
!3373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3374, line: 19, size: 32, elements: !3375)
!3374 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3375 = !{!3376}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3373, file: !3374, line: 20, baseType: !1242, size: 32)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !245, file: !246, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !245, file: !246, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !245, file: !246, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !245, file: !246, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !245, file: !246, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !242, file: !73, line: 463, baseType: !241, size: 64, offset: 512)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !242, file: !73, line: 465, baseType: !3384, size: 64, offset: 576)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !242, file: !73, line: 467, baseType: !202, size: 64, offset: 640)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !242, file: !73, line: 468, baseType: !3388, size: 64, offset: 704)
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3390)
!3390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3391)
!3391 = !{!3392, !3393, !3394, !3398, !3403, !3407}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3390, file: !73, line: 88, baseType: !202, size: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3390, file: !73, line: 89, baseType: !355, size: 64, offset: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3390, file: !73, line: 90, baseType: !3395, size: 64, offset: 128)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{!150, !241, !299}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3390, file: !73, line: 91, baseType: !3399, size: 64, offset: 192)
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = !DISubroutineType(types: !3401)
!3401 = !{!304, !241, !3402, !3231, !3232}
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3390, file: !73, line: 93, baseType: !3404, size: 64, offset: 256)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{null, !241}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3390, file: !73, line: 95, baseType: !3408, size: 64, offset: 320)
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3410)
!3410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3411)
!3411 = !{!3412, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3410, file: !80, line: 279, baseType: !3413, size: 64)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = !DISubroutineType(types: !3415)
!3415 = !{!150, !241}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3410, file: !80, line: 280, baseType: !3404, size: 64, offset: 64)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3410, file: !80, line: 281, baseType: !3413, size: 64, offset: 128)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3410, file: !80, line: 282, baseType: !3413, size: 64, offset: 192)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3410, file: !80, line: 283, baseType: !3413, size: 64, offset: 256)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3410, file: !80, line: 284, baseType: !3413, size: 64, offset: 320)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3410, file: !80, line: 285, baseType: !3413, size: 64, offset: 384)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3410, file: !80, line: 286, baseType: !3413, size: 64, offset: 448)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3410, file: !80, line: 287, baseType: !3413, size: 64, offset: 512)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3410, file: !80, line: 288, baseType: !3413, size: 64, offset: 576)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3410, file: !80, line: 289, baseType: !3413, size: 64, offset: 640)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3410, file: !80, line: 290, baseType: !3413, size: 64, offset: 704)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3410, file: !80, line: 291, baseType: !3413, size: 64, offset: 768)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3410, file: !80, line: 292, baseType: !3413, size: 64, offset: 832)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3410, file: !80, line: 293, baseType: !3413, size: 64, offset: 896)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3410, file: !80, line: 294, baseType: !3413, size: 64, offset: 960)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3410, file: !80, line: 295, baseType: !3413, size: 64, offset: 1024)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3410, file: !80, line: 296, baseType: !3413, size: 64, offset: 1088)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3410, file: !80, line: 297, baseType: !3413, size: 64, offset: 1152)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3410, file: !80, line: 298, baseType: !3413, size: 64, offset: 1216)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3410, file: !80, line: 299, baseType: !3413, size: 64, offset: 1280)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3410, file: !80, line: 300, baseType: !3413, size: 64, offset: 1344)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3410, file: !80, line: 301, baseType: !3413, size: 64, offset: 1408)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !242, file: !73, line: 470, baseType: !3439, size: 64, offset: 768)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3441, line: 82, size: 1408, elements: !3442)
!3441 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3442 = !{!3443, !3444, !3445, !3446, !3447, !3448, !3449, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3524, !3527, !3528}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3440, file: !3441, line: 83, baseType: !202, size: 64)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3440, file: !3441, line: 84, baseType: !202, size: 64, offset: 64)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3440, file: !3441, line: 85, baseType: !241, size: 64, offset: 128)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3440, file: !3441, line: 86, baseType: !355, size: 64, offset: 192)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3440, file: !3441, line: 87, baseType: !355, size: 64, offset: 256)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3440, file: !3441, line: 88, baseType: !355, size: 64, offset: 320)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3440, file: !3441, line: 90, baseType: !3450, size: 64, offset: 384)
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{!150, !241, !3453}
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3455)
!3455 = !{!3456, !3457, !3458, !3459, !3460, !3461, !3462, !3475, !3488, !3489, !3490, !3491, !3492, !3500, !3501, !3502, !3503, !3504, !3505}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3454, file: !67, line: 96, baseType: !202, size: 64)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3454, file: !67, line: 97, baseType: !3439, size: 64, offset: 64)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3454, file: !67, line: 99, baseType: !205, size: 64, offset: 128)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3454, file: !67, line: 100, baseType: !202, size: 64, offset: 192)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3454, file: !67, line: 102, baseType: !512, size: 8, offset: 256)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3454, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3454, file: !67, line: 105, baseType: !3463, size: 64, offset: 320)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3465)
!3465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3466, line: 262, size: 1600, elements: !3467)
!3466 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3467 = !{!3468, !3469, !3470, !3474}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3465, file: !3466, line: 263, baseType: !2710, size: 256)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3465, file: !3466, line: 264, baseType: !2710, size: 256, offset: 256)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3465, file: !3466, line: 265, baseType: !3471, size: 1024, offset: 512)
!3471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 1024, elements: !3472)
!3472 = !{!3473}
!3473 = !DISubrange(count: 128)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3465, file: !3466, line: 266, baseType: !2141, size: 64, offset: 1536)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3454, file: !67, line: 106, baseType: !3476, size: 64, offset: 384)
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3478)
!3478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3466, line: 210, size: 256, elements: !3479)
!3479 = !{!3480, !3484, !3486, !3487}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3478, file: !3466, line: 211, baseType: !3481, size: 72)
!3481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1365, size: 72, elements: !3482)
!3482 = !{!3483}
!3483 = !DISubrange(count: 9)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3478, file: !3466, line: 212, baseType: !3485, size: 64, offset: 128)
!3485 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3466, line: 14, baseType: !181)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3478, file: !3466, line: 213, baseType: !189, size: 32, offset: 192)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3478, file: !3466, line: 214, baseType: !189, size: 32, offset: 224)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3454, file: !67, line: 108, baseType: !3413, size: 64, offset: 448)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3454, file: !67, line: 109, baseType: !3404, size: 64, offset: 512)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3454, file: !67, line: 110, baseType: !3413, size: 64, offset: 576)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3454, file: !67, line: 111, baseType: !3404, size: 64, offset: 640)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3454, file: !67, line: 112, baseType: !3493, size: 64, offset: 704)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = !DISubroutineType(types: !3495)
!3495 = !{!150, !241, !3496}
!3496 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3497)
!3497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3498)
!3498 = !{!3499}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3497, file: !80, line: 51, baseType: !150, size: 32)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3454, file: !67, line: 113, baseType: !3413, size: 64, offset: 768)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3454, file: !67, line: 114, baseType: !355, size: 64, offset: 832)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3454, file: !67, line: 115, baseType: !355, size: 64, offset: 896)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3454, file: !67, line: 117, baseType: !3408, size: 64, offset: 960)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3454, file: !67, line: 118, baseType: !3404, size: 64, offset: 1024)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3454, file: !67, line: 120, baseType: !3506, size: 64, offset: 1088)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3440, file: !3441, line: 91, baseType: !3395, size: 64, offset: 448)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3440, file: !3441, line: 92, baseType: !3413, size: 64, offset: 512)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3440, file: !3441, line: 93, baseType: !3404, size: 64, offset: 576)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3440, file: !3441, line: 94, baseType: !3413, size: 64, offset: 640)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3440, file: !3441, line: 95, baseType: !3404, size: 64, offset: 704)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3440, file: !3441, line: 97, baseType: !3413, size: 64, offset: 768)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3440, file: !3441, line: 98, baseType: !3413, size: 64, offset: 832)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3440, file: !3441, line: 100, baseType: !3493, size: 64, offset: 896)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3440, file: !3441, line: 101, baseType: !3413, size: 64, offset: 960)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3440, file: !3441, line: 103, baseType: !3413, size: 64, offset: 1024)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3440, file: !3441, line: 105, baseType: !3413, size: 64, offset: 1088)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3440, file: !3441, line: 107, baseType: !3408, size: 64, offset: 1152)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3440, file: !3441, line: 109, baseType: !3521, size: 64, offset: 1216)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3523)
!3523 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3441, line: 109, flags: DIFlagFwdDecl)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3440, file: !3441, line: 111, baseType: !3525, size: 64, offset: 1280)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3441, line: 111, flags: DIFlagFwdDecl)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3440, file: !3441, line: 112, baseType: !661, offset: 1344)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3440, file: !3441, line: 114, baseType: !512, size: 8, offset: 1344)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !242, file: !73, line: 471, baseType: !3453, size: 64, offset: 832)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !242, file: !73, line: 473, baseType: !164, size: 64, offset: 896)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !242, file: !73, line: 475, baseType: !164, size: 64, offset: 960)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !242, file: !73, line: 480, baseType: !1188, size: 192, offset: 1024)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !242, file: !73, line: 484, baseType: !3534, size: 576, offset: 1216)
!3534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3535)
!3535 = !{!3536, !3537, !3538, !3539, !3540, !3541}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3534, file: !73, line: 362, baseType: !250, size: 128)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3534, file: !73, line: 363, baseType: !250, size: 128, offset: 128)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3534, file: !73, line: 364, baseType: !250, size: 128, offset: 256)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3534, file: !73, line: 365, baseType: !250, size: 128, offset: 384)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3534, file: !73, line: 366, baseType: !512, size: 8, offset: 512)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3534, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !242, file: !73, line: 485, baseType: !3543, size: 2304, offset: 1792)
!3543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3544)
!3544 = !{!3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3629, !3633}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3543, file: !80, line: 566, baseType: !3496, size: 32)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3543, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3543, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3543, file: !80, line: 569, baseType: !512, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3543, file: !80, line: 570, baseType: !512, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3543, file: !80, line: 571, baseType: !512, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3543, file: !80, line: 572, baseType: !512, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3543, file: !80, line: 573, baseType: !512, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3543, file: !80, line: 574, baseType: !512, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3543, file: !80, line: 575, baseType: !512, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3543, file: !80, line: 576, baseType: !512, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3543, file: !80, line: 577, baseType: !188, size: 32, offset: 64)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3543, file: !80, line: 578, baseType: !263, offset: 96)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3543, file: !80, line: 580, baseType: !250, size: 128, offset: 128)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3543, file: !80, line: 581, baseType: !1514, size: 192, offset: 256)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3543, file: !80, line: 582, baseType: !3561, size: 64, offset: 448)
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3563, line: 43, size: 1472, elements: !3564)
!3563 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3564 = !{!3565, !3566, !3567, !3568, !3569, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3562, file: !3563, line: 44, baseType: !202, size: 64)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3562, file: !3563, line: 45, baseType: !150, size: 32, offset: 64)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3562, file: !3563, line: 46, baseType: !250, size: 128, offset: 128)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3562, file: !3563, line: 47, baseType: !263, offset: 256)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3562, file: !3563, line: 48, baseType: !3570, size: 64, offset: 256)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3562, file: !3563, line: 49, baseType: !169, size: 320, offset: 320)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3562, file: !3563, line: 50, baseType: !181, size: 64, offset: 640)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3562, file: !3563, line: 51, baseType: !1312, size: 64, offset: 704)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3562, file: !3563, line: 52, baseType: !1312, size: 64, offset: 768)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3562, file: !3563, line: 53, baseType: !1312, size: 64, offset: 832)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3562, file: !3563, line: 54, baseType: !1312, size: 64, offset: 896)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3562, file: !3563, line: 55, baseType: !1312, size: 64, offset: 960)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3562, file: !3563, line: 56, baseType: !181, size: 64, offset: 1024)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3562, file: !3563, line: 57, baseType: !181, size: 64, offset: 1088)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3562, file: !3563, line: 58, baseType: !181, size: 64, offset: 1152)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3562, file: !3563, line: 59, baseType: !181, size: 64, offset: 1216)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3562, file: !3563, line: 60, baseType: !181, size: 64, offset: 1280)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3562, file: !3563, line: 61, baseType: !241, size: 64, offset: 1344)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3562, file: !3563, line: 62, baseType: !512, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3562, file: !3563, line: 63, baseType: !512, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3543, file: !80, line: 583, baseType: !512, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3543, file: !80, line: 584, baseType: !512, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3543, file: !80, line: 585, baseType: !512, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3543, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3543, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3543, file: !80, line: 592, baseType: !1304, size: 512, offset: 576)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3543, file: !80, line: 593, baseType: !444, size: 64, offset: 1088)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3543, file: !80, line: 594, baseType: !1971, size: 256, offset: 1152)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3543, file: !80, line: 595, baseType: !1493, size: 128, offset: 1408)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3543, file: !80, line: 596, baseType: !3570, size: 64, offset: 1536)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3543, file: !80, line: 597, baseType: !764, size: 32, offset: 1600)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3543, file: !80, line: 598, baseType: !764, size: 32, offset: 1632)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3543, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3543, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3543, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3543, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3543, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3543, file: !80, line: 604, baseType: !512, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3543, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3543, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3543, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3543, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3543, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3543, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3543, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3543, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3543, file: !80, line: 613, baseType: !150, size: 32, offset: 1792)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3543, file: !80, line: 614, baseType: !150, size: 32, offset: 1824)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3543, file: !80, line: 615, baseType: !444, size: 64, offset: 1856)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3543, file: !80, line: 616, baseType: !444, size: 64, offset: 1920)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3543, file: !80, line: 617, baseType: !444, size: 64, offset: 1984)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3543, file: !80, line: 618, baseType: !444, size: 64, offset: 2048)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3543, file: !80, line: 620, baseType: !3620, size: 64, offset: 2112)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 64)
!3621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3622)
!3622 = !{!3623, !3624, !3625, !3626}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3621, file: !80, line: 537, baseType: !263)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3621, file: !80, line: 538, baseType: !7, size: 32)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3621, file: !80, line: 540, baseType: !250, size: 128, offset: 64)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3621, file: !80, line: 543, baseType: !3627, size: 64, offset: 192)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3543, file: !80, line: 621, baseType: !3630, size: 64, offset: 2176)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DISubroutineType(types: !3632)
!3632 = !{null, !241, !1456}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3543, file: !80, line: 622, baseType: !3634, size: 64, offset: 2240)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !242, file: !73, line: 486, baseType: !3637, size: 64, offset: 4096)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3639)
!3639 = !{!3640, !3641, !3642, !3646, !3647, !3648}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3638, file: !80, line: 643, baseType: !3410, size: 1472)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3638, file: !80, line: 644, baseType: !3413, size: 64, offset: 1472)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3638, file: !80, line: 645, baseType: !3643, size: 64, offset: 1536)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = !DISubroutineType(types: !3645)
!3645 = !{null, !241, !512}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3638, file: !80, line: 646, baseType: !3413, size: 64, offset: 1600)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3638, file: !80, line: 647, baseType: !3404, size: 64, offset: 1664)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3638, file: !80, line: 648, baseType: !3404, size: 64, offset: 1728)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !242, file: !73, line: 493, baseType: !3650, size: 64, offset: 4160)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !73, line: 493, flags: DIFlagFwdDecl)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !242, file: !73, line: 499, baseType: !250, size: 128, offset: 4224)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !242, file: !73, line: 502, baseType: !3654, size: 64, offset: 4352)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3656)
!3656 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !242, file: !73, line: 504, baseType: !3658, size: 64, offset: 4416)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !242, file: !73, line: 505, baseType: !444, size: 64, offset: 4480)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !242, file: !73, line: 510, baseType: !444, size: 64, offset: 4544)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !242, file: !73, line: 511, baseType: !3662, size: 64, offset: 4608)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3664)
!3664 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !242, file: !73, line: 513, baseType: !3666, size: 64, offset: 4672)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3668)
!3668 = !{!3669, !3670}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3667, file: !73, line: 293, baseType: !7, size: 32)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3667, file: !73, line: 294, baseType: !181, size: 64, offset: 64)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !242, file: !73, line: 515, baseType: !250, size: 128, offset: 4736)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !242, file: !73, line: 526, baseType: !3673, offset: 4864)
!3673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3674, line: 5, elements: !277)
!3674 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !242, file: !73, line: 528, baseType: !3676, size: 64, offset: 4864)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3678, line: 14, flags: DIFlagFwdDecl)
!3678 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !242, file: !73, line: 529, baseType: !3680, size: 64, offset: 4928)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3682, line: 17, size: 192, elements: !3683)
!3682 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3683 = !{!3684, !3685, !3768}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3681, file: !3682, line: 18, baseType: !3680, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3681, file: !3682, line: 19, baseType: !3686, size: 64, offset: 64)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3688)
!3688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3682, line: 110, size: 1152, elements: !3689)
!3689 = !{!3690, !3694, !3698, !3704, !3710, !3714, !3718, !3723, !3727, !3728, !3732, !3736, !3740, !3751, !3752, !3753, !3754, !3764}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3688, file: !3682, line: 111, baseType: !3691, size: 64)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!3680, !3680}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3688, file: !3682, line: 112, baseType: !3695, size: 64, offset: 64)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{null, !3680}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3688, file: !3682, line: 113, baseType: !3699, size: 64, offset: 128)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = !DISubroutineType(types: !3701)
!3701 = !{!512, !3702}
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3681)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3688, file: !3682, line: 114, baseType: !3705, size: 64, offset: 192)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!2141, !3702, !3708}
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3688, file: !3682, line: 116, baseType: !3711, size: 64, offset: 256)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{!512, !3702, !202}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3688, file: !3682, line: 118, baseType: !3715, size: 64, offset: 320)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!150, !3702, !202, !7, !164, !349}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3688, file: !3682, line: 123, baseType: !3719, size: 64, offset: 384)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!150, !3702, !202, !3722, !349}
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3688, file: !3682, line: 126, baseType: !3724, size: 64, offset: 448)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = !DISubroutineType(types: !3726)
!3726 = !{!202, !3702}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3688, file: !3682, line: 127, baseType: !3724, size: 64, offset: 512)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3688, file: !3682, line: 128, baseType: !3729, size: 64, offset: 576)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!3680, !3702}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3688, file: !3682, line: 130, baseType: !3733, size: 64, offset: 640)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!3680, !3702, !3680}
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3688, file: !3682, line: 133, baseType: !3737, size: 64, offset: 704)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{!3680, !3702, !202}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3688, file: !3682, line: 135, baseType: !3741, size: 64, offset: 768)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!150, !3702, !202, !202, !7, !7, !3744}
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3682, line: 43, size: 640, elements: !3746)
!3746 = !{!3747, !3748, !3749}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3745, file: !3682, line: 44, baseType: !3680, size: 64)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3745, file: !3682, line: 45, baseType: !7, size: 32, offset: 64)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3745, file: !3682, line: 46, baseType: !3750, size: 512, offset: 128)
!3750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 512, elements: !1342)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3688, file: !3682, line: 140, baseType: !3733, size: 64, offset: 832)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3688, file: !3682, line: 143, baseType: !3729, size: 64, offset: 896)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3688, file: !3682, line: 145, baseType: !3691, size: 64, offset: 960)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3688, file: !3682, line: 146, baseType: !3755, size: 64, offset: 1024)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!150, !3702, !3758}
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3682, line: 29, size: 128, elements: !3760)
!3760 = !{!3761, !3762, !3763}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3759, file: !3682, line: 30, baseType: !7, size: 32)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3759, file: !3682, line: 31, baseType: !7, size: 32, offset: 32)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3759, file: !3682, line: 32, baseType: !3702, size: 64, offset: 64)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3688, file: !3682, line: 148, baseType: !3765, size: 64, offset: 1088)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DISubroutineType(types: !3767)
!3767 = !{!150, !3702, !241}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3681, file: !3682, line: 20, baseType: !241, size: 64, offset: 128)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !242, file: !73, line: 534, baseType: !535, size: 32, offset: 4992)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !242, file: !73, line: 535, baseType: !188, size: 32, offset: 5024)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !242, file: !73, line: 537, baseType: !263, offset: 5056)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !242, file: !73, line: 538, baseType: !250, size: 128, offset: 5056)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !242, file: !73, line: 540, baseType: !3774, size: 64, offset: 5184)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3776, line: 54, size: 960, elements: !3777)
!3776 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3777 = !{!3778, !3779, !3780, !3781, !3782, !3783, !3784, !3788, !3792, !3793, !3794, !3795, !3799, !3803, !3804}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3775, file: !3776, line: 55, baseType: !202, size: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3775, file: !3776, line: 56, baseType: !205, size: 64, offset: 64)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3775, file: !3776, line: 58, baseType: !355, size: 64, offset: 128)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3775, file: !3776, line: 59, baseType: !355, size: 64, offset: 192)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3775, file: !3776, line: 60, baseType: !256, size: 64, offset: 256)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3775, file: !3776, line: 62, baseType: !3395, size: 64, offset: 320)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3775, file: !3776, line: 63, baseType: !3785, size: 64, offset: 384)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!304, !241, !3402}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3775, file: !3776, line: 65, baseType: !3789, size: 64, offset: 448)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{null, !3774}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3775, file: !3776, line: 66, baseType: !3404, size: 64, offset: 512)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3775, file: !3776, line: 68, baseType: !3413, size: 64, offset: 576)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3775, file: !3776, line: 70, baseType: !3199, size: 64, offset: 640)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3775, file: !3776, line: 71, baseType: !3796, size: 64, offset: 704)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DISubroutineType(types: !3798)
!3798 = !{!2141, !241}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3775, file: !3776, line: 73, baseType: !3800, size: 64, offset: 768)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DISubroutineType(types: !3802)
!3802 = !{null, !241, !3231, !3232}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3775, file: !3776, line: 75, baseType: !3408, size: 64, offset: 832)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3775, file: !3776, line: 77, baseType: !3525, size: 64, offset: 896)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !242, file: !73, line: 541, baseType: !355, size: 64, offset: 5248)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !242, file: !73, line: 543, baseType: !3404, size: 64, offset: 5312)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !242, file: !73, line: 544, baseType: !3808, size: 64, offset: 5376)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !242, file: !73, line: 545, baseType: !3811, size: 64, offset: 5440)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !242, file: !73, line: 547, baseType: !512, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !242, file: !73, line: 548, baseType: !512, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !242, file: !73, line: 549, baseType: !512, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !242, file: !73, line: 550, baseType: !512, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !192, file: !193, line: 548, baseType: !150, size: 32, offset: 320)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "detach_count", scope: !192, file: !193, line: 549, baseType: !7, size: 32, offset: 352)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "hw_dev", scope: !192, file: !193, line: 550, baseType: !241, size: 64, offset: 384)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !192, file: !193, line: 552, baseType: !202, size: 64, offset: 448)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "board_ptr", scope: !192, file: !193, line: 553, baseType: !2141, size: 64, offset: 512)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "attached", scope: !192, file: !193, line: 554, baseType: !7, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "ioenabled", scope: !192, file: !193, line: 555, baseType: !7, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "spinlock", scope: !192, file: !193, line: 556, baseType: !263, offset: 584)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !192, file: !193, line: 557, baseType: !1188, size: 192, offset: 640)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "attach_lock", scope: !192, file: !193, line: 558, baseType: !784, size: 256, offset: 832)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !192, file: !193, line: 559, baseType: !3373, size: 32, offset: 1088)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "n_subdevices", scope: !192, file: !193, line: 561, baseType: !150, size: 32, offset: 1120)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "subdevices", scope: !192, file: !193, line: 562, baseType: !3830, size: 64, offset: 1152)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_subdevice", file: !193, line: 153, size: 1792, elements: !3832)
!3832 = !{!3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3908, !3921, !3924, !3925, !3939, !3940, !3941, !3942, !3946, !3951, !3952, !3953, !3954, !3958, !3959, !3960, !3961, !3962}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3831, file: !193, line: 154, baseType: !191, size: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3831, file: !193, line: 155, baseType: !150, size: 32, offset: 64)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3831, file: !193, line: 156, baseType: !150, size: 32, offset: 96)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "n_chan", scope: !3831, file: !193, line: 157, baseType: !150, size: 32, offset: 128)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "subdev_flags", scope: !3831, file: !193, line: 158, baseType: !150, size: 32, offset: 160)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "len_chanlist", scope: !3831, file: !193, line: 159, baseType: !150, size: 32, offset: 192)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3831, file: !193, line: 161, baseType: !164, size: 64, offset: 256)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "async", scope: !3831, file: !193, line: 163, baseType: !3841, size: 64, offset: 320)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_async", file: !193, line: 347, size: 1536, elements: !3843)
!3843 = !{!3844, !3845, !3846, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3894, !3895, !3896}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3842, file: !193, line: 348, baseType: !164, size: 64)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_bufsz", scope: !3842, file: !193, line: 349, baseType: !7, size: 32, offset: 64)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "buf_map", scope: !3842, file: !193, line: 350, baseType: !3847, size: 64, offset: 128)
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_buf_map", file: !193, line: 249, size: 256, elements: !3849)
!3849 = !{!3850, !3851, !3857, !3858, !3859}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "dma_hw_dev", scope: !3848, file: !193, line: 250, baseType: !241, size: 64)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "page_list", scope: !3848, file: !193, line: 251, baseType: !3852, size: 64, offset: 64)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_buf_page", file: !193, line: 220, size: 128, elements: !3854)
!3854 = !{!3855, !3856}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "virt_addr", scope: !3853, file: !193, line: 221, baseType: !164, size: 64)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3853, file: !193, line: 222, baseType: !935, size: 64, offset: 64)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "n_pages", scope: !3848, file: !193, line: 252, baseType: !7, size: 32, offset: 128)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "dma_dir", scope: !3848, file: !193, line: 253, baseType: !93, size: 32, offset: 160)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3848, file: !193, line: 254, baseType: !3373, size: 32, offset: 192)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "max_bufsize", scope: !3842, file: !193, line: 351, baseType: !7, size: 32, offset: 192)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_count", scope: !3842, file: !193, line: 352, baseType: !7, size: 32, offset: 224)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_alloc_count", scope: !3842, file: !193, line: 353, baseType: !7, size: 32, offset: 256)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_count", scope: !3842, file: !193, line: 354, baseType: !7, size: 32, offset: 288)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_alloc_count", scope: !3842, file: !193, line: 355, baseType: !7, size: 32, offset: 320)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_ptr", scope: !3842, file: !193, line: 356, baseType: !7, size: 32, offset: 352)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_ptr", scope: !3842, file: !193, line: 357, baseType: !7, size: 32, offset: 384)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "cur_chan", scope: !3842, file: !193, line: 358, baseType: !7, size: 32, offset: 416)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "scans_done", scope: !3842, file: !193, line: 359, baseType: !7, size: 32, offset: 448)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "scan_progress", scope: !3842, file: !193, line: 360, baseType: !7, size: 32, offset: 480)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "munge_chan", scope: !3842, file: !193, line: 361, baseType: !7, size: 32, offset: 512)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "munge_count", scope: !3842, file: !193, line: 362, baseType: !7, size: 32, offset: 544)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "munge_ptr", scope: !3842, file: !193, line: 363, baseType: !7, size: 32, offset: 576)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3842, file: !193, line: 364, baseType: !7, size: 32, offset: 608)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !3842, file: !193, line: 365, baseType: !3875, size: 640, offset: 640)
!3875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_cmd", file: !109, line: 589, size: 640, elements: !3876)
!3876 = !{!3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3893}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "subdev", scope: !3875, file: !109, line: 590, baseType: !7, size: 32)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3875, file: !109, line: 591, baseType: !7, size: 32, offset: 32)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "start_src", scope: !3875, file: !109, line: 593, baseType: !7, size: 32, offset: 64)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "start_arg", scope: !3875, file: !109, line: 594, baseType: !7, size: 32, offset: 96)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "scan_begin_src", scope: !3875, file: !109, line: 596, baseType: !7, size: 32, offset: 128)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "scan_begin_arg", scope: !3875, file: !109, line: 597, baseType: !7, size: 32, offset: 160)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "convert_src", scope: !3875, file: !109, line: 599, baseType: !7, size: 32, offset: 192)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "convert_arg", scope: !3875, file: !109, line: 600, baseType: !7, size: 32, offset: 224)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "scan_end_src", scope: !3875, file: !109, line: 602, baseType: !7, size: 32, offset: 256)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "scan_end_arg", scope: !3875, file: !109, line: 603, baseType: !7, size: 32, offset: 288)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "stop_src", scope: !3875, file: !109, line: 605, baseType: !7, size: 32, offset: 320)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "stop_arg", scope: !3875, file: !109, line: 606, baseType: !7, size: 32, offset: 352)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist", scope: !3875, file: !109, line: 608, baseType: !2693, size: 64, offset: 384)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist_len", scope: !3875, file: !109, line: 609, baseType: !7, size: 32, offset: 448)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3875, file: !109, line: 611, baseType: !3892, size: 64, offset: 512)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !3875, file: !109, line: 612, baseType: !7, size: 32, offset: 576)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "wait_head", scope: !3842, file: !193, line: 366, baseType: !1493, size: 128, offset: 1280)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "cb_mask", scope: !3842, file: !193, line: 367, baseType: !7, size: 32, offset: 1408)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "inttrig", scope: !3842, file: !193, line: 368, baseType: !3897, size: 64, offset: 1472)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{!150, !191, !3830, !7}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3831, file: !193, line: 165, baseType: !164, size: 64, offset: 384)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !3831, file: !193, line: 166, baseType: !164, size: 64, offset: 448)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "runflags", scope: !3831, file: !193, line: 167, baseType: !7, size: 32, offset: 512)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "spin_lock", scope: !3831, file: !193, line: 168, baseType: !263, offset: 544)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "io_bits", scope: !3831, file: !193, line: 170, baseType: !7, size: 32, offset: 544)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata", scope: !3831, file: !193, line: 172, baseType: !7, size: 32, offset: 576)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata_list", scope: !3831, file: !193, line: 173, baseType: !3907, size: 64, offset: 640)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "range_table", scope: !3831, file: !193, line: 175, baseType: !3909, size: 64, offset: 704)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3911)
!3911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_lrange", file: !193, line: 635, size: 32, elements: !3912)
!3912 = !{!3913, !3914}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3911, file: !193, line: 636, baseType: !150, size: 32)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3911, file: !193, line: 637, baseType: !3915, offset: 32)
!3915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3916, elements: !2341)
!3916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_krange", file: !109, line: 685, size: 96, elements: !3917)
!3917 = !{!3918, !3919, !3920}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !3916, file: !109, line: 686, baseType: !150, size: 32)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3916, file: !109, line: 687, baseType: !150, size: 32, offset: 32)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3916, file: !109, line: 688, baseType: !7, size: 32, offset: 64)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "range_table_list", scope: !3831, file: !193, line: 176, baseType: !3922, size: 64, offset: 768)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3909)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist", scope: !3831, file: !193, line: 178, baseType: !2693, size: 64, offset: 832)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "insn_read", scope: !3831, file: !193, line: 180, baseType: !3926, size: 64, offset: 896)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = !DISubroutineType(types: !3928)
!3928 = !{!150, !191, !3830, !3929, !2693}
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_insn", file: !109, line: 491, size: 320, elements: !3931)
!3931 = !{!3932, !3933, !3934, !3935, !3936, !3937}
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3930, file: !109, line: 492, baseType: !7, size: 32)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !3930, file: !109, line: 493, baseType: !7, size: 32, offset: 32)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3930, file: !109, line: 494, baseType: !2693, size: 64, offset: 64)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "subdev", scope: !3930, file: !109, line: 495, baseType: !7, size: 32, offset: 128)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "chanspec", scope: !3930, file: !109, line: 496, baseType: !7, size: 32, offset: 160)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !3930, file: !109, line: 497, baseType: !3938, size: 96, offset: 192)
!3938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 96, elements: !305)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "insn_write", scope: !3831, file: !193, line: 182, baseType: !3926, size: 64, offset: 960)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "insn_bits", scope: !3831, file: !193, line: 184, baseType: !3926, size: 64, offset: 1024)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "insn_config", scope: !3831, file: !193, line: 186, baseType: !3926, size: 64, offset: 1088)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "do_cmd", scope: !3831, file: !193, line: 191, baseType: !3943, size: 64, offset: 1152)
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3944 = !DISubroutineType(types: !3945)
!3945 = !{!150, !191, !3830}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "do_cmdtest", scope: !3831, file: !193, line: 192, baseType: !3947, size: 64, offset: 1216)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = !DISubroutineType(types: !3949)
!3949 = !{!150, !191, !3830, !3950}
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3831, file: !193, line: 195, baseType: !3943, size: 64, offset: 1280)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "cancel", scope: !3831, file: !193, line: 196, baseType: !3943, size: 64, offset: 1344)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "buf_change", scope: !3831, file: !193, line: 199, baseType: !3943, size: 64, offset: 1408)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "munge", scope: !3831, file: !193, line: 202, baseType: !3955, size: 64, offset: 1472)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = !DISubroutineType(types: !3957)
!3957 = !{null, !191, !3830, !164, !7, !7}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "async_dma_dir", scope: !3831, file: !193, line: 205, baseType: !93, size: 32, offset: 1536)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3831, file: !193, line: 207, baseType: !7, size: 32, offset: 1568)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !3831, file: !193, line: 209, baseType: !241, size: 64, offset: 1600)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3831, file: !193, line: 210, baseType: !150, size: 32, offset: 1664)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "readback", scope: !3831, file: !193, line: 212, baseType: !2693, size: 64, offset: 1728)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "mmio", scope: !192, file: !193, line: 565, baseType: !164, size: 64, offset: 1216)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "iobase", scope: !192, file: !193, line: 566, baseType: !181, size: 64, offset: 1280)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "iolen", scope: !192, file: !193, line: 567, baseType: !181, size: 64, offset: 1344)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !192, file: !193, line: 568, baseType: !7, size: 32, offset: 1408)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "read_subdev", scope: !192, file: !193, line: 570, baseType: !3830, size: 64, offset: 1472)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "write_subdev", scope: !192, file: !193, line: 571, baseType: !3830, size: 64, offset: 1536)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "async_queue", scope: !192, file: !193, line: 573, baseType: !2969, size: 64, offset: 1600)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !192, file: !193, line: 575, baseType: !3971, size: 64, offset: 1664)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = !DISubroutineType(types: !3973)
!3973 = !{!150, !191}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !192, file: !193, line: 576, baseType: !224, size: 64, offset: 1728)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "insn_device_config", scope: !192, file: !193, line: 577, baseType: !3976, size: 64, offset: 1792)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = !DISubroutineType(types: !3978)
!3978 = !{!150, !191, !3929, !2693}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "get_valid_routes", scope: !192, file: !193, line: 579, baseType: !3980, size: 64, offset: 1856)
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = !DISubroutineType(types: !3982)
!3982 = !{!7, !191, !7, !2693}
!3983 = !{!0, !3984, !3989, !3994, !3999, !4004, !4007, !4012, !4014, !4023, !4026, !4307}
!3984 = !DIGlobalVariableExpression(var: !3985, expr: !DIExpression())
!3985 = distinct !DIGlobalVariable(name: "__exitcall_jr3_pci_driver_exit", scope: !2, file: !3, line: 811, type: !3986, isLocal: true, isDefinition: true)
!3986 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !3987, line: 117, baseType: !3988)
!3987 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!3989 = !DIGlobalVariableExpression(var: !3990, expr: !DIExpression())
!3990 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author237", scope: !2, file: !3, line: 813, type: !3991, isLocal: true, isDefinition: true, align: 8)
!3991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 360, elements: !3992)
!3992 = !{!3993}
!3993 = !DISubrange(count: 45)
!3994 = !DIGlobalVariableExpression(var: !3995, expr: !DIExpression())
!3995 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description238", scope: !2, file: !3, line: 814, type: !3996, isLocal: true, isDefinition: true, align: 8)
!3996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 520, elements: !3997)
!3997 = !{!3998}
!3998 = !DISubrange(count: 65)
!3999 = !DIGlobalVariableExpression(var: !4000, expr: !DIExpression())
!4000 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file239", scope: !2, file: !3, line: 815, type: !4001, isLocal: true, isDefinition: true, align: 8)
!4001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 416, elements: !4002)
!4002 = !{!4003}
!4003 = !DISubrange(count: 52)
!4004 = !DIGlobalVariableExpression(var: !4005, expr: !DIExpression())
!4005 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license240", scope: !2, file: !3, line: 815, type: !4006, isLocal: true, isDefinition: true, align: 8)
!4006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 160, elements: !217)
!4007 = !DIGlobalVariableExpression(var: !4008, expr: !DIExpression())
!4008 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_firmware241", scope: !2, file: !3, line: 816, type: !4009, isLocal: true, isDefinition: true, align: 8)
!4009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 280, elements: !4010)
!4010 = !{!4011}
!4011 = !DISubrange(count: 35)
!4012 = !DIGlobalVariableExpression(var: !4013, expr: !DIExpression())
!4013 = distinct !DIGlobalVariable(name: "jr3_pci_driver", scope: !2, file: !3, line: 782, type: !198, isLocal: true, isDefinition: true)
!4014 = !DIGlobalVariableExpression(var: !4015, expr: !DIExpression())
!4015 = distinct !DIGlobalVariable(name: "board", scope: !4016, file: !3, line: 674, type: !4017, isLocal: true, isDefinition: true)
!4016 = distinct !DISubprogram(name: "jr3_pci_auto_attach", scope: !3, file: !3, line: 670, type: !229, scopeLine: 672, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !277)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4019)
!4019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jr3_pci_board", file: !3, line: 52, size: 128, elements: !4020)
!4020 = !{!4021, !4022}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4019, file: !3, line: 53, baseType: !202, size: 64)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "n_subdevs", scope: !4019, file: !3, line: 54, baseType: !150, size: 32, offset: 64)
!4023 = !DIGlobalVariableExpression(var: !4024, expr: !DIExpression())
!4024 = distinct !DIGlobalVariable(name: "jr3_pci_boards", scope: !2, file: !3, line: 57, type: !4025, isLocal: true, isDefinition: true)
!4025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4018, size: 512, elements: !1170)
!4026 = !DIGlobalVariableExpression(var: !4027, expr: !DIExpression())
!4027 = distinct !DIGlobalVariable(name: "jr3_pci_pci_driver", scope: !2, file: !3, line: 805, type: !4028, isLocal: true, isDefinition: true)
!4028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !4029, line: 858, size: 2048, elements: !4030)
!4029 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!4030 = !{!4031, !4032, !4033, !4045, !4265, !4269, !4273, !4277, !4278, !4282, !4300, !4301, !4302}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4028, file: !4029, line: 859, baseType: !250, size: 128)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4028, file: !4029, line: 860, baseType: !202, size: 64, offset: 128)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4028, file: !4029, line: 861, baseType: !4034, size: 64, offset: 192)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4035 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4036)
!4036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3466, line: 38, size: 256, elements: !4037)
!4037 = !{!4038, !4039, !4040, !4041, !4042, !4043, !4044}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4036, file: !3466, line: 39, baseType: !189, size: 32)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4036, file: !3466, line: 39, baseType: !189, size: 32, offset: 32)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4036, file: !3466, line: 40, baseType: !189, size: 32, offset: 64)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4036, file: !3466, line: 40, baseType: !189, size: 32, offset: 96)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4036, file: !3466, line: 41, baseType: !189, size: 32, offset: 128)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4036, file: !3466, line: 41, baseType: !189, size: 32, offset: 160)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4036, file: !3466, line: 42, baseType: !3485, size: 64, offset: 192)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4028, file: !4029, line: 862, baseType: !4046, size: 64, offset: 256)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = !DISubroutineType(types: !4048)
!4048 = !{!150, !4049, !4034}
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !4029, line: 309, size: 19264, elements: !4051)
!4051 = !{!4052, !4053, !4128, !4129, !4130, !4131, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4159, !4161, !4162, !4163, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4187, !4188, !4189, !4190, !4192, !4193, !4194, !4195, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4238, !4239, !4241, !4242, !4243, !4244, !4246, !4247, !4248, !4251, !4258, !4259, !4260, !4261, !4262, !4263, !4264}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !4050, file: !4029, line: 310, baseType: !250, size: 128)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4050, file: !4029, line: 311, baseType: !4054, size: 64, offset: 128)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !4029, line: 605, size: 8064, elements: !4056)
!4056 = !{!4057, !4058, !4059, !4060, !4061, !4062, !4063, !4078, !4079, !4080, !4104, !4107, !4108, !4112, !4113, !4114, !4115, !4116, !4120, !4121, !4123, !4124, !4125, !4126, !4127}
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4055, file: !4029, line: 606, baseType: !250, size: 128)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4055, file: !4029, line: 607, baseType: !4054, size: 64, offset: 128)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4055, file: !4029, line: 608, baseType: !250, size: 128, offset: 192)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4055, file: !4029, line: 609, baseType: !250, size: 128, offset: 320)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4055, file: !4029, line: 610, baseType: !4049, size: 64, offset: 448)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !4055, file: !4029, line: 611, baseType: !250, size: 128, offset: 512)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4055, file: !4029, line: 613, baseType: !4064, size: 256, offset: 640)
!4064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4065, size: 256, elements: !1170)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4067, line: 20, size: 512, elements: !4068)
!4067 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!4068 = !{!4069, !4071, !4072, !4073, !4074, !4075, !4076, !4077}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4066, file: !4067, line: 21, baseType: !4070, size: 64)
!4070 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !174, line: 158, baseType: !2139)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4066, file: !4067, line: 22, baseType: !4070, size: 64, offset: 64)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4066, file: !4067, line: 23, baseType: !202, size: 64, offset: 128)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4066, file: !4067, line: 24, baseType: !181, size: 64, offset: 192)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4066, file: !4067, line: 25, baseType: !181, size: 64, offset: 256)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4066, file: !4067, line: 26, baseType: !4065, size: 64, offset: 320)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4066, file: !4067, line: 26, baseType: !4065, size: 64, offset: 384)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4066, file: !4067, line: 26, baseType: !4065, size: 64, offset: 448)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4055, file: !4029, line: 614, baseType: !250, size: 128, offset: 896)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !4055, file: !4029, line: 615, baseType: !4066, size: 512, offset: 1024)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4055, file: !4029, line: 617, baseType: !4081, size: 64, offset: 1536)
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !4029, line: 731, size: 320, elements: !4083)
!4083 = !{!4084, !4088, !4092, !4096, !4100}
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !4082, file: !4029, line: 732, baseType: !4085, size: 64)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = !DISubroutineType(types: !4087)
!4087 = !{!150, !4054}
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !4082, file: !4029, line: 733, baseType: !4089, size: 64, offset: 64)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = !DISubroutineType(types: !4091)
!4091 = !{null, !4054}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !4082, file: !4029, line: 734, baseType: !4093, size: 64, offset: 128)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DISubroutineType(types: !4095)
!4095 = !{!164, !4054, !7, !150}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4082, file: !4029, line: 735, baseType: !4097, size: 64, offset: 192)
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = !DISubroutineType(types: !4099)
!4099 = !{!150, !4054, !7, !150, !150, !1427}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4082, file: !4029, line: 736, baseType: !4101, size: 64, offset: 256)
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4102, size: 64)
!4102 = !DISubroutineType(types: !4103)
!4103 = !{!150, !4054, !7, !150, !150, !188}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4055, file: !4029, line: 618, baseType: !4105, size: 64, offset: 1600)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !4029, line: 537, flags: DIFlagFwdDecl)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4055, file: !4029, line: 619, baseType: !164, size: 64, offset: 1664)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !4055, file: !4029, line: 620, baseType: !4109, size: 64, offset: 1728)
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4111, line: 123, flags: DIFlagFwdDecl)
!4111 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4055, file: !4029, line: 622, baseType: !161, size: 8, offset: 1792)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4055, file: !4029, line: 623, baseType: !161, size: 8, offset: 1800)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !4055, file: !4029, line: 624, baseType: !161, size: 8, offset: 1808)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !4055, file: !4029, line: 625, baseType: !161, size: 8, offset: 1816)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4055, file: !4029, line: 630, baseType: !4117, size: 384, offset: 1824)
!4117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 384, elements: !4118)
!4118 = !{!4119}
!4119 = !DISubrange(count: 48)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !4055, file: !4029, line: 632, baseType: !155, size: 16, offset: 2208)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !4055, file: !4029, line: 633, baseType: !4122, size: 16, offset: 2224)
!4122 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !4029, line: 237, baseType: !155)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !4055, file: !4029, line: 634, baseType: !241, size: 64, offset: 2240)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4055, file: !4029, line: 635, baseType: !242, size: 5568, offset: 2304)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !4055, file: !4029, line: 636, baseType: !369, size: 64, offset: 7872)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !4055, file: !4029, line: 637, baseType: !369, size: 64, offset: 7936)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !4055, file: !4029, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !4050, file: !4029, line: 312, baseType: !4054, size: 64, offset: 192)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4050, file: !4029, line: 314, baseType: !164, size: 64, offset: 256)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !4050, file: !4029, line: 315, baseType: !4109, size: 64, offset: 320)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4050, file: !4029, line: 316, baseType: !4132, size: 64, offset: 384)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !4029, line: 69, size: 832, elements: !4134)
!4134 = !{!4135, !4136, !4137, !4140, !4141}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4133, file: !4029, line: 70, baseType: !4054, size: 64)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4133, file: !4029, line: 71, baseType: !250, size: 128, offset: 64)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4133, file: !4029, line: 72, baseType: !4138, size: 64, offset: 192)
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4139 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !4029, line: 72, flags: DIFlagFwdDecl)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4133, file: !4029, line: 73, baseType: !161, size: 8, offset: 256)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4133, file: !4029, line: 74, baseType: !245, size: 512, offset: 320)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !4050, file: !4029, line: 318, baseType: !7, size: 32, offset: 448)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4050, file: !4029, line: 319, baseType: !155, size: 16, offset: 480)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4050, file: !4029, line: 320, baseType: !155, size: 16, offset: 496)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4050, file: !4029, line: 321, baseType: !155, size: 16, offset: 512)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4050, file: !4029, line: 322, baseType: !155, size: 16, offset: 528)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4050, file: !4029, line: 323, baseType: !7, size: 32, offset: 544)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4050, file: !4029, line: 324, baseType: !1364, size: 8, offset: 576)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4050, file: !4029, line: 325, baseType: !1364, size: 8, offset: 584)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !4050, file: !4029, line: 330, baseType: !1364, size: 8, offset: 592)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !4050, file: !4029, line: 331, baseType: !1364, size: 8, offset: 600)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !4050, file: !4029, line: 332, baseType: !1364, size: 8, offset: 608)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !4050, file: !4029, line: 333, baseType: !1364, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !4050, file: !4029, line: 334, baseType: !1364, size: 8, offset: 624)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4050, file: !4029, line: 335, baseType: !1364, size: 8, offset: 632)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !4050, file: !4029, line: 336, baseType: !151, size: 16, offset: 640)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !4050, file: !4029, line: 337, baseType: !4158, size: 64, offset: 704)
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4050, file: !4029, line: 339, baseType: !4160, size: 64, offset: 768)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4050, file: !4029, line: 340, baseType: !444, size: 64, offset: 832)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4050, file: !4029, line: 346, baseType: !3667, size: 128, offset: 896)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !4050, file: !4029, line: 348, baseType: !4164, size: 32, offset: 1024)
!4164 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !4029, line: 155, baseType: !150)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !4050, file: !4029, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !4050, file: !4029, line: 352, baseType: !1364, size: 8, offset: 1064)
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
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !4050, file: !4029, line: 383, baseType: !150, size: 32, offset: 1312)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !4050, file: !4029, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !4050, file: !4029, line: 387, baseType: !4191, size: 32, offset: 1376)
!4191 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !4029, line: 180, baseType: !7)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4050, file: !4029, line: 388, baseType: !242, size: 5568, offset: 1408)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !4050, file: !4029, line: 390, baseType: !150, size: 32, offset: 6976)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4050, file: !4029, line: 396, baseType: !7, size: 32, offset: 7008)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4050, file: !4029, line: 397, baseType: !4196, size: 8704, offset: 7040)
!4196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4066, size: 8704, elements: !4197)
!4197 = !{!4198}
!4198 = !DISubrange(count: 17)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4050, file: !4029, line: 399, baseType: !512, size: 8, offset: 15744)
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
!4237 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !4029, line: 206, baseType: !155)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !4050, file: !4029, line: 451, baseType: !764, size: 32, offset: 15808)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !4050, file: !4029, line: 453, baseType: !4240, size: 512, offset: 15840)
!4240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 512, elements: !1747)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !4050, file: !4029, line: 454, baseType: !657, size: 64, offset: 16384)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !4050, file: !4029, line: 455, baseType: !369, size: 64, offset: 16448)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !4050, file: !4029, line: 456, baseType: !150, size: 32, offset: 16512)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !4050, file: !4029, line: 457, baseType: !4245, size: 1088, offset: 16576)
!4245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 1088, elements: !4197)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !4050, file: !4029, line: 458, baseType: !4245, size: 1088, offset: 17664)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !4050, file: !4029, line: 469, baseType: !355, size: 64, offset: 18752)
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
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !4050, file: !4029, line: 482, baseType: !151, size: 16, offset: 18944)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !4050, file: !4029, line: 483, baseType: !1364, size: 8, offset: 18960)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !4050, file: !4029, line: 497, baseType: !151, size: 16, offset: 18976)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !4050, file: !4029, line: 498, baseType: !2139, size: 64, offset: 19008)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !4050, file: !4029, line: 499, baseType: !349, size: 64, offset: 19072)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !4050, file: !4029, line: 500, baseType: !304, size: 64, offset: 19136)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !4050, file: !4029, line: 502, baseType: !181, size: 64, offset: 19200)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4028, file: !4029, line: 863, baseType: !4266, size: 64, offset: 320)
!4266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4267, size: 64)
!4267 = !DISubroutineType(types: !4268)
!4268 = !{null, !4049}
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4028, file: !4029, line: 864, baseType: !4270, size: 64, offset: 384)
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = !DISubroutineType(types: !4272)
!4272 = !{!150, !4049, !3496}
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4028, file: !4029, line: 865, baseType: !4274, size: 64, offset: 448)
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4275 = !DISubroutineType(types: !4276)
!4276 = !{!150, !4049}
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4028, file: !4029, line: 866, baseType: !4266, size: 64, offset: 512)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4028, file: !4029, line: 867, baseType: !4279, size: 64, offset: 576)
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4280, size: 64)
!4280 = !DISubroutineType(types: !4281)
!4281 = !{!150, !4049, !150}
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
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4028, file: !4029, line: 869, baseType: !355, size: 64, offset: 704)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4028, file: !4029, line: 870, baseType: !3454, size: 1152, offset: 768)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4028, file: !4029, line: 871, baseType: !4303, size: 128, offset: 1920)
!4303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !4029, line: 759, size: 128, elements: !4304)
!4304 = !{!4305, !4306}
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4303, file: !4029, line: 760, baseType: !263)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4303, file: !4029, line: 761, baseType: !250, size: 128)
!4307 = !DIGlobalVariableExpression(var: !4308, expr: !DIExpression())
!4308 = distinct !DIGlobalVariable(name: "jr3_pci_pci_table", scope: !2, file: !3, line: 795, type: !4309, isLocal: true, isDefinition: true)
!4309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4035, size: 1536, elements: !1637)
!4310 = !{!"rsp"}
!4311 = !{i32 7, !"Dwarf Version", i32 4}
!4312 = !{i32 2, !"Debug Info Version", i32 3}
!4313 = !{i32 1, !"wchar_size", i32 2}
!4314 = !{i32 1, !"Code Model", i32 2}
!4315 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4316 = distinct !DISubprogram(name: "jr3_pci_driver_init", scope: !3, file: !3, line: 811, type: !4317, scopeLine: 811, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !277)
!4317 = !DISubroutineType(types: !4318)
!4318 = !{!150}
!4319 = !DILocation(line: 811, column: 1, scope: !4316)
!4320 = distinct !DISubprogram(name: "jr3_pci_driver_exit", scope: !3, file: !3, line: 811, type: !1892, scopeLine: 811, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !277)
!4321 = !DILocation(line: 811, column: 1, scope: !4320)
!4322 = distinct !DISubprogram(name: "jr3_pci_detach", scope: !3, file: !3, line: 772, type: !225, scopeLine: 773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !277)
!4323 = !DILocalVariable(name: "dev", arg: 1, scope: !4322, file: !3, line: 772, type: !191)
!4324 = !DILocation(line: 772, column: 50, scope: !4322)
!4325 = !DILocalVariable(name: "devpriv", scope: !4322, file: !3, line: 774, type: !165)
!4326 = !DILocation(line: 774, column: 30, scope: !4322)
!4327 = !DILocation(line: 774, column: 40, scope: !4322)
!4328 = !DILocation(line: 774, column: 45, scope: !4322)
!4329 = !DILocation(line: 776, column: 6, scope: !4330)
!4330 = distinct !DILexicalBlock(scope: !4322, file: !3, line: 776, column: 6)
!4331 = !DILocation(line: 776, column: 6, scope: !4322)
!4332 = !DILocation(line: 777, column: 3, scope: !4330)
!4333 = !DILocation(line: 779, column: 20, scope: !4322)
!4334 = !DILocation(line: 779, column: 2, scope: !4322)
!4335 = !DILocation(line: 780, column: 1, scope: !4322)
!4336 = !DILocalVariable(name: "m", arg: 1, scope: !4337, file: !4338, line: 363, type: !2837)
!4337 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !4338, file: !4338, line: 363, type: !4339, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !277)
!4338 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/lizy2001/genbc/linux")
!4339 = !DISubroutineType(types: !4340)
!4340 = !{!181, !2837}
!4341 = !DILocation(line: 363, column: 74, scope: !4337, inlinedAt: !4342)
!4342 = distinct !DILocation(line: 766, column: 37, scope: !4016)
!4343 = !DILocation(line: 363, column: 74, scope: !4337, inlinedAt: !4344)
!4344 = distinct !DILocation(line: 761, column: 36, scope: !4345)
!4345 = distinct !DILexicalBlock(scope: !4346, file: !3, line: 757, column: 42)
!4346 = distinct !DILexicalBlock(scope: !4347, file: !3, line: 757, column: 2)
!4347 = distinct !DILexicalBlock(scope: !4016, file: !3, line: 757, column: 2)
!4348 = !DILocalVariable(name: "dev", arg: 1, scope: !4016, file: !3, line: 670, type: !191)
!4349 = !DILocation(line: 670, column: 54, scope: !4016)
!4350 = !DILocalVariable(name: "context", arg: 2, scope: !4016, file: !3, line: 671, type: !181)
!4351 = !DILocation(line: 671, column: 25, scope: !4016)
!4352 = !DILocalVariable(name: "pcidev", scope: !4016, file: !3, line: 673, type: !4049)
!4353 = !DILocation(line: 673, column: 18, scope: !4016)
!4354 = !DILocation(line: 673, column: 45, scope: !4016)
!4355 = !DILocation(line: 673, column: 27, scope: !4016)
!4356 = !DILocalVariable(name: "devpriv", scope: !4016, file: !3, line: 675, type: !165)
!4357 = !DILocation(line: 675, column: 30, scope: !4016)
!4358 = !DILocalVariable(name: "spriv", scope: !4016, file: !3, line: 676, type: !4359)
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jr3_pci_subdev_private", file: !3, line: 107, size: 7040, elements: !4361)
!4361 = !{!4362, !4477, !4478, !4479, !4480, !4481, !4487, !4491, !4493, !4494}
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "sensor", scope: !4360, file: !3, line: 108, baseType: !4363, size: 64)
!4363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4364, size: 64)
!4364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jr3_sensor", file: !125, line: 284, size: 24576, elements: !4365)
!4365 = !{!4366, !4374, !4378, !4380, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4410, !4411, !4412, !4413, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4467}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "raw_channels", scope: !4364, file: !125, line: 290, baseType: !4367, size: 2048)
!4367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4368, size: 2048, elements: !1747)
!4368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_channel", file: !125, line: 47, size: 128, elements: !4369)
!4369 = !{!4370, !4371, !4372}
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "raw_time", scope: !4368, file: !125, line: 48, baseType: !188, size: 32)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data", scope: !4368, file: !125, line: 49, baseType: !1456, size: 32, offset: 32)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4368, file: !125, line: 50, baseType: !4373, size: 64, offset: 64)
!4373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1456, size: 64, elements: !1581)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "copyright", scope: !4364, file: !125, line: 297, baseType: !4375, size: 768, offset: 2048)
!4375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 768, elements: !4376)
!4376 = !{!4377}
!4377 = !DISubrange(count: 24)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !4364, file: !125, line: 298, baseType: !4379, size: 256, offset: 2816)
!4379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1456, size: 256, elements: !1342)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "shunts", scope: !4364, file: !125, line: 322, baseType: !4381, size: 192, offset: 3072)
!4381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "six_axis_array", file: !125, line: 72, size: 192, elements: !4382)
!4382 = !{!4383, !4384, !4385, !4386, !4387, !4388}
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "fx", scope: !4381, file: !125, line: 73, baseType: !1456, size: 32)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "fy", scope: !4381, file: !125, line: 74, baseType: !1456, size: 32, offset: 32)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "fz", scope: !4381, file: !125, line: 75, baseType: !1456, size: 32, offset: 64)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "mx", scope: !4381, file: !125, line: 76, baseType: !1456, size: 32, offset: 96)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "my", scope: !4381, file: !125, line: 77, baseType: !1456, size: 32, offset: 128)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "mz", scope: !4381, file: !125, line: 78, baseType: !1456, size: 32, offset: 160)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !4364, file: !125, line: 323, baseType: !4373, size: 64, offset: 3264)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "default_FS", scope: !4364, file: !125, line: 330, baseType: !4381, size: 192, offset: 3328)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !4364, file: !125, line: 331, baseType: !1456, size: 32, offset: 3520)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "load_envelope_num", scope: !4364, file: !125, line: 339, baseType: !1456, size: 32, offset: 3552)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "min_full_scale", scope: !4364, file: !125, line: 369, baseType: !4381, size: 192, offset: 3584)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !4364, file: !125, line: 370, baseType: !1456, size: 32, offset: 3776)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "transform_num", scope: !4364, file: !125, line: 378, baseType: !1456, size: 32, offset: 3808)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "max_full_scale", scope: !4364, file: !125, line: 385, baseType: !4381, size: 192, offset: 3840)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "reserved5", scope: !4364, file: !125, line: 386, baseType: !1456, size: 32, offset: 4032)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "peak_address", scope: !4364, file: !125, line: 395, baseType: !1456, size: 32, offset: 4064)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "full_scale", scope: !4364, file: !125, line: 410, baseType: !4400, size: 256, offset: 4096)
!4400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "force_array", file: !125, line: 57, size: 256, elements: !4401)
!4401 = !{!4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409}
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "fx", scope: !4400, file: !125, line: 58, baseType: !1456, size: 32)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "fy", scope: !4400, file: !125, line: 59, baseType: !1456, size: 32, offset: 32)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "fz", scope: !4400, file: !125, line: 60, baseType: !1456, size: 32, offset: 64)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "mx", scope: !4400, file: !125, line: 61, baseType: !1456, size: 32, offset: 96)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "my", scope: !4400, file: !125, line: 62, baseType: !1456, size: 32, offset: 128)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "mz", scope: !4400, file: !125, line: 63, baseType: !1456, size: 32, offset: 160)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !4400, file: !125, line: 64, baseType: !1456, size: 32, offset: 192)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !4400, file: !125, line: 65, baseType: !1456, size: 32, offset: 224)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !4364, file: !125, line: 426, baseType: !4381, size: 192, offset: 4352)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "offset_num", scope: !4364, file: !125, line: 434, baseType: !1456, size: 32, offset: 4544)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "vect_axes", scope: !4364, file: !125, line: 442, baseType: !188, size: 32, offset: 4576)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4364, file: !125, line: 457, baseType: !4414, size: 1792, offset: 4608)
!4414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4400, size: 1792, elements: !4415)
!4415 = !{!4416}
!4416 = !DISubrange(count: 7)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "rate_data", scope: !4364, file: !125, line: 474, baseType: !4400, size: 256, offset: 6400)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "minimum_data", scope: !4364, file: !125, line: 489, baseType: !4400, size: 256, offset: 6656)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "maximum_data", scope: !4364, file: !125, line: 490, baseType: !4400, size: 256, offset: 6912)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "near_sat_value", scope: !4364, file: !125, line: 507, baseType: !1456, size: 32, offset: 7168)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "sat_value", scope: !4364, file: !125, line: 508, baseType: !1456, size: 32, offset: 7200)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "rate_address", scope: !4364, file: !125, line: 528, baseType: !1456, size: 32, offset: 7232)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "rate_divisor", scope: !4364, file: !125, line: 529, baseType: !188, size: 32, offset: 7264)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "rate_count", scope: !4364, file: !125, line: 530, baseType: !188, size: 32, offset: 7296)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "command_word2", scope: !4364, file: !125, line: 546, baseType: !1456, size: 32, offset: 7328)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "command_word1", scope: !4364, file: !125, line: 547, baseType: !1456, size: 32, offset: 7360)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "command_word0", scope: !4364, file: !125, line: 548, baseType: !1456, size: 32, offset: 7392)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !4364, file: !125, line: 563, baseType: !188, size: 32, offset: 7424)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "count2", scope: !4364, file: !125, line: 564, baseType: !188, size: 32, offset: 7456)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "count3", scope: !4364, file: !125, line: 565, baseType: !188, size: 32, offset: 7488)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "count4", scope: !4364, file: !125, line: 566, baseType: !188, size: 32, offset: 7520)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "count5", scope: !4364, file: !125, line: 567, baseType: !188, size: 32, offset: 7552)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "count6", scope: !4364, file: !125, line: 568, baseType: !188, size: 32, offset: 7584)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "error_count", scope: !4364, file: !125, line: 581, baseType: !188, size: 32, offset: 7616)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "count_x", scope: !4364, file: !125, line: 591, baseType: !188, size: 32, offset: 7648)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "warnings", scope: !4364, file: !125, line: 599, baseType: !188, size: 32, offset: 7680)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "errors", scope: !4364, file: !125, line: 600, baseType: !188, size: 32, offset: 7712)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "threshold_bits", scope: !4364, file: !125, line: 608, baseType: !1456, size: 32, offset: 7744)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "last_CRC", scope: !4364, file: !125, line: 616, baseType: !1456, size: 32, offset: 7776)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "eeprom_ver_no", scope: !4364, file: !125, line: 625, baseType: !1456, size: 32, offset: 7808)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "software_ver_no", scope: !4364, file: !125, line: 626, baseType: !1456, size: 32, offset: 7840)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "software_day", scope: !4364, file: !125, line: 635, baseType: !1456, size: 32, offset: 7872)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "software_year", scope: !4364, file: !125, line: 636, baseType: !1456, size: 32, offset: 7904)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "serial_no", scope: !4364, file: !125, line: 645, baseType: !188, size: 32, offset: 7936)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "model_no", scope: !4364, file: !125, line: 646, baseType: !188, size: 32, offset: 7968)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "cal_day", scope: !4364, file: !125, line: 654, baseType: !1456, size: 32, offset: 8000)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "cal_year", scope: !4364, file: !125, line: 655, baseType: !1456, size: 32, offset: 8032)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !4364, file: !125, line: 681, baseType: !188, size: 32, offset: 8064)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4364, file: !125, line: 682, baseType: !1456, size: 32, offset: 8096)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !4364, file: !125, line: 683, baseType: !1456, size: 32, offset: 8128)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "thickness", scope: !4364, file: !125, line: 693, baseType: !1456, size: 32, offset: 8160)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "load_envelopes", scope: !4364, file: !125, line: 710, baseType: !4453, size: 8192, offset: 8192)
!4453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4454, size: 8192, elements: !1747)
!4454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "le_struct", file: !125, line: 237, size: 512, elements: !4455)
!4455 = !{!4456, !4457, !4458, !4459, !4466}
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "latch_bits", scope: !4454, file: !125, line: 238, baseType: !1456, size: 32)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_ge_thresholds", scope: !4454, file: !125, line: 239, baseType: !1456, size: 32, offset: 32)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_le_thresholds", scope: !4454, file: !125, line: 240, baseType: !1456, size: 32, offset: 64)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "thresholds", scope: !4454, file: !125, line: 241, baseType: !4460, size: 384, offset: 96)
!4460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4461, size: 384, elements: !1170)
!4461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thresh_struct", file: !125, line: 220, size: 96, elements: !4462)
!4462 = !{!4463, !4464, !4465}
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "data_address", scope: !4461, file: !125, line: 221, baseType: !1456, size: 32)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "threshold", scope: !4461, file: !125, line: 222, baseType: !1456, size: 32, offset: 32)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "bit_pattern", scope: !4461, file: !125, line: 223, baseType: !1456, size: 32, offset: 64)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4454, file: !125, line: 242, baseType: !1456, size: 32, offset: 480)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "transforms", scope: !4364, file: !125, line: 725, baseType: !4468, size: 8192, offset: 16384)
!4468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4469, size: 8192, elements: !1747)
!4469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "intern_transform", file: !125, line: 272, size: 512, elements: !4470)
!4470 = !{!4471}
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4469, file: !125, line: 276, baseType: !4472, size: 512)
!4472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4473, size: 512, elements: !1342)
!4473 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4469, file: !125, line: 273, size: 64, elements: !4474)
!4474 = !{!4475, !4476}
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "link_type", scope: !4473, file: !125, line: 274, baseType: !188, size: 32)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "link_amount", scope: !4473, file: !125, line: 275, baseType: !1456, size: 32, offset: 32)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "next_time_min", scope: !4360, file: !3, line: 109, baseType: !181, size: 64, offset: 64)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4360, file: !3, line: 110, baseType: !100, size: 32, offset: 128)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "serial_no", scope: !4360, file: !3, line: 111, baseType: !150, size: 32, offset: 160)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "model_no", scope: !4360, file: !3, line: 112, baseType: !150, size: 32, offset: 192)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !4360, file: !3, line: 113, baseType: !4482, size: 1152, offset: 224)
!4482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4483, size: 1152, elements: !3482)
!4483 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "jr3_pci_single_range", file: !3, line: 93, size: 128, elements: !4484)
!4484 = !{!4485, !4486}
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4483, file: !3, line: 94, baseType: !3911, size: 32)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "_reserved", scope: !4483, file: !3, line: 95, baseType: !1746, size: 128)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "range_table_list", scope: !4360, file: !3, line: 114, baseType: !4488, size: 3712, offset: 1408)
!4488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3909, size: 3712, elements: !4489)
!4489 = !{!4490}
!4490 = !DISubrange(count: 58)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata_list", scope: !4360, file: !3, line: 115, baseType: !4492, size: 1856, offset: 5120)
!4492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 1856, elements: !4489)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "errors", scope: !4360, file: !3, line: 116, baseType: !151, size: 16, offset: 6976)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !4360, file: !3, line: 117, baseType: !150, size: 32, offset: 7008)
!4495 = !DILocation(line: 676, column: 33, scope: !4016)
!4496 = !DILocalVariable(name: "block", scope: !4016, file: !3, line: 677, type: !4497)
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jr3_block", file: !125, line: 728, size: 4194304, elements: !4499)
!4499 = !{!4500, !4504, !4505, !4509, !4513, !4514}
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "program_lo", scope: !4498, file: !125, line: 729, baseType: !4501, size: 524288)
!4501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 524288, elements: !4502)
!4502 = !{!4503}
!4503 = !DISubrange(count: 16384)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "sensor", scope: !4498, file: !125, line: 730, baseType: !4364, size: 24576, offset: 524288)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "pad2", scope: !4498, file: !125, line: 731, baseType: !4506, size: 1548288, offset: 548864)
!4506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 1548288, elements: !4507)
!4507 = !{!4508}
!4508 = !DISubrange(count: 193536)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "program_hi", scope: !4498, file: !125, line: 732, baseType: !4510, size: 1048576, offset: 2097152)
!4510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 1048576, elements: !4511)
!4511 = !{!4512}
!4512 = !DISubrange(count: 32768)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !4498, file: !125, line: 733, baseType: !188, size: 32, offset: 3145728)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "pad3", scope: !4498, file: !125, line: 734, baseType: !4515, size: 1048544, offset: 3145760)
!4515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 1048544, elements: !4516)
!4516 = !{!4517}
!4517 = !DISubrange(count: 131068)
!4518 = !DILocation(line: 677, column: 28, scope: !4016)
!4519 = !DILocalVariable(name: "s", scope: !4016, file: !3, line: 678, type: !3830)
!4520 = !DILocation(line: 678, column: 27, scope: !4016)
!4521 = !DILocalVariable(name: "ret", scope: !4016, file: !3, line: 679, type: !150)
!4522 = !DILocation(line: 679, column: 6, scope: !4016)
!4523 = !DILocalVariable(name: "i", scope: !4016, file: !3, line: 680, type: !150)
!4524 = !DILocation(line: 680, column: 6, scope: !4016)
!4525 = !DILocation(line: 682, column: 2, scope: !4016)
!4526 = !DILocation(line: 682, column: 2, scope: !4527)
!4527 = distinct !DILexicalBlock(scope: !4016, file: !3, line: 682, column: 2)
!4528 = !DILocation(line: 684, column: 6, scope: !4529)
!4529 = distinct !DILexicalBlock(scope: !4016, file: !3, line: 684, column: 6)
!4530 = !DILocation(line: 684, column: 14, scope: !4529)
!4531 = !DILocation(line: 684, column: 6, scope: !4016)
!4532 = !DILocation(line: 685, column: 27, scope: !4529)
!4533 = !DILocation(line: 685, column: 12, scope: !4529)
!4534 = !DILocation(line: 685, column: 9, scope: !4529)
!4535 = !DILocation(line: 685, column: 3, scope: !4529)
!4536 = !DILocation(line: 686, column: 7, scope: !4537)
!4537 = distinct !DILexicalBlock(scope: !4016, file: !3, line: 686, column: 6)
!4538 = !DILocation(line: 686, column: 6, scope: !4016)
!4539 = !DILocation(line: 687, column: 3, scope: !4537)
!4540 = !DILocation(line: 688, column: 19, scope: !4016)
!4541 = !DILocation(line: 688, column: 2, scope: !4016)
!4542 = !DILocation(line: 688, column: 7, scope: !4016)
!4543 = !DILocation(line: 688, column: 17, scope: !4016)
!4544 = !DILocation(line: 689, column: 20, scope: !4016)
!4545 = !DILocation(line: 689, column: 27, scope: !4016)
!4546 = !DILocation(line: 689, column: 2, scope: !4016)
!4547 = !DILocation(line: 689, column: 7, scope: !4016)
!4548 = !DILocation(line: 689, column: 18, scope: !4016)
!4549 = !DILocation(line: 691, column: 33, scope: !4016)
!4550 = !DILocation(line: 691, column: 12, scope: !4016)
!4551 = !DILocation(line: 691, column: 10, scope: !4016)
!4552 = !DILocation(line: 692, column: 7, scope: !4553)
!4553 = distinct !DILexicalBlock(scope: !4016, file: !3, line: 692, column: 6)
!4554 = !DILocation(line: 692, column: 6, scope: !4016)
!4555 = !DILocation(line: 693, column: 3, scope: !4553)
!4556 = !DILocation(line: 695, column: 26, scope: !4016)
!4557 = !DILocation(line: 695, column: 8, scope: !4016)
!4558 = !DILocation(line: 695, column: 6, scope: !4016)
!4559 = !DILocation(line: 696, column: 6, scope: !4560)
!4560 = distinct !DILexicalBlock(scope: !4016, file: !3, line: 696, column: 6)
!4561 = !DILocation(line: 696, column: 6, scope: !4016)
!4562 = !DILocation(line: 697, column: 10, scope: !4560)
!4563 = !DILocation(line: 697, column: 3, scope: !4560)
!4564 = !DILocation(line: 699, column: 6, scope: !4565)
!4565 = distinct !DILexicalBlock(scope: !4016, file: !3, line: 699, column: 6)
!4566 = !DILocation(line: 699, column: 36, scope: !4565)
!4567 = !DILocation(line: 699, column: 43, scope: !4565)
!4568 = !DILocation(line: 699, column: 53, scope: !4565)
!4569 = !DILocation(line: 699, column: 34, scope: !4565)
!4570 = !DILocation(line: 699, column: 6, scope: !4016)
!4571 = !DILocation(line: 700, column: 3, scope: !4565)
!4572 = !DILocation(line: 702, column: 30, scope: !4016)
!4573 = !DILocation(line: 702, column: 14, scope: !4016)
!4574 = !DILocation(line: 702, column: 2, scope: !4016)
!4575 = !DILocation(line: 702, column: 7, scope: !4016)
!4576 = !DILocation(line: 702, column: 12, scope: !4016)
!4577 = !DILocation(line: 703, column: 7, scope: !4578)
!4578 = distinct !DILexicalBlock(scope: !4016, file: !3, line: 703, column: 6)
!4579 = !DILocation(line: 703, column: 12, scope: !4578)
!4580 = !DILocation(line: 703, column: 6, scope: !4016)
!4581 = !DILocation(line: 704, column: 3, scope: !4578)
!4582 = !DILocation(line: 706, column: 10, scope: !4016)
!4583 = !DILocation(line: 706, column: 15, scope: !4016)
!4584 = !DILocation(line: 706, column: 8, scope: !4016)
!4585 = !DILocation(line: 708, column: 32, scope: !4016)
!4586 = !DILocation(line: 708, column: 37, scope: !4016)
!4587 = !DILocation(line: 708, column: 44, scope: !4016)
!4588 = !DILocation(line: 708, column: 8, scope: !4016)
!4589 = !DILocation(line: 708, column: 6, scope: !4016)
!4590 = !DILocation(line: 709, column: 6, scope: !4591)
!4591 = distinct !DILexicalBlock(scope: !4016, file: !3, line: 709, column: 6)
!4592 = !DILocation(line: 709, column: 6, scope: !4016)
!4593 = !DILocation(line: 710, column: 10, scope: !4591)
!4594 = !DILocation(line: 710, column: 3, scope: !4591)
!4595 = !DILocation(line: 712, column: 2, scope: !4016)
!4596 = !DILocation(line: 712, column: 7, scope: !4016)
!4597 = !DILocation(line: 712, column: 12, scope: !4016)
!4598 = !DILocation(line: 713, column: 9, scope: !4599)
!4599 = distinct !DILexicalBlock(scope: !4016, file: !3, line: 713, column: 2)
!4600 = !DILocation(line: 713, column: 7, scope: !4599)
!4601 = !DILocation(line: 713, column: 14, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4599, file: !3, line: 713, column: 2)
!4603 = !DILocation(line: 713, column: 18, scope: !4602)
!4604 = !DILocation(line: 713, column: 23, scope: !4602)
!4605 = !DILocation(line: 713, column: 16, scope: !4602)
!4606 = !DILocation(line: 713, column: 2, scope: !4599)
!4607 = !DILocation(line: 714, column: 8, scope: !4608)
!4608 = distinct !DILexicalBlock(scope: !4602, file: !3, line: 713, column: 42)
!4609 = !DILocation(line: 714, column: 13, scope: !4608)
!4610 = !DILocation(line: 714, column: 24, scope: !4608)
!4611 = !DILocation(line: 714, column: 5, scope: !4608)
!4612 = !DILocation(line: 715, column: 3, scope: !4608)
!4613 = !DILocation(line: 715, column: 6, scope: !4608)
!4614 = !DILocation(line: 715, column: 12, scope: !4608)
!4615 = !DILocation(line: 716, column: 3, scope: !4608)
!4616 = !DILocation(line: 716, column: 6, scope: !4608)
!4617 = !DILocation(line: 716, column: 19, scope: !4608)
!4618 = !DILocation(line: 717, column: 3, scope: !4608)
!4619 = !DILocation(line: 717, column: 6, scope: !4608)
!4620 = !DILocation(line: 717, column: 13, scope: !4608)
!4621 = !DILocation(line: 718, column: 3, scope: !4608)
!4622 = !DILocation(line: 718, column: 6, scope: !4608)
!4623 = !DILocation(line: 718, column: 16, scope: !4608)
!4624 = !DILocation(line: 720, column: 31, scope: !4608)
!4625 = !DILocation(line: 720, column: 36, scope: !4608)
!4626 = !DILocation(line: 720, column: 11, scope: !4608)
!4627 = !DILocation(line: 720, column: 9, scope: !4608)
!4628 = !DILocation(line: 721, column: 8, scope: !4629)
!4629 = distinct !DILexicalBlock(scope: !4608, file: !3, line: 721, column: 7)
!4630 = !DILocation(line: 721, column: 7, scope: !4608)
!4631 = !DILocation(line: 722, column: 4, scope: !4629)
!4632 = !DILocation(line: 725, column: 25, scope: !4608)
!4633 = !DILocation(line: 725, column: 32, scope: !4608)
!4634 = !DILocation(line: 725, column: 3, scope: !4608)
!4635 = !DILocation(line: 725, column: 6, scope: !4608)
!4636 = !DILocation(line: 725, column: 23, scope: !4608)
!4637 = !DILocation(line: 726, column: 22, scope: !4608)
!4638 = !DILocation(line: 726, column: 29, scope: !4608)
!4639 = !DILocation(line: 726, column: 3, scope: !4608)
!4640 = !DILocation(line: 726, column: 6, scope: !4608)
!4641 = !DILocation(line: 726, column: 20, scope: !4608)
!4642 = !DILocation(line: 727, column: 2, scope: !4608)
!4643 = !DILocation(line: 713, column: 38, scope: !4602)
!4644 = !DILocation(line: 713, column: 2, scope: !4602)
!4645 = distinct !{!4645, !4606, !4646}
!4646 = !DILocation(line: 727, column: 2, scope: !4599)
!4647 = !DILocation(line: 730, column: 9, scope: !4648)
!4648 = distinct !DILexicalBlock(scope: !4016, file: !3, line: 730, column: 2)
!4649 = !DILocation(line: 730, column: 7, scope: !4648)
!4650 = !DILocation(line: 730, column: 14, scope: !4651)
!4651 = distinct !DILexicalBlock(scope: !4648, file: !3, line: 730, column: 2)
!4652 = !DILocation(line: 730, column: 18, scope: !4651)
!4653 = !DILocation(line: 730, column: 23, scope: !4651)
!4654 = !DILocation(line: 730, column: 16, scope: !4651)
!4655 = !DILocation(line: 730, column: 2, scope: !4648)
!4656 = !DILocation(line: 731, column: 14, scope: !4651)
!4657 = !DILocation(line: 731, column: 20, scope: !4651)
!4658 = !DILocation(line: 731, column: 23, scope: !4651)
!4659 = !DILocation(line: 731, column: 13, scope: !4651)
!4660 = !DILocation(line: 731, column: 3, scope: !4651)
!4661 = !DILocation(line: 730, column: 38, scope: !4651)
!4662 = !DILocation(line: 730, column: 2, scope: !4651)
!4663 = distinct !{!4663, !4655, !4664}
!4664 = !DILocation(line: 731, column: 28, scope: !4648)
!4665 = !DILocation(line: 733, column: 29, scope: !4016)
!4666 = !DILocation(line: 733, column: 53, scope: !4016)
!4667 = !DILocation(line: 733, column: 35, scope: !4016)
!4668 = !DILocation(line: 733, column: 59, scope: !4016)
!4669 = !DILocation(line: 733, column: 8, scope: !4016)
!4670 = !DILocation(line: 733, column: 6, scope: !4016)
!4671 = !DILocation(line: 737, column: 6, scope: !4672)
!4672 = distinct !DILexicalBlock(scope: !4016, file: !3, line: 737, column: 6)
!4673 = !DILocation(line: 737, column: 10, scope: !4672)
!4674 = !DILocation(line: 737, column: 6, scope: !4016)
!4675 = !DILocation(line: 738, column: 10, scope: !4672)
!4676 = !DILocation(line: 738, column: 3, scope: !4672)
!4677 = !DILocation(line: 753, column: 2, scope: !4016)
!4678 = !DILocation(line: 754, column: 25, scope: !4016)
!4679 = !DILocation(line: 754, column: 2, scope: !4016)
!4680 = !DILocation(line: 757, column: 9, scope: !4347)
!4681 = !DILocation(line: 757, column: 7, scope: !4347)
!4682 = !DILocation(line: 757, column: 14, scope: !4346)
!4683 = !DILocation(line: 757, column: 18, scope: !4346)
!4684 = !DILocation(line: 757, column: 23, scope: !4346)
!4685 = !DILocation(line: 757, column: 16, scope: !4346)
!4686 = !DILocation(line: 757, column: 2, scope: !4347)
!4687 = !DILocation(line: 758, column: 8, scope: !4345)
!4688 = !DILocation(line: 758, column: 13, scope: !4345)
!4689 = !DILocation(line: 758, column: 24, scope: !4345)
!4690 = !DILocation(line: 758, column: 5, scope: !4345)
!4691 = !DILocation(line: 759, column: 11, scope: !4345)
!4692 = !DILocation(line: 759, column: 14, scope: !4345)
!4693 = !DILocation(line: 759, column: 9, scope: !4345)
!4694 = !DILocation(line: 761, column: 26, scope: !4345)
!4695 = !DILocation(line: 365, column: 27, scope: !4696, inlinedAt: !4344)
!4696 = distinct !DILexicalBlock(scope: !4337, file: !4338, line: 365, column: 6)
!4697 = !DILocation(line: 365, column: 6, scope: !4696, inlinedAt: !4344)
!4698 = !DILocation(line: 365, column: 6, scope: !4337, inlinedAt: !4344)
!4699 = !DILocation(line: 366, column: 12, scope: !4700, inlinedAt: !4344)
!4700 = distinct !DILexicalBlock(scope: !4701, file: !4338, line: 366, column: 7)
!4701 = distinct !DILexicalBlock(scope: !4696, file: !4338, line: 365, column: 31)
!4702 = !DILocation(line: 366, column: 14, scope: !4700, inlinedAt: !4344)
!4703 = !DILocation(line: 366, column: 7, scope: !4701, inlinedAt: !4344)
!4704 = !DILocation(line: 367, column: 4, scope: !4700, inlinedAt: !4344)
!4705 = !DILocation(line: 368, column: 28, scope: !4701, inlinedAt: !4344)
!4706 = !DILocation(line: 368, column: 10, scope: !4701, inlinedAt: !4344)
!4707 = !DILocation(line: 368, column: 3, scope: !4701, inlinedAt: !4344)
!4708 = !DILocation(line: 370, column: 29, scope: !4709, inlinedAt: !4344)
!4709 = distinct !DILexicalBlock(scope: !4696, file: !4338, line: 369, column: 9)
!4710 = !DILocation(line: 370, column: 10, scope: !4709, inlinedAt: !4344)
!4711 = !DILocation(line: 370, column: 3, scope: !4709, inlinedAt: !4344)
!4712 = !DILocation(line: 372, column: 1, scope: !4337, inlinedAt: !4344)
!4713 = !DILocation(line: 761, column: 34, scope: !4345)
!4714 = !DILocation(line: 761, column: 3, scope: !4345)
!4715 = !DILocation(line: 761, column: 10, scope: !4345)
!4716 = !DILocation(line: 761, column: 24, scope: !4345)
!4717 = !DILocation(line: 762, column: 2, scope: !4345)
!4718 = !DILocation(line: 757, column: 38, scope: !4346)
!4719 = !DILocation(line: 757, column: 2, scope: !4346)
!4720 = distinct !{!4720, !4686, !4721}
!4721 = !DILocation(line: 762, column: 2, scope: !4347)
!4722 = !DILocation(line: 764, column: 17, scope: !4016)
!4723 = !DILocation(line: 764, column: 2, scope: !4016)
!4724 = !DILocation(line: 764, column: 11, scope: !4016)
!4725 = !DILocation(line: 764, column: 15, scope: !4016)
!4726 = !DILocation(line: 765, column: 2, scope: !4016)
!4727 = !DILocation(line: 766, column: 27, scope: !4016)
!4728 = !DILocation(line: 365, column: 27, scope: !4696, inlinedAt: !4342)
!4729 = !DILocation(line: 365, column: 6, scope: !4696, inlinedAt: !4342)
!4730 = !DILocation(line: 365, column: 6, scope: !4337, inlinedAt: !4342)
!4731 = !DILocation(line: 366, column: 12, scope: !4700, inlinedAt: !4342)
!4732 = !DILocation(line: 366, column: 14, scope: !4700, inlinedAt: !4342)
!4733 = !DILocation(line: 366, column: 7, scope: !4701, inlinedAt: !4342)
!4734 = !DILocation(line: 367, column: 4, scope: !4700, inlinedAt: !4342)
!4735 = !DILocation(line: 368, column: 28, scope: !4701, inlinedAt: !4342)
!4736 = !DILocation(line: 368, column: 10, scope: !4701, inlinedAt: !4342)
!4737 = !DILocation(line: 368, column: 3, scope: !4701, inlinedAt: !4342)
!4738 = !DILocation(line: 370, column: 29, scope: !4709, inlinedAt: !4342)
!4739 = !DILocation(line: 370, column: 10, scope: !4709, inlinedAt: !4342)
!4740 = !DILocation(line: 370, column: 3, scope: !4709, inlinedAt: !4342)
!4741 = !DILocation(line: 372, column: 1, scope: !4337, inlinedAt: !4342)
!4742 = !DILocation(line: 766, column: 35, scope: !4016)
!4743 = !DILocation(line: 766, column: 2, scope: !4016)
!4744 = !DILocation(line: 766, column: 11, scope: !4016)
!4745 = !DILocation(line: 766, column: 17, scope: !4016)
!4746 = !DILocation(line: 766, column: 25, scope: !4016)
!4747 = !DILocation(line: 767, column: 13, scope: !4016)
!4748 = !DILocation(line: 767, column: 22, scope: !4016)
!4749 = !DILocation(line: 767, column: 2, scope: !4016)
!4750 = !DILocation(line: 769, column: 2, scope: !4016)
!4751 = !DILocation(line: 770, column: 1, scope: !4016)
!4752 = distinct !DISubprogram(name: "jr3_pci_open", scope: !3, file: !3, line: 292, type: !3972, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !277)
!4753 = !DILocalVariable(name: "dev", arg: 1, scope: !4752, file: !3, line: 292, type: !191)
!4754 = !DILocation(line: 292, column: 47, scope: !4752)
!4755 = !DILocalVariable(name: "spriv", scope: !4752, file: !3, line: 294, type: !4359)
!4756 = !DILocation(line: 294, column: 33, scope: !4752)
!4757 = !DILocalVariable(name: "s", scope: !4752, file: !3, line: 295, type: !3830)
!4758 = !DILocation(line: 295, column: 27, scope: !4752)
!4759 = !DILocalVariable(name: "i", scope: !4752, file: !3, line: 296, type: !150)
!4760 = !DILocation(line: 296, column: 6, scope: !4752)
!4761 = !DILocation(line: 298, column: 9, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !4752, file: !3, line: 298, column: 2)
!4763 = !DILocation(line: 298, column: 7, scope: !4762)
!4764 = !DILocation(line: 298, column: 14, scope: !4765)
!4765 = distinct !DILexicalBlock(scope: !4762, file: !3, line: 298, column: 2)
!4766 = !DILocation(line: 298, column: 18, scope: !4765)
!4767 = !DILocation(line: 298, column: 23, scope: !4765)
!4768 = !DILocation(line: 298, column: 16, scope: !4765)
!4769 = !DILocation(line: 298, column: 2, scope: !4762)
!4770 = !DILocation(line: 299, column: 8, scope: !4771)
!4771 = distinct !DILexicalBlock(scope: !4765, file: !3, line: 298, column: 42)
!4772 = !DILocation(line: 299, column: 13, scope: !4771)
!4773 = !DILocation(line: 299, column: 24, scope: !4771)
!4774 = !DILocation(line: 299, column: 5, scope: !4771)
!4775 = !DILocation(line: 300, column: 11, scope: !4771)
!4776 = !DILocation(line: 300, column: 14, scope: !4771)
!4777 = !DILocation(line: 300, column: 9, scope: !4771)
!4778 = !DILocation(line: 303, column: 2, scope: !4771)
!4779 = !DILocation(line: 298, column: 38, scope: !4765)
!4780 = !DILocation(line: 298, column: 2, scope: !4765)
!4781 = distinct !{!4781, !4769, !4782}
!4782 = !DILocation(line: 303, column: 2, scope: !4762)
!4783 = !DILocation(line: 304, column: 2, scope: !4752)
!4784 = distinct !DISubprogram(name: "jr3_pci_ai_insn_read", scope: !3, file: !3, line: 265, type: !3927, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !277)
!4785 = !DILocalVariable(name: "dev", arg: 1, scope: !4784, file: !3, line: 265, type: !191)
!4786 = !DILocation(line: 265, column: 55, scope: !4784)
!4787 = !DILocalVariable(name: "s", arg: 2, scope: !4784, file: !3, line: 266, type: !3830)
!4788 = !DILocation(line: 266, column: 30, scope: !4784)
!4789 = !DILocalVariable(name: "insn", arg: 3, scope: !4784, file: !3, line: 267, type: !3929)
!4790 = !DILocation(line: 267, column: 25, scope: !4784)
!4791 = !DILocalVariable(name: "data", arg: 4, scope: !4784, file: !3, line: 268, type: !2693)
!4792 = !DILocation(line: 268, column: 19, scope: !4784)
!4793 = !DILocalVariable(name: "spriv", scope: !4784, file: !3, line: 270, type: !4359)
!4794 = !DILocation(line: 270, column: 33, scope: !4784)
!4795 = !DILocation(line: 270, column: 41, scope: !4784)
!4796 = !DILocation(line: 270, column: 44, scope: !4784)
!4797 = !DILocalVariable(name: "chan", scope: !4784, file: !3, line: 271, type: !7)
!4798 = !DILocation(line: 271, column: 15, scope: !4784)
!4799 = !DILocation(line: 271, column: 22, scope: !4784)
!4800 = !DILocalVariable(name: "errors", scope: !4784, file: !3, line: 272, type: !151)
!4801 = !DILocation(line: 272, column: 6, scope: !4784)
!4802 = !DILocalVariable(name: "i", scope: !4784, file: !3, line: 273, type: !150)
!4803 = !DILocation(line: 273, column: 6, scope: !4784)
!4804 = !DILocation(line: 275, column: 20, scope: !4784)
!4805 = !DILocation(line: 275, column: 27, scope: !4784)
!4806 = !DILocation(line: 275, column: 35, scope: !4784)
!4807 = !DILocation(line: 275, column: 11, scope: !4784)
!4808 = !DILocation(line: 275, column: 9, scope: !4784)
!4809 = !DILocation(line: 276, column: 6, scope: !4810)
!4810 = distinct !DILexicalBlock(scope: !4784, file: !3, line: 276, column: 6)
!4811 = !DILocation(line: 276, column: 13, scope: !4810)
!4812 = !DILocation(line: 276, column: 19, scope: !4810)
!4813 = !DILocation(line: 276, column: 37, scope: !4810)
!4814 = !DILocation(line: 277, column: 7, scope: !4810)
!4815 = !DILocation(line: 277, column: 14, scope: !4810)
!4816 = !DILocation(line: 276, column: 6, scope: !4784)
!4817 = !DILocation(line: 279, column: 7, scope: !4818)
!4818 = distinct !DILexicalBlock(scope: !4819, file: !3, line: 279, column: 7)
!4819 = distinct !DILexicalBlock(scope: !4810, file: !3, line: 277, column: 59)
!4820 = !DILocation(line: 279, column: 14, scope: !4818)
!4821 = !DILocation(line: 279, column: 20, scope: !4818)
!4822 = !DILocation(line: 279, column: 7, scope: !4819)
!4823 = !DILocation(line: 281, column: 4, scope: !4824)
!4824 = distinct !DILexicalBlock(scope: !4818, file: !3, line: 279, column: 39)
!4825 = !DILocation(line: 281, column: 11, scope: !4824)
!4826 = !DILocation(line: 281, column: 17, scope: !4824)
!4827 = !DILocation(line: 282, column: 3, scope: !4824)
!4828 = !DILocation(line: 283, column: 3, scope: !4819)
!4829 = !DILocation(line: 286, column: 9, scope: !4830)
!4830 = distinct !DILexicalBlock(scope: !4784, file: !3, line: 286, column: 2)
!4831 = !DILocation(line: 286, column: 7, scope: !4830)
!4832 = !DILocation(line: 286, column: 14, scope: !4833)
!4833 = distinct !DILexicalBlock(scope: !4830, file: !3, line: 286, column: 2)
!4834 = !DILocation(line: 286, column: 18, scope: !4833)
!4835 = !DILocation(line: 286, column: 24, scope: !4833)
!4836 = !DILocation(line: 286, column: 16, scope: !4833)
!4837 = !DILocation(line: 286, column: 2, scope: !4830)
!4838 = !DILocation(line: 287, column: 34, scope: !4833)
!4839 = !DILocation(line: 287, column: 39, scope: !4833)
!4840 = !DILocation(line: 287, column: 42, scope: !4833)
!4841 = !DILocation(line: 287, column: 13, scope: !4833)
!4842 = !DILocation(line: 287, column: 3, scope: !4833)
!4843 = !DILocation(line: 287, column: 8, scope: !4833)
!4844 = !DILocation(line: 287, column: 11, scope: !4833)
!4845 = !DILocation(line: 286, column: 28, scope: !4833)
!4846 = !DILocation(line: 286, column: 2, scope: !4833)
!4847 = distinct !{!4847, !4837, !4848}
!4848 = !DILocation(line: 287, column: 46, scope: !4830)
!4849 = !DILocation(line: 289, column: 9, scope: !4784)
!4850 = !DILocation(line: 289, column: 15, scope: !4784)
!4851 = !DILocation(line: 289, column: 2, scope: !4784)
!4852 = !DILocation(line: 290, column: 1, scope: !4784)
!4853 = distinct !DISubprogram(name: "jr3_pci_alloc_spriv", scope: !3, file: !3, line: 622, type: !4854, scopeLine: 623, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !277)
!4854 = !DISubroutineType(types: !4855)
!4855 = !{!4359, !191, !3830}
!4856 = !DILocalVariable(name: "dev", arg: 1, scope: !4853, file: !3, line: 622, type: !191)
!4857 = !DILocation(line: 622, column: 43, scope: !4853)
!4858 = !DILocalVariable(name: "s", arg: 2, scope: !4853, file: !3, line: 622, type: !3830)
!4859 = !DILocation(line: 622, column: 73, scope: !4853)
!4860 = !DILocalVariable(name: "block", scope: !4853, file: !3, line: 624, type: !4497)
!4861 = !DILocation(line: 624, column: 28, scope: !4853)
!4862 = !DILocation(line: 624, column: 36, scope: !4853)
!4863 = !DILocation(line: 624, column: 41, scope: !4853)
!4864 = !DILocalVariable(name: "spriv", scope: !4853, file: !3, line: 625, type: !4359)
!4865 = !DILocation(line: 625, column: 33, scope: !4853)
!4866 = !DILocalVariable(name: "j", scope: !4853, file: !3, line: 626, type: !150)
!4867 = !DILocation(line: 626, column: 6, scope: !4853)
!4868 = !DILocalVariable(name: "k", scope: !4853, file: !3, line: 627, type: !150)
!4869 = !DILocation(line: 627, column: 6, scope: !4853)
!4870 = !DILocation(line: 629, column: 29, scope: !4853)
!4871 = !DILocation(line: 629, column: 10, scope: !4853)
!4872 = !DILocation(line: 629, column: 8, scope: !4853)
!4873 = !DILocation(line: 630, column: 7, scope: !4874)
!4874 = distinct !DILexicalBlock(scope: !4853, file: !3, line: 630, column: 6)
!4875 = !DILocation(line: 630, column: 6, scope: !4853)
!4876 = !DILocation(line: 631, column: 3, scope: !4874)
!4877 = !DILocation(line: 633, column: 19, scope: !4853)
!4878 = !DILocation(line: 633, column: 25, scope: !4853)
!4879 = !DILocation(line: 633, column: 28, scope: !4853)
!4880 = !DILocation(line: 633, column: 35, scope: !4853)
!4881 = !DILocation(line: 633, column: 2, scope: !4853)
!4882 = !DILocation(line: 633, column: 9, scope: !4853)
!4883 = !DILocation(line: 633, column: 16, scope: !4853)
!4884 = !DILocation(line: 635, column: 9, scope: !4885)
!4885 = distinct !DILexicalBlock(scope: !4853, file: !3, line: 635, column: 2)
!4886 = !DILocation(line: 635, column: 7, scope: !4885)
!4887 = !DILocation(line: 635, column: 14, scope: !4888)
!4888 = distinct !DILexicalBlock(scope: !4885, file: !3, line: 635, column: 2)
!4889 = !DILocation(line: 635, column: 16, scope: !4888)
!4890 = !DILocation(line: 635, column: 2, scope: !4885)
!4891 = !DILocation(line: 636, column: 3, scope: !4892)
!4892 = distinct !DILexicalBlock(scope: !4888, file: !3, line: 635, column: 26)
!4893 = !DILocation(line: 636, column: 10, scope: !4892)
!4894 = !DILocation(line: 636, column: 16, scope: !4892)
!4895 = !DILocation(line: 636, column: 19, scope: !4892)
!4896 = !DILocation(line: 636, column: 21, scope: !4892)
!4897 = !DILocation(line: 636, column: 28, scope: !4892)
!4898 = !DILocation(line: 637, column: 3, scope: !4892)
!4899 = !DILocation(line: 637, column: 10, scope: !4892)
!4900 = !DILocation(line: 637, column: 16, scope: !4892)
!4901 = !DILocation(line: 637, column: 19, scope: !4892)
!4902 = !DILocation(line: 637, column: 21, scope: !4892)
!4903 = !DILocation(line: 637, column: 30, scope: !4892)
!4904 = !DILocation(line: 637, column: 34, scope: !4892)
!4905 = !DILocation(line: 638, column: 3, scope: !4892)
!4906 = !DILocation(line: 638, column: 10, scope: !4892)
!4907 = !DILocation(line: 638, column: 16, scope: !4892)
!4908 = !DILocation(line: 638, column: 19, scope: !4892)
!4909 = !DILocation(line: 638, column: 21, scope: !4892)
!4910 = !DILocation(line: 638, column: 30, scope: !4892)
!4911 = !DILocation(line: 638, column: 34, scope: !4892)
!4912 = !DILocation(line: 640, column: 10, scope: !4913)
!4913 = distinct !DILexicalBlock(scope: !4892, file: !3, line: 640, column: 3)
!4914 = !DILocation(line: 640, column: 8, scope: !4913)
!4915 = !DILocation(line: 640, column: 15, scope: !4916)
!4916 = distinct !DILexicalBlock(scope: !4913, file: !3, line: 640, column: 3)
!4917 = !DILocation(line: 640, column: 17, scope: !4916)
!4918 = !DILocation(line: 640, column: 3, scope: !4913)
!4919 = !DILocation(line: 641, column: 42, scope: !4920)
!4920 = distinct !DILexicalBlock(scope: !4916, file: !3, line: 640, column: 27)
!4921 = !DILocation(line: 641, column: 49, scope: !4920)
!4922 = !DILocation(line: 641, column: 55, scope: !4920)
!4923 = !DILocation(line: 641, column: 58, scope: !4920)
!4924 = !DILocation(line: 641, column: 4, scope: !4920)
!4925 = !DILocation(line: 641, column: 11, scope: !4920)
!4926 = !DILocation(line: 641, column: 28, scope: !4920)
!4927 = !DILocation(line: 641, column: 32, scope: !4920)
!4928 = !DILocation(line: 641, column: 34, scope: !4920)
!4929 = !DILocation(line: 641, column: 30, scope: !4920)
!4930 = !DILocation(line: 641, column: 39, scope: !4920)
!4931 = !DILocation(line: 642, column: 4, scope: !4920)
!4932 = !DILocation(line: 642, column: 11, scope: !4920)
!4933 = !DILocation(line: 642, column: 24, scope: !4920)
!4934 = !DILocation(line: 642, column: 28, scope: !4920)
!4935 = !DILocation(line: 642, column: 30, scope: !4920)
!4936 = !DILocation(line: 642, column: 26, scope: !4920)
!4937 = !DILocation(line: 642, column: 35, scope: !4920)
!4938 = !DILocation(line: 643, column: 3, scope: !4920)
!4939 = !DILocation(line: 640, column: 23, scope: !4916)
!4940 = !DILocation(line: 640, column: 3, scope: !4916)
!4941 = distinct !{!4941, !4918, !4942}
!4942 = !DILocation(line: 643, column: 3, scope: !4913)
!4943 = !DILocation(line: 644, column: 2, scope: !4892)
!4944 = !DILocation(line: 635, column: 22, scope: !4888)
!4945 = !DILocation(line: 635, column: 2, scope: !4888)
!4946 = distinct !{!4946, !4890, !4947}
!4947 = !DILocation(line: 644, column: 2, scope: !4885)
!4948 = !DILocation(line: 645, column: 2, scope: !4853)
!4949 = !DILocation(line: 645, column: 9, scope: !4853)
!4950 = !DILocation(line: 645, column: 18, scope: !4853)
!4951 = !DILocation(line: 645, column: 20, scope: !4853)
!4952 = !DILocation(line: 645, column: 27, scope: !4853)
!4953 = !DILocation(line: 646, column: 2, scope: !4853)
!4954 = !DILocation(line: 646, column: 9, scope: !4853)
!4955 = !DILocation(line: 646, column: 18, scope: !4853)
!4956 = !DILocation(line: 646, column: 20, scope: !4853)
!4957 = !DILocation(line: 646, column: 29, scope: !4853)
!4958 = !DILocation(line: 646, column: 33, scope: !4853)
!4959 = !DILocation(line: 647, column: 2, scope: !4853)
!4960 = !DILocation(line: 647, column: 9, scope: !4853)
!4961 = !DILocation(line: 647, column: 18, scope: !4853)
!4962 = !DILocation(line: 647, column: 20, scope: !4853)
!4963 = !DILocation(line: 647, column: 29, scope: !4853)
!4964 = !DILocation(line: 647, column: 33, scope: !4853)
!4965 = !DILocation(line: 649, column: 33, scope: !4853)
!4966 = !DILocation(line: 649, column: 40, scope: !4853)
!4967 = !DILocation(line: 649, column: 49, scope: !4853)
!4968 = !DILocation(line: 649, column: 2, scope: !4853)
!4969 = !DILocation(line: 649, column: 9, scope: !4853)
!4970 = !DILocation(line: 649, column: 30, scope: !4853)
!4971 = !DILocation(line: 650, column: 33, scope: !4853)
!4972 = !DILocation(line: 650, column: 40, scope: !4853)
!4973 = !DILocation(line: 650, column: 49, scope: !4853)
!4974 = !DILocation(line: 650, column: 2, scope: !4853)
!4975 = !DILocation(line: 650, column: 9, scope: !4853)
!4976 = !DILocation(line: 650, column: 30, scope: !4853)
!4977 = !DILocation(line: 651, column: 2, scope: !4853)
!4978 = !DILocation(line: 651, column: 9, scope: !4853)
!4979 = !DILocation(line: 651, column: 26, scope: !4853)
!4980 = !DILocation(line: 652, column: 2, scope: !4853)
!4981 = !DILocation(line: 652, column: 9, scope: !4853)
!4982 = !DILocation(line: 652, column: 26, scope: !4853)
!4983 = !DILocation(line: 654, column: 9, scope: !4853)
!4984 = !DILocation(line: 654, column: 2, scope: !4853)
!4985 = !DILocation(line: 655, column: 1, scope: !4853)
!4986 = distinct !DISubprogram(name: "writel", scope: !4987, file: !4987, line: 67, type: !4988, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !277)
!4987 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!4988 = !DISubroutineType(types: !4989)
!4989 = !{null, !7, !4990}
!4990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4991, size: 64)
!4991 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4992 = !DILocalVariable(name: "val", arg: 1, scope: !4986, file: !4987, line: 67, type: !7)
!4993 = !DILocation(line: 67, column: 1, scope: !4986)
!4994 = !DILocalVariable(name: "addr", arg: 2, scope: !4986, file: !4987, line: 67, type: !4990)
!4995 = !{i32 -2143315814}
!4996 = distinct !DISubprogram(name: "jr3_download_firmware", scope: !3, file: !3, line: 419, type: !4997, scopeLine: 422, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !277)
!4997 = !DISubroutineType(types: !4998)
!4998 = !{!150, !191, !4999, !349, !181}
!4999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5000, size: 64)
!5000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1364)
!5001 = !DILocalVariable(name: "dev", arg: 1, scope: !4996, file: !3, line: 419, type: !191)
!5002 = !DILocation(line: 419, column: 56, scope: !4996)
!5003 = !DILocalVariable(name: "data", arg: 2, scope: !4996, file: !3, line: 420, type: !4999)
!5004 = !DILocation(line: 420, column: 16, scope: !4996)
!5005 = !DILocalVariable(name: "size", arg: 3, scope: !4996, file: !3, line: 420, type: !349)
!5006 = !DILocation(line: 420, column: 29, scope: !4996)
!5007 = !DILocalVariable(name: "context", arg: 4, scope: !4996, file: !3, line: 421, type: !181)
!5008 = !DILocation(line: 421, column: 20, scope: !4996)
!5009 = !DILocalVariable(name: "subdev", scope: !4996, file: !3, line: 423, type: !150)
!5010 = !DILocation(line: 423, column: 6, scope: !4996)
!5011 = !DILocalVariable(name: "ret", scope: !4996, file: !3, line: 424, type: !150)
!5012 = !DILocation(line: 424, column: 6, scope: !4996)
!5013 = !DILocation(line: 427, column: 27, scope: !4996)
!5014 = !DILocation(line: 427, column: 32, scope: !4996)
!5015 = !DILocation(line: 427, column: 38, scope: !4996)
!5016 = !DILocation(line: 427, column: 8, scope: !4996)
!5017 = !DILocation(line: 427, column: 6, scope: !4996)
!5018 = !DILocation(line: 428, column: 6, scope: !5019)
!5019 = distinct !DILexicalBlock(scope: !4996, file: !3, line: 428, column: 6)
!5020 = !DILocation(line: 428, column: 6, scope: !4996)
!5021 = !DILocation(line: 429, column: 10, scope: !5019)
!5022 = !DILocation(line: 429, column: 3, scope: !5019)
!5023 = !DILocation(line: 432, column: 14, scope: !5024)
!5024 = distinct !DILexicalBlock(scope: !4996, file: !3, line: 432, column: 2)
!5025 = !DILocation(line: 432, column: 7, scope: !5024)
!5026 = !DILocation(line: 432, column: 19, scope: !5027)
!5027 = distinct !DILexicalBlock(scope: !5024, file: !3, line: 432, column: 2)
!5028 = !DILocation(line: 432, column: 28, scope: !5027)
!5029 = !DILocation(line: 432, column: 33, scope: !5027)
!5030 = !DILocation(line: 432, column: 26, scope: !5027)
!5031 = !DILocation(line: 432, column: 2, scope: !5024)
!5032 = !DILocation(line: 433, column: 22, scope: !5027)
!5033 = !DILocation(line: 433, column: 27, scope: !5027)
!5034 = !DILocation(line: 433, column: 35, scope: !5027)
!5035 = !DILocation(line: 433, column: 41, scope: !5027)
!5036 = !DILocation(line: 433, column: 3, scope: !5027)
!5037 = !DILocation(line: 432, column: 53, scope: !5027)
!5038 = !DILocation(line: 432, column: 2, scope: !5027)
!5039 = distinct !{!5039, !5031, !5040}
!5040 = !DILocation(line: 433, column: 45, scope: !5024)
!5041 = !DILocation(line: 435, column: 2, scope: !4996)
!5042 = !DILocation(line: 436, column: 1, scope: !4996)
!5043 = distinct !DISubprogram(name: "jr3_pci_show_copyright", scope: !3, file: !3, line: 657, type: !225, scopeLine: 658, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !277)
!5044 = !DILocalVariable(name: "dev", arg: 1, scope: !5043, file: !3, line: 657, type: !191)
!5045 = !DILocation(line: 657, column: 58, scope: !5043)
!5046 = !DILocalVariable(name: "block", scope: !5043, file: !3, line: 659, type: !4497)
!5047 = !DILocation(line: 659, column: 28, scope: !5043)
!5048 = !DILocation(line: 659, column: 36, scope: !5043)
!5049 = !DILocation(line: 659, column: 41, scope: !5043)
!5050 = !DILocalVariable(name: "sensor0", scope: !5043, file: !3, line: 660, type: !4363)
!5051 = !DILocation(line: 660, column: 29, scope: !5043)
!5052 = !DILocation(line: 660, column: 40, scope: !5043)
!5053 = !DILocation(line: 660, column: 49, scope: !5043)
!5054 = !DILocalVariable(name: "copy", scope: !5043, file: !3, line: 661, type: !5055)
!5055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 200, elements: !5056)
!5056 = !{!5057}
!5057 = !DISubrange(count: 25)
!5058 = !DILocation(line: 661, column: 7, scope: !5043)
!5059 = !DILocalVariable(name: "i", scope: !5043, file: !3, line: 662, type: !150)
!5060 = !DILocation(line: 662, column: 6, scope: !5043)
!5061 = !DILocation(line: 664, column: 9, scope: !5062)
!5062 = distinct !DILexicalBlock(scope: !5043, file: !3, line: 664, column: 2)
!5063 = !DILocation(line: 664, column: 7, scope: !5062)
!5064 = !DILocation(line: 664, column: 14, scope: !5065)
!5065 = distinct !DILexicalBlock(scope: !5062, file: !3, line: 664, column: 2)
!5066 = !DILocation(line: 664, column: 16, scope: !5065)
!5067 = !DILocation(line: 664, column: 2, scope: !5062)
!5068 = !DILocation(line: 665, column: 29, scope: !5065)
!5069 = !DILocation(line: 665, column: 38, scope: !5065)
!5070 = !DILocation(line: 665, column: 48, scope: !5065)
!5071 = !DILocation(line: 665, column: 20, scope: !5065)
!5072 = !DILocation(line: 665, column: 52, scope: !5065)
!5073 = !DILocation(line: 665, column: 13, scope: !5065)
!5074 = !DILocation(line: 665, column: 8, scope: !5065)
!5075 = !DILocation(line: 665, column: 3, scope: !5065)
!5076 = !DILocation(line: 665, column: 11, scope: !5065)
!5077 = !DILocation(line: 664, column: 51, scope: !5065)
!5078 = !DILocation(line: 664, column: 2, scope: !5065)
!5079 = distinct !{!5079, !5067, !5080}
!5080 = !DILocation(line: 665, column: 56, scope: !5062)
!5081 = !DILocation(line: 666, column: 7, scope: !5043)
!5082 = !DILocation(line: 666, column: 2, scope: !5043)
!5083 = !DILocation(line: 666, column: 10, scope: !5043)
!5084 = !DILocation(line: 668, column: 1, scope: !5043)
!5085 = distinct !DISubprogram(name: "jr3_pci_poll_dev", scope: !3, file: !3, line: 579, type: !184, scopeLine: 580, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !277)
!5086 = !DILocalVariable(name: "lock", arg: 1, scope: !5087, file: !5088, line: 407, type: !1079)
!5087 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !5088, file: !5088, line: 407, type: !5089, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !277)
!5088 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!5089 = !DISubroutineType(types: !5090)
!5090 = !{null, !1079, !181}
!5091 = !DILocation(line: 407, column: 64, scope: !5087, inlinedAt: !5092)
!5092 = distinct !DILocation(line: 615, column: 2, scope: !5085)
!5093 = !DILocalVariable(name: "flags", arg: 2, scope: !5087, file: !5088, line: 407, type: !181)
!5094 = !DILocation(line: 407, column: 84, scope: !5087, inlinedAt: !5092)
!5095 = !DILocation(line: 363, column: 74, scope: !4337, inlinedAt: !5096)
!5096 = distinct !DILocation(line: 605, column: 13, scope: !5097)
!5097 = distinct !DILexicalBlock(scope: !5098, file: !3, line: 599, column: 49)
!5098 = distinct !DILexicalBlock(scope: !5099, file: !3, line: 599, column: 7)
!5099 = distinct !DILexicalBlock(scope: !5100, file: !3, line: 595, column: 42)
!5100 = distinct !DILexicalBlock(scope: !5101, file: !3, line: 595, column: 2)
!5101 = distinct !DILexicalBlock(scope: !5085, file: !3, line: 595, column: 2)
!5102 = !DILocation(line: 363, column: 74, scope: !4337, inlinedAt: !5103)
!5103 = distinct !DILocation(line: 617, column: 37, scope: !5085)
!5104 = !DILocalVariable(name: "lock", arg: 1, scope: !5105, file: !5088, line: 327, type: !1079)
!5105 = distinct !DISubprogram(name: "spinlock_check", scope: !5088, file: !5088, line: 327, type: !5106, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !277)
!5106 = !DISubroutineType(types: !5107)
!5107 = !{!5108, !1079}
!5108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!5109 = !DILocation(line: 327, column: 67, scope: !5105, inlinedAt: !5110)
!5110 = distinct !DILocation(line: 590, column: 2, scope: !5111)
!5111 = distinct !DILexicalBlock(scope: !5112, file: !3, line: 590, column: 2)
!5112 = distinct !DILexicalBlock(scope: !5113, file: !3, line: 590, column: 2)
!5113 = distinct !DILexicalBlock(scope: !5114, file: !3, line: 590, column: 2)
!5114 = distinct !DILexicalBlock(scope: !5115, file: !3, line: 590, column: 2)
!5115 = distinct !DILexicalBlock(scope: !5085, file: !3, line: 590, column: 2)
!5116 = !DILocalVariable(name: "t", arg: 1, scope: !5085, file: !3, line: 579, type: !186)
!5117 = !DILocation(line: 579, column: 49, scope: !5085)
!5118 = !DILocalVariable(name: "devpriv", scope: !5085, file: !3, line: 581, type: !165)
!5119 = !DILocation(line: 581, column: 30, scope: !5085)
!5120 = !DILocalVariable(name: "__mptr", scope: !5121, file: !3, line: 581, type: !164)
!5121 = distinct !DILexicalBlock(scope: !5085, file: !3, line: 581, column: 40)
!5122 = !DILocation(line: 581, column: 40, scope: !5121)
!5123 = !DILocation(line: 581, column: 40, scope: !5124)
!5124 = distinct !DILexicalBlock(scope: !5121, file: !3, line: 581, column: 40)
!5125 = !DILocalVariable(name: "dev", scope: !5085, file: !3, line: 582, type: !191)
!5126 = !DILocation(line: 582, column: 24, scope: !5085)
!5127 = !DILocation(line: 582, column: 30, scope: !5085)
!5128 = !DILocation(line: 582, column: 39, scope: !5085)
!5129 = !DILocalVariable(name: "spriv", scope: !5085, file: !3, line: 583, type: !4359)
!5130 = !DILocation(line: 583, column: 33, scope: !5085)
!5131 = !DILocalVariable(name: "s", scope: !5085, file: !3, line: 584, type: !3830)
!5132 = !DILocation(line: 584, column: 27, scope: !5085)
!5133 = !DILocalVariable(name: "flags", scope: !5085, file: !3, line: 585, type: !181)
!5134 = !DILocation(line: 585, column: 16, scope: !5085)
!5135 = !DILocalVariable(name: "now", scope: !5085, file: !3, line: 586, type: !181)
!5136 = !DILocation(line: 586, column: 16, scope: !5085)
!5137 = !DILocalVariable(name: "delay", scope: !5085, file: !3, line: 587, type: !150)
!5138 = !DILocation(line: 587, column: 6, scope: !5085)
!5139 = !DILocalVariable(name: "i", scope: !5085, file: !3, line: 588, type: !150)
!5140 = !DILocation(line: 588, column: 6, scope: !5085)
!5141 = !DILocation(line: 590, column: 2, scope: !5085)
!5142 = !DILocation(line: 590, column: 2, scope: !5115)
!5143 = !DILocalVariable(name: "__dummy", scope: !5144, file: !3, line: 590, type: !181)
!5144 = distinct !DILexicalBlock(scope: !5114, file: !3, line: 590, column: 2)
!5145 = !DILocation(line: 590, column: 2, scope: !5144)
!5146 = !DILocalVariable(name: "__dummy2", scope: !5144, file: !3, line: 590, type: !181)
!5147 = !DILocation(line: 590, column: 2, scope: !5114)
!5148 = !DILocation(line: 590, column: 2, scope: !5113)
!5149 = !DILocation(line: 590, column: 2, scope: !5150)
!5150 = distinct !DILexicalBlock(scope: !5113, file: !3, line: 590, column: 2)
!5151 = !DILocalVariable(name: "__dummy", scope: !5152, file: !3, line: 590, type: !181)
!5152 = distinct !DILexicalBlock(scope: !5153, file: !3, line: 590, column: 2)
!5153 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 590, column: 2)
!5154 = !DILocation(line: 590, column: 2, scope: !5152)
!5155 = !DILocalVariable(name: "__dummy2", scope: !5152, file: !3, line: 590, type: !181)
!5156 = !DILocation(line: 590, column: 2, scope: !5153)
!5157 = !DILocation(line: 590, column: 2, scope: !5112)
!5158 = !{i32 -2141591722}
!5159 = !DILocation(line: 590, column: 2, scope: !5111)
!5160 = !DILocation(line: 329, column: 10, scope: !5105, inlinedAt: !5110)
!5161 = !DILocation(line: 329, column: 16, scope: !5105, inlinedAt: !5110)
!5162 = !DILocation(line: 591, column: 8, scope: !5085)
!5163 = !DILocation(line: 592, column: 8, scope: !5085)
!5164 = !DILocation(line: 592, column: 6, scope: !5085)
!5165 = !DILocation(line: 595, column: 9, scope: !5101)
!5166 = !DILocation(line: 595, column: 7, scope: !5101)
!5167 = !DILocation(line: 595, column: 14, scope: !5100)
!5168 = !DILocation(line: 595, column: 18, scope: !5100)
!5169 = !DILocation(line: 595, column: 23, scope: !5100)
!5170 = !DILocation(line: 595, column: 16, scope: !5100)
!5171 = !DILocation(line: 595, column: 2, scope: !5101)
!5172 = !DILocation(line: 596, column: 8, scope: !5099)
!5173 = !DILocation(line: 596, column: 13, scope: !5099)
!5174 = !DILocation(line: 596, column: 24, scope: !5099)
!5175 = !DILocation(line: 596, column: 5, scope: !5099)
!5176 = !DILocation(line: 597, column: 11, scope: !5099)
!5177 = !DILocation(line: 597, column: 14, scope: !5099)
!5178 = !DILocation(line: 597, column: 9, scope: !5099)
!5179 = !DILocation(line: 599, column: 7, scope: !5098)
!5180 = !DILocation(line: 599, column: 7, scope: !5099)
!5181 = !DILocalVariable(name: "sub_delay", scope: !5097, file: !3, line: 600, type: !5182)
!5182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jr3_pci_poll_delay", file: !3, line: 83, size: 64, elements: !5183)
!5183 = !{!5184, !5185}
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !5182, file: !3, line: 84, baseType: !150, size: 32)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !5182, file: !3, line: 85, baseType: !150, size: 32, offset: 32)
!5186 = !DILocation(line: 600, column: 30, scope: !5097)
!5187 = !DILocation(line: 602, column: 39, scope: !5097)
!5188 = !DILocation(line: 602, column: 16, scope: !5097)
!5189 = !DILocation(line: 604, column: 27, scope: !5097)
!5190 = !DILocation(line: 605, column: 40, scope: !5097)
!5191 = !DILocation(line: 365, column: 27, scope: !4696, inlinedAt: !5096)
!5192 = !DILocation(line: 365, column: 6, scope: !4696, inlinedAt: !5096)
!5193 = !DILocation(line: 365, column: 6, scope: !4337, inlinedAt: !5096)
!5194 = !DILocation(line: 366, column: 12, scope: !4700, inlinedAt: !5096)
!5195 = !DILocation(line: 366, column: 14, scope: !4700, inlinedAt: !5096)
!5196 = !DILocation(line: 366, column: 7, scope: !4701, inlinedAt: !5096)
!5197 = !DILocation(line: 367, column: 4, scope: !4700, inlinedAt: !5096)
!5198 = !DILocation(line: 368, column: 28, scope: !4701, inlinedAt: !5096)
!5199 = !DILocation(line: 368, column: 10, scope: !4701, inlinedAt: !5096)
!5200 = !DILocation(line: 368, column: 3, scope: !4701, inlinedAt: !5096)
!5201 = !DILocation(line: 370, column: 29, scope: !4709, inlinedAt: !5096)
!5202 = !DILocation(line: 370, column: 10, scope: !4709, inlinedAt: !5096)
!5203 = !DILocation(line: 370, column: 3, scope: !4709, inlinedAt: !5096)
!5204 = !DILocation(line: 372, column: 1, scope: !4337, inlinedAt: !5096)
!5205 = !DILocation(line: 604, column: 35, scope: !5097)
!5206 = !DILocation(line: 604, column: 4, scope: !5097)
!5207 = !DILocation(line: 604, column: 11, scope: !5097)
!5208 = !DILocation(line: 604, column: 25, scope: !5097)
!5209 = !DILocation(line: 607, column: 18, scope: !5210)
!5210 = distinct !DILexicalBlock(scope: !5097, file: !3, line: 607, column: 8)
!5211 = !DILocation(line: 607, column: 8, scope: !5210)
!5212 = !DILocation(line: 607, column: 22, scope: !5210)
!5213 = !DILocation(line: 607, column: 35, scope: !5210)
!5214 = !DILocation(line: 607, column: 41, scope: !5210)
!5215 = !DILocation(line: 607, column: 39, scope: !5210)
!5216 = !DILocation(line: 607, column: 8, scope: !5097)
!5217 = !DILocation(line: 612, column: 23, scope: !5210)
!5218 = !DILocation(line: 612, column: 11, scope: !5210)
!5219 = !DILocation(line: 612, column: 5, scope: !5210)
!5220 = !DILocation(line: 613, column: 3, scope: !5097)
!5221 = !DILocation(line: 614, column: 2, scope: !5099)
!5222 = !DILocation(line: 595, column: 38, scope: !5100)
!5223 = !DILocation(line: 595, column: 2, scope: !5100)
!5224 = distinct !{!5224, !5171, !5225}
!5225 = !DILocation(line: 614, column: 2, scope: !5101)
!5226 = !DILocation(line: 615, column: 26, scope: !5085)
!5227 = !DILocation(line: 615, column: 31, scope: !5085)
!5228 = !DILocation(line: 615, column: 41, scope: !5085)
!5229 = !DILocalVariable(name: "__dummy", scope: !5230, file: !5088, line: 409, type: !181)
!5230 = distinct !DILexicalBlock(scope: !5231, file: !5088, line: 409, column: 2)
!5231 = distinct !DILexicalBlock(scope: !5087, file: !5088, line: 409, column: 2)
!5232 = !DILocation(line: 409, column: 2, scope: !5230, inlinedAt: !5092)
!5233 = !DILocalVariable(name: "__dummy2", scope: !5230, file: !5088, line: 409, type: !181)
!5234 = !DILocalVariable(name: "__dummy", scope: !5235, file: !5088, line: 409, type: !181)
!5235 = distinct !DILexicalBlock(scope: !5236, file: !5088, line: 409, column: 2)
!5236 = distinct !DILexicalBlock(scope: !5237, file: !5088, line: 409, column: 2)
!5237 = distinct !DILexicalBlock(scope: !5238, file: !5088, line: 409, column: 2)
!5238 = distinct !DILexicalBlock(scope: !5231, file: !5088, line: 409, column: 2)
!5239 = !DILocation(line: 409, column: 2, scope: !5235, inlinedAt: !5092)
!5240 = !DILocalVariable(name: "__dummy2", scope: !5235, file: !5088, line: 409, type: !181)
!5241 = !DILocation(line: 409, column: 2, scope: !5236, inlinedAt: !5092)
!5242 = !DILocation(line: 409, column: 2, scope: !5243, inlinedAt: !5092)
!5243 = distinct !DILexicalBlock(scope: !5238, file: !5088, line: 409, column: 2)
!5244 = !{i32 -2145457425}
!5245 = !DILocation(line: 409, column: 2, scope: !5246, inlinedAt: !5092)
!5246 = distinct !DILexicalBlock(scope: !5243, file: !5088, line: 409, column: 2)
!5247 = !DILocation(line: 617, column: 27, scope: !5085)
!5248 = !DILocation(line: 617, column: 54, scope: !5085)
!5249 = !DILocation(line: 365, column: 27, scope: !4696, inlinedAt: !5103)
!5250 = !DILocation(line: 365, column: 6, scope: !4696, inlinedAt: !5103)
!5251 = !DILocation(line: 365, column: 6, scope: !4337, inlinedAt: !5103)
!5252 = !DILocation(line: 366, column: 12, scope: !4700, inlinedAt: !5103)
!5253 = !DILocation(line: 366, column: 14, scope: !4700, inlinedAt: !5103)
!5254 = !DILocation(line: 366, column: 7, scope: !4701, inlinedAt: !5103)
!5255 = !DILocation(line: 367, column: 4, scope: !4700, inlinedAt: !5103)
!5256 = !DILocation(line: 368, column: 28, scope: !4701, inlinedAt: !5103)
!5257 = !DILocation(line: 368, column: 10, scope: !4701, inlinedAt: !5103)
!5258 = !DILocation(line: 368, column: 3, scope: !4701, inlinedAt: !5103)
!5259 = !DILocation(line: 370, column: 29, scope: !4709, inlinedAt: !5103)
!5260 = !DILocation(line: 370, column: 10, scope: !4709, inlinedAt: !5103)
!5261 = !DILocation(line: 370, column: 3, scope: !4709, inlinedAt: !5103)
!5262 = !DILocation(line: 372, column: 1, scope: !4337, inlinedAt: !5103)
!5263 = !DILocation(line: 617, column: 35, scope: !5085)
!5264 = !DILocation(line: 617, column: 2, scope: !5085)
!5265 = !DILocation(line: 617, column: 11, scope: !5085)
!5266 = !DILocation(line: 617, column: 17, scope: !5085)
!5267 = !DILocation(line: 617, column: 25, scope: !5085)
!5268 = !DILocation(line: 618, column: 13, scope: !5085)
!5269 = !DILocation(line: 618, column: 22, scope: !5085)
!5270 = !DILocation(line: 618, column: 2, scope: !5085)
!5271 = !DILocation(line: 619, column: 1, scope: !5085)
!5272 = distinct !DISubprogram(name: "get_u16", scope: !125, file: !125, line: 7, type: !5273, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !277)
!5273 = !DISubroutineType(types: !5274)
!5274 = !{!151, !5275}
!5275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5276, size: 64)
!5276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!5277 = !DILocalVariable(name: "p", arg: 1, scope: !5272, file: !125, line: 7, type: !5275)
!5278 = !DILocation(line: 7, column: 46, scope: !5272)
!5279 = !DILocation(line: 9, column: 20, scope: !5272)
!5280 = !DILocation(line: 9, column: 14, scope: !5272)
!5281 = !DILocation(line: 9, column: 9, scope: !5272)
!5282 = !DILocation(line: 9, column: 2, scope: !5272)
!5283 = distinct !DISubprogram(name: "jr3_pci_ai_read_chan", scope: !3, file: !3, line: 215, type: !5284, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !277)
!5284 = !DISubroutineType(types: !5285)
!5285 = !{!7, !191, !3830, !7}
!5286 = !DILocalVariable(name: "dev", arg: 1, scope: !5283, file: !3, line: 215, type: !191)
!5287 = !DILocation(line: 215, column: 64, scope: !5283)
!5288 = !DILocalVariable(name: "s", arg: 2, scope: !5283, file: !3, line: 216, type: !3830)
!5289 = !DILocation(line: 216, column: 32, scope: !5283)
!5290 = !DILocalVariable(name: "chan", arg: 3, scope: !5283, file: !3, line: 217, type: !7)
!5291 = !DILocation(line: 217, column: 20, scope: !5283)
!5292 = !DILocalVariable(name: "spriv", scope: !5283, file: !3, line: 219, type: !4359)
!5293 = !DILocation(line: 219, column: 33, scope: !5283)
!5294 = !DILocation(line: 219, column: 41, scope: !5283)
!5295 = !DILocation(line: 219, column: 44, scope: !5283)
!5296 = !DILocalVariable(name: "val", scope: !5283, file: !3, line: 220, type: !7)
!5297 = !DILocation(line: 220, column: 15, scope: !5283)
!5298 = !DILocation(line: 222, column: 6, scope: !5299)
!5299 = distinct !DILexicalBlock(scope: !5283, file: !3, line: 222, column: 6)
!5300 = !DILocation(line: 222, column: 13, scope: !5299)
!5301 = !DILocation(line: 222, column: 19, scope: !5299)
!5302 = !DILocation(line: 222, column: 6, scope: !5283)
!5303 = !DILocation(line: 223, column: 3, scope: !5299)
!5304 = !DILocation(line: 225, column: 6, scope: !5305)
!5305 = distinct !DILexicalBlock(scope: !5283, file: !3, line: 225, column: 6)
!5306 = !DILocation(line: 225, column: 11, scope: !5305)
!5307 = !DILocation(line: 225, column: 6, scope: !5283)
!5308 = !DILocalVariable(name: "axis", scope: !5309, file: !3, line: 226, type: !7)
!5309 = distinct !DILexicalBlock(scope: !5305, file: !3, line: 225, column: 17)
!5310 = !DILocation(line: 226, column: 16, scope: !5309)
!5311 = !DILocation(line: 226, column: 23, scope: !5309)
!5312 = !DILocation(line: 226, column: 28, scope: !5309)
!5313 = !DILocalVariable(name: "filter", scope: !5309, file: !3, line: 227, type: !7)
!5314 = !DILocation(line: 227, column: 16, scope: !5309)
!5315 = !DILocation(line: 227, column: 25, scope: !5309)
!5316 = !DILocation(line: 227, column: 30, scope: !5309)
!5317 = !DILocation(line: 229, column: 11, scope: !5309)
!5318 = !DILocation(line: 229, column: 3, scope: !5309)
!5319 = !DILocation(line: 231, column: 19, scope: !5320)
!5320 = distinct !DILexicalBlock(scope: !5309, file: !3, line: 229, column: 17)
!5321 = !DILocation(line: 231, column: 26, scope: !5320)
!5322 = !DILocation(line: 231, column: 34, scope: !5320)
!5323 = !DILocation(line: 231, column: 41, scope: !5320)
!5324 = !DILocation(line: 231, column: 49, scope: !5320)
!5325 = !DILocation(line: 231, column: 10, scope: !5320)
!5326 = !DILocation(line: 231, column: 8, scope: !5320)
!5327 = !DILocation(line: 232, column: 4, scope: !5320)
!5328 = !DILocation(line: 234, column: 19, scope: !5320)
!5329 = !DILocation(line: 234, column: 26, scope: !5320)
!5330 = !DILocation(line: 234, column: 34, scope: !5320)
!5331 = !DILocation(line: 234, column: 41, scope: !5320)
!5332 = !DILocation(line: 234, column: 49, scope: !5320)
!5333 = !DILocation(line: 234, column: 10, scope: !5320)
!5334 = !DILocation(line: 234, column: 8, scope: !5320)
!5335 = !DILocation(line: 235, column: 4, scope: !5320)
!5336 = !DILocation(line: 237, column: 19, scope: !5320)
!5337 = !DILocation(line: 237, column: 26, scope: !5320)
!5338 = !DILocation(line: 237, column: 34, scope: !5320)
!5339 = !DILocation(line: 237, column: 41, scope: !5320)
!5340 = !DILocation(line: 237, column: 49, scope: !5320)
!5341 = !DILocation(line: 237, column: 10, scope: !5320)
!5342 = !DILocation(line: 237, column: 8, scope: !5320)
!5343 = !DILocation(line: 238, column: 4, scope: !5320)
!5344 = !DILocation(line: 240, column: 19, scope: !5320)
!5345 = !DILocation(line: 240, column: 26, scope: !5320)
!5346 = !DILocation(line: 240, column: 34, scope: !5320)
!5347 = !DILocation(line: 240, column: 41, scope: !5320)
!5348 = !DILocation(line: 240, column: 49, scope: !5320)
!5349 = !DILocation(line: 240, column: 10, scope: !5320)
!5350 = !DILocation(line: 240, column: 8, scope: !5320)
!5351 = !DILocation(line: 241, column: 4, scope: !5320)
!5352 = !DILocation(line: 243, column: 19, scope: !5320)
!5353 = !DILocation(line: 243, column: 26, scope: !5320)
!5354 = !DILocation(line: 243, column: 34, scope: !5320)
!5355 = !DILocation(line: 243, column: 41, scope: !5320)
!5356 = !DILocation(line: 243, column: 49, scope: !5320)
!5357 = !DILocation(line: 243, column: 10, scope: !5320)
!5358 = !DILocation(line: 243, column: 8, scope: !5320)
!5359 = !DILocation(line: 244, column: 4, scope: !5320)
!5360 = !DILocation(line: 246, column: 19, scope: !5320)
!5361 = !DILocation(line: 246, column: 26, scope: !5320)
!5362 = !DILocation(line: 246, column: 34, scope: !5320)
!5363 = !DILocation(line: 246, column: 41, scope: !5320)
!5364 = !DILocation(line: 246, column: 49, scope: !5320)
!5365 = !DILocation(line: 246, column: 10, scope: !5320)
!5366 = !DILocation(line: 246, column: 8, scope: !5320)
!5367 = !DILocation(line: 247, column: 4, scope: !5320)
!5368 = !DILocation(line: 249, column: 19, scope: !5320)
!5369 = !DILocation(line: 249, column: 26, scope: !5320)
!5370 = !DILocation(line: 249, column: 34, scope: !5320)
!5371 = !DILocation(line: 249, column: 41, scope: !5320)
!5372 = !DILocation(line: 249, column: 49, scope: !5320)
!5373 = !DILocation(line: 249, column: 10, scope: !5320)
!5374 = !DILocation(line: 249, column: 8, scope: !5320)
!5375 = !DILocation(line: 250, column: 4, scope: !5320)
!5376 = !DILocation(line: 252, column: 19, scope: !5320)
!5377 = !DILocation(line: 252, column: 26, scope: !5320)
!5378 = !DILocation(line: 252, column: 34, scope: !5320)
!5379 = !DILocation(line: 252, column: 41, scope: !5320)
!5380 = !DILocation(line: 252, column: 49, scope: !5320)
!5381 = !DILocation(line: 252, column: 10, scope: !5320)
!5382 = !DILocation(line: 252, column: 8, scope: !5320)
!5383 = !DILocation(line: 253, column: 4, scope: !5320)
!5384 = !DILocation(line: 255, column: 7, scope: !5309)
!5385 = !DILocation(line: 256, column: 2, scope: !5309)
!5386 = !DILocation(line: 256, column: 13, scope: !5387)
!5387 = distinct !DILexicalBlock(scope: !5305, file: !3, line: 256, column: 13)
!5388 = !DILocation(line: 256, column: 18, scope: !5387)
!5389 = !DILocation(line: 256, column: 13, scope: !5305)
!5390 = !DILocation(line: 257, column: 18, scope: !5391)
!5391 = distinct !DILexicalBlock(scope: !5387, file: !3, line: 256, column: 25)
!5392 = !DILocation(line: 257, column: 25, scope: !5391)
!5393 = !DILocation(line: 257, column: 33, scope: !5391)
!5394 = !DILocation(line: 257, column: 9, scope: !5391)
!5395 = !DILocation(line: 257, column: 7, scope: !5391)
!5396 = !DILocation(line: 258, column: 2, scope: !5391)
!5397 = !DILocation(line: 258, column: 13, scope: !5398)
!5398 = distinct !DILexicalBlock(scope: !5387, file: !3, line: 258, column: 13)
!5399 = !DILocation(line: 258, column: 18, scope: !5398)
!5400 = !DILocation(line: 258, column: 13, scope: !5387)
!5401 = !DILocation(line: 259, column: 18, scope: !5402)
!5402 = distinct !DILexicalBlock(scope: !5398, file: !3, line: 258, column: 25)
!5403 = !DILocation(line: 259, column: 25, scope: !5402)
!5404 = !DILocation(line: 259, column: 33, scope: !5402)
!5405 = !DILocation(line: 259, column: 9, scope: !5402)
!5406 = !DILocation(line: 259, column: 7, scope: !5402)
!5407 = !DILocation(line: 260, column: 2, scope: !5402)
!5408 = !DILocation(line: 262, column: 9, scope: !5283)
!5409 = !DILocation(line: 262, column: 2, scope: !5283)
!5410 = !DILocation(line: 263, column: 1, scope: !5283)
!5411 = distinct !DISubprogram(name: "readl", scope: !4987, file: !4987, line: 59, type: !5412, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !277)
!5412 = !DISubroutineType(types: !5413)
!5413 = !{!7, !5414}
!5414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5415, size: 64)
!5415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4991)
!5416 = !DILocalVariable(name: "addr", arg: 1, scope: !5411, file: !4987, line: 59, type: !5414)
!5417 = !DILocation(line: 59, column: 1, scope: !5411)
!5418 = !DILocalVariable(name: "ret", scope: !5411, file: !4987, line: 59, type: !7)
!5419 = !{i32 -2143318207}
!5420 = distinct !DISubprogram(name: "get_s16", scope: !125, file: !125, line: 17, type: !5421, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !277)
!5421 = !DISubroutineType(types: !5422)
!5422 = !{!158, !5423}
!5423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5424, size: 64)
!5424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1456)
!5425 = !DILocalVariable(name: "p", arg: 1, scope: !5420, file: !125, line: 17, type: !5423)
!5426 = !DILocation(line: 17, column: 46, scope: !5420)
!5427 = !DILocation(line: 19, column: 20, scope: !5420)
!5428 = !DILocation(line: 19, column: 14, scope: !5420)
!5429 = !DILocation(line: 19, column: 9, scope: !5420)
!5430 = !DILocation(line: 19, column: 2, scope: !5420)
!5431 = distinct !DISubprogram(name: "jr3_check_firmware", scope: !3, file: !3, line: 332, type: !5432, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !277)
!5432 = !DISubroutineType(types: !5433)
!5433 = !{!150, !191, !4999, !349}
!5434 = !DILocalVariable(name: "dev", arg: 1, scope: !5431, file: !3, line: 332, type: !191)
!5435 = !DILocation(line: 332, column: 53, scope: !5431)
!5436 = !DILocalVariable(name: "data", arg: 2, scope: !5431, file: !3, line: 333, type: !4999)
!5437 = !DILocation(line: 333, column: 20, scope: !5431)
!5438 = !DILocalVariable(name: "size", arg: 3, scope: !5431, file: !3, line: 333, type: !349)
!5439 = !DILocation(line: 333, column: 33, scope: !5431)
!5440 = !DILocalVariable(name: "more", scope: !5431, file: !3, line: 335, type: !150)
!5441 = !DILocation(line: 335, column: 6, scope: !5431)
!5442 = !DILocalVariable(name: "pos", scope: !5431, file: !3, line: 336, type: !150)
!5443 = !DILocation(line: 336, column: 6, scope: !5431)
!5444 = !DILocation(line: 343, column: 2, scope: !5431)
!5445 = !DILocation(line: 343, column: 9, scope: !5431)
!5446 = !DILocalVariable(name: "count", scope: !5447, file: !3, line: 344, type: !7)
!5447 = distinct !DILexicalBlock(scope: !5431, file: !3, line: 343, column: 15)
!5448 = !DILocation(line: 344, column: 16, scope: !5447)
!5449 = !DILocalVariable(name: "addr", scope: !5447, file: !3, line: 345, type: !7)
!5450 = !DILocation(line: 345, column: 16, scope: !5447)
!5451 = !DILocation(line: 347, column: 10, scope: !5447)
!5452 = !DILocation(line: 347, column: 15, scope: !5447)
!5453 = !DILocation(line: 347, column: 32, scope: !5447)
!5454 = !DILocation(line: 347, column: 38, scope: !5447)
!5455 = !DILocation(line: 347, column: 18, scope: !5447)
!5456 = !DILocation(line: 0, scope: !5447)
!5457 = !DILocation(line: 347, column: 8, scope: !5447)
!5458 = !DILocation(line: 348, column: 7, scope: !5459)
!5459 = distinct !DILexicalBlock(scope: !5447, file: !3, line: 348, column: 7)
!5460 = !DILocation(line: 348, column: 12, scope: !5459)
!5461 = !DILocation(line: 348, column: 15, scope: !5459)
!5462 = !DILocation(line: 348, column: 21, scope: !5459)
!5463 = !DILocation(line: 348, column: 7, scope: !5447)
!5464 = !DILocation(line: 349, column: 4, scope: !5459)
!5465 = !DILocation(line: 351, column: 10, scope: !5447)
!5466 = !DILocation(line: 351, column: 15, scope: !5447)
!5467 = !DILocation(line: 351, column: 32, scope: !5447)
!5468 = !DILocation(line: 351, column: 38, scope: !5447)
!5469 = !DILocation(line: 351, column: 18, scope: !5447)
!5470 = !DILocation(line: 351, column: 8, scope: !5447)
!5471 = !DILocation(line: 352, column: 3, scope: !5447)
!5472 = !DILocation(line: 352, column: 10, scope: !5447)
!5473 = !DILocation(line: 352, column: 15, scope: !5447)
!5474 = !DILocation(line: 352, column: 18, scope: !5447)
!5475 = !DILocation(line: 352, column: 24, scope: !5447)
!5476 = !DILocalVariable(name: "dummy", scope: !5477, file: !3, line: 353, type: !7)
!5477 = distinct !DILexicalBlock(scope: !5447, file: !3, line: 352, column: 29)
!5478 = !DILocation(line: 353, column: 17, scope: !5477)
!5479 = !DILocation(line: 355, column: 11, scope: !5477)
!5480 = !DILocation(line: 355, column: 16, scope: !5477)
!5481 = !DILocation(line: 355, column: 33, scope: !5477)
!5482 = !DILocation(line: 355, column: 39, scope: !5477)
!5483 = !DILocation(line: 355, column: 19, scope: !5477)
!5484 = !DILocation(line: 0, scope: !5477)
!5485 = !DILocation(line: 355, column: 9, scope: !5477)
!5486 = !DILocation(line: 356, column: 9, scope: !5477)
!5487 = distinct !{!5487, !5471, !5488}
!5488 = !DILocation(line: 357, column: 3, scope: !5447)
!5489 = distinct !{!5489, !5444, !5490}
!5490 = !DILocation(line: 358, column: 2, scope: !5431)
!5491 = !DILocation(line: 360, column: 2, scope: !5431)
!5492 = !DILocation(line: 361, column: 1, scope: !5431)
!5493 = distinct !DISubprogram(name: "jr3_write_firmware", scope: !3, file: !3, line: 363, type: !5494, scopeLine: 365, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !277)
!5494 = !DISubroutineType(types: !5495)
!5495 = !{null, !191, !150, !4999, !349}
!5496 = !DILocalVariable(name: "dev", arg: 1, scope: !5493, file: !3, line: 363, type: !191)
!5497 = !DILocation(line: 363, column: 54, scope: !5493)
!5498 = !DILocalVariable(name: "subdev", arg: 2, scope: !5493, file: !3, line: 364, type: !150)
!5499 = !DILocation(line: 364, column: 15, scope: !5493)
!5500 = !DILocalVariable(name: "data", arg: 3, scope: !5493, file: !3, line: 364, type: !4999)
!5501 = !DILocation(line: 364, column: 33, scope: !5493)
!5502 = !DILocalVariable(name: "size", arg: 4, scope: !5493, file: !3, line: 364, type: !349)
!5503 = !DILocation(line: 364, column: 46, scope: !5493)
!5504 = !DILocalVariable(name: "block", scope: !5493, file: !3, line: 366, type: !4497)
!5505 = !DILocation(line: 366, column: 28, scope: !5493)
!5506 = !DILocation(line: 366, column: 36, scope: !5493)
!5507 = !DILocation(line: 366, column: 41, scope: !5493)
!5508 = !DILocalVariable(name: "lo", scope: !5493, file: !3, line: 367, type: !1427)
!5509 = !DILocation(line: 367, column: 15, scope: !5493)
!5510 = !DILocalVariable(name: "hi", scope: !5493, file: !3, line: 368, type: !1427)
!5511 = !DILocation(line: 368, column: 15, scope: !5493)
!5512 = !DILocalVariable(name: "more", scope: !5493, file: !3, line: 369, type: !150)
!5513 = !DILocation(line: 369, column: 6, scope: !5493)
!5514 = !DILocalVariable(name: "pos", scope: !5493, file: !3, line: 370, type: !150)
!5515 = !DILocation(line: 370, column: 6, scope: !5493)
!5516 = !DILocation(line: 372, column: 2, scope: !5493)
!5517 = !DILocation(line: 372, column: 9, scope: !5493)
!5518 = !DILocalVariable(name: "count", scope: !5519, file: !3, line: 373, type: !7)
!5519 = distinct !DILexicalBlock(scope: !5493, file: !3, line: 372, column: 15)
!5520 = !DILocation(line: 373, column: 16, scope: !5519)
!5521 = !DILocalVariable(name: "addr", scope: !5519, file: !3, line: 374, type: !7)
!5522 = !DILocation(line: 374, column: 16, scope: !5519)
!5523 = !DILocation(line: 376, column: 10, scope: !5519)
!5524 = !DILocation(line: 376, column: 15, scope: !5519)
!5525 = !DILocation(line: 376, column: 32, scope: !5519)
!5526 = !DILocation(line: 376, column: 38, scope: !5519)
!5527 = !DILocation(line: 376, column: 18, scope: !5519)
!5528 = !DILocation(line: 0, scope: !5519)
!5529 = !DILocation(line: 376, column: 8, scope: !5519)
!5530 = !DILocation(line: 377, column: 7, scope: !5531)
!5531 = distinct !DILexicalBlock(scope: !5519, file: !3, line: 377, column: 7)
!5532 = !DILocation(line: 377, column: 12, scope: !5531)
!5533 = !DILocation(line: 377, column: 15, scope: !5531)
!5534 = !DILocation(line: 377, column: 21, scope: !5531)
!5535 = !DILocation(line: 377, column: 7, scope: !5519)
!5536 = !DILocation(line: 378, column: 4, scope: !5531)
!5537 = !DILocation(line: 380, column: 10, scope: !5519)
!5538 = !DILocation(line: 380, column: 15, scope: !5519)
!5539 = !DILocation(line: 380, column: 32, scope: !5519)
!5540 = !DILocation(line: 380, column: 38, scope: !5519)
!5541 = !DILocation(line: 380, column: 18, scope: !5519)
!5542 = !DILocation(line: 380, column: 8, scope: !5519)
!5543 = !DILocation(line: 385, column: 3, scope: !5519)
!5544 = !DILocation(line: 385, column: 10, scope: !5519)
!5545 = !DILocation(line: 385, column: 15, scope: !5519)
!5546 = !DILocation(line: 385, column: 18, scope: !5519)
!5547 = !DILocation(line: 385, column: 24, scope: !5519)
!5548 = !DILocation(line: 386, column: 8, scope: !5549)
!5549 = distinct !DILexicalBlock(scope: !5550, file: !3, line: 386, column: 8)
!5550 = distinct !DILexicalBlock(scope: !5519, file: !3, line: 385, column: 29)
!5551 = !DILocation(line: 386, column: 13, scope: !5549)
!5552 = !DILocation(line: 386, column: 8, scope: !5550)
!5553 = !DILocalVariable(name: "data1", scope: !5554, file: !3, line: 388, type: !7)
!5554 = distinct !DILexicalBlock(scope: !5549, file: !3, line: 386, column: 23)
!5555 = !DILocation(line: 388, column: 18, scope: !5554)
!5556 = !DILocation(line: 390, column: 12, scope: !5554)
!5557 = !DILocation(line: 390, column: 17, scope: !5554)
!5558 = !DILocation(line: 391, column: 26, scope: !5554)
!5559 = !DILocation(line: 391, column: 32, scope: !5554)
!5560 = !DILocation(line: 391, column: 12, scope: !5554)
!5561 = !DILocation(line: 0, scope: !5554)
!5562 = !DILocation(line: 390, column: 10, scope: !5554)
!5563 = !DILocation(line: 392, column: 10, scope: !5554)
!5564 = !DILocation(line: 394, column: 4, scope: !5554)
!5565 = !DILocalVariable(name: "data1", scope: !5566, file: !3, line: 396, type: !7)
!5566 = distinct !DILexicalBlock(scope: !5549, file: !3, line: 394, column: 11)
!5567 = !DILocation(line: 396, column: 18, scope: !5566)
!5568 = !DILocalVariable(name: "data2", scope: !5566, file: !3, line: 397, type: !7)
!5569 = !DILocation(line: 397, column: 18, scope: !5566)
!5570 = !DILocation(line: 399, column: 11, scope: !5566)
!5571 = !DILocation(line: 399, column: 17, scope: !5566)
!5572 = !DILocation(line: 399, column: 25, scope: !5566)
!5573 = !DILocation(line: 399, column: 36, scope: !5566)
!5574 = !DILocation(line: 399, column: 8, scope: !5566)
!5575 = !DILocation(line: 400, column: 11, scope: !5566)
!5576 = !DILocation(line: 400, column: 17, scope: !5566)
!5577 = !DILocation(line: 400, column: 25, scope: !5566)
!5578 = !DILocation(line: 400, column: 36, scope: !5566)
!5579 = !DILocation(line: 400, column: 8, scope: !5566)
!5580 = !DILocation(line: 402, column: 12, scope: !5566)
!5581 = !DILocation(line: 402, column: 17, scope: !5566)
!5582 = !DILocation(line: 403, column: 26, scope: !5566)
!5583 = !DILocation(line: 403, column: 32, scope: !5566)
!5584 = !DILocation(line: 403, column: 12, scope: !5566)
!5585 = !DILocation(line: 0, scope: !5566)
!5586 = !DILocation(line: 402, column: 10, scope: !5566)
!5587 = !DILocation(line: 404, column: 12, scope: !5566)
!5588 = !DILocation(line: 404, column: 17, scope: !5566)
!5589 = !DILocation(line: 405, column: 26, scope: !5566)
!5590 = !DILocation(line: 405, column: 32, scope: !5566)
!5591 = !DILocation(line: 405, column: 12, scope: !5566)
!5592 = !DILocation(line: 404, column: 10, scope: !5566)
!5593 = !DILocation(line: 406, column: 11, scope: !5566)
!5594 = !DILocation(line: 407, column: 9, scope: !5595)
!5595 = distinct !DILexicalBlock(scope: !5566, file: !3, line: 407, column: 9)
!5596 = !DILocation(line: 407, column: 9, scope: !5566)
!5597 = !DILocation(line: 408, column: 14, scope: !5598)
!5598 = distinct !DILexicalBlock(scope: !5595, file: !3, line: 407, column: 15)
!5599 = !DILocation(line: 408, column: 18, scope: !5598)
!5600 = !DILocation(line: 408, column: 6, scope: !5598)
!5601 = !DILocation(line: 409, column: 6, scope: !5602)
!5602 = distinct !DILexicalBlock(scope: !5603, file: !3, line: 409, column: 6)
!5603 = distinct !DILexicalBlock(scope: !5604, file: !3, line: 409, column: 6)
!5604 = distinct !DILexicalBlock(scope: !5605, file: !3, line: 409, column: 6)
!5605 = distinct !DILexicalBlock(scope: !5598, file: !3, line: 409, column: 6)
!5606 = !DILocation(line: 410, column: 14, scope: !5598)
!5607 = !DILocation(line: 410, column: 18, scope: !5598)
!5608 = !DILocation(line: 410, column: 6, scope: !5598)
!5609 = !DILocation(line: 411, column: 6, scope: !5610)
!5610 = distinct !DILexicalBlock(scope: !5611, file: !3, line: 411, column: 6)
!5611 = distinct !DILexicalBlock(scope: !5612, file: !3, line: 411, column: 6)
!5612 = distinct !DILexicalBlock(scope: !5613, file: !3, line: 411, column: 6)
!5613 = distinct !DILexicalBlock(scope: !5598, file: !3, line: 411, column: 6)
!5614 = !DILocation(line: 412, column: 5, scope: !5598)
!5615 = !DILocation(line: 414, column: 8, scope: !5550)
!5616 = distinct !{!5616, !5543, !5617}
!5617 = !DILocation(line: 415, column: 3, scope: !5519)
!5618 = distinct !{!5618, !5516, !5619}
!5619 = !DILocation(line: 416, column: 2, scope: !5493)
!5620 = !DILocation(line: 417, column: 1, scope: !5493)
!5621 = distinct !DISubprogram(name: "read_idm_word", scope: !3, file: !3, line: 307, type: !5622, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !277)
!5622 = !DISubroutineType(types: !5623)
!5623 = !{!150, !4999, !349, !721, !2693}
!5624 = !DILocalVariable(name: "data", arg: 1, scope: !5621, file: !3, line: 307, type: !4999)
!5625 = !DILocation(line: 307, column: 36, scope: !5621)
!5626 = !DILocalVariable(name: "size", arg: 2, scope: !5621, file: !3, line: 307, type: !349)
!5627 = !DILocation(line: 307, column: 49, scope: !5621)
!5628 = !DILocalVariable(name: "pos", arg: 3, scope: !5621, file: !3, line: 307, type: !721)
!5629 = !DILocation(line: 307, column: 60, scope: !5621)
!5630 = !DILocalVariable(name: "val", arg: 4, scope: !5621, file: !3, line: 308, type: !2693)
!5631 = !DILocation(line: 308, column: 19, scope: !5621)
!5632 = !DILocalVariable(name: "result", scope: !5621, file: !3, line: 310, type: !150)
!5633 = !DILocation(line: 310, column: 6, scope: !5621)
!5634 = !DILocalVariable(name: "value", scope: !5621, file: !3, line: 311, type: !150)
!5635 = !DILocation(line: 311, column: 6, scope: !5621)
!5636 = !DILocation(line: 313, column: 6, scope: !5637)
!5637 = distinct !DILexicalBlock(scope: !5621, file: !3, line: 313, column: 6)
!5638 = !DILocation(line: 313, column: 10, scope: !5637)
!5639 = !DILocation(line: 313, column: 13, scope: !5637)
!5640 = !DILocation(line: 313, column: 6, scope: !5621)
!5641 = !DILocation(line: 315, column: 3, scope: !5642)
!5642 = distinct !DILexicalBlock(scope: !5637, file: !3, line: 313, column: 18)
!5643 = !DILocation(line: 315, column: 11, scope: !5644)
!5644 = distinct !DILexicalBlock(scope: !5645, file: !3, line: 315, column: 3)
!5645 = distinct !DILexicalBlock(scope: !5642, file: !3, line: 315, column: 3)
!5646 = !DILocation(line: 315, column: 10, scope: !5644)
!5647 = !DILocation(line: 315, column: 17, scope: !5644)
!5648 = !DILocation(line: 315, column: 15, scope: !5644)
!5649 = !DILocation(line: 315, column: 22, scope: !5644)
!5650 = !DILocation(line: 315, column: 26, scope: !5644)
!5651 = !DILocation(line: 315, column: 25, scope: !5644)
!5652 = !DILocation(line: 0, scope: !5644)
!5653 = !DILocation(line: 315, column: 3, scope: !5645)
!5654 = !DILocation(line: 315, column: 50, scope: !5644)
!5655 = !DILocation(line: 315, column: 54, scope: !5644)
!5656 = !DILocation(line: 315, column: 3, scope: !5644)
!5657 = distinct !{!5657, !5653, !5658}
!5658 = !DILocation(line: 316, column: 4, scope: !5645)
!5659 = !DILocation(line: 318, column: 4, scope: !5642)
!5660 = !DILocation(line: 318, column: 8, scope: !5642)
!5661 = !DILocation(line: 319, column: 3, scope: !5642)
!5662 = !DILocation(line: 319, column: 11, scope: !5663)
!5663 = distinct !DILexicalBlock(scope: !5664, file: !3, line: 319, column: 3)
!5664 = distinct !DILexicalBlock(scope: !5642, file: !3, line: 319, column: 3)
!5665 = !DILocation(line: 319, column: 10, scope: !5663)
!5666 = !DILocation(line: 319, column: 17, scope: !5663)
!5667 = !DILocation(line: 319, column: 15, scope: !5663)
!5668 = !DILocation(line: 319, column: 3, scope: !5664)
!5669 = !DILocation(line: 320, column: 23, scope: !5670)
!5670 = distinct !DILexicalBlock(scope: !5663, file: !3, line: 319, column: 33)
!5671 = !DILocation(line: 320, column: 29, scope: !5670)
!5672 = !DILocation(line: 320, column: 28, scope: !5670)
!5673 = !DILocation(line: 320, column: 12, scope: !5670)
!5674 = !DILocation(line: 320, column: 10, scope: !5670)
!5675 = !DILocation(line: 321, column: 8, scope: !5676)
!5676 = distinct !DILexicalBlock(scope: !5670, file: !3, line: 321, column: 8)
!5677 = !DILocation(line: 321, column: 14, scope: !5676)
!5678 = !DILocation(line: 321, column: 8, scope: !5670)
!5679 = !DILocation(line: 322, column: 12, scope: !5680)
!5680 = distinct !DILexicalBlock(scope: !5676, file: !3, line: 321, column: 20)
!5681 = !DILocation(line: 323, column: 14, scope: !5680)
!5682 = !DILocation(line: 323, column: 13, scope: !5680)
!5683 = !DILocation(line: 323, column: 18, scope: !5680)
!5684 = !DILocation(line: 323, column: 26, scope: !5680)
!5685 = !DILocation(line: 323, column: 24, scope: !5680)
!5686 = !DILocation(line: 323, column: 6, scope: !5680)
!5687 = !DILocation(line: 323, column: 10, scope: !5680)
!5688 = !DILocation(line: 324, column: 4, scope: !5680)
!5689 = !DILocation(line: 325, column: 5, scope: !5690)
!5690 = distinct !DILexicalBlock(scope: !5676, file: !3, line: 324, column: 11)
!5691 = !DILocation(line: 327, column: 3, scope: !5670)
!5692 = !DILocation(line: 319, column: 25, scope: !5663)
!5693 = !DILocation(line: 319, column: 29, scope: !5663)
!5694 = !DILocation(line: 319, column: 3, scope: !5663)
!5695 = distinct !{!5695, !5668, !5696}
!5696 = !DILocation(line: 327, column: 3, scope: !5664)
!5697 = !DILocation(line: 328, column: 2, scope: !5642)
!5698 = !DILocation(line: 329, column: 9, scope: !5621)
!5699 = !DILocation(line: 329, column: 2, scope: !5621)
!5700 = distinct !DISubprogram(name: "set_u16", scope: !125, file: !125, line: 12, type: !5701, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !277)
!5701 = !DISubroutineType(types: !5702)
!5702 = !{null, !1427, !151}
!5703 = !DILocalVariable(name: "p", arg: 1, scope: !5700, file: !125, line: 12, type: !1427)
!5704 = !DILocation(line: 12, column: 41, scope: !5700)
!5705 = !DILocalVariable(name: "val", arg: 2, scope: !5700, file: !125, line: 12, type: !151)
!5706 = !DILocation(line: 12, column: 48, scope: !5700)
!5707 = !DILocation(line: 14, column: 9, scope: !5700)
!5708 = !DILocation(line: 14, column: 14, scope: !5700)
!5709 = !DILocation(line: 14, column: 2, scope: !5700)
!5710 = !DILocation(line: 15, column: 1, scope: !5700)
!5711 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !4338, file: !4338, line: 308, type: !4339, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !277)
!5712 = !DILocalVariable(name: "m", arg: 1, scope: !5711, file: !4338, line: 308, type: !2837)
!5713 = !DILocation(line: 308, column: 66, scope: !5711)
!5714 = !DILocation(line: 310, column: 10, scope: !5711)
!5715 = !DILocation(line: 310, column: 12, scope: !5711)
!5716 = !DILocation(line: 310, column: 34, scope: !5711)
!5717 = !DILocation(line: 310, column: 39, scope: !5711)
!5718 = !DILocation(line: 310, column: 2, scope: !5711)
!5719 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !5720, file: !5720, line: 666, type: !5721, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !277)
!5720 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!5721 = !DISubroutineType(types: !5722)
!5722 = !{!181}
!5723 = !DILocalVariable(name: "f", scope: !5719, file: !5720, line: 668, type: !181)
!5724 = !DILocation(line: 668, column: 16, scope: !5719)
!5725 = !DILocation(line: 670, column: 6, scope: !5719)
!5726 = !DILocation(line: 670, column: 4, scope: !5719)
!5727 = !DILocation(line: 671, column: 2, scope: !5719)
!5728 = !DILocation(line: 672, column: 9, scope: !5719)
!5729 = !DILocation(line: 672, column: 2, scope: !5719)
!5730 = distinct !DISubprogram(name: "jr3_pci_poll_subdevice", scope: !3, file: !3, line: 439, type: !5731, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !277)
!5731 = !DISubroutineType(types: !5732)
!5732 = !{!5182, !3830}
!5733 = !DILocalVariable(name: "s", arg: 1, scope: !5730, file: !3, line: 439, type: !3830)
!5734 = !DILocation(line: 439, column: 49, scope: !5730)
!5735 = !DILocalVariable(name: "spriv", scope: !5730, file: !3, line: 441, type: !4359)
!5736 = !DILocation(line: 441, column: 33, scope: !5730)
!5737 = !DILocation(line: 441, column: 41, scope: !5730)
!5738 = !DILocation(line: 441, column: 44, scope: !5730)
!5739 = !DILocalVariable(name: "result", scope: !5730, file: !3, line: 442, type: !5182)
!5740 = !DILocation(line: 442, column: 28, scope: !5730)
!5741 = !DILocation(line: 442, column: 37, scope: !5730)
!5742 = !DILocalVariable(name: "sensor", scope: !5730, file: !3, line: 443, type: !4363)
!5743 = !DILocation(line: 443, column: 29, scope: !5730)
!5744 = !DILocalVariable(name: "model_no", scope: !5730, file: !3, line: 444, type: !151)
!5745 = !DILocation(line: 444, column: 6, scope: !5730)
!5746 = !DILocalVariable(name: "serial_no", scope: !5730, file: !3, line: 445, type: !151)
!5747 = !DILocation(line: 445, column: 6, scope: !5730)
!5748 = !DILocalVariable(name: "errors", scope: !5730, file: !3, line: 446, type: !150)
!5749 = !DILocation(line: 446, column: 6, scope: !5730)
!5750 = !DILocalVariable(name: "i", scope: !5730, file: !3, line: 447, type: !150)
!5751 = !DILocation(line: 447, column: 6, scope: !5730)
!5752 = !DILocation(line: 449, column: 11, scope: !5730)
!5753 = !DILocation(line: 449, column: 18, scope: !5730)
!5754 = !DILocation(line: 449, column: 9, scope: !5730)
!5755 = !DILocation(line: 450, column: 20, scope: !5730)
!5756 = !DILocation(line: 450, column: 28, scope: !5730)
!5757 = !DILocation(line: 450, column: 11, scope: !5730)
!5758 = !DILocation(line: 450, column: 9, scope: !5730)
!5759 = !DILocation(line: 452, column: 6, scope: !5760)
!5760 = distinct !DILexicalBlock(scope: !5730, file: !3, line: 452, column: 6)
!5761 = !DILocation(line: 452, column: 16, scope: !5760)
!5762 = !DILocation(line: 452, column: 23, scope: !5760)
!5763 = !DILocation(line: 452, column: 13, scope: !5760)
!5764 = !DILocation(line: 452, column: 6, scope: !5730)
!5765 = !DILocation(line: 453, column: 19, scope: !5760)
!5766 = !DILocation(line: 453, column: 3, scope: !5760)
!5767 = !DILocation(line: 453, column: 10, scope: !5760)
!5768 = !DILocation(line: 453, column: 17, scope: !5760)
!5769 = !DILocation(line: 456, column: 6, scope: !5770)
!5770 = distinct !DILexicalBlock(scope: !5730, file: !3, line: 456, column: 6)
!5771 = !DILocation(line: 456, column: 13, scope: !5770)
!5772 = !DILocation(line: 456, column: 6, scope: !5730)
!5773 = !DILocation(line: 457, column: 3, scope: !5770)
!5774 = !DILocation(line: 457, column: 10, scope: !5770)
!5775 = !DILocation(line: 457, column: 16, scope: !5770)
!5776 = !DILocation(line: 459, column: 10, scope: !5730)
!5777 = !DILocation(line: 459, column: 17, scope: !5730)
!5778 = !DILocation(line: 459, column: 2, scope: !5730)
!5779 = !DILocation(line: 461, column: 23, scope: !5780)
!5780 = distinct !DILexicalBlock(scope: !5730, file: !3, line: 459, column: 24)
!5781 = !DILocation(line: 461, column: 31, scope: !5780)
!5782 = !DILocation(line: 461, column: 14, scope: !5780)
!5783 = !DILocation(line: 461, column: 12, scope: !5780)
!5784 = !DILocation(line: 462, column: 24, scope: !5780)
!5785 = !DILocation(line: 462, column: 32, scope: !5780)
!5786 = !DILocation(line: 462, column: 15, scope: !5780)
!5787 = !DILocation(line: 462, column: 13, scope: !5780)
!5788 = !DILocation(line: 464, column: 8, scope: !5789)
!5789 = distinct !DILexicalBlock(scope: !5780, file: !3, line: 464, column: 7)
!5790 = !DILocation(line: 464, column: 15, scope: !5789)
!5791 = !DILocation(line: 464, column: 43, scope: !5789)
!5792 = !DILocation(line: 465, column: 7, scope: !5789)
!5793 = !DILocation(line: 465, column: 16, scope: !5789)
!5794 = !DILocation(line: 465, column: 21, scope: !5789)
!5795 = !DILocation(line: 465, column: 24, scope: !5789)
!5796 = !DILocation(line: 465, column: 34, scope: !5789)
!5797 = !DILocation(line: 464, column: 7, scope: !5780)
!5798 = !DILocation(line: 471, column: 3, scope: !5799)
!5799 = distinct !DILexicalBlock(scope: !5789, file: !3, line: 465, column: 40)
!5800 = !DILocation(line: 472, column: 4, scope: !5801)
!5801 = distinct !DILexicalBlock(scope: !5789, file: !3, line: 471, column: 10)
!5802 = !DILocation(line: 472, column: 11, scope: !5801)
!5803 = !DILocation(line: 472, column: 19, scope: !5801)
!5804 = !DILocation(line: 473, column: 4, scope: !5801)
!5805 = !DILocation(line: 473, column: 11, scope: !5801)
!5806 = !DILocation(line: 473, column: 17, scope: !5801)
!5807 = !DILocation(line: 475, column: 3, scope: !5780)
!5808 = !DILocation(line: 477, column: 3, scope: !5780)
!5809 = !DILocation(line: 477, column: 10, scope: !5780)
!5810 = !DILocation(line: 477, column: 17, scope: !5780)
!5811 = !DILocation(line: 478, column: 7, scope: !5812)
!5812 = distinct !DILexicalBlock(scope: !5780, file: !3, line: 478, column: 7)
!5813 = !DILocation(line: 478, column: 14, scope: !5812)
!5814 = !DILocation(line: 478, column: 22, scope: !5812)
!5815 = !DILocation(line: 478, column: 7, scope: !5780)
!5816 = !DILocation(line: 483, column: 3, scope: !5817)
!5817 = distinct !DILexicalBlock(scope: !5812, file: !3, line: 478, column: 28)
!5818 = !DILocalVariable(name: "transf", scope: !5819, file: !3, line: 484, type: !5820)
!5819 = distinct !DILexicalBlock(scope: !5812, file: !3, line: 483, column: 10)
!5820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jr3_pci_transform", file: !3, line: 76, size: 256, elements: !5821)
!5821 = !{!5822}
!5822 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !5820, file: !3, line: 80, baseType: !5823, size: 256)
!5823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5824, size: 256, elements: !1342)
!5824 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5820, file: !3, line: 77, size: 32, elements: !5825)
!5825 = !{!5826, !5827}
!5826 = !DIDerivedType(tag: DW_TAG_member, name: "link_type", scope: !5824, file: !3, line: 78, baseType: !151, size: 16)
!5827 = !DIDerivedType(tag: DW_TAG_member, name: "link_amount", scope: !5824, file: !3, line: 79, baseType: !158, size: 16, offset: 16)
!5828 = !DILocation(line: 484, column: 29, scope: !5819)
!5829 = !DILocation(line: 486, column: 31, scope: !5819)
!5830 = !DILocation(line: 486, column: 39, scope: !5819)
!5831 = !DILocation(line: 486, column: 22, scope: !5819)
!5832 = !DILocation(line: 486, column: 4, scope: !5819)
!5833 = !DILocation(line: 486, column: 11, scope: !5819)
!5834 = !DILocation(line: 486, column: 20, scope: !5819)
!5835 = !DILocation(line: 487, column: 32, scope: !5819)
!5836 = !DILocation(line: 487, column: 40, scope: !5819)
!5837 = !DILocation(line: 487, column: 23, scope: !5819)
!5838 = !DILocation(line: 487, column: 4, scope: !5819)
!5839 = !DILocation(line: 487, column: 11, scope: !5819)
!5840 = !DILocation(line: 487, column: 21, scope: !5819)
!5841 = !DILocation(line: 490, column: 11, scope: !5842)
!5842 = distinct !DILexicalBlock(scope: !5819, file: !3, line: 490, column: 4)
!5843 = !DILocation(line: 490, column: 9, scope: !5842)
!5844 = !DILocation(line: 490, column: 16, scope: !5845)
!5845 = distinct !DILexicalBlock(scope: !5842, file: !3, line: 490, column: 4)
!5846 = !DILocation(line: 490, column: 18, scope: !5845)
!5847 = !DILocation(line: 490, column: 4, scope: !5842)
!5848 = !DILocation(line: 491, column: 12, scope: !5849)
!5849 = distinct !DILexicalBlock(scope: !5845, file: !3, line: 490, column: 50)
!5850 = !DILocation(line: 491, column: 17, scope: !5849)
!5851 = !DILocation(line: 491, column: 5, scope: !5849)
!5852 = !DILocation(line: 491, column: 20, scope: !5849)
!5853 = !DILocation(line: 491, column: 30, scope: !5849)
!5854 = !DILocation(line: 492, column: 12, scope: !5849)
!5855 = !DILocation(line: 492, column: 17, scope: !5849)
!5856 = !DILocation(line: 492, column: 5, scope: !5849)
!5857 = !DILocation(line: 492, column: 20, scope: !5849)
!5858 = !DILocation(line: 492, column: 32, scope: !5849)
!5859 = !DILocation(line: 493, column: 4, scope: !5849)
!5860 = !DILocation(line: 490, column: 46, scope: !5845)
!5861 = !DILocation(line: 490, column: 4, scope: !5845)
!5862 = distinct !{!5862, !5847, !5863}
!5863 = !DILocation(line: 493, column: 4, scope: !5842)
!5864 = !DILocation(line: 495, column: 19, scope: !5819)
!5865 = !DILocation(line: 495, column: 4, scope: !5819)
!5866 = !DILocation(line: 496, column: 18, scope: !5819)
!5867 = !DILocation(line: 496, column: 4, scope: !5819)
!5868 = !DILocation(line: 497, column: 4, scope: !5819)
!5869 = !DILocation(line: 497, column: 11, scope: !5819)
!5870 = !DILocation(line: 497, column: 17, scope: !5819)
!5871 = !DILocation(line: 499, column: 13, scope: !5819)
!5872 = !DILocation(line: 501, column: 3, scope: !5780)
!5873 = !DILocation(line: 503, column: 20, scope: !5874)
!5874 = distinct !DILexicalBlock(scope: !5780, file: !3, line: 503, column: 7)
!5875 = !DILocation(line: 503, column: 8, scope: !5874)
!5876 = !DILocation(line: 503, column: 7, scope: !5780)
!5877 = !DILocation(line: 504, column: 13, scope: !5878)
!5878 = distinct !DILexicalBlock(scope: !5874, file: !3, line: 503, column: 29)
!5879 = !DILocation(line: 505, column: 3, scope: !5878)
!5880 = !DILocalVariable(name: "min_full_scale", scope: !5881, file: !3, line: 507, type: !5882)
!5881 = distinct !DILexicalBlock(scope: !5874, file: !3, line: 505, column: 10)
!5882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "six_axis_t", file: !3, line: 168, size: 96, elements: !5883)
!5883 = !{!5884, !5885, !5886, !5887, !5888, !5889}
!5884 = !DIDerivedType(tag: DW_TAG_member, name: "fx", scope: !5882, file: !3, line: 169, baseType: !158, size: 16)
!5885 = !DIDerivedType(tag: DW_TAG_member, name: "fy", scope: !5882, file: !3, line: 170, baseType: !158, size: 16, offset: 16)
!5886 = !DIDerivedType(tag: DW_TAG_member, name: "fz", scope: !5882, file: !3, line: 171, baseType: !158, size: 16, offset: 32)
!5887 = !DIDerivedType(tag: DW_TAG_member, name: "mx", scope: !5882, file: !3, line: 172, baseType: !158, size: 16, offset: 48)
!5888 = !DIDerivedType(tag: DW_TAG_member, name: "my", scope: !5882, file: !3, line: 173, baseType: !158, size: 16, offset: 64)
!5889 = !DIDerivedType(tag: DW_TAG_member, name: "mz", scope: !5882, file: !3, line: 174, baseType: !158, size: 16, offset: 80)
!5890 = !DILocation(line: 507, column: 22, scope: !5881)
!5891 = !DILocalVariable(name: "max_full_scale", scope: !5881, file: !3, line: 508, type: !5882)
!5892 = !DILocation(line: 508, column: 22, scope: !5881)
!5893 = !DILocation(line: 510, column: 41, scope: !5881)
!5894 = !DILocation(line: 510, column: 21, scope: !5881)
!5895 = !DILocation(line: 511, column: 41, scope: !5881)
!5896 = !DILocation(line: 511, column: 21, scope: !5881)
!5897 = !DILocation(line: 512, column: 20, scope: !5881)
!5898 = !DILocation(line: 512, column: 4, scope: !5881)
!5899 = !DILocation(line: 514, column: 4, scope: !5881)
!5900 = !DILocation(line: 514, column: 11, scope: !5881)
!5901 = !DILocation(line: 514, column: 17, scope: !5881)
!5902 = !DILocation(line: 516, column: 13, scope: !5881)
!5903 = !DILocation(line: 518, column: 3, scope: !5780)
!5904 = !DILocation(line: 520, column: 20, scope: !5905)
!5905 = distinct !DILexicalBlock(scope: !5780, file: !3, line: 520, column: 7)
!5906 = !DILocation(line: 520, column: 8, scope: !5905)
!5907 = !DILocation(line: 520, column: 7, scope: !5780)
!5908 = !DILocation(line: 521, column: 13, scope: !5909)
!5909 = distinct !DILexicalBlock(scope: !5905, file: !3, line: 520, column: 29)
!5910 = !DILocation(line: 522, column: 3, scope: !5909)
!5911 = !DILocalVariable(name: "fs", scope: !5912, file: !3, line: 523, type: !5913)
!5912 = distinct !DILexicalBlock(scope: !5905, file: !3, line: 522, column: 10)
!5913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4400, size: 64)
!5914 = !DILocation(line: 523, column: 32, scope: !5912)
!5915 = !DILocation(line: 523, column: 38, scope: !5912)
!5916 = !DILocation(line: 523, column: 46, scope: !5912)
!5917 = !DILocalVariable(name: "r", scope: !5912, file: !3, line: 524, type: !5918)
!5918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4483, size: 64)
!5919 = !DILocation(line: 524, column: 32, scope: !5912)
!5920 = !DILocation(line: 524, column: 36, scope: !5912)
!5921 = !DILocation(line: 524, column: 43, scope: !5912)
!5922 = !DILocation(line: 527, column: 36, scope: !5912)
!5923 = !DILocation(line: 527, column: 40, scope: !5912)
!5924 = !DILocation(line: 527, column: 27, scope: !5912)
!5925 = !DILocation(line: 527, column: 26, scope: !5912)
!5926 = !DILocation(line: 527, column: 44, scope: !5912)
!5927 = !DILocation(line: 527, column: 4, scope: !5912)
!5928 = !DILocation(line: 527, column: 9, scope: !5912)
!5929 = !DILocation(line: 527, column: 11, scope: !5912)
!5930 = !DILocation(line: 527, column: 20, scope: !5912)
!5931 = !DILocation(line: 527, column: 24, scope: !5912)
!5932 = !DILocation(line: 528, column: 35, scope: !5912)
!5933 = !DILocation(line: 528, column: 39, scope: !5912)
!5934 = !DILocation(line: 528, column: 26, scope: !5912)
!5935 = !DILocation(line: 528, column: 43, scope: !5912)
!5936 = !DILocation(line: 528, column: 4, scope: !5912)
!5937 = !DILocation(line: 528, column: 9, scope: !5912)
!5938 = !DILocation(line: 528, column: 11, scope: !5912)
!5939 = !DILocation(line: 528, column: 20, scope: !5912)
!5940 = !DILocation(line: 528, column: 24, scope: !5912)
!5941 = !DILocation(line: 529, column: 36, scope: !5912)
!5942 = !DILocation(line: 529, column: 40, scope: !5912)
!5943 = !DILocation(line: 529, column: 27, scope: !5912)
!5944 = !DILocation(line: 529, column: 26, scope: !5912)
!5945 = !DILocation(line: 529, column: 44, scope: !5912)
!5946 = !DILocation(line: 529, column: 4, scope: !5912)
!5947 = !DILocation(line: 529, column: 9, scope: !5912)
!5948 = !DILocation(line: 529, column: 11, scope: !5912)
!5949 = !DILocation(line: 529, column: 20, scope: !5912)
!5950 = !DILocation(line: 529, column: 24, scope: !5912)
!5951 = !DILocation(line: 530, column: 35, scope: !5912)
!5952 = !DILocation(line: 530, column: 39, scope: !5912)
!5953 = !DILocation(line: 530, column: 26, scope: !5912)
!5954 = !DILocation(line: 530, column: 43, scope: !5912)
!5955 = !DILocation(line: 530, column: 4, scope: !5912)
!5956 = !DILocation(line: 530, column: 9, scope: !5912)
!5957 = !DILocation(line: 530, column: 11, scope: !5912)
!5958 = !DILocation(line: 530, column: 20, scope: !5912)
!5959 = !DILocation(line: 530, column: 24, scope: !5912)
!5960 = !DILocation(line: 531, column: 36, scope: !5912)
!5961 = !DILocation(line: 531, column: 40, scope: !5912)
!5962 = !DILocation(line: 531, column: 27, scope: !5912)
!5963 = !DILocation(line: 531, column: 26, scope: !5912)
!5964 = !DILocation(line: 531, column: 44, scope: !5912)
!5965 = !DILocation(line: 531, column: 4, scope: !5912)
!5966 = !DILocation(line: 531, column: 9, scope: !5912)
!5967 = !DILocation(line: 531, column: 11, scope: !5912)
!5968 = !DILocation(line: 531, column: 20, scope: !5912)
!5969 = !DILocation(line: 531, column: 24, scope: !5912)
!5970 = !DILocation(line: 532, column: 35, scope: !5912)
!5971 = !DILocation(line: 532, column: 39, scope: !5912)
!5972 = !DILocation(line: 532, column: 26, scope: !5912)
!5973 = !DILocation(line: 532, column: 43, scope: !5912)
!5974 = !DILocation(line: 532, column: 4, scope: !5912)
!5975 = !DILocation(line: 532, column: 9, scope: !5912)
!5976 = !DILocation(line: 532, column: 11, scope: !5912)
!5977 = !DILocation(line: 532, column: 20, scope: !5912)
!5978 = !DILocation(line: 532, column: 24, scope: !5912)
!5979 = !DILocation(line: 533, column: 36, scope: !5912)
!5980 = !DILocation(line: 533, column: 40, scope: !5912)
!5981 = !DILocation(line: 533, column: 27, scope: !5912)
!5982 = !DILocation(line: 533, column: 26, scope: !5912)
!5983 = !DILocation(line: 533, column: 44, scope: !5912)
!5984 = !DILocation(line: 533, column: 4, scope: !5912)
!5985 = !DILocation(line: 533, column: 9, scope: !5912)
!5986 = !DILocation(line: 533, column: 11, scope: !5912)
!5987 = !DILocation(line: 533, column: 20, scope: !5912)
!5988 = !DILocation(line: 533, column: 24, scope: !5912)
!5989 = !DILocation(line: 534, column: 35, scope: !5912)
!5990 = !DILocation(line: 534, column: 39, scope: !5912)
!5991 = !DILocation(line: 534, column: 26, scope: !5912)
!5992 = !DILocation(line: 534, column: 43, scope: !5912)
!5993 = !DILocation(line: 534, column: 4, scope: !5912)
!5994 = !DILocation(line: 534, column: 9, scope: !5912)
!5995 = !DILocation(line: 534, column: 11, scope: !5912)
!5996 = !DILocation(line: 534, column: 20, scope: !5912)
!5997 = !DILocation(line: 534, column: 24, scope: !5912)
!5998 = !DILocation(line: 535, column: 36, scope: !5912)
!5999 = !DILocation(line: 535, column: 40, scope: !5912)
!6000 = !DILocation(line: 535, column: 27, scope: !5912)
!6001 = !DILocation(line: 535, column: 26, scope: !5912)
!6002 = !DILocation(line: 535, column: 44, scope: !5912)
!6003 = !DILocation(line: 535, column: 4, scope: !5912)
!6004 = !DILocation(line: 535, column: 9, scope: !5912)
!6005 = !DILocation(line: 535, column: 11, scope: !5912)
!6006 = !DILocation(line: 535, column: 20, scope: !5912)
!6007 = !DILocation(line: 535, column: 24, scope: !5912)
!6008 = !DILocation(line: 536, column: 35, scope: !5912)
!6009 = !DILocation(line: 536, column: 39, scope: !5912)
!6010 = !DILocation(line: 536, column: 26, scope: !5912)
!6011 = !DILocation(line: 536, column: 43, scope: !5912)
!6012 = !DILocation(line: 536, column: 4, scope: !5912)
!6013 = !DILocation(line: 536, column: 9, scope: !5912)
!6014 = !DILocation(line: 536, column: 11, scope: !5912)
!6015 = !DILocation(line: 536, column: 20, scope: !5912)
!6016 = !DILocation(line: 536, column: 24, scope: !5912)
!6017 = !DILocation(line: 537, column: 36, scope: !5912)
!6018 = !DILocation(line: 537, column: 40, scope: !5912)
!6019 = !DILocation(line: 537, column: 27, scope: !5912)
!6020 = !DILocation(line: 537, column: 26, scope: !5912)
!6021 = !DILocation(line: 537, column: 44, scope: !5912)
!6022 = !DILocation(line: 537, column: 4, scope: !5912)
!6023 = !DILocation(line: 537, column: 9, scope: !5912)
!6024 = !DILocation(line: 537, column: 11, scope: !5912)
!6025 = !DILocation(line: 537, column: 20, scope: !5912)
!6026 = !DILocation(line: 537, column: 24, scope: !5912)
!6027 = !DILocation(line: 539, column: 35, scope: !5912)
!6028 = !DILocation(line: 539, column: 39, scope: !5912)
!6029 = !DILocation(line: 539, column: 26, scope: !5912)
!6030 = !DILocation(line: 539, column: 43, scope: !5912)
!6031 = !DILocation(line: 539, column: 4, scope: !5912)
!6032 = !DILocation(line: 539, column: 9, scope: !5912)
!6033 = !DILocation(line: 539, column: 11, scope: !5912)
!6034 = !DILocation(line: 539, column: 20, scope: !5912)
!6035 = !DILocation(line: 539, column: 24, scope: !5912)
!6036 = !DILocation(line: 540, column: 36, scope: !5912)
!6037 = !DILocation(line: 540, column: 40, scope: !5912)
!6038 = !DILocation(line: 540, column: 27, scope: !5912)
!6039 = !DILocation(line: 540, column: 26, scope: !5912)
!6040 = !DILocation(line: 540, column: 44, scope: !5912)
!6041 = !DILocation(line: 540, column: 4, scope: !5912)
!6042 = !DILocation(line: 540, column: 9, scope: !5912)
!6043 = !DILocation(line: 540, column: 11, scope: !5912)
!6044 = !DILocation(line: 540, column: 20, scope: !5912)
!6045 = !DILocation(line: 540, column: 24, scope: !5912)
!6046 = !DILocation(line: 541, column: 35, scope: !5912)
!6047 = !DILocation(line: 541, column: 39, scope: !5912)
!6048 = !DILocation(line: 541, column: 26, scope: !5912)
!6049 = !DILocation(line: 541, column: 43, scope: !5912)
!6050 = !DILocation(line: 541, column: 4, scope: !5912)
!6051 = !DILocation(line: 541, column: 9, scope: !5912)
!6052 = !DILocation(line: 541, column: 11, scope: !5912)
!6053 = !DILocation(line: 541, column: 20, scope: !5912)
!6054 = !DILocation(line: 541, column: 24, scope: !5912)
!6055 = !DILocation(line: 542, column: 36, scope: !5912)
!6056 = !DILocation(line: 542, column: 40, scope: !5912)
!6057 = !DILocation(line: 542, column: 27, scope: !5912)
!6058 = !DILocation(line: 542, column: 26, scope: !5912)
!6059 = !DILocation(line: 542, column: 44, scope: !5912)
!6060 = !DILocation(line: 542, column: 4, scope: !5912)
!6061 = !DILocation(line: 542, column: 9, scope: !5912)
!6062 = !DILocation(line: 542, column: 11, scope: !5912)
!6063 = !DILocation(line: 542, column: 20, scope: !5912)
!6064 = !DILocation(line: 542, column: 24, scope: !5912)
!6065 = !DILocation(line: 543, column: 35, scope: !5912)
!6066 = !DILocation(line: 543, column: 39, scope: !5912)
!6067 = !DILocation(line: 543, column: 26, scope: !5912)
!6068 = !DILocation(line: 543, column: 43, scope: !5912)
!6069 = !DILocation(line: 543, column: 4, scope: !5912)
!6070 = !DILocation(line: 543, column: 9, scope: !5912)
!6071 = !DILocation(line: 543, column: 11, scope: !5912)
!6072 = !DILocation(line: 543, column: 20, scope: !5912)
!6073 = !DILocation(line: 543, column: 24, scope: !5912)
!6074 = !DILocation(line: 544, column: 4, scope: !5912)
!6075 = !DILocation(line: 544, column: 9, scope: !5912)
!6076 = !DILocation(line: 544, column: 11, scope: !5912)
!6077 = !DILocation(line: 544, column: 20, scope: !5912)
!6078 = !DILocation(line: 544, column: 24, scope: !5912)
!6079 = !DILocation(line: 545, column: 4, scope: !5912)
!6080 = !DILocation(line: 545, column: 9, scope: !5912)
!6081 = !DILocation(line: 545, column: 11, scope: !5912)
!6082 = !DILocation(line: 545, column: 20, scope: !5912)
!6083 = !DILocation(line: 545, column: 24, scope: !5912)
!6084 = !DILocation(line: 547, column: 15, scope: !5912)
!6085 = !DILocation(line: 547, column: 4, scope: !5912)
!6086 = !DILocation(line: 548, column: 4, scope: !5912)
!6087 = !DILocation(line: 548, column: 11, scope: !5912)
!6088 = !DILocation(line: 548, column: 17, scope: !5912)
!6089 = !DILocation(line: 550, column: 13, scope: !5912)
!6090 = !DILocation(line: 552, column: 3, scope: !5780)
!6091 = !DILocation(line: 554, column: 20, scope: !6092)
!6092 = distinct !DILexicalBlock(scope: !5780, file: !3, line: 554, column: 7)
!6093 = !DILocation(line: 554, column: 8, scope: !6092)
!6094 = !DILocation(line: 554, column: 7, scope: !5780)
!6095 = !DILocation(line: 555, column: 13, scope: !6096)
!6096 = distinct !DILexicalBlock(scope: !6092, file: !3, line: 554, column: 29)
!6097 = !DILocation(line: 556, column: 3, scope: !6096)
!6098 = !DILocation(line: 557, column: 13, scope: !6099)
!6099 = distinct !DILexicalBlock(scope: !6092, file: !3, line: 556, column: 10)
!6100 = !DILocation(line: 557, column: 21, scope: !6099)
!6101 = !DILocation(line: 557, column: 29, scope: !6099)
!6102 = !DILocation(line: 557, column: 4, scope: !6099)
!6103 = !DILocation(line: 558, column: 13, scope: !6099)
!6104 = !DILocation(line: 558, column: 21, scope: !6099)
!6105 = !DILocation(line: 558, column: 29, scope: !6099)
!6106 = !DILocation(line: 558, column: 4, scope: !6099)
!6107 = !DILocation(line: 559, column: 13, scope: !6099)
!6108 = !DILocation(line: 559, column: 21, scope: !6099)
!6109 = !DILocation(line: 559, column: 29, scope: !6099)
!6110 = !DILocation(line: 559, column: 4, scope: !6099)
!6111 = !DILocation(line: 560, column: 13, scope: !6099)
!6112 = !DILocation(line: 560, column: 21, scope: !6099)
!6113 = !DILocation(line: 560, column: 29, scope: !6099)
!6114 = !DILocation(line: 560, column: 4, scope: !6099)
!6115 = !DILocation(line: 561, column: 13, scope: !6099)
!6116 = !DILocation(line: 561, column: 21, scope: !6099)
!6117 = !DILocation(line: 561, column: 29, scope: !6099)
!6118 = !DILocation(line: 561, column: 4, scope: !6099)
!6119 = !DILocation(line: 562, column: 13, scope: !6099)
!6120 = !DILocation(line: 562, column: 21, scope: !6099)
!6121 = !DILocation(line: 562, column: 29, scope: !6099)
!6122 = !DILocation(line: 562, column: 4, scope: !6099)
!6123 = !DILocation(line: 564, column: 15, scope: !6099)
!6124 = !DILocation(line: 564, column: 4, scope: !6099)
!6125 = !DILocation(line: 566, column: 4, scope: !6099)
!6126 = !DILocation(line: 566, column: 11, scope: !6099)
!6127 = !DILocation(line: 566, column: 17, scope: !6099)
!6128 = !DILocation(line: 568, column: 3, scope: !5780)
!6129 = !DILocation(line: 570, column: 12, scope: !5780)
!6130 = !DILocation(line: 571, column: 3, scope: !5780)
!6131 = !DILocation(line: 573, column: 3, scope: !5780)
!6132 = !DILocation(line: 576, column: 2, scope: !5730)
!6133 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !5720, file: !5720, line: 646, type: !5721, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !277)
!6134 = !DILocalVariable(name: "__ret", scope: !6135, file: !5720, line: 648, type: !181)
!6135 = distinct !DILexicalBlock(scope: !6133, file: !5720, line: 648, column: 9)
!6136 = !DILocation(line: 648, column: 9, scope: !6135)
!6137 = !DILocalVariable(name: "__edi", scope: !6135, file: !5720, line: 648, type: !181)
!6138 = !DILocalVariable(name: "__esi", scope: !6135, file: !5720, line: 648, type: !181)
!6139 = !DILocalVariable(name: "__edx", scope: !6135, file: !5720, line: 648, type: !181)
!6140 = !DILocalVariable(name: "__ecx", scope: !6135, file: !5720, line: 648, type: !181)
!6141 = !DILocalVariable(name: "__eax", scope: !6135, file: !5720, line: 648, type: !181)
!6142 = !DILocation(line: 648, column: 9, scope: !6143)
!6143 = distinct !DILexicalBlock(scope: !6144, file: !5720, line: 648, column: 9)
!6144 = distinct !DILexicalBlock(scope: !6135, file: !5720, line: 648, column: 9)
!6145 = !{i32 -2145770994, i32 -2145768679, i32 -2145768445, i32 -2145768394, i32 -2145768366, i32 -2145768341, i32 -2145768657, i32 -2145768644, i32 -2145768206, i32 -2145768087, i32 -2145768552, i32 -2145768525, i32 -2145768497, i32 -2145768467}
!6146 = !DILocalVariable(name: "__mask", scope: !6147, file: !5720, line: 648, type: !181)
!6147 = distinct !DILexicalBlock(scope: !6143, file: !5720, line: 648, column: 9)
!6148 = !DILocation(line: 648, column: 9, scope: !6147)
!6149 = !DILocation(line: 648, column: 9, scope: !6144)
!6150 = !DILocation(line: 648, column: 2, scope: !6133)
!6151 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !5720, file: !5720, line: 656, type: !1892, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !277)
!6152 = !DILocalVariable(name: "__edi", scope: !6153, file: !5720, line: 658, type: !181)
!6153 = distinct !DILexicalBlock(scope: !6151, file: !5720, line: 658, column: 2)
!6154 = !DILocation(line: 658, column: 2, scope: !6153)
!6155 = !DILocalVariable(name: "__esi", scope: !6153, file: !5720, line: 658, type: !181)
!6156 = !DILocalVariable(name: "__edx", scope: !6153, file: !5720, line: 658, type: !181)
!6157 = !DILocalVariable(name: "__ecx", scope: !6153, file: !5720, line: 658, type: !181)
!6158 = !DILocalVariable(name: "__eax", scope: !6153, file: !5720, line: 658, type: !181)
!6159 = !{i32 -2145763900, i32 -2145763168, i32 -2145762934, i32 -2145762883, i32 -2145762855, i32 -2145762830, i32 -2145763146, i32 -2145763133, i32 -2145762695, i32 -2145762576, i32 -2145763041, i32 -2145763014, i32 -2145762986, i32 -2145762956}
!6160 = !DILocation(line: 659, column: 1, scope: !6151)
!6161 = distinct !DISubprogram(name: "poll_delay_min_max", scope: !3, file: !3, line: 120, type: !6162, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !277)
!6162 = !DISubroutineType(types: !6163)
!6163 = !{!5182, !150, !150}
!6164 = !DILocalVariable(name: "min", arg: 1, scope: !6161, file: !3, line: 120, type: !150)
!6165 = !DILocation(line: 120, column: 57, scope: !6161)
!6166 = !DILocalVariable(name: "max", arg: 2, scope: !6161, file: !3, line: 120, type: !150)
!6167 = !DILocation(line: 120, column: 66, scope: !6161)
!6168 = !DILocalVariable(name: "result", scope: !6161, file: !3, line: 122, type: !5182)
!6169 = !DILocation(line: 122, column: 28, scope: !6161)
!6170 = !DILocation(line: 124, column: 15, scope: !6161)
!6171 = !DILocation(line: 124, column: 9, scope: !6161)
!6172 = !DILocation(line: 124, column: 13, scope: !6161)
!6173 = !DILocation(line: 125, column: 15, scope: !6161)
!6174 = !DILocation(line: 125, column: 9, scope: !6161)
!6175 = !DILocation(line: 125, column: 13, scope: !6161)
!6176 = !DILocation(line: 126, column: 2, scope: !6161)
!6177 = distinct !DISubprogram(name: "set_transforms", scope: !3, file: !3, line: 134, type: !6178, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !277)
!6178 = !DISubroutineType(types: !6179)
!6179 = !{null, !4363, !6180, !160}
!6180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6181, size: 64)
!6181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5820)
!6182 = !DILocalVariable(name: "sensor", arg: 1, scope: !6177, file: !3, line: 134, type: !4363)
!6183 = !DILocation(line: 134, column: 55, scope: !6177)
!6184 = !DILocalVariable(name: "transf", arg: 2, scope: !6177, file: !3, line: 135, type: !6180)
!6185 = !DILocation(line: 135, column: 39, scope: !6177)
!6186 = !DILocalVariable(name: "num", arg: 3, scope: !6177, file: !3, line: 135, type: !160)
!6187 = !DILocation(line: 135, column: 53, scope: !6177)
!6188 = !DILocalVariable(name: "i", scope: !6177, file: !3, line: 137, type: !150)
!6189 = !DILocation(line: 137, column: 6, scope: !6177)
!6190 = !DILocation(line: 139, column: 6, scope: !6177)
!6191 = !DILocation(line: 140, column: 9, scope: !6192)
!6192 = distinct !DILexicalBlock(scope: !6177, file: !3, line: 140, column: 2)
!6193 = !DILocation(line: 140, column: 7, scope: !6192)
!6194 = !DILocation(line: 140, column: 14, scope: !6195)
!6195 = distinct !DILexicalBlock(scope: !6192, file: !3, line: 140, column: 2)
!6196 = !DILocation(line: 140, column: 16, scope: !6195)
!6197 = !DILocation(line: 140, column: 2, scope: !6192)
!6198 = !DILocation(line: 141, column: 12, scope: !6199)
!6199 = distinct !DILexicalBlock(scope: !6195, file: !3, line: 140, column: 26)
!6200 = !DILocation(line: 141, column: 20, scope: !6199)
!6201 = !DILocation(line: 141, column: 31, scope: !6199)
!6202 = !DILocation(line: 141, column: 36, scope: !6199)
!6203 = !DILocation(line: 141, column: 41, scope: !6199)
!6204 = !DILocation(line: 141, column: 44, scope: !6199)
!6205 = !DILocation(line: 142, column: 4, scope: !6199)
!6206 = !DILocation(line: 142, column: 12, scope: !6199)
!6207 = !DILocation(line: 142, column: 17, scope: !6199)
!6208 = !DILocation(line: 142, column: 20, scope: !6199)
!6209 = !DILocation(line: 141, column: 3, scope: !6199)
!6210 = !DILocation(line: 143, column: 3, scope: !6211)
!6211 = distinct !DILexicalBlock(scope: !6212, file: !3, line: 143, column: 3)
!6212 = distinct !DILexicalBlock(scope: !6213, file: !3, line: 143, column: 3)
!6213 = distinct !DILexicalBlock(scope: !6214, file: !3, line: 143, column: 3)
!6214 = distinct !DILexicalBlock(scope: !6199, file: !3, line: 143, column: 3)
!6215 = !DILocation(line: 144, column: 12, scope: !6199)
!6216 = !DILocation(line: 144, column: 20, scope: !6199)
!6217 = !DILocation(line: 144, column: 31, scope: !6199)
!6218 = !DILocation(line: 144, column: 36, scope: !6199)
!6219 = !DILocation(line: 144, column: 41, scope: !6199)
!6220 = !DILocation(line: 144, column: 44, scope: !6199)
!6221 = !DILocation(line: 145, column: 4, scope: !6199)
!6222 = !DILocation(line: 145, column: 12, scope: !6199)
!6223 = !DILocation(line: 145, column: 17, scope: !6199)
!6224 = !DILocation(line: 145, column: 20, scope: !6199)
!6225 = !DILocation(line: 144, column: 3, scope: !6199)
!6226 = !DILocation(line: 146, column: 3, scope: !6227)
!6227 = distinct !DILexicalBlock(scope: !6228, file: !3, line: 146, column: 3)
!6228 = distinct !DILexicalBlock(scope: !6229, file: !3, line: 146, column: 3)
!6229 = distinct !DILexicalBlock(scope: !6230, file: !3, line: 146, column: 3)
!6230 = distinct !DILexicalBlock(scope: !6199, file: !3, line: 146, column: 3)
!6231 = !DILocation(line: 147, column: 7, scope: !6232)
!6232 = distinct !DILexicalBlock(scope: !6199, file: !3, line: 147, column: 7)
!6233 = !DILocation(line: 147, column: 15, scope: !6232)
!6234 = !DILocation(line: 147, column: 20, scope: !6232)
!6235 = !DILocation(line: 147, column: 23, scope: !6232)
!6236 = !DILocation(line: 147, column: 33, scope: !6232)
!6237 = !DILocation(line: 147, column: 7, scope: !6199)
!6238 = !DILocation(line: 148, column: 4, scope: !6232)
!6239 = !DILocation(line: 149, column: 2, scope: !6199)
!6240 = !DILocation(line: 140, column: 22, scope: !6195)
!6241 = !DILocation(line: 140, column: 2, scope: !6195)
!6242 = distinct !{!6242, !6197, !6243}
!6243 = !DILocation(line: 149, column: 2, scope: !6192)
!6244 = !DILocation(line: 150, column: 1, scope: !6177)
!6245 = distinct !DISubprogram(name: "use_transform", scope: !3, file: !3, line: 152, type: !6246, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !277)
!6246 = !DISubroutineType(types: !6247)
!6247 = !{null, !4363, !160}
!6248 = !DILocalVariable(name: "sensor", arg: 1, scope: !6245, file: !3, line: 152, type: !4363)
!6249 = !DILocation(line: 152, column: 54, scope: !6245)
!6250 = !DILocalVariable(name: "transf_num", arg: 2, scope: !6245, file: !3, line: 153, type: !160)
!6251 = !DILocation(line: 153, column: 12, scope: !6245)
!6252 = !DILocation(line: 155, column: 11, scope: !6245)
!6253 = !DILocation(line: 155, column: 19, scope: !6245)
!6254 = !DILocation(line: 155, column: 44, scope: !6245)
!6255 = !DILocation(line: 155, column: 55, scope: !6245)
!6256 = !DILocation(line: 155, column: 41, scope: !6245)
!6257 = !DILocation(line: 155, column: 34, scope: !6245)
!6258 = !DILocation(line: 155, column: 2, scope: !6245)
!6259 = !DILocation(line: 156, column: 1, scope: !6245)
!6260 = distinct !DISubprogram(name: "is_complete", scope: !3, file: !3, line: 129, type: !6261, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !277)
!6261 = !DISubroutineType(types: !6262)
!6262 = !{!150, !4363}
!6263 = !DILocalVariable(name: "sensor", arg: 1, scope: !6260, file: !3, line: 129, type: !4363)
!6264 = !DILocation(line: 129, column: 51, scope: !6260)
!6265 = !DILocation(line: 131, column: 18, scope: !6260)
!6266 = !DILocation(line: 131, column: 26, scope: !6260)
!6267 = !DILocation(line: 131, column: 9, scope: !6260)
!6268 = !DILocation(line: 131, column: 41, scope: !6260)
!6269 = !DILocation(line: 131, column: 2, scope: !6260)
!6270 = distinct !DISubprogram(name: "get_min_full_scales", scope: !3, file: !3, line: 189, type: !6271, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !277)
!6271 = !DISubroutineType(types: !6272)
!6272 = !{!5882, !4363}
!6273 = !DILocalVariable(name: "sensor", arg: 1, scope: !6270, file: !3, line: 189, type: !4363)
!6274 = !DILocation(line: 189, column: 73, scope: !6270)
!6275 = !DILocalVariable(name: "result", scope: !6270, file: !3, line: 191, type: !5882)
!6276 = !DILocation(line: 191, column: 20, scope: !6270)
!6277 = !DILocation(line: 193, column: 23, scope: !6270)
!6278 = !DILocation(line: 193, column: 31, scope: !6270)
!6279 = !DILocation(line: 193, column: 46, scope: !6270)
!6280 = !DILocation(line: 193, column: 14, scope: !6270)
!6281 = !DILocation(line: 193, column: 9, scope: !6270)
!6282 = !DILocation(line: 193, column: 12, scope: !6270)
!6283 = !DILocation(line: 194, column: 23, scope: !6270)
!6284 = !DILocation(line: 194, column: 31, scope: !6270)
!6285 = !DILocation(line: 194, column: 46, scope: !6270)
!6286 = !DILocation(line: 194, column: 14, scope: !6270)
!6287 = !DILocation(line: 194, column: 9, scope: !6270)
!6288 = !DILocation(line: 194, column: 12, scope: !6270)
!6289 = !DILocation(line: 195, column: 23, scope: !6270)
!6290 = !DILocation(line: 195, column: 31, scope: !6270)
!6291 = !DILocation(line: 195, column: 46, scope: !6270)
!6292 = !DILocation(line: 195, column: 14, scope: !6270)
!6293 = !DILocation(line: 195, column: 9, scope: !6270)
!6294 = !DILocation(line: 195, column: 12, scope: !6270)
!6295 = !DILocation(line: 196, column: 23, scope: !6270)
!6296 = !DILocation(line: 196, column: 31, scope: !6270)
!6297 = !DILocation(line: 196, column: 46, scope: !6270)
!6298 = !DILocation(line: 196, column: 14, scope: !6270)
!6299 = !DILocation(line: 196, column: 9, scope: !6270)
!6300 = !DILocation(line: 196, column: 12, scope: !6270)
!6301 = !DILocation(line: 197, column: 23, scope: !6270)
!6302 = !DILocation(line: 197, column: 31, scope: !6270)
!6303 = !DILocation(line: 197, column: 46, scope: !6270)
!6304 = !DILocation(line: 197, column: 14, scope: !6270)
!6305 = !DILocation(line: 197, column: 9, scope: !6270)
!6306 = !DILocation(line: 197, column: 12, scope: !6270)
!6307 = !DILocation(line: 198, column: 23, scope: !6270)
!6308 = !DILocation(line: 198, column: 31, scope: !6270)
!6309 = !DILocation(line: 198, column: 46, scope: !6270)
!6310 = !DILocation(line: 198, column: 14, scope: !6270)
!6311 = !DILocation(line: 198, column: 9, scope: !6270)
!6312 = !DILocation(line: 198, column: 12, scope: !6270)
!6313 = !DILocation(line: 199, column: 2, scope: !6270)
!6314 = distinct !DISubprogram(name: "get_max_full_scales", scope: !3, file: !3, line: 202, type: !6271, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !277)
!6315 = !DILocalVariable(name: "sensor", arg: 1, scope: !6314, file: !3, line: 202, type: !4363)
!6316 = !DILocation(line: 202, column: 73, scope: !6314)
!6317 = !DILocalVariable(name: "result", scope: !6314, file: !3, line: 204, type: !5882)
!6318 = !DILocation(line: 204, column: 20, scope: !6314)
!6319 = !DILocation(line: 206, column: 23, scope: !6314)
!6320 = !DILocation(line: 206, column: 31, scope: !6314)
!6321 = !DILocation(line: 206, column: 46, scope: !6314)
!6322 = !DILocation(line: 206, column: 14, scope: !6314)
!6323 = !DILocation(line: 206, column: 9, scope: !6314)
!6324 = !DILocation(line: 206, column: 12, scope: !6314)
!6325 = !DILocation(line: 207, column: 23, scope: !6314)
!6326 = !DILocation(line: 207, column: 31, scope: !6314)
!6327 = !DILocation(line: 207, column: 46, scope: !6314)
!6328 = !DILocation(line: 207, column: 14, scope: !6314)
!6329 = !DILocation(line: 207, column: 9, scope: !6314)
!6330 = !DILocation(line: 207, column: 12, scope: !6314)
!6331 = !DILocation(line: 208, column: 23, scope: !6314)
!6332 = !DILocation(line: 208, column: 31, scope: !6314)
!6333 = !DILocation(line: 208, column: 46, scope: !6314)
!6334 = !DILocation(line: 208, column: 14, scope: !6314)
!6335 = !DILocation(line: 208, column: 9, scope: !6314)
!6336 = !DILocation(line: 208, column: 12, scope: !6314)
!6337 = !DILocation(line: 209, column: 23, scope: !6314)
!6338 = !DILocation(line: 209, column: 31, scope: !6314)
!6339 = !DILocation(line: 209, column: 46, scope: !6314)
!6340 = !DILocation(line: 209, column: 14, scope: !6314)
!6341 = !DILocation(line: 209, column: 9, scope: !6314)
!6342 = !DILocation(line: 209, column: 12, scope: !6314)
!6343 = !DILocation(line: 210, column: 23, scope: !6314)
!6344 = !DILocation(line: 210, column: 31, scope: !6314)
!6345 = !DILocation(line: 210, column: 46, scope: !6314)
!6346 = !DILocation(line: 210, column: 14, scope: !6314)
!6347 = !DILocation(line: 210, column: 9, scope: !6314)
!6348 = !DILocation(line: 210, column: 12, scope: !6314)
!6349 = !DILocation(line: 211, column: 23, scope: !6314)
!6350 = !DILocation(line: 211, column: 31, scope: !6314)
!6351 = !DILocation(line: 211, column: 46, scope: !6314)
!6352 = !DILocation(line: 211, column: 14, scope: !6314)
!6353 = !DILocation(line: 211, column: 9, scope: !6314)
!6354 = !DILocation(line: 211, column: 12, scope: !6314)
!6355 = !DILocation(line: 212, column: 2, scope: !6314)
!6356 = distinct !DISubprogram(name: "set_full_scales", scope: !3, file: !3, line: 177, type: !6357, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !277)
!6357 = !DISubroutineType(types: !6358)
!6358 = !{null, !4363, !5882}
!6359 = !DILocalVariable(name: "sensor", arg: 1, scope: !6356, file: !3, line: 177, type: !4363)
!6360 = !DILocation(line: 177, column: 56, scope: !6356)
!6361 = !DILocalVariable(name: "full_scale", arg: 2, scope: !6356, file: !3, line: 178, type: !5882)
!6362 = !DILocation(line: 178, column: 26, scope: !6356)
!6363 = !DILocation(line: 180, column: 11, scope: !6356)
!6364 = !DILocation(line: 180, column: 19, scope: !6356)
!6365 = !DILocation(line: 180, column: 30, scope: !6356)
!6366 = !DILocation(line: 180, column: 45, scope: !6356)
!6367 = !DILocation(line: 180, column: 2, scope: !6356)
!6368 = !DILocation(line: 181, column: 11, scope: !6356)
!6369 = !DILocation(line: 181, column: 19, scope: !6356)
!6370 = !DILocation(line: 181, column: 30, scope: !6356)
!6371 = !DILocation(line: 181, column: 45, scope: !6356)
!6372 = !DILocation(line: 181, column: 2, scope: !6356)
!6373 = !DILocation(line: 182, column: 11, scope: !6356)
!6374 = !DILocation(line: 182, column: 19, scope: !6356)
!6375 = !DILocation(line: 182, column: 30, scope: !6356)
!6376 = !DILocation(line: 182, column: 45, scope: !6356)
!6377 = !DILocation(line: 182, column: 2, scope: !6356)
!6378 = !DILocation(line: 183, column: 11, scope: !6356)
!6379 = !DILocation(line: 183, column: 19, scope: !6356)
!6380 = !DILocation(line: 183, column: 30, scope: !6356)
!6381 = !DILocation(line: 183, column: 45, scope: !6356)
!6382 = !DILocation(line: 183, column: 2, scope: !6356)
!6383 = !DILocation(line: 184, column: 11, scope: !6356)
!6384 = !DILocation(line: 184, column: 19, scope: !6356)
!6385 = !DILocation(line: 184, column: 30, scope: !6356)
!6386 = !DILocation(line: 184, column: 45, scope: !6356)
!6387 = !DILocation(line: 184, column: 2, scope: !6356)
!6388 = !DILocation(line: 185, column: 11, scope: !6356)
!6389 = !DILocation(line: 185, column: 19, scope: !6356)
!6390 = !DILocation(line: 185, column: 30, scope: !6356)
!6391 = !DILocation(line: 185, column: 45, scope: !6356)
!6392 = !DILocation(line: 185, column: 2, scope: !6356)
!6393 = !DILocation(line: 186, column: 11, scope: !6356)
!6394 = !DILocation(line: 186, column: 19, scope: !6356)
!6395 = !DILocation(line: 186, column: 2, scope: !6356)
!6396 = !DILocation(line: 187, column: 1, scope: !6356)
!6397 = distinct !DISubprogram(name: "use_offset", scope: !3, file: !3, line: 158, type: !6246, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !277)
!6398 = !DILocalVariable(name: "sensor", arg: 1, scope: !6397, file: !3, line: 158, type: !4363)
!6399 = !DILocation(line: 158, column: 51, scope: !6397)
!6400 = !DILocalVariable(name: "offset_num", arg: 2, scope: !6397, file: !3, line: 158, type: !160)
!6401 = !DILocation(line: 158, column: 65, scope: !6397)
!6402 = !DILocation(line: 160, column: 11, scope: !6397)
!6403 = !DILocation(line: 160, column: 19, scope: !6397)
!6404 = !DILocation(line: 160, column: 44, scope: !6397)
!6405 = !DILocation(line: 160, column: 55, scope: !6397)
!6406 = !DILocation(line: 160, column: 41, scope: !6397)
!6407 = !DILocation(line: 160, column: 34, scope: !6397)
!6408 = !DILocation(line: 160, column: 2, scope: !6397)
!6409 = !DILocation(line: 161, column: 1, scope: !6397)
!6410 = distinct !DISubprogram(name: "set_s16", scope: !125, file: !125, line: 22, type: !6411, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !277)
!6411 = !DISubroutineType(types: !6412)
!6412 = !{null, !6413, !158}
!6413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!6414 = !DILocalVariable(name: "p", arg: 1, scope: !6410, file: !125, line: 22, type: !6413)
!6415 = !DILocation(line: 22, column: 41, scope: !6410)
!6416 = !DILocalVariable(name: "val", arg: 2, scope: !6410, file: !125, line: 22, type: !158)
!6417 = !DILocation(line: 22, column: 48, scope: !6410)
!6418 = !DILocation(line: 24, column: 9, scope: !6410)
!6419 = !DILocation(line: 24, column: 14, scope: !6410)
!6420 = !DILocation(line: 24, column: 2, scope: !6410)
!6421 = !DILocation(line: 25, column: 1, scope: !6410)
!6422 = distinct !DISubprogram(name: "set_offset", scope: !3, file: !3, line: 163, type: !6423, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !277)
!6423 = !DISubroutineType(types: !6424)
!6424 = !{null, !4363}
!6425 = !DILocalVariable(name: "sensor", arg: 1, scope: !6422, file: !3, line: 163, type: !4363)
!6426 = !DILocation(line: 163, column: 51, scope: !6422)
!6427 = !DILocation(line: 165, column: 11, scope: !6422)
!6428 = !DILocation(line: 165, column: 19, scope: !6422)
!6429 = !DILocation(line: 165, column: 2, scope: !6422)
!6430 = !DILocation(line: 166, column: 1, scope: !6422)
!6431 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !5720, file: !5720, line: 651, type: !6432, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !277)
!6432 = !DISubroutineType(types: !6433)
!6433 = !{null, !181}
!6434 = !DILocalVariable(name: "f", arg: 1, scope: !6431, file: !5720, line: 651, type: !181)
!6435 = !DILocation(line: 651, column: 65, scope: !6431)
!6436 = !DILocalVariable(name: "__edi", scope: !6437, file: !5720, line: 653, type: !181)
!6437 = distinct !DILexicalBlock(scope: !6431, file: !5720, line: 653, column: 2)
!6438 = !DILocation(line: 653, column: 2, scope: !6437)
!6439 = !DILocalVariable(name: "__esi", scope: !6437, file: !5720, line: 653, type: !181)
!6440 = !DILocalVariable(name: "__edx", scope: !6437, file: !5720, line: 653, type: !181)
!6441 = !DILocalVariable(name: "__ecx", scope: !6437, file: !5720, line: 653, type: !181)
!6442 = !DILocalVariable(name: "__eax", scope: !6437, file: !5720, line: 653, type: !181)
!6443 = !{i32 -2145766527, i32 -2145765777, i32 -2145765543, i32 -2145765492, i32 -2145765464, i32 -2145765439, i32 -2145765755, i32 -2145765742, i32 -2145765304, i32 -2145765185, i32 -2145765650, i32 -2145765623, i32 -2145765595, i32 -2145765565}
!6444 = !DILocation(line: 654, column: 1, scope: !6431)
!6445 = distinct !DISubprogram(name: "jr3_pci_pci_probe", scope: !3, file: !3, line: 789, type: !4047, scopeLine: 791, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !277)
!6446 = !DILocalVariable(name: "dev", arg: 1, scope: !6445, file: !3, line: 789, type: !4049)
!6447 = !DILocation(line: 789, column: 46, scope: !6445)
!6448 = !DILocalVariable(name: "id", arg: 2, scope: !6445, file: !3, line: 790, type: !4034)
!6449 = !DILocation(line: 790, column: 37, scope: !6445)
!6450 = !DILocation(line: 792, column: 32, scope: !6445)
!6451 = !DILocation(line: 792, column: 54, scope: !6445)
!6452 = !DILocation(line: 792, column: 58, scope: !6445)
!6453 = !DILocation(line: 792, column: 9, scope: !6445)
!6454 = !DILocation(line: 792, column: 2, scope: !6445)
