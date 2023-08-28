; ModuleID = '../bcout/drivers/staging/comedi/drivers/adl_pci9111.llvm.bc'
source_filename = "drivers/staging/comedi/drivers/adl_pci9111.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_adl_pci9111_driver_init6:\09\09\09"
module asm ".long\09adl_pci9111_driver_init - .\09\09\09"
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
%struct.pci9111_private_data = type { i64, i32, i32, i32, [1024 x i16] }

@__UNIQUE_ID___addressable_adl_pci9111_driver_init234 = internal global i8* bitcast (i32 ()* @adl_pci9111_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@adl_pci9111_driver = internal global %struct.comedi_driver { %struct.comedi_driver* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), %struct.module* null, i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* null, void (%struct.comedi_device*)* @pci9111_detach, i32 (%struct.comedi_device*, i64)* @pci9111_auto_attach, i32 0, i8** null, i32 0 }, align 8, !dbg !180
@adl_pci9111_pci_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), %struct.pci_device_id* getelementptr inbounds ([2 x %struct.pci_device_id], [2 x %struct.pci_device_id]* @pci9111_pci_table, i32 0, i32 0), i32 (%struct.pci_dev*, %struct.pci_device_id*)* @pci9111_pci_probe, void (%struct.pci_dev*)* @comedi_pci_auto_unconfig, i32 (%struct.pci_dev*, i32)* null, i32 (%struct.pci_dev*)* null, void (%struct.pci_dev*)* null, i32 (%struct.pci_dev*, i32)* null, %struct.pci_error_handlers* null, %struct.attribute_group** null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, align 8, !dbg !4021
@__exitcall_adl_pci9111_driver_exit = internal global void ()* @adl_pci9111_driver_exit, section ".exitcall.exit", align 8, !dbg !151
@__UNIQUE_ID_author235 = internal constant [49 x i8] c"adl_pci9111.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1, !dbg !158
@__UNIQUE_ID_description236 = internal constant [48 x i8] c"adl_pci9111.description=Comedi low-level driver\00", section ".modinfo", align 1, !dbg !165
@__UNIQUE_ID_file237 = internal constant [60 x i8] c"adl_pci9111.file=drivers/staging/comedi/drivers/adl_pci9111\00", section ".modinfo", align 1, !dbg !170
@__UNIQUE_ID_license238 = internal constant [24 x i8] c"adl_pci9111.license=GPL\00", section ".modinfo", align 1, !dbg !175
@.str = private unnamed_addr constant [12 x i8] c"adl_pci9111\00", align 1
@range_bipolar10 = external dso_local constant %struct.comedi_lrange, align 4
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@pci9111_ai_range = internal constant { i32, [5 x %struct.comedi_krange] } { i32 5, [5 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }, %struct.comedi_krange { i32 -625000, i32 625000, i32 0 }] }, align 4, !dbg !4019
@pci9111_pci_table = internal constant [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 5194, i32 37137, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id zeroinitializer], align 16, !dbg !4300
@llvm.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_adl_pci9111_driver_init234 to i8*), i8* bitcast (void ()* @adl_pci9111_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_adl_pci9111_driver_exit to i8*), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__UNIQUE_ID_author235, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__UNIQUE_ID_description236, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__UNIQUE_ID_file237, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__UNIQUE_ID_license238, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @adl_pci9111_driver_init() #0 section ".init.text" !dbg !4309 {
entry:
  %call = call i32 @comedi_pci_driver_register(%struct.comedi_driver* @adl_pci9111_driver, %struct.pci_driver* @adl_pci9111_pci_driver) #6, !dbg !4312
  ret i32 %call, !dbg !4312
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @adl_pci9111_driver_exit() #0 section ".exit.text" !dbg !4313 {
entry:
  call void @comedi_pci_driver_unregister(%struct.comedi_driver* @adl_pci9111_driver, %struct.pci_driver* @adl_pci9111_pci_driver) #6, !dbg !4314
  ret void, !dbg !4314
}

; Function Attrs: noredzone
declare dso_local void @comedi_pci_driver_unregister(%struct.comedi_driver*, %struct.pci_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_pci_driver_register(%struct.comedi_driver*, %struct.pci_driver*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pci9111_detach(%struct.comedi_device* %dev) #2 !dbg !4315 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4316, metadata !DIExpression()), !dbg !4317
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4318
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 18, !dbg !4320
  %1 = load i64, i64* %iobase, align 8, !dbg !4320
  %tobool = icmp ne i64 %1, 0, !dbg !4318
  br i1 %tobool, label %if.then, label %if.end, !dbg !4321

if.then:                                          ; preds = %entry
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4322
  %call = call i32 @pci9111_reset(%struct.comedi_device* %2) #6, !dbg !4323
  br label %if.end, !dbg !4323

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4324
  call void @comedi_pci_detach(%struct.comedi_device* %3) #6, !dbg !4325
  ret void, !dbg !4326
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci9111_auto_attach(%struct.comedi_device* %dev, i64 %context_unused) #2 !dbg !4327 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %context_unused.addr = alloca i64, align 8
  %pcidev = alloca %struct.pci_dev*, align 8
  %dev_private = alloca %struct.pci9111_private_data*, align 8
  %s = alloca %struct.comedi_subdevice*, align 8
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4328, metadata !DIExpression()), !dbg !4329
  store i64 %context_unused, i64* %context_unused.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %context_unused.addr, metadata !4330, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pcidev, metadata !4332, metadata !DIExpression()), !dbg !4333
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4334
  %call = call %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device* %0) #6, !dbg !4335
  store %struct.pci_dev* %call, %struct.pci_dev** %pcidev, align 8, !dbg !4333
  call void @llvm.dbg.declare(metadata %struct.pci9111_private_data** %dev_private, metadata !4336, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s, metadata !4349, metadata !DIExpression()), !dbg !4350
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4351, metadata !DIExpression()), !dbg !4352
  %1 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4353
  %call1 = call i8* @comedi_alloc_devpriv(%struct.comedi_device* %1, i64 2072) #6, !dbg !4354
  %2 = bitcast i8* %call1 to %struct.pci9111_private_data*, !dbg !4354
  store %struct.pci9111_private_data* %2, %struct.pci9111_private_data** %dev_private, align 8, !dbg !4355
  %3 = load %struct.pci9111_private_data*, %struct.pci9111_private_data** %dev_private, align 8, !dbg !4356
  %tobool = icmp ne %struct.pci9111_private_data* %3, null, !dbg !4356
  br i1 %tobool, label %if.end, label %if.then, !dbg !4358

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !4359
  br label %return, !dbg !4359

if.end:                                           ; preds = %entry
  %4 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4360
  %call2 = call i32 @comedi_pci_enable(%struct.comedi_device* %4) #6, !dbg !4361
  store i32 %call2, i32* %ret, align 4, !dbg !4362
  %5 = load i32, i32* %ret, align 4, !dbg !4363
  %tobool3 = icmp ne i32 %5, 0, !dbg !4363
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4365

if.then4:                                         ; preds = %if.end
  %6 = load i32, i32* %ret, align 4, !dbg !4366
  store i32 %6, i32* %retval, align 4, !dbg !4367
  br label %return, !dbg !4367

if.end5:                                          ; preds = %if.end
  %7 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4368
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 44, !dbg !4368
  %arrayidx = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 1, !dbg !4368
  %start = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx, i32 0, i32 0, !dbg !4368
  %8 = load i64, i64* %start, align 8, !dbg !4368
  %9 = load %struct.pci9111_private_data*, %struct.pci9111_private_data** %dev_private, align 8, !dbg !4369
  %lcr_io_base = getelementptr inbounds %struct.pci9111_private_data, %struct.pci9111_private_data* %9, i32 0, i32 0, !dbg !4370
  store i64 %8, i64* %lcr_io_base, align 8, !dbg !4371
  %10 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4372
  %resource6 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 44, !dbg !4372
  %arrayidx7 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource6, i64 0, i64 2, !dbg !4372
  %start8 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx7, i32 0, i32 0, !dbg !4372
  %11 = load i64, i64* %start8, align 8, !dbg !4372
  %12 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4373
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 18, !dbg !4374
  store i64 %11, i64* %iobase, align 8, !dbg !4375
  %13 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4376
  %call9 = call i32 @pci9111_reset(%struct.comedi_device* %13) #6, !dbg !4377
  %14 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4378
  %irq = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 43, !dbg !4380
  %15 = load i32, i32* %irq, align 4, !dbg !4380
  %tobool10 = icmp ne i32 %15, 0, !dbg !4378
  br i1 %tobool10, label %if.then11, label %if.end18, !dbg !4381

if.then11:                                        ; preds = %if.end5
  %16 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4382
  %irq12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 43, !dbg !4384
  %17 = load i32, i32* %irq12, align 4, !dbg !4384
  %18 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4385
  %board_name = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 8, !dbg !4386
  %19 = load i8*, i8** %board_name, align 8, !dbg !4386
  %20 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4387
  %21 = bitcast %struct.comedi_device* %20 to i8*, !dbg !4387
  %call13 = call i32 @request_irq(i32 %17, i32 (i32, i8*)* @pci9111_interrupt, i64 128, i8* %19, i8* %21) #6, !dbg !4388
  store i32 %call13, i32* %ret, align 4, !dbg !4389
  %22 = load i32, i32* %ret, align 4, !dbg !4390
  %cmp = icmp eq i32 %22, 0, !dbg !4392
  br i1 %cmp, label %if.then14, label %if.end17, !dbg !4393

if.then14:                                        ; preds = %if.then11
  %23 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4394
  %irq15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 43, !dbg !4395
  %24 = load i32, i32* %irq15, align 4, !dbg !4395
  %25 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4396
  %irq16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 20, !dbg !4397
  store i32 %24, i32* %irq16, align 8, !dbg !4398
  br label %if.end17, !dbg !4396

if.end17:                                         ; preds = %if.then14, %if.then11
  br label %if.end18, !dbg !4399

if.end18:                                         ; preds = %if.end17, %if.end5
  %26 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4400
  %iobase19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %26, i32 0, i32 18, !dbg !4401
  %27 = load i64, i64* %iobase19, align 8, !dbg !4401
  %add = add i64 %27, 64, !dbg !4402
  %call20 = call %struct.comedi_8254* @comedi_8254_init(i64 %add, i32 500, i32 2, i32 0) #6, !dbg !4403
  %28 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4404
  %pacer = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %28, i32 0, i32 2, !dbg !4405
  store %struct.comedi_8254* %call20, %struct.comedi_8254** %pacer, align 8, !dbg !4406
  %29 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4407
  %pacer21 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %29, i32 0, i32 2, !dbg !4409
  %30 = load %struct.comedi_8254*, %struct.comedi_8254** %pacer21, align 8, !dbg !4409
  %tobool22 = icmp ne %struct.comedi_8254* %30, null, !dbg !4407
  br i1 %tobool22, label %if.end24, label %if.then23, !dbg !4410

if.then23:                                        ; preds = %if.end18
  store i32 -12, i32* %retval, align 4, !dbg !4411
  br label %return, !dbg !4411

if.end24:                                         ; preds = %if.end18
  %31 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4412
  %call25 = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %31, i32 4) #6, !dbg !4413
  store i32 %call25, i32* %ret, align 4, !dbg !4414
  %32 = load i32, i32* %ret, align 4, !dbg !4415
  %tobool26 = icmp ne i32 %32, 0, !dbg !4415
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !4417

if.then27:                                        ; preds = %if.end24
  %33 = load i32, i32* %ret, align 4, !dbg !4418
  store i32 %33, i32* %retval, align 4, !dbg !4419
  br label %return, !dbg !4419

if.end28:                                         ; preds = %if.end24
  %34 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4420
  %subdevices = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %34, i32 0, i32 16, !dbg !4421
  %35 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices, align 8, !dbg !4421
  %arrayidx29 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %35, i64 0, !dbg !4420
  store %struct.comedi_subdevice* %arrayidx29, %struct.comedi_subdevice** %s, align 8, !dbg !4422
  %36 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4423
  %type = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %36, i32 0, i32 2, !dbg !4424
  store i32 1, i32* %type, align 4, !dbg !4425
  %37 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4426
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %37, i32 0, i32 4, !dbg !4427
  store i32 2162688, i32* %subdev_flags, align 4, !dbg !4428
  %38 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4429
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %38, i32 0, i32 3, !dbg !4430
  store i32 16, i32* %n_chan, align 8, !dbg !4431
  %39 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4432
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %39, i32 0, i32 13, !dbg !4433
  store i32 65535, i32* %maxdata, align 8, !dbg !4434
  %40 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4435
  %range_table = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %40, i32 0, i32 15, !dbg !4436
  store %struct.comedi_lrange* bitcast ({ i32, [5 x %struct.comedi_krange] }* @pci9111_ai_range to %struct.comedi_lrange*), %struct.comedi_lrange** %range_table, align 8, !dbg !4437
  %41 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4438
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %41, i32 0, i32 18, !dbg !4439
  %insn_read30 = bitcast {}** %insn_read to i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)**, !dbg !4439
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @pci9111_ai_insn_read, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_read30, align 8, !dbg !4440
  %42 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4441
  %irq31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %42, i32 0, i32 20, !dbg !4443
  %43 = load i32, i32* %irq31, align 8, !dbg !4443
  %tobool32 = icmp ne i32 %43, 0, !dbg !4441
  br i1 %tobool32, label %if.then33, label %if.end36, !dbg !4444

if.then33:                                        ; preds = %if.end28
  %44 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4445
  %45 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4447
  %read_subdev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %45, i32 0, i32 21, !dbg !4448
  store %struct.comedi_subdevice* %44, %struct.comedi_subdevice** %read_subdev, align 8, !dbg !4449
  %46 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4450
  %subdev_flags34 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %46, i32 0, i32 4, !dbg !4451
  %47 = load i32, i32* %subdev_flags34, align 4, !dbg !4452
  %or = or i32 %47, 32768, !dbg !4452
  store i32 %or, i32* %subdev_flags34, align 4, !dbg !4452
  %48 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4453
  %n_chan35 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %48, i32 0, i32 3, !dbg !4454
  %49 = load i32, i32* %n_chan35, align 8, !dbg !4454
  %50 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4455
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %50, i32 0, i32 5, !dbg !4456
  store i32 %49, i32* %len_chanlist, align 8, !dbg !4457
  %51 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4458
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %51, i32 0, i32 23, !dbg !4459
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @pci9111_ai_do_cmd_test, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)** %do_cmdtest, align 8, !dbg !4460
  %52 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4461
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %52, i32 0, i32 22, !dbg !4462
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @pci9111_ai_do_cmd, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)** %do_cmd, align 8, !dbg !4463
  %53 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4464
  %cancel = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %53, i32 0, i32 25, !dbg !4465
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @pci9111_ai_cancel, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)** %cancel, align 8, !dbg !4466
  %54 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4467
  %munge = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %54, i32 0, i32 27, !dbg !4468
  store void (%struct.comedi_device*, %struct.comedi_subdevice*, i8*, i32, i32)* @pci9111_ai_munge, void (%struct.comedi_device*, %struct.comedi_subdevice*, i8*, i32, i32)** %munge, align 8, !dbg !4469
  br label %if.end36, !dbg !4470

if.end36:                                         ; preds = %if.then33, %if.end28
  %55 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4471
  %subdevices37 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %55, i32 0, i32 16, !dbg !4472
  %56 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices37, align 8, !dbg !4472
  %arrayidx38 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %56, i64 1, !dbg !4471
  store %struct.comedi_subdevice* %arrayidx38, %struct.comedi_subdevice** %s, align 8, !dbg !4473
  %57 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4474
  %type39 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %57, i32 0, i32 2, !dbg !4475
  store i32 2, i32* %type39, align 4, !dbg !4476
  %58 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4477
  %subdev_flags40 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %58, i32 0, i32 4, !dbg !4478
  store i32 2228224, i32* %subdev_flags40, align 4, !dbg !4479
  %59 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4480
  %n_chan41 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %59, i32 0, i32 3, !dbg !4481
  store i32 1, i32* %n_chan41, align 8, !dbg !4482
  %60 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4483
  %maxdata42 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %60, i32 0, i32 13, !dbg !4484
  store i32 4095, i32* %maxdata42, align 8, !dbg !4485
  %61 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4486
  %len_chanlist43 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %61, i32 0, i32 5, !dbg !4487
  store i32 1, i32* %len_chanlist43, align 8, !dbg !4488
  %62 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4489
  %range_table44 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %62, i32 0, i32 15, !dbg !4490
  store %struct.comedi_lrange* @range_bipolar10, %struct.comedi_lrange** %range_table44, align 8, !dbg !4491
  %63 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4492
  %insn_write = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %63, i32 0, i32 19, !dbg !4493
  %insn_write45 = bitcast {}** %insn_write to i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)**, !dbg !4493
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @pci9111_ao_insn_write, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_write45, align 8, !dbg !4494
  %64 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4495
  %call46 = call i32 @comedi_alloc_subdev_readback(%struct.comedi_subdevice* %64) #6, !dbg !4496
  store i32 %call46, i32* %ret, align 4, !dbg !4497
  %65 = load i32, i32* %ret, align 4, !dbg !4498
  %tobool47 = icmp ne i32 %65, 0, !dbg !4498
  br i1 %tobool47, label %if.then48, label %if.end49, !dbg !4500

if.then48:                                        ; preds = %if.end36
  %66 = load i32, i32* %ret, align 4, !dbg !4501
  store i32 %66, i32* %retval, align 4, !dbg !4502
  br label %return, !dbg !4502

if.end49:                                         ; preds = %if.end36
  %67 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4503
  %subdevices50 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %67, i32 0, i32 16, !dbg !4504
  %68 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices50, align 8, !dbg !4504
  %arrayidx51 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %68, i64 2, !dbg !4503
  store %struct.comedi_subdevice* %arrayidx51, %struct.comedi_subdevice** %s, align 8, !dbg !4505
  %69 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4506
  %type52 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %69, i32 0, i32 2, !dbg !4507
  store i32 3, i32* %type52, align 4, !dbg !4508
  %70 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4509
  %subdev_flags53 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %70, i32 0, i32 4, !dbg !4510
  store i32 65536, i32* %subdev_flags53, align 4, !dbg !4511
  %71 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4512
  %n_chan54 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %71, i32 0, i32 3, !dbg !4513
  store i32 16, i32* %n_chan54, align 8, !dbg !4514
  %72 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4515
  %maxdata55 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %72, i32 0, i32 13, !dbg !4516
  store i32 1, i32* %maxdata55, align 8, !dbg !4517
  %73 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4518
  %range_table56 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %73, i32 0, i32 15, !dbg !4519
  store %struct.comedi_lrange* @range_unipolar5, %struct.comedi_lrange** %range_table56, align 8, !dbg !4520
  %74 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4521
  %insn_bits = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %74, i32 0, i32 20, !dbg !4522
  %insn_bits57 = bitcast {}** %insn_bits to i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)**, !dbg !4522
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @pci9111_di_insn_bits, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_bits57, align 8, !dbg !4523
  %75 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4524
  %subdevices58 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %75, i32 0, i32 16, !dbg !4525
  %76 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices58, align 8, !dbg !4525
  %arrayidx59 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %76, i64 3, !dbg !4524
  store %struct.comedi_subdevice* %arrayidx59, %struct.comedi_subdevice** %s, align 8, !dbg !4526
  %77 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4527
  %type60 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %77, i32 0, i32 2, !dbg !4528
  store i32 4, i32* %type60, align 4, !dbg !4529
  %78 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4530
  %subdev_flags61 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %78, i32 0, i32 4, !dbg !4531
  store i32 131072, i32* %subdev_flags61, align 4, !dbg !4532
  %79 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4533
  %n_chan62 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %79, i32 0, i32 3, !dbg !4534
  store i32 16, i32* %n_chan62, align 8, !dbg !4535
  %80 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4536
  %maxdata63 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %80, i32 0, i32 13, !dbg !4537
  store i32 1, i32* %maxdata63, align 8, !dbg !4538
  %81 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4539
  %range_table64 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %81, i32 0, i32 15, !dbg !4540
  store %struct.comedi_lrange* @range_unipolar5, %struct.comedi_lrange** %range_table64, align 8, !dbg !4541
  %82 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4542
  %insn_bits65 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %82, i32 0, i32 20, !dbg !4543
  %insn_bits66 = bitcast {}** %insn_bits65 to i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)**, !dbg !4543
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @pci9111_do_insn_bits, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_bits66, align 8, !dbg !4544
  store i32 0, i32* %retval, align 4, !dbg !4545
  br label %return, !dbg !4545

return:                                           ; preds = %if.end49, %if.then48, %if.then27, %if.then23, %if.then4, %if.then
  %83 = load i32, i32* %retval, align 4, !dbg !4546
  ret i32 %83, !dbg !4546
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci9111_reset(%struct.comedi_device* %dev) #2 !dbg !4547 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %dev_private = alloca %struct.pci9111_private_data*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4548, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.declare(metadata %struct.pci9111_private_data** %dev_private, metadata !4550, metadata !DIExpression()), !dbg !4551
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4552
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !4553
  %1 = load i8*, i8** %private, align 8, !dbg !4553
  %2 = bitcast i8* %1 to %struct.pci9111_private_data*, !dbg !4552
  store %struct.pci9111_private_data* %2, %struct.pci9111_private_data** %dev_private, align 8, !dbg !4551
  %3 = load %struct.pci9111_private_data*, %struct.pci9111_private_data** %dev_private, align 8, !dbg !4554
  %lcr_io_base = getelementptr inbounds %struct.pci9111_private_data, %struct.pci9111_private_data* %3, i32 0, i32 0, !dbg !4555
  %4 = load i64, i64* %lcr_io_base, align 8, !dbg !4555
  call void @plx9050_interrupt_control(i64 %4, i1 zeroext true, i1 zeroext true, i1 zeroext true, i1 zeroext true, i1 zeroext false) #6, !dbg !4556
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4557
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 18, !dbg !4558
  %6 = load i64, i64* %iobase, align 8, !dbg !4558
  %add = add i64 %6, 10, !dbg !4559
  %conv = trunc i64 %add to i32, !dbg !4557
  call void @outb(i8 zeroext 0, i32 %conv) #6, !dbg !4560
  ret i32 0, !dbg !4561
}

; Function Attrs: noredzone
declare dso_local void @comedi_pci_detach(%struct.comedi_device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @plx9050_interrupt_control(i64 %io_base, i1 zeroext %int1_enable, i1 zeroext %int1_active_high, i1 zeroext %int2_enable, i1 zeroext %int2_active_high, i1 zeroext %interrupt_enable) #2 !dbg !4562 {
entry:
  %io_base.addr = alloca i64, align 8
  %int1_enable.addr = alloca i8, align 1
  %int1_active_high.addr = alloca i8, align 1
  %int2_enable.addr = alloca i8, align 1
  %int2_active_high.addr = alloca i8, align 1
  %interrupt_enable.addr = alloca i8, align 1
  %flags = alloca i32, align 4
  store i64 %io_base, i64* %io_base.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %io_base.addr, metadata !4565, metadata !DIExpression()), !dbg !4566
  %frombool = zext i1 %int1_enable to i8
  store i8 %frombool, i8* %int1_enable.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %int1_enable.addr, metadata !4567, metadata !DIExpression()), !dbg !4568
  %frombool1 = zext i1 %int1_active_high to i8
  store i8 %frombool1, i8* %int1_active_high.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %int1_active_high.addr, metadata !4569, metadata !DIExpression()), !dbg !4570
  %frombool2 = zext i1 %int2_enable to i8
  store i8 %frombool2, i8* %int2_enable.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %int2_enable.addr, metadata !4571, metadata !DIExpression()), !dbg !4572
  %frombool3 = zext i1 %int2_active_high to i8
  store i8 %frombool3, i8* %int2_active_high.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %int2_active_high.addr, metadata !4573, metadata !DIExpression()), !dbg !4574
  %frombool4 = zext i1 %interrupt_enable to i8
  store i8 %frombool4, i8* %interrupt_enable.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %interrupt_enable.addr, metadata !4575, metadata !DIExpression()), !dbg !4576
  call void @llvm.dbg.declare(metadata i32* %flags, metadata !4577, metadata !DIExpression()), !dbg !4578
  store i32 0, i32* %flags, align 4, !dbg !4578
  %0 = load i8, i8* %int1_enable.addr, align 1, !dbg !4579
  %tobool = trunc i8 %0 to i1, !dbg !4579
  br i1 %tobool, label %if.then, label %if.end, !dbg !4581

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %flags, align 4, !dbg !4582
  %conv = sext i32 %1 to i64, !dbg !4582
  %or = or i64 %conv, 1, !dbg !4582
  %conv5 = trunc i64 %or to i32, !dbg !4582
  store i32 %conv5, i32* %flags, align 4, !dbg !4582
  br label %if.end, !dbg !4583

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8, i8* %int1_active_high.addr, align 1, !dbg !4584
  %tobool6 = trunc i8 %2 to i1, !dbg !4584
  br i1 %tobool6, label %if.then7, label %if.end11, !dbg !4586

if.then7:                                         ; preds = %if.end
  %3 = load i32, i32* %flags, align 4, !dbg !4587
  %conv8 = sext i32 %3 to i64, !dbg !4587
  %or9 = or i64 %conv8, 2, !dbg !4587
  %conv10 = trunc i64 %or9 to i32, !dbg !4587
  store i32 %conv10, i32* %flags, align 4, !dbg !4587
  br label %if.end11, !dbg !4588

if.end11:                                         ; preds = %if.then7, %if.end
  %4 = load i8, i8* %int2_enable.addr, align 1, !dbg !4589
  %tobool12 = trunc i8 %4 to i1, !dbg !4589
  br i1 %tobool12, label %if.then13, label %if.end17, !dbg !4591

if.then13:                                        ; preds = %if.end11
  %5 = load i32, i32* %flags, align 4, !dbg !4592
  %conv14 = sext i32 %5 to i64, !dbg !4592
  %or15 = or i64 %conv14, 8, !dbg !4592
  %conv16 = trunc i64 %or15 to i32, !dbg !4592
  store i32 %conv16, i32* %flags, align 4, !dbg !4592
  br label %if.end17, !dbg !4593

if.end17:                                         ; preds = %if.then13, %if.end11
  %6 = load i8, i8* %int2_active_high.addr, align 1, !dbg !4594
  %tobool18 = trunc i8 %6 to i1, !dbg !4594
  br i1 %tobool18, label %if.then19, label %if.end23, !dbg !4596

if.then19:                                        ; preds = %if.end17
  %7 = load i32, i32* %flags, align 4, !dbg !4597
  %conv20 = sext i32 %7 to i64, !dbg !4597
  %or21 = or i64 %conv20, 16, !dbg !4597
  %conv22 = trunc i64 %or21 to i32, !dbg !4597
  store i32 %conv22, i32* %flags, align 4, !dbg !4597
  br label %if.end23, !dbg !4598

if.end23:                                         ; preds = %if.then19, %if.end17
  %8 = load i8, i8* %interrupt_enable.addr, align 1, !dbg !4599
  %tobool24 = trunc i8 %8 to i1, !dbg !4599
  br i1 %tobool24, label %if.then25, label %if.end29, !dbg !4601

if.then25:                                        ; preds = %if.end23
  %9 = load i32, i32* %flags, align 4, !dbg !4602
  %conv26 = sext i32 %9 to i64, !dbg !4602
  %or27 = or i64 %conv26, 64, !dbg !4602
  %conv28 = trunc i64 %or27 to i32, !dbg !4602
  store i32 %conv28, i32* %flags, align 4, !dbg !4602
  br label %if.end29, !dbg !4603

if.end29:                                         ; preds = %if.then25, %if.end23
  %10 = load i32, i32* %flags, align 4, !dbg !4604
  %conv30 = trunc i32 %10 to i8, !dbg !4604
  %11 = load i64, i64* %io_base.addr, align 8, !dbg !4605
  %add = add i64 %11, 76, !dbg !4606
  %conv31 = trunc i64 %add to i32, !dbg !4605
  call void @outb(i8 zeroext %conv30, i32 %conv31) #6, !dbg !4607
  ret void, !dbg !4608
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outb(i8 zeroext %value, i32 %port) #2 !dbg !4609 {
entry:
  %value.addr = alloca i8, align 1
  %port.addr = alloca i32, align 4
  store i8 %value, i8* %value.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %value.addr, metadata !4613, metadata !DIExpression()), !dbg !4614
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !4615, metadata !DIExpression()), !dbg !4614
  %0 = load i8, i8* %value.addr, align 1, !dbg !4614
  %1 = load i32, i32* %port.addr, align 4, !dbg !4614
  call void asm sideeffect "outb ${0:b}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i8 %0, i32 %1) #5, !dbg !4614, !srcloc !4616
  ret void, !dbg !4614
}

; Function Attrs: noredzone
declare dso_local %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device*) #1

; Function Attrs: noredzone
declare dso_local i8* @comedi_alloc_devpriv(%struct.comedi_device*, i64) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_pci_enable(%struct.comedi_device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @request_irq(i32 %irq, i32 (i32, i8*)* %handler, i64 %flags, i8* %name, i8* %dev) #2 !dbg !4617 {
entry:
  %irq.addr = alloca i32, align 4
  %handler.addr = alloca i32 (i32, i8*)*, align 8
  %flags.addr = alloca i64, align 8
  %name.addr = alloca i8*, align 8
  %dev.addr = alloca i8*, align 8
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !4625, metadata !DIExpression()), !dbg !4626
  store i32 (i32, i8*)* %handler, i32 (i32, i8*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i32, i8*)** %handler.addr, metadata !4627, metadata !DIExpression()), !dbg !4628
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !4629, metadata !DIExpression()), !dbg !4630
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !4631, metadata !DIExpression()), !dbg !4632
  store i8* %dev, i8** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev.addr, metadata !4633, metadata !DIExpression()), !dbg !4634
  %0 = load i32, i32* %irq.addr, align 4, !dbg !4635
  %1 = load i32 (i32, i8*)*, i32 (i32, i8*)** %handler.addr, align 8, !dbg !4636
  %2 = load i64, i64* %flags.addr, align 8, !dbg !4637
  %3 = load i8*, i8** %name.addr, align 8, !dbg !4638
  %4 = load i8*, i8** %dev.addr, align 8, !dbg !4639
  %call = call i32 @request_threaded_irq(i32 %0, i32 (i32, i8*)* %1, i32 (i32, i8*)* null, i64 %2, i8* %3, i8* %4) #6, !dbg !4640
  ret i32 %call, !dbg !4641
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci9111_interrupt(i32 %irq, i8* %p_device) #2 !dbg !4642 {
entry:
  %lock.addr.i83 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i83, metadata !4643, metadata !DIExpression()), !dbg !4648
  %flags.addr.i84 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i84, metadata !4654, metadata !DIExpression()), !dbg !4655
  %tmp.i85 = alloca i32, align 4
  %tmp8.i86 = alloca i32, align 4
  %lock.addr.i78 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i78, metadata !4643, metadata !DIExpression()), !dbg !4656
  %flags.addr.i79 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i79, metadata !4654, metadata !DIExpression()), !dbg !4660
  %tmp.i80 = alloca i32, align 4
  %tmp8.i81 = alloca i32, align 4
  %lock.addr.i76 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i76, metadata !4643, metadata !DIExpression()), !dbg !4661
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4654, metadata !DIExpression()), !dbg !4663
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4664, metadata !DIExpression()), !dbg !4669
  %retval = alloca i32, align 4
  %irq.addr = alloca i32, align 4
  %p_device.addr = alloca i8*, align 8
  %dev = alloca %struct.comedi_device*, align 8
  %dev_private = alloca %struct.pci9111_private_data*, align 8
  %s = alloca %struct.comedi_subdevice*, align 8
  %async = alloca %struct.comedi_async*, align 8
  %cmd = alloca %struct.comedi_cmd*, align 8
  %status = alloca i32, align 4
  %irq_flags = alloca i64, align 8
  %intcsr = alloca i8, align 1
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy7 = alloca i64, align 8
  %__dummy28 = alloca i64, align 8
  %tmp11 = alloca i32, align 4
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !4676, metadata !DIExpression()), !dbg !4677
  store i8* %p_device, i8** %p_device.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p_device.addr, metadata !4678, metadata !DIExpression()), !dbg !4679
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev, metadata !4680, metadata !DIExpression()), !dbg !4681
  %0 = load i8*, i8** %p_device.addr, align 8, !dbg !4682
  %1 = bitcast i8* %0 to %struct.comedi_device*, !dbg !4682
  store %struct.comedi_device* %1, %struct.comedi_device** %dev, align 8, !dbg !4681
  call void @llvm.dbg.declare(metadata %struct.pci9111_private_data** %dev_private, metadata !4683, metadata !DIExpression()), !dbg !4684
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4685
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %2, i32 0, i32 3, !dbg !4686
  %3 = load i8*, i8** %private, align 8, !dbg !4686
  %4 = bitcast i8* %3 to %struct.pci9111_private_data*, !dbg !4685
  store %struct.pci9111_private_data* %4, %struct.pci9111_private_data** %dev_private, align 8, !dbg !4684
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s, metadata !4687, metadata !DIExpression()), !dbg !4688
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4689
  %read_subdev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 21, !dbg !4690
  %6 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %read_subdev, align 8, !dbg !4690
  store %struct.comedi_subdevice* %6, %struct.comedi_subdevice** %s, align 8, !dbg !4688
  call void @llvm.dbg.declare(metadata %struct.comedi_async** %async, metadata !4691, metadata !DIExpression()), !dbg !4692
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd, metadata !4693, metadata !DIExpression()), !dbg !4694
  call void @llvm.dbg.declare(metadata i32* %status, metadata !4695, metadata !DIExpression()), !dbg !4696
  call void @llvm.dbg.declare(metadata i64* %irq_flags, metadata !4697, metadata !DIExpression()), !dbg !4698
  call void @llvm.dbg.declare(metadata i8* %intcsr, metadata !4699, metadata !DIExpression()), !dbg !4700
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4701
  %attached = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 10, !dbg !4703
  %bf.load = load i8, i8* %attached, align 8, !dbg !4703
  %bf.clear = and i8 %bf.load, 1, !dbg !4703
  %bf.cast = zext i8 %bf.clear to i32, !dbg !4703
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !4701
  br i1 %tobool, label %if.end, label %if.then, !dbg !4704

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4705
  br label %return, !dbg !4705

if.end:                                           ; preds = %entry
  %8 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4707
  %async1 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %8, i32 0, i32 7, !dbg !4708
  %9 = load %struct.comedi_async*, %struct.comedi_async** %async1, align 8, !dbg !4708
  store %struct.comedi_async* %9, %struct.comedi_async** %async, align 8, !dbg !4709
  %10 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4710
  %cmd2 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %10, i32 0, i32 17, !dbg !4711
  store %struct.comedi_cmd* %cmd2, %struct.comedi_cmd** %cmd, align 8, !dbg !4712
  br label %do.body, !dbg !4713

do.body:                                          ; preds = %if.end
  br label %do.body3, !dbg !4714

do.body3:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4715, metadata !DIExpression()), !dbg !4717
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4718, metadata !DIExpression()), !dbg !4717
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !4717
  %conv = zext i1 %cmp to i32, !dbg !4717
  store i32 1, i32* %tmp, align 4, !dbg !4717
  %11 = load i32, i32* %tmp, align 4, !dbg !4717
  br label %do.body4, !dbg !4719

do.body4:                                         ; preds = %do.body3
  br label %do.body5, !dbg !4720

do.body5:                                         ; preds = %do.body4
  br label %do.body6, !dbg !4721

do.body6:                                         ; preds = %do.body5
  call void @llvm.dbg.declare(metadata i64* %__dummy7, metadata !4723, metadata !DIExpression()), !dbg !4726
  call void @llvm.dbg.declare(metadata i64* %__dummy28, metadata !4727, metadata !DIExpression()), !dbg !4726
  %cmp9 = icmp eq i64* %__dummy7, %__dummy28, !dbg !4726
  %conv10 = zext i1 %cmp9 to i32, !dbg !4726
  store i32 1, i32* %tmp11, align 4, !dbg !4726
  %12 = load i32, i32* %tmp11, align 4, !dbg !4726
  %call = call i64 @arch_local_irq_save() #6, !dbg !4728
  store i64 %call, i64* %irq_flags, align 8, !dbg !4728
  br label %do.end, !dbg !4728

do.end:                                           ; preds = %do.body6
  br label %do.end12, !dbg !4721

do.end12:                                         ; preds = %do.end
  br label %do.body13, !dbg !4720

do.body13:                                        ; preds = %do.end12
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4729, !srcloc !4730
  br label %do.body14, !dbg !4729

do.body14:                                        ; preds = %do.body13
  %13 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4731
  %spinlock = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 11, !dbg !4731
  store %struct.spinlock* %spinlock, %struct.spinlock** %lock.addr.i, align 8
  %14 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4732
  %15 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %14, i32 0, i32 0, !dbg !4733
  %rlock.i = bitcast %union.anon.3* %15 to %struct.raw_spinlock*, !dbg !4733
  br label %do.end16, !dbg !4731

do.end16:                                         ; preds = %do.body14
  br label %do.end17, !dbg !4729

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !4720

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !4719

do.end19:                                         ; preds = %do.end18
  br label %do.end20, !dbg !4714

do.end20:                                         ; preds = %do.end19
  %16 = load %struct.pci9111_private_data*, %struct.pci9111_private_data** %dev_private, align 8, !dbg !4734
  %lcr_io_base = getelementptr inbounds %struct.pci9111_private_data, %struct.pci9111_private_data* %16, i32 0, i32 0, !dbg !4735
  %17 = load i64, i64* %lcr_io_base, align 8, !dbg !4735
  %add = add i64 %17, 76, !dbg !4736
  %conv21 = trunc i64 %add to i32, !dbg !4734
  %call22 = call zeroext i8 @inb(i32 %conv21) #6, !dbg !4737
  store i8 %call22, i8* %intcsr, align 1, !dbg !4738
  %18 = load i8, i8* %intcsr, align 1, !dbg !4739
  %conv23 = zext i8 %18 to i64, !dbg !4739
  %and = and i64 %conv23, 64, !dbg !4740
  %cmp24 = icmp ne i64 %and, 0, !dbg !4741
  br i1 %cmp24, label %land.lhs.true, label %if.then34, !dbg !4742

land.lhs.true:                                    ; preds = %do.end20
  %19 = load i8, i8* %intcsr, align 1, !dbg !4743
  %conv26 = zext i8 %19 to i64, !dbg !4743
  %and27 = and i64 %conv26, 5, !dbg !4744
  %cmp28 = icmp eq i64 %and27, 5, !dbg !4745
  br i1 %cmp28, label %if.end36, label %lor.lhs.false, !dbg !4746

lor.lhs.false:                                    ; preds = %land.lhs.true
  %20 = load i8, i8* %intcsr, align 1, !dbg !4747
  %conv30 = zext i8 %20 to i64, !dbg !4747
  %and31 = and i64 %conv30, 40, !dbg !4748
  %cmp32 = icmp eq i64 %and31, 40, !dbg !4749
  br i1 %cmp32, label %if.end36, label %if.then34, !dbg !4750

if.then34:                                        ; preds = %lor.lhs.false, %do.end20
  %21 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4751
  %spinlock35 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %21, i32 0, i32 11, !dbg !4752
  %22 = load i64, i64* %irq_flags, align 8, !dbg !4753
  store %struct.spinlock* %spinlock35, %struct.spinlock** %lock.addr.i78, align 8
  store i64 %22, i64* %flags.addr.i79, align 8
  call void @llvm.dbg.declare(metadata !290, metadata !4754, metadata !DIExpression()) #5, !dbg !4757
  call void @llvm.dbg.declare(metadata !290, metadata !4758, metadata !DIExpression()) #5, !dbg !4757
  store i32 1, i32* %tmp.i80, align 4, !dbg !4757
  %23 = load i32, i32* %tmp.i80, align 4, !dbg !4757
  call void @llvm.dbg.declare(metadata !290, metadata !4759, metadata !DIExpression()) #5, !dbg !4764
  call void @llvm.dbg.declare(metadata !290, metadata !4765, metadata !DIExpression()) #5, !dbg !4764
  store i32 1, i32* %tmp8.i81, align 4, !dbg !4764
  %24 = load i32, i32* %tmp8.i81, align 4, !dbg !4764
  %25 = load i64, i64* %flags.addr.i79, align 8, !dbg !4766
  call void @arch_local_irq_restore(i64 %25) #7, !dbg !4766
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4767, !srcloc !4769
  %26 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i78, align 8, !dbg !4770
  %27 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %26, i32 0, i32 0, !dbg !4770
  %rlock.i82 = bitcast %union.anon.3* %27 to %struct.raw_spinlock*, !dbg !4770
  store i32 0, i32* %retval, align 4, !dbg !4772
  br label %return, !dbg !4772

if.end36:                                         ; preds = %lor.lhs.false, %land.lhs.true
  %28 = load i8, i8* %intcsr, align 1, !dbg !4773
  %conv37 = zext i8 %28 to i64, !dbg !4773
  %and38 = and i64 %conv37, 5, !dbg !4774
  %cmp39 = icmp eq i64 %and38, 5, !dbg !4775
  br i1 %cmp39, label %if.then41, label %if.end61, !dbg !4776

if.then41:                                        ; preds = %if.end36
  %29 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4777
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %29, i32 0, i32 18, !dbg !4778
  %30 = load i64, i64* %iobase, align 8, !dbg !4778
  %add42 = add i64 %30, 8, !dbg !4779
  %conv43 = trunc i64 %add42 to i32, !dbg !4777
  %call44 = call zeroext i8 @inb(i32 %conv43) #6, !dbg !4780
  %conv45 = zext i8 %call44 to i32, !dbg !4780
  store i32 %conv45, i32* %status, align 4, !dbg !4781
  %31 = load i32, i32* %status, align 4, !dbg !4782
  %conv46 = zext i32 %31 to i64, !dbg !4782
  %and47 = and i64 %conv46, 64, !dbg !4783
  %tobool48 = icmp ne i64 %and47, 0, !dbg !4783
  br i1 %tobool48, label %if.end55, label %if.then49, !dbg !4784

if.then49:                                        ; preds = %if.then41
  %32 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4785
  %spinlock50 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %32, i32 0, i32 11, !dbg !4786
  %33 = load i64, i64* %irq_flags, align 8, !dbg !4787
  store %struct.spinlock* %spinlock50, %struct.spinlock** %lock.addr.i83, align 8
  store i64 %33, i64* %flags.addr.i84, align 8
  call void @llvm.dbg.declare(metadata !290, metadata !4754, metadata !DIExpression()) #5, !dbg !4788
  call void @llvm.dbg.declare(metadata !290, metadata !4758, metadata !DIExpression()) #5, !dbg !4788
  store i32 1, i32* %tmp.i85, align 4, !dbg !4788
  %34 = load i32, i32* %tmp.i85, align 4, !dbg !4788
  call void @llvm.dbg.declare(metadata !290, metadata !4759, metadata !DIExpression()) #5, !dbg !4789
  call void @llvm.dbg.declare(metadata !290, metadata !4765, metadata !DIExpression()) #5, !dbg !4789
  store i32 1, i32* %tmp8.i86, align 4, !dbg !4789
  %35 = load i32, i32* %tmp8.i86, align 4, !dbg !4789
  %36 = load i64, i64* %flags.addr.i84, align 8, !dbg !4790
  call void @arch_local_irq_restore(i64 %36) #7, !dbg !4790
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4791, !srcloc !4769
  %37 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i83, align 8, !dbg !4792
  %38 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %37, i32 0, i32 0, !dbg !4792
  %rlock.i87 = bitcast %union.anon.3* %38 to %struct.raw_spinlock*, !dbg !4792
  %39 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4793
  %iobase51 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %39, i32 0, i32 18, !dbg !4794
  %40 = load i64, i64* %iobase51, align 8, !dbg !4794
  %add52 = add i64 %40, 72, !dbg !4795
  %conv53 = trunc i64 %add52 to i32, !dbg !4793
  call void @outb(i8 zeroext 0, i32 %conv53) #6, !dbg !4796
  %41 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4797
  %events = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %41, i32 0, i32 16, !dbg !4798
  %42 = load i32, i32* %events, align 4, !dbg !4799
  %or = or i32 %42, 16, !dbg !4799
  store i32 %or, i32* %events, align 4, !dbg !4799
  %43 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4800
  %44 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4801
  %call54 = call i32 @comedi_handle_events(%struct.comedi_device* %43, %struct.comedi_subdevice* %44) #6, !dbg !4802
  store i32 1, i32* %retval, align 4, !dbg !4803
  br label %return, !dbg !4803

if.end55:                                         ; preds = %if.then41
  %45 = load i32, i32* %status, align 4, !dbg !4804
  %conv56 = zext i32 %45 to i64, !dbg !4804
  %and57 = and i64 %conv56, 32, !dbg !4806
  %tobool58 = icmp ne i64 %and57, 0, !dbg !4806
  br i1 %tobool58, label %if.end60, label %if.then59, !dbg !4807

if.then59:                                        ; preds = %if.end55
  %46 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4808
  %47 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4809
  call void @pci9111_handle_fifo_half_full(%struct.comedi_device* %46, %struct.comedi_subdevice* %47) #6, !dbg !4810
  br label %if.end60, !dbg !4810

if.end60:                                         ; preds = %if.then59, %if.end55
  br label %if.end61, !dbg !4811

if.end61:                                         ; preds = %if.end60, %if.end36
  %48 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !4812
  %stop_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %48, i32 0, i32 10, !dbg !4814
  %49 = load i32, i32* %stop_src, align 8, !dbg !4814
  %cmp62 = icmp eq i32 %49, 32, !dbg !4815
  br i1 %cmp62, label %land.lhs.true64, label %if.end70, !dbg !4816

land.lhs.true64:                                  ; preds = %if.end61
  %50 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4817
  %scans_done = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %50, i32 0, i32 11, !dbg !4818
  %51 = load i32, i32* %scans_done, align 8, !dbg !4818
  %52 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !4819
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %52, i32 0, i32 11, !dbg !4820
  %53 = load i32, i32* %stop_arg, align 4, !dbg !4820
  %cmp65 = icmp uge i32 %51, %53, !dbg !4821
  br i1 %cmp65, label %if.then67, label %if.end70, !dbg !4822

if.then67:                                        ; preds = %land.lhs.true64
  %54 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4823
  %events68 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %54, i32 0, i32 16, !dbg !4824
  %55 = load i32, i32* %events68, align 4, !dbg !4825
  %or69 = or i32 %55, 2, !dbg !4825
  store i32 %or69, i32* %events68, align 4, !dbg !4825
  br label %if.end70, !dbg !4823

if.end70:                                         ; preds = %if.then67, %land.lhs.true64, %if.end61
  %56 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4826
  %iobase71 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %56, i32 0, i32 18, !dbg !4827
  %57 = load i64, i64* %iobase71, align 8, !dbg !4827
  %add72 = add i64 %57, 72, !dbg !4828
  %conv73 = trunc i64 %add72 to i32, !dbg !4826
  call void @outb(i8 zeroext 0, i32 %conv73) #6, !dbg !4829
  %58 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4830
  %spinlock74 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %58, i32 0, i32 11, !dbg !4831
  %59 = load i64, i64* %irq_flags, align 8, !dbg !4832
  store %struct.spinlock* %spinlock74, %struct.spinlock** %lock.addr.i76, align 8
  store i64 %59, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !290, metadata !4754, metadata !DIExpression()) #5, !dbg !4833
  call void @llvm.dbg.declare(metadata !290, metadata !4758, metadata !DIExpression()) #5, !dbg !4833
  store i32 1, i32* %tmp.i, align 4, !dbg !4833
  %60 = load i32, i32* %tmp.i, align 4, !dbg !4833
  call void @llvm.dbg.declare(metadata !290, metadata !4759, metadata !DIExpression()) #5, !dbg !4834
  call void @llvm.dbg.declare(metadata !290, metadata !4765, metadata !DIExpression()) #5, !dbg !4834
  store i32 1, i32* %tmp8.i, align 4, !dbg !4834
  %61 = load i32, i32* %tmp8.i, align 4, !dbg !4834
  %62 = load i64, i64* %flags.addr.i, align 8, !dbg !4835
  call void @arch_local_irq_restore(i64 %62) #7, !dbg !4835
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4836, !srcloc !4769
  %63 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i76, align 8, !dbg !4837
  %64 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %63, i32 0, i32 0, !dbg !4837
  %rlock.i77 = bitcast %union.anon.3* %64 to %struct.raw_spinlock*, !dbg !4837
  %65 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4838
  %66 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4839
  %call75 = call i32 @comedi_handle_events(%struct.comedi_device* %65, %struct.comedi_subdevice* %66) #6, !dbg !4840
  store i32 1, i32* %retval, align 4, !dbg !4841
  br label %return, !dbg !4841

return:                                           ; preds = %if.end70, %if.then49, %if.then34, %if.then
  %67 = load i32, i32* %retval, align 4, !dbg !4842
  ret i32 %67, !dbg !4842
}

; Function Attrs: noredzone
declare dso_local %struct.comedi_8254* @comedi_8254_init(i64, i32, i32, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci9111_ai_insn_read(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !4843 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %chan = alloca i32, align 4
  %range = alloca i32, align 4
  %maxdata = alloca i32, align 4
  %invert = alloca i32, align 4
  %shift = alloca i32, align 4
  %status = alloca i32, align 4
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4844, metadata !DIExpression()), !dbg !4845
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4846, metadata !DIExpression()), !dbg !4847
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !4848, metadata !DIExpression()), !dbg !4849
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !4850, metadata !DIExpression()), !dbg !4851
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !4852, metadata !DIExpression()), !dbg !4853
  %0 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4854
  %chanspec = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %0, i32 0, i32 4, !dbg !4854
  %1 = load i32, i32* %chanspec, align 4, !dbg !4854
  %and = and i32 %1, 65535, !dbg !4854
  store i32 %and, i32* %chan, align 4, !dbg !4853
  call void @llvm.dbg.declare(metadata i32* %range, metadata !4855, metadata !DIExpression()), !dbg !4856
  %2 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4857
  %chanspec1 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %2, i32 0, i32 4, !dbg !4857
  %3 = load i32, i32* %chanspec1, align 4, !dbg !4857
  %shr = lshr i32 %3, 16, !dbg !4857
  %and2 = and i32 %shr, 255, !dbg !4857
  store i32 %and2, i32* %range, align 4, !dbg !4856
  call void @llvm.dbg.declare(metadata i32* %maxdata, metadata !4858, metadata !DIExpression()), !dbg !4859
  %4 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4860
  %maxdata3 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %4, i32 0, i32 13, !dbg !4861
  %5 = load i32, i32* %maxdata3, align 8, !dbg !4861
  store i32 %5, i32* %maxdata, align 4, !dbg !4859
  call void @llvm.dbg.declare(metadata i32* %invert, metadata !4862, metadata !DIExpression()), !dbg !4863
  %6 = load i32, i32* %maxdata, align 4, !dbg !4864
  %add = add i32 %6, 1, !dbg !4865
  %shr4 = lshr i32 %add, 1, !dbg !4866
  store i32 %shr4, i32* %invert, align 4, !dbg !4863
  call void @llvm.dbg.declare(metadata i32* %shift, metadata !4867, metadata !DIExpression()), !dbg !4868
  %7 = load i32, i32* %maxdata, align 4, !dbg !4869
  %cmp = icmp eq i32 %7, 65535, !dbg !4870
  %8 = zext i1 %cmp to i64, !dbg !4871
  %cond = select i1 %cmp, i32 0, i32 4, !dbg !4871
  store i32 %cond, i32* %shift, align 4, !dbg !4868
  call void @llvm.dbg.declare(metadata i32* %status, metadata !4872, metadata !DIExpression()), !dbg !4873
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4874, metadata !DIExpression()), !dbg !4875
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4876, metadata !DIExpression()), !dbg !4877
  %9 = load i32, i32* %chan, align 4, !dbg !4878
  %conv = trunc i32 %9 to i8, !dbg !4878
  %10 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4879
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 18, !dbg !4880
  %11 = load i64, i64* %iobase, align 8, !dbg !4880
  %add5 = add i64 %11, 6, !dbg !4881
  %conv6 = trunc i64 %add5 to i32, !dbg !4879
  call void @outb(i8 zeroext %conv, i32 %conv6) #6, !dbg !4882
  %12 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4883
  %iobase7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 18, !dbg !4884
  %13 = load i64, i64* %iobase7, align 8, !dbg !4884
  %add8 = add i64 %13, 8, !dbg !4885
  %conv9 = trunc i64 %add8 to i32, !dbg !4883
  %call = call zeroext i8 @inb(i32 %conv9) #6, !dbg !4886
  %conv10 = zext i8 %call to i32, !dbg !4886
  store i32 %conv10, i32* %status, align 4, !dbg !4887
  %14 = load i32, i32* %status, align 4, !dbg !4888
  %and11 = and i32 %14, 7, !dbg !4890
  %15 = load i32, i32* %range, align 4, !dbg !4891
  %cmp12 = icmp ne i32 %and11, %15, !dbg !4892
  br i1 %cmp12, label %if.then, label %if.end, !dbg !4893

if.then:                                          ; preds = %entry
  %16 = load i32, i32* %range, align 4, !dbg !4894
  %and14 = and i32 %16, 7, !dbg !4894
  %shl = shl i32 %and14, 0, !dbg !4894
  %conv15 = trunc i32 %shl to i8, !dbg !4894
  %17 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4896
  %iobase16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 18, !dbg !4897
  %18 = load i64, i64* %iobase16, align 8, !dbg !4897
  %add17 = add i64 %18, 8, !dbg !4898
  %conv18 = trunc i64 %add17 to i32, !dbg !4896
  call void @outb(i8 zeroext %conv15, i32 %conv18) #6, !dbg !4899
  br label %if.end, !dbg !4900

if.end:                                           ; preds = %if.then, %entry
  %19 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4901
  call void @pci9111_fifo_reset(%struct.comedi_device* %19) #6, !dbg !4902
  store i32 0, i32* %i, align 4, !dbg !4903
  br label %for.cond, !dbg !4905

for.cond:                                         ; preds = %for.inc, %if.end
  %20 = load i32, i32* %i, align 4, !dbg !4906
  %21 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4908
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %21, i32 0, i32 1, !dbg !4909
  %22 = load i32, i32* %n, align 4, !dbg !4909
  %cmp19 = icmp ult i32 %20, %22, !dbg !4910
  br i1 %cmp19, label %for.body, label %for.end, !dbg !4911

for.body:                                         ; preds = %for.cond
  %23 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4912
  %iobase21 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %23, i32 0, i32 18, !dbg !4914
  %24 = load i64, i64* %iobase21, align 8, !dbg !4914
  %add22 = add i64 %24, 14, !dbg !4915
  %conv23 = trunc i64 %add22 to i32, !dbg !4912
  call void @outb(i8 zeroext 0, i32 %conv23) #6, !dbg !4916
  %25 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4917
  %26 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4918
  %27 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4919
  %call24 = call i32 @comedi_timeout(%struct.comedi_device* %25, %struct.comedi_subdevice* %26, %struct.comedi_insn* %27, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i64)* @pci9111_ai_eoc, i64 0) #6, !dbg !4920
  store i32 %call24, i32* %ret, align 4, !dbg !4921
  %28 = load i32, i32* %ret, align 4, !dbg !4922
  %tobool = icmp ne i32 %28, 0, !dbg !4922
  br i1 %tobool, label %if.then25, label %if.end26, !dbg !4924

if.then25:                                        ; preds = %for.body
  %29 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4925
  call void @pci9111_fifo_reset(%struct.comedi_device* %29) #6, !dbg !4927
  %30 = load i32, i32* %ret, align 4, !dbg !4928
  store i32 %30, i32* %retval, align 4, !dbg !4929
  br label %return, !dbg !4929

if.end26:                                         ; preds = %for.body
  %31 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4930
  %iobase27 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %31, i32 0, i32 18, !dbg !4931
  %32 = load i64, i64* %iobase27, align 8, !dbg !4931
  %add28 = add i64 %32, 0, !dbg !4932
  %conv29 = trunc i64 %add28 to i32, !dbg !4930
  %call30 = call zeroext i16 @inw(i32 %conv29) #6, !dbg !4933
  %conv31 = zext i16 %call30 to i32, !dbg !4933
  %33 = load i32*, i32** %data.addr, align 8, !dbg !4934
  %34 = load i32, i32* %i, align 4, !dbg !4935
  %idxprom = sext i32 %34 to i64, !dbg !4934
  %arrayidx = getelementptr i32, i32* %33, i64 %idxprom, !dbg !4934
  store i32 %conv31, i32* %arrayidx, align 4, !dbg !4936
  %35 = load i32*, i32** %data.addr, align 8, !dbg !4937
  %36 = load i32, i32* %i, align 4, !dbg !4938
  %idxprom32 = sext i32 %36 to i64, !dbg !4937
  %arrayidx33 = getelementptr i32, i32* %35, i64 %idxprom32, !dbg !4937
  %37 = load i32, i32* %arrayidx33, align 4, !dbg !4937
  %38 = load i32, i32* %shift, align 4, !dbg !4939
  %shr34 = lshr i32 %37, %38, !dbg !4940
  %39 = load i32, i32* %maxdata, align 4, !dbg !4941
  %and35 = and i32 %shr34, %39, !dbg !4942
  %40 = load i32, i32* %invert, align 4, !dbg !4943
  %xor = xor i32 %and35, %40, !dbg !4944
  %41 = load i32*, i32** %data.addr, align 8, !dbg !4945
  %42 = load i32, i32* %i, align 4, !dbg !4946
  %idxprom36 = sext i32 %42 to i64, !dbg !4945
  %arrayidx37 = getelementptr i32, i32* %41, i64 %idxprom36, !dbg !4945
  store i32 %xor, i32* %arrayidx37, align 4, !dbg !4947
  br label %for.inc, !dbg !4948

for.inc:                                          ; preds = %if.end26
  %43 = load i32, i32* %i, align 4, !dbg !4949
  %inc = add i32 %43, 1, !dbg !4949
  store i32 %inc, i32* %i, align 4, !dbg !4949
  br label %for.cond, !dbg !4950, !llvm.loop !4951

for.end:                                          ; preds = %for.cond
  %44 = load i32, i32* %i, align 4, !dbg !4953
  store i32 %44, i32* %retval, align 4, !dbg !4954
  br label %return, !dbg !4954

return:                                           ; preds = %for.end, %if.then25
  %45 = load i32, i32* %retval, align 4, !dbg !4955
  ret i32 %45, !dbg !4955
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci9111_ai_do_cmd_test(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_cmd* %cmd) #2 !dbg !4956 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %cmd.addr = alloca %struct.comedi_cmd*, align 8
  %err = alloca i32, align 4
  %arg = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4957, metadata !DIExpression()), !dbg !4958
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4959, metadata !DIExpression()), !dbg !4960
  store %struct.comedi_cmd* %cmd, %struct.comedi_cmd** %cmd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd.addr, metadata !4961, metadata !DIExpression()), !dbg !4962
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4963, metadata !DIExpression()), !dbg !4964
  store i32 0, i32* %err, align 4, !dbg !4964
  call void @llvm.dbg.declare(metadata i32* %arg, metadata !4965, metadata !DIExpression()), !dbg !4966
  %0 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4967
  %start_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %0, i32 0, i32 2, !dbg !4968
  %call = call i32 @comedi_check_trigger_src(i32* %start_src, i32 2) #6, !dbg !4969
  %1 = load i32, i32* %err, align 4, !dbg !4970
  %or = or i32 %1, %call, !dbg !4970
  store i32 %or, i32* %err, align 4, !dbg !4970
  %2 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4971
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %2, i32 0, i32 4, !dbg !4972
  %call1 = call i32 @comedi_check_trigger_src(i32* %scan_begin_src, i32 84) #6, !dbg !4973
  %3 = load i32, i32* %err, align 4, !dbg !4974
  %or2 = or i32 %3, %call1, !dbg !4974
  store i32 %or2, i32* %err, align 4, !dbg !4974
  %4 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4975
  %convert_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %4, i32 0, i32 6, !dbg !4976
  %call3 = call i32 @comedi_check_trigger_src(i32* %convert_src, i32 80) #6, !dbg !4977
  %5 = load i32, i32* %err, align 4, !dbg !4978
  %or4 = or i32 %5, %call3, !dbg !4978
  store i32 %or4, i32* %err, align 4, !dbg !4978
  %6 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4979
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %6, i32 0, i32 8, !dbg !4980
  %call5 = call i32 @comedi_check_trigger_src(i32* %scan_end_src, i32 32) #6, !dbg !4981
  %7 = load i32, i32* %err, align 4, !dbg !4982
  %or6 = or i32 %7, %call5, !dbg !4982
  store i32 %or6, i32* %err, align 4, !dbg !4982
  %8 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4983
  %stop_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %8, i32 0, i32 10, !dbg !4984
  %call7 = call i32 @comedi_check_trigger_src(i32* %stop_src, i32 33) #6, !dbg !4985
  %9 = load i32, i32* %err, align 4, !dbg !4986
  %or8 = or i32 %9, %call7, !dbg !4986
  store i32 %or8, i32* %err, align 4, !dbg !4986
  %10 = load i32, i32* %err, align 4, !dbg !4987
  %tobool = icmp ne i32 %10, 0, !dbg !4987
  br i1 %tobool, label %if.then, label %if.end, !dbg !4989

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !4990
  br label %return, !dbg !4990

if.end:                                           ; preds = %entry
  %11 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4991
  %scan_begin_src9 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %11, i32 0, i32 4, !dbg !4992
  %12 = load i32, i32* %scan_begin_src9, align 8, !dbg !4992
  %call10 = call i32 @comedi_check_trigger_is_unique(i32 %12) #6, !dbg !4993
  %13 = load i32, i32* %err, align 4, !dbg !4994
  %or11 = or i32 %13, %call10, !dbg !4994
  store i32 %or11, i32* %err, align 4, !dbg !4994
  %14 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4995
  %convert_src12 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %14, i32 0, i32 6, !dbg !4996
  %15 = load i32, i32* %convert_src12, align 8, !dbg !4996
  %call13 = call i32 @comedi_check_trigger_is_unique(i32 %15) #6, !dbg !4997
  %16 = load i32, i32* %err, align 4, !dbg !4998
  %or14 = or i32 %16, %call13, !dbg !4998
  store i32 %or14, i32* %err, align 4, !dbg !4998
  %17 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4999
  %stop_src15 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %17, i32 0, i32 10, !dbg !5000
  %18 = load i32, i32* %stop_src15, align 8, !dbg !5000
  %call16 = call i32 @comedi_check_trigger_is_unique(i32 %18) #6, !dbg !5001
  %19 = load i32, i32* %err, align 4, !dbg !5002
  %or17 = or i32 %19, %call16, !dbg !5002
  store i32 %or17, i32* %err, align 4, !dbg !5002
  %20 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5003
  %scan_begin_src18 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %20, i32 0, i32 4, !dbg !5005
  %21 = load i32, i32* %scan_begin_src18, align 8, !dbg !5005
  %cmp = icmp ne i32 %21, 4, !dbg !5006
  br i1 %cmp, label %if.then19, label %if.end26, !dbg !5007

if.then19:                                        ; preds = %if.end
  %22 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5008
  %scan_begin_src20 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %22, i32 0, i32 4, !dbg !5011
  %23 = load i32, i32* %scan_begin_src20, align 8, !dbg !5011
  %24 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5012
  %convert_src21 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %24, i32 0, i32 6, !dbg !5013
  %25 = load i32, i32* %convert_src21, align 8, !dbg !5013
  %cmp22 = icmp ne i32 %23, %25, !dbg !5014
  br i1 %cmp22, label %if.then23, label %if.end25, !dbg !5015

if.then23:                                        ; preds = %if.then19
  %26 = load i32, i32* %err, align 4, !dbg !5016
  %or24 = or i32 %26, -22, !dbg !5016
  store i32 %or24, i32* %err, align 4, !dbg !5016
  br label %if.end25, !dbg !5017

if.end25:                                         ; preds = %if.then23, %if.then19
  br label %if.end26, !dbg !5018

if.end26:                                         ; preds = %if.end25, %if.end
  %27 = load i32, i32* %err, align 4, !dbg !5019
  %tobool27 = icmp ne i32 %27, 0, !dbg !5019
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !5021

if.then28:                                        ; preds = %if.end26
  store i32 2, i32* %retval, align 4, !dbg !5022
  br label %return, !dbg !5022

if.end29:                                         ; preds = %if.end26
  %28 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5023
  %start_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %28, i32 0, i32 3, !dbg !5024
  %call30 = call i32 @comedi_check_trigger_arg_is(i32* %start_arg, i32 0) #6, !dbg !5025
  %29 = load i32, i32* %err, align 4, !dbg !5026
  %or31 = or i32 %29, %call30, !dbg !5026
  store i32 %or31, i32* %err, align 4, !dbg !5026
  %30 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5027
  %convert_src32 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %30, i32 0, i32 6, !dbg !5029
  %31 = load i32, i32* %convert_src32, align 8, !dbg !5029
  %cmp33 = icmp eq i32 %31, 16, !dbg !5030
  br i1 %cmp33, label %if.then34, label %if.else, !dbg !5031

if.then34:                                        ; preds = %if.end29
  %32 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5032
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %32, i32 0, i32 7, !dbg !5034
  %call35 = call i32 @comedi_check_trigger_arg_min(i32* %convert_arg, i32 10000) #6, !dbg !5035
  %33 = load i32, i32* %err, align 4, !dbg !5036
  %or36 = or i32 %33, %call35, !dbg !5036
  store i32 %or36, i32* %err, align 4, !dbg !5036
  br label %if.end40, !dbg !5037

if.else:                                          ; preds = %if.end29
  %34 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5038
  %convert_arg37 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %34, i32 0, i32 7, !dbg !5040
  %call38 = call i32 @comedi_check_trigger_arg_is(i32* %convert_arg37, i32 0) #6, !dbg !5041
  %35 = load i32, i32* %err, align 4, !dbg !5042
  %or39 = or i32 %35, %call38, !dbg !5042
  store i32 %or39, i32* %err, align 4, !dbg !5042
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then34
  %36 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5043
  %scan_begin_src41 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %36, i32 0, i32 4, !dbg !5045
  %37 = load i32, i32* %scan_begin_src41, align 8, !dbg !5045
  %cmp42 = icmp eq i32 %37, 16, !dbg !5046
  br i1 %cmp42, label %if.then43, label %if.else46, !dbg !5047

if.then43:                                        ; preds = %if.end40
  %38 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5048
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %38, i32 0, i32 5, !dbg !5050
  %call44 = call i32 @comedi_check_trigger_arg_min(i32* %scan_begin_arg, i32 10000) #6, !dbg !5051
  %39 = load i32, i32* %err, align 4, !dbg !5052
  %or45 = or i32 %39, %call44, !dbg !5052
  store i32 %or45, i32* %err, align 4, !dbg !5052
  br label %if.end50, !dbg !5053

if.else46:                                        ; preds = %if.end40
  %40 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5054
  %scan_begin_arg47 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %40, i32 0, i32 5, !dbg !5056
  %call48 = call i32 @comedi_check_trigger_arg_is(i32* %scan_begin_arg47, i32 0) #6, !dbg !5057
  %41 = load i32, i32* %err, align 4, !dbg !5058
  %or49 = or i32 %41, %call48, !dbg !5058
  store i32 %or49, i32* %err, align 4, !dbg !5058
  br label %if.end50

if.end50:                                         ; preds = %if.else46, %if.then43
  %42 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5059
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %42, i32 0, i32 9, !dbg !5060
  %43 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5061
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %43, i32 0, i32 13, !dbg !5062
  %44 = load i32, i32* %chanlist_len, align 8, !dbg !5062
  %call51 = call i32 @comedi_check_trigger_arg_is(i32* %scan_end_arg, i32 %44) #6, !dbg !5063
  %45 = load i32, i32* %err, align 4, !dbg !5064
  %or52 = or i32 %45, %call51, !dbg !5064
  store i32 %or52, i32* %err, align 4, !dbg !5064
  %46 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5065
  %stop_src53 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %46, i32 0, i32 10, !dbg !5067
  %47 = load i32, i32* %stop_src53, align 8, !dbg !5067
  %cmp54 = icmp eq i32 %47, 32, !dbg !5068
  br i1 %cmp54, label %if.then55, label %if.else58, !dbg !5069

if.then55:                                        ; preds = %if.end50
  %48 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5070
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %48, i32 0, i32 11, !dbg !5071
  %call56 = call i32 @comedi_check_trigger_arg_min(i32* %stop_arg, i32 1) #6, !dbg !5072
  %49 = load i32, i32* %err, align 4, !dbg !5073
  %or57 = or i32 %49, %call56, !dbg !5073
  store i32 %or57, i32* %err, align 4, !dbg !5073
  br label %if.end62, !dbg !5074

if.else58:                                        ; preds = %if.end50
  %50 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5075
  %stop_arg59 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %50, i32 0, i32 11, !dbg !5076
  %call60 = call i32 @comedi_check_trigger_arg_is(i32* %stop_arg59, i32 0) #6, !dbg !5077
  %51 = load i32, i32* %err, align 4, !dbg !5078
  %or61 = or i32 %51, %call60, !dbg !5078
  store i32 %or61, i32* %err, align 4, !dbg !5078
  br label %if.end62

if.end62:                                         ; preds = %if.else58, %if.then55
  %52 = load i32, i32* %err, align 4, !dbg !5079
  %tobool63 = icmp ne i32 %52, 0, !dbg !5079
  br i1 %tobool63, label %if.then64, label %if.end65, !dbg !5081

if.then64:                                        ; preds = %if.end62
  store i32 3, i32* %retval, align 4, !dbg !5082
  br label %return, !dbg !5082

if.end65:                                         ; preds = %if.end62
  %53 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5083
  %convert_src66 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %53, i32 0, i32 6, !dbg !5085
  %54 = load i32, i32* %convert_src66, align 8, !dbg !5085
  %cmp67 = icmp eq i32 %54, 16, !dbg !5086
  br i1 %cmp67, label %if.then68, label %if.end73, !dbg !5087

if.then68:                                        ; preds = %if.end65
  %55 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5088
  %convert_arg69 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %55, i32 0, i32 7, !dbg !5090
  %56 = load i32, i32* %convert_arg69, align 4, !dbg !5090
  store i32 %56, i32* %arg, align 4, !dbg !5091
  %57 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5092
  %pacer = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %57, i32 0, i32 2, !dbg !5093
  %58 = load %struct.comedi_8254*, %struct.comedi_8254** %pacer, align 8, !dbg !5093
  %59 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5094
  %flags = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %59, i32 0, i32 1, !dbg !5095
  %60 = load i32, i32* %flags, align 4, !dbg !5095
  call void @comedi_8254_cascade_ns_to_timer(%struct.comedi_8254* %58, i32* %arg, i32 %60) #6, !dbg !5096
  %61 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5097
  %convert_arg70 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %61, i32 0, i32 7, !dbg !5098
  %62 = load i32, i32* %arg, align 4, !dbg !5099
  %call71 = call i32 @comedi_check_trigger_arg_is(i32* %convert_arg70, i32 %62) #6, !dbg !5100
  %63 = load i32, i32* %err, align 4, !dbg !5101
  %or72 = or i32 %63, %call71, !dbg !5101
  store i32 %or72, i32* %err, align 4, !dbg !5101
  br label %if.end73, !dbg !5102

if.end73:                                         ; preds = %if.then68, %if.end65
  %64 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5103
  %scan_begin_src74 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %64, i32 0, i32 4, !dbg !5105
  %65 = load i32, i32* %scan_begin_src74, align 8, !dbg !5105
  %cmp75 = icmp eq i32 %65, 16, !dbg !5106
  br i1 %cmp75, label %if.then76, label %if.end88, !dbg !5107

if.then76:                                        ; preds = %if.end73
  %66 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5108
  %chanlist_len77 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %66, i32 0, i32 13, !dbg !5110
  %67 = load i32, i32* %chanlist_len77, align 8, !dbg !5110
  %68 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5111
  %convert_arg78 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %68, i32 0, i32 7, !dbg !5112
  %69 = load i32, i32* %convert_arg78, align 4, !dbg !5112
  %mul = mul i32 %67, %69, !dbg !5113
  store i32 %mul, i32* %arg, align 4, !dbg !5114
  %70 = load i32, i32* %arg, align 4, !dbg !5115
  %71 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5117
  %scan_begin_arg79 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %71, i32 0, i32 5, !dbg !5118
  %72 = load i32, i32* %scan_begin_arg79, align 4, !dbg !5118
  %cmp80 = icmp ult i32 %70, %72, !dbg !5119
  br i1 %cmp80, label %if.then81, label %if.end84, !dbg !5120

if.then81:                                        ; preds = %if.then76
  %73 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5121
  %scan_begin_arg82 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %73, i32 0, i32 5, !dbg !5122
  %74 = load i32, i32* %scan_begin_arg82, align 4, !dbg !5122
  %75 = load i32, i32* %arg, align 4, !dbg !5123
  %div = udiv i32 %74, %75, !dbg !5124
  %76 = load i32, i32* %arg, align 4, !dbg !5125
  %mul83 = mul i32 %76, %div, !dbg !5125
  store i32 %mul83, i32* %arg, align 4, !dbg !5125
  br label %if.end84, !dbg !5126

if.end84:                                         ; preds = %if.then81, %if.then76
  %77 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5127
  %scan_begin_arg85 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %77, i32 0, i32 5, !dbg !5128
  %78 = load i32, i32* %arg, align 4, !dbg !5129
  %call86 = call i32 @comedi_check_trigger_arg_is(i32* %scan_begin_arg85, i32 %78) #6, !dbg !5130
  %79 = load i32, i32* %err, align 4, !dbg !5131
  %or87 = or i32 %79, %call86, !dbg !5131
  store i32 %or87, i32* %err, align 4, !dbg !5131
  br label %if.end88, !dbg !5132

if.end88:                                         ; preds = %if.end84, %if.end73
  %80 = load i32, i32* %err, align 4, !dbg !5133
  %tobool89 = icmp ne i32 %80, 0, !dbg !5133
  br i1 %tobool89, label %if.then90, label %if.end91, !dbg !5135

if.then90:                                        ; preds = %if.end88
  store i32 4, i32* %retval, align 4, !dbg !5136
  br label %return, !dbg !5136

if.end91:                                         ; preds = %if.end88
  %81 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5137
  %chanlist = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %81, i32 0, i32 12, !dbg !5139
  %82 = load i32*, i32** %chanlist, align 8, !dbg !5139
  %tobool92 = icmp ne i32* %82, null, !dbg !5137
  br i1 %tobool92, label %land.lhs.true, label %if.end98, !dbg !5140

land.lhs.true:                                    ; preds = %if.end91
  %83 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5141
  %chanlist_len93 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %83, i32 0, i32 13, !dbg !5142
  %84 = load i32, i32* %chanlist_len93, align 8, !dbg !5142
  %cmp94 = icmp ugt i32 %84, 0, !dbg !5143
  br i1 %cmp94, label %if.then95, label %if.end98, !dbg !5144

if.then95:                                        ; preds = %land.lhs.true
  %85 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5145
  %86 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5146
  %87 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5147
  %call96 = call i32 @pci9111_ai_check_chanlist(%struct.comedi_device* %85, %struct.comedi_subdevice* %86, %struct.comedi_cmd* %87) #6, !dbg !5148
  %88 = load i32, i32* %err, align 4, !dbg !5149
  %or97 = or i32 %88, %call96, !dbg !5149
  store i32 %or97, i32* %err, align 4, !dbg !5149
  br label %if.end98, !dbg !5150

if.end98:                                         ; preds = %if.then95, %land.lhs.true, %if.end91
  %89 = load i32, i32* %err, align 4, !dbg !5151
  %tobool99 = icmp ne i32 %89, 0, !dbg !5151
  br i1 %tobool99, label %if.then100, label %if.end101, !dbg !5153

if.then100:                                       ; preds = %if.end98
  store i32 5, i32* %retval, align 4, !dbg !5154
  br label %return, !dbg !5154

if.end101:                                        ; preds = %if.end98
  store i32 0, i32* %retval, align 4, !dbg !5155
  br label %return, !dbg !5155

return:                                           ; preds = %if.end101, %if.then100, %if.then90, %if.then64, %if.then28, %if.then
  %90 = load i32, i32* %retval, align 4, !dbg !5156
  ret i32 %90, !dbg !5156
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci9111_ai_do_cmd(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #2 !dbg !5157 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %dev_private = alloca %struct.pci9111_private_data*, align 8
  %cmd = alloca %struct.comedi_cmd*, align 8
  %last_chan = alloca i32, align 4
  %range0 = alloca i32, align 4
  %trig = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5158, metadata !DIExpression()), !dbg !5159
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5160, metadata !DIExpression()), !dbg !5161
  call void @llvm.dbg.declare(metadata %struct.pci9111_private_data** %dev_private, metadata !5162, metadata !DIExpression()), !dbg !5163
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5164
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5165
  %1 = load i8*, i8** %private, align 8, !dbg !5165
  %2 = bitcast i8* %1 to %struct.pci9111_private_data*, !dbg !5164
  store %struct.pci9111_private_data* %2, %struct.pci9111_private_data** %dev_private, align 8, !dbg !5163
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd, metadata !5166, metadata !DIExpression()), !dbg !5167
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5168
  %async = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %3, i32 0, i32 7, !dbg !5169
  %4 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5169
  %cmd1 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %4, i32 0, i32 17, !dbg !5170
  store %struct.comedi_cmd* %cmd1, %struct.comedi_cmd** %cmd, align 8, !dbg !5167
  call void @llvm.dbg.declare(metadata i32* %last_chan, metadata !5171, metadata !DIExpression()), !dbg !5172
  %5 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5173
  %chanlist = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %5, i32 0, i32 12, !dbg !5173
  %6 = load i32*, i32** %chanlist, align 8, !dbg !5173
  %7 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5173
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %7, i32 0, i32 13, !dbg !5173
  %8 = load i32, i32* %chanlist_len, align 8, !dbg !5173
  %sub = sub i32 %8, 1, !dbg !5173
  %idxprom = zext i32 %sub to i64, !dbg !5173
  %arrayidx = getelementptr i32, i32* %6, i64 %idxprom, !dbg !5173
  %9 = load i32, i32* %arrayidx, align 4, !dbg !5173
  %and = and i32 %9, 65535, !dbg !5173
  store i32 %and, i32* %last_chan, align 4, !dbg !5172
  call void @llvm.dbg.declare(metadata i32* %range0, metadata !5174, metadata !DIExpression()), !dbg !5175
  %10 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5176
  %chanlist2 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %10, i32 0, i32 12, !dbg !5176
  %11 = load i32*, i32** %chanlist2, align 8, !dbg !5176
  %arrayidx3 = getelementptr i32, i32* %11, i64 0, !dbg !5176
  %12 = load i32, i32* %arrayidx3, align 4, !dbg !5176
  %shr = lshr i32 %12, 16, !dbg !5176
  %and4 = and i32 %shr, 255, !dbg !5176
  store i32 %and4, i32* %range0, align 4, !dbg !5175
  call void @llvm.dbg.declare(metadata i32* %trig, metadata !5177, metadata !DIExpression()), !dbg !5178
  store i32 0, i32* %trig, align 4, !dbg !5178
  %13 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5179
  %chanlist_len5 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %13, i32 0, i32 13, !dbg !5181
  %14 = load i32, i32* %chanlist_len5, align 8, !dbg !5181
  %cmp = icmp ugt i32 %14, 1, !dbg !5182
  br i1 %cmp, label %if.then, label %if.end, !dbg !5183

if.then:                                          ; preds = %entry
  %15 = load i32, i32* %trig, align 4, !dbg !5184
  %conv = zext i32 %15 to i64, !dbg !5184
  %or = or i64 %conv, 1, !dbg !5184
  %conv6 = trunc i64 %or to i32, !dbg !5184
  store i32 %conv6, i32* %trig, align 4, !dbg !5184
  br label %if.end, !dbg !5185

if.end:                                           ; preds = %if.then, %entry
  %16 = load i32, i32* %last_chan, align 4, !dbg !5186
  %conv7 = trunc i32 %16 to i8, !dbg !5186
  %17 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5187
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 18, !dbg !5188
  %18 = load i64, i64* %iobase, align 8, !dbg !5188
  %add = add i64 %18, 6, !dbg !5189
  %conv8 = trunc i64 %add to i32, !dbg !5187
  call void @outb(i8 zeroext %conv7, i32 %conv8) #6, !dbg !5190
  %19 = load i32, i32* %range0, align 4, !dbg !5191
  %and9 = and i32 %19, 7, !dbg !5191
  %shl = shl i32 %and9, 0, !dbg !5191
  %conv10 = trunc i32 %shl to i8, !dbg !5191
  %20 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5192
  %iobase11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 18, !dbg !5193
  %21 = load i64, i64* %iobase11, align 8, !dbg !5193
  %add12 = add i64 %21, 8, !dbg !5194
  %conv13 = trunc i64 %add12 to i32, !dbg !5192
  call void @outb(i8 zeroext %conv10, i32 %conv13) #6, !dbg !5195
  %22 = load %struct.pci9111_private_data*, %struct.pci9111_private_data** %dev_private, align 8, !dbg !5196
  %scan_delay = getelementptr inbounds %struct.pci9111_private_data, %struct.pci9111_private_data* %22, i32 0, i32 1, !dbg !5197
  store i32 0, i32* %scan_delay, align 8, !dbg !5198
  %23 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5199
  %convert_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %23, i32 0, i32 6, !dbg !5201
  %24 = load i32, i32* %convert_src, align 8, !dbg !5201
  %cmp14 = icmp eq i32 %24, 16, !dbg !5202
  br i1 %cmp14, label %if.then16, label %if.else, !dbg !5203

if.then16:                                        ; preds = %if.end
  %25 = load i32, i32* %trig, align 4, !dbg !5204
  %conv17 = zext i32 %25 to i64, !dbg !5204
  %or18 = or i64 %conv17, 2, !dbg !5204
  %conv19 = trunc i64 %or18 to i32, !dbg !5204
  store i32 %conv19, i32* %trig, align 4, !dbg !5204
  %26 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5206
  %pacer = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %26, i32 0, i32 2, !dbg !5207
  %27 = load %struct.comedi_8254*, %struct.comedi_8254** %pacer, align 8, !dbg !5207
  call void @comedi_8254_update_divisors(%struct.comedi_8254* %27) #6, !dbg !5208
  %28 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5209
  %pacer20 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %28, i32 0, i32 2, !dbg !5210
  %29 = load %struct.comedi_8254*, %struct.comedi_8254** %pacer20, align 8, !dbg !5210
  call void @comedi_8254_pacer_enable(%struct.comedi_8254* %29, i32 1, i32 2, i1 zeroext true) #6, !dbg !5211
  %30 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5212
  call void @pci9111_fifo_reset(%struct.comedi_device* %30) #6, !dbg !5213
  %31 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5214
  call void @pci9111_interrupt_source_set(%struct.comedi_device* %31, i32 1, i32 0) #6, !dbg !5215
  %32 = load %struct.pci9111_private_data*, %struct.pci9111_private_data** %dev_private, align 8, !dbg !5216
  %lcr_io_base = getelementptr inbounds %struct.pci9111_private_data, %struct.pci9111_private_data* %32, i32 0, i32 0, !dbg !5217
  %33 = load i64, i64* %lcr_io_base, align 8, !dbg !5217
  call void @plx9050_interrupt_control(i64 %33, i1 zeroext true, i1 zeroext true, i1 zeroext false, i1 zeroext true, i1 zeroext true) #6, !dbg !5218
  %34 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5219
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %34, i32 0, i32 4, !dbg !5221
  %35 = load i32, i32* %scan_begin_src, align 8, !dbg !5221
  %cmp21 = icmp eq i32 %35, 16, !dbg !5222
  br i1 %cmp21, label %if.then23, label %if.end27, !dbg !5223

if.then23:                                        ; preds = %if.then16
  %36 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5224
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %36, i32 0, i32 5, !dbg !5226
  %37 = load i32, i32* %scan_begin_arg, align 4, !dbg !5226
  %38 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5227
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %38, i32 0, i32 7, !dbg !5228
  %39 = load i32, i32* %convert_arg, align 4, !dbg !5228
  %40 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5229
  %chanlist_len24 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %40, i32 0, i32 13, !dbg !5230
  %41 = load i32, i32* %chanlist_len24, align 8, !dbg !5230
  %mul = mul i32 %39, %41, !dbg !5231
  %div = udiv i32 %37, %mul, !dbg !5232
  %sub25 = sub i32 %div, 1, !dbg !5233
  %42 = load %struct.pci9111_private_data*, %struct.pci9111_private_data** %dev_private, align 8, !dbg !5234
  %scan_delay26 = getelementptr inbounds %struct.pci9111_private_data, %struct.pci9111_private_data* %42, i32 0, i32 1, !dbg !5235
  store i32 %sub25, i32* %scan_delay26, align 8, !dbg !5236
  br label %if.end27, !dbg !5237

if.end27:                                         ; preds = %if.then23, %if.then16
  br label %if.end32, !dbg !5238

if.else:                                          ; preds = %if.end
  %43 = load i32, i32* %trig, align 4, !dbg !5239
  %conv28 = zext i32 %43 to i64, !dbg !5239
  %or29 = or i64 %conv28, 4, !dbg !5239
  %conv30 = trunc i64 %or29 to i32, !dbg !5239
  store i32 %conv30, i32* %trig, align 4, !dbg !5239
  %44 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5241
  call void @pci9111_fifo_reset(%struct.comedi_device* %44) #6, !dbg !5242
  %45 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5243
  call void @pci9111_interrupt_source_set(%struct.comedi_device* %45, i32 1, i32 0) #6, !dbg !5244
  %46 = load %struct.pci9111_private_data*, %struct.pci9111_private_data** %dev_private, align 8, !dbg !5245
  %lcr_io_base31 = getelementptr inbounds %struct.pci9111_private_data, %struct.pci9111_private_data* %46, i32 0, i32 0, !dbg !5246
  %47 = load i64, i64* %lcr_io_base31, align 8, !dbg !5246
  call void @plx9050_interrupt_control(i64 %47, i1 zeroext true, i1 zeroext true, i1 zeroext false, i1 zeroext true, i1 zeroext true) #6, !dbg !5247
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.end27
  %48 = load i32, i32* %trig, align 4, !dbg !5248
  %conv33 = trunc i32 %48 to i8, !dbg !5248
  %49 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5249
  %iobase34 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %49, i32 0, i32 18, !dbg !5250
  %50 = load i64, i64* %iobase34, align 8, !dbg !5250
  %add35 = add i64 %50, 10, !dbg !5251
  %conv36 = trunc i64 %add35 to i32, !dbg !5249
  call void @outb(i8 zeroext %conv33, i32 %conv36) #6, !dbg !5252
  %51 = load %struct.pci9111_private_data*, %struct.pci9111_private_data** %dev_private, align 8, !dbg !5253
  %chunk_counter = getelementptr inbounds %struct.pci9111_private_data, %struct.pci9111_private_data* %51, i32 0, i32 2, !dbg !5254
  store i32 0, i32* %chunk_counter, align 4, !dbg !5255
  %52 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5256
  %chanlist_len37 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %52, i32 0, i32 13, !dbg !5257
  %53 = load i32, i32* %chanlist_len37, align 8, !dbg !5257
  %54 = load %struct.pci9111_private_data*, %struct.pci9111_private_data** %dev_private, align 8, !dbg !5258
  %scan_delay38 = getelementptr inbounds %struct.pci9111_private_data, %struct.pci9111_private_data* %54, i32 0, i32 1, !dbg !5259
  %55 = load i32, i32* %scan_delay38, align 8, !dbg !5259
  %add39 = add i32 1, %55, !dbg !5260
  %mul40 = mul i32 %53, %add39, !dbg !5261
  %56 = load %struct.pci9111_private_data*, %struct.pci9111_private_data** %dev_private, align 8, !dbg !5262
  %chunk_num_samples = getelementptr inbounds %struct.pci9111_private_data, %struct.pci9111_private_data* %56, i32 0, i32 3, !dbg !5263
  store i32 %mul40, i32* %chunk_num_samples, align 8, !dbg !5264
  ret i32 0, !dbg !5265
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci9111_ai_cancel(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #2 !dbg !5266 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %dev_private = alloca %struct.pci9111_private_data*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5267, metadata !DIExpression()), !dbg !5268
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5269, metadata !DIExpression()), !dbg !5270
  call void @llvm.dbg.declare(metadata %struct.pci9111_private_data** %dev_private, metadata !5271, metadata !DIExpression()), !dbg !5272
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5273
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5274
  %1 = load i8*, i8** %private, align 8, !dbg !5274
  %2 = bitcast i8* %1 to %struct.pci9111_private_data*, !dbg !5273
  store %struct.pci9111_private_data* %2, %struct.pci9111_private_data** %dev_private, align 8, !dbg !5272
  %3 = load %struct.pci9111_private_data*, %struct.pci9111_private_data** %dev_private, align 8, !dbg !5275
  %lcr_io_base = getelementptr inbounds %struct.pci9111_private_data, %struct.pci9111_private_data* %3, i32 0, i32 0, !dbg !5276
  %4 = load i64, i64* %lcr_io_base, align 8, !dbg !5276
  call void @plx9050_interrupt_control(i64 %4, i1 zeroext true, i1 zeroext true, i1 zeroext true, i1 zeroext true, i1 zeroext false) #6, !dbg !5277
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5278
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 18, !dbg !5279
  %6 = load i64, i64* %iobase, align 8, !dbg !5279
  %add = add i64 %6, 10, !dbg !5280
  %conv = trunc i64 %add to i32, !dbg !5278
  call void @outb(i8 zeroext 0, i32 %conv) #6, !dbg !5281
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5282
  call void @pci9111_fifo_reset(%struct.comedi_device* %7) #6, !dbg !5283
  ret i32 0, !dbg !5284
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pci9111_ai_munge(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, i8* %data, i32 %num_bytes, i32 %start_chan_index) #2 !dbg !5285 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %data.addr = alloca i8*, align 8
  %num_bytes.addr = alloca i32, align 4
  %start_chan_index.addr = alloca i32, align 4
  %array = alloca i16*, align 8
  %maxdata = alloca i32, align 4
  %invert = alloca i32, align 4
  %shift = alloca i32, align 4
  %num_samples = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5286, metadata !DIExpression()), !dbg !5287
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5288, metadata !DIExpression()), !dbg !5289
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5290, metadata !DIExpression()), !dbg !5291
  store i32 %num_bytes, i32* %num_bytes.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_bytes.addr, metadata !5292, metadata !DIExpression()), !dbg !5293
  store i32 %start_chan_index, i32* %start_chan_index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %start_chan_index.addr, metadata !5294, metadata !DIExpression()), !dbg !5295
  call void @llvm.dbg.declare(metadata i16** %array, metadata !5296, metadata !DIExpression()), !dbg !5297
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5298
  %1 = bitcast i8* %0 to i16*, !dbg !5298
  store i16* %1, i16** %array, align 8, !dbg !5297
  call void @llvm.dbg.declare(metadata i32* %maxdata, metadata !5299, metadata !DIExpression()), !dbg !5300
  %2 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5301
  %maxdata1 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %2, i32 0, i32 13, !dbg !5302
  %3 = load i32, i32* %maxdata1, align 8, !dbg !5302
  store i32 %3, i32* %maxdata, align 4, !dbg !5300
  call void @llvm.dbg.declare(metadata i32* %invert, metadata !5303, metadata !DIExpression()), !dbg !5304
  %4 = load i32, i32* %maxdata, align 4, !dbg !5305
  %add = add i32 %4, 1, !dbg !5306
  %shr = lshr i32 %add, 1, !dbg !5307
  store i32 %shr, i32* %invert, align 4, !dbg !5304
  call void @llvm.dbg.declare(metadata i32* %shift, metadata !5308, metadata !DIExpression()), !dbg !5309
  %5 = load i32, i32* %maxdata, align 4, !dbg !5310
  %cmp = icmp eq i32 %5, 65535, !dbg !5311
  %6 = zext i1 %cmp to i64, !dbg !5312
  %cond = select i1 %cmp, i32 0, i32 4, !dbg !5312
  store i32 %cond, i32* %shift, align 4, !dbg !5309
  call void @llvm.dbg.declare(metadata i32* %num_samples, metadata !5313, metadata !DIExpression()), !dbg !5314
  %7 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5315
  %8 = load i32, i32* %num_bytes.addr, align 4, !dbg !5316
  %call = call i32 @comedi_bytes_to_samples(%struct.comedi_subdevice* %7, i32 %8) #6, !dbg !5317
  store i32 %call, i32* %num_samples, align 4, !dbg !5314
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5318, metadata !DIExpression()), !dbg !5319
  store i32 0, i32* %i, align 4, !dbg !5320
  br label %for.cond, !dbg !5322

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %i, align 4, !dbg !5323
  %10 = load i32, i32* %num_samples, align 4, !dbg !5325
  %cmp2 = icmp ult i32 %9, %10, !dbg !5326
  br i1 %cmp2, label %for.body, label %for.end, !dbg !5327

for.body:                                         ; preds = %for.cond
  %11 = load i16*, i16** %array, align 8, !dbg !5328
  %12 = load i32, i32* %i, align 4, !dbg !5329
  %idxprom = zext i32 %12 to i64, !dbg !5328
  %arrayidx = getelementptr i16, i16* %11, i64 %idxprom, !dbg !5328
  %13 = load i16, i16* %arrayidx, align 2, !dbg !5328
  %conv = zext i16 %13 to i32, !dbg !5328
  %14 = load i32, i32* %shift, align 4, !dbg !5330
  %shr3 = ashr i32 %conv, %14, !dbg !5331
  %15 = load i32, i32* %maxdata, align 4, !dbg !5332
  %and = and i32 %shr3, %15, !dbg !5333
  %16 = load i32, i32* %invert, align 4, !dbg !5334
  %xor = xor i32 %and, %16, !dbg !5335
  %conv4 = trunc i32 %xor to i16, !dbg !5336
  %17 = load i16*, i16** %array, align 8, !dbg !5337
  %18 = load i32, i32* %i, align 4, !dbg !5338
  %idxprom5 = zext i32 %18 to i64, !dbg !5337
  %arrayidx6 = getelementptr i16, i16* %17, i64 %idxprom5, !dbg !5337
  store i16 %conv4, i16* %arrayidx6, align 2, !dbg !5339
  br label %for.inc, !dbg !5337

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4, !dbg !5340
  %inc = add i32 %19, 1, !dbg !5340
  store i32 %inc, i32* %i, align 4, !dbg !5340
  br label %for.cond, !dbg !5341, !llvm.loop !5342

for.end:                                          ; preds = %for.cond
  ret void, !dbg !5344
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci9111_ao_insn_write(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !5345 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %chan = alloca i32, align 4
  %val = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5346, metadata !DIExpression()), !dbg !5347
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5348, metadata !DIExpression()), !dbg !5349
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5350, metadata !DIExpression()), !dbg !5351
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !5352, metadata !DIExpression()), !dbg !5353
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !5354, metadata !DIExpression()), !dbg !5355
  %0 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5356
  %chanspec = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %0, i32 0, i32 4, !dbg !5356
  %1 = load i32, i32* %chanspec, align 4, !dbg !5356
  %and = and i32 %1, 65535, !dbg !5356
  store i32 %and, i32* %chan, align 4, !dbg !5355
  call void @llvm.dbg.declare(metadata i32* %val, metadata !5357, metadata !DIExpression()), !dbg !5358
  %2 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5359
  %readback = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %2, i32 0, i32 32, !dbg !5360
  %3 = load i32*, i32** %readback, align 8, !dbg !5360
  %4 = load i32, i32* %chan, align 4, !dbg !5361
  %idxprom = zext i32 %4 to i64, !dbg !5359
  %arrayidx = getelementptr i32, i32* %3, i64 %idxprom, !dbg !5359
  %5 = load i32, i32* %arrayidx, align 4, !dbg !5359
  store i32 %5, i32* %val, align 4, !dbg !5358
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5362, metadata !DIExpression()), !dbg !5363
  store i32 0, i32* %i, align 4, !dbg !5364
  br label %for.cond, !dbg !5366

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4, !dbg !5367
  %7 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5369
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %7, i32 0, i32 1, !dbg !5370
  %8 = load i32, i32* %n, align 4, !dbg !5370
  %cmp = icmp ult i32 %6, %8, !dbg !5371
  br i1 %cmp, label %for.body, label %for.end, !dbg !5372

for.body:                                         ; preds = %for.cond
  %9 = load i32*, i32** %data.addr, align 8, !dbg !5373
  %10 = load i32, i32* %i, align 4, !dbg !5375
  %idxprom1 = sext i32 %10 to i64, !dbg !5373
  %arrayidx2 = getelementptr i32, i32* %9, i64 %idxprom1, !dbg !5373
  %11 = load i32, i32* %arrayidx2, align 4, !dbg !5373
  store i32 %11, i32* %val, align 4, !dbg !5376
  %12 = load i32, i32* %val, align 4, !dbg !5377
  %conv = trunc i32 %12 to i16, !dbg !5377
  %13 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5378
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 18, !dbg !5379
  %14 = load i64, i64* %iobase, align 8, !dbg !5379
  %add = add i64 %14, 0, !dbg !5380
  %conv3 = trunc i64 %add to i32, !dbg !5378
  call void @outw(i16 zeroext %conv, i32 %conv3) #6, !dbg !5381
  br label %for.inc, !dbg !5382

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !dbg !5383
  %inc = add i32 %15, 1, !dbg !5383
  store i32 %inc, i32* %i, align 4, !dbg !5383
  br label %for.cond, !dbg !5384, !llvm.loop !5385

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %val, align 4, !dbg !5387
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5388
  %readback4 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %17, i32 0, i32 32, !dbg !5389
  %18 = load i32*, i32** %readback4, align 8, !dbg !5389
  %19 = load i32, i32* %chan, align 4, !dbg !5390
  %idxprom5 = zext i32 %19 to i64, !dbg !5388
  %arrayidx6 = getelementptr i32, i32* %18, i64 %idxprom5, !dbg !5388
  store i32 %16, i32* %arrayidx6, align 4, !dbg !5391
  %20 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5392
  %n7 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %20, i32 0, i32 1, !dbg !5393
  %21 = load i32, i32* %n7, align 4, !dbg !5393
  ret i32 %21, !dbg !5394
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_alloc_subdev_readback(%struct.comedi_subdevice*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci9111_di_insn_bits(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !5395 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5396, metadata !DIExpression()), !dbg !5397
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5398, metadata !DIExpression()), !dbg !5399
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5400, metadata !DIExpression()), !dbg !5401
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !5402, metadata !DIExpression()), !dbg !5403
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5404
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 18, !dbg !5405
  %1 = load i64, i64* %iobase, align 8, !dbg !5405
  %add = add i64 %1, 2, !dbg !5406
  %conv = trunc i64 %add to i32, !dbg !5404
  %call = call zeroext i16 @inw(i32 %conv) #6, !dbg !5407
  %conv1 = zext i16 %call to i32, !dbg !5407
  %2 = load i32*, i32** %data.addr, align 8, !dbg !5408
  %arrayidx = getelementptr i32, i32* %2, i64 1, !dbg !5408
  store i32 %conv1, i32* %arrayidx, align 4, !dbg !5409
  %3 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5410
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %3, i32 0, i32 1, !dbg !5411
  %4 = load i32, i32* %n, align 4, !dbg !5411
  ret i32 %4, !dbg !5412
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci9111_do_insn_bits(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !5413 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5414, metadata !DIExpression()), !dbg !5415
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5416, metadata !DIExpression()), !dbg !5417
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5418, metadata !DIExpression()), !dbg !5419
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !5420, metadata !DIExpression()), !dbg !5421
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5422
  %1 = load i32*, i32** %data.addr, align 8, !dbg !5424
  %call = call i32 @comedi_dio_update_state(%struct.comedi_subdevice* %0, i32* %1) #6, !dbg !5425
  %tobool = icmp ne i32 %call, 0, !dbg !5425
  br i1 %tobool, label %if.then, label %if.end, !dbg !5426

if.then:                                          ; preds = %entry
  %2 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5427
  %state = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %2, i32 0, i32 29, !dbg !5428
  %3 = load i32, i32* %state, align 4, !dbg !5428
  %conv = trunc i32 %3 to i16, !dbg !5427
  %4 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5429
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 18, !dbg !5430
  %5 = load i64, i64* %iobase, align 8, !dbg !5430
  %add = add i64 %5, 2, !dbg !5431
  %conv1 = trunc i64 %add to i32, !dbg !5429
  call void @outw(i16 zeroext %conv, i32 %conv1) #6, !dbg !5432
  br label %if.end, !dbg !5432

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5433
  %state2 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %6, i32 0, i32 29, !dbg !5434
  %7 = load i32, i32* %state2, align 4, !dbg !5434
  %8 = load i32*, i32** %data.addr, align 8, !dbg !5435
  %arrayidx = getelementptr i32, i32* %8, i64 1, !dbg !5435
  store i32 %7, i32* %arrayidx, align 4, !dbg !5436
  %9 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5437
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %9, i32 0, i32 1, !dbg !5438
  %10 = load i32, i32* %n, align 4, !dbg !5438
  ret i32 %10, !dbg !5439
}

; Function Attrs: noredzone
declare dso_local i32 @request_threaded_irq(i32, i32 (i32, i8*)*, i32 (i32, i8*)*, i64, i8*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #2 !dbg !5440 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !5444, metadata !DIExpression()), !dbg !5445
  %call = call i64 @arch_local_save_flags() #6, !dbg !5446
  store i64 %call, i64* %f, align 8, !dbg !5447
  call void @arch_local_irq_disable() #6, !dbg !5448
  %0 = load i64, i64* %f, align 8, !dbg !5449
  ret i64 %0, !dbg !5450
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @inb(i32 %port) #2 !dbg !5451 {
entry:
  %port.addr = alloca i32, align 4
  %value = alloca i8, align 1
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5454, metadata !DIExpression()), !dbg !5455
  call void @llvm.dbg.declare(metadata i8* %value, metadata !5456, metadata !DIExpression()), !dbg !5455
  %0 = load i32, i32* %port.addr, align 4, !dbg !5455
  %1 = call i8 asm sideeffect "inb ${1:w}, ${0:b}", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #5, !dbg !5455, !srcloc !5457
  store i8 %1, i8* %value, align 1, !dbg !5455
  %2 = load i8, i8* %value, align 1, !dbg !5455
  ret i8 %2, !dbg !5455
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pci9111_handle_fifo_half_full(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #2 !dbg !5458 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %devpriv = alloca %struct.pci9111_private_data*, align 8
  %cmd = alloca %struct.comedi_cmd*, align 8
  %buf = alloca i16*, align 8
  %samples = alloca i32, align 4
  %pos = alloca i32, align 4
  %to_read = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5461, metadata !DIExpression()), !dbg !5462
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5463, metadata !DIExpression()), !dbg !5464
  call void @llvm.dbg.declare(metadata %struct.pci9111_private_data** %devpriv, metadata !5465, metadata !DIExpression()), !dbg !5466
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5467
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5468
  %1 = load i8*, i8** %private, align 8, !dbg !5468
  %2 = bitcast i8* %1 to %struct.pci9111_private_data*, !dbg !5467
  store %struct.pci9111_private_data* %2, %struct.pci9111_private_data** %devpriv, align 8, !dbg !5466
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd, metadata !5469, metadata !DIExpression()), !dbg !5470
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5471
  %async = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %3, i32 0, i32 7, !dbg !5472
  %4 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5472
  %cmd1 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %4, i32 0, i32 17, !dbg !5473
  store %struct.comedi_cmd* %cmd1, %struct.comedi_cmd** %cmd, align 8, !dbg !5470
  call void @llvm.dbg.declare(metadata i16** %buf, metadata !5474, metadata !DIExpression()), !dbg !5475
  %5 = load %struct.pci9111_private_data*, %struct.pci9111_private_data** %devpriv, align 8, !dbg !5476
  %ai_bounce_buffer = getelementptr inbounds %struct.pci9111_private_data, %struct.pci9111_private_data* %5, i32 0, i32 4, !dbg !5477
  %arraydecay = getelementptr inbounds [1024 x i16], [1024 x i16]* %ai_bounce_buffer, i64 0, i64 0, !dbg !5476
  store i16* %arraydecay, i16** %buf, align 8, !dbg !5475
  call void @llvm.dbg.declare(metadata i32* %samples, metadata !5478, metadata !DIExpression()), !dbg !5479
  %6 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5480
  %call = call i32 @comedi_nsamples_left(%struct.comedi_subdevice* %6, i32 512) #6, !dbg !5481
  store i32 %call, i32* %samples, align 4, !dbg !5482
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5483
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 18, !dbg !5484
  %8 = load i64, i64* %iobase, align 8, !dbg !5484
  %add = add i64 %8, 0, !dbg !5485
  %conv = trunc i64 %add to i32, !dbg !5483
  %9 = load i16*, i16** %buf, align 8, !dbg !5486
  %10 = bitcast i16* %9 to i8*, !dbg !5486
  %11 = load i32, i32* %samples, align 4, !dbg !5487
  %conv2 = zext i32 %11 to i64, !dbg !5487
  call void @insw(i32 %conv, i8* %10, i64 %conv2) #6, !dbg !5488
  %12 = load %struct.pci9111_private_data*, %struct.pci9111_private_data** %devpriv, align 8, !dbg !5489
  %scan_delay = getelementptr inbounds %struct.pci9111_private_data, %struct.pci9111_private_data* %12, i32 0, i32 1, !dbg !5491
  %13 = load i32, i32* %scan_delay, align 8, !dbg !5491
  %cmp = icmp ult i32 %13, 1, !dbg !5492
  br i1 %cmp, label %if.then, label %if.else, !dbg !5493

if.then:                                          ; preds = %entry
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5494
  %15 = load i16*, i16** %buf, align 8, !dbg !5496
  %16 = bitcast i16* %15 to i8*, !dbg !5496
  %17 = load i32, i32* %samples, align 4, !dbg !5497
  %call4 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %14, i8* %16, i32 %17) #6, !dbg !5498
  br label %if.end38, !dbg !5499

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %pos, metadata !5500, metadata !DIExpression()), !dbg !5502
  store i32 0, i32* %pos, align 4, !dbg !5502
  call void @llvm.dbg.declare(metadata i32* %to_read, metadata !5503, metadata !DIExpression()), !dbg !5504
  br label %while.cond, !dbg !5505

while.cond:                                       ; preds = %if.end37, %if.else
  %18 = load i32, i32* %pos, align 4, !dbg !5506
  %19 = load i32, i32* %samples, align 4, !dbg !5507
  %cmp5 = icmp ult i32 %18, %19, !dbg !5508
  br i1 %cmp5, label %while.body, label %while.end, !dbg !5505

while.body:                                       ; preds = %while.cond
  %20 = load %struct.pci9111_private_data*, %struct.pci9111_private_data** %devpriv, align 8, !dbg !5509
  %chunk_counter = getelementptr inbounds %struct.pci9111_private_data, %struct.pci9111_private_data* %20, i32 0, i32 2, !dbg !5512
  %21 = load i32, i32* %chunk_counter, align 4, !dbg !5512
  %22 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5513
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %22, i32 0, i32 13, !dbg !5514
  %23 = load i32, i32* %chanlist_len, align 8, !dbg !5514
  %cmp7 = icmp ult i32 %21, %23, !dbg !5515
  br i1 %cmp7, label %if.then9, label %if.else18, !dbg !5516

if.then9:                                         ; preds = %while.body
  %24 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5517
  %chanlist_len10 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %24, i32 0, i32 13, !dbg !5519
  %25 = load i32, i32* %chanlist_len10, align 8, !dbg !5519
  %26 = load %struct.pci9111_private_data*, %struct.pci9111_private_data** %devpriv, align 8, !dbg !5520
  %chunk_counter11 = getelementptr inbounds %struct.pci9111_private_data, %struct.pci9111_private_data* %26, i32 0, i32 2, !dbg !5521
  %27 = load i32, i32* %chunk_counter11, align 4, !dbg !5521
  %sub = sub i32 %25, %27, !dbg !5522
  store i32 %sub, i32* %to_read, align 4, !dbg !5523
  %28 = load i32, i32* %to_read, align 4, !dbg !5524
  %29 = load i32, i32* %samples, align 4, !dbg !5526
  %30 = load i32, i32* %pos, align 4, !dbg !5527
  %sub12 = sub i32 %29, %30, !dbg !5528
  %cmp13 = icmp ugt i32 %28, %sub12, !dbg !5529
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !5530

if.then15:                                        ; preds = %if.then9
  %31 = load i32, i32* %samples, align 4, !dbg !5531
  %32 = load i32, i32* %pos, align 4, !dbg !5532
  %sub16 = sub i32 %31, %32, !dbg !5533
  store i32 %sub16, i32* %to_read, align 4, !dbg !5534
  br label %if.end, !dbg !5535

if.end:                                           ; preds = %if.then15, %if.then9
  %33 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5536
  %34 = load i16*, i16** %buf, align 8, !dbg !5537
  %35 = load i32, i32* %pos, align 4, !dbg !5538
  %idx.ext = zext i32 %35 to i64, !dbg !5539
  %add.ptr = getelementptr i16, i16* %34, i64 %idx.ext, !dbg !5539
  %36 = bitcast i16* %add.ptr to i8*, !dbg !5537
  %37 = load i32, i32* %to_read, align 4, !dbg !5540
  %call17 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %33, i8* %36, i32 %37) #6, !dbg !5541
  br label %if.end27, !dbg !5542

if.else18:                                        ; preds = %while.body
  %38 = load %struct.pci9111_private_data*, %struct.pci9111_private_data** %devpriv, align 8, !dbg !5543
  %chunk_num_samples = getelementptr inbounds %struct.pci9111_private_data, %struct.pci9111_private_data* %38, i32 0, i32 3, !dbg !5545
  %39 = load i32, i32* %chunk_num_samples, align 8, !dbg !5545
  %40 = load %struct.pci9111_private_data*, %struct.pci9111_private_data** %devpriv, align 8, !dbg !5546
  %chunk_counter19 = getelementptr inbounds %struct.pci9111_private_data, %struct.pci9111_private_data* %40, i32 0, i32 2, !dbg !5547
  %41 = load i32, i32* %chunk_counter19, align 4, !dbg !5547
  %sub20 = sub i32 %39, %41, !dbg !5548
  store i32 %sub20, i32* %to_read, align 4, !dbg !5549
  %42 = load i32, i32* %to_read, align 4, !dbg !5550
  %43 = load i32, i32* %samples, align 4, !dbg !5552
  %44 = load i32, i32* %pos, align 4, !dbg !5553
  %sub21 = sub i32 %43, %44, !dbg !5554
  %cmp22 = icmp ugt i32 %42, %sub21, !dbg !5555
  br i1 %cmp22, label %if.then24, label %if.end26, !dbg !5556

if.then24:                                        ; preds = %if.else18
  %45 = load i32, i32* %samples, align 4, !dbg !5557
  %46 = load i32, i32* %pos, align 4, !dbg !5558
  %sub25 = sub i32 %45, %46, !dbg !5559
  store i32 %sub25, i32* %to_read, align 4, !dbg !5560
  br label %if.end26, !dbg !5561

if.end26:                                         ; preds = %if.then24, %if.else18
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.end
  %47 = load i32, i32* %to_read, align 4, !dbg !5562
  %48 = load i32, i32* %pos, align 4, !dbg !5563
  %add28 = add i32 %48, %47, !dbg !5563
  store i32 %add28, i32* %pos, align 4, !dbg !5563
  %49 = load i32, i32* %to_read, align 4, !dbg !5564
  %50 = load %struct.pci9111_private_data*, %struct.pci9111_private_data** %devpriv, align 8, !dbg !5565
  %chunk_counter29 = getelementptr inbounds %struct.pci9111_private_data, %struct.pci9111_private_data* %50, i32 0, i32 2, !dbg !5566
  %51 = load i32, i32* %chunk_counter29, align 4, !dbg !5567
  %add30 = add i32 %51, %49, !dbg !5567
  store i32 %add30, i32* %chunk_counter29, align 4, !dbg !5567
  %52 = load %struct.pci9111_private_data*, %struct.pci9111_private_data** %devpriv, align 8, !dbg !5568
  %chunk_counter31 = getelementptr inbounds %struct.pci9111_private_data, %struct.pci9111_private_data* %52, i32 0, i32 2, !dbg !5570
  %53 = load i32, i32* %chunk_counter31, align 4, !dbg !5570
  %54 = load %struct.pci9111_private_data*, %struct.pci9111_private_data** %devpriv, align 8, !dbg !5571
  %chunk_num_samples32 = getelementptr inbounds %struct.pci9111_private_data, %struct.pci9111_private_data* %54, i32 0, i32 3, !dbg !5572
  %55 = load i32, i32* %chunk_num_samples32, align 8, !dbg !5572
  %cmp33 = icmp uge i32 %53, %55, !dbg !5573
  br i1 %cmp33, label %if.then35, label %if.end37, !dbg !5574

if.then35:                                        ; preds = %if.end27
  %56 = load %struct.pci9111_private_data*, %struct.pci9111_private_data** %devpriv, align 8, !dbg !5575
  %chunk_counter36 = getelementptr inbounds %struct.pci9111_private_data, %struct.pci9111_private_data* %56, i32 0, i32 2, !dbg !5576
  store i32 0, i32* %chunk_counter36, align 4, !dbg !5577
  br label %if.end37, !dbg !5575

if.end37:                                         ; preds = %if.then35, %if.end27
  br label %while.cond, !dbg !5505, !llvm.loop !5578

while.end:                                        ; preds = %while.cond
  br label %if.end38

if.end38:                                         ; preds = %while.end, %if.then
  ret void, !dbg !5580
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #2 !dbg !5581 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !5582, metadata !DIExpression()), !dbg !5584
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5585, metadata !DIExpression()), !dbg !5584
  %0 = load i64, i64* %__edi, align 8, !dbg !5584
  store i64 %0, i64* %__edi, align 8, !dbg !5584
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5586, metadata !DIExpression()), !dbg !5584
  %1 = load i64, i64* %__esi, align 8, !dbg !5584
  store i64 %1, i64* %__esi, align 8, !dbg !5584
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5587, metadata !DIExpression()), !dbg !5584
  %2 = load i64, i64* %__edx, align 8, !dbg !5584
  store i64 %2, i64* %__edx, align 8, !dbg !5584
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5588, metadata !DIExpression()), !dbg !5584
  %3 = load i64, i64* %__ecx, align 8, !dbg !5584
  store i64 %3, i64* %__ecx, align 8, !dbg !5584
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5589, metadata !DIExpression()), !dbg !5584
  %4 = load i64, i64* %__eax, align 8, !dbg !5584
  store i64 %4, i64* %__eax, align 8, !dbg !5584
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !5584
  %6 = call i64 @llvm.read_register.i64(metadata !4303), !dbg !5590
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #5, !dbg !5590, !srcloc !5593
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5590
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5590
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5590
  call void @llvm.write_register.i64(metadata !4303, i64 %asmresult1), !dbg !5590
  %8 = load i64, i64* %__eax, align 8, !dbg !5590
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !5594, metadata !DIExpression()), !dbg !5596
  store i64 -1, i64* %__mask, align 8, !dbg !5596
  %9 = load i64, i64* %__mask, align 8, !dbg !5596
  store i64 %9, i64* %tmp, align 8, !dbg !5596
  %10 = load i64, i64* %tmp, align 8, !dbg !5596
  %and = and i64 %8, %10, !dbg !5590
  store i64 %and, i64* %__ret, align 8, !dbg !5590
  %11 = load i64, i64* %__ret, align 8, !dbg !5584
  store i64 %11, i64* %tmp2, align 8, !dbg !5597
  %12 = load i64, i64* %tmp2, align 8, !dbg !5584
  ret i64 %12, !dbg !5598
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #2 !dbg !5599 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5600, metadata !DIExpression()), !dbg !5602
  %0 = load i64, i64* %__edi, align 8, !dbg !5602
  store i64 %0, i64* %__edi, align 8, !dbg !5602
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5603, metadata !DIExpression()), !dbg !5602
  %1 = load i64, i64* %__esi, align 8, !dbg !5602
  store i64 %1, i64* %__esi, align 8, !dbg !5602
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5604, metadata !DIExpression()), !dbg !5602
  %2 = load i64, i64* %__edx, align 8, !dbg !5602
  store i64 %2, i64* %__edx, align 8, !dbg !5602
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5605, metadata !DIExpression()), !dbg !5602
  %3 = load i64, i64* %__ecx, align 8, !dbg !5602
  store i64 %3, i64* %__ecx, align 8, !dbg !5602
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5606, metadata !DIExpression()), !dbg !5602
  %4 = load i64, i64* %__eax, align 8, !dbg !5602
  store i64 %4, i64* %__eax, align 8, !dbg !5602
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !5602
  %6 = call i64 @llvm.read_register.i64(metadata !4303), !dbg !5602
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #5, !dbg !5602, !srcloc !5607
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5602
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5602
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5602
  call void @llvm.write_register.i64(metadata !4303, i64 %asmresult1), !dbg !5602
  ret void, !dbg !5608
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #4

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #2 !dbg !5609 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !5612, metadata !DIExpression()), !dbg !5613
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5614, metadata !DIExpression()), !dbg !5616
  %0 = load i64, i64* %__edi, align 8, !dbg !5616
  store i64 %0, i64* %__edi, align 8, !dbg !5616
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5617, metadata !DIExpression()), !dbg !5616
  %1 = load i64, i64* %__esi, align 8, !dbg !5616
  store i64 %1, i64* %__esi, align 8, !dbg !5616
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5618, metadata !DIExpression()), !dbg !5616
  %2 = load i64, i64* %__edx, align 8, !dbg !5616
  store i64 %2, i64* %__edx, align 8, !dbg !5616
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5619, metadata !DIExpression()), !dbg !5616
  %3 = load i64, i64* %__ecx, align 8, !dbg !5616
  store i64 %3, i64* %__ecx, align 8, !dbg !5616
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5620, metadata !DIExpression()), !dbg !5616
  %4 = load i64, i64* %__eax, align 8, !dbg !5616
  store i64 %4, i64* %__eax, align 8, !dbg !5616
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !5616
  %6 = call i64 @llvm.read_register.i64(metadata !4303), !dbg !5616
  %7 = load i64, i64* %f.addr, align 8, !dbg !5616
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #5, !dbg !5616, !srcloc !5621
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !5616
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !5616
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5616
  call void @llvm.write_register.i64(metadata !4303, i64 %asmresult1), !dbg !5616
  ret void, !dbg !5622
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_nsamples_left(%struct.comedi_subdevice*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @insw(i32 %port, i8* %addr, i64 %count) #2 !dbg !5623 {
entry:
  %port.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %value = alloca i16*, align 8
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5626, metadata !DIExpression()), !dbg !5627
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5628, metadata !DIExpression()), !dbg !5627
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5629, metadata !DIExpression()), !dbg !5627
  %call = call zeroext i1 @sev_key_active() #6, !dbg !5630
  br i1 %call, label %if.then, label %if.else, !dbg !5627

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i16** %value, metadata !5632, metadata !DIExpression()), !dbg !5634
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !5634
  %1 = bitcast i8* %0 to i16*, !dbg !5634
  store i16* %1, i16** %value, align 8, !dbg !5634
  br label %while.cond, !dbg !5634

while.cond:                                       ; preds = %while.body, %if.then
  %2 = load i64, i64* %count.addr, align 8, !dbg !5634
  %tobool = icmp ne i64 %2, 0, !dbg !5634
  br i1 %tobool, label %while.body, label %while.end, !dbg !5634

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %port.addr, align 4, !dbg !5635
  %call1 = call zeroext i16 @inw(i32 %3) #6, !dbg !5635
  %4 = load i16*, i16** %value, align 8, !dbg !5635
  store i16 %call1, i16* %4, align 2, !dbg !5635
  %5 = load i16*, i16** %value, align 8, !dbg !5635
  %incdec.ptr = getelementptr i16, i16* %5, i32 1, !dbg !5635
  store i16* %incdec.ptr, i16** %value, align 8, !dbg !5635
  %6 = load i64, i64* %count.addr, align 8, !dbg !5635
  %dec = add i64 %6, -1, !dbg !5635
  store i64 %dec, i64* %count.addr, align 8, !dbg !5635
  br label %while.cond, !dbg !5634, !llvm.loop !5637

while.end:                                        ; preds = %while.cond
  br label %if.end, !dbg !5634

if.else:                                          ; preds = %entry
  %7 = load i8*, i8** %addr.addr, align 8, !dbg !5638
  %8 = load i64, i64* %count.addr, align 8, !dbg !5638
  %9 = load i32, i32* %port.addr, align 4, !dbg !5638
  %10 = call { i8*, i64 } asm sideeffect "rep; insw", "={di},={cx},{dx},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %9, i8* %7, i64 %8) #5, !dbg !5638, !srcloc !5640
  %asmresult = extractvalue { i8*, i64 } %10, 0, !dbg !5638
  %asmresult2 = extractvalue { i8*, i64 } %10, 1, !dbg !5638
  store i8* %asmresult, i8** %addr.addr, align 8, !dbg !5638
  store i64 %asmresult2, i64* %count.addr, align 8, !dbg !5638
  br label %if.end

if.end:                                           ; preds = %if.else, %while.end
  ret void, !dbg !5627
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice*, i8*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @sev_key_active() #2 !dbg !5641 {
entry:
  ret i1 false, !dbg !5642
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i16 @inw(i32 %port) #2 !dbg !5643 {
entry:
  %port.addr = alloca i32, align 4
  %value = alloca i16, align 2
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5646, metadata !DIExpression()), !dbg !5647
  call void @llvm.dbg.declare(metadata i16* %value, metadata !5648, metadata !DIExpression()), !dbg !5647
  %0 = load i32, i32* %port.addr, align 4, !dbg !5647
  %1 = call i16 asm sideeffect "inw ${1:w}, ${0:w}", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #5, !dbg !5647, !srcloc !5649
  store i16 %1, i16* %value, align 2, !dbg !5647
  %2 = load i16, i16* %value, align 2, !dbg !5647
  ret i16 %2, !dbg !5647
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pci9111_fifo_reset(%struct.comedi_device* %dev) #2 !dbg !5650 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %int_ctrl_reg = alloca i64, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5651, metadata !DIExpression()), !dbg !5652
  call void @llvm.dbg.declare(metadata i64* %int_ctrl_reg, metadata !5653, metadata !DIExpression()), !dbg !5654
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5655
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 18, !dbg !5656
  %1 = load i64, i64* %iobase, align 8, !dbg !5656
  %add = add i64 %1, 12, !dbg !5657
  store i64 %add, i64* %int_ctrl_reg, align 8, !dbg !5654
  %2 = load i64, i64* %int_ctrl_reg, align 8, !dbg !5658
  %conv = trunc i64 %2 to i32, !dbg !5658
  call void @outb(i8 zeroext 0, i32 %conv) #6, !dbg !5659
  %3 = load i64, i64* %int_ctrl_reg, align 8, !dbg !5660
  %conv1 = trunc i64 %3 to i32, !dbg !5660
  call void @outb(i8 zeroext 4, i32 %conv1) #6, !dbg !5661
  %4 = load i64, i64* %int_ctrl_reg, align 8, !dbg !5662
  %conv2 = trunc i64 %4 to i32, !dbg !5662
  call void @outb(i8 zeroext 0, i32 %conv2) #6, !dbg !5663
  ret void, !dbg !5664
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_timeout(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i64)*, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci9111_ai_eoc(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i64 %context) #2 !dbg !5665 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %context.addr = alloca i64, align 8
  %status = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5668, metadata !DIExpression()), !dbg !5669
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5670, metadata !DIExpression()), !dbg !5671
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5672, metadata !DIExpression()), !dbg !5673
  store i64 %context, i64* %context.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %context.addr, metadata !5674, metadata !DIExpression()), !dbg !5675
  call void @llvm.dbg.declare(metadata i32* %status, metadata !5676, metadata !DIExpression()), !dbg !5677
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5678
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 18, !dbg !5679
  %1 = load i64, i64* %iobase, align 8, !dbg !5679
  %add = add i64 %1, 8, !dbg !5680
  %conv = trunc i64 %add to i32, !dbg !5678
  %call = call zeroext i8 @inb(i32 %conv) #6, !dbg !5681
  %conv1 = zext i8 %call to i32, !dbg !5681
  store i32 %conv1, i32* %status, align 4, !dbg !5682
  %2 = load i32, i32* %status, align 4, !dbg !5683
  %conv2 = zext i32 %2 to i64, !dbg !5683
  %and = and i64 %conv2, 16, !dbg !5685
  %tobool = icmp ne i64 %and, 0, !dbg !5685
  br i1 %tobool, label %if.then, label %if.end, !dbg !5686

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5687
  br label %return, !dbg !5687

if.end:                                           ; preds = %entry
  store i32 -16, i32* %retval, align 4, !dbg !5688
  br label %return, !dbg !5688

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !5689
  ret i32 %3, !dbg !5689
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_src(i32* %src, i32 %flags) #2 !dbg !5690 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i32*, align 8
  %flags.addr = alloca i32, align 4
  %orig_src = alloca i32, align 4
  store i32* %src, i32** %src.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %src.addr, metadata !5693, metadata !DIExpression()), !dbg !5694
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5695, metadata !DIExpression()), !dbg !5696
  call void @llvm.dbg.declare(metadata i32* %orig_src, metadata !5697, metadata !DIExpression()), !dbg !5698
  %0 = load i32*, i32** %src.addr, align 8, !dbg !5699
  %1 = load i32, i32* %0, align 4, !dbg !5700
  store i32 %1, i32* %orig_src, align 4, !dbg !5698
  %2 = load i32, i32* %orig_src, align 4, !dbg !5701
  %3 = load i32, i32* %flags.addr, align 4, !dbg !5702
  %and = and i32 %2, %3, !dbg !5703
  %4 = load i32*, i32** %src.addr, align 8, !dbg !5704
  store i32 %and, i32* %4, align 4, !dbg !5705
  %5 = load i32*, i32** %src.addr, align 8, !dbg !5706
  %6 = load i32, i32* %5, align 4, !dbg !5708
  %cmp = icmp eq i32 %6, 0, !dbg !5709
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5710

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32*, i32** %src.addr, align 8, !dbg !5711
  %8 = load i32, i32* %7, align 4, !dbg !5712
  %9 = load i32, i32* %orig_src, align 4, !dbg !5713
  %cmp1 = icmp ne i32 %8, %9, !dbg !5714
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5715

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !5716
  br label %return, !dbg !5716

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %retval, align 4, !dbg !5717
  br label %return, !dbg !5717

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !5718
  ret i32 %10, !dbg !5718
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_is_unique(i32 %src) #2 !dbg !5719 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i32, align 4
  store i32 %src, i32* %src.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %src.addr, metadata !5722, metadata !DIExpression()), !dbg !5723
  %0 = load i32, i32* %src.addr, align 4, !dbg !5724
  %1 = load i32, i32* %src.addr, align 4, !dbg !5726
  %sub = sub i32 %1, 1, !dbg !5727
  %and = and i32 %0, %sub, !dbg !5728
  %cmp = icmp ne i32 %and, 0, !dbg !5729
  br i1 %cmp, label %if.then, label %if.end, !dbg !5730

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5731
  br label %return, !dbg !5731

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5732
  br label %return, !dbg !5732

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !5733
  ret i32 %2, !dbg !5733
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_arg_is(i32* %arg, i32 %val) #2 !dbg !5734 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca i32*, align 8
  %val.addr = alloca i32, align 4
  store i32* %arg, i32** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %arg.addr, metadata !5735, metadata !DIExpression()), !dbg !5736
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5737, metadata !DIExpression()), !dbg !5738
  %0 = load i32*, i32** %arg.addr, align 8, !dbg !5739
  %1 = load i32, i32* %0, align 4, !dbg !5741
  %2 = load i32, i32* %val.addr, align 4, !dbg !5742
  %cmp = icmp ne i32 %1, %2, !dbg !5743
  br i1 %cmp, label %if.then, label %if.end, !dbg !5744

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %val.addr, align 4, !dbg !5745
  %4 = load i32*, i32** %arg.addr, align 8, !dbg !5747
  store i32 %3, i32* %4, align 4, !dbg !5748
  store i32 -22, i32* %retval, align 4, !dbg !5749
  br label %return, !dbg !5749

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5750
  br label %return, !dbg !5750

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !5751
  ret i32 %5, !dbg !5751
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_arg_min(i32* %arg, i32 %val) #2 !dbg !5752 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca i32*, align 8
  %val.addr = alloca i32, align 4
  store i32* %arg, i32** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %arg.addr, metadata !5753, metadata !DIExpression()), !dbg !5754
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5755, metadata !DIExpression()), !dbg !5756
  %0 = load i32*, i32** %arg.addr, align 8, !dbg !5757
  %1 = load i32, i32* %0, align 4, !dbg !5759
  %2 = load i32, i32* %val.addr, align 4, !dbg !5760
  %cmp = icmp ult i32 %1, %2, !dbg !5761
  br i1 %cmp, label %if.then, label %if.end, !dbg !5762

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %val.addr, align 4, !dbg !5763
  %4 = load i32*, i32** %arg.addr, align 8, !dbg !5765
  store i32 %3, i32* %4, align 4, !dbg !5766
  store i32 -22, i32* %retval, align 4, !dbg !5767
  br label %return, !dbg !5767

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5768
  br label %return, !dbg !5768

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !5769
  ret i32 %5, !dbg !5769
}

; Function Attrs: noredzone
declare dso_local void @comedi_8254_cascade_ns_to_timer(%struct.comedi_8254*, i32*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci9111_ai_check_chanlist(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_cmd* %cmd) #2 !dbg !5770 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %cmd.addr = alloca %struct.comedi_cmd*, align 8
  %range0 = alloca i32, align 4
  %aref0 = alloca i32, align 4
  %i = alloca i32, align 4
  %chan = alloca i32, align 4
  %range = alloca i32, align 4
  %aref = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5771, metadata !DIExpression()), !dbg !5772
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5773, metadata !DIExpression()), !dbg !5774
  store %struct.comedi_cmd* %cmd, %struct.comedi_cmd** %cmd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd.addr, metadata !5775, metadata !DIExpression()), !dbg !5776
  call void @llvm.dbg.declare(metadata i32* %range0, metadata !5777, metadata !DIExpression()), !dbg !5778
  %0 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5779
  %chanlist = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %0, i32 0, i32 12, !dbg !5779
  %1 = load i32*, i32** %chanlist, align 8, !dbg !5779
  %arrayidx = getelementptr i32, i32* %1, i64 0, !dbg !5779
  %2 = load i32, i32* %arrayidx, align 4, !dbg !5779
  %shr = lshr i32 %2, 16, !dbg !5779
  %and = and i32 %shr, 255, !dbg !5779
  store i32 %and, i32* %range0, align 4, !dbg !5778
  call void @llvm.dbg.declare(metadata i32* %aref0, metadata !5780, metadata !DIExpression()), !dbg !5781
  %3 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5782
  %chanlist1 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %3, i32 0, i32 12, !dbg !5782
  %4 = load i32*, i32** %chanlist1, align 8, !dbg !5782
  %arrayidx2 = getelementptr i32, i32* %4, i64 0, !dbg !5782
  %5 = load i32, i32* %arrayidx2, align 4, !dbg !5782
  %shr3 = lshr i32 %5, 24, !dbg !5782
  %and4 = and i32 %shr3, 3, !dbg !5782
  store i32 %and4, i32* %aref0, align 4, !dbg !5781
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5783, metadata !DIExpression()), !dbg !5784
  store i32 1, i32* %i, align 4, !dbg !5785
  br label %for.cond, !dbg !5787

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4, !dbg !5788
  %7 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5790
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %7, i32 0, i32 13, !dbg !5791
  %8 = load i32, i32* %chanlist_len, align 8, !dbg !5791
  %cmp = icmp ult i32 %6, %8, !dbg !5792
  br i1 %cmp, label %for.body, label %for.end, !dbg !5793

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !5794, metadata !DIExpression()), !dbg !5796
  %9 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5797
  %chanlist5 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %9, i32 0, i32 12, !dbg !5797
  %10 = load i32*, i32** %chanlist5, align 8, !dbg !5797
  %11 = load i32, i32* %i, align 4, !dbg !5797
  %idxprom = sext i32 %11 to i64, !dbg !5797
  %arrayidx6 = getelementptr i32, i32* %10, i64 %idxprom, !dbg !5797
  %12 = load i32, i32* %arrayidx6, align 4, !dbg !5797
  %and7 = and i32 %12, 65535, !dbg !5797
  store i32 %and7, i32* %chan, align 4, !dbg !5796
  call void @llvm.dbg.declare(metadata i32* %range, metadata !5798, metadata !DIExpression()), !dbg !5799
  %13 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5800
  %chanlist8 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %13, i32 0, i32 12, !dbg !5800
  %14 = load i32*, i32** %chanlist8, align 8, !dbg !5800
  %15 = load i32, i32* %i, align 4, !dbg !5800
  %idxprom9 = sext i32 %15 to i64, !dbg !5800
  %arrayidx10 = getelementptr i32, i32* %14, i64 %idxprom9, !dbg !5800
  %16 = load i32, i32* %arrayidx10, align 4, !dbg !5800
  %shr11 = lshr i32 %16, 16, !dbg !5800
  %and12 = and i32 %shr11, 255, !dbg !5800
  store i32 %and12, i32* %range, align 4, !dbg !5799
  call void @llvm.dbg.declare(metadata i32* %aref, metadata !5801, metadata !DIExpression()), !dbg !5802
  %17 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5803
  %chanlist13 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %17, i32 0, i32 12, !dbg !5803
  %18 = load i32*, i32** %chanlist13, align 8, !dbg !5803
  %19 = load i32, i32* %i, align 4, !dbg !5803
  %idxprom14 = sext i32 %19 to i64, !dbg !5803
  %arrayidx15 = getelementptr i32, i32* %18, i64 %idxprom14, !dbg !5803
  %20 = load i32, i32* %arrayidx15, align 4, !dbg !5803
  %shr16 = lshr i32 %20, 24, !dbg !5803
  %and17 = and i32 %shr16, 3, !dbg !5803
  store i32 %and17, i32* %aref, align 4, !dbg !5802
  %21 = load i32, i32* %chan, align 4, !dbg !5804
  %22 = load i32, i32* %i, align 4, !dbg !5806
  %cmp18 = icmp ne i32 %21, %22, !dbg !5807
  br i1 %cmp18, label %if.then, label %if.end, !dbg !5808

if.then:                                          ; preds = %for.body
  store i32 -22, i32* %retval, align 4, !dbg !5809
  br label %return, !dbg !5809

if.end:                                           ; preds = %for.body
  %23 = load i32, i32* %range, align 4, !dbg !5811
  %24 = load i32, i32* %range0, align 4, !dbg !5813
  %cmp19 = icmp ne i32 %23, %24, !dbg !5814
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !5815

if.then20:                                        ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !5816
  br label %return, !dbg !5816

if.end21:                                         ; preds = %if.end
  %25 = load i32, i32* %aref, align 4, !dbg !5818
  %26 = load i32, i32* %aref0, align 4, !dbg !5820
  %cmp22 = icmp ne i32 %25, %26, !dbg !5821
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !5822

if.then23:                                        ; preds = %if.end21
  store i32 -22, i32* %retval, align 4, !dbg !5823
  br label %return, !dbg !5823

if.end24:                                         ; preds = %if.end21
  br label %for.inc, !dbg !5825

for.inc:                                          ; preds = %if.end24
  %27 = load i32, i32* %i, align 4, !dbg !5826
  %inc = add i32 %27, 1, !dbg !5826
  store i32 %inc, i32* %i, align 4, !dbg !5826
  br label %for.cond, !dbg !5827, !llvm.loop !5828

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !5830
  br label %return, !dbg !5830

return:                                           ; preds = %for.end, %if.then23, %if.then20, %if.then
  %28 = load i32, i32* %retval, align 4, !dbg !5831
  ret i32 %28, !dbg !5831
}

; Function Attrs: noredzone
declare dso_local void @comedi_8254_update_divisors(%struct.comedi_8254*) #1

; Function Attrs: noredzone
declare dso_local void @comedi_8254_pacer_enable(%struct.comedi_8254*, i32, i32, i1 zeroext) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pci9111_interrupt_source_set(%struct.comedi_device* %dev, i32 %irq_0_source, i32 %irq_1_source) #2 !dbg !5832 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %irq_0_source.addr = alloca i32, align 4
  %irq_1_source.addr = alloca i32, align 4
  %flags = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5835, metadata !DIExpression()), !dbg !5836
  store i32 %irq_0_source, i32* %irq_0_source.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq_0_source.addr, metadata !5837, metadata !DIExpression()), !dbg !5838
  store i32 %irq_1_source, i32* %irq_1_source.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq_1_source.addr, metadata !5839, metadata !DIExpression()), !dbg !5840
  call void @llvm.dbg.declare(metadata i32* %flags, metadata !5841, metadata !DIExpression()), !dbg !5842
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5843
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 18, !dbg !5844
  %1 = load i64, i64* %iobase, align 8, !dbg !5844
  %add = add i64 %1, 10, !dbg !5845
  %conv = trunc i64 %add to i32, !dbg !5843
  %call = call zeroext i8 @inb(i32 %conv) #6, !dbg !5846
  %conv1 = zext i8 %call to i32, !dbg !5846
  store i32 %conv1, i32* %flags, align 4, !dbg !5847
  %2 = load i32, i32* %flags, align 4, !dbg !5848
  %shr = ashr i32 %2, 4, !dbg !5848
  store i32 %shr, i32* %flags, align 4, !dbg !5848
  %3 = load i32, i32* %flags, align 4, !dbg !5849
  %and = and i32 %3, 192, !dbg !5849
  store i32 %and, i32* %flags, align 4, !dbg !5849
  %4 = load i32, i32* %irq_0_source.addr, align 4, !dbg !5850
  %cmp = icmp eq i32 %4, 1, !dbg !5852
  br i1 %cmp, label %if.then, label %if.end, !dbg !5853

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %flags, align 4, !dbg !5854
  %conv3 = sext i32 %5 to i64, !dbg !5854
  %or = or i64 %conv3, 1, !dbg !5854
  %conv4 = trunc i64 %or to i32, !dbg !5854
  store i32 %conv4, i32* %flags, align 4, !dbg !5854
  br label %if.end, !dbg !5855

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %irq_1_source.addr, align 4, !dbg !5856
  %cmp5 = icmp eq i32 %6, 1, !dbg !5858
  br i1 %cmp5, label %if.then7, label %if.end11, !dbg !5859

if.then7:                                         ; preds = %if.end
  %7 = load i32, i32* %flags, align 4, !dbg !5860
  %conv8 = sext i32 %7 to i64, !dbg !5860
  %or9 = or i64 %conv8, 2, !dbg !5860
  %conv10 = trunc i64 %or9 to i32, !dbg !5860
  store i32 %conv10, i32* %flags, align 4, !dbg !5860
  br label %if.end11, !dbg !5861

if.end11:                                         ; preds = %if.then7, %if.end
  %8 = load i32, i32* %flags, align 4, !dbg !5862
  %conv12 = trunc i32 %8 to i8, !dbg !5862
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5863
  %iobase13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 18, !dbg !5864
  %10 = load i64, i64* %iobase13, align 8, !dbg !5864
  %add14 = add i64 %10, 12, !dbg !5865
  %conv15 = trunc i64 %add14 to i32, !dbg !5863
  call void @outb(i8 zeroext %conv12, i32 %conv15) #6, !dbg !5866
  ret void, !dbg !5867
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_bytes_to_samples(%struct.comedi_subdevice* %s, i32 %nbytes) #2 !dbg !5868 {
entry:
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %nbytes.addr = alloca i32, align 4
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5871, metadata !DIExpression()), !dbg !5872
  store i32 %nbytes, i32* %nbytes.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nbytes.addr, metadata !5873, metadata !DIExpression()), !dbg !5874
  %0 = load i32, i32* %nbytes.addr, align 4, !dbg !5875
  %1 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5876
  %call = call i32 @comedi_sample_shift(%struct.comedi_subdevice* %1) #6, !dbg !5877
  %shr = lshr i32 %0, %call, !dbg !5878
  ret i32 %shr, !dbg !5879
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_sample_shift(%struct.comedi_subdevice* %s) #2 !dbg !5880 {
entry:
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5883, metadata !DIExpression()), !dbg !5884
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5885
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 4, !dbg !5886
  %1 = load i32, i32* %subdev_flags, align 4, !dbg !5886
  %and = and i32 %1, 268435456, !dbg !5887
  %tobool = icmp ne i32 %and, 0, !dbg !5885
  %2 = zext i1 %tobool to i64, !dbg !5885
  %cond = select i1 %tobool, i32 2, i32 1, !dbg !5885
  ret i32 %cond, !dbg !5888
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outw(i16 zeroext %value, i32 %port) #2 !dbg !5889 {
entry:
  %value.addr = alloca i16, align 2
  %port.addr = alloca i32, align 4
  store i16 %value, i16* %value.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %value.addr, metadata !5892, metadata !DIExpression()), !dbg !5893
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5894, metadata !DIExpression()), !dbg !5893
  %0 = load i16, i16* %value.addr, align 2, !dbg !5893
  %1 = load i32, i32* %port.addr, align 4, !dbg !5893
  call void asm sideeffect "outw ${0:w}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %1) #5, !dbg !5893, !srcloc !5895
  ret void, !dbg !5893
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_dio_update_state(%struct.comedi_subdevice*, i32*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci9111_pci_probe(%struct.pci_dev* %dev, %struct.pci_device_id* %id) #2 !dbg !5896 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %id.addr = alloca %struct.pci_device_id*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5897, metadata !DIExpression()), !dbg !5898
  store %struct.pci_device_id* %id, %struct.pci_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_device_id** %id.addr, metadata !5899, metadata !DIExpression()), !dbg !5900
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5901
  %1 = load %struct.pci_device_id*, %struct.pci_device_id** %id.addr, align 8, !dbg !5902
  %driver_data = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %1, i32 0, i32 6, !dbg !5903
  %2 = load i64, i64* %driver_data, align 8, !dbg !5903
  %call = call i32 @comedi_pci_auto_config(%struct.pci_dev* %0, %struct.comedi_driver* @adl_pci9111_driver, i64 %2) #6, !dbg !5904
  ret i32 %call, !dbg !5905
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
!llvm.named.register.rsp = !{!4303}
!llvm.module.flags = !{!4304, !4305, !4306, !4307}
!llvm.ident = !{!4308}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_adl_pci9111_driver_init234", scope: !2, file: !3, line: 743, type: !209, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !146, globals: !150, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/staging/comedi/drivers/adl_pci9111.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !100, !105, !121, !127, !138, !142}
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
!121 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !122, line: 11, baseType: !7, size: 32, elements: !123)
!122 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!123 = !{!124, !125, !126}
!124 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!125 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!126 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "comedi_cb", file: !128, line: 383, baseType: !7, size: 32, elements: !129)
!128 = !DIFile(filename: "drivers/staging/comedi/drivers/../comedidev.h", directory: "/home/lizy2001/genbc/linux")
!129 = !{!130, !131, !132, !133, !134, !135, !136, !137}
!130 = !DIEnumerator(name: "COMEDI_CB_EOS", value: 1, isUnsigned: true)
!131 = !DIEnumerator(name: "COMEDI_CB_EOA", value: 2, isUnsigned: true)
!132 = !DIEnumerator(name: "COMEDI_CB_BLOCK", value: 4, isUnsigned: true)
!133 = !DIEnumerator(name: "COMEDI_CB_EOBUF", value: 8, isUnsigned: true)
!134 = !DIEnumerator(name: "COMEDI_CB_ERROR", value: 16, isUnsigned: true)
!135 = !DIEnumerator(name: "COMEDI_CB_OVERFLOW", value: 32, isUnsigned: true)
!136 = !DIEnumerator(name: "COMEDI_CB_ERROR_MASK", value: 48, isUnsigned: true)
!137 = !DIEnumerator(name: "COMEDI_CB_CANCEL_MASK", value: 50, isUnsigned: true)
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pci9111_ISC0_sources", file: !3, line: 141, baseType: !7, size: 32, elements: !139)
!139 = !{!140, !141}
!140 = !DIEnumerator(name: "irq_on_eoc", value: 0, isUnsigned: true)
!141 = !DIEnumerator(name: "irq_on_fifo_half_full", value: 1, isUnsigned: true)
!142 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pci9111_ISC1_sources", file: !3, line: 146, baseType: !7, size: 32, elements: !143)
!143 = !{!144, !145}
!144 = !DIEnumerator(name: "irq_on_timer_tick", value: 0, isUnsigned: true)
!145 = !DIEnumerator(name: "irq_on_external_trigger", value: 1, isUnsigned: true)
!146 = !{!147, !148}
!147 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!150 = !{!0, !151, !158, !165, !170, !175, !180, !4019, !4021, !4300}
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "__exitcall_adl_pci9111_driver_exit", scope: !2, file: !3, line: 743, type: !153, isLocal: true, isDefinition: true)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !154, line: 117, baseType: !155)
!154 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DISubroutineType(types: !157)
!157 = !{null}
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author235", scope: !2, file: !3, line: 745, type: !160, isLocal: true, isDefinition: true, align: 8)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 392, elements: !163)
!161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !162)
!162 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!163 = !{!164}
!164 = !DISubrange(count: 49)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description236", scope: !2, file: !3, line: 746, type: !167, isLocal: true, isDefinition: true, align: 8)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 384, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 48)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file237", scope: !2, file: !3, line: 747, type: !172, isLocal: true, isDefinition: true, align: 8)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 480, elements: !173)
!173 = !{!174}
!174 = !DISubrange(count: 60)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license238", scope: !2, file: !3, line: 747, type: !177, isLocal: true, isDefinition: true, align: 8)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 192, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 24)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(name: "adl_pci9111_driver", scope: !2, file: !3, line: 716, type: !182, isLocal: true, isDefinition: true)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_driver", file: !128, line: 437, size: 576, elements: !183)
!183 = !{!184, !186, !188, !192, !4009, !4010, !4014, !4015, !4018}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !182, file: !128, line: 439, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !182, file: !128, line: 441, baseType: !187, size: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !182, file: !128, line: 442, baseType: !189, size: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !191, line: 76, flags: DIFlagFwdDecl)
!191 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!192 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !182, file: !128, line: 443, baseType: !193, size: 64, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DISubroutineType(types: !195)
!195 = !{!196, !197, !4002}
!196 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_device", file: !128, line: 541, size: 1920, elements: !199)
!199 = !{!200, !201, !202, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3990, !3994, !3998}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !198, file: !128, line: 542, baseType: !196, size: 32)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !198, file: !128, line: 543, baseType: !185, size: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "pacer", scope: !198, file: !128, line: 544, baseType: !203, size: 64, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_8254", file: !205, line: 78, size: 704, elements: !206)
!205 = !DIFile(filename: "drivers/staging/comedi/drivers/comedi_8254.h", directory: "/home/lizy2001/genbc/linux")
!206 = !{!207, !208, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !223, !224, !229}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "iobase", scope: !204, file: !205, line: 79, baseType: !147, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "mmio", scope: !204, file: !205, line: 80, baseType: !209, size: 64, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "iosize", scope: !204, file: !205, line: 81, baseType: !7, size: 32, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "regshift", scope: !204, file: !205, line: 82, baseType: !7, size: 32, offset: 160)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "osc_base", scope: !204, file: !205, line: 83, baseType: !7, size: 32, offset: 192)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "divisor", scope: !204, file: !205, line: 84, baseType: !7, size: 32, offset: 224)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "divisor1", scope: !204, file: !205, line: 85, baseType: !7, size: 32, offset: 256)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "divisor2", scope: !204, file: !205, line: 86, baseType: !7, size: 32, offset: 288)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "next_div", scope: !204, file: !205, line: 87, baseType: !7, size: 32, offset: 320)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "next_div1", scope: !204, file: !205, line: 88, baseType: !7, size: 32, offset: 352)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "next_div2", scope: !204, file: !205, line: 89, baseType: !7, size: 32, offset: 384)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "clock_src", scope: !204, file: !205, line: 90, baseType: !220, size: 96, offset: 416)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 96, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 3)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "gate_src", scope: !204, file: !205, line: 91, baseType: !220, size: 96, offset: 512)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !204, file: !205, line: 92, baseType: !225, size: 24, offset: 608)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 24, elements: !221)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !227, line: 30, baseType: !228)
!227 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!228 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "insn_config", scope: !204, file: !205, line: 94, baseType: !230, size: 64, offset: 640)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{!196, !197, !233, !3955, !2721}
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_subdevice", file: !128, line: 153, size: 1792, elements: !235)
!235 = !{!236, !237, !238, !239, !240, !241, !242, !243, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3913, !3926, !3929, !3930, !3931, !3932, !3933, !3934, !3938, !3943, !3944, !3945, !3946, !3950, !3951, !3952, !3953, !3954}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !234, file: !128, line: 154, baseType: !197, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !234, file: !128, line: 155, baseType: !196, size: 32, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !234, file: !128, line: 156, baseType: !196, size: 32, offset: 96)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "n_chan", scope: !234, file: !128, line: 157, baseType: !196, size: 32, offset: 128)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "subdev_flags", scope: !234, file: !128, line: 158, baseType: !196, size: 32, offset: 160)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "len_chanlist", scope: !234, file: !128, line: 159, baseType: !196, size: 32, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !234, file: !128, line: 161, baseType: !209, size: 64, offset: 256)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "async", scope: !234, file: !128, line: 163, baseType: !244, size: 64, offset: 320)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_async", file: !128, line: 347, size: 1536, elements: !246)
!246 = !{!247, !248, !249, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3899, !3900, !3901}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !245, file: !128, line: 348, baseType: !209, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_bufsz", scope: !245, file: !128, line: 349, baseType: !7, size: 32, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "buf_map", scope: !245, file: !128, line: 350, baseType: !250, size: 64, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_buf_map", file: !128, line: 249, size: 256, elements: !252)
!252 = !{!253, !3856, !3862, !3863, !3864}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "dma_hw_dev", scope: !251, file: !128, line: 250, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !256)
!256 = !{!257, !3410, !3411, !3414, !3415, !3466, !3557, !3558, !3559, !3560, !3561, !3570, !3675, !3688, !3691, !3692, !3696, !3698, !3699, !3700, !3704, !3710, !3711, !3714, !3718, !3808, !3809, !3810, !3811, !3812, !3844, !3845, !3846, !3849, !3852, !3853, !3854, !3855}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !255, file: !73, line: 462, baseType: !258, size: 512)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !259, line: 64, size: 512, elements: !260)
!259 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!260 = !{!261, !262, !268, !270, !328, !3261, !3400, !3405, !3406, !3407, !3408, !3409}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !258, file: !259, line: 65, baseType: !187, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !258, file: !259, line: 66, baseType: !263, size: 128, offset: 64)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !227, line: 178, size: 128, elements: !264)
!264 = !{!265, !267}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !263, file: !227, line: 179, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !263, file: !227, line: 179, baseType: !266, size: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !258, file: !259, line: 67, baseType: !269, size: 64, offset: 192)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !258, file: !259, line: 68, baseType: !271, size: 64, offset: 256)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !259, line: 192, size: 704, elements: !273)
!273 = !{!274, !275, !291, !292}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !272, file: !259, line: 193, baseType: !263, size: 128)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !272, file: !259, line: 194, baseType: !276, offset: 128)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !277, line: 83, baseType: !278)
!277 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !277, line: 71, elements: !279)
!279 = !{!280}
!280 = !DIDerivedType(tag: DW_TAG_member, scope: !278, file: !277, line: 72, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !278, file: !277, line: 72, elements: !282)
!282 = !{!283}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !281, file: !277, line: 73, baseType: !284)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !277, line: 20, elements: !285)
!285 = !{!286}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !284, file: !277, line: 21, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !288, line: 25, baseType: !289)
!288 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !288, line: 25, elements: !290)
!290 = !{}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !272, file: !259, line: 195, baseType: !258, size: 512, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !272, file: !259, line: 196, baseType: !293, size: 64, offset: 640)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !295)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !259, line: 156, size: 192, elements: !296)
!296 = !{!297, !302, !307}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !295, file: !259, line: 157, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{!196, !271, !269}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !295, file: !259, line: 158, baseType: !303, size: 64, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!187, !271, !269}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !295, file: !259, line: 159, baseType: !308, size: 64, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{!196, !271, !269, !312}
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !259, line: 148, size: 20736, elements: !314)
!314 = !{!315, !318, !322, !323, !327}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !313, file: !259, line: 149, baseType: !316, size: 192)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 192, elements: !221)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !313, file: !259, line: 150, baseType: !319, size: 4096, offset: 192)
!319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 4096, elements: !320)
!320 = !{!321}
!321 = !DISubrange(count: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !313, file: !259, line: 151, baseType: !196, size: 32, offset: 4288)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !313, file: !259, line: 152, baseType: !324, size: 16384, offset: 4320)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 16384, elements: !325)
!325 = !{!326}
!326 = !DISubrange(count: 2048)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !313, file: !259, line: 153, baseType: !196, size: 32, offset: 20704)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !258, file: !259, line: 69, baseType: !329, size: 64, offset: 320)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !259, line: 138, size: 448, elements: !331)
!331 = !{!332, !336, !364, !366, !3223, !3251, !3255}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !330, file: !259, line: 139, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{null, !269}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !330, file: !259, line: 140, baseType: !337, size: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !340, line: 230, size: 128, elements: !341)
!340 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!341 = !{!342, !357}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !339, file: !340, line: 231, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{!346, !269, !351, !317}
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !227, line: 60, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !348, line: 73, baseType: !349)
!348 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !348, line: 15, baseType: !350)
!350 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !340, line: 30, size: 128, elements: !353)
!353 = !{!354, !355}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !352, file: !340, line: 31, baseType: !187, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !352, file: !340, line: 32, baseType: !356, size: 16, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !227, line: 19, baseType: !149)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !339, file: !340, line: 232, baseType: !358, size: 64, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DISubroutineType(types: !360)
!360 = !{!346, !269, !351, !187, !361}
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !227, line: 55, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !348, line: 72, baseType: !363)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !348, line: 16, baseType: !147)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !330, file: !259, line: 141, baseType: !365, size: 64, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !330, file: !259, line: 142, baseType: !367, size: 64, offset: 192)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !370)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !340, line: 84, size: 320, elements: !371)
!371 = !{!372, !373, !377, !3220, !3221}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !370, file: !340, line: 85, baseType: !187, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !370, file: !340, line: 86, baseType: !374, size: 64, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DISubroutineType(types: !376)
!376 = !{!356, !269, !351, !196}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !370, file: !340, line: 88, baseType: !378, size: 64, offset: 128)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DISubroutineType(types: !380)
!380 = !{!356, !269, !381, !196}
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !340, line: 168, size: 448, elements: !383)
!383 = !{!384, !385, !386, !387, !3215, !3216}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !382, file: !340, line: 169, baseType: !352, size: 128)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !382, file: !340, line: 170, baseType: !361, size: 64, offset: 128)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !382, file: !340, line: 171, baseType: !209, size: 64, offset: 192)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !382, file: !340, line: 172, baseType: !388, size: 64, offset: 256)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DISubroutineType(types: !390)
!390 = !{!346, !391, !269, !381, !317, !568, !361}
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !393)
!393 = !{!394, !412, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3198, !3199, !3208, !3209, !3210, !3211, !3212, !3213, !3214}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !392, file: !44, line: 920, baseType: !395, size: 128)
!395 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !392, file: !44, line: 917, size: 128, elements: !396)
!396 = !{!397, !403}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !395, file: !44, line: 918, baseType: !398, size: 64)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !399, line: 58, size: 64, elements: !400)
!399 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!400 = !{!401}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !398, file: !399, line: 59, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !395, file: !44, line: 919, baseType: !404, size: 128, align: 64)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !227, line: 216, size: 128, align: 64, elements: !405)
!405 = !{!406, !408}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !404, file: !227, line: 217, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !404, file: !227, line: 218, baseType: !409, size: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{null, !407}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !392, file: !44, line: 921, baseType: !413, size: 128, offset: 128)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !414, line: 8, size: 128, elements: !415)
!414 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!415 = !{!416, !420}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !413, file: !414, line: 9, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !419, line: 18, flags: DIFlagFwdDecl)
!419 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!420 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !413, file: !414, line: 10, baseType: !421, size: 64, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !419, line: 89, size: 1536, elements: !423)
!423 = !{!424, !425, !435, !443, !444, !467, !3148, !3150, !3162, !3163, !3164, !3165, !3166, !3172, !3173, !3174}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !422, file: !419, line: 91, baseType: !7, size: 32)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !422, file: !419, line: 92, baseType: !426, size: 32, offset: 32)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !427, line: 277, baseType: !428)
!427 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !427, line: 277, size: 32, elements: !429)
!429 = !{!430}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !428, file: !427, line: 277, baseType: !431, size: 32)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !427, line: 70, baseType: !432)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !427, line: 65, size: 32, elements: !433)
!433 = !{!434}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !432, file: !427, line: 66, baseType: !7, size: 32)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !422, file: !419, line: 93, baseType: !436, size: 128, offset: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !437, line: 38, size: 128, elements: !438)
!437 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!438 = !{!439, !441}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !436, file: !437, line: 39, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !436, file: !437, line: 39, baseType: !442, size: 64, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !422, file: !419, line: 94, baseType: !421, size: 64, offset: 192)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !422, file: !419, line: 95, baseType: !445, size: 128, offset: 256)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !419, line: 47, size: 128, elements: !446)
!446 = !{!447, !463}
!447 = !DIDerivedType(tag: DW_TAG_member, scope: !445, file: !419, line: 48, baseType: !448, size: 64)
!448 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !445, file: !419, line: 48, size: 64, elements: !449)
!449 = !{!450, !459}
!450 = !DIDerivedType(tag: DW_TAG_member, scope: !448, file: !419, line: 49, baseType: !451, size: 64)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !448, file: !419, line: 49, size: 64, elements: !452)
!452 = !{!453, !458}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !451, file: !419, line: 50, baseType: !454, size: 32)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !455, line: 21, baseType: !456)
!455 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !457, line: 27, baseType: !7)
!457 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!458 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !451, file: !419, line: 50, baseType: !454, size: 32, offset: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !448, file: !419, line: 52, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !455, line: 23, baseType: !461)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !457, line: 31, baseType: !462)
!462 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !445, file: !419, line: 54, baseType: !464, size: 64, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !466)
!466 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !422, file: !419, line: 96, baseType: !468, size: 64, offset: 384)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !470)
!470 = !{!471, !472, !473, !481, !488, !489, !635, !2859, !2860, !2861, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !3124, !3132, !3133, !3134, !3144, !3145, !3146, !3147}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !469, file: !44, line: 611, baseType: !356, size: 16)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !469, file: !44, line: 612, baseType: !149, size: 16, offset: 16)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !469, file: !44, line: 613, baseType: !474, size: 32, offset: 32)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !475, line: 23, baseType: !476)
!475 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !475, line: 21, size: 32, elements: !477)
!477 = !{!478}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !476, file: !475, line: 22, baseType: !479, size: 32)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !227, line: 32, baseType: !480)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !348, line: 49, baseType: !7)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !469, file: !44, line: 614, baseType: !482, size: 32, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !475, line: 28, baseType: !483)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !475, line: 26, size: 32, elements: !484)
!484 = !{!485}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !483, file: !475, line: 27, baseType: !486, size: 32)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !227, line: 33, baseType: !487)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !348, line: 50, baseType: !7)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !469, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !469, file: !44, line: 622, baseType: !490, size: 64, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !492)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !493)
!493 = !{!494, !498, !511, !515, !521, !525, !529, !533, !537, !541, !545, !546, !552, !556, !582, !611, !615, !621, !626, !630, !631}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !492, file: !44, line: 1865, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!421, !468, !421, !7}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !492, file: !44, line: 1866, baseType: !499, size: 64, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!187, !421, !468, !502}
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !504, line: 10, size: 128, elements: !505)
!504 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!505 = !{!506, !510}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !503, file: !504, line: 11, baseType: !507, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{null, !209}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !503, file: !504, line: 12, baseType: !209, size: 64, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !492, file: !44, line: 1867, baseType: !512, size: 64, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!196, !468, !196}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !492, file: !44, line: 1868, baseType: !516, size: 64, offset: 192)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{!519, !468, !196}
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !492, file: !44, line: 1870, baseType: !522, size: 64, offset: 256)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{!196, !421, !317, !196}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !492, file: !44, line: 1872, baseType: !526, size: 64, offset: 320)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DISubroutineType(types: !528)
!528 = !{!196, !468, !421, !356, !226}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !492, file: !44, line: 1873, baseType: !530, size: 64, offset: 384)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DISubroutineType(types: !532)
!532 = !{!196, !421, !468, !421}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !492, file: !44, line: 1874, baseType: !534, size: 64, offset: 448)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{!196, !468, !421}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !492, file: !44, line: 1875, baseType: !538, size: 64, offset: 512)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!196, !468, !421, !187}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !492, file: !44, line: 1876, baseType: !542, size: 64, offset: 576)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{!196, !468, !421, !356}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !492, file: !44, line: 1877, baseType: !534, size: 64, offset: 640)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !492, file: !44, line: 1878, baseType: !547, size: 64, offset: 704)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{!196, !468, !421, !356, !550}
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !227, line: 16, baseType: !551)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !227, line: 13, baseType: !454)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !492, file: !44, line: 1879, baseType: !553, size: 64, offset: 768)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{!196, !468, !421, !468, !421, !7}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !492, file: !44, line: 1881, baseType: !557, size: 64, offset: 832)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!196, !421, !560}
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !562)
!562 = !{!563, !564, !565, !566, !567, !571, !579, !580, !581}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !561, file: !44, line: 220, baseType: !7, size: 32)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !561, file: !44, line: 221, baseType: !356, size: 16, offset: 32)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !561, file: !44, line: 222, baseType: !474, size: 32, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !561, file: !44, line: 223, baseType: !482, size: 32, offset: 96)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !561, file: !44, line: 224, baseType: !568, size: 64, offset: 128)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !227, line: 46, baseType: !569)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !348, line: 88, baseType: !570)
!570 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !561, file: !44, line: 225, baseType: !572, size: 128, offset: 192)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !573, line: 13, size: 128, elements: !574)
!573 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!574 = !{!575, !578}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !572, file: !573, line: 14, baseType: !576, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !573, line: 8, baseType: !577)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !457, line: 30, baseType: !570)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !572, file: !573, line: 15, baseType: !350, size: 64, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !561, file: !44, line: 226, baseType: !572, size: 128, offset: 320)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !561, file: !44, line: 227, baseType: !572, size: 128, offset: 448)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !561, file: !44, line: 234, baseType: !391, size: 64, offset: 576)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !492, file: !44, line: 1882, baseType: !583, size: 64, offset: 896)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DISubroutineType(types: !585)
!585 = !{!196, !586, !588, !454, !7}
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !413)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !590, line: 22, size: 1152, elements: !591)
!590 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!591 = !{!592, !593, !594, !595, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !589, file: !590, line: 23, baseType: !454, size: 32)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !589, file: !590, line: 24, baseType: !356, size: 16, offset: 32)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !589, file: !590, line: 25, baseType: !7, size: 32, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !589, file: !590, line: 26, baseType: !596, size: 32, offset: 96)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !227, line: 104, baseType: !454)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !589, file: !590, line: 27, baseType: !460, size: 64, offset: 128)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !589, file: !590, line: 28, baseType: !460, size: 64, offset: 192)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !589, file: !590, line: 37, baseType: !460, size: 64, offset: 256)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !589, file: !590, line: 38, baseType: !550, size: 32, offset: 320)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !589, file: !590, line: 39, baseType: !550, size: 32, offset: 352)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !589, file: !590, line: 40, baseType: !474, size: 32, offset: 384)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !589, file: !590, line: 41, baseType: !482, size: 32, offset: 416)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !589, file: !590, line: 42, baseType: !568, size: 64, offset: 448)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !589, file: !590, line: 43, baseType: !572, size: 128, offset: 512)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !589, file: !590, line: 44, baseType: !572, size: 128, offset: 640)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !589, file: !590, line: 45, baseType: !572, size: 128, offset: 768)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !589, file: !590, line: 46, baseType: !572, size: 128, offset: 896)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !589, file: !590, line: 47, baseType: !460, size: 64, offset: 1024)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !589, file: !590, line: 48, baseType: !460, size: 64, offset: 1088)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !492, file: !44, line: 1883, baseType: !612, size: 64, offset: 960)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DISubroutineType(types: !614)
!614 = !{!346, !421, !317, !361}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !492, file: !44, line: 1884, baseType: !616, size: 64, offset: 1024)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DISubroutineType(types: !618)
!618 = !{!196, !468, !619, !460, !460}
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !492, file: !44, line: 1886, baseType: !622, size: 64, offset: 1088)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{!196, !468, !625, !196}
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !492, file: !44, line: 1887, baseType: !627, size: 64, offset: 1152)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!196, !468, !421, !391, !7, !356}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !492, file: !44, line: 1890, baseType: !542, size: 64, offset: 1216)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !492, file: !44, line: 1891, baseType: !632, size: 64, offset: 1280)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{!196, !468, !519, !196}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !469, file: !44, line: 623, baseType: !636, size: 64, offset: 192)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !638)
!638 = !{!639, !640, !641, !642, !643, !644, !691, !2466, !2548, !2631, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2647, !2651, !2652, !2655, !2656, !2659, !2660, !2661, !2702, !2729, !2730, !2731, !2732, !2733, !2734, !2737, !2739, !2746, !2747, !2749, !2750, !2751, !2810, !2811, !2826, !2827, !2828, !2829, !2830, !2833, !2834, !2835, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !637, file: !44, line: 1417, baseType: !263, size: 128)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !637, file: !44, line: 1418, baseType: !550, size: 32, offset: 128)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !637, file: !44, line: 1419, baseType: !466, size: 8, offset: 160)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !637, file: !44, line: 1420, baseType: !147, size: 64, offset: 192)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !637, file: !44, line: 1421, baseType: !568, size: 64, offset: 256)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !637, file: !44, line: 1422, baseType: !645, size: 64, offset: 320)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !647)
!647 = !{!648, !649, !650, !657, !661, !665, !669, !670, !671, !681, !684, !685, !686, !688, !689, !690}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !646, file: !44, line: 2229, baseType: !187, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !646, file: !44, line: 2230, baseType: !196, size: 32, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !646, file: !44, line: 2238, baseType: !651, size: 64, offset: 128)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!196, !654}
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !656, line: 28, flags: DIFlagFwdDecl)
!656 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!657 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !646, file: !44, line: 2239, baseType: !658, size: 64, offset: 192)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !660)
!660 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !646, file: !44, line: 2240, baseType: !662, size: 64, offset: 256)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DISubroutineType(types: !664)
!664 = !{!421, !645, !196, !187, !209}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !646, file: !44, line: 2242, baseType: !666, size: 64, offset: 320)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{null, !636}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !646, file: !44, line: 2243, baseType: !189, size: 64, offset: 384)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !646, file: !44, line: 2244, baseType: !645, size: 64, offset: 448)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !646, file: !44, line: 2245, baseType: !672, size: 64, offset: 512)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !227, line: 182, size: 64, elements: !673)
!673 = !{!674}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !672, file: !227, line: 183, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !227, line: 186, size: 128, elements: !677)
!677 = !{!678, !679}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !676, file: !227, line: 187, baseType: !675, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !676, file: !227, line: 187, baseType: !680, size: 64, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !646, file: !44, line: 2247, baseType: !682, offset: 576)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !683, line: 187, elements: !290)
!683 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!684 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !646, file: !44, line: 2248, baseType: !682, offset: 576)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !646, file: !44, line: 2249, baseType: !682, offset: 576)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !646, file: !44, line: 2250, baseType: !687, offset: 576)
!687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !682, elements: !221)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !646, file: !44, line: 2252, baseType: !682, offset: 576)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !646, file: !44, line: 2253, baseType: !682, offset: 576)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !646, file: !44, line: 2254, baseType: !682, offset: 576)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !637, file: !44, line: 1423, baseType: !692, size: 64, offset: 384)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !694)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !695)
!695 = !{!696, !700, !704, !705, !709, !715, !719, !720, !721, !725, !729, !730, !731, !732, !738, !743, !744, !751, !752, !753, !754, !2450, !2465}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !694, file: !44, line: 1936, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DISubroutineType(types: !699)
!699 = !{!468, !636}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !694, file: !44, line: 1937, baseType: !701, size: 64, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DISubroutineType(types: !703)
!703 = !{null, !468}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !694, file: !44, line: 1938, baseType: !701, size: 64, offset: 128)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !694, file: !44, line: 1940, baseType: !706, size: 64, offset: 192)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DISubroutineType(types: !708)
!708 = !{null, !468, !196}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !694, file: !44, line: 1941, baseType: !710, size: 64, offset: 256)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{!196, !468, !713}
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !694, file: !44, line: 1942, baseType: !716, size: 64, offset: 320)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DISubroutineType(types: !718)
!718 = !{!196, !468}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !694, file: !44, line: 1943, baseType: !701, size: 64, offset: 384)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !694, file: !44, line: 1944, baseType: !666, size: 64, offset: 448)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !694, file: !44, line: 1945, baseType: !722, size: 64, offset: 512)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{!196, !636, !196}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !694, file: !44, line: 1946, baseType: !726, size: 64, offset: 576)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{!196, !636}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !694, file: !44, line: 1947, baseType: !726, size: 64, offset: 640)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !694, file: !44, line: 1948, baseType: !726, size: 64, offset: 704)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !694, file: !44, line: 1949, baseType: !726, size: 64, offset: 768)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !694, file: !44, line: 1950, baseType: !733, size: 64, offset: 832)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!196, !421, !736}
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !694, file: !44, line: 1951, baseType: !739, size: 64, offset: 896)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!196, !636, !742, !317}
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !694, file: !44, line: 1952, baseType: !666, size: 64, offset: 960)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !694, file: !44, line: 1954, baseType: !745, size: 64, offset: 1024)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!196, !748, !421}
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !750, line: 539, flags: DIFlagFwdDecl)
!750 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!751 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !694, file: !44, line: 1955, baseType: !745, size: 64, offset: 1088)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !694, file: !44, line: 1956, baseType: !745, size: 64, offset: 1152)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !694, file: !44, line: 1957, baseType: !745, size: 64, offset: 1216)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !694, file: !44, line: 1963, baseType: !755, size: 64, offset: 1280)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{!196, !636, !758, !781}
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !760, line: 68, size: 512, align: 128, elements: !761)
!760 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!761 = !{!762, !763, !2442, !2449}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !759, file: !760, line: 69, baseType: !147, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, scope: !759, file: !760, line: 77, baseType: !764, size: 320, offset: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !759, file: !760, line: 77, size: 320, elements: !765)
!765 = !{!766, !954, !959, !987, !995, !1001, !2373, !2441}
!766 = !DIDerivedType(tag: DW_TAG_member, scope: !764, file: !760, line: 78, baseType: !767, size: 320)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !764, file: !760, line: 78, size: 320, elements: !768)
!768 = !{!769, !770, !952, !953}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !767, file: !760, line: 84, baseType: !263, size: 128)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !767, file: !760, line: 86, baseType: !771, size: 64, offset: 128)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !773)
!773 = !{!774, !775, !783, !784, !789, !804, !820, !821, !822, !823, !945, !946, !949, !950, !951}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !772, file: !44, line: 452, baseType: !468, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !772, file: !44, line: 453, baseType: !776, size: 128, offset: 64)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !777, line: 292, size: 128, elements: !778)
!777 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!778 = !{!779, !780, !782}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !776, file: !777, line: 293, baseType: !276)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !776, file: !777, line: 295, baseType: !781, size: 32)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !227, line: 148, baseType: !7)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !776, file: !777, line: 296, baseType: !209, size: 64, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !772, file: !44, line: 454, baseType: !781, size: 32, offset: 192)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !772, file: !44, line: 455, baseType: !785, size: 32, offset: 224)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !227, line: 168, baseType: !786)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !227, line: 166, size: 32, elements: !787)
!787 = !{!788}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !786, file: !227, line: 167, baseType: !196, size: 32)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !772, file: !44, line: 460, baseType: !790, size: 128, offset: 256)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !791, line: 125, size: 128, elements: !792)
!791 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!792 = !{!793, !803}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !790, file: !791, line: 126, baseType: !794, size: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !791, line: 31, size: 64, elements: !795)
!795 = !{!796}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !794, file: !791, line: 32, baseType: !797, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !791, line: 24, size: 192, align: 64, elements: !799)
!799 = !{!800, !801, !802}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !798, file: !791, line: 25, baseType: !147, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !798, file: !791, line: 26, baseType: !797, size: 64, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !798, file: !791, line: 27, baseType: !797, size: 64, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !790, file: !791, line: 127, baseType: !797, size: 64, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !772, file: !44, line: 461, baseType: !805, size: 256, offset: 384)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !806, line: 35, size: 256, elements: !807)
!806 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!807 = !{!808, !816, !817, !819}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !805, file: !806, line: 36, baseType: !809, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !810, line: 13, baseType: !811)
!810 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !227, line: 175, baseType: !812)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !227, line: 173, size: 64, elements: !813)
!813 = !{!814}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !812, file: !227, line: 174, baseType: !815, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !455, line: 22, baseType: !577)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !805, file: !806, line: 42, baseType: !809, size: 64, offset: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !805, file: !806, line: 46, baseType: !818, offset: 128)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !277, line: 29, baseType: !284)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !805, file: !806, line: 47, baseType: !263, size: 128, offset: 128)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !772, file: !44, line: 462, baseType: !147, size: 64, offset: 640)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !772, file: !44, line: 463, baseType: !147, size: 64, offset: 704)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !772, file: !44, line: 464, baseType: !147, size: 64, offset: 768)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !772, file: !44, line: 465, baseType: !824, size: 64, offset: 832)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !826)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !827)
!827 = !{!828, !832, !836, !840, !844, !848, !854, !860, !864, !869, !873, !877, !881, !909, !913, !919, !920, !921, !925, !930, !934, !941}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !826, file: !44, line: 368, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!196, !758, !713}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !826, file: !44, line: 369, baseType: !833, size: 64, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{!196, !391, !758}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !826, file: !44, line: 372, baseType: !837, size: 64, offset: 128)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{!196, !771, !713}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !826, file: !44, line: 375, baseType: !841, size: 64, offset: 192)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{!196, !758}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !826, file: !44, line: 381, baseType: !845, size: 64, offset: 256)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{!196, !391, !771, !266, !7}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !826, file: !44, line: 383, baseType: !849, size: 64, offset: 320)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{null, !852}
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !826, file: !44, line: 385, baseType: !855, size: 64, offset: 384)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DISubroutineType(types: !857)
!857 = !{!196, !391, !771, !568, !7, !7, !858, !859}
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !826, file: !44, line: 388, baseType: !861, size: 64, offset: 448)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{!196, !391, !771, !568, !7, !7, !758, !209}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !826, file: !44, line: 393, baseType: !865, size: 64, offset: 512)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{!868, !771, !868}
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !227, line: 125, baseType: !460)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !826, file: !44, line: 394, baseType: !870, size: 64, offset: 576)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{null, !758, !7, !7}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !826, file: !44, line: 395, baseType: !874, size: 64, offset: 640)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DISubroutineType(types: !876)
!876 = !{!196, !758, !781}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !826, file: !44, line: 396, baseType: !878, size: 64, offset: 704)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{null, !758}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !826, file: !44, line: 397, baseType: !882, size: 64, offset: 768)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DISubroutineType(types: !884)
!884 = !{!346, !885, !907}
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !887)
!887 = !{!888, !889, !890, !894, !895, !896, !899, !900}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !886, file: !44, line: 321, baseType: !391, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !886, file: !44, line: 326, baseType: !568, size: 64, offset: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !886, file: !44, line: 327, baseType: !891, size: 64, offset: 128)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{null, !885, !350, !350}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !886, file: !44, line: 328, baseType: !209, size: 64, offset: 192)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !886, file: !44, line: 329, baseType: !196, size: 32, offset: 256)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !886, file: !44, line: 330, baseType: !897, size: 16, offset: 288)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !455, line: 19, baseType: !898)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !457, line: 24, baseType: !149)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !886, file: !44, line: 331, baseType: !897, size: 16, offset: 304)
!900 = !DIDerivedType(tag: DW_TAG_member, scope: !886, file: !44, line: 332, baseType: !901, size: 64, offset: 320)
!901 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !886, file: !44, line: 332, size: 64, elements: !902)
!902 = !{!903, !904}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !901, file: !44, line: 333, baseType: !7, size: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !901, file: !44, line: 334, baseType: !905, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !826, file: !44, line: 402, baseType: !910, size: 64, offset: 832)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DISubroutineType(types: !912)
!912 = !{!196, !771, !758, !758, !5}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !826, file: !44, line: 404, baseType: !914, size: 64, offset: 896)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DISubroutineType(types: !916)
!916 = !{!226, !758, !917}
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !918, line: 305, baseType: !7)
!918 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!919 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !826, file: !44, line: 405, baseType: !878, size: 64, offset: 960)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !826, file: !44, line: 406, baseType: !841, size: 64, offset: 1024)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !826, file: !44, line: 407, baseType: !922, size: 64, offset: 1088)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DISubroutineType(types: !924)
!924 = !{!196, !758, !147, !147}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !826, file: !44, line: 409, baseType: !926, size: 64, offset: 1152)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DISubroutineType(types: !928)
!928 = !{null, !758, !929, !929}
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !826, file: !44, line: 410, baseType: !931, size: 64, offset: 1216)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DISubroutineType(types: !933)
!933 = !{!196, !771, !758}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !826, file: !44, line: 413, baseType: !935, size: 64, offset: 1280)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DISubroutineType(types: !937)
!937 = !{!196, !938, !391, !940}
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !826, file: !44, line: 415, baseType: !942, size: 64, offset: 1344)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{null, !391}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !772, file: !44, line: 466, baseType: !147, size: 64, offset: 896)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !772, file: !44, line: 467, baseType: !947, size: 32, offset: 960)
!947 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !948, line: 8, baseType: !454)
!948 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!949 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !772, file: !44, line: 468, baseType: !276, offset: 992)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !772, file: !44, line: 469, baseType: !263, size: 128, offset: 1024)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !772, file: !44, line: 470, baseType: !209, size: 64, offset: 1152)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !767, file: !760, line: 87, baseType: !147, size: 64, offset: 192)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !767, file: !760, line: 94, baseType: !147, size: 64, offset: 256)
!954 = !DIDerivedType(tag: DW_TAG_member, scope: !764, file: !760, line: 96, baseType: !955, size: 64)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !764, file: !760, line: 96, size: 64, elements: !956)
!956 = !{!957}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !955, file: !760, line: 101, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !227, line: 143, baseType: !460)
!959 = !DIDerivedType(tag: DW_TAG_member, scope: !764, file: !760, line: 103, baseType: !960, size: 320)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !764, file: !760, line: 103, size: 320, elements: !961)
!961 = !{!962, !972, !975, !976}
!962 = !DIDerivedType(tag: DW_TAG_member, scope: !960, file: !760, line: 104, baseType: !963, size: 128)
!963 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !960, file: !760, line: 104, size: 128, elements: !964)
!964 = !{!965, !966}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !963, file: !760, line: 105, baseType: !263, size: 128)
!966 = !DIDerivedType(tag: DW_TAG_member, scope: !963, file: !760, line: 106, baseType: !967, size: 128)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !963, file: !760, line: 106, size: 128, elements: !968)
!968 = !{!969, !970, !971}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !967, file: !760, line: 107, baseType: !758, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !967, file: !760, line: 109, baseType: !196, size: 32, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !967, file: !760, line: 110, baseType: !196, size: 32, offset: 96)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !960, file: !760, line: 117, baseType: !973, size: 64, offset: 128)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !760, line: 117, flags: DIFlagFwdDecl)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !960, file: !760, line: 119, baseType: !209, size: 64, offset: 192)
!976 = !DIDerivedType(tag: DW_TAG_member, scope: !960, file: !760, line: 120, baseType: !977, size: 64, offset: 256)
!977 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !960, file: !760, line: 120, size: 64, elements: !978)
!978 = !{!979, !980, !981}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !977, file: !760, line: 121, baseType: !209, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !977, file: !760, line: 122, baseType: !147, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, scope: !977, file: !760, line: 123, baseType: !982, size: 32)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !977, file: !760, line: 123, size: 32, elements: !983)
!983 = !{!984, !985, !986}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !982, file: !760, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !982, file: !760, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !982, file: !760, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!987 = !DIDerivedType(tag: DW_TAG_member, scope: !764, file: !760, line: 130, baseType: !988, size: 192)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !764, file: !760, line: 130, size: 192, elements: !989)
!989 = !{!990, !991, !992, !993, !994}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !988, file: !760, line: 131, baseType: !147, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !988, file: !760, line: 134, baseType: !466, size: 8, offset: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !988, file: !760, line: 135, baseType: !466, size: 8, offset: 72)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !988, file: !760, line: 136, baseType: !785, size: 32, offset: 96)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !988, file: !760, line: 137, baseType: !7, size: 32, offset: 128)
!995 = !DIDerivedType(tag: DW_TAG_member, scope: !764, file: !760, line: 139, baseType: !996, size: 256)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !764, file: !760, line: 139, size: 256, elements: !997)
!997 = !{!998, !999, !1000}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !996, file: !760, line: 140, baseType: !147, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !996, file: !760, line: 141, baseType: !785, size: 32, offset: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !996, file: !760, line: 143, baseType: !263, size: 128, offset: 128)
!1001 = !DIDerivedType(tag: DW_TAG_member, scope: !764, file: !760, line: 145, baseType: !1002, size: 256)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !764, file: !760, line: 145, size: 256, elements: !1003)
!1003 = !{!1004, !1005, !1007, !1008, !2372}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1002, file: !760, line: 146, baseType: !147, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1002, file: !760, line: 147, baseType: !1006, size: 64, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !750, line: 509, baseType: !758)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1002, file: !760, line: 148, baseType: !147, size: 64, offset: 128)
!1008 = !DIDerivedType(tag: DW_TAG_member, scope: !1002, file: !760, line: 149, baseType: !1009, size: 64, offset: 192)
!1009 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1002, file: !760, line: 149, size: 64, elements: !1010)
!1010 = !{!1011, !2371}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1009, file: !760, line: 150, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !760, line: 388, size: 7296, elements: !1014)
!1014 = !{!1015, !2367}
!1015 = !DIDerivedType(tag: DW_TAG_member, scope: !1013, file: !760, line: 389, baseType: !1016, size: 7296)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1013, file: !760, line: 389, size: 7296, elements: !1017)
!1017 = !{!1018, !1136, !1137, !1138, !1142, !1143, !1144, !1145, !1146, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1187, !1195, !1198, !1244, !1245, !2351, !2352, !2355, !2356, !2357, !2360, !2361, !2362, !2365, !2366}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1016, file: !760, line: 390, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !760, line: 305, size: 1472, elements: !1021)
!1021 = !{!1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1036, !1037, !1042, !1043, !1046, !1130, !1131, !1132, !1133, !1134}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1020, file: !760, line: 308, baseType: !147, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1020, file: !760, line: 309, baseType: !147, size: 64, offset: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1020, file: !760, line: 313, baseType: !1019, size: 64, offset: 128)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1020, file: !760, line: 313, baseType: !1019, size: 64, offset: 192)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1020, file: !760, line: 315, baseType: !798, size: 192, align: 64, offset: 256)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1020, file: !760, line: 323, baseType: !147, size: 64, offset: 448)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1020, file: !760, line: 327, baseType: !1012, size: 64, offset: 512)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1020, file: !760, line: 333, baseType: !1030, size: 64, offset: 576)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !750, line: 284, baseType: !1031)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !750, line: 284, size: 64, elements: !1032)
!1032 = !{!1033}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1031, file: !750, line: 284, baseType: !1034, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1035, line: 19, baseType: !147)
!1035 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1020, file: !760, line: 334, baseType: !147, size: 64, offset: 640)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1020, file: !760, line: 343, baseType: !1038, size: 256, offset: 704)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1020, file: !760, line: 340, size: 256, elements: !1039)
!1039 = !{!1040, !1041}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1038, file: !760, line: 341, baseType: !798, size: 192, align: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1038, file: !760, line: 342, baseType: !147, size: 64, offset: 192)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1020, file: !760, line: 351, baseType: !263, size: 128, offset: 960)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1020, file: !760, line: 353, baseType: !1044, size: 64, offset: 1088)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !760, line: 353, flags: DIFlagFwdDecl)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1020, file: !760, line: 356, baseType: !1047, size: 64, offset: 1152)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1049)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1050)
!1050 = !{!1051, !1055, !1056, !1060, !1064, !1104, !1108, !1112, !1116, !1117, !1118, !1122, !1126}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1049, file: !14, line: 558, baseType: !1052, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{null, !1019}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1049, file: !14, line: 559, baseType: !1052, size: 64, offset: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1049, file: !14, line: 560, baseType: !1057, size: 64, offset: 128)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!196, !1019, !147}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1049, file: !14, line: 561, baseType: !1061, size: 64, offset: 192)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!196, !1019}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1049, file: !14, line: 562, baseType: !1065, size: 64, offset: 256)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!1068, !1069}
!1068 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !760, line: 682, baseType: !7)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1071)
!1071 = !{!1072, !1073, !1074, !1075, !1076, !1077, !1084, !1091, !1097, !1098, !1099, !1101, !1103}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1070, file: !14, line: 509, baseType: !1019, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1070, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1070, file: !14, line: 511, baseType: !781, size: 32, offset: 96)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1070, file: !14, line: 512, baseType: !147, size: 64, offset: 128)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1070, file: !14, line: 513, baseType: !147, size: 64, offset: 192)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1070, file: !14, line: 514, baseType: !1078, size: 64, offset: 256)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !750, line: 385, baseType: !1080)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !750, line: 385, size: 64, elements: !1081)
!1081 = !{!1082}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1080, file: !750, line: 385, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1035, line: 15, baseType: !147)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1070, file: !14, line: 516, baseType: !1085, size: 64, offset: 320)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !750, line: 359, baseType: !1087)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !750, line: 359, size: 64, elements: !1088)
!1088 = !{!1089}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1087, file: !750, line: 359, baseType: !1090, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1035, line: 16, baseType: !147)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1070, file: !14, line: 519, baseType: !1092, size: 64, offset: 384)
!1092 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1035, line: 21, baseType: !1093)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1035, line: 21, size: 64, elements: !1094)
!1094 = !{!1095}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1093, file: !1035, line: 21, baseType: !1096, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1035, line: 14, baseType: !147)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1070, file: !14, line: 521, baseType: !758, size: 64, offset: 448)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1070, file: !14, line: 522, baseType: !758, size: 64, offset: 512)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1070, file: !14, line: 528, baseType: !1100, size: 64, offset: 576)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1070, file: !14, line: 532, baseType: !1102, size: 64, offset: 640)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1070, file: !14, line: 536, baseType: !1006, size: 64, offset: 704)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1049, file: !14, line: 563, baseType: !1105, size: 64, offset: 320)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!1068, !1069, !13}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1049, file: !14, line: 565, baseType: !1109, size: 64, offset: 384)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{null, !1069, !147, !147}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1049, file: !14, line: 567, baseType: !1113, size: 64, offset: 448)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!147, !1019}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1049, file: !14, line: 571, baseType: !1065, size: 64, offset: 512)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1049, file: !14, line: 574, baseType: !1065, size: 64, offset: 576)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1049, file: !14, line: 579, baseType: !1119, size: 64, offset: 640)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!196, !1019, !147, !209, !196, !196}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1049, file: !14, line: 585, baseType: !1123, size: 64, offset: 704)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!187, !1019}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1049, file: !14, line: 615, baseType: !1127, size: 64, offset: 768)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!758, !1019, !147}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1020, file: !760, line: 359, baseType: !147, size: 64, offset: 1216)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1020, file: !760, line: 361, baseType: !391, size: 64, offset: 1280)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1020, file: !760, line: 362, baseType: !209, size: 64, offset: 1344)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1020, file: !760, line: 365, baseType: !809, size: 64, offset: 1408)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1020, file: !760, line: 373, baseType: !1135, offset: 1472)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !760, line: 296, elements: !290)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1016, file: !760, line: 391, baseType: !794, size: 64, offset: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1016, file: !760, line: 392, baseType: !460, size: 64, offset: 128)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1016, file: !760, line: 394, baseType: !1139, size: 64, offset: 192)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!147, !391, !147, !147, !147, !147}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1016, file: !760, line: 398, baseType: !147, size: 64, offset: 256)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1016, file: !760, line: 399, baseType: !147, size: 64, offset: 320)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1016, file: !760, line: 405, baseType: !147, size: 64, offset: 384)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1016, file: !760, line: 406, baseType: !147, size: 64, offset: 448)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1016, file: !760, line: 407, baseType: !1147, size: 64, offset: 512)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !750, line: 286, baseType: !1149)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !750, line: 286, size: 64, elements: !1150)
!1150 = !{!1151}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1149, file: !750, line: 286, baseType: !1152, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1035, line: 18, baseType: !147)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1016, file: !760, line: 416, baseType: !785, size: 32, offset: 576)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1016, file: !760, line: 428, baseType: !785, size: 32, offset: 608)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1016, file: !760, line: 437, baseType: !785, size: 32, offset: 640)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1016, file: !760, line: 447, baseType: !785, size: 32, offset: 672)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1016, file: !760, line: 450, baseType: !809, size: 64, offset: 704)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1016, file: !760, line: 452, baseType: !196, size: 32, offset: 768)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1016, file: !760, line: 454, baseType: !276, offset: 800)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1016, file: !760, line: 457, baseType: !805, size: 256, offset: 832)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1016, file: !760, line: 459, baseType: !263, size: 128, offset: 1088)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1016, file: !760, line: 466, baseType: !147, size: 64, offset: 1216)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1016, file: !760, line: 467, baseType: !147, size: 64, offset: 1280)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1016, file: !760, line: 469, baseType: !147, size: 64, offset: 1344)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1016, file: !760, line: 470, baseType: !147, size: 64, offset: 1408)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1016, file: !760, line: 471, baseType: !811, size: 64, offset: 1472)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1016, file: !760, line: 472, baseType: !147, size: 64, offset: 1536)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1016, file: !760, line: 473, baseType: !147, size: 64, offset: 1600)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1016, file: !760, line: 474, baseType: !147, size: 64, offset: 1664)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1016, file: !760, line: 475, baseType: !147, size: 64, offset: 1728)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1016, file: !760, line: 477, baseType: !276, offset: 1792)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1016, file: !760, line: 478, baseType: !147, size: 64, offset: 1792)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1016, file: !760, line: 478, baseType: !147, size: 64, offset: 1856)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1016, file: !760, line: 478, baseType: !147, size: 64, offset: 1920)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1016, file: !760, line: 478, baseType: !147, size: 64, offset: 1984)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1016, file: !760, line: 479, baseType: !147, size: 64, offset: 2048)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1016, file: !760, line: 479, baseType: !147, size: 64, offset: 2112)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1016, file: !760, line: 479, baseType: !147, size: 64, offset: 2176)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1016, file: !760, line: 480, baseType: !147, size: 64, offset: 2240)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1016, file: !760, line: 480, baseType: !147, size: 64, offset: 2304)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1016, file: !760, line: 480, baseType: !147, size: 64, offset: 2368)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1016, file: !760, line: 480, baseType: !147, size: 64, offset: 2432)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1016, file: !760, line: 482, baseType: !1184, size: 2816, offset: 2496)
!1184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 2816, elements: !1185)
!1185 = !{!1186}
!1186 = !DISubrange(count: 44)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1016, file: !760, line: 488, baseType: !1188, size: 256, offset: 5312)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1189, line: 60, size: 256, elements: !1190)
!1189 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1190 = !{!1191}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1188, file: !1189, line: 61, baseType: !1192, size: 256)
!1192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !809, size: 256, elements: !1193)
!1193 = !{!1194}
!1194 = !DISubrange(count: 4)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1016, file: !760, line: 490, baseType: !1196, size: 64, offset: 5568)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !760, line: 490, flags: DIFlagFwdDecl)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1016, file: !760, line: 493, baseType: !1199, size: 896, offset: 5632)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1200, line: 53, baseType: !1201)
!1200 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1200, line: 13, size: 896, elements: !1202)
!1202 = !{!1203, !1204, !1205, !1206, !1209, !1210, !1217, !1218, !1238, !1239, !1240}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1201, file: !1200, line: 18, baseType: !460, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1201, file: !1200, line: 28, baseType: !811, size: 64, offset: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1201, file: !1200, line: 31, baseType: !805, size: 256, offset: 128)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1201, file: !1200, line: 32, baseType: !1207, size: 64, offset: 384)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1200, line: 32, flags: DIFlagFwdDecl)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1201, file: !1200, line: 37, baseType: !149, size: 16, offset: 448)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1201, file: !1200, line: 40, baseType: !1211, size: 192, offset: 512)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1212, line: 53, size: 192, elements: !1213)
!1212 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1213 = !{!1214, !1215, !1216}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1211, file: !1212, line: 54, baseType: !809, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1211, file: !1212, line: 55, baseType: !276, offset: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1211, file: !1212, line: 59, baseType: !263, size: 128, offset: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1201, file: !1200, line: 41, baseType: !209, size: 64, offset: 704)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1201, file: !1200, line: 42, baseType: !1219, size: 64, offset: 768)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1221)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1222, line: 13, size: 896, elements: !1223)
!1222 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1223 = !{!1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1221, file: !1222, line: 14, baseType: !209, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1221, file: !1222, line: 15, baseType: !147, size: 64, offset: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1221, file: !1222, line: 17, baseType: !147, size: 64, offset: 128)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1221, file: !1222, line: 17, baseType: !147, size: 64, offset: 192)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1221, file: !1222, line: 19, baseType: !350, size: 64, offset: 256)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1221, file: !1222, line: 21, baseType: !350, size: 64, offset: 320)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1221, file: !1222, line: 22, baseType: !350, size: 64, offset: 384)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1221, file: !1222, line: 23, baseType: !350, size: 64, offset: 448)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1221, file: !1222, line: 24, baseType: !350, size: 64, offset: 512)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1221, file: !1222, line: 25, baseType: !350, size: 64, offset: 576)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1221, file: !1222, line: 26, baseType: !350, size: 64, offset: 640)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1221, file: !1222, line: 27, baseType: !350, size: 64, offset: 704)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1221, file: !1222, line: 28, baseType: !350, size: 64, offset: 768)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1221, file: !1222, line: 29, baseType: !350, size: 64, offset: 832)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1201, file: !1200, line: 44, baseType: !785, size: 32, offset: 832)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1201, file: !1200, line: 50, baseType: !897, size: 16, offset: 864)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1201, file: !1200, line: 51, baseType: !1241, size: 16, offset: 880)
!1241 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !455, line: 18, baseType: !1242)
!1242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !457, line: 23, baseType: !1243)
!1243 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1016, file: !760, line: 495, baseType: !147, size: 64, offset: 6528)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1016, file: !760, line: 497, baseType: !1246, size: 64, offset: 6592)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !760, line: 381, size: 384, elements: !1248)
!1248 = !{!1249, !1250, !2350}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1247, file: !760, line: 382, baseType: !785, size: 32)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1247, file: !760, line: 383, baseType: !1251, size: 128, offset: 64)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !760, line: 376, size: 128, elements: !1252)
!1252 = !{!1253, !2348}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1251, file: !760, line: 377, baseType: !1254, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1256, line: 640, size: 48640, elements: !1257)
!1256 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1257 = !{!1258, !1264, !1266, !1267, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1284, !1302, !1313, !1398, !1399, !1400, !1411, !1412, !1414, !1415, !1416, !1417, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1496, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1534, !1536, !1537, !1538, !1550, !1551, !1552, !1553, !1554, !1555, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1579, !1584, !1768, !1769, !1770, !1771, !1775, !1778, !1781, !1784, !1787, !1791, !1892, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1936, !1937, !1938, !1939, !1940, !1945, !1946, !1947, !1950, !1951, !1954, !1957, !1960, !1963, !2006, !2009, !2010, !2089, !2090, !2093, !2094, !2097, !2098, !2099, !2103, !2104, !2105, !2118, !2119, !2120, !2130, !2135, !2138, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1255, file: !1256, line: 646, baseType: !1259, size: 128)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1260, line: 56, size: 128, elements: !1261)
!1260 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1261 = !{!1262, !1263}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1259, file: !1260, line: 57, baseType: !147, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1259, file: !1260, line: 58, baseType: !454, size: 32, offset: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1255, file: !1256, line: 649, baseType: !1265, size: 64, offset: 128)
!1265 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !350)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1255, file: !1256, line: 657, baseType: !209, size: 64, offset: 192)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1255, file: !1256, line: 658, baseType: !1268, size: 32, offset: 256)
!1268 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1269, line: 113, baseType: !1270)
!1269 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1269, line: 111, size: 32, elements: !1271)
!1271 = !{!1272}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1270, file: !1269, line: 112, baseType: !785, size: 32)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1255, file: !1256, line: 660, baseType: !7, size: 32, offset: 288)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1255, file: !1256, line: 661, baseType: !7, size: 32, offset: 320)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1255, file: !1256, line: 684, baseType: !196, size: 32, offset: 352)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1255, file: !1256, line: 686, baseType: !196, size: 32, offset: 384)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1255, file: !1256, line: 687, baseType: !196, size: 32, offset: 416)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1255, file: !1256, line: 688, baseType: !196, size: 32, offset: 448)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1255, file: !1256, line: 689, baseType: !7, size: 32, offset: 480)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1255, file: !1256, line: 691, baseType: !1281, size: 64, offset: 512)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1283)
!1283 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1256, line: 691, flags: DIFlagFwdDecl)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1255, file: !1256, line: 692, baseType: !1285, size: 832, offset: 576)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1256, line: 451, size: 832, elements: !1286)
!1286 = !{!1287, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1285, file: !1256, line: 453, baseType: !1288, size: 128)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1256, line: 325, size: 128, elements: !1289)
!1289 = !{!1290, !1291}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1288, file: !1256, line: 326, baseType: !147, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1288, file: !1256, line: 327, baseType: !454, size: 32, offset: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1285, file: !1256, line: 454, baseType: !798, size: 192, align: 64, offset: 128)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1285, file: !1256, line: 455, baseType: !263, size: 128, offset: 320)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1285, file: !1256, line: 456, baseType: !7, size: 32, offset: 448)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1285, file: !1256, line: 458, baseType: !460, size: 64, offset: 512)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1285, file: !1256, line: 459, baseType: !460, size: 64, offset: 576)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1285, file: !1256, line: 460, baseType: !460, size: 64, offset: 640)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1285, file: !1256, line: 461, baseType: !460, size: 64, offset: 704)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1285, file: !1256, line: 463, baseType: !460, size: 64, offset: 768)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1285, file: !1256, line: 465, baseType: !1301, offset: 832)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1256, line: 415, elements: !290)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1255, file: !1256, line: 693, baseType: !1303, size: 384, offset: 1408)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1256, line: 489, size: 384, elements: !1304)
!1304 = !{!1305, !1306, !1307, !1308, !1309, !1310, !1311}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1303, file: !1256, line: 490, baseType: !263, size: 128)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1303, file: !1256, line: 491, baseType: !147, size: 64, offset: 128)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1303, file: !1256, line: 492, baseType: !147, size: 64, offset: 192)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1303, file: !1256, line: 493, baseType: !7, size: 32, offset: 256)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1303, file: !1256, line: 494, baseType: !149, size: 16, offset: 288)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1303, file: !1256, line: 495, baseType: !149, size: 16, offset: 304)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1303, file: !1256, line: 497, baseType: !1312, size: 64, offset: 320)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1255, file: !1256, line: 697, baseType: !1314, size: 1792, offset: 1792)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1256, line: 507, size: 1792, elements: !1315)
!1315 = !{!1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1395, !1396}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1314, file: !1256, line: 508, baseType: !798, size: 192, align: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1314, file: !1256, line: 515, baseType: !460, size: 64, offset: 192)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1314, file: !1256, line: 516, baseType: !460, size: 64, offset: 256)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1314, file: !1256, line: 517, baseType: !460, size: 64, offset: 320)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1314, file: !1256, line: 518, baseType: !460, size: 64, offset: 384)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1314, file: !1256, line: 519, baseType: !460, size: 64, offset: 448)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1314, file: !1256, line: 526, baseType: !815, size: 64, offset: 512)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1314, file: !1256, line: 527, baseType: !460, size: 64, offset: 576)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1314, file: !1256, line: 528, baseType: !7, size: 32, offset: 640)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1314, file: !1256, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1314, file: !1256, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1314, file: !1256, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1314, file: !1256, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1314, file: !1256, line: 563, baseType: !1330, size: 512, offset: 704)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1331)
!1331 = !{!1332, !1340, !1341, !1346, !1389, !1392, !1393, !1394}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1330, file: !20, line: 119, baseType: !1333, size: 256)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1334, line: 9, size: 256, elements: !1335)
!1334 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1335 = !{!1336, !1337}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1333, file: !1334, line: 10, baseType: !798, size: 192, align: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1333, file: !1334, line: 11, baseType: !1338, size: 64, offset: 192)
!1338 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1339, line: 29, baseType: !815)
!1339 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1330, file: !20, line: 120, baseType: !1338, size: 64, offset: 256)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1330, file: !20, line: 121, baseType: !1342, size: 64, offset: 320)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!19, !1345}
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1330, file: !20, line: 122, baseType: !1347, size: 64, offset: 384)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1349)
!1349 = !{!1350, !1370, !1371, !1374, !1379, !1380, !1384, !1388}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1348, file: !20, line: 160, baseType: !1351, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1353)
!1353 = !{!1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1352, file: !20, line: 215, baseType: !818)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1352, file: !20, line: 216, baseType: !7, size: 32)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1352, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1352, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1352, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1352, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1352, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1352, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1352, file: !20, line: 233, baseType: !1338, size: 64, offset: 128)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1352, file: !20, line: 234, baseType: !1345, size: 64, offset: 192)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1352, file: !20, line: 235, baseType: !1338, size: 64, offset: 256)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1352, file: !20, line: 236, baseType: !1345, size: 64, offset: 320)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1352, file: !20, line: 237, baseType: !1367, size: 4096, offset: 512)
!1367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1348, size: 4096, elements: !1368)
!1368 = !{!1369}
!1369 = !DISubrange(count: 8)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1348, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1348, file: !20, line: 162, baseType: !1372, size: 32, offset: 96)
!1372 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !227, line: 27, baseType: !1373)
!1373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !348, line: 96, baseType: !196)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1348, file: !20, line: 163, baseType: !1375, size: 32, offset: 128)
!1375 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !427, line: 276, baseType: !1376)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !427, line: 276, size: 32, elements: !1377)
!1377 = !{!1378}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1376, file: !427, line: 276, baseType: !431, size: 32)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1348, file: !20, line: 164, baseType: !1345, size: 64, offset: 192)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1348, file: !20, line: 165, baseType: !1381, size: 128, offset: 256)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1334, line: 14, size: 128, elements: !1382)
!1382 = !{!1383}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1381, file: !1334, line: 15, baseType: !790, size: 128)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1348, file: !20, line: 166, baseType: !1385, size: 64, offset: 384)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{!1338}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1348, file: !20, line: 167, baseType: !1338, size: 64, offset: 448)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1330, file: !20, line: 123, baseType: !1390, size: 8, offset: 448)
!1390 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !455, line: 17, baseType: !1391)
!1391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !457, line: 21, baseType: !466)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1330, file: !20, line: 124, baseType: !1390, size: 8, offset: 456)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1330, file: !20, line: 125, baseType: !1390, size: 8, offset: 464)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1330, file: !20, line: 126, baseType: !1390, size: 8, offset: 472)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1314, file: !1256, line: 572, baseType: !1330, size: 512, offset: 1216)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1314, file: !1256, line: 580, baseType: !1397, size: 64, offset: 1728)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1255, file: !1256, line: 721, baseType: !7, size: 32, offset: 3584)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1255, file: !1256, line: 722, baseType: !196, size: 32, offset: 3616)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1255, file: !1256, line: 723, baseType: !1401, size: 64, offset: 3648)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1403)
!1403 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1404, line: 17, baseType: !1405)
!1404 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1404, line: 17, size: 64, elements: !1406)
!1406 = !{!1407}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1405, file: !1404, line: 17, baseType: !1408, size: 64)
!1408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 64, elements: !1409)
!1409 = !{!1410}
!1410 = !DISubrange(count: 1)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1255, file: !1256, line: 724, baseType: !1403, size: 64, offset: 3712)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1255, file: !1256, line: 749, baseType: !1413, offset: 3776)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1256, line: 290, elements: !290)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1255, file: !1256, line: 751, baseType: !263, size: 128, offset: 3776)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1255, file: !1256, line: 757, baseType: !1012, size: 64, offset: 3904)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1255, file: !1256, line: 758, baseType: !1012, size: 64, offset: 3968)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1255, file: !1256, line: 761, baseType: !1418, size: 320, offset: 4032)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1189, line: 34, size: 320, elements: !1419)
!1419 = !{!1420, !1421}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1418, file: !1189, line: 35, baseType: !460, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1418, file: !1189, line: 36, baseType: !1422, size: 256, offset: 64)
!1422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1019, size: 256, elements: !1193)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1255, file: !1256, line: 766, baseType: !196, size: 32, offset: 4352)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1255, file: !1256, line: 767, baseType: !196, size: 32, offset: 4384)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1255, file: !1256, line: 768, baseType: !196, size: 32, offset: 4416)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1255, file: !1256, line: 770, baseType: !196, size: 32, offset: 4448)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1255, file: !1256, line: 772, baseType: !147, size: 64, offset: 4480)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1255, file: !1256, line: 775, baseType: !7, size: 32, offset: 4544)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1255, file: !1256, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1255, file: !1256, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1255, file: !1256, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1255, file: !1256, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1255, file: !1256, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1255, file: !1256, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1255, file: !1256, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1255, file: !1256, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1255, file: !1256, line: 831, baseType: !147, size: 64, offset: 4672)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1255, file: !1256, line: 833, baseType: !1439, size: 384, offset: 4736)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1440)
!1440 = !{!1441, !1446}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1439, file: !25, line: 26, baseType: !1442, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!350, !1445}
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, scope: !1439, file: !25, line: 27, baseType: !1447, size: 320, offset: 64)
!1447 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1439, file: !25, line: 27, size: 320, elements: !1448)
!1448 = !{!1449, !1459, !1486}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1447, file: !25, line: 36, baseType: !1450, size: 320)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1447, file: !25, line: 29, size: 320, elements: !1451)
!1451 = !{!1452, !1454, !1455, !1456, !1457, !1458}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1450, file: !25, line: 30, baseType: !1453, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1450, file: !25, line: 31, baseType: !454, size: 32, offset: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1450, file: !25, line: 32, baseType: !454, size: 32, offset: 96)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1450, file: !25, line: 33, baseType: !454, size: 32, offset: 128)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1450, file: !25, line: 34, baseType: !460, size: 64, offset: 192)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1450, file: !25, line: 35, baseType: !1453, size: 64, offset: 256)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1447, file: !25, line: 46, baseType: !1460, size: 192)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1447, file: !25, line: 38, size: 192, elements: !1461)
!1461 = !{!1462, !1463, !1464, !1485}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1460, file: !25, line: 39, baseType: !1372, size: 32)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1460, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1464 = !DIDerivedType(tag: DW_TAG_member, scope: !1460, file: !25, line: 41, baseType: !1465, size: 64, offset: 64)
!1465 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1460, file: !25, line: 41, size: 64, elements: !1466)
!1466 = !{!1467, !1475}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1465, file: !25, line: 42, baseType: !1468, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1470, line: 7, size: 128, elements: !1471)
!1470 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1471 = !{!1472, !1474}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1469, file: !1470, line: 8, baseType: !1473, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !348, line: 93, baseType: !570)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1469, file: !1470, line: 9, baseType: !570, size: 64, offset: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1465, file: !25, line: 43, baseType: !1476, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1478, line: 7, size: 64, elements: !1479)
!1478 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1479 = !{!1480, !1484}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1477, file: !1478, line: 8, baseType: !1481, size: 32)
!1481 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1478, line: 5, baseType: !1482)
!1482 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !455, line: 20, baseType: !1483)
!1483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !457, line: 26, baseType: !196)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1477, file: !1478, line: 9, baseType: !1482, size: 32, offset: 32)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1460, file: !25, line: 45, baseType: !460, size: 64, offset: 128)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1447, file: !25, line: 54, baseType: !1487, size: 256)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1447, file: !25, line: 48, size: 256, elements: !1488)
!1488 = !{!1489, !1492, !1493, !1494, !1495}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1487, file: !25, line: 49, baseType: !1490, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1487, file: !25, line: 50, baseType: !196, size: 32, offset: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1487, file: !25, line: 51, baseType: !196, size: 32, offset: 96)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1487, file: !25, line: 52, baseType: !147, size: 64, offset: 128)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1487, file: !25, line: 53, baseType: !147, size: 64, offset: 192)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1255, file: !1256, line: 835, baseType: !1497, size: 32, offset: 5120)
!1497 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !227, line: 22, baseType: !1498)
!1498 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !348, line: 28, baseType: !196)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1255, file: !1256, line: 836, baseType: !1497, size: 32, offset: 5152)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1255, file: !1256, line: 840, baseType: !147, size: 64, offset: 5184)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1255, file: !1256, line: 849, baseType: !1254, size: 64, offset: 5248)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1255, file: !1256, line: 852, baseType: !1254, size: 64, offset: 5312)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1255, file: !1256, line: 857, baseType: !263, size: 128, offset: 5376)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1255, file: !1256, line: 858, baseType: !263, size: 128, offset: 5504)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1255, file: !1256, line: 859, baseType: !1254, size: 64, offset: 5632)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1255, file: !1256, line: 867, baseType: !263, size: 128, offset: 5696)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1255, file: !1256, line: 868, baseType: !263, size: 128, offset: 5824)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1255, file: !1256, line: 871, baseType: !1509, size: 64, offset: 5952)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1511)
!1511 = !{!1512, !1513, !1514, !1515, !1517, !1518, !1525, !1526}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1510, file: !53, line: 61, baseType: !1268, size: 32)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1510, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1510, file: !53, line: 63, baseType: !276, offset: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1510, file: !53, line: 65, baseType: !1516, size: 256, offset: 64)
!1516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !672, size: 256, elements: !1193)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1510, file: !53, line: 66, baseType: !672, size: 64, offset: 320)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1510, file: !53, line: 68, baseType: !1519, size: 128, offset: 384)
!1519 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1520, line: 40, baseType: !1521)
!1520 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1520, line: 36, size: 128, elements: !1522)
!1522 = !{!1523, !1524}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1521, file: !1520, line: 37, baseType: !276)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1521, file: !1520, line: 38, baseType: !263, size: 128)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1510, file: !53, line: 69, baseType: !404, size: 128, align: 64, offset: 512)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1510, file: !53, line: 70, baseType: !1527, size: 128, offset: 640)
!1527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1528, size: 128, elements: !1409)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1529)
!1529 = !{!1530, !1531}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1528, file: !53, line: 55, baseType: !196, size: 32)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1528, file: !53, line: 56, baseType: !1532, size: 64, offset: 64)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1255, file: !1256, line: 872, baseType: !1535, size: 512, offset: 6016)
!1535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !676, size: 512, elements: !1193)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1255, file: !1256, line: 873, baseType: !263, size: 128, offset: 6528)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1255, file: !1256, line: 874, baseType: !263, size: 128, offset: 6656)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1255, file: !1256, line: 876, baseType: !1539, size: 64, offset: 6784)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1541, line: 26, size: 192, elements: !1542)
!1541 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1542 = !{!1543, !1544}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1540, file: !1541, line: 27, baseType: !7, size: 32)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1540, file: !1541, line: 28, baseType: !1545, size: 128, offset: 64)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1546, line: 43, size: 128, elements: !1547)
!1546 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1547 = !{!1548, !1549}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1545, file: !1546, line: 44, baseType: !818)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1545, file: !1546, line: 45, baseType: !263, size: 128)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1255, file: !1256, line: 879, baseType: !742, size: 64, offset: 6848)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1255, file: !1256, line: 882, baseType: !742, size: 64, offset: 6912)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1255, file: !1256, line: 884, baseType: !460, size: 64, offset: 6976)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1255, file: !1256, line: 885, baseType: !460, size: 64, offset: 7040)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1255, file: !1256, line: 890, baseType: !460, size: 64, offset: 7104)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1255, file: !1256, line: 891, baseType: !1556, size: 128, offset: 7168)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1256, line: 242, size: 128, elements: !1557)
!1557 = !{!1558, !1559, !1560}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1556, file: !1256, line: 244, baseType: !460, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1556, file: !1256, line: 245, baseType: !460, size: 64, offset: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1556, file: !1256, line: 246, baseType: !818, offset: 128)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1255, file: !1256, line: 900, baseType: !147, size: 64, offset: 7296)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1255, file: !1256, line: 901, baseType: !147, size: 64, offset: 7360)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1255, file: !1256, line: 904, baseType: !460, size: 64, offset: 7424)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1255, file: !1256, line: 907, baseType: !460, size: 64, offset: 7488)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1255, file: !1256, line: 910, baseType: !147, size: 64, offset: 7552)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1255, file: !1256, line: 911, baseType: !147, size: 64, offset: 7616)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1255, file: !1256, line: 914, baseType: !1568, size: 640, offset: 7680)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1569, line: 123, size: 640, elements: !1570)
!1569 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1570 = !{!1571, !1577, !1578}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1568, file: !1569, line: 124, baseType: !1572, size: 576)
!1572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1573, size: 576, elements: !221)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1569, line: 108, size: 192, elements: !1574)
!1574 = !{!1575, !1576}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1573, file: !1569, line: 109, baseType: !460, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1573, file: !1569, line: 110, baseType: !1381, size: 128, offset: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1568, file: !1569, line: 125, baseType: !7, size: 32, offset: 576)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1568, file: !1569, line: 126, baseType: !7, size: 32, offset: 608)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1255, file: !1256, line: 917, baseType: !1580, size: 192, offset: 8320)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1569, line: 134, size: 192, elements: !1581)
!1581 = !{!1582, !1583}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1580, file: !1569, line: 135, baseType: !404, size: 128, align: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1580, file: !1569, line: 136, baseType: !7, size: 32, offset: 128)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1255, file: !1256, line: 923, baseType: !1585, size: 64, offset: 8512)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1587)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1588, line: 111, size: 1280, elements: !1589)
!1588 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1589 = !{!1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1609, !1610, !1611, !1612, !1613, !1614, !1721, !1722, !1723, !1724, !1750, !1753, !1763}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1587, file: !1588, line: 112, baseType: !785, size: 32)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1587, file: !1588, line: 120, baseType: !474, size: 32, offset: 32)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1587, file: !1588, line: 121, baseType: !482, size: 32, offset: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1587, file: !1588, line: 122, baseType: !474, size: 32, offset: 96)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1587, file: !1588, line: 123, baseType: !482, size: 32, offset: 128)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1587, file: !1588, line: 124, baseType: !474, size: 32, offset: 160)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1587, file: !1588, line: 125, baseType: !482, size: 32, offset: 192)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1587, file: !1588, line: 126, baseType: !474, size: 32, offset: 224)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1587, file: !1588, line: 127, baseType: !482, size: 32, offset: 256)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1587, file: !1588, line: 128, baseType: !7, size: 32, offset: 288)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1587, file: !1588, line: 129, baseType: !1601, size: 64, offset: 320)
!1601 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1602, line: 26, baseType: !1603)
!1602 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1602, line: 24, size: 64, elements: !1604)
!1604 = !{!1605}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1603, file: !1602, line: 25, baseType: !1606, size: 64)
!1606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !456, size: 64, elements: !1607)
!1607 = !{!1608}
!1608 = !DISubrange(count: 2)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1587, file: !1588, line: 130, baseType: !1601, size: 64, offset: 384)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1587, file: !1588, line: 131, baseType: !1601, size: 64, offset: 448)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1587, file: !1588, line: 132, baseType: !1601, size: 64, offset: 512)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1587, file: !1588, line: 133, baseType: !1601, size: 64, offset: 576)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1587, file: !1588, line: 135, baseType: !466, size: 8, offset: 640)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1587, file: !1588, line: 137, baseType: !1615, size: 64, offset: 704)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1617, line: 189, size: 1664, elements: !1618)
!1617 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1618 = !{!1619, !1620, !1623, !1628, !1629, !1632, !1633, !1638, !1639, !1640, !1641, !1643, !1644, !1645, !1646, !1647, !1685, !1706}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1616, file: !1617, line: 190, baseType: !1268, size: 32)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1616, file: !1617, line: 191, baseType: !1621, size: 32, offset: 32)
!1621 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1617, line: 28, baseType: !1622)
!1622 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !227, line: 98, baseType: !1482)
!1623 = !DIDerivedType(tag: DW_TAG_member, scope: !1616, file: !1617, line: 192, baseType: !1624, size: 192, offset: 64)
!1624 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1616, file: !1617, line: 192, size: 192, elements: !1625)
!1625 = !{!1626, !1627}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1624, file: !1617, line: 193, baseType: !263, size: 128)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1624, file: !1617, line: 194, baseType: !798, size: 192, align: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1616, file: !1617, line: 199, baseType: !805, size: 256, offset: 256)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1616, file: !1617, line: 200, baseType: !1630, size: 64, offset: 512)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1617, line: 200, flags: DIFlagFwdDecl)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1616, file: !1617, line: 201, baseType: !209, size: 64, offset: 576)
!1633 = !DIDerivedType(tag: DW_TAG_member, scope: !1616, file: !1617, line: 202, baseType: !1634, size: 64, offset: 640)
!1634 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1616, file: !1617, line: 202, size: 64, elements: !1635)
!1635 = !{!1636, !1637}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1634, file: !1617, line: 203, baseType: !576, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1634, file: !1617, line: 204, baseType: !576, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1616, file: !1617, line: 206, baseType: !576, size: 64, offset: 704)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1616, file: !1617, line: 207, baseType: !474, size: 32, offset: 768)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1616, file: !1617, line: 208, baseType: !482, size: 32, offset: 800)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1616, file: !1617, line: 209, baseType: !1642, size: 32, offset: 832)
!1642 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1617, line: 31, baseType: !596)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1616, file: !1617, line: 210, baseType: !149, size: 16, offset: 864)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1616, file: !1617, line: 211, baseType: !149, size: 16, offset: 880)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1616, file: !1617, line: 215, baseType: !1243, size: 16, offset: 896)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1616, file: !1617, line: 222, baseType: !147, size: 64, offset: 960)
!1647 = !DIDerivedType(tag: DW_TAG_member, scope: !1616, file: !1617, line: 239, baseType: !1648, size: 320, offset: 1024)
!1648 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1616, file: !1617, line: 239, size: 320, elements: !1649)
!1649 = !{!1650, !1677}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1648, file: !1617, line: 240, baseType: !1651, size: 320)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1617, line: 108, size: 320, elements: !1652)
!1652 = !{!1653, !1654, !1666, !1669, !1676}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1651, file: !1617, line: 110, baseType: !147, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, scope: !1651, file: !1617, line: 111, baseType: !1655, size: 64, offset: 64)
!1655 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1651, file: !1617, line: 111, size: 64, elements: !1656)
!1656 = !{!1657, !1665}
!1657 = !DIDerivedType(tag: DW_TAG_member, scope: !1655, file: !1617, line: 112, baseType: !1658, size: 64)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1655, file: !1617, line: 112, size: 64, elements: !1659)
!1659 = !{!1660, !1661}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1658, file: !1617, line: 114, baseType: !897, size: 16)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1658, file: !1617, line: 115, baseType: !1662, size: 48, offset: 16)
!1662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 48, elements: !1663)
!1663 = !{!1664}
!1664 = !DISubrange(count: 6)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1655, file: !1617, line: 121, baseType: !147, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1651, file: !1617, line: 123, baseType: !1667, size: 64, offset: 128)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1617, line: 96, flags: DIFlagFwdDecl)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1651, file: !1617, line: 124, baseType: !1670, size: 64, offset: 192)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1617, line: 102, size: 192, elements: !1672)
!1672 = !{!1673, !1674, !1675}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1671, file: !1617, line: 103, baseType: !404, size: 128, align: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1671, file: !1617, line: 104, baseType: !1268, size: 32, offset: 128)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1671, file: !1617, line: 105, baseType: !226, size: 8, offset: 160)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1651, file: !1617, line: 125, baseType: !187, size: 64, offset: 256)
!1677 = !DIDerivedType(tag: DW_TAG_member, scope: !1648, file: !1617, line: 241, baseType: !1678, size: 320)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1648, file: !1617, line: 241, size: 320, elements: !1679)
!1679 = !{!1680, !1681, !1682, !1683, !1684}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1678, file: !1617, line: 242, baseType: !147, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1678, file: !1617, line: 243, baseType: !147, size: 64, offset: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1678, file: !1617, line: 244, baseType: !1667, size: 64, offset: 128)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1678, file: !1617, line: 245, baseType: !1670, size: 64, offset: 192)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1678, file: !1617, line: 246, baseType: !317, size: 64, offset: 256)
!1685 = !DIDerivedType(tag: DW_TAG_member, scope: !1616, file: !1617, line: 254, baseType: !1686, size: 256, offset: 1344)
!1686 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1616, file: !1617, line: 254, size: 256, elements: !1687)
!1687 = !{!1688, !1694}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1686, file: !1617, line: 255, baseType: !1689, size: 256)
!1689 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1617, line: 128, size: 256, elements: !1690)
!1690 = !{!1691, !1692}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1689, file: !1617, line: 129, baseType: !209, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1689, file: !1617, line: 130, baseType: !1693, size: 256)
!1693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 256, elements: !1193)
!1694 = !DIDerivedType(tag: DW_TAG_member, scope: !1686, file: !1617, line: 256, baseType: !1695, size: 256)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1686, file: !1617, line: 256, size: 256, elements: !1696)
!1696 = !{!1697, !1698}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1695, file: !1617, line: 258, baseType: !263, size: 128)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1695, file: !1617, line: 259, baseType: !1699, size: 128, offset: 128)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1700, line: 22, size: 128, elements: !1701)
!1700 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1701 = !{!1702, !1705}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1699, file: !1700, line: 23, baseType: !1703, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1700, line: 23, flags: DIFlagFwdDecl)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1699, file: !1700, line: 24, baseType: !147, size: 64, offset: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1616, file: !1617, line: 274, baseType: !1707, size: 64, offset: 1600)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1617, line: 170, size: 192, elements: !1709)
!1709 = !{!1710, !1719, !1720}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1708, file: !1617, line: 171, baseType: !1711, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1617, line: 165, baseType: !1712)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!196, !1615, !1715, !1717, !1615}
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1668)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1689)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1708, file: !1617, line: 172, baseType: !1615, size: 64, offset: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1708, file: !1617, line: 173, baseType: !1667, size: 64, offset: 128)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1587, file: !1588, line: 138, baseType: !1615, size: 64, offset: 768)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1587, file: !1588, line: 139, baseType: !1615, size: 64, offset: 832)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1587, file: !1588, line: 140, baseType: !1615, size: 64, offset: 896)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1587, file: !1588, line: 145, baseType: !1725, size: 64, offset: 960)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1727, line: 13, size: 896, elements: !1728)
!1727 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1728 = !{!1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1726, file: !1727, line: 14, baseType: !1268, size: 32)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1726, file: !1727, line: 15, baseType: !785, size: 32, offset: 32)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1726, file: !1727, line: 16, baseType: !785, size: 32, offset: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1726, file: !1727, line: 21, baseType: !809, size: 64, offset: 128)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1726, file: !1727, line: 27, baseType: !147, size: 64, offset: 192)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1726, file: !1727, line: 28, baseType: !147, size: 64, offset: 256)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1726, file: !1727, line: 29, baseType: !809, size: 64, offset: 320)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1726, file: !1727, line: 32, baseType: !676, size: 128, offset: 384)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1726, file: !1727, line: 33, baseType: !474, size: 32, offset: 512)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1726, file: !1727, line: 37, baseType: !809, size: 64, offset: 576)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1726, file: !1727, line: 44, baseType: !1740, size: 256, offset: 640)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1741, line: 15, size: 256, elements: !1742)
!1741 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1742 = !{!1743, !1744, !1745, !1746, !1747, !1748, !1749}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1740, file: !1741, line: 16, baseType: !818)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1740, file: !1741, line: 18, baseType: !196, size: 32)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1740, file: !1741, line: 19, baseType: !196, size: 32, offset: 32)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1740, file: !1741, line: 20, baseType: !196, size: 32, offset: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1740, file: !1741, line: 21, baseType: !196, size: 32, offset: 96)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1740, file: !1741, line: 22, baseType: !147, size: 64, offset: 128)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1740, file: !1741, line: 23, baseType: !147, size: 64, offset: 192)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1587, file: !1588, line: 146, baseType: !1751, size: 64, offset: 1024)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !475, line: 18, flags: DIFlagFwdDecl)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1587, file: !1588, line: 147, baseType: !1754, size: 64, offset: 1088)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1588, line: 25, size: 64, elements: !1756)
!1756 = !{!1757, !1758, !1759}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1755, file: !1588, line: 26, baseType: !785, size: 32)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1755, file: !1588, line: 27, baseType: !196, size: 32, offset: 32)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1755, file: !1588, line: 28, baseType: !1760, offset: 64)
!1760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !482, elements: !1761)
!1761 = !{!1762}
!1762 = !DISubrange(count: 0)
!1763 = !DIDerivedType(tag: DW_TAG_member, scope: !1587, file: !1588, line: 149, baseType: !1764, size: 128, offset: 1152)
!1764 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1587, file: !1588, line: 149, size: 128, elements: !1765)
!1765 = !{!1766, !1767}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1764, file: !1588, line: 150, baseType: !196, size: 32)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1764, file: !1588, line: 151, baseType: !404, size: 128, align: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1255, file: !1256, line: 926, baseType: !1585, size: 64, offset: 8576)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1255, file: !1256, line: 929, baseType: !1585, size: 64, offset: 8640)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1255, file: !1256, line: 933, baseType: !1615, size: 64, offset: 8704)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1255, file: !1256, line: 943, baseType: !1772, size: 128, offset: 8768)
!1772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 128, elements: !1773)
!1773 = !{!1774}
!1774 = !DISubrange(count: 16)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1255, file: !1256, line: 945, baseType: !1776, size: 64, offset: 8896)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1256, line: 49, flags: DIFlagFwdDecl)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1255, file: !1256, line: 956, baseType: !1779, size: 64, offset: 8960)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1256, line: 45, flags: DIFlagFwdDecl)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1255, file: !1256, line: 959, baseType: !1782, size: 64, offset: 9024)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1256, line: 959, flags: DIFlagFwdDecl)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1255, file: !1256, line: 962, baseType: !1785, size: 64, offset: 9088)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1256, line: 66, flags: DIFlagFwdDecl)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1255, file: !1256, line: 966, baseType: !1788, size: 64, offset: 9152)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1790, line: 35, flags: DIFlagFwdDecl)
!1790 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1255, file: !1256, line: 969, baseType: !1792, size: 64, offset: 9216)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1794, line: 82, size: 7296, elements: !1795)
!1794 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1795 = !{!1796, !1797, !1798, !1799, !1800, !1801, !1802, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1831, !1840, !1841, !1843, !1844, !1845, !1848, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1878, !1879, !1886, !1887, !1888, !1889, !1890, !1891}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1793, file: !1794, line: 83, baseType: !1268, size: 32)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1793, file: !1794, line: 84, baseType: !785, size: 32, offset: 32)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1793, file: !1794, line: 85, baseType: !196, size: 32, offset: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1793, file: !1794, line: 86, baseType: !263, size: 128, offset: 128)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1793, file: !1794, line: 88, baseType: !1519, size: 128, offset: 256)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1793, file: !1794, line: 91, baseType: !1254, size: 64, offset: 384)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1793, file: !1794, line: 94, baseType: !1803, size: 192, offset: 448)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1804, line: 30, size: 192, elements: !1805)
!1804 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1805 = !{!1806, !1807}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1803, file: !1804, line: 31, baseType: !263, size: 128)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1803, file: !1804, line: 32, baseType: !1808, size: 64, offset: 128)
!1808 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1809, line: 25, baseType: !1810)
!1809 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1809, line: 23, size: 64, elements: !1811)
!1811 = !{!1812}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1810, file: !1809, line: 24, baseType: !1408, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1793, file: !1794, line: 97, baseType: !672, size: 64, offset: 640)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1793, file: !1794, line: 100, baseType: !196, size: 32, offset: 704)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1793, file: !1794, line: 106, baseType: !196, size: 32, offset: 736)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1793, file: !1794, line: 107, baseType: !1254, size: 64, offset: 768)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1793, file: !1794, line: 110, baseType: !196, size: 32, offset: 832)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1793, file: !1794, line: 111, baseType: !7, size: 32, offset: 864)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1793, file: !1794, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1793, file: !1794, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1793, file: !1794, line: 128, baseType: !196, size: 32, offset: 928)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1793, file: !1794, line: 129, baseType: !263, size: 128, offset: 960)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1793, file: !1794, line: 132, baseType: !1330, size: 512, offset: 1088)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1793, file: !1794, line: 133, baseType: !1338, size: 64, offset: 1600)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1793, file: !1794, line: 140, baseType: !1826, size: 256, offset: 1664)
!1826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1827, size: 256, elements: !1607)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1794, line: 38, size: 128, elements: !1828)
!1828 = !{!1829, !1830}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1827, file: !1794, line: 39, baseType: !460, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1827, file: !1794, line: 40, baseType: !460, size: 64, offset: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1793, file: !1794, line: 146, baseType: !1832, size: 192, offset: 1920)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1794, line: 66, size: 192, elements: !1833)
!1833 = !{!1834}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1832, file: !1794, line: 67, baseType: !1835, size: 192)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1794, line: 47, size: 192, elements: !1836)
!1836 = !{!1837, !1838, !1839}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1835, file: !1794, line: 48, baseType: !811, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1835, file: !1794, line: 49, baseType: !811, size: 64, offset: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1835, file: !1794, line: 50, baseType: !811, size: 64, offset: 128)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1793, file: !1794, line: 150, baseType: !1568, size: 640, offset: 2112)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1793, file: !1794, line: 153, baseType: !1842, size: 256, offset: 2752)
!1842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1509, size: 256, elements: !1193)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1793, file: !1794, line: 159, baseType: !1509, size: 64, offset: 3008)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1793, file: !1794, line: 162, baseType: !196, size: 32, offset: 3072)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1793, file: !1794, line: 164, baseType: !1846, size: 64, offset: 3136)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1794, line: 164, flags: DIFlagFwdDecl)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1793, file: !1794, line: 175, baseType: !1849, size: 32, offset: 3200)
!1849 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !427, line: 805, baseType: !1850)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !427, line: 798, size: 32, elements: !1851)
!1851 = !{!1852, !1853}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1850, file: !427, line: 803, baseType: !426, size: 32)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1850, file: !427, line: 804, baseType: !276, offset: 32)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1793, file: !1794, line: 176, baseType: !460, size: 64, offset: 3264)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1793, file: !1794, line: 176, baseType: !460, size: 64, offset: 3328)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1793, file: !1794, line: 176, baseType: !460, size: 64, offset: 3392)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1793, file: !1794, line: 176, baseType: !460, size: 64, offset: 3456)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1793, file: !1794, line: 177, baseType: !460, size: 64, offset: 3520)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1793, file: !1794, line: 178, baseType: !460, size: 64, offset: 3584)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1793, file: !1794, line: 179, baseType: !1556, size: 128, offset: 3648)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1793, file: !1794, line: 180, baseType: !147, size: 64, offset: 3776)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1793, file: !1794, line: 180, baseType: !147, size: 64, offset: 3840)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1793, file: !1794, line: 180, baseType: !147, size: 64, offset: 3904)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1793, file: !1794, line: 180, baseType: !147, size: 64, offset: 3968)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1793, file: !1794, line: 181, baseType: !147, size: 64, offset: 4032)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1793, file: !1794, line: 181, baseType: !147, size: 64, offset: 4096)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1793, file: !1794, line: 181, baseType: !147, size: 64, offset: 4160)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1793, file: !1794, line: 181, baseType: !147, size: 64, offset: 4224)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1793, file: !1794, line: 182, baseType: !147, size: 64, offset: 4288)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1793, file: !1794, line: 182, baseType: !147, size: 64, offset: 4352)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1793, file: !1794, line: 182, baseType: !147, size: 64, offset: 4416)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1793, file: !1794, line: 182, baseType: !147, size: 64, offset: 4480)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1793, file: !1794, line: 183, baseType: !147, size: 64, offset: 4544)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1793, file: !1794, line: 183, baseType: !147, size: 64, offset: 4608)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1793, file: !1794, line: 184, baseType: !1876, offset: 4672)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1877, line: 12, elements: !290)
!1877 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1793, file: !1794, line: 192, baseType: !462, size: 64, offset: 4672)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1793, file: !1794, line: 203, baseType: !1880, size: 2048, offset: 4736)
!1880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1881, size: 2048, elements: !1773)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1882, line: 43, size: 128, elements: !1883)
!1882 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1883 = !{!1884, !1885}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1881, file: !1882, line: 44, baseType: !363, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1881, file: !1882, line: 45, baseType: !363, size: 64, offset: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1793, file: !1794, line: 220, baseType: !226, size: 8, offset: 6784)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1793, file: !1794, line: 221, baseType: !1243, size: 16, offset: 6800)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1793, file: !1794, line: 222, baseType: !1243, size: 16, offset: 6816)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1793, file: !1794, line: 224, baseType: !1012, size: 64, offset: 6848)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1793, file: !1794, line: 227, baseType: !1211, size: 192, offset: 6912)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1793, file: !1794, line: 233, baseType: !1211, size: 192, offset: 7104)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1255, file: !1256, line: 970, baseType: !1893, size: 64, offset: 9280)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1794, line: 20, size: 16576, elements: !1895)
!1895 = !{!1896, !1897, !1898, !1899}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1894, file: !1794, line: 21, baseType: !276)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1894, file: !1794, line: 22, baseType: !1268, size: 32)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1894, file: !1794, line: 23, baseType: !1519, size: 128, offset: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1894, file: !1794, line: 24, baseType: !1900, size: 16384, offset: 192)
!1900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1901, size: 16384, elements: !320)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1804, line: 49, size: 256, elements: !1902)
!1902 = !{!1903}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1901, file: !1804, line: 50, baseType: !1904, size: 256)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1804, line: 35, size: 256, elements: !1905)
!1905 = !{!1906, !1913, !1914, !1918}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1904, file: !1804, line: 37, baseType: !1907, size: 64)
!1907 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1908, line: 19, baseType: !1909)
!1908 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1908, line: 18, baseType: !1911)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{null, !196}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1904, file: !1804, line: 38, baseType: !147, size: 64, offset: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1904, file: !1804, line: 44, baseType: !1915, size: 64, offset: 128)
!1915 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1908, line: 22, baseType: !1916)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1908, line: 21, baseType: !156)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1904, file: !1804, line: 46, baseType: !1808, size: 64, offset: 192)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1255, file: !1256, line: 971, baseType: !1808, size: 64, offset: 9344)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1255, file: !1256, line: 972, baseType: !1808, size: 64, offset: 9408)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1255, file: !1256, line: 974, baseType: !1808, size: 64, offset: 9472)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1255, file: !1256, line: 975, baseType: !1803, size: 192, offset: 9536)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1255, file: !1256, line: 976, baseType: !147, size: 64, offset: 9728)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1255, file: !1256, line: 977, baseType: !361, size: 64, offset: 9792)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1255, file: !1256, line: 978, baseType: !7, size: 32, offset: 9856)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1255, file: !1256, line: 980, baseType: !407, size: 64, offset: 9920)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1255, file: !1256, line: 989, baseType: !1928, size: 128, offset: 9984)
!1928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1929, line: 35, size: 128, elements: !1930)
!1929 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1930 = !{!1931, !1932, !1933}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1928, file: !1929, line: 36, baseType: !196, size: 32)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1928, file: !1929, line: 37, baseType: !785, size: 32, offset: 32)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1928, file: !1929, line: 38, baseType: !1934, size: 64, offset: 64)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1929, line: 23, flags: DIFlagFwdDecl)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1255, file: !1256, line: 992, baseType: !460, size: 64, offset: 10112)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1255, file: !1256, line: 993, baseType: !460, size: 64, offset: 10176)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1255, file: !1256, line: 996, baseType: !276, offset: 10240)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1255, file: !1256, line: 999, baseType: !818, offset: 10240)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1255, file: !1256, line: 1001, baseType: !1941, size: 64, offset: 10240)
!1941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1256, line: 636, size: 64, elements: !1942)
!1942 = !{!1943}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1941, file: !1256, line: 637, baseType: !1944, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1255, file: !1256, line: 1005, baseType: !790, size: 128, offset: 10304)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1255, file: !1256, line: 1007, baseType: !1254, size: 64, offset: 10432)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1255, file: !1256, line: 1009, baseType: !1948, size: 64, offset: 10496)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1256, line: 1009, flags: DIFlagFwdDecl)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1255, file: !1256, line: 1043, baseType: !209, size: 64, offset: 10560)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1255, file: !1256, line: 1046, baseType: !1952, size: 64, offset: 10624)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1256, line: 41, flags: DIFlagFwdDecl)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1255, file: !1256, line: 1050, baseType: !1955, size: 64, offset: 10688)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1256, line: 42, flags: DIFlagFwdDecl)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1255, file: !1256, line: 1054, baseType: !1958, size: 64, offset: 10752)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1256, line: 55, flags: DIFlagFwdDecl)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1255, file: !1256, line: 1056, baseType: !1961, size: 64, offset: 10816)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1256, line: 40, flags: DIFlagFwdDecl)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1255, file: !1256, line: 1058, baseType: !1964, size: 64, offset: 10880)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1966, line: 99, size: 704, elements: !1967)
!1966 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1967 = !{!1968, !1969, !1970, !1971, !1972, !1973, !1974, !1993, !1994}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1965, file: !1966, line: 100, baseType: !809, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1965, file: !1966, line: 101, baseType: !785, size: 32, offset: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1965, file: !1966, line: 102, baseType: !785, size: 32, offset: 96)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1965, file: !1966, line: 105, baseType: !276, offset: 128)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1965, file: !1966, line: 107, baseType: !149, size: 16, offset: 128)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1965, file: !1966, line: 109, baseType: !776, size: 128, offset: 192)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1965, file: !1966, line: 110, baseType: !1975, size: 64, offset: 320)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1966, line: 73, size: 448, elements: !1977)
!1977 = !{!1978, !1981, !1982, !1987, !1992}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1976, file: !1966, line: 74, baseType: !1979, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1966, line: 74, flags: DIFlagFwdDecl)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1976, file: !1966, line: 75, baseType: !1964, size: 64, offset: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, scope: !1976, file: !1966, line: 83, baseType: !1983, size: 128, offset: 128)
!1983 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1976, file: !1966, line: 83, size: 128, elements: !1984)
!1984 = !{!1985, !1986}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1983, file: !1966, line: 84, baseType: !263, size: 128)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1983, file: !1966, line: 85, baseType: !973, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, scope: !1976, file: !1966, line: 87, baseType: !1988, size: 128, offset: 256)
!1988 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1976, file: !1966, line: 87, size: 128, elements: !1989)
!1989 = !{!1990, !1991}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1988, file: !1966, line: 88, baseType: !676, size: 128)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1988, file: !1966, line: 89, baseType: !404, size: 128, align: 64)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1976, file: !1966, line: 92, baseType: !7, size: 32, offset: 384)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1965, file: !1966, line: 111, baseType: !672, size: 64, offset: 384)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1965, file: !1966, line: 113, baseType: !1995, size: 256, offset: 448)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1996, line: 102, size: 256, elements: !1997)
!1996 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1997 = !{!1998, !1999, !2000}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1995, file: !1996, line: 103, baseType: !809, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1995, file: !1996, line: 104, baseType: !263, size: 128, offset: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1995, file: !1996, line: 105, baseType: !2001, size: 64, offset: 192)
!2001 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1996, line: 21, baseType: !2002)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{null, !2005}
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1255, file: !1256, line: 1061, baseType: !2007, size: 64, offset: 10944)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1256, line: 43, flags: DIFlagFwdDecl)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1255, file: !1256, line: 1064, baseType: !147, size: 64, offset: 11008)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1255, file: !1256, line: 1065, baseType: !2011, size: 64, offset: 11072)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1804, line: 14, baseType: !2013)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1804, line: 12, size: 384, elements: !2014)
!2014 = !{!2015}
!2015 = !DIDerivedType(tag: DW_TAG_member, scope: !2013, file: !1804, line: 13, baseType: !2016, size: 384)
!2016 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2013, file: !1804, line: 13, size: 384, elements: !2017)
!2017 = !{!2018, !2019, !2020, !2021}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2016, file: !1804, line: 13, baseType: !196, size: 32)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2016, file: !1804, line: 13, baseType: !196, size: 32, offset: 32)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2016, file: !1804, line: 13, baseType: !196, size: 32, offset: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2016, file: !1804, line: 13, baseType: !2022, size: 256, offset: 128)
!2022 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2023, line: 32, size: 256, elements: !2024)
!2023 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2024 = !{!2025, !2030, !2043, !2049, !2058, !2078, !2083}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2022, file: !2023, line: 37, baseType: !2026, size: 64)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2022, file: !2023, line: 34, size: 64, elements: !2027)
!2027 = !{!2028, !2029}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2026, file: !2023, line: 35, baseType: !1498, size: 32)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2026, file: !2023, line: 36, baseType: !480, size: 32, offset: 32)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2022, file: !2023, line: 45, baseType: !2031, size: 192)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2022, file: !2023, line: 40, size: 192, elements: !2032)
!2032 = !{!2033, !2035, !2036, !2042}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2031, file: !2023, line: 41, baseType: !2034, size: 32)
!2034 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !348, line: 95, baseType: !196)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2031, file: !2023, line: 42, baseType: !196, size: 32, offset: 32)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2031, file: !2023, line: 43, baseType: !2037, size: 64, offset: 64)
!2037 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2023, line: 11, baseType: !2038)
!2038 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2023, line: 8, size: 64, elements: !2039)
!2039 = !{!2040, !2041}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2038, file: !2023, line: 9, baseType: !196, size: 32)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2038, file: !2023, line: 10, baseType: !209, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2031, file: !2023, line: 44, baseType: !196, size: 32, offset: 128)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2022, file: !2023, line: 52, baseType: !2044, size: 128)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2022, file: !2023, line: 48, size: 128, elements: !2045)
!2045 = !{!2046, !2047, !2048}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2044, file: !2023, line: 49, baseType: !1498, size: 32)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2044, file: !2023, line: 50, baseType: !480, size: 32, offset: 32)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2044, file: !2023, line: 51, baseType: !2037, size: 64, offset: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2022, file: !2023, line: 61, baseType: !2050, size: 256)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2022, file: !2023, line: 55, size: 256, elements: !2051)
!2051 = !{!2052, !2053, !2054, !2055, !2057}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2050, file: !2023, line: 56, baseType: !1498, size: 32)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2050, file: !2023, line: 57, baseType: !480, size: 32, offset: 32)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2050, file: !2023, line: 58, baseType: !196, size: 32, offset: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2050, file: !2023, line: 59, baseType: !2056, size: 64, offset: 128)
!2056 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !348, line: 94, baseType: !349)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2050, file: !2023, line: 60, baseType: !2056, size: 64, offset: 192)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2022, file: !2023, line: 95, baseType: !2059, size: 256)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2022, file: !2023, line: 64, size: 256, elements: !2060)
!2060 = !{!2061, !2062}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2059, file: !2023, line: 65, baseType: !209, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, scope: !2059, file: !2023, line: 77, baseType: !2063, size: 192, offset: 64)
!2063 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2059, file: !2023, line: 77, size: 192, elements: !2064)
!2064 = !{!2065, !2066, !2073}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2063, file: !2023, line: 82, baseType: !1243, size: 16)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2063, file: !2023, line: 88, baseType: !2067, size: 192)
!2067 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2063, file: !2023, line: 84, size: 192, elements: !2068)
!2068 = !{!2069, !2071, !2072}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2067, file: !2023, line: 85, baseType: !2070, size: 64)
!2070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 64, elements: !1368)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2067, file: !2023, line: 86, baseType: !209, size: 64, offset: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2067, file: !2023, line: 87, baseType: !209, size: 64, offset: 128)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2063, file: !2023, line: 93, baseType: !2074, size: 96)
!2074 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2063, file: !2023, line: 90, size: 96, elements: !2075)
!2075 = !{!2076, !2077}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2074, file: !2023, line: 91, baseType: !2070, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2074, file: !2023, line: 92, baseType: !456, size: 32, offset: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2022, file: !2023, line: 101, baseType: !2079, size: 128)
!2079 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2022, file: !2023, line: 98, size: 128, elements: !2080)
!2080 = !{!2081, !2082}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2079, file: !2023, line: 99, baseType: !350, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2079, file: !2023, line: 100, baseType: !196, size: 32, offset: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2022, file: !2023, line: 108, baseType: !2084, size: 128)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2022, file: !2023, line: 104, size: 128, elements: !2085)
!2085 = !{!2086, !2087, !2088}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2084, file: !2023, line: 105, baseType: !209, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2084, file: !2023, line: 106, baseType: !196, size: 32, offset: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2084, file: !2023, line: 107, baseType: !7, size: 32, offset: 96)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1255, file: !1256, line: 1067, baseType: !1876, offset: 11136)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1255, file: !1256, line: 1099, baseType: !2091, size: 64, offset: 11136)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1256, line: 56, flags: DIFlagFwdDecl)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1255, file: !1256, line: 1103, baseType: !263, size: 128, offset: 11200)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1255, file: !1256, line: 1104, baseType: !2095, size: 64, offset: 11328)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1256, line: 46, flags: DIFlagFwdDecl)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1255, file: !1256, line: 1105, baseType: !1211, size: 192, offset: 11392)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1255, file: !1256, line: 1106, baseType: !7, size: 32, offset: 11584)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1255, file: !1256, line: 1109, baseType: !2100, size: 128, offset: 11648)
!2100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2101, size: 128, elements: !1607)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1256, line: 51, flags: DIFlagFwdDecl)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1255, file: !1256, line: 1110, baseType: !1211, size: 192, offset: 11776)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1255, file: !1256, line: 1111, baseType: !263, size: 128, offset: 11968)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1255, file: !1256, line: 1173, baseType: !2106, size: 64, offset: 12096)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2108, line: 62, size: 256, align: 256, elements: !2109)
!2108 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2109 = !{!2110, !2111, !2112, !2117}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2107, file: !2108, line: 75, baseType: !456, size: 32)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2107, file: !2108, line: 90, baseType: !456, size: 32, offset: 32)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2107, file: !2108, line: 124, baseType: !2113, size: 64, offset: 64)
!2113 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2107, file: !2108, line: 109, size: 64, elements: !2114)
!2114 = !{!2115, !2116}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2113, file: !2108, line: 110, baseType: !461, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2113, file: !2108, line: 112, baseType: !461, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2107, file: !2108, line: 144, baseType: !456, size: 32, offset: 128)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1255, file: !1256, line: 1174, baseType: !454, size: 32, offset: 12160)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1255, file: !1256, line: 1179, baseType: !147, size: 64, offset: 12224)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1255, file: !1256, line: 1182, baseType: !2121, size: 128, offset: 12288)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1189, line: 76, size: 128, elements: !2122)
!2122 = !{!2123, !2128, !2129}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2121, file: !1189, line: 85, baseType: !2124, size: 64)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2125, line: 7, size: 64, elements: !2126)
!2125 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2126 = !{!2127}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2124, file: !2125, line: 12, baseType: !1405, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2121, file: !1189, line: 88, baseType: !226, size: 8, offset: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2121, file: !1189, line: 95, baseType: !226, size: 8, offset: 72)
!2130 = !DIDerivedType(tag: DW_TAG_member, scope: !1255, file: !1256, line: 1184, baseType: !2131, size: 128, offset: 12416)
!2131 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1255, file: !1256, line: 1184, size: 128, elements: !2132)
!2132 = !{!2133, !2134}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2131, file: !1256, line: 1185, baseType: !1268, size: 32)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2131, file: !1256, line: 1186, baseType: !404, size: 128, align: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1255, file: !1256, line: 1190, baseType: !2136, size: 64, offset: 12544)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1256, line: 53, flags: DIFlagFwdDecl)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1255, file: !1256, line: 1192, baseType: !2139, size: 128, offset: 12608)
!2139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1189, line: 64, size: 128, elements: !2140)
!2140 = !{!2141, !2142, !2143}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2139, file: !1189, line: 65, baseType: !758, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2139, file: !1189, line: 67, baseType: !456, size: 32, offset: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2139, file: !1189, line: 68, baseType: !456, size: 32, offset: 96)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1255, file: !1256, line: 1206, baseType: !196, size: 32, offset: 12736)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1255, file: !1256, line: 1207, baseType: !196, size: 32, offset: 12768)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1255, file: !1256, line: 1209, baseType: !147, size: 64, offset: 12800)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1255, file: !1256, line: 1219, baseType: !460, size: 64, offset: 12864)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1255, file: !1256, line: 1220, baseType: !460, size: 64, offset: 12928)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1255, file: !1256, line: 1317, baseType: !196, size: 32, offset: 12992)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1255, file: !1256, line: 1319, baseType: !1254, size: 64, offset: 13056)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1255, file: !1256, line: 1322, baseType: !2152, size: 64, offset: 13120)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2154, line: 56, size: 512, elements: !2155)
!2154 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2155 = !{!2156, !2157, !2158, !2159, !2160, !2161, !2162, !2164}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2153, file: !2154, line: 57, baseType: !2152, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2153, file: !2154, line: 58, baseType: !209, size: 64, offset: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2153, file: !2154, line: 59, baseType: !147, size: 64, offset: 128)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2153, file: !2154, line: 60, baseType: !147, size: 64, offset: 192)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2153, file: !2154, line: 61, baseType: !858, size: 64, offset: 256)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2153, file: !2154, line: 62, baseType: !7, size: 32, offset: 320)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2153, file: !2154, line: 63, baseType: !2163, size: 64, offset: 384)
!2163 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !227, line: 153, baseType: !460)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2153, file: !2154, line: 64, baseType: !2165, size: 64, offset: 448)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1255, file: !1256, line: 1326, baseType: !1268, size: 32, offset: 13184)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1255, file: !1256, line: 1342, baseType: !209, size: 64, offset: 13248)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1255, file: !1256, line: 1343, baseType: !461, size: 64, offset: 13312)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1255, file: !1256, line: 1344, baseType: !460, size: 64, offset: 13376)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1255, file: !1256, line: 1345, baseType: !461, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1255, file: !1256, line: 1346, baseType: !461, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1255, file: !1256, line: 1347, baseType: !461, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1255, file: !1256, line: 1348, baseType: !404, size: 128, align: 64, offset: 13504)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1255, file: !1256, line: 1358, baseType: !2176, size: 34816, offset: 13824)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2177, line: 485, size: 34816, elements: !2178)
!2177 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2178 = !{!2179, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2208, !2209, !2210, !2211, !2212, !2213, !2216, !2217, !2218}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2176, file: !2177, line: 487, baseType: !2180, size: 192)
!2180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2181, size: 192, elements: !221)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2182, line: 16, size: 64, elements: !2183)
!2182 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2183 = !{!2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2181, file: !2182, line: 17, baseType: !897, size: 16)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2181, file: !2182, line: 18, baseType: !897, size: 16, offset: 16)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2181, file: !2182, line: 19, baseType: !897, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2181, file: !2182, line: 19, baseType: !897, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2181, file: !2182, line: 19, baseType: !897, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2181, file: !2182, line: 19, baseType: !897, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2181, file: !2182, line: 19, baseType: !897, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2181, file: !2182, line: 20, baseType: !897, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2181, file: !2182, line: 20, baseType: !897, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2181, file: !2182, line: 20, baseType: !897, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2181, file: !2182, line: 20, baseType: !897, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2181, file: !2182, line: 20, baseType: !897, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2181, file: !2182, line: 20, baseType: !897, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2176, file: !2177, line: 491, baseType: !147, size: 64, offset: 192)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2176, file: !2177, line: 495, baseType: !149, size: 16, offset: 256)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2176, file: !2177, line: 496, baseType: !149, size: 16, offset: 272)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2176, file: !2177, line: 497, baseType: !149, size: 16, offset: 288)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2176, file: !2177, line: 498, baseType: !149, size: 16, offset: 304)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2176, file: !2177, line: 502, baseType: !147, size: 64, offset: 320)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2176, file: !2177, line: 503, baseType: !147, size: 64, offset: 384)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2176, file: !2177, line: 514, baseType: !2205, size: 256, offset: 448)
!2205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2206, size: 256, elements: !1193)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2177, line: 483, flags: DIFlagFwdDecl)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2176, file: !2177, line: 516, baseType: !147, size: 64, offset: 704)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2176, file: !2177, line: 518, baseType: !147, size: 64, offset: 768)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2176, file: !2177, line: 520, baseType: !147, size: 64, offset: 832)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2176, file: !2177, line: 521, baseType: !147, size: 64, offset: 896)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2176, file: !2177, line: 522, baseType: !147, size: 64, offset: 960)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2176, file: !2177, line: 528, baseType: !2214, size: 64, offset: 1024)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2177, line: 10, flags: DIFlagFwdDecl)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2176, file: !2177, line: 535, baseType: !147, size: 64, offset: 1088)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2176, file: !2177, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2176, file: !2177, line: 540, baseType: !2219, size: 33280, offset: 1536)
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2220, line: 317, size: 33280, elements: !2221)
!2220 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2221 = !{!2222, !2223, !2224}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2219, file: !2220, line: 330, baseType: !7, size: 32)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2219, file: !2220, line: 337, baseType: !147, size: 64, offset: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2219, file: !2220, line: 348, baseType: !2225, size: 32768, offset: 512)
!2225 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2220, line: 304, size: 32768, elements: !2226)
!2226 = !{!2227, !2242, !2281, !2331, !2344}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2225, file: !2220, line: 305, baseType: !2228, size: 896)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2220, line: 12, size: 896, elements: !2229)
!2229 = !{!2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2241}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2228, file: !2220, line: 13, baseType: !454, size: 32)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2228, file: !2220, line: 14, baseType: !454, size: 32, offset: 32)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2228, file: !2220, line: 15, baseType: !454, size: 32, offset: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2228, file: !2220, line: 16, baseType: !454, size: 32, offset: 96)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2228, file: !2220, line: 17, baseType: !454, size: 32, offset: 128)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2228, file: !2220, line: 18, baseType: !454, size: 32, offset: 160)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2228, file: !2220, line: 19, baseType: !454, size: 32, offset: 192)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2228, file: !2220, line: 22, baseType: !2238, size: 640, offset: 224)
!2238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, size: 640, elements: !2239)
!2239 = !{!2240}
!2240 = !DISubrange(count: 20)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2228, file: !2220, line: 25, baseType: !454, size: 32, offset: 864)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2225, file: !2220, line: 306, baseType: !2243, size: 4096, align: 128)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2220, line: 34, size: 4096, align: 128, elements: !2244)
!2244 = !{!2245, !2246, !2247, !2248, !2249, !2264, !2265, !2266, !2270, !2272, !2276}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2243, file: !2220, line: 35, baseType: !897, size: 16)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2243, file: !2220, line: 36, baseType: !897, size: 16, offset: 16)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2243, file: !2220, line: 37, baseType: !897, size: 16, offset: 32)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2243, file: !2220, line: 38, baseType: !897, size: 16, offset: 48)
!2249 = !DIDerivedType(tag: DW_TAG_member, scope: !2243, file: !2220, line: 39, baseType: !2250, size: 128, offset: 64)
!2250 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2243, file: !2220, line: 39, size: 128, elements: !2251)
!2251 = !{!2252, !2257}
!2252 = !DIDerivedType(tag: DW_TAG_member, scope: !2250, file: !2220, line: 40, baseType: !2253, size: 128)
!2253 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2250, file: !2220, line: 40, size: 128, elements: !2254)
!2254 = !{!2255, !2256}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2253, file: !2220, line: 41, baseType: !460, size: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2253, file: !2220, line: 42, baseType: !460, size: 64, offset: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, scope: !2250, file: !2220, line: 44, baseType: !2258, size: 128)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2250, file: !2220, line: 44, size: 128, elements: !2259)
!2259 = !{!2260, !2261, !2262, !2263}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2258, file: !2220, line: 45, baseType: !454, size: 32)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2258, file: !2220, line: 46, baseType: !454, size: 32, offset: 32)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2258, file: !2220, line: 47, baseType: !454, size: 32, offset: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2258, file: !2220, line: 48, baseType: !454, size: 32, offset: 96)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2243, file: !2220, line: 51, baseType: !454, size: 32, offset: 192)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2243, file: !2220, line: 52, baseType: !454, size: 32, offset: 224)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2243, file: !2220, line: 55, baseType: !2267, size: 1024, offset: 256)
!2267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, size: 1024, elements: !2268)
!2268 = !{!2269}
!2269 = !DISubrange(count: 32)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2243, file: !2220, line: 58, baseType: !2271, size: 2048, offset: 1280)
!2271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, size: 2048, elements: !320)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2243, file: !2220, line: 60, baseType: !2273, size: 384, offset: 3328)
!2273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, size: 384, elements: !2274)
!2274 = !{!2275}
!2275 = !DISubrange(count: 12)
!2276 = !DIDerivedType(tag: DW_TAG_member, scope: !2243, file: !2220, line: 62, baseType: !2277, size: 384, offset: 3712)
!2277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2243, file: !2220, line: 62, size: 384, elements: !2278)
!2278 = !{!2279, !2280}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2277, file: !2220, line: 63, baseType: !2273, size: 384)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2277, file: !2220, line: 64, baseType: !2273, size: 384)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2225, file: !2220, line: 307, baseType: !2282, size: 1088)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2220, line: 79, size: 1088, elements: !2283)
!2283 = !{!2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2330}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2282, file: !2220, line: 80, baseType: !454, size: 32)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2282, file: !2220, line: 81, baseType: !454, size: 32, offset: 32)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2282, file: !2220, line: 82, baseType: !454, size: 32, offset: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2282, file: !2220, line: 83, baseType: !454, size: 32, offset: 96)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2282, file: !2220, line: 84, baseType: !454, size: 32, offset: 128)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2282, file: !2220, line: 85, baseType: !454, size: 32, offset: 160)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2282, file: !2220, line: 86, baseType: !454, size: 32, offset: 192)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2282, file: !2220, line: 88, baseType: !2238, size: 640, offset: 224)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2282, file: !2220, line: 89, baseType: !1390, size: 8, offset: 864)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2282, file: !2220, line: 90, baseType: !1390, size: 8, offset: 872)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2282, file: !2220, line: 91, baseType: !1390, size: 8, offset: 880)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2282, file: !2220, line: 92, baseType: !1390, size: 8, offset: 888)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2282, file: !2220, line: 93, baseType: !1390, size: 8, offset: 896)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2282, file: !2220, line: 94, baseType: !1390, size: 8, offset: 904)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2282, file: !2220, line: 95, baseType: !2299, size: 64, offset: 960)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2301, line: 11, size: 128, elements: !2302)
!2301 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2302 = !{!2303, !2304}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2300, file: !2301, line: 12, baseType: !350, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2300, file: !2301, line: 13, baseType: !2305, size: 64, offset: 64)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2307, line: 56, size: 1344, elements: !2308)
!2307 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2308 = !{!2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2306, file: !2307, line: 61, baseType: !147, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2306, file: !2307, line: 62, baseType: !147, size: 64, offset: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2306, file: !2307, line: 63, baseType: !147, size: 64, offset: 128)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2306, file: !2307, line: 64, baseType: !147, size: 64, offset: 192)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2306, file: !2307, line: 65, baseType: !147, size: 64, offset: 256)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2306, file: !2307, line: 66, baseType: !147, size: 64, offset: 320)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2306, file: !2307, line: 68, baseType: !147, size: 64, offset: 384)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2306, file: !2307, line: 69, baseType: !147, size: 64, offset: 448)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2306, file: !2307, line: 70, baseType: !147, size: 64, offset: 512)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2306, file: !2307, line: 71, baseType: !147, size: 64, offset: 576)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2306, file: !2307, line: 72, baseType: !147, size: 64, offset: 640)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2306, file: !2307, line: 73, baseType: !147, size: 64, offset: 704)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2306, file: !2307, line: 74, baseType: !147, size: 64, offset: 768)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2306, file: !2307, line: 75, baseType: !147, size: 64, offset: 832)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2306, file: !2307, line: 76, baseType: !147, size: 64, offset: 896)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2306, file: !2307, line: 81, baseType: !147, size: 64, offset: 960)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2306, file: !2307, line: 83, baseType: !147, size: 64, offset: 1024)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2306, file: !2307, line: 84, baseType: !147, size: 64, offset: 1088)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2306, file: !2307, line: 85, baseType: !147, size: 64, offset: 1152)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2306, file: !2307, line: 86, baseType: !147, size: 64, offset: 1216)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2306, file: !2307, line: 87, baseType: !147, size: 64, offset: 1280)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2282, file: !2220, line: 96, baseType: !454, size: 32, offset: 1024)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2225, file: !2220, line: 308, baseType: !2332, size: 4608, align: 512)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2220, line: 289, size: 4608, align: 512, elements: !2333)
!2333 = !{!2334, !2335, !2342}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2332, file: !2220, line: 290, baseType: !2243, size: 4096, align: 128)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2332, file: !2220, line: 291, baseType: !2336, size: 512, offset: 4096)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2220, line: 268, size: 512, elements: !2337)
!2337 = !{!2338, !2339, !2340}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2336, file: !2220, line: 269, baseType: !460, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2336, file: !2220, line: 270, baseType: !460, size: 64, offset: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2336, file: !2220, line: 271, baseType: !2341, size: 384, offset: 128)
!2341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 384, elements: !1663)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2332, file: !2220, line: 292, baseType: !2343, offset: 4608)
!2343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1390, elements: !1761)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2225, file: !2220, line: 309, baseType: !2345, size: 32768)
!2345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1390, size: 32768, elements: !2346)
!2346 = !{!2347}
!2347 = !DISubrange(count: 4096)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1251, file: !760, line: 378, baseType: !2349, size: 64, offset: 64)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1247, file: !760, line: 384, baseType: !1540, size: 192, offset: 192)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1016, file: !760, line: 500, baseType: !276, offset: 6656)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1016, file: !760, line: 501, baseType: !2353, size: 64, offset: 6656)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !760, line: 387, flags: DIFlagFwdDecl)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1016, file: !760, line: 516, baseType: !1751, size: 64, offset: 6720)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1016, file: !760, line: 519, baseType: !391, size: 64, offset: 6784)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1016, file: !760, line: 521, baseType: !2358, size: 64, offset: 6848)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !760, line: 521, flags: DIFlagFwdDecl)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1016, file: !760, line: 545, baseType: !785, size: 32, offset: 6912)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1016, file: !760, line: 548, baseType: !226, size: 8, offset: 6944)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1016, file: !760, line: 550, baseType: !2363, offset: 6952)
!2363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2364, line: 142, elements: !290)
!2364 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1016, file: !760, line: 554, baseType: !1995, size: 256, offset: 6976)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1016, file: !760, line: 557, baseType: !454, size: 32, offset: 7232)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1013, file: !760, line: 565, baseType: !2368, offset: 7296)
!2368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, elements: !2369)
!2369 = !{!2370}
!2370 = !DISubrange(count: -1)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1009, file: !760, line: 151, baseType: !785, size: 32)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1002, file: !760, line: 156, baseType: !276, offset: 256)
!2373 = !DIDerivedType(tag: DW_TAG_member, scope: !764, file: !760, line: 159, baseType: !2374, size: 128)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !764, file: !760, line: 159, size: 128, elements: !2375)
!2375 = !{!2376, !2440}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2374, file: !760, line: 161, baseType: !2377, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2379)
!2379 = !{!2380, !2390, !2411, !2412, !2413, !2414, !2415, !2427, !2428, !2429}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2378, file: !31, line: 111, baseType: !2381, size: 384)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2382)
!2382 = !{!2383, !2385, !2386, !2387, !2388, !2389}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2381, file: !31, line: 20, baseType: !2384, size: 64)
!2384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2381, file: !31, line: 21, baseType: !2384, size: 64, offset: 64)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2381, file: !31, line: 22, baseType: !2384, size: 64, offset: 128)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2381, file: !31, line: 23, baseType: !147, size: 64, offset: 192)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2381, file: !31, line: 24, baseType: !147, size: 64, offset: 256)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2381, file: !31, line: 25, baseType: !147, size: 64, offset: 320)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2378, file: !31, line: 112, baseType: !2391, size: 64, offset: 384)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2393, line: 105, size: 128, elements: !2394)
!2393 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2394 = !{!2395, !2396}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2392, file: !2393, line: 110, baseType: !147, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2392, file: !2393, line: 118, baseType: !2397, size: 64, offset: 64)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2393, line: 95, size: 448, elements: !2399)
!2399 = !{!2400, !2401, !2406, !2407, !2408, !2409, !2410}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2398, file: !2393, line: 96, baseType: !809, size: 64)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2398, file: !2393, line: 97, baseType: !2402, size: 64, offset: 64)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2393, line: 60, baseType: !2404)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{null, !2391}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2398, file: !2393, line: 98, baseType: !2402, size: 64, offset: 128)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2398, file: !2393, line: 99, baseType: !226, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2398, file: !2393, line: 100, baseType: !226, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2398, file: !2393, line: 101, baseType: !404, size: 128, align: 64, offset: 256)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2398, file: !2393, line: 102, baseType: !2391, size: 64, offset: 384)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2378, file: !31, line: 113, baseType: !2392, size: 128, offset: 448)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2378, file: !31, line: 114, baseType: !1540, size: 192, offset: 576)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2378, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2378, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2378, file: !31, line: 117, baseType: !2416, size: 64, offset: 832)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2418)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2419)
!2419 = !{!2420, !2421, !2425, !2426}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2418, file: !31, line: 73, baseType: !878, size: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2418, file: !31, line: 78, baseType: !2422, size: 64, offset: 64)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{null, !2377}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2418, file: !31, line: 83, baseType: !2422, size: 64, offset: 128)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2418, file: !31, line: 89, baseType: !1065, size: 64, offset: 192)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2378, file: !31, line: 118, baseType: !209, size: 64, offset: 896)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2378, file: !31, line: 119, baseType: !196, size: 32, offset: 960)
!2429 = !DIDerivedType(tag: DW_TAG_member, scope: !2378, file: !31, line: 120, baseType: !2430, size: 128, offset: 1024)
!2430 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2378, file: !31, line: 120, size: 128, elements: !2431)
!2431 = !{!2432, !2438}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2430, file: !31, line: 121, baseType: !2433, size: 128)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2434, line: 6, size: 128, elements: !2435)
!2434 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2435 = !{!2436, !2437}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2433, file: !2434, line: 7, baseType: !460, size: 64)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2433, file: !2434, line: 8, baseType: !460, size: 64, offset: 64)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2430, file: !31, line: 122, baseType: !2439)
!2439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2433, elements: !1761)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2374, file: !760, line: 162, baseType: !209, size: 64, offset: 64)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !764, file: !760, line: 176, baseType: !404, size: 128, align: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, scope: !759, file: !760, line: 179, baseType: !2443, size: 32, offset: 384)
!2443 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !759, file: !760, line: 179, size: 32, elements: !2444)
!2444 = !{!2445, !2446, !2447, !2448}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2443, file: !760, line: 184, baseType: !785, size: 32)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2443, file: !760, line: 192, baseType: !7, size: 32)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2443, file: !760, line: 194, baseType: !7, size: 32)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2443, file: !760, line: 195, baseType: !196, size: 32)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !759, file: !760, line: 199, baseType: !785, size: 32, offset: 416)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !694, file: !44, line: 1964, baseType: !2451, size: 64, offset: 1344)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!350, !636, !2454}
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2456, line: 12, size: 256, elements: !2457)
!2456 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2457 = !{!2458, !2459, !2460, !2461, !2462}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2455, file: !2456, line: 13, baseType: !781, size: 32)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2455, file: !2456, line: 16, baseType: !196, size: 32, offset: 32)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2455, file: !2456, line: 23, baseType: !147, size: 64, offset: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2455, file: !2456, line: 30, baseType: !147, size: 64, offset: 128)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2455, file: !2456, line: 33, baseType: !2463, size: 64, offset: 192)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !760, line: 27, flags: DIFlagFwdDecl)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !694, file: !44, line: 1966, baseType: !2451, size: 64, offset: 1408)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !637, file: !44, line: 1424, baseType: !2467, size: 64, offset: 448)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2469)
!2469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2470)
!2470 = !{!2471, !2517, !2521, !2525, !2526, !2527, !2528, !2529, !2534, !2539, !2543}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2469, file: !38, line: 323, baseType: !2472, size: 64)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!196, !2475}
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2477)
!2477 = !{!2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2502, !2503, !2504}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2476, file: !38, line: 295, baseType: !676, size: 128)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2476, file: !38, line: 296, baseType: !263, size: 128, offset: 128)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2476, file: !38, line: 297, baseType: !263, size: 128, offset: 256)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2476, file: !38, line: 298, baseType: !263, size: 128, offset: 384)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2476, file: !38, line: 299, baseType: !1211, size: 192, offset: 512)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2476, file: !38, line: 300, baseType: !276, offset: 704)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2476, file: !38, line: 301, baseType: !785, size: 32, offset: 704)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2476, file: !38, line: 302, baseType: !636, size: 64, offset: 768)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2476, file: !38, line: 303, baseType: !2487, size: 64, offset: 832)
!2487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2488)
!2488 = !{!2489, !2501}
!2489 = !DIDerivedType(tag: DW_TAG_member, scope: !2487, file: !38, line: 69, baseType: !2490, size: 32)
!2490 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2487, file: !38, line: 69, size: 32, elements: !2491)
!2491 = !{!2492, !2493, !2494}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2490, file: !38, line: 70, baseType: !474, size: 32)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2490, file: !38, line: 71, baseType: !482, size: 32)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2490, file: !38, line: 72, baseType: !2495, size: 32)
!2495 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2496, line: 24, baseType: !2497)
!2496 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2497 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2496, line: 22, size: 32, elements: !2498)
!2498 = !{!2499}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2497, file: !2496, line: 23, baseType: !2500, size: 32)
!2500 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2496, line: 20, baseType: !480)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2487, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2476, file: !38, line: 304, baseType: !568, size: 64, offset: 896)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2476, file: !38, line: 305, baseType: !147, size: 64, offset: 960)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2476, file: !38, line: 306, baseType: !2505, size: 576, offset: 1024)
!2505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2506)
!2506 = !{!2507, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2505, file: !38, line: 206, baseType: !2508, size: 64)
!2508 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !570)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2505, file: !38, line: 207, baseType: !2508, size: 64, offset: 64)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2505, file: !38, line: 208, baseType: !2508, size: 64, offset: 128)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2505, file: !38, line: 209, baseType: !2508, size: 64, offset: 192)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2505, file: !38, line: 210, baseType: !2508, size: 64, offset: 256)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2505, file: !38, line: 211, baseType: !2508, size: 64, offset: 320)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2505, file: !38, line: 212, baseType: !2508, size: 64, offset: 384)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2505, file: !38, line: 213, baseType: !576, size: 64, offset: 448)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2505, file: !38, line: 214, baseType: !576, size: 64, offset: 512)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2469, file: !38, line: 324, baseType: !2518, size: 64, offset: 64)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{!2475, !636, !196}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2469, file: !38, line: 325, baseType: !2522, size: 64, offset: 128)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{null, !2475}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2469, file: !38, line: 326, baseType: !2472, size: 64, offset: 192)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2469, file: !38, line: 327, baseType: !2472, size: 64, offset: 256)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2469, file: !38, line: 328, baseType: !2472, size: 64, offset: 320)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2469, file: !38, line: 329, baseType: !722, size: 64, offset: 384)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2469, file: !38, line: 332, baseType: !2530, size: 64, offset: 448)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!2533, !468}
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2469, file: !38, line: 333, baseType: !2535, size: 64, offset: 512)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!196, !468, !2538}
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2469, file: !38, line: 335, baseType: !2540, size: 64, offset: 576)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!196, !468, !2533}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2469, file: !38, line: 337, baseType: !2544, size: 64, offset: 640)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!196, !636, !2547}
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !637, file: !44, line: 1425, baseType: !2549, size: 64, offset: 512)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2551)
!2551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2552)
!2552 = !{!2553, !2557, !2558, !2562, !2563, !2564, !2579, !2602, !2606, !2607, !2630}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2551, file: !38, line: 429, baseType: !2554, size: 64)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{!196, !636, !196, !196, !586}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2551, file: !38, line: 430, baseType: !722, size: 64, offset: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2551, file: !38, line: 431, baseType: !2559, size: 64, offset: 128)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!196, !636, !7}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2551, file: !38, line: 432, baseType: !2559, size: 64, offset: 192)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2551, file: !38, line: 433, baseType: !722, size: 64, offset: 256)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2551, file: !38, line: 434, baseType: !2565, size: 64, offset: 320)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!196, !636, !196, !2568}
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2570)
!2570 = !{!2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2569, file: !38, line: 416, baseType: !196, size: 32)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2569, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2569, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2569, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2569, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2569, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2569, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2569, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2551, file: !38, line: 435, baseType: !2580, size: 64, offset: 384)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{!196, !636, !2487, !2583}
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2585)
!2585 = !{!2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2584, file: !38, line: 344, baseType: !196, size: 32)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2584, file: !38, line: 345, baseType: !460, size: 64, offset: 64)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2584, file: !38, line: 346, baseType: !460, size: 64, offset: 128)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2584, file: !38, line: 347, baseType: !460, size: 64, offset: 192)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2584, file: !38, line: 348, baseType: !460, size: 64, offset: 256)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2584, file: !38, line: 349, baseType: !460, size: 64, offset: 320)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2584, file: !38, line: 350, baseType: !460, size: 64, offset: 384)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2584, file: !38, line: 351, baseType: !815, size: 64, offset: 448)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2584, file: !38, line: 353, baseType: !815, size: 64, offset: 512)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2584, file: !38, line: 354, baseType: !196, size: 32, offset: 576)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2584, file: !38, line: 355, baseType: !196, size: 32, offset: 608)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2584, file: !38, line: 356, baseType: !460, size: 64, offset: 640)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2584, file: !38, line: 357, baseType: !460, size: 64, offset: 704)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2584, file: !38, line: 358, baseType: !460, size: 64, offset: 768)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2584, file: !38, line: 359, baseType: !815, size: 64, offset: 832)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2584, file: !38, line: 360, baseType: !196, size: 32, offset: 896)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2551, file: !38, line: 436, baseType: !2603, size: 64, offset: 448)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{!196, !636, !2547, !2583}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2551, file: !38, line: 438, baseType: !2580, size: 64, offset: 512)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2551, file: !38, line: 439, baseType: !2608, size: 64, offset: 576)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DISubroutineType(types: !2610)
!2610 = !{!196, !636, !2611}
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2613)
!2613 = !{!2614, !2615}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2612, file: !38, line: 410, baseType: !7, size: 32)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2612, file: !38, line: 411, baseType: !2616, size: 1344, offset: 64)
!2616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2617, size: 1344, elements: !221)
!2617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2618)
!2618 = !{!2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2629}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2617, file: !38, line: 396, baseType: !7, size: 32)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2617, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2617, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2617, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2617, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2617, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2617, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2617, file: !38, line: 404, baseType: !462, size: 64, offset: 256)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2617, file: !38, line: 405, baseType: !2628, size: 64, offset: 320)
!2628 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !227, line: 126, baseType: !460)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2617, file: !38, line: 406, baseType: !2628, size: 64, offset: 384)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2551, file: !38, line: 440, baseType: !2559, size: 64, offset: 640)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !637, file: !44, line: 1426, baseType: !2632, size: 64, offset: 576)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2634)
!2634 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !637, file: !44, line: 1427, baseType: !147, size: 64, offset: 640)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !637, file: !44, line: 1428, baseType: !147, size: 64, offset: 704)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !637, file: !44, line: 1429, baseType: !147, size: 64, offset: 768)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !637, file: !44, line: 1430, baseType: !421, size: 64, offset: 832)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !637, file: !44, line: 1431, baseType: !805, size: 256, offset: 896)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !637, file: !44, line: 1432, baseType: !196, size: 32, offset: 1152)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !637, file: !44, line: 1433, baseType: !785, size: 32, offset: 1184)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !637, file: !44, line: 1437, baseType: !2643, size: 64, offset: 1216)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2646)
!2646 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !637, file: !44, line: 1449, baseType: !2648, size: 64, offset: 1280)
!2648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !437, line: 34, size: 64, elements: !2649)
!2649 = !{!2650}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2648, file: !437, line: 35, baseType: !440, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !637, file: !44, line: 1450, baseType: !263, size: 128, offset: 1344)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !637, file: !44, line: 1451, baseType: !2653, size: 64, offset: 1472)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !637, file: !44, line: 1452, baseType: !1961, size: 64, offset: 1536)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !637, file: !44, line: 1453, baseType: !2657, size: 64, offset: 1600)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !637, file: !44, line: 1454, baseType: !676, size: 128, offset: 1664)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !637, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !637, file: !44, line: 1456, baseType: !2662, size: 2432, offset: 1856)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2663)
!2663 = !{!2664, !2665, !2666, !2668, !2700}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2662, file: !38, line: 519, baseType: !7, size: 32)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2662, file: !38, line: 520, baseType: !805, size: 256, offset: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2662, file: !38, line: 521, baseType: !2667, size: 192, offset: 320)
!2667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !468, size: 192, elements: !221)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2662, file: !38, line: 522, baseType: !2669, size: 1728, offset: 512)
!2669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2670, size: 1728, elements: !221)
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2671)
!2671 = !{!2672, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2670, file: !38, line: 223, baseType: !2673, size: 64)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2675)
!2675 = !{!2676, !2677, !2690, !2691}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2674, file: !38, line: 444, baseType: !196, size: 32)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2674, file: !38, line: 445, baseType: !2678, size: 64, offset: 64)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2680)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2681)
!2681 = !{!2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2680, file: !38, line: 311, baseType: !722, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2680, file: !38, line: 312, baseType: !722, size: 64, offset: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2680, file: !38, line: 313, baseType: !722, size: 64, offset: 128)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2680, file: !38, line: 314, baseType: !722, size: 64, offset: 192)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2680, file: !38, line: 315, baseType: !2472, size: 64, offset: 256)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2680, file: !38, line: 316, baseType: !2472, size: 64, offset: 320)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2680, file: !38, line: 317, baseType: !2472, size: 64, offset: 384)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2680, file: !38, line: 318, baseType: !2544, size: 64, offset: 448)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2674, file: !38, line: 446, baseType: !189, size: 64, offset: 128)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2674, file: !38, line: 447, baseType: !2673, size: 64, offset: 192)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2670, file: !38, line: 224, baseType: !196, size: 32, offset: 64)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2670, file: !38, line: 226, baseType: !263, size: 128, offset: 128)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2670, file: !38, line: 227, baseType: !147, size: 64, offset: 256)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2670, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2670, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2670, file: !38, line: 230, baseType: !2508, size: 64, offset: 384)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2670, file: !38, line: 231, baseType: !2508, size: 64, offset: 448)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2670, file: !38, line: 232, baseType: !209, size: 64, offset: 512)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2662, file: !38, line: 523, baseType: !2701, size: 192, offset: 2240)
!2701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2678, size: 192, elements: !221)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !637, file: !44, line: 1458, baseType: !2703, size: 2112, offset: 4288)
!2703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2704)
!2704 = !{!2705, !2706, !2707}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2703, file: !44, line: 1411, baseType: !196, size: 32)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2703, file: !44, line: 1412, baseType: !1519, size: 128, offset: 64)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2703, file: !44, line: 1413, baseType: !2708, size: 1920, offset: 192)
!2708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2709, size: 1920, elements: !221)
!2709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2710, line: 12, size: 640, elements: !2711)
!2710 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2711 = !{!2712, !2720, !2722, !2727, !2728}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2709, file: !2710, line: 13, baseType: !2713, size: 320)
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2714, line: 17, size: 320, elements: !2715)
!2714 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2715 = !{!2716, !2717, !2718, !2719}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2713, file: !2714, line: 18, baseType: !196, size: 32)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2713, file: !2714, line: 19, baseType: !196, size: 32, offset: 32)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2713, file: !2714, line: 20, baseType: !1519, size: 128, offset: 64)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2713, file: !2714, line: 22, baseType: !404, size: 128, align: 64, offset: 192)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2709, file: !2710, line: 14, baseType: !2721, size: 64, offset: 320)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2709, file: !2710, line: 15, baseType: !2723, size: 64, offset: 384)
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2724, line: 16, size: 64, elements: !2725)
!2724 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2725 = !{!2726}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2723, file: !2724, line: 17, baseType: !1254, size: 64)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2709, file: !2710, line: 16, baseType: !1519, size: 128, offset: 448)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2709, file: !2710, line: 17, baseType: !785, size: 32, offset: 576)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !637, file: !44, line: 1465, baseType: !209, size: 64, offset: 6400)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !637, file: !44, line: 1468, baseType: !454, size: 32, offset: 6464)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !637, file: !44, line: 1470, baseType: !576, size: 64, offset: 6528)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !637, file: !44, line: 1471, baseType: !576, size: 64, offset: 6592)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !637, file: !44, line: 1473, baseType: !456, size: 32, offset: 6656)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !637, file: !44, line: 1474, baseType: !2735, size: 64, offset: 6720)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !637, file: !44, line: 1477, baseType: !2738, size: 256, offset: 6784)
!2738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 256, elements: !2268)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !637, file: !44, line: 1478, baseType: !2740, size: 128, offset: 7040)
!2740 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2741, line: 18, baseType: !2742)
!2741 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2741, line: 16, size: 128, elements: !2743)
!2743 = !{!2744}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2742, file: !2741, line: 17, baseType: !2745, size: 128)
!2745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1391, size: 128, elements: !1773)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !637, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !637, file: !44, line: 1481, baseType: !2748, size: 32, offset: 7200)
!2748 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !227, line: 150, baseType: !7)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !637, file: !44, line: 1487, baseType: !1211, size: 192, offset: 7232)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !637, file: !44, line: 1493, baseType: !187, size: 64, offset: 7424)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !637, file: !44, line: 1495, baseType: !2752, size: 64, offset: 7488)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2754)
!2754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !419, line: 135, size: 1024, align: 512, elements: !2755)
!2755 = !{!2756, !2760, !2761, !2768, !2774, !2778, !2782, !2786, !2787, !2791, !2795, !2800, !2804}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2754, file: !419, line: 136, baseType: !2757, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{!196, !421, !7}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2754, file: !419, line: 137, baseType: !2757, size: 64, offset: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2754, file: !419, line: 138, baseType: !2762, size: 64, offset: 128)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!196, !2765, !2767}
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !422)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2754, file: !419, line: 139, baseType: !2769, size: 64, offset: 192)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{!196, !2765, !7, !187, !2772}
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !445)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2754, file: !419, line: 141, baseType: !2775, size: 64, offset: 256)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!196, !2765}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2754, file: !419, line: 142, baseType: !2779, size: 64, offset: 320)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{!196, !421}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2754, file: !419, line: 143, baseType: !2783, size: 64, offset: 384)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{null, !421}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2754, file: !419, line: 144, baseType: !2783, size: 64, offset: 448)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2754, file: !419, line: 145, baseType: !2788, size: 64, offset: 512)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{null, !421, !468}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2754, file: !419, line: 146, baseType: !2792, size: 64, offset: 576)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!317, !421, !317, !196}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2754, file: !419, line: 147, baseType: !2796, size: 64, offset: 640)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!417, !2799}
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2754, file: !419, line: 148, baseType: !2801, size: 64, offset: 704)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{!196, !586, !226}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2754, file: !419, line: 149, baseType: !2805, size: 64, offset: 768)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{!421, !421, !2808}
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !469)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !637, file: !44, line: 1500, baseType: !196, size: 32, offset: 7552)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !637, file: !44, line: 1502, baseType: !2812, size: 448, offset: 7616)
!2812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2456, line: 60, size: 448, elements: !2813)
!2813 = !{!2814, !2819, !2820, !2821, !2822, !2823, !2824}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2812, file: !2456, line: 61, baseType: !2815, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{!147, !2818, !2454}
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2812, file: !2456, line: 63, baseType: !2815, size: 64, offset: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2812, file: !2456, line: 66, baseType: !350, size: 64, offset: 128)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2812, file: !2456, line: 67, baseType: !196, size: 32, offset: 192)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2812, file: !2456, line: 68, baseType: !7, size: 32, offset: 224)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2812, file: !2456, line: 71, baseType: !263, size: 128, offset: 256)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2812, file: !2456, line: 77, baseType: !2825, size: 64, offset: 384)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !637, file: !44, line: 1505, baseType: !809, size: 64, offset: 8064)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !637, file: !44, line: 1508, baseType: !809, size: 64, offset: 8128)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !637, file: !44, line: 1511, baseType: !196, size: 32, offset: 8192)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !637, file: !44, line: 1514, baseType: !947, size: 32, offset: 8224)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !637, file: !44, line: 1517, baseType: !2831, size: 64, offset: 8256)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1996, line: 18, flags: DIFlagFwdDecl)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !637, file: !44, line: 1518, baseType: !672, size: 64, offset: 8320)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !637, file: !44, line: 1525, baseType: !1751, size: 64, offset: 8384)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !637, file: !44, line: 1532, baseType: !2836, size: 64, offset: 8448)
!2836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2837, line: 52, size: 64, elements: !2838)
!2837 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2838 = !{!2839}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2836, file: !2837, line: 53, baseType: !2840, size: 64)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2837, line: 40, size: 256, elements: !2842)
!2842 = !{!2843, !2844, !2849}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2841, file: !2837, line: 42, baseType: !276)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2841, file: !2837, line: 44, baseType: !2845, size: 192)
!2845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2837, line: 28, size: 192, elements: !2846)
!2846 = !{!2847, !2848}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2845, file: !2837, line: 29, baseType: !263, size: 128)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2845, file: !2837, line: 31, baseType: !350, size: 64, offset: 128)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2841, file: !2837, line: 49, baseType: !350, size: 64, offset: 192)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !637, file: !44, line: 1533, baseType: !2836, size: 64, offset: 8512)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !637, file: !44, line: 1534, baseType: !404, size: 128, align: 64, offset: 8576)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !637, file: !44, line: 1535, baseType: !1995, size: 256, offset: 8704)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !637, file: !44, line: 1537, baseType: !1211, size: 192, offset: 8960)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !637, file: !44, line: 1542, baseType: !196, size: 32, offset: 9152)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !637, file: !44, line: 1545, baseType: !276, offset: 9184)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !637, file: !44, line: 1546, baseType: !263, size: 128, offset: 9216)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !637, file: !44, line: 1548, baseType: !276, offset: 9344)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !637, file: !44, line: 1549, baseType: !263, size: 128, offset: 9344)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !469, file: !44, line: 624, baseType: !771, size: 64, offset: 256)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !469, file: !44, line: 631, baseType: !147, size: 64, offset: 320)
!2861 = !DIDerivedType(tag: DW_TAG_member, scope: !469, file: !44, line: 639, baseType: !2862, size: 32, offset: 384)
!2862 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !469, file: !44, line: 639, size: 32, elements: !2863)
!2863 = !{!2864, !2866}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2862, file: !44, line: 640, baseType: !2865, size: 32)
!2865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2862, file: !44, line: 641, baseType: !7, size: 32)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !469, file: !44, line: 643, baseType: !550, size: 32, offset: 416)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !469, file: !44, line: 644, baseType: !568, size: 64, offset: 448)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !469, file: !44, line: 645, baseType: !572, size: 128, offset: 512)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !469, file: !44, line: 646, baseType: !572, size: 128, offset: 640)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !469, file: !44, line: 647, baseType: !572, size: 128, offset: 768)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !469, file: !44, line: 648, baseType: !276, offset: 896)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !469, file: !44, line: 649, baseType: !149, size: 16, offset: 896)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !469, file: !44, line: 650, baseType: !1390, size: 8, offset: 912)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !469, file: !44, line: 651, baseType: !1390, size: 8, offset: 920)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !469, file: !44, line: 652, baseType: !2628, size: 64, offset: 960)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !469, file: !44, line: 659, baseType: !147, size: 64, offset: 1024)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !469, file: !44, line: 660, baseType: !805, size: 256, offset: 1088)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !469, file: !44, line: 662, baseType: !147, size: 64, offset: 1344)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !469, file: !44, line: 663, baseType: !147, size: 64, offset: 1408)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !469, file: !44, line: 665, baseType: !676, size: 128, offset: 1472)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !469, file: !44, line: 666, baseType: !263, size: 128, offset: 1600)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !469, file: !44, line: 675, baseType: !263, size: 128, offset: 1728)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !469, file: !44, line: 676, baseType: !263, size: 128, offset: 1856)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !469, file: !44, line: 677, baseType: !263, size: 128, offset: 1984)
!2886 = !DIDerivedType(tag: DW_TAG_member, scope: !469, file: !44, line: 678, baseType: !2887, size: 128, offset: 2112)
!2887 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !469, file: !44, line: 678, size: 128, elements: !2888)
!2888 = !{!2889, !2890}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2887, file: !44, line: 679, baseType: !672, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2887, file: !44, line: 680, baseType: !404, size: 128, align: 64)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !469, file: !44, line: 682, baseType: !811, size: 64, offset: 2240)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !469, file: !44, line: 683, baseType: !811, size: 64, offset: 2304)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !469, file: !44, line: 684, baseType: !785, size: 32, offset: 2368)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !469, file: !44, line: 685, baseType: !785, size: 32, offset: 2400)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !469, file: !44, line: 686, baseType: !785, size: 32, offset: 2432)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !469, file: !44, line: 688, baseType: !785, size: 32, offset: 2464)
!2897 = !DIDerivedType(tag: DW_TAG_member, scope: !469, file: !44, line: 690, baseType: !2898, size: 64, offset: 2496)
!2898 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !469, file: !44, line: 690, size: 64, elements: !2899)
!2899 = !{!2900, !3123}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2898, file: !44, line: 691, baseType: !2901, size: 64)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2903)
!2903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2904)
!2904 = !{!2905, !2906, !2910, !2915, !2919, !2920, !2921, !2925, !2938, !2939, !2947, !2951, !2952, !2956, !2957, !2961, !2966, !2967, !2971, !2975, !3083, !3087, !3088, !3092, !3093, !3097, !3101, !3106, !3110, !3114, !3118, !3122}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2903, file: !44, line: 1823, baseType: !189, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2903, file: !44, line: 1824, baseType: !2907, size: 64, offset: 64)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!568, !391, !568, !196}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2903, file: !44, line: 1825, baseType: !2911, size: 64, offset: 128)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{!346, !391, !317, !361, !2914}
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2903, file: !44, line: 1826, baseType: !2916, size: 64, offset: 192)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!346, !391, !187, !361, !2914}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2903, file: !44, line: 1827, baseType: !882, size: 64, offset: 256)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2903, file: !44, line: 1828, baseType: !882, size: 64, offset: 320)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2903, file: !44, line: 1829, baseType: !2922, size: 64, offset: 384)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!196, !885, !226}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2903, file: !44, line: 1830, baseType: !2926, size: 64, offset: 448)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{!196, !391, !2929}
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2931)
!2931 = !{!2932, !2937}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2930, file: !44, line: 1777, baseType: !2933, size: 64)
!2933 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2934)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{!196, !2929, !187, !196, !568, !460, !7}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2930, file: !44, line: 1778, baseType: !568, size: 64, offset: 64)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2903, file: !44, line: 1831, baseType: !2926, size: 64, offset: 512)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2903, file: !44, line: 1832, baseType: !2940, size: 64, offset: 576)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!2943, !391, !2945}
!2943 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2944, line: 52, baseType: !7)
!2944 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !656, line: 27, flags: DIFlagFwdDecl)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2903, file: !44, line: 1833, baseType: !2948, size: 64, offset: 640)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{!350, !391, !7, !147}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2903, file: !44, line: 1834, baseType: !2948, size: 64, offset: 704)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2903, file: !44, line: 1835, baseType: !2953, size: 64, offset: 768)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DISubroutineType(types: !2955)
!2955 = !{!196, !391, !1019}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2903, file: !44, line: 1836, baseType: !147, size: 64, offset: 832)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2903, file: !44, line: 1837, baseType: !2958, size: 64, offset: 896)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!196, !468, !391}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2903, file: !44, line: 1838, baseType: !2962, size: 64, offset: 960)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!196, !391, !2965}
!2965 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !209)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2903, file: !44, line: 1839, baseType: !2958, size: 64, offset: 1024)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2903, file: !44, line: 1840, baseType: !2968, size: 64, offset: 1088)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = !DISubroutineType(types: !2970)
!2970 = !{!196, !391, !568, !568, !196}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2903, file: !44, line: 1841, baseType: !2972, size: 64, offset: 1152)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = !DISubroutineType(types: !2974)
!2974 = !{!196, !196, !391, !196}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2903, file: !44, line: 1842, baseType: !2976, size: 64, offset: 1216)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{!196, !391, !196, !2979}
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2981)
!2981 = !{!2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !3013, !3014, !3015, !3028, !3059}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2980, file: !44, line: 1063, baseType: !2979, size: 64)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2980, file: !44, line: 1064, baseType: !263, size: 128, offset: 64)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2980, file: !44, line: 1065, baseType: !676, size: 128, offset: 192)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2980, file: !44, line: 1066, baseType: !263, size: 128, offset: 320)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2980, file: !44, line: 1069, baseType: !263, size: 128, offset: 448)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2980, file: !44, line: 1072, baseType: !2965, size: 64, offset: 576)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2980, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2980, file: !44, line: 1074, baseType: !466, size: 8, offset: 672)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2980, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2980, file: !44, line: 1076, baseType: !196, size: 32, offset: 736)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2980, file: !44, line: 1077, baseType: !1519, size: 128, offset: 768)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2980, file: !44, line: 1078, baseType: !391, size: 64, offset: 896)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2980, file: !44, line: 1079, baseType: !568, size: 64, offset: 960)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2980, file: !44, line: 1080, baseType: !568, size: 64, offset: 1024)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2980, file: !44, line: 1082, baseType: !2997, size: 64, offset: 1088)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2999)
!2999 = !{!3000, !3008, !3009, !3010, !3011, !3012}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2998, file: !44, line: 1315, baseType: !3001)
!3001 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3002, line: 20, baseType: !3003)
!3002 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3003 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3002, line: 11, elements: !3004)
!3004 = !{!3005}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3003, file: !3002, line: 12, baseType: !3006)
!3006 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !288, line: 33, baseType: !3007)
!3007 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !288, line: 31, elements: !290)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2998, file: !44, line: 1316, baseType: !196, size: 32)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2998, file: !44, line: 1317, baseType: !196, size: 32, offset: 32)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2998, file: !44, line: 1318, baseType: !2997, size: 64, offset: 64)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2998, file: !44, line: 1319, baseType: !391, size: 64, offset: 128)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2998, file: !44, line: 1320, baseType: !404, size: 128, align: 64, offset: 192)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2980, file: !44, line: 1084, baseType: !147, size: 64, offset: 1152)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2980, file: !44, line: 1085, baseType: !147, size: 64, offset: 1216)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2980, file: !44, line: 1087, baseType: !3016, size: 64, offset: 1280)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3018)
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !3019)
!3019 = !{!3020, !3024}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3018, file: !44, line: 1012, baseType: !3021, size: 64)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = !DISubroutineType(types: !3023)
!3023 = !{null, !2979, !2979}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3018, file: !44, line: 1013, baseType: !3025, size: 64, offset: 64)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = !DISubroutineType(types: !3027)
!3027 = !{null, !2979}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2980, file: !44, line: 1088, baseType: !3029, size: 64, offset: 1344)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3031)
!3031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !3032)
!3032 = !{!3033, !3037, !3041, !3042, !3046, !3050, !3054, !3058}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3031, file: !44, line: 1017, baseType: !3034, size: 64)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!2965, !2965}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3031, file: !44, line: 1018, baseType: !3038, size: 64, offset: 64)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{null, !2965}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3031, file: !44, line: 1019, baseType: !3025, size: 64, offset: 128)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3031, file: !44, line: 1020, baseType: !3043, size: 64, offset: 192)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{!196, !2979, !196}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3031, file: !44, line: 1021, baseType: !3047, size: 64, offset: 256)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{!226, !2979}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3031, file: !44, line: 1022, baseType: !3051, size: 64, offset: 320)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{!196, !2979, !196, !266}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3031, file: !44, line: 1023, baseType: !3055, size: 64, offset: 384)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{null, !2979, !859}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3031, file: !44, line: 1024, baseType: !3047, size: 64, offset: 448)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2980, file: !44, line: 1097, baseType: !3060, size: 256, offset: 1408)
!3060 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2980, file: !44, line: 1089, size: 256, elements: !3061)
!3061 = !{!3062, !3071, !3077}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3060, file: !44, line: 1090, baseType: !3063, size: 256)
!3063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3064, line: 10, size: 256, elements: !3065)
!3064 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3065 = !{!3066, !3067, !3070}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3063, file: !3064, line: 11, baseType: !454, size: 32)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3063, file: !3064, line: 12, baseType: !3068, size: 64, offset: 64)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3064, line: 5, flags: DIFlagFwdDecl)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3063, file: !3064, line: 13, baseType: !263, size: 128, offset: 128)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3060, file: !44, line: 1091, baseType: !3072, size: 64)
!3072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3064, line: 17, size: 64, elements: !3073)
!3073 = !{!3074}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3072, file: !3064, line: 18, baseType: !3075, size: 64)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3064, line: 16, flags: DIFlagFwdDecl)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3060, file: !44, line: 1096, baseType: !3078, size: 192)
!3078 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3060, file: !44, line: 1092, size: 192, elements: !3079)
!3079 = !{!3080, !3081, !3082}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3078, file: !44, line: 1093, baseType: !263, size: 128)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3078, file: !44, line: 1094, baseType: !196, size: 32, offset: 128)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3078, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2903, file: !44, line: 1843, baseType: !3084, size: 64, offset: 1280)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{!346, !391, !758, !196, !361, !2914, !196}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2903, file: !44, line: 1844, baseType: !1139, size: 64, offset: 1344)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2903, file: !44, line: 1845, baseType: !3089, size: 64, offset: 1408)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!196, !196}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2903, file: !44, line: 1846, baseType: !2976, size: 64, offset: 1472)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2903, file: !44, line: 1847, baseType: !3094, size: 64, offset: 1536)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = !DISubroutineType(types: !3096)
!3096 = !{!346, !2136, !391, !2914, !361, !7}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2903, file: !44, line: 1848, baseType: !3098, size: 64, offset: 1600)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!346, !391, !2914, !2136, !361, !7}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2903, file: !44, line: 1849, baseType: !3102, size: 64, offset: 1664)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{!196, !391, !350, !3105, !859}
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2903, file: !44, line: 1850, baseType: !3107, size: 64, offset: 1728)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!350, !391, !196, !568, !568}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2903, file: !44, line: 1852, baseType: !3111, size: 64, offset: 1792)
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3112, size: 64)
!3112 = !DISubroutineType(types: !3113)
!3113 = !{null, !748, !391}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2903, file: !44, line: 1856, baseType: !3115, size: 64, offset: 1856)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{!346, !391, !568, !391, !568, !361, !7}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2903, file: !44, line: 1858, baseType: !3119, size: 64, offset: 1920)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!568, !391, !568, !391, !568, !568, !7}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2903, file: !44, line: 1861, baseType: !2968, size: 64, offset: 1984)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2898, file: !44, line: 692, baseType: !701, size: 64)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !469, file: !44, line: 694, baseType: !3125, size: 64, offset: 2560)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3127)
!3127 = !{!3128, !3129, !3130, !3131}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3126, file: !44, line: 1101, baseType: !276)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3126, file: !44, line: 1102, baseType: !263, size: 128)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3126, file: !44, line: 1103, baseType: !263, size: 128, offset: 128)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3126, file: !44, line: 1104, baseType: !263, size: 128, offset: 256)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !469, file: !44, line: 695, baseType: !772, size: 1216, align: 64, offset: 2624)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !469, file: !44, line: 696, baseType: !263, size: 128, offset: 3840)
!3134 = !DIDerivedType(tag: DW_TAG_member, scope: !469, file: !44, line: 697, baseType: !3135, size: 64, offset: 3968)
!3135 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !469, file: !44, line: 697, size: 64, elements: !3136)
!3136 = !{!3137, !3138, !3139, !3142, !3143}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3135, file: !44, line: 698, baseType: !2136, size: 64)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3135, file: !44, line: 699, baseType: !2653, size: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3135, file: !44, line: 700, baseType: !3140, size: 64)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3135, file: !44, line: 701, baseType: !317, size: 64)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3135, file: !44, line: 702, baseType: !7, size: 32)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !469, file: !44, line: 705, baseType: !456, size: 32, offset: 4032)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !469, file: !44, line: 708, baseType: !456, size: 32, offset: 4064)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !469, file: !44, line: 709, baseType: !2735, size: 64, offset: 4096)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !469, file: !44, line: 720, baseType: !209, size: 64, offset: 4160)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !422, file: !419, line: 98, baseType: !3149, size: 256, offset: 448)
!3149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !466, size: 256, elements: !2268)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !422, file: !419, line: 101, baseType: !3151, size: 32, offset: 704)
!3151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3152, line: 25, size: 32, elements: !3153)
!3152 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3153 = !{!3154}
!3154 = !DIDerivedType(tag: DW_TAG_member, scope: !3151, file: !3152, line: 26, baseType: !3155, size: 32)
!3155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3151, file: !3152, line: 26, size: 32, elements: !3156)
!3156 = !{!3157}
!3157 = !DIDerivedType(tag: DW_TAG_member, scope: !3155, file: !3152, line: 30, baseType: !3158, size: 32)
!3158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3155, file: !3152, line: 30, size: 32, elements: !3159)
!3159 = !{!3160, !3161}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3158, file: !3152, line: 31, baseType: !276)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3158, file: !3152, line: 32, baseType: !196, size: 32)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !422, file: !419, line: 102, baseType: !2752, size: 64, offset: 768)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !422, file: !419, line: 103, baseType: !636, size: 64, offset: 832)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !422, file: !419, line: 104, baseType: !147, size: 64, offset: 896)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !422, file: !419, line: 105, baseType: !209, size: 64, offset: 960)
!3166 = !DIDerivedType(tag: DW_TAG_member, scope: !422, file: !419, line: 107, baseType: !3167, size: 128, offset: 1024)
!3167 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !422, file: !419, line: 107, size: 128, elements: !3168)
!3168 = !{!3169, !3170}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3167, file: !419, line: 108, baseType: !263, size: 128)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3167, file: !419, line: 109, baseType: !3171, size: 64)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !422, file: !419, line: 111, baseType: !263, size: 128, offset: 1152)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !422, file: !419, line: 112, baseType: !263, size: 128, offset: 1280)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !422, file: !419, line: 120, baseType: !3175, size: 128, offset: 1408)
!3175 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !422, file: !419, line: 116, size: 128, elements: !3176)
!3176 = !{!3177, !3178, !3179}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3175, file: !419, line: 117, baseType: !676, size: 128)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3175, file: !419, line: 118, baseType: !436, size: 128)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3175, file: !419, line: 119, baseType: !404, size: 128, align: 64)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !392, file: !44, line: 922, baseType: !468, size: 64, offset: 256)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !392, file: !44, line: 923, baseType: !2901, size: 64, offset: 320)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !392, file: !44, line: 929, baseType: !276, offset: 384)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !392, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !392, file: !44, line: 931, baseType: !809, size: 64, offset: 448)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !392, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !392, file: !44, line: 933, baseType: !2748, size: 32, offset: 544)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !392, file: !44, line: 934, baseType: !1211, size: 192, offset: 576)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !392, file: !44, line: 935, baseType: !568, size: 64, offset: 768)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !392, file: !44, line: 936, baseType: !3190, size: 192, offset: 832)
!3190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3191)
!3191 = !{!3192, !3193, !3194, !3195, !3196, !3197}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3190, file: !44, line: 886, baseType: !3001)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3190, file: !44, line: 887, baseType: !1509, size: 64)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3190, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3190, file: !44, line: 889, baseType: !474, size: 32, offset: 96)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3190, file: !44, line: 889, baseType: !474, size: 32, offset: 128)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3190, file: !44, line: 890, baseType: !196, size: 32, offset: 160)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !392, file: !44, line: 937, baseType: !1585, size: 64, offset: 1024)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !392, file: !44, line: 938, baseType: !3200, size: 256, offset: 1088)
!3200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3201)
!3201 = !{!3202, !3203, !3204, !3205, !3206, !3207}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3200, file: !44, line: 897, baseType: !147, size: 64)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3200, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3200, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3200, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3200, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3200, file: !44, line: 904, baseType: !568, size: 64, offset: 192)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !392, file: !44, line: 940, baseType: !460, size: 64, offset: 1344)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !392, file: !44, line: 945, baseType: !209, size: 64, offset: 1408)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !392, file: !44, line: 949, baseType: !263, size: 128, offset: 1472)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !392, file: !44, line: 950, baseType: !263, size: 128, offset: 1600)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !392, file: !44, line: 952, baseType: !771, size: 64, offset: 1728)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !392, file: !44, line: 953, baseType: !947, size: 32, offset: 1792)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !392, file: !44, line: 954, baseType: !947, size: 32, offset: 1824)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !382, file: !340, line: 174, baseType: !388, size: 64, offset: 320)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !382, file: !340, line: 176, baseType: !3217, size: 64, offset: 384)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DISubroutineType(types: !3219)
!3219 = !{!196, !391, !269, !381, !1019}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !370, file: !340, line: 90, baseType: !365, size: 64, offset: 192)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !370, file: !340, line: 91, baseType: !3222, size: 64, offset: 256)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !330, file: !259, line: 143, baseType: !3224, size: 64, offset: 256)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!3227, !269}
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3229)
!3229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3230)
!3230 = !{!3231, !3232, !3236, !3240, !3246, !3250}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3229, file: !61, line: 40, baseType: !60, size: 32)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3229, file: !61, line: 41, baseType: !3233, size: 64, offset: 64)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!226}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3229, file: !61, line: 42, baseType: !3237, size: 64, offset: 128)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!209}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3229, file: !61, line: 43, baseType: !3241, size: 64, offset: 192)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!2165, !3244}
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3229, file: !61, line: 44, baseType: !3247, size: 64, offset: 256)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{!2165}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3229, file: !61, line: 45, baseType: !507, size: 64, offset: 320)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !330, file: !259, line: 144, baseType: !3252, size: 64, offset: 320)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!2165, !269}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !330, file: !259, line: 145, baseType: !3256, size: 64, offset: 384)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{null, !269, !3259, !3260}
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !258, file: !259, line: 70, baseType: !3262, size: 64, offset: 384)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !656, line: 123, size: 1024, elements: !3264)
!3264 = !{!3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3393, !3394, !3395, !3396, !3397}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3263, file: !656, line: 124, baseType: !785, size: 32)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3263, file: !656, line: 125, baseType: !785, size: 32, offset: 32)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3263, file: !656, line: 135, baseType: !3262, size: 64, offset: 64)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3263, file: !656, line: 136, baseType: !187, size: 64, offset: 128)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3263, file: !656, line: 138, baseType: !798, size: 192, align: 64, offset: 192)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3263, file: !656, line: 140, baseType: !2165, size: 64, offset: 384)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3263, file: !656, line: 141, baseType: !7, size: 32, offset: 448)
!3272 = !DIDerivedType(tag: DW_TAG_member, scope: !3263, file: !656, line: 142, baseType: !3273, size: 256, offset: 512)
!3273 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3263, file: !656, line: 142, size: 256, elements: !3274)
!3274 = !{!3275, !3321, !3325}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3273, file: !656, line: 143, baseType: !3276, size: 192)
!3276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !656, line: 91, size: 192, elements: !3277)
!3277 = !{!3278, !3279, !3280}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3276, file: !656, line: 92, baseType: !147, size: 64)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3276, file: !656, line: 94, baseType: !794, size: 64, offset: 64)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3276, file: !656, line: 100, baseType: !3281, size: 64, offset: 128)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !656, line: 180, size: 704, elements: !3283)
!3283 = !{!3284, !3285, !3286, !3293, !3294, !3295, !3319, !3320}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3282, file: !656, line: 182, baseType: !3262, size: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3282, file: !656, line: 183, baseType: !7, size: 32, offset: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3282, file: !656, line: 186, baseType: !3287, size: 192, offset: 128)
!3287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3288, line: 19, size: 192, elements: !3289)
!3288 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3289 = !{!3290, !3291, !3292}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3287, file: !3288, line: 20, baseType: !776, size: 128)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3287, file: !3288, line: 21, baseType: !7, size: 32, offset: 128)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3287, file: !3288, line: 22, baseType: !7, size: 32, offset: 160)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3282, file: !656, line: 187, baseType: !454, size: 32, offset: 320)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3282, file: !656, line: 188, baseType: !454, size: 32, offset: 352)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3282, file: !656, line: 189, baseType: !3296, size: 64, offset: 384)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !656, line: 168, size: 320, elements: !3298)
!3298 = !{!3299, !3303, !3307, !3311, !3315}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3297, file: !656, line: 169, baseType: !3300, size: 64)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{!196, !748, !3281}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3297, file: !656, line: 171, baseType: !3304, size: 64, offset: 64)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DISubroutineType(types: !3306)
!3306 = !{!196, !3262, !187, !356}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3297, file: !656, line: 173, baseType: !3308, size: 64, offset: 128)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{!196, !3262}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3297, file: !656, line: 174, baseType: !3312, size: 64, offset: 192)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DISubroutineType(types: !3314)
!3314 = !{!196, !3262, !3262, !187}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3297, file: !656, line: 176, baseType: !3316, size: 64, offset: 256)
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = !DISubroutineType(types: !3318)
!3318 = !{!196, !748, !3262, !3281}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3282, file: !656, line: 192, baseType: !263, size: 128, offset: 448)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3282, file: !656, line: 194, baseType: !1519, size: 128, offset: 576)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3273, file: !656, line: 144, baseType: !3322, size: 64)
!3322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !656, line: 103, size: 64, elements: !3323)
!3323 = !{!3324}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3322, file: !656, line: 104, baseType: !3262, size: 64)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3273, file: !656, line: 145, baseType: !3326, size: 256)
!3326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !656, line: 107, size: 256, elements: !3327)
!3327 = !{!3328, !3388, !3391, !3392}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3326, file: !656, line: 108, baseType: !3329, size: 64)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3331)
!3331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !656, line: 217, size: 768, elements: !3332)
!3332 = !{!3333, !3353, !3357, !3361, !3365, !3369, !3373, !3377, !3378, !3379, !3380, !3384}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3331, file: !656, line: 222, baseType: !3334, size: 64)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{!196, !3337}
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !656, line: 197, size: 1088, elements: !3339)
!3339 = !{!3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3338, file: !656, line: 199, baseType: !3262, size: 64)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3338, file: !656, line: 200, baseType: !391, size: 64, offset: 64)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3338, file: !656, line: 201, baseType: !748, size: 64, offset: 128)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3338, file: !656, line: 202, baseType: !209, size: 64, offset: 192)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3338, file: !656, line: 205, baseType: !1211, size: 192, offset: 256)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3338, file: !656, line: 206, baseType: !1211, size: 192, offset: 448)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3338, file: !656, line: 207, baseType: !196, size: 32, offset: 640)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3338, file: !656, line: 208, baseType: !263, size: 128, offset: 704)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3338, file: !656, line: 209, baseType: !317, size: 64, offset: 832)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3338, file: !656, line: 211, baseType: !361, size: 64, offset: 896)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3338, file: !656, line: 212, baseType: !226, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3338, file: !656, line: 213, baseType: !226, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3338, file: !656, line: 214, baseType: !1047, size: 64, offset: 1024)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3331, file: !656, line: 223, baseType: !3354, size: 64, offset: 64)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{null, !3337}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3331, file: !656, line: 236, baseType: !3358, size: 64, offset: 128)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!196, !748, !209}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3331, file: !656, line: 238, baseType: !3362, size: 64, offset: 192)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{!209, !748, !2914}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3331, file: !656, line: 239, baseType: !3366, size: 64, offset: 256)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!209, !748, !209, !2914}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3331, file: !656, line: 240, baseType: !3370, size: 64, offset: 320)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{null, !748, !209}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3331, file: !656, line: 242, baseType: !3374, size: 64, offset: 384)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{!346, !3337, !317, !361, !568}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3331, file: !656, line: 252, baseType: !361, size: 64, offset: 448)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3331, file: !656, line: 259, baseType: !226, size: 8, offset: 512)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3331, file: !656, line: 260, baseType: !3374, size: 64, offset: 576)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3331, file: !656, line: 263, baseType: !3381, size: 64, offset: 640)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = !DISubroutineType(types: !3383)
!3383 = !{!2943, !3337, !2945}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3331, file: !656, line: 266, baseType: !3385, size: 64, offset: 704)
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = !DISubroutineType(types: !3387)
!3387 = !{!196, !3337, !1019}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3326, file: !656, line: 109, baseType: !3389, size: 64, offset: 64)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !656, line: 31, flags: DIFlagFwdDecl)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3326, file: !656, line: 110, baseType: !568, size: 64, offset: 128)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3326, file: !656, line: 111, baseType: !3262, size: 64, offset: 192)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3263, file: !656, line: 148, baseType: !209, size: 64, offset: 768)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3263, file: !656, line: 154, baseType: !460, size: 64, offset: 832)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3263, file: !656, line: 156, baseType: !149, size: 16, offset: 896)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3263, file: !656, line: 157, baseType: !356, size: 16, offset: 912)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3263, file: !656, line: 158, baseType: !3398, size: 64, offset: 960)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !656, line: 32, flags: DIFlagFwdDecl)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !258, file: !259, line: 71, baseType: !3401, size: 32, offset: 448)
!3401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3402, line: 19, size: 32, elements: !3403)
!3402 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3403 = !{!3404}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3401, file: !3402, line: 20, baseType: !1268, size: 32)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !258, file: !259, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !258, file: !259, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !258, file: !259, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !258, file: !259, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !258, file: !259, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !255, file: !73, line: 463, baseType: !254, size: 64, offset: 512)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !255, file: !73, line: 465, baseType: !3412, size: 64, offset: 576)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !255, file: !73, line: 467, baseType: !187, size: 64, offset: 640)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !255, file: !73, line: 468, baseType: !3416, size: 64, offset: 704)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3418)
!3418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3419)
!3419 = !{!3420, !3421, !3422, !3426, !3431, !3435}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3418, file: !73, line: 88, baseType: !187, size: 64)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3418, file: !73, line: 89, baseType: !367, size: 64, offset: 64)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3418, file: !73, line: 90, baseType: !3423, size: 64, offset: 128)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{!196, !254, !312}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3418, file: !73, line: 91, baseType: !3427, size: 64, offset: 192)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DISubroutineType(types: !3429)
!3429 = !{!317, !254, !3430, !3259, !3260}
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3418, file: !73, line: 93, baseType: !3432, size: 64, offset: 256)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{null, !254}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3418, file: !73, line: 95, baseType: !3436, size: 64, offset: 320)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3438)
!3438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3439)
!3439 = !{!3440, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3438, file: !80, line: 279, baseType: !3441, size: 64)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!196, !254}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3438, file: !80, line: 280, baseType: !3432, size: 64, offset: 64)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3438, file: !80, line: 281, baseType: !3441, size: 64, offset: 128)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3438, file: !80, line: 282, baseType: !3441, size: 64, offset: 192)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3438, file: !80, line: 283, baseType: !3441, size: 64, offset: 256)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3438, file: !80, line: 284, baseType: !3441, size: 64, offset: 320)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3438, file: !80, line: 285, baseType: !3441, size: 64, offset: 384)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3438, file: !80, line: 286, baseType: !3441, size: 64, offset: 448)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3438, file: !80, line: 287, baseType: !3441, size: 64, offset: 512)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3438, file: !80, line: 288, baseType: !3441, size: 64, offset: 576)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3438, file: !80, line: 289, baseType: !3441, size: 64, offset: 640)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3438, file: !80, line: 290, baseType: !3441, size: 64, offset: 704)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3438, file: !80, line: 291, baseType: !3441, size: 64, offset: 768)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3438, file: !80, line: 292, baseType: !3441, size: 64, offset: 832)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3438, file: !80, line: 293, baseType: !3441, size: 64, offset: 896)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3438, file: !80, line: 294, baseType: !3441, size: 64, offset: 960)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3438, file: !80, line: 295, baseType: !3441, size: 64, offset: 1024)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3438, file: !80, line: 296, baseType: !3441, size: 64, offset: 1088)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3438, file: !80, line: 297, baseType: !3441, size: 64, offset: 1152)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3438, file: !80, line: 298, baseType: !3441, size: 64, offset: 1216)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3438, file: !80, line: 299, baseType: !3441, size: 64, offset: 1280)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3438, file: !80, line: 300, baseType: !3441, size: 64, offset: 1344)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3438, file: !80, line: 301, baseType: !3441, size: 64, offset: 1408)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !255, file: !73, line: 470, baseType: !3467, size: 64, offset: 768)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3469, line: 82, size: 1408, elements: !3470)
!3469 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3470 = !{!3471, !3472, !3473, !3474, !3475, !3476, !3477, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3552, !3555, !3556}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3468, file: !3469, line: 83, baseType: !187, size: 64)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3468, file: !3469, line: 84, baseType: !187, size: 64, offset: 64)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3468, file: !3469, line: 85, baseType: !254, size: 64, offset: 128)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3468, file: !3469, line: 86, baseType: !367, size: 64, offset: 192)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3468, file: !3469, line: 87, baseType: !367, size: 64, offset: 256)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3468, file: !3469, line: 88, baseType: !367, size: 64, offset: 320)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3468, file: !3469, line: 90, baseType: !3478, size: 64, offset: 384)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DISubroutineType(types: !3480)
!3480 = !{!196, !254, !3481}
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3483)
!3483 = !{!3484, !3485, !3486, !3487, !3488, !3489, !3490, !3503, !3516, !3517, !3518, !3519, !3520, !3528, !3529, !3530, !3531, !3532, !3533}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3482, file: !67, line: 96, baseType: !187, size: 64)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3482, file: !67, line: 97, baseType: !3467, size: 64, offset: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3482, file: !67, line: 99, baseType: !189, size: 64, offset: 128)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3482, file: !67, line: 100, baseType: !187, size: 64, offset: 192)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3482, file: !67, line: 102, baseType: !226, size: 8, offset: 256)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3482, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3482, file: !67, line: 105, baseType: !3491, size: 64, offset: 320)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3493)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3494, line: 262, size: 1600, elements: !3495)
!3494 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3495 = !{!3496, !3497, !3498, !3502}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3493, file: !3494, line: 263, baseType: !2738, size: 256)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3493, file: !3494, line: 264, baseType: !2738, size: 256, offset: 256)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3493, file: !3494, line: 265, baseType: !3499, size: 1024, offset: 512)
!3499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 1024, elements: !3500)
!3500 = !{!3501}
!3501 = !DISubrange(count: 128)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3493, file: !3494, line: 266, baseType: !2165, size: 64, offset: 1536)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3482, file: !67, line: 106, baseType: !3504, size: 64, offset: 384)
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3506)
!3506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3494, line: 210, size: 256, elements: !3507)
!3507 = !{!3508, !3512, !3514, !3515}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3506, file: !3494, line: 211, baseType: !3509, size: 72)
!3509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1391, size: 72, elements: !3510)
!3510 = !{!3511}
!3511 = !DISubrange(count: 9)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3506, file: !3494, line: 212, baseType: !3513, size: 64, offset: 128)
!3513 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3494, line: 14, baseType: !147)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3506, file: !3494, line: 213, baseType: !456, size: 32, offset: 192)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3506, file: !3494, line: 214, baseType: !456, size: 32, offset: 224)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3482, file: !67, line: 108, baseType: !3441, size: 64, offset: 448)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3482, file: !67, line: 109, baseType: !3432, size: 64, offset: 512)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3482, file: !67, line: 110, baseType: !3441, size: 64, offset: 576)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3482, file: !67, line: 111, baseType: !3432, size: 64, offset: 640)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3482, file: !67, line: 112, baseType: !3521, size: 64, offset: 704)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = !DISubroutineType(types: !3523)
!3523 = !{!196, !254, !3524}
!3524 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3525)
!3525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3526)
!3526 = !{!3527}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3525, file: !80, line: 51, baseType: !196, size: 32)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3482, file: !67, line: 113, baseType: !3441, size: 64, offset: 768)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3482, file: !67, line: 114, baseType: !367, size: 64, offset: 832)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3482, file: !67, line: 115, baseType: !367, size: 64, offset: 896)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3482, file: !67, line: 117, baseType: !3436, size: 64, offset: 960)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3482, file: !67, line: 118, baseType: !3432, size: 64, offset: 1024)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3482, file: !67, line: 120, baseType: !3534, size: 64, offset: 1088)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3468, file: !3469, line: 91, baseType: !3423, size: 64, offset: 448)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3468, file: !3469, line: 92, baseType: !3441, size: 64, offset: 512)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3468, file: !3469, line: 93, baseType: !3432, size: 64, offset: 576)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3468, file: !3469, line: 94, baseType: !3441, size: 64, offset: 640)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3468, file: !3469, line: 95, baseType: !3432, size: 64, offset: 704)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3468, file: !3469, line: 97, baseType: !3441, size: 64, offset: 768)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3468, file: !3469, line: 98, baseType: !3441, size: 64, offset: 832)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3468, file: !3469, line: 100, baseType: !3521, size: 64, offset: 896)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3468, file: !3469, line: 101, baseType: !3441, size: 64, offset: 960)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3468, file: !3469, line: 103, baseType: !3441, size: 64, offset: 1024)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3468, file: !3469, line: 105, baseType: !3441, size: 64, offset: 1088)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3468, file: !3469, line: 107, baseType: !3436, size: 64, offset: 1152)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3468, file: !3469, line: 109, baseType: !3549, size: 64, offset: 1216)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3551)
!3551 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3469, line: 109, flags: DIFlagFwdDecl)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3468, file: !3469, line: 111, baseType: !3553, size: 64, offset: 1280)
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3554 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3469, line: 111, flags: DIFlagFwdDecl)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3468, file: !3469, line: 112, baseType: !682, offset: 1344)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3468, file: !3469, line: 114, baseType: !226, size: 8, offset: 1344)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !255, file: !73, line: 471, baseType: !3481, size: 64, offset: 832)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !255, file: !73, line: 473, baseType: !209, size: 64, offset: 896)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !255, file: !73, line: 475, baseType: !209, size: 64, offset: 960)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !255, file: !73, line: 480, baseType: !1211, size: 192, offset: 1024)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !255, file: !73, line: 484, baseType: !3562, size: 576, offset: 1216)
!3562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3563)
!3563 = !{!3564, !3565, !3566, !3567, !3568, !3569}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3562, file: !73, line: 362, baseType: !263, size: 128)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3562, file: !73, line: 363, baseType: !263, size: 128, offset: 128)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3562, file: !73, line: 364, baseType: !263, size: 128, offset: 256)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3562, file: !73, line: 365, baseType: !263, size: 128, offset: 384)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3562, file: !73, line: 366, baseType: !226, size: 8, offset: 512)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3562, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !255, file: !73, line: 485, baseType: !3571, size: 2304, offset: 1792)
!3571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3572)
!3572 = !{!3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3668, !3672}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3571, file: !80, line: 566, baseType: !3524, size: 32)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3571, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3571, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3571, file: !80, line: 569, baseType: !226, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3571, file: !80, line: 570, baseType: !226, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3571, file: !80, line: 571, baseType: !226, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3571, file: !80, line: 572, baseType: !226, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3571, file: !80, line: 573, baseType: !226, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3571, file: !80, line: 574, baseType: !226, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3571, file: !80, line: 575, baseType: !226, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3571, file: !80, line: 576, baseType: !226, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3571, file: !80, line: 577, baseType: !454, size: 32, offset: 64)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3571, file: !80, line: 578, baseType: !276, offset: 96)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3571, file: !80, line: 580, baseType: !263, size: 128, offset: 128)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3571, file: !80, line: 581, baseType: !1540, size: 192, offset: 256)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3571, file: !80, line: 582, baseType: !3589, size: 64, offset: 448)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3591, line: 43, size: 1472, elements: !3592)
!3591 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3592 = !{!3593, !3594, !3595, !3596, !3597, !3600, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625}
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3590, file: !3591, line: 44, baseType: !187, size: 64)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3590, file: !3591, line: 45, baseType: !196, size: 32, offset: 64)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3590, file: !3591, line: 46, baseType: !263, size: 128, offset: 128)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3590, file: !3591, line: 47, baseType: !276, offset: 256)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3590, file: !3591, line: 48, baseType: !3598, size: 64, offset: 256)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3590, file: !3591, line: 49, baseType: !3601, size: 320, offset: 320)
!3601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3602, line: 11, size: 320, elements: !3603)
!3602 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3603 = !{!3604, !3605, !3606, !3611}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3601, file: !3602, line: 16, baseType: !676, size: 128)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3601, file: !3602, line: 17, baseType: !147, size: 64, offset: 128)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3601, file: !3602, line: 18, baseType: !3607, size: 64, offset: 192)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = !DISubroutineType(types: !3609)
!3609 = !{null, !3610}
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3601, file: !3602, line: 19, baseType: !454, size: 32, offset: 256)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3590, file: !3591, line: 50, baseType: !147, size: 64, offset: 640)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3590, file: !3591, line: 51, baseType: !1338, size: 64, offset: 704)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3590, file: !3591, line: 52, baseType: !1338, size: 64, offset: 768)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3590, file: !3591, line: 53, baseType: !1338, size: 64, offset: 832)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3590, file: !3591, line: 54, baseType: !1338, size: 64, offset: 896)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3590, file: !3591, line: 55, baseType: !1338, size: 64, offset: 960)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3590, file: !3591, line: 56, baseType: !147, size: 64, offset: 1024)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3590, file: !3591, line: 57, baseType: !147, size: 64, offset: 1088)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3590, file: !3591, line: 58, baseType: !147, size: 64, offset: 1152)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3590, file: !3591, line: 59, baseType: !147, size: 64, offset: 1216)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3590, file: !3591, line: 60, baseType: !147, size: 64, offset: 1280)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3590, file: !3591, line: 61, baseType: !254, size: 64, offset: 1344)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3590, file: !3591, line: 62, baseType: !226, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3590, file: !3591, line: 63, baseType: !226, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3571, file: !80, line: 583, baseType: !226, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3571, file: !80, line: 584, baseType: !226, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3571, file: !80, line: 585, baseType: !226, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3571, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3571, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3571, file: !80, line: 592, baseType: !1330, size: 512, offset: 576)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3571, file: !80, line: 593, baseType: !460, size: 64, offset: 1088)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3571, file: !80, line: 594, baseType: !1995, size: 256, offset: 1152)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3571, file: !80, line: 595, baseType: !1519, size: 128, offset: 1408)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3571, file: !80, line: 596, baseType: !3598, size: 64, offset: 1536)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3571, file: !80, line: 597, baseType: !785, size: 32, offset: 1600)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3571, file: !80, line: 598, baseType: !785, size: 32, offset: 1632)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3571, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3571, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3571, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3571, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3571, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3571, file: !80, line: 604, baseType: !226, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3571, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3571, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3571, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3571, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3571, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3571, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3571, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3571, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3571, file: !80, line: 613, baseType: !196, size: 32, offset: 1792)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3571, file: !80, line: 614, baseType: !196, size: 32, offset: 1824)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3571, file: !80, line: 615, baseType: !460, size: 64, offset: 1856)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3571, file: !80, line: 616, baseType: !460, size: 64, offset: 1920)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3571, file: !80, line: 617, baseType: !460, size: 64, offset: 1984)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3571, file: !80, line: 618, baseType: !460, size: 64, offset: 2048)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3571, file: !80, line: 620, baseType: !3659, size: 64, offset: 2112)
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3661)
!3661 = !{!3662, !3663, !3664, !3665}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3660, file: !80, line: 537, baseType: !276)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3660, file: !80, line: 538, baseType: !7, size: 32)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3660, file: !80, line: 540, baseType: !263, size: 128, offset: 64)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3660, file: !80, line: 543, baseType: !3666, size: 64, offset: 192)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3571, file: !80, line: 621, baseType: !3669, size: 64, offset: 2176)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{null, !254, !1482}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3571, file: !80, line: 622, baseType: !3673, size: 64, offset: 2240)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !255, file: !73, line: 486, baseType: !3676, size: 64, offset: 4096)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3678)
!3678 = !{!3679, !3680, !3681, !3685, !3686, !3687}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3677, file: !80, line: 643, baseType: !3438, size: 1472)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3677, file: !80, line: 644, baseType: !3441, size: 64, offset: 1472)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3677, file: !80, line: 645, baseType: !3682, size: 64, offset: 1536)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{null, !254, !226}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3677, file: !80, line: 646, baseType: !3441, size: 64, offset: 1600)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3677, file: !80, line: 647, baseType: !3432, size: 64, offset: 1664)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3677, file: !80, line: 648, baseType: !3432, size: 64, offset: 1728)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !255, file: !73, line: 493, baseType: !3689, size: 64, offset: 4160)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !73, line: 493, flags: DIFlagFwdDecl)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !255, file: !73, line: 499, baseType: !263, size: 128, offset: 4224)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !255, file: !73, line: 502, baseType: !3693, size: 64, offset: 4352)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3695)
!3695 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !255, file: !73, line: 504, baseType: !3697, size: 64, offset: 4416)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !255, file: !73, line: 505, baseType: !460, size: 64, offset: 4480)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !255, file: !73, line: 510, baseType: !460, size: 64, offset: 4544)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !255, file: !73, line: 511, baseType: !3701, size: 64, offset: 4608)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3703)
!3703 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !255, file: !73, line: 513, baseType: !3705, size: 64, offset: 4672)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3707)
!3707 = !{!3708, !3709}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3706, file: !73, line: 293, baseType: !7, size: 32)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3706, file: !73, line: 294, baseType: !147, size: 64, offset: 64)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !255, file: !73, line: 515, baseType: !263, size: 128, offset: 4736)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !255, file: !73, line: 526, baseType: !3712, offset: 4864)
!3712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3713, line: 5, elements: !290)
!3713 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !255, file: !73, line: 528, baseType: !3715, size: 64, offset: 4864)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3717, line: 14, flags: DIFlagFwdDecl)
!3717 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !255, file: !73, line: 529, baseType: !3719, size: 64, offset: 4928)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3721, line: 17, size: 192, elements: !3722)
!3721 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3722 = !{!3723, !3724, !3807}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3720, file: !3721, line: 18, baseType: !3719, size: 64)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3720, file: !3721, line: 19, baseType: !3725, size: 64, offset: 64)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3727)
!3727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3721, line: 110, size: 1152, elements: !3728)
!3728 = !{!3729, !3733, !3737, !3743, !3749, !3753, !3757, !3762, !3766, !3767, !3771, !3775, !3779, !3790, !3791, !3792, !3793, !3803}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3727, file: !3721, line: 111, baseType: !3730, size: 64)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{!3719, !3719}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3727, file: !3721, line: 112, baseType: !3734, size: 64, offset: 64)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{null, !3719}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3727, file: !3721, line: 113, baseType: !3738, size: 64, offset: 128)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!226, !3741}
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3720)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3727, file: !3721, line: 114, baseType: !3744, size: 64, offset: 192)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!2165, !3741, !3747}
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !255)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3727, file: !3721, line: 116, baseType: !3750, size: 64, offset: 256)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DISubroutineType(types: !3752)
!3752 = !{!226, !3741, !187}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3727, file: !3721, line: 118, baseType: !3754, size: 64, offset: 320)
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = !DISubroutineType(types: !3756)
!3756 = !{!196, !3741, !187, !7, !209, !361}
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3727, file: !3721, line: 123, baseType: !3758, size: 64, offset: 384)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = !DISubroutineType(types: !3760)
!3760 = !{!196, !3741, !187, !3761, !361}
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3727, file: !3721, line: 126, baseType: !3763, size: 64, offset: 448)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{!187, !3741}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3727, file: !3721, line: 127, baseType: !3763, size: 64, offset: 512)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3727, file: !3721, line: 128, baseType: !3768, size: 64, offset: 576)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{!3719, !3741}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3727, file: !3721, line: 130, baseType: !3772, size: 64, offset: 640)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = !DISubroutineType(types: !3774)
!3774 = !{!3719, !3741, !3719}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3727, file: !3721, line: 133, baseType: !3776, size: 64, offset: 704)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DISubroutineType(types: !3778)
!3778 = !{!3719, !3741, !187}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3727, file: !3721, line: 135, baseType: !3780, size: 64, offset: 768)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DISubroutineType(types: !3782)
!3782 = !{!196, !3741, !187, !187, !7, !7, !3783}
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3721, line: 43, size: 640, elements: !3785)
!3785 = !{!3786, !3787, !3788}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3784, file: !3721, line: 44, baseType: !3719, size: 64)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3784, file: !3721, line: 45, baseType: !7, size: 32, offset: 64)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3784, file: !3721, line: 46, baseType: !3789, size: 512, offset: 128)
!3789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 512, elements: !1368)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3727, file: !3721, line: 140, baseType: !3772, size: 64, offset: 832)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3727, file: !3721, line: 143, baseType: !3768, size: 64, offset: 896)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3727, file: !3721, line: 145, baseType: !3730, size: 64, offset: 960)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3727, file: !3721, line: 146, baseType: !3794, size: 64, offset: 1024)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!196, !3741, !3797}
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3721, line: 29, size: 128, elements: !3799)
!3799 = !{!3800, !3801, !3802}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3798, file: !3721, line: 30, baseType: !7, size: 32)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3798, file: !3721, line: 31, baseType: !7, size: 32, offset: 32)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3798, file: !3721, line: 32, baseType: !3741, size: 64, offset: 64)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3727, file: !3721, line: 148, baseType: !3804, size: 64, offset: 1088)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!196, !3741, !254}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3720, file: !3721, line: 20, baseType: !254, size: 64, offset: 128)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !255, file: !73, line: 534, baseType: !550, size: 32, offset: 4992)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !255, file: !73, line: 535, baseType: !454, size: 32, offset: 5024)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !255, file: !73, line: 537, baseType: !276, offset: 5056)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !255, file: !73, line: 538, baseType: !263, size: 128, offset: 5056)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !255, file: !73, line: 540, baseType: !3813, size: 64, offset: 5184)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3815, line: 54, size: 960, elements: !3816)
!3815 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3816 = !{!3817, !3818, !3819, !3820, !3821, !3822, !3823, !3827, !3831, !3832, !3833, !3834, !3838, !3842, !3843}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3814, file: !3815, line: 55, baseType: !187, size: 64)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3814, file: !3815, line: 56, baseType: !189, size: 64, offset: 64)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3814, file: !3815, line: 58, baseType: !367, size: 64, offset: 128)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3814, file: !3815, line: 59, baseType: !367, size: 64, offset: 192)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3814, file: !3815, line: 60, baseType: !269, size: 64, offset: 256)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3814, file: !3815, line: 62, baseType: !3423, size: 64, offset: 320)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3814, file: !3815, line: 63, baseType: !3824, size: 64, offset: 384)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{!317, !254, !3430}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3814, file: !3815, line: 65, baseType: !3828, size: 64, offset: 448)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{null, !3813}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3814, file: !3815, line: 66, baseType: !3432, size: 64, offset: 512)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3814, file: !3815, line: 68, baseType: !3441, size: 64, offset: 576)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3814, file: !3815, line: 70, baseType: !3227, size: 64, offset: 640)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3814, file: !3815, line: 71, baseType: !3835, size: 64, offset: 704)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{!2165, !254}
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3814, file: !3815, line: 73, baseType: !3839, size: 64, offset: 768)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = !DISubroutineType(types: !3841)
!3841 = !{null, !254, !3259, !3260}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3814, file: !3815, line: 75, baseType: !3436, size: 64, offset: 832)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3814, file: !3815, line: 77, baseType: !3553, size: 64, offset: 896)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !255, file: !73, line: 541, baseType: !367, size: 64, offset: 5248)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !255, file: !73, line: 543, baseType: !3432, size: 64, offset: 5312)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !255, file: !73, line: 544, baseType: !3847, size: 64, offset: 5376)
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3848 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !255, file: !73, line: 545, baseType: !3850, size: 64, offset: 5440)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !255, file: !73, line: 547, baseType: !226, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !255, file: !73, line: 548, baseType: !226, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !255, file: !73, line: 549, baseType: !226, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !255, file: !73, line: 550, baseType: !226, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "page_list", scope: !251, file: !128, line: 251, baseType: !3857, size: 64, offset: 64)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_buf_page", file: !128, line: 220, size: 128, elements: !3859)
!3859 = !{!3860, !3861}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "virt_addr", scope: !3858, file: !128, line: 221, baseType: !209, size: 64)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3858, file: !128, line: 222, baseType: !958, size: 64, offset: 64)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "n_pages", scope: !251, file: !128, line: 252, baseType: !7, size: 32, offset: 128)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "dma_dir", scope: !251, file: !128, line: 253, baseType: !93, size: 32, offset: 160)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !251, file: !128, line: 254, baseType: !3401, size: 32, offset: 192)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "max_bufsize", scope: !245, file: !128, line: 351, baseType: !7, size: 32, offset: 192)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_count", scope: !245, file: !128, line: 352, baseType: !7, size: 32, offset: 224)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_alloc_count", scope: !245, file: !128, line: 353, baseType: !7, size: 32, offset: 256)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_count", scope: !245, file: !128, line: 354, baseType: !7, size: 32, offset: 288)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_alloc_count", scope: !245, file: !128, line: 355, baseType: !7, size: 32, offset: 320)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_ptr", scope: !245, file: !128, line: 356, baseType: !7, size: 32, offset: 352)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_ptr", scope: !245, file: !128, line: 357, baseType: !7, size: 32, offset: 384)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "cur_chan", scope: !245, file: !128, line: 358, baseType: !7, size: 32, offset: 416)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "scans_done", scope: !245, file: !128, line: 359, baseType: !7, size: 32, offset: 448)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "scan_progress", scope: !245, file: !128, line: 360, baseType: !7, size: 32, offset: 480)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "munge_chan", scope: !245, file: !128, line: 361, baseType: !7, size: 32, offset: 512)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "munge_count", scope: !245, file: !128, line: 362, baseType: !7, size: 32, offset: 544)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "munge_ptr", scope: !245, file: !128, line: 363, baseType: !7, size: 32, offset: 576)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !245, file: !128, line: 364, baseType: !7, size: 32, offset: 608)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !245, file: !128, line: 365, baseType: !3880, size: 640, offset: 640)
!3880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_cmd", file: !106, line: 589, size: 640, elements: !3881)
!3881 = !{!3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3898}
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "subdev", scope: !3880, file: !106, line: 590, baseType: !7, size: 32)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3880, file: !106, line: 591, baseType: !7, size: 32, offset: 32)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "start_src", scope: !3880, file: !106, line: 593, baseType: !7, size: 32, offset: 64)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "start_arg", scope: !3880, file: !106, line: 594, baseType: !7, size: 32, offset: 96)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "scan_begin_src", scope: !3880, file: !106, line: 596, baseType: !7, size: 32, offset: 128)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "scan_begin_arg", scope: !3880, file: !106, line: 597, baseType: !7, size: 32, offset: 160)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "convert_src", scope: !3880, file: !106, line: 599, baseType: !7, size: 32, offset: 192)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "convert_arg", scope: !3880, file: !106, line: 600, baseType: !7, size: 32, offset: 224)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "scan_end_src", scope: !3880, file: !106, line: 602, baseType: !7, size: 32, offset: 256)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "scan_end_arg", scope: !3880, file: !106, line: 603, baseType: !7, size: 32, offset: 288)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "stop_src", scope: !3880, file: !106, line: 605, baseType: !7, size: 32, offset: 320)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "stop_arg", scope: !3880, file: !106, line: 606, baseType: !7, size: 32, offset: 352)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist", scope: !3880, file: !106, line: 608, baseType: !2721, size: 64, offset: 384)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist_len", scope: !3880, file: !106, line: 609, baseType: !7, size: 32, offset: 448)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3880, file: !106, line: 611, baseType: !3897, size: 64, offset: 512)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !3880, file: !106, line: 612, baseType: !7, size: 32, offset: 576)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "wait_head", scope: !245, file: !128, line: 366, baseType: !1519, size: 128, offset: 1280)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "cb_mask", scope: !245, file: !128, line: 367, baseType: !7, size: 32, offset: 1408)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "inttrig", scope: !245, file: !128, line: 368, baseType: !3902, size: 64, offset: 1472)
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = !DISubroutineType(types: !3904)
!3904 = !{!196, !197, !233, !7}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !234, file: !128, line: 165, baseType: !209, size: 64, offset: 384)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !234, file: !128, line: 166, baseType: !209, size: 64, offset: 448)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "runflags", scope: !234, file: !128, line: 167, baseType: !7, size: 32, offset: 512)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "spin_lock", scope: !234, file: !128, line: 168, baseType: !276, offset: 544)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "io_bits", scope: !234, file: !128, line: 170, baseType: !7, size: 32, offset: 544)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata", scope: !234, file: !128, line: 172, baseType: !7, size: 32, offset: 576)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata_list", scope: !234, file: !128, line: 173, baseType: !3912, size: 64, offset: 640)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "range_table", scope: !234, file: !128, line: 175, baseType: !3914, size: 64, offset: 704)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3916)
!3916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_lrange", file: !128, line: 635, size: 32, elements: !3917)
!3917 = !{!3918, !3919}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3916, file: !128, line: 636, baseType: !196, size: 32)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3916, file: !128, line: 637, baseType: !3920, offset: 32)
!3920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3921, elements: !2369)
!3921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_krange", file: !106, line: 685, size: 96, elements: !3922)
!3922 = !{!3923, !3924, !3925}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !3921, file: !106, line: 686, baseType: !196, size: 32)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3921, file: !106, line: 687, baseType: !196, size: 32, offset: 32)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3921, file: !106, line: 688, baseType: !7, size: 32, offset: 64)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "range_table_list", scope: !234, file: !128, line: 176, baseType: !3927, size: 64, offset: 768)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3914)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist", scope: !234, file: !128, line: 178, baseType: !2721, size: 64, offset: 832)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "insn_read", scope: !234, file: !128, line: 180, baseType: !230, size: 64, offset: 896)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "insn_write", scope: !234, file: !128, line: 182, baseType: !230, size: 64, offset: 960)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "insn_bits", scope: !234, file: !128, line: 184, baseType: !230, size: 64, offset: 1024)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "insn_config", scope: !234, file: !128, line: 186, baseType: !230, size: 64, offset: 1088)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "do_cmd", scope: !234, file: !128, line: 191, baseType: !3935, size: 64, offset: 1152)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = !DISubroutineType(types: !3937)
!3937 = !{!196, !197, !233}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "do_cmdtest", scope: !234, file: !128, line: 192, baseType: !3939, size: 64, offset: 1216)
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3940 = !DISubroutineType(types: !3941)
!3941 = !{!196, !197, !233, !3942}
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !234, file: !128, line: 195, baseType: !3935, size: 64, offset: 1280)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "cancel", scope: !234, file: !128, line: 196, baseType: !3935, size: 64, offset: 1344)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "buf_change", scope: !234, file: !128, line: 199, baseType: !3935, size: 64, offset: 1408)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "munge", scope: !234, file: !128, line: 202, baseType: !3947, size: 64, offset: 1472)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = !DISubroutineType(types: !3949)
!3949 = !{null, !197, !233, !209, !7, !7}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "async_dma_dir", scope: !234, file: !128, line: 205, baseType: !93, size: 32, offset: 1536)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !234, file: !128, line: 207, baseType: !7, size: 32, offset: 1568)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !234, file: !128, line: 209, baseType: !254, size: 64, offset: 1600)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !234, file: !128, line: 210, baseType: !196, size: 32, offset: 1664)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "readback", scope: !234, file: !128, line: 212, baseType: !2721, size: 64, offset: 1728)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_insn", file: !106, line: 491, size: 320, elements: !3957)
!3957 = !{!3958, !3959, !3960, !3961, !3962, !3963}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3956, file: !106, line: 492, baseType: !7, size: 32)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !3956, file: !106, line: 493, baseType: !7, size: 32, offset: 32)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3956, file: !106, line: 494, baseType: !2721, size: 64, offset: 64)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "subdev", scope: !3956, file: !106, line: 495, baseType: !7, size: 32, offset: 128)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "chanspec", scope: !3956, file: !106, line: 496, baseType: !7, size: 32, offset: 160)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !3956, file: !106, line: 497, baseType: !220, size: 96, offset: 192)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !198, file: !128, line: 545, baseType: !209, size: 64, offset: 192)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !198, file: !128, line: 547, baseType: !254, size: 64, offset: 256)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !198, file: !128, line: 548, baseType: !196, size: 32, offset: 320)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "detach_count", scope: !198, file: !128, line: 549, baseType: !7, size: 32, offset: 352)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "hw_dev", scope: !198, file: !128, line: 550, baseType: !254, size: 64, offset: 384)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !198, file: !128, line: 552, baseType: !187, size: 64, offset: 448)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "board_ptr", scope: !198, file: !128, line: 553, baseType: !2165, size: 64, offset: 512)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "attached", scope: !198, file: !128, line: 554, baseType: !7, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "ioenabled", scope: !198, file: !128, line: 555, baseType: !7, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "spinlock", scope: !198, file: !128, line: 556, baseType: !276, offset: 584)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !198, file: !128, line: 557, baseType: !1211, size: 192, offset: 640)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "attach_lock", scope: !198, file: !128, line: 558, baseType: !805, size: 256, offset: 832)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !198, file: !128, line: 559, baseType: !3401, size: 32, offset: 1088)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "n_subdevices", scope: !198, file: !128, line: 561, baseType: !196, size: 32, offset: 1120)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "subdevices", scope: !198, file: !128, line: 562, baseType: !233, size: 64, offset: 1152)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "mmio", scope: !198, file: !128, line: 565, baseType: !209, size: 64, offset: 1216)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "iobase", scope: !198, file: !128, line: 566, baseType: !147, size: 64, offset: 1280)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "iolen", scope: !198, file: !128, line: 567, baseType: !147, size: 64, offset: 1344)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !198, file: !128, line: 568, baseType: !7, size: 32, offset: 1408)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "read_subdev", scope: !198, file: !128, line: 570, baseType: !233, size: 64, offset: 1472)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "write_subdev", scope: !198, file: !128, line: 571, baseType: !233, size: 64, offset: 1536)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "async_queue", scope: !198, file: !128, line: 573, baseType: !2997, size: 64, offset: 1600)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !198, file: !128, line: 575, baseType: !3987, size: 64, offset: 1664)
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3988, size: 64)
!3988 = !DISubroutineType(types: !3989)
!3989 = !{!196, !197}
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !198, file: !128, line: 576, baseType: !3991, size: 64, offset: 1728)
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3992, size: 64)
!3992 = !DISubroutineType(types: !3993)
!3993 = !{null, !197}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "insn_device_config", scope: !198, file: !128, line: 577, baseType: !3995, size: 64, offset: 1792)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = !DISubroutineType(types: !3997)
!3997 = !{!196, !197, !3955, !2721}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "get_valid_routes", scope: !198, file: !128, line: 579, baseType: !3999, size: 64, offset: 1856)
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4000 = !DISubroutineType(types: !4001)
!4001 = !{!7, !197, !7, !2721}
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_devconfig", file: !106, line: 834, size: 1184, elements: !4004)
!4004 = !{!4005, !4007}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !4003, file: !106, line: 835, baseType: !4006, size: 160)
!4006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 160, elements: !2239)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !4003, file: !106, line: 836, baseType: !4008, size: 1024, offset: 160)
!4008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 1024, elements: !2268)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !182, file: !128, line: 444, baseType: !3991, size: 64, offset: 256)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "auto_attach", scope: !182, file: !128, line: 445, baseType: !4011, size: 64, offset: 320)
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4012 = !DISubroutineType(types: !4013)
!4013 = !{!196, !197, !147}
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "num_names", scope: !182, file: !128, line: 446, baseType: !7, size: 32, offset: 384)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !182, file: !128, line: 447, baseType: !4016, size: 64, offset: 448)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4017, size: 64)
!4017 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !187)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !182, file: !128, line: 448, baseType: !196, size: 32, offset: 512)
!4019 = !DIGlobalVariableExpression(var: !4020, expr: !DIExpression())
!4020 = distinct !DIGlobalVariable(name: "pci9111_ai_range", scope: !2, file: !3, line: 97, type: !3915, isLocal: true, isDefinition: true)
!4021 = !DIGlobalVariableExpression(var: !4022, expr: !DIExpression())
!4022 = distinct !DIGlobalVariable(name: "adl_pci9111_pci_driver", scope: !2, file: !3, line: 737, type: !4023, isLocal: true, isDefinition: true)
!4023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !4024, line: 858, size: 2048, elements: !4025)
!4024 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!4025 = !{!4026, !4027, !4028, !4040, !4258, !4262, !4266, !4270, !4271, !4275, !4293, !4294, !4295}
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4023, file: !4024, line: 859, baseType: !263, size: 128)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4023, file: !4024, line: 860, baseType: !187, size: 64, offset: 128)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4023, file: !4024, line: 861, baseType: !4029, size: 64, offset: 192)
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4030, size: 64)
!4030 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4031)
!4031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3494, line: 38, size: 256, elements: !4032)
!4032 = !{!4033, !4034, !4035, !4036, !4037, !4038, !4039}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4031, file: !3494, line: 39, baseType: !456, size: 32)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4031, file: !3494, line: 39, baseType: !456, size: 32, offset: 32)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4031, file: !3494, line: 40, baseType: !456, size: 32, offset: 64)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4031, file: !3494, line: 40, baseType: !456, size: 32, offset: 96)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4031, file: !3494, line: 41, baseType: !456, size: 32, offset: 128)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4031, file: !3494, line: 41, baseType: !456, size: 32, offset: 160)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4031, file: !3494, line: 42, baseType: !3513, size: 64, offset: 192)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4023, file: !4024, line: 862, baseType: !4041, size: 64, offset: 256)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = !DISubroutineType(types: !4043)
!4043 = !{!196, !4044, !4029}
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !4024, line: 309, size: 19264, elements: !4046)
!4046 = !{!4047, !4048, !4121, !4122, !4123, !4124, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4152, !4154, !4155, !4156, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4180, !4181, !4182, !4183, !4185, !4186, !4187, !4188, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4231, !4232, !4234, !4235, !4236, !4237, !4239, !4240, !4241, !4244, !4251, !4252, !4253, !4254, !4255, !4256, !4257}
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !4045, file: !4024, line: 310, baseType: !263, size: 128)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4045, file: !4024, line: 311, baseType: !4049, size: 64, offset: 128)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !4024, line: 605, size: 8064, elements: !4051)
!4051 = !{!4052, !4053, !4054, !4055, !4056, !4057, !4058, !4073, !4074, !4075, !4099, !4102, !4103, !4107, !4108, !4109, !4110, !4111, !4113, !4114, !4116, !4117, !4118, !4119, !4120}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4050, file: !4024, line: 606, baseType: !263, size: 128)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4050, file: !4024, line: 607, baseType: !4049, size: 64, offset: 128)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4050, file: !4024, line: 608, baseType: !263, size: 128, offset: 192)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4050, file: !4024, line: 609, baseType: !263, size: 128, offset: 320)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4050, file: !4024, line: 610, baseType: !4044, size: 64, offset: 448)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !4050, file: !4024, line: 611, baseType: !263, size: 128, offset: 512)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4050, file: !4024, line: 613, baseType: !4059, size: 256, offset: 640)
!4059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4060, size: 256, elements: !1193)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4062, line: 20, size: 512, elements: !4063)
!4062 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!4063 = !{!4064, !4066, !4067, !4068, !4069, !4070, !4071, !4072}
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4061, file: !4062, line: 21, baseType: !4065, size: 64)
!4065 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !227, line: 158, baseType: !2163)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4061, file: !4062, line: 22, baseType: !4065, size: 64, offset: 64)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4061, file: !4062, line: 23, baseType: !187, size: 64, offset: 128)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4061, file: !4062, line: 24, baseType: !147, size: 64, offset: 192)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4061, file: !4062, line: 25, baseType: !147, size: 64, offset: 256)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4061, file: !4062, line: 26, baseType: !4060, size: 64, offset: 320)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4061, file: !4062, line: 26, baseType: !4060, size: 64, offset: 384)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4061, file: !4062, line: 26, baseType: !4060, size: 64, offset: 448)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4050, file: !4024, line: 614, baseType: !263, size: 128, offset: 896)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !4050, file: !4024, line: 615, baseType: !4061, size: 512, offset: 1024)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4050, file: !4024, line: 617, baseType: !4076, size: 64, offset: 1536)
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 64)
!4077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !4024, line: 731, size: 320, elements: !4078)
!4078 = !{!4079, !4083, !4087, !4091, !4095}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !4077, file: !4024, line: 732, baseType: !4080, size: 64)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = !DISubroutineType(types: !4082)
!4082 = !{!196, !4049}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !4077, file: !4024, line: 733, baseType: !4084, size: 64, offset: 64)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = !DISubroutineType(types: !4086)
!4086 = !{null, !4049}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !4077, file: !4024, line: 734, baseType: !4088, size: 64, offset: 128)
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4089 = !DISubroutineType(types: !4090)
!4090 = !{!209, !4049, !7, !196}
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4077, file: !4024, line: 735, baseType: !4092, size: 64, offset: 192)
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4093, size: 64)
!4093 = !DISubroutineType(types: !4094)
!4094 = !{!196, !4049, !7, !196, !196, !1453}
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4077, file: !4024, line: 736, baseType: !4096, size: 64, offset: 256)
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4097 = !DISubroutineType(types: !4098)
!4098 = !{!196, !4049, !7, !196, !196, !454}
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4050, file: !4024, line: 618, baseType: !4100, size: 64, offset: 1600)
!4100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4101, size: 64)
!4101 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !4024, line: 537, flags: DIFlagFwdDecl)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4050, file: !4024, line: 619, baseType: !209, size: 64, offset: 1664)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !4050, file: !4024, line: 620, baseType: !4104, size: 64, offset: 1728)
!4104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4105, size: 64)
!4105 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4106, line: 123, flags: DIFlagFwdDecl)
!4106 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4050, file: !4024, line: 622, baseType: !466, size: 8, offset: 1792)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4050, file: !4024, line: 623, baseType: !466, size: 8, offset: 1800)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !4050, file: !4024, line: 624, baseType: !466, size: 8, offset: 1808)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !4050, file: !4024, line: 625, baseType: !466, size: 8, offset: 1816)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4050, file: !4024, line: 630, baseType: !4112, size: 384, offset: 1824)
!4112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 384, elements: !168)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !4050, file: !4024, line: 632, baseType: !149, size: 16, offset: 2208)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !4050, file: !4024, line: 633, baseType: !4115, size: 16, offset: 2224)
!4115 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !4024, line: 237, baseType: !149)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !4050, file: !4024, line: 634, baseType: !254, size: 64, offset: 2240)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4050, file: !4024, line: 635, baseType: !255, size: 5568, offset: 2304)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !4050, file: !4024, line: 636, baseType: !381, size: 64, offset: 7872)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !4050, file: !4024, line: 637, baseType: !381, size: 64, offset: 7936)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !4050, file: !4024, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !4045, file: !4024, line: 312, baseType: !4049, size: 64, offset: 192)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4045, file: !4024, line: 314, baseType: !209, size: 64, offset: 256)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !4045, file: !4024, line: 315, baseType: !4104, size: 64, offset: 320)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4045, file: !4024, line: 316, baseType: !4125, size: 64, offset: 384)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !4024, line: 69, size: 832, elements: !4127)
!4127 = !{!4128, !4129, !4130, !4133, !4134}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4126, file: !4024, line: 70, baseType: !4049, size: 64)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4126, file: !4024, line: 71, baseType: !263, size: 128, offset: 64)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4126, file: !4024, line: 72, baseType: !4131, size: 64, offset: 192)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !4024, line: 72, flags: DIFlagFwdDecl)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4126, file: !4024, line: 73, baseType: !466, size: 8, offset: 256)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4126, file: !4024, line: 74, baseType: !258, size: 512, offset: 320)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !4045, file: !4024, line: 318, baseType: !7, size: 32, offset: 448)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4045, file: !4024, line: 319, baseType: !149, size: 16, offset: 480)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4045, file: !4024, line: 320, baseType: !149, size: 16, offset: 496)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4045, file: !4024, line: 321, baseType: !149, size: 16, offset: 512)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4045, file: !4024, line: 322, baseType: !149, size: 16, offset: 528)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4045, file: !4024, line: 323, baseType: !7, size: 32, offset: 544)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4045, file: !4024, line: 324, baseType: !1390, size: 8, offset: 576)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4045, file: !4024, line: 325, baseType: !1390, size: 8, offset: 584)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !4045, file: !4024, line: 330, baseType: !1390, size: 8, offset: 592)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !4045, file: !4024, line: 331, baseType: !1390, size: 8, offset: 600)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !4045, file: !4024, line: 332, baseType: !1390, size: 8, offset: 608)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !4045, file: !4024, line: 333, baseType: !1390, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !4045, file: !4024, line: 334, baseType: !1390, size: 8, offset: 624)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4045, file: !4024, line: 335, baseType: !1390, size: 8, offset: 632)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !4045, file: !4024, line: 336, baseType: !897, size: 16, offset: 640)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !4045, file: !4024, line: 337, baseType: !4151, size: 64, offset: 704)
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4045, file: !4024, line: 339, baseType: !4153, size: 64, offset: 768)
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4045, file: !4024, line: 340, baseType: !460, size: 64, offset: 832)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4045, file: !4024, line: 346, baseType: !3706, size: 128, offset: 896)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !4045, file: !4024, line: 348, baseType: !4157, size: 32, offset: 1024)
!4157 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !4024, line: 155, baseType: !196)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !4045, file: !4024, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !4045, file: !4024, line: 352, baseType: !1390, size: 8, offset: 1064)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !4045, file: !4024, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !4045, file: !4024, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !4045, file: !4024, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !4045, file: !4024, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !4045, file: !4024, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !4045, file: !4024, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !4045, file: !4024, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !4045, file: !4024, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !4045, file: !4024, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !4045, file: !4024, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !4045, file: !4024, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !4045, file: !4024, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !4045, file: !4024, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !4045, file: !4024, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !4045, file: !4024, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !4045, file: !4024, line: 376, baseType: !7, size: 32, offset: 1120)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !4045, file: !4024, line: 377, baseType: !7, size: 32, offset: 1152)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !4045, file: !4024, line: 380, baseType: !4178, size: 64, offset: 1216)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !4024, line: 303, flags: DIFlagFwdDecl)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !4045, file: !4024, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !4045, file: !4024, line: 383, baseType: !196, size: 32, offset: 1312)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !4045, file: !4024, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !4045, file: !4024, line: 387, baseType: !4184, size: 32, offset: 1376)
!4184 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !4024, line: 180, baseType: !7)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4045, file: !4024, line: 388, baseType: !255, size: 5568, offset: 1408)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !4045, file: !4024, line: 390, baseType: !196, size: 32, offset: 6976)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4045, file: !4024, line: 396, baseType: !7, size: 32, offset: 7008)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4045, file: !4024, line: 397, baseType: !4189, size: 8704, offset: 7040)
!4189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4061, size: 8704, elements: !4190)
!4190 = !{!4191}
!4191 = !DISubrange(count: 17)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4045, file: !4024, line: 399, baseType: !226, size: 8, offset: 15744)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !4045, file: !4024, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !4045, file: !4024, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !4045, file: !4024, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !4045, file: !4024, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !4045, file: !4024, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !4045, file: !4024, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !4045, file: !4024, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !4045, file: !4024, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !4045, file: !4024, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !4045, file: !4024, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !4045, file: !4024, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !4045, file: !4024, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !4045, file: !4024, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !4045, file: !4024, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !4045, file: !4024, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !4045, file: !4024, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !4045, file: !4024, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !4045, file: !4024, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !4045, file: !4024, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !4045, file: !4024, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !4045, file: !4024, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !4045, file: !4024, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !4045, file: !4024, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !4045, file: !4024, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !4045, file: !4024, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !4045, file: !4024, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !4045, file: !4024, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !4045, file: !4024, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !4045, file: !4024, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !4045, file: !4024, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !4045, file: !4024, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !4045, file: !4024, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !4045, file: !4024, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !4045, file: !4024, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !4045, file: !4024, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !4045, file: !4024, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !4045, file: !4024, line: 450, baseType: !4230, size: 16, offset: 15792)
!4230 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !4024, line: 206, baseType: !149)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !4045, file: !4024, line: 451, baseType: !785, size: 32, offset: 15808)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !4045, file: !4024, line: 453, baseType: !4233, size: 512, offset: 15840)
!4233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, size: 512, elements: !1773)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !4045, file: !4024, line: 454, baseType: !672, size: 64, offset: 16384)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !4045, file: !4024, line: 455, baseType: !381, size: 64, offset: 16448)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !4045, file: !4024, line: 456, baseType: !196, size: 32, offset: 16512)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !4045, file: !4024, line: 457, baseType: !4238, size: 1088, offset: 16576)
!4238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 1088, elements: !4190)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !4045, file: !4024, line: 458, baseType: !4238, size: 1088, offset: 17664)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !4045, file: !4024, line: 469, baseType: !367, size: 64, offset: 18752)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !4045, file: !4024, line: 471, baseType: !4242, size: 64, offset: 18816)
!4242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4243, size: 64)
!4243 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !4024, line: 304, flags: DIFlagFwdDecl)
!4244 = !DIDerivedType(tag: DW_TAG_member, scope: !4045, file: !4024, line: 478, baseType: !4245, size: 64, offset: 18880)
!4245 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4045, file: !4024, line: 478, size: 64, elements: !4246)
!4246 = !{!4247, !4250}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4245, file: !4024, line: 479, baseType: !4248, size: 64)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !4024, line: 305, flags: DIFlagFwdDecl)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4245, file: !4024, line: 480, baseType: !4044, size: 64)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !4045, file: !4024, line: 482, baseType: !897, size: 16, offset: 18944)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !4045, file: !4024, line: 483, baseType: !1390, size: 8, offset: 18960)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !4045, file: !4024, line: 497, baseType: !897, size: 16, offset: 18976)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !4045, file: !4024, line: 498, baseType: !2163, size: 64, offset: 19008)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !4045, file: !4024, line: 499, baseType: !361, size: 64, offset: 19072)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !4045, file: !4024, line: 500, baseType: !317, size: 64, offset: 19136)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !4045, file: !4024, line: 502, baseType: !147, size: 64, offset: 19200)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4023, file: !4024, line: 863, baseType: !4259, size: 64, offset: 320)
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4260 = !DISubroutineType(types: !4261)
!4261 = !{null, !4044}
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4023, file: !4024, line: 864, baseType: !4263, size: 64, offset: 384)
!4263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4264, size: 64)
!4264 = !DISubroutineType(types: !4265)
!4265 = !{!196, !4044, !3524}
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4023, file: !4024, line: 865, baseType: !4267, size: 64, offset: 448)
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4268, size: 64)
!4268 = !DISubroutineType(types: !4269)
!4269 = !{!196, !4044}
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4023, file: !4024, line: 866, baseType: !4259, size: 64, offset: 512)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4023, file: !4024, line: 867, baseType: !4272, size: 64, offset: 576)
!4272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4273, size: 64)
!4273 = !DISubroutineType(types: !4274)
!4274 = !{!196, !4044, !196}
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4023, file: !4024, line: 868, baseType: !4276, size: 64, offset: 640)
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4277, size: 64)
!4277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4278)
!4278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !4024, line: 795, size: 384, elements: !4279)
!4279 = !{!4280, !4285, !4289, !4290, !4291, !4292}
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4278, file: !4024, line: 797, baseType: !4281, size: 64)
!4281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4282, size: 64)
!4282 = !DISubroutineType(types: !4283)
!4283 = !{!4284, !4044, !4184}
!4284 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !4024, line: 772, baseType: !7)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4278, file: !4024, line: 801, baseType: !4286, size: 64, offset: 64)
!4286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4287, size: 64)
!4287 = !DISubroutineType(types: !4288)
!4288 = !{!4284, !4044}
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4278, file: !4024, line: 804, baseType: !4286, size: 64, offset: 128)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4278, file: !4024, line: 807, baseType: !4259, size: 64, offset: 192)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4278, file: !4024, line: 808, baseType: !4259, size: 64, offset: 256)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4278, file: !4024, line: 811, baseType: !4259, size: 64, offset: 320)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4023, file: !4024, line: 869, baseType: !367, size: 64, offset: 704)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4023, file: !4024, line: 870, baseType: !3482, size: 1152, offset: 768)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4023, file: !4024, line: 871, baseType: !4296, size: 128, offset: 1920)
!4296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !4024, line: 759, size: 128, elements: !4297)
!4297 = !{!4298, !4299}
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4296, file: !4024, line: 760, baseType: !276)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4296, file: !4024, line: 761, baseType: !263, size: 128)
!4300 = !DIGlobalVariableExpression(var: !4301, expr: !DIExpression())
!4301 = distinct !DIGlobalVariable(name: "pci9111_pci_table", scope: !2, file: !3, line: 730, type: !4302, isLocal: true, isDefinition: true)
!4302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4030, size: 512, elements: !1607)
!4303 = !{!"rsp"}
!4304 = !{i32 7, !"Dwarf Version", i32 4}
!4305 = !{i32 2, !"Debug Info Version", i32 3}
!4306 = !{i32 1, !"wchar_size", i32 2}
!4307 = !{i32 1, !"Code Model", i32 2}
!4308 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4309 = distinct !DISubprogram(name: "adl_pci9111_driver_init", scope: !3, file: !3, line: 743, type: !4310, scopeLine: 743, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!4310 = !DISubroutineType(types: !4311)
!4311 = !{!196}
!4312 = !DILocation(line: 743, column: 1, scope: !4309)
!4313 = distinct !DISubprogram(name: "adl_pci9111_driver_exit", scope: !3, file: !3, line: 743, type: !156, scopeLine: 743, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!4314 = !DILocation(line: 743, column: 1, scope: !4313)
!4315 = distinct !DISubprogram(name: "pci9111_detach", scope: !3, file: !3, line: 709, type: !3992, scopeLine: 710, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!4316 = !DILocalVariable(name: "dev", arg: 1, scope: !4315, file: !3, line: 709, type: !197)
!4317 = !DILocation(line: 709, column: 50, scope: !4315)
!4318 = !DILocation(line: 711, column: 6, scope: !4319)
!4319 = distinct !DILexicalBlock(scope: !4315, file: !3, line: 711, column: 6)
!4320 = !DILocation(line: 711, column: 11, scope: !4319)
!4321 = !DILocation(line: 711, column: 6, scope: !4315)
!4322 = !DILocation(line: 712, column: 17, scope: !4319)
!4323 = !DILocation(line: 712, column: 3, scope: !4319)
!4324 = !DILocation(line: 713, column: 20, scope: !4315)
!4325 = !DILocation(line: 713, column: 2, scope: !4315)
!4326 = !DILocation(line: 714, column: 1, scope: !4315)
!4327 = distinct !DISubprogram(name: "pci9111_auto_attach", scope: !3, file: !3, line: 624, type: !4012, scopeLine: 626, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!4328 = !DILocalVariable(name: "dev", arg: 1, scope: !4327, file: !3, line: 624, type: !197)
!4329 = !DILocation(line: 624, column: 54, scope: !4327)
!4330 = !DILocalVariable(name: "context_unused", arg: 2, scope: !4327, file: !3, line: 625, type: !147)
!4331 = !DILocation(line: 625, column: 25, scope: !4327)
!4332 = !DILocalVariable(name: "pcidev", scope: !4327, file: !3, line: 627, type: !4044)
!4333 = !DILocation(line: 627, column: 18, scope: !4327)
!4334 = !DILocation(line: 627, column: 45, scope: !4327)
!4335 = !DILocation(line: 627, column: 27, scope: !4327)
!4336 = !DILocalVariable(name: "dev_private", scope: !4327, file: !3, line: 628, type: !4337)
!4337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4338, size: 64)
!4338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci9111_private_data", file: !3, line: 107, size: 16576, elements: !4339)
!4339 = !{!4340, !4341, !4342, !4343, !4344}
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "lcr_io_base", scope: !4338, file: !3, line: 108, baseType: !147, size: 64)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "scan_delay", scope: !4338, file: !3, line: 110, baseType: !7, size: 32, offset: 64)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_counter", scope: !4338, file: !3, line: 111, baseType: !7, size: 32, offset: 96)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_num_samples", scope: !4338, file: !3, line: 112, baseType: !7, size: 32, offset: 128)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "ai_bounce_buffer", scope: !4338, file: !3, line: 114, baseType: !4345, size: 16384, offset: 160)
!4345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 16384, elements: !4346)
!4346 = !{!4347}
!4347 = !DISubrange(count: 1024)
!4348 = !DILocation(line: 628, column: 31, scope: !4327)
!4349 = !DILocalVariable(name: "s", scope: !4327, file: !3, line: 629, type: !233)
!4350 = !DILocation(line: 629, column: 27, scope: !4327)
!4351 = !DILocalVariable(name: "ret", scope: !4327, file: !3, line: 630, type: !196)
!4352 = !DILocation(line: 630, column: 6, scope: !4327)
!4353 = !DILocation(line: 632, column: 37, scope: !4327)
!4354 = !DILocation(line: 632, column: 16, scope: !4327)
!4355 = !DILocation(line: 632, column: 14, scope: !4327)
!4356 = !DILocation(line: 633, column: 7, scope: !4357)
!4357 = distinct !DILexicalBlock(scope: !4327, file: !3, line: 633, column: 6)
!4358 = !DILocation(line: 633, column: 6, scope: !4327)
!4359 = !DILocation(line: 634, column: 3, scope: !4357)
!4360 = !DILocation(line: 636, column: 26, scope: !4327)
!4361 = !DILocation(line: 636, column: 8, scope: !4327)
!4362 = !DILocation(line: 636, column: 6, scope: !4327)
!4363 = !DILocation(line: 637, column: 6, scope: !4364)
!4364 = distinct !DILexicalBlock(scope: !4327, file: !3, line: 637, column: 6)
!4365 = !DILocation(line: 637, column: 6, scope: !4327)
!4366 = !DILocation(line: 638, column: 10, scope: !4364)
!4367 = !DILocation(line: 638, column: 3, scope: !4364)
!4368 = !DILocation(line: 639, column: 29, scope: !4327)
!4369 = !DILocation(line: 639, column: 2, scope: !4327)
!4370 = !DILocation(line: 639, column: 15, scope: !4327)
!4371 = !DILocation(line: 639, column: 27, scope: !4327)
!4372 = !DILocation(line: 640, column: 16, scope: !4327)
!4373 = !DILocation(line: 640, column: 2, scope: !4327)
!4374 = !DILocation(line: 640, column: 7, scope: !4327)
!4375 = !DILocation(line: 640, column: 14, scope: !4327)
!4376 = !DILocation(line: 642, column: 16, scope: !4327)
!4377 = !DILocation(line: 642, column: 2, scope: !4327)
!4378 = !DILocation(line: 644, column: 6, scope: !4379)
!4379 = distinct !DILexicalBlock(scope: !4327, file: !3, line: 644, column: 6)
!4380 = !DILocation(line: 644, column: 14, scope: !4379)
!4381 = !DILocation(line: 644, column: 6, scope: !4327)
!4382 = !DILocation(line: 645, column: 21, scope: !4383)
!4383 = distinct !DILexicalBlock(scope: !4379, file: !3, line: 644, column: 19)
!4384 = !DILocation(line: 645, column: 29, scope: !4383)
!4385 = !DILocation(line: 646, column: 20, scope: !4383)
!4386 = !DILocation(line: 646, column: 25, scope: !4383)
!4387 = !DILocation(line: 646, column: 37, scope: !4383)
!4388 = !DILocation(line: 645, column: 9, scope: !4383)
!4389 = !DILocation(line: 645, column: 7, scope: !4383)
!4390 = !DILocation(line: 647, column: 7, scope: !4391)
!4391 = distinct !DILexicalBlock(scope: !4383, file: !3, line: 647, column: 7)
!4392 = !DILocation(line: 647, column: 11, scope: !4391)
!4393 = !DILocation(line: 647, column: 7, scope: !4383)
!4394 = !DILocation(line: 648, column: 15, scope: !4391)
!4395 = !DILocation(line: 648, column: 23, scope: !4391)
!4396 = !DILocation(line: 648, column: 4, scope: !4391)
!4397 = !DILocation(line: 648, column: 9, scope: !4391)
!4398 = !DILocation(line: 648, column: 13, scope: !4391)
!4399 = !DILocation(line: 649, column: 2, scope: !4383)
!4400 = !DILocation(line: 651, column: 32, scope: !4327)
!4401 = !DILocation(line: 651, column: 37, scope: !4327)
!4402 = !DILocation(line: 651, column: 44, scope: !4327)
!4403 = !DILocation(line: 651, column: 15, scope: !4327)
!4404 = !DILocation(line: 651, column: 2, scope: !4327)
!4405 = !DILocation(line: 651, column: 7, scope: !4327)
!4406 = !DILocation(line: 651, column: 13, scope: !4327)
!4407 = !DILocation(line: 653, column: 7, scope: !4408)
!4408 = distinct !DILexicalBlock(scope: !4327, file: !3, line: 653, column: 6)
!4409 = !DILocation(line: 653, column: 12, scope: !4408)
!4410 = !DILocation(line: 653, column: 6, scope: !4327)
!4411 = !DILocation(line: 654, column: 3, scope: !4408)
!4412 = !DILocation(line: 656, column: 32, scope: !4327)
!4413 = !DILocation(line: 656, column: 8, scope: !4327)
!4414 = !DILocation(line: 656, column: 6, scope: !4327)
!4415 = !DILocation(line: 657, column: 6, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !4327, file: !3, line: 657, column: 6)
!4417 = !DILocation(line: 657, column: 6, scope: !4327)
!4418 = !DILocation(line: 658, column: 10, scope: !4416)
!4419 = !DILocation(line: 658, column: 3, scope: !4416)
!4420 = !DILocation(line: 660, column: 7, scope: !4327)
!4421 = !DILocation(line: 660, column: 12, scope: !4327)
!4422 = !DILocation(line: 660, column: 4, scope: !4327)
!4423 = !DILocation(line: 661, column: 2, scope: !4327)
!4424 = !DILocation(line: 661, column: 5, scope: !4327)
!4425 = !DILocation(line: 661, column: 11, scope: !4327)
!4426 = !DILocation(line: 662, column: 2, scope: !4327)
!4427 = !DILocation(line: 662, column: 5, scope: !4327)
!4428 = !DILocation(line: 662, column: 18, scope: !4327)
!4429 = !DILocation(line: 663, column: 2, scope: !4327)
!4430 = !DILocation(line: 663, column: 5, scope: !4327)
!4431 = !DILocation(line: 663, column: 12, scope: !4327)
!4432 = !DILocation(line: 664, column: 2, scope: !4327)
!4433 = !DILocation(line: 664, column: 5, scope: !4327)
!4434 = !DILocation(line: 664, column: 13, scope: !4327)
!4435 = !DILocation(line: 665, column: 2, scope: !4327)
!4436 = !DILocation(line: 665, column: 5, scope: !4327)
!4437 = !DILocation(line: 665, column: 17, scope: !4327)
!4438 = !DILocation(line: 666, column: 2, scope: !4327)
!4439 = !DILocation(line: 666, column: 5, scope: !4327)
!4440 = !DILocation(line: 666, column: 15, scope: !4327)
!4441 = !DILocation(line: 667, column: 6, scope: !4442)
!4442 = distinct !DILexicalBlock(scope: !4327, file: !3, line: 667, column: 6)
!4443 = !DILocation(line: 667, column: 11, scope: !4442)
!4444 = !DILocation(line: 667, column: 6, scope: !4327)
!4445 = !DILocation(line: 668, column: 22, scope: !4446)
!4446 = distinct !DILexicalBlock(scope: !4442, file: !3, line: 667, column: 16)
!4447 = !DILocation(line: 668, column: 3, scope: !4446)
!4448 = !DILocation(line: 668, column: 8, scope: !4446)
!4449 = !DILocation(line: 668, column: 20, scope: !4446)
!4450 = !DILocation(line: 669, column: 3, scope: !4446)
!4451 = !DILocation(line: 669, column: 6, scope: !4446)
!4452 = !DILocation(line: 669, column: 19, scope: !4446)
!4453 = !DILocation(line: 670, column: 21, scope: !4446)
!4454 = !DILocation(line: 670, column: 24, scope: !4446)
!4455 = !DILocation(line: 670, column: 3, scope: !4446)
!4456 = !DILocation(line: 670, column: 6, scope: !4446)
!4457 = !DILocation(line: 670, column: 19, scope: !4446)
!4458 = !DILocation(line: 671, column: 3, scope: !4446)
!4459 = !DILocation(line: 671, column: 6, scope: !4446)
!4460 = !DILocation(line: 671, column: 17, scope: !4446)
!4461 = !DILocation(line: 672, column: 3, scope: !4446)
!4462 = !DILocation(line: 672, column: 6, scope: !4446)
!4463 = !DILocation(line: 672, column: 13, scope: !4446)
!4464 = !DILocation(line: 673, column: 3, scope: !4446)
!4465 = !DILocation(line: 673, column: 6, scope: !4446)
!4466 = !DILocation(line: 673, column: 13, scope: !4446)
!4467 = !DILocation(line: 674, column: 3, scope: !4446)
!4468 = !DILocation(line: 674, column: 6, scope: !4446)
!4469 = !DILocation(line: 674, column: 12, scope: !4446)
!4470 = !DILocation(line: 675, column: 2, scope: !4446)
!4471 = !DILocation(line: 677, column: 7, scope: !4327)
!4472 = !DILocation(line: 677, column: 12, scope: !4327)
!4473 = !DILocation(line: 677, column: 4, scope: !4327)
!4474 = !DILocation(line: 678, column: 2, scope: !4327)
!4475 = !DILocation(line: 678, column: 5, scope: !4327)
!4476 = !DILocation(line: 678, column: 11, scope: !4327)
!4477 = !DILocation(line: 679, column: 2, scope: !4327)
!4478 = !DILocation(line: 679, column: 5, scope: !4327)
!4479 = !DILocation(line: 679, column: 18, scope: !4327)
!4480 = !DILocation(line: 680, column: 2, scope: !4327)
!4481 = !DILocation(line: 680, column: 5, scope: !4327)
!4482 = !DILocation(line: 680, column: 12, scope: !4327)
!4483 = !DILocation(line: 681, column: 2, scope: !4327)
!4484 = !DILocation(line: 681, column: 5, scope: !4327)
!4485 = !DILocation(line: 681, column: 13, scope: !4327)
!4486 = !DILocation(line: 682, column: 2, scope: !4327)
!4487 = !DILocation(line: 682, column: 5, scope: !4327)
!4488 = !DILocation(line: 682, column: 18, scope: !4327)
!4489 = !DILocation(line: 683, column: 2, scope: !4327)
!4490 = !DILocation(line: 683, column: 5, scope: !4327)
!4491 = !DILocation(line: 683, column: 17, scope: !4327)
!4492 = !DILocation(line: 684, column: 2, scope: !4327)
!4493 = !DILocation(line: 684, column: 5, scope: !4327)
!4494 = !DILocation(line: 684, column: 16, scope: !4327)
!4495 = !DILocation(line: 686, column: 37, scope: !4327)
!4496 = !DILocation(line: 686, column: 8, scope: !4327)
!4497 = !DILocation(line: 686, column: 6, scope: !4327)
!4498 = !DILocation(line: 687, column: 6, scope: !4499)
!4499 = distinct !DILexicalBlock(scope: !4327, file: !3, line: 687, column: 6)
!4500 = !DILocation(line: 687, column: 6, scope: !4327)
!4501 = !DILocation(line: 688, column: 10, scope: !4499)
!4502 = !DILocation(line: 688, column: 3, scope: !4499)
!4503 = !DILocation(line: 690, column: 7, scope: !4327)
!4504 = !DILocation(line: 690, column: 12, scope: !4327)
!4505 = !DILocation(line: 690, column: 4, scope: !4327)
!4506 = !DILocation(line: 691, column: 2, scope: !4327)
!4507 = !DILocation(line: 691, column: 5, scope: !4327)
!4508 = !DILocation(line: 691, column: 11, scope: !4327)
!4509 = !DILocation(line: 692, column: 2, scope: !4327)
!4510 = !DILocation(line: 692, column: 5, scope: !4327)
!4511 = !DILocation(line: 692, column: 18, scope: !4327)
!4512 = !DILocation(line: 693, column: 2, scope: !4327)
!4513 = !DILocation(line: 693, column: 5, scope: !4327)
!4514 = !DILocation(line: 693, column: 12, scope: !4327)
!4515 = !DILocation(line: 694, column: 2, scope: !4327)
!4516 = !DILocation(line: 694, column: 5, scope: !4327)
!4517 = !DILocation(line: 694, column: 13, scope: !4327)
!4518 = !DILocation(line: 695, column: 2, scope: !4327)
!4519 = !DILocation(line: 695, column: 5, scope: !4327)
!4520 = !DILocation(line: 695, column: 17, scope: !4327)
!4521 = !DILocation(line: 696, column: 2, scope: !4327)
!4522 = !DILocation(line: 696, column: 5, scope: !4327)
!4523 = !DILocation(line: 696, column: 15, scope: !4327)
!4524 = !DILocation(line: 698, column: 7, scope: !4327)
!4525 = !DILocation(line: 698, column: 12, scope: !4327)
!4526 = !DILocation(line: 698, column: 4, scope: !4327)
!4527 = !DILocation(line: 699, column: 2, scope: !4327)
!4528 = !DILocation(line: 699, column: 5, scope: !4327)
!4529 = !DILocation(line: 699, column: 11, scope: !4327)
!4530 = !DILocation(line: 700, column: 2, scope: !4327)
!4531 = !DILocation(line: 700, column: 5, scope: !4327)
!4532 = !DILocation(line: 700, column: 18, scope: !4327)
!4533 = !DILocation(line: 701, column: 2, scope: !4327)
!4534 = !DILocation(line: 701, column: 5, scope: !4327)
!4535 = !DILocation(line: 701, column: 12, scope: !4327)
!4536 = !DILocation(line: 702, column: 2, scope: !4327)
!4537 = !DILocation(line: 702, column: 5, scope: !4327)
!4538 = !DILocation(line: 702, column: 13, scope: !4327)
!4539 = !DILocation(line: 703, column: 2, scope: !4327)
!4540 = !DILocation(line: 703, column: 5, scope: !4327)
!4541 = !DILocation(line: 703, column: 17, scope: !4327)
!4542 = !DILocation(line: 704, column: 2, scope: !4327)
!4543 = !DILocation(line: 704, column: 5, scope: !4327)
!4544 = !DILocation(line: 704, column: 15, scope: !4327)
!4545 = !DILocation(line: 706, column: 2, scope: !4327)
!4546 = !DILocation(line: 707, column: 1, scope: !4327)
!4547 = distinct !DISubprogram(name: "pci9111_reset", scope: !3, file: !3, line: 610, type: !3988, scopeLine: 611, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!4548 = !DILocalVariable(name: "dev", arg: 1, scope: !4547, file: !3, line: 610, type: !197)
!4549 = !DILocation(line: 610, column: 48, scope: !4547)
!4550 = !DILocalVariable(name: "dev_private", scope: !4547, file: !3, line: 612, type: !4337)
!4551 = !DILocation(line: 612, column: 31, scope: !4547)
!4552 = !DILocation(line: 612, column: 45, scope: !4547)
!4553 = !DILocation(line: 612, column: 50, scope: !4547)
!4554 = !DILocation(line: 615, column: 28, scope: !4547)
!4555 = !DILocation(line: 615, column: 41, scope: !4547)
!4556 = !DILocation(line: 615, column: 2, scope: !4547)
!4557 = !DILocation(line: 619, column: 10, scope: !4547)
!4558 = !DILocation(line: 619, column: 15, scope: !4547)
!4559 = !DILocation(line: 619, column: 22, scope: !4547)
!4560 = !DILocation(line: 619, column: 2, scope: !4547)
!4561 = !DILocation(line: 621, column: 2, scope: !4547)
!4562 = distinct !DISubprogram(name: "plx9050_interrupt_control", scope: !3, file: !3, line: 117, type: !4563, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!4563 = !DISubroutineType(types: !4564)
!4564 = !{null, !147, !226, !226, !226, !226, !226}
!4565 = !DILocalVariable(name: "io_base", arg: 1, scope: !4562, file: !3, line: 117, type: !147)
!4566 = !DILocation(line: 117, column: 53, scope: !4562)
!4567 = !DILocalVariable(name: "int1_enable", arg: 2, scope: !4562, file: !3, line: 118, type: !226)
!4568 = !DILocation(line: 118, column: 16, scope: !4562)
!4569 = !DILocalVariable(name: "int1_active_high", arg: 3, scope: !4562, file: !3, line: 119, type: !226)
!4570 = !DILocation(line: 119, column: 16, scope: !4562)
!4571 = !DILocalVariable(name: "int2_enable", arg: 4, scope: !4562, file: !3, line: 120, type: !226)
!4572 = !DILocation(line: 120, column: 16, scope: !4562)
!4573 = !DILocalVariable(name: "int2_active_high", arg: 5, scope: !4562, file: !3, line: 121, type: !226)
!4574 = !DILocation(line: 121, column: 16, scope: !4562)
!4575 = !DILocalVariable(name: "interrupt_enable", arg: 6, scope: !4562, file: !3, line: 122, type: !226)
!4576 = !DILocation(line: 122, column: 16, scope: !4562)
!4577 = !DILocalVariable(name: "flags", scope: !4562, file: !3, line: 124, type: !196)
!4578 = !DILocation(line: 124, column: 6, scope: !4562)
!4579 = !DILocation(line: 126, column: 6, scope: !4580)
!4580 = distinct !DILexicalBlock(scope: !4562, file: !3, line: 126, column: 6)
!4581 = !DILocation(line: 126, column: 6, scope: !4562)
!4582 = !DILocation(line: 127, column: 9, scope: !4580)
!4583 = !DILocation(line: 127, column: 3, scope: !4580)
!4584 = !DILocation(line: 128, column: 6, scope: !4585)
!4585 = distinct !DILexicalBlock(scope: !4562, file: !3, line: 128, column: 6)
!4586 = !DILocation(line: 128, column: 6, scope: !4562)
!4587 = !DILocation(line: 129, column: 9, scope: !4585)
!4588 = !DILocation(line: 129, column: 3, scope: !4585)
!4589 = !DILocation(line: 130, column: 6, scope: !4590)
!4590 = distinct !DILexicalBlock(scope: !4562, file: !3, line: 130, column: 6)
!4591 = !DILocation(line: 130, column: 6, scope: !4562)
!4592 = !DILocation(line: 131, column: 9, scope: !4590)
!4593 = !DILocation(line: 131, column: 3, scope: !4590)
!4594 = !DILocation(line: 132, column: 6, scope: !4595)
!4595 = distinct !DILexicalBlock(scope: !4562, file: !3, line: 132, column: 6)
!4596 = !DILocation(line: 132, column: 6, scope: !4562)
!4597 = !DILocation(line: 133, column: 9, scope: !4595)
!4598 = !DILocation(line: 133, column: 3, scope: !4595)
!4599 = !DILocation(line: 135, column: 6, scope: !4600)
!4600 = distinct !DILexicalBlock(scope: !4562, file: !3, line: 135, column: 6)
!4601 = !DILocation(line: 135, column: 6, scope: !4562)
!4602 = !DILocation(line: 136, column: 9, scope: !4600)
!4603 = !DILocation(line: 136, column: 3, scope: !4600)
!4604 = !DILocation(line: 138, column: 7, scope: !4562)
!4605 = !DILocation(line: 138, column: 14, scope: !4562)
!4606 = !DILocation(line: 138, column: 22, scope: !4562)
!4607 = !DILocation(line: 138, column: 2, scope: !4562)
!4608 = !DILocation(line: 139, column: 1, scope: !4562)
!4609 = distinct !DISubprogram(name: "outb", scope: !4610, file: !4610, line: 334, type: !4611, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!4610 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!4611 = !DISubroutineType(types: !4612)
!4612 = !{null, !466, !196}
!4613 = !DILocalVariable(name: "value", arg: 1, scope: !4609, file: !4610, line: 334, type: !466)
!4614 = !DILocation(line: 334, column: 1, scope: !4609)
!4615 = !DILocalVariable(name: "port", arg: 2, scope: !4609, file: !4610, line: 334, type: !196)
!4616 = !{i32 -2143397998}
!4617 = distinct !DISubprogram(name: "request_irq", scope: !4106, file: !4106, line: 157, type: !4618, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!4618 = !DISubroutineType(types: !4619)
!4619 = !{!196, !7, !4620, !147, !187, !209}
!4620 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !4106, line: 92, baseType: !4621)
!4621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4622, size: 64)
!4622 = !DISubroutineType(types: !4623)
!4623 = !{!4624, !196, !209}
!4624 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !122, line: 17, baseType: !121)
!4625 = !DILocalVariable(name: "irq", arg: 1, scope: !4617, file: !4106, line: 157, type: !7)
!4626 = !DILocation(line: 157, column: 26, scope: !4617)
!4627 = !DILocalVariable(name: "handler", arg: 2, scope: !4617, file: !4106, line: 157, type: !4620)
!4628 = !DILocation(line: 157, column: 45, scope: !4617)
!4629 = !DILocalVariable(name: "flags", arg: 3, scope: !4617, file: !4106, line: 157, type: !147)
!4630 = !DILocation(line: 157, column: 68, scope: !4617)
!4631 = !DILocalVariable(name: "name", arg: 4, scope: !4617, file: !4106, line: 158, type: !187)
!4632 = !DILocation(line: 158, column: 18, scope: !4617)
!4633 = !DILocalVariable(name: "dev", arg: 5, scope: !4617, file: !4106, line: 158, type: !209)
!4634 = !DILocation(line: 158, column: 30, scope: !4617)
!4635 = !DILocation(line: 160, column: 30, scope: !4617)
!4636 = !DILocation(line: 160, column: 35, scope: !4617)
!4637 = !DILocation(line: 160, column: 50, scope: !4617)
!4638 = !DILocation(line: 160, column: 57, scope: !4617)
!4639 = !DILocation(line: 160, column: 63, scope: !4617)
!4640 = !DILocation(line: 160, column: 9, scope: !4617)
!4641 = !DILocation(line: 160, column: 2, scope: !4617)
!4642 = distinct !DISubprogram(name: "pci9111_interrupt", scope: !3, file: !3, line: 450, type: !4622, scopeLine: 451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!4643 = !DILocalVariable(name: "lock", arg: 1, scope: !4644, file: !4645, line: 407, type: !1102)
!4644 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !4645, file: !4645, line: 407, type: !4646, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!4645 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!4646 = !DISubroutineType(types: !4647)
!4647 = !{null, !1102, !147}
!4648 = !DILocation(line: 407, column: 64, scope: !4644, inlinedAt: !4649)
!4649 = distinct !DILocation(line: 490, column: 4, scope: !4650)
!4650 = distinct !DILexicalBlock(scope: !4651, file: !3, line: 489, column: 42)
!4651 = distinct !DILexicalBlock(scope: !4652, file: !3, line: 489, column: 7)
!4652 = distinct !DILexicalBlock(scope: !4653, file: !3, line: 483, column: 59)
!4653 = distinct !DILexicalBlock(scope: !4642, file: !3, line: 483, column: 6)
!4654 = !DILocalVariable(name: "flags", arg: 2, scope: !4644, file: !4645, line: 407, type: !147)
!4655 = !DILocation(line: 407, column: 84, scope: !4644, inlinedAt: !4649)
!4656 = !DILocation(line: 407, column: 64, scope: !4644, inlinedAt: !4657)
!4657 = distinct !DILocation(line: 479, column: 3, scope: !4658)
!4658 = distinct !DILexicalBlock(scope: !4659, file: !3, line: 476, column: 66)
!4659 = distinct !DILexicalBlock(scope: !4642, file: !3, line: 474, column: 6)
!4660 = !DILocation(line: 407, column: 84, scope: !4644, inlinedAt: !4657)
!4661 = !DILocation(line: 407, column: 64, scope: !4644, inlinedAt: !4662)
!4662 = distinct !DILocation(line: 509, column: 2, scope: !4642)
!4663 = !DILocation(line: 407, column: 84, scope: !4644, inlinedAt: !4662)
!4664 = !DILocalVariable(name: "lock", arg: 1, scope: !4665, file: !4645, line: 327, type: !1102)
!4665 = distinct !DISubprogram(name: "spinlock_check", scope: !4645, file: !4645, line: 327, type: !4666, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!4666 = !DISubroutineType(types: !4667)
!4667 = !{!4668, !1102}
!4668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!4669 = !DILocation(line: 327, column: 67, scope: !4665, inlinedAt: !4670)
!4670 = distinct !DILocation(line: 470, column: 2, scope: !4671)
!4671 = distinct !DILexicalBlock(scope: !4672, file: !3, line: 470, column: 2)
!4672 = distinct !DILexicalBlock(scope: !4673, file: !3, line: 470, column: 2)
!4673 = distinct !DILexicalBlock(scope: !4674, file: !3, line: 470, column: 2)
!4674 = distinct !DILexicalBlock(scope: !4675, file: !3, line: 470, column: 2)
!4675 = distinct !DILexicalBlock(scope: !4642, file: !3, line: 470, column: 2)
!4676 = !DILocalVariable(name: "irq", arg: 1, scope: !4642, file: !3, line: 450, type: !196)
!4677 = !DILocation(line: 450, column: 42, scope: !4642)
!4678 = !DILocalVariable(name: "p_device", arg: 2, scope: !4642, file: !3, line: 450, type: !209)
!4679 = !DILocation(line: 450, column: 53, scope: !4642)
!4680 = !DILocalVariable(name: "dev", scope: !4642, file: !3, line: 452, type: !197)
!4681 = !DILocation(line: 452, column: 24, scope: !4642)
!4682 = !DILocation(line: 452, column: 30, scope: !4642)
!4683 = !DILocalVariable(name: "dev_private", scope: !4642, file: !3, line: 453, type: !4337)
!4684 = !DILocation(line: 453, column: 31, scope: !4642)
!4685 = !DILocation(line: 453, column: 45, scope: !4642)
!4686 = !DILocation(line: 453, column: 50, scope: !4642)
!4687 = !DILocalVariable(name: "s", scope: !4642, file: !3, line: 454, type: !233)
!4688 = !DILocation(line: 454, column: 27, scope: !4642)
!4689 = !DILocation(line: 454, column: 31, scope: !4642)
!4690 = !DILocation(line: 454, column: 36, scope: !4642)
!4691 = !DILocalVariable(name: "async", scope: !4642, file: !3, line: 455, type: !244)
!4692 = !DILocation(line: 455, column: 23, scope: !4642)
!4693 = !DILocalVariable(name: "cmd", scope: !4642, file: !3, line: 456, type: !3942)
!4694 = !DILocation(line: 456, column: 21, scope: !4642)
!4695 = !DILocalVariable(name: "status", scope: !4642, file: !3, line: 457, type: !7)
!4696 = !DILocation(line: 457, column: 15, scope: !4642)
!4697 = !DILocalVariable(name: "irq_flags", scope: !4642, file: !3, line: 458, type: !147)
!4698 = !DILocation(line: 458, column: 16, scope: !4642)
!4699 = !DILocalVariable(name: "intcsr", scope: !4642, file: !3, line: 459, type: !466)
!4700 = !DILocation(line: 459, column: 16, scope: !4642)
!4701 = !DILocation(line: 461, column: 7, scope: !4702)
!4702 = distinct !DILexicalBlock(scope: !4642, file: !3, line: 461, column: 6)
!4703 = !DILocation(line: 461, column: 12, scope: !4702)
!4704 = !DILocation(line: 461, column: 6, scope: !4642)
!4705 = !DILocation(line: 464, column: 3, scope: !4706)
!4706 = distinct !DILexicalBlock(scope: !4702, file: !3, line: 461, column: 22)
!4707 = !DILocation(line: 467, column: 10, scope: !4642)
!4708 = !DILocation(line: 467, column: 13, scope: !4642)
!4709 = !DILocation(line: 467, column: 8, scope: !4642)
!4710 = !DILocation(line: 468, column: 9, scope: !4642)
!4711 = !DILocation(line: 468, column: 16, scope: !4642)
!4712 = !DILocation(line: 468, column: 6, scope: !4642)
!4713 = !DILocation(line: 470, column: 2, scope: !4642)
!4714 = !DILocation(line: 470, column: 2, scope: !4675)
!4715 = !DILocalVariable(name: "__dummy", scope: !4716, file: !3, line: 470, type: !147)
!4716 = distinct !DILexicalBlock(scope: !4674, file: !3, line: 470, column: 2)
!4717 = !DILocation(line: 470, column: 2, scope: !4716)
!4718 = !DILocalVariable(name: "__dummy2", scope: !4716, file: !3, line: 470, type: !147)
!4719 = !DILocation(line: 470, column: 2, scope: !4674)
!4720 = !DILocation(line: 470, column: 2, scope: !4673)
!4721 = !DILocation(line: 470, column: 2, scope: !4722)
!4722 = distinct !DILexicalBlock(scope: !4673, file: !3, line: 470, column: 2)
!4723 = !DILocalVariable(name: "__dummy", scope: !4724, file: !3, line: 470, type: !147)
!4724 = distinct !DILexicalBlock(scope: !4725, file: !3, line: 470, column: 2)
!4725 = distinct !DILexicalBlock(scope: !4722, file: !3, line: 470, column: 2)
!4726 = !DILocation(line: 470, column: 2, scope: !4724)
!4727 = !DILocalVariable(name: "__dummy2", scope: !4724, file: !3, line: 470, type: !147)
!4728 = !DILocation(line: 470, column: 2, scope: !4725)
!4729 = !DILocation(line: 470, column: 2, scope: !4672)
!4730 = !{i32 -2141615050}
!4731 = !DILocation(line: 470, column: 2, scope: !4671)
!4732 = !DILocation(line: 329, column: 10, scope: !4665, inlinedAt: !4670)
!4733 = !DILocation(line: 329, column: 16, scope: !4665, inlinedAt: !4670)
!4734 = !DILocation(line: 473, column: 15, scope: !4642)
!4735 = !DILocation(line: 473, column: 28, scope: !4642)
!4736 = !DILocation(line: 473, column: 40, scope: !4642)
!4737 = !DILocation(line: 473, column: 11, scope: !4642)
!4738 = !DILocation(line: 473, column: 9, scope: !4642)
!4739 = !DILocation(line: 474, column: 10, scope: !4659)
!4740 = !DILocation(line: 474, column: 17, scope: !4659)
!4741 = !DILocation(line: 474, column: 43, scope: !4659)
!4742 = !DILocation(line: 474, column: 49, scope: !4659)
!4743 = !DILocation(line: 475, column: 11, scope: !4659)
!4744 = !DILocation(line: 475, column: 18, scope: !4659)
!4745 = !DILocation(line: 475, column: 40, scope: !4659)
!4746 = !DILocation(line: 475, column: 63, scope: !4659)
!4747 = !DILocation(line: 476, column: 11, scope: !4659)
!4748 = !DILocation(line: 476, column: 18, scope: !4659)
!4749 = !DILocation(line: 476, column: 40, scope: !4659)
!4750 = !DILocation(line: 474, column: 6, scope: !4642)
!4751 = !DILocation(line: 479, column: 27, scope: !4658)
!4752 = !DILocation(line: 479, column: 32, scope: !4658)
!4753 = !DILocation(line: 479, column: 42, scope: !4658)
!4754 = !DILocalVariable(name: "__dummy", scope: !4755, file: !4645, line: 409, type: !147)
!4755 = distinct !DILexicalBlock(scope: !4756, file: !4645, line: 409, column: 2)
!4756 = distinct !DILexicalBlock(scope: !4644, file: !4645, line: 409, column: 2)
!4757 = !DILocation(line: 409, column: 2, scope: !4755, inlinedAt: !4657)
!4758 = !DILocalVariable(name: "__dummy2", scope: !4755, file: !4645, line: 409, type: !147)
!4759 = !DILocalVariable(name: "__dummy", scope: !4760, file: !4645, line: 409, type: !147)
!4760 = distinct !DILexicalBlock(scope: !4761, file: !4645, line: 409, column: 2)
!4761 = distinct !DILexicalBlock(scope: !4762, file: !4645, line: 409, column: 2)
!4762 = distinct !DILexicalBlock(scope: !4763, file: !4645, line: 409, column: 2)
!4763 = distinct !DILexicalBlock(scope: !4756, file: !4645, line: 409, column: 2)
!4764 = !DILocation(line: 409, column: 2, scope: !4760, inlinedAt: !4657)
!4765 = !DILocalVariable(name: "__dummy2", scope: !4760, file: !4645, line: 409, type: !147)
!4766 = !DILocation(line: 409, column: 2, scope: !4761, inlinedAt: !4657)
!4767 = !DILocation(line: 409, column: 2, scope: !4768, inlinedAt: !4657)
!4768 = distinct !DILexicalBlock(scope: !4763, file: !4645, line: 409, column: 2)
!4769 = !{i32 -2145457821}
!4770 = !DILocation(line: 409, column: 2, scope: !4771, inlinedAt: !4657)
!4771 = distinct !DILexicalBlock(scope: !4768, file: !4645, line: 409, column: 2)
!4772 = !DILocation(line: 480, column: 3, scope: !4658)
!4773 = !DILocation(line: 483, column: 7, scope: !4653)
!4774 = !DILocation(line: 483, column: 14, scope: !4653)
!4775 = !DILocation(line: 483, column: 36, scope: !4653)
!4776 = !DILocation(line: 483, column: 6, scope: !4642)
!4777 = !DILocation(line: 486, column: 16, scope: !4652)
!4778 = !DILocation(line: 486, column: 21, scope: !4652)
!4779 = !DILocation(line: 486, column: 28, scope: !4652)
!4780 = !DILocation(line: 486, column: 12, scope: !4652)
!4781 = !DILocation(line: 486, column: 10, scope: !4652)
!4782 = !DILocation(line: 489, column: 9, scope: !4651)
!4783 = !DILocation(line: 489, column: 16, scope: !4651)
!4784 = !DILocation(line: 489, column: 7, scope: !4652)
!4785 = !DILocation(line: 490, column: 28, scope: !4650)
!4786 = !DILocation(line: 490, column: 33, scope: !4650)
!4787 = !DILocation(line: 490, column: 43, scope: !4650)
!4788 = !DILocation(line: 409, column: 2, scope: !4755, inlinedAt: !4649)
!4789 = !DILocation(line: 409, column: 2, scope: !4760, inlinedAt: !4649)
!4790 = !DILocation(line: 409, column: 2, scope: !4761, inlinedAt: !4649)
!4791 = !DILocation(line: 409, column: 2, scope: !4768, inlinedAt: !4649)
!4792 = !DILocation(line: 409, column: 2, scope: !4771, inlinedAt: !4649)
!4793 = !DILocation(line: 492, column: 12, scope: !4650)
!4794 = !DILocation(line: 492, column: 17, scope: !4650)
!4795 = !DILocation(line: 492, column: 24, scope: !4650)
!4796 = !DILocation(line: 492, column: 4, scope: !4650)
!4797 = !DILocation(line: 493, column: 4, scope: !4650)
!4798 = !DILocation(line: 493, column: 11, scope: !4650)
!4799 = !DILocation(line: 493, column: 18, scope: !4650)
!4800 = !DILocation(line: 494, column: 25, scope: !4650)
!4801 = !DILocation(line: 494, column: 30, scope: !4650)
!4802 = !DILocation(line: 494, column: 4, scope: !4650)
!4803 = !DILocation(line: 496, column: 4, scope: !4650)
!4804 = !DILocation(line: 500, column: 9, scope: !4805)
!4805 = distinct !DILexicalBlock(scope: !4652, file: !3, line: 500, column: 7)
!4806 = !DILocation(line: 500, column: 16, scope: !4805)
!4807 = !DILocation(line: 500, column: 7, scope: !4652)
!4808 = !DILocation(line: 501, column: 34, scope: !4805)
!4809 = !DILocation(line: 501, column: 39, scope: !4805)
!4810 = !DILocation(line: 501, column: 4, scope: !4805)
!4811 = !DILocation(line: 502, column: 2, scope: !4652)
!4812 = !DILocation(line: 504, column: 6, scope: !4813)
!4813 = distinct !DILexicalBlock(scope: !4642, file: !3, line: 504, column: 6)
!4814 = !DILocation(line: 504, column: 11, scope: !4813)
!4815 = !DILocation(line: 504, column: 20, scope: !4813)
!4816 = !DILocation(line: 504, column: 34, scope: !4813)
!4817 = !DILocation(line: 504, column: 37, scope: !4813)
!4818 = !DILocation(line: 504, column: 44, scope: !4813)
!4819 = !DILocation(line: 504, column: 58, scope: !4813)
!4820 = !DILocation(line: 504, column: 63, scope: !4813)
!4821 = !DILocation(line: 504, column: 55, scope: !4813)
!4822 = !DILocation(line: 504, column: 6, scope: !4642)
!4823 = !DILocation(line: 505, column: 3, scope: !4813)
!4824 = !DILocation(line: 505, column: 10, scope: !4813)
!4825 = !DILocation(line: 505, column: 17, scope: !4813)
!4826 = !DILocation(line: 507, column: 10, scope: !4642)
!4827 = !DILocation(line: 507, column: 15, scope: !4642)
!4828 = !DILocation(line: 507, column: 22, scope: !4642)
!4829 = !DILocation(line: 507, column: 2, scope: !4642)
!4830 = !DILocation(line: 509, column: 26, scope: !4642)
!4831 = !DILocation(line: 509, column: 31, scope: !4642)
!4832 = !DILocation(line: 509, column: 41, scope: !4642)
!4833 = !DILocation(line: 409, column: 2, scope: !4755, inlinedAt: !4662)
!4834 = !DILocation(line: 409, column: 2, scope: !4760, inlinedAt: !4662)
!4835 = !DILocation(line: 409, column: 2, scope: !4761, inlinedAt: !4662)
!4836 = !DILocation(line: 409, column: 2, scope: !4768, inlinedAt: !4662)
!4837 = !DILocation(line: 409, column: 2, scope: !4771, inlinedAt: !4662)
!4838 = !DILocation(line: 511, column: 23, scope: !4642)
!4839 = !DILocation(line: 511, column: 28, scope: !4642)
!4840 = !DILocation(line: 511, column: 2, scope: !4642)
!4841 = !DILocation(line: 513, column: 2, scope: !4642)
!4842 = !DILocation(line: 514, column: 1, scope: !4642)
!4843 = distinct !DISubprogram(name: "pci9111_ai_insn_read", scope: !3, file: !3, line: 529, type: !231, scopeLine: 532, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!4844 = !DILocalVariable(name: "dev", arg: 1, scope: !4843, file: !3, line: 529, type: !197)
!4845 = !DILocation(line: 529, column: 55, scope: !4843)
!4846 = !DILocalVariable(name: "s", arg: 2, scope: !4843, file: !3, line: 530, type: !233)
!4847 = !DILocation(line: 530, column: 30, scope: !4843)
!4848 = !DILocalVariable(name: "insn", arg: 3, scope: !4843, file: !3, line: 531, type: !3955)
!4849 = !DILocation(line: 531, column: 25, scope: !4843)
!4850 = !DILocalVariable(name: "data", arg: 4, scope: !4843, file: !3, line: 531, type: !2721)
!4851 = !DILocation(line: 531, column: 45, scope: !4843)
!4852 = !DILocalVariable(name: "chan", scope: !4843, file: !3, line: 533, type: !7)
!4853 = !DILocation(line: 533, column: 15, scope: !4843)
!4854 = !DILocation(line: 533, column: 22, scope: !4843)
!4855 = !DILocalVariable(name: "range", scope: !4843, file: !3, line: 534, type: !7)
!4856 = !DILocation(line: 534, column: 15, scope: !4843)
!4857 = !DILocation(line: 534, column: 23, scope: !4843)
!4858 = !DILocalVariable(name: "maxdata", scope: !4843, file: !3, line: 535, type: !7)
!4859 = !DILocation(line: 535, column: 15, scope: !4843)
!4860 = !DILocation(line: 535, column: 25, scope: !4843)
!4861 = !DILocation(line: 535, column: 28, scope: !4843)
!4862 = !DILocalVariable(name: "invert", scope: !4843, file: !3, line: 536, type: !7)
!4863 = !DILocation(line: 536, column: 15, scope: !4843)
!4864 = !DILocation(line: 536, column: 25, scope: !4843)
!4865 = !DILocation(line: 536, column: 33, scope: !4843)
!4866 = !DILocation(line: 536, column: 38, scope: !4843)
!4867 = !DILocalVariable(name: "shift", scope: !4843, file: !3, line: 537, type: !7)
!4868 = !DILocation(line: 537, column: 15, scope: !4843)
!4869 = !DILocation(line: 537, column: 24, scope: !4843)
!4870 = !DILocation(line: 537, column: 32, scope: !4843)
!4871 = !DILocation(line: 537, column: 23, scope: !4843)
!4872 = !DILocalVariable(name: "status", scope: !4843, file: !3, line: 538, type: !7)
!4873 = !DILocation(line: 538, column: 15, scope: !4843)
!4874 = !DILocalVariable(name: "ret", scope: !4843, file: !3, line: 539, type: !196)
!4875 = !DILocation(line: 539, column: 6, scope: !4843)
!4876 = !DILocalVariable(name: "i", scope: !4843, file: !3, line: 540, type: !196)
!4877 = !DILocation(line: 540, column: 6, scope: !4843)
!4878 = !DILocation(line: 542, column: 7, scope: !4843)
!4879 = !DILocation(line: 542, column: 13, scope: !4843)
!4880 = !DILocation(line: 542, column: 18, scope: !4843)
!4881 = !DILocation(line: 542, column: 25, scope: !4843)
!4882 = !DILocation(line: 542, column: 2, scope: !4843)
!4883 = !DILocation(line: 544, column: 15, scope: !4843)
!4884 = !DILocation(line: 544, column: 20, scope: !4843)
!4885 = !DILocation(line: 544, column: 27, scope: !4843)
!4886 = !DILocation(line: 544, column: 11, scope: !4843)
!4887 = !DILocation(line: 544, column: 9, scope: !4843)
!4888 = !DILocation(line: 545, column: 7, scope: !4889)
!4889 = distinct !DILexicalBlock(scope: !4843, file: !3, line: 545, column: 6)
!4890 = !DILocation(line: 545, column: 14, scope: !4889)
!4891 = !DILocation(line: 545, column: 42, scope: !4889)
!4892 = !DILocation(line: 545, column: 39, scope: !4889)
!4893 = !DILocation(line: 545, column: 6, scope: !4843)
!4894 = !DILocation(line: 546, column: 8, scope: !4895)
!4895 = distinct !DILexicalBlock(scope: !4889, file: !3, line: 545, column: 49)
!4896 = !DILocation(line: 547, column: 8, scope: !4895)
!4897 = !DILocation(line: 547, column: 13, scope: !4895)
!4898 = !DILocation(line: 547, column: 20, scope: !4895)
!4899 = !DILocation(line: 546, column: 3, scope: !4895)
!4900 = !DILocation(line: 548, column: 2, scope: !4895)
!4901 = !DILocation(line: 550, column: 21, scope: !4843)
!4902 = !DILocation(line: 550, column: 2, scope: !4843)
!4903 = !DILocation(line: 552, column: 9, scope: !4904)
!4904 = distinct !DILexicalBlock(scope: !4843, file: !3, line: 552, column: 2)
!4905 = !DILocation(line: 552, column: 7, scope: !4904)
!4906 = !DILocation(line: 552, column: 14, scope: !4907)
!4907 = distinct !DILexicalBlock(scope: !4904, file: !3, line: 552, column: 2)
!4908 = !DILocation(line: 552, column: 18, scope: !4907)
!4909 = !DILocation(line: 552, column: 24, scope: !4907)
!4910 = !DILocation(line: 552, column: 16, scope: !4907)
!4911 = !DILocation(line: 552, column: 2, scope: !4904)
!4912 = !DILocation(line: 554, column: 11, scope: !4913)
!4913 = distinct !DILexicalBlock(scope: !4907, file: !3, line: 552, column: 32)
!4914 = !DILocation(line: 554, column: 16, scope: !4913)
!4915 = !DILocation(line: 554, column: 23, scope: !4913)
!4916 = !DILocation(line: 554, column: 3, scope: !4913)
!4917 = !DILocation(line: 556, column: 24, scope: !4913)
!4918 = !DILocation(line: 556, column: 29, scope: !4913)
!4919 = !DILocation(line: 556, column: 32, scope: !4913)
!4920 = !DILocation(line: 556, column: 9, scope: !4913)
!4921 = !DILocation(line: 556, column: 7, scope: !4913)
!4922 = !DILocation(line: 557, column: 7, scope: !4923)
!4923 = distinct !DILexicalBlock(scope: !4913, file: !3, line: 557, column: 7)
!4924 = !DILocation(line: 557, column: 7, scope: !4913)
!4925 = !DILocation(line: 558, column: 23, scope: !4926)
!4926 = distinct !DILexicalBlock(scope: !4923, file: !3, line: 557, column: 12)
!4927 = !DILocation(line: 558, column: 4, scope: !4926)
!4928 = !DILocation(line: 559, column: 11, scope: !4926)
!4929 = !DILocation(line: 559, column: 4, scope: !4926)
!4930 = !DILocation(line: 562, column: 17, scope: !4913)
!4931 = !DILocation(line: 562, column: 22, scope: !4913)
!4932 = !DILocation(line: 562, column: 29, scope: !4913)
!4933 = !DILocation(line: 562, column: 13, scope: !4913)
!4934 = !DILocation(line: 562, column: 3, scope: !4913)
!4935 = !DILocation(line: 562, column: 8, scope: !4913)
!4936 = !DILocation(line: 562, column: 11, scope: !4913)
!4937 = !DILocation(line: 563, column: 15, scope: !4913)
!4938 = !DILocation(line: 563, column: 20, scope: !4913)
!4939 = !DILocation(line: 563, column: 26, scope: !4913)
!4940 = !DILocation(line: 563, column: 23, scope: !4913)
!4941 = !DILocation(line: 563, column: 35, scope: !4913)
!4942 = !DILocation(line: 563, column: 33, scope: !4913)
!4943 = !DILocation(line: 563, column: 46, scope: !4913)
!4944 = !DILocation(line: 563, column: 44, scope: !4913)
!4945 = !DILocation(line: 563, column: 3, scope: !4913)
!4946 = !DILocation(line: 563, column: 8, scope: !4913)
!4947 = !DILocation(line: 563, column: 11, scope: !4913)
!4948 = !DILocation(line: 564, column: 2, scope: !4913)
!4949 = !DILocation(line: 552, column: 28, scope: !4907)
!4950 = !DILocation(line: 552, column: 2, scope: !4907)
!4951 = distinct !{!4951, !4911, !4952}
!4952 = !DILocation(line: 564, column: 2, scope: !4904)
!4953 = !DILocation(line: 566, column: 9, scope: !4843)
!4954 = !DILocation(line: 566, column: 2, scope: !4843)
!4955 = !DILocation(line: 567, column: 1, scope: !4843)
!4956 = distinct !DISubprogram(name: "pci9111_ai_do_cmd_test", scope: !3, file: !3, line: 236, type: !3940, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!4957 = !DILocalVariable(name: "dev", arg: 1, scope: !4956, file: !3, line: 236, type: !197)
!4958 = !DILocation(line: 236, column: 57, scope: !4956)
!4959 = !DILocalVariable(name: "s", arg: 2, scope: !4956, file: !3, line: 237, type: !233)
!4960 = !DILocation(line: 237, column: 32, scope: !4956)
!4961 = !DILocalVariable(name: "cmd", arg: 3, scope: !4956, file: !3, line: 238, type: !3942)
!4962 = !DILocation(line: 238, column: 26, scope: !4956)
!4963 = !DILocalVariable(name: "err", scope: !4956, file: !3, line: 240, type: !196)
!4964 = !DILocation(line: 240, column: 6, scope: !4956)
!4965 = !DILocalVariable(name: "arg", scope: !4956, file: !3, line: 241, type: !7)
!4966 = !DILocation(line: 241, column: 15, scope: !4956)
!4967 = !DILocation(line: 245, column: 35, scope: !4956)
!4968 = !DILocation(line: 245, column: 40, scope: !4956)
!4969 = !DILocation(line: 245, column: 9, scope: !4956)
!4970 = !DILocation(line: 245, column: 6, scope: !4956)
!4971 = !DILocation(line: 246, column: 35, scope: !4956)
!4972 = !DILocation(line: 246, column: 40, scope: !4956)
!4973 = !DILocation(line: 246, column: 9, scope: !4956)
!4974 = !DILocation(line: 246, column: 6, scope: !4956)
!4975 = !DILocation(line: 248, column: 35, scope: !4956)
!4976 = !DILocation(line: 248, column: 40, scope: !4956)
!4977 = !DILocation(line: 248, column: 9, scope: !4956)
!4978 = !DILocation(line: 248, column: 6, scope: !4956)
!4979 = !DILocation(line: 250, column: 35, scope: !4956)
!4980 = !DILocation(line: 250, column: 40, scope: !4956)
!4981 = !DILocation(line: 250, column: 9, scope: !4956)
!4982 = !DILocation(line: 250, column: 6, scope: !4956)
!4983 = !DILocation(line: 251, column: 35, scope: !4956)
!4984 = !DILocation(line: 251, column: 40, scope: !4956)
!4985 = !DILocation(line: 251, column: 9, scope: !4956)
!4986 = !DILocation(line: 251, column: 6, scope: !4956)
!4987 = !DILocation(line: 254, column: 6, scope: !4988)
!4988 = distinct !DILexicalBlock(scope: !4956, file: !3, line: 254, column: 6)
!4989 = !DILocation(line: 254, column: 6, scope: !4956)
!4990 = !DILocation(line: 255, column: 3, scope: !4988)
!4991 = !DILocation(line: 259, column: 40, scope: !4956)
!4992 = !DILocation(line: 259, column: 45, scope: !4956)
!4993 = !DILocation(line: 259, column: 9, scope: !4956)
!4994 = !DILocation(line: 259, column: 6, scope: !4956)
!4995 = !DILocation(line: 260, column: 40, scope: !4956)
!4996 = !DILocation(line: 260, column: 45, scope: !4956)
!4997 = !DILocation(line: 260, column: 9, scope: !4956)
!4998 = !DILocation(line: 260, column: 6, scope: !4956)
!4999 = !DILocation(line: 261, column: 40, scope: !4956)
!5000 = !DILocation(line: 261, column: 45, scope: !4956)
!5001 = !DILocation(line: 261, column: 9, scope: !4956)
!5002 = !DILocation(line: 261, column: 6, scope: !4956)
!5003 = !DILocation(line: 265, column: 6, scope: !5004)
!5004 = distinct !DILexicalBlock(scope: !4956, file: !3, line: 265, column: 6)
!5005 = !DILocation(line: 265, column: 11, scope: !5004)
!5006 = !DILocation(line: 265, column: 26, scope: !5004)
!5007 = !DILocation(line: 265, column: 6, scope: !4956)
!5008 = !DILocation(line: 266, column: 7, scope: !5009)
!5009 = distinct !DILexicalBlock(scope: !5010, file: !3, line: 266, column: 7)
!5010 = distinct !DILexicalBlock(scope: !5004, file: !3, line: 265, column: 42)
!5011 = !DILocation(line: 266, column: 12, scope: !5009)
!5012 = !DILocation(line: 266, column: 30, scope: !5009)
!5013 = !DILocation(line: 266, column: 35, scope: !5009)
!5014 = !DILocation(line: 266, column: 27, scope: !5009)
!5015 = !DILocation(line: 266, column: 7, scope: !5010)
!5016 = !DILocation(line: 267, column: 8, scope: !5009)
!5017 = !DILocation(line: 267, column: 4, scope: !5009)
!5018 = !DILocation(line: 268, column: 2, scope: !5010)
!5019 = !DILocation(line: 270, column: 6, scope: !5020)
!5020 = distinct !DILexicalBlock(scope: !4956, file: !3, line: 270, column: 6)
!5021 = !DILocation(line: 270, column: 6, scope: !4956)
!5022 = !DILocation(line: 271, column: 3, scope: !5020)
!5023 = !DILocation(line: 275, column: 38, scope: !4956)
!5024 = !DILocation(line: 275, column: 43, scope: !4956)
!5025 = !DILocation(line: 275, column: 9, scope: !4956)
!5026 = !DILocation(line: 275, column: 6, scope: !4956)
!5027 = !DILocation(line: 277, column: 6, scope: !5028)
!5028 = distinct !DILexicalBlock(scope: !4956, file: !3, line: 277, column: 6)
!5029 = !DILocation(line: 277, column: 11, scope: !5028)
!5030 = !DILocation(line: 277, column: 23, scope: !5028)
!5031 = !DILocation(line: 277, column: 6, scope: !4956)
!5032 = !DILocation(line: 278, column: 40, scope: !5033)
!5033 = distinct !DILexicalBlock(scope: !5028, file: !3, line: 277, column: 38)
!5034 = !DILocation(line: 278, column: 45, scope: !5033)
!5035 = !DILocation(line: 278, column: 10, scope: !5033)
!5036 = !DILocation(line: 278, column: 7, scope: !5033)
!5037 = !DILocation(line: 280, column: 2, scope: !5033)
!5038 = !DILocation(line: 281, column: 39, scope: !5039)
!5039 = distinct !DILexicalBlock(scope: !5028, file: !3, line: 280, column: 9)
!5040 = !DILocation(line: 281, column: 44, scope: !5039)
!5041 = !DILocation(line: 281, column: 10, scope: !5039)
!5042 = !DILocation(line: 281, column: 7, scope: !5039)
!5043 = !DILocation(line: 284, column: 6, scope: !5044)
!5044 = distinct !DILexicalBlock(scope: !4956, file: !3, line: 284, column: 6)
!5045 = !DILocation(line: 284, column: 11, scope: !5044)
!5046 = !DILocation(line: 284, column: 26, scope: !5044)
!5047 = !DILocation(line: 284, column: 6, scope: !4956)
!5048 = !DILocation(line: 285, column: 40, scope: !5049)
!5049 = distinct !DILexicalBlock(scope: !5044, file: !3, line: 284, column: 41)
!5050 = !DILocation(line: 285, column: 45, scope: !5049)
!5051 = !DILocation(line: 285, column: 10, scope: !5049)
!5052 = !DILocation(line: 285, column: 7, scope: !5049)
!5053 = !DILocation(line: 287, column: 2, scope: !5049)
!5054 = !DILocation(line: 288, column: 39, scope: !5055)
!5055 = distinct !DILexicalBlock(scope: !5044, file: !3, line: 287, column: 9)
!5056 = !DILocation(line: 288, column: 44, scope: !5055)
!5057 = !DILocation(line: 288, column: 10, scope: !5055)
!5058 = !DILocation(line: 288, column: 7, scope: !5055)
!5059 = !DILocation(line: 291, column: 38, scope: !4956)
!5060 = !DILocation(line: 291, column: 43, scope: !4956)
!5061 = !DILocation(line: 292, column: 9, scope: !4956)
!5062 = !DILocation(line: 292, column: 14, scope: !4956)
!5063 = !DILocation(line: 291, column: 9, scope: !4956)
!5064 = !DILocation(line: 291, column: 6, scope: !4956)
!5065 = !DILocation(line: 294, column: 6, scope: !5066)
!5066 = distinct !DILexicalBlock(scope: !4956, file: !3, line: 294, column: 6)
!5067 = !DILocation(line: 294, column: 11, scope: !5066)
!5068 = !DILocation(line: 294, column: 20, scope: !5066)
!5069 = !DILocation(line: 294, column: 6, scope: !4956)
!5070 = !DILocation(line: 295, column: 40, scope: !5066)
!5071 = !DILocation(line: 295, column: 45, scope: !5066)
!5072 = !DILocation(line: 295, column: 10, scope: !5066)
!5073 = !DILocation(line: 295, column: 7, scope: !5066)
!5074 = !DILocation(line: 295, column: 3, scope: !5066)
!5075 = !DILocation(line: 297, column: 39, scope: !5066)
!5076 = !DILocation(line: 297, column: 44, scope: !5066)
!5077 = !DILocation(line: 297, column: 10, scope: !5066)
!5078 = !DILocation(line: 297, column: 7, scope: !5066)
!5079 = !DILocation(line: 299, column: 6, scope: !5080)
!5080 = distinct !DILexicalBlock(scope: !4956, file: !3, line: 299, column: 6)
!5081 = !DILocation(line: 299, column: 6, scope: !4956)
!5082 = !DILocation(line: 300, column: 3, scope: !5080)
!5083 = !DILocation(line: 304, column: 6, scope: !5084)
!5084 = distinct !DILexicalBlock(scope: !4956, file: !3, line: 304, column: 6)
!5085 = !DILocation(line: 304, column: 11, scope: !5084)
!5086 = !DILocation(line: 304, column: 23, scope: !5084)
!5087 = !DILocation(line: 304, column: 6, scope: !4956)
!5088 = !DILocation(line: 305, column: 9, scope: !5089)
!5089 = distinct !DILexicalBlock(scope: !5084, file: !3, line: 304, column: 38)
!5090 = !DILocation(line: 305, column: 14, scope: !5089)
!5091 = !DILocation(line: 305, column: 7, scope: !5089)
!5092 = !DILocation(line: 306, column: 35, scope: !5089)
!5093 = !DILocation(line: 306, column: 40, scope: !5089)
!5094 = !DILocation(line: 306, column: 53, scope: !5089)
!5095 = !DILocation(line: 306, column: 58, scope: !5089)
!5096 = !DILocation(line: 306, column: 3, scope: !5089)
!5097 = !DILocation(line: 307, column: 39, scope: !5089)
!5098 = !DILocation(line: 307, column: 44, scope: !5089)
!5099 = !DILocation(line: 307, column: 57, scope: !5089)
!5100 = !DILocation(line: 307, column: 10, scope: !5089)
!5101 = !DILocation(line: 307, column: 7, scope: !5089)
!5102 = !DILocation(line: 308, column: 2, scope: !5089)
!5103 = !DILocation(line: 314, column: 6, scope: !5104)
!5104 = distinct !DILexicalBlock(scope: !4956, file: !3, line: 314, column: 6)
!5105 = !DILocation(line: 314, column: 11, scope: !5104)
!5106 = !DILocation(line: 314, column: 26, scope: !5104)
!5107 = !DILocation(line: 314, column: 6, scope: !4956)
!5108 = !DILocation(line: 315, column: 9, scope: !5109)
!5109 = distinct !DILexicalBlock(scope: !5104, file: !3, line: 314, column: 41)
!5110 = !DILocation(line: 315, column: 14, scope: !5109)
!5111 = !DILocation(line: 315, column: 29, scope: !5109)
!5112 = !DILocation(line: 315, column: 34, scope: !5109)
!5113 = !DILocation(line: 315, column: 27, scope: !5109)
!5114 = !DILocation(line: 315, column: 7, scope: !5109)
!5115 = !DILocation(line: 317, column: 7, scope: !5116)
!5116 = distinct !DILexicalBlock(scope: !5109, file: !3, line: 317, column: 7)
!5117 = !DILocation(line: 317, column: 13, scope: !5116)
!5118 = !DILocation(line: 317, column: 18, scope: !5116)
!5119 = !DILocation(line: 317, column: 11, scope: !5116)
!5120 = !DILocation(line: 317, column: 7, scope: !5109)
!5121 = !DILocation(line: 318, column: 12, scope: !5116)
!5122 = !DILocation(line: 318, column: 17, scope: !5116)
!5123 = !DILocation(line: 318, column: 34, scope: !5116)
!5124 = !DILocation(line: 318, column: 32, scope: !5116)
!5125 = !DILocation(line: 318, column: 8, scope: !5116)
!5126 = !DILocation(line: 318, column: 4, scope: !5116)
!5127 = !DILocation(line: 320, column: 39, scope: !5109)
!5128 = !DILocation(line: 320, column: 44, scope: !5109)
!5129 = !DILocation(line: 320, column: 60, scope: !5109)
!5130 = !DILocation(line: 320, column: 10, scope: !5109)
!5131 = !DILocation(line: 320, column: 7, scope: !5109)
!5132 = !DILocation(line: 321, column: 2, scope: !5109)
!5133 = !DILocation(line: 323, column: 6, scope: !5134)
!5134 = distinct !DILexicalBlock(scope: !4956, file: !3, line: 323, column: 6)
!5135 = !DILocation(line: 323, column: 6, scope: !4956)
!5136 = !DILocation(line: 324, column: 3, scope: !5134)
!5137 = !DILocation(line: 327, column: 6, scope: !5138)
!5138 = distinct !DILexicalBlock(scope: !4956, file: !3, line: 327, column: 6)
!5139 = !DILocation(line: 327, column: 11, scope: !5138)
!5140 = !DILocation(line: 327, column: 20, scope: !5138)
!5141 = !DILocation(line: 327, column: 23, scope: !5138)
!5142 = !DILocation(line: 327, column: 28, scope: !5138)
!5143 = !DILocation(line: 327, column: 41, scope: !5138)
!5144 = !DILocation(line: 327, column: 6, scope: !4956)
!5145 = !DILocation(line: 328, column: 36, scope: !5138)
!5146 = !DILocation(line: 328, column: 41, scope: !5138)
!5147 = !DILocation(line: 328, column: 44, scope: !5138)
!5148 = !DILocation(line: 328, column: 10, scope: !5138)
!5149 = !DILocation(line: 328, column: 7, scope: !5138)
!5150 = !DILocation(line: 328, column: 3, scope: !5138)
!5151 = !DILocation(line: 330, column: 6, scope: !5152)
!5152 = distinct !DILexicalBlock(scope: !4956, file: !3, line: 330, column: 6)
!5153 = !DILocation(line: 330, column: 6, scope: !4956)
!5154 = !DILocation(line: 331, column: 3, scope: !5152)
!5155 = !DILocation(line: 333, column: 2, scope: !4956)
!5156 = !DILocation(line: 334, column: 1, scope: !4956)
!5157 = distinct !DISubprogram(name: "pci9111_ai_do_cmd", scope: !3, file: !3, line: 336, type: !3936, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5158 = !DILocalVariable(name: "dev", arg: 1, scope: !5157, file: !3, line: 336, type: !197)
!5159 = !DILocation(line: 336, column: 52, scope: !5157)
!5160 = !DILocalVariable(name: "s", arg: 2, scope: !5157, file: !3, line: 337, type: !233)
!5161 = !DILocation(line: 337, column: 34, scope: !5157)
!5162 = !DILocalVariable(name: "dev_private", scope: !5157, file: !3, line: 339, type: !4337)
!5163 = !DILocation(line: 339, column: 31, scope: !5157)
!5164 = !DILocation(line: 339, column: 45, scope: !5157)
!5165 = !DILocation(line: 339, column: 50, scope: !5157)
!5166 = !DILocalVariable(name: "cmd", scope: !5157, file: !3, line: 340, type: !3942)
!5167 = !DILocation(line: 340, column: 21, scope: !5157)
!5168 = !DILocation(line: 340, column: 28, scope: !5157)
!5169 = !DILocation(line: 340, column: 31, scope: !5157)
!5170 = !DILocation(line: 340, column: 38, scope: !5157)
!5171 = !DILocalVariable(name: "last_chan", scope: !5157, file: !3, line: 341, type: !7)
!5172 = !DILocation(line: 341, column: 15, scope: !5157)
!5173 = !DILocation(line: 341, column: 27, scope: !5157)
!5174 = !DILocalVariable(name: "range0", scope: !5157, file: !3, line: 342, type: !7)
!5175 = !DILocation(line: 342, column: 15, scope: !5157)
!5176 = !DILocation(line: 342, column: 24, scope: !5157)
!5177 = !DILocalVariable(name: "trig", scope: !5157, file: !3, line: 343, type: !7)
!5178 = !DILocation(line: 343, column: 15, scope: !5157)
!5179 = !DILocation(line: 349, column: 6, scope: !5180)
!5180 = distinct !DILexicalBlock(scope: !5157, file: !3, line: 349, column: 6)
!5181 = !DILocation(line: 349, column: 11, scope: !5180)
!5182 = !DILocation(line: 349, column: 24, scope: !5180)
!5183 = !DILocation(line: 349, column: 6, scope: !5157)
!5184 = !DILocation(line: 350, column: 8, scope: !5180)
!5185 = !DILocation(line: 350, column: 3, scope: !5180)
!5186 = !DILocation(line: 352, column: 7, scope: !5157)
!5187 = !DILocation(line: 352, column: 18, scope: !5157)
!5188 = !DILocation(line: 352, column: 23, scope: !5157)
!5189 = !DILocation(line: 352, column: 30, scope: !5157)
!5190 = !DILocation(line: 352, column: 2, scope: !5157)
!5191 = !DILocation(line: 355, column: 7, scope: !5157)
!5192 = !DILocation(line: 355, column: 33, scope: !5157)
!5193 = !DILocation(line: 355, column: 38, scope: !5157)
!5194 = !DILocation(line: 355, column: 45, scope: !5157)
!5195 = !DILocation(line: 355, column: 2, scope: !5157)
!5196 = !DILocation(line: 358, column: 2, scope: !5157)
!5197 = !DILocation(line: 358, column: 15, scope: !5157)
!5198 = !DILocation(line: 358, column: 26, scope: !5157)
!5199 = !DILocation(line: 359, column: 6, scope: !5200)
!5200 = distinct !DILexicalBlock(scope: !5157, file: !3, line: 359, column: 6)
!5201 = !DILocation(line: 359, column: 11, scope: !5200)
!5202 = !DILocation(line: 359, column: 23, scope: !5200)
!5203 = !DILocation(line: 359, column: 6, scope: !5157)
!5204 = !DILocation(line: 360, column: 8, scope: !5205)
!5205 = distinct !DILexicalBlock(scope: !5200, file: !3, line: 359, column: 38)
!5206 = !DILocation(line: 361, column: 31, scope: !5205)
!5207 = !DILocation(line: 361, column: 36, scope: !5205)
!5208 = !DILocation(line: 361, column: 3, scope: !5205)
!5209 = !DILocation(line: 362, column: 28, scope: !5205)
!5210 = !DILocation(line: 362, column: 33, scope: !5205)
!5211 = !DILocation(line: 362, column: 3, scope: !5205)
!5212 = !DILocation(line: 363, column: 22, scope: !5205)
!5213 = !DILocation(line: 363, column: 3, scope: !5205)
!5214 = !DILocation(line: 364, column: 32, scope: !5205)
!5215 = !DILocation(line: 364, column: 3, scope: !5205)
!5216 = !DILocation(line: 366, column: 29, scope: !5205)
!5217 = !DILocation(line: 366, column: 42, scope: !5205)
!5218 = !DILocation(line: 366, column: 3, scope: !5205)
!5219 = !DILocation(line: 369, column: 7, scope: !5220)
!5220 = distinct !DILexicalBlock(scope: !5205, file: !3, line: 369, column: 7)
!5221 = !DILocation(line: 369, column: 12, scope: !5220)
!5222 = !DILocation(line: 369, column: 27, scope: !5220)
!5223 = !DILocation(line: 369, column: 7, scope: !5205)
!5224 = !DILocation(line: 370, column: 31, scope: !5225)
!5225 = distinct !DILexicalBlock(scope: !5220, file: !3, line: 369, column: 42)
!5226 = !DILocation(line: 370, column: 36, scope: !5225)
!5227 = !DILocation(line: 371, column: 6, scope: !5225)
!5228 = !DILocation(line: 371, column: 11, scope: !5225)
!5229 = !DILocation(line: 371, column: 25, scope: !5225)
!5230 = !DILocation(line: 371, column: 30, scope: !5225)
!5231 = !DILocation(line: 371, column: 23, scope: !5225)
!5232 = !DILocation(line: 370, column: 51, scope: !5225)
!5233 = !DILocation(line: 371, column: 45, scope: !5225)
!5234 = !DILocation(line: 370, column: 4, scope: !5225)
!5235 = !DILocation(line: 370, column: 17, scope: !5225)
!5236 = !DILocation(line: 370, column: 28, scope: !5225)
!5237 = !DILocation(line: 372, column: 3, scope: !5225)
!5238 = !DILocation(line: 373, column: 2, scope: !5205)
!5239 = !DILocation(line: 374, column: 8, scope: !5240)
!5240 = distinct !DILexicalBlock(scope: !5200, file: !3, line: 373, column: 9)
!5241 = !DILocation(line: 375, column: 22, scope: !5240)
!5242 = !DILocation(line: 375, column: 3, scope: !5240)
!5243 = !DILocation(line: 376, column: 32, scope: !5240)
!5244 = !DILocation(line: 376, column: 3, scope: !5240)
!5245 = !DILocation(line: 378, column: 29, scope: !5240)
!5246 = !DILocation(line: 378, column: 42, scope: !5240)
!5247 = !DILocation(line: 378, column: 3, scope: !5240)
!5248 = !DILocation(line: 381, column: 7, scope: !5157)
!5249 = !DILocation(line: 381, column: 13, scope: !5157)
!5250 = !DILocation(line: 381, column: 18, scope: !5157)
!5251 = !DILocation(line: 381, column: 25, scope: !5157)
!5252 = !DILocation(line: 381, column: 2, scope: !5157)
!5253 = !DILocation(line: 383, column: 2, scope: !5157)
!5254 = !DILocation(line: 383, column: 15, scope: !5157)
!5255 = !DILocation(line: 383, column: 29, scope: !5157)
!5256 = !DILocation(line: 384, column: 35, scope: !5157)
!5257 = !DILocation(line: 384, column: 40, scope: !5157)
!5258 = !DILocation(line: 385, column: 12, scope: !5157)
!5259 = !DILocation(line: 385, column: 25, scope: !5157)
!5260 = !DILocation(line: 385, column: 10, scope: !5157)
!5261 = !DILocation(line: 384, column: 53, scope: !5157)
!5262 = !DILocation(line: 384, column: 2, scope: !5157)
!5263 = !DILocation(line: 384, column: 15, scope: !5157)
!5264 = !DILocation(line: 384, column: 33, scope: !5157)
!5265 = !DILocation(line: 387, column: 2, scope: !5157)
!5266 = distinct !DISubprogram(name: "pci9111_ai_cancel", scope: !3, file: !3, line: 184, type: !3936, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5267 = !DILocalVariable(name: "dev", arg: 1, scope: !5266, file: !3, line: 184, type: !197)
!5268 = !DILocation(line: 184, column: 52, scope: !5266)
!5269 = !DILocalVariable(name: "s", arg: 2, scope: !5266, file: !3, line: 185, type: !233)
!5270 = !DILocation(line: 185, column: 34, scope: !5266)
!5271 = !DILocalVariable(name: "dev_private", scope: !5266, file: !3, line: 187, type: !4337)
!5272 = !DILocation(line: 187, column: 31, scope: !5266)
!5273 = !DILocation(line: 187, column: 45, scope: !5266)
!5274 = !DILocation(line: 187, column: 50, scope: !5266)
!5275 = !DILocation(line: 190, column: 28, scope: !5266)
!5276 = !DILocation(line: 190, column: 41, scope: !5266)
!5277 = !DILocation(line: 190, column: 2, scope: !5266)
!5278 = !DILocation(line: 194, column: 10, scope: !5266)
!5279 = !DILocation(line: 194, column: 15, scope: !5266)
!5280 = !DILocation(line: 194, column: 22, scope: !5266)
!5281 = !DILocation(line: 194, column: 2, scope: !5266)
!5282 = !DILocation(line: 196, column: 21, scope: !5266)
!5283 = !DILocation(line: 196, column: 2, scope: !5266)
!5284 = !DILocation(line: 198, column: 2, scope: !5266)
!5285 = distinct !DISubprogram(name: "pci9111_ai_munge", scope: !3, file: !3, line: 390, type: !3948, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5286 = !DILocalVariable(name: "dev", arg: 1, scope: !5285, file: !3, line: 390, type: !197)
!5287 = !DILocation(line: 390, column: 52, scope: !5285)
!5288 = !DILocalVariable(name: "s", arg: 2, scope: !5285, file: !3, line: 391, type: !233)
!5289 = !DILocation(line: 391, column: 34, scope: !5285)
!5290 = !DILocalVariable(name: "data", arg: 3, scope: !5285, file: !3, line: 391, type: !209)
!5291 = !DILocation(line: 391, column: 43, scope: !5285)
!5292 = !DILocalVariable(name: "num_bytes", arg: 4, scope: !5285, file: !3, line: 392, type: !7)
!5293 = !DILocation(line: 392, column: 22, scope: !5285)
!5294 = !DILocalVariable(name: "start_chan_index", arg: 5, scope: !5285, file: !3, line: 393, type: !7)
!5295 = !DILocation(line: 393, column: 22, scope: !5285)
!5296 = !DILocalVariable(name: "array", scope: !5285, file: !3, line: 395, type: !148)
!5297 = !DILocation(line: 395, column: 18, scope: !5285)
!5298 = !DILocation(line: 395, column: 26, scope: !5285)
!5299 = !DILocalVariable(name: "maxdata", scope: !5285, file: !3, line: 396, type: !7)
!5300 = !DILocation(line: 396, column: 15, scope: !5285)
!5301 = !DILocation(line: 396, column: 25, scope: !5285)
!5302 = !DILocation(line: 396, column: 28, scope: !5285)
!5303 = !DILocalVariable(name: "invert", scope: !5285, file: !3, line: 397, type: !7)
!5304 = !DILocation(line: 397, column: 15, scope: !5285)
!5305 = !DILocation(line: 397, column: 25, scope: !5285)
!5306 = !DILocation(line: 397, column: 33, scope: !5285)
!5307 = !DILocation(line: 397, column: 38, scope: !5285)
!5308 = !DILocalVariable(name: "shift", scope: !5285, file: !3, line: 398, type: !7)
!5309 = !DILocation(line: 398, column: 15, scope: !5285)
!5310 = !DILocation(line: 398, column: 24, scope: !5285)
!5311 = !DILocation(line: 398, column: 32, scope: !5285)
!5312 = !DILocation(line: 398, column: 23, scope: !5285)
!5313 = !DILocalVariable(name: "num_samples", scope: !5285, file: !3, line: 399, type: !7)
!5314 = !DILocation(line: 399, column: 15, scope: !5285)
!5315 = !DILocation(line: 399, column: 53, scope: !5285)
!5316 = !DILocation(line: 399, column: 56, scope: !5285)
!5317 = !DILocation(line: 399, column: 29, scope: !5285)
!5318 = !DILocalVariable(name: "i", scope: !5285, file: !3, line: 400, type: !7)
!5319 = !DILocation(line: 400, column: 15, scope: !5285)
!5320 = !DILocation(line: 402, column: 9, scope: !5321)
!5321 = distinct !DILexicalBlock(scope: !5285, file: !3, line: 402, column: 2)
!5322 = !DILocation(line: 402, column: 7, scope: !5321)
!5323 = !DILocation(line: 402, column: 14, scope: !5324)
!5324 = distinct !DILexicalBlock(scope: !5321, file: !3, line: 402, column: 2)
!5325 = !DILocation(line: 402, column: 18, scope: !5324)
!5326 = !DILocation(line: 402, column: 16, scope: !5324)
!5327 = !DILocation(line: 402, column: 2, scope: !5321)
!5328 = !DILocation(line: 403, column: 16, scope: !5324)
!5329 = !DILocation(line: 403, column: 22, scope: !5324)
!5330 = !DILocation(line: 403, column: 28, scope: !5324)
!5331 = !DILocation(line: 403, column: 25, scope: !5324)
!5332 = !DILocation(line: 403, column: 37, scope: !5324)
!5333 = !DILocation(line: 403, column: 35, scope: !5324)
!5334 = !DILocation(line: 403, column: 48, scope: !5324)
!5335 = !DILocation(line: 403, column: 46, scope: !5324)
!5336 = !DILocation(line: 403, column: 14, scope: !5324)
!5337 = !DILocation(line: 403, column: 3, scope: !5324)
!5338 = !DILocation(line: 403, column: 9, scope: !5324)
!5339 = !DILocation(line: 403, column: 12, scope: !5324)
!5340 = !DILocation(line: 402, column: 32, scope: !5324)
!5341 = !DILocation(line: 402, column: 2, scope: !5324)
!5342 = distinct !{!5342, !5327, !5343}
!5343 = !DILocation(line: 403, column: 48, scope: !5321)
!5344 = !DILocation(line: 404, column: 1, scope: !5285)
!5345 = distinct !DISubprogram(name: "pci9111_ao_insn_write", scope: !3, file: !3, line: 569, type: !231, scopeLine: 573, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5346 = !DILocalVariable(name: "dev", arg: 1, scope: !5345, file: !3, line: 569, type: !197)
!5347 = !DILocation(line: 569, column: 56, scope: !5345)
!5348 = !DILocalVariable(name: "s", arg: 2, scope: !5345, file: !3, line: 570, type: !233)
!5349 = !DILocation(line: 570, column: 31, scope: !5345)
!5350 = !DILocalVariable(name: "insn", arg: 3, scope: !5345, file: !3, line: 571, type: !3955)
!5351 = !DILocation(line: 571, column: 26, scope: !5345)
!5352 = !DILocalVariable(name: "data", arg: 4, scope: !5345, file: !3, line: 572, type: !2721)
!5353 = !DILocation(line: 572, column: 20, scope: !5345)
!5354 = !DILocalVariable(name: "chan", scope: !5345, file: !3, line: 574, type: !7)
!5355 = !DILocation(line: 574, column: 15, scope: !5345)
!5356 = !DILocation(line: 574, column: 22, scope: !5345)
!5357 = !DILocalVariable(name: "val", scope: !5345, file: !3, line: 575, type: !7)
!5358 = !DILocation(line: 575, column: 15, scope: !5345)
!5359 = !DILocation(line: 575, column: 21, scope: !5345)
!5360 = !DILocation(line: 575, column: 24, scope: !5345)
!5361 = !DILocation(line: 575, column: 33, scope: !5345)
!5362 = !DILocalVariable(name: "i", scope: !5345, file: !3, line: 576, type: !196)
!5363 = !DILocation(line: 576, column: 6, scope: !5345)
!5364 = !DILocation(line: 578, column: 9, scope: !5365)
!5365 = distinct !DILexicalBlock(scope: !5345, file: !3, line: 578, column: 2)
!5366 = !DILocation(line: 578, column: 7, scope: !5365)
!5367 = !DILocation(line: 578, column: 14, scope: !5368)
!5368 = distinct !DILexicalBlock(scope: !5365, file: !3, line: 578, column: 2)
!5369 = !DILocation(line: 578, column: 18, scope: !5368)
!5370 = !DILocation(line: 578, column: 24, scope: !5368)
!5371 = !DILocation(line: 578, column: 16, scope: !5368)
!5372 = !DILocation(line: 578, column: 2, scope: !5365)
!5373 = !DILocation(line: 579, column: 9, scope: !5374)
!5374 = distinct !DILexicalBlock(scope: !5368, file: !3, line: 578, column: 32)
!5375 = !DILocation(line: 579, column: 14, scope: !5374)
!5376 = !DILocation(line: 579, column: 7, scope: !5374)
!5377 = !DILocation(line: 580, column: 8, scope: !5374)
!5378 = !DILocation(line: 580, column: 13, scope: !5374)
!5379 = !DILocation(line: 580, column: 18, scope: !5374)
!5380 = !DILocation(line: 580, column: 25, scope: !5374)
!5381 = !DILocation(line: 580, column: 3, scope: !5374)
!5382 = !DILocation(line: 581, column: 2, scope: !5374)
!5383 = !DILocation(line: 578, column: 28, scope: !5368)
!5384 = !DILocation(line: 578, column: 2, scope: !5368)
!5385 = distinct !{!5385, !5372, !5386}
!5386 = !DILocation(line: 581, column: 2, scope: !5365)
!5387 = !DILocation(line: 582, column: 22, scope: !5345)
!5388 = !DILocation(line: 582, column: 2, scope: !5345)
!5389 = !DILocation(line: 582, column: 5, scope: !5345)
!5390 = !DILocation(line: 582, column: 14, scope: !5345)
!5391 = !DILocation(line: 582, column: 20, scope: !5345)
!5392 = !DILocation(line: 584, column: 9, scope: !5345)
!5393 = !DILocation(line: 584, column: 15, scope: !5345)
!5394 = !DILocation(line: 584, column: 2, scope: !5345)
!5395 = distinct !DISubprogram(name: "pci9111_di_insn_bits", scope: !3, file: !3, line: 587, type: !231, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5396 = !DILocalVariable(name: "dev", arg: 1, scope: !5395, file: !3, line: 587, type: !197)
!5397 = !DILocation(line: 587, column: 55, scope: !5395)
!5398 = !DILocalVariable(name: "s", arg: 2, scope: !5395, file: !3, line: 588, type: !233)
!5399 = !DILocation(line: 588, column: 30, scope: !5395)
!5400 = !DILocalVariable(name: "insn", arg: 3, scope: !5395, file: !3, line: 589, type: !3955)
!5401 = !DILocation(line: 589, column: 25, scope: !5395)
!5402 = !DILocalVariable(name: "data", arg: 4, scope: !5395, file: !3, line: 590, type: !2721)
!5403 = !DILocation(line: 590, column: 19, scope: !5395)
!5404 = !DILocation(line: 592, column: 16, scope: !5395)
!5405 = !DILocation(line: 592, column: 21, scope: !5395)
!5406 = !DILocation(line: 592, column: 28, scope: !5395)
!5407 = !DILocation(line: 592, column: 12, scope: !5395)
!5408 = !DILocation(line: 592, column: 2, scope: !5395)
!5409 = !DILocation(line: 592, column: 10, scope: !5395)
!5410 = !DILocation(line: 594, column: 9, scope: !5395)
!5411 = !DILocation(line: 594, column: 15, scope: !5395)
!5412 = !DILocation(line: 594, column: 2, scope: !5395)
!5413 = distinct !DISubprogram(name: "pci9111_do_insn_bits", scope: !3, file: !3, line: 597, type: !231, scopeLine: 601, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5414 = !DILocalVariable(name: "dev", arg: 1, scope: !5413, file: !3, line: 597, type: !197)
!5415 = !DILocation(line: 597, column: 55, scope: !5413)
!5416 = !DILocalVariable(name: "s", arg: 2, scope: !5413, file: !3, line: 598, type: !233)
!5417 = !DILocation(line: 598, column: 30, scope: !5413)
!5418 = !DILocalVariable(name: "insn", arg: 3, scope: !5413, file: !3, line: 599, type: !3955)
!5419 = !DILocation(line: 599, column: 25, scope: !5413)
!5420 = !DILocalVariable(name: "data", arg: 4, scope: !5413, file: !3, line: 600, type: !2721)
!5421 = !DILocation(line: 600, column: 19, scope: !5413)
!5422 = !DILocation(line: 602, column: 30, scope: !5423)
!5423 = distinct !DILexicalBlock(scope: !5413, file: !3, line: 602, column: 6)
!5424 = !DILocation(line: 602, column: 33, scope: !5423)
!5425 = !DILocation(line: 602, column: 6, scope: !5423)
!5426 = !DILocation(line: 602, column: 6, scope: !5413)
!5427 = !DILocation(line: 603, column: 8, scope: !5423)
!5428 = !DILocation(line: 603, column: 11, scope: !5423)
!5429 = !DILocation(line: 603, column: 18, scope: !5423)
!5430 = !DILocation(line: 603, column: 23, scope: !5423)
!5431 = !DILocation(line: 603, column: 30, scope: !5423)
!5432 = !DILocation(line: 603, column: 3, scope: !5423)
!5433 = !DILocation(line: 605, column: 12, scope: !5413)
!5434 = !DILocation(line: 605, column: 15, scope: !5413)
!5435 = !DILocation(line: 605, column: 2, scope: !5413)
!5436 = !DILocation(line: 605, column: 10, scope: !5413)
!5437 = !DILocation(line: 607, column: 9, scope: !5413)
!5438 = !DILocation(line: 607, column: 15, scope: !5413)
!5439 = !DILocation(line: 607, column: 2, scope: !5413)
!5440 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !5441, file: !5441, line: 666, type: !5442, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5441 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!5442 = !DISubroutineType(types: !5443)
!5443 = !{!147}
!5444 = !DILocalVariable(name: "f", scope: !5440, file: !5441, line: 668, type: !147)
!5445 = !DILocation(line: 668, column: 16, scope: !5440)
!5446 = !DILocation(line: 670, column: 6, scope: !5440)
!5447 = !DILocation(line: 670, column: 4, scope: !5440)
!5448 = !DILocation(line: 671, column: 2, scope: !5440)
!5449 = !DILocation(line: 672, column: 9, scope: !5440)
!5450 = !DILocation(line: 672, column: 2, scope: !5440)
!5451 = distinct !DISubprogram(name: "inb", scope: !4610, file: !4610, line: 334, type: !5452, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5452 = !DISubroutineType(types: !5453)
!5453 = !{!466, !196}
!5454 = !DILocalVariable(name: "port", arg: 1, scope: !5451, file: !4610, line: 334, type: !196)
!5455 = !DILocation(line: 334, column: 1, scope: !5451)
!5456 = !DILocalVariable(name: "value", scope: !5451, file: !4610, line: 334, type: !466)
!5457 = !{i32 -2143397796}
!5458 = distinct !DISubprogram(name: "pci9111_handle_fifo_half_full", scope: !3, file: !3, line: 406, type: !5459, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5459 = !DISubroutineType(types: !5460)
!5460 = !{null, !197, !233}
!5461 = !DILocalVariable(name: "dev", arg: 1, scope: !5458, file: !3, line: 406, type: !197)
!5462 = !DILocation(line: 406, column: 65, scope: !5458)
!5463 = !DILocalVariable(name: "s", arg: 2, scope: !5458, file: !3, line: 407, type: !233)
!5464 = !DILocation(line: 407, column: 33, scope: !5458)
!5465 = !DILocalVariable(name: "devpriv", scope: !5458, file: !3, line: 409, type: !4337)
!5466 = !DILocation(line: 409, column: 31, scope: !5458)
!5467 = !DILocation(line: 409, column: 41, scope: !5458)
!5468 = !DILocation(line: 409, column: 46, scope: !5458)
!5469 = !DILocalVariable(name: "cmd", scope: !5458, file: !3, line: 410, type: !3942)
!5470 = !DILocation(line: 410, column: 21, scope: !5458)
!5471 = !DILocation(line: 410, column: 28, scope: !5458)
!5472 = !DILocation(line: 410, column: 31, scope: !5458)
!5473 = !DILocation(line: 410, column: 38, scope: !5458)
!5474 = !DILocalVariable(name: "buf", scope: !5458, file: !3, line: 411, type: !148)
!5475 = !DILocation(line: 411, column: 18, scope: !5458)
!5476 = !DILocation(line: 411, column: 24, scope: !5458)
!5477 = !DILocation(line: 411, column: 33, scope: !5458)
!5478 = !DILocalVariable(name: "samples", scope: !5458, file: !3, line: 412, type: !7)
!5479 = !DILocation(line: 412, column: 15, scope: !5458)
!5480 = !DILocation(line: 414, column: 33, scope: !5458)
!5481 = !DILocation(line: 414, column: 12, scope: !5458)
!5482 = !DILocation(line: 414, column: 10, scope: !5458)
!5483 = !DILocation(line: 415, column: 7, scope: !5458)
!5484 = !DILocation(line: 415, column: 12, scope: !5458)
!5485 = !DILocation(line: 415, column: 19, scope: !5458)
!5486 = !DILocation(line: 415, column: 42, scope: !5458)
!5487 = !DILocation(line: 415, column: 47, scope: !5458)
!5488 = !DILocation(line: 415, column: 2, scope: !5458)
!5489 = !DILocation(line: 417, column: 6, scope: !5490)
!5490 = distinct !DILexicalBlock(scope: !5458, file: !3, line: 417, column: 6)
!5491 = !DILocation(line: 417, column: 15, scope: !5490)
!5492 = !DILocation(line: 417, column: 26, scope: !5490)
!5493 = !DILocation(line: 417, column: 6, scope: !5458)
!5494 = !DILocation(line: 418, column: 28, scope: !5495)
!5495 = distinct !DILexicalBlock(scope: !5490, file: !3, line: 417, column: 31)
!5496 = !DILocation(line: 418, column: 31, scope: !5495)
!5497 = !DILocation(line: 418, column: 36, scope: !5495)
!5498 = !DILocation(line: 418, column: 3, scope: !5495)
!5499 = !DILocation(line: 419, column: 2, scope: !5495)
!5500 = !DILocalVariable(name: "pos", scope: !5501, file: !3, line: 420, type: !7)
!5501 = distinct !DILexicalBlock(scope: !5490, file: !3, line: 419, column: 9)
!5502 = !DILocation(line: 420, column: 16, scope: !5501)
!5503 = !DILocalVariable(name: "to_read", scope: !5501, file: !3, line: 421, type: !7)
!5504 = !DILocation(line: 421, column: 16, scope: !5501)
!5505 = !DILocation(line: 423, column: 3, scope: !5501)
!5506 = !DILocation(line: 423, column: 10, scope: !5501)
!5507 = !DILocation(line: 423, column: 16, scope: !5501)
!5508 = !DILocation(line: 423, column: 14, scope: !5501)
!5509 = !DILocation(line: 424, column: 8, scope: !5510)
!5510 = distinct !DILexicalBlock(scope: !5511, file: !3, line: 424, column: 8)
!5511 = distinct !DILexicalBlock(scope: !5501, file: !3, line: 423, column: 25)
!5512 = !DILocation(line: 424, column: 17, scope: !5510)
!5513 = !DILocation(line: 424, column: 33, scope: !5510)
!5514 = !DILocation(line: 424, column: 38, scope: !5510)
!5515 = !DILocation(line: 424, column: 31, scope: !5510)
!5516 = !DILocation(line: 424, column: 8, scope: !5511)
!5517 = !DILocation(line: 425, column: 15, scope: !5518)
!5518 = distinct !DILexicalBlock(scope: !5510, file: !3, line: 424, column: 52)
!5519 = !DILocation(line: 425, column: 20, scope: !5518)
!5520 = !DILocation(line: 426, column: 8, scope: !5518)
!5521 = !DILocation(line: 426, column: 17, scope: !5518)
!5522 = !DILocation(line: 425, column: 33, scope: !5518)
!5523 = !DILocation(line: 425, column: 13, scope: !5518)
!5524 = !DILocation(line: 428, column: 9, scope: !5525)
!5525 = distinct !DILexicalBlock(scope: !5518, file: !3, line: 428, column: 9)
!5526 = !DILocation(line: 428, column: 19, scope: !5525)
!5527 = !DILocation(line: 428, column: 29, scope: !5525)
!5528 = !DILocation(line: 428, column: 27, scope: !5525)
!5529 = !DILocation(line: 428, column: 17, scope: !5525)
!5530 = !DILocation(line: 428, column: 9, scope: !5518)
!5531 = !DILocation(line: 429, column: 16, scope: !5525)
!5532 = !DILocation(line: 429, column: 26, scope: !5525)
!5533 = !DILocation(line: 429, column: 24, scope: !5525)
!5534 = !DILocation(line: 429, column: 14, scope: !5525)
!5535 = !DILocation(line: 429, column: 6, scope: !5525)
!5536 = !DILocation(line: 431, column: 30, scope: !5518)
!5537 = !DILocation(line: 431, column: 33, scope: !5518)
!5538 = !DILocation(line: 431, column: 39, scope: !5518)
!5539 = !DILocation(line: 431, column: 37, scope: !5518)
!5540 = !DILocation(line: 431, column: 44, scope: !5518)
!5541 = !DILocation(line: 431, column: 5, scope: !5518)
!5542 = !DILocation(line: 432, column: 4, scope: !5518)
!5543 = !DILocation(line: 433, column: 15, scope: !5544)
!5544 = distinct !DILexicalBlock(scope: !5510, file: !3, line: 432, column: 11)
!5545 = !DILocation(line: 433, column: 24, scope: !5544)
!5546 = !DILocation(line: 434, column: 8, scope: !5544)
!5547 = !DILocation(line: 434, column: 17, scope: !5544)
!5548 = !DILocation(line: 433, column: 42, scope: !5544)
!5549 = !DILocation(line: 433, column: 13, scope: !5544)
!5550 = !DILocation(line: 436, column: 9, scope: !5551)
!5551 = distinct !DILexicalBlock(scope: !5544, file: !3, line: 436, column: 9)
!5552 = !DILocation(line: 436, column: 19, scope: !5551)
!5553 = !DILocation(line: 436, column: 29, scope: !5551)
!5554 = !DILocation(line: 436, column: 27, scope: !5551)
!5555 = !DILocation(line: 436, column: 17, scope: !5551)
!5556 = !DILocation(line: 436, column: 9, scope: !5544)
!5557 = !DILocation(line: 437, column: 16, scope: !5551)
!5558 = !DILocation(line: 437, column: 26, scope: !5551)
!5559 = !DILocation(line: 437, column: 24, scope: !5551)
!5560 = !DILocation(line: 437, column: 14, scope: !5551)
!5561 = !DILocation(line: 437, column: 6, scope: !5551)
!5562 = !DILocation(line: 440, column: 11, scope: !5511)
!5563 = !DILocation(line: 440, column: 8, scope: !5511)
!5564 = !DILocation(line: 441, column: 30, scope: !5511)
!5565 = !DILocation(line: 441, column: 4, scope: !5511)
!5566 = !DILocation(line: 441, column: 13, scope: !5511)
!5567 = !DILocation(line: 441, column: 27, scope: !5511)
!5568 = !DILocation(line: 443, column: 8, scope: !5569)
!5569 = distinct !DILexicalBlock(scope: !5511, file: !3, line: 443, column: 8)
!5570 = !DILocation(line: 443, column: 17, scope: !5569)
!5571 = !DILocation(line: 444, column: 8, scope: !5569)
!5572 = !DILocation(line: 444, column: 17, scope: !5569)
!5573 = !DILocation(line: 443, column: 31, scope: !5569)
!5574 = !DILocation(line: 443, column: 8, scope: !5511)
!5575 = !DILocation(line: 445, column: 5, scope: !5569)
!5576 = !DILocation(line: 445, column: 14, scope: !5569)
!5577 = !DILocation(line: 445, column: 28, scope: !5569)
!5578 = distinct !{!5578, !5505, !5579}
!5579 = !DILocation(line: 446, column: 3, scope: !5501)
!5580 = !DILocation(line: 448, column: 1, scope: !5458)
!5581 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !5441, file: !5441, line: 646, type: !5442, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5582 = !DILocalVariable(name: "__ret", scope: !5583, file: !5441, line: 648, type: !147)
!5583 = distinct !DILexicalBlock(scope: !5581, file: !5441, line: 648, column: 9)
!5584 = !DILocation(line: 648, column: 9, scope: !5583)
!5585 = !DILocalVariable(name: "__edi", scope: !5583, file: !5441, line: 648, type: !147)
!5586 = !DILocalVariable(name: "__esi", scope: !5583, file: !5441, line: 648, type: !147)
!5587 = !DILocalVariable(name: "__edx", scope: !5583, file: !5441, line: 648, type: !147)
!5588 = !DILocalVariable(name: "__ecx", scope: !5583, file: !5441, line: 648, type: !147)
!5589 = !DILocalVariable(name: "__eax", scope: !5583, file: !5441, line: 648, type: !147)
!5590 = !DILocation(line: 648, column: 9, scope: !5591)
!5591 = distinct !DILexicalBlock(scope: !5592, file: !5441, line: 648, column: 9)
!5592 = distinct !DILexicalBlock(scope: !5583, file: !5441, line: 648, column: 9)
!5593 = !{i32 -2145771390, i32 -2145769075, i32 -2145768841, i32 -2145768790, i32 -2145768762, i32 -2145768737, i32 -2145769053, i32 -2145769040, i32 -2145768602, i32 -2145768483, i32 -2145768948, i32 -2145768921, i32 -2145768893, i32 -2145768863}
!5594 = !DILocalVariable(name: "__mask", scope: !5595, file: !5441, line: 648, type: !147)
!5595 = distinct !DILexicalBlock(scope: !5591, file: !5441, line: 648, column: 9)
!5596 = !DILocation(line: 648, column: 9, scope: !5595)
!5597 = !DILocation(line: 648, column: 9, scope: !5592)
!5598 = !DILocation(line: 648, column: 2, scope: !5581)
!5599 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !5441, file: !5441, line: 656, type: !156, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5600 = !DILocalVariable(name: "__edi", scope: !5601, file: !5441, line: 658, type: !147)
!5601 = distinct !DILexicalBlock(scope: !5599, file: !5441, line: 658, column: 2)
!5602 = !DILocation(line: 658, column: 2, scope: !5601)
!5603 = !DILocalVariable(name: "__esi", scope: !5601, file: !5441, line: 658, type: !147)
!5604 = !DILocalVariable(name: "__edx", scope: !5601, file: !5441, line: 658, type: !147)
!5605 = !DILocalVariable(name: "__ecx", scope: !5601, file: !5441, line: 658, type: !147)
!5606 = !DILocalVariable(name: "__eax", scope: !5601, file: !5441, line: 658, type: !147)
!5607 = !{i32 -2145764296, i32 -2145763564, i32 -2145763330, i32 -2145763279, i32 -2145763251, i32 -2145763226, i32 -2145763542, i32 -2145763529, i32 -2145763091, i32 -2145762972, i32 -2145763437, i32 -2145763410, i32 -2145763382, i32 -2145763352}
!5608 = !DILocation(line: 659, column: 1, scope: !5599)
!5609 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !5441, file: !5441, line: 651, type: !5610, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5610 = !DISubroutineType(types: !5611)
!5611 = !{null, !147}
!5612 = !DILocalVariable(name: "f", arg: 1, scope: !5609, file: !5441, line: 651, type: !147)
!5613 = !DILocation(line: 651, column: 65, scope: !5609)
!5614 = !DILocalVariable(name: "__edi", scope: !5615, file: !5441, line: 653, type: !147)
!5615 = distinct !DILexicalBlock(scope: !5609, file: !5441, line: 653, column: 2)
!5616 = !DILocation(line: 653, column: 2, scope: !5615)
!5617 = !DILocalVariable(name: "__esi", scope: !5615, file: !5441, line: 653, type: !147)
!5618 = !DILocalVariable(name: "__edx", scope: !5615, file: !5441, line: 653, type: !147)
!5619 = !DILocalVariable(name: "__ecx", scope: !5615, file: !5441, line: 653, type: !147)
!5620 = !DILocalVariable(name: "__eax", scope: !5615, file: !5441, line: 653, type: !147)
!5621 = !{i32 -2145766923, i32 -2145766173, i32 -2145765939, i32 -2145765888, i32 -2145765860, i32 -2145765835, i32 -2145766151, i32 -2145766138, i32 -2145765700, i32 -2145765581, i32 -2145766046, i32 -2145766019, i32 -2145765991, i32 -2145765961}
!5622 = !DILocation(line: 654, column: 1, scope: !5609)
!5623 = distinct !DISubprogram(name: "insw", scope: !4610, file: !4610, line: 335, type: !5624, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5624 = !DISubroutineType(types: !5625)
!5625 = !{null, !196, !209, !147}
!5626 = !DILocalVariable(name: "port", arg: 1, scope: !5623, file: !4610, line: 335, type: !196)
!5627 = !DILocation(line: 335, column: 1, scope: !5623)
!5628 = !DILocalVariable(name: "addr", arg: 2, scope: !5623, file: !4610, line: 335, type: !209)
!5629 = !DILocalVariable(name: "count", arg: 3, scope: !5623, file: !4610, line: 335, type: !147)
!5630 = !DILocation(line: 335, column: 1, scope: !5631)
!5631 = distinct !DILexicalBlock(scope: !5623, file: !4610, line: 335, column: 1)
!5632 = !DILocalVariable(name: "value", scope: !5633, file: !4610, line: 335, type: !148)
!5633 = distinct !DILexicalBlock(scope: !5631, file: !4610, line: 335, column: 1)
!5634 = !DILocation(line: 335, column: 1, scope: !5633)
!5635 = !DILocation(line: 335, column: 1, scope: !5636)
!5636 = distinct !DILexicalBlock(scope: !5633, file: !4610, line: 335, column: 1)
!5637 = distinct !{!5637, !5634, !5634}
!5638 = !DILocation(line: 335, column: 1, scope: !5639)
!5639 = distinct !DILexicalBlock(scope: !5631, file: !4610, line: 335, column: 1)
!5640 = !{i32 -2143393847}
!5641 = distinct !DISubprogram(name: "sev_key_active", scope: !4610, file: !4610, line: 270, type: !3234, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5642 = !DILocation(line: 270, column: 43, scope: !5641)
!5643 = distinct !DISubprogram(name: "inw", scope: !4610, file: !4610, line: 335, type: !5644, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5644 = !DISubroutineType(types: !5645)
!5645 = !{!149, !196}
!5646 = !DILocalVariable(name: "port", arg: 1, scope: !5643, file: !4610, line: 335, type: !196)
!5647 = !DILocation(line: 335, column: 1, scope: !5643)
!5648 = !DILocalVariable(name: "value", scope: !5643, file: !4610, line: 335, type: !149)
!5649 = !{i32 -2143395053}
!5650 = distinct !DISubprogram(name: "pci9111_fifo_reset", scope: !3, file: !3, line: 174, type: !3992, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5651 = !DILocalVariable(name: "dev", arg: 1, scope: !5650, file: !3, line: 174, type: !197)
!5652 = !DILocation(line: 174, column: 54, scope: !5650)
!5653 = !DILocalVariable(name: "int_ctrl_reg", scope: !5650, file: !3, line: 176, type: !147)
!5654 = !DILocation(line: 176, column: 16, scope: !5650)
!5655 = !DILocation(line: 176, column: 31, scope: !5650)
!5656 = !DILocation(line: 176, column: 36, scope: !5650)
!5657 = !DILocation(line: 176, column: 43, scope: !5650)
!5658 = !DILocation(line: 179, column: 10, scope: !5650)
!5659 = !DILocation(line: 179, column: 2, scope: !5650)
!5660 = !DILocation(line: 180, column: 30, scope: !5650)
!5661 = !DILocation(line: 180, column: 2, scope: !5650)
!5662 = !DILocation(line: 181, column: 10, scope: !5650)
!5663 = !DILocation(line: 181, column: 2, scope: !5650)
!5664 = !DILocation(line: 182, column: 1, scope: !5650)
!5665 = distinct !DISubprogram(name: "pci9111_ai_eoc", scope: !3, file: !3, line: 516, type: !5666, scopeLine: 520, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5666 = !DISubroutineType(types: !5667)
!5667 = !{!196, !197, !233, !3955, !147}
!5668 = !DILocalVariable(name: "dev", arg: 1, scope: !5665, file: !3, line: 516, type: !197)
!5669 = !DILocation(line: 516, column: 49, scope: !5665)
!5670 = !DILocalVariable(name: "s", arg: 2, scope: !5665, file: !3, line: 517, type: !233)
!5671 = !DILocation(line: 517, column: 31, scope: !5665)
!5672 = !DILocalVariable(name: "insn", arg: 3, scope: !5665, file: !3, line: 518, type: !3955)
!5673 = !DILocation(line: 518, column: 26, scope: !5665)
!5674 = !DILocalVariable(name: "context", arg: 4, scope: !5665, file: !3, line: 519, type: !147)
!5675 = !DILocation(line: 519, column: 20, scope: !5665)
!5676 = !DILocalVariable(name: "status", scope: !5665, file: !3, line: 521, type: !7)
!5677 = !DILocation(line: 521, column: 15, scope: !5665)
!5678 = !DILocation(line: 523, column: 15, scope: !5665)
!5679 = !DILocation(line: 523, column: 20, scope: !5665)
!5680 = !DILocation(line: 523, column: 27, scope: !5665)
!5681 = !DILocation(line: 523, column: 11, scope: !5665)
!5682 = !DILocation(line: 523, column: 9, scope: !5665)
!5683 = !DILocation(line: 524, column: 6, scope: !5684)
!5684 = distinct !DILexicalBlock(scope: !5665, file: !3, line: 524, column: 6)
!5685 = !DILocation(line: 524, column: 13, scope: !5684)
!5686 = !DILocation(line: 524, column: 6, scope: !5665)
!5687 = !DILocation(line: 525, column: 3, scope: !5684)
!5688 = !DILocation(line: 526, column: 2, scope: !5665)
!5689 = !DILocation(line: 527, column: 1, scope: !5665)
!5690 = distinct !DISubprogram(name: "comedi_check_trigger_src", scope: !128, file: !128, line: 859, type: !5691, scopeLine: 861, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5691 = !DISubroutineType(types: !5692)
!5692 = !{!196, !2721, !7}
!5693 = !DILocalVariable(name: "src", arg: 1, scope: !5690, file: !128, line: 859, type: !2721)
!5694 = !DILocation(line: 859, column: 58, scope: !5690)
!5695 = !DILocalVariable(name: "flags", arg: 2, scope: !5690, file: !128, line: 860, type: !7)
!5696 = !DILocation(line: 860, column: 22, scope: !5690)
!5697 = !DILocalVariable(name: "orig_src", scope: !5690, file: !128, line: 862, type: !7)
!5698 = !DILocation(line: 862, column: 15, scope: !5690)
!5699 = !DILocation(line: 862, column: 27, scope: !5690)
!5700 = !DILocation(line: 862, column: 26, scope: !5690)
!5701 = !DILocation(line: 864, column: 9, scope: !5690)
!5702 = !DILocation(line: 864, column: 20, scope: !5690)
!5703 = !DILocation(line: 864, column: 18, scope: !5690)
!5704 = !DILocation(line: 864, column: 3, scope: !5690)
!5705 = !DILocation(line: 864, column: 7, scope: !5690)
!5706 = !DILocation(line: 865, column: 7, scope: !5707)
!5707 = distinct !DILexicalBlock(scope: !5690, file: !128, line: 865, column: 6)
!5708 = !DILocation(line: 865, column: 6, scope: !5707)
!5709 = !DILocation(line: 865, column: 11, scope: !5707)
!5710 = !DILocation(line: 865, column: 27, scope: !5707)
!5711 = !DILocation(line: 865, column: 31, scope: !5707)
!5712 = !DILocation(line: 865, column: 30, scope: !5707)
!5713 = !DILocation(line: 865, column: 38, scope: !5707)
!5714 = !DILocation(line: 865, column: 35, scope: !5707)
!5715 = !DILocation(line: 865, column: 6, scope: !5690)
!5716 = !DILocation(line: 866, column: 3, scope: !5707)
!5717 = !DILocation(line: 867, column: 2, scope: !5690)
!5718 = !DILocation(line: 868, column: 1, scope: !5690)
!5719 = distinct !DISubprogram(name: "comedi_check_trigger_is_unique", scope: !128, file: !128, line: 878, type: !5720, scopeLine: 879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5720 = !DISubroutineType(types: !5721)
!5721 = !{!196, !7}
!5722 = !DILocalVariable(name: "src", arg: 1, scope: !5719, file: !128, line: 878, type: !7)
!5723 = !DILocation(line: 878, column: 63, scope: !5719)
!5724 = !DILocation(line: 881, column: 7, scope: !5725)
!5725 = distinct !DILexicalBlock(scope: !5719, file: !128, line: 881, column: 6)
!5726 = !DILocation(line: 881, column: 14, scope: !5725)
!5727 = !DILocation(line: 881, column: 18, scope: !5725)
!5728 = !DILocation(line: 881, column: 11, scope: !5725)
!5729 = !DILocation(line: 881, column: 24, scope: !5725)
!5730 = !DILocation(line: 881, column: 6, scope: !5719)
!5731 = !DILocation(line: 882, column: 3, scope: !5725)
!5732 = !DILocation(line: 883, column: 2, scope: !5719)
!5733 = !DILocation(line: 884, column: 1, scope: !5719)
!5734 = distinct !DISubprogram(name: "comedi_check_trigger_arg_is", scope: !128, file: !128, line: 897, type: !5691, scopeLine: 899, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5735 = !DILocalVariable(name: "arg", arg: 1, scope: !5734, file: !128, line: 897, type: !2721)
!5736 = !DILocation(line: 897, column: 61, scope: !5734)
!5737 = !DILocalVariable(name: "val", arg: 2, scope: !5734, file: !128, line: 898, type: !7)
!5738 = !DILocation(line: 898, column: 25, scope: !5734)
!5739 = !DILocation(line: 900, column: 7, scope: !5740)
!5740 = distinct !DILexicalBlock(scope: !5734, file: !128, line: 900, column: 6)
!5741 = !DILocation(line: 900, column: 6, scope: !5740)
!5742 = !DILocation(line: 900, column: 14, scope: !5740)
!5743 = !DILocation(line: 900, column: 11, scope: !5740)
!5744 = !DILocation(line: 900, column: 6, scope: !5734)
!5745 = !DILocation(line: 901, column: 10, scope: !5746)
!5746 = distinct !DILexicalBlock(scope: !5740, file: !128, line: 900, column: 19)
!5747 = !DILocation(line: 901, column: 4, scope: !5746)
!5748 = !DILocation(line: 901, column: 8, scope: !5746)
!5749 = !DILocation(line: 902, column: 3, scope: !5746)
!5750 = !DILocation(line: 904, column: 2, scope: !5734)
!5751 = !DILocation(line: 905, column: 1, scope: !5734)
!5752 = distinct !DISubprogram(name: "comedi_check_trigger_arg_min", scope: !128, file: !128, line: 918, type: !5691, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5753 = !DILocalVariable(name: "arg", arg: 1, scope: !5752, file: !128, line: 918, type: !2721)
!5754 = !DILocation(line: 918, column: 62, scope: !5752)
!5755 = !DILocalVariable(name: "val", arg: 2, scope: !5752, file: !128, line: 919, type: !7)
!5756 = !DILocation(line: 919, column: 26, scope: !5752)
!5757 = !DILocation(line: 921, column: 7, scope: !5758)
!5758 = distinct !DILexicalBlock(scope: !5752, file: !128, line: 921, column: 6)
!5759 = !DILocation(line: 921, column: 6, scope: !5758)
!5760 = !DILocation(line: 921, column: 13, scope: !5758)
!5761 = !DILocation(line: 921, column: 11, scope: !5758)
!5762 = !DILocation(line: 921, column: 6, scope: !5752)
!5763 = !DILocation(line: 922, column: 10, scope: !5764)
!5764 = distinct !DILexicalBlock(scope: !5758, file: !128, line: 921, column: 18)
!5765 = !DILocation(line: 922, column: 4, scope: !5764)
!5766 = !DILocation(line: 922, column: 8, scope: !5764)
!5767 = !DILocation(line: 923, column: 3, scope: !5764)
!5768 = !DILocation(line: 925, column: 2, scope: !5752)
!5769 = !DILocation(line: 926, column: 1, scope: !5752)
!5770 = distinct !DISubprogram(name: "pci9111_ai_check_chanlist", scope: !3, file: !3, line: 201, type: !3940, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5771 = !DILocalVariable(name: "dev", arg: 1, scope: !5770, file: !3, line: 201, type: !197)
!5772 = !DILocation(line: 201, column: 60, scope: !5770)
!5773 = !DILocalVariable(name: "s", arg: 2, scope: !5770, file: !3, line: 202, type: !233)
!5774 = !DILocation(line: 202, column: 35, scope: !5770)
!5775 = !DILocalVariable(name: "cmd", arg: 3, scope: !5770, file: !3, line: 203, type: !3942)
!5776 = !DILocation(line: 203, column: 29, scope: !5770)
!5777 = !DILocalVariable(name: "range0", scope: !5770, file: !3, line: 205, type: !7)
!5778 = !DILocation(line: 205, column: 15, scope: !5770)
!5779 = !DILocation(line: 205, column: 24, scope: !5770)
!5780 = !DILocalVariable(name: "aref0", scope: !5770, file: !3, line: 206, type: !7)
!5781 = !DILocation(line: 206, column: 15, scope: !5770)
!5782 = !DILocation(line: 206, column: 23, scope: !5770)
!5783 = !DILocalVariable(name: "i", scope: !5770, file: !3, line: 207, type: !196)
!5784 = !DILocation(line: 207, column: 6, scope: !5770)
!5785 = !DILocation(line: 209, column: 9, scope: !5786)
!5786 = distinct !DILexicalBlock(scope: !5770, file: !3, line: 209, column: 2)
!5787 = !DILocation(line: 209, column: 7, scope: !5786)
!5788 = !DILocation(line: 209, column: 14, scope: !5789)
!5789 = distinct !DILexicalBlock(scope: !5786, file: !3, line: 209, column: 2)
!5790 = !DILocation(line: 209, column: 18, scope: !5789)
!5791 = !DILocation(line: 209, column: 23, scope: !5789)
!5792 = !DILocation(line: 209, column: 16, scope: !5789)
!5793 = !DILocation(line: 209, column: 2, scope: !5786)
!5794 = !DILocalVariable(name: "chan", scope: !5795, file: !3, line: 210, type: !7)
!5795 = distinct !DILexicalBlock(scope: !5789, file: !3, line: 209, column: 42)
!5796 = !DILocation(line: 210, column: 16, scope: !5795)
!5797 = !DILocation(line: 210, column: 23, scope: !5795)
!5798 = !DILocalVariable(name: "range", scope: !5795, file: !3, line: 211, type: !7)
!5799 = !DILocation(line: 211, column: 16, scope: !5795)
!5800 = !DILocation(line: 211, column: 24, scope: !5795)
!5801 = !DILocalVariable(name: "aref", scope: !5795, file: !3, line: 212, type: !7)
!5802 = !DILocation(line: 212, column: 16, scope: !5795)
!5803 = !DILocation(line: 212, column: 23, scope: !5795)
!5804 = !DILocation(line: 214, column: 7, scope: !5805)
!5805 = distinct !DILexicalBlock(scope: !5795, file: !3, line: 214, column: 7)
!5806 = !DILocation(line: 214, column: 15, scope: !5805)
!5807 = !DILocation(line: 214, column: 12, scope: !5805)
!5808 = !DILocation(line: 214, column: 7, scope: !5795)
!5809 = !DILocation(line: 217, column: 4, scope: !5810)
!5810 = distinct !DILexicalBlock(scope: !5805, file: !3, line: 214, column: 18)
!5811 = !DILocation(line: 220, column: 7, scope: !5812)
!5812 = distinct !DILexicalBlock(scope: !5795, file: !3, line: 220, column: 7)
!5813 = !DILocation(line: 220, column: 16, scope: !5812)
!5814 = !DILocation(line: 220, column: 13, scope: !5812)
!5815 = !DILocation(line: 220, column: 7, scope: !5795)
!5816 = !DILocation(line: 223, column: 4, scope: !5817)
!5817 = distinct !DILexicalBlock(scope: !5812, file: !3, line: 220, column: 24)
!5818 = !DILocation(line: 226, column: 7, scope: !5819)
!5819 = distinct !DILexicalBlock(scope: !5795, file: !3, line: 226, column: 7)
!5820 = !DILocation(line: 226, column: 15, scope: !5819)
!5821 = !DILocation(line: 226, column: 12, scope: !5819)
!5822 = !DILocation(line: 226, column: 7, scope: !5795)
!5823 = !DILocation(line: 229, column: 4, scope: !5824)
!5824 = distinct !DILexicalBlock(scope: !5819, file: !3, line: 226, column: 22)
!5825 = !DILocation(line: 231, column: 2, scope: !5795)
!5826 = !DILocation(line: 209, column: 38, scope: !5789)
!5827 = !DILocation(line: 209, column: 2, scope: !5789)
!5828 = distinct !{!5828, !5793, !5829}
!5829 = !DILocation(line: 231, column: 2, scope: !5786)
!5830 = !DILocation(line: 233, column: 2, scope: !5770)
!5831 = !DILocation(line: 234, column: 1, scope: !5770)
!5832 = distinct !DISubprogram(name: "pci9111_interrupt_source_set", scope: !3, file: !3, line: 151, type: !5833, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5833 = !DISubroutineType(types: !5834)
!5834 = !{null, !197, !138, !142}
!5835 = !DILocalVariable(name: "dev", arg: 1, scope: !5832, file: !3, line: 151, type: !197)
!5836 = !DILocation(line: 151, column: 64, scope: !5832)
!5837 = !DILocalVariable(name: "irq_0_source", arg: 2, scope: !5832, file: !3, line: 152, type: !138)
!5838 = !DILocation(line: 152, column: 33, scope: !5832)
!5839 = !DILocalVariable(name: "irq_1_source", arg: 3, scope: !5832, file: !3, line: 153, type: !142)
!5840 = !DILocation(line: 153, column: 33, scope: !5832)
!5841 = !DILocalVariable(name: "flags", scope: !5832, file: !3, line: 155, type: !196)
!5842 = !DILocation(line: 155, column: 6, scope: !5832)
!5843 = !DILocation(line: 158, column: 14, scope: !5832)
!5844 = !DILocation(line: 158, column: 19, scope: !5832)
!5845 = !DILocation(line: 158, column: 26, scope: !5832)
!5846 = !DILocation(line: 158, column: 10, scope: !5832)
!5847 = !DILocation(line: 158, column: 8, scope: !5832)
!5848 = !DILocation(line: 160, column: 8, scope: !5832)
!5849 = !DILocation(line: 162, column: 8, scope: !5832)
!5850 = !DILocation(line: 165, column: 6, scope: !5851)
!5851 = distinct !DILexicalBlock(scope: !5832, file: !3, line: 165, column: 6)
!5852 = !DILocation(line: 165, column: 19, scope: !5851)
!5853 = !DILocation(line: 165, column: 6, scope: !5832)
!5854 = !DILocation(line: 166, column: 9, scope: !5851)
!5855 = !DILocation(line: 166, column: 3, scope: !5851)
!5856 = !DILocation(line: 168, column: 6, scope: !5857)
!5857 = distinct !DILexicalBlock(scope: !5832, file: !3, line: 168, column: 6)
!5858 = !DILocation(line: 168, column: 19, scope: !5857)
!5859 = !DILocation(line: 168, column: 6, scope: !5832)
!5860 = !DILocation(line: 169, column: 9, scope: !5857)
!5861 = !DILocation(line: 169, column: 3, scope: !5857)
!5862 = !DILocation(line: 171, column: 7, scope: !5832)
!5863 = !DILocation(line: 171, column: 14, scope: !5832)
!5864 = !DILocation(line: 171, column: 19, scope: !5832)
!5865 = !DILocation(line: 171, column: 26, scope: !5832)
!5866 = !DILocation(line: 171, column: 2, scope: !5832)
!5867 = !DILocation(line: 172, column: 1, scope: !5832)
!5868 = distinct !DISubprogram(name: "comedi_bytes_to_samples", scope: !128, file: !128, line: 825, type: !5869, scopeLine: 827, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5869 = !DISubroutineType(types: !5870)
!5870 = !{!7, !233, !7}
!5871 = !DILocalVariable(name: "s", arg: 1, scope: !5868, file: !128, line: 825, type: !233)
!5872 = !DILocation(line: 825, column: 77, scope: !5868)
!5873 = !DILocalVariable(name: "nbytes", arg: 2, scope: !5868, file: !128, line: 826, type: !7)
!5874 = !DILocation(line: 826, column: 23, scope: !5868)
!5875 = !DILocation(line: 828, column: 9, scope: !5868)
!5876 = !DILocation(line: 828, column: 39, scope: !5868)
!5877 = !DILocation(line: 828, column: 19, scope: !5868)
!5878 = !DILocation(line: 828, column: 16, scope: !5868)
!5879 = !DILocation(line: 828, column: 2, scope: !5868)
!5880 = distinct !DISubprogram(name: "comedi_sample_shift", scope: !128, file: !128, line: 813, type: !5881, scopeLine: 814, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5881 = !DISubroutineType(types: !5882)
!5882 = !{!7, !233}
!5883 = !DILocalVariable(name: "s", arg: 1, scope: !5880, file: !128, line: 813, type: !233)
!5884 = !DILocation(line: 813, column: 73, scope: !5880)
!5885 = !DILocation(line: 815, column: 9, scope: !5880)
!5886 = !DILocation(line: 815, column: 12, scope: !5880)
!5887 = !DILocation(line: 815, column: 25, scope: !5880)
!5888 = !DILocation(line: 815, column: 2, scope: !5880)
!5889 = distinct !DISubprogram(name: "outw", scope: !4610, file: !4610, line: 335, type: !5890, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5890 = !DISubroutineType(types: !5891)
!5891 = !{null, !149, !196}
!5892 = !DILocalVariable(name: "value", arg: 1, scope: !5889, file: !4610, line: 335, type: !149)
!5893 = !DILocation(line: 335, column: 1, scope: !5889)
!5894 = !DILocalVariable(name: "port", arg: 2, scope: !5889, file: !4610, line: 335, type: !196)
!5895 = !{i32 -2143395255}
!5896 = distinct !DISubprogram(name: "pci9111_pci_probe", scope: !3, file: !3, line: 723, type: !4042, scopeLine: 725, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5897 = !DILocalVariable(name: "dev", arg: 1, scope: !5896, file: !3, line: 723, type: !4044)
!5898 = !DILocation(line: 723, column: 46, scope: !5896)
!5899 = !DILocalVariable(name: "id", arg: 2, scope: !5896, file: !3, line: 724, type: !4029)
!5900 = !DILocation(line: 724, column: 37, scope: !5896)
!5901 = !DILocation(line: 726, column: 32, scope: !5896)
!5902 = !DILocation(line: 727, column: 11, scope: !5896)
!5903 = !DILocation(line: 727, column: 15, scope: !5896)
!5904 = !DILocation(line: 726, column: 9, scope: !5896)
!5905 = !DILocation(line: 726, column: 2, scope: !5896)
