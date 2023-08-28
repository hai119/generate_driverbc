; ModuleID = '../bcout/drivers/staging/comedi/drivers/adv_pci1710.llvm.bc'
source_filename = "drivers/staging/comedi/drivers/adv_pci1710.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_adv_pci1710_driver_init6:\09\09\09"
module asm ".long\09adv_pci1710_driver_init - .\09\09\09"
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
%struct.boardtype = type { i8*, %struct.comedi_lrange*, i8 }
%struct.pci1710_private = type { i32, i32, i32, i32, i8, [32 x i32], i8, i8, i8 }

@__UNIQUE_ID___addressable_adv_pci1710_driver_init234 = internal global i8* bitcast (i32 ()* @adv_pci1710_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@adv_pci1710_driver = internal global %struct.comedi_driver { %struct.comedi_driver* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), %struct.module* null, i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* null, void (%struct.comedi_device*)* @comedi_pci_detach, i32 (%struct.comedi_device*, i64)* @pci1710_auto_attach, i32 0, i8** null, i32 0 }, align 8, !dbg !170
@adv_pci1710_pci_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), %struct.pci_device_id* getelementptr inbounds ([17 x %struct.pci_device_id], [17 x %struct.pci_device_id]* @adv_pci1710_pci_table, i32 0, i32 0), i32 (%struct.pci_dev*, %struct.pci_device_id*)* @adv_pci1710_pci_probe, void (%struct.pci_dev*)* @comedi_pci_auto_unconfig, i32 (%struct.pci_dev*, i32)* null, i32 (%struct.pci_dev*)* null, void (%struct.pci_dev*)* null, i32 (%struct.pci_dev*, i32)* null, %struct.pci_error_handlers* null, %struct.attribute_group** null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, align 8, !dbg !4031
@__exitcall_adv_pci1710_driver_exit = internal global void ()* @adv_pci1710_driver_exit, section ".exitcall.exit", align 8, !dbg !141
@__UNIQUE_ID_author235 = internal constant [49 x i8] c"adv_pci1710.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1, !dbg !148
@__UNIQUE_ID_description236 = internal constant [82 x i8] c"adv_pci1710.description=Comedi: Advantech PCI-1710 Series Multifunction DAS Cards\00", section ".modinfo", align 1, !dbg !155
@__UNIQUE_ID_file237 = internal constant [60 x i8] c"adv_pci1710.file=drivers/staging/comedi/drivers/adv_pci1710\00", section ".modinfo", align 1, !dbg !160
@__UNIQUE_ID_license238 = internal constant [24 x i8] c"adv_pci1710.license=GPL\00", section ".modinfo", align 1, !dbg !165
@.str = private unnamed_addr constant [12 x i8] c"adv_pci1710\00", align 1
@boardtypes = internal constant [5 x %struct.boardtype] [%struct.boardtype { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), %struct.comedi_lrange* bitcast ({ i32, [9 x %struct.comedi_krange] }* @pci1710_ai_range to %struct.comedi_lrange*), i8 4 }, %struct.boardtype { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), %struct.comedi_lrange* bitcast ({ i32, [12 x %struct.comedi_krange] }* @pci1710hg_ai_range to %struct.comedi_lrange*), i8 4 }, %struct.boardtype { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), %struct.comedi_lrange* bitcast ({ i32, [5 x %struct.comedi_krange] }* @pci1711_ai_range to %struct.comedi_lrange*), i8 5 }, %struct.boardtype { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), %struct.comedi_lrange* bitcast ({ i32, [9 x %struct.comedi_krange] }* @pci1710_ai_range to %struct.comedi_lrange*), i8 2 }, %struct.boardtype { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), %struct.comedi_lrange* bitcast ({ i32, [5 x %struct.comedi_krange] }* @pci1711_ai_range to %struct.comedi_lrange*), i8 1 }], align 16, !dbg !4010
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"pci1710\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"pci1710hg\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"pci1711\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"pci1713\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"pci1731\00", align 1
@pci1710_ai_range = internal constant { i32, [9 x %struct.comedi_krange] } { i32 9, [9 x %struct.comedi_krange] [%struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }, %struct.comedi_krange { i32 -625000, i32 625000, i32 0 }, %struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 2500000, i32 0 }, %struct.comedi_krange { i32 0, i32 1250000, i32 0 }] }, align 4, !dbg !4023
@pci1710hg_ai_range = internal constant { i32, [12 x %struct.comedi_krange] } { i32 12, [12 x %struct.comedi_krange] [%struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -500000, i32 500000, i32 0 }, %struct.comedi_krange { i32 -50000, i32 50000, i32 0 }, %struct.comedi_krange { i32 -5000, i32 5000, i32 0 }, %struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -1000000, i32 1000000, i32 0 }, %struct.comedi_krange { i32 -100000, i32 100000, i32 0 }, %struct.comedi_krange { i32 -10000, i32 10000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 1000000, i32 0 }, %struct.comedi_krange { i32 0, i32 100000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000, i32 0 }] }, align 4, !dbg !4025
@pci1711_ai_range = internal constant { i32, [5 x %struct.comedi_krange] } { i32 5, [5 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }, %struct.comedi_krange { i32 -625000, i32 625000, i32 0 }] }, align 4, !dbg !4027
@.str.9 = private unnamed_addr constant [57 x i8] c"A/D data dropout: received from channel %d, expected %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"Odd channel cannot be differential input!\0A\00", align 1
@.str.11 = private unnamed_addr constant [72 x i8] c"channel list must be continuous! chanlist[%i]=%d but must be %d or %d!\0A\00", align 1
@.str.12 = private unnamed_addr constant [81 x i8] c"bad channel, reference or range number! chanlist[%i]=%d,%d,%d and not %d,%d,%d!\0A\00", align 1
@pci171x_ao_range = internal constant { i32, [3 x %struct.comedi_krange] } { i32 3, [3 x %struct.comedi_krange] [%struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 1000000, i32 256 }] }, align 4, !dbg !4029
@adv_pci1710_pci_table = internal constant [17 x %struct.pci_device_id] [%struct.pci_device_id { i32 5118, i32 5904, i32 4277, i32 36944, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 5118, i32 5904, i32 5118, i32 0, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 5118, i32 5904, i32 5118, i32 45312, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 5118, i32 5904, i32 5118, i32 45568, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 5118, i32 5904, i32 5118, i32 49408, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 5118, i32 5904, i32 5118, i32 49664, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 5118, i32 5904, i32 4096, i32 53504, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 5118, i32 5904, i32 5118, i32 2, i32 0, i32 0, i64 1 }, %struct.pci_device_id { i32 5118, i32 5904, i32 5118, i32 45314, i32 0, i32 0, i64 1 }, %struct.pci_device_id { i32 5118, i32 5904, i32 5118, i32 45570, i32 0, i32 0, i64 1 }, %struct.pci_device_id { i32 5118, i32 5904, i32 5118, i32 49410, i32 0, i32 0, i64 1 }, %struct.pci_device_id { i32 5118, i32 5904, i32 5118, i32 49666, i32 0, i32 0, i64 1 }, %struct.pci_device_id { i32 5118, i32 5904, i32 4096, i32 53506, i32 0, i32 0, i64 1 }, %struct.pci_device_id { i32 5118, i32 5905, i32 -1, i32 -1, i32 0, i32 0, i64 2 }, %struct.pci_device_id { i32 5118, i32 5907, i32 -1, i32 -1, i32 0, i32 0, i64 3 }, %struct.pci_device_id { i32 5118, i32 5937, i32 -1, i32 -1, i32 0, i32 0, i64 4 }, %struct.pci_device_id zeroinitializer], align 16, !dbg !4312
@llvm.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_adv_pci1710_driver_init234 to i8*), i8* bitcast (void ()* @adv_pci1710_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_adv_pci1710_driver_exit to i8*), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__UNIQUE_ID_author235, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @__UNIQUE_ID_description236, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__UNIQUE_ID_file237, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__UNIQUE_ID_license238, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @adv_pci1710_driver_init() #0 section ".init.text" !dbg !4320 {
entry:
  %call = call i32 @comedi_pci_driver_register(%struct.comedi_driver* @adv_pci1710_driver, %struct.pci_driver* @adv_pci1710_pci_driver) #5, !dbg !4322
  ret i32 %call, !dbg !4322
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @adv_pci1710_driver_exit() #0 section ".exit.text" !dbg !4323 {
entry:
  call void @comedi_pci_driver_unregister(%struct.comedi_driver* @adv_pci1710_driver, %struct.pci_driver* @adv_pci1710_pci_driver) #5, !dbg !4324
  ret void, !dbg !4324
}

; Function Attrs: noredzone
declare dso_local void @comedi_pci_driver_unregister(%struct.comedi_driver*, %struct.pci_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_pci_driver_register(%struct.comedi_driver*, %struct.pci_driver*) #1

; Function Attrs: noredzone
declare dso_local void @comedi_pci_detach(%struct.comedi_device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci1710_auto_attach(%struct.comedi_device* %dev, i64 %context) #2 !dbg !4325 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %context.addr = alloca i64, align 8
  %pcidev = alloca %struct.pci_dev*, align 8
  %board = alloca %struct.boardtype*, align 8
  %devpriv = alloca %struct.pci1710_private*, align 8
  %s = alloca %struct.comedi_subdevice*, align 8
  %ret = alloca i32, align 4
  %subdev = alloca i32, align 4
  %n_subdevices = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4326, metadata !DIExpression()), !dbg !4327
  store i64 %context, i64* %context.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %context.addr, metadata !4328, metadata !DIExpression()), !dbg !4329
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pcidev, metadata !4330, metadata !DIExpression()), !dbg !4331
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4332
  %call = call %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device* %0) #5, !dbg !4333
  store %struct.pci_dev* %call, %struct.pci_dev** %pcidev, align 8, !dbg !4331
  call void @llvm.dbg.declare(metadata %struct.boardtype** %board, metadata !4334, metadata !DIExpression()), !dbg !4336
  store %struct.boardtype* null, %struct.boardtype** %board, align 8, !dbg !4336
  call void @llvm.dbg.declare(metadata %struct.pci1710_private** %devpriv, metadata !4337, metadata !DIExpression()), !dbg !4351
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s, metadata !4352, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4354, metadata !DIExpression()), !dbg !4355
  call void @llvm.dbg.declare(metadata i32* %subdev, metadata !4356, metadata !DIExpression()), !dbg !4357
  call void @llvm.dbg.declare(metadata i32* %n_subdevices, metadata !4358, metadata !DIExpression()), !dbg !4359
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4360, metadata !DIExpression()), !dbg !4361
  %1 = load i64, i64* %context.addr, align 8, !dbg !4362
  %cmp = icmp ult i64 %1, 5, !dbg !4364
  br i1 %cmp, label %if.then, label %if.end, !dbg !4365

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %context.addr, align 8, !dbg !4366
  %arrayidx = getelementptr [5 x %struct.boardtype], [5 x %struct.boardtype]* @boardtypes, i64 0, i64 %2, !dbg !4367
  store %struct.boardtype* %arrayidx, %struct.boardtype** %board, align 8, !dbg !4368
  br label %if.end, !dbg !4369

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.boardtype*, %struct.boardtype** %board, align 8, !dbg !4370
  %tobool = icmp ne %struct.boardtype* %3, null, !dbg !4370
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !4372

if.then1:                                         ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !4373
  br label %return, !dbg !4373

if.end2:                                          ; preds = %if.end
  %4 = load %struct.boardtype*, %struct.boardtype** %board, align 8, !dbg !4374
  %5 = bitcast %struct.boardtype* %4 to i8*, !dbg !4374
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4375
  %board_ptr = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 9, !dbg !4376
  store i8* %5, i8** %board_ptr, align 8, !dbg !4377
  %7 = load %struct.boardtype*, %struct.boardtype** %board, align 8, !dbg !4378
  %name = getelementptr inbounds %struct.boardtype, %struct.boardtype* %7, i32 0, i32 0, !dbg !4379
  %8 = load i8*, i8** %name, align 8, !dbg !4379
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4380
  %board_name = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 8, !dbg !4381
  store i8* %8, i8** %board_name, align 8, !dbg !4382
  %10 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4383
  %call3 = call i8* @comedi_alloc_devpriv(%struct.comedi_device* %10, i64 152) #5, !dbg !4384
  %11 = bitcast i8* %call3 to %struct.pci1710_private*, !dbg !4384
  store %struct.pci1710_private* %11, %struct.pci1710_private** %devpriv, align 8, !dbg !4385
  %12 = load %struct.pci1710_private*, %struct.pci1710_private** %devpriv, align 8, !dbg !4386
  %tobool4 = icmp ne %struct.pci1710_private* %12, null, !dbg !4386
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !4388

if.then5:                                         ; preds = %if.end2
  store i32 -12, i32* %retval, align 4, !dbg !4389
  br label %return, !dbg !4389

if.end6:                                          ; preds = %if.end2
  %13 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4390
  %call7 = call i32 @comedi_pci_enable(%struct.comedi_device* %13) #5, !dbg !4391
  store i32 %call7, i32* %ret, align 4, !dbg !4392
  %14 = load i32, i32* %ret, align 4, !dbg !4393
  %tobool8 = icmp ne i32 %14, 0, !dbg !4393
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !4395

if.then9:                                         ; preds = %if.end6
  %15 = load i32, i32* %ret, align 4, !dbg !4396
  store i32 %15, i32* %retval, align 4, !dbg !4397
  br label %return, !dbg !4397

if.end10:                                         ; preds = %if.end6
  %16 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4398
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 44, !dbg !4398
  %arrayidx11 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 2, !dbg !4398
  %start = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx11, i32 0, i32 0, !dbg !4398
  %17 = load i64, i64* %start, align 8, !dbg !4398
  %18 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4399
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 18, !dbg !4400
  store i64 %17, i64* %iobase, align 8, !dbg !4401
  %19 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4402
  %iobase12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %19, i32 0, i32 18, !dbg !4403
  %20 = load i64, i64* %iobase12, align 8, !dbg !4403
  %add = add i64 %20, 24, !dbg !4404
  %call13 = call %struct.comedi_8254* @comedi_8254_init(i64 %add, i32 100, i32 2, i32 0) #5, !dbg !4405
  %21 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4406
  %pacer = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %21, i32 0, i32 2, !dbg !4407
  store %struct.comedi_8254* %call13, %struct.comedi_8254** %pacer, align 8, !dbg !4408
  %22 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4409
  %pacer14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %22, i32 0, i32 2, !dbg !4411
  %23 = load %struct.comedi_8254*, %struct.comedi_8254** %pacer14, align 8, !dbg !4411
  %tobool15 = icmp ne %struct.comedi_8254* %23, null, !dbg !4409
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !4412

if.then16:                                        ; preds = %if.end10
  store i32 -12, i32* %retval, align 4, !dbg !4413
  br label %return, !dbg !4413

if.end17:                                         ; preds = %if.end10
  store i32 1, i32* %n_subdevices, align 4, !dbg !4414
  %24 = load %struct.boardtype*, %struct.boardtype** %board, align 8, !dbg !4415
  %has_ao = getelementptr inbounds %struct.boardtype, %struct.boardtype* %24, i32 0, i32 2, !dbg !4417
  %bf.load = load i8, i8* %has_ao, align 8, !dbg !4417
  %bf.lshr = lshr i8 %bf.load, 2, !dbg !4417
  %bf.clear = and i8 %bf.lshr, 1, !dbg !4417
  %bf.cast = zext i8 %bf.clear to i32, !dbg !4417
  %tobool18 = icmp ne i32 %bf.cast, 0, !dbg !4415
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !4418

if.then19:                                        ; preds = %if.end17
  %25 = load i32, i32* %n_subdevices, align 4, !dbg !4419
  %inc = add i32 %25, 1, !dbg !4419
  store i32 %inc, i32* %n_subdevices, align 4, !dbg !4419
  br label %if.end20, !dbg !4420

if.end20:                                         ; preds = %if.then19, %if.end17
  %26 = load %struct.boardtype*, %struct.boardtype** %board, align 8, !dbg !4421
  %is_pci1713 = getelementptr inbounds %struct.boardtype, %struct.boardtype* %26, i32 0, i32 2, !dbg !4423
  %bf.load21 = load i8, i8* %is_pci1713, align 8, !dbg !4423
  %bf.lshr22 = lshr i8 %bf.load21, 1, !dbg !4423
  %bf.clear23 = and i8 %bf.lshr22, 1, !dbg !4423
  %bf.cast24 = zext i8 %bf.clear23 to i32, !dbg !4423
  %tobool25 = icmp ne i32 %bf.cast24, 0, !dbg !4421
  br i1 %tobool25, label %if.end28, label %if.then26, !dbg !4424

if.then26:                                        ; preds = %if.end20
  %27 = load i32, i32* %n_subdevices, align 4, !dbg !4425
  %add27 = add i32 %27, 3, !dbg !4425
  store i32 %add27, i32* %n_subdevices, align 4, !dbg !4425
  br label %if.end28, !dbg !4427

if.end28:                                         ; preds = %if.then26, %if.end20
  %28 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4428
  %29 = load i32, i32* %n_subdevices, align 4, !dbg !4429
  %call29 = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %28, i32 %29) #5, !dbg !4430
  store i32 %call29, i32* %ret, align 4, !dbg !4431
  %30 = load i32, i32* %ret, align 4, !dbg !4432
  %tobool30 = icmp ne i32 %30, 0, !dbg !4432
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !4434

if.then31:                                        ; preds = %if.end28
  %31 = load i32, i32* %ret, align 4, !dbg !4435
  store i32 %31, i32* %retval, align 4, !dbg !4436
  br label %return, !dbg !4436

if.end32:                                         ; preds = %if.end28
  %32 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4437
  call void @pci1710_reset(%struct.comedi_device* %32) #5, !dbg !4438
  %33 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4439
  %irq = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 43, !dbg !4441
  %34 = load i32, i32* %irq, align 4, !dbg !4441
  %tobool33 = icmp ne i32 %34, 0, !dbg !4439
  br i1 %tobool33, label %if.then34, label %if.end43, !dbg !4442

if.then34:                                        ; preds = %if.end32
  %35 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4443
  %irq35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 43, !dbg !4445
  %36 = load i32, i32* %irq35, align 4, !dbg !4445
  %37 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4446
  %board_name36 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %37, i32 0, i32 8, !dbg !4447
  %38 = load i8*, i8** %board_name36, align 8, !dbg !4447
  %39 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4448
  %40 = bitcast %struct.comedi_device* %39 to i8*, !dbg !4448
  %call37 = call i32 @request_irq(i32 %36, i32 (i32, i8*)* @pci1710_irq_handler, i64 128, i8* %38, i8* %40) #5, !dbg !4449
  store i32 %call37, i32* %ret, align 4, !dbg !4450
  %41 = load i32, i32* %ret, align 4, !dbg !4451
  %cmp38 = icmp eq i32 %41, 0, !dbg !4453
  br i1 %cmp38, label %if.then39, label %if.end42, !dbg !4454

if.then39:                                        ; preds = %if.then34
  %42 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4455
  %irq40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 43, !dbg !4456
  %43 = load i32, i32* %irq40, align 4, !dbg !4456
  %44 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4457
  %irq41 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %44, i32 0, i32 20, !dbg !4458
  store i32 %43, i32* %irq41, align 8, !dbg !4459
  br label %if.end42, !dbg !4457

if.end42:                                         ; preds = %if.then39, %if.then34
  br label %if.end43, !dbg !4460

if.end43:                                         ; preds = %if.end42, %if.end32
  store i32 0, i32* %subdev, align 4, !dbg !4461
  %45 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4462
  %subdevices = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %45, i32 0, i32 16, !dbg !4463
  %46 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices, align 8, !dbg !4463
  %47 = load i32, i32* %subdev, align 4, !dbg !4464
  %inc44 = add i32 %47, 1, !dbg !4464
  store i32 %inc44, i32* %subdev, align 4, !dbg !4464
  %idxprom = sext i32 %47 to i64, !dbg !4462
  %arrayidx45 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %46, i64 %idxprom, !dbg !4462
  store %struct.comedi_subdevice* %arrayidx45, %struct.comedi_subdevice** %s, align 8, !dbg !4465
  %48 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4466
  %type = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %48, i32 0, i32 2, !dbg !4467
  store i32 1, i32* %type, align 4, !dbg !4468
  %49 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4469
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %49, i32 0, i32 4, !dbg !4470
  store i32 1114112, i32* %subdev_flags, align 4, !dbg !4471
  %50 = load %struct.boardtype*, %struct.boardtype** %board, align 8, !dbg !4472
  %is_pci1711 = getelementptr inbounds %struct.boardtype, %struct.boardtype* %50, i32 0, i32 2, !dbg !4474
  %bf.load46 = load i8, i8* %is_pci1711, align 8, !dbg !4474
  %bf.clear47 = and i8 %bf.load46, 1, !dbg !4474
  %bf.cast48 = zext i8 %bf.clear47 to i32, !dbg !4474
  %tobool49 = icmp ne i32 %bf.cast48, 0, !dbg !4472
  br i1 %tobool49, label %if.end52, label %if.then50, !dbg !4475

if.then50:                                        ; preds = %if.end43
  %51 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4476
  %subdev_flags51 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %51, i32 0, i32 4, !dbg !4477
  %52 = load i32, i32* %subdev_flags51, align 4, !dbg !4478
  %or = or i32 %52, 4194304, !dbg !4478
  store i32 %or, i32* %subdev_flags51, align 4, !dbg !4478
  br label %if.end52, !dbg !4476

if.end52:                                         ; preds = %if.then50, %if.end43
  %53 = load %struct.boardtype*, %struct.boardtype** %board, align 8, !dbg !4479
  %is_pci171353 = getelementptr inbounds %struct.boardtype, %struct.boardtype* %53, i32 0, i32 2, !dbg !4480
  %bf.load54 = load i8, i8* %is_pci171353, align 8, !dbg !4480
  %bf.lshr55 = lshr i8 %bf.load54, 1, !dbg !4480
  %bf.clear56 = and i8 %bf.lshr55, 1, !dbg !4480
  %bf.cast57 = zext i8 %bf.clear56 to i32, !dbg !4480
  %tobool58 = icmp ne i32 %bf.cast57, 0, !dbg !4479
  %54 = zext i1 %tobool58 to i64, !dbg !4479
  %cond = select i1 %tobool58, i32 32, i32 16, !dbg !4479
  %55 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4481
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %55, i32 0, i32 3, !dbg !4482
  store i32 %cond, i32* %n_chan, align 8, !dbg !4483
  %56 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4484
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %56, i32 0, i32 13, !dbg !4485
  store i32 4095, i32* %maxdata, align 8, !dbg !4486
  %57 = load %struct.boardtype*, %struct.boardtype** %board, align 8, !dbg !4487
  %ai_range = getelementptr inbounds %struct.boardtype, %struct.boardtype* %57, i32 0, i32 1, !dbg !4488
  %58 = load %struct.comedi_lrange*, %struct.comedi_lrange** %ai_range, align 8, !dbg !4488
  %59 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4489
  %range_table = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %59, i32 0, i32 15, !dbg !4490
  store %struct.comedi_lrange* %58, %struct.comedi_lrange** %range_table, align 8, !dbg !4491
  %60 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4492
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %60, i32 0, i32 18, !dbg !4493
  %insn_read59 = bitcast {}** %insn_read to i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)**, !dbg !4493
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @pci1710_ai_insn_read, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_read59, align 8, !dbg !4494
  %61 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4495
  %irq60 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %61, i32 0, i32 20, !dbg !4497
  %62 = load i32, i32* %irq60, align 8, !dbg !4497
  %tobool61 = icmp ne i32 %62, 0, !dbg !4495
  br i1 %tobool61, label %if.then62, label %if.end66, !dbg !4498

if.then62:                                        ; preds = %if.end52
  %63 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4499
  %64 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4501
  %read_subdev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %64, i32 0, i32 21, !dbg !4502
  store %struct.comedi_subdevice* %63, %struct.comedi_subdevice** %read_subdev, align 8, !dbg !4503
  %65 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4504
  %subdev_flags63 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %65, i32 0, i32 4, !dbg !4505
  %66 = load i32, i32* %subdev_flags63, align 4, !dbg !4506
  %or64 = or i32 %66, 32768, !dbg !4506
  store i32 %or64, i32* %subdev_flags63, align 4, !dbg !4506
  %67 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4507
  %n_chan65 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %67, i32 0, i32 3, !dbg !4508
  %68 = load i32, i32* %n_chan65, align 8, !dbg !4508
  %69 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4509
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %69, i32 0, i32 5, !dbg !4510
  store i32 %68, i32* %len_chanlist, align 8, !dbg !4511
  %70 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4512
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %70, i32 0, i32 23, !dbg !4513
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @pci1710_ai_cmdtest, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)** %do_cmdtest, align 8, !dbg !4514
  %71 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4515
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %71, i32 0, i32 22, !dbg !4516
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @pci1710_ai_cmd, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)** %do_cmd, align 8, !dbg !4517
  %72 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4518
  %cancel = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %72, i32 0, i32 25, !dbg !4519
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @pci1710_ai_cancel, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)** %cancel, align 8, !dbg !4520
  br label %if.end66, !dbg !4521

if.end66:                                         ; preds = %if.then62, %if.end52
  store i32 0, i32* %i, align 4, !dbg !4522
  br label %for.cond, !dbg !4524

for.cond:                                         ; preds = %for.inc, %if.end66
  %73 = load i32, i32* %i, align 4, !dbg !4525
  %74 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4527
  %range_table67 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %74, i32 0, i32 15, !dbg !4528
  %75 = load %struct.comedi_lrange*, %struct.comedi_lrange** %range_table67, align 8, !dbg !4528
  %length = getelementptr inbounds %struct.comedi_lrange, %struct.comedi_lrange* %75, i32 0, i32 0, !dbg !4529
  %76 = load i32, i32* %length, align 4, !dbg !4529
  %cmp68 = icmp slt i32 %73, %76, !dbg !4530
  br i1 %cmp68, label %for.body, label %for.end, !dbg !4531

for.body:                                         ; preds = %for.cond
  %77 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4532
  %78 = load i32, i32* %i, align 4, !dbg !4535
  %call69 = call zeroext i1 @comedi_range_is_unipolar(%struct.comedi_subdevice* %77, i32 %78) #5, !dbg !4536
  br i1 %call69, label %if.then70, label %if.end71, !dbg !4537

if.then70:                                        ; preds = %for.body
  %79 = load i32, i32* %i, align 4, !dbg !4538
  %conv = trunc i32 %79 to i8, !dbg !4538
  %80 = load %struct.pci1710_private*, %struct.pci1710_private** %devpriv, align 8, !dbg !4540
  %unipolar_gain = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %80, i32 0, i32 8, !dbg !4541
  store i8 %conv, i8* %unipolar_gain, align 2, !dbg !4542
  br label %for.end, !dbg !4543

if.end71:                                         ; preds = %for.body
  br label %for.inc, !dbg !4544

for.inc:                                          ; preds = %if.end71
  %81 = load i32, i32* %i, align 4, !dbg !4545
  %inc72 = add i32 %81, 1, !dbg !4545
  store i32 %inc72, i32* %i, align 4, !dbg !4545
  br label %for.cond, !dbg !4546, !llvm.loop !4547

for.end:                                          ; preds = %if.then70, %for.cond
  %82 = load %struct.boardtype*, %struct.boardtype** %board, align 8, !dbg !4549
  %has_ao73 = getelementptr inbounds %struct.boardtype, %struct.boardtype* %82, i32 0, i32 2, !dbg !4551
  %bf.load74 = load i8, i8* %has_ao73, align 8, !dbg !4551
  %bf.lshr75 = lshr i8 %bf.load74, 2, !dbg !4551
  %bf.clear76 = and i8 %bf.lshr75, 1, !dbg !4551
  %bf.cast77 = zext i8 %bf.clear76 to i32, !dbg !4551
  %tobool78 = icmp ne i32 %bf.cast77, 0, !dbg !4549
  br i1 %tobool78, label %if.then79, label %if.end94, !dbg !4552

if.then79:                                        ; preds = %for.end
  %83 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4553
  %subdevices80 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %83, i32 0, i32 16, !dbg !4555
  %84 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices80, align 8, !dbg !4555
  %85 = load i32, i32* %subdev, align 4, !dbg !4556
  %inc81 = add i32 %85, 1, !dbg !4556
  store i32 %inc81, i32* %subdev, align 4, !dbg !4556
  %idxprom82 = sext i32 %85 to i64, !dbg !4553
  %arrayidx83 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %84, i64 %idxprom82, !dbg !4553
  store %struct.comedi_subdevice* %arrayidx83, %struct.comedi_subdevice** %s, align 8, !dbg !4557
  %86 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4558
  %type84 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %86, i32 0, i32 2, !dbg !4559
  store i32 2, i32* %type84, align 4, !dbg !4560
  %87 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4561
  %subdev_flags85 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %87, i32 0, i32 4, !dbg !4562
  store i32 1179648, i32* %subdev_flags85, align 4, !dbg !4563
  %88 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4564
  %n_chan86 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %88, i32 0, i32 3, !dbg !4565
  store i32 2, i32* %n_chan86, align 8, !dbg !4566
  %89 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4567
  %maxdata87 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %89, i32 0, i32 13, !dbg !4568
  store i32 4095, i32* %maxdata87, align 8, !dbg !4569
  %90 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4570
  %range_table88 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %90, i32 0, i32 15, !dbg !4571
  store %struct.comedi_lrange* bitcast ({ i32, [3 x %struct.comedi_krange] }* @pci171x_ao_range to %struct.comedi_lrange*), %struct.comedi_lrange** %range_table88, align 8, !dbg !4572
  %91 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4573
  %insn_write = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %91, i32 0, i32 19, !dbg !4574
  %insn_write89 = bitcast {}** %insn_write to i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)**, !dbg !4574
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @pci1710_ao_insn_write, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_write89, align 8, !dbg !4575
  %92 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4576
  %call90 = call i32 @comedi_alloc_subdev_readback(%struct.comedi_subdevice* %92) #5, !dbg !4577
  store i32 %call90, i32* %ret, align 4, !dbg !4578
  %93 = load i32, i32* %ret, align 4, !dbg !4579
  %tobool91 = icmp ne i32 %93, 0, !dbg !4579
  br i1 %tobool91, label %if.then92, label %if.end93, !dbg !4581

if.then92:                                        ; preds = %if.then79
  %94 = load i32, i32* %ret, align 4, !dbg !4582
  store i32 %94, i32* %retval, align 4, !dbg !4583
  br label %return, !dbg !4583

if.end93:                                         ; preds = %if.then79
  br label %if.end94, !dbg !4584

if.end94:                                         ; preds = %if.end93, %for.end
  %95 = load %struct.boardtype*, %struct.boardtype** %board, align 8, !dbg !4585
  %is_pci171395 = getelementptr inbounds %struct.boardtype, %struct.boardtype* %95, i32 0, i32 2, !dbg !4587
  %bf.load96 = load i8, i8* %is_pci171395, align 8, !dbg !4587
  %bf.lshr97 = lshr i8 %bf.load96, 1, !dbg !4587
  %bf.clear98 = and i8 %bf.lshr97, 1, !dbg !4587
  %bf.cast99 = zext i8 %bf.clear98 to i32, !dbg !4587
  %tobool100 = icmp ne i32 %bf.cast99, 0, !dbg !4585
  br i1 %tobool100, label %if.end131, label %if.then101, !dbg !4588

if.then101:                                       ; preds = %if.end94
  %96 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4589
  %subdevices102 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %96, i32 0, i32 16, !dbg !4591
  %97 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices102, align 8, !dbg !4591
  %98 = load i32, i32* %subdev, align 4, !dbg !4592
  %inc103 = add i32 %98, 1, !dbg !4592
  store i32 %inc103, i32* %subdev, align 4, !dbg !4592
  %idxprom104 = sext i32 %98 to i64, !dbg !4589
  %arrayidx105 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %97, i64 %idxprom104, !dbg !4589
  store %struct.comedi_subdevice* %arrayidx105, %struct.comedi_subdevice** %s, align 8, !dbg !4593
  %99 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4594
  %type106 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %99, i32 0, i32 2, !dbg !4595
  store i32 3, i32* %type106, align 4, !dbg !4596
  %100 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4597
  %subdev_flags107 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %100, i32 0, i32 4, !dbg !4598
  store i32 65536, i32* %subdev_flags107, align 4, !dbg !4599
  %101 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4600
  %n_chan108 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %101, i32 0, i32 3, !dbg !4601
  store i32 16, i32* %n_chan108, align 8, !dbg !4602
  %102 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4603
  %maxdata109 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %102, i32 0, i32 13, !dbg !4604
  store i32 1, i32* %maxdata109, align 8, !dbg !4605
  %103 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4606
  %range_table110 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %103, i32 0, i32 15, !dbg !4607
  store %struct.comedi_lrange* @range_unipolar5, %struct.comedi_lrange** %range_table110, align 8, !dbg !4608
  %104 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4609
  %insn_bits = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %104, i32 0, i32 20, !dbg !4610
  %insn_bits111 = bitcast {}** %insn_bits to i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)**, !dbg !4610
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @pci1710_di_insn_bits, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_bits111, align 8, !dbg !4611
  %105 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4612
  %subdevices112 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %105, i32 0, i32 16, !dbg !4613
  %106 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices112, align 8, !dbg !4613
  %107 = load i32, i32* %subdev, align 4, !dbg !4614
  %inc113 = add i32 %107, 1, !dbg !4614
  store i32 %inc113, i32* %subdev, align 4, !dbg !4614
  %idxprom114 = sext i32 %107 to i64, !dbg !4612
  %arrayidx115 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %106, i64 %idxprom114, !dbg !4612
  store %struct.comedi_subdevice* %arrayidx115, %struct.comedi_subdevice** %s, align 8, !dbg !4615
  %108 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4616
  %type116 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %108, i32 0, i32 2, !dbg !4617
  store i32 4, i32* %type116, align 4, !dbg !4618
  %109 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4619
  %subdev_flags117 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %109, i32 0, i32 4, !dbg !4620
  store i32 131072, i32* %subdev_flags117, align 4, !dbg !4621
  %110 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4622
  %n_chan118 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %110, i32 0, i32 3, !dbg !4623
  store i32 16, i32* %n_chan118, align 8, !dbg !4624
  %111 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4625
  %maxdata119 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %111, i32 0, i32 13, !dbg !4626
  store i32 1, i32* %maxdata119, align 8, !dbg !4627
  %112 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4628
  %range_table120 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %112, i32 0, i32 15, !dbg !4629
  store %struct.comedi_lrange* @range_unipolar5, %struct.comedi_lrange** %range_table120, align 8, !dbg !4630
  %113 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4631
  %insn_bits121 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %113, i32 0, i32 20, !dbg !4632
  %insn_bits122 = bitcast {}** %insn_bits121 to i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)**, !dbg !4632
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @pci1710_do_insn_bits, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_bits122, align 8, !dbg !4633
  %114 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4634
  %subdevices123 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %114, i32 0, i32 16, !dbg !4635
  %115 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices123, align 8, !dbg !4635
  %116 = load i32, i32* %subdev, align 4, !dbg !4636
  %inc124 = add i32 %116, 1, !dbg !4636
  store i32 %inc124, i32* %subdev, align 4, !dbg !4636
  %idxprom125 = sext i32 %116 to i64, !dbg !4634
  %arrayidx126 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %115, i64 %idxprom125, !dbg !4634
  store %struct.comedi_subdevice* %arrayidx126, %struct.comedi_subdevice** %s, align 8, !dbg !4637
  %117 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4638
  %118 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4639
  %pacer127 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %118, i32 0, i32 2, !dbg !4640
  %119 = load %struct.comedi_8254*, %struct.comedi_8254** %pacer127, align 8, !dbg !4640
  call void @comedi_8254_subdevice_init(%struct.comedi_subdevice* %117, %struct.comedi_8254* %119) #5, !dbg !4641
  %120 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4642
  %pacer128 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %120, i32 0, i32 2, !dbg !4643
  %121 = load %struct.comedi_8254*, %struct.comedi_8254** %pacer128, align 8, !dbg !4643
  %insn_config = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %121, i32 0, i32 14, !dbg !4644
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @pci1710_counter_insn_config, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_config, align 8, !dbg !4645
  %122 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4646
  %pacer129 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %122, i32 0, i32 2, !dbg !4647
  %123 = load %struct.comedi_8254*, %struct.comedi_8254** %pacer129, align 8, !dbg !4647
  call void @comedi_8254_set_busy(%struct.comedi_8254* %123, i32 1, i1 zeroext true) #5, !dbg !4648
  %124 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4649
  %pacer130 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %124, i32 0, i32 2, !dbg !4650
  %125 = load %struct.comedi_8254*, %struct.comedi_8254** %pacer130, align 8, !dbg !4650
  call void @comedi_8254_set_busy(%struct.comedi_8254* %125, i32 2, i1 zeroext true) #5, !dbg !4651
  br label %if.end131, !dbg !4652

if.end131:                                        ; preds = %if.then101, %if.end94
  %126 = load %struct.boardtype*, %struct.boardtype** %board, align 8, !dbg !4653
  %is_pci1711132 = getelementptr inbounds %struct.boardtype, %struct.boardtype* %126, i32 0, i32 2, !dbg !4654
  %bf.load133 = load i8, i8* %is_pci1711132, align 8, !dbg !4654
  %bf.clear134 = and i8 %bf.load133, 1, !dbg !4654
  %bf.cast135 = zext i8 %bf.clear134 to i32, !dbg !4654
  %tobool136 = icmp ne i32 %bf.cast135, 0, !dbg !4655
  %127 = zext i1 %tobool136 to i64, !dbg !4655
  %cond137 = select i1 %tobool136, i32 512, i32 2048, !dbg !4655
  %128 = load %struct.pci1710_private*, %struct.pci1710_private** %devpriv, align 8, !dbg !4656
  %max_samples = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %128, i32 0, i32 0, !dbg !4657
  store i32 %cond137, i32* %max_samples, align 4, !dbg !4658
  store i32 0, i32* %retval, align 4, !dbg !4659
  br label %return, !dbg !4659

return:                                           ; preds = %if.end131, %if.then92, %if.then31, %if.then16, %if.then9, %if.then5, %if.then1
  %129 = load i32, i32* %retval, align 4, !dbg !4660
  ret i32 %129, !dbg !4660
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noredzone
declare dso_local %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device*) #1

; Function Attrs: noredzone
declare dso_local i8* @comedi_alloc_devpriv(%struct.comedi_device*, i64) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_pci_enable(%struct.comedi_device*) #1

; Function Attrs: noredzone
declare dso_local %struct.comedi_8254* @comedi_8254_init(i64, i32, i32, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pci1710_reset(%struct.comedi_device* %dev) #2 !dbg !4661 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %board = alloca %struct.boardtype*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4662, metadata !DIExpression()), !dbg !4663
  call void @llvm.dbg.declare(metadata %struct.boardtype** %board, metadata !4664, metadata !DIExpression()), !dbg !4665
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4666
  %board_ptr = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 9, !dbg !4667
  %1 = load i8*, i8** %board_ptr, align 8, !dbg !4667
  %2 = bitcast i8* %1 to %struct.boardtype*, !dbg !4666
  store %struct.boardtype* %2, %struct.boardtype** %board, align 8, !dbg !4665
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4668
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %3, i32 0, i32 18, !dbg !4669
  %4 = load i64, i64* %iobase, align 8, !dbg !4669
  %add = add i64 %4, 6, !dbg !4670
  %conv = trunc i64 %add to i32, !dbg !4668
  call void @outw(i16 zeroext 0, i32 %conv) #5, !dbg !4671
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4672
  %iobase1 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 18, !dbg !4673
  %6 = load i64, i64* %iobase1, align 8, !dbg !4673
  %add2 = add i64 %6, 9, !dbg !4674
  %conv3 = trunc i64 %add2 to i32, !dbg !4672
  call void @outb(i8 zeroext 0, i32 %conv3) #5, !dbg !4675
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4676
  %iobase4 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 18, !dbg !4677
  %8 = load i64, i64* %iobase4, align 8, !dbg !4677
  %add5 = add i64 %8, 8, !dbg !4678
  %conv6 = trunc i64 %add5 to i32, !dbg !4676
  call void @outb(i8 zeroext 0, i32 %conv6) #5, !dbg !4679
  %9 = load %struct.boardtype*, %struct.boardtype** %board, align 8, !dbg !4680
  %has_ao = getelementptr inbounds %struct.boardtype, %struct.boardtype* %9, i32 0, i32 2, !dbg !4682
  %bf.load = load i8, i8* %has_ao, align 8, !dbg !4682
  %bf.lshr = lshr i8 %bf.load, 2, !dbg !4682
  %bf.clear = and i8 %bf.lshr, 1, !dbg !4682
  %bf.cast = zext i8 %bf.clear to i32, !dbg !4682
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !4680
  br i1 %tobool, label %if.then, label %if.end, !dbg !4683

if.then:                                          ; preds = %entry
  %10 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4684
  %iobase7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 18, !dbg !4686
  %11 = load i64, i64* %iobase7, align 8, !dbg !4686
  %add8 = add i64 %11, 14, !dbg !4687
  %conv9 = trunc i64 %add8 to i32, !dbg !4684
  call void @outb(i8 zeroext 0, i32 %conv9) #5, !dbg !4688
  %12 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4689
  %iobase10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 18, !dbg !4690
  %13 = load i64, i64* %iobase10, align 8, !dbg !4690
  %add11 = add i64 %13, 10, !dbg !4691
  %conv12 = trunc i64 %add11 to i32, !dbg !4689
  call void @outw(i16 zeroext 0, i32 %conv12) #5, !dbg !4692
  %14 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4693
  %iobase13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 18, !dbg !4694
  %15 = load i64, i64* %iobase13, align 8, !dbg !4694
  %add14 = add i64 %15, 12, !dbg !4695
  %conv15 = trunc i64 %add14 to i32, !dbg !4693
  call void @outw(i16 zeroext 0, i32 %conv15) #5, !dbg !4696
  br label %if.end, !dbg !4697

if.end:                                           ; preds = %if.then, %entry
  %16 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4698
  %iobase16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 18, !dbg !4699
  %17 = load i64, i64* %iobase16, align 8, !dbg !4699
  %add17 = add i64 %17, 16, !dbg !4700
  %conv18 = trunc i64 %add17 to i32, !dbg !4698
  call void @outw(i16 zeroext 0, i32 %conv18) #5, !dbg !4701
  ret void, !dbg !4702
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @request_irq(i32 %irq, i32 (i32, i8*)* %handler, i64 %flags, i8* %name, i8* %dev) #2 !dbg !4703 {
entry:
  %irq.addr = alloca i32, align 4
  %handler.addr = alloca i32 (i32, i8*)*, align 8
  %flags.addr = alloca i64, align 8
  %name.addr = alloca i8*, align 8
  %dev.addr = alloca i8*, align 8
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !4711, metadata !DIExpression()), !dbg !4712
  store i32 (i32, i8*)* %handler, i32 (i32, i8*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i32, i8*)** %handler.addr, metadata !4713, metadata !DIExpression()), !dbg !4714
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !4715, metadata !DIExpression()), !dbg !4716
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !4717, metadata !DIExpression()), !dbg !4718
  store i8* %dev, i8** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev.addr, metadata !4719, metadata !DIExpression()), !dbg !4720
  %0 = load i32, i32* %irq.addr, align 4, !dbg !4721
  %1 = load i32 (i32, i8*)*, i32 (i32, i8*)** %handler.addr, align 8, !dbg !4722
  %2 = load i64, i64* %flags.addr, align 8, !dbg !4723
  %3 = load i8*, i8** %name.addr, align 8, !dbg !4724
  %4 = load i8*, i8** %dev.addr, align 8, !dbg !4725
  %call = call i32 @request_threaded_irq(i32 %0, i32 (i32, i8*)* %1, i32 (i32, i8*)* null, i64 %2, i8* %3, i8* %4) #5, !dbg !4726
  ret i32 %call, !dbg !4727
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci1710_irq_handler(i32 %irq, i8* %d) #2 !dbg !4728 {
entry:
  %retval = alloca i32, align 4
  %irq.addr = alloca i32, align 4
  %d.addr = alloca i8*, align 8
  %dev = alloca %struct.comedi_device*, align 8
  %devpriv = alloca %struct.pci1710_private*, align 8
  %s = alloca %struct.comedi_subdevice*, align 8
  %cmd = alloca %struct.comedi_cmd*, align 8
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !4729, metadata !DIExpression()), !dbg !4730
  store i8* %d, i8** %d.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %d.addr, metadata !4731, metadata !DIExpression()), !dbg !4732
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev, metadata !4733, metadata !DIExpression()), !dbg !4734
  %0 = load i8*, i8** %d.addr, align 8, !dbg !4735
  %1 = bitcast i8* %0 to %struct.comedi_device*, !dbg !4735
  store %struct.comedi_device* %1, %struct.comedi_device** %dev, align 8, !dbg !4734
  call void @llvm.dbg.declare(metadata %struct.pci1710_private** %devpriv, metadata !4736, metadata !DIExpression()), !dbg !4737
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4738
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %2, i32 0, i32 3, !dbg !4739
  %3 = load i8*, i8** %private, align 8, !dbg !4739
  %4 = bitcast i8* %3 to %struct.pci1710_private*, !dbg !4738
  store %struct.pci1710_private* %4, %struct.pci1710_private** %devpriv, align 8, !dbg !4737
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s, metadata !4740, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd, metadata !4742, metadata !DIExpression()), !dbg !4743
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4744
  %attached = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 10, !dbg !4746
  %bf.load = load i8, i8* %attached, align 8, !dbg !4746
  %bf.clear = and i8 %bf.load, 1, !dbg !4746
  %bf.cast = zext i8 %bf.clear to i32, !dbg !4746
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !4744
  br i1 %tobool, label %if.end, label %if.then, !dbg !4747

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4748
  br label %return, !dbg !4748

if.end:                                           ; preds = %entry
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4749
  %read_subdev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 21, !dbg !4750
  %7 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %read_subdev, align 8, !dbg !4750
  store %struct.comedi_subdevice* %7, %struct.comedi_subdevice** %s, align 8, !dbg !4751
  %8 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4752
  %async = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %8, i32 0, i32 7, !dbg !4753
  %9 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4753
  %cmd1 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %9, i32 0, i32 17, !dbg !4754
  store %struct.comedi_cmd* %cmd1, %struct.comedi_cmd** %cmd, align 8, !dbg !4755
  %10 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4756
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 18, !dbg !4758
  %11 = load i64, i64* %iobase, align 8, !dbg !4758
  %add = add i64 %11, 6, !dbg !4759
  %conv = trunc i64 %add to i32, !dbg !4756
  %call = call zeroext i16 @inw(i32 %conv) #5, !dbg !4760
  %conv2 = zext i16 %call to i64, !dbg !4760
  %and = and i64 %conv2, 2048, !dbg !4761
  %tobool3 = icmp ne i64 %and, 0, !dbg !4761
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !4762

if.then4:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4763
  br label %return, !dbg !4763

if.end5:                                          ; preds = %if.end
  %12 = load %struct.pci1710_private*, %struct.pci1710_private** %devpriv, align 8, !dbg !4764
  %ai_et = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %12, i32 0, i32 4, !dbg !4766
  %13 = load i8, i8* %ai_et, align 4, !dbg !4766
  %tobool6 = icmp ne i8 %13, 0, !dbg !4764
  br i1 %tobool6, label %if.then7, label %if.end36, !dbg !4767

if.then7:                                         ; preds = %if.end5
  %14 = load %struct.pci1710_private*, %struct.pci1710_private** %devpriv, align 8, !dbg !4768
  %ai_et8 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %14, i32 0, i32 4, !dbg !4770
  store i8 0, i8* %ai_et8, align 4, !dbg !4771
  %15 = load %struct.pci1710_private*, %struct.pci1710_private** %devpriv, align 8, !dbg !4772
  %ctrl = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %15, i32 0, i32 1, !dbg !4773
  %16 = load i32, i32* %ctrl, align 4, !dbg !4774
  %conv9 = zext i32 %16 to i64, !dbg !4774
  %and10 = and i64 %conv9, 64, !dbg !4774
  %conv11 = trunc i64 %and10 to i32, !dbg !4774
  store i32 %conv11, i32* %ctrl, align 4, !dbg !4774
  %17 = load %struct.pci1710_private*, %struct.pci1710_private** %devpriv, align 8, !dbg !4775
  %ctrl12 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %17, i32 0, i32 1, !dbg !4776
  %18 = load i32, i32* %ctrl12, align 4, !dbg !4777
  %conv13 = zext i32 %18 to i64, !dbg !4777
  %or = or i64 %conv13, 1, !dbg !4777
  %conv14 = trunc i64 %or to i32, !dbg !4777
  store i32 %conv14, i32* %ctrl12, align 4, !dbg !4777
  %19 = load %struct.pci1710_private*, %struct.pci1710_private** %devpriv, align 8, !dbg !4778
  %ctrl15 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %19, i32 0, i32 1, !dbg !4779
  %20 = load i32, i32* %ctrl15, align 4, !dbg !4779
  %conv16 = trunc i32 %20 to i16, !dbg !4778
  %21 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4780
  %iobase17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %21, i32 0, i32 18, !dbg !4781
  %22 = load i64, i64* %iobase17, align 8, !dbg !4781
  %add18 = add i64 %22, 6, !dbg !4782
  %conv19 = trunc i64 %add18 to i32, !dbg !4780
  call void @outw(i16 zeroext %conv16, i32 %conv19) #5, !dbg !4783
  %23 = load %struct.pci1710_private*, %struct.pci1710_private** %devpriv, align 8, !dbg !4784
  %ctrl_ext = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %23, i32 0, i32 2, !dbg !4785
  %24 = load i32, i32* %ctrl_ext, align 4, !dbg !4785
  %25 = load %struct.pci1710_private*, %struct.pci1710_private** %devpriv, align 8, !dbg !4786
  %ctrl20 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %25, i32 0, i32 1, !dbg !4787
  store i32 %24, i32* %ctrl20, align 4, !dbg !4788
  %26 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4789
  %iobase21 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %26, i32 0, i32 18, !dbg !4790
  %27 = load i64, i64* %iobase21, align 8, !dbg !4790
  %add22 = add i64 %27, 9, !dbg !4791
  %conv23 = trunc i64 %add22 to i32, !dbg !4789
  call void @outb(i8 zeroext 0, i32 %conv23) #5, !dbg !4792
  %28 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4793
  %iobase24 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %28, i32 0, i32 18, !dbg !4794
  %29 = load i64, i64* %iobase24, align 8, !dbg !4794
  %add25 = add i64 %29, 8, !dbg !4795
  %conv26 = trunc i64 %add25 to i32, !dbg !4793
  call void @outb(i8 zeroext 0, i32 %conv26) #5, !dbg !4796
  %30 = load %struct.pci1710_private*, %struct.pci1710_private** %devpriv, align 8, !dbg !4797
  %mux_scan = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %30, i32 0, i32 3, !dbg !4798
  %31 = load i32, i32* %mux_scan, align 4, !dbg !4798
  %conv27 = trunc i32 %31 to i16, !dbg !4797
  %32 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4799
  %iobase28 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %32, i32 0, i32 18, !dbg !4800
  %33 = load i64, i64* %iobase28, align 8, !dbg !4800
  %add29 = add i64 %33, 4, !dbg !4801
  %conv30 = trunc i64 %add29 to i32, !dbg !4799
  call void @outw(i16 zeroext %conv27, i32 %conv30) #5, !dbg !4802
  %34 = load %struct.pci1710_private*, %struct.pci1710_private** %devpriv, align 8, !dbg !4803
  %ctrl31 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %34, i32 0, i32 1, !dbg !4804
  %35 = load i32, i32* %ctrl31, align 4, !dbg !4804
  %conv32 = trunc i32 %35 to i16, !dbg !4803
  %36 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4805
  %iobase33 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %36, i32 0, i32 18, !dbg !4806
  %37 = load i64, i64* %iobase33, align 8, !dbg !4806
  %add34 = add i64 %37, 6, !dbg !4807
  %conv35 = trunc i64 %add34 to i32, !dbg !4805
  call void @outw(i16 zeroext %conv32, i32 %conv35) #5, !dbg !4808
  %38 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4809
  %pacer = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %38, i32 0, i32 2, !dbg !4810
  %39 = load %struct.comedi_8254*, %struct.comedi_8254** %pacer, align 8, !dbg !4810
  call void @comedi_8254_pacer_enable(%struct.comedi_8254* %39, i32 1, i32 2, i1 zeroext true) #5, !dbg !4811
  store i32 1, i32* %retval, align 4, !dbg !4812
  br label %return, !dbg !4812

if.end36:                                         ; preds = %if.end5
  %40 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !4813
  %flags = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %40, i32 0, i32 1, !dbg !4815
  %41 = load i32, i32* %flags, align 4, !dbg !4815
  %and37 = and i32 %41, 32, !dbg !4816
  %tobool38 = icmp ne i32 %and37, 0, !dbg !4816
  br i1 %tobool38, label %if.then39, label %if.else, !dbg !4817

if.then39:                                        ; preds = %if.end36
  %42 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4818
  %43 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4819
  call void @pci1710_handle_every_sample(%struct.comedi_device* %42, %struct.comedi_subdevice* %43) #5, !dbg !4820
  br label %if.end40, !dbg !4820

if.else:                                          ; preds = %if.end36
  %44 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4821
  %45 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4822
  call void @pci1710_handle_fifo(%struct.comedi_device* %44, %struct.comedi_subdevice* %45) #5, !dbg !4823
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then39
  %46 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4824
  %47 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4825
  %call41 = call i32 @comedi_handle_events(%struct.comedi_device* %46, %struct.comedi_subdevice* %47) #5, !dbg !4826
  store i32 1, i32* %retval, align 4, !dbg !4827
  br label %return, !dbg !4827

return:                                           ; preds = %if.end40, %if.then7, %if.then4, %if.then
  %48 = load i32, i32* %retval, align 4, !dbg !4828
  ret i32 %48, !dbg !4828
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci1710_ai_insn_read(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !4829 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %devpriv = alloca %struct.pci1710_private*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %val = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4830, metadata !DIExpression()), !dbg !4831
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4832, metadata !DIExpression()), !dbg !4833
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !4834, metadata !DIExpression()), !dbg !4835
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !4836, metadata !DIExpression()), !dbg !4837
  call void @llvm.dbg.declare(metadata %struct.pci1710_private** %devpriv, metadata !4838, metadata !DIExpression()), !dbg !4839
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4840
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !4841
  %1 = load i8*, i8** %private, align 8, !dbg !4841
  %2 = bitcast i8* %1 to %struct.pci1710_private*, !dbg !4840
  store %struct.pci1710_private* %2, %struct.pci1710_private** %devpriv, align 8, !dbg !4839
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4842, metadata !DIExpression()), !dbg !4843
  store i32 0, i32* %ret, align 4, !dbg !4843
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4844, metadata !DIExpression()), !dbg !4845
  %3 = load %struct.pci1710_private*, %struct.pci1710_private** %devpriv, align 8, !dbg !4846
  %ctrl = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %3, i32 0, i32 1, !dbg !4847
  %4 = load i32, i32* %ctrl, align 4, !dbg !4848
  %conv = zext i32 %4 to i64, !dbg !4848
  %or = or i64 %conv, 1, !dbg !4848
  %conv1 = trunc i64 %or to i32, !dbg !4848
  store i32 %conv1, i32* %ctrl, align 4, !dbg !4848
  %5 = load %struct.pci1710_private*, %struct.pci1710_private** %devpriv, align 8, !dbg !4849
  %ctrl2 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %5, i32 0, i32 1, !dbg !4850
  %6 = load i32, i32* %ctrl2, align 4, !dbg !4850
  %conv3 = trunc i32 %6 to i16, !dbg !4849
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4851
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 18, !dbg !4852
  %8 = load i64, i64* %iobase, align 8, !dbg !4852
  %add = add i64 %8, 6, !dbg !4853
  %conv4 = trunc i64 %add to i32, !dbg !4851
  call void @outw(i16 zeroext %conv3, i32 %conv4) #5, !dbg !4854
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4855
  %iobase5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 18, !dbg !4856
  %10 = load i64, i64* %iobase5, align 8, !dbg !4856
  %add6 = add i64 %10, 9, !dbg !4857
  %conv7 = trunc i64 %add6 to i32, !dbg !4855
  call void @outb(i8 zeroext 0, i32 %conv7) #5, !dbg !4858
  %11 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4859
  %iobase8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 18, !dbg !4860
  %12 = load i64, i64* %iobase8, align 8, !dbg !4860
  %add9 = add i64 %12, 8, !dbg !4861
  %conv10 = trunc i64 %add9 to i32, !dbg !4859
  call void @outb(i8 zeroext 0, i32 %conv10) #5, !dbg !4862
  %13 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4863
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4864
  %15 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4865
  %chanspec = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %15, i32 0, i32 4, !dbg !4866
  call void @pci1710_ai_setup_chanlist(%struct.comedi_device* %13, %struct.comedi_subdevice* %14, i32* %chanspec, i32 1, i32 1) #5, !dbg !4867
  store i32 0, i32* %i, align 4, !dbg !4868
  br label %for.cond, !dbg !4870

for.cond:                                         ; preds = %for.inc, %entry
  %16 = load i32, i32* %i, align 4, !dbg !4871
  %17 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4873
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %17, i32 0, i32 1, !dbg !4874
  %18 = load i32, i32* %n, align 4, !dbg !4874
  %cmp = icmp ult i32 %16, %18, !dbg !4875
  br i1 %cmp, label %for.body, label %for.end, !dbg !4876

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %val, metadata !4877, metadata !DIExpression()), !dbg !4879
  %19 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4880
  %iobase12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %19, i32 0, i32 18, !dbg !4881
  %20 = load i64, i64* %iobase12, align 8, !dbg !4881
  %add13 = add i64 %20, 0, !dbg !4882
  %conv14 = trunc i64 %add13 to i32, !dbg !4880
  call void @outw(i16 zeroext 0, i32 %conv14) #5, !dbg !4883
  %21 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4884
  %22 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4885
  %23 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4886
  %call = call i32 @comedi_timeout(%struct.comedi_device* %21, %struct.comedi_subdevice* %22, %struct.comedi_insn* %23, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i64)* @pci1710_ai_eoc, i64 0) #5, !dbg !4887
  store i32 %call, i32* %ret, align 4, !dbg !4888
  %24 = load i32, i32* %ret, align 4, !dbg !4889
  %tobool = icmp ne i32 %24, 0, !dbg !4889
  br i1 %tobool, label %if.then, label %if.end, !dbg !4891

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !4892

if.end:                                           ; preds = %for.body
  %25 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4893
  %26 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4894
  %call15 = call i32 @pci1710_ai_read_sample(%struct.comedi_device* %25, %struct.comedi_subdevice* %26, i32 0, i32* %val) #5, !dbg !4895
  store i32 %call15, i32* %ret, align 4, !dbg !4896
  %27 = load i32, i32* %ret, align 4, !dbg !4897
  %tobool16 = icmp ne i32 %27, 0, !dbg !4897
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !4899

if.then17:                                        ; preds = %if.end
  br label %for.end, !dbg !4900

if.end18:                                         ; preds = %if.end
  %28 = load i32, i32* %val, align 4, !dbg !4901
  %29 = load i32*, i32** %data.addr, align 8, !dbg !4902
  %30 = load i32, i32* %i, align 4, !dbg !4903
  %idxprom = sext i32 %30 to i64, !dbg !4902
  %arrayidx = getelementptr i32, i32* %29, i64 %idxprom, !dbg !4902
  store i32 %28, i32* %arrayidx, align 4, !dbg !4904
  br label %for.inc, !dbg !4905

for.inc:                                          ; preds = %if.end18
  %31 = load i32, i32* %i, align 4, !dbg !4906
  %inc = add i32 %31, 1, !dbg !4906
  store i32 %inc, i32* %i, align 4, !dbg !4906
  br label %for.cond, !dbg !4907, !llvm.loop !4908

for.end:                                          ; preds = %if.then17, %if.then, %for.cond
  %32 = load %struct.pci1710_private*, %struct.pci1710_private** %devpriv, align 8, !dbg !4910
  %ctrl19 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %32, i32 0, i32 1, !dbg !4911
  %33 = load i32, i32* %ctrl19, align 4, !dbg !4912
  %conv20 = zext i32 %33 to i64, !dbg !4912
  %and = and i64 %conv20, -2, !dbg !4912
  %conv21 = trunc i64 %and to i32, !dbg !4912
  store i32 %conv21, i32* %ctrl19, align 4, !dbg !4912
  %34 = load %struct.pci1710_private*, %struct.pci1710_private** %devpriv, align 8, !dbg !4913
  %ctrl22 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %34, i32 0, i32 1, !dbg !4914
  %35 = load i32, i32* %ctrl22, align 4, !dbg !4914
  %conv23 = trunc i32 %35 to i16, !dbg !4913
  %36 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4915
  %iobase24 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %36, i32 0, i32 18, !dbg !4916
  %37 = load i64, i64* %iobase24, align 8, !dbg !4916
  %add25 = add i64 %37, 6, !dbg !4917
  %conv26 = trunc i64 %add25 to i32, !dbg !4915
  call void @outw(i16 zeroext %conv23, i32 %conv26) #5, !dbg !4918
  %38 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4919
  %iobase27 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %38, i32 0, i32 18, !dbg !4920
  %39 = load i64, i64* %iobase27, align 8, !dbg !4920
  %add28 = add i64 %39, 9, !dbg !4921
  %conv29 = trunc i64 %add28 to i32, !dbg !4919
  call void @outb(i8 zeroext 0, i32 %conv29) #5, !dbg !4922
  %40 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4923
  %iobase30 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %40, i32 0, i32 18, !dbg !4924
  %41 = load i64, i64* %iobase30, align 8, !dbg !4924
  %add31 = add i64 %41, 8, !dbg !4925
  %conv32 = trunc i64 %add31 to i32, !dbg !4923
  call void @outb(i8 zeroext 0, i32 %conv32) #5, !dbg !4926
  %42 = load i32, i32* %ret, align 4, !dbg !4927
  %tobool33 = icmp ne i32 %42, 0, !dbg !4927
  br i1 %tobool33, label %cond.true, label %cond.false, !dbg !4927

cond.true:                                        ; preds = %for.end
  %43 = load i32, i32* %ret, align 4, !dbg !4928
  br label %cond.end, !dbg !4927

cond.false:                                       ; preds = %for.end
  %44 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4929
  %n34 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %44, i32 0, i32 1, !dbg !4930
  %45 = load i32, i32* %n34, align 4, !dbg !4930
  br label %cond.end, !dbg !4927

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %43, %cond.true ], [ %45, %cond.false ], !dbg !4927
  ret i32 %cond, !dbg !4931
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci1710_ai_cmdtest(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_cmd* %cmd) #2 !dbg !4932 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %cmd.addr = alloca %struct.comedi_cmd*, align 8
  %err = alloca i32, align 4
  %arg = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4933, metadata !DIExpression()), !dbg !4934
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4935, metadata !DIExpression()), !dbg !4936
  store %struct.comedi_cmd* %cmd, %struct.comedi_cmd** %cmd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd.addr, metadata !4937, metadata !DIExpression()), !dbg !4938
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4939, metadata !DIExpression()), !dbg !4940
  store i32 0, i32* %err, align 4, !dbg !4940
  %0 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4941
  %start_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %0, i32 0, i32 2, !dbg !4942
  %call = call i32 @comedi_check_trigger_src(i32* %start_src, i32 66) #5, !dbg !4943
  %1 = load i32, i32* %err, align 4, !dbg !4944
  %or = or i32 %1, %call, !dbg !4944
  store i32 %or, i32* %err, align 4, !dbg !4944
  %2 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4945
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %2, i32 0, i32 4, !dbg !4946
  %call1 = call i32 @comedi_check_trigger_src(i32* %scan_begin_src, i32 4) #5, !dbg !4947
  %3 = load i32, i32* %err, align 4, !dbg !4948
  %or2 = or i32 %3, %call1, !dbg !4948
  store i32 %or2, i32* %err, align 4, !dbg !4948
  %4 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4949
  %convert_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %4, i32 0, i32 6, !dbg !4950
  %call3 = call i32 @comedi_check_trigger_src(i32* %convert_src, i32 80) #5, !dbg !4951
  %5 = load i32, i32* %err, align 4, !dbg !4952
  %or4 = or i32 %5, %call3, !dbg !4952
  store i32 %or4, i32* %err, align 4, !dbg !4952
  %6 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4953
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %6, i32 0, i32 8, !dbg !4954
  %call5 = call i32 @comedi_check_trigger_src(i32* %scan_end_src, i32 32) #5, !dbg !4955
  %7 = load i32, i32* %err, align 4, !dbg !4956
  %or6 = or i32 %7, %call5, !dbg !4956
  store i32 %or6, i32* %err, align 4, !dbg !4956
  %8 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4957
  %stop_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %8, i32 0, i32 10, !dbg !4958
  %call7 = call i32 @comedi_check_trigger_src(i32* %stop_src, i32 33) #5, !dbg !4959
  %9 = load i32, i32* %err, align 4, !dbg !4960
  %or8 = or i32 %9, %call7, !dbg !4960
  store i32 %or8, i32* %err, align 4, !dbg !4960
  %10 = load i32, i32* %err, align 4, !dbg !4961
  %tobool = icmp ne i32 %10, 0, !dbg !4961
  br i1 %tobool, label %if.then, label %if.end, !dbg !4963

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !4964
  br label %return, !dbg !4964

if.end:                                           ; preds = %entry
  %11 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4965
  %start_src9 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %11, i32 0, i32 2, !dbg !4966
  %12 = load i32, i32* %start_src9, align 8, !dbg !4966
  %call10 = call i32 @comedi_check_trigger_is_unique(i32 %12) #5, !dbg !4967
  %13 = load i32, i32* %err, align 4, !dbg !4968
  %or11 = or i32 %13, %call10, !dbg !4968
  store i32 %or11, i32* %err, align 4, !dbg !4968
  %14 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4969
  %convert_src12 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %14, i32 0, i32 6, !dbg !4970
  %15 = load i32, i32* %convert_src12, align 8, !dbg !4970
  %call13 = call i32 @comedi_check_trigger_is_unique(i32 %15) #5, !dbg !4971
  %16 = load i32, i32* %err, align 4, !dbg !4972
  %or14 = or i32 %16, %call13, !dbg !4972
  store i32 %or14, i32* %err, align 4, !dbg !4972
  %17 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4973
  %stop_src15 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %17, i32 0, i32 10, !dbg !4974
  %18 = load i32, i32* %stop_src15, align 8, !dbg !4974
  %call16 = call i32 @comedi_check_trigger_is_unique(i32 %18) #5, !dbg !4975
  %19 = load i32, i32* %err, align 4, !dbg !4976
  %or17 = or i32 %19, %call16, !dbg !4976
  store i32 %or17, i32* %err, align 4, !dbg !4976
  %20 = load i32, i32* %err, align 4, !dbg !4977
  %tobool18 = icmp ne i32 %20, 0, !dbg !4977
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !4979

if.then19:                                        ; preds = %if.end
  store i32 2, i32* %retval, align 4, !dbg !4980
  br label %return, !dbg !4980

if.end20:                                         ; preds = %if.end
  %21 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4981
  %start_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %21, i32 0, i32 3, !dbg !4982
  %call21 = call i32 @comedi_check_trigger_arg_is(i32* %start_arg, i32 0) #5, !dbg !4983
  %22 = load i32, i32* %err, align 4, !dbg !4984
  %or22 = or i32 %22, %call21, !dbg !4984
  store i32 %or22, i32* %err, align 4, !dbg !4984
  %23 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4985
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %23, i32 0, i32 5, !dbg !4986
  %call23 = call i32 @comedi_check_trigger_arg_is(i32* %scan_begin_arg, i32 0) #5, !dbg !4987
  %24 = load i32, i32* %err, align 4, !dbg !4988
  %or24 = or i32 %24, %call23, !dbg !4988
  store i32 %or24, i32* %err, align 4, !dbg !4988
  %25 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4989
  %convert_src25 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %25, i32 0, i32 6, !dbg !4991
  %26 = load i32, i32* %convert_src25, align 8, !dbg !4991
  %cmp = icmp eq i32 %26, 16, !dbg !4992
  br i1 %cmp, label %if.then26, label %if.else, !dbg !4993

if.then26:                                        ; preds = %if.end20
  %27 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4994
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %27, i32 0, i32 7, !dbg !4995
  %call27 = call i32 @comedi_check_trigger_arg_min(i32* %convert_arg, i32 10000) #5, !dbg !4996
  %28 = load i32, i32* %err, align 4, !dbg !4997
  %or28 = or i32 %28, %call27, !dbg !4997
  store i32 %or28, i32* %err, align 4, !dbg !4997
  br label %if.end32, !dbg !4998

if.else:                                          ; preds = %if.end20
  %29 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4999
  %convert_arg29 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %29, i32 0, i32 7, !dbg !5000
  %call30 = call i32 @comedi_check_trigger_arg_is(i32* %convert_arg29, i32 0) #5, !dbg !5001
  %30 = load i32, i32* %err, align 4, !dbg !5002
  %or31 = or i32 %30, %call30, !dbg !5002
  store i32 %or31, i32* %err, align 4, !dbg !5002
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then26
  %31 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5003
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %31, i32 0, i32 9, !dbg !5004
  %32 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5005
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %32, i32 0, i32 13, !dbg !5006
  %33 = load i32, i32* %chanlist_len, align 8, !dbg !5006
  %call33 = call i32 @comedi_check_trigger_arg_is(i32* %scan_end_arg, i32 %33) #5, !dbg !5007
  %34 = load i32, i32* %err, align 4, !dbg !5008
  %or34 = or i32 %34, %call33, !dbg !5008
  store i32 %or34, i32* %err, align 4, !dbg !5008
  %35 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5009
  %stop_src35 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %35, i32 0, i32 10, !dbg !5011
  %36 = load i32, i32* %stop_src35, align 8, !dbg !5011
  %cmp36 = icmp eq i32 %36, 32, !dbg !5012
  br i1 %cmp36, label %if.then37, label %if.else40, !dbg !5013

if.then37:                                        ; preds = %if.end32
  %37 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5014
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %37, i32 0, i32 11, !dbg !5015
  %call38 = call i32 @comedi_check_trigger_arg_min(i32* %stop_arg, i32 1) #5, !dbg !5016
  %38 = load i32, i32* %err, align 4, !dbg !5017
  %or39 = or i32 %38, %call38, !dbg !5017
  store i32 %or39, i32* %err, align 4, !dbg !5017
  br label %if.end44, !dbg !5018

if.else40:                                        ; preds = %if.end32
  %39 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5019
  %stop_arg41 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %39, i32 0, i32 11, !dbg !5020
  %call42 = call i32 @comedi_check_trigger_arg_is(i32* %stop_arg41, i32 0) #5, !dbg !5021
  %40 = load i32, i32* %err, align 4, !dbg !5022
  %or43 = or i32 %40, %call42, !dbg !5022
  store i32 %or43, i32* %err, align 4, !dbg !5022
  br label %if.end44

if.end44:                                         ; preds = %if.else40, %if.then37
  %41 = load i32, i32* %err, align 4, !dbg !5023
  %tobool45 = icmp ne i32 %41, 0, !dbg !5023
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !5025

if.then46:                                        ; preds = %if.end44
  store i32 3, i32* %retval, align 4, !dbg !5026
  br label %return, !dbg !5026

if.end47:                                         ; preds = %if.end44
  %42 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5027
  %convert_src48 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %42, i32 0, i32 6, !dbg !5029
  %43 = load i32, i32* %convert_src48, align 8, !dbg !5029
  %cmp49 = icmp eq i32 %43, 16, !dbg !5030
  br i1 %cmp49, label %if.then50, label %if.end55, !dbg !5031

if.then50:                                        ; preds = %if.end47
  call void @llvm.dbg.declare(metadata i32* %arg, metadata !5032, metadata !DIExpression()), !dbg !5034
  %44 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5035
  %convert_arg51 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %44, i32 0, i32 7, !dbg !5036
  %45 = load i32, i32* %convert_arg51, align 4, !dbg !5036
  store i32 %45, i32* %arg, align 4, !dbg !5034
  %46 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5037
  %pacer = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %46, i32 0, i32 2, !dbg !5038
  %47 = load %struct.comedi_8254*, %struct.comedi_8254** %pacer, align 8, !dbg !5038
  %48 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5039
  %flags = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %48, i32 0, i32 1, !dbg !5040
  %49 = load i32, i32* %flags, align 4, !dbg !5040
  call void @comedi_8254_cascade_ns_to_timer(%struct.comedi_8254* %47, i32* %arg, i32 %49) #5, !dbg !5041
  %50 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5042
  %convert_arg52 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %50, i32 0, i32 7, !dbg !5043
  %51 = load i32, i32* %arg, align 4, !dbg !5044
  %call53 = call i32 @comedi_check_trigger_arg_is(i32* %convert_arg52, i32 %51) #5, !dbg !5045
  %52 = load i32, i32* %err, align 4, !dbg !5046
  %or54 = or i32 %52, %call53, !dbg !5046
  store i32 %or54, i32* %err, align 4, !dbg !5046
  br label %if.end55, !dbg !5047

if.end55:                                         ; preds = %if.then50, %if.end47
  %53 = load i32, i32* %err, align 4, !dbg !5048
  %tobool56 = icmp ne i32 %53, 0, !dbg !5048
  br i1 %tobool56, label %if.then57, label %if.end58, !dbg !5050

if.then57:                                        ; preds = %if.end55
  store i32 4, i32* %retval, align 4, !dbg !5051
  br label %return, !dbg !5051

if.end58:                                         ; preds = %if.end55
  %54 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5052
  %55 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5053
  %56 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5054
  %call59 = call i32 @pci1710_ai_check_chanlist(%struct.comedi_device* %54, %struct.comedi_subdevice* %55, %struct.comedi_cmd* %56) #5, !dbg !5055
  %57 = load i32, i32* %err, align 4, !dbg !5056
  %or60 = or i32 %57, %call59, !dbg !5056
  store i32 %or60, i32* %err, align 4, !dbg !5056
  %58 = load i32, i32* %err, align 4, !dbg !5057
  %tobool61 = icmp ne i32 %58, 0, !dbg !5057
  br i1 %tobool61, label %if.then62, label %if.end63, !dbg !5059

if.then62:                                        ; preds = %if.end58
  store i32 5, i32* %retval, align 4, !dbg !5060
  br label %return, !dbg !5060

if.end63:                                         ; preds = %if.end58
  store i32 0, i32* %retval, align 4, !dbg !5061
  br label %return, !dbg !5061

return:                                           ; preds = %if.end63, %if.then62, %if.then57, %if.then46, %if.then19, %if.then
  %59 = load i32, i32* %retval, align 4, !dbg !5062
  ret i32 %59, !dbg !5062
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci1710_ai_cmd(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #2 !dbg !5063 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %devpriv = alloca %struct.pci1710_private*, align 8
  %cmd = alloca %struct.comedi_cmd*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5064, metadata !DIExpression()), !dbg !5065
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5066, metadata !DIExpression()), !dbg !5067
  call void @llvm.dbg.declare(metadata %struct.pci1710_private** %devpriv, metadata !5068, metadata !DIExpression()), !dbg !5069
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5070
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5071
  %1 = load i8*, i8** %private, align 8, !dbg !5071
  %2 = bitcast i8* %1 to %struct.pci1710_private*, !dbg !5070
  store %struct.pci1710_private* %2, %struct.pci1710_private** %devpriv, align 8, !dbg !5069
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd, metadata !5072, metadata !DIExpression()), !dbg !5073
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5074
  %async = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %3, i32 0, i32 7, !dbg !5075
  %4 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5075
  %cmd1 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %4, i32 0, i32 17, !dbg !5076
  store %struct.comedi_cmd* %cmd1, %struct.comedi_cmd** %cmd, align 8, !dbg !5073
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5077
  %6 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5078
  %7 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5079
  %chanlist = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %7, i32 0, i32 12, !dbg !5080
  %8 = load i32*, i32** %chanlist, align 8, !dbg !5080
  %9 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5081
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %9, i32 0, i32 13, !dbg !5082
  %10 = load i32, i32* %chanlist_len, align 8, !dbg !5082
  %11 = load %struct.pci1710_private*, %struct.pci1710_private** %devpriv, align 8, !dbg !5083
  %saved_seglen = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %11, i32 0, i32 6, !dbg !5084
  %12 = load i8, i8* %saved_seglen, align 4, !dbg !5084
  %conv = zext i8 %12 to i32, !dbg !5083
  call void @pci1710_ai_setup_chanlist(%struct.comedi_device* %5, %struct.comedi_subdevice* %6, i32* %8, i32 %10, i32 %conv) #5, !dbg !5085
  %13 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5086
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 18, !dbg !5087
  %14 = load i64, i64* %iobase, align 8, !dbg !5087
  %add = add i64 %14, 9, !dbg !5088
  %conv2 = trunc i64 %add to i32, !dbg !5086
  call void @outb(i8 zeroext 0, i32 %conv2) #5, !dbg !5089
  %15 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5090
  %iobase3 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 18, !dbg !5091
  %16 = load i64, i64* %iobase3, align 8, !dbg !5091
  %add4 = add i64 %16, 8, !dbg !5092
  %conv5 = trunc i64 %add4 to i32, !dbg !5090
  call void @outb(i8 zeroext 0, i32 %conv5) #5, !dbg !5093
  %17 = load %struct.pci1710_private*, %struct.pci1710_private** %devpriv, align 8, !dbg !5094
  %ctrl = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %17, i32 0, i32 1, !dbg !5095
  %18 = load i32, i32* %ctrl, align 4, !dbg !5096
  %conv6 = zext i32 %18 to i64, !dbg !5096
  %and = and i64 %conv6, 64, !dbg !5096
  %conv7 = trunc i64 %and to i32, !dbg !5096
  store i32 %conv7, i32* %ctrl, align 4, !dbg !5096
  %19 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5097
  %flags = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %19, i32 0, i32 1, !dbg !5099
  %20 = load i32, i32* %flags, align 4, !dbg !5099
  %and8 = and i32 %20, 32, !dbg !5100
  %cmp = icmp eq i32 %and8, 0, !dbg !5101
  br i1 %cmp, label %if.then, label %if.end, !dbg !5102

if.then:                                          ; preds = %entry
  %21 = load %struct.pci1710_private*, %struct.pci1710_private** %devpriv, align 8, !dbg !5103
  %ctrl10 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %21, i32 0, i32 1, !dbg !5104
  %22 = load i32, i32* %ctrl10, align 4, !dbg !5105
  %conv11 = zext i32 %22 to i64, !dbg !5105
  %or = or i64 %conv11, 32, !dbg !5105
  %conv12 = trunc i64 %or to i32, !dbg !5105
  store i32 %conv12, i32* %ctrl10, align 4, !dbg !5105
  br label %if.end, !dbg !5103

if.end:                                           ; preds = %if.then, %entry
  %23 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5106
  %convert_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %23, i32 0, i32 6, !dbg !5108
  %24 = load i32, i32* %convert_src, align 8, !dbg !5108
  %cmp13 = icmp eq i32 %24, 16, !dbg !5109
  br i1 %cmp13, label %if.then15, label %if.else45, !dbg !5110

if.then15:                                        ; preds = %if.end
  %25 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5111
  %pacer = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 2, !dbg !5113
  %26 = load %struct.comedi_8254*, %struct.comedi_8254** %pacer, align 8, !dbg !5113
  call void @comedi_8254_update_divisors(%struct.comedi_8254* %26) #5, !dbg !5114
  %27 = load %struct.pci1710_private*, %struct.pci1710_private** %devpriv, align 8, !dbg !5115
  %ctrl16 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %27, i32 0, i32 1, !dbg !5116
  %28 = load i32, i32* %ctrl16, align 4, !dbg !5117
  %conv17 = zext i32 %28 to i64, !dbg !5117
  %or18 = or i64 %conv17, 18, !dbg !5117
  %conv19 = trunc i64 %or18 to i32, !dbg !5117
  store i32 %conv19, i32* %ctrl16, align 4, !dbg !5117
  %29 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5118
  %start_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %29, i32 0, i32 2, !dbg !5120
  %30 = load i32, i32* %start_src, align 8, !dbg !5120
  %cmp20 = icmp eq i32 %30, 64, !dbg !5121
  br i1 %cmp20, label %if.then22, label %if.else, !dbg !5122

if.then22:                                        ; preds = %if.then15
  %31 = load %struct.pci1710_private*, %struct.pci1710_private** %devpriv, align 8, !dbg !5123
  %ctrl23 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %31, i32 0, i32 1, !dbg !5125
  %32 = load i32, i32* %ctrl23, align 4, !dbg !5125
  %33 = load %struct.pci1710_private*, %struct.pci1710_private** %devpriv, align 8, !dbg !5126
  %ctrl_ext = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %33, i32 0, i32 2, !dbg !5127
  store i32 %32, i32* %ctrl_ext, align 4, !dbg !5128
  %34 = load %struct.pci1710_private*, %struct.pci1710_private** %devpriv, align 8, !dbg !5129
  %ctrl24 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %34, i32 0, i32 1, !dbg !5130
  %35 = load i32, i32* %ctrl24, align 4, !dbg !5131
  %conv25 = zext i32 %35 to i64, !dbg !5131
  %and26 = and i64 %conv25, -43, !dbg !5131
  %conv27 = trunc i64 %and26 to i32, !dbg !5131
  store i32 %conv27, i32* %ctrl24, align 4, !dbg !5131
  %36 = load %struct.pci1710_private*, %struct.pci1710_private** %devpriv, align 8, !dbg !5132
  %ctrl28 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %36, i32 0, i32 1, !dbg !5133
  %37 = load i32, i32* %ctrl28, align 4, !dbg !5134
  %conv29 = zext i32 %37 to i64, !dbg !5134
  %or30 = or i64 %conv29, 4, !dbg !5134
  %conv31 = trunc i64 %or30 to i32, !dbg !5134
  store i32 %conv31, i32* %ctrl28, align 4, !dbg !5134
  %38 = load %struct.pci1710_private*, %struct.pci1710_private** %devpriv, align 8, !dbg !5135
  %ai_et = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %38, i32 0, i32 4, !dbg !5136
  store i8 1, i8* %ai_et, align 4, !dbg !5137
  br label %if.end33, !dbg !5138

if.else:                                          ; preds = %if.then15
  %39 = load %struct.pci1710_private*, %struct.pci1710_private** %devpriv, align 8, !dbg !5139
  %ai_et32 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %39, i32 0, i32 4, !dbg !5141
  store i8 0, i8* %ai_et32, align 4, !dbg !5142
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then22
  %40 = load %struct.pci1710_private*, %struct.pci1710_private** %devpriv, align 8, !dbg !5143
  %ctrl34 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %40, i32 0, i32 1, !dbg !5144
  %41 = load i32, i32* %ctrl34, align 4, !dbg !5144
  %conv35 = trunc i32 %41 to i16, !dbg !5143
  %42 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5145
  %iobase36 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %42, i32 0, i32 18, !dbg !5146
  %43 = load i64, i64* %iobase36, align 8, !dbg !5146
  %add37 = add i64 %43, 6, !dbg !5147
  %conv38 = trunc i64 %add37 to i32, !dbg !5145
  call void @outw(i16 zeroext %conv35, i32 %conv38) #5, !dbg !5148
  %44 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5149
  %start_src39 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %44, i32 0, i32 2, !dbg !5151
  %45 = load i32, i32* %start_src39, align 8, !dbg !5151
  %cmp40 = icmp eq i32 %45, 2, !dbg !5152
  br i1 %cmp40, label %if.then42, label %if.end44, !dbg !5153

if.then42:                                        ; preds = %if.end33
  %46 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5154
  %pacer43 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %46, i32 0, i32 2, !dbg !5155
  %47 = load %struct.comedi_8254*, %struct.comedi_8254** %pacer43, align 8, !dbg !5155
  call void @comedi_8254_pacer_enable(%struct.comedi_8254* %47, i32 1, i32 2, i1 zeroext true) #5, !dbg !5156
  br label %if.end44, !dbg !5156

if.end44:                                         ; preds = %if.then42, %if.end33
  br label %if.end55, !dbg !5157

if.else45:                                        ; preds = %if.end
  %48 = load %struct.pci1710_private*, %struct.pci1710_private** %devpriv, align 8, !dbg !5158
  %ctrl46 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %48, i32 0, i32 1, !dbg !5160
  %49 = load i32, i32* %ctrl46, align 4, !dbg !5161
  %conv47 = zext i32 %49 to i64, !dbg !5161
  %or48 = or i64 %conv47, 20, !dbg !5161
  %conv49 = trunc i64 %or48 to i32, !dbg !5161
  store i32 %conv49, i32* %ctrl46, align 4, !dbg !5161
  %50 = load %struct.pci1710_private*, %struct.pci1710_private** %devpriv, align 8, !dbg !5162
  %ctrl50 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %50, i32 0, i32 1, !dbg !5163
  %51 = load i32, i32* %ctrl50, align 4, !dbg !5163
  %conv51 = trunc i32 %51 to i16, !dbg !5162
  %52 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5164
  %iobase52 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %52, i32 0, i32 18, !dbg !5165
  %53 = load i64, i64* %iobase52, align 8, !dbg !5165
  %add53 = add i64 %53, 6, !dbg !5166
  %conv54 = trunc i64 %add53 to i32, !dbg !5164
  call void @outw(i16 zeroext %conv51, i32 %conv54) #5, !dbg !5167
  br label %if.end55

if.end55:                                         ; preds = %if.else45, %if.end44
  ret i32 0, !dbg !5168
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci1710_ai_cancel(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #2 !dbg !5169 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %devpriv = alloca %struct.pci1710_private*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5170, metadata !DIExpression()), !dbg !5171
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5172, metadata !DIExpression()), !dbg !5173
  call void @llvm.dbg.declare(metadata %struct.pci1710_private** %devpriv, metadata !5174, metadata !DIExpression()), !dbg !5175
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5176
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5177
  %1 = load i8*, i8** %private, align 8, !dbg !5177
  %2 = bitcast i8* %1 to %struct.pci1710_private*, !dbg !5176
  store %struct.pci1710_private* %2, %struct.pci1710_private** %devpriv, align 8, !dbg !5175
  %3 = load %struct.pci1710_private*, %struct.pci1710_private** %devpriv, align 8, !dbg !5178
  %ctrl = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %3, i32 0, i32 1, !dbg !5179
  %4 = load i32, i32* %ctrl, align 4, !dbg !5180
  %conv = zext i32 %4 to i64, !dbg !5180
  %and = and i64 %conv, 64, !dbg !5180
  %conv1 = trunc i64 %and to i32, !dbg !5180
  store i32 %conv1, i32* %ctrl, align 4, !dbg !5180
  %5 = load %struct.pci1710_private*, %struct.pci1710_private** %devpriv, align 8, !dbg !5181
  %ctrl2 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %5, i32 0, i32 1, !dbg !5182
  %6 = load i32, i32* %ctrl2, align 4, !dbg !5182
  %conv3 = trunc i32 %6 to i16, !dbg !5181
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5183
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 18, !dbg !5184
  %8 = load i64, i64* %iobase, align 8, !dbg !5184
  %add = add i64 %8, 6, !dbg !5185
  %conv4 = trunc i64 %add to i32, !dbg !5183
  call void @outw(i16 zeroext %conv3, i32 %conv4) #5, !dbg !5186
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5187
  %pacer = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 2, !dbg !5188
  %10 = load %struct.comedi_8254*, %struct.comedi_8254** %pacer, align 8, !dbg !5188
  call void @comedi_8254_pacer_enable(%struct.comedi_8254* %10, i32 1, i32 2, i1 zeroext false) #5, !dbg !5189
  %11 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5190
  %iobase5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 18, !dbg !5191
  %12 = load i64, i64* %iobase5, align 8, !dbg !5191
  %add6 = add i64 %12, 9, !dbg !5192
  %conv7 = trunc i64 %add6 to i32, !dbg !5190
  call void @outb(i8 zeroext 0, i32 %conv7) #5, !dbg !5193
  %13 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5194
  %iobase8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 18, !dbg !5195
  %14 = load i64, i64* %iobase8, align 8, !dbg !5195
  %add9 = add i64 %14, 8, !dbg !5196
  %conv10 = trunc i64 %add9 to i32, !dbg !5194
  call void @outb(i8 zeroext 0, i32 %conv10) #5, !dbg !5197
  ret i32 0, !dbg !5198
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @comedi_range_is_unipolar(%struct.comedi_subdevice* %s, i32 %range) #2 !dbg !5199 {
entry:
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %range.addr = alloca i32, align 4
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5202, metadata !DIExpression()), !dbg !5203
  store i32 %range, i32* %range.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %range.addr, metadata !5204, metadata !DIExpression()), !dbg !5205
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5206
  %range_table = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 15, !dbg !5207
  %1 = load %struct.comedi_lrange*, %struct.comedi_lrange** %range_table, align 8, !dbg !5207
  %range1 = getelementptr inbounds %struct.comedi_lrange, %struct.comedi_lrange* %1, i32 0, i32 1, !dbg !5208
  %2 = load i32, i32* %range.addr, align 4, !dbg !5209
  %idxprom = zext i32 %2 to i64, !dbg !5206
  %arrayidx = getelementptr [0 x %struct.comedi_krange], [0 x %struct.comedi_krange]* %range1, i64 0, i64 %idxprom, !dbg !5206
  %min = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %arrayidx, i32 0, i32 0, !dbg !5210
  %3 = load i32, i32* %min, align 4, !dbg !5210
  %cmp = icmp sge i32 %3, 0, !dbg !5211
  ret i1 %cmp, !dbg !5212
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci1710_ao_insn_write(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !5213 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %devpriv = alloca %struct.pci1710_private*, align 8
  %chan = alloca i32, align 4
  %range = alloca i32, align 4
  %val = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5214, metadata !DIExpression()), !dbg !5215
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5216, metadata !DIExpression()), !dbg !5217
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5218, metadata !DIExpression()), !dbg !5219
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !5220, metadata !DIExpression()), !dbg !5221
  call void @llvm.dbg.declare(metadata %struct.pci1710_private** %devpriv, metadata !5222, metadata !DIExpression()), !dbg !5223
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5224
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5225
  %1 = load i8*, i8** %private, align 8, !dbg !5225
  %2 = bitcast i8* %1 to %struct.pci1710_private*, !dbg !5224
  store %struct.pci1710_private* %2, %struct.pci1710_private** %devpriv, align 8, !dbg !5223
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !5226, metadata !DIExpression()), !dbg !5227
  %3 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5228
  %chanspec = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %3, i32 0, i32 4, !dbg !5228
  %4 = load i32, i32* %chanspec, align 4, !dbg !5228
  %and = and i32 %4, 65535, !dbg !5228
  store i32 %and, i32* %chan, align 4, !dbg !5227
  call void @llvm.dbg.declare(metadata i32* %range, metadata !5229, metadata !DIExpression()), !dbg !5230
  %5 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5231
  %chanspec1 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %5, i32 0, i32 4, !dbg !5231
  %6 = load i32, i32* %chanspec1, align 4, !dbg !5231
  %shr = lshr i32 %6, 16, !dbg !5231
  %and2 = and i32 %shr, 255, !dbg !5231
  store i32 %and2, i32* %range, align 4, !dbg !5230
  call void @llvm.dbg.declare(metadata i32* %val, metadata !5232, metadata !DIExpression()), !dbg !5233
  %7 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5234
  %readback = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %7, i32 0, i32 32, !dbg !5235
  %8 = load i32*, i32** %readback, align 8, !dbg !5235
  %9 = load i32, i32* %chan, align 4, !dbg !5236
  %idxprom = zext i32 %9 to i64, !dbg !5234
  %arrayidx = getelementptr i32, i32* %8, i64 %idxprom, !dbg !5234
  %10 = load i32, i32* %arrayidx, align 4, !dbg !5234
  store i32 %10, i32* %val, align 4, !dbg !5233
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5237, metadata !DIExpression()), !dbg !5238
  %11 = load i32, i32* %chan, align 4, !dbg !5239
  %mul = mul i32 %11, 2, !dbg !5239
  %shl = shl i32 3, %mul, !dbg !5239
  %neg = xor i32 %shl, -1, !dbg !5240
  %12 = load %struct.pci1710_private*, %struct.pci1710_private** %devpriv, align 8, !dbg !5241
  %da_ranges = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %12, i32 0, i32 7, !dbg !5242
  %13 = load i8, i8* %da_ranges, align 1, !dbg !5243
  %conv = zext i8 %13 to i32, !dbg !5243
  %and3 = and i32 %conv, %neg, !dbg !5243
  %conv4 = trunc i32 %and3 to i8, !dbg !5243
  store i8 %conv4, i8* %da_ranges, align 1, !dbg !5243
  %14 = load i32, i32* %range, align 4, !dbg !5244
  %and5 = and i32 %14, 3, !dbg !5244
  %15 = load i32, i32* %chan, align 4, !dbg !5244
  %mul6 = mul i32 %15, 2, !dbg !5244
  %shl7 = shl i32 %and5, %mul6, !dbg !5244
  %16 = load %struct.pci1710_private*, %struct.pci1710_private** %devpriv, align 8, !dbg !5245
  %da_ranges8 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %16, i32 0, i32 7, !dbg !5246
  %17 = load i8, i8* %da_ranges8, align 1, !dbg !5247
  %conv9 = zext i8 %17 to i32, !dbg !5247
  %or = or i32 %conv9, %shl7, !dbg !5247
  %conv10 = trunc i32 %or to i8, !dbg !5247
  store i8 %conv10, i8* %da_ranges8, align 1, !dbg !5247
  %18 = load %struct.pci1710_private*, %struct.pci1710_private** %devpriv, align 8, !dbg !5248
  %da_ranges11 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %18, i32 0, i32 7, !dbg !5249
  %19 = load i8, i8* %da_ranges11, align 1, !dbg !5249
  %conv12 = zext i8 %19 to i16, !dbg !5248
  %20 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5250
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 18, !dbg !5251
  %21 = load i64, i64* %iobase, align 8, !dbg !5251
  %add = add i64 %21, 14, !dbg !5252
  %conv13 = trunc i64 %add to i32, !dbg !5250
  call void @outw(i16 zeroext %conv12, i32 %conv13) #5, !dbg !5253
  store i32 0, i32* %i, align 4, !dbg !5254
  br label %for.cond, !dbg !5256

for.cond:                                         ; preds = %for.inc, %entry
  %22 = load i32, i32* %i, align 4, !dbg !5257
  %23 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5259
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %23, i32 0, i32 1, !dbg !5260
  %24 = load i32, i32* %n, align 4, !dbg !5260
  %cmp = icmp ult i32 %22, %24, !dbg !5261
  br i1 %cmp, label %for.body, label %for.end, !dbg !5262

for.body:                                         ; preds = %for.cond
  %25 = load i32*, i32** %data.addr, align 8, !dbg !5263
  %26 = load i32, i32* %i, align 4, !dbg !5265
  %idxprom15 = sext i32 %26 to i64, !dbg !5263
  %arrayidx16 = getelementptr i32, i32* %25, i64 %idxprom15, !dbg !5263
  %27 = load i32, i32* %arrayidx16, align 4, !dbg !5263
  store i32 %27, i32* %val, align 4, !dbg !5266
  %28 = load i32, i32* %val, align 4, !dbg !5267
  %conv17 = trunc i32 %28 to i16, !dbg !5267
  %29 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5268
  %iobase18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %29, i32 0, i32 18, !dbg !5269
  %30 = load i64, i64* %iobase18, align 8, !dbg !5269
  %31 = load i32, i32* %chan, align 4, !dbg !5270
  %mul19 = mul i32 %31, 2, !dbg !5270
  %add20 = add i32 10, %mul19, !dbg !5270
  %conv21 = zext i32 %add20 to i64, !dbg !5270
  %add22 = add i64 %30, %conv21, !dbg !5271
  %conv23 = trunc i64 %add22 to i32, !dbg !5268
  call void @outw(i16 zeroext %conv17, i32 %conv23) #5, !dbg !5272
  br label %for.inc, !dbg !5273

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %i, align 4, !dbg !5274
  %inc = add i32 %32, 1, !dbg !5274
  store i32 %inc, i32* %i, align 4, !dbg !5274
  br label %for.cond, !dbg !5275, !llvm.loop !5276

for.end:                                          ; preds = %for.cond
  %33 = load i32, i32* %val, align 4, !dbg !5278
  %34 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5279
  %readback24 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %34, i32 0, i32 32, !dbg !5280
  %35 = load i32*, i32** %readback24, align 8, !dbg !5280
  %36 = load i32, i32* %chan, align 4, !dbg !5281
  %idxprom25 = zext i32 %36 to i64, !dbg !5279
  %arrayidx26 = getelementptr i32, i32* %35, i64 %idxprom25, !dbg !5279
  store i32 %33, i32* %arrayidx26, align 4, !dbg !5282
  %37 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5283
  %n27 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %37, i32 0, i32 1, !dbg !5284
  %38 = load i32, i32* %n27, align 4, !dbg !5284
  ret i32 %38, !dbg !5285
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_alloc_subdev_readback(%struct.comedi_subdevice*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci1710_di_insn_bits(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !5286 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5287, metadata !DIExpression()), !dbg !5288
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5289, metadata !DIExpression()), !dbg !5290
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5291, metadata !DIExpression()), !dbg !5292
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !5293, metadata !DIExpression()), !dbg !5294
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5295
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 18, !dbg !5296
  %1 = load i64, i64* %iobase, align 8, !dbg !5296
  %add = add i64 %1, 16, !dbg !5297
  %conv = trunc i64 %add to i32, !dbg !5295
  %call = call zeroext i16 @inw(i32 %conv) #5, !dbg !5298
  %conv1 = zext i16 %call to i32, !dbg !5298
  %2 = load i32*, i32** %data.addr, align 8, !dbg !5299
  %arrayidx = getelementptr i32, i32* %2, i64 1, !dbg !5299
  store i32 %conv1, i32* %arrayidx, align 4, !dbg !5300
  %3 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5301
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %3, i32 0, i32 1, !dbg !5302
  %4 = load i32, i32* %n, align 4, !dbg !5302
  ret i32 %4, !dbg !5303
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci1710_do_insn_bits(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !5304 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5305, metadata !DIExpression()), !dbg !5306
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5307, metadata !DIExpression()), !dbg !5308
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5309, metadata !DIExpression()), !dbg !5310
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !5311, metadata !DIExpression()), !dbg !5312
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5313
  %1 = load i32*, i32** %data.addr, align 8, !dbg !5315
  %call = call i32 @comedi_dio_update_state(%struct.comedi_subdevice* %0, i32* %1) #5, !dbg !5316
  %tobool = icmp ne i32 %call, 0, !dbg !5316
  br i1 %tobool, label %if.then, label %if.end, !dbg !5317

if.then:                                          ; preds = %entry
  %2 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5318
  %state = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %2, i32 0, i32 29, !dbg !5319
  %3 = load i32, i32* %state, align 4, !dbg !5319
  %conv = trunc i32 %3 to i16, !dbg !5318
  %4 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5320
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 18, !dbg !5321
  %5 = load i64, i64* %iobase, align 8, !dbg !5321
  %add = add i64 %5, 16, !dbg !5322
  %conv1 = trunc i64 %add to i32, !dbg !5320
  call void @outw(i16 zeroext %conv, i32 %conv1) #5, !dbg !5323
  br label %if.end, !dbg !5323

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5324
  %state2 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %6, i32 0, i32 29, !dbg !5325
  %7 = load i32, i32* %state2, align 4, !dbg !5325
  %8 = load i32*, i32** %data.addr, align 8, !dbg !5326
  %arrayidx = getelementptr i32, i32* %8, i64 1, !dbg !5326
  store i32 %7, i32* %arrayidx, align 4, !dbg !5327
  %9 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5328
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %9, i32 0, i32 1, !dbg !5329
  %10 = load i32, i32* %n, align 4, !dbg !5329
  ret i32 %10, !dbg !5330
}

; Function Attrs: noredzone
declare dso_local void @comedi_8254_subdevice_init(%struct.comedi_subdevice*, %struct.comedi_8254*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci1710_counter_insn_config(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !5331 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %devpriv = alloca %struct.pci1710_private*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5332, metadata !DIExpression()), !dbg !5333
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5334, metadata !DIExpression()), !dbg !5335
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5336, metadata !DIExpression()), !dbg !5337
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !5338, metadata !DIExpression()), !dbg !5339
  call void @llvm.dbg.declare(metadata %struct.pci1710_private** %devpriv, metadata !5340, metadata !DIExpression()), !dbg !5341
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5342
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5343
  %1 = load i8*, i8** %private, align 8, !dbg !5343
  %2 = bitcast i8* %1 to %struct.pci1710_private*, !dbg !5342
  store %struct.pci1710_private* %2, %struct.pci1710_private** %devpriv, align 8, !dbg !5341
  %3 = load i32*, i32** %data.addr, align 8, !dbg !5344
  %arrayidx = getelementptr i32, i32* %3, i64 0, !dbg !5344
  %4 = load i32, i32* %arrayidx, align 4, !dbg !5344
  switch i32 %4, label %sw.default19 [
    i32 2003, label %sw.bb
    i32 2004, label %sw.bb11
  ], !dbg !5345

sw.bb:                                            ; preds = %entry
  %5 = load i32*, i32** %data.addr, align 8, !dbg !5346
  %arrayidx1 = getelementptr i32, i32* %5, i64 1, !dbg !5346
  %6 = load i32, i32* %arrayidx1, align 4, !dbg !5346
  switch i32 %6, label %sw.default [
    i32 0, label %sw.bb2
    i32 1, label %sw.bb4
  ], !dbg !5348

sw.bb2:                                           ; preds = %sw.bb
  %7 = load %struct.pci1710_private*, %struct.pci1710_private** %devpriv, align 8, !dbg !5349
  %ctrl_ext = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %7, i32 0, i32 2, !dbg !5351
  %8 = load i32, i32* %ctrl_ext, align 4, !dbg !5352
  %conv = zext i32 %8 to i64, !dbg !5352
  %and = and i64 %conv, -65, !dbg !5352
  %conv3 = trunc i64 %and to i32, !dbg !5352
  store i32 %conv3, i32* %ctrl_ext, align 4, !dbg !5352
  br label %sw.epilog, !dbg !5353

sw.bb4:                                           ; preds = %sw.bb
  %9 = load %struct.pci1710_private*, %struct.pci1710_private** %devpriv, align 8, !dbg !5354
  %ctrl_ext5 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %9, i32 0, i32 2, !dbg !5355
  %10 = load i32, i32* %ctrl_ext5, align 4, !dbg !5356
  %conv6 = zext i32 %10 to i64, !dbg !5356
  %or = or i64 %conv6, 64, !dbg !5356
  %conv7 = trunc i64 %or to i32, !dbg !5356
  store i32 %conv7, i32* %ctrl_ext5, align 4, !dbg !5356
  br label %sw.epilog, !dbg !5357

sw.default:                                       ; preds = %sw.bb
  store i32 -22, i32* %retval, align 4, !dbg !5358
  br label %return, !dbg !5358

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb2
  %11 = load %struct.pci1710_private*, %struct.pci1710_private** %devpriv, align 8, !dbg !5359
  %ctrl_ext8 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %11, i32 0, i32 2, !dbg !5360
  %12 = load i32, i32* %ctrl_ext8, align 4, !dbg !5360
  %conv9 = trunc i32 %12 to i16, !dbg !5359
  %13 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5361
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 18, !dbg !5362
  %14 = load i64, i64* %iobase, align 8, !dbg !5362
  %add = add i64 %14, 6, !dbg !5363
  %conv10 = trunc i64 %add to i32, !dbg !5361
  call void @outw(i16 zeroext %conv9, i32 %conv10) #5, !dbg !5364
  br label %sw.epilog20, !dbg !5365

sw.bb11:                                          ; preds = %entry
  %15 = load %struct.pci1710_private*, %struct.pci1710_private** %devpriv, align 8, !dbg !5366
  %ctrl_ext12 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %15, i32 0, i32 2, !dbg !5368
  %16 = load i32, i32* %ctrl_ext12, align 4, !dbg !5368
  %conv13 = zext i32 %16 to i64, !dbg !5366
  %and14 = and i64 %conv13, 64, !dbg !5369
  %tobool = icmp ne i64 %and14, 0, !dbg !5369
  br i1 %tobool, label %if.then, label %if.else, !dbg !5370

if.then:                                          ; preds = %sw.bb11
  %17 = load i32*, i32** %data.addr, align 8, !dbg !5371
  %arrayidx15 = getelementptr i32, i32* %17, i64 1, !dbg !5371
  store i32 1, i32* %arrayidx15, align 4, !dbg !5373
  %18 = load i32*, i32** %data.addr, align 8, !dbg !5374
  %arrayidx16 = getelementptr i32, i32* %18, i64 2, !dbg !5374
  store i32 0, i32* %arrayidx16, align 4, !dbg !5375
  br label %if.end, !dbg !5376

if.else:                                          ; preds = %sw.bb11
  %19 = load i32*, i32** %data.addr, align 8, !dbg !5377
  %arrayidx17 = getelementptr i32, i32* %19, i64 1, !dbg !5377
  store i32 0, i32* %arrayidx17, align 4, !dbg !5379
  %20 = load i32*, i32** %data.addr, align 8, !dbg !5380
  %arrayidx18 = getelementptr i32, i32* %20, i64 2, !dbg !5380
  store i32 1000, i32* %arrayidx18, align 4, !dbg !5381
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog20, !dbg !5382

sw.default19:                                     ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5383
  br label %return, !dbg !5383

sw.epilog20:                                      ; preds = %if.end, %sw.epilog
  %21 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5384
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %21, i32 0, i32 1, !dbg !5385
  %22 = load i32, i32* %n, align 4, !dbg !5385
  store i32 %22, i32* %retval, align 4, !dbg !5386
  br label %return, !dbg !5386

return:                                           ; preds = %sw.epilog20, %sw.default19, %sw.default
  %23 = load i32, i32* %retval, align 4, !dbg !5387
  ret i32 %23, !dbg !5387
}

; Function Attrs: noredzone
declare dso_local void @comedi_8254_set_busy(%struct.comedi_8254*, i32, i1 zeroext) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outw(i16 zeroext %value, i32 %port) #2 !dbg !5388 {
entry:
  %value.addr = alloca i16, align 2
  %port.addr = alloca i32, align 4
  store i16 %value, i16* %value.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %value.addr, metadata !5392, metadata !DIExpression()), !dbg !5393
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5394, metadata !DIExpression()), !dbg !5393
  %0 = load i16, i16* %value.addr, align 2, !dbg !5393
  %1 = load i32, i32* %port.addr, align 4, !dbg !5393
  call void asm sideeffect "outw ${0:w}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %1) #6, !dbg !5393, !srcloc !5395
  ret void, !dbg !5393
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outb(i8 zeroext %value, i32 %port) #2 !dbg !5396 {
entry:
  %value.addr = alloca i8, align 1
  %port.addr = alloca i32, align 4
  store i8 %value, i8* %value.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %value.addr, metadata !5399, metadata !DIExpression()), !dbg !5400
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5401, metadata !DIExpression()), !dbg !5400
  %0 = load i8, i8* %value.addr, align 1, !dbg !5400
  %1 = load i32, i32* %port.addr, align 4, !dbg !5400
  call void asm sideeffect "outb ${0:b}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i8 %0, i32 %1) #6, !dbg !5400, !srcloc !5402
  ret void, !dbg !5400
}

; Function Attrs: noredzone
declare dso_local i32 @request_threaded_irq(i32, i32 (i32, i8*)*, i32 (i32, i8*)*, i64, i8*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i16 @inw(i32 %port) #2 !dbg !5403 {
entry:
  %port.addr = alloca i32, align 4
  %value = alloca i16, align 2
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5406, metadata !DIExpression()), !dbg !5407
  call void @llvm.dbg.declare(metadata i16* %value, metadata !5408, metadata !DIExpression()), !dbg !5407
  %0 = load i32, i32* %port.addr, align 4, !dbg !5407
  %1 = call i16 asm sideeffect "inw ${1:w}, ${0:w}", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #6, !dbg !5407, !srcloc !5409
  store i16 %1, i16* %value, align 2, !dbg !5407
  %2 = load i16, i16* %value, align 2, !dbg !5407
  ret i16 %2, !dbg !5407
}

; Function Attrs: noredzone
declare dso_local void @comedi_8254_pacer_enable(%struct.comedi_8254*, i32, i32, i1 zeroext) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pci1710_handle_every_sample(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #2 !dbg !5410 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %cmd = alloca %struct.comedi_cmd*, align 8
  %status = alloca i32, align 4
  %val = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5413, metadata !DIExpression()), !dbg !5414
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5415, metadata !DIExpression()), !dbg !5416
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd, metadata !5417, metadata !DIExpression()), !dbg !5418
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5419
  %async = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 7, !dbg !5420
  %1 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5420
  %cmd1 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %1, i32 0, i32 17, !dbg !5421
  store %struct.comedi_cmd* %cmd1, %struct.comedi_cmd** %cmd, align 8, !dbg !5418
  call void @llvm.dbg.declare(metadata i32* %status, metadata !5422, metadata !DIExpression()), !dbg !5423
  call void @llvm.dbg.declare(metadata i32* %val, metadata !5424, metadata !DIExpression()), !dbg !5425
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5426, metadata !DIExpression()), !dbg !5427
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5428
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %2, i32 0, i32 18, !dbg !5429
  %3 = load i64, i64* %iobase, align 8, !dbg !5429
  %add = add i64 %3, 6, !dbg !5430
  %conv = trunc i64 %add to i32, !dbg !5428
  %call = call zeroext i16 @inw(i32 %conv) #5, !dbg !5431
  %conv2 = zext i16 %call to i32, !dbg !5431
  store i32 %conv2, i32* %status, align 4, !dbg !5432
  %4 = load i32, i32* %status, align 4, !dbg !5433
  %conv3 = zext i32 %4 to i64, !dbg !5433
  %and = and i64 %conv3, 256, !dbg !5435
  %tobool = icmp ne i64 %and, 0, !dbg !5435
  br i1 %tobool, label %if.then, label %if.end, !dbg !5436

if.then:                                          ; preds = %entry
  %5 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5437
  %async4 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %5, i32 0, i32 7, !dbg !5439
  %6 = load %struct.comedi_async*, %struct.comedi_async** %async4, align 8, !dbg !5439
  %events = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %6, i32 0, i32 16, !dbg !5440
  %7 = load i32, i32* %events, align 4, !dbg !5441
  %or = or i32 %7, 16, !dbg !5441
  store i32 %or, i32* %events, align 4, !dbg !5441
  br label %return, !dbg !5442

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %status, align 4, !dbg !5443
  %conv5 = zext i32 %8 to i64, !dbg !5443
  %and6 = and i64 %conv5, 1024, !dbg !5445
  %tobool7 = icmp ne i64 %and6, 0, !dbg !5445
  br i1 %tobool7, label %if.then8, label %if.end12, !dbg !5446

if.then8:                                         ; preds = %if.end
  %9 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5447
  %async9 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %9, i32 0, i32 7, !dbg !5449
  %10 = load %struct.comedi_async*, %struct.comedi_async** %async9, align 8, !dbg !5449
  %events10 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %10, i32 0, i32 16, !dbg !5450
  %11 = load i32, i32* %events10, align 4, !dbg !5451
  %or11 = or i32 %11, 16, !dbg !5451
  store i32 %or11, i32* %events10, align 4, !dbg !5451
  br label %return, !dbg !5452

if.end12:                                         ; preds = %if.end
  %12 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5453
  %iobase13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 18, !dbg !5454
  %13 = load i64, i64* %iobase13, align 8, !dbg !5454
  %add14 = add i64 %13, 8, !dbg !5455
  %conv15 = trunc i64 %add14 to i32, !dbg !5453
  call void @outb(i8 zeroext 0, i32 %conv15) #5, !dbg !5456
  br label %for.cond, !dbg !5457

for.cond:                                         ; preds = %if.end40, %if.end12
  %14 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5458
  %iobase16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 18, !dbg !5461
  %15 = load i64, i64* %iobase16, align 8, !dbg !5461
  %add17 = add i64 %15, 6, !dbg !5462
  %conv18 = trunc i64 %add17 to i32, !dbg !5458
  %call19 = call zeroext i16 @inw(i32 %conv18) #5, !dbg !5463
  %conv20 = zext i16 %call19 to i64, !dbg !5463
  %and21 = and i64 %conv20, 256, !dbg !5464
  %tobool22 = icmp ne i64 %and21, 0, !dbg !5465
  %lnot = xor i1 %tobool22, true, !dbg !5465
  br i1 %lnot, label %for.body, label %for.end, !dbg !5466

for.body:                                         ; preds = %for.cond
  %16 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5467
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5469
  %18 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5470
  %async23 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %18, i32 0, i32 7, !dbg !5471
  %19 = load %struct.comedi_async*, %struct.comedi_async** %async23, align 8, !dbg !5471
  %cur_chan = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %19, i32 0, i32 10, !dbg !5472
  %20 = load i32, i32* %cur_chan, align 4, !dbg !5472
  %call24 = call i32 @pci1710_ai_read_sample(%struct.comedi_device* %16, %struct.comedi_subdevice* %17, i32 %20, i32* %val) #5, !dbg !5473
  store i32 %call24, i32* %ret, align 4, !dbg !5474
  %21 = load i32, i32* %ret, align 4, !dbg !5475
  %tobool25 = icmp ne i32 %21, 0, !dbg !5475
  br i1 %tobool25, label %if.then26, label %if.end30, !dbg !5477

if.then26:                                        ; preds = %for.body
  %22 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5478
  %async27 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %22, i32 0, i32 7, !dbg !5480
  %23 = load %struct.comedi_async*, %struct.comedi_async** %async27, align 8, !dbg !5480
  %events28 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %23, i32 0, i32 16, !dbg !5481
  %24 = load i32, i32* %events28, align 4, !dbg !5482
  %or29 = or i32 %24, 16, !dbg !5482
  store i32 %or29, i32* %events28, align 4, !dbg !5482
  br label %for.end, !dbg !5483

if.end30:                                         ; preds = %for.body
  %25 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5484
  %26 = bitcast i32* %val to i8*, !dbg !5485
  %call31 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %25, i8* %26, i32 1) #5, !dbg !5486
  %27 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5487
  %stop_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %27, i32 0, i32 10, !dbg !5489
  %28 = load i32, i32* %stop_src, align 8, !dbg !5489
  %cmp = icmp eq i32 %28, 32, !dbg !5490
  br i1 %cmp, label %land.lhs.true, label %if.end40, !dbg !5491

land.lhs.true:                                    ; preds = %if.end30
  %29 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5492
  %async33 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %29, i32 0, i32 7, !dbg !5493
  %30 = load %struct.comedi_async*, %struct.comedi_async** %async33, align 8, !dbg !5493
  %scans_done = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %30, i32 0, i32 11, !dbg !5494
  %31 = load i32, i32* %scans_done, align 8, !dbg !5494
  %32 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5495
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %32, i32 0, i32 11, !dbg !5496
  %33 = load i32, i32* %stop_arg, align 4, !dbg !5496
  %cmp34 = icmp uge i32 %31, %33, !dbg !5497
  br i1 %cmp34, label %if.then36, label %if.end40, !dbg !5498

if.then36:                                        ; preds = %land.lhs.true
  %34 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5499
  %async37 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %34, i32 0, i32 7, !dbg !5501
  %35 = load %struct.comedi_async*, %struct.comedi_async** %async37, align 8, !dbg !5501
  %events38 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %35, i32 0, i32 16, !dbg !5502
  %36 = load i32, i32* %events38, align 4, !dbg !5503
  %or39 = or i32 %36, 2, !dbg !5503
  store i32 %or39, i32* %events38, align 4, !dbg !5503
  br label %for.end, !dbg !5504

if.end40:                                         ; preds = %land.lhs.true, %if.end30
  br label %for.cond, !dbg !5505, !llvm.loop !5506

for.end:                                          ; preds = %if.then36, %if.then26, %for.cond
  %37 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5508
  %iobase41 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %37, i32 0, i32 18, !dbg !5509
  %38 = load i64, i64* %iobase41, align 8, !dbg !5509
  %add42 = add i64 %38, 8, !dbg !5510
  %conv43 = trunc i64 %add42 to i32, !dbg !5508
  call void @outb(i8 zeroext 0, i32 %conv43) #5, !dbg !5511
  br label %return, !dbg !5512

return:                                           ; preds = %for.end, %if.then8, %if.then
  ret void, !dbg !5512
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pci1710_handle_fifo(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #2 !dbg !5513 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %devpriv = alloca %struct.pci1710_private*, align 8
  %async = alloca %struct.comedi_async*, align 8
  %cmd = alloca %struct.comedi_cmd*, align 8
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  %val = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5514, metadata !DIExpression()), !dbg !5515
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5516, metadata !DIExpression()), !dbg !5517
  call void @llvm.dbg.declare(metadata %struct.pci1710_private** %devpriv, metadata !5518, metadata !DIExpression()), !dbg !5519
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5520
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5521
  %1 = load i8*, i8** %private, align 8, !dbg !5521
  %2 = bitcast i8* %1 to %struct.pci1710_private*, !dbg !5520
  store %struct.pci1710_private* %2, %struct.pci1710_private** %devpriv, align 8, !dbg !5519
  call void @llvm.dbg.declare(metadata %struct.comedi_async** %async, metadata !5522, metadata !DIExpression()), !dbg !5523
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5524
  %async1 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %3, i32 0, i32 7, !dbg !5525
  %4 = load %struct.comedi_async*, %struct.comedi_async** %async1, align 8, !dbg !5525
  store %struct.comedi_async* %4, %struct.comedi_async** %async, align 8, !dbg !5523
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd, metadata !5526, metadata !DIExpression()), !dbg !5527
  %5 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5528
  %cmd2 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %5, i32 0, i32 17, !dbg !5529
  store %struct.comedi_cmd* %cmd2, %struct.comedi_cmd** %cmd, align 8, !dbg !5527
  call void @llvm.dbg.declare(metadata i32* %status, metadata !5530, metadata !DIExpression()), !dbg !5531
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5532, metadata !DIExpression()), !dbg !5533
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5534
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 18, !dbg !5535
  %7 = load i64, i64* %iobase, align 8, !dbg !5535
  %add = add i64 %7, 6, !dbg !5536
  %conv = trunc i64 %add to i32, !dbg !5534
  %call = call zeroext i16 @inw(i32 %conv) #5, !dbg !5537
  %conv3 = zext i16 %call to i32, !dbg !5537
  store i32 %conv3, i32* %status, align 4, !dbg !5538
  %8 = load i32, i32* %status, align 4, !dbg !5539
  %conv4 = zext i32 %8 to i64, !dbg !5539
  %and = and i64 %conv4, 512, !dbg !5541
  %tobool = icmp ne i64 %and, 0, !dbg !5541
  br i1 %tobool, label %if.end, label %if.then, !dbg !5542

if.then:                                          ; preds = %entry
  %9 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5543
  %events = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %9, i32 0, i32 16, !dbg !5545
  %10 = load i32, i32* %events, align 4, !dbg !5546
  %or = or i32 %10, 16, !dbg !5546
  store i32 %or, i32* %events, align 4, !dbg !5546
  br label %return, !dbg !5547

if.end:                                           ; preds = %entry
  %11 = load i32, i32* %status, align 4, !dbg !5548
  %conv5 = zext i32 %11 to i64, !dbg !5548
  %and6 = and i64 %conv5, 1024, !dbg !5550
  %tobool7 = icmp ne i64 %and6, 0, !dbg !5550
  br i1 %tobool7, label %if.then8, label %if.end11, !dbg !5551

if.then8:                                         ; preds = %if.end
  %12 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5552
  %events9 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %12, i32 0, i32 16, !dbg !5554
  %13 = load i32, i32* %events9, align 4, !dbg !5555
  %or10 = or i32 %13, 16, !dbg !5555
  store i32 %or10, i32* %events9, align 4, !dbg !5555
  br label %return, !dbg !5556

if.end11:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4, !dbg !5557
  br label %for.cond, !dbg !5559

for.cond:                                         ; preds = %for.inc, %if.end11
  %14 = load i32, i32* %i, align 4, !dbg !5560
  %15 = load %struct.pci1710_private*, %struct.pci1710_private** %devpriv, align 8, !dbg !5562
  %max_samples = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %15, i32 0, i32 0, !dbg !5563
  %16 = load i32, i32* %max_samples, align 4, !dbg !5563
  %cmp = icmp ult i32 %14, %16, !dbg !5564
  br i1 %cmp, label %for.body, label %for.end, !dbg !5565

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %val, metadata !5566, metadata !DIExpression()), !dbg !5568
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5569, metadata !DIExpression()), !dbg !5570
  %17 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5571
  %18 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5572
  %19 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5573
  %async13 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %19, i32 0, i32 7, !dbg !5574
  %20 = load %struct.comedi_async*, %struct.comedi_async** %async13, align 8, !dbg !5574
  %cur_chan = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %20, i32 0, i32 10, !dbg !5575
  %21 = load i32, i32* %cur_chan, align 4, !dbg !5575
  %call14 = call i32 @pci1710_ai_read_sample(%struct.comedi_device* %17, %struct.comedi_subdevice* %18, i32 %21, i32* %val) #5, !dbg !5576
  store i32 %call14, i32* %ret, align 4, !dbg !5577
  %22 = load i32, i32* %ret, align 4, !dbg !5578
  %tobool15 = icmp ne i32 %22, 0, !dbg !5578
  br i1 %tobool15, label %if.then16, label %if.end20, !dbg !5580

if.then16:                                        ; preds = %for.body
  %23 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5581
  %async17 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %23, i32 0, i32 7, !dbg !5583
  %24 = load %struct.comedi_async*, %struct.comedi_async** %async17, align 8, !dbg !5583
  %events18 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %24, i32 0, i32 16, !dbg !5584
  %25 = load i32, i32* %events18, align 4, !dbg !5585
  %or19 = or i32 %25, 16, !dbg !5585
  store i32 %or19, i32* %events18, align 4, !dbg !5585
  br label %for.end, !dbg !5586

if.end20:                                         ; preds = %for.body
  %26 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5587
  %27 = bitcast i32* %val to i8*, !dbg !5589
  %call21 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %26, i8* %27, i32 1) #5, !dbg !5590
  %tobool22 = icmp ne i32 %call21, 0, !dbg !5590
  br i1 %tobool22, label %if.end24, label %if.then23, !dbg !5591

if.then23:                                        ; preds = %if.end20
  br label %for.end, !dbg !5592

if.end24:                                         ; preds = %if.end20
  %28 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5593
  %stop_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %28, i32 0, i32 10, !dbg !5595
  %29 = load i32, i32* %stop_src, align 8, !dbg !5595
  %cmp25 = icmp eq i32 %29, 32, !dbg !5596
  br i1 %cmp25, label %land.lhs.true, label %if.end32, !dbg !5597

land.lhs.true:                                    ; preds = %if.end24
  %30 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5598
  %scans_done = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %30, i32 0, i32 11, !dbg !5599
  %31 = load i32, i32* %scans_done, align 8, !dbg !5599
  %32 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5600
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %32, i32 0, i32 11, !dbg !5601
  %33 = load i32, i32* %stop_arg, align 4, !dbg !5601
  %cmp27 = icmp uge i32 %31, %33, !dbg !5602
  br i1 %cmp27, label %if.then29, label %if.end32, !dbg !5603

if.then29:                                        ; preds = %land.lhs.true
  %34 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5604
  %events30 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %34, i32 0, i32 16, !dbg !5606
  %35 = load i32, i32* %events30, align 4, !dbg !5607
  %or31 = or i32 %35, 2, !dbg !5607
  store i32 %or31, i32* %events30, align 4, !dbg !5607
  br label %for.end, !dbg !5608

if.end32:                                         ; preds = %land.lhs.true, %if.end24
  br label %for.inc, !dbg !5609

for.inc:                                          ; preds = %if.end32
  %36 = load i32, i32* %i, align 4, !dbg !5610
  %inc = add i32 %36, 1, !dbg !5610
  store i32 %inc, i32* %i, align 4, !dbg !5610
  br label %for.cond, !dbg !5611, !llvm.loop !5612

for.end:                                          ; preds = %if.then29, %if.then23, %if.then16, %for.cond
  %37 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5614
  %iobase33 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %37, i32 0, i32 18, !dbg !5615
  %38 = load i64, i64* %iobase33, align 8, !dbg !5615
  %add34 = add i64 %38, 8, !dbg !5616
  %conv35 = trunc i64 %add34 to i32, !dbg !5614
  call void @outb(i8 zeroext 0, i32 %conv35) #5, !dbg !5617
  br label %return, !dbg !5618

return:                                           ; preds = %for.end, %if.then8, %if.then
  ret void, !dbg !5618
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci1710_ai_read_sample(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, i32 %cur_chan, i32* %val) #2 !dbg !5619 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %cur_chan.addr = alloca i32, align 4
  %val.addr = alloca i32*, align 8
  %board = alloca %struct.boardtype*, align 8
  %devpriv = alloca %struct.pci1710_private*, align 8
  %sample = alloca i32, align 4
  %chan = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5622, metadata !DIExpression()), !dbg !5623
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5624, metadata !DIExpression()), !dbg !5625
  store i32 %cur_chan, i32* %cur_chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cur_chan.addr, metadata !5626, metadata !DIExpression()), !dbg !5627
  store i32* %val, i32** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %val.addr, metadata !5628, metadata !DIExpression()), !dbg !5629
  call void @llvm.dbg.declare(metadata %struct.boardtype** %board, metadata !5630, metadata !DIExpression()), !dbg !5631
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5632
  %board_ptr = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 9, !dbg !5633
  %1 = load i8*, i8** %board_ptr, align 8, !dbg !5633
  %2 = bitcast i8* %1 to %struct.boardtype*, !dbg !5632
  store %struct.boardtype* %2, %struct.boardtype** %board, align 8, !dbg !5631
  call void @llvm.dbg.declare(metadata %struct.pci1710_private** %devpriv, metadata !5634, metadata !DIExpression()), !dbg !5635
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5636
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %3, i32 0, i32 3, !dbg !5637
  %4 = load i8*, i8** %private, align 8, !dbg !5637
  %5 = bitcast i8* %4 to %struct.pci1710_private*, !dbg !5636
  store %struct.pci1710_private* %5, %struct.pci1710_private** %devpriv, align 8, !dbg !5635
  call void @llvm.dbg.declare(metadata i32* %sample, metadata !5638, metadata !DIExpression()), !dbg !5639
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !5640, metadata !DIExpression()), !dbg !5641
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5642
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 18, !dbg !5643
  %7 = load i64, i64* %iobase, align 8, !dbg !5643
  %add = add i64 %7, 0, !dbg !5644
  %conv = trunc i64 %add to i32, !dbg !5642
  %call = call zeroext i16 @inw(i32 %conv) #5, !dbg !5645
  %conv1 = zext i16 %call to i32, !dbg !5645
  store i32 %conv1, i32* %sample, align 4, !dbg !5646
  %8 = load %struct.boardtype*, %struct.boardtype** %board, align 8, !dbg !5647
  %is_pci1713 = getelementptr inbounds %struct.boardtype, %struct.boardtype* %8, i32 0, i32 2, !dbg !5649
  %bf.load = load i8, i8* %is_pci1713, align 8, !dbg !5649
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !5649
  %bf.clear = and i8 %bf.lshr, 1, !dbg !5649
  %bf.cast = zext i8 %bf.clear to i32, !dbg !5649
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5647
  br i1 %tobool, label %if.end7, label %if.then, !dbg !5650

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %sample, align 4, !dbg !5651
  %shr = lshr i32 %9, 12, !dbg !5653
  store i32 %shr, i32* %chan, align 4, !dbg !5654
  %10 = load i32, i32* %chan, align 4, !dbg !5655
  %11 = load %struct.pci1710_private*, %struct.pci1710_private** %devpriv, align 8, !dbg !5657
  %act_chanlist = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %11, i32 0, i32 5, !dbg !5658
  %12 = load i32, i32* %cur_chan.addr, align 4, !dbg !5659
  %idxprom = zext i32 %12 to i64, !dbg !5657
  %arrayidx = getelementptr [32 x i32], [32 x i32]* %act_chanlist, i64 0, i64 %idxprom, !dbg !5657
  %13 = load i32, i32* %arrayidx, align 4, !dbg !5657
  %cmp = icmp ne i32 %10, %13, !dbg !5660
  br i1 %cmp, label %if.then3, label %if.end, !dbg !5661

if.then3:                                         ; preds = %if.then
  %14 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5662
  %class_dev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 4, !dbg !5662
  %15 = load %struct.device*, %struct.device** %class_dev, align 8, !dbg !5662
  %16 = load i32, i32* %chan, align 4, !dbg !5662
  %17 = load %struct.pci1710_private*, %struct.pci1710_private** %devpriv, align 8, !dbg !5662
  %act_chanlist4 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %17, i32 0, i32 5, !dbg !5662
  %18 = load i32, i32* %cur_chan.addr, align 4, !dbg !5662
  %idxprom5 = zext i32 %18 to i64, !dbg !5662
  %arrayidx6 = getelementptr [32 x i32], [32 x i32]* %act_chanlist4, i64 0, i64 %idxprom5, !dbg !5662
  %19 = load i32, i32* %arrayidx6, align 4, !dbg !5662
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %15, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.9, i64 0, i64 0), i32 %16, i32 %19) #7, !dbg !5662
  store i32 -61, i32* %retval, align 4, !dbg !5664
  br label %return, !dbg !5664

if.end:                                           ; preds = %if.then
  br label %if.end7, !dbg !5665

if.end7:                                          ; preds = %if.end, %entry
  %20 = load i32, i32* %sample, align 4, !dbg !5666
  %21 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5667
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %21, i32 0, i32 13, !dbg !5668
  %22 = load i32, i32* %maxdata, align 8, !dbg !5668
  %and = and i32 %20, %22, !dbg !5669
  %23 = load i32*, i32** %val.addr, align 8, !dbg !5670
  store i32 %and, i32* %23, align 4, !dbg !5671
  store i32 0, i32* %retval, align 4, !dbg !5672
  br label %return, !dbg !5672

return:                                           ; preds = %if.end7, %if.then3
  %24 = load i32, i32* %retval, align 4, !dbg !5673
  ret i32 %24, !dbg !5673
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice*, i8*, i32) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pci1710_ai_setup_chanlist(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, i32* %chanlist, i32 %n_chan, i32 %seglen) #2 !dbg !5674 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %chanlist.addr = alloca i32*, align 8
  %n_chan.addr = alloca i32, align 4
  %seglen.addr = alloca i32, align 4
  %devpriv = alloca %struct.pci1710_private*, align 8
  %first_chan = alloca i32, align 4
  %last_chan = alloca i32, align 4
  %i = alloca i32, align 4
  %chan = alloca i32, align 4
  %range = alloca i32, align 4
  %aref = alloca i32, align 4
  %rangeval = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5677, metadata !DIExpression()), !dbg !5678
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5679, metadata !DIExpression()), !dbg !5680
  store i32* %chanlist, i32** %chanlist.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %chanlist.addr, metadata !5681, metadata !DIExpression()), !dbg !5682
  store i32 %n_chan, i32* %n_chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n_chan.addr, metadata !5683, metadata !DIExpression()), !dbg !5684
  store i32 %seglen, i32* %seglen.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %seglen.addr, metadata !5685, metadata !DIExpression()), !dbg !5686
  call void @llvm.dbg.declare(metadata %struct.pci1710_private** %devpriv, metadata !5687, metadata !DIExpression()), !dbg !5688
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5689
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5690
  %1 = load i8*, i8** %private, align 8, !dbg !5690
  %2 = bitcast i8* %1 to %struct.pci1710_private*, !dbg !5689
  store %struct.pci1710_private* %2, %struct.pci1710_private** %devpriv, align 8, !dbg !5688
  call void @llvm.dbg.declare(metadata i32* %first_chan, metadata !5691, metadata !DIExpression()), !dbg !5692
  %3 = load i32*, i32** %chanlist.addr, align 8, !dbg !5693
  %arrayidx = getelementptr i32, i32* %3, i64 0, !dbg !5693
  %4 = load i32, i32* %arrayidx, align 4, !dbg !5693
  %and = and i32 %4, 65535, !dbg !5693
  store i32 %and, i32* %first_chan, align 4, !dbg !5692
  call void @llvm.dbg.declare(metadata i32* %last_chan, metadata !5694, metadata !DIExpression()), !dbg !5695
  %5 = load i32*, i32** %chanlist.addr, align 8, !dbg !5696
  %6 = load i32, i32* %seglen.addr, align 4, !dbg !5696
  %sub = sub i32 %6, 1, !dbg !5696
  %idxprom = zext i32 %sub to i64, !dbg !5696
  %arrayidx1 = getelementptr i32, i32* %5, i64 %idxprom, !dbg !5696
  %7 = load i32, i32* %arrayidx1, align 4, !dbg !5696
  %and2 = and i32 %7, 65535, !dbg !5696
  store i32 %and2, i32* %last_chan, align 4, !dbg !5695
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5697, metadata !DIExpression()), !dbg !5698
  store i32 0, i32* %i, align 4, !dbg !5699
  br label %for.cond, !dbg !5701

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4, !dbg !5702
  %9 = load i32, i32* %seglen.addr, align 4, !dbg !5704
  %cmp = icmp ult i32 %8, %9, !dbg !5705
  br i1 %cmp, label %for.body, label %for.end, !dbg !5706

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !5707, metadata !DIExpression()), !dbg !5709
  %10 = load i32*, i32** %chanlist.addr, align 8, !dbg !5710
  %11 = load i32, i32* %i, align 4, !dbg !5710
  %idxprom3 = zext i32 %11 to i64, !dbg !5710
  %arrayidx4 = getelementptr i32, i32* %10, i64 %idxprom3, !dbg !5710
  %12 = load i32, i32* %arrayidx4, align 4, !dbg !5710
  %and5 = and i32 %12, 65535, !dbg !5710
  store i32 %and5, i32* %chan, align 4, !dbg !5709
  call void @llvm.dbg.declare(metadata i32* %range, metadata !5711, metadata !DIExpression()), !dbg !5712
  %13 = load i32*, i32** %chanlist.addr, align 8, !dbg !5713
  %14 = load i32, i32* %i, align 4, !dbg !5713
  %idxprom6 = zext i32 %14 to i64, !dbg !5713
  %arrayidx7 = getelementptr i32, i32* %13, i64 %idxprom6, !dbg !5713
  %15 = load i32, i32* %arrayidx7, align 4, !dbg !5713
  %shr = lshr i32 %15, 16, !dbg !5713
  %and8 = and i32 %shr, 255, !dbg !5713
  store i32 %and8, i32* %range, align 4, !dbg !5712
  call void @llvm.dbg.declare(metadata i32* %aref, metadata !5714, metadata !DIExpression()), !dbg !5715
  %16 = load i32*, i32** %chanlist.addr, align 8, !dbg !5716
  %17 = load i32, i32* %i, align 4, !dbg !5716
  %idxprom9 = zext i32 %17 to i64, !dbg !5716
  %arrayidx10 = getelementptr i32, i32* %16, i64 %idxprom9, !dbg !5716
  %18 = load i32, i32* %arrayidx10, align 4, !dbg !5716
  %shr11 = lshr i32 %18, 24, !dbg !5716
  %and12 = and i32 %shr11, 3, !dbg !5716
  store i32 %and12, i32* %aref, align 4, !dbg !5715
  call void @llvm.dbg.declare(metadata i32* %rangeval, metadata !5717, metadata !DIExpression()), !dbg !5718
  store i32 0, i32* %rangeval, align 4, !dbg !5718
  %19 = load i32, i32* %aref, align 4, !dbg !5719
  %cmp13 = icmp eq i32 %19, 2, !dbg !5721
  br i1 %cmp13, label %if.then, label %if.end, !dbg !5722

if.then:                                          ; preds = %for.body
  %20 = load i32, i32* %rangeval, align 4, !dbg !5723
  %conv = zext i32 %20 to i64, !dbg !5723
  %or = or i64 %conv, 32, !dbg !5723
  %conv14 = trunc i64 %or to i32, !dbg !5723
  store i32 %conv14, i32* %rangeval, align 4, !dbg !5723
  br label %if.end, !dbg !5724

if.end:                                           ; preds = %if.then, %for.body
  %21 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5725
  %22 = load i32, i32* %range, align 4, !dbg !5727
  %call = call zeroext i1 @comedi_range_is_unipolar(%struct.comedi_subdevice* %21, i32 %22) #5, !dbg !5728
  br i1 %call, label %if.then15, label %if.end21, !dbg !5729

if.then15:                                        ; preds = %if.end
  %23 = load i32, i32* %rangeval, align 4, !dbg !5730
  %conv16 = zext i32 %23 to i64, !dbg !5730
  %or17 = or i64 %conv16, 16, !dbg !5730
  %conv18 = trunc i64 %or17 to i32, !dbg !5730
  store i32 %conv18, i32* %rangeval, align 4, !dbg !5730
  %24 = load %struct.pci1710_private*, %struct.pci1710_private** %devpriv, align 8, !dbg !5732
  %unipolar_gain = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %24, i32 0, i32 8, !dbg !5733
  %25 = load i8, i8* %unipolar_gain, align 2, !dbg !5733
  %conv19 = zext i8 %25 to i32, !dbg !5732
  %26 = load i32, i32* %range, align 4, !dbg !5734
  %sub20 = sub i32 %26, %conv19, !dbg !5734
  store i32 %sub20, i32* %range, align 4, !dbg !5734
  br label %if.end21, !dbg !5735

if.end21:                                         ; preds = %if.then15, %if.end
  %27 = load i32, i32* %range, align 4, !dbg !5736
  %and22 = and i32 %27, 7, !dbg !5736
  %shl = shl i32 %and22, 0, !dbg !5736
  %28 = load i32, i32* %rangeval, align 4, !dbg !5737
  %or23 = or i32 %28, %shl, !dbg !5737
  store i32 %or23, i32* %rangeval, align 4, !dbg !5737
  %29 = load i32, i32* %chan, align 4, !dbg !5738
  %and24 = and i32 %29, 255, !dbg !5738
  %shl25 = shl i32 %and24, 8, !dbg !5738
  %30 = load i32, i32* %chan, align 4, !dbg !5738
  %and26 = and i32 %30, 255, !dbg !5738
  %shl27 = shl i32 %and26, 0, !dbg !5738
  %or28 = or i32 %shl25, %shl27, !dbg !5738
  %conv29 = trunc i32 %or28 to i16, !dbg !5738
  %31 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5739
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %31, i32 0, i32 18, !dbg !5740
  %32 = load i64, i64* %iobase, align 8, !dbg !5740
  %add = add i64 %32, 4, !dbg !5741
  %conv30 = trunc i64 %add to i32, !dbg !5739
  call void @outw(i16 zeroext %conv29, i32 %conv30) #5, !dbg !5742
  %33 = load i32, i32* %rangeval, align 4, !dbg !5743
  %conv31 = trunc i32 %33 to i16, !dbg !5743
  %34 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5744
  %iobase32 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %34, i32 0, i32 18, !dbg !5745
  %35 = load i64, i64* %iobase32, align 8, !dbg !5745
  %add33 = add i64 %35, 2, !dbg !5746
  %conv34 = trunc i64 %add33 to i32, !dbg !5744
  call void @outw(i16 zeroext %conv31, i32 %conv34) #5, !dbg !5747
  %36 = load i32, i32* %chan, align 4, !dbg !5748
  %37 = load %struct.pci1710_private*, %struct.pci1710_private** %devpriv, align 8, !dbg !5749
  %act_chanlist = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %37, i32 0, i32 5, !dbg !5750
  %38 = load i32, i32* %i, align 4, !dbg !5751
  %idxprom35 = zext i32 %38 to i64, !dbg !5749
  %arrayidx36 = getelementptr [32 x i32], [32 x i32]* %act_chanlist, i64 0, i64 %idxprom35, !dbg !5749
  store i32 %36, i32* %arrayidx36, align 4, !dbg !5752
  br label %for.inc, !dbg !5753

for.inc:                                          ; preds = %if.end21
  %39 = load i32, i32* %i, align 4, !dbg !5754
  %inc = add i32 %39, 1, !dbg !5754
  store i32 %inc, i32* %i, align 4, !dbg !5754
  br label %for.cond, !dbg !5755, !llvm.loop !5756

for.end:                                          ; preds = %for.cond
  br label %for.cond37, !dbg !5758

for.cond37:                                       ; preds = %for.inc47, %for.end
  %40 = load i32, i32* %i, align 4, !dbg !5759
  %41 = load i32, i32* %n_chan.addr, align 4, !dbg !5762
  %cmp38 = icmp ult i32 %40, %41, !dbg !5763
  br i1 %cmp38, label %for.body40, label %for.end49, !dbg !5764

for.body40:                                       ; preds = %for.cond37
  %42 = load i32*, i32** %chanlist.addr, align 8, !dbg !5765
  %43 = load i32, i32* %i, align 4, !dbg !5765
  %idxprom41 = zext i32 %43 to i64, !dbg !5765
  %arrayidx42 = getelementptr i32, i32* %42, i64 %idxprom41, !dbg !5765
  %44 = load i32, i32* %arrayidx42, align 4, !dbg !5765
  %and43 = and i32 %44, 65535, !dbg !5765
  %45 = load %struct.pci1710_private*, %struct.pci1710_private** %devpriv, align 8, !dbg !5766
  %act_chanlist44 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %45, i32 0, i32 5, !dbg !5767
  %46 = load i32, i32* %i, align 4, !dbg !5768
  %idxprom45 = zext i32 %46 to i64, !dbg !5766
  %arrayidx46 = getelementptr [32 x i32], [32 x i32]* %act_chanlist44, i64 0, i64 %idxprom45, !dbg !5766
  store i32 %and43, i32* %arrayidx46, align 4, !dbg !5769
  br label %for.inc47, !dbg !5766

for.inc47:                                        ; preds = %for.body40
  %47 = load i32, i32* %i, align 4, !dbg !5770
  %inc48 = add i32 %47, 1, !dbg !5770
  store i32 %inc48, i32* %i, align 4, !dbg !5770
  br label %for.cond37, !dbg !5771, !llvm.loop !5772

for.end49:                                        ; preds = %for.cond37
  %48 = load i32, i32* %first_chan, align 4, !dbg !5774
  %and50 = and i32 %48, 255, !dbg !5774
  %shl51 = shl i32 %and50, 0, !dbg !5774
  %49 = load i32, i32* %last_chan, align 4, !dbg !5775
  %and52 = and i32 %49, 255, !dbg !5775
  %shl53 = shl i32 %and52, 8, !dbg !5775
  %or54 = or i32 %shl51, %shl53, !dbg !5776
  %50 = load %struct.pci1710_private*, %struct.pci1710_private** %devpriv, align 8, !dbg !5777
  %mux_scan = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %50, i32 0, i32 3, !dbg !5778
  store i32 %or54, i32* %mux_scan, align 4, !dbg !5779
  %51 = load %struct.pci1710_private*, %struct.pci1710_private** %devpriv, align 8, !dbg !5780
  %mux_scan55 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %51, i32 0, i32 3, !dbg !5781
  %52 = load i32, i32* %mux_scan55, align 4, !dbg !5781
  %conv56 = trunc i32 %52 to i16, !dbg !5780
  %53 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5782
  %iobase57 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %53, i32 0, i32 18, !dbg !5783
  %54 = load i64, i64* %iobase57, align 8, !dbg !5783
  %add58 = add i64 %54, 4, !dbg !5784
  %conv59 = trunc i64 %add58 to i32, !dbg !5782
  call void @outw(i16 zeroext %conv56, i32 %conv59) #5, !dbg !5785
  ret void, !dbg !5786
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_timeout(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i64)*, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci1710_ai_eoc(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i64 %context) #2 !dbg !5787 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %context.addr = alloca i64, align 8
  %status = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5790, metadata !DIExpression()), !dbg !5791
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5792, metadata !DIExpression()), !dbg !5793
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5794, metadata !DIExpression()), !dbg !5795
  store i64 %context, i64* %context.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %context.addr, metadata !5796, metadata !DIExpression()), !dbg !5797
  call void @llvm.dbg.declare(metadata i32* %status, metadata !5798, metadata !DIExpression()), !dbg !5799
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5800
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 18, !dbg !5801
  %1 = load i64, i64* %iobase, align 8, !dbg !5801
  %add = add i64 %1, 6, !dbg !5802
  %conv = trunc i64 %add to i32, !dbg !5800
  %call = call zeroext i16 @inw(i32 %conv) #5, !dbg !5803
  %conv1 = zext i16 %call to i32, !dbg !5803
  store i32 %conv1, i32* %status, align 4, !dbg !5804
  %2 = load i32, i32* %status, align 4, !dbg !5805
  %conv2 = zext i32 %2 to i64, !dbg !5805
  %and = and i64 %conv2, 256, !dbg !5807
  %cmp = icmp eq i64 %and, 0, !dbg !5808
  br i1 %cmp, label %if.then, label %if.end, !dbg !5809

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5810
  br label %return, !dbg !5810

if.end:                                           ; preds = %entry
  store i32 -16, i32* %retval, align 4, !dbg !5811
  br label %return, !dbg !5811

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !5812
  ret i32 %3, !dbg !5812
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_src(i32* %src, i32 %flags) #2 !dbg !5813 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i32*, align 8
  %flags.addr = alloca i32, align 4
  %orig_src = alloca i32, align 4
  store i32* %src, i32** %src.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %src.addr, metadata !5816, metadata !DIExpression()), !dbg !5817
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5818, metadata !DIExpression()), !dbg !5819
  call void @llvm.dbg.declare(metadata i32* %orig_src, metadata !5820, metadata !DIExpression()), !dbg !5821
  %0 = load i32*, i32** %src.addr, align 8, !dbg !5822
  %1 = load i32, i32* %0, align 4, !dbg !5823
  store i32 %1, i32* %orig_src, align 4, !dbg !5821
  %2 = load i32, i32* %orig_src, align 4, !dbg !5824
  %3 = load i32, i32* %flags.addr, align 4, !dbg !5825
  %and = and i32 %2, %3, !dbg !5826
  %4 = load i32*, i32** %src.addr, align 8, !dbg !5827
  store i32 %and, i32* %4, align 4, !dbg !5828
  %5 = load i32*, i32** %src.addr, align 8, !dbg !5829
  %6 = load i32, i32* %5, align 4, !dbg !5831
  %cmp = icmp eq i32 %6, 0, !dbg !5832
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5833

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32*, i32** %src.addr, align 8, !dbg !5834
  %8 = load i32, i32* %7, align 4, !dbg !5835
  %9 = load i32, i32* %orig_src, align 4, !dbg !5836
  %cmp1 = icmp ne i32 %8, %9, !dbg !5837
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5838

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !5839
  br label %return, !dbg !5839

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %retval, align 4, !dbg !5840
  br label %return, !dbg !5840

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !5841
  ret i32 %10, !dbg !5841
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_is_unique(i32 %src) #2 !dbg !5842 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i32, align 4
  store i32 %src, i32* %src.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %src.addr, metadata !5845, metadata !DIExpression()), !dbg !5846
  %0 = load i32, i32* %src.addr, align 4, !dbg !5847
  %1 = load i32, i32* %src.addr, align 4, !dbg !5849
  %sub = sub i32 %1, 1, !dbg !5850
  %and = and i32 %0, %sub, !dbg !5851
  %cmp = icmp ne i32 %and, 0, !dbg !5852
  br i1 %cmp, label %if.then, label %if.end, !dbg !5853

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5854
  br label %return, !dbg !5854

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5855
  br label %return, !dbg !5855

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !5856
  ret i32 %2, !dbg !5856
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_arg_is(i32* %arg, i32 %val) #2 !dbg !5857 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca i32*, align 8
  %val.addr = alloca i32, align 4
  store i32* %arg, i32** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %arg.addr, metadata !5858, metadata !DIExpression()), !dbg !5859
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5860, metadata !DIExpression()), !dbg !5861
  %0 = load i32*, i32** %arg.addr, align 8, !dbg !5862
  %1 = load i32, i32* %0, align 4, !dbg !5864
  %2 = load i32, i32* %val.addr, align 4, !dbg !5865
  %cmp = icmp ne i32 %1, %2, !dbg !5866
  br i1 %cmp, label %if.then, label %if.end, !dbg !5867

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %val.addr, align 4, !dbg !5868
  %4 = load i32*, i32** %arg.addr, align 8, !dbg !5870
  store i32 %3, i32* %4, align 4, !dbg !5871
  store i32 -22, i32* %retval, align 4, !dbg !5872
  br label %return, !dbg !5872

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5873
  br label %return, !dbg !5873

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !5874
  ret i32 %5, !dbg !5874
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_arg_min(i32* %arg, i32 %val) #2 !dbg !5875 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca i32*, align 8
  %val.addr = alloca i32, align 4
  store i32* %arg, i32** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %arg.addr, metadata !5876, metadata !DIExpression()), !dbg !5877
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5878, metadata !DIExpression()), !dbg !5879
  %0 = load i32*, i32** %arg.addr, align 8, !dbg !5880
  %1 = load i32, i32* %0, align 4, !dbg !5882
  %2 = load i32, i32* %val.addr, align 4, !dbg !5883
  %cmp = icmp ult i32 %1, %2, !dbg !5884
  br i1 %cmp, label %if.then, label %if.end, !dbg !5885

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %val.addr, align 4, !dbg !5886
  %4 = load i32*, i32** %arg.addr, align 8, !dbg !5888
  store i32 %3, i32* %4, align 4, !dbg !5889
  store i32 -22, i32* %retval, align 4, !dbg !5890
  br label %return, !dbg !5890

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5891
  br label %return, !dbg !5891

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !5892
  ret i32 %5, !dbg !5892
}

; Function Attrs: noredzone
declare dso_local void @comedi_8254_cascade_ns_to_timer(%struct.comedi_8254*, i32*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci1710_ai_check_chanlist(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_cmd* %cmd) #2 !dbg !5893 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %cmd.addr = alloca %struct.comedi_cmd*, align 8
  %devpriv = alloca %struct.pci1710_private*, align 8
  %chan0 = alloca i32, align 4
  %last_aref = alloca i32, align 4
  %next_chan = alloca i32, align 4
  %chansegment = alloca [32 x i32], align 16
  %seglen = alloca i32, align 4
  %i = alloca i32, align 4
  %chan = alloca i32, align 4
  %aref = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5894, metadata !DIExpression()), !dbg !5895
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5896, metadata !DIExpression()), !dbg !5897
  store %struct.comedi_cmd* %cmd, %struct.comedi_cmd** %cmd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd.addr, metadata !5898, metadata !DIExpression()), !dbg !5899
  call void @llvm.dbg.declare(metadata %struct.pci1710_private** %devpriv, metadata !5900, metadata !DIExpression()), !dbg !5901
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5902
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5903
  %1 = load i8*, i8** %private, align 8, !dbg !5903
  %2 = bitcast i8* %1 to %struct.pci1710_private*, !dbg !5902
  store %struct.pci1710_private* %2, %struct.pci1710_private** %devpriv, align 8, !dbg !5901
  call void @llvm.dbg.declare(metadata i32* %chan0, metadata !5904, metadata !DIExpression()), !dbg !5905
  %3 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5906
  %chanlist = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %3, i32 0, i32 12, !dbg !5906
  %4 = load i32*, i32** %chanlist, align 8, !dbg !5906
  %arrayidx = getelementptr i32, i32* %4, i64 0, !dbg !5906
  %5 = load i32, i32* %arrayidx, align 4, !dbg !5906
  %and = and i32 %5, 65535, !dbg !5906
  store i32 %and, i32* %chan0, align 4, !dbg !5905
  call void @llvm.dbg.declare(metadata i32* %last_aref, metadata !5907, metadata !DIExpression()), !dbg !5908
  %6 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5909
  %chanlist1 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %6, i32 0, i32 12, !dbg !5909
  %7 = load i32*, i32** %chanlist1, align 8, !dbg !5909
  %arrayidx2 = getelementptr i32, i32* %7, i64 0, !dbg !5909
  %8 = load i32, i32* %arrayidx2, align 4, !dbg !5909
  %shr = lshr i32 %8, 24, !dbg !5909
  %and3 = and i32 %shr, 3, !dbg !5909
  store i32 %and3, i32* %last_aref, align 4, !dbg !5908
  call void @llvm.dbg.declare(metadata i32* %next_chan, metadata !5910, metadata !DIExpression()), !dbg !5911
  %9 = load i32, i32* %chan0, align 4, !dbg !5912
  %add = add i32 %9, 1, !dbg !5913
  %10 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5914
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %10, i32 0, i32 3, !dbg !5915
  %11 = load i32, i32* %n_chan, align 8, !dbg !5915
  %rem = urem i32 %add, %11, !dbg !5916
  store i32 %rem, i32* %next_chan, align 4, !dbg !5911
  call void @llvm.dbg.declare(metadata [32 x i32]* %chansegment, metadata !5917, metadata !DIExpression()), !dbg !5918
  call void @llvm.dbg.declare(metadata i32* %seglen, metadata !5919, metadata !DIExpression()), !dbg !5920
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5921, metadata !DIExpression()), !dbg !5922
  %12 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5923
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %12, i32 0, i32 13, !dbg !5925
  %13 = load i32, i32* %chanlist_len, align 8, !dbg !5925
  %cmp = icmp eq i32 %13, 1, !dbg !5926
  br i1 %cmp, label %if.then, label %if.end, !dbg !5927

if.then:                                          ; preds = %entry
  %14 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5928
  %chanlist_len4 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %14, i32 0, i32 13, !dbg !5930
  %15 = load i32, i32* %chanlist_len4, align 8, !dbg !5930
  %conv = trunc i32 %15 to i8, !dbg !5928
  %16 = load %struct.pci1710_private*, %struct.pci1710_private** %devpriv, align 8, !dbg !5931
  %saved_seglen = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %16, i32 0, i32 6, !dbg !5932
  store i8 %conv, i8* %saved_seglen, align 4, !dbg !5933
  store i32 0, i32* %retval, align 4, !dbg !5934
  br label %return, !dbg !5934

if.end:                                           ; preds = %entry
  %17 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5935
  %chanlist5 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %17, i32 0, i32 12, !dbg !5936
  %18 = load i32*, i32** %chanlist5, align 8, !dbg !5936
  %arrayidx6 = getelementptr i32, i32* %18, i64 0, !dbg !5935
  %19 = load i32, i32* %arrayidx6, align 4, !dbg !5935
  %arrayidx7 = getelementptr [32 x i32], [32 x i32]* %chansegment, i64 0, i64 0, !dbg !5937
  store i32 %19, i32* %arrayidx7, align 16, !dbg !5938
  store i32 1, i32* %i, align 4, !dbg !5939
  br label %for.cond, !dbg !5941

for.cond:                                         ; preds = %for.inc, %if.end
  %20 = load i32, i32* %i, align 4, !dbg !5942
  %21 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5944
  %chanlist_len8 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %21, i32 0, i32 13, !dbg !5945
  %22 = load i32, i32* %chanlist_len8, align 8, !dbg !5945
  %cmp9 = icmp ult i32 %20, %22, !dbg !5946
  br i1 %cmp9, label %for.body, label %for.end, !dbg !5947

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !5948, metadata !DIExpression()), !dbg !5950
  %23 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5951
  %chanlist11 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %23, i32 0, i32 12, !dbg !5951
  %24 = load i32*, i32** %chanlist11, align 8, !dbg !5951
  %25 = load i32, i32* %i, align 4, !dbg !5951
  %idxprom = sext i32 %25 to i64, !dbg !5951
  %arrayidx12 = getelementptr i32, i32* %24, i64 %idxprom, !dbg !5951
  %26 = load i32, i32* %arrayidx12, align 4, !dbg !5951
  %and13 = and i32 %26, 65535, !dbg !5951
  store i32 %and13, i32* %chan, align 4, !dbg !5950
  call void @llvm.dbg.declare(metadata i32* %aref, metadata !5952, metadata !DIExpression()), !dbg !5953
  %27 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5954
  %chanlist14 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %27, i32 0, i32 12, !dbg !5954
  %28 = load i32*, i32** %chanlist14, align 8, !dbg !5954
  %29 = load i32, i32* %i, align 4, !dbg !5954
  %idxprom15 = sext i32 %29 to i64, !dbg !5954
  %arrayidx16 = getelementptr i32, i32* %28, i64 %idxprom15, !dbg !5954
  %30 = load i32, i32* %arrayidx16, align 4, !dbg !5954
  %shr17 = lshr i32 %30, 24, !dbg !5954
  %and18 = and i32 %shr17, 3, !dbg !5954
  store i32 %and18, i32* %aref, align 4, !dbg !5953
  %31 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5955
  %chanlist19 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %31, i32 0, i32 12, !dbg !5957
  %32 = load i32*, i32** %chanlist19, align 8, !dbg !5957
  %arrayidx20 = getelementptr i32, i32* %32, i64 0, !dbg !5955
  %33 = load i32, i32* %arrayidx20, align 4, !dbg !5955
  %34 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5958
  %chanlist21 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %34, i32 0, i32 12, !dbg !5959
  %35 = load i32*, i32** %chanlist21, align 8, !dbg !5959
  %36 = load i32, i32* %i, align 4, !dbg !5960
  %idxprom22 = sext i32 %36 to i64, !dbg !5958
  %arrayidx23 = getelementptr i32, i32* %35, i64 %idxprom22, !dbg !5958
  %37 = load i32, i32* %arrayidx23, align 4, !dbg !5958
  %cmp24 = icmp eq i32 %33, %37, !dbg !5961
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !5962

if.then26:                                        ; preds = %for.body
  br label %for.end, !dbg !5963

if.end27:                                         ; preds = %for.body
  %38 = load i32, i32* %aref, align 4, !dbg !5964
  %cmp28 = icmp eq i32 %38, 2, !dbg !5966
  br i1 %cmp28, label %land.lhs.true, label %if.end32, !dbg !5967

land.lhs.true:                                    ; preds = %if.end27
  %39 = load i32, i32* %chan, align 4, !dbg !5968
  %and30 = and i32 %39, 1, !dbg !5969
  %tobool = icmp ne i32 %and30, 0, !dbg !5969
  br i1 %tobool, label %if.then31, label %if.end32, !dbg !5970

if.then31:                                        ; preds = %land.lhs.true
  %40 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5971
  %class_dev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %40, i32 0, i32 4, !dbg !5971
  %41 = load %struct.device*, %struct.device** %class_dev, align 8, !dbg !5971
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %41, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0)) #7, !dbg !5971
  store i32 -22, i32* %retval, align 4, !dbg !5973
  br label %return, !dbg !5973

if.end32:                                         ; preds = %land.lhs.true, %if.end27
  %42 = load i32, i32* %last_aref, align 4, !dbg !5974
  %cmp33 = icmp eq i32 %42, 2, !dbg !5976
  br i1 %cmp33, label %if.then35, label %if.end39, !dbg !5977

if.then35:                                        ; preds = %if.end32
  %43 = load i32, i32* %next_chan, align 4, !dbg !5978
  %add36 = add i32 %43, 1, !dbg !5979
  %44 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5980
  %n_chan37 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %44, i32 0, i32 3, !dbg !5981
  %45 = load i32, i32* %n_chan37, align 8, !dbg !5981
  %rem38 = urem i32 %add36, %45, !dbg !5982
  store i32 %rem38, i32* %next_chan, align 4, !dbg !5983
  br label %if.end39, !dbg !5984

if.end39:                                         ; preds = %if.then35, %if.end32
  %46 = load i32, i32* %chan, align 4, !dbg !5985
  %47 = load i32, i32* %next_chan, align 4, !dbg !5987
  %cmp40 = icmp ne i32 %46, %47, !dbg !5988
  br i1 %cmp40, label %if.then42, label %if.end44, !dbg !5989

if.then42:                                        ; preds = %if.end39
  %48 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5990
  %class_dev43 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %48, i32 0, i32 4, !dbg !5990
  %49 = load %struct.device*, %struct.device** %class_dev43, align 8, !dbg !5990
  %50 = load i32, i32* %i, align 4, !dbg !5990
  %51 = load i32, i32* %chan, align 4, !dbg !5990
  %52 = load i32, i32* %next_chan, align 4, !dbg !5990
  %53 = load i32, i32* %chan0, align 4, !dbg !5990
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %49, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.11, i64 0, i64 0), i32 %50, i32 %51, i32 %52, i32 %53) #7, !dbg !5990
  store i32 -22, i32* %retval, align 4, !dbg !5992
  br label %return, !dbg !5992

if.end44:                                         ; preds = %if.end39
  %54 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5993
  %chanlist45 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %54, i32 0, i32 12, !dbg !5994
  %55 = load i32*, i32** %chanlist45, align 8, !dbg !5994
  %56 = load i32, i32* %i, align 4, !dbg !5995
  %idxprom46 = sext i32 %56 to i64, !dbg !5993
  %arrayidx47 = getelementptr i32, i32* %55, i64 %idxprom46, !dbg !5993
  %57 = load i32, i32* %arrayidx47, align 4, !dbg !5993
  %58 = load i32, i32* %i, align 4, !dbg !5996
  %idxprom48 = sext i32 %58 to i64, !dbg !5997
  %arrayidx49 = getelementptr [32 x i32], [32 x i32]* %chansegment, i64 0, i64 %idxprom48, !dbg !5997
  store i32 %57, i32* %arrayidx49, align 4, !dbg !5998
  %59 = load i32, i32* %aref, align 4, !dbg !5999
  store i32 %59, i32* %last_aref, align 4, !dbg !6000
  br label %for.inc, !dbg !6001

for.inc:                                          ; preds = %if.end44
  %60 = load i32, i32* %i, align 4, !dbg !6002
  %inc = add i32 %60, 1, !dbg !6002
  store i32 %inc, i32* %i, align 4, !dbg !6002
  br label %for.cond, !dbg !6003, !llvm.loop !6004

for.end:                                          ; preds = %if.then26, %for.cond
  %61 = load i32, i32* %i, align 4, !dbg !6006
  store i32 %61, i32* %seglen, align 4, !dbg !6007
  store i32 0, i32* %i, align 4, !dbg !6008
  br label %for.cond50, !dbg !6010

for.cond50:                                       ; preds = %for.inc93, %for.end
  %62 = load i32, i32* %i, align 4, !dbg !6011
  %63 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !6013
  %chanlist_len51 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %63, i32 0, i32 13, !dbg !6014
  %64 = load i32, i32* %chanlist_len51, align 8, !dbg !6014
  %cmp52 = icmp ult i32 %62, %64, !dbg !6015
  br i1 %cmp52, label %for.body54, label %for.end95, !dbg !6016

for.body54:                                       ; preds = %for.cond50
  %65 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !6017
  %chanlist55 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %65, i32 0, i32 12, !dbg !6020
  %66 = load i32*, i32** %chanlist55, align 8, !dbg !6020
  %67 = load i32, i32* %i, align 4, !dbg !6021
  %idxprom56 = sext i32 %67 to i64, !dbg !6017
  %arrayidx57 = getelementptr i32, i32* %66, i64 %idxprom56, !dbg !6017
  %68 = load i32, i32* %arrayidx57, align 4, !dbg !6017
  %69 = load i32, i32* %i, align 4, !dbg !6022
  %70 = load i32, i32* %seglen, align 4, !dbg !6023
  %rem58 = urem i32 %69, %70, !dbg !6024
  %idxprom59 = zext i32 %rem58 to i64, !dbg !6025
  %arrayidx60 = getelementptr [32 x i32], [32 x i32]* %chansegment, i64 0, i64 %idxprom59, !dbg !6025
  %71 = load i32, i32* %arrayidx60, align 4, !dbg !6025
  %cmp61 = icmp ne i32 %68, %71, !dbg !6026
  br i1 %cmp61, label %if.then63, label %if.end92, !dbg !6027

if.then63:                                        ; preds = %for.body54
  %72 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6028
  %class_dev64 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %72, i32 0, i32 4, !dbg !6028
  %73 = load %struct.device*, %struct.device** %class_dev64, align 8, !dbg !6028
  %74 = load i32, i32* %i, align 4, !dbg !6028
  %75 = load i32, i32* %i, align 4, !dbg !6028
  %idxprom65 = sext i32 %75 to i64, !dbg !6028
  %arrayidx66 = getelementptr [32 x i32], [32 x i32]* %chansegment, i64 0, i64 %idxprom65, !dbg !6028
  %76 = load i32, i32* %arrayidx66, align 4, !dbg !6028
  %and67 = and i32 %76, 65535, !dbg !6028
  %77 = load i32, i32* %i, align 4, !dbg !6028
  %idxprom68 = sext i32 %77 to i64, !dbg !6028
  %arrayidx69 = getelementptr [32 x i32], [32 x i32]* %chansegment, i64 0, i64 %idxprom68, !dbg !6028
  %78 = load i32, i32* %arrayidx69, align 4, !dbg !6028
  %shr70 = lshr i32 %78, 16, !dbg !6028
  %and71 = and i32 %shr70, 255, !dbg !6028
  %79 = load i32, i32* %i, align 4, !dbg !6028
  %idxprom72 = sext i32 %79 to i64, !dbg !6028
  %arrayidx73 = getelementptr [32 x i32], [32 x i32]* %chansegment, i64 0, i64 %idxprom72, !dbg !6028
  %80 = load i32, i32* %arrayidx73, align 4, !dbg !6028
  %shr74 = lshr i32 %80, 24, !dbg !6028
  %and75 = and i32 %shr74, 3, !dbg !6028
  %81 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !6028
  %chanlist76 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %81, i32 0, i32 12, !dbg !6028
  %82 = load i32*, i32** %chanlist76, align 8, !dbg !6028
  %83 = load i32, i32* %i, align 4, !dbg !6028
  %84 = load i32, i32* %seglen, align 4, !dbg !6028
  %rem77 = urem i32 %83, %84, !dbg !6028
  %idxprom78 = zext i32 %rem77 to i64, !dbg !6028
  %arrayidx79 = getelementptr i32, i32* %82, i64 %idxprom78, !dbg !6028
  %85 = load i32, i32* %arrayidx79, align 4, !dbg !6028
  %and80 = and i32 %85, 65535, !dbg !6028
  %86 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !6028
  %chanlist81 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %86, i32 0, i32 12, !dbg !6028
  %87 = load i32*, i32** %chanlist81, align 8, !dbg !6028
  %88 = load i32, i32* %i, align 4, !dbg !6028
  %89 = load i32, i32* %seglen, align 4, !dbg !6028
  %rem82 = urem i32 %88, %89, !dbg !6028
  %idxprom83 = zext i32 %rem82 to i64, !dbg !6028
  %arrayidx84 = getelementptr i32, i32* %87, i64 %idxprom83, !dbg !6028
  %90 = load i32, i32* %arrayidx84, align 4, !dbg !6028
  %shr85 = lshr i32 %90, 16, !dbg !6028
  %and86 = and i32 %shr85, 255, !dbg !6028
  %91 = load i32, i32* %i, align 4, !dbg !6028
  %92 = load i32, i32* %seglen, align 4, !dbg !6028
  %rem87 = urem i32 %91, %92, !dbg !6028
  %idxprom88 = zext i32 %rem87 to i64, !dbg !6028
  %arrayidx89 = getelementptr [32 x i32], [32 x i32]* %chansegment, i64 0, i64 %idxprom88, !dbg !6028
  %93 = load i32, i32* %arrayidx89, align 4, !dbg !6028
  %shr90 = lshr i32 %93, 24, !dbg !6028
  %and91 = and i32 %shr90, 3, !dbg !6028
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %73, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.12, i64 0, i64 0), i32 %74, i32 %and67, i32 %and71, i32 %and75, i32 %and80, i32 %and86, i32 %and91) #7, !dbg !6028
  store i32 -22, i32* %retval, align 4, !dbg !6030
  br label %return, !dbg !6030

if.end92:                                         ; preds = %for.body54
  br label %for.inc93, !dbg !6031

for.inc93:                                        ; preds = %if.end92
  %94 = load i32, i32* %i, align 4, !dbg !6032
  %inc94 = add i32 %94, 1, !dbg !6032
  store i32 %inc94, i32* %i, align 4, !dbg !6032
  br label %for.cond50, !dbg !6033, !llvm.loop !6034

for.end95:                                        ; preds = %for.cond50
  %95 = load i32, i32* %seglen, align 4, !dbg !6036
  %conv96 = trunc i32 %95 to i8, !dbg !6036
  %96 = load %struct.pci1710_private*, %struct.pci1710_private** %devpriv, align 8, !dbg !6037
  %saved_seglen97 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %96, i32 0, i32 6, !dbg !6038
  store i8 %conv96, i8* %saved_seglen97, align 4, !dbg !6039
  store i32 0, i32* %retval, align 4, !dbg !6040
  br label %return, !dbg !6040

return:                                           ; preds = %for.end95, %if.then63, %if.then42, %if.then31, %if.then
  %97 = load i32, i32* %retval, align 4, !dbg !6041
  ret i32 %97, !dbg !6041
}

; Function Attrs: noredzone
declare dso_local void @comedi_8254_update_divisors(%struct.comedi_8254*) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_dio_update_state(%struct.comedi_subdevice*, i32*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @adv_pci1710_pci_probe(%struct.pci_dev* %dev, %struct.pci_device_id* %id) #2 !dbg !6042 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %id.addr = alloca %struct.pci_device_id*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !6043, metadata !DIExpression()), !dbg !6044
  store %struct.pci_device_id* %id, %struct.pci_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_device_id** %id.addr, metadata !6045, metadata !DIExpression()), !dbg !6046
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !6047
  %1 = load %struct.pci_device_id*, %struct.pci_device_id** %id.addr, align 8, !dbg !6048
  %driver_data = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %1, i32 0, i32 6, !dbg !6049
  %2 = load i64, i64* %driver_data, align 8, !dbg !6049
  %call = call i32 @comedi_pci_auto_config(%struct.pci_dev* %0, %struct.comedi_driver* @adv_pci1710_driver, i64 %2) #5, !dbg !6050
  ret i32 %call, !dbg !6051
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
!llvm.module.flags = !{!4315, !4316, !4317, !4318}
!llvm.ident = !{!4319}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_adv_pci1710_driver_init234", scope: !2, file: !3, line: 959, type: !199, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !138, globals: !140, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/staging/comedi/drivers/adv_pci1710.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !100, !116, !121, !127}
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
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !117, line: 10, baseType: !7, size: 32, elements: !118)
!117 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!118 = !{!119, !120}
!119 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!120 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
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
!138 = !{!139}
!139 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!140 = !{!0, !141, !148, !155, !160, !165, !170, !4010, !4023, !4025, !4027, !4029, !4031, !4312}
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(name: "__exitcall_adv_pci1710_driver_exit", scope: !2, file: !3, line: 959, type: !143, isLocal: true, isDefinition: true)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !144, line: 117, baseType: !145)
!144 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DISubroutineType(types: !147)
!147 = !{null}
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author235", scope: !2, file: !3, line: 961, type: !150, isLocal: true, isDefinition: true, align: 8)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 392, elements: !153)
!151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!152 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!153 = !{!154}
!154 = !DISubrange(count: 49)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description236", scope: !2, file: !3, line: 962, type: !157, isLocal: true, isDefinition: true, align: 8)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 656, elements: !158)
!158 = !{!159}
!159 = !DISubrange(count: 82)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file237", scope: !2, file: !3, line: 963, type: !162, isLocal: true, isDefinition: true, align: 8)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 480, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 60)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license238", scope: !2, file: !3, line: 963, type: !167, isLocal: true, isDefinition: true, align: 8)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 192, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 24)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "adv_pci1710_driver", scope: !2, file: !3, line: 880, type: !172, isLocal: true, isDefinition: true)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_driver", file: !128, line: 437, size: 576, elements: !173)
!173 = !{!174, !176, !178, !182, !4000, !4001, !4005, !4006, !4009}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !172, file: !128, line: 439, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !172, file: !128, line: 441, baseType: !177, size: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !172, file: !128, line: 442, baseType: !179, size: 64, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !181, line: 76, flags: DIFlagFwdDecl)
!181 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!182 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !172, file: !128, line: 443, baseType: !183, size: 64, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!139, !186, !3993}
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_device", file: !128, line: 541, size: 1920, elements: !188)
!188 = !{!189, !190, !191, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3981, !3985, !3989}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !187, file: !128, line: 542, baseType: !139, size: 32)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !187, file: !128, line: 543, baseType: !175, size: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "pacer", scope: !187, file: !128, line: 544, baseType: !192, size: 64, offset: 128)
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
!222 = !{!139, !186, !223, !3946, !2712}
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_subdevice", file: !128, line: 153, size: 1792, elements: !225)
!225 = !{!226, !227, !228, !229, !230, !231, !232, !233, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3904, !3917, !3920, !3921, !3922, !3923, !3924, !3925, !3929, !3934, !3935, !3936, !3937, !3941, !3942, !3943, !3944, !3945}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !224, file: !128, line: 154, baseType: !186, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !224, file: !128, line: 155, baseType: !139, size: 32, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !224, file: !128, line: 156, baseType: !139, size: 32, offset: 96)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "n_chan", scope: !224, file: !128, line: 157, baseType: !139, size: 32, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "subdev_flags", scope: !224, file: !128, line: 158, baseType: !139, size: 32, offset: 160)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "len_chanlist", scope: !224, file: !128, line: 159, baseType: !139, size: 32, offset: 192)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !224, file: !128, line: 161, baseType: !199, size: 64, offset: 256)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "async", scope: !224, file: !128, line: 163, baseType: !234, size: 64, offset: 320)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_async", file: !128, line: 347, size: 1536, elements: !236)
!236 = !{!237, !238, !239, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3890, !3891, !3892}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !235, file: !128, line: 348, baseType: !199, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_bufsz", scope: !235, file: !128, line: 349, baseType: !7, size: 32, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "buf_map", scope: !235, file: !128, line: 350, baseType: !240, size: 64, offset: 128)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_buf_map", file: !128, line: 249, size: 256, elements: !242)
!242 = !{!243, !3847, !3853, !3854, !3855}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "dma_hw_dev", scope: !241, file: !128, line: 250, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !246)
!246 = !{!247, !3401, !3402, !3405, !3406, !3457, !3548, !3549, !3550, !3551, !3552, !3561, !3666, !3679, !3682, !3683, !3687, !3689, !3690, !3691, !3695, !3701, !3702, !3705, !3709, !3799, !3800, !3801, !3802, !3803, !3835, !3836, !3837, !3840, !3843, !3844, !3845, !3846}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !245, file: !73, line: 462, baseType: !248, size: 512)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !249, line: 64, size: 512, elements: !250)
!249 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!250 = !{!251, !252, !258, !260, !318, !3252, !3391, !3396, !3397, !3398, !3399, !3400}
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
!291 = !{!139, !261, !259}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !285, file: !249, line: 158, baseType: !293, size: 64, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!177, !261, !259}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !285, file: !249, line: 159, baseType: !298, size: 64, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{!139, !261, !259, !302}
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !249, line: 148, size: 20736, elements: !304)
!304 = !{!305, !308, !312, !313, !317}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !303, file: !249, line: 149, baseType: !306, size: 192)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 192, elements: !211)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !303, file: !249, line: 150, baseType: !309, size: 4096, offset: 192)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 4096, elements: !310)
!310 = !{!311}
!311 = !DISubrange(count: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !303, file: !249, line: 151, baseType: !139, size: 32, offset: 4288)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !303, file: !249, line: 152, baseType: !314, size: 16384, offset: 4320)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 16384, elements: !315)
!315 = !{!316}
!316 = !DISubrange(count: 2048)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !303, file: !249, line: 153, baseType: !139, size: 32, offset: 20704)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !248, file: !249, line: 69, baseType: !319, size: 64, offset: 320)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !249, line: 138, size: 448, elements: !321)
!321 = !{!322, !326, !355, !357, !3214, !3242, !3246}
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
!362 = !{!363, !364, !368, !3211, !3212}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !361, file: !330, line: 85, baseType: !177, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !361, file: !330, line: 86, baseType: !365, size: 64, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{!346, !259, !341, !139}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !361, file: !330, line: 88, baseType: !369, size: 64, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{!346, !259, !372, !139}
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !330, line: 168, size: 448, elements: !374)
!374 = !{!375, !376, !377, !378, !3206, !3207}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !373, file: !330, line: 169, baseType: !342, size: 128)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !373, file: !330, line: 170, baseType: !352, size: 64, offset: 128)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !373, file: !330, line: 171, baseType: !199, size: 64, offset: 192)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !373, file: !330, line: 172, baseType: !379, size: 64, offset: 256)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DISubroutineType(types: !381)
!381 = !{!336, !382, !259, !372, !307, !559, !352}
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !384)
!384 = !{!385, !403, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3189, !3190, !3199, !3200, !3201, !3202, !3203, !3204, !3205}
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
!414 = !{!415, !416, !426, !434, !435, !458, !3139, !3141, !3153, !3154, !3155, !3156, !3157, !3163, !3164, !3165}
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
!461 = !{!462, !463, !464, !472, !479, !480, !626, !2850, !2851, !2852, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !3115, !3123, !3124, !3125, !3135, !3136, !3137, !3138}
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
!505 = !{!139, !459, !139}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !483, file: !44, line: 1868, baseType: !507, size: 64, offset: 192)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{!510, !459, !139}
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !483, file: !44, line: 1870, baseType: !513, size: 64, offset: 256)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{!139, !412, !307, !139}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !483, file: !44, line: 1872, baseType: !517, size: 64, offset: 320)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!139, !459, !412, !346, !216}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !483, file: !44, line: 1873, baseType: !521, size: 64, offset: 384)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{!139, !412, !459, !412}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !483, file: !44, line: 1874, baseType: !525, size: 64, offset: 448)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!139, !459, !412}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !483, file: !44, line: 1875, baseType: !529, size: 64, offset: 512)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!139, !459, !412, !177}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !483, file: !44, line: 1876, baseType: !533, size: 64, offset: 576)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!139, !459, !412, !346}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !483, file: !44, line: 1877, baseType: !525, size: 64, offset: 640)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !483, file: !44, line: 1878, baseType: !538, size: 64, offset: 704)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!139, !459, !412, !346, !541}
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !217, line: 16, baseType: !542)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !217, line: 13, baseType: !445)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !483, file: !44, line: 1879, baseType: !544, size: 64, offset: 768)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!139, !459, !412, !459, !412, !7}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !483, file: !44, line: 1881, baseType: !548, size: 64, offset: 832)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{!139, !412, !551}
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
!576 = !{!139, !577, !579, !445, !7}
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
!609 = !{!139, !459, !610, !451, !451}
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !483, file: !44, line: 1886, baseType: !613, size: 64, offset: 1088)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{!139, !459, !616, !139}
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !483, file: !44, line: 1887, baseType: !618, size: 64, offset: 1152)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!139, !459, !412, !382, !7, !346}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !483, file: !44, line: 1890, baseType: !533, size: 64, offset: 1216)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !483, file: !44, line: 1891, baseType: !623, size: 64, offset: 1280)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{!139, !459, !510, !139}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !460, file: !44, line: 623, baseType: !627, size: 64, offset: 192)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !629)
!629 = !{!630, !631, !632, !633, !634, !635, !682, !2457, !2539, !2622, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2638, !2642, !2643, !2646, !2647, !2650, !2651, !2652, !2693, !2720, !2721, !2722, !2723, !2724, !2725, !2728, !2730, !2737, !2738, !2740, !2741, !2742, !2801, !2802, !2817, !2818, !2819, !2820, !2821, !2824, !2825, !2826, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849}
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
!640 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !637, file: !44, line: 2230, baseType: !139, size: 32, offset: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !637, file: !44, line: 2238, baseType: !642, size: 64, offset: 128)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{!139, !645}
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
!655 = !{!412, !636, !139, !177, !199}
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
!686 = !{!687, !691, !695, !696, !700, !706, !710, !711, !712, !716, !720, !721, !722, !723, !729, !734, !735, !742, !743, !744, !745, !2441, !2456}
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
!699 = !{null, !459, !139}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !685, file: !44, line: 1941, baseType: !701, size: 64, offset: 256)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DISubroutineType(types: !703)
!703 = !{!139, !459, !704}
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !685, file: !44, line: 1942, baseType: !707, size: 64, offset: 320)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DISubroutineType(types: !709)
!709 = !{!139, !459}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !685, file: !44, line: 1943, baseType: !692, size: 64, offset: 384)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !685, file: !44, line: 1944, baseType: !657, size: 64, offset: 448)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !685, file: !44, line: 1945, baseType: !713, size: 64, offset: 512)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{!139, !627, !139}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !685, file: !44, line: 1946, baseType: !717, size: 64, offset: 576)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DISubroutineType(types: !719)
!719 = !{!139, !627}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !685, file: !44, line: 1947, baseType: !717, size: 64, offset: 640)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !685, file: !44, line: 1948, baseType: !717, size: 64, offset: 704)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !685, file: !44, line: 1949, baseType: !717, size: 64, offset: 768)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !685, file: !44, line: 1950, baseType: !724, size: 64, offset: 832)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{!139, !412, !727}
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !685, file: !44, line: 1951, baseType: !730, size: 64, offset: 896)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{!139, !627, !733, !307}
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !685, file: !44, line: 1952, baseType: !657, size: 64, offset: 960)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !685, file: !44, line: 1954, baseType: !736, size: 64, offset: 1024)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DISubroutineType(types: !738)
!738 = !{!139, !739, !412}
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !741, line: 539, flags: DIFlagFwdDecl)
!741 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!742 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !685, file: !44, line: 1955, baseType: !736, size: 64, offset: 1088)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !685, file: !44, line: 1956, baseType: !736, size: 64, offset: 1152)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !685, file: !44, line: 1957, baseType: !736, size: 64, offset: 1216)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !685, file: !44, line: 1963, baseType: !746, size: 64, offset: 1280)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{!139, !627, !749, !772}
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !751, line: 68, size: 512, align: 128, elements: !752)
!751 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!752 = !{!753, !754, !2433, !2440}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !750, file: !751, line: 69, baseType: !197, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, scope: !750, file: !751, line: 77, baseType: !755, size: 320, offset: 64)
!755 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !750, file: !751, line: 77, size: 320, elements: !756)
!756 = !{!757, !945, !950, !978, !986, !992, !2364, !2432}
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
!779 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !777, file: !217, line: 167, baseType: !139, size: 32)
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
!822 = !{!139, !749, !704}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !817, file: !44, line: 369, baseType: !824, size: 64, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{!139, !382, !749}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !817, file: !44, line: 372, baseType: !828, size: 64, offset: 128)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{!139, !762, !704}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !817, file: !44, line: 375, baseType: !832, size: 64, offset: 192)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DISubroutineType(types: !834)
!834 = !{!139, !749}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !817, file: !44, line: 381, baseType: !836, size: 64, offset: 256)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{!139, !382, !762, !256, !7}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !817, file: !44, line: 383, baseType: !840, size: 64, offset: 320)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{null, !843}
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !817, file: !44, line: 385, baseType: !846, size: 64, offset: 384)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{!139, !382, !762, !559, !7, !7, !849, !850}
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !817, file: !44, line: 388, baseType: !852, size: 64, offset: 448)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{!139, !382, !762, !559, !7, !7, !749, !199}
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
!867 = !{!139, !749, !772}
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
!886 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !877, file: !44, line: 329, baseType: !139, size: 32, offset: 256)
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
!903 = !{!139, !762, !749, !749, !5}
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
!915 = !{!139, !749, !197, !197}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !817, file: !44, line: 409, baseType: !917, size: 64, offset: 1152)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DISubroutineType(types: !919)
!919 = !{null, !749, !920, !920}
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !817, file: !44, line: 410, baseType: !922, size: 64, offset: 1216)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DISubroutineType(types: !924)
!924 = !{!139, !762, !749}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !817, file: !44, line: 413, baseType: !926, size: 64, offset: 1280)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DISubroutineType(types: !928)
!928 = !{!139, !929, !382, !931}
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
!961 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !958, file: !751, line: 109, baseType: !139, size: 32, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !958, file: !751, line: 110, baseType: !139, size: 32, offset: 96)
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
!994 = !{!995, !996, !998, !999, !2363}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !993, file: !751, line: 146, baseType: !197, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !993, file: !751, line: 147, baseType: !997, size: 64, offset: 64)
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !741, line: 509, baseType: !749)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !993, file: !751, line: 148, baseType: !197, size: 64, offset: 128)
!999 = !DIDerivedType(tag: DW_TAG_member, scope: !993, file: !751, line: 149, baseType: !1000, size: 64, offset: 192)
!1000 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !993, file: !751, line: 149, size: 64, elements: !1001)
!1001 = !{!1002, !2362}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1000, file: !751, line: 150, baseType: !1003, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !751, line: 388, size: 7296, elements: !1005)
!1005 = !{!1006, !2358}
!1006 = !DIDerivedType(tag: DW_TAG_member, scope: !1004, file: !751, line: 389, baseType: !1007, size: 7296)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1004, file: !751, line: 389, size: 7296, elements: !1008)
!1008 = !{!1009, !1127, !1128, !1129, !1133, !1134, !1135, !1136, !1137, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1178, !1186, !1189, !1235, !1236, !2342, !2343, !2346, !2347, !2348, !2351, !2352, !2353, !2356, !2357}
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
!1050 = !{!139, !1010, !197}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1040, file: !14, line: 561, baseType: !1052, size: 64, offset: 192)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!139, !1010}
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
!1112 = !{!139, !1010, !197, !199, !139, !139}
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
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1007, file: !751, line: 452, baseType: !139, size: 32, offset: 768)
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
!1175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 2816, elements: !1176)
!1176 = !{!1177}
!1177 = !DISubrange(count: 44)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1007, file: !751, line: 488, baseType: !1179, size: 256, offset: 5312)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1180, line: 60, size: 256, elements: !1181)
!1180 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1181 = !{!1182}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1179, file: !1180, line: 61, baseType: !1183, size: 256)
!1183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !800, size: 256, elements: !1184)
!1184 = !{!1185}
!1185 = !DISubrange(count: 4)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1007, file: !751, line: 490, baseType: !1187, size: 64, offset: 5568)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !751, line: 490, flags: DIFlagFwdDecl)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1007, file: !751, line: 493, baseType: !1190, size: 896, offset: 5632)
!1190 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1191, line: 53, baseType: !1192)
!1191 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1191, line: 13, size: 896, elements: !1193)
!1193 = !{!1194, !1195, !1196, !1197, !1200, !1201, !1208, !1209, !1229, !1230, !1231}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1192, file: !1191, line: 18, baseType: !451, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1192, file: !1191, line: 28, baseType: !802, size: 64, offset: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1192, file: !1191, line: 31, baseType: !796, size: 256, offset: 128)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1192, file: !1191, line: 32, baseType: !1198, size: 64, offset: 384)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1191, line: 32, flags: DIFlagFwdDecl)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1192, file: !1191, line: 37, baseType: !347, size: 16, offset: 448)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1192, file: !1191, line: 40, baseType: !1202, size: 192, offset: 512)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1203, line: 53, size: 192, elements: !1204)
!1203 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1204 = !{!1205, !1206, !1207}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1202, file: !1203, line: 54, baseType: !800, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1202, file: !1203, line: 55, baseType: !266, offset: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1202, file: !1203, line: 59, baseType: !253, size: 128, offset: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1192, file: !1191, line: 41, baseType: !199, size: 64, offset: 704)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1192, file: !1191, line: 42, baseType: !1210, size: 64, offset: 768)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1212)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1213, line: 13, size: 896, elements: !1214)
!1213 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1214 = !{!1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1212, file: !1213, line: 14, baseType: !199, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1212, file: !1213, line: 15, baseType: !197, size: 64, offset: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1212, file: !1213, line: 17, baseType: !197, size: 64, offset: 128)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1212, file: !1213, line: 17, baseType: !197, size: 64, offset: 192)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1212, file: !1213, line: 19, baseType: !340, size: 64, offset: 256)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1212, file: !1213, line: 21, baseType: !340, size: 64, offset: 320)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1212, file: !1213, line: 22, baseType: !340, size: 64, offset: 384)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1212, file: !1213, line: 23, baseType: !340, size: 64, offset: 448)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1212, file: !1213, line: 24, baseType: !340, size: 64, offset: 512)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1212, file: !1213, line: 25, baseType: !340, size: 64, offset: 576)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1212, file: !1213, line: 26, baseType: !340, size: 64, offset: 640)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1212, file: !1213, line: 27, baseType: !340, size: 64, offset: 704)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1212, file: !1213, line: 28, baseType: !340, size: 64, offset: 768)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1212, file: !1213, line: 29, baseType: !340, size: 64, offset: 832)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1192, file: !1191, line: 44, baseType: !776, size: 32, offset: 832)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1192, file: !1191, line: 50, baseType: !888, size: 16, offset: 864)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1192, file: !1191, line: 51, baseType: !1232, size: 16, offset: 880)
!1232 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !446, line: 18, baseType: !1233)
!1233 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !448, line: 23, baseType: !1234)
!1234 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1007, file: !751, line: 495, baseType: !197, size: 64, offset: 6528)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1007, file: !751, line: 497, baseType: !1237, size: 64, offset: 6592)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !751, line: 381, size: 384, elements: !1239)
!1239 = !{!1240, !1241, !2341}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1238, file: !751, line: 382, baseType: !776, size: 32)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1238, file: !751, line: 383, baseType: !1242, size: 128, offset: 64)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !751, line: 376, size: 128, elements: !1243)
!1243 = !{!1244, !2339}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1242, file: !751, line: 377, baseType: !1245, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1247, line: 640, size: 48640, elements: !1248)
!1247 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1248 = !{!1249, !1255, !1257, !1258, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1275, !1293, !1304, !1389, !1390, !1391, !1402, !1403, !1405, !1406, !1407, !1408, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1487, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1525, !1527, !1528, !1529, !1541, !1542, !1543, !1544, !1545, !1546, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1570, !1575, !1759, !1760, !1761, !1762, !1766, !1769, !1772, !1775, !1778, !1782, !1883, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1927, !1928, !1929, !1930, !1931, !1936, !1937, !1938, !1941, !1942, !1945, !1948, !1951, !1954, !1997, !2000, !2001, !2080, !2081, !2084, !2085, !2088, !2089, !2090, !2094, !2095, !2096, !2109, !2110, !2111, !2121, !2126, !2129, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1246, file: !1247, line: 646, baseType: !1250, size: 128)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1251, line: 56, size: 128, elements: !1252)
!1251 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1252 = !{!1253, !1254}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1250, file: !1251, line: 57, baseType: !197, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1250, file: !1251, line: 58, baseType: !445, size: 32, offset: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1246, file: !1247, line: 649, baseType: !1256, size: 64, offset: 128)
!1256 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !340)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1246, file: !1247, line: 657, baseType: !199, size: 64, offset: 192)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1246, file: !1247, line: 658, baseType: !1259, size: 32, offset: 256)
!1259 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1260, line: 113, baseType: !1261)
!1260 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1260, line: 111, size: 32, elements: !1262)
!1262 = !{!1263}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1261, file: !1260, line: 112, baseType: !776, size: 32)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1246, file: !1247, line: 660, baseType: !7, size: 32, offset: 288)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1246, file: !1247, line: 661, baseType: !7, size: 32, offset: 320)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1246, file: !1247, line: 684, baseType: !139, size: 32, offset: 352)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1246, file: !1247, line: 686, baseType: !139, size: 32, offset: 384)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1246, file: !1247, line: 687, baseType: !139, size: 32, offset: 416)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1246, file: !1247, line: 688, baseType: !139, size: 32, offset: 448)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1246, file: !1247, line: 689, baseType: !7, size: 32, offset: 480)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1246, file: !1247, line: 691, baseType: !1272, size: 64, offset: 512)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1274)
!1274 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1247, line: 691, flags: DIFlagFwdDecl)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1246, file: !1247, line: 692, baseType: !1276, size: 832, offset: 576)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1247, line: 451, size: 832, elements: !1277)
!1277 = !{!1278, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1276, file: !1247, line: 453, baseType: !1279, size: 128)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1247, line: 325, size: 128, elements: !1280)
!1280 = !{!1281, !1282}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1279, file: !1247, line: 326, baseType: !197, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1279, file: !1247, line: 327, baseType: !445, size: 32, offset: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1276, file: !1247, line: 454, baseType: !789, size: 192, align: 64, offset: 128)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1276, file: !1247, line: 455, baseType: !253, size: 128, offset: 320)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1276, file: !1247, line: 456, baseType: !7, size: 32, offset: 448)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1276, file: !1247, line: 458, baseType: !451, size: 64, offset: 512)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1276, file: !1247, line: 459, baseType: !451, size: 64, offset: 576)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1276, file: !1247, line: 460, baseType: !451, size: 64, offset: 640)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1276, file: !1247, line: 461, baseType: !451, size: 64, offset: 704)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1276, file: !1247, line: 463, baseType: !451, size: 64, offset: 768)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1276, file: !1247, line: 465, baseType: !1292, offset: 832)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1247, line: 415, elements: !280)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1246, file: !1247, line: 693, baseType: !1294, size: 384, offset: 1408)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1247, line: 489, size: 384, elements: !1295)
!1295 = !{!1296, !1297, !1298, !1299, !1300, !1301, !1302}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1294, file: !1247, line: 490, baseType: !253, size: 128)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1294, file: !1247, line: 491, baseType: !197, size: 64, offset: 128)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1294, file: !1247, line: 492, baseType: !197, size: 64, offset: 192)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1294, file: !1247, line: 493, baseType: !7, size: 32, offset: 256)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1294, file: !1247, line: 494, baseType: !347, size: 16, offset: 288)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1294, file: !1247, line: 495, baseType: !347, size: 16, offset: 304)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1294, file: !1247, line: 497, baseType: !1303, size: 64, offset: 320)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1246, file: !1247, line: 697, baseType: !1305, size: 1792, offset: 1792)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1247, line: 507, size: 1792, elements: !1306)
!1306 = !{!1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1386, !1387}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1305, file: !1247, line: 508, baseType: !789, size: 192, align: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1305, file: !1247, line: 515, baseType: !451, size: 64, offset: 192)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1305, file: !1247, line: 516, baseType: !451, size: 64, offset: 256)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1305, file: !1247, line: 517, baseType: !451, size: 64, offset: 320)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1305, file: !1247, line: 518, baseType: !451, size: 64, offset: 384)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1305, file: !1247, line: 519, baseType: !451, size: 64, offset: 448)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1305, file: !1247, line: 526, baseType: !806, size: 64, offset: 512)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1305, file: !1247, line: 527, baseType: !451, size: 64, offset: 576)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1305, file: !1247, line: 528, baseType: !7, size: 32, offset: 640)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1305, file: !1247, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1305, file: !1247, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1305, file: !1247, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1305, file: !1247, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1305, file: !1247, line: 563, baseType: !1321, size: 512, offset: 704)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1322)
!1322 = !{!1323, !1331, !1332, !1337, !1380, !1383, !1384, !1385}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1321, file: !20, line: 119, baseType: !1324, size: 256)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1325, line: 9, size: 256, elements: !1326)
!1325 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1326 = !{!1327, !1328}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1324, file: !1325, line: 10, baseType: !789, size: 192, align: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1324, file: !1325, line: 11, baseType: !1329, size: 64, offset: 192)
!1329 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1330, line: 29, baseType: !806)
!1330 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1321, file: !20, line: 120, baseType: !1329, size: 64, offset: 256)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1321, file: !20, line: 121, baseType: !1333, size: 64, offset: 320)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!19, !1336}
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1321, file: !20, line: 122, baseType: !1338, size: 64, offset: 384)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1340)
!1340 = !{!1341, !1361, !1362, !1365, !1370, !1371, !1375, !1379}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1339, file: !20, line: 160, baseType: !1342, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1344)
!1344 = !{!1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1343, file: !20, line: 215, baseType: !809)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1343, file: !20, line: 216, baseType: !7, size: 32)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1343, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1343, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1343, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1343, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1343, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1343, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1343, file: !20, line: 233, baseType: !1329, size: 64, offset: 128)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1343, file: !20, line: 234, baseType: !1336, size: 64, offset: 192)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1343, file: !20, line: 235, baseType: !1329, size: 64, offset: 256)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1343, file: !20, line: 236, baseType: !1336, size: 64, offset: 320)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1343, file: !20, line: 237, baseType: !1358, size: 4096, offset: 512)
!1358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1339, size: 4096, elements: !1359)
!1359 = !{!1360}
!1360 = !DISubrange(count: 8)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1339, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1339, file: !20, line: 162, baseType: !1363, size: 32, offset: 96)
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !217, line: 27, baseType: !1364)
!1364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !338, line: 96, baseType: !139)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1339, file: !20, line: 163, baseType: !1366, size: 32, offset: 128)
!1366 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !418, line: 276, baseType: !1367)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !418, line: 276, size: 32, elements: !1368)
!1368 = !{!1369}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1367, file: !418, line: 276, baseType: !422, size: 32)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1339, file: !20, line: 164, baseType: !1336, size: 64, offset: 192)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1339, file: !20, line: 165, baseType: !1372, size: 128, offset: 256)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1325, line: 14, size: 128, elements: !1373)
!1373 = !{!1374}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1372, file: !1325, line: 15, baseType: !781, size: 128)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1339, file: !20, line: 166, baseType: !1376, size: 64, offset: 384)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!1329}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1339, file: !20, line: 167, baseType: !1329, size: 64, offset: 448)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1321, file: !20, line: 123, baseType: !1381, size: 8, offset: 448)
!1381 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !446, line: 17, baseType: !1382)
!1382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !448, line: 21, baseType: !457)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1321, file: !20, line: 124, baseType: !1381, size: 8, offset: 456)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1321, file: !20, line: 125, baseType: !1381, size: 8, offset: 464)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1321, file: !20, line: 126, baseType: !1381, size: 8, offset: 472)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1305, file: !1247, line: 572, baseType: !1321, size: 512, offset: 1216)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1305, file: !1247, line: 580, baseType: !1388, size: 64, offset: 1728)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1246, file: !1247, line: 721, baseType: !7, size: 32, offset: 3584)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1246, file: !1247, line: 722, baseType: !139, size: 32, offset: 3616)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1246, file: !1247, line: 723, baseType: !1392, size: 64, offset: 3648)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1394)
!1394 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1395, line: 17, baseType: !1396)
!1395 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1395, line: 17, size: 64, elements: !1397)
!1397 = !{!1398}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1396, file: !1395, line: 17, baseType: !1399, size: 64)
!1399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 64, elements: !1400)
!1400 = !{!1401}
!1401 = !DISubrange(count: 1)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1246, file: !1247, line: 724, baseType: !1394, size: 64, offset: 3712)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1246, file: !1247, line: 749, baseType: !1404, offset: 3776)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1247, line: 290, elements: !280)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1246, file: !1247, line: 751, baseType: !253, size: 128, offset: 3776)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1246, file: !1247, line: 757, baseType: !1003, size: 64, offset: 3904)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1246, file: !1247, line: 758, baseType: !1003, size: 64, offset: 3968)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1246, file: !1247, line: 761, baseType: !1409, size: 320, offset: 4032)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1180, line: 34, size: 320, elements: !1410)
!1410 = !{!1411, !1412}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1409, file: !1180, line: 35, baseType: !451, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1409, file: !1180, line: 36, baseType: !1413, size: 256, offset: 64)
!1413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1010, size: 256, elements: !1184)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1246, file: !1247, line: 766, baseType: !139, size: 32, offset: 4352)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1246, file: !1247, line: 767, baseType: !139, size: 32, offset: 4384)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1246, file: !1247, line: 768, baseType: !139, size: 32, offset: 4416)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1246, file: !1247, line: 770, baseType: !139, size: 32, offset: 4448)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1246, file: !1247, line: 772, baseType: !197, size: 64, offset: 4480)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1246, file: !1247, line: 775, baseType: !7, size: 32, offset: 4544)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1246, file: !1247, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1246, file: !1247, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1246, file: !1247, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1246, file: !1247, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1246, file: !1247, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1246, file: !1247, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1246, file: !1247, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1246, file: !1247, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1246, file: !1247, line: 831, baseType: !197, size: 64, offset: 4672)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1246, file: !1247, line: 833, baseType: !1430, size: 384, offset: 4736)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1431)
!1431 = !{!1432, !1437}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1430, file: !25, line: 26, baseType: !1433, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!340, !1436}
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, scope: !1430, file: !25, line: 27, baseType: !1438, size: 320, offset: 64)
!1438 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1430, file: !25, line: 27, size: 320, elements: !1439)
!1439 = !{!1440, !1450, !1477}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1438, file: !25, line: 36, baseType: !1441, size: 320)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1438, file: !25, line: 29, size: 320, elements: !1442)
!1442 = !{!1443, !1445, !1446, !1447, !1448, !1449}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1441, file: !25, line: 30, baseType: !1444, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1441, file: !25, line: 31, baseType: !445, size: 32, offset: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1441, file: !25, line: 32, baseType: !445, size: 32, offset: 96)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1441, file: !25, line: 33, baseType: !445, size: 32, offset: 128)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1441, file: !25, line: 34, baseType: !451, size: 64, offset: 192)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1441, file: !25, line: 35, baseType: !1444, size: 64, offset: 256)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1438, file: !25, line: 46, baseType: !1451, size: 192)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1438, file: !25, line: 38, size: 192, elements: !1452)
!1452 = !{!1453, !1454, !1455, !1476}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1451, file: !25, line: 39, baseType: !1363, size: 32)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1451, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1455 = !DIDerivedType(tag: DW_TAG_member, scope: !1451, file: !25, line: 41, baseType: !1456, size: 64, offset: 64)
!1456 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1451, file: !25, line: 41, size: 64, elements: !1457)
!1457 = !{!1458, !1466}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1456, file: !25, line: 42, baseType: !1459, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1461, line: 7, size: 128, elements: !1462)
!1461 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1462 = !{!1463, !1465}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1460, file: !1461, line: 8, baseType: !1464, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !338, line: 93, baseType: !561)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1460, file: !1461, line: 9, baseType: !561, size: 64, offset: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1456, file: !25, line: 43, baseType: !1467, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1469, line: 7, size: 64, elements: !1470)
!1469 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1470 = !{!1471, !1475}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1468, file: !1469, line: 8, baseType: !1472, size: 32)
!1472 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1469, line: 5, baseType: !1473)
!1473 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !446, line: 20, baseType: !1474)
!1474 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !448, line: 26, baseType: !139)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1468, file: !1469, line: 9, baseType: !1473, size: 32, offset: 32)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1451, file: !25, line: 45, baseType: !451, size: 64, offset: 128)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1438, file: !25, line: 54, baseType: !1478, size: 256)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1438, file: !25, line: 48, size: 256, elements: !1479)
!1479 = !{!1480, !1483, !1484, !1485, !1486}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1478, file: !25, line: 49, baseType: !1481, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1478, file: !25, line: 50, baseType: !139, size: 32, offset: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1478, file: !25, line: 51, baseType: !139, size: 32, offset: 96)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1478, file: !25, line: 52, baseType: !197, size: 64, offset: 128)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1478, file: !25, line: 53, baseType: !197, size: 64, offset: 192)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1246, file: !1247, line: 835, baseType: !1488, size: 32, offset: 5120)
!1488 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !217, line: 22, baseType: !1489)
!1489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !338, line: 28, baseType: !139)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1246, file: !1247, line: 836, baseType: !1488, size: 32, offset: 5152)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1246, file: !1247, line: 840, baseType: !197, size: 64, offset: 5184)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1246, file: !1247, line: 849, baseType: !1245, size: 64, offset: 5248)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1246, file: !1247, line: 852, baseType: !1245, size: 64, offset: 5312)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1246, file: !1247, line: 857, baseType: !253, size: 128, offset: 5376)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1246, file: !1247, line: 858, baseType: !253, size: 128, offset: 5504)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1246, file: !1247, line: 859, baseType: !1245, size: 64, offset: 5632)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1246, file: !1247, line: 867, baseType: !253, size: 128, offset: 5696)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1246, file: !1247, line: 868, baseType: !253, size: 128, offset: 5824)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1246, file: !1247, line: 871, baseType: !1500, size: 64, offset: 5952)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1502)
!1502 = !{!1503, !1504, !1505, !1506, !1508, !1509, !1516, !1517}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1501, file: !53, line: 61, baseType: !1259, size: 32)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1501, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1501, file: !53, line: 63, baseType: !266, offset: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1501, file: !53, line: 65, baseType: !1507, size: 256, offset: 64)
!1507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !663, size: 256, elements: !1184)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1501, file: !53, line: 66, baseType: !663, size: 64, offset: 320)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1501, file: !53, line: 68, baseType: !1510, size: 128, offset: 384)
!1510 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1511, line: 40, baseType: !1512)
!1511 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1511, line: 36, size: 128, elements: !1513)
!1513 = !{!1514, !1515}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1512, file: !1511, line: 37, baseType: !266)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1512, file: !1511, line: 38, baseType: !253, size: 128)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1501, file: !53, line: 69, baseType: !395, size: 128, align: 64, offset: 512)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1501, file: !53, line: 70, baseType: !1518, size: 128, offset: 640)
!1518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1519, size: 128, elements: !1400)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1520)
!1520 = !{!1521, !1522}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1519, file: !53, line: 55, baseType: !139, size: 32)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1519, file: !53, line: 56, baseType: !1523, size: 64, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1246, file: !1247, line: 872, baseType: !1526, size: 512, offset: 6016)
!1526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !667, size: 512, elements: !1184)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1246, file: !1247, line: 873, baseType: !253, size: 128, offset: 6528)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1246, file: !1247, line: 874, baseType: !253, size: 128, offset: 6656)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1246, file: !1247, line: 876, baseType: !1530, size: 64, offset: 6784)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1532, line: 26, size: 192, elements: !1533)
!1532 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1533 = !{!1534, !1535}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1531, file: !1532, line: 27, baseType: !7, size: 32)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1531, file: !1532, line: 28, baseType: !1536, size: 128, offset: 64)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1537, line: 43, size: 128, elements: !1538)
!1537 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1538 = !{!1539, !1540}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1536, file: !1537, line: 44, baseType: !809)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1536, file: !1537, line: 45, baseType: !253, size: 128)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1246, file: !1247, line: 879, baseType: !733, size: 64, offset: 6848)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1246, file: !1247, line: 882, baseType: !733, size: 64, offset: 6912)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1246, file: !1247, line: 884, baseType: !451, size: 64, offset: 6976)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1246, file: !1247, line: 885, baseType: !451, size: 64, offset: 7040)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1246, file: !1247, line: 890, baseType: !451, size: 64, offset: 7104)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1246, file: !1247, line: 891, baseType: !1547, size: 128, offset: 7168)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1247, line: 242, size: 128, elements: !1548)
!1548 = !{!1549, !1550, !1551}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1547, file: !1247, line: 244, baseType: !451, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1547, file: !1247, line: 245, baseType: !451, size: 64, offset: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1547, file: !1247, line: 246, baseType: !809, offset: 128)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1246, file: !1247, line: 900, baseType: !197, size: 64, offset: 7296)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1246, file: !1247, line: 901, baseType: !197, size: 64, offset: 7360)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1246, file: !1247, line: 904, baseType: !451, size: 64, offset: 7424)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1246, file: !1247, line: 907, baseType: !451, size: 64, offset: 7488)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1246, file: !1247, line: 910, baseType: !197, size: 64, offset: 7552)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1246, file: !1247, line: 911, baseType: !197, size: 64, offset: 7616)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1246, file: !1247, line: 914, baseType: !1559, size: 640, offset: 7680)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1560, line: 123, size: 640, elements: !1561)
!1560 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1561 = !{!1562, !1568, !1569}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1559, file: !1560, line: 124, baseType: !1563, size: 576)
!1563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1564, size: 576, elements: !211)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1560, line: 108, size: 192, elements: !1565)
!1565 = !{!1566, !1567}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1564, file: !1560, line: 109, baseType: !451, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1564, file: !1560, line: 110, baseType: !1372, size: 128, offset: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1559, file: !1560, line: 125, baseType: !7, size: 32, offset: 576)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1559, file: !1560, line: 126, baseType: !7, size: 32, offset: 608)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1246, file: !1247, line: 917, baseType: !1571, size: 192, offset: 8320)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1560, line: 134, size: 192, elements: !1572)
!1572 = !{!1573, !1574}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1571, file: !1560, line: 135, baseType: !395, size: 128, align: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1571, file: !1560, line: 136, baseType: !7, size: 32, offset: 128)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1246, file: !1247, line: 923, baseType: !1576, size: 64, offset: 8512)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1578)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1579, line: 111, size: 1280, elements: !1580)
!1579 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1580 = !{!1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1600, !1601, !1602, !1603, !1604, !1605, !1712, !1713, !1714, !1715, !1741, !1744, !1754}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1578, file: !1579, line: 112, baseType: !776, size: 32)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1578, file: !1579, line: 120, baseType: !465, size: 32, offset: 32)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1578, file: !1579, line: 121, baseType: !473, size: 32, offset: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1578, file: !1579, line: 122, baseType: !465, size: 32, offset: 96)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1578, file: !1579, line: 123, baseType: !473, size: 32, offset: 128)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1578, file: !1579, line: 124, baseType: !465, size: 32, offset: 160)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1578, file: !1579, line: 125, baseType: !473, size: 32, offset: 192)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1578, file: !1579, line: 126, baseType: !465, size: 32, offset: 224)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1578, file: !1579, line: 127, baseType: !473, size: 32, offset: 256)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1578, file: !1579, line: 128, baseType: !7, size: 32, offset: 288)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1578, file: !1579, line: 129, baseType: !1592, size: 64, offset: 320)
!1592 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1593, line: 26, baseType: !1594)
!1593 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1593, line: 24, size: 64, elements: !1595)
!1595 = !{!1596}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1594, file: !1593, line: 25, baseType: !1597, size: 64)
!1597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !447, size: 64, elements: !1598)
!1598 = !{!1599}
!1599 = !DISubrange(count: 2)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1578, file: !1579, line: 130, baseType: !1592, size: 64, offset: 384)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1578, file: !1579, line: 131, baseType: !1592, size: 64, offset: 448)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1578, file: !1579, line: 132, baseType: !1592, size: 64, offset: 512)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1578, file: !1579, line: 133, baseType: !1592, size: 64, offset: 576)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1578, file: !1579, line: 135, baseType: !457, size: 8, offset: 640)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1578, file: !1579, line: 137, baseType: !1606, size: 64, offset: 704)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1608, line: 189, size: 1664, elements: !1609)
!1608 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1609 = !{!1610, !1611, !1614, !1619, !1620, !1623, !1624, !1629, !1630, !1631, !1632, !1634, !1635, !1636, !1637, !1638, !1676, !1697}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1607, file: !1608, line: 190, baseType: !1259, size: 32)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1607, file: !1608, line: 191, baseType: !1612, size: 32, offset: 32)
!1612 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1608, line: 28, baseType: !1613)
!1613 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !217, line: 98, baseType: !1473)
!1614 = !DIDerivedType(tag: DW_TAG_member, scope: !1607, file: !1608, line: 192, baseType: !1615, size: 192, offset: 64)
!1615 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1607, file: !1608, line: 192, size: 192, elements: !1616)
!1616 = !{!1617, !1618}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1615, file: !1608, line: 193, baseType: !253, size: 128)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1615, file: !1608, line: 194, baseType: !789, size: 192, align: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1607, file: !1608, line: 199, baseType: !796, size: 256, offset: 256)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1607, file: !1608, line: 200, baseType: !1621, size: 64, offset: 512)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1608, line: 200, flags: DIFlagFwdDecl)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1607, file: !1608, line: 201, baseType: !199, size: 64, offset: 576)
!1624 = !DIDerivedType(tag: DW_TAG_member, scope: !1607, file: !1608, line: 202, baseType: !1625, size: 64, offset: 640)
!1625 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1607, file: !1608, line: 202, size: 64, elements: !1626)
!1626 = !{!1627, !1628}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1625, file: !1608, line: 203, baseType: !567, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1625, file: !1608, line: 204, baseType: !567, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1607, file: !1608, line: 206, baseType: !567, size: 64, offset: 704)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1607, file: !1608, line: 207, baseType: !465, size: 32, offset: 768)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1607, file: !1608, line: 208, baseType: !473, size: 32, offset: 800)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1607, file: !1608, line: 209, baseType: !1633, size: 32, offset: 832)
!1633 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1608, line: 31, baseType: !587)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1607, file: !1608, line: 210, baseType: !347, size: 16, offset: 864)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1607, file: !1608, line: 211, baseType: !347, size: 16, offset: 880)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1607, file: !1608, line: 215, baseType: !1234, size: 16, offset: 896)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1607, file: !1608, line: 222, baseType: !197, size: 64, offset: 960)
!1638 = !DIDerivedType(tag: DW_TAG_member, scope: !1607, file: !1608, line: 239, baseType: !1639, size: 320, offset: 1024)
!1639 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1607, file: !1608, line: 239, size: 320, elements: !1640)
!1640 = !{!1641, !1668}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1639, file: !1608, line: 240, baseType: !1642, size: 320)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1608, line: 108, size: 320, elements: !1643)
!1643 = !{!1644, !1645, !1657, !1660, !1667}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1642, file: !1608, line: 110, baseType: !197, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, scope: !1642, file: !1608, line: 111, baseType: !1646, size: 64, offset: 64)
!1646 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1642, file: !1608, line: 111, size: 64, elements: !1647)
!1647 = !{!1648, !1656}
!1648 = !DIDerivedType(tag: DW_TAG_member, scope: !1646, file: !1608, line: 112, baseType: !1649, size: 64)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1646, file: !1608, line: 112, size: 64, elements: !1650)
!1650 = !{!1651, !1652}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1649, file: !1608, line: 114, baseType: !888, size: 16)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1649, file: !1608, line: 115, baseType: !1653, size: 48, offset: 16)
!1653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 48, elements: !1654)
!1654 = !{!1655}
!1655 = !DISubrange(count: 6)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1646, file: !1608, line: 121, baseType: !197, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1642, file: !1608, line: 123, baseType: !1658, size: 64, offset: 128)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1608, line: 96, flags: DIFlagFwdDecl)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1642, file: !1608, line: 124, baseType: !1661, size: 64, offset: 192)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1608, line: 102, size: 192, elements: !1663)
!1663 = !{!1664, !1665, !1666}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1662, file: !1608, line: 103, baseType: !395, size: 128, align: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1662, file: !1608, line: 104, baseType: !1259, size: 32, offset: 128)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1662, file: !1608, line: 105, baseType: !216, size: 8, offset: 160)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1642, file: !1608, line: 125, baseType: !177, size: 64, offset: 256)
!1668 = !DIDerivedType(tag: DW_TAG_member, scope: !1639, file: !1608, line: 241, baseType: !1669, size: 320)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1639, file: !1608, line: 241, size: 320, elements: !1670)
!1670 = !{!1671, !1672, !1673, !1674, !1675}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1669, file: !1608, line: 242, baseType: !197, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1669, file: !1608, line: 243, baseType: !197, size: 64, offset: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1669, file: !1608, line: 244, baseType: !1658, size: 64, offset: 128)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1669, file: !1608, line: 245, baseType: !1661, size: 64, offset: 192)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1669, file: !1608, line: 246, baseType: !307, size: 64, offset: 256)
!1676 = !DIDerivedType(tag: DW_TAG_member, scope: !1607, file: !1608, line: 254, baseType: !1677, size: 256, offset: 1344)
!1677 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1607, file: !1608, line: 254, size: 256, elements: !1678)
!1678 = !{!1679, !1685}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1677, file: !1608, line: 255, baseType: !1680, size: 256)
!1680 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1608, line: 128, size: 256, elements: !1681)
!1681 = !{!1682, !1683}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1680, file: !1608, line: 129, baseType: !199, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1680, file: !1608, line: 130, baseType: !1684, size: 256)
!1684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 256, elements: !1184)
!1685 = !DIDerivedType(tag: DW_TAG_member, scope: !1677, file: !1608, line: 256, baseType: !1686, size: 256)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1677, file: !1608, line: 256, size: 256, elements: !1687)
!1687 = !{!1688, !1689}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1686, file: !1608, line: 258, baseType: !253, size: 128)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1686, file: !1608, line: 259, baseType: !1690, size: 128, offset: 128)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1691, line: 22, size: 128, elements: !1692)
!1691 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1692 = !{!1693, !1696}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1690, file: !1691, line: 23, baseType: !1694, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1691, line: 23, flags: DIFlagFwdDecl)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1690, file: !1691, line: 24, baseType: !197, size: 64, offset: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1607, file: !1608, line: 274, baseType: !1698, size: 64, offset: 1600)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1608, line: 170, size: 192, elements: !1700)
!1700 = !{!1701, !1710, !1711}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1699, file: !1608, line: 171, baseType: !1702, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1608, line: 165, baseType: !1703)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!139, !1606, !1706, !1708, !1606}
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1659)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1680)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1699, file: !1608, line: 172, baseType: !1606, size: 64, offset: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1699, file: !1608, line: 173, baseType: !1658, size: 64, offset: 128)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1578, file: !1579, line: 138, baseType: !1606, size: 64, offset: 768)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1578, file: !1579, line: 139, baseType: !1606, size: 64, offset: 832)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1578, file: !1579, line: 140, baseType: !1606, size: 64, offset: 896)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1578, file: !1579, line: 145, baseType: !1716, size: 64, offset: 960)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1718, line: 13, size: 896, elements: !1719)
!1718 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1719 = !{!1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1717, file: !1718, line: 14, baseType: !1259, size: 32)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1717, file: !1718, line: 15, baseType: !776, size: 32, offset: 32)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1717, file: !1718, line: 16, baseType: !776, size: 32, offset: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1717, file: !1718, line: 21, baseType: !800, size: 64, offset: 128)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1717, file: !1718, line: 27, baseType: !197, size: 64, offset: 192)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1717, file: !1718, line: 28, baseType: !197, size: 64, offset: 256)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1717, file: !1718, line: 29, baseType: !800, size: 64, offset: 320)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1717, file: !1718, line: 32, baseType: !667, size: 128, offset: 384)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1717, file: !1718, line: 33, baseType: !465, size: 32, offset: 512)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1717, file: !1718, line: 37, baseType: !800, size: 64, offset: 576)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1717, file: !1718, line: 44, baseType: !1731, size: 256, offset: 640)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1732, line: 15, size: 256, elements: !1733)
!1732 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1733 = !{!1734, !1735, !1736, !1737, !1738, !1739, !1740}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1731, file: !1732, line: 16, baseType: !809)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1731, file: !1732, line: 18, baseType: !139, size: 32)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1731, file: !1732, line: 19, baseType: !139, size: 32, offset: 32)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1731, file: !1732, line: 20, baseType: !139, size: 32, offset: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1731, file: !1732, line: 21, baseType: !139, size: 32, offset: 96)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1731, file: !1732, line: 22, baseType: !197, size: 64, offset: 128)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1731, file: !1732, line: 23, baseType: !197, size: 64, offset: 192)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1578, file: !1579, line: 146, baseType: !1742, size: 64, offset: 1024)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !466, line: 18, flags: DIFlagFwdDecl)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1578, file: !1579, line: 147, baseType: !1745, size: 64, offset: 1088)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1579, line: 25, size: 64, elements: !1747)
!1747 = !{!1748, !1749, !1750}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1746, file: !1579, line: 26, baseType: !776, size: 32)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1746, file: !1579, line: 27, baseType: !139, size: 32, offset: 32)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1746, file: !1579, line: 28, baseType: !1751, offset: 64)
!1751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !473, elements: !1752)
!1752 = !{!1753}
!1753 = !DISubrange(count: 0)
!1754 = !DIDerivedType(tag: DW_TAG_member, scope: !1578, file: !1579, line: 149, baseType: !1755, size: 128, offset: 1152)
!1755 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1578, file: !1579, line: 149, size: 128, elements: !1756)
!1756 = !{!1757, !1758}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1755, file: !1579, line: 150, baseType: !139, size: 32)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1755, file: !1579, line: 151, baseType: !395, size: 128, align: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1246, file: !1247, line: 926, baseType: !1576, size: 64, offset: 8576)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1246, file: !1247, line: 929, baseType: !1576, size: 64, offset: 8640)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1246, file: !1247, line: 933, baseType: !1606, size: 64, offset: 8704)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1246, file: !1247, line: 943, baseType: !1763, size: 128, offset: 8768)
!1763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 128, elements: !1764)
!1764 = !{!1765}
!1765 = !DISubrange(count: 16)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1246, file: !1247, line: 945, baseType: !1767, size: 64, offset: 8896)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1247, line: 49, flags: DIFlagFwdDecl)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1246, file: !1247, line: 956, baseType: !1770, size: 64, offset: 8960)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1247, line: 45, flags: DIFlagFwdDecl)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1246, file: !1247, line: 959, baseType: !1773, size: 64, offset: 9024)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1247, line: 959, flags: DIFlagFwdDecl)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1246, file: !1247, line: 962, baseType: !1776, size: 64, offset: 9088)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1247, line: 66, flags: DIFlagFwdDecl)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1246, file: !1247, line: 966, baseType: !1779, size: 64, offset: 9152)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1781, line: 35, flags: DIFlagFwdDecl)
!1781 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1246, file: !1247, line: 969, baseType: !1783, size: 64, offset: 9216)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1785, line: 82, size: 7296, elements: !1786)
!1785 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1786 = !{!1787, !1788, !1789, !1790, !1791, !1792, !1793, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1822, !1831, !1832, !1834, !1835, !1836, !1839, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1869, !1870, !1877, !1878, !1879, !1880, !1881, !1882}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1784, file: !1785, line: 83, baseType: !1259, size: 32)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1784, file: !1785, line: 84, baseType: !776, size: 32, offset: 32)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1784, file: !1785, line: 85, baseType: !139, size: 32, offset: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1784, file: !1785, line: 86, baseType: !253, size: 128, offset: 128)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1784, file: !1785, line: 88, baseType: !1510, size: 128, offset: 256)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1784, file: !1785, line: 91, baseType: !1245, size: 64, offset: 384)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1784, file: !1785, line: 94, baseType: !1794, size: 192, offset: 448)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1795, line: 30, size: 192, elements: !1796)
!1795 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1796 = !{!1797, !1798}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1794, file: !1795, line: 31, baseType: !253, size: 128)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1794, file: !1795, line: 32, baseType: !1799, size: 64, offset: 128)
!1799 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1800, line: 25, baseType: !1801)
!1800 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1800, line: 23, size: 64, elements: !1802)
!1802 = !{!1803}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1801, file: !1800, line: 24, baseType: !1399, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1784, file: !1785, line: 97, baseType: !663, size: 64, offset: 640)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1784, file: !1785, line: 100, baseType: !139, size: 32, offset: 704)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1784, file: !1785, line: 106, baseType: !139, size: 32, offset: 736)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1784, file: !1785, line: 107, baseType: !1245, size: 64, offset: 768)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1784, file: !1785, line: 110, baseType: !139, size: 32, offset: 832)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1784, file: !1785, line: 111, baseType: !7, size: 32, offset: 864)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1784, file: !1785, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1784, file: !1785, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1784, file: !1785, line: 128, baseType: !139, size: 32, offset: 928)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1784, file: !1785, line: 129, baseType: !253, size: 128, offset: 960)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1784, file: !1785, line: 132, baseType: !1321, size: 512, offset: 1088)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1784, file: !1785, line: 133, baseType: !1329, size: 64, offset: 1600)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1784, file: !1785, line: 140, baseType: !1817, size: 256, offset: 1664)
!1817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1818, size: 256, elements: !1598)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1785, line: 38, size: 128, elements: !1819)
!1819 = !{!1820, !1821}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1818, file: !1785, line: 39, baseType: !451, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1818, file: !1785, line: 40, baseType: !451, size: 64, offset: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1784, file: !1785, line: 146, baseType: !1823, size: 192, offset: 1920)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1785, line: 66, size: 192, elements: !1824)
!1824 = !{!1825}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1823, file: !1785, line: 67, baseType: !1826, size: 192)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1785, line: 47, size: 192, elements: !1827)
!1827 = !{!1828, !1829, !1830}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1826, file: !1785, line: 48, baseType: !802, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1826, file: !1785, line: 49, baseType: !802, size: 64, offset: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1826, file: !1785, line: 50, baseType: !802, size: 64, offset: 128)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1784, file: !1785, line: 150, baseType: !1559, size: 640, offset: 2112)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1784, file: !1785, line: 153, baseType: !1833, size: 256, offset: 2752)
!1833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1500, size: 256, elements: !1184)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1784, file: !1785, line: 159, baseType: !1500, size: 64, offset: 3008)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1784, file: !1785, line: 162, baseType: !139, size: 32, offset: 3072)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1784, file: !1785, line: 164, baseType: !1837, size: 64, offset: 3136)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1785, line: 164, flags: DIFlagFwdDecl)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1784, file: !1785, line: 175, baseType: !1840, size: 32, offset: 3200)
!1840 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !418, line: 805, baseType: !1841)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !418, line: 798, size: 32, elements: !1842)
!1842 = !{!1843, !1844}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1841, file: !418, line: 803, baseType: !417, size: 32)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1841, file: !418, line: 804, baseType: !266, offset: 32)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1784, file: !1785, line: 176, baseType: !451, size: 64, offset: 3264)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1784, file: !1785, line: 176, baseType: !451, size: 64, offset: 3328)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1784, file: !1785, line: 176, baseType: !451, size: 64, offset: 3392)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1784, file: !1785, line: 176, baseType: !451, size: 64, offset: 3456)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1784, file: !1785, line: 177, baseType: !451, size: 64, offset: 3520)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1784, file: !1785, line: 178, baseType: !451, size: 64, offset: 3584)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1784, file: !1785, line: 179, baseType: !1547, size: 128, offset: 3648)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1784, file: !1785, line: 180, baseType: !197, size: 64, offset: 3776)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1784, file: !1785, line: 180, baseType: !197, size: 64, offset: 3840)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1784, file: !1785, line: 180, baseType: !197, size: 64, offset: 3904)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1784, file: !1785, line: 180, baseType: !197, size: 64, offset: 3968)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1784, file: !1785, line: 181, baseType: !197, size: 64, offset: 4032)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1784, file: !1785, line: 181, baseType: !197, size: 64, offset: 4096)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1784, file: !1785, line: 181, baseType: !197, size: 64, offset: 4160)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1784, file: !1785, line: 181, baseType: !197, size: 64, offset: 4224)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1784, file: !1785, line: 182, baseType: !197, size: 64, offset: 4288)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1784, file: !1785, line: 182, baseType: !197, size: 64, offset: 4352)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1784, file: !1785, line: 182, baseType: !197, size: 64, offset: 4416)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1784, file: !1785, line: 182, baseType: !197, size: 64, offset: 4480)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1784, file: !1785, line: 183, baseType: !197, size: 64, offset: 4544)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1784, file: !1785, line: 183, baseType: !197, size: 64, offset: 4608)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1784, file: !1785, line: 184, baseType: !1867, offset: 4672)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1868, line: 12, elements: !280)
!1868 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1784, file: !1785, line: 192, baseType: !453, size: 64, offset: 4672)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1784, file: !1785, line: 203, baseType: !1871, size: 2048, offset: 4736)
!1871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1872, size: 2048, elements: !1764)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1873, line: 43, size: 128, elements: !1874)
!1873 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1874 = !{!1875, !1876}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1872, file: !1873, line: 44, baseType: !354, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1872, file: !1873, line: 45, baseType: !354, size: 64, offset: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1784, file: !1785, line: 220, baseType: !216, size: 8, offset: 6784)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1784, file: !1785, line: 221, baseType: !1234, size: 16, offset: 6800)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1784, file: !1785, line: 222, baseType: !1234, size: 16, offset: 6816)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1784, file: !1785, line: 224, baseType: !1003, size: 64, offset: 6848)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1784, file: !1785, line: 227, baseType: !1202, size: 192, offset: 6912)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1784, file: !1785, line: 233, baseType: !1202, size: 192, offset: 7104)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1246, file: !1247, line: 970, baseType: !1884, size: 64, offset: 9280)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1785, line: 20, size: 16576, elements: !1886)
!1886 = !{!1887, !1888, !1889, !1890}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1885, file: !1785, line: 21, baseType: !266)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1885, file: !1785, line: 22, baseType: !1259, size: 32)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1885, file: !1785, line: 23, baseType: !1510, size: 128, offset: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1885, file: !1785, line: 24, baseType: !1891, size: 16384, offset: 192)
!1891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1892, size: 16384, elements: !310)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1795, line: 49, size: 256, elements: !1893)
!1893 = !{!1894}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1892, file: !1795, line: 50, baseType: !1895, size: 256)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1795, line: 35, size: 256, elements: !1896)
!1896 = !{!1897, !1904, !1905, !1909}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1895, file: !1795, line: 37, baseType: !1898, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1899, line: 19, baseType: !1900)
!1899 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1899, line: 18, baseType: !1902)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{null, !139}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1895, file: !1795, line: 38, baseType: !197, size: 64, offset: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1895, file: !1795, line: 44, baseType: !1906, size: 64, offset: 128)
!1906 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1899, line: 22, baseType: !1907)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1899, line: 21, baseType: !146)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1895, file: !1795, line: 46, baseType: !1799, size: 64, offset: 192)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1246, file: !1247, line: 971, baseType: !1799, size: 64, offset: 9344)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1246, file: !1247, line: 972, baseType: !1799, size: 64, offset: 9408)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1246, file: !1247, line: 974, baseType: !1799, size: 64, offset: 9472)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1246, file: !1247, line: 975, baseType: !1794, size: 192, offset: 9536)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1246, file: !1247, line: 976, baseType: !197, size: 64, offset: 9728)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1246, file: !1247, line: 977, baseType: !352, size: 64, offset: 9792)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1246, file: !1247, line: 978, baseType: !7, size: 32, offset: 9856)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1246, file: !1247, line: 980, baseType: !398, size: 64, offset: 9920)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1246, file: !1247, line: 989, baseType: !1919, size: 128, offset: 9984)
!1919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1920, line: 35, size: 128, elements: !1921)
!1920 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1921 = !{!1922, !1923, !1924}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1919, file: !1920, line: 36, baseType: !139, size: 32)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1919, file: !1920, line: 37, baseType: !776, size: 32, offset: 32)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1919, file: !1920, line: 38, baseType: !1925, size: 64, offset: 64)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1920, line: 23, flags: DIFlagFwdDecl)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1246, file: !1247, line: 992, baseType: !451, size: 64, offset: 10112)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1246, file: !1247, line: 993, baseType: !451, size: 64, offset: 10176)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1246, file: !1247, line: 996, baseType: !266, offset: 10240)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1246, file: !1247, line: 999, baseType: !809, offset: 10240)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1246, file: !1247, line: 1001, baseType: !1932, size: 64, offset: 10240)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1247, line: 636, size: 64, elements: !1933)
!1933 = !{!1934}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1932, file: !1247, line: 637, baseType: !1935, size: 64)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1246, file: !1247, line: 1005, baseType: !781, size: 128, offset: 10304)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1246, file: !1247, line: 1007, baseType: !1245, size: 64, offset: 10432)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1246, file: !1247, line: 1009, baseType: !1939, size: 64, offset: 10496)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1247, line: 1009, flags: DIFlagFwdDecl)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1246, file: !1247, line: 1043, baseType: !199, size: 64, offset: 10560)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1246, file: !1247, line: 1046, baseType: !1943, size: 64, offset: 10624)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1247, line: 41, flags: DIFlagFwdDecl)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1246, file: !1247, line: 1050, baseType: !1946, size: 64, offset: 10688)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1247, line: 42, flags: DIFlagFwdDecl)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1246, file: !1247, line: 1054, baseType: !1949, size: 64, offset: 10752)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1247, line: 55, flags: DIFlagFwdDecl)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1246, file: !1247, line: 1056, baseType: !1952, size: 64, offset: 10816)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1247, line: 40, flags: DIFlagFwdDecl)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1246, file: !1247, line: 1058, baseType: !1955, size: 64, offset: 10880)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1957, line: 99, size: 704, elements: !1958)
!1957 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1958 = !{!1959, !1960, !1961, !1962, !1963, !1964, !1965, !1984, !1985}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1956, file: !1957, line: 100, baseType: !800, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1956, file: !1957, line: 101, baseType: !776, size: 32, offset: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1956, file: !1957, line: 102, baseType: !776, size: 32, offset: 96)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1956, file: !1957, line: 105, baseType: !266, offset: 128)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1956, file: !1957, line: 107, baseType: !347, size: 16, offset: 128)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1956, file: !1957, line: 109, baseType: !767, size: 128, offset: 192)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1956, file: !1957, line: 110, baseType: !1966, size: 64, offset: 320)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1957, line: 73, size: 448, elements: !1968)
!1968 = !{!1969, !1972, !1973, !1978, !1983}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1967, file: !1957, line: 74, baseType: !1970, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1957, line: 74, flags: DIFlagFwdDecl)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1967, file: !1957, line: 75, baseType: !1955, size: 64, offset: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, scope: !1967, file: !1957, line: 83, baseType: !1974, size: 128, offset: 128)
!1974 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1967, file: !1957, line: 83, size: 128, elements: !1975)
!1975 = !{!1976, !1977}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1974, file: !1957, line: 84, baseType: !253, size: 128)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1974, file: !1957, line: 85, baseType: !964, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, scope: !1967, file: !1957, line: 87, baseType: !1979, size: 128, offset: 256)
!1979 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1967, file: !1957, line: 87, size: 128, elements: !1980)
!1980 = !{!1981, !1982}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1979, file: !1957, line: 88, baseType: !667, size: 128)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1979, file: !1957, line: 89, baseType: !395, size: 128, align: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1967, file: !1957, line: 92, baseType: !7, size: 32, offset: 384)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1956, file: !1957, line: 111, baseType: !663, size: 64, offset: 384)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1956, file: !1957, line: 113, baseType: !1986, size: 256, offset: 448)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1987, line: 102, size: 256, elements: !1988)
!1987 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1988 = !{!1989, !1990, !1991}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1986, file: !1987, line: 103, baseType: !800, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1986, file: !1987, line: 104, baseType: !253, size: 128, offset: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1986, file: !1987, line: 105, baseType: !1992, size: 64, offset: 192)
!1992 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1987, line: 21, baseType: !1993)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{null, !1996}
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1246, file: !1247, line: 1061, baseType: !1998, size: 64, offset: 10944)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1247, line: 43, flags: DIFlagFwdDecl)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1246, file: !1247, line: 1064, baseType: !197, size: 64, offset: 11008)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1246, file: !1247, line: 1065, baseType: !2002, size: 64, offset: 11072)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1795, line: 14, baseType: !2004)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1795, line: 12, size: 384, elements: !2005)
!2005 = !{!2006}
!2006 = !DIDerivedType(tag: DW_TAG_member, scope: !2004, file: !1795, line: 13, baseType: !2007, size: 384)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2004, file: !1795, line: 13, size: 384, elements: !2008)
!2008 = !{!2009, !2010, !2011, !2012}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2007, file: !1795, line: 13, baseType: !139, size: 32)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2007, file: !1795, line: 13, baseType: !139, size: 32, offset: 32)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2007, file: !1795, line: 13, baseType: !139, size: 32, offset: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2007, file: !1795, line: 13, baseType: !2013, size: 256, offset: 128)
!2013 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2014, line: 32, size: 256, elements: !2015)
!2014 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2015 = !{!2016, !2021, !2034, !2040, !2049, !2069, !2074}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2013, file: !2014, line: 37, baseType: !2017, size: 64)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2013, file: !2014, line: 34, size: 64, elements: !2018)
!2018 = !{!2019, !2020}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2017, file: !2014, line: 35, baseType: !1489, size: 32)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2017, file: !2014, line: 36, baseType: !471, size: 32, offset: 32)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2013, file: !2014, line: 45, baseType: !2022, size: 192)
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2013, file: !2014, line: 40, size: 192, elements: !2023)
!2023 = !{!2024, !2026, !2027, !2033}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2022, file: !2014, line: 41, baseType: !2025, size: 32)
!2025 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !338, line: 95, baseType: !139)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2022, file: !2014, line: 42, baseType: !139, size: 32, offset: 32)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2022, file: !2014, line: 43, baseType: !2028, size: 64, offset: 64)
!2028 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2014, line: 11, baseType: !2029)
!2029 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2014, line: 8, size: 64, elements: !2030)
!2030 = !{!2031, !2032}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2029, file: !2014, line: 9, baseType: !139, size: 32)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2029, file: !2014, line: 10, baseType: !199, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2022, file: !2014, line: 44, baseType: !139, size: 32, offset: 128)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2013, file: !2014, line: 52, baseType: !2035, size: 128)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2013, file: !2014, line: 48, size: 128, elements: !2036)
!2036 = !{!2037, !2038, !2039}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2035, file: !2014, line: 49, baseType: !1489, size: 32)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2035, file: !2014, line: 50, baseType: !471, size: 32, offset: 32)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2035, file: !2014, line: 51, baseType: !2028, size: 64, offset: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2013, file: !2014, line: 61, baseType: !2041, size: 256)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2013, file: !2014, line: 55, size: 256, elements: !2042)
!2042 = !{!2043, !2044, !2045, !2046, !2048}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2041, file: !2014, line: 56, baseType: !1489, size: 32)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2041, file: !2014, line: 57, baseType: !471, size: 32, offset: 32)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2041, file: !2014, line: 58, baseType: !139, size: 32, offset: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2041, file: !2014, line: 59, baseType: !2047, size: 64, offset: 128)
!2047 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !338, line: 94, baseType: !339)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2041, file: !2014, line: 60, baseType: !2047, size: 64, offset: 192)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2013, file: !2014, line: 95, baseType: !2050, size: 256)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2013, file: !2014, line: 64, size: 256, elements: !2051)
!2051 = !{!2052, !2053}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2050, file: !2014, line: 65, baseType: !199, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, scope: !2050, file: !2014, line: 77, baseType: !2054, size: 192, offset: 64)
!2054 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2050, file: !2014, line: 77, size: 192, elements: !2055)
!2055 = !{!2056, !2057, !2064}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2054, file: !2014, line: 82, baseType: !1234, size: 16)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2054, file: !2014, line: 88, baseType: !2058, size: 192)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2054, file: !2014, line: 84, size: 192, elements: !2059)
!2059 = !{!2060, !2062, !2063}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2058, file: !2014, line: 85, baseType: !2061, size: 64)
!2061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 64, elements: !1359)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2058, file: !2014, line: 86, baseType: !199, size: 64, offset: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2058, file: !2014, line: 87, baseType: !199, size: 64, offset: 128)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2054, file: !2014, line: 93, baseType: !2065, size: 96)
!2065 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2054, file: !2014, line: 90, size: 96, elements: !2066)
!2066 = !{!2067, !2068}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2065, file: !2014, line: 91, baseType: !2061, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2065, file: !2014, line: 92, baseType: !447, size: 32, offset: 64)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2013, file: !2014, line: 101, baseType: !2070, size: 128)
!2070 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2013, file: !2014, line: 98, size: 128, elements: !2071)
!2071 = !{!2072, !2073}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2070, file: !2014, line: 99, baseType: !340, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2070, file: !2014, line: 100, baseType: !139, size: 32, offset: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2013, file: !2014, line: 108, baseType: !2075, size: 128)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2013, file: !2014, line: 104, size: 128, elements: !2076)
!2076 = !{!2077, !2078, !2079}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2075, file: !2014, line: 105, baseType: !199, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2075, file: !2014, line: 106, baseType: !139, size: 32, offset: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2075, file: !2014, line: 107, baseType: !7, size: 32, offset: 96)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1246, file: !1247, line: 1067, baseType: !1867, offset: 11136)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1246, file: !1247, line: 1099, baseType: !2082, size: 64, offset: 11136)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1247, line: 56, flags: DIFlagFwdDecl)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1246, file: !1247, line: 1103, baseType: !253, size: 128, offset: 11200)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1246, file: !1247, line: 1104, baseType: !2086, size: 64, offset: 11328)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1247, line: 46, flags: DIFlagFwdDecl)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1246, file: !1247, line: 1105, baseType: !1202, size: 192, offset: 11392)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1246, file: !1247, line: 1106, baseType: !7, size: 32, offset: 11584)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1246, file: !1247, line: 1109, baseType: !2091, size: 128, offset: 11648)
!2091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2092, size: 128, elements: !1598)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1247, line: 51, flags: DIFlagFwdDecl)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1246, file: !1247, line: 1110, baseType: !1202, size: 192, offset: 11776)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1246, file: !1247, line: 1111, baseType: !253, size: 128, offset: 11968)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1246, file: !1247, line: 1173, baseType: !2097, size: 64, offset: 12096)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2099, line: 62, size: 256, align: 256, elements: !2100)
!2099 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2100 = !{!2101, !2102, !2103, !2108}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2098, file: !2099, line: 75, baseType: !447, size: 32)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2098, file: !2099, line: 90, baseType: !447, size: 32, offset: 32)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2098, file: !2099, line: 124, baseType: !2104, size: 64, offset: 64)
!2104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2098, file: !2099, line: 109, size: 64, elements: !2105)
!2105 = !{!2106, !2107}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2104, file: !2099, line: 110, baseType: !452, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2104, file: !2099, line: 112, baseType: !452, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2098, file: !2099, line: 144, baseType: !447, size: 32, offset: 128)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1246, file: !1247, line: 1174, baseType: !445, size: 32, offset: 12160)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1246, file: !1247, line: 1179, baseType: !197, size: 64, offset: 12224)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1246, file: !1247, line: 1182, baseType: !2112, size: 128, offset: 12288)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1180, line: 76, size: 128, elements: !2113)
!2113 = !{!2114, !2119, !2120}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2112, file: !1180, line: 85, baseType: !2115, size: 64)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2116, line: 7, size: 64, elements: !2117)
!2116 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2117 = !{!2118}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2115, file: !2116, line: 12, baseType: !1396, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2112, file: !1180, line: 88, baseType: !216, size: 8, offset: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2112, file: !1180, line: 95, baseType: !216, size: 8, offset: 72)
!2121 = !DIDerivedType(tag: DW_TAG_member, scope: !1246, file: !1247, line: 1184, baseType: !2122, size: 128, offset: 12416)
!2122 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1246, file: !1247, line: 1184, size: 128, elements: !2123)
!2123 = !{!2124, !2125}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2122, file: !1247, line: 1185, baseType: !1259, size: 32)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2122, file: !1247, line: 1186, baseType: !395, size: 128, align: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1246, file: !1247, line: 1190, baseType: !2127, size: 64, offset: 12544)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1247, line: 53, flags: DIFlagFwdDecl)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1246, file: !1247, line: 1192, baseType: !2130, size: 128, offset: 12608)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1180, line: 64, size: 128, elements: !2131)
!2131 = !{!2132, !2133, !2134}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2130, file: !1180, line: 65, baseType: !749, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2130, file: !1180, line: 67, baseType: !447, size: 32, offset: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2130, file: !1180, line: 68, baseType: !447, size: 32, offset: 96)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1246, file: !1247, line: 1206, baseType: !139, size: 32, offset: 12736)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1246, file: !1247, line: 1207, baseType: !139, size: 32, offset: 12768)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1246, file: !1247, line: 1209, baseType: !197, size: 64, offset: 12800)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1246, file: !1247, line: 1219, baseType: !451, size: 64, offset: 12864)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1246, file: !1247, line: 1220, baseType: !451, size: 64, offset: 12928)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1246, file: !1247, line: 1317, baseType: !139, size: 32, offset: 12992)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1246, file: !1247, line: 1319, baseType: !1245, size: 64, offset: 13056)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1246, file: !1247, line: 1322, baseType: !2143, size: 64, offset: 13120)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2145, line: 56, size: 512, elements: !2146)
!2145 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2146 = !{!2147, !2148, !2149, !2150, !2151, !2152, !2153, !2155}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2144, file: !2145, line: 57, baseType: !2143, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2144, file: !2145, line: 58, baseType: !199, size: 64, offset: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2144, file: !2145, line: 59, baseType: !197, size: 64, offset: 128)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2144, file: !2145, line: 60, baseType: !197, size: 64, offset: 192)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2144, file: !2145, line: 61, baseType: !849, size: 64, offset: 256)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2144, file: !2145, line: 62, baseType: !7, size: 32, offset: 320)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2144, file: !2145, line: 63, baseType: !2154, size: 64, offset: 384)
!2154 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !217, line: 153, baseType: !451)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2144, file: !2145, line: 64, baseType: !2156, size: 64, offset: 448)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1246, file: !1247, line: 1326, baseType: !1259, size: 32, offset: 13184)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1246, file: !1247, line: 1342, baseType: !199, size: 64, offset: 13248)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1246, file: !1247, line: 1343, baseType: !452, size: 64, offset: 13312)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1246, file: !1247, line: 1344, baseType: !451, size: 64, offset: 13376)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1246, file: !1247, line: 1345, baseType: !452, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1246, file: !1247, line: 1346, baseType: !452, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1246, file: !1247, line: 1347, baseType: !452, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1246, file: !1247, line: 1348, baseType: !395, size: 128, align: 64, offset: 13504)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1246, file: !1247, line: 1358, baseType: !2167, size: 34816, offset: 13824)
!2167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2168, line: 485, size: 34816, elements: !2169)
!2168 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2169 = !{!2170, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2199, !2200, !2201, !2202, !2203, !2204, !2207, !2208, !2209}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2167, file: !2168, line: 487, baseType: !2171, size: 192)
!2171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2172, size: 192, elements: !211)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2173, line: 16, size: 64, elements: !2174)
!2173 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2174 = !{!2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2172, file: !2173, line: 17, baseType: !888, size: 16)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2172, file: !2173, line: 18, baseType: !888, size: 16, offset: 16)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2172, file: !2173, line: 19, baseType: !888, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2172, file: !2173, line: 19, baseType: !888, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2172, file: !2173, line: 19, baseType: !888, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2172, file: !2173, line: 19, baseType: !888, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2172, file: !2173, line: 19, baseType: !888, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2172, file: !2173, line: 20, baseType: !888, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2172, file: !2173, line: 20, baseType: !888, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2172, file: !2173, line: 20, baseType: !888, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2172, file: !2173, line: 20, baseType: !888, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2172, file: !2173, line: 20, baseType: !888, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2172, file: !2173, line: 20, baseType: !888, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2167, file: !2168, line: 491, baseType: !197, size: 64, offset: 192)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2167, file: !2168, line: 495, baseType: !347, size: 16, offset: 256)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2167, file: !2168, line: 496, baseType: !347, size: 16, offset: 272)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2167, file: !2168, line: 497, baseType: !347, size: 16, offset: 288)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2167, file: !2168, line: 498, baseType: !347, size: 16, offset: 304)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2167, file: !2168, line: 502, baseType: !197, size: 64, offset: 320)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2167, file: !2168, line: 503, baseType: !197, size: 64, offset: 384)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2167, file: !2168, line: 514, baseType: !2196, size: 256, offset: 448)
!2196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2197, size: 256, elements: !1184)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2168, line: 483, flags: DIFlagFwdDecl)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2167, file: !2168, line: 516, baseType: !197, size: 64, offset: 704)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2167, file: !2168, line: 518, baseType: !197, size: 64, offset: 768)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2167, file: !2168, line: 520, baseType: !197, size: 64, offset: 832)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2167, file: !2168, line: 521, baseType: !197, size: 64, offset: 896)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2167, file: !2168, line: 522, baseType: !197, size: 64, offset: 960)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2167, file: !2168, line: 528, baseType: !2205, size: 64, offset: 1024)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2168, line: 10, flags: DIFlagFwdDecl)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2167, file: !2168, line: 535, baseType: !197, size: 64, offset: 1088)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2167, file: !2168, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2167, file: !2168, line: 540, baseType: !2210, size: 33280, offset: 1536)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2211, line: 317, size: 33280, elements: !2212)
!2211 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2212 = !{!2213, !2214, !2215}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2210, file: !2211, line: 330, baseType: !7, size: 32)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2210, file: !2211, line: 337, baseType: !197, size: 64, offset: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2210, file: !2211, line: 348, baseType: !2216, size: 32768, offset: 512)
!2216 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2211, line: 304, size: 32768, elements: !2217)
!2217 = !{!2218, !2233, !2272, !2322, !2335}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2216, file: !2211, line: 305, baseType: !2219, size: 896)
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2211, line: 12, size: 896, elements: !2220)
!2220 = !{!2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2232}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2219, file: !2211, line: 13, baseType: !445, size: 32)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2219, file: !2211, line: 14, baseType: !445, size: 32, offset: 32)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2219, file: !2211, line: 15, baseType: !445, size: 32, offset: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2219, file: !2211, line: 16, baseType: !445, size: 32, offset: 96)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2219, file: !2211, line: 17, baseType: !445, size: 32, offset: 128)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2219, file: !2211, line: 18, baseType: !445, size: 32, offset: 160)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2219, file: !2211, line: 19, baseType: !445, size: 32, offset: 192)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2219, file: !2211, line: 22, baseType: !2229, size: 640, offset: 224)
!2229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 640, elements: !2230)
!2230 = !{!2231}
!2231 = !DISubrange(count: 20)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2219, file: !2211, line: 25, baseType: !445, size: 32, offset: 864)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2216, file: !2211, line: 306, baseType: !2234, size: 4096, align: 128)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2211, line: 34, size: 4096, align: 128, elements: !2235)
!2235 = !{!2236, !2237, !2238, !2239, !2240, !2255, !2256, !2257, !2261, !2263, !2267}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2234, file: !2211, line: 35, baseType: !888, size: 16)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2234, file: !2211, line: 36, baseType: !888, size: 16, offset: 16)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2234, file: !2211, line: 37, baseType: !888, size: 16, offset: 32)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2234, file: !2211, line: 38, baseType: !888, size: 16, offset: 48)
!2240 = !DIDerivedType(tag: DW_TAG_member, scope: !2234, file: !2211, line: 39, baseType: !2241, size: 128, offset: 64)
!2241 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2234, file: !2211, line: 39, size: 128, elements: !2242)
!2242 = !{!2243, !2248}
!2243 = !DIDerivedType(tag: DW_TAG_member, scope: !2241, file: !2211, line: 40, baseType: !2244, size: 128)
!2244 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2241, file: !2211, line: 40, size: 128, elements: !2245)
!2245 = !{!2246, !2247}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2244, file: !2211, line: 41, baseType: !451, size: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2244, file: !2211, line: 42, baseType: !451, size: 64, offset: 64)
!2248 = !DIDerivedType(tag: DW_TAG_member, scope: !2241, file: !2211, line: 44, baseType: !2249, size: 128)
!2249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2241, file: !2211, line: 44, size: 128, elements: !2250)
!2250 = !{!2251, !2252, !2253, !2254}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2249, file: !2211, line: 45, baseType: !445, size: 32)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2249, file: !2211, line: 46, baseType: !445, size: 32, offset: 32)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2249, file: !2211, line: 47, baseType: !445, size: 32, offset: 64)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2249, file: !2211, line: 48, baseType: !445, size: 32, offset: 96)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2234, file: !2211, line: 51, baseType: !445, size: 32, offset: 192)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2234, file: !2211, line: 52, baseType: !445, size: 32, offset: 224)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2234, file: !2211, line: 55, baseType: !2258, size: 1024, offset: 256)
!2258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 1024, elements: !2259)
!2259 = !{!2260}
!2260 = !DISubrange(count: 32)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2234, file: !2211, line: 58, baseType: !2262, size: 2048, offset: 1280)
!2262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 2048, elements: !310)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2234, file: !2211, line: 60, baseType: !2264, size: 384, offset: 3328)
!2264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 384, elements: !2265)
!2265 = !{!2266}
!2266 = !DISubrange(count: 12)
!2267 = !DIDerivedType(tag: DW_TAG_member, scope: !2234, file: !2211, line: 62, baseType: !2268, size: 384, offset: 3712)
!2268 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2234, file: !2211, line: 62, size: 384, elements: !2269)
!2269 = !{!2270, !2271}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2268, file: !2211, line: 63, baseType: !2264, size: 384)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2268, file: !2211, line: 64, baseType: !2264, size: 384)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2216, file: !2211, line: 307, baseType: !2273, size: 1088)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2211, line: 79, size: 1088, elements: !2274)
!2274 = !{!2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2321}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2273, file: !2211, line: 80, baseType: !445, size: 32)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2273, file: !2211, line: 81, baseType: !445, size: 32, offset: 32)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2273, file: !2211, line: 82, baseType: !445, size: 32, offset: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2273, file: !2211, line: 83, baseType: !445, size: 32, offset: 96)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2273, file: !2211, line: 84, baseType: !445, size: 32, offset: 128)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2273, file: !2211, line: 85, baseType: !445, size: 32, offset: 160)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2273, file: !2211, line: 86, baseType: !445, size: 32, offset: 192)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2273, file: !2211, line: 88, baseType: !2229, size: 640, offset: 224)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2273, file: !2211, line: 89, baseType: !1381, size: 8, offset: 864)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2273, file: !2211, line: 90, baseType: !1381, size: 8, offset: 872)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2273, file: !2211, line: 91, baseType: !1381, size: 8, offset: 880)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2273, file: !2211, line: 92, baseType: !1381, size: 8, offset: 888)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2273, file: !2211, line: 93, baseType: !1381, size: 8, offset: 896)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2273, file: !2211, line: 94, baseType: !1381, size: 8, offset: 904)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2273, file: !2211, line: 95, baseType: !2290, size: 64, offset: 960)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2292, line: 11, size: 128, elements: !2293)
!2292 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2293 = !{!2294, !2295}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2291, file: !2292, line: 12, baseType: !340, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2291, file: !2292, line: 13, baseType: !2296, size: 64, offset: 64)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2298, line: 56, size: 1344, elements: !2299)
!2298 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2299 = !{!2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2297, file: !2298, line: 61, baseType: !197, size: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2297, file: !2298, line: 62, baseType: !197, size: 64, offset: 64)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2297, file: !2298, line: 63, baseType: !197, size: 64, offset: 128)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2297, file: !2298, line: 64, baseType: !197, size: 64, offset: 192)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2297, file: !2298, line: 65, baseType: !197, size: 64, offset: 256)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2297, file: !2298, line: 66, baseType: !197, size: 64, offset: 320)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2297, file: !2298, line: 68, baseType: !197, size: 64, offset: 384)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2297, file: !2298, line: 69, baseType: !197, size: 64, offset: 448)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2297, file: !2298, line: 70, baseType: !197, size: 64, offset: 512)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2297, file: !2298, line: 71, baseType: !197, size: 64, offset: 576)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2297, file: !2298, line: 72, baseType: !197, size: 64, offset: 640)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2297, file: !2298, line: 73, baseType: !197, size: 64, offset: 704)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2297, file: !2298, line: 74, baseType: !197, size: 64, offset: 768)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2297, file: !2298, line: 75, baseType: !197, size: 64, offset: 832)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2297, file: !2298, line: 76, baseType: !197, size: 64, offset: 896)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2297, file: !2298, line: 81, baseType: !197, size: 64, offset: 960)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2297, file: !2298, line: 83, baseType: !197, size: 64, offset: 1024)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2297, file: !2298, line: 84, baseType: !197, size: 64, offset: 1088)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2297, file: !2298, line: 85, baseType: !197, size: 64, offset: 1152)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2297, file: !2298, line: 86, baseType: !197, size: 64, offset: 1216)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2297, file: !2298, line: 87, baseType: !197, size: 64, offset: 1280)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2273, file: !2211, line: 96, baseType: !445, size: 32, offset: 1024)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2216, file: !2211, line: 308, baseType: !2323, size: 4608, align: 512)
!2323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2211, line: 289, size: 4608, align: 512, elements: !2324)
!2324 = !{!2325, !2326, !2333}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2323, file: !2211, line: 290, baseType: !2234, size: 4096, align: 128)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2323, file: !2211, line: 291, baseType: !2327, size: 512, offset: 4096)
!2327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2211, line: 268, size: 512, elements: !2328)
!2328 = !{!2329, !2330, !2331}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2327, file: !2211, line: 269, baseType: !451, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2327, file: !2211, line: 270, baseType: !451, size: 64, offset: 64)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2327, file: !2211, line: 271, baseType: !2332, size: 384, offset: 128)
!2332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !451, size: 384, elements: !1654)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2323, file: !2211, line: 292, baseType: !2334, offset: 4608)
!2334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1381, elements: !1752)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2216, file: !2211, line: 309, baseType: !2336, size: 32768)
!2336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1381, size: 32768, elements: !2337)
!2337 = !{!2338}
!2338 = !DISubrange(count: 4096)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1242, file: !751, line: 378, baseType: !2340, size: 64, offset: 64)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1238, file: !751, line: 384, baseType: !1531, size: 192, offset: 192)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1007, file: !751, line: 500, baseType: !266, offset: 6656)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1007, file: !751, line: 501, baseType: !2344, size: 64, offset: 6656)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !751, line: 387, flags: DIFlagFwdDecl)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1007, file: !751, line: 516, baseType: !1742, size: 64, offset: 6720)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1007, file: !751, line: 519, baseType: !382, size: 64, offset: 6784)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1007, file: !751, line: 521, baseType: !2349, size: 64, offset: 6848)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !751, line: 521, flags: DIFlagFwdDecl)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1007, file: !751, line: 545, baseType: !776, size: 32, offset: 6912)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1007, file: !751, line: 548, baseType: !216, size: 8, offset: 6944)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1007, file: !751, line: 550, baseType: !2354, offset: 6952)
!2354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2355, line: 142, elements: !280)
!2355 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1007, file: !751, line: 554, baseType: !1986, size: 256, offset: 6976)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1007, file: !751, line: 557, baseType: !445, size: 32, offset: 7232)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1004, file: !751, line: 565, baseType: !2359, offset: 7296)
!2359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, elements: !2360)
!2360 = !{!2361}
!2361 = !DISubrange(count: -1)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1000, file: !751, line: 151, baseType: !776, size: 32)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !993, file: !751, line: 156, baseType: !266, offset: 256)
!2364 = !DIDerivedType(tag: DW_TAG_member, scope: !755, file: !751, line: 159, baseType: !2365, size: 128)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !755, file: !751, line: 159, size: 128, elements: !2366)
!2366 = !{!2367, !2431}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2365, file: !751, line: 161, baseType: !2368, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2370)
!2370 = !{!2371, !2381, !2402, !2403, !2404, !2405, !2406, !2418, !2419, !2420}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2369, file: !31, line: 111, baseType: !2372, size: 384)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2373)
!2373 = !{!2374, !2376, !2377, !2378, !2379, !2380}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2372, file: !31, line: 20, baseType: !2375, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2372, file: !31, line: 21, baseType: !2375, size: 64, offset: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2372, file: !31, line: 22, baseType: !2375, size: 64, offset: 128)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2372, file: !31, line: 23, baseType: !197, size: 64, offset: 192)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2372, file: !31, line: 24, baseType: !197, size: 64, offset: 256)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2372, file: !31, line: 25, baseType: !197, size: 64, offset: 320)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2369, file: !31, line: 112, baseType: !2382, size: 64, offset: 384)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2384, line: 105, size: 128, elements: !2385)
!2384 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2385 = !{!2386, !2387}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2383, file: !2384, line: 110, baseType: !197, size: 64)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2383, file: !2384, line: 118, baseType: !2388, size: 64, offset: 64)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2384, line: 95, size: 448, elements: !2390)
!2390 = !{!2391, !2392, !2397, !2398, !2399, !2400, !2401}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2389, file: !2384, line: 96, baseType: !800, size: 64)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2389, file: !2384, line: 97, baseType: !2393, size: 64, offset: 64)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2384, line: 60, baseType: !2395)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{null, !2382}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2389, file: !2384, line: 98, baseType: !2393, size: 64, offset: 128)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2389, file: !2384, line: 99, baseType: !216, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2389, file: !2384, line: 100, baseType: !216, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2389, file: !2384, line: 101, baseType: !395, size: 128, align: 64, offset: 256)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2389, file: !2384, line: 102, baseType: !2382, size: 64, offset: 384)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2369, file: !31, line: 113, baseType: !2383, size: 128, offset: 448)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2369, file: !31, line: 114, baseType: !1531, size: 192, offset: 576)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2369, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2369, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2369, file: !31, line: 117, baseType: !2407, size: 64, offset: 832)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2409)
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2410)
!2410 = !{!2411, !2412, !2416, !2417}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2409, file: !31, line: 73, baseType: !869, size: 64)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2409, file: !31, line: 78, baseType: !2413, size: 64, offset: 64)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{null, !2368}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2409, file: !31, line: 83, baseType: !2413, size: 64, offset: 128)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2409, file: !31, line: 89, baseType: !1056, size: 64, offset: 192)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2369, file: !31, line: 118, baseType: !199, size: 64, offset: 896)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2369, file: !31, line: 119, baseType: !139, size: 32, offset: 960)
!2420 = !DIDerivedType(tag: DW_TAG_member, scope: !2369, file: !31, line: 120, baseType: !2421, size: 128, offset: 1024)
!2421 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2369, file: !31, line: 120, size: 128, elements: !2422)
!2422 = !{!2423, !2429}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2421, file: !31, line: 121, baseType: !2424, size: 128)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2425, line: 6, size: 128, elements: !2426)
!2425 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2426 = !{!2427, !2428}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2424, file: !2425, line: 7, baseType: !451, size: 64)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2424, file: !2425, line: 8, baseType: !451, size: 64, offset: 64)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2421, file: !31, line: 122, baseType: !2430)
!2430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2424, elements: !1752)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2365, file: !751, line: 162, baseType: !199, size: 64, offset: 64)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !755, file: !751, line: 176, baseType: !395, size: 128, align: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, scope: !750, file: !751, line: 179, baseType: !2434, size: 32, offset: 384)
!2434 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !750, file: !751, line: 179, size: 32, elements: !2435)
!2435 = !{!2436, !2437, !2438, !2439}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2434, file: !751, line: 184, baseType: !776, size: 32)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2434, file: !751, line: 192, baseType: !7, size: 32)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2434, file: !751, line: 194, baseType: !7, size: 32)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2434, file: !751, line: 195, baseType: !139, size: 32)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !750, file: !751, line: 199, baseType: !776, size: 32, offset: 416)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !685, file: !44, line: 1964, baseType: !2442, size: 64, offset: 1344)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!340, !627, !2445}
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2447, line: 12, size: 256, elements: !2448)
!2447 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2448 = !{!2449, !2450, !2451, !2452, !2453}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2446, file: !2447, line: 13, baseType: !772, size: 32)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2446, file: !2447, line: 16, baseType: !139, size: 32, offset: 32)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2446, file: !2447, line: 23, baseType: !197, size: 64, offset: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2446, file: !2447, line: 30, baseType: !197, size: 64, offset: 128)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2446, file: !2447, line: 33, baseType: !2454, size: 64, offset: 192)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !751, line: 27, flags: DIFlagFwdDecl)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !685, file: !44, line: 1966, baseType: !2442, size: 64, offset: 1408)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !628, file: !44, line: 1424, baseType: !2458, size: 64, offset: 448)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2460)
!2460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2461)
!2461 = !{!2462, !2508, !2512, !2516, !2517, !2518, !2519, !2520, !2525, !2530, !2534}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2460, file: !38, line: 323, baseType: !2463, size: 64)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!139, !2466}
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2468)
!2468 = !{!2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2493, !2494, !2495}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2467, file: !38, line: 295, baseType: !667, size: 128)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2467, file: !38, line: 296, baseType: !253, size: 128, offset: 128)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2467, file: !38, line: 297, baseType: !253, size: 128, offset: 256)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2467, file: !38, line: 298, baseType: !253, size: 128, offset: 384)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2467, file: !38, line: 299, baseType: !1202, size: 192, offset: 512)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2467, file: !38, line: 300, baseType: !266, offset: 704)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2467, file: !38, line: 301, baseType: !776, size: 32, offset: 704)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2467, file: !38, line: 302, baseType: !627, size: 64, offset: 768)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2467, file: !38, line: 303, baseType: !2478, size: 64, offset: 832)
!2478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2479)
!2479 = !{!2480, !2492}
!2480 = !DIDerivedType(tag: DW_TAG_member, scope: !2478, file: !38, line: 69, baseType: !2481, size: 32)
!2481 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2478, file: !38, line: 69, size: 32, elements: !2482)
!2482 = !{!2483, !2484, !2485}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2481, file: !38, line: 70, baseType: !465, size: 32)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2481, file: !38, line: 71, baseType: !473, size: 32)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2481, file: !38, line: 72, baseType: !2486, size: 32)
!2486 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2487, line: 24, baseType: !2488)
!2487 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2487, line: 22, size: 32, elements: !2489)
!2489 = !{!2490}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2488, file: !2487, line: 23, baseType: !2491, size: 32)
!2491 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2487, line: 20, baseType: !471)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2478, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2467, file: !38, line: 304, baseType: !559, size: 64, offset: 896)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2467, file: !38, line: 305, baseType: !197, size: 64, offset: 960)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2467, file: !38, line: 306, baseType: !2496, size: 576, offset: 1024)
!2496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2497)
!2497 = !{!2498, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2496, file: !38, line: 206, baseType: !2499, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !561)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2496, file: !38, line: 207, baseType: !2499, size: 64, offset: 64)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2496, file: !38, line: 208, baseType: !2499, size: 64, offset: 128)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2496, file: !38, line: 209, baseType: !2499, size: 64, offset: 192)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2496, file: !38, line: 210, baseType: !2499, size: 64, offset: 256)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2496, file: !38, line: 211, baseType: !2499, size: 64, offset: 320)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2496, file: !38, line: 212, baseType: !2499, size: 64, offset: 384)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2496, file: !38, line: 213, baseType: !567, size: 64, offset: 448)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2496, file: !38, line: 214, baseType: !567, size: 64, offset: 512)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2460, file: !38, line: 324, baseType: !2509, size: 64, offset: 64)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{!2466, !627, !139}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2460, file: !38, line: 325, baseType: !2513, size: 64, offset: 128)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{null, !2466}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2460, file: !38, line: 326, baseType: !2463, size: 64, offset: 192)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2460, file: !38, line: 327, baseType: !2463, size: 64, offset: 256)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2460, file: !38, line: 328, baseType: !2463, size: 64, offset: 320)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2460, file: !38, line: 329, baseType: !713, size: 64, offset: 384)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2460, file: !38, line: 332, baseType: !2521, size: 64, offset: 448)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{!2524, !459}
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2460, file: !38, line: 333, baseType: !2526, size: 64, offset: 512)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!139, !459, !2529}
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2460, file: !38, line: 335, baseType: !2531, size: 64, offset: 576)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!139, !459, !2524}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2460, file: !38, line: 337, baseType: !2535, size: 64, offset: 640)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!139, !627, !2538}
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !628, file: !44, line: 1425, baseType: !2540, size: 64, offset: 512)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2542)
!2542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2543)
!2543 = !{!2544, !2548, !2549, !2553, !2554, !2555, !2570, !2593, !2597, !2598, !2621}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2542, file: !38, line: 429, baseType: !2545, size: 64)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!139, !627, !139, !139, !577}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2542, file: !38, line: 430, baseType: !713, size: 64, offset: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2542, file: !38, line: 431, baseType: !2550, size: 64, offset: 128)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!139, !627, !7}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2542, file: !38, line: 432, baseType: !2550, size: 64, offset: 192)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2542, file: !38, line: 433, baseType: !713, size: 64, offset: 256)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2542, file: !38, line: 434, baseType: !2556, size: 64, offset: 320)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!139, !627, !139, !2559}
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2561)
!2561 = !{!2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2560, file: !38, line: 416, baseType: !139, size: 32)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2560, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2560, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2560, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2560, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2560, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2560, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2560, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2542, file: !38, line: 435, baseType: !2571, size: 64, offset: 384)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!139, !627, !2478, !2574}
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2576)
!2576 = !{!2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2575, file: !38, line: 344, baseType: !139, size: 32)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2575, file: !38, line: 345, baseType: !451, size: 64, offset: 64)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2575, file: !38, line: 346, baseType: !451, size: 64, offset: 128)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2575, file: !38, line: 347, baseType: !451, size: 64, offset: 192)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2575, file: !38, line: 348, baseType: !451, size: 64, offset: 256)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2575, file: !38, line: 349, baseType: !451, size: 64, offset: 320)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2575, file: !38, line: 350, baseType: !451, size: 64, offset: 384)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2575, file: !38, line: 351, baseType: !806, size: 64, offset: 448)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2575, file: !38, line: 353, baseType: !806, size: 64, offset: 512)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2575, file: !38, line: 354, baseType: !139, size: 32, offset: 576)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2575, file: !38, line: 355, baseType: !139, size: 32, offset: 608)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2575, file: !38, line: 356, baseType: !451, size: 64, offset: 640)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2575, file: !38, line: 357, baseType: !451, size: 64, offset: 704)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2575, file: !38, line: 358, baseType: !451, size: 64, offset: 768)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2575, file: !38, line: 359, baseType: !806, size: 64, offset: 832)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2575, file: !38, line: 360, baseType: !139, size: 32, offset: 896)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2542, file: !38, line: 436, baseType: !2594, size: 64, offset: 448)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DISubroutineType(types: !2596)
!2596 = !{!139, !627, !2538, !2574}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2542, file: !38, line: 438, baseType: !2571, size: 64, offset: 512)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2542, file: !38, line: 439, baseType: !2599, size: 64, offset: 576)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{!139, !627, !2602}
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2604)
!2604 = !{!2605, !2606}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2603, file: !38, line: 410, baseType: !7, size: 32)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2603, file: !38, line: 411, baseType: !2607, size: 1344, offset: 64)
!2607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2608, size: 1344, elements: !211)
!2608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2609)
!2609 = !{!2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2620}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2608, file: !38, line: 396, baseType: !7, size: 32)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2608, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2608, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2608, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2608, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2608, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2608, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2608, file: !38, line: 404, baseType: !453, size: 64, offset: 256)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2608, file: !38, line: 405, baseType: !2619, size: 64, offset: 320)
!2619 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !217, line: 126, baseType: !451)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2608, file: !38, line: 406, baseType: !2619, size: 64, offset: 384)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2542, file: !38, line: 440, baseType: !2550, size: 64, offset: 640)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !628, file: !44, line: 1426, baseType: !2623, size: 64, offset: 576)
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2625)
!2625 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !628, file: !44, line: 1427, baseType: !197, size: 64, offset: 640)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !628, file: !44, line: 1428, baseType: !197, size: 64, offset: 704)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !628, file: !44, line: 1429, baseType: !197, size: 64, offset: 768)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !628, file: !44, line: 1430, baseType: !412, size: 64, offset: 832)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !628, file: !44, line: 1431, baseType: !796, size: 256, offset: 896)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !628, file: !44, line: 1432, baseType: !139, size: 32, offset: 1152)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !628, file: !44, line: 1433, baseType: !776, size: 32, offset: 1184)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !628, file: !44, line: 1437, baseType: !2634, size: 64, offset: 1216)
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2637)
!2637 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !628, file: !44, line: 1449, baseType: !2639, size: 64, offset: 1280)
!2639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !428, line: 34, size: 64, elements: !2640)
!2640 = !{!2641}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2639, file: !428, line: 35, baseType: !431, size: 64)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !628, file: !44, line: 1450, baseType: !253, size: 128, offset: 1344)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !628, file: !44, line: 1451, baseType: !2644, size: 64, offset: 1472)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !628, file: !44, line: 1452, baseType: !1952, size: 64, offset: 1536)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !628, file: !44, line: 1453, baseType: !2648, size: 64, offset: 1600)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !628, file: !44, line: 1454, baseType: !667, size: 128, offset: 1664)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !628, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !628, file: !44, line: 1456, baseType: !2653, size: 2432, offset: 1856)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2654)
!2654 = !{!2655, !2656, !2657, !2659, !2691}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2653, file: !38, line: 519, baseType: !7, size: 32)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2653, file: !38, line: 520, baseType: !796, size: 256, offset: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2653, file: !38, line: 521, baseType: !2658, size: 192, offset: 320)
!2658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !459, size: 192, elements: !211)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2653, file: !38, line: 522, baseType: !2660, size: 1728, offset: 512)
!2660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2661, size: 1728, elements: !211)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2662)
!2662 = !{!2663, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2661, file: !38, line: 223, baseType: !2664, size: 64)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2666)
!2666 = !{!2667, !2668, !2681, !2682}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2665, file: !38, line: 444, baseType: !139, size: 32)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2665, file: !38, line: 445, baseType: !2669, size: 64, offset: 64)
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2671)
!2671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2672)
!2672 = !{!2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2671, file: !38, line: 311, baseType: !713, size: 64)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2671, file: !38, line: 312, baseType: !713, size: 64, offset: 64)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2671, file: !38, line: 313, baseType: !713, size: 64, offset: 128)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2671, file: !38, line: 314, baseType: !713, size: 64, offset: 192)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2671, file: !38, line: 315, baseType: !2463, size: 64, offset: 256)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2671, file: !38, line: 316, baseType: !2463, size: 64, offset: 320)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2671, file: !38, line: 317, baseType: !2463, size: 64, offset: 384)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2671, file: !38, line: 318, baseType: !2535, size: 64, offset: 448)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2665, file: !38, line: 446, baseType: !179, size: 64, offset: 128)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2665, file: !38, line: 447, baseType: !2664, size: 64, offset: 192)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2661, file: !38, line: 224, baseType: !139, size: 32, offset: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2661, file: !38, line: 226, baseType: !253, size: 128, offset: 128)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2661, file: !38, line: 227, baseType: !197, size: 64, offset: 256)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2661, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2661, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2661, file: !38, line: 230, baseType: !2499, size: 64, offset: 384)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2661, file: !38, line: 231, baseType: !2499, size: 64, offset: 448)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2661, file: !38, line: 232, baseType: !199, size: 64, offset: 512)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2653, file: !38, line: 523, baseType: !2692, size: 192, offset: 2240)
!2692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2669, size: 192, elements: !211)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !628, file: !44, line: 1458, baseType: !2694, size: 2112, offset: 4288)
!2694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2695)
!2695 = !{!2696, !2697, !2698}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2694, file: !44, line: 1411, baseType: !139, size: 32)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2694, file: !44, line: 1412, baseType: !1510, size: 128, offset: 64)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2694, file: !44, line: 1413, baseType: !2699, size: 1920, offset: 192)
!2699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2700, size: 1920, elements: !211)
!2700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2701, line: 12, size: 640, elements: !2702)
!2701 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2702 = !{!2703, !2711, !2713, !2718, !2719}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2700, file: !2701, line: 13, baseType: !2704, size: 320)
!2704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2705, line: 17, size: 320, elements: !2706)
!2705 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2706 = !{!2707, !2708, !2709, !2710}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2704, file: !2705, line: 18, baseType: !139, size: 32)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2704, file: !2705, line: 19, baseType: !139, size: 32, offset: 32)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2704, file: !2705, line: 20, baseType: !1510, size: 128, offset: 64)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2704, file: !2705, line: 22, baseType: !395, size: 128, align: 64, offset: 192)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2700, file: !2701, line: 14, baseType: !2712, size: 64, offset: 320)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2700, file: !2701, line: 15, baseType: !2714, size: 64, offset: 384)
!2714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2715, line: 16, size: 64, elements: !2716)
!2715 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2716 = !{!2717}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2714, file: !2715, line: 17, baseType: !1245, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2700, file: !2701, line: 16, baseType: !1510, size: 128, offset: 448)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2700, file: !2701, line: 17, baseType: !776, size: 32, offset: 576)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !628, file: !44, line: 1465, baseType: !199, size: 64, offset: 6400)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !628, file: !44, line: 1468, baseType: !445, size: 32, offset: 6464)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !628, file: !44, line: 1470, baseType: !567, size: 64, offset: 6528)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !628, file: !44, line: 1471, baseType: !567, size: 64, offset: 6592)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !628, file: !44, line: 1473, baseType: !447, size: 32, offset: 6656)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !628, file: !44, line: 1474, baseType: !2726, size: 64, offset: 6720)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !628, file: !44, line: 1477, baseType: !2729, size: 256, offset: 6784)
!2729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 256, elements: !2259)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !628, file: !44, line: 1478, baseType: !2731, size: 128, offset: 7040)
!2731 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2732, line: 18, baseType: !2733)
!2732 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2733 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2732, line: 16, size: 128, elements: !2734)
!2734 = !{!2735}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2733, file: !2732, line: 17, baseType: !2736, size: 128)
!2736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1382, size: 128, elements: !1764)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !628, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !628, file: !44, line: 1481, baseType: !2739, size: 32, offset: 7200)
!2739 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !217, line: 150, baseType: !7)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !628, file: !44, line: 1487, baseType: !1202, size: 192, offset: 7232)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !628, file: !44, line: 1493, baseType: !177, size: 64, offset: 7424)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !628, file: !44, line: 1495, baseType: !2743, size: 64, offset: 7488)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2745)
!2745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !410, line: 135, size: 1024, align: 512, elements: !2746)
!2746 = !{!2747, !2751, !2752, !2759, !2765, !2769, !2773, !2777, !2778, !2782, !2786, !2791, !2795}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2745, file: !410, line: 136, baseType: !2748, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{!139, !412, !7}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2745, file: !410, line: 137, baseType: !2748, size: 64, offset: 64)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2745, file: !410, line: 138, baseType: !2753, size: 64, offset: 128)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{!139, !2756, !2758}
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !413)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2745, file: !410, line: 139, baseType: !2760, size: 64, offset: 192)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!139, !2756, !7, !177, !2763}
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !436)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2745, file: !410, line: 141, baseType: !2766, size: 64, offset: 256)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{!139, !2756}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2745, file: !410, line: 142, baseType: !2770, size: 64, offset: 320)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{!139, !412}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2745, file: !410, line: 143, baseType: !2774, size: 64, offset: 384)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{null, !412}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2745, file: !410, line: 144, baseType: !2774, size: 64, offset: 448)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2745, file: !410, line: 145, baseType: !2779, size: 64, offset: 512)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{null, !412, !459}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2745, file: !410, line: 146, baseType: !2783, size: 64, offset: 576)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{!307, !412, !307, !139}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2745, file: !410, line: 147, baseType: !2787, size: 64, offset: 640)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{!408, !2790}
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2745, file: !410, line: 148, baseType: !2792, size: 64, offset: 704)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!139, !577, !216}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2745, file: !410, line: 149, baseType: !2796, size: 64, offset: 768)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!412, !412, !2799}
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !460)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !628, file: !44, line: 1500, baseType: !139, size: 32, offset: 7552)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !628, file: !44, line: 1502, baseType: !2803, size: 448, offset: 7616)
!2803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2447, line: 60, size: 448, elements: !2804)
!2804 = !{!2805, !2810, !2811, !2812, !2813, !2814, !2815}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2803, file: !2447, line: 61, baseType: !2806, size: 64)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{!197, !2809, !2445}
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2803, file: !2447, line: 63, baseType: !2806, size: 64, offset: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2803, file: !2447, line: 66, baseType: !340, size: 64, offset: 128)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2803, file: !2447, line: 67, baseType: !139, size: 32, offset: 192)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2803, file: !2447, line: 68, baseType: !7, size: 32, offset: 224)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2803, file: !2447, line: 71, baseType: !253, size: 128, offset: 256)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2803, file: !2447, line: 77, baseType: !2816, size: 64, offset: 384)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !628, file: !44, line: 1505, baseType: !800, size: 64, offset: 8064)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !628, file: !44, line: 1508, baseType: !800, size: 64, offset: 8128)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !628, file: !44, line: 1511, baseType: !139, size: 32, offset: 8192)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !628, file: !44, line: 1514, baseType: !938, size: 32, offset: 8224)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !628, file: !44, line: 1517, baseType: !2822, size: 64, offset: 8256)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1987, line: 18, flags: DIFlagFwdDecl)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !628, file: !44, line: 1518, baseType: !663, size: 64, offset: 8320)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !628, file: !44, line: 1525, baseType: !1742, size: 64, offset: 8384)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !628, file: !44, line: 1532, baseType: !2827, size: 64, offset: 8448)
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2828, line: 52, size: 64, elements: !2829)
!2828 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2829 = !{!2830}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2827, file: !2828, line: 53, baseType: !2831, size: 64)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2828, line: 40, size: 256, elements: !2833)
!2833 = !{!2834, !2835, !2840}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2832, file: !2828, line: 42, baseType: !266)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2832, file: !2828, line: 44, baseType: !2836, size: 192)
!2836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2828, line: 28, size: 192, elements: !2837)
!2837 = !{!2838, !2839}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2836, file: !2828, line: 29, baseType: !253, size: 128)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2836, file: !2828, line: 31, baseType: !340, size: 64, offset: 128)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2832, file: !2828, line: 49, baseType: !340, size: 64, offset: 192)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !628, file: !44, line: 1533, baseType: !2827, size: 64, offset: 8512)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !628, file: !44, line: 1534, baseType: !395, size: 128, align: 64, offset: 8576)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !628, file: !44, line: 1535, baseType: !1986, size: 256, offset: 8704)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !628, file: !44, line: 1537, baseType: !1202, size: 192, offset: 8960)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !628, file: !44, line: 1542, baseType: !139, size: 32, offset: 9152)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !628, file: !44, line: 1545, baseType: !266, offset: 9184)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !628, file: !44, line: 1546, baseType: !253, size: 128, offset: 9216)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !628, file: !44, line: 1548, baseType: !266, offset: 9344)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !628, file: !44, line: 1549, baseType: !253, size: 128, offset: 9344)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !460, file: !44, line: 624, baseType: !762, size: 64, offset: 256)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !460, file: !44, line: 631, baseType: !197, size: 64, offset: 320)
!2852 = !DIDerivedType(tag: DW_TAG_member, scope: !460, file: !44, line: 639, baseType: !2853, size: 32, offset: 384)
!2853 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !460, file: !44, line: 639, size: 32, elements: !2854)
!2854 = !{!2855, !2857}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2853, file: !44, line: 640, baseType: !2856, size: 32)
!2856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2853, file: !44, line: 641, baseType: !7, size: 32)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !460, file: !44, line: 643, baseType: !541, size: 32, offset: 416)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !460, file: !44, line: 644, baseType: !559, size: 64, offset: 448)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !460, file: !44, line: 645, baseType: !563, size: 128, offset: 512)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !460, file: !44, line: 646, baseType: !563, size: 128, offset: 640)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !460, file: !44, line: 647, baseType: !563, size: 128, offset: 768)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !460, file: !44, line: 648, baseType: !266, offset: 896)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !460, file: !44, line: 649, baseType: !347, size: 16, offset: 896)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !460, file: !44, line: 650, baseType: !1381, size: 8, offset: 912)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !460, file: !44, line: 651, baseType: !1381, size: 8, offset: 920)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !460, file: !44, line: 652, baseType: !2619, size: 64, offset: 960)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !460, file: !44, line: 659, baseType: !197, size: 64, offset: 1024)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !460, file: !44, line: 660, baseType: !796, size: 256, offset: 1088)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !460, file: !44, line: 662, baseType: !197, size: 64, offset: 1344)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !460, file: !44, line: 663, baseType: !197, size: 64, offset: 1408)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !460, file: !44, line: 665, baseType: !667, size: 128, offset: 1472)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !460, file: !44, line: 666, baseType: !253, size: 128, offset: 1600)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !460, file: !44, line: 675, baseType: !253, size: 128, offset: 1728)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !460, file: !44, line: 676, baseType: !253, size: 128, offset: 1856)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !460, file: !44, line: 677, baseType: !253, size: 128, offset: 1984)
!2877 = !DIDerivedType(tag: DW_TAG_member, scope: !460, file: !44, line: 678, baseType: !2878, size: 128, offset: 2112)
!2878 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !460, file: !44, line: 678, size: 128, elements: !2879)
!2879 = !{!2880, !2881}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2878, file: !44, line: 679, baseType: !663, size: 64)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2878, file: !44, line: 680, baseType: !395, size: 128, align: 64)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !460, file: !44, line: 682, baseType: !802, size: 64, offset: 2240)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !460, file: !44, line: 683, baseType: !802, size: 64, offset: 2304)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !460, file: !44, line: 684, baseType: !776, size: 32, offset: 2368)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !460, file: !44, line: 685, baseType: !776, size: 32, offset: 2400)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !460, file: !44, line: 686, baseType: !776, size: 32, offset: 2432)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !460, file: !44, line: 688, baseType: !776, size: 32, offset: 2464)
!2888 = !DIDerivedType(tag: DW_TAG_member, scope: !460, file: !44, line: 690, baseType: !2889, size: 64, offset: 2496)
!2889 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !460, file: !44, line: 690, size: 64, elements: !2890)
!2890 = !{!2891, !3114}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2889, file: !44, line: 691, baseType: !2892, size: 64)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2894)
!2894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2895)
!2895 = !{!2896, !2897, !2901, !2906, !2910, !2911, !2912, !2916, !2929, !2930, !2938, !2942, !2943, !2947, !2948, !2952, !2957, !2958, !2962, !2966, !3074, !3078, !3079, !3083, !3084, !3088, !3092, !3097, !3101, !3105, !3109, !3113}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2894, file: !44, line: 1823, baseType: !179, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2894, file: !44, line: 1824, baseType: !2898, size: 64, offset: 64)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{!559, !382, !559, !139}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2894, file: !44, line: 1825, baseType: !2902, size: 64, offset: 128)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{!336, !382, !307, !352, !2905}
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2894, file: !44, line: 1826, baseType: !2907, size: 64, offset: 192)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!336, !382, !177, !352, !2905}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2894, file: !44, line: 1827, baseType: !873, size: 64, offset: 256)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2894, file: !44, line: 1828, baseType: !873, size: 64, offset: 320)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2894, file: !44, line: 1829, baseType: !2913, size: 64, offset: 384)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{!139, !876, !216}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2894, file: !44, line: 1830, baseType: !2917, size: 64, offset: 448)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!139, !382, !2920}
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2922)
!2922 = !{!2923, !2928}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2921, file: !44, line: 1777, baseType: !2924, size: 64)
!2924 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2925)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!139, !2920, !177, !139, !559, !451, !7}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2921, file: !44, line: 1778, baseType: !559, size: 64, offset: 64)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2894, file: !44, line: 1831, baseType: !2917, size: 64, offset: 512)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2894, file: !44, line: 1832, baseType: !2931, size: 64, offset: 576)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{!2934, !382, !2936}
!2934 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2935, line: 52, baseType: !7)
!2935 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !647, line: 27, flags: DIFlagFwdDecl)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2894, file: !44, line: 1833, baseType: !2939, size: 64, offset: 640)
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!340, !382, !7, !197}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2894, file: !44, line: 1834, baseType: !2939, size: 64, offset: 704)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2894, file: !44, line: 1835, baseType: !2944, size: 64, offset: 768)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{!139, !382, !1010}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2894, file: !44, line: 1836, baseType: !197, size: 64, offset: 832)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2894, file: !44, line: 1837, baseType: !2949, size: 64, offset: 896)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{!139, !459, !382}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2894, file: !44, line: 1838, baseType: !2953, size: 64, offset: 960)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DISubroutineType(types: !2955)
!2955 = !{!139, !382, !2956}
!2956 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !199)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2894, file: !44, line: 1839, baseType: !2949, size: 64, offset: 1024)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2894, file: !44, line: 1840, baseType: !2959, size: 64, offset: 1088)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{!139, !382, !559, !559, !139}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2894, file: !44, line: 1841, baseType: !2963, size: 64, offset: 1152)
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{!139, !139, !382, !139}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2894, file: !44, line: 1842, baseType: !2967, size: 64, offset: 1216)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!139, !382, !139, !2970}
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2972)
!2972 = !{!2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !3004, !3005, !3006, !3019, !3050}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2971, file: !44, line: 1063, baseType: !2970, size: 64)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2971, file: !44, line: 1064, baseType: !253, size: 128, offset: 64)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2971, file: !44, line: 1065, baseType: !667, size: 128, offset: 192)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2971, file: !44, line: 1066, baseType: !253, size: 128, offset: 320)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2971, file: !44, line: 1069, baseType: !253, size: 128, offset: 448)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2971, file: !44, line: 1072, baseType: !2956, size: 64, offset: 576)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2971, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2971, file: !44, line: 1074, baseType: !457, size: 8, offset: 672)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2971, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2971, file: !44, line: 1076, baseType: !139, size: 32, offset: 736)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2971, file: !44, line: 1077, baseType: !1510, size: 128, offset: 768)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2971, file: !44, line: 1078, baseType: !382, size: 64, offset: 896)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2971, file: !44, line: 1079, baseType: !559, size: 64, offset: 960)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2971, file: !44, line: 1080, baseType: !559, size: 64, offset: 1024)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2971, file: !44, line: 1082, baseType: !2988, size: 64, offset: 1088)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2990)
!2990 = !{!2991, !2999, !3000, !3001, !3002, !3003}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2989, file: !44, line: 1315, baseType: !2992)
!2992 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2993, line: 20, baseType: !2994)
!2993 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2994 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2993, line: 11, elements: !2995)
!2995 = !{!2996}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2994, file: !2993, line: 12, baseType: !2997)
!2997 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !278, line: 33, baseType: !2998)
!2998 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !278, line: 31, elements: !280)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2989, file: !44, line: 1316, baseType: !139, size: 32)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2989, file: !44, line: 1317, baseType: !139, size: 32, offset: 32)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2989, file: !44, line: 1318, baseType: !2988, size: 64, offset: 64)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2989, file: !44, line: 1319, baseType: !382, size: 64, offset: 128)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2989, file: !44, line: 1320, baseType: !395, size: 128, align: 64, offset: 192)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2971, file: !44, line: 1084, baseType: !197, size: 64, offset: 1152)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2971, file: !44, line: 1085, baseType: !197, size: 64, offset: 1216)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2971, file: !44, line: 1087, baseType: !3007, size: 64, offset: 1280)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3009)
!3009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !3010)
!3010 = !{!3011, !3015}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3009, file: !44, line: 1012, baseType: !3012, size: 64)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{null, !2970, !2970}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3009, file: !44, line: 1013, baseType: !3016, size: 64, offset: 64)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{null, !2970}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2971, file: !44, line: 1088, baseType: !3020, size: 64, offset: 1344)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3022)
!3022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !3023)
!3023 = !{!3024, !3028, !3032, !3033, !3037, !3041, !3045, !3049}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3022, file: !44, line: 1017, baseType: !3025, size: 64)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = !DISubroutineType(types: !3027)
!3027 = !{!2956, !2956}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3022, file: !44, line: 1018, baseType: !3029, size: 64, offset: 64)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{null, !2956}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3022, file: !44, line: 1019, baseType: !3016, size: 64, offset: 128)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3022, file: !44, line: 1020, baseType: !3034, size: 64, offset: 192)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!139, !2970, !139}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3022, file: !44, line: 1021, baseType: !3038, size: 64, offset: 256)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!216, !2970}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3022, file: !44, line: 1022, baseType: !3042, size: 64, offset: 320)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3043 = !DISubroutineType(types: !3044)
!3044 = !{!139, !2970, !139, !256}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3022, file: !44, line: 1023, baseType: !3046, size: 64, offset: 384)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{null, !2970, !850}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3022, file: !44, line: 1024, baseType: !3038, size: 64, offset: 448)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2971, file: !44, line: 1097, baseType: !3051, size: 256, offset: 1408)
!3051 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2971, file: !44, line: 1089, size: 256, elements: !3052)
!3052 = !{!3053, !3062, !3068}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3051, file: !44, line: 1090, baseType: !3054, size: 256)
!3054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3055, line: 10, size: 256, elements: !3056)
!3055 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3056 = !{!3057, !3058, !3061}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3054, file: !3055, line: 11, baseType: !445, size: 32)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3054, file: !3055, line: 12, baseType: !3059, size: 64, offset: 64)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3055, line: 5, flags: DIFlagFwdDecl)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3054, file: !3055, line: 13, baseType: !253, size: 128, offset: 128)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3051, file: !44, line: 1091, baseType: !3063, size: 64)
!3063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3055, line: 17, size: 64, elements: !3064)
!3064 = !{!3065}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3063, file: !3055, line: 18, baseType: !3066, size: 64)
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3067 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3055, line: 16, flags: DIFlagFwdDecl)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3051, file: !44, line: 1096, baseType: !3069, size: 192)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3051, file: !44, line: 1092, size: 192, elements: !3070)
!3070 = !{!3071, !3072, !3073}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3069, file: !44, line: 1093, baseType: !253, size: 128)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3069, file: !44, line: 1094, baseType: !139, size: 32, offset: 128)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3069, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2894, file: !44, line: 1843, baseType: !3075, size: 64, offset: 1280)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!336, !382, !749, !139, !352, !2905, !139}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2894, file: !44, line: 1844, baseType: !1130, size: 64, offset: 1344)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2894, file: !44, line: 1845, baseType: !3080, size: 64, offset: 1408)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{!139, !139}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2894, file: !44, line: 1846, baseType: !2967, size: 64, offset: 1472)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2894, file: !44, line: 1847, baseType: !3085, size: 64, offset: 1536)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!336, !2127, !382, !2905, !352, !7}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2894, file: !44, line: 1848, baseType: !3089, size: 64, offset: 1600)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!336, !382, !2905, !2127, !352, !7}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2894, file: !44, line: 1849, baseType: !3093, size: 64, offset: 1664)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!139, !382, !340, !3096, !850}
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2894, file: !44, line: 1850, baseType: !3098, size: 64, offset: 1728)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!340, !382, !139, !559, !559}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2894, file: !44, line: 1852, baseType: !3102, size: 64, offset: 1792)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{null, !739, !382}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2894, file: !44, line: 1856, baseType: !3106, size: 64, offset: 1856)
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3107, size: 64)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{!336, !382, !559, !382, !559, !352, !7}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2894, file: !44, line: 1858, baseType: !3110, size: 64, offset: 1920)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!559, !382, !559, !382, !559, !559, !7}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2894, file: !44, line: 1861, baseType: !2959, size: 64, offset: 1984)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2889, file: !44, line: 692, baseType: !692, size: 64)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !460, file: !44, line: 694, baseType: !3116, size: 64, offset: 2560)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3118)
!3118 = !{!3119, !3120, !3121, !3122}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3117, file: !44, line: 1101, baseType: !266)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3117, file: !44, line: 1102, baseType: !253, size: 128)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3117, file: !44, line: 1103, baseType: !253, size: 128, offset: 128)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3117, file: !44, line: 1104, baseType: !253, size: 128, offset: 256)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !460, file: !44, line: 695, baseType: !763, size: 1216, align: 64, offset: 2624)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !460, file: !44, line: 696, baseType: !253, size: 128, offset: 3840)
!3125 = !DIDerivedType(tag: DW_TAG_member, scope: !460, file: !44, line: 697, baseType: !3126, size: 64, offset: 3968)
!3126 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !460, file: !44, line: 697, size: 64, elements: !3127)
!3127 = !{!3128, !3129, !3130, !3133, !3134}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3126, file: !44, line: 698, baseType: !2127, size: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3126, file: !44, line: 699, baseType: !2644, size: 64)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3126, file: !44, line: 700, baseType: !3131, size: 64)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3126, file: !44, line: 701, baseType: !307, size: 64)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3126, file: !44, line: 702, baseType: !7, size: 32)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !460, file: !44, line: 705, baseType: !447, size: 32, offset: 4032)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !460, file: !44, line: 708, baseType: !447, size: 32, offset: 4064)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !460, file: !44, line: 709, baseType: !2726, size: 64, offset: 4096)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !460, file: !44, line: 720, baseType: !199, size: 64, offset: 4160)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !413, file: !410, line: 98, baseType: !3140, size: 256, offset: 448)
!3140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !457, size: 256, elements: !2259)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !413, file: !410, line: 101, baseType: !3142, size: 32, offset: 704)
!3142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3143, line: 25, size: 32, elements: !3144)
!3143 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3144 = !{!3145}
!3145 = !DIDerivedType(tag: DW_TAG_member, scope: !3142, file: !3143, line: 26, baseType: !3146, size: 32)
!3146 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3142, file: !3143, line: 26, size: 32, elements: !3147)
!3147 = !{!3148}
!3148 = !DIDerivedType(tag: DW_TAG_member, scope: !3146, file: !3143, line: 30, baseType: !3149, size: 32)
!3149 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3146, file: !3143, line: 30, size: 32, elements: !3150)
!3150 = !{!3151, !3152}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3149, file: !3143, line: 31, baseType: !266)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3149, file: !3143, line: 32, baseType: !139, size: 32)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !413, file: !410, line: 102, baseType: !2743, size: 64, offset: 768)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !413, file: !410, line: 103, baseType: !627, size: 64, offset: 832)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !413, file: !410, line: 104, baseType: !197, size: 64, offset: 896)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !413, file: !410, line: 105, baseType: !199, size: 64, offset: 960)
!3157 = !DIDerivedType(tag: DW_TAG_member, scope: !413, file: !410, line: 107, baseType: !3158, size: 128, offset: 1024)
!3158 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !413, file: !410, line: 107, size: 128, elements: !3159)
!3159 = !{!3160, !3161}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3158, file: !410, line: 108, baseType: !253, size: 128)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3158, file: !410, line: 109, baseType: !3162, size: 64)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !413, file: !410, line: 111, baseType: !253, size: 128, offset: 1152)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !413, file: !410, line: 112, baseType: !253, size: 128, offset: 1280)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !413, file: !410, line: 120, baseType: !3166, size: 128, offset: 1408)
!3166 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !413, file: !410, line: 116, size: 128, elements: !3167)
!3167 = !{!3168, !3169, !3170}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3166, file: !410, line: 117, baseType: !667, size: 128)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3166, file: !410, line: 118, baseType: !427, size: 128)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3166, file: !410, line: 119, baseType: !395, size: 128, align: 64)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !383, file: !44, line: 922, baseType: !459, size: 64, offset: 256)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !383, file: !44, line: 923, baseType: !2892, size: 64, offset: 320)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !383, file: !44, line: 929, baseType: !266, offset: 384)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !383, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !383, file: !44, line: 931, baseType: !800, size: 64, offset: 448)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !383, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !383, file: !44, line: 933, baseType: !2739, size: 32, offset: 544)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !383, file: !44, line: 934, baseType: !1202, size: 192, offset: 576)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !383, file: !44, line: 935, baseType: !559, size: 64, offset: 768)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !383, file: !44, line: 936, baseType: !3181, size: 192, offset: 832)
!3181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3182)
!3182 = !{!3183, !3184, !3185, !3186, !3187, !3188}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3181, file: !44, line: 886, baseType: !2992)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3181, file: !44, line: 887, baseType: !1500, size: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3181, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3181, file: !44, line: 889, baseType: !465, size: 32, offset: 96)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3181, file: !44, line: 889, baseType: !465, size: 32, offset: 128)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3181, file: !44, line: 890, baseType: !139, size: 32, offset: 160)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !383, file: !44, line: 937, baseType: !1576, size: 64, offset: 1024)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !383, file: !44, line: 938, baseType: !3191, size: 256, offset: 1088)
!3191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3192)
!3192 = !{!3193, !3194, !3195, !3196, !3197, !3198}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3191, file: !44, line: 897, baseType: !197, size: 64)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3191, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3191, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3191, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3191, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3191, file: !44, line: 904, baseType: !559, size: 64, offset: 192)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !383, file: !44, line: 940, baseType: !451, size: 64, offset: 1344)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !383, file: !44, line: 945, baseType: !199, size: 64, offset: 1408)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !383, file: !44, line: 949, baseType: !253, size: 128, offset: 1472)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !383, file: !44, line: 950, baseType: !253, size: 128, offset: 1600)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !383, file: !44, line: 952, baseType: !762, size: 64, offset: 1728)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !383, file: !44, line: 953, baseType: !938, size: 32, offset: 1792)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !383, file: !44, line: 954, baseType: !938, size: 32, offset: 1824)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !373, file: !330, line: 174, baseType: !379, size: 64, offset: 320)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !373, file: !330, line: 176, baseType: !3208, size: 64, offset: 384)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{!139, !382, !259, !372, !1010}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !361, file: !330, line: 90, baseType: !356, size: 64, offset: 192)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !361, file: !330, line: 91, baseType: !3213, size: 64, offset: 256)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !320, file: !249, line: 143, baseType: !3215, size: 64, offset: 256)
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{!3218, !259}
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3220)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3221)
!3221 = !{!3222, !3223, !3227, !3231, !3237, !3241}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3220, file: !61, line: 40, baseType: !60, size: 32)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3220, file: !61, line: 41, baseType: !3224, size: 64, offset: 64)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!216}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3220, file: !61, line: 42, baseType: !3228, size: 64, offset: 128)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{!199}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3220, file: !61, line: 43, baseType: !3232, size: 64, offset: 192)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!2156, !3235}
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3220, file: !61, line: 44, baseType: !3238, size: 64, offset: 256)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{!2156}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3220, file: !61, line: 45, baseType: !498, size: 64, offset: 320)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !320, file: !249, line: 144, baseType: !3243, size: 64, offset: 320)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = !DISubroutineType(types: !3245)
!3245 = !{!2156, !259}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !320, file: !249, line: 145, baseType: !3247, size: 64, offset: 384)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{null, !259, !3250, !3251}
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !248, file: !249, line: 70, baseType: !3253, size: 64, offset: 384)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !647, line: 123, size: 1024, elements: !3255)
!3255 = !{!3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3384, !3385, !3386, !3387, !3388}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3254, file: !647, line: 124, baseType: !776, size: 32)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3254, file: !647, line: 125, baseType: !776, size: 32, offset: 32)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3254, file: !647, line: 135, baseType: !3253, size: 64, offset: 64)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3254, file: !647, line: 136, baseType: !177, size: 64, offset: 128)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3254, file: !647, line: 138, baseType: !789, size: 192, align: 64, offset: 192)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3254, file: !647, line: 140, baseType: !2156, size: 64, offset: 384)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3254, file: !647, line: 141, baseType: !7, size: 32, offset: 448)
!3263 = !DIDerivedType(tag: DW_TAG_member, scope: !3254, file: !647, line: 142, baseType: !3264, size: 256, offset: 512)
!3264 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3254, file: !647, line: 142, size: 256, elements: !3265)
!3265 = !{!3266, !3312, !3316}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3264, file: !647, line: 143, baseType: !3267, size: 192)
!3267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !647, line: 91, size: 192, elements: !3268)
!3268 = !{!3269, !3270, !3271}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3267, file: !647, line: 92, baseType: !197, size: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3267, file: !647, line: 94, baseType: !785, size: 64, offset: 64)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3267, file: !647, line: 100, baseType: !3272, size: 64, offset: 128)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !647, line: 180, size: 704, elements: !3274)
!3274 = !{!3275, !3276, !3277, !3284, !3285, !3286, !3310, !3311}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3273, file: !647, line: 182, baseType: !3253, size: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3273, file: !647, line: 183, baseType: !7, size: 32, offset: 64)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3273, file: !647, line: 186, baseType: !3278, size: 192, offset: 128)
!3278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3279, line: 19, size: 192, elements: !3280)
!3279 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3280 = !{!3281, !3282, !3283}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3278, file: !3279, line: 20, baseType: !767, size: 128)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3278, file: !3279, line: 21, baseType: !7, size: 32, offset: 128)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3278, file: !3279, line: 22, baseType: !7, size: 32, offset: 160)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3273, file: !647, line: 187, baseType: !445, size: 32, offset: 320)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3273, file: !647, line: 188, baseType: !445, size: 32, offset: 352)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3273, file: !647, line: 189, baseType: !3287, size: 64, offset: 384)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !647, line: 168, size: 320, elements: !3289)
!3289 = !{!3290, !3294, !3298, !3302, !3306}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3288, file: !647, line: 169, baseType: !3291, size: 64)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{!139, !739, !3272}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3288, file: !647, line: 171, baseType: !3295, size: 64, offset: 64)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = !DISubroutineType(types: !3297)
!3297 = !{!139, !3253, !177, !346}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3288, file: !647, line: 173, baseType: !3299, size: 64, offset: 128)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = !DISubroutineType(types: !3301)
!3301 = !{!139, !3253}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3288, file: !647, line: 174, baseType: !3303, size: 64, offset: 192)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{!139, !3253, !3253, !177}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3288, file: !647, line: 176, baseType: !3307, size: 64, offset: 256)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{!139, !739, !3253, !3272}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3273, file: !647, line: 192, baseType: !253, size: 128, offset: 448)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3273, file: !647, line: 194, baseType: !1510, size: 128, offset: 576)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3264, file: !647, line: 144, baseType: !3313, size: 64)
!3313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !647, line: 103, size: 64, elements: !3314)
!3314 = !{!3315}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3313, file: !647, line: 104, baseType: !3253, size: 64)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3264, file: !647, line: 145, baseType: !3317, size: 256)
!3317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !647, line: 107, size: 256, elements: !3318)
!3318 = !{!3319, !3379, !3382, !3383}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3317, file: !647, line: 108, baseType: !3320, size: 64)
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3322)
!3322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !647, line: 217, size: 768, elements: !3323)
!3323 = !{!3324, !3344, !3348, !3352, !3356, !3360, !3364, !3368, !3369, !3370, !3371, !3375}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3322, file: !647, line: 222, baseType: !3325, size: 64)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = !DISubroutineType(types: !3327)
!3327 = !{!139, !3328}
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !647, line: 197, size: 1088, elements: !3330)
!3330 = !{!3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3329, file: !647, line: 199, baseType: !3253, size: 64)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3329, file: !647, line: 200, baseType: !382, size: 64, offset: 64)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3329, file: !647, line: 201, baseType: !739, size: 64, offset: 128)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3329, file: !647, line: 202, baseType: !199, size: 64, offset: 192)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3329, file: !647, line: 205, baseType: !1202, size: 192, offset: 256)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3329, file: !647, line: 206, baseType: !1202, size: 192, offset: 448)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3329, file: !647, line: 207, baseType: !139, size: 32, offset: 640)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3329, file: !647, line: 208, baseType: !253, size: 128, offset: 704)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3329, file: !647, line: 209, baseType: !307, size: 64, offset: 832)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3329, file: !647, line: 211, baseType: !352, size: 64, offset: 896)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3329, file: !647, line: 212, baseType: !216, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3329, file: !647, line: 213, baseType: !216, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3329, file: !647, line: 214, baseType: !1038, size: 64, offset: 1024)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3322, file: !647, line: 223, baseType: !3345, size: 64, offset: 64)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = !DISubroutineType(types: !3347)
!3347 = !{null, !3328}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3322, file: !647, line: 236, baseType: !3349, size: 64, offset: 128)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!139, !739, !199}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3322, file: !647, line: 238, baseType: !3353, size: 64, offset: 192)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DISubroutineType(types: !3355)
!3355 = !{!199, !739, !2905}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3322, file: !647, line: 239, baseType: !3357, size: 64, offset: 256)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{!199, !739, !199, !2905}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3322, file: !647, line: 240, baseType: !3361, size: 64, offset: 320)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{null, !739, !199}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3322, file: !647, line: 242, baseType: !3365, size: 64, offset: 384)
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3366 = !DISubroutineType(types: !3367)
!3367 = !{!336, !3328, !307, !352, !559}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3322, file: !647, line: 252, baseType: !352, size: 64, offset: 448)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3322, file: !647, line: 259, baseType: !216, size: 8, offset: 512)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3322, file: !647, line: 260, baseType: !3365, size: 64, offset: 576)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3322, file: !647, line: 263, baseType: !3372, size: 64, offset: 640)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!2934, !3328, !2936}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3322, file: !647, line: 266, baseType: !3376, size: 64, offset: 704)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{!139, !3328, !1010}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3317, file: !647, line: 109, baseType: !3380, size: 64, offset: 64)
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !647, line: 31, flags: DIFlagFwdDecl)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3317, file: !647, line: 110, baseType: !559, size: 64, offset: 128)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3317, file: !647, line: 111, baseType: !3253, size: 64, offset: 192)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3254, file: !647, line: 148, baseType: !199, size: 64, offset: 768)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3254, file: !647, line: 154, baseType: !451, size: 64, offset: 832)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3254, file: !647, line: 156, baseType: !347, size: 16, offset: 896)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3254, file: !647, line: 157, baseType: !346, size: 16, offset: 912)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3254, file: !647, line: 158, baseType: !3389, size: 64, offset: 960)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !647, line: 32, flags: DIFlagFwdDecl)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !248, file: !249, line: 71, baseType: !3392, size: 32, offset: 448)
!3392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3393, line: 19, size: 32, elements: !3394)
!3393 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3394 = !{!3395}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3392, file: !3393, line: 20, baseType: !1259, size: 32)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !248, file: !249, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !248, file: !249, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !248, file: !249, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !248, file: !249, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !248, file: !249, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !245, file: !73, line: 463, baseType: !244, size: 64, offset: 512)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !245, file: !73, line: 465, baseType: !3403, size: 64, offset: 576)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !245, file: !73, line: 467, baseType: !177, size: 64, offset: 640)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !245, file: !73, line: 468, baseType: !3407, size: 64, offset: 704)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3409)
!3409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3410)
!3410 = !{!3411, !3412, !3413, !3417, !3422, !3426}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3409, file: !73, line: 88, baseType: !177, size: 64)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3409, file: !73, line: 89, baseType: !358, size: 64, offset: 64)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3409, file: !73, line: 90, baseType: !3414, size: 64, offset: 128)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{!139, !244, !302}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3409, file: !73, line: 91, baseType: !3418, size: 64, offset: 192)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = !DISubroutineType(types: !3420)
!3420 = !{!307, !244, !3421, !3250, !3251}
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3409, file: !73, line: 93, baseType: !3423, size: 64, offset: 256)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{null, !244}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3409, file: !73, line: 95, baseType: !3427, size: 64, offset: 320)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3429)
!3429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3430)
!3430 = !{!3431, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3429, file: !80, line: 279, baseType: !3432, size: 64)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{!139, !244}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3429, file: !80, line: 280, baseType: !3423, size: 64, offset: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3429, file: !80, line: 281, baseType: !3432, size: 64, offset: 128)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3429, file: !80, line: 282, baseType: !3432, size: 64, offset: 192)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3429, file: !80, line: 283, baseType: !3432, size: 64, offset: 256)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3429, file: !80, line: 284, baseType: !3432, size: 64, offset: 320)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3429, file: !80, line: 285, baseType: !3432, size: 64, offset: 384)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3429, file: !80, line: 286, baseType: !3432, size: 64, offset: 448)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3429, file: !80, line: 287, baseType: !3432, size: 64, offset: 512)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3429, file: !80, line: 288, baseType: !3432, size: 64, offset: 576)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3429, file: !80, line: 289, baseType: !3432, size: 64, offset: 640)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3429, file: !80, line: 290, baseType: !3432, size: 64, offset: 704)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3429, file: !80, line: 291, baseType: !3432, size: 64, offset: 768)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3429, file: !80, line: 292, baseType: !3432, size: 64, offset: 832)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3429, file: !80, line: 293, baseType: !3432, size: 64, offset: 896)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3429, file: !80, line: 294, baseType: !3432, size: 64, offset: 960)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3429, file: !80, line: 295, baseType: !3432, size: 64, offset: 1024)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3429, file: !80, line: 296, baseType: !3432, size: 64, offset: 1088)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3429, file: !80, line: 297, baseType: !3432, size: 64, offset: 1152)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3429, file: !80, line: 298, baseType: !3432, size: 64, offset: 1216)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3429, file: !80, line: 299, baseType: !3432, size: 64, offset: 1280)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3429, file: !80, line: 300, baseType: !3432, size: 64, offset: 1344)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3429, file: !80, line: 301, baseType: !3432, size: 64, offset: 1408)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !245, file: !73, line: 470, baseType: !3458, size: 64, offset: 768)
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3460, line: 82, size: 1408, elements: !3461)
!3460 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3461 = !{!3462, !3463, !3464, !3465, !3466, !3467, !3468, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3543, !3546, !3547}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3459, file: !3460, line: 83, baseType: !177, size: 64)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3459, file: !3460, line: 84, baseType: !177, size: 64, offset: 64)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3459, file: !3460, line: 85, baseType: !244, size: 64, offset: 128)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3459, file: !3460, line: 86, baseType: !358, size: 64, offset: 192)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3459, file: !3460, line: 87, baseType: !358, size: 64, offset: 256)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3459, file: !3460, line: 88, baseType: !358, size: 64, offset: 320)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3459, file: !3460, line: 90, baseType: !3469, size: 64, offset: 384)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = !DISubroutineType(types: !3471)
!3471 = !{!139, !244, !3472}
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3474)
!3474 = !{!3475, !3476, !3477, !3478, !3479, !3480, !3481, !3494, !3507, !3508, !3509, !3510, !3511, !3519, !3520, !3521, !3522, !3523, !3524}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3473, file: !67, line: 96, baseType: !177, size: 64)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3473, file: !67, line: 97, baseType: !3458, size: 64, offset: 64)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3473, file: !67, line: 99, baseType: !179, size: 64, offset: 128)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3473, file: !67, line: 100, baseType: !177, size: 64, offset: 192)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3473, file: !67, line: 102, baseType: !216, size: 8, offset: 256)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3473, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3473, file: !67, line: 105, baseType: !3482, size: 64, offset: 320)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3484)
!3484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3485, line: 262, size: 1600, elements: !3486)
!3485 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3486 = !{!3487, !3488, !3489, !3493}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3484, file: !3485, line: 263, baseType: !2729, size: 256)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3484, file: !3485, line: 264, baseType: !2729, size: 256, offset: 256)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3484, file: !3485, line: 265, baseType: !3490, size: 1024, offset: 512)
!3490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 1024, elements: !3491)
!3491 = !{!3492}
!3492 = !DISubrange(count: 128)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3484, file: !3485, line: 266, baseType: !2156, size: 64, offset: 1536)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3473, file: !67, line: 106, baseType: !3495, size: 64, offset: 384)
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3497)
!3497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3485, line: 210, size: 256, elements: !3498)
!3498 = !{!3499, !3503, !3505, !3506}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3497, file: !3485, line: 211, baseType: !3500, size: 72)
!3500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1382, size: 72, elements: !3501)
!3501 = !{!3502}
!3502 = !DISubrange(count: 9)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3497, file: !3485, line: 212, baseType: !3504, size: 64, offset: 128)
!3504 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3485, line: 14, baseType: !197)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3497, file: !3485, line: 213, baseType: !447, size: 32, offset: 192)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3497, file: !3485, line: 214, baseType: !447, size: 32, offset: 224)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3473, file: !67, line: 108, baseType: !3432, size: 64, offset: 448)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3473, file: !67, line: 109, baseType: !3423, size: 64, offset: 512)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3473, file: !67, line: 110, baseType: !3432, size: 64, offset: 576)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3473, file: !67, line: 111, baseType: !3423, size: 64, offset: 640)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3473, file: !67, line: 112, baseType: !3512, size: 64, offset: 704)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{!139, !244, !3515}
!3515 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3516)
!3516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3517)
!3517 = !{!3518}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3516, file: !80, line: 51, baseType: !139, size: 32)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3473, file: !67, line: 113, baseType: !3432, size: 64, offset: 768)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3473, file: !67, line: 114, baseType: !358, size: 64, offset: 832)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3473, file: !67, line: 115, baseType: !358, size: 64, offset: 896)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3473, file: !67, line: 117, baseType: !3427, size: 64, offset: 960)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3473, file: !67, line: 118, baseType: !3423, size: 64, offset: 1024)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3473, file: !67, line: 120, baseType: !3525, size: 64, offset: 1088)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3459, file: !3460, line: 91, baseType: !3414, size: 64, offset: 448)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3459, file: !3460, line: 92, baseType: !3432, size: 64, offset: 512)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3459, file: !3460, line: 93, baseType: !3423, size: 64, offset: 576)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3459, file: !3460, line: 94, baseType: !3432, size: 64, offset: 640)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3459, file: !3460, line: 95, baseType: !3423, size: 64, offset: 704)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3459, file: !3460, line: 97, baseType: !3432, size: 64, offset: 768)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3459, file: !3460, line: 98, baseType: !3432, size: 64, offset: 832)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3459, file: !3460, line: 100, baseType: !3512, size: 64, offset: 896)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3459, file: !3460, line: 101, baseType: !3432, size: 64, offset: 960)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3459, file: !3460, line: 103, baseType: !3432, size: 64, offset: 1024)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3459, file: !3460, line: 105, baseType: !3432, size: 64, offset: 1088)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3459, file: !3460, line: 107, baseType: !3427, size: 64, offset: 1152)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3459, file: !3460, line: 109, baseType: !3540, size: 64, offset: 1216)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3542)
!3542 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3460, line: 109, flags: DIFlagFwdDecl)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3459, file: !3460, line: 111, baseType: !3544, size: 64, offset: 1280)
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3460, line: 111, flags: DIFlagFwdDecl)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3459, file: !3460, line: 112, baseType: !673, offset: 1344)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3459, file: !3460, line: 114, baseType: !216, size: 8, offset: 1344)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !245, file: !73, line: 471, baseType: !3472, size: 64, offset: 832)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !245, file: !73, line: 473, baseType: !199, size: 64, offset: 896)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !245, file: !73, line: 475, baseType: !199, size: 64, offset: 960)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !245, file: !73, line: 480, baseType: !1202, size: 192, offset: 1024)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !245, file: !73, line: 484, baseType: !3553, size: 576, offset: 1216)
!3553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3554)
!3554 = !{!3555, !3556, !3557, !3558, !3559, !3560}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3553, file: !73, line: 362, baseType: !253, size: 128)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3553, file: !73, line: 363, baseType: !253, size: 128, offset: 128)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3553, file: !73, line: 364, baseType: !253, size: 128, offset: 256)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3553, file: !73, line: 365, baseType: !253, size: 128, offset: 384)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3553, file: !73, line: 366, baseType: !216, size: 8, offset: 512)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3553, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !245, file: !73, line: 485, baseType: !3562, size: 2304, offset: 1792)
!3562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3563)
!3563 = !{!3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3659, !3663}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3562, file: !80, line: 566, baseType: !3515, size: 32)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3562, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3562, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3562, file: !80, line: 569, baseType: !216, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3562, file: !80, line: 570, baseType: !216, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3562, file: !80, line: 571, baseType: !216, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3562, file: !80, line: 572, baseType: !216, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3562, file: !80, line: 573, baseType: !216, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3562, file: !80, line: 574, baseType: !216, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3562, file: !80, line: 575, baseType: !216, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3562, file: !80, line: 576, baseType: !216, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3562, file: !80, line: 577, baseType: !445, size: 32, offset: 64)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3562, file: !80, line: 578, baseType: !266, offset: 96)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3562, file: !80, line: 580, baseType: !253, size: 128, offset: 128)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3562, file: !80, line: 581, baseType: !1531, size: 192, offset: 256)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3562, file: !80, line: 582, baseType: !3580, size: 64, offset: 448)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3582, line: 43, size: 1472, elements: !3583)
!3582 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3583 = !{!3584, !3585, !3586, !3587, !3588, !3591, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3581, file: !3582, line: 44, baseType: !177, size: 64)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3581, file: !3582, line: 45, baseType: !139, size: 32, offset: 64)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3581, file: !3582, line: 46, baseType: !253, size: 128, offset: 128)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3581, file: !3582, line: 47, baseType: !266, offset: 256)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3581, file: !3582, line: 48, baseType: !3589, size: 64, offset: 256)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3581, file: !3582, line: 49, baseType: !3592, size: 320, offset: 320)
!3592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3593, line: 11, size: 320, elements: !3594)
!3593 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3594 = !{!3595, !3596, !3597, !3602}
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3592, file: !3593, line: 16, baseType: !667, size: 128)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3592, file: !3593, line: 17, baseType: !197, size: 64, offset: 128)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3592, file: !3593, line: 18, baseType: !3598, size: 64, offset: 192)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = !DISubroutineType(types: !3600)
!3600 = !{null, !3601}
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3592, file: !3593, line: 19, baseType: !445, size: 32, offset: 256)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3581, file: !3582, line: 50, baseType: !197, size: 64, offset: 640)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3581, file: !3582, line: 51, baseType: !1329, size: 64, offset: 704)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3581, file: !3582, line: 52, baseType: !1329, size: 64, offset: 768)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3581, file: !3582, line: 53, baseType: !1329, size: 64, offset: 832)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3581, file: !3582, line: 54, baseType: !1329, size: 64, offset: 896)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3581, file: !3582, line: 55, baseType: !1329, size: 64, offset: 960)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3581, file: !3582, line: 56, baseType: !197, size: 64, offset: 1024)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3581, file: !3582, line: 57, baseType: !197, size: 64, offset: 1088)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3581, file: !3582, line: 58, baseType: !197, size: 64, offset: 1152)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3581, file: !3582, line: 59, baseType: !197, size: 64, offset: 1216)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3581, file: !3582, line: 60, baseType: !197, size: 64, offset: 1280)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3581, file: !3582, line: 61, baseType: !244, size: 64, offset: 1344)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3581, file: !3582, line: 62, baseType: !216, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3581, file: !3582, line: 63, baseType: !216, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3562, file: !80, line: 583, baseType: !216, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3562, file: !80, line: 584, baseType: !216, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3562, file: !80, line: 585, baseType: !216, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3562, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3562, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3562, file: !80, line: 592, baseType: !1321, size: 512, offset: 576)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3562, file: !80, line: 593, baseType: !451, size: 64, offset: 1088)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3562, file: !80, line: 594, baseType: !1986, size: 256, offset: 1152)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3562, file: !80, line: 595, baseType: !1510, size: 128, offset: 1408)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3562, file: !80, line: 596, baseType: !3589, size: 64, offset: 1536)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3562, file: !80, line: 597, baseType: !776, size: 32, offset: 1600)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3562, file: !80, line: 598, baseType: !776, size: 32, offset: 1632)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3562, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3562, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3562, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3562, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3562, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3562, file: !80, line: 604, baseType: !216, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3562, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3562, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3562, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3562, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3562, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3562, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3562, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3562, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3562, file: !80, line: 613, baseType: !139, size: 32, offset: 1792)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3562, file: !80, line: 614, baseType: !139, size: 32, offset: 1824)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3562, file: !80, line: 615, baseType: !451, size: 64, offset: 1856)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3562, file: !80, line: 616, baseType: !451, size: 64, offset: 1920)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3562, file: !80, line: 617, baseType: !451, size: 64, offset: 1984)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3562, file: !80, line: 618, baseType: !451, size: 64, offset: 2048)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3562, file: !80, line: 620, baseType: !3650, size: 64, offset: 2112)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3652)
!3652 = !{!3653, !3654, !3655, !3656}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3651, file: !80, line: 537, baseType: !266)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3651, file: !80, line: 538, baseType: !7, size: 32)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3651, file: !80, line: 540, baseType: !253, size: 128, offset: 64)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3651, file: !80, line: 543, baseType: !3657, size: 64, offset: 192)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3562, file: !80, line: 621, baseType: !3660, size: 64, offset: 2176)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{null, !244, !1473}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3562, file: !80, line: 622, baseType: !3664, size: 64, offset: 2240)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !245, file: !73, line: 486, baseType: !3667, size: 64, offset: 4096)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3669)
!3669 = !{!3670, !3671, !3672, !3676, !3677, !3678}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3668, file: !80, line: 643, baseType: !3429, size: 1472)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3668, file: !80, line: 644, baseType: !3432, size: 64, offset: 1472)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3668, file: !80, line: 645, baseType: !3673, size: 64, offset: 1536)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{null, !244, !216}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3668, file: !80, line: 646, baseType: !3432, size: 64, offset: 1600)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3668, file: !80, line: 647, baseType: !3423, size: 64, offset: 1664)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3668, file: !80, line: 648, baseType: !3423, size: 64, offset: 1728)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !245, file: !73, line: 493, baseType: !3680, size: 64, offset: 4160)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !73, line: 493, flags: DIFlagFwdDecl)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !245, file: !73, line: 499, baseType: !253, size: 128, offset: 4224)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !245, file: !73, line: 502, baseType: !3684, size: 64, offset: 4352)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3686)
!3686 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !245, file: !73, line: 504, baseType: !3688, size: 64, offset: 4416)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !245, file: !73, line: 505, baseType: !451, size: 64, offset: 4480)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !245, file: !73, line: 510, baseType: !451, size: 64, offset: 4544)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !245, file: !73, line: 511, baseType: !3692, size: 64, offset: 4608)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3694)
!3694 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !245, file: !73, line: 513, baseType: !3696, size: 64, offset: 4672)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3698)
!3698 = !{!3699, !3700}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3697, file: !73, line: 293, baseType: !7, size: 32)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3697, file: !73, line: 294, baseType: !197, size: 64, offset: 64)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !245, file: !73, line: 515, baseType: !253, size: 128, offset: 4736)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !245, file: !73, line: 526, baseType: !3703, offset: 4864)
!3703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3704, line: 5, elements: !280)
!3704 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !245, file: !73, line: 528, baseType: !3706, size: 64, offset: 4864)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3708, line: 14, flags: DIFlagFwdDecl)
!3708 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !245, file: !73, line: 529, baseType: !3710, size: 64, offset: 4928)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3712, line: 17, size: 192, elements: !3713)
!3712 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3713 = !{!3714, !3715, !3798}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3711, file: !3712, line: 18, baseType: !3710, size: 64)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3711, file: !3712, line: 19, baseType: !3716, size: 64, offset: 64)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3718)
!3718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3712, line: 110, size: 1152, elements: !3719)
!3719 = !{!3720, !3724, !3728, !3734, !3740, !3744, !3748, !3753, !3757, !3758, !3762, !3766, !3770, !3781, !3782, !3783, !3784, !3794}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3718, file: !3712, line: 111, baseType: !3721, size: 64)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{!3710, !3710}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3718, file: !3712, line: 112, baseType: !3725, size: 64, offset: 64)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{null, !3710}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3718, file: !3712, line: 113, baseType: !3729, size: 64, offset: 128)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!216, !3732}
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3711)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3718, file: !3712, line: 114, baseType: !3735, size: 64, offset: 192)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!2156, !3732, !3738}
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3718, file: !3712, line: 116, baseType: !3741, size: 64, offset: 256)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!216, !3732, !177}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3718, file: !3712, line: 118, baseType: !3745, size: 64, offset: 320)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{!139, !3732, !177, !7, !199, !352}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3718, file: !3712, line: 123, baseType: !3749, size: 64, offset: 384)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{!139, !3732, !177, !3752, !352}
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3718, file: !3712, line: 126, baseType: !3754, size: 64, offset: 448)
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = !DISubroutineType(types: !3756)
!3756 = !{!177, !3732}
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3718, file: !3712, line: 127, baseType: !3754, size: 64, offset: 512)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3718, file: !3712, line: 128, baseType: !3759, size: 64, offset: 576)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{!3710, !3732}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3718, file: !3712, line: 130, baseType: !3763, size: 64, offset: 640)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{!3710, !3732, !3710}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3718, file: !3712, line: 133, baseType: !3767, size: 64, offset: 704)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = !DISubroutineType(types: !3769)
!3769 = !{!3710, !3732, !177}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3718, file: !3712, line: 135, baseType: !3771, size: 64, offset: 768)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = !DISubroutineType(types: !3773)
!3773 = !{!139, !3732, !177, !177, !7, !7, !3774}
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3712, line: 43, size: 640, elements: !3776)
!3776 = !{!3777, !3778, !3779}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3775, file: !3712, line: 44, baseType: !3710, size: 64)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3775, file: !3712, line: 45, baseType: !7, size: 32, offset: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3775, file: !3712, line: 46, baseType: !3780, size: 512, offset: 128)
!3780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !451, size: 512, elements: !1359)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3718, file: !3712, line: 140, baseType: !3763, size: 64, offset: 832)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3718, file: !3712, line: 143, baseType: !3759, size: 64, offset: 896)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3718, file: !3712, line: 145, baseType: !3721, size: 64, offset: 960)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3718, file: !3712, line: 146, baseType: !3785, size: 64, offset: 1024)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!139, !3732, !3788}
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3712, line: 29, size: 128, elements: !3790)
!3790 = !{!3791, !3792, !3793}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3789, file: !3712, line: 30, baseType: !7, size: 32)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3789, file: !3712, line: 31, baseType: !7, size: 32, offset: 32)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3789, file: !3712, line: 32, baseType: !3732, size: 64, offset: 64)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3718, file: !3712, line: 148, baseType: !3795, size: 64, offset: 1088)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DISubroutineType(types: !3797)
!3797 = !{!139, !3732, !244}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3711, file: !3712, line: 20, baseType: !244, size: 64, offset: 128)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !245, file: !73, line: 534, baseType: !541, size: 32, offset: 4992)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !245, file: !73, line: 535, baseType: !445, size: 32, offset: 5024)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !245, file: !73, line: 537, baseType: !266, offset: 5056)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !245, file: !73, line: 538, baseType: !253, size: 128, offset: 5056)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !245, file: !73, line: 540, baseType: !3804, size: 64, offset: 5184)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3806, line: 54, size: 960, elements: !3807)
!3806 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3807 = !{!3808, !3809, !3810, !3811, !3812, !3813, !3814, !3818, !3822, !3823, !3824, !3825, !3829, !3833, !3834}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3805, file: !3806, line: 55, baseType: !177, size: 64)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3805, file: !3806, line: 56, baseType: !179, size: 64, offset: 64)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3805, file: !3806, line: 58, baseType: !358, size: 64, offset: 128)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3805, file: !3806, line: 59, baseType: !358, size: 64, offset: 192)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3805, file: !3806, line: 60, baseType: !259, size: 64, offset: 256)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3805, file: !3806, line: 62, baseType: !3414, size: 64, offset: 320)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3805, file: !3806, line: 63, baseType: !3815, size: 64, offset: 384)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DISubroutineType(types: !3817)
!3817 = !{!307, !244, !3421}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3805, file: !3806, line: 65, baseType: !3819, size: 64, offset: 448)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = !DISubroutineType(types: !3821)
!3821 = !{null, !3804}
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3805, file: !3806, line: 66, baseType: !3423, size: 64, offset: 512)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3805, file: !3806, line: 68, baseType: !3432, size: 64, offset: 576)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3805, file: !3806, line: 70, baseType: !3218, size: 64, offset: 640)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3805, file: !3806, line: 71, baseType: !3826, size: 64, offset: 704)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{!2156, !244}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3805, file: !3806, line: 73, baseType: !3830, size: 64, offset: 768)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{null, !244, !3250, !3251}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3805, file: !3806, line: 75, baseType: !3427, size: 64, offset: 832)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3805, file: !3806, line: 77, baseType: !3544, size: 64, offset: 896)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !245, file: !73, line: 541, baseType: !358, size: 64, offset: 5248)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !245, file: !73, line: 543, baseType: !3423, size: 64, offset: 5312)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !245, file: !73, line: 544, baseType: !3838, size: 64, offset: 5376)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !245, file: !73, line: 545, baseType: !3841, size: 64, offset: 5440)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !245, file: !73, line: 547, baseType: !216, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !245, file: !73, line: 548, baseType: !216, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !245, file: !73, line: 549, baseType: !216, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !245, file: !73, line: 550, baseType: !216, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "page_list", scope: !241, file: !128, line: 251, baseType: !3848, size: 64, offset: 64)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_buf_page", file: !128, line: 220, size: 128, elements: !3850)
!3850 = !{!3851, !3852}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "virt_addr", scope: !3849, file: !128, line: 221, baseType: !199, size: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3849, file: !128, line: 222, baseType: !949, size: 64, offset: 64)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "n_pages", scope: !241, file: !128, line: 252, baseType: !7, size: 32, offset: 128)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "dma_dir", scope: !241, file: !128, line: 253, baseType: !93, size: 32, offset: 160)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !241, file: !128, line: 254, baseType: !3392, size: 32, offset: 192)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "max_bufsize", scope: !235, file: !128, line: 351, baseType: !7, size: 32, offset: 192)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_count", scope: !235, file: !128, line: 352, baseType: !7, size: 32, offset: 224)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_alloc_count", scope: !235, file: !128, line: 353, baseType: !7, size: 32, offset: 256)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_count", scope: !235, file: !128, line: 354, baseType: !7, size: 32, offset: 288)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_alloc_count", scope: !235, file: !128, line: 355, baseType: !7, size: 32, offset: 320)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_ptr", scope: !235, file: !128, line: 356, baseType: !7, size: 32, offset: 352)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_ptr", scope: !235, file: !128, line: 357, baseType: !7, size: 32, offset: 384)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "cur_chan", scope: !235, file: !128, line: 358, baseType: !7, size: 32, offset: 416)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "scans_done", scope: !235, file: !128, line: 359, baseType: !7, size: 32, offset: 448)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "scan_progress", scope: !235, file: !128, line: 360, baseType: !7, size: 32, offset: 480)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "munge_chan", scope: !235, file: !128, line: 361, baseType: !7, size: 32, offset: 512)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "munge_count", scope: !235, file: !128, line: 362, baseType: !7, size: 32, offset: 544)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "munge_ptr", scope: !235, file: !128, line: 363, baseType: !7, size: 32, offset: 576)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !235, file: !128, line: 364, baseType: !7, size: 32, offset: 608)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !235, file: !128, line: 365, baseType: !3871, size: 640, offset: 640)
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
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist", scope: !3871, file: !101, line: 608, baseType: !2712, size: 64, offset: 384)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist_len", scope: !3871, file: !101, line: 609, baseType: !7, size: 32, offset: 448)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3871, file: !101, line: 611, baseType: !3888, size: 64, offset: 512)
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !3871, file: !101, line: 612, baseType: !7, size: 32, offset: 576)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "wait_head", scope: !235, file: !128, line: 366, baseType: !1510, size: 128, offset: 1280)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "cb_mask", scope: !235, file: !128, line: 367, baseType: !7, size: 32, offset: 1408)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "inttrig", scope: !235, file: !128, line: 368, baseType: !3893, size: 64, offset: 1472)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DISubroutineType(types: !3895)
!3895 = !{!139, !186, !223, !7}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !224, file: !128, line: 165, baseType: !199, size: 64, offset: 384)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !224, file: !128, line: 166, baseType: !199, size: 64, offset: 448)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "runflags", scope: !224, file: !128, line: 167, baseType: !7, size: 32, offset: 512)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "spin_lock", scope: !224, file: !128, line: 168, baseType: !266, offset: 544)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "io_bits", scope: !224, file: !128, line: 170, baseType: !7, size: 32, offset: 544)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata", scope: !224, file: !128, line: 172, baseType: !7, size: 32, offset: 576)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata_list", scope: !224, file: !128, line: 173, baseType: !3903, size: 64, offset: 640)
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "range_table", scope: !224, file: !128, line: 175, baseType: !3905, size: 64, offset: 704)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3907)
!3907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_lrange", file: !128, line: 635, size: 32, elements: !3908)
!3908 = !{!3909, !3910}
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3907, file: !128, line: 636, baseType: !139, size: 32)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3907, file: !128, line: 637, baseType: !3911, offset: 32)
!3911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3912, elements: !2360)
!3912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_krange", file: !101, line: 685, size: 96, elements: !3913)
!3913 = !{!3914, !3915, !3916}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !3912, file: !101, line: 686, baseType: !139, size: 32)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3912, file: !101, line: 687, baseType: !139, size: 32, offset: 32)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3912, file: !101, line: 688, baseType: !7, size: 32, offset: 64)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "range_table_list", scope: !224, file: !128, line: 176, baseType: !3918, size: 64, offset: 768)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3905)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist", scope: !224, file: !128, line: 178, baseType: !2712, size: 64, offset: 832)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "insn_read", scope: !224, file: !128, line: 180, baseType: !220, size: 64, offset: 896)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "insn_write", scope: !224, file: !128, line: 182, baseType: !220, size: 64, offset: 960)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "insn_bits", scope: !224, file: !128, line: 184, baseType: !220, size: 64, offset: 1024)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "insn_config", scope: !224, file: !128, line: 186, baseType: !220, size: 64, offset: 1088)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "do_cmd", scope: !224, file: !128, line: 191, baseType: !3926, size: 64, offset: 1152)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = !DISubroutineType(types: !3928)
!3928 = !{!139, !186, !223}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "do_cmdtest", scope: !224, file: !128, line: 192, baseType: !3930, size: 64, offset: 1216)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = !DISubroutineType(types: !3932)
!3932 = !{!139, !186, !223, !3933}
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !224, file: !128, line: 195, baseType: !3926, size: 64, offset: 1280)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "cancel", scope: !224, file: !128, line: 196, baseType: !3926, size: 64, offset: 1344)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "buf_change", scope: !224, file: !128, line: 199, baseType: !3926, size: 64, offset: 1408)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "munge", scope: !224, file: !128, line: 202, baseType: !3938, size: 64, offset: 1472)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = !DISubroutineType(types: !3940)
!3940 = !{null, !186, !223, !199, !7, !7}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "async_dma_dir", scope: !224, file: !128, line: 205, baseType: !93, size: 32, offset: 1536)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !224, file: !128, line: 207, baseType: !7, size: 32, offset: 1568)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !224, file: !128, line: 209, baseType: !244, size: 64, offset: 1600)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !224, file: !128, line: 210, baseType: !139, size: 32, offset: 1664)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "readback", scope: !224, file: !128, line: 212, baseType: !2712, size: 64, offset: 1728)
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3947, size: 64)
!3947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_insn", file: !101, line: 491, size: 320, elements: !3948)
!3948 = !{!3949, !3950, !3951, !3952, !3953, !3954}
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3947, file: !101, line: 492, baseType: !7, size: 32)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !3947, file: !101, line: 493, baseType: !7, size: 32, offset: 32)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3947, file: !101, line: 494, baseType: !2712, size: 64, offset: 64)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "subdev", scope: !3947, file: !101, line: 495, baseType: !7, size: 32, offset: 128)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "chanspec", scope: !3947, file: !101, line: 496, baseType: !7, size: 32, offset: 160)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !3947, file: !101, line: 497, baseType: !210, size: 96, offset: 192)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !187, file: !128, line: 545, baseType: !199, size: 64, offset: 192)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !187, file: !128, line: 547, baseType: !244, size: 64, offset: 256)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !187, file: !128, line: 548, baseType: !139, size: 32, offset: 320)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "detach_count", scope: !187, file: !128, line: 549, baseType: !7, size: 32, offset: 352)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "hw_dev", scope: !187, file: !128, line: 550, baseType: !244, size: 64, offset: 384)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !187, file: !128, line: 552, baseType: !177, size: 64, offset: 448)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "board_ptr", scope: !187, file: !128, line: 553, baseType: !2156, size: 64, offset: 512)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "attached", scope: !187, file: !128, line: 554, baseType: !7, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "ioenabled", scope: !187, file: !128, line: 555, baseType: !7, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "spinlock", scope: !187, file: !128, line: 556, baseType: !266, offset: 584)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !187, file: !128, line: 557, baseType: !1202, size: 192, offset: 640)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "attach_lock", scope: !187, file: !128, line: 558, baseType: !796, size: 256, offset: 832)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !187, file: !128, line: 559, baseType: !3392, size: 32, offset: 1088)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "n_subdevices", scope: !187, file: !128, line: 561, baseType: !139, size: 32, offset: 1120)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "subdevices", scope: !187, file: !128, line: 562, baseType: !223, size: 64, offset: 1152)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "mmio", scope: !187, file: !128, line: 565, baseType: !199, size: 64, offset: 1216)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "iobase", scope: !187, file: !128, line: 566, baseType: !197, size: 64, offset: 1280)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "iolen", scope: !187, file: !128, line: 567, baseType: !197, size: 64, offset: 1344)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !187, file: !128, line: 568, baseType: !7, size: 32, offset: 1408)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "read_subdev", scope: !187, file: !128, line: 570, baseType: !223, size: 64, offset: 1472)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "write_subdev", scope: !187, file: !128, line: 571, baseType: !223, size: 64, offset: 1536)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "async_queue", scope: !187, file: !128, line: 573, baseType: !2988, size: 64, offset: 1600)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !187, file: !128, line: 575, baseType: !3978, size: 64, offset: 1664)
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{!139, !186}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !187, file: !128, line: 576, baseType: !3982, size: 64, offset: 1728)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DISubroutineType(types: !3984)
!3984 = !{null, !186}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "insn_device_config", scope: !187, file: !128, line: 577, baseType: !3986, size: 64, offset: 1792)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = !DISubroutineType(types: !3988)
!3988 = !{!139, !186, !3946, !2712}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "get_valid_routes", scope: !187, file: !128, line: 579, baseType: !3990, size: 64, offset: 1856)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{!7, !186, !7, !2712}
!3993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3994, size: 64)
!3994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_devconfig", file: !101, line: 834, size: 1184, elements: !3995)
!3995 = !{!3996, !3998}
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !3994, file: !101, line: 835, baseType: !3997, size: 160)
!3997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 160, elements: !2230)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !3994, file: !101, line: 836, baseType: !3999, size: 1024, offset: 160)
!3999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 1024, elements: !2259)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !172, file: !128, line: 444, baseType: !3982, size: 64, offset: 256)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "auto_attach", scope: !172, file: !128, line: 445, baseType: !4002, size: 64, offset: 320)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = !DISubroutineType(types: !4004)
!4004 = !{!139, !186, !197}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "num_names", scope: !172, file: !128, line: 446, baseType: !7, size: 32, offset: 384)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !172, file: !128, line: 447, baseType: !4007, size: 64, offset: 448)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !172, file: !128, line: 448, baseType: !139, size: 32, offset: 512)
!4010 = !DIGlobalVariableExpression(var: !4011, expr: !DIExpression())
!4011 = distinct !DIGlobalVariable(name: "boardtypes", scope: !2, file: !3, line: 140, type: !4012, isLocal: true, isDefinition: true)
!4012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4013, size: 960, elements: !4021)
!4013 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4014)
!4014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "boardtype", file: !3, line: 132, size: 192, elements: !4015)
!4015 = !{!4016, !4017, !4018, !4019, !4020}
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4014, file: !3, line: 133, baseType: !177, size: 64)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "ai_range", scope: !4014, file: !3, line: 134, baseType: !3905, size: 64, offset: 64)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "is_pci1711", scope: !4014, file: !3, line: 135, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "is_pci1713", scope: !4014, file: !3, line: 136, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "has_ao", scope: !4014, file: !3, line: 137, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!4021 = !{!4022}
!4022 = !DISubrange(count: 5)
!4023 = !DIGlobalVariableExpression(var: !4024, expr: !DIExpression())
!4024 = distinct !DIGlobalVariable(name: "pci1710_ai_range", scope: !2, file: !3, line: 75, type: !3906, isLocal: true, isDefinition: true)
!4025 = !DIGlobalVariableExpression(var: !4026, expr: !DIExpression())
!4026 = distinct !DIGlobalVariable(name: "pci1710hg_ai_range", scope: !2, file: !3, line: 89, type: !3906, isLocal: true, isDefinition: true)
!4027 = !DIGlobalVariableExpression(var: !4028, expr: !DIExpression())
!4028 = distinct !DIGlobalVariable(name: "pci1711_ai_range", scope: !2, file: !3, line: 106, type: !3906, isLocal: true, isDefinition: true)
!4029 = !DIGlobalVariableExpression(var: !4030, expr: !DIExpression())
!4030 = distinct !DIGlobalVariable(name: "pci171x_ao_range", scope: !2, file: !3, line: 116, type: !3906, isLocal: true, isDefinition: true)
!4031 = !DIGlobalVariableExpression(var: !4032, expr: !DIExpression())
!4032 = distinct !DIGlobalVariable(name: "adv_pci1710_pci_driver", scope: !2, file: !3, line: 953, type: !4033, isLocal: true, isDefinition: true)
!4033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !4034, line: 858, size: 2048, elements: !4035)
!4034 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!4035 = !{!4036, !4037, !4038, !4050, !4270, !4274, !4278, !4282, !4283, !4287, !4305, !4306, !4307}
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4033, file: !4034, line: 859, baseType: !253, size: 128)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4033, file: !4034, line: 860, baseType: !177, size: 64, offset: 128)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4033, file: !4034, line: 861, baseType: !4039, size: 64, offset: 192)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4041)
!4041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3485, line: 38, size: 256, elements: !4042)
!4042 = !{!4043, !4044, !4045, !4046, !4047, !4048, !4049}
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4041, file: !3485, line: 39, baseType: !447, size: 32)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4041, file: !3485, line: 39, baseType: !447, size: 32, offset: 32)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4041, file: !3485, line: 40, baseType: !447, size: 32, offset: 64)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4041, file: !3485, line: 40, baseType: !447, size: 32, offset: 96)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4041, file: !3485, line: 41, baseType: !447, size: 32, offset: 128)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4041, file: !3485, line: 41, baseType: !447, size: 32, offset: 160)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4041, file: !3485, line: 42, baseType: !3504, size: 64, offset: 192)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4033, file: !4034, line: 862, baseType: !4051, size: 64, offset: 256)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = !DISubroutineType(types: !4053)
!4053 = !{!139, !4054, !4039}
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !4034, line: 309, size: 19264, elements: !4056)
!4056 = !{!4057, !4058, !4133, !4134, !4135, !4136, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4164, !4166, !4167, !4168, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4192, !4193, !4194, !4195, !4197, !4198, !4199, !4200, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4243, !4244, !4246, !4247, !4248, !4249, !4251, !4252, !4253, !4256, !4263, !4264, !4265, !4266, !4267, !4268, !4269}
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !4055, file: !4034, line: 310, baseType: !253, size: 128)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4055, file: !4034, line: 311, baseType: !4059, size: 64, offset: 128)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !4034, line: 605, size: 8064, elements: !4061)
!4061 = !{!4062, !4063, !4064, !4065, !4066, !4067, !4068, !4083, !4084, !4085, !4109, !4112, !4113, !4117, !4118, !4119, !4120, !4121, !4125, !4126, !4128, !4129, !4130, !4131, !4132}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4060, file: !4034, line: 606, baseType: !253, size: 128)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4060, file: !4034, line: 607, baseType: !4059, size: 64, offset: 128)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4060, file: !4034, line: 608, baseType: !253, size: 128, offset: 192)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4060, file: !4034, line: 609, baseType: !253, size: 128, offset: 320)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4060, file: !4034, line: 610, baseType: !4054, size: 64, offset: 448)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !4060, file: !4034, line: 611, baseType: !253, size: 128, offset: 512)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4060, file: !4034, line: 613, baseType: !4069, size: 256, offset: 640)
!4069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4070, size: 256, elements: !1184)
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4071, size: 64)
!4071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4072, line: 20, size: 512, elements: !4073)
!4072 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!4073 = !{!4074, !4076, !4077, !4078, !4079, !4080, !4081, !4082}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4071, file: !4072, line: 21, baseType: !4075, size: 64)
!4075 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !217, line: 158, baseType: !2154)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4071, file: !4072, line: 22, baseType: !4075, size: 64, offset: 64)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4071, file: !4072, line: 23, baseType: !177, size: 64, offset: 128)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4071, file: !4072, line: 24, baseType: !197, size: 64, offset: 192)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4071, file: !4072, line: 25, baseType: !197, size: 64, offset: 256)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4071, file: !4072, line: 26, baseType: !4070, size: 64, offset: 320)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4071, file: !4072, line: 26, baseType: !4070, size: 64, offset: 384)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4071, file: !4072, line: 26, baseType: !4070, size: 64, offset: 448)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4060, file: !4034, line: 614, baseType: !253, size: 128, offset: 896)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !4060, file: !4034, line: 615, baseType: !4071, size: 512, offset: 1024)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4060, file: !4034, line: 617, baseType: !4086, size: 64, offset: 1536)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !4034, line: 731, size: 320, elements: !4088)
!4088 = !{!4089, !4093, !4097, !4101, !4105}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !4087, file: !4034, line: 732, baseType: !4090, size: 64)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = !DISubroutineType(types: !4092)
!4092 = !{!139, !4059}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !4087, file: !4034, line: 733, baseType: !4094, size: 64, offset: 64)
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = !DISubroutineType(types: !4096)
!4096 = !{null, !4059}
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !4087, file: !4034, line: 734, baseType: !4098, size: 64, offset: 128)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{!199, !4059, !7, !139}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4087, file: !4034, line: 735, baseType: !4102, size: 64, offset: 192)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{!139, !4059, !7, !139, !139, !1444}
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4087, file: !4034, line: 736, baseType: !4106, size: 64, offset: 256)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = !DISubroutineType(types: !4108)
!4108 = !{!139, !4059, !7, !139, !139, !445}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4060, file: !4034, line: 618, baseType: !4110, size: 64, offset: 1600)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !4034, line: 537, flags: DIFlagFwdDecl)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4060, file: !4034, line: 619, baseType: !199, size: 64, offset: 1664)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !4060, file: !4034, line: 620, baseType: !4114, size: 64, offset: 1728)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4116, line: 123, flags: DIFlagFwdDecl)
!4116 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4060, file: !4034, line: 622, baseType: !457, size: 8, offset: 1792)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4060, file: !4034, line: 623, baseType: !457, size: 8, offset: 1800)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !4060, file: !4034, line: 624, baseType: !457, size: 8, offset: 1808)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !4060, file: !4034, line: 625, baseType: !457, size: 8, offset: 1816)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4060, file: !4034, line: 630, baseType: !4122, size: 384, offset: 1824)
!4122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 384, elements: !4123)
!4123 = !{!4124}
!4124 = !DISubrange(count: 48)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !4060, file: !4034, line: 632, baseType: !347, size: 16, offset: 2208)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !4060, file: !4034, line: 633, baseType: !4127, size: 16, offset: 2224)
!4127 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !4034, line: 237, baseType: !347)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !4060, file: !4034, line: 634, baseType: !244, size: 64, offset: 2240)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4060, file: !4034, line: 635, baseType: !245, size: 5568, offset: 2304)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !4060, file: !4034, line: 636, baseType: !372, size: 64, offset: 7872)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !4060, file: !4034, line: 637, baseType: !372, size: 64, offset: 7936)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !4060, file: !4034, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !4055, file: !4034, line: 312, baseType: !4059, size: 64, offset: 192)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4055, file: !4034, line: 314, baseType: !199, size: 64, offset: 256)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !4055, file: !4034, line: 315, baseType: !4114, size: 64, offset: 320)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4055, file: !4034, line: 316, baseType: !4137, size: 64, offset: 384)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !4034, line: 69, size: 832, elements: !4139)
!4139 = !{!4140, !4141, !4142, !4145, !4146}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4138, file: !4034, line: 70, baseType: !4059, size: 64)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4138, file: !4034, line: 71, baseType: !253, size: 128, offset: 64)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4138, file: !4034, line: 72, baseType: !4143, size: 64, offset: 192)
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4144, size: 64)
!4144 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !4034, line: 72, flags: DIFlagFwdDecl)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4138, file: !4034, line: 73, baseType: !457, size: 8, offset: 256)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4138, file: !4034, line: 74, baseType: !248, size: 512, offset: 320)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !4055, file: !4034, line: 318, baseType: !7, size: 32, offset: 448)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4055, file: !4034, line: 319, baseType: !347, size: 16, offset: 480)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4055, file: !4034, line: 320, baseType: !347, size: 16, offset: 496)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4055, file: !4034, line: 321, baseType: !347, size: 16, offset: 512)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4055, file: !4034, line: 322, baseType: !347, size: 16, offset: 528)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4055, file: !4034, line: 323, baseType: !7, size: 32, offset: 544)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4055, file: !4034, line: 324, baseType: !1381, size: 8, offset: 576)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4055, file: !4034, line: 325, baseType: !1381, size: 8, offset: 584)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !4055, file: !4034, line: 330, baseType: !1381, size: 8, offset: 592)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !4055, file: !4034, line: 331, baseType: !1381, size: 8, offset: 600)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !4055, file: !4034, line: 332, baseType: !1381, size: 8, offset: 608)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !4055, file: !4034, line: 333, baseType: !1381, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !4055, file: !4034, line: 334, baseType: !1381, size: 8, offset: 624)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4055, file: !4034, line: 335, baseType: !1381, size: 8, offset: 632)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !4055, file: !4034, line: 336, baseType: !888, size: 16, offset: 640)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !4055, file: !4034, line: 337, baseType: !4163, size: 64, offset: 704)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4055, file: !4034, line: 339, baseType: !4165, size: 64, offset: 768)
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4055, file: !4034, line: 340, baseType: !451, size: 64, offset: 832)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4055, file: !4034, line: 346, baseType: !3697, size: 128, offset: 896)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !4055, file: !4034, line: 348, baseType: !4169, size: 32, offset: 1024)
!4169 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !4034, line: 155, baseType: !139)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !4055, file: !4034, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !4055, file: !4034, line: 352, baseType: !1381, size: 8, offset: 1064)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !4055, file: !4034, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !4055, file: !4034, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !4055, file: !4034, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !4055, file: !4034, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !4055, file: !4034, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !4055, file: !4034, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !4055, file: !4034, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !4055, file: !4034, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !4055, file: !4034, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !4055, file: !4034, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !4055, file: !4034, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !4055, file: !4034, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !4055, file: !4034, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !4055, file: !4034, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !4055, file: !4034, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !4055, file: !4034, line: 376, baseType: !7, size: 32, offset: 1120)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !4055, file: !4034, line: 377, baseType: !7, size: 32, offset: 1152)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !4055, file: !4034, line: 380, baseType: !4190, size: 64, offset: 1216)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !4034, line: 303, flags: DIFlagFwdDecl)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !4055, file: !4034, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !4055, file: !4034, line: 383, baseType: !139, size: 32, offset: 1312)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !4055, file: !4034, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !4055, file: !4034, line: 387, baseType: !4196, size: 32, offset: 1376)
!4196 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !4034, line: 180, baseType: !7)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4055, file: !4034, line: 388, baseType: !245, size: 5568, offset: 1408)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !4055, file: !4034, line: 390, baseType: !139, size: 32, offset: 6976)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4055, file: !4034, line: 396, baseType: !7, size: 32, offset: 7008)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4055, file: !4034, line: 397, baseType: !4201, size: 8704, offset: 7040)
!4201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4071, size: 8704, elements: !4202)
!4202 = !{!4203}
!4203 = !DISubrange(count: 17)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4055, file: !4034, line: 399, baseType: !216, size: 8, offset: 15744)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !4055, file: !4034, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !4055, file: !4034, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !4055, file: !4034, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !4055, file: !4034, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !4055, file: !4034, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !4055, file: !4034, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !4055, file: !4034, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !4055, file: !4034, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !4055, file: !4034, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !4055, file: !4034, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !4055, file: !4034, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !4055, file: !4034, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !4055, file: !4034, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !4055, file: !4034, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !4055, file: !4034, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !4055, file: !4034, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !4055, file: !4034, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !4055, file: !4034, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !4055, file: !4034, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !4055, file: !4034, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !4055, file: !4034, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !4055, file: !4034, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !4055, file: !4034, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !4055, file: !4034, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !4055, file: !4034, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !4055, file: !4034, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !4055, file: !4034, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !4055, file: !4034, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !4055, file: !4034, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !4055, file: !4034, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !4055, file: !4034, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !4055, file: !4034, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !4055, file: !4034, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !4055, file: !4034, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !4055, file: !4034, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !4055, file: !4034, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !4055, file: !4034, line: 450, baseType: !4242, size: 16, offset: 15792)
!4242 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !4034, line: 206, baseType: !347)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !4055, file: !4034, line: 451, baseType: !776, size: 32, offset: 15808)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !4055, file: !4034, line: 453, baseType: !4245, size: 512, offset: 15840)
!4245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 512, elements: !1764)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !4055, file: !4034, line: 454, baseType: !663, size: 64, offset: 16384)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !4055, file: !4034, line: 455, baseType: !372, size: 64, offset: 16448)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !4055, file: !4034, line: 456, baseType: !139, size: 32, offset: 16512)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !4055, file: !4034, line: 457, baseType: !4250, size: 1088, offset: 16576)
!4250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 1088, elements: !4202)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !4055, file: !4034, line: 458, baseType: !4250, size: 1088, offset: 17664)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !4055, file: !4034, line: 469, baseType: !358, size: 64, offset: 18752)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !4055, file: !4034, line: 471, baseType: !4254, size: 64, offset: 18816)
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !4034, line: 304, flags: DIFlagFwdDecl)
!4256 = !DIDerivedType(tag: DW_TAG_member, scope: !4055, file: !4034, line: 478, baseType: !4257, size: 64, offset: 18880)
!4257 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4055, file: !4034, line: 478, size: 64, elements: !4258)
!4258 = !{!4259, !4262}
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4257, file: !4034, line: 479, baseType: !4260, size: 64)
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !4034, line: 305, flags: DIFlagFwdDecl)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4257, file: !4034, line: 480, baseType: !4054, size: 64)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !4055, file: !4034, line: 482, baseType: !888, size: 16, offset: 18944)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !4055, file: !4034, line: 483, baseType: !1381, size: 8, offset: 18960)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !4055, file: !4034, line: 497, baseType: !888, size: 16, offset: 18976)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !4055, file: !4034, line: 498, baseType: !2154, size: 64, offset: 19008)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !4055, file: !4034, line: 499, baseType: !352, size: 64, offset: 19072)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !4055, file: !4034, line: 500, baseType: !307, size: 64, offset: 19136)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !4055, file: !4034, line: 502, baseType: !197, size: 64, offset: 19200)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4033, file: !4034, line: 863, baseType: !4271, size: 64, offset: 320)
!4271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4272, size: 64)
!4272 = !DISubroutineType(types: !4273)
!4273 = !{null, !4054}
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4033, file: !4034, line: 864, baseType: !4275, size: 64, offset: 384)
!4275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4276, size: 64)
!4276 = !DISubroutineType(types: !4277)
!4277 = !{!139, !4054, !3515}
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4033, file: !4034, line: 865, baseType: !4279, size: 64, offset: 448)
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4280, size: 64)
!4280 = !DISubroutineType(types: !4281)
!4281 = !{!139, !4054}
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4033, file: !4034, line: 866, baseType: !4271, size: 64, offset: 512)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4033, file: !4034, line: 867, baseType: !4284, size: 64, offset: 576)
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = !DISubroutineType(types: !4286)
!4286 = !{!139, !4054, !139}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4033, file: !4034, line: 868, baseType: !4288, size: 64, offset: 640)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4290)
!4290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !4034, line: 795, size: 384, elements: !4291)
!4291 = !{!4292, !4297, !4301, !4302, !4303, !4304}
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4290, file: !4034, line: 797, baseType: !4293, size: 64)
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4294, size: 64)
!4294 = !DISubroutineType(types: !4295)
!4295 = !{!4296, !4054, !4196}
!4296 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !4034, line: 772, baseType: !7)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4290, file: !4034, line: 801, baseType: !4298, size: 64, offset: 64)
!4298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4299, size: 64)
!4299 = !DISubroutineType(types: !4300)
!4300 = !{!4296, !4054}
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4290, file: !4034, line: 804, baseType: !4298, size: 64, offset: 128)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4290, file: !4034, line: 807, baseType: !4271, size: 64, offset: 192)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4290, file: !4034, line: 808, baseType: !4271, size: 64, offset: 256)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4290, file: !4034, line: 811, baseType: !4271, size: 64, offset: 320)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4033, file: !4034, line: 869, baseType: !358, size: 64, offset: 704)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4033, file: !4034, line: 870, baseType: !3473, size: 1152, offset: 768)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4033, file: !4034, line: 871, baseType: !4308, size: 128, offset: 1920)
!4308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !4034, line: 759, size: 128, elements: !4309)
!4309 = !{!4310, !4311}
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4308, file: !4034, line: 760, baseType: !266)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4308, file: !4034, line: 761, baseType: !253, size: 128)
!4312 = !DIGlobalVariableExpression(var: !4313, expr: !DIExpression())
!4313 = distinct !DIGlobalVariable(name: "adv_pci1710_pci_table", scope: !2, file: !3, line: 894, type: !4314, isLocal: true, isDefinition: true)
!4314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4040, size: 4352, elements: !4202)
!4315 = !{i32 7, !"Dwarf Version", i32 4}
!4316 = !{i32 2, !"Debug Info Version", i32 3}
!4317 = !{i32 1, !"wchar_size", i32 2}
!4318 = !{i32 1, !"Code Model", i32 2}
!4319 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4320 = distinct !DISubprogram(name: "adv_pci1710_driver_init", scope: !3, file: !3, line: 959, type: !4321, scopeLine: 959, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!4321 = !DISubroutineType(types: !138)
!4322 = !DILocation(line: 959, column: 1, scope: !4320)
!4323 = distinct !DISubprogram(name: "adv_pci1710_driver_exit", scope: !3, file: !3, line: 959, type: !146, scopeLine: 959, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!4324 = !DILocation(line: 959, column: 1, scope: !4323)
!4325 = distinct !DISubprogram(name: "pci1710_auto_attach", scope: !3, file: !3, line: 745, type: !4003, scopeLine: 747, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!4326 = !DILocalVariable(name: "dev", arg: 1, scope: !4325, file: !3, line: 745, type: !186)
!4327 = !DILocation(line: 745, column: 54, scope: !4325)
!4328 = !DILocalVariable(name: "context", arg: 2, scope: !4325, file: !3, line: 746, type: !197)
!4329 = !DILocation(line: 746, column: 25, scope: !4325)
!4330 = !DILocalVariable(name: "pcidev", scope: !4325, file: !3, line: 748, type: !4054)
!4331 = !DILocation(line: 748, column: 18, scope: !4325)
!4332 = !DILocation(line: 748, column: 45, scope: !4325)
!4333 = !DILocation(line: 748, column: 27, scope: !4325)
!4334 = !DILocalVariable(name: "board", scope: !4325, file: !3, line: 749, type: !4335)
!4335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4336 = !DILocation(line: 749, column: 26, scope: !4325)
!4337 = !DILocalVariable(name: "devpriv", scope: !4325, file: !3, line: 750, type: !4338)
!4338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4339, size: 64)
!4339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci1710_private", file: !3, line: 169, size: 1216, elements: !4340)
!4340 = !{!4341, !4342, !4343, !4344, !4345, !4346, !4348, !4349, !4350}
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "max_samples", scope: !4339, file: !3, line: 170, baseType: !7, size: 32)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !4339, file: !3, line: 171, baseType: !7, size: 32, offset: 32)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl_ext", scope: !4339, file: !3, line: 172, baseType: !7, size: 32, offset: 64)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "mux_scan", scope: !4339, file: !3, line: 173, baseType: !7, size: 32, offset: 96)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "ai_et", scope: !4339, file: !3, line: 174, baseType: !457, size: 8, offset: 128)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "act_chanlist", scope: !4339, file: !3, line: 175, baseType: !4347, size: 1024, offset: 160)
!4347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 1024, elements: !2259)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "saved_seglen", scope: !4339, file: !3, line: 176, baseType: !457, size: 8, offset: 1184)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "da_ranges", scope: !4339, file: !3, line: 177, baseType: !457, size: 8, offset: 1192)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "unipolar_gain", scope: !4339, file: !3, line: 178, baseType: !457, size: 8, offset: 1200)
!4351 = !DILocation(line: 750, column: 26, scope: !4325)
!4352 = !DILocalVariable(name: "s", scope: !4325, file: !3, line: 751, type: !223)
!4353 = !DILocation(line: 751, column: 27, scope: !4325)
!4354 = !DILocalVariable(name: "ret", scope: !4325, file: !3, line: 752, type: !139)
!4355 = !DILocation(line: 752, column: 6, scope: !4325)
!4356 = !DILocalVariable(name: "subdev", scope: !4325, file: !3, line: 752, type: !139)
!4357 = !DILocation(line: 752, column: 11, scope: !4325)
!4358 = !DILocalVariable(name: "n_subdevices", scope: !4325, file: !3, line: 752, type: !139)
!4359 = !DILocation(line: 752, column: 19, scope: !4325)
!4360 = !DILocalVariable(name: "i", scope: !4325, file: !3, line: 753, type: !139)
!4361 = !DILocation(line: 753, column: 6, scope: !4325)
!4362 = !DILocation(line: 755, column: 6, scope: !4363)
!4363 = distinct !DILexicalBlock(scope: !4325, file: !3, line: 755, column: 6)
!4364 = !DILocation(line: 755, column: 14, scope: !4363)
!4365 = !DILocation(line: 755, column: 6, scope: !4325)
!4366 = !DILocation(line: 756, column: 23, scope: !4363)
!4367 = !DILocation(line: 756, column: 12, scope: !4363)
!4368 = !DILocation(line: 756, column: 9, scope: !4363)
!4369 = !DILocation(line: 756, column: 3, scope: !4363)
!4370 = !DILocation(line: 757, column: 7, scope: !4371)
!4371 = distinct !DILexicalBlock(scope: !4325, file: !3, line: 757, column: 6)
!4372 = !DILocation(line: 757, column: 6, scope: !4325)
!4373 = !DILocation(line: 758, column: 3, scope: !4371)
!4374 = !DILocation(line: 759, column: 19, scope: !4325)
!4375 = !DILocation(line: 759, column: 2, scope: !4325)
!4376 = !DILocation(line: 759, column: 7, scope: !4325)
!4377 = !DILocation(line: 759, column: 17, scope: !4325)
!4378 = !DILocation(line: 760, column: 20, scope: !4325)
!4379 = !DILocation(line: 760, column: 27, scope: !4325)
!4380 = !DILocation(line: 760, column: 2, scope: !4325)
!4381 = !DILocation(line: 760, column: 7, scope: !4325)
!4382 = !DILocation(line: 760, column: 18, scope: !4325)
!4383 = !DILocation(line: 762, column: 33, scope: !4325)
!4384 = !DILocation(line: 762, column: 12, scope: !4325)
!4385 = !DILocation(line: 762, column: 10, scope: !4325)
!4386 = !DILocation(line: 763, column: 7, scope: !4387)
!4387 = distinct !DILexicalBlock(scope: !4325, file: !3, line: 763, column: 6)
!4388 = !DILocation(line: 763, column: 6, scope: !4325)
!4389 = !DILocation(line: 764, column: 3, scope: !4387)
!4390 = !DILocation(line: 766, column: 26, scope: !4325)
!4391 = !DILocation(line: 766, column: 8, scope: !4325)
!4392 = !DILocation(line: 766, column: 6, scope: !4325)
!4393 = !DILocation(line: 767, column: 6, scope: !4394)
!4394 = distinct !DILexicalBlock(scope: !4325, file: !3, line: 767, column: 6)
!4395 = !DILocation(line: 767, column: 6, scope: !4325)
!4396 = !DILocation(line: 768, column: 10, scope: !4394)
!4397 = !DILocation(line: 768, column: 3, scope: !4394)
!4398 = !DILocation(line: 769, column: 16, scope: !4325)
!4399 = !DILocation(line: 769, column: 2, scope: !4325)
!4400 = !DILocation(line: 769, column: 7, scope: !4325)
!4401 = !DILocation(line: 769, column: 14, scope: !4325)
!4402 = !DILocation(line: 771, column: 32, scope: !4325)
!4403 = !DILocation(line: 771, column: 37, scope: !4325)
!4404 = !DILocation(line: 771, column: 44, scope: !4325)
!4405 = !DILocation(line: 771, column: 15, scope: !4325)
!4406 = !DILocation(line: 771, column: 2, scope: !4325)
!4407 = !DILocation(line: 771, column: 7, scope: !4325)
!4408 = !DILocation(line: 771, column: 13, scope: !4325)
!4409 = !DILocation(line: 773, column: 7, scope: !4410)
!4410 = distinct !DILexicalBlock(scope: !4325, file: !3, line: 773, column: 6)
!4411 = !DILocation(line: 773, column: 12, scope: !4410)
!4412 = !DILocation(line: 773, column: 6, scope: !4325)
!4413 = !DILocation(line: 774, column: 3, scope: !4410)
!4414 = !DILocation(line: 776, column: 15, scope: !4325)
!4415 = !DILocation(line: 777, column: 6, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !4325, file: !3, line: 777, column: 6)
!4417 = !DILocation(line: 777, column: 13, scope: !4416)
!4418 = !DILocation(line: 777, column: 6, scope: !4325)
!4419 = !DILocation(line: 778, column: 15, scope: !4416)
!4420 = !DILocation(line: 778, column: 3, scope: !4416)
!4421 = !DILocation(line: 779, column: 7, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4325, file: !3, line: 779, column: 6)
!4423 = !DILocation(line: 779, column: 14, scope: !4422)
!4424 = !DILocation(line: 779, column: 6, scope: !4325)
!4425 = !DILocation(line: 784, column: 16, scope: !4426)
!4426 = distinct !DILexicalBlock(scope: !4422, file: !3, line: 779, column: 26)
!4427 = !DILocation(line: 785, column: 2, scope: !4426)
!4428 = !DILocation(line: 787, column: 32, scope: !4325)
!4429 = !DILocation(line: 787, column: 37, scope: !4325)
!4430 = !DILocation(line: 787, column: 8, scope: !4325)
!4431 = !DILocation(line: 787, column: 6, scope: !4325)
!4432 = !DILocation(line: 788, column: 6, scope: !4433)
!4433 = distinct !DILexicalBlock(scope: !4325, file: !3, line: 788, column: 6)
!4434 = !DILocation(line: 788, column: 6, scope: !4325)
!4435 = !DILocation(line: 789, column: 10, scope: !4433)
!4436 = !DILocation(line: 789, column: 3, scope: !4433)
!4437 = !DILocation(line: 791, column: 16, scope: !4325)
!4438 = !DILocation(line: 791, column: 2, scope: !4325)
!4439 = !DILocation(line: 793, column: 6, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4325, file: !3, line: 793, column: 6)
!4441 = !DILocation(line: 793, column: 14, scope: !4440)
!4442 = !DILocation(line: 793, column: 6, scope: !4325)
!4443 = !DILocation(line: 794, column: 21, scope: !4444)
!4444 = distinct !DILexicalBlock(scope: !4440, file: !3, line: 793, column: 19)
!4445 = !DILocation(line: 794, column: 29, scope: !4444)
!4446 = !DILocation(line: 795, column: 20, scope: !4444)
!4447 = !DILocation(line: 795, column: 25, scope: !4444)
!4448 = !DILocation(line: 795, column: 37, scope: !4444)
!4449 = !DILocation(line: 794, column: 9, scope: !4444)
!4450 = !DILocation(line: 794, column: 7, scope: !4444)
!4451 = !DILocation(line: 796, column: 7, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !4444, file: !3, line: 796, column: 7)
!4453 = !DILocation(line: 796, column: 11, scope: !4452)
!4454 = !DILocation(line: 796, column: 7, scope: !4444)
!4455 = !DILocation(line: 797, column: 15, scope: !4452)
!4456 = !DILocation(line: 797, column: 23, scope: !4452)
!4457 = !DILocation(line: 797, column: 4, scope: !4452)
!4458 = !DILocation(line: 797, column: 9, scope: !4452)
!4459 = !DILocation(line: 797, column: 13, scope: !4452)
!4460 = !DILocation(line: 798, column: 2, scope: !4444)
!4461 = !DILocation(line: 800, column: 9, scope: !4325)
!4462 = !DILocation(line: 803, column: 7, scope: !4325)
!4463 = !DILocation(line: 803, column: 12, scope: !4325)
!4464 = !DILocation(line: 803, column: 29, scope: !4325)
!4465 = !DILocation(line: 803, column: 4, scope: !4325)
!4466 = !DILocation(line: 804, column: 2, scope: !4325)
!4467 = !DILocation(line: 804, column: 5, scope: !4325)
!4468 = !DILocation(line: 804, column: 11, scope: !4325)
!4469 = !DILocation(line: 805, column: 2, scope: !4325)
!4470 = !DILocation(line: 805, column: 5, scope: !4325)
!4471 = !DILocation(line: 805, column: 18, scope: !4325)
!4472 = !DILocation(line: 806, column: 7, scope: !4473)
!4473 = distinct !DILexicalBlock(scope: !4325, file: !3, line: 806, column: 6)
!4474 = !DILocation(line: 806, column: 14, scope: !4473)
!4475 = !DILocation(line: 806, column: 6, scope: !4325)
!4476 = !DILocation(line: 807, column: 3, scope: !4473)
!4477 = !DILocation(line: 807, column: 6, scope: !4473)
!4478 = !DILocation(line: 807, column: 19, scope: !4473)
!4479 = !DILocation(line: 808, column: 14, scope: !4325)
!4480 = !DILocation(line: 808, column: 21, scope: !4325)
!4481 = !DILocation(line: 808, column: 2, scope: !4325)
!4482 = !DILocation(line: 808, column: 5, scope: !4325)
!4483 = !DILocation(line: 808, column: 12, scope: !4325)
!4484 = !DILocation(line: 809, column: 2, scope: !4325)
!4485 = !DILocation(line: 809, column: 5, scope: !4325)
!4486 = !DILocation(line: 809, column: 13, scope: !4325)
!4487 = !DILocation(line: 810, column: 19, scope: !4325)
!4488 = !DILocation(line: 810, column: 26, scope: !4325)
!4489 = !DILocation(line: 810, column: 2, scope: !4325)
!4490 = !DILocation(line: 810, column: 5, scope: !4325)
!4491 = !DILocation(line: 810, column: 17, scope: !4325)
!4492 = !DILocation(line: 811, column: 2, scope: !4325)
!4493 = !DILocation(line: 811, column: 5, scope: !4325)
!4494 = !DILocation(line: 811, column: 15, scope: !4325)
!4495 = !DILocation(line: 812, column: 6, scope: !4496)
!4496 = distinct !DILexicalBlock(scope: !4325, file: !3, line: 812, column: 6)
!4497 = !DILocation(line: 812, column: 11, scope: !4496)
!4498 = !DILocation(line: 812, column: 6, scope: !4325)
!4499 = !DILocation(line: 813, column: 22, scope: !4500)
!4500 = distinct !DILexicalBlock(scope: !4496, file: !3, line: 812, column: 16)
!4501 = !DILocation(line: 813, column: 3, scope: !4500)
!4502 = !DILocation(line: 813, column: 8, scope: !4500)
!4503 = !DILocation(line: 813, column: 20, scope: !4500)
!4504 = !DILocation(line: 814, column: 3, scope: !4500)
!4505 = !DILocation(line: 814, column: 6, scope: !4500)
!4506 = !DILocation(line: 814, column: 19, scope: !4500)
!4507 = !DILocation(line: 815, column: 21, scope: !4500)
!4508 = !DILocation(line: 815, column: 24, scope: !4500)
!4509 = !DILocation(line: 815, column: 3, scope: !4500)
!4510 = !DILocation(line: 815, column: 6, scope: !4500)
!4511 = !DILocation(line: 815, column: 19, scope: !4500)
!4512 = !DILocation(line: 816, column: 3, scope: !4500)
!4513 = !DILocation(line: 816, column: 6, scope: !4500)
!4514 = !DILocation(line: 816, column: 17, scope: !4500)
!4515 = !DILocation(line: 817, column: 3, scope: !4500)
!4516 = !DILocation(line: 817, column: 6, scope: !4500)
!4517 = !DILocation(line: 817, column: 13, scope: !4500)
!4518 = !DILocation(line: 818, column: 3, scope: !4500)
!4519 = !DILocation(line: 818, column: 6, scope: !4500)
!4520 = !DILocation(line: 818, column: 13, scope: !4500)
!4521 = !DILocation(line: 819, column: 2, scope: !4500)
!4522 = !DILocation(line: 822, column: 9, scope: !4523)
!4523 = distinct !DILexicalBlock(scope: !4325, file: !3, line: 822, column: 2)
!4524 = !DILocation(line: 822, column: 7, scope: !4523)
!4525 = !DILocation(line: 822, column: 14, scope: !4526)
!4526 = distinct !DILexicalBlock(scope: !4523, file: !3, line: 822, column: 2)
!4527 = !DILocation(line: 822, column: 18, scope: !4526)
!4528 = !DILocation(line: 822, column: 21, scope: !4526)
!4529 = !DILocation(line: 822, column: 34, scope: !4526)
!4530 = !DILocation(line: 822, column: 16, scope: !4526)
!4531 = !DILocation(line: 822, column: 2, scope: !4523)
!4532 = !DILocation(line: 823, column: 32, scope: !4533)
!4533 = distinct !DILexicalBlock(scope: !4534, file: !3, line: 823, column: 7)
!4534 = distinct !DILexicalBlock(scope: !4526, file: !3, line: 822, column: 47)
!4535 = !DILocation(line: 823, column: 35, scope: !4533)
!4536 = !DILocation(line: 823, column: 7, scope: !4533)
!4537 = !DILocation(line: 823, column: 7, scope: !4534)
!4538 = !DILocation(line: 824, column: 29, scope: !4539)
!4539 = distinct !DILexicalBlock(scope: !4533, file: !3, line: 823, column: 39)
!4540 = !DILocation(line: 824, column: 4, scope: !4539)
!4541 = !DILocation(line: 824, column: 13, scope: !4539)
!4542 = !DILocation(line: 824, column: 27, scope: !4539)
!4543 = !DILocation(line: 825, column: 4, scope: !4539)
!4544 = !DILocation(line: 827, column: 2, scope: !4534)
!4545 = !DILocation(line: 822, column: 43, scope: !4526)
!4546 = !DILocation(line: 822, column: 2, scope: !4526)
!4547 = distinct !{!4547, !4531, !4548}
!4548 = !DILocation(line: 827, column: 2, scope: !4523)
!4549 = !DILocation(line: 829, column: 6, scope: !4550)
!4550 = distinct !DILexicalBlock(scope: !4325, file: !3, line: 829, column: 6)
!4551 = !DILocation(line: 829, column: 13, scope: !4550)
!4552 = !DILocation(line: 829, column: 6, scope: !4325)
!4553 = !DILocation(line: 831, column: 8, scope: !4554)
!4554 = distinct !DILexicalBlock(scope: !4550, file: !3, line: 829, column: 21)
!4555 = !DILocation(line: 831, column: 13, scope: !4554)
!4556 = !DILocation(line: 831, column: 30, scope: !4554)
!4557 = !DILocation(line: 831, column: 5, scope: !4554)
!4558 = !DILocation(line: 832, column: 3, scope: !4554)
!4559 = !DILocation(line: 832, column: 6, scope: !4554)
!4560 = !DILocation(line: 832, column: 12, scope: !4554)
!4561 = !DILocation(line: 833, column: 3, scope: !4554)
!4562 = !DILocation(line: 833, column: 6, scope: !4554)
!4563 = !DILocation(line: 833, column: 19, scope: !4554)
!4564 = !DILocation(line: 834, column: 3, scope: !4554)
!4565 = !DILocation(line: 834, column: 6, scope: !4554)
!4566 = !DILocation(line: 834, column: 13, scope: !4554)
!4567 = !DILocation(line: 835, column: 3, scope: !4554)
!4568 = !DILocation(line: 835, column: 6, scope: !4554)
!4569 = !DILocation(line: 835, column: 14, scope: !4554)
!4570 = !DILocation(line: 836, column: 3, scope: !4554)
!4571 = !DILocation(line: 836, column: 6, scope: !4554)
!4572 = !DILocation(line: 836, column: 18, scope: !4554)
!4573 = !DILocation(line: 837, column: 3, scope: !4554)
!4574 = !DILocation(line: 837, column: 6, scope: !4554)
!4575 = !DILocation(line: 837, column: 17, scope: !4554)
!4576 = !DILocation(line: 839, column: 38, scope: !4554)
!4577 = !DILocation(line: 839, column: 9, scope: !4554)
!4578 = !DILocation(line: 839, column: 7, scope: !4554)
!4579 = !DILocation(line: 840, column: 7, scope: !4580)
!4580 = distinct !DILexicalBlock(scope: !4554, file: !3, line: 840, column: 7)
!4581 = !DILocation(line: 840, column: 7, scope: !4554)
!4582 = !DILocation(line: 841, column: 11, scope: !4580)
!4583 = !DILocation(line: 841, column: 4, scope: !4580)
!4584 = !DILocation(line: 842, column: 2, scope: !4554)
!4585 = !DILocation(line: 844, column: 7, scope: !4586)
!4586 = distinct !DILexicalBlock(scope: !4325, file: !3, line: 844, column: 6)
!4587 = !DILocation(line: 844, column: 14, scope: !4586)
!4588 = !DILocation(line: 844, column: 6, scope: !4325)
!4589 = !DILocation(line: 846, column: 8, scope: !4590)
!4590 = distinct !DILexicalBlock(scope: !4586, file: !3, line: 844, column: 26)
!4591 = !DILocation(line: 846, column: 13, scope: !4590)
!4592 = !DILocation(line: 846, column: 30, scope: !4590)
!4593 = !DILocation(line: 846, column: 5, scope: !4590)
!4594 = !DILocation(line: 847, column: 3, scope: !4590)
!4595 = !DILocation(line: 847, column: 6, scope: !4590)
!4596 = !DILocation(line: 847, column: 12, scope: !4590)
!4597 = !DILocation(line: 848, column: 3, scope: !4590)
!4598 = !DILocation(line: 848, column: 6, scope: !4590)
!4599 = !DILocation(line: 848, column: 19, scope: !4590)
!4600 = !DILocation(line: 849, column: 3, scope: !4590)
!4601 = !DILocation(line: 849, column: 6, scope: !4590)
!4602 = !DILocation(line: 849, column: 13, scope: !4590)
!4603 = !DILocation(line: 850, column: 3, scope: !4590)
!4604 = !DILocation(line: 850, column: 6, scope: !4590)
!4605 = !DILocation(line: 850, column: 14, scope: !4590)
!4606 = !DILocation(line: 851, column: 3, scope: !4590)
!4607 = !DILocation(line: 851, column: 6, scope: !4590)
!4608 = !DILocation(line: 851, column: 18, scope: !4590)
!4609 = !DILocation(line: 852, column: 3, scope: !4590)
!4610 = !DILocation(line: 852, column: 6, scope: !4590)
!4611 = !DILocation(line: 852, column: 16, scope: !4590)
!4612 = !DILocation(line: 855, column: 8, scope: !4590)
!4613 = !DILocation(line: 855, column: 13, scope: !4590)
!4614 = !DILocation(line: 855, column: 30, scope: !4590)
!4615 = !DILocation(line: 855, column: 5, scope: !4590)
!4616 = !DILocation(line: 856, column: 3, scope: !4590)
!4617 = !DILocation(line: 856, column: 6, scope: !4590)
!4618 = !DILocation(line: 856, column: 12, scope: !4590)
!4619 = !DILocation(line: 857, column: 3, scope: !4590)
!4620 = !DILocation(line: 857, column: 6, scope: !4590)
!4621 = !DILocation(line: 857, column: 19, scope: !4590)
!4622 = !DILocation(line: 858, column: 3, scope: !4590)
!4623 = !DILocation(line: 858, column: 6, scope: !4590)
!4624 = !DILocation(line: 858, column: 13, scope: !4590)
!4625 = !DILocation(line: 859, column: 3, scope: !4590)
!4626 = !DILocation(line: 859, column: 6, scope: !4590)
!4627 = !DILocation(line: 859, column: 14, scope: !4590)
!4628 = !DILocation(line: 860, column: 3, scope: !4590)
!4629 = !DILocation(line: 860, column: 6, scope: !4590)
!4630 = !DILocation(line: 860, column: 18, scope: !4590)
!4631 = !DILocation(line: 861, column: 3, scope: !4590)
!4632 = !DILocation(line: 861, column: 6, scope: !4590)
!4633 = !DILocation(line: 861, column: 16, scope: !4590)
!4634 = !DILocation(line: 864, column: 8, scope: !4590)
!4635 = !DILocation(line: 864, column: 13, scope: !4590)
!4636 = !DILocation(line: 864, column: 30, scope: !4590)
!4637 = !DILocation(line: 864, column: 5, scope: !4590)
!4638 = !DILocation(line: 865, column: 30, scope: !4590)
!4639 = !DILocation(line: 865, column: 33, scope: !4590)
!4640 = !DILocation(line: 865, column: 38, scope: !4590)
!4641 = !DILocation(line: 865, column: 3, scope: !4590)
!4642 = !DILocation(line: 867, column: 3, scope: !4590)
!4643 = !DILocation(line: 867, column: 8, scope: !4590)
!4644 = !DILocation(line: 867, column: 15, scope: !4590)
!4645 = !DILocation(line: 867, column: 27, scope: !4590)
!4646 = !DILocation(line: 870, column: 24, scope: !4590)
!4647 = !DILocation(line: 870, column: 29, scope: !4590)
!4648 = !DILocation(line: 870, column: 3, scope: !4590)
!4649 = !DILocation(line: 871, column: 24, scope: !4590)
!4650 = !DILocation(line: 871, column: 29, scope: !4590)
!4651 = !DILocation(line: 871, column: 3, scope: !4590)
!4652 = !DILocation(line: 872, column: 2, scope: !4590)
!4653 = !DILocation(line: 875, column: 26, scope: !4325)
!4654 = !DILocation(line: 875, column: 33, scope: !4325)
!4655 = !DILocation(line: 875, column: 25, scope: !4325)
!4656 = !DILocation(line: 875, column: 2, scope: !4325)
!4657 = !DILocation(line: 875, column: 11, scope: !4325)
!4658 = !DILocation(line: 875, column: 23, scope: !4325)
!4659 = !DILocation(line: 877, column: 2, scope: !4325)
!4660 = !DILocation(line: 878, column: 1, scope: !4325)
!4661 = distinct !DISubprogram(name: "pci1710_reset", scope: !3, file: !3, line: 720, type: !3983, scopeLine: 721, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!4662 = !DILocalVariable(name: "dev", arg: 1, scope: !4661, file: !3, line: 720, type: !186)
!4663 = !DILocation(line: 720, column: 49, scope: !4661)
!4664 = !DILocalVariable(name: "board", scope: !4661, file: !3, line: 722, type: !4335)
!4665 = !DILocation(line: 722, column: 26, scope: !4661)
!4666 = !DILocation(line: 722, column: 34, scope: !4661)
!4667 = !DILocation(line: 722, column: 39, scope: !4661)
!4668 = !DILocation(line: 728, column: 10, scope: !4661)
!4669 = !DILocation(line: 728, column: 15, scope: !4661)
!4670 = !DILocation(line: 728, column: 22, scope: !4661)
!4671 = !DILocation(line: 728, column: 2, scope: !4661)
!4672 = !DILocation(line: 731, column: 10, scope: !4661)
!4673 = !DILocation(line: 731, column: 15, scope: !4661)
!4674 = !DILocation(line: 731, column: 22, scope: !4661)
!4675 = !DILocation(line: 731, column: 2, scope: !4661)
!4676 = !DILocation(line: 732, column: 10, scope: !4661)
!4677 = !DILocation(line: 732, column: 15, scope: !4661)
!4678 = !DILocation(line: 732, column: 22, scope: !4661)
!4679 = !DILocation(line: 732, column: 2, scope: !4661)
!4680 = !DILocation(line: 734, column: 6, scope: !4681)
!4681 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 734, column: 6)
!4682 = !DILocation(line: 734, column: 13, scope: !4681)
!4683 = !DILocation(line: 734, column: 6, scope: !4661)
!4684 = !DILocation(line: 736, column: 11, scope: !4685)
!4685 = distinct !DILexicalBlock(scope: !4681, file: !3, line: 734, column: 21)
!4686 = !DILocation(line: 736, column: 16, scope: !4685)
!4687 = !DILocation(line: 736, column: 23, scope: !4685)
!4688 = !DILocation(line: 736, column: 3, scope: !4685)
!4689 = !DILocation(line: 737, column: 11, scope: !4685)
!4690 = !DILocation(line: 737, column: 16, scope: !4685)
!4691 = !DILocation(line: 737, column: 23, scope: !4685)
!4692 = !DILocation(line: 737, column: 3, scope: !4685)
!4693 = !DILocation(line: 738, column: 11, scope: !4685)
!4694 = !DILocation(line: 738, column: 16, scope: !4685)
!4695 = !DILocation(line: 738, column: 23, scope: !4685)
!4696 = !DILocation(line: 738, column: 3, scope: !4685)
!4697 = !DILocation(line: 739, column: 2, scope: !4685)
!4698 = !DILocation(line: 742, column: 10, scope: !4661)
!4699 = !DILocation(line: 742, column: 15, scope: !4661)
!4700 = !DILocation(line: 742, column: 22, scope: !4661)
!4701 = !DILocation(line: 742, column: 2, scope: !4661)
!4702 = !DILocation(line: 743, column: 1, scope: !4661)
!4703 = distinct !DISubprogram(name: "request_irq", scope: !4116, file: !4116, line: 157, type: !4704, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!4704 = !DISubroutineType(types: !4705)
!4705 = !{!139, !7, !4706, !197, !177, !199}
!4706 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !4116, line: 92, baseType: !4707)
!4707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4708, size: 64)
!4708 = !DISubroutineType(types: !4709)
!4709 = !{!4710, !139, !199}
!4710 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !122, line: 17, baseType: !121)
!4711 = !DILocalVariable(name: "irq", arg: 1, scope: !4703, file: !4116, line: 157, type: !7)
!4712 = !DILocation(line: 157, column: 26, scope: !4703)
!4713 = !DILocalVariable(name: "handler", arg: 2, scope: !4703, file: !4116, line: 157, type: !4706)
!4714 = !DILocation(line: 157, column: 45, scope: !4703)
!4715 = !DILocalVariable(name: "flags", arg: 3, scope: !4703, file: !4116, line: 157, type: !197)
!4716 = !DILocation(line: 157, column: 68, scope: !4703)
!4717 = !DILocalVariable(name: "name", arg: 4, scope: !4703, file: !4116, line: 158, type: !177)
!4718 = !DILocation(line: 158, column: 18, scope: !4703)
!4719 = !DILocalVariable(name: "dev", arg: 5, scope: !4703, file: !4116, line: 158, type: !199)
!4720 = !DILocation(line: 158, column: 30, scope: !4703)
!4721 = !DILocation(line: 160, column: 30, scope: !4703)
!4722 = !DILocation(line: 160, column: 35, scope: !4703)
!4723 = !DILocation(line: 160, column: 50, scope: !4703)
!4724 = !DILocation(line: 160, column: 57, scope: !4703)
!4725 = !DILocation(line: 160, column: 63, scope: !4703)
!4726 = !DILocation(line: 160, column: 9, scope: !4703)
!4727 = !DILocation(line: 160, column: 2, scope: !4703)
!4728 = distinct !DISubprogram(name: "pci1710_irq_handler", scope: !3, file: !3, line: 480, type: !4708, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!4729 = !DILocalVariable(name: "irq", arg: 1, scope: !4728, file: !3, line: 480, type: !139)
!4730 = !DILocation(line: 480, column: 44, scope: !4728)
!4731 = !DILocalVariable(name: "d", arg: 2, scope: !4728, file: !3, line: 480, type: !199)
!4732 = !DILocation(line: 480, column: 55, scope: !4728)
!4733 = !DILocalVariable(name: "dev", scope: !4728, file: !3, line: 482, type: !186)
!4734 = !DILocation(line: 482, column: 24, scope: !4728)
!4735 = !DILocation(line: 482, column: 30, scope: !4728)
!4736 = !DILocalVariable(name: "devpriv", scope: !4728, file: !3, line: 483, type: !4338)
!4737 = !DILocation(line: 483, column: 26, scope: !4728)
!4738 = !DILocation(line: 483, column: 36, scope: !4728)
!4739 = !DILocation(line: 483, column: 41, scope: !4728)
!4740 = !DILocalVariable(name: "s", scope: !4728, file: !3, line: 484, type: !223)
!4741 = !DILocation(line: 484, column: 27, scope: !4728)
!4742 = !DILocalVariable(name: "cmd", scope: !4728, file: !3, line: 485, type: !3933)
!4743 = !DILocation(line: 485, column: 21, scope: !4728)
!4744 = !DILocation(line: 487, column: 7, scope: !4745)
!4745 = distinct !DILexicalBlock(scope: !4728, file: !3, line: 487, column: 6)
!4746 = !DILocation(line: 487, column: 12, scope: !4745)
!4747 = !DILocation(line: 487, column: 6, scope: !4728)
!4748 = !DILocation(line: 488, column: 3, scope: !4745)
!4749 = !DILocation(line: 490, column: 6, scope: !4728)
!4750 = !DILocation(line: 490, column: 11, scope: !4728)
!4751 = !DILocation(line: 490, column: 4, scope: !4728)
!4752 = !DILocation(line: 491, column: 9, scope: !4728)
!4753 = !DILocation(line: 491, column: 12, scope: !4728)
!4754 = !DILocation(line: 491, column: 19, scope: !4728)
!4755 = !DILocation(line: 491, column: 6, scope: !4728)
!4756 = !DILocation(line: 494, column: 12, scope: !4757)
!4757 = distinct !DILexicalBlock(scope: !4728, file: !3, line: 494, column: 6)
!4758 = !DILocation(line: 494, column: 17, scope: !4757)
!4759 = !DILocation(line: 494, column: 24, scope: !4757)
!4760 = !DILocation(line: 494, column: 8, scope: !4757)
!4761 = !DILocation(line: 494, column: 46, scope: !4757)
!4762 = !DILocation(line: 494, column: 6, scope: !4728)
!4763 = !DILocation(line: 495, column: 3, scope: !4757)
!4764 = !DILocation(line: 497, column: 6, scope: !4765)
!4765 = distinct !DILexicalBlock(scope: !4728, file: !3, line: 497, column: 6)
!4766 = !DILocation(line: 497, column: 15, scope: !4765)
!4767 = !DILocation(line: 497, column: 6, scope: !4728)
!4768 = !DILocation(line: 498, column: 3, scope: !4769)
!4769 = distinct !DILexicalBlock(scope: !4765, file: !3, line: 497, column: 22)
!4770 = !DILocation(line: 498, column: 12, scope: !4769)
!4771 = !DILocation(line: 498, column: 18, scope: !4769)
!4772 = !DILocation(line: 499, column: 3, scope: !4769)
!4773 = !DILocation(line: 499, column: 12, scope: !4769)
!4774 = !DILocation(line: 499, column: 17, scope: !4769)
!4775 = !DILocation(line: 500, column: 3, scope: !4769)
!4776 = !DILocation(line: 500, column: 12, scope: !4769)
!4777 = !DILocation(line: 500, column: 17, scope: !4769)
!4778 = !DILocation(line: 501, column: 8, scope: !4769)
!4779 = !DILocation(line: 501, column: 17, scope: !4769)
!4780 = !DILocation(line: 501, column: 23, scope: !4769)
!4781 = !DILocation(line: 501, column: 28, scope: !4769)
!4782 = !DILocation(line: 501, column: 35, scope: !4769)
!4783 = !DILocation(line: 501, column: 3, scope: !4769)
!4784 = !DILocation(line: 502, column: 19, scope: !4769)
!4785 = !DILocation(line: 502, column: 28, scope: !4769)
!4786 = !DILocation(line: 502, column: 3, scope: !4769)
!4787 = !DILocation(line: 502, column: 12, scope: !4769)
!4788 = !DILocation(line: 502, column: 17, scope: !4769)
!4789 = !DILocation(line: 503, column: 11, scope: !4769)
!4790 = !DILocation(line: 503, column: 16, scope: !4769)
!4791 = !DILocation(line: 503, column: 23, scope: !4769)
!4792 = !DILocation(line: 503, column: 3, scope: !4769)
!4793 = !DILocation(line: 504, column: 11, scope: !4769)
!4794 = !DILocation(line: 504, column: 16, scope: !4769)
!4795 = !DILocation(line: 504, column: 23, scope: !4769)
!4796 = !DILocation(line: 504, column: 3, scope: !4769)
!4797 = !DILocation(line: 506, column: 8, scope: !4769)
!4798 = !DILocation(line: 506, column: 17, scope: !4769)
!4799 = !DILocation(line: 506, column: 27, scope: !4769)
!4800 = !DILocation(line: 506, column: 32, scope: !4769)
!4801 = !DILocation(line: 506, column: 39, scope: !4769)
!4802 = !DILocation(line: 506, column: 3, scope: !4769)
!4803 = !DILocation(line: 507, column: 8, scope: !4769)
!4804 = !DILocation(line: 507, column: 17, scope: !4769)
!4805 = !DILocation(line: 507, column: 23, scope: !4769)
!4806 = !DILocation(line: 507, column: 28, scope: !4769)
!4807 = !DILocation(line: 507, column: 35, scope: !4769)
!4808 = !DILocation(line: 507, column: 3, scope: !4769)
!4809 = !DILocation(line: 508, column: 28, scope: !4769)
!4810 = !DILocation(line: 508, column: 33, scope: !4769)
!4811 = !DILocation(line: 508, column: 3, scope: !4769)
!4812 = !DILocation(line: 509, column: 3, scope: !4769)
!4813 = !DILocation(line: 512, column: 6, scope: !4814)
!4814 = distinct !DILexicalBlock(scope: !4728, file: !3, line: 512, column: 6)
!4815 = !DILocation(line: 512, column: 11, scope: !4814)
!4816 = !DILocation(line: 512, column: 17, scope: !4814)
!4817 = !DILocation(line: 512, column: 6, scope: !4728)
!4818 = !DILocation(line: 513, column: 31, scope: !4814)
!4819 = !DILocation(line: 513, column: 36, scope: !4814)
!4820 = !DILocation(line: 513, column: 3, scope: !4814)
!4821 = !DILocation(line: 515, column: 23, scope: !4814)
!4822 = !DILocation(line: 515, column: 28, scope: !4814)
!4823 = !DILocation(line: 515, column: 3, scope: !4814)
!4824 = !DILocation(line: 517, column: 23, scope: !4728)
!4825 = !DILocation(line: 517, column: 28, scope: !4728)
!4826 = !DILocation(line: 517, column: 2, scope: !4728)
!4827 = !DILocation(line: 519, column: 2, scope: !4728)
!4828 = !DILocation(line: 520, column: 1, scope: !4728)
!4829 = distinct !DISubprogram(name: "pci1710_ai_insn_read", scope: !3, file: !3, line: 329, type: !221, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!4830 = !DILocalVariable(name: "dev", arg: 1, scope: !4829, file: !3, line: 329, type: !186)
!4831 = !DILocation(line: 329, column: 55, scope: !4829)
!4832 = !DILocalVariable(name: "s", arg: 2, scope: !4829, file: !3, line: 330, type: !223)
!4833 = !DILocation(line: 330, column: 30, scope: !4829)
!4834 = !DILocalVariable(name: "insn", arg: 3, scope: !4829, file: !3, line: 331, type: !3946)
!4835 = !DILocation(line: 331, column: 25, scope: !4829)
!4836 = !DILocalVariable(name: "data", arg: 4, scope: !4829, file: !3, line: 332, type: !2712)
!4837 = !DILocation(line: 332, column: 19, scope: !4829)
!4838 = !DILocalVariable(name: "devpriv", scope: !4829, file: !3, line: 334, type: !4338)
!4839 = !DILocation(line: 334, column: 26, scope: !4829)
!4840 = !DILocation(line: 334, column: 36, scope: !4829)
!4841 = !DILocation(line: 334, column: 41, scope: !4829)
!4842 = !DILocalVariable(name: "ret", scope: !4829, file: !3, line: 335, type: !139)
!4843 = !DILocation(line: 335, column: 6, scope: !4829)
!4844 = !DILocalVariable(name: "i", scope: !4829, file: !3, line: 336, type: !139)
!4845 = !DILocation(line: 336, column: 6, scope: !4829)
!4846 = !DILocation(line: 339, column: 2, scope: !4829)
!4847 = !DILocation(line: 339, column: 11, scope: !4829)
!4848 = !DILocation(line: 339, column: 16, scope: !4829)
!4849 = !DILocation(line: 340, column: 7, scope: !4829)
!4850 = !DILocation(line: 340, column: 16, scope: !4829)
!4851 = !DILocation(line: 340, column: 22, scope: !4829)
!4852 = !DILocation(line: 340, column: 27, scope: !4829)
!4853 = !DILocation(line: 340, column: 34, scope: !4829)
!4854 = !DILocation(line: 340, column: 2, scope: !4829)
!4855 = !DILocation(line: 342, column: 10, scope: !4829)
!4856 = !DILocation(line: 342, column: 15, scope: !4829)
!4857 = !DILocation(line: 342, column: 22, scope: !4829)
!4858 = !DILocation(line: 342, column: 2, scope: !4829)
!4859 = !DILocation(line: 343, column: 10, scope: !4829)
!4860 = !DILocation(line: 343, column: 15, scope: !4829)
!4861 = !DILocation(line: 343, column: 22, scope: !4829)
!4862 = !DILocation(line: 343, column: 2, scope: !4829)
!4863 = !DILocation(line: 345, column: 28, scope: !4829)
!4864 = !DILocation(line: 345, column: 33, scope: !4829)
!4865 = !DILocation(line: 345, column: 37, scope: !4829)
!4866 = !DILocation(line: 345, column: 43, scope: !4829)
!4867 = !DILocation(line: 345, column: 2, scope: !4829)
!4868 = !DILocation(line: 347, column: 9, scope: !4869)
!4869 = distinct !DILexicalBlock(scope: !4829, file: !3, line: 347, column: 2)
!4870 = !DILocation(line: 347, column: 7, scope: !4869)
!4871 = !DILocation(line: 347, column: 14, scope: !4872)
!4872 = distinct !DILexicalBlock(scope: !4869, file: !3, line: 347, column: 2)
!4873 = !DILocation(line: 347, column: 18, scope: !4872)
!4874 = !DILocation(line: 347, column: 24, scope: !4872)
!4875 = !DILocation(line: 347, column: 16, scope: !4872)
!4876 = !DILocation(line: 347, column: 2, scope: !4869)
!4877 = !DILocalVariable(name: "val", scope: !4878, file: !3, line: 348, type: !7)
!4878 = distinct !DILexicalBlock(scope: !4872, file: !3, line: 347, column: 32)
!4879 = !DILocation(line: 348, column: 16, scope: !4878)
!4880 = !DILocation(line: 351, column: 11, scope: !4878)
!4881 = !DILocation(line: 351, column: 16, scope: !4878)
!4882 = !DILocation(line: 351, column: 23, scope: !4878)
!4883 = !DILocation(line: 351, column: 3, scope: !4878)
!4884 = !DILocation(line: 353, column: 24, scope: !4878)
!4885 = !DILocation(line: 353, column: 29, scope: !4878)
!4886 = !DILocation(line: 353, column: 32, scope: !4878)
!4887 = !DILocation(line: 353, column: 9, scope: !4878)
!4888 = !DILocation(line: 353, column: 7, scope: !4878)
!4889 = !DILocation(line: 354, column: 7, scope: !4890)
!4890 = distinct !DILexicalBlock(scope: !4878, file: !3, line: 354, column: 7)
!4891 = !DILocation(line: 354, column: 7, scope: !4878)
!4892 = !DILocation(line: 355, column: 4, scope: !4890)
!4893 = !DILocation(line: 357, column: 32, scope: !4878)
!4894 = !DILocation(line: 357, column: 37, scope: !4878)
!4895 = !DILocation(line: 357, column: 9, scope: !4878)
!4896 = !DILocation(line: 357, column: 7, scope: !4878)
!4897 = !DILocation(line: 358, column: 7, scope: !4898)
!4898 = distinct !DILexicalBlock(scope: !4878, file: !3, line: 358, column: 7)
!4899 = !DILocation(line: 358, column: 7, scope: !4878)
!4900 = !DILocation(line: 359, column: 4, scope: !4898)
!4901 = !DILocation(line: 361, column: 13, scope: !4878)
!4902 = !DILocation(line: 361, column: 3, scope: !4878)
!4903 = !DILocation(line: 361, column: 8, scope: !4878)
!4904 = !DILocation(line: 361, column: 11, scope: !4878)
!4905 = !DILocation(line: 362, column: 2, scope: !4878)
!4906 = !DILocation(line: 347, column: 28, scope: !4872)
!4907 = !DILocation(line: 347, column: 2, scope: !4872)
!4908 = distinct !{!4908, !4876, !4909}
!4909 = !DILocation(line: 362, column: 2, scope: !4869)
!4910 = !DILocation(line: 365, column: 2, scope: !4829)
!4911 = !DILocation(line: 365, column: 11, scope: !4829)
!4912 = !DILocation(line: 365, column: 16, scope: !4829)
!4913 = !DILocation(line: 366, column: 7, scope: !4829)
!4914 = !DILocation(line: 366, column: 16, scope: !4829)
!4915 = !DILocation(line: 366, column: 22, scope: !4829)
!4916 = !DILocation(line: 366, column: 27, scope: !4829)
!4917 = !DILocation(line: 366, column: 34, scope: !4829)
!4918 = !DILocation(line: 366, column: 2, scope: !4829)
!4919 = !DILocation(line: 368, column: 10, scope: !4829)
!4920 = !DILocation(line: 368, column: 15, scope: !4829)
!4921 = !DILocation(line: 368, column: 22, scope: !4829)
!4922 = !DILocation(line: 368, column: 2, scope: !4829)
!4923 = !DILocation(line: 369, column: 10, scope: !4829)
!4924 = !DILocation(line: 369, column: 15, scope: !4829)
!4925 = !DILocation(line: 369, column: 22, scope: !4829)
!4926 = !DILocation(line: 369, column: 2, scope: !4829)
!4927 = !DILocation(line: 371, column: 9, scope: !4829)
!4928 = !DILocation(line: 371, column: 15, scope: !4829)
!4929 = !DILocation(line: 371, column: 21, scope: !4829)
!4930 = !DILocation(line: 371, column: 27, scope: !4829)
!4931 = !DILocation(line: 371, column: 2, scope: !4829)
!4932 = distinct !DISubprogram(name: "pci1710_ai_cmdtest", scope: !3, file: !3, line: 563, type: !3931, scopeLine: 566, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!4933 = !DILocalVariable(name: "dev", arg: 1, scope: !4932, file: !3, line: 563, type: !186)
!4934 = !DILocation(line: 563, column: 53, scope: !4932)
!4935 = !DILocalVariable(name: "s", arg: 2, scope: !4932, file: !3, line: 564, type: !223)
!4936 = !DILocation(line: 564, column: 35, scope: !4932)
!4937 = !DILocalVariable(name: "cmd", arg: 3, scope: !4932, file: !3, line: 565, type: !3933)
!4938 = !DILocation(line: 565, column: 29, scope: !4932)
!4939 = !DILocalVariable(name: "err", scope: !4932, file: !3, line: 567, type: !139)
!4940 = !DILocation(line: 567, column: 6, scope: !4932)
!4941 = !DILocation(line: 571, column: 35, scope: !4932)
!4942 = !DILocation(line: 571, column: 40, scope: !4932)
!4943 = !DILocation(line: 571, column: 9, scope: !4932)
!4944 = !DILocation(line: 571, column: 6, scope: !4932)
!4945 = !DILocation(line: 572, column: 35, scope: !4932)
!4946 = !DILocation(line: 572, column: 40, scope: !4932)
!4947 = !DILocation(line: 572, column: 9, scope: !4932)
!4948 = !DILocation(line: 572, column: 6, scope: !4932)
!4949 = !DILocation(line: 573, column: 35, scope: !4932)
!4950 = !DILocation(line: 573, column: 40, scope: !4932)
!4951 = !DILocation(line: 573, column: 9, scope: !4932)
!4952 = !DILocation(line: 573, column: 6, scope: !4932)
!4953 = !DILocation(line: 575, column: 35, scope: !4932)
!4954 = !DILocation(line: 575, column: 40, scope: !4932)
!4955 = !DILocation(line: 575, column: 9, scope: !4932)
!4956 = !DILocation(line: 575, column: 6, scope: !4932)
!4957 = !DILocation(line: 576, column: 35, scope: !4932)
!4958 = !DILocation(line: 576, column: 40, scope: !4932)
!4959 = !DILocation(line: 576, column: 9, scope: !4932)
!4960 = !DILocation(line: 576, column: 6, scope: !4932)
!4961 = !DILocation(line: 578, column: 6, scope: !4962)
!4962 = distinct !DILexicalBlock(scope: !4932, file: !3, line: 578, column: 6)
!4963 = !DILocation(line: 578, column: 6, scope: !4932)
!4964 = !DILocation(line: 579, column: 3, scope: !4962)
!4965 = !DILocation(line: 583, column: 40, scope: !4932)
!4966 = !DILocation(line: 583, column: 45, scope: !4932)
!4967 = !DILocation(line: 583, column: 9, scope: !4932)
!4968 = !DILocation(line: 583, column: 6, scope: !4932)
!4969 = !DILocation(line: 584, column: 40, scope: !4932)
!4970 = !DILocation(line: 584, column: 45, scope: !4932)
!4971 = !DILocation(line: 584, column: 9, scope: !4932)
!4972 = !DILocation(line: 584, column: 6, scope: !4932)
!4973 = !DILocation(line: 585, column: 40, scope: !4932)
!4974 = !DILocation(line: 585, column: 45, scope: !4932)
!4975 = !DILocation(line: 585, column: 9, scope: !4932)
!4976 = !DILocation(line: 585, column: 6, scope: !4932)
!4977 = !DILocation(line: 589, column: 6, scope: !4978)
!4978 = distinct !DILexicalBlock(scope: !4932, file: !3, line: 589, column: 6)
!4979 = !DILocation(line: 589, column: 6, scope: !4932)
!4980 = !DILocation(line: 590, column: 3, scope: !4978)
!4981 = !DILocation(line: 594, column: 38, scope: !4932)
!4982 = !DILocation(line: 594, column: 43, scope: !4932)
!4983 = !DILocation(line: 594, column: 9, scope: !4932)
!4984 = !DILocation(line: 594, column: 6, scope: !4932)
!4985 = !DILocation(line: 595, column: 38, scope: !4932)
!4986 = !DILocation(line: 595, column: 43, scope: !4932)
!4987 = !DILocation(line: 595, column: 9, scope: !4932)
!4988 = !DILocation(line: 595, column: 6, scope: !4932)
!4989 = !DILocation(line: 597, column: 6, scope: !4990)
!4990 = distinct !DILexicalBlock(scope: !4932, file: !3, line: 597, column: 6)
!4991 = !DILocation(line: 597, column: 11, scope: !4990)
!4992 = !DILocation(line: 597, column: 23, scope: !4990)
!4993 = !DILocation(line: 597, column: 6, scope: !4932)
!4994 = !DILocation(line: 598, column: 40, scope: !4990)
!4995 = !DILocation(line: 598, column: 45, scope: !4990)
!4996 = !DILocation(line: 598, column: 10, scope: !4990)
!4997 = !DILocation(line: 598, column: 7, scope: !4990)
!4998 = !DILocation(line: 598, column: 3, scope: !4990)
!4999 = !DILocation(line: 600, column: 39, scope: !4990)
!5000 = !DILocation(line: 600, column: 44, scope: !4990)
!5001 = !DILocation(line: 600, column: 10, scope: !4990)
!5002 = !DILocation(line: 600, column: 7, scope: !4990)
!5003 = !DILocation(line: 602, column: 38, scope: !4932)
!5004 = !DILocation(line: 602, column: 43, scope: !4932)
!5005 = !DILocation(line: 603, column: 9, scope: !4932)
!5006 = !DILocation(line: 603, column: 14, scope: !4932)
!5007 = !DILocation(line: 602, column: 9, scope: !4932)
!5008 = !DILocation(line: 602, column: 6, scope: !4932)
!5009 = !DILocation(line: 605, column: 6, scope: !5010)
!5010 = distinct !DILexicalBlock(scope: !4932, file: !3, line: 605, column: 6)
!5011 = !DILocation(line: 605, column: 11, scope: !5010)
!5012 = !DILocation(line: 605, column: 20, scope: !5010)
!5013 = !DILocation(line: 605, column: 6, scope: !4932)
!5014 = !DILocation(line: 606, column: 40, scope: !5010)
!5015 = !DILocation(line: 606, column: 45, scope: !5010)
!5016 = !DILocation(line: 606, column: 10, scope: !5010)
!5017 = !DILocation(line: 606, column: 7, scope: !5010)
!5018 = !DILocation(line: 606, column: 3, scope: !5010)
!5019 = !DILocation(line: 608, column: 39, scope: !5010)
!5020 = !DILocation(line: 608, column: 44, scope: !5010)
!5021 = !DILocation(line: 608, column: 10, scope: !5010)
!5022 = !DILocation(line: 608, column: 7, scope: !5010)
!5023 = !DILocation(line: 610, column: 6, scope: !5024)
!5024 = distinct !DILexicalBlock(scope: !4932, file: !3, line: 610, column: 6)
!5025 = !DILocation(line: 610, column: 6, scope: !4932)
!5026 = !DILocation(line: 611, column: 3, scope: !5024)
!5027 = !DILocation(line: 615, column: 6, scope: !5028)
!5028 = distinct !DILexicalBlock(scope: !4932, file: !3, line: 615, column: 6)
!5029 = !DILocation(line: 615, column: 11, scope: !5028)
!5030 = !DILocation(line: 615, column: 23, scope: !5028)
!5031 = !DILocation(line: 615, column: 6, scope: !4932)
!5032 = !DILocalVariable(name: "arg", scope: !5033, file: !3, line: 616, type: !7)
!5033 = distinct !DILexicalBlock(scope: !5028, file: !3, line: 615, column: 38)
!5034 = !DILocation(line: 616, column: 16, scope: !5033)
!5035 = !DILocation(line: 616, column: 22, scope: !5033)
!5036 = !DILocation(line: 616, column: 27, scope: !5033)
!5037 = !DILocation(line: 618, column: 35, scope: !5033)
!5038 = !DILocation(line: 618, column: 40, scope: !5033)
!5039 = !DILocation(line: 618, column: 53, scope: !5033)
!5040 = !DILocation(line: 618, column: 58, scope: !5033)
!5041 = !DILocation(line: 618, column: 3, scope: !5033)
!5042 = !DILocation(line: 619, column: 39, scope: !5033)
!5043 = !DILocation(line: 619, column: 44, scope: !5033)
!5044 = !DILocation(line: 619, column: 57, scope: !5033)
!5045 = !DILocation(line: 619, column: 10, scope: !5033)
!5046 = !DILocation(line: 619, column: 7, scope: !5033)
!5047 = !DILocation(line: 620, column: 2, scope: !5033)
!5048 = !DILocation(line: 622, column: 6, scope: !5049)
!5049 = distinct !DILexicalBlock(scope: !4932, file: !3, line: 622, column: 6)
!5050 = !DILocation(line: 622, column: 6, scope: !4932)
!5051 = !DILocation(line: 623, column: 3, scope: !5049)
!5052 = !DILocation(line: 627, column: 35, scope: !4932)
!5053 = !DILocation(line: 627, column: 40, scope: !4932)
!5054 = !DILocation(line: 627, column: 43, scope: !4932)
!5055 = !DILocation(line: 627, column: 9, scope: !4932)
!5056 = !DILocation(line: 627, column: 6, scope: !4932)
!5057 = !DILocation(line: 629, column: 6, scope: !5058)
!5058 = distinct !DILexicalBlock(scope: !4932, file: !3, line: 629, column: 6)
!5059 = !DILocation(line: 629, column: 6, scope: !4932)
!5060 = !DILocation(line: 630, column: 3, scope: !5058)
!5061 = !DILocation(line: 632, column: 2, scope: !4932)
!5062 = !DILocation(line: 633, column: 1, scope: !4932)
!5063 = distinct !DISubprogram(name: "pci1710_ai_cmd", scope: !3, file: !3, line: 522, type: !3927, scopeLine: 523, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!5064 = !DILocalVariable(name: "dev", arg: 1, scope: !5063, file: !3, line: 522, type: !186)
!5065 = !DILocation(line: 522, column: 49, scope: !5063)
!5066 = !DILocalVariable(name: "s", arg: 2, scope: !5063, file: !3, line: 522, type: !223)
!5067 = !DILocation(line: 522, column: 79, scope: !5063)
!5068 = !DILocalVariable(name: "devpriv", scope: !5063, file: !3, line: 524, type: !4338)
!5069 = !DILocation(line: 524, column: 26, scope: !5063)
!5070 = !DILocation(line: 524, column: 36, scope: !5063)
!5071 = !DILocation(line: 524, column: 41, scope: !5063)
!5072 = !DILocalVariable(name: "cmd", scope: !5063, file: !3, line: 525, type: !3933)
!5073 = !DILocation(line: 525, column: 21, scope: !5063)
!5074 = !DILocation(line: 525, column: 28, scope: !5063)
!5075 = !DILocation(line: 525, column: 31, scope: !5063)
!5076 = !DILocation(line: 525, column: 38, scope: !5063)
!5077 = !DILocation(line: 527, column: 28, scope: !5063)
!5078 = !DILocation(line: 527, column: 33, scope: !5063)
!5079 = !DILocation(line: 527, column: 36, scope: !5063)
!5080 = !DILocation(line: 527, column: 41, scope: !5063)
!5081 = !DILocation(line: 527, column: 51, scope: !5063)
!5082 = !DILocation(line: 527, column: 56, scope: !5063)
!5083 = !DILocation(line: 528, column: 7, scope: !5063)
!5084 = !DILocation(line: 528, column: 16, scope: !5063)
!5085 = !DILocation(line: 527, column: 2, scope: !5063)
!5086 = !DILocation(line: 530, column: 10, scope: !5063)
!5087 = !DILocation(line: 530, column: 15, scope: !5063)
!5088 = !DILocation(line: 530, column: 22, scope: !5063)
!5089 = !DILocation(line: 530, column: 2, scope: !5063)
!5090 = !DILocation(line: 531, column: 10, scope: !5063)
!5091 = !DILocation(line: 531, column: 15, scope: !5063)
!5092 = !DILocation(line: 531, column: 22, scope: !5063)
!5093 = !DILocation(line: 531, column: 2, scope: !5063)
!5094 = !DILocation(line: 533, column: 2, scope: !5063)
!5095 = !DILocation(line: 533, column: 11, scope: !5063)
!5096 = !DILocation(line: 533, column: 16, scope: !5063)
!5097 = !DILocation(line: 534, column: 7, scope: !5098)
!5098 = distinct !DILexicalBlock(scope: !5063, file: !3, line: 534, column: 6)
!5099 = !DILocation(line: 534, column: 12, scope: !5098)
!5100 = !DILocation(line: 534, column: 18, scope: !5098)
!5101 = !DILocation(line: 534, column: 35, scope: !5098)
!5102 = !DILocation(line: 534, column: 6, scope: !5063)
!5103 = !DILocation(line: 535, column: 3, scope: !5098)
!5104 = !DILocation(line: 535, column: 12, scope: !5098)
!5105 = !DILocation(line: 535, column: 17, scope: !5098)
!5106 = !DILocation(line: 537, column: 6, scope: !5107)
!5107 = distinct !DILexicalBlock(scope: !5063, file: !3, line: 537, column: 6)
!5108 = !DILocation(line: 537, column: 11, scope: !5107)
!5109 = !DILocation(line: 537, column: 23, scope: !5107)
!5110 = !DILocation(line: 537, column: 6, scope: !5063)
!5111 = !DILocation(line: 538, column: 31, scope: !5112)
!5112 = distinct !DILexicalBlock(scope: !5107, file: !3, line: 537, column: 38)
!5113 = !DILocation(line: 538, column: 36, scope: !5112)
!5114 = !DILocation(line: 538, column: 3, scope: !5112)
!5115 = !DILocation(line: 540, column: 3, scope: !5112)
!5116 = !DILocation(line: 540, column: 12, scope: !5112)
!5117 = !DILocation(line: 540, column: 17, scope: !5112)
!5118 = !DILocation(line: 541, column: 7, scope: !5119)
!5119 = distinct !DILexicalBlock(scope: !5112, file: !3, line: 541, column: 7)
!5120 = !DILocation(line: 541, column: 12, scope: !5119)
!5121 = !DILocation(line: 541, column: 22, scope: !5119)
!5122 = !DILocation(line: 541, column: 7, scope: !5112)
!5123 = !DILocation(line: 542, column: 24, scope: !5124)
!5124 = distinct !DILexicalBlock(scope: !5119, file: !3, line: 541, column: 35)
!5125 = !DILocation(line: 542, column: 33, scope: !5124)
!5126 = !DILocation(line: 542, column: 4, scope: !5124)
!5127 = !DILocation(line: 542, column: 13, scope: !5124)
!5128 = !DILocation(line: 542, column: 22, scope: !5124)
!5129 = !DILocation(line: 543, column: 4, scope: !5124)
!5130 = !DILocation(line: 543, column: 13, scope: !5124)
!5131 = !DILocation(line: 543, column: 18, scope: !5124)
!5132 = !DILocation(line: 546, column: 4, scope: !5124)
!5133 = !DILocation(line: 546, column: 13, scope: !5124)
!5134 = !DILocation(line: 546, column: 18, scope: !5124)
!5135 = !DILocation(line: 547, column: 4, scope: !5124)
!5136 = !DILocation(line: 547, column: 13, scope: !5124)
!5137 = !DILocation(line: 547, column: 19, scope: !5124)
!5138 = !DILocation(line: 548, column: 3, scope: !5124)
!5139 = !DILocation(line: 549, column: 4, scope: !5140)
!5140 = distinct !DILexicalBlock(scope: !5119, file: !3, line: 548, column: 10)
!5141 = !DILocation(line: 549, column: 13, scope: !5140)
!5142 = !DILocation(line: 549, column: 19, scope: !5140)
!5143 = !DILocation(line: 551, column: 8, scope: !5112)
!5144 = !DILocation(line: 551, column: 17, scope: !5112)
!5145 = !DILocation(line: 551, column: 23, scope: !5112)
!5146 = !DILocation(line: 551, column: 28, scope: !5112)
!5147 = !DILocation(line: 551, column: 35, scope: !5112)
!5148 = !DILocation(line: 551, column: 3, scope: !5112)
!5149 = !DILocation(line: 553, column: 7, scope: !5150)
!5150 = distinct !DILexicalBlock(scope: !5112, file: !3, line: 553, column: 7)
!5151 = !DILocation(line: 553, column: 12, scope: !5150)
!5152 = !DILocation(line: 553, column: 22, scope: !5150)
!5153 = !DILocation(line: 553, column: 7, scope: !5112)
!5154 = !DILocation(line: 554, column: 29, scope: !5150)
!5155 = !DILocation(line: 554, column: 34, scope: !5150)
!5156 = !DILocation(line: 554, column: 4, scope: !5150)
!5157 = !DILocation(line: 555, column: 2, scope: !5112)
!5158 = !DILocation(line: 556, column: 3, scope: !5159)
!5159 = distinct !DILexicalBlock(scope: !5107, file: !3, line: 555, column: 9)
!5160 = !DILocation(line: 556, column: 12, scope: !5159)
!5161 = !DILocation(line: 556, column: 17, scope: !5159)
!5162 = !DILocation(line: 557, column: 8, scope: !5159)
!5163 = !DILocation(line: 557, column: 17, scope: !5159)
!5164 = !DILocation(line: 557, column: 23, scope: !5159)
!5165 = !DILocation(line: 557, column: 28, scope: !5159)
!5166 = !DILocation(line: 557, column: 35, scope: !5159)
!5167 = !DILocation(line: 557, column: 3, scope: !5159)
!5168 = !DILocation(line: 560, column: 2, scope: !5063)
!5169 = distinct !DISubprogram(name: "pci1710_ai_cancel", scope: !3, file: !3, line: 374, type: !3927, scopeLine: 376, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!5170 = !DILocalVariable(name: "dev", arg: 1, scope: !5169, file: !3, line: 374, type: !186)
!5171 = !DILocation(line: 374, column: 52, scope: !5169)
!5172 = !DILocalVariable(name: "s", arg: 2, scope: !5169, file: !3, line: 375, type: !223)
!5173 = !DILocation(line: 375, column: 34, scope: !5169)
!5174 = !DILocalVariable(name: "devpriv", scope: !5169, file: !3, line: 377, type: !4338)
!5175 = !DILocation(line: 377, column: 26, scope: !5169)
!5176 = !DILocation(line: 377, column: 36, scope: !5169)
!5177 = !DILocation(line: 377, column: 41, scope: !5169)
!5178 = !DILocation(line: 380, column: 2, scope: !5169)
!5179 = !DILocation(line: 380, column: 11, scope: !5169)
!5180 = !DILocation(line: 380, column: 16, scope: !5169)
!5181 = !DILocation(line: 381, column: 7, scope: !5169)
!5182 = !DILocation(line: 381, column: 16, scope: !5169)
!5183 = !DILocation(line: 381, column: 22, scope: !5169)
!5184 = !DILocation(line: 381, column: 27, scope: !5169)
!5185 = !DILocation(line: 381, column: 34, scope: !5169)
!5186 = !DILocation(line: 381, column: 2, scope: !5169)
!5187 = !DILocation(line: 384, column: 27, scope: !5169)
!5188 = !DILocation(line: 384, column: 32, scope: !5169)
!5189 = !DILocation(line: 384, column: 2, scope: !5169)
!5190 = !DILocation(line: 387, column: 10, scope: !5169)
!5191 = !DILocation(line: 387, column: 15, scope: !5169)
!5192 = !DILocation(line: 387, column: 22, scope: !5169)
!5193 = !DILocation(line: 387, column: 2, scope: !5169)
!5194 = !DILocation(line: 388, column: 10, scope: !5169)
!5195 = !DILocation(line: 388, column: 15, scope: !5169)
!5196 = !DILocation(line: 388, column: 22, scope: !5169)
!5197 = !DILocation(line: 388, column: 2, scope: !5169)
!5198 = !DILocation(line: 390, column: 2, scope: !5169)
!5199 = distinct !DISubprogram(name: "comedi_range_is_unipolar", scope: !128, file: !128, line: 676, type: !5200, scopeLine: 678, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!5200 = !DISubroutineType(types: !5201)
!5201 = !{!216, !223, !7}
!5202 = !DILocalVariable(name: "s", arg: 1, scope: !5199, file: !128, line: 676, type: !223)
!5203 = !DILocation(line: 676, column: 70, scope: !5199)
!5204 = !DILocalVariable(name: "range", arg: 2, scope: !5199, file: !128, line: 677, type: !7)
!5205 = !DILocation(line: 677, column: 23, scope: !5199)
!5206 = !DILocation(line: 679, column: 9, scope: !5199)
!5207 = !DILocation(line: 679, column: 12, scope: !5199)
!5208 = !DILocation(line: 679, column: 25, scope: !5199)
!5209 = !DILocation(line: 679, column: 31, scope: !5199)
!5210 = !DILocation(line: 679, column: 38, scope: !5199)
!5211 = !DILocation(line: 679, column: 42, scope: !5199)
!5212 = !DILocation(line: 679, column: 2, scope: !5199)
!5213 = distinct !DISubprogram(name: "pci1710_ao_insn_write", scope: !3, file: !3, line: 635, type: !221, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!5214 = !DILocalVariable(name: "dev", arg: 1, scope: !5213, file: !3, line: 635, type: !186)
!5215 = !DILocation(line: 635, column: 56, scope: !5213)
!5216 = !DILocalVariable(name: "s", arg: 2, scope: !5213, file: !3, line: 636, type: !223)
!5217 = !DILocation(line: 636, column: 31, scope: !5213)
!5218 = !DILocalVariable(name: "insn", arg: 3, scope: !5213, file: !3, line: 637, type: !3946)
!5219 = !DILocation(line: 637, column: 26, scope: !5213)
!5220 = !DILocalVariable(name: "data", arg: 4, scope: !5213, file: !3, line: 638, type: !2712)
!5221 = !DILocation(line: 638, column: 20, scope: !5213)
!5222 = !DILocalVariable(name: "devpriv", scope: !5213, file: !3, line: 640, type: !4338)
!5223 = !DILocation(line: 640, column: 26, scope: !5213)
!5224 = !DILocation(line: 640, column: 36, scope: !5213)
!5225 = !DILocation(line: 640, column: 41, scope: !5213)
!5226 = !DILocalVariable(name: "chan", scope: !5213, file: !3, line: 641, type: !7)
!5227 = !DILocation(line: 641, column: 15, scope: !5213)
!5228 = !DILocation(line: 641, column: 22, scope: !5213)
!5229 = !DILocalVariable(name: "range", scope: !5213, file: !3, line: 642, type: !7)
!5230 = !DILocation(line: 642, column: 15, scope: !5213)
!5231 = !DILocation(line: 642, column: 23, scope: !5213)
!5232 = !DILocalVariable(name: "val", scope: !5213, file: !3, line: 643, type: !7)
!5233 = !DILocation(line: 643, column: 15, scope: !5213)
!5234 = !DILocation(line: 643, column: 21, scope: !5213)
!5235 = !DILocation(line: 643, column: 24, scope: !5213)
!5236 = !DILocation(line: 643, column: 33, scope: !5213)
!5237 = !DILocalVariable(name: "i", scope: !5213, file: !3, line: 644, type: !139)
!5238 = !DILocation(line: 644, column: 6, scope: !5213)
!5239 = !DILocation(line: 646, column: 25, scope: !5213)
!5240 = !DILocation(line: 646, column: 24, scope: !5213)
!5241 = !DILocation(line: 646, column: 2, scope: !5213)
!5242 = !DILocation(line: 646, column: 11, scope: !5213)
!5243 = !DILocation(line: 646, column: 21, scope: !5213)
!5244 = !DILocation(line: 647, column: 24, scope: !5213)
!5245 = !DILocation(line: 647, column: 2, scope: !5213)
!5246 = !DILocation(line: 647, column: 11, scope: !5213)
!5247 = !DILocation(line: 647, column: 21, scope: !5213)
!5248 = !DILocation(line: 648, column: 7, scope: !5213)
!5249 = !DILocation(line: 648, column: 16, scope: !5213)
!5250 = !DILocation(line: 648, column: 27, scope: !5213)
!5251 = !DILocation(line: 648, column: 32, scope: !5213)
!5252 = !DILocation(line: 648, column: 39, scope: !5213)
!5253 = !DILocation(line: 648, column: 2, scope: !5213)
!5254 = !DILocation(line: 650, column: 9, scope: !5255)
!5255 = distinct !DILexicalBlock(scope: !5213, file: !3, line: 650, column: 2)
!5256 = !DILocation(line: 650, column: 7, scope: !5255)
!5257 = !DILocation(line: 650, column: 14, scope: !5258)
!5258 = distinct !DILexicalBlock(scope: !5255, file: !3, line: 650, column: 2)
!5259 = !DILocation(line: 650, column: 18, scope: !5258)
!5260 = !DILocation(line: 650, column: 24, scope: !5258)
!5261 = !DILocation(line: 650, column: 16, scope: !5258)
!5262 = !DILocation(line: 650, column: 2, scope: !5255)
!5263 = !DILocation(line: 651, column: 9, scope: !5264)
!5264 = distinct !DILexicalBlock(scope: !5258, file: !3, line: 650, column: 32)
!5265 = !DILocation(line: 651, column: 14, scope: !5264)
!5266 = !DILocation(line: 651, column: 7, scope: !5264)
!5267 = !DILocation(line: 652, column: 8, scope: !5264)
!5268 = !DILocation(line: 652, column: 13, scope: !5264)
!5269 = !DILocation(line: 652, column: 18, scope: !5264)
!5270 = !DILocation(line: 652, column: 27, scope: !5264)
!5271 = !DILocation(line: 652, column: 25, scope: !5264)
!5272 = !DILocation(line: 652, column: 3, scope: !5264)
!5273 = !DILocation(line: 653, column: 2, scope: !5264)
!5274 = !DILocation(line: 650, column: 28, scope: !5258)
!5275 = !DILocation(line: 650, column: 2, scope: !5258)
!5276 = distinct !{!5276, !5262, !5277}
!5277 = !DILocation(line: 653, column: 2, scope: !5255)
!5278 = !DILocation(line: 655, column: 22, scope: !5213)
!5279 = !DILocation(line: 655, column: 2, scope: !5213)
!5280 = !DILocation(line: 655, column: 5, scope: !5213)
!5281 = !DILocation(line: 655, column: 14, scope: !5213)
!5282 = !DILocation(line: 655, column: 20, scope: !5213)
!5283 = !DILocation(line: 657, column: 9, scope: !5213)
!5284 = !DILocation(line: 657, column: 15, scope: !5213)
!5285 = !DILocation(line: 657, column: 2, scope: !5213)
!5286 = distinct !DISubprogram(name: "pci1710_di_insn_bits", scope: !3, file: !3, line: 660, type: !221, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!5287 = !DILocalVariable(name: "dev", arg: 1, scope: !5286, file: !3, line: 660, type: !186)
!5288 = !DILocation(line: 660, column: 55, scope: !5286)
!5289 = !DILocalVariable(name: "s", arg: 2, scope: !5286, file: !3, line: 661, type: !223)
!5290 = !DILocation(line: 661, column: 30, scope: !5286)
!5291 = !DILocalVariable(name: "insn", arg: 3, scope: !5286, file: !3, line: 662, type: !3946)
!5292 = !DILocation(line: 662, column: 25, scope: !5286)
!5293 = !DILocalVariable(name: "data", arg: 4, scope: !5286, file: !3, line: 663, type: !2712)
!5294 = !DILocation(line: 663, column: 19, scope: !5286)
!5295 = !DILocation(line: 665, column: 16, scope: !5286)
!5296 = !DILocation(line: 665, column: 21, scope: !5286)
!5297 = !DILocation(line: 665, column: 28, scope: !5286)
!5298 = !DILocation(line: 665, column: 12, scope: !5286)
!5299 = !DILocation(line: 665, column: 2, scope: !5286)
!5300 = !DILocation(line: 665, column: 10, scope: !5286)
!5301 = !DILocation(line: 667, column: 9, scope: !5286)
!5302 = !DILocation(line: 667, column: 15, scope: !5286)
!5303 = !DILocation(line: 667, column: 2, scope: !5286)
!5304 = distinct !DISubprogram(name: "pci1710_do_insn_bits", scope: !3, file: !3, line: 670, type: !221, scopeLine: 674, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!5305 = !DILocalVariable(name: "dev", arg: 1, scope: !5304, file: !3, line: 670, type: !186)
!5306 = !DILocation(line: 670, column: 55, scope: !5304)
!5307 = !DILocalVariable(name: "s", arg: 2, scope: !5304, file: !3, line: 671, type: !223)
!5308 = !DILocation(line: 671, column: 30, scope: !5304)
!5309 = !DILocalVariable(name: "insn", arg: 3, scope: !5304, file: !3, line: 672, type: !3946)
!5310 = !DILocation(line: 672, column: 25, scope: !5304)
!5311 = !DILocalVariable(name: "data", arg: 4, scope: !5304, file: !3, line: 673, type: !2712)
!5312 = !DILocation(line: 673, column: 19, scope: !5304)
!5313 = !DILocation(line: 675, column: 30, scope: !5314)
!5314 = distinct !DILexicalBlock(scope: !5304, file: !3, line: 675, column: 6)
!5315 = !DILocation(line: 675, column: 33, scope: !5314)
!5316 = !DILocation(line: 675, column: 6, scope: !5314)
!5317 = !DILocation(line: 675, column: 6, scope: !5304)
!5318 = !DILocation(line: 676, column: 8, scope: !5314)
!5319 = !DILocation(line: 676, column: 11, scope: !5314)
!5320 = !DILocation(line: 676, column: 18, scope: !5314)
!5321 = !DILocation(line: 676, column: 23, scope: !5314)
!5322 = !DILocation(line: 676, column: 30, scope: !5314)
!5323 = !DILocation(line: 676, column: 3, scope: !5314)
!5324 = !DILocation(line: 678, column: 12, scope: !5304)
!5325 = !DILocation(line: 678, column: 15, scope: !5304)
!5326 = !DILocation(line: 678, column: 2, scope: !5304)
!5327 = !DILocation(line: 678, column: 10, scope: !5304)
!5328 = !DILocation(line: 680, column: 9, scope: !5304)
!5329 = !DILocation(line: 680, column: 15, scope: !5304)
!5330 = !DILocation(line: 680, column: 2, scope: !5304)
!5331 = distinct !DISubprogram(name: "pci1710_counter_insn_config", scope: !3, file: !3, line: 683, type: !221, scopeLine: 687, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!5332 = !DILocalVariable(name: "dev", arg: 1, scope: !5331, file: !3, line: 683, type: !186)
!5333 = !DILocation(line: 683, column: 62, scope: !5331)
!5334 = !DILocalVariable(name: "s", arg: 2, scope: !5331, file: !3, line: 684, type: !223)
!5335 = !DILocation(line: 684, column: 37, scope: !5331)
!5336 = !DILocalVariable(name: "insn", arg: 3, scope: !5331, file: !3, line: 685, type: !3946)
!5337 = !DILocation(line: 685, column: 32, scope: !5331)
!5338 = !DILocalVariable(name: "data", arg: 4, scope: !5331, file: !3, line: 686, type: !2712)
!5339 = !DILocation(line: 686, column: 26, scope: !5331)
!5340 = !DILocalVariable(name: "devpriv", scope: !5331, file: !3, line: 688, type: !4338)
!5341 = !DILocation(line: 688, column: 26, scope: !5331)
!5342 = !DILocation(line: 688, column: 36, scope: !5331)
!5343 = !DILocation(line: 688, column: 41, scope: !5331)
!5344 = !DILocation(line: 690, column: 10, scope: !5331)
!5345 = !DILocation(line: 690, column: 2, scope: !5331)
!5346 = !DILocation(line: 692, column: 11, scope: !5347)
!5347 = distinct !DILexicalBlock(scope: !5331, file: !3, line: 690, column: 19)
!5348 = !DILocation(line: 692, column: 3, scope: !5347)
!5349 = !DILocation(line: 694, column: 4, scope: !5350)
!5350 = distinct !DILexicalBlock(scope: !5347, file: !3, line: 692, column: 20)
!5351 = !DILocation(line: 694, column: 13, scope: !5350)
!5352 = !DILocation(line: 694, column: 22, scope: !5350)
!5353 = !DILocation(line: 695, column: 4, scope: !5350)
!5354 = !DILocation(line: 697, column: 4, scope: !5350)
!5355 = !DILocation(line: 697, column: 13, scope: !5350)
!5356 = !DILocation(line: 697, column: 22, scope: !5350)
!5357 = !DILocation(line: 698, column: 4, scope: !5350)
!5358 = !DILocation(line: 700, column: 4, scope: !5350)
!5359 = !DILocation(line: 702, column: 8, scope: !5347)
!5360 = !DILocation(line: 702, column: 17, scope: !5347)
!5361 = !DILocation(line: 702, column: 27, scope: !5347)
!5362 = !DILocation(line: 702, column: 32, scope: !5347)
!5363 = !DILocation(line: 702, column: 39, scope: !5347)
!5364 = !DILocation(line: 702, column: 3, scope: !5347)
!5365 = !DILocation(line: 703, column: 3, scope: !5347)
!5366 = !DILocation(line: 705, column: 7, scope: !5367)
!5367 = distinct !DILexicalBlock(scope: !5347, file: !3, line: 705, column: 7)
!5368 = !DILocation(line: 705, column: 16, scope: !5367)
!5369 = !DILocation(line: 705, column: 25, scope: !5367)
!5370 = !DILocation(line: 705, column: 7, scope: !5347)
!5371 = !DILocation(line: 706, column: 4, scope: !5372)
!5372 = distinct !DILexicalBlock(scope: !5367, file: !3, line: 705, column: 46)
!5373 = !DILocation(line: 706, column: 12, scope: !5372)
!5374 = !DILocation(line: 707, column: 4, scope: !5372)
!5375 = !DILocation(line: 707, column: 12, scope: !5372)
!5376 = !DILocation(line: 708, column: 3, scope: !5372)
!5377 = !DILocation(line: 709, column: 4, scope: !5378)
!5378 = distinct !DILexicalBlock(scope: !5367, file: !3, line: 708, column: 10)
!5379 = !DILocation(line: 709, column: 12, scope: !5378)
!5380 = !DILocation(line: 710, column: 4, scope: !5378)
!5381 = !DILocation(line: 710, column: 12, scope: !5378)
!5382 = !DILocation(line: 712, column: 3, scope: !5347)
!5383 = !DILocation(line: 714, column: 3, scope: !5347)
!5384 = !DILocation(line: 717, column: 9, scope: !5331)
!5385 = !DILocation(line: 717, column: 15, scope: !5331)
!5386 = !DILocation(line: 717, column: 2, scope: !5331)
!5387 = !DILocation(line: 718, column: 1, scope: !5331)
!5388 = distinct !DISubprogram(name: "outw", scope: !5389, file: !5389, line: 335, type: !5390, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!5389 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!5390 = !DISubroutineType(types: !5391)
!5391 = !{null, !347, !139}
!5392 = !DILocalVariable(name: "value", arg: 1, scope: !5388, file: !5389, line: 335, type: !347)
!5393 = !DILocation(line: 335, column: 1, scope: !5388)
!5394 = !DILocalVariable(name: "port", arg: 2, scope: !5388, file: !5389, line: 335, type: !139)
!5395 = !{i32 -2143392854}
!5396 = distinct !DISubprogram(name: "outb", scope: !5389, file: !5389, line: 334, type: !5397, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!5397 = !DISubroutineType(types: !5398)
!5398 = !{null, !457, !139}
!5399 = !DILocalVariable(name: "value", arg: 1, scope: !5396, file: !5389, line: 334, type: !457)
!5400 = !DILocation(line: 334, column: 1, scope: !5396)
!5401 = !DILocalVariable(name: "port", arg: 2, scope: !5396, file: !5389, line: 334, type: !139)
!5402 = !{i32 -2143395597}
!5403 = distinct !DISubprogram(name: "inw", scope: !5389, file: !5389, line: 335, type: !5404, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!5404 = !DISubroutineType(types: !5405)
!5405 = !{!347, !139}
!5406 = !DILocalVariable(name: "port", arg: 1, scope: !5403, file: !5389, line: 335, type: !139)
!5407 = !DILocation(line: 335, column: 1, scope: !5403)
!5408 = !DILocalVariable(name: "value", scope: !5403, file: !5389, line: 335, type: !347)
!5409 = !{i32 -2143392652}
!5410 = distinct !DISubprogram(name: "pci1710_handle_every_sample", scope: !3, file: !3, line: 393, type: !5411, scopeLine: 395, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!5411 = !DISubroutineType(types: !5412)
!5412 = !{null, !186, !223}
!5413 = !DILocalVariable(name: "dev", arg: 1, scope: !5410, file: !3, line: 393, type: !186)
!5414 = !DILocation(line: 393, column: 63, scope: !5410)
!5415 = !DILocalVariable(name: "s", arg: 2, scope: !5410, file: !3, line: 394, type: !223)
!5416 = !DILocation(line: 394, column: 31, scope: !5410)
!5417 = !DILocalVariable(name: "cmd", scope: !5410, file: !3, line: 396, type: !3933)
!5418 = !DILocation(line: 396, column: 21, scope: !5410)
!5419 = !DILocation(line: 396, column: 28, scope: !5410)
!5420 = !DILocation(line: 396, column: 31, scope: !5410)
!5421 = !DILocation(line: 396, column: 38, scope: !5410)
!5422 = !DILocalVariable(name: "status", scope: !5410, file: !3, line: 397, type: !7)
!5423 = !DILocation(line: 397, column: 15, scope: !5410)
!5424 = !DILocalVariable(name: "val", scope: !5410, file: !3, line: 398, type: !7)
!5425 = !DILocation(line: 398, column: 15, scope: !5410)
!5426 = !DILocalVariable(name: "ret", scope: !5410, file: !3, line: 399, type: !139)
!5427 = !DILocation(line: 399, column: 6, scope: !5410)
!5428 = !DILocation(line: 401, column: 15, scope: !5410)
!5429 = !DILocation(line: 401, column: 20, scope: !5410)
!5430 = !DILocation(line: 401, column: 27, scope: !5410)
!5431 = !DILocation(line: 401, column: 11, scope: !5410)
!5432 = !DILocation(line: 401, column: 9, scope: !5410)
!5433 = !DILocation(line: 402, column: 6, scope: !5434)
!5434 = distinct !DILexicalBlock(scope: !5410, file: !3, line: 402, column: 6)
!5435 = !DILocation(line: 402, column: 13, scope: !5434)
!5436 = !DILocation(line: 402, column: 6, scope: !5410)
!5437 = !DILocation(line: 404, column: 3, scope: !5438)
!5438 = distinct !DILexicalBlock(scope: !5434, file: !3, line: 402, column: 34)
!5439 = !DILocation(line: 404, column: 6, scope: !5438)
!5440 = !DILocation(line: 404, column: 13, scope: !5438)
!5441 = !DILocation(line: 404, column: 20, scope: !5438)
!5442 = !DILocation(line: 405, column: 3, scope: !5438)
!5443 = !DILocation(line: 407, column: 6, scope: !5444)
!5444 = distinct !DILexicalBlock(scope: !5410, file: !3, line: 407, column: 6)
!5445 = !DILocation(line: 407, column: 13, scope: !5444)
!5446 = !DILocation(line: 407, column: 6, scope: !5410)
!5447 = !DILocation(line: 410, column: 3, scope: !5448)
!5448 = distinct !DILexicalBlock(scope: !5444, file: !3, line: 407, column: 34)
!5449 = !DILocation(line: 410, column: 6, scope: !5448)
!5450 = !DILocation(line: 410, column: 13, scope: !5448)
!5451 = !DILocation(line: 410, column: 20, scope: !5448)
!5452 = !DILocation(line: 411, column: 3, scope: !5448)
!5453 = !DILocation(line: 414, column: 10, scope: !5410)
!5454 = !DILocation(line: 414, column: 15, scope: !5410)
!5455 = !DILocation(line: 414, column: 22, scope: !5410)
!5456 = !DILocation(line: 414, column: 2, scope: !5410)
!5457 = !DILocation(line: 416, column: 2, scope: !5410)
!5458 = !DILocation(line: 416, column: 15, scope: !5459)
!5459 = distinct !DILexicalBlock(scope: !5460, file: !3, line: 416, column: 2)
!5460 = distinct !DILexicalBlock(scope: !5410, file: !3, line: 416, column: 2)
!5461 = !DILocation(line: 416, column: 20, scope: !5459)
!5462 = !DILocation(line: 416, column: 27, scope: !5459)
!5463 = !DILocation(line: 416, column: 11, scope: !5459)
!5464 = !DILocation(line: 416, column: 49, scope: !5459)
!5465 = !DILocation(line: 416, column: 9, scope: !5459)
!5466 = !DILocation(line: 416, column: 2, scope: !5460)
!5467 = !DILocation(line: 417, column: 32, scope: !5468)
!5468 = distinct !DILexicalBlock(scope: !5459, file: !3, line: 416, column: 72)
!5469 = !DILocation(line: 417, column: 37, scope: !5468)
!5470 = !DILocation(line: 417, column: 40, scope: !5468)
!5471 = !DILocation(line: 417, column: 43, scope: !5468)
!5472 = !DILocation(line: 417, column: 50, scope: !5468)
!5473 = !DILocation(line: 417, column: 9, scope: !5468)
!5474 = !DILocation(line: 417, column: 7, scope: !5468)
!5475 = !DILocation(line: 418, column: 7, scope: !5476)
!5476 = distinct !DILexicalBlock(scope: !5468, file: !3, line: 418, column: 7)
!5477 = !DILocation(line: 418, column: 7, scope: !5468)
!5478 = !DILocation(line: 419, column: 4, scope: !5479)
!5479 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 418, column: 12)
!5480 = !DILocation(line: 419, column: 7, scope: !5479)
!5481 = !DILocation(line: 419, column: 14, scope: !5479)
!5482 = !DILocation(line: 419, column: 21, scope: !5479)
!5483 = !DILocation(line: 420, column: 4, scope: !5479)
!5484 = !DILocation(line: 423, column: 28, scope: !5468)
!5485 = !DILocation(line: 423, column: 31, scope: !5468)
!5486 = !DILocation(line: 423, column: 3, scope: !5468)
!5487 = !DILocation(line: 425, column: 7, scope: !5488)
!5488 = distinct !DILexicalBlock(scope: !5468, file: !3, line: 425, column: 7)
!5489 = !DILocation(line: 425, column: 12, scope: !5488)
!5490 = !DILocation(line: 425, column: 21, scope: !5488)
!5491 = !DILocation(line: 425, column: 35, scope: !5488)
!5492 = !DILocation(line: 426, column: 7, scope: !5488)
!5493 = !DILocation(line: 426, column: 10, scope: !5488)
!5494 = !DILocation(line: 426, column: 17, scope: !5488)
!5495 = !DILocation(line: 426, column: 31, scope: !5488)
!5496 = !DILocation(line: 426, column: 36, scope: !5488)
!5497 = !DILocation(line: 426, column: 28, scope: !5488)
!5498 = !DILocation(line: 425, column: 7, scope: !5468)
!5499 = !DILocation(line: 427, column: 4, scope: !5500)
!5500 = distinct !DILexicalBlock(scope: !5488, file: !3, line: 426, column: 46)
!5501 = !DILocation(line: 427, column: 7, scope: !5500)
!5502 = !DILocation(line: 427, column: 14, scope: !5500)
!5503 = !DILocation(line: 427, column: 21, scope: !5500)
!5504 = !DILocation(line: 428, column: 4, scope: !5500)
!5505 = !DILocation(line: 416, column: 2, scope: !5459)
!5506 = distinct !{!5506, !5466, !5507}
!5507 = !DILocation(line: 430, column: 2, scope: !5460)
!5508 = !DILocation(line: 432, column: 10, scope: !5410)
!5509 = !DILocation(line: 432, column: 15, scope: !5410)
!5510 = !DILocation(line: 432, column: 22, scope: !5410)
!5511 = !DILocation(line: 432, column: 2, scope: !5410)
!5512 = !DILocation(line: 433, column: 1, scope: !5410)
!5513 = distinct !DISubprogram(name: "pci1710_handle_fifo", scope: !3, file: !3, line: 435, type: !5411, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!5514 = !DILocalVariable(name: "dev", arg: 1, scope: !5513, file: !3, line: 435, type: !186)
!5515 = !DILocation(line: 435, column: 55, scope: !5513)
!5516 = !DILocalVariable(name: "s", arg: 2, scope: !5513, file: !3, line: 436, type: !223)
!5517 = !DILocation(line: 436, column: 30, scope: !5513)
!5518 = !DILocalVariable(name: "devpriv", scope: !5513, file: !3, line: 438, type: !4338)
!5519 = !DILocation(line: 438, column: 26, scope: !5513)
!5520 = !DILocation(line: 438, column: 36, scope: !5513)
!5521 = !DILocation(line: 438, column: 41, scope: !5513)
!5522 = !DILocalVariable(name: "async", scope: !5513, file: !3, line: 439, type: !234)
!5523 = !DILocation(line: 439, column: 23, scope: !5513)
!5524 = !DILocation(line: 439, column: 31, scope: !5513)
!5525 = !DILocation(line: 439, column: 34, scope: !5513)
!5526 = !DILocalVariable(name: "cmd", scope: !5513, file: !3, line: 440, type: !3933)
!5527 = !DILocation(line: 440, column: 21, scope: !5513)
!5528 = !DILocation(line: 440, column: 28, scope: !5513)
!5529 = !DILocation(line: 440, column: 35, scope: !5513)
!5530 = !DILocalVariable(name: "status", scope: !5513, file: !3, line: 441, type: !7)
!5531 = !DILocation(line: 441, column: 15, scope: !5513)
!5532 = !DILocalVariable(name: "i", scope: !5513, file: !3, line: 442, type: !139)
!5533 = !DILocation(line: 442, column: 6, scope: !5513)
!5534 = !DILocation(line: 444, column: 15, scope: !5513)
!5535 = !DILocation(line: 444, column: 20, scope: !5513)
!5536 = !DILocation(line: 444, column: 27, scope: !5513)
!5537 = !DILocation(line: 444, column: 11, scope: !5513)
!5538 = !DILocation(line: 444, column: 9, scope: !5513)
!5539 = !DILocation(line: 445, column: 8, scope: !5540)
!5540 = distinct !DILexicalBlock(scope: !5513, file: !3, line: 445, column: 6)
!5541 = !DILocation(line: 445, column: 15, scope: !5540)
!5542 = !DILocation(line: 445, column: 6, scope: !5513)
!5543 = !DILocation(line: 447, column: 3, scope: !5544)
!5544 = distinct !DILexicalBlock(scope: !5540, file: !3, line: 445, column: 37)
!5545 = !DILocation(line: 447, column: 10, scope: !5544)
!5546 = !DILocation(line: 447, column: 17, scope: !5544)
!5547 = !DILocation(line: 448, column: 3, scope: !5544)
!5548 = !DILocation(line: 450, column: 6, scope: !5549)
!5549 = distinct !DILexicalBlock(scope: !5513, file: !3, line: 450, column: 6)
!5550 = !DILocation(line: 450, column: 13, scope: !5549)
!5551 = !DILocation(line: 450, column: 6, scope: !5513)
!5552 = !DILocation(line: 453, column: 3, scope: !5553)
!5553 = distinct !DILexicalBlock(scope: !5549, file: !3, line: 450, column: 34)
!5554 = !DILocation(line: 453, column: 10, scope: !5553)
!5555 = !DILocation(line: 453, column: 17, scope: !5553)
!5556 = !DILocation(line: 454, column: 3, scope: !5553)
!5557 = !DILocation(line: 457, column: 9, scope: !5558)
!5558 = distinct !DILexicalBlock(scope: !5513, file: !3, line: 457, column: 2)
!5559 = !DILocation(line: 457, column: 7, scope: !5558)
!5560 = !DILocation(line: 457, column: 14, scope: !5561)
!5561 = distinct !DILexicalBlock(scope: !5558, file: !3, line: 457, column: 2)
!5562 = !DILocation(line: 457, column: 18, scope: !5561)
!5563 = !DILocation(line: 457, column: 27, scope: !5561)
!5564 = !DILocation(line: 457, column: 16, scope: !5561)
!5565 = !DILocation(line: 457, column: 2, scope: !5558)
!5566 = !DILocalVariable(name: "val", scope: !5567, file: !3, line: 458, type: !7)
!5567 = distinct !DILexicalBlock(scope: !5561, file: !3, line: 457, column: 45)
!5568 = !DILocation(line: 458, column: 16, scope: !5567)
!5569 = !DILocalVariable(name: "ret", scope: !5567, file: !3, line: 459, type: !139)
!5570 = !DILocation(line: 459, column: 7, scope: !5567)
!5571 = !DILocation(line: 461, column: 32, scope: !5567)
!5572 = !DILocation(line: 461, column: 37, scope: !5567)
!5573 = !DILocation(line: 461, column: 40, scope: !5567)
!5574 = !DILocation(line: 461, column: 43, scope: !5567)
!5575 = !DILocation(line: 461, column: 50, scope: !5567)
!5576 = !DILocation(line: 461, column: 9, scope: !5567)
!5577 = !DILocation(line: 461, column: 7, scope: !5567)
!5578 = !DILocation(line: 462, column: 7, scope: !5579)
!5579 = distinct !DILexicalBlock(scope: !5567, file: !3, line: 462, column: 7)
!5580 = !DILocation(line: 462, column: 7, scope: !5567)
!5581 = !DILocation(line: 463, column: 4, scope: !5582)
!5582 = distinct !DILexicalBlock(scope: !5579, file: !3, line: 462, column: 12)
!5583 = !DILocation(line: 463, column: 7, scope: !5582)
!5584 = !DILocation(line: 463, column: 14, scope: !5582)
!5585 = !DILocation(line: 463, column: 21, scope: !5582)
!5586 = !DILocation(line: 464, column: 4, scope: !5582)
!5587 = !DILocation(line: 467, column: 33, scope: !5588)
!5588 = distinct !DILexicalBlock(scope: !5567, file: !3, line: 467, column: 7)
!5589 = !DILocation(line: 467, column: 36, scope: !5588)
!5590 = !DILocation(line: 467, column: 8, scope: !5588)
!5591 = !DILocation(line: 467, column: 7, scope: !5567)
!5592 = !DILocation(line: 468, column: 4, scope: !5588)
!5593 = !DILocation(line: 470, column: 7, scope: !5594)
!5594 = distinct !DILexicalBlock(scope: !5567, file: !3, line: 470, column: 7)
!5595 = !DILocation(line: 470, column: 12, scope: !5594)
!5596 = !DILocation(line: 470, column: 21, scope: !5594)
!5597 = !DILocation(line: 470, column: 35, scope: !5594)
!5598 = !DILocation(line: 471, column: 7, scope: !5594)
!5599 = !DILocation(line: 471, column: 14, scope: !5594)
!5600 = !DILocation(line: 471, column: 28, scope: !5594)
!5601 = !DILocation(line: 471, column: 33, scope: !5594)
!5602 = !DILocation(line: 471, column: 25, scope: !5594)
!5603 = !DILocation(line: 470, column: 7, scope: !5567)
!5604 = !DILocation(line: 472, column: 4, scope: !5605)
!5605 = distinct !DILexicalBlock(scope: !5594, file: !3, line: 471, column: 43)
!5606 = !DILocation(line: 472, column: 11, scope: !5605)
!5607 = !DILocation(line: 472, column: 18, scope: !5605)
!5608 = !DILocation(line: 473, column: 4, scope: !5605)
!5609 = !DILocation(line: 475, column: 2, scope: !5567)
!5610 = !DILocation(line: 457, column: 41, scope: !5561)
!5611 = !DILocation(line: 457, column: 2, scope: !5561)
!5612 = distinct !{!5612, !5565, !5613}
!5613 = !DILocation(line: 475, column: 2, scope: !5558)
!5614 = !DILocation(line: 477, column: 10, scope: !5513)
!5615 = !DILocation(line: 477, column: 15, scope: !5513)
!5616 = !DILocation(line: 477, column: 22, scope: !5513)
!5617 = !DILocation(line: 477, column: 2, scope: !5513)
!5618 = !DILocation(line: 478, column: 1, scope: !5513)
!5619 = distinct !DISubprogram(name: "pci1710_ai_read_sample", scope: !3, file: !3, line: 300, type: !5620, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!5620 = !DISubroutineType(types: !5621)
!5621 = !{!139, !186, !223, !7, !2712}
!5622 = !DILocalVariable(name: "dev", arg: 1, scope: !5619, file: !3, line: 300, type: !186)
!5623 = !DILocation(line: 300, column: 57, scope: !5619)
!5624 = !DILocalVariable(name: "s", arg: 2, scope: !5619, file: !3, line: 301, type: !223)
!5625 = !DILocation(line: 301, column: 32, scope: !5619)
!5626 = !DILocalVariable(name: "cur_chan", arg: 3, scope: !5619, file: !3, line: 302, type: !7)
!5627 = !DILocation(line: 302, column: 20, scope: !5619)
!5628 = !DILocalVariable(name: "val", arg: 4, scope: !5619, file: !3, line: 303, type: !2712)
!5629 = !DILocation(line: 303, column: 21, scope: !5619)
!5630 = !DILocalVariable(name: "board", scope: !5619, file: !3, line: 305, type: !4335)
!5631 = !DILocation(line: 305, column: 26, scope: !5619)
!5632 = !DILocation(line: 305, column: 34, scope: !5619)
!5633 = !DILocation(line: 305, column: 39, scope: !5619)
!5634 = !DILocalVariable(name: "devpriv", scope: !5619, file: !3, line: 306, type: !4338)
!5635 = !DILocation(line: 306, column: 26, scope: !5619)
!5636 = !DILocation(line: 306, column: 36, scope: !5619)
!5637 = !DILocation(line: 306, column: 41, scope: !5619)
!5638 = !DILocalVariable(name: "sample", scope: !5619, file: !3, line: 307, type: !7)
!5639 = !DILocation(line: 307, column: 15, scope: !5619)
!5640 = !DILocalVariable(name: "chan", scope: !5619, file: !3, line: 308, type: !7)
!5641 = !DILocation(line: 308, column: 15, scope: !5619)
!5642 = !DILocation(line: 310, column: 15, scope: !5619)
!5643 = !DILocation(line: 310, column: 20, scope: !5619)
!5644 = !DILocation(line: 310, column: 27, scope: !5619)
!5645 = !DILocation(line: 310, column: 11, scope: !5619)
!5646 = !DILocation(line: 310, column: 9, scope: !5619)
!5647 = !DILocation(line: 311, column: 7, scope: !5648)
!5648 = distinct !DILexicalBlock(scope: !5619, file: !3, line: 311, column: 6)
!5649 = !DILocation(line: 311, column: 14, scope: !5648)
!5650 = !DILocation(line: 311, column: 6, scope: !5619)
!5651 = !DILocation(line: 317, column: 10, scope: !5652)
!5652 = distinct !DILexicalBlock(scope: !5648, file: !3, line: 311, column: 26)
!5653 = !DILocation(line: 317, column: 17, scope: !5652)
!5654 = !DILocation(line: 317, column: 8, scope: !5652)
!5655 = !DILocation(line: 318, column: 7, scope: !5656)
!5656 = distinct !DILexicalBlock(scope: !5652, file: !3, line: 318, column: 7)
!5657 = !DILocation(line: 318, column: 15, scope: !5656)
!5658 = !DILocation(line: 318, column: 24, scope: !5656)
!5659 = !DILocation(line: 318, column: 37, scope: !5656)
!5660 = !DILocation(line: 318, column: 12, scope: !5656)
!5661 = !DILocation(line: 318, column: 7, scope: !5652)
!5662 = !DILocation(line: 319, column: 4, scope: !5663)
!5663 = distinct !DILexicalBlock(scope: !5656, file: !3, line: 318, column: 48)
!5664 = !DILocation(line: 322, column: 4, scope: !5663)
!5665 = !DILocation(line: 324, column: 2, scope: !5652)
!5666 = !DILocation(line: 325, column: 9, scope: !5619)
!5667 = !DILocation(line: 325, column: 18, scope: !5619)
!5668 = !DILocation(line: 325, column: 21, scope: !5619)
!5669 = !DILocation(line: 325, column: 16, scope: !5619)
!5670 = !DILocation(line: 325, column: 3, scope: !5619)
!5671 = !DILocation(line: 325, column: 7, scope: !5619)
!5672 = !DILocation(line: 326, column: 2, scope: !5619)
!5673 = !DILocation(line: 327, column: 1, scope: !5619)
!5674 = distinct !DISubprogram(name: "pci1710_ai_setup_chanlist", scope: !3, file: !3, line: 247, type: !5675, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!5675 = !DISubroutineType(types: !5676)
!5676 = !{null, !186, !223, !2712, !7, !7}
!5677 = !DILocalVariable(name: "dev", arg: 1, scope: !5674, file: !3, line: 247, type: !186)
!5678 = !DILocation(line: 247, column: 61, scope: !5674)
!5679 = !DILocalVariable(name: "s", arg: 2, scope: !5674, file: !3, line: 248, type: !223)
!5680 = !DILocation(line: 248, column: 36, scope: !5674)
!5681 = !DILocalVariable(name: "chanlist", arg: 3, scope: !5674, file: !3, line: 249, type: !2712)
!5682 = !DILocation(line: 249, column: 25, scope: !5674)
!5683 = !DILocalVariable(name: "n_chan", arg: 4, scope: !5674, file: !3, line: 250, type: !7)
!5684 = !DILocation(line: 250, column: 24, scope: !5674)
!5685 = !DILocalVariable(name: "seglen", arg: 5, scope: !5674, file: !3, line: 251, type: !7)
!5686 = !DILocation(line: 251, column: 24, scope: !5674)
!5687 = !DILocalVariable(name: "devpriv", scope: !5674, file: !3, line: 253, type: !4338)
!5688 = !DILocation(line: 253, column: 26, scope: !5674)
!5689 = !DILocation(line: 253, column: 36, scope: !5674)
!5690 = !DILocation(line: 253, column: 41, scope: !5674)
!5691 = !DILocalVariable(name: "first_chan", scope: !5674, file: !3, line: 254, type: !7)
!5692 = !DILocation(line: 254, column: 15, scope: !5674)
!5693 = !DILocation(line: 254, column: 28, scope: !5674)
!5694 = !DILocalVariable(name: "last_chan", scope: !5674, file: !3, line: 255, type: !7)
!5695 = !DILocation(line: 255, column: 15, scope: !5674)
!5696 = !DILocation(line: 255, column: 27, scope: !5674)
!5697 = !DILocalVariable(name: "i", scope: !5674, file: !3, line: 256, type: !7)
!5698 = !DILocation(line: 256, column: 15, scope: !5674)
!5699 = !DILocation(line: 258, column: 9, scope: !5700)
!5700 = distinct !DILexicalBlock(scope: !5674, file: !3, line: 258, column: 2)
!5701 = !DILocation(line: 258, column: 7, scope: !5700)
!5702 = !DILocation(line: 258, column: 14, scope: !5703)
!5703 = distinct !DILexicalBlock(scope: !5700, file: !3, line: 258, column: 2)
!5704 = !DILocation(line: 258, column: 18, scope: !5703)
!5705 = !DILocation(line: 258, column: 16, scope: !5703)
!5706 = !DILocation(line: 258, column: 2, scope: !5700)
!5707 = !DILocalVariable(name: "chan", scope: !5708, file: !3, line: 259, type: !7)
!5708 = distinct !DILexicalBlock(scope: !5703, file: !3, line: 258, column: 31)
!5709 = !DILocation(line: 259, column: 16, scope: !5708)
!5710 = !DILocation(line: 259, column: 23, scope: !5708)
!5711 = !DILocalVariable(name: "range", scope: !5708, file: !3, line: 260, type: !7)
!5712 = !DILocation(line: 260, column: 16, scope: !5708)
!5713 = !DILocation(line: 260, column: 24, scope: !5708)
!5714 = !DILocalVariable(name: "aref", scope: !5708, file: !3, line: 261, type: !7)
!5715 = !DILocation(line: 261, column: 16, scope: !5708)
!5716 = !DILocation(line: 261, column: 23, scope: !5708)
!5717 = !DILocalVariable(name: "rangeval", scope: !5708, file: !3, line: 262, type: !7)
!5718 = !DILocation(line: 262, column: 16, scope: !5708)
!5719 = !DILocation(line: 264, column: 7, scope: !5720)
!5720 = distinct !DILexicalBlock(scope: !5708, file: !3, line: 264, column: 7)
!5721 = !DILocation(line: 264, column: 12, scope: !5720)
!5722 = !DILocation(line: 264, column: 7, scope: !5708)
!5723 = !DILocation(line: 265, column: 13, scope: !5720)
!5724 = !DILocation(line: 265, column: 4, scope: !5720)
!5725 = !DILocation(line: 266, column: 32, scope: !5726)
!5726 = distinct !DILexicalBlock(scope: !5708, file: !3, line: 266, column: 7)
!5727 = !DILocation(line: 266, column: 35, scope: !5726)
!5728 = !DILocation(line: 266, column: 7, scope: !5726)
!5729 = !DILocation(line: 266, column: 7, scope: !5708)
!5730 = !DILocation(line: 267, column: 13, scope: !5731)
!5731 = distinct !DILexicalBlock(scope: !5726, file: !3, line: 266, column: 43)
!5732 = !DILocation(line: 268, column: 13, scope: !5731)
!5733 = !DILocation(line: 268, column: 22, scope: !5731)
!5734 = !DILocation(line: 268, column: 10, scope: !5731)
!5735 = !DILocation(line: 269, column: 3, scope: !5731)
!5736 = !DILocation(line: 270, column: 15, scope: !5708)
!5737 = !DILocation(line: 270, column: 12, scope: !5708)
!5738 = !DILocation(line: 273, column: 8, scope: !5708)
!5739 = !DILocation(line: 273, column: 32, scope: !5708)
!5740 = !DILocation(line: 273, column: 37, scope: !5708)
!5741 = !DILocation(line: 273, column: 44, scope: !5708)
!5742 = !DILocation(line: 273, column: 3, scope: !5708)
!5743 = !DILocation(line: 274, column: 8, scope: !5708)
!5744 = !DILocation(line: 274, column: 18, scope: !5708)
!5745 = !DILocation(line: 274, column: 23, scope: !5708)
!5746 = !DILocation(line: 274, column: 30, scope: !5708)
!5747 = !DILocation(line: 274, column: 3, scope: !5708)
!5748 = !DILocation(line: 276, column: 30, scope: !5708)
!5749 = !DILocation(line: 276, column: 3, scope: !5708)
!5750 = !DILocation(line: 276, column: 12, scope: !5708)
!5751 = !DILocation(line: 276, column: 25, scope: !5708)
!5752 = !DILocation(line: 276, column: 28, scope: !5708)
!5753 = !DILocation(line: 277, column: 2, scope: !5708)
!5754 = !DILocation(line: 258, column: 27, scope: !5703)
!5755 = !DILocation(line: 258, column: 2, scope: !5703)
!5756 = distinct !{!5756, !5706, !5757}
!5757 = !DILocation(line: 277, column: 2, scope: !5700)
!5758 = !DILocation(line: 278, column: 2, scope: !5674)
!5759 = !DILocation(line: 278, column: 10, scope: !5760)
!5760 = distinct !DILexicalBlock(scope: !5761, file: !3, line: 278, column: 2)
!5761 = distinct !DILexicalBlock(scope: !5674, file: !3, line: 278, column: 2)
!5762 = !DILocation(line: 278, column: 14, scope: !5760)
!5763 = !DILocation(line: 278, column: 12, scope: !5760)
!5764 = !DILocation(line: 278, column: 2, scope: !5761)
!5765 = !DILocation(line: 279, column: 30, scope: !5760)
!5766 = !DILocation(line: 279, column: 3, scope: !5760)
!5767 = !DILocation(line: 279, column: 12, scope: !5760)
!5768 = !DILocation(line: 279, column: 25, scope: !5760)
!5769 = !DILocation(line: 279, column: 28, scope: !5760)
!5770 = !DILocation(line: 278, column: 23, scope: !5760)
!5771 = !DILocation(line: 278, column: 2, scope: !5760)
!5772 = distinct !{!5772, !5764, !5773}
!5773 = !DILocation(line: 279, column: 30, scope: !5761)
!5774 = !DILocation(line: 282, column: 22, scope: !5674)
!5775 = !DILocation(line: 283, column: 8, scope: !5674)
!5776 = !DILocation(line: 282, column: 52, scope: !5674)
!5777 = !DILocation(line: 282, column: 2, scope: !5674)
!5778 = !DILocation(line: 282, column: 11, scope: !5674)
!5779 = !DILocation(line: 282, column: 20, scope: !5674)
!5780 = !DILocation(line: 284, column: 7, scope: !5674)
!5781 = !DILocation(line: 284, column: 16, scope: !5674)
!5782 = !DILocation(line: 284, column: 26, scope: !5674)
!5783 = !DILocation(line: 284, column: 31, scope: !5674)
!5784 = !DILocation(line: 284, column: 38, scope: !5674)
!5785 = !DILocation(line: 284, column: 2, scope: !5674)
!5786 = !DILocation(line: 285, column: 1, scope: !5674)
!5787 = distinct !DISubprogram(name: "pci1710_ai_eoc", scope: !3, file: !3, line: 287, type: !5788, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!5788 = !DISubroutineType(types: !5789)
!5789 = !{!139, !186, !223, !3946, !197}
!5790 = !DILocalVariable(name: "dev", arg: 1, scope: !5787, file: !3, line: 287, type: !186)
!5791 = !DILocation(line: 287, column: 49, scope: !5787)
!5792 = !DILocalVariable(name: "s", arg: 2, scope: !5787, file: !3, line: 288, type: !223)
!5793 = !DILocation(line: 288, column: 31, scope: !5787)
!5794 = !DILocalVariable(name: "insn", arg: 3, scope: !5787, file: !3, line: 289, type: !3946)
!5795 = !DILocation(line: 289, column: 26, scope: !5787)
!5796 = !DILocalVariable(name: "context", arg: 4, scope: !5787, file: !3, line: 290, type: !197)
!5797 = !DILocation(line: 290, column: 20, scope: !5787)
!5798 = !DILocalVariable(name: "status", scope: !5787, file: !3, line: 292, type: !7)
!5799 = !DILocation(line: 292, column: 15, scope: !5787)
!5800 = !DILocation(line: 294, column: 15, scope: !5787)
!5801 = !DILocation(line: 294, column: 20, scope: !5787)
!5802 = !DILocation(line: 294, column: 27, scope: !5787)
!5803 = !DILocation(line: 294, column: 11, scope: !5787)
!5804 = !DILocation(line: 294, column: 9, scope: !5787)
!5805 = !DILocation(line: 295, column: 7, scope: !5806)
!5806 = distinct !DILexicalBlock(scope: !5787, file: !3, line: 295, column: 6)
!5807 = !DILocation(line: 295, column: 14, scope: !5806)
!5808 = !DILocation(line: 295, column: 35, scope: !5806)
!5809 = !DILocation(line: 295, column: 6, scope: !5787)
!5810 = !DILocation(line: 296, column: 3, scope: !5806)
!5811 = !DILocation(line: 297, column: 2, scope: !5787)
!5812 = !DILocation(line: 298, column: 1, scope: !5787)
!5813 = distinct !DISubprogram(name: "comedi_check_trigger_src", scope: !128, file: !128, line: 859, type: !5814, scopeLine: 861, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!5814 = !DISubroutineType(types: !5815)
!5815 = !{!139, !2712, !7}
!5816 = !DILocalVariable(name: "src", arg: 1, scope: !5813, file: !128, line: 859, type: !2712)
!5817 = !DILocation(line: 859, column: 58, scope: !5813)
!5818 = !DILocalVariable(name: "flags", arg: 2, scope: !5813, file: !128, line: 860, type: !7)
!5819 = !DILocation(line: 860, column: 22, scope: !5813)
!5820 = !DILocalVariable(name: "orig_src", scope: !5813, file: !128, line: 862, type: !7)
!5821 = !DILocation(line: 862, column: 15, scope: !5813)
!5822 = !DILocation(line: 862, column: 27, scope: !5813)
!5823 = !DILocation(line: 862, column: 26, scope: !5813)
!5824 = !DILocation(line: 864, column: 9, scope: !5813)
!5825 = !DILocation(line: 864, column: 20, scope: !5813)
!5826 = !DILocation(line: 864, column: 18, scope: !5813)
!5827 = !DILocation(line: 864, column: 3, scope: !5813)
!5828 = !DILocation(line: 864, column: 7, scope: !5813)
!5829 = !DILocation(line: 865, column: 7, scope: !5830)
!5830 = distinct !DILexicalBlock(scope: !5813, file: !128, line: 865, column: 6)
!5831 = !DILocation(line: 865, column: 6, scope: !5830)
!5832 = !DILocation(line: 865, column: 11, scope: !5830)
!5833 = !DILocation(line: 865, column: 27, scope: !5830)
!5834 = !DILocation(line: 865, column: 31, scope: !5830)
!5835 = !DILocation(line: 865, column: 30, scope: !5830)
!5836 = !DILocation(line: 865, column: 38, scope: !5830)
!5837 = !DILocation(line: 865, column: 35, scope: !5830)
!5838 = !DILocation(line: 865, column: 6, scope: !5813)
!5839 = !DILocation(line: 866, column: 3, scope: !5830)
!5840 = !DILocation(line: 867, column: 2, scope: !5813)
!5841 = !DILocation(line: 868, column: 1, scope: !5813)
!5842 = distinct !DISubprogram(name: "comedi_check_trigger_is_unique", scope: !128, file: !128, line: 878, type: !5843, scopeLine: 879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!5843 = !DISubroutineType(types: !5844)
!5844 = !{!139, !7}
!5845 = !DILocalVariable(name: "src", arg: 1, scope: !5842, file: !128, line: 878, type: !7)
!5846 = !DILocation(line: 878, column: 63, scope: !5842)
!5847 = !DILocation(line: 881, column: 7, scope: !5848)
!5848 = distinct !DILexicalBlock(scope: !5842, file: !128, line: 881, column: 6)
!5849 = !DILocation(line: 881, column: 14, scope: !5848)
!5850 = !DILocation(line: 881, column: 18, scope: !5848)
!5851 = !DILocation(line: 881, column: 11, scope: !5848)
!5852 = !DILocation(line: 881, column: 24, scope: !5848)
!5853 = !DILocation(line: 881, column: 6, scope: !5842)
!5854 = !DILocation(line: 882, column: 3, scope: !5848)
!5855 = !DILocation(line: 883, column: 2, scope: !5842)
!5856 = !DILocation(line: 884, column: 1, scope: !5842)
!5857 = distinct !DISubprogram(name: "comedi_check_trigger_arg_is", scope: !128, file: !128, line: 897, type: !5814, scopeLine: 899, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!5858 = !DILocalVariable(name: "arg", arg: 1, scope: !5857, file: !128, line: 897, type: !2712)
!5859 = !DILocation(line: 897, column: 61, scope: !5857)
!5860 = !DILocalVariable(name: "val", arg: 2, scope: !5857, file: !128, line: 898, type: !7)
!5861 = !DILocation(line: 898, column: 25, scope: !5857)
!5862 = !DILocation(line: 900, column: 7, scope: !5863)
!5863 = distinct !DILexicalBlock(scope: !5857, file: !128, line: 900, column: 6)
!5864 = !DILocation(line: 900, column: 6, scope: !5863)
!5865 = !DILocation(line: 900, column: 14, scope: !5863)
!5866 = !DILocation(line: 900, column: 11, scope: !5863)
!5867 = !DILocation(line: 900, column: 6, scope: !5857)
!5868 = !DILocation(line: 901, column: 10, scope: !5869)
!5869 = distinct !DILexicalBlock(scope: !5863, file: !128, line: 900, column: 19)
!5870 = !DILocation(line: 901, column: 4, scope: !5869)
!5871 = !DILocation(line: 901, column: 8, scope: !5869)
!5872 = !DILocation(line: 902, column: 3, scope: !5869)
!5873 = !DILocation(line: 904, column: 2, scope: !5857)
!5874 = !DILocation(line: 905, column: 1, scope: !5857)
!5875 = distinct !DISubprogram(name: "comedi_check_trigger_arg_min", scope: !128, file: !128, line: 918, type: !5814, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!5876 = !DILocalVariable(name: "arg", arg: 1, scope: !5875, file: !128, line: 918, type: !2712)
!5877 = !DILocation(line: 918, column: 62, scope: !5875)
!5878 = !DILocalVariable(name: "val", arg: 2, scope: !5875, file: !128, line: 919, type: !7)
!5879 = !DILocation(line: 919, column: 26, scope: !5875)
!5880 = !DILocation(line: 921, column: 7, scope: !5881)
!5881 = distinct !DILexicalBlock(scope: !5875, file: !128, line: 921, column: 6)
!5882 = !DILocation(line: 921, column: 6, scope: !5881)
!5883 = !DILocation(line: 921, column: 13, scope: !5881)
!5884 = !DILocation(line: 921, column: 11, scope: !5881)
!5885 = !DILocation(line: 921, column: 6, scope: !5875)
!5886 = !DILocation(line: 922, column: 10, scope: !5887)
!5887 = distinct !DILexicalBlock(scope: !5881, file: !128, line: 921, column: 18)
!5888 = !DILocation(line: 922, column: 4, scope: !5887)
!5889 = !DILocation(line: 922, column: 8, scope: !5887)
!5890 = !DILocation(line: 923, column: 3, scope: !5887)
!5891 = !DILocation(line: 925, column: 2, scope: !5875)
!5892 = !DILocation(line: 926, column: 1, scope: !5875)
!5893 = distinct !DISubprogram(name: "pci1710_ai_check_chanlist", scope: !3, file: !3, line: 181, type: !3931, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!5894 = !DILocalVariable(name: "dev", arg: 1, scope: !5893, file: !3, line: 181, type: !186)
!5895 = !DILocation(line: 181, column: 60, scope: !5893)
!5896 = !DILocalVariable(name: "s", arg: 2, scope: !5893, file: !3, line: 182, type: !223)
!5897 = !DILocation(line: 182, column: 35, scope: !5893)
!5898 = !DILocalVariable(name: "cmd", arg: 3, scope: !5893, file: !3, line: 183, type: !3933)
!5899 = !DILocation(line: 183, column: 29, scope: !5893)
!5900 = !DILocalVariable(name: "devpriv", scope: !5893, file: !3, line: 185, type: !4338)
!5901 = !DILocation(line: 185, column: 26, scope: !5893)
!5902 = !DILocation(line: 185, column: 36, scope: !5893)
!5903 = !DILocation(line: 185, column: 41, scope: !5893)
!5904 = !DILocalVariable(name: "chan0", scope: !5893, file: !3, line: 186, type: !7)
!5905 = !DILocation(line: 186, column: 15, scope: !5893)
!5906 = !DILocation(line: 186, column: 23, scope: !5893)
!5907 = !DILocalVariable(name: "last_aref", scope: !5893, file: !3, line: 187, type: !7)
!5908 = !DILocation(line: 187, column: 15, scope: !5893)
!5909 = !DILocation(line: 187, column: 27, scope: !5893)
!5910 = !DILocalVariable(name: "next_chan", scope: !5893, file: !3, line: 188, type: !7)
!5911 = !DILocation(line: 188, column: 15, scope: !5893)
!5912 = !DILocation(line: 188, column: 28, scope: !5893)
!5913 = !DILocation(line: 188, column: 34, scope: !5893)
!5914 = !DILocation(line: 188, column: 41, scope: !5893)
!5915 = !DILocation(line: 188, column: 44, scope: !5893)
!5916 = !DILocation(line: 188, column: 39, scope: !5893)
!5917 = !DILocalVariable(name: "chansegment", scope: !5893, file: !3, line: 189, type: !4347)
!5918 = !DILocation(line: 189, column: 15, scope: !5893)
!5919 = !DILocalVariable(name: "seglen", scope: !5893, file: !3, line: 190, type: !7)
!5920 = !DILocation(line: 190, column: 15, scope: !5893)
!5921 = !DILocalVariable(name: "i", scope: !5893, file: !3, line: 191, type: !139)
!5922 = !DILocation(line: 191, column: 6, scope: !5893)
!5923 = !DILocation(line: 193, column: 6, scope: !5924)
!5924 = distinct !DILexicalBlock(scope: !5893, file: !3, line: 193, column: 6)
!5925 = !DILocation(line: 193, column: 11, scope: !5924)
!5926 = !DILocation(line: 193, column: 24, scope: !5924)
!5927 = !DILocation(line: 193, column: 6, scope: !5893)
!5928 = !DILocation(line: 194, column: 27, scope: !5929)
!5929 = distinct !DILexicalBlock(scope: !5924, file: !3, line: 193, column: 30)
!5930 = !DILocation(line: 194, column: 32, scope: !5929)
!5931 = !DILocation(line: 194, column: 3, scope: !5929)
!5932 = !DILocation(line: 194, column: 12, scope: !5929)
!5933 = !DILocation(line: 194, column: 25, scope: !5929)
!5934 = !DILocation(line: 195, column: 3, scope: !5929)
!5935 = !DILocation(line: 199, column: 19, scope: !5893)
!5936 = !DILocation(line: 199, column: 24, scope: !5893)
!5937 = !DILocation(line: 199, column: 2, scope: !5893)
!5938 = !DILocation(line: 199, column: 17, scope: !5893)
!5939 = !DILocation(line: 201, column: 9, scope: !5940)
!5940 = distinct !DILexicalBlock(scope: !5893, file: !3, line: 201, column: 2)
!5941 = !DILocation(line: 201, column: 7, scope: !5940)
!5942 = !DILocation(line: 201, column: 14, scope: !5943)
!5943 = distinct !DILexicalBlock(scope: !5940, file: !3, line: 201, column: 2)
!5944 = !DILocation(line: 201, column: 18, scope: !5943)
!5945 = !DILocation(line: 201, column: 23, scope: !5943)
!5946 = !DILocation(line: 201, column: 16, scope: !5943)
!5947 = !DILocation(line: 201, column: 2, scope: !5940)
!5948 = !DILocalVariable(name: "chan", scope: !5949, file: !3, line: 202, type: !7)
!5949 = distinct !DILexicalBlock(scope: !5943, file: !3, line: 201, column: 42)
!5950 = !DILocation(line: 202, column: 16, scope: !5949)
!5951 = !DILocation(line: 202, column: 23, scope: !5949)
!5952 = !DILocalVariable(name: "aref", scope: !5949, file: !3, line: 203, type: !7)
!5953 = !DILocation(line: 203, column: 16, scope: !5949)
!5954 = !DILocation(line: 203, column: 23, scope: !5949)
!5955 = !DILocation(line: 205, column: 7, scope: !5956)
!5956 = distinct !DILexicalBlock(scope: !5949, file: !3, line: 205, column: 7)
!5957 = !DILocation(line: 205, column: 12, scope: !5956)
!5958 = !DILocation(line: 205, column: 27, scope: !5956)
!5959 = !DILocation(line: 205, column: 32, scope: !5956)
!5960 = !DILocation(line: 205, column: 41, scope: !5956)
!5961 = !DILocation(line: 205, column: 24, scope: !5956)
!5962 = !DILocation(line: 205, column: 7, scope: !5949)
!5963 = !DILocation(line: 206, column: 4, scope: !5956)
!5964 = !DILocation(line: 208, column: 7, scope: !5965)
!5965 = distinct !DILexicalBlock(scope: !5949, file: !3, line: 208, column: 7)
!5966 = !DILocation(line: 208, column: 12, scope: !5965)
!5967 = !DILocation(line: 208, column: 25, scope: !5965)
!5968 = !DILocation(line: 208, column: 29, scope: !5965)
!5969 = !DILocation(line: 208, column: 34, scope: !5965)
!5970 = !DILocation(line: 208, column: 7, scope: !5949)
!5971 = !DILocation(line: 209, column: 4, scope: !5972)
!5972 = distinct !DILexicalBlock(scope: !5965, file: !3, line: 208, column: 40)
!5973 = !DILocation(line: 211, column: 4, scope: !5972)
!5974 = !DILocation(line: 214, column: 7, scope: !5975)
!5975 = distinct !DILexicalBlock(scope: !5949, file: !3, line: 214, column: 7)
!5976 = !DILocation(line: 214, column: 17, scope: !5975)
!5977 = !DILocation(line: 214, column: 7, scope: !5949)
!5978 = !DILocation(line: 215, column: 17, scope: !5975)
!5979 = !DILocation(line: 215, column: 27, scope: !5975)
!5980 = !DILocation(line: 215, column: 34, scope: !5975)
!5981 = !DILocation(line: 215, column: 37, scope: !5975)
!5982 = !DILocation(line: 215, column: 32, scope: !5975)
!5983 = !DILocation(line: 215, column: 14, scope: !5975)
!5984 = !DILocation(line: 215, column: 4, scope: !5975)
!5985 = !DILocation(line: 216, column: 7, scope: !5986)
!5986 = distinct !DILexicalBlock(scope: !5949, file: !3, line: 216, column: 7)
!5987 = !DILocation(line: 216, column: 15, scope: !5986)
!5988 = !DILocation(line: 216, column: 12, scope: !5986)
!5989 = !DILocation(line: 216, column: 7, scope: !5949)
!5990 = !DILocation(line: 217, column: 4, scope: !5991)
!5991 = distinct !DILexicalBlock(scope: !5986, file: !3, line: 216, column: 26)
!5992 = !DILocation(line: 220, column: 4, scope: !5991)
!5993 = !DILocation(line: 224, column: 20, scope: !5949)
!5994 = !DILocation(line: 224, column: 25, scope: !5949)
!5995 = !DILocation(line: 224, column: 34, scope: !5949)
!5996 = !DILocation(line: 224, column: 15, scope: !5949)
!5997 = !DILocation(line: 224, column: 3, scope: !5949)
!5998 = !DILocation(line: 224, column: 18, scope: !5949)
!5999 = !DILocation(line: 225, column: 15, scope: !5949)
!6000 = !DILocation(line: 225, column: 13, scope: !5949)
!6001 = !DILocation(line: 226, column: 2, scope: !5949)
!6002 = !DILocation(line: 201, column: 38, scope: !5943)
!6003 = !DILocation(line: 201, column: 2, scope: !5943)
!6004 = distinct !{!6004, !5947, !6005}
!6005 = !DILocation(line: 226, column: 2, scope: !5940)
!6006 = !DILocation(line: 227, column: 11, scope: !5893)
!6007 = !DILocation(line: 227, column: 9, scope: !5893)
!6008 = !DILocation(line: 229, column: 9, scope: !6009)
!6009 = distinct !DILexicalBlock(scope: !5893, file: !3, line: 229, column: 2)
!6010 = !DILocation(line: 229, column: 7, scope: !6009)
!6011 = !DILocation(line: 229, column: 14, scope: !6012)
!6012 = distinct !DILexicalBlock(scope: !6009, file: !3, line: 229, column: 2)
!6013 = !DILocation(line: 229, column: 18, scope: !6012)
!6014 = !DILocation(line: 229, column: 23, scope: !6012)
!6015 = !DILocation(line: 229, column: 16, scope: !6012)
!6016 = !DILocation(line: 229, column: 2, scope: !6009)
!6017 = !DILocation(line: 230, column: 7, scope: !6018)
!6018 = distinct !DILexicalBlock(scope: !6019, file: !3, line: 230, column: 7)
!6019 = distinct !DILexicalBlock(scope: !6012, file: !3, line: 229, column: 42)
!6020 = !DILocation(line: 230, column: 12, scope: !6018)
!6021 = !DILocation(line: 230, column: 21, scope: !6018)
!6022 = !DILocation(line: 230, column: 39, scope: !6018)
!6023 = !DILocation(line: 230, column: 43, scope: !6018)
!6024 = !DILocation(line: 230, column: 41, scope: !6018)
!6025 = !DILocation(line: 230, column: 27, scope: !6018)
!6026 = !DILocation(line: 230, column: 24, scope: !6018)
!6027 = !DILocation(line: 230, column: 7, scope: !6019)
!6028 = !DILocation(line: 231, column: 4, scope: !6029)
!6029 = distinct !DILexicalBlock(scope: !6018, file: !3, line: 230, column: 52)
!6030 = !DILocation(line: 239, column: 4, scope: !6029)
!6031 = !DILocation(line: 241, column: 2, scope: !6019)
!6032 = !DILocation(line: 229, column: 38, scope: !6012)
!6033 = !DILocation(line: 229, column: 2, scope: !6012)
!6034 = distinct !{!6034, !6016, !6035}
!6035 = !DILocation(line: 241, column: 2, scope: !6009)
!6036 = !DILocation(line: 242, column: 26, scope: !5893)
!6037 = !DILocation(line: 242, column: 2, scope: !5893)
!6038 = !DILocation(line: 242, column: 11, scope: !5893)
!6039 = !DILocation(line: 242, column: 24, scope: !5893)
!6040 = !DILocation(line: 244, column: 2, scope: !5893)
!6041 = !DILocation(line: 245, column: 1, scope: !5893)
!6042 = distinct !DISubprogram(name: "adv_pci1710_pci_probe", scope: !3, file: !3, line: 887, type: !4052, scopeLine: 889, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!6043 = !DILocalVariable(name: "dev", arg: 1, scope: !6042, file: !3, line: 887, type: !4054)
!6044 = !DILocation(line: 887, column: 50, scope: !6042)
!6045 = !DILocalVariable(name: "id", arg: 2, scope: !6042, file: !3, line: 888, type: !4039)
!6046 = !DILocation(line: 888, column: 34, scope: !6042)
!6047 = !DILocation(line: 890, column: 32, scope: !6042)
!6048 = !DILocation(line: 891, column: 11, scope: !6042)
!6049 = !DILocation(line: 891, column: 15, scope: !6042)
!6050 = !DILocation(line: 890, column: 9, scope: !6042)
!6051 = !DILocation(line: 890, column: 2, scope: !6042)
