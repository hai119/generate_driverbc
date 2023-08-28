; ModuleID = '../bcout/drivers/staging/comedi/drivers/usbduxfast.llvm.bc'
source_filename = "drivers/staging/comedi/drivers/usbduxfast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_usbduxfast_driver_init6:\09\09\09"
module asm ".long\09usbduxfast_driver_init - .\09\09\09"
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
%struct.usb_driver = type { i8*, i32 (%struct.usb_interface*, %struct.usb_device_id*)*, void (%struct.usb_interface*)*, i32 (%struct.usb_interface*, i32, i8*)*, i32 (%struct.usb_interface*, i32)*, i32 (%struct.usb_interface*)*, i32 (%struct.usb_interface*)*, i32 (%struct.usb_interface*)*, i32 (%struct.usb_interface*)*, %struct.usb_device_id*, %struct.attribute_group**, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_interface = type { %struct.usb_host_interface*, %struct.usb_host_interface*, i32, %struct.usb_interface_assoc_descriptor*, i32, i32, i8, %struct.device, %struct.device*, %struct.work_struct }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, i8*, %struct.usb_host_endpoint*, i8* }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, i8*, %struct.ep_device*, i8*, i32, i32, i32, [4 x i8] }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.ep_device = type opaque
%struct.usb_interface_assoc_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i64 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.kmem_cache = type opaque
%struct.usbduxfast_private = type { %struct.urb*, i8*, i8*, i16, i32, %struct.mutex }
%struct.urb = type { %struct.kref, i32, i8*, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.usb_anchor*, %struct.usb_device*, %struct.usb_host_endpoint*, i32, i32, i32, i32, i8*, i64, %struct.scatterlist*, i32, i32, i32, i32, i8*, i64, i32, i32, i32, i32, i8*, void (%struct.urb*)*, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, %struct.usb_tt*, i32, [2 x i32], [4 x i8], %struct.usb_device*, %struct.usb_bus*, %struct.usb_host_endpoint, %struct.device, %struct.usb_device_descriptor, [6 x i8], %struct.usb_host_bos*, %struct.usb_host_config*, %struct.usb_host_config*, [16 x %struct.usb_host_endpoint*], [16 x %struct.usb_host_endpoint*], i8**, i16, i8, i8, i8, i16, i8, i32, [4 x i8], i8*, i8*, i8*, %struct.list_head, i32, i32, %struct.atomic_t, [4 x i8], i64, i64, i8, [7 x i8], %struct.wusb_dev*, i32, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, i8 }>
%struct.usb_tt = type opaque
%struct.usb_bus = type { %struct.device*, %struct.device*, i32, i8*, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, %struct.usb_device*, %struct.usb_bus*, i32, i32, i32, i32 }
%struct.usb_devmap = type { [2 x i64] }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb_host_bos = type { %struct.usb_bos_descriptor*, %struct.usb_ext_cap_descriptor*, %struct.usb_ss_cap_descriptor*, %struct.usb_ssp_cap_descriptor*, %struct.usb_ss_container_id_descriptor*, %struct.usb_ptm_cap_descriptor* }
%struct.usb_bos_descriptor = type <{ i8, i8, i16, i8 }>
%struct.usb_ext_cap_descriptor = type <{ i8, i8, i8, i32 }>
%struct.usb_ss_cap_descriptor = type { i8, i8, i8, i8, i16, i8, i8, i16 }
%struct.usb_ssp_cap_descriptor = type { i8, i8, i8, i8, i32, i16, i16, [1 x i32] }
%struct.usb_ss_container_id_descriptor = type { i8, i8, i8, i8, [16 x i8] }
%struct.usb_ptm_cap_descriptor = type { i8, i8, i8 }
%struct.usb_host_config = type { %struct.usb_config_descriptor, i8*, [16 x %struct.usb_interface_assoc_descriptor*], [32 x %struct.usb_interface*], [32 x %struct.usb_interface_cache*], i8*, i32 }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_interface_cache = type { i32, %struct.kref, [0 x %struct.usb_host_interface] }
%struct.wusb_dev = type opaque
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.scatterlist = type { i64, i32, i32, i64, i32 }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }

@__UNIQUE_ID___addressable_usbduxfast_driver_init240 = internal global i8* bitcast (i32 ()* @usbduxfast_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@usbduxfast_driver = internal global %struct.comedi_driver { %struct.comedi_driver* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), %struct.module* null, i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* null, void (%struct.comedi_device*)* @usbduxfast_detach, i32 (%struct.comedi_device*, i64)* @usbduxfast_auto_attach, i32 0, i8** null, i32 0 }, align 8, !dbg !212
@usbduxfast_usb_driver = internal global %struct.usb_driver { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 (%struct.usb_interface*, %struct.usb_device_id*)* @usbduxfast_usb_probe, void (%struct.usb_interface*)* @comedi_usb_auto_unconfig, i32 (%struct.usb_interface*, i32, i8*)* null, i32 (%struct.usb_interface*, i32)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, %struct.usb_device_id* getelementptr inbounds ([3 x %struct.usb_device_id], [3 x %struct.usb_device_id]* @usbduxfast_usb_table, i32 0, i32 0), %struct.attribute_group** null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, align 8, !dbg !4030
@__exitcall_usbduxfast_driver_exit = internal global void ()* @usbduxfast_driver_exit, section ".exitcall.exit", align 8, !dbg !178
@__UNIQUE_ID_author241 = internal constant [48 x i8] c"usbduxfast.author=Bernd Porr, BerndPorr@f2s.com\00", section ".modinfo", align 1, !dbg !185
@__UNIQUE_ID_description242 = internal constant [54 x i8] c"usbduxfast.description=USB-DUXfast, BerndPorr@f2s.com\00", section ".modinfo", align 1, !dbg !192
@__UNIQUE_ID_file243 = internal constant [58 x i8] c"usbduxfast.file=drivers/staging/comedi/drivers/usbduxfast\00", section ".modinfo", align 1, !dbg !197
@__UNIQUE_ID_license244 = internal constant [23 x i8] c"usbduxfast.license=GPL\00", section ".modinfo", align 1, !dbg !202
@__UNIQUE_ID_firmware245 = internal constant [44 x i8] c"usbduxfast.firmware=usbduxfast_firmware.bin\00", section ".modinfo", align 1, !dbg !207
@.str = private unnamed_addr constant [11 x i8] c"usbduxfast\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"This driver needs USB 2.0 to operate. Aborting...\0A\00", align 1
@usbduxfast_auto_attach.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4025
@.str.2 = private unnamed_addr constant [14 x i8] c"&devpriv->mut\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"could not switch to alternate setting 1\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"usbduxfast_firmware.bin\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"firmware binary too large for FX2\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"can not stop firmware\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"firmware upload failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"can not start firmware\0A\00", align 1
@range_usbduxfast_ai_range = internal constant { i32, [2 x %struct.comedi_krange] } { i32 2, [2 x %struct.comedi_krange] [%struct.comedi_krange { i32 -750000, i32 750000, i32 0 }, %struct.comedi_krange { i32 -500000, i32 500000, i32 0 }] }, align 4, !dbg !4028
@.str.11 = private unnamed_addr constant [49 x i8] c"ai_insn_read not possible, async cmd is running\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"insn timeout, no data\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"insn data error: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"insn data packet corrupted\0A\00", align 1
@.str.15 = private unnamed_addr constant [54 x i8] c"could not transmit command to the usb-device, err=%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"unsupported combination of channels\0A\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"channels are not consecutive\0A\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"gain must be the same for all channels\0A\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"usb_submit_urb error %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [53 x i8] c"non-zero urb status received in ai intr context: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"urb resubm failed: %d\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"urbSubmit: err=%d\0A\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"ai is already running\0A\00", align 1
@usbduxfast_usb_table = internal constant [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 5080, i16 16, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 0 }, %struct.usb_device_id { i16 3, i16 5080, i16 17, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 0 }, %struct.usb_device_id zeroinitializer], align 16, !dbg !4182
@llvm.used = appending global [8 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_usbduxfast_driver_init240 to i8*), i8* bitcast (void ()* @usbduxfast_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_usbduxfast_driver_exit to i8*), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__UNIQUE_ID_author241, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__UNIQUE_ID_description242, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__UNIQUE_ID_file243, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__UNIQUE_ID_license244, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__UNIQUE_ID_firmware245, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @usbduxfast_driver_init() #0 section ".init.text" !dbg !4190 {
entry:
  %call = call i32 @comedi_usb_driver_register(%struct.comedi_driver* @usbduxfast_driver, %struct.usb_driver* @usbduxfast_usb_driver) #8, !dbg !4193
  ret i32 %call, !dbg !4193
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @usbduxfast_driver_exit() #0 section ".exit.text" !dbg !4194 {
entry:
  call void @comedi_usb_driver_unregister(%struct.comedi_driver* @usbduxfast_driver, %struct.usb_driver* @usbduxfast_usb_driver) #8, !dbg !4195
  ret void, !dbg !4195
}

; Function Attrs: noredzone
declare dso_local void @comedi_usb_driver_unregister(%struct.comedi_driver*, %struct.usb_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_usb_driver_register(%struct.comedi_driver*, %struct.usb_driver*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usbduxfast_detach(%struct.comedi_device* %dev) #2 !dbg !4196 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %intf = alloca %struct.usb_interface*, align 8
  %devpriv = alloca %struct.usbduxfast_private*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4197, metadata !DIExpression()), !dbg !4198
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf, metadata !4199, metadata !DIExpression()), !dbg !4200
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4201
  %call = call %struct.usb_interface* @comedi_to_usb_interface(%struct.comedi_device* %0) #8, !dbg !4202
  store %struct.usb_interface* %call, %struct.usb_interface** %intf, align 8, !dbg !4200
  call void @llvm.dbg.declare(metadata %struct.usbduxfast_private** %devpriv, metadata !4203, metadata !DIExpression()), !dbg !4492
  %1 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4493
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %1, i32 0, i32 3, !dbg !4494
  %2 = load i8*, i8** %private, align 8, !dbg !4494
  %3 = bitcast i8* %2 to %struct.usbduxfast_private*, !dbg !4493
  store %struct.usbduxfast_private* %3, %struct.usbduxfast_private** %devpriv, align 8, !dbg !4492
  %4 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !4495
  %tobool = icmp ne %struct.usbduxfast_private* %4, null, !dbg !4495
  br i1 %tobool, label %if.end, label %if.then, !dbg !4497

if.then:                                          ; preds = %entry
  br label %return, !dbg !4498

if.end:                                           ; preds = %entry
  %5 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !4499
  %mut = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %5, i32 0, i32 5, !dbg !4500
  call void @mutex_lock(%struct.mutex* %mut) #8, !dbg !4501
  %6 = load %struct.usb_interface*, %struct.usb_interface** %intf, align 8, !dbg !4502
  call void @usb_set_intfdata(%struct.usb_interface* %6, i8* null) #8, !dbg !4503
  %7 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !4504
  %urb = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %7, i32 0, i32 0, !dbg !4506
  %8 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !4506
  %tobool1 = icmp ne %struct.urb* %8, null, !dbg !4504
  br i1 %tobool1, label %if.then2, label %if.end5, !dbg !4507

if.then2:                                         ; preds = %if.end
  %9 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !4508
  %urb3 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %9, i32 0, i32 0, !dbg !4510
  %10 = load %struct.urb*, %struct.urb** %urb3, align 8, !dbg !4510
  call void @usb_kill_urb(%struct.urb* %10) #8, !dbg !4511
  %11 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !4512
  %inbuf = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %11, i32 0, i32 2, !dbg !4513
  %12 = load i8*, i8** %inbuf, align 8, !dbg !4513
  call void @kfree(i8* %12) #8, !dbg !4514
  %13 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !4515
  %urb4 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %13, i32 0, i32 0, !dbg !4516
  %14 = load %struct.urb*, %struct.urb** %urb4, align 8, !dbg !4516
  call void @usb_free_urb(%struct.urb* %14) #8, !dbg !4517
  br label %if.end5, !dbg !4518

if.end5:                                          ; preds = %if.then2, %if.end
  %15 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !4519
  %duxbuf = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %15, i32 0, i32 1, !dbg !4520
  %16 = load i8*, i8** %duxbuf, align 8, !dbg !4520
  call void @kfree(i8* %16) #8, !dbg !4521
  %17 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !4522
  %mut6 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %17, i32 0, i32 5, !dbg !4523
  call void @mutex_unlock(%struct.mutex* %mut6) #8, !dbg !4524
  %18 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !4525
  %mut7 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %18, i32 0, i32 5, !dbg !4526
  call void @mutex_destroy(%struct.mutex* %mut7) #8, !dbg !4527
  br label %return, !dbg !4528

return:                                           ; preds = %if.end5, %if.then
  ret void, !dbg !4528
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usbduxfast_auto_attach(%struct.comedi_device* %dev, i64 %context_unused) #2 !dbg !4027 {
entry:
  %s.addr.i.i36 = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i36, metadata !4529, metadata !DIExpression()), !dbg !4533
  %flags.addr.i17.i37 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i37, metadata !4541, metadata !DIExpression()), !dbg !4542
  %size.addr.i18.i38 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i38, metadata !4543, metadata !DIExpression()), !dbg !4544
  %ret.i.i39 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i39, metadata !4545, metadata !DIExpression()), !dbg !4546
  %retval.i12.i40 = alloca i32, align 4
  %flags.addr.i13.i41 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i41, metadata !4547, metadata !DIExpression()), !dbg !4551
  %retval.i.i42 = alloca i32, align 4
  %size.addr.i11.i43 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i43, metadata !4553, metadata !DIExpression()), !dbg !4557
  %size.addr.i.i.i44 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i44, metadata !4559, metadata !DIExpression()), !dbg !4563
  %flags.addr.i.i.i45 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i45, metadata !4568, metadata !DIExpression()), !dbg !4569
  %order.addr.i.i.i46 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i46, metadata !4570, metadata !DIExpression()), !dbg !4571
  %size.addr.i.i47 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i47, metadata !4572, metadata !DIExpression()), !dbg !4573
  %flags.addr.i.i48 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i48, metadata !4574, metadata !DIExpression()), !dbg !4575
  %order.i.i49 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i49, metadata !4576, metadata !DIExpression()), !dbg !4577
  %retval.i50 = alloca i8*, align 8
  %size.addr.i51 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i51, metadata !4578, metadata !DIExpression()), !dbg !4579
  %flags.addr.i52 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i52, metadata !4580, metadata !DIExpression()), !dbg !4581
  %index.i53 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i53, metadata !4582, metadata !DIExpression()), !dbg !4583
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4529, metadata !DIExpression()), !dbg !4584
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4541, metadata !DIExpression()), !dbg !4587
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4543, metadata !DIExpression()), !dbg !4588
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4545, metadata !DIExpression()), !dbg !4589
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4547, metadata !DIExpression()), !dbg !4590
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4553, metadata !DIExpression()), !dbg !4592
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4559, metadata !DIExpression()), !dbg !4594
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4568, metadata !DIExpression()), !dbg !4597
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4570, metadata !DIExpression()), !dbg !4598
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4572, metadata !DIExpression()), !dbg !4599
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4574, metadata !DIExpression()), !dbg !4600
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4576, metadata !DIExpression()), !dbg !4601
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4578, metadata !DIExpression()), !dbg !4602
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4580, metadata !DIExpression()), !dbg !4603
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4582, metadata !DIExpression()), !dbg !4604
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %context_unused.addr = alloca i64, align 8
  %intf = alloca %struct.usb_interface*, align 8
  %usb = alloca %struct.usb_device*, align 8
  %devpriv = alloca %struct.usbduxfast_private*, align 8
  %s = alloca %struct.comedi_subdevice*, align 8
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4605, metadata !DIExpression()), !dbg !4606
  store i64 %context_unused, i64* %context_unused.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %context_unused.addr, metadata !4607, metadata !DIExpression()), !dbg !4608
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf, metadata !4609, metadata !DIExpression()), !dbg !4610
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4611
  %call = call %struct.usb_interface* @comedi_to_usb_interface(%struct.comedi_device* %0) #8, !dbg !4612
  store %struct.usb_interface* %call, %struct.usb_interface** %intf, align 8, !dbg !4610
  call void @llvm.dbg.declare(metadata %struct.usb_device** %usb, metadata !4613, metadata !DIExpression()), !dbg !4614
  %1 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4615
  %call1 = call %struct.usb_device* @comedi_to_usb_dev(%struct.comedi_device* %1) #8, !dbg !4616
  store %struct.usb_device* %call1, %struct.usb_device** %usb, align 8, !dbg !4614
  call void @llvm.dbg.declare(metadata %struct.usbduxfast_private** %devpriv, metadata !4617, metadata !DIExpression()), !dbg !4618
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s, metadata !4619, metadata !DIExpression()), !dbg !4620
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4621, metadata !DIExpression()), !dbg !4622
  %2 = load %struct.usb_device*, %struct.usb_device** %usb, align 8, !dbg !4623
  %speed = getelementptr inbounds %struct.usb_device, %struct.usb_device* %2, i32 0, i32 4, !dbg !4625
  %3 = load i32, i32* %speed, align 4, !dbg !4625
  %cmp = icmp ne i32 %3, 3, !dbg !4626
  br i1 %cmp, label %if.then, label %if.end, !dbg !4627

if.then:                                          ; preds = %entry
  %4 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4628
  %class_dev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 4, !dbg !4628
  %5 = load %struct.device*, %struct.device** %class_dev, align 8, !dbg !4628
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %5, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !4628
  store i32 -19, i32* %retval, align 4, !dbg !4630
  br label %return, !dbg !4630

if.end:                                           ; preds = %entry
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4631
  %call2 = call i8* @comedi_alloc_devpriv(%struct.comedi_device* %6, i64 56) #8, !dbg !4632
  %7 = bitcast i8* %call2 to %struct.usbduxfast_private*, !dbg !4632
  store %struct.usbduxfast_private* %7, %struct.usbduxfast_private** %devpriv, align 8, !dbg !4633
  %8 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !4634
  %tobool = icmp ne %struct.usbduxfast_private* %8, null, !dbg !4634
  br i1 %tobool, label %if.end4, label %if.then3, !dbg !4636

if.then3:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !4637
  br label %return, !dbg !4637

if.end4:                                          ; preds = %if.end
  br label %do.body, !dbg !4638

do.body:                                          ; preds = %if.end4
  %9 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !4639
  %mut = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %9, i32 0, i32 5, !dbg !4639
  call void @__mutex_init(%struct.mutex* %mut, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), %struct.lock_class_key* @usbduxfast_auto_attach.__key) #8, !dbg !4639
  br label %do.end, !dbg !4639

do.end:                                           ; preds = %do.body
  %10 = load %struct.usb_interface*, %struct.usb_interface** %intf, align 8, !dbg !4641
  %11 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !4642
  %12 = bitcast %struct.usbduxfast_private* %11 to i8*, !dbg !4642
  call void @usb_set_intfdata(%struct.usb_interface* %10, i8* %12) #8, !dbg !4643
  store i64 256, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %13 = load i64, i64* %size.addr.i, align 8, !dbg !4644
  %14 = call i1 @llvm.is.constant.i64(i64 %13) #10, !dbg !4645
  br i1 %14, label %if.then.i, label %if.end9.i, !dbg !4646

if.then.i:                                        ; preds = %do.end
  %15 = load i64, i64* %size.addr.i, align 8, !dbg !4647
  %cmp.i = icmp ugt i64 %15, 8192, !dbg !4648
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4649

if.then1.i:                                       ; preds = %if.then.i
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !4650
  %17 = load i32, i32* %flags.addr.i, align 4, !dbg !4651
  store i64 %16, i64* %size.addr.i.i, align 8
  store i32 %17, i32* %flags.addr.i.i, align 4
  %18 = load i64, i64* %size.addr.i.i, align 8, !dbg !4652
  %call.i.i = call i32 @get_order(i64 %18) #11, !dbg !4653
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4601
  %19 = load i64, i64* %size.addr.i.i, align 8, !dbg !4654
  %20 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4655
  %21 = load i32, i32* %order.i.i, align 4, !dbg !4656
  store i64 %19, i64* %size.addr.i.i.i, align 8
  store i32 %20, i32* %flags.addr.i.i.i, align 4
  store i32 %21, i32* %order.addr.i.i.i, align 4
  %22 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4657
  %23 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4658
  %24 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4659
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %22, i32 %23, i32 %24) #12, !dbg !4660
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4660
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4660
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4660
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !4660
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4661
  br label %kmalloc.exit, !dbg !4661

if.end.i:                                         ; preds = %if.then.i
  %25 = load i64, i64* %size.addr.i, align 8, !dbg !4662
  store i64 %25, i64* %size.addr.i11.i, align 8
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4663
  %tobool.i.i = icmp ne i64 %26, 0, !dbg !4663
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4665

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4666
  br label %kmalloc_index.exit.i, !dbg !4666

if.end.i.i:                                       ; preds = %if.end.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4667
  %cmp.i.i = icmp ule i64 %27, 8, !dbg !4669
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4670

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4671
  br label %kmalloc_index.exit.i, !dbg !4671

if.end2.i.i:                                      ; preds = %if.end.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4672
  %cmp3.i.i = icmp ugt i64 %28, 64, !dbg !4674
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4675

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4676
  %cmp4.i.i = icmp ule i64 %29, 96, !dbg !4677
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4678

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4679
  br label %kmalloc_index.exit.i, !dbg !4679

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4680
  %cmp7.i.i = icmp ugt i64 %30, 128, !dbg !4682
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4683

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4684
  %cmp9.i.i = icmp ule i64 %31, 192, !dbg !4685
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4686

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4687
  br label %kmalloc_index.exit.i, !dbg !4687

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4688
  %cmp12.i.i = icmp ule i64 %32, 8, !dbg !4690
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4691

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4692
  br label %kmalloc_index.exit.i, !dbg !4692

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4693
  %cmp15.i.i = icmp ule i64 %33, 16, !dbg !4695
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4696

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4697
  br label %kmalloc_index.exit.i, !dbg !4697

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4698
  %cmp18.i.i = icmp ule i64 %34, 32, !dbg !4700
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4701

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4702
  br label %kmalloc_index.exit.i, !dbg !4702

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4703
  %cmp21.i.i = icmp ule i64 %35, 64, !dbg !4705
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4706

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4707
  br label %kmalloc_index.exit.i, !dbg !4707

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4708
  %cmp24.i.i = icmp ule i64 %36, 128, !dbg !4710
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4711

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4712
  br label %kmalloc_index.exit.i, !dbg !4712

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4713
  %cmp27.i.i = icmp ule i64 %37, 256, !dbg !4715
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4716

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4717
  br label %kmalloc_index.exit.i, !dbg !4717

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4718
  %cmp30.i.i = icmp ule i64 %38, 512, !dbg !4720
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4721

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4722
  br label %kmalloc_index.exit.i, !dbg !4722

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4723
  %cmp33.i.i = icmp ule i64 %39, 1024, !dbg !4725
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4726

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4727
  br label %kmalloc_index.exit.i, !dbg !4727

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4728
  %cmp36.i.i = icmp ule i64 %40, 2048, !dbg !4730
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4731

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4732
  br label %kmalloc_index.exit.i, !dbg !4732

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4733
  %cmp39.i.i = icmp ule i64 %41, 4096, !dbg !4735
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4736

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4737
  br label %kmalloc_index.exit.i, !dbg !4737

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4738
  %cmp42.i.i = icmp ule i64 %42, 8192, !dbg !4740
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4741

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4742
  br label %kmalloc_index.exit.i, !dbg !4742

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4743
  %cmp45.i.i = icmp ule i64 %43, 16384, !dbg !4745
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4746

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4747
  br label %kmalloc_index.exit.i, !dbg !4747

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4748
  %cmp48.i.i = icmp ule i64 %44, 32768, !dbg !4750
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4751

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4752
  br label %kmalloc_index.exit.i, !dbg !4752

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4753
  %cmp51.i.i = icmp ule i64 %45, 65536, !dbg !4755
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4756

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4757
  br label %kmalloc_index.exit.i, !dbg !4757

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4758
  %cmp54.i.i = icmp ule i64 %46, 131072, !dbg !4760
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4761

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4762
  br label %kmalloc_index.exit.i, !dbg !4762

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4763
  %cmp57.i.i = icmp ule i64 %47, 262144, !dbg !4765
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4766

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4767
  br label %kmalloc_index.exit.i, !dbg !4767

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4768
  %cmp60.i.i = icmp ule i64 %48, 524288, !dbg !4770
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4771

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4772
  br label %kmalloc_index.exit.i, !dbg !4772

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4773
  %cmp63.i.i = icmp ule i64 %49, 1048576, !dbg !4775
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4776

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4777
  br label %kmalloc_index.exit.i, !dbg !4777

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4778
  %cmp66.i.i = icmp ule i64 %50, 2097152, !dbg !4780
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4781

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4782
  br label %kmalloc_index.exit.i, !dbg !4782

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4783
  %cmp69.i.i = icmp ule i64 %51, 4194304, !dbg !4785
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4786

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4787
  br label %kmalloc_index.exit.i, !dbg !4787

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4788
  %cmp72.i.i = icmp ule i64 %52, 8388608, !dbg !4790
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4791

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4792
  br label %kmalloc_index.exit.i, !dbg !4792

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4793
  %cmp75.i.i = icmp ule i64 %53, 16777216, !dbg !4795
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4796

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4797
  br label %kmalloc_index.exit.i, !dbg !4797

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4798
  %cmp78.i.i = icmp ule i64 %54, 33554432, !dbg !4800
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4801

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4802
  br label %kmalloc_index.exit.i, !dbg !4802

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4803
  %cmp81.i.i = icmp ule i64 %55, 67108864, !dbg !4805
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4806

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4807
  br label %kmalloc_index.exit.i, !dbg !4807

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !4808, !srcloc !4811
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #10, !dbg !4812, !srcloc !4815
  unreachable, !dbg !4816

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %56 = load i32, i32* %retval.i.i, align 4, !dbg !4817
  store i32 %56, i32* %index.i, align 4, !dbg !4818
  %57 = load i32, i32* %index.i, align 4, !dbg !4819
  %tobool.i = icmp ne i32 %57, 0, !dbg !4819
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4821

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4822
  br label %kmalloc.exit, !dbg !4822

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %58 = load i32, i32* %flags.addr.i, align 4, !dbg !4823
  store i32 %58, i32* %flags.addr.i13.i, align 4
  %59 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4824
  %and.i.i = and i32 %59, 17, !dbg !4824
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4824
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4824
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4824
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4824
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4826

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4827
  br label %kmalloc_type.exit.i, !dbg !4827

if.end.i16.i:                                     ; preds = %if.end4.i
  %60 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4828
  %and2.i.i = and i32 %60, 1, !dbg !4829
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4828
  %61 = zext i1 %tobool3.i.i to i64, !dbg !4828
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4828
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4830
  br label %kmalloc_type.exit.i, !dbg !4830

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %62 = load i32, i32* %retval.i12.i, align 4, !dbg !4831
  %idxprom.i = zext i32 %62 to i64, !dbg !4832
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4832
  %63 = load i32, i32* %index.i, align 4, !dbg !4833
  %idxprom6.i = zext i32 %63 to i64, !dbg !4832
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4832
  %64 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4832
  %65 = load i32, i32* %flags.addr.i, align 4, !dbg !4834
  %66 = load i64, i64* %size.addr.i, align 8, !dbg !4835
  store %struct.kmem_cache* %64, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %65, i32* %flags.addr.i17.i, align 4
  store i64 %66, i64* %size.addr.i18.i, align 8
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4836
  %68 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4837
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %67, i32 %68) #12, !dbg !4838
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4838
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4838
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4838
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !4838
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4589
  %69 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4839
  %70 = load i8*, i8** %ret.i.i, align 8, !dbg !4840
  %71 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4841
  %72 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4842
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %69, i8* %70, i64 %71, i32 %72) #12, !dbg !4843
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4844
  %73 = load i8*, i8** %ret.i.i, align 8, !dbg !4845
  store i8* %73, i8** %retval.i, align 8, !dbg !4846
  br label %kmalloc.exit, !dbg !4846

if.end9.i:                                        ; preds = %do.end
  %74 = load i64, i64* %size.addr.i, align 8, !dbg !4847
  %75 = load i32, i32* %flags.addr.i, align 4, !dbg !4848
  %call10.i = call noalias i8* @__kmalloc(i64 %74, i32 %75) #12, !dbg !4849
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4849
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4849
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4849
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !4849
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4850
  br label %kmalloc.exit, !dbg !4850

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %76 = load i8*, i8** %retval.i, align 8, !dbg !4851
  %77 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !4852
  %duxbuf = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %77, i32 0, i32 1, !dbg !4853
  store i8* %76, i8** %duxbuf, align 8, !dbg !4854
  %78 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !4855
  %duxbuf6 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %78, i32 0, i32 1, !dbg !4857
  %79 = load i8*, i8** %duxbuf6, align 8, !dbg !4857
  %tobool7 = icmp ne i8* %79, null, !dbg !4855
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !4858

if.then8:                                         ; preds = %kmalloc.exit
  store i32 -12, i32* %retval, align 4, !dbg !4859
  br label %return, !dbg !4859

if.end9:                                          ; preds = %kmalloc.exit
  %80 = load %struct.usb_device*, %struct.usb_device** %usb, align 8, !dbg !4860
  %81 = load %struct.usb_interface*, %struct.usb_interface** %intf, align 8, !dbg !4861
  %altsetting = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %81, i32 0, i32 0, !dbg !4862
  %82 = load %struct.usb_host_interface*, %struct.usb_host_interface** %altsetting, align 8, !dbg !4862
  %desc = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %82, i32 0, i32 0, !dbg !4863
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %desc, i32 0, i32 2, !dbg !4864
  %83 = load i8, i8* %bInterfaceNumber, align 2, !dbg !4864
  %conv = zext i8 %83 to i32, !dbg !4861
  %call10 = call i32 @usb_set_interface(%struct.usb_device* %80, i32 %conv, i32 1) #8, !dbg !4865
  store i32 %call10, i32* %ret, align 4, !dbg !4866
  %84 = load i32, i32* %ret, align 4, !dbg !4867
  %cmp11 = icmp slt i32 %84, 0, !dbg !4869
  br i1 %cmp11, label %if.then13, label %if.end15, !dbg !4870

if.then13:                                        ; preds = %if.end9
  %85 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4871
  %class_dev14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %85, i32 0, i32 4, !dbg !4871
  %86 = load %struct.device*, %struct.device** %class_dev14, align 8, !dbg !4871
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %86, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !4871
  store i32 -19, i32* %retval, align 4, !dbg !4873
  br label %return, !dbg !4873

if.end15:                                         ; preds = %if.end9
  %call16 = call %struct.urb* @usb_alloc_urb(i32 0, i32 3264) #8, !dbg !4874
  %87 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !4875
  %urb = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %87, i32 0, i32 0, !dbg !4876
  store %struct.urb* %call16, %struct.urb** %urb, align 8, !dbg !4877
  %88 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !4878
  %urb17 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %88, i32 0, i32 0, !dbg !4880
  %89 = load %struct.urb*, %struct.urb** %urb17, align 8, !dbg !4880
  %tobool18 = icmp ne %struct.urb* %89, null, !dbg !4878
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !4881

if.then19:                                        ; preds = %if.end15
  store i32 -12, i32* %retval, align 4, !dbg !4882
  br label %return, !dbg !4882

if.end20:                                         ; preds = %if.end15
  store i64 512, i64* %size.addr.i51, align 8
  store i32 3264, i32* %flags.addr.i52, align 4
  %90 = load i64, i64* %size.addr.i51, align 8, !dbg !4883
  %91 = call i1 @llvm.is.constant.i64(i64 %90) #10, !dbg !4884
  br i1 %91, label %if.then.i55, label %if.end9.i179, !dbg !4885

if.then.i55:                                      ; preds = %if.end20
  %92 = load i64, i64* %size.addr.i51, align 8, !dbg !4886
  %cmp.i54 = icmp ugt i64 %92, 8192, !dbg !4887
  br i1 %cmp.i54, label %if.then1.i61, label %if.end.i63, !dbg !4888

if.then1.i61:                                     ; preds = %if.then.i55
  %93 = load i64, i64* %size.addr.i51, align 8, !dbg !4889
  %94 = load i32, i32* %flags.addr.i52, align 4, !dbg !4890
  store i64 %93, i64* %size.addr.i.i47, align 8
  store i32 %94, i32* %flags.addr.i.i48, align 4
  %95 = load i64, i64* %size.addr.i.i47, align 8, !dbg !4891
  %call.i.i56 = call i32 @get_order(i64 %95) #11, !dbg !4892
  store i32 %call.i.i56, i32* %order.i.i49, align 4, !dbg !4577
  %96 = load i64, i64* %size.addr.i.i47, align 8, !dbg !4893
  %97 = load i32, i32* %flags.addr.i.i48, align 4, !dbg !4894
  %98 = load i32, i32* %order.i.i49, align 4, !dbg !4895
  store i64 %96, i64* %size.addr.i.i.i44, align 8
  store i32 %97, i32* %flags.addr.i.i.i45, align 4
  store i32 %98, i32* %order.addr.i.i.i46, align 4
  %99 = load i64, i64* %size.addr.i.i.i44, align 8, !dbg !4896
  %100 = load i32, i32* %flags.addr.i.i.i45, align 4, !dbg !4897
  %101 = load i32, i32* %order.addr.i.i.i46, align 4, !dbg !4898
  %call.i.i.i57 = call noalias i8* @kmalloc_order(i64 %99, i32 %100, i32 %101) #12, !dbg !4899
  %ptrint.i.i.i58 = ptrtoint i8* %call.i.i.i57 to i64, !dbg !4899
  %maskedptr.i.i.i59 = and i64 %ptrint.i.i.i58, 4095, !dbg !4899
  %maskcond.i.i.i60 = icmp eq i64 %maskedptr.i.i.i59, 0, !dbg !4899
  call void @llvm.assume(i1 %maskcond.i.i.i60) #10, !dbg !4899
  store i8* %call.i.i.i57, i8** %retval.i50, align 8, !dbg !4900
  br label %kmalloc.exit180, !dbg !4900

if.end.i63:                                       ; preds = %if.then.i55
  %102 = load i64, i64* %size.addr.i51, align 8, !dbg !4901
  store i64 %102, i64* %size.addr.i11.i43, align 8
  %103 = load i64, i64* %size.addr.i11.i43, align 8, !dbg !4902
  %tobool.i.i62 = icmp ne i64 %103, 0, !dbg !4902
  br i1 %tobool.i.i62, label %if.end.i.i66, label %if.then.i.i64, !dbg !4903

if.then.i.i64:                                    ; preds = %if.end.i63
  store i32 0, i32* %retval.i.i42, align 4, !dbg !4904
  br label %kmalloc_index.exit.i152, !dbg !4904

if.end.i.i66:                                     ; preds = %if.end.i63
  %104 = load i64, i64* %size.addr.i11.i43, align 8, !dbg !4905
  %cmp.i.i65 = icmp ule i64 %104, 8, !dbg !4906
  br i1 %cmp.i.i65, label %if.then1.i.i67, label %if.end2.i.i69, !dbg !4907

if.then1.i.i67:                                   ; preds = %if.end.i.i66
  store i32 3, i32* %retval.i.i42, align 4, !dbg !4908
  br label %kmalloc_index.exit.i152, !dbg !4908

if.end2.i.i69:                                    ; preds = %if.end.i.i66
  %105 = load i64, i64* %size.addr.i11.i43, align 8, !dbg !4909
  %cmp3.i.i68 = icmp ugt i64 %105, 64, !dbg !4910
  br i1 %cmp3.i.i68, label %land.lhs.true.i.i71, label %if.end6.i.i74, !dbg !4911

land.lhs.true.i.i71:                              ; preds = %if.end2.i.i69
  %106 = load i64, i64* %size.addr.i11.i43, align 8, !dbg !4912
  %cmp4.i.i70 = icmp ule i64 %106, 96, !dbg !4913
  br i1 %cmp4.i.i70, label %if.then5.i.i72, label %if.end6.i.i74, !dbg !4914

if.then5.i.i72:                                   ; preds = %land.lhs.true.i.i71
  store i32 1, i32* %retval.i.i42, align 4, !dbg !4915
  br label %kmalloc_index.exit.i152, !dbg !4915

if.end6.i.i74:                                    ; preds = %land.lhs.true.i.i71, %if.end2.i.i69
  %107 = load i64, i64* %size.addr.i11.i43, align 8, !dbg !4916
  %cmp7.i.i73 = icmp ugt i64 %107, 128, !dbg !4917
  br i1 %cmp7.i.i73, label %land.lhs.true8.i.i76, label %if.end11.i.i79, !dbg !4918

land.lhs.true8.i.i76:                             ; preds = %if.end6.i.i74
  %108 = load i64, i64* %size.addr.i11.i43, align 8, !dbg !4919
  %cmp9.i.i75 = icmp ule i64 %108, 192, !dbg !4920
  br i1 %cmp9.i.i75, label %if.then10.i.i77, label %if.end11.i.i79, !dbg !4921

if.then10.i.i77:                                  ; preds = %land.lhs.true8.i.i76
  store i32 2, i32* %retval.i.i42, align 4, !dbg !4922
  br label %kmalloc_index.exit.i152, !dbg !4922

if.end11.i.i79:                                   ; preds = %land.lhs.true8.i.i76, %if.end6.i.i74
  %109 = load i64, i64* %size.addr.i11.i43, align 8, !dbg !4923
  %cmp12.i.i78 = icmp ule i64 %109, 8, !dbg !4924
  br i1 %cmp12.i.i78, label %if.then13.i.i80, label %if.end14.i.i82, !dbg !4925

if.then13.i.i80:                                  ; preds = %if.end11.i.i79
  store i32 3, i32* %retval.i.i42, align 4, !dbg !4926
  br label %kmalloc_index.exit.i152, !dbg !4926

if.end14.i.i82:                                   ; preds = %if.end11.i.i79
  %110 = load i64, i64* %size.addr.i11.i43, align 8, !dbg !4927
  %cmp15.i.i81 = icmp ule i64 %110, 16, !dbg !4928
  br i1 %cmp15.i.i81, label %if.then16.i.i83, label %if.end17.i.i85, !dbg !4929

if.then16.i.i83:                                  ; preds = %if.end14.i.i82
  store i32 4, i32* %retval.i.i42, align 4, !dbg !4930
  br label %kmalloc_index.exit.i152, !dbg !4930

if.end17.i.i85:                                   ; preds = %if.end14.i.i82
  %111 = load i64, i64* %size.addr.i11.i43, align 8, !dbg !4931
  %cmp18.i.i84 = icmp ule i64 %111, 32, !dbg !4932
  br i1 %cmp18.i.i84, label %if.then19.i.i86, label %if.end20.i.i88, !dbg !4933

if.then19.i.i86:                                  ; preds = %if.end17.i.i85
  store i32 5, i32* %retval.i.i42, align 4, !dbg !4934
  br label %kmalloc_index.exit.i152, !dbg !4934

if.end20.i.i88:                                   ; preds = %if.end17.i.i85
  %112 = load i64, i64* %size.addr.i11.i43, align 8, !dbg !4935
  %cmp21.i.i87 = icmp ule i64 %112, 64, !dbg !4936
  br i1 %cmp21.i.i87, label %if.then22.i.i89, label %if.end23.i.i91, !dbg !4937

if.then22.i.i89:                                  ; preds = %if.end20.i.i88
  store i32 6, i32* %retval.i.i42, align 4, !dbg !4938
  br label %kmalloc_index.exit.i152, !dbg !4938

if.end23.i.i91:                                   ; preds = %if.end20.i.i88
  %113 = load i64, i64* %size.addr.i11.i43, align 8, !dbg !4939
  %cmp24.i.i90 = icmp ule i64 %113, 128, !dbg !4940
  br i1 %cmp24.i.i90, label %if.then25.i.i92, label %if.end26.i.i94, !dbg !4941

if.then25.i.i92:                                  ; preds = %if.end23.i.i91
  store i32 7, i32* %retval.i.i42, align 4, !dbg !4942
  br label %kmalloc_index.exit.i152, !dbg !4942

if.end26.i.i94:                                   ; preds = %if.end23.i.i91
  %114 = load i64, i64* %size.addr.i11.i43, align 8, !dbg !4943
  %cmp27.i.i93 = icmp ule i64 %114, 256, !dbg !4944
  br i1 %cmp27.i.i93, label %if.then28.i.i95, label %if.end29.i.i97, !dbg !4945

if.then28.i.i95:                                  ; preds = %if.end26.i.i94
  store i32 8, i32* %retval.i.i42, align 4, !dbg !4946
  br label %kmalloc_index.exit.i152, !dbg !4946

if.end29.i.i97:                                   ; preds = %if.end26.i.i94
  %115 = load i64, i64* %size.addr.i11.i43, align 8, !dbg !4947
  %cmp30.i.i96 = icmp ule i64 %115, 512, !dbg !4948
  br i1 %cmp30.i.i96, label %if.then31.i.i98, label %if.end32.i.i100, !dbg !4949

if.then31.i.i98:                                  ; preds = %if.end29.i.i97
  store i32 9, i32* %retval.i.i42, align 4, !dbg !4950
  br label %kmalloc_index.exit.i152, !dbg !4950

if.end32.i.i100:                                  ; preds = %if.end29.i.i97
  %116 = load i64, i64* %size.addr.i11.i43, align 8, !dbg !4951
  %cmp33.i.i99 = icmp ule i64 %116, 1024, !dbg !4952
  br i1 %cmp33.i.i99, label %if.then34.i.i101, label %if.end35.i.i103, !dbg !4953

if.then34.i.i101:                                 ; preds = %if.end32.i.i100
  store i32 10, i32* %retval.i.i42, align 4, !dbg !4954
  br label %kmalloc_index.exit.i152, !dbg !4954

if.end35.i.i103:                                  ; preds = %if.end32.i.i100
  %117 = load i64, i64* %size.addr.i11.i43, align 8, !dbg !4955
  %cmp36.i.i102 = icmp ule i64 %117, 2048, !dbg !4956
  br i1 %cmp36.i.i102, label %if.then37.i.i104, label %if.end38.i.i106, !dbg !4957

if.then37.i.i104:                                 ; preds = %if.end35.i.i103
  store i32 11, i32* %retval.i.i42, align 4, !dbg !4958
  br label %kmalloc_index.exit.i152, !dbg !4958

if.end38.i.i106:                                  ; preds = %if.end35.i.i103
  %118 = load i64, i64* %size.addr.i11.i43, align 8, !dbg !4959
  %cmp39.i.i105 = icmp ule i64 %118, 4096, !dbg !4960
  br i1 %cmp39.i.i105, label %if.then40.i.i107, label %if.end41.i.i109, !dbg !4961

if.then40.i.i107:                                 ; preds = %if.end38.i.i106
  store i32 12, i32* %retval.i.i42, align 4, !dbg !4962
  br label %kmalloc_index.exit.i152, !dbg !4962

if.end41.i.i109:                                  ; preds = %if.end38.i.i106
  %119 = load i64, i64* %size.addr.i11.i43, align 8, !dbg !4963
  %cmp42.i.i108 = icmp ule i64 %119, 8192, !dbg !4964
  br i1 %cmp42.i.i108, label %if.then43.i.i110, label %if.end44.i.i112, !dbg !4965

if.then43.i.i110:                                 ; preds = %if.end41.i.i109
  store i32 13, i32* %retval.i.i42, align 4, !dbg !4966
  br label %kmalloc_index.exit.i152, !dbg !4966

if.end44.i.i112:                                  ; preds = %if.end41.i.i109
  %120 = load i64, i64* %size.addr.i11.i43, align 8, !dbg !4967
  %cmp45.i.i111 = icmp ule i64 %120, 16384, !dbg !4968
  br i1 %cmp45.i.i111, label %if.then46.i.i113, label %if.end47.i.i115, !dbg !4969

if.then46.i.i113:                                 ; preds = %if.end44.i.i112
  store i32 14, i32* %retval.i.i42, align 4, !dbg !4970
  br label %kmalloc_index.exit.i152, !dbg !4970

if.end47.i.i115:                                  ; preds = %if.end44.i.i112
  %121 = load i64, i64* %size.addr.i11.i43, align 8, !dbg !4971
  %cmp48.i.i114 = icmp ule i64 %121, 32768, !dbg !4972
  br i1 %cmp48.i.i114, label %if.then49.i.i116, label %if.end50.i.i118, !dbg !4973

if.then49.i.i116:                                 ; preds = %if.end47.i.i115
  store i32 15, i32* %retval.i.i42, align 4, !dbg !4974
  br label %kmalloc_index.exit.i152, !dbg !4974

if.end50.i.i118:                                  ; preds = %if.end47.i.i115
  %122 = load i64, i64* %size.addr.i11.i43, align 8, !dbg !4975
  %cmp51.i.i117 = icmp ule i64 %122, 65536, !dbg !4976
  br i1 %cmp51.i.i117, label %if.then52.i.i119, label %if.end53.i.i121, !dbg !4977

if.then52.i.i119:                                 ; preds = %if.end50.i.i118
  store i32 16, i32* %retval.i.i42, align 4, !dbg !4978
  br label %kmalloc_index.exit.i152, !dbg !4978

if.end53.i.i121:                                  ; preds = %if.end50.i.i118
  %123 = load i64, i64* %size.addr.i11.i43, align 8, !dbg !4979
  %cmp54.i.i120 = icmp ule i64 %123, 131072, !dbg !4980
  br i1 %cmp54.i.i120, label %if.then55.i.i122, label %if.end56.i.i124, !dbg !4981

if.then55.i.i122:                                 ; preds = %if.end53.i.i121
  store i32 17, i32* %retval.i.i42, align 4, !dbg !4982
  br label %kmalloc_index.exit.i152, !dbg !4982

if.end56.i.i124:                                  ; preds = %if.end53.i.i121
  %124 = load i64, i64* %size.addr.i11.i43, align 8, !dbg !4983
  %cmp57.i.i123 = icmp ule i64 %124, 262144, !dbg !4984
  br i1 %cmp57.i.i123, label %if.then58.i.i125, label %if.end59.i.i127, !dbg !4985

if.then58.i.i125:                                 ; preds = %if.end56.i.i124
  store i32 18, i32* %retval.i.i42, align 4, !dbg !4986
  br label %kmalloc_index.exit.i152, !dbg !4986

if.end59.i.i127:                                  ; preds = %if.end56.i.i124
  %125 = load i64, i64* %size.addr.i11.i43, align 8, !dbg !4987
  %cmp60.i.i126 = icmp ule i64 %125, 524288, !dbg !4988
  br i1 %cmp60.i.i126, label %if.then61.i.i128, label %if.end62.i.i130, !dbg !4989

if.then61.i.i128:                                 ; preds = %if.end59.i.i127
  store i32 19, i32* %retval.i.i42, align 4, !dbg !4990
  br label %kmalloc_index.exit.i152, !dbg !4990

if.end62.i.i130:                                  ; preds = %if.end59.i.i127
  %126 = load i64, i64* %size.addr.i11.i43, align 8, !dbg !4991
  %cmp63.i.i129 = icmp ule i64 %126, 1048576, !dbg !4992
  br i1 %cmp63.i.i129, label %if.then64.i.i131, label %if.end65.i.i133, !dbg !4993

if.then64.i.i131:                                 ; preds = %if.end62.i.i130
  store i32 20, i32* %retval.i.i42, align 4, !dbg !4994
  br label %kmalloc_index.exit.i152, !dbg !4994

if.end65.i.i133:                                  ; preds = %if.end62.i.i130
  %127 = load i64, i64* %size.addr.i11.i43, align 8, !dbg !4995
  %cmp66.i.i132 = icmp ule i64 %127, 2097152, !dbg !4996
  br i1 %cmp66.i.i132, label %if.then67.i.i134, label %if.end68.i.i136, !dbg !4997

if.then67.i.i134:                                 ; preds = %if.end65.i.i133
  store i32 21, i32* %retval.i.i42, align 4, !dbg !4998
  br label %kmalloc_index.exit.i152, !dbg !4998

if.end68.i.i136:                                  ; preds = %if.end65.i.i133
  %128 = load i64, i64* %size.addr.i11.i43, align 8, !dbg !4999
  %cmp69.i.i135 = icmp ule i64 %128, 4194304, !dbg !5000
  br i1 %cmp69.i.i135, label %if.then70.i.i137, label %if.end71.i.i139, !dbg !5001

if.then70.i.i137:                                 ; preds = %if.end68.i.i136
  store i32 22, i32* %retval.i.i42, align 4, !dbg !5002
  br label %kmalloc_index.exit.i152, !dbg !5002

if.end71.i.i139:                                  ; preds = %if.end68.i.i136
  %129 = load i64, i64* %size.addr.i11.i43, align 8, !dbg !5003
  %cmp72.i.i138 = icmp ule i64 %129, 8388608, !dbg !5004
  br i1 %cmp72.i.i138, label %if.then73.i.i140, label %if.end74.i.i142, !dbg !5005

if.then73.i.i140:                                 ; preds = %if.end71.i.i139
  store i32 23, i32* %retval.i.i42, align 4, !dbg !5006
  br label %kmalloc_index.exit.i152, !dbg !5006

if.end74.i.i142:                                  ; preds = %if.end71.i.i139
  %130 = load i64, i64* %size.addr.i11.i43, align 8, !dbg !5007
  %cmp75.i.i141 = icmp ule i64 %130, 16777216, !dbg !5008
  br i1 %cmp75.i.i141, label %if.then76.i.i143, label %if.end77.i.i145, !dbg !5009

if.then76.i.i143:                                 ; preds = %if.end74.i.i142
  store i32 24, i32* %retval.i.i42, align 4, !dbg !5010
  br label %kmalloc_index.exit.i152, !dbg !5010

if.end77.i.i145:                                  ; preds = %if.end74.i.i142
  %131 = load i64, i64* %size.addr.i11.i43, align 8, !dbg !5011
  %cmp78.i.i144 = icmp ule i64 %131, 33554432, !dbg !5012
  br i1 %cmp78.i.i144, label %if.then79.i.i146, label %if.end80.i.i148, !dbg !5013

if.then79.i.i146:                                 ; preds = %if.end77.i.i145
  store i32 25, i32* %retval.i.i42, align 4, !dbg !5014
  br label %kmalloc_index.exit.i152, !dbg !5014

if.end80.i.i148:                                  ; preds = %if.end77.i.i145
  %132 = load i64, i64* %size.addr.i11.i43, align 8, !dbg !5015
  %cmp81.i.i147 = icmp ule i64 %132, 67108864, !dbg !5016
  br i1 %cmp81.i.i147, label %if.then82.i.i149, label %if.end83.i.i150, !dbg !5017

if.then82.i.i149:                                 ; preds = %if.end80.i.i148
  store i32 26, i32* %retval.i.i42, align 4, !dbg !5018
  br label %kmalloc_index.exit.i152, !dbg !5018

if.end83.i.i150:                                  ; preds = %if.end80.i.i148
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !5019, !srcloc !4811
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #10, !dbg !5020, !srcloc !4815
  unreachable, !dbg !5021

kmalloc_index.exit.i152:                          ; preds = %if.then82.i.i149, %if.then79.i.i146, %if.then76.i.i143, %if.then73.i.i140, %if.then70.i.i137, %if.then67.i.i134, %if.then64.i.i131, %if.then61.i.i128, %if.then58.i.i125, %if.then55.i.i122, %if.then52.i.i119, %if.then49.i.i116, %if.then46.i.i113, %if.then43.i.i110, %if.then40.i.i107, %if.then37.i.i104, %if.then34.i.i101, %if.then31.i.i98, %if.then28.i.i95, %if.then25.i.i92, %if.then22.i.i89, %if.then19.i.i86, %if.then16.i.i83, %if.then13.i.i80, %if.then10.i.i77, %if.then5.i.i72, %if.then1.i.i67, %if.then.i.i64
  %133 = load i32, i32* %retval.i.i42, align 4, !dbg !5022
  store i32 %133, i32* %index.i53, align 4, !dbg !5023
  %134 = load i32, i32* %index.i53, align 4, !dbg !5024
  %tobool.i151 = icmp ne i32 %134, 0, !dbg !5024
  br i1 %tobool.i151, label %if.end4.i159, label %if.then3.i153, !dbg !5025

if.then3.i153:                                    ; preds = %kmalloc_index.exit.i152
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i50, align 8, !dbg !5026
  br label %kmalloc.exit180, !dbg !5026

if.end4.i159:                                     ; preds = %kmalloc_index.exit.i152
  %135 = load i32, i32* %flags.addr.i52, align 4, !dbg !5027
  store i32 %135, i32* %flags.addr.i13.i41, align 4
  %136 = load i32, i32* %flags.addr.i13.i41, align 4, !dbg !5028
  %and.i.i154 = and i32 %136, 17, !dbg !5028
  %cmp.i14.i155 = icmp eq i32 %and.i.i154, 0, !dbg !5028
  %lnot.i.i156 = xor i1 %cmp.i14.i155, true, !dbg !5028
  %lnot.ext.i.i157 = zext i1 %cmp.i14.i155 to i32, !dbg !5028
  %conv.i.i158 = sext i32 %lnot.ext.i.i157 to i64, !dbg !5028
  br i1 %cmp.i14.i155, label %if.then.i15.i160, label %if.end.i16.i164, !dbg !5029

if.then.i15.i160:                                 ; preds = %if.end4.i159
  store i32 0, i32* %retval.i12.i40, align 4, !dbg !5030
  br label %kmalloc_type.exit.i174, !dbg !5030

if.end.i16.i164:                                  ; preds = %if.end4.i159
  %137 = load i32, i32* %flags.addr.i13.i41, align 4, !dbg !5031
  %and2.i.i161 = and i32 %137, 1, !dbg !5032
  %tobool3.i.i162 = icmp ne i32 %and2.i.i161, 0, !dbg !5031
  %138 = zext i1 %tobool3.i.i162 to i64, !dbg !5031
  %cond.i.i163 = select i1 %tobool3.i.i162, i32 2, i32 1, !dbg !5031
  store i32 %cond.i.i163, i32* %retval.i12.i40, align 4, !dbg !5033
  br label %kmalloc_type.exit.i174, !dbg !5033

kmalloc_type.exit.i174:                           ; preds = %if.end.i16.i164, %if.then.i15.i160
  %139 = load i32, i32* %retval.i12.i40, align 4, !dbg !5034
  %idxprom.i165 = zext i32 %139 to i64, !dbg !5035
  %arrayidx.i166 = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i165, !dbg !5035
  %140 = load i32, i32* %index.i53, align 4, !dbg !5036
  %idxprom6.i167 = zext i32 %140 to i64, !dbg !5035
  %arrayidx7.i168 = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i166, i64 0, i64 %idxprom6.i167, !dbg !5035
  %141 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i168, align 8, !dbg !5035
  %142 = load i32, i32* %flags.addr.i52, align 4, !dbg !5037
  %143 = load i64, i64* %size.addr.i51, align 8, !dbg !5038
  store %struct.kmem_cache* %141, %struct.kmem_cache** %s.addr.i.i36, align 8
  store i32 %142, i32* %flags.addr.i17.i37, align 4
  store i64 %143, i64* %size.addr.i18.i38, align 8
  %144 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i36, align 8, !dbg !5039
  %145 = load i32, i32* %flags.addr.i17.i37, align 4, !dbg !5040
  %call.i19.i169 = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %144, i32 %145) #12, !dbg !5041
  %ptrint.i.i170 = ptrtoint i8* %call.i19.i169 to i64, !dbg !5041
  %maskedptr.i.i171 = and i64 %ptrint.i.i170, 7, !dbg !5041
  %maskcond.i.i172 = icmp eq i64 %maskedptr.i.i171, 0, !dbg !5041
  call void @llvm.assume(i1 %maskcond.i.i172) #10, !dbg !5041
  store i8* %call.i19.i169, i8** %ret.i.i39, align 8, !dbg !4546
  %146 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i36, align 8, !dbg !5042
  %147 = load i8*, i8** %ret.i.i39, align 8, !dbg !5043
  %148 = load i64, i64* %size.addr.i18.i38, align 8, !dbg !5044
  %149 = load i32, i32* %flags.addr.i17.i37, align 4, !dbg !5045
  %call1.i.i173 = call i8* @kasan_kmalloc(%struct.kmem_cache* %146, i8* %147, i64 %148, i32 %149) #12, !dbg !5046
  store i8* %call1.i.i173, i8** %ret.i.i39, align 8, !dbg !5047
  %150 = load i8*, i8** %ret.i.i39, align 8, !dbg !5048
  store i8* %150, i8** %retval.i50, align 8, !dbg !5049
  br label %kmalloc.exit180, !dbg !5049

if.end9.i179:                                     ; preds = %if.end20
  %151 = load i64, i64* %size.addr.i51, align 8, !dbg !5050
  %152 = load i32, i32* %flags.addr.i52, align 4, !dbg !5051
  %call10.i175 = call noalias i8* @__kmalloc(i64 %151, i32 %152) #12, !dbg !5052
  %ptrint.i176 = ptrtoint i8* %call10.i175 to i64, !dbg !5052
  %maskedptr.i177 = and i64 %ptrint.i176, 7, !dbg !5052
  %maskcond.i178 = icmp eq i64 %maskedptr.i177, 0, !dbg !5052
  call void @llvm.assume(i1 %maskcond.i178) #10, !dbg !5052
  store i8* %call10.i175, i8** %retval.i50, align 8, !dbg !5053
  br label %kmalloc.exit180, !dbg !5053

kmalloc.exit180:                                  ; preds = %if.then1.i61, %if.then3.i153, %kmalloc_type.exit.i174, %if.end9.i179
  %153 = load i8*, i8** %retval.i50, align 8, !dbg !5054
  %154 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !5055
  %inbuf = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %154, i32 0, i32 2, !dbg !5056
  store i8* %153, i8** %inbuf, align 8, !dbg !5057
  %155 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !5058
  %inbuf22 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %155, i32 0, i32 2, !dbg !5060
  %156 = load i8*, i8** %inbuf22, align 8, !dbg !5060
  %tobool23 = icmp ne i8* %156, null, !dbg !5058
  br i1 %tobool23, label %if.end25, label %if.then24, !dbg !5061

if.then24:                                        ; preds = %kmalloc.exit180
  store i32 -12, i32* %retval, align 4, !dbg !5062
  br label %return, !dbg !5062

if.end25:                                         ; preds = %kmalloc.exit180
  %157 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5063
  %158 = load %struct.usb_device*, %struct.usb_device** %usb, align 8, !dbg !5064
  %dev26 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %158, i32 0, i32 14, !dbg !5065
  %call27 = call i32 @comedi_load_firmware(%struct.comedi_device* %157, %struct.device* %dev26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 (%struct.comedi_device*, i8*, i64, i64)* @usbduxfast_upload_firmware, i64 0) #8, !dbg !5066
  store i32 %call27, i32* %ret, align 4, !dbg !5067
  %159 = load i32, i32* %ret, align 4, !dbg !5068
  %tobool28 = icmp ne i32 %159, 0, !dbg !5068
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !5070

if.then29:                                        ; preds = %if.end25
  %160 = load i32, i32* %ret, align 4, !dbg !5071
  store i32 %160, i32* %retval, align 4, !dbg !5072
  br label %return, !dbg !5072

if.end30:                                         ; preds = %if.end25
  %161 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5073
  %call31 = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %161, i32 1) #8, !dbg !5074
  store i32 %call31, i32* %ret, align 4, !dbg !5075
  %162 = load i32, i32* %ret, align 4, !dbg !5076
  %tobool32 = icmp ne i32 %162, 0, !dbg !5076
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !5078

if.then33:                                        ; preds = %if.end30
  %163 = load i32, i32* %ret, align 4, !dbg !5079
  store i32 %163, i32* %retval, align 4, !dbg !5080
  br label %return, !dbg !5080

if.end34:                                         ; preds = %if.end30
  %164 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5081
  %subdevices = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %164, i32 0, i32 16, !dbg !5082
  %165 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices, align 8, !dbg !5082
  %arrayidx = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %165, i64 0, !dbg !5081
  store %struct.comedi_subdevice* %arrayidx, %struct.comedi_subdevice** %s, align 8, !dbg !5083
  %166 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !5084
  %167 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5085
  %read_subdev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %167, i32 0, i32 21, !dbg !5086
  store %struct.comedi_subdevice* %166, %struct.comedi_subdevice** %read_subdev, align 8, !dbg !5087
  %168 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !5088
  %type = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %168, i32 0, i32 2, !dbg !5089
  store i32 1, i32* %type, align 4, !dbg !5090
  %169 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !5091
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %169, i32 0, i32 4, !dbg !5092
  store i32 1146880, i32* %subdev_flags, align 4, !dbg !5093
  %170 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !5094
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %170, i32 0, i32 3, !dbg !5095
  store i32 16, i32* %n_chan, align 8, !dbg !5096
  %171 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !5097
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %171, i32 0, i32 13, !dbg !5098
  store i32 4096, i32* %maxdata, align 8, !dbg !5099
  %172 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !5100
  %range_table = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %172, i32 0, i32 15, !dbg !5101
  store %struct.comedi_lrange* bitcast ({ i32, [2 x %struct.comedi_krange] }* @range_usbduxfast_ai_range to %struct.comedi_lrange*), %struct.comedi_lrange** %range_table, align 8, !dbg !5102
  %173 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !5103
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %173, i32 0, i32 18, !dbg !5104
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @usbduxfast_ai_insn_read, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_read, align 8, !dbg !5105
  %174 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !5106
  %n_chan35 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %174, i32 0, i32 3, !dbg !5107
  %175 = load i32, i32* %n_chan35, align 8, !dbg !5107
  %176 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !5108
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %176, i32 0, i32 5, !dbg !5109
  store i32 %175, i32* %len_chanlist, align 8, !dbg !5110
  %177 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !5111
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %177, i32 0, i32 23, !dbg !5112
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @usbduxfast_ai_cmdtest, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)** %do_cmdtest, align 8, !dbg !5113
  %178 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !5114
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %178, i32 0, i32 22, !dbg !5115
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @usbduxfast_ai_cmd, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)** %do_cmd, align 8, !dbg !5116
  %179 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !5117
  %cancel = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %179, i32 0, i32 25, !dbg !5118
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @usbduxfast_ai_cancel, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)** %cancel, align 8, !dbg !5119
  store i32 0, i32* %retval, align 4, !dbg !5120
  br label %return, !dbg !5120

return:                                           ; preds = %if.end34, %if.then33, %if.then29, %if.then24, %if.then19, %if.then13, %if.then8, %if.then3, %if.then
  %180 = load i32, i32* %retval, align 4, !dbg !5121
  ret i32 %180, !dbg !5121
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noredzone
declare dso_local %struct.usb_interface* @comedi_to_usb_interface(%struct.comedi_device*) #1

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_set_intfdata(%struct.usb_interface* %intf, i8* %data) #2 !dbg !5122 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5125, metadata !DIExpression()), !dbg !5126
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5127, metadata !DIExpression()), !dbg !5128
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5129
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !5130
  %1 = load i8*, i8** %data.addr, align 8, !dbg !5131
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #8, !dbg !5132
  ret void, !dbg !5133
}

; Function Attrs: noredzone
declare dso_local void @usb_kill_urb(%struct.urb*) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: noredzone
declare dso_local void @usb_free_urb(%struct.urb*) #1

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mutex_destroy(%struct.mutex* %lock) #2 !dbg !5134 {
entry:
  %lock.addr = alloca %struct.mutex*, align 8
  store %struct.mutex* %lock, %struct.mutex** %lock.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mutex** %lock.addr, metadata !5138, metadata !DIExpression()), !dbg !5139
  ret void, !dbg !5140
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !5141 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5144, metadata !DIExpression()), !dbg !5145
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5146, metadata !DIExpression()), !dbg !5147
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5148
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5149
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !5150
  store i8* %0, i8** %driver_data, align 8, !dbg !5151
  ret void, !dbg !5152
}

; Function Attrs: noredzone
declare dso_local %struct.usb_device* @comedi_to_usb_dev(%struct.comedi_device*) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noredzone
declare dso_local i8* @comedi_alloc_devpriv(%struct.comedi_device*, i64) #1

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_set_interface(%struct.usb_device*, i32, i32) #1

; Function Attrs: noredzone
declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_load_firmware(%struct.comedi_device*, %struct.device*, i8*, i32 (%struct.comedi_device*, i8*, i64, i64)*, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usbduxfast_upload_firmware(%struct.comedi_device* %dev, i8* %data, i64 %size, i64 %context) #2 !dbg !5153 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4529, metadata !DIExpression()), !dbg !5158
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4541, metadata !DIExpression()), !dbg !5161
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4543, metadata !DIExpression()), !dbg !5162
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4545, metadata !DIExpression()), !dbg !5163
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4547, metadata !DIExpression()), !dbg !5164
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4553, metadata !DIExpression()), !dbg !5166
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4559, metadata !DIExpression()), !dbg !5168
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4568, metadata !DIExpression()), !dbg !5171
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4570, metadata !DIExpression()), !dbg !5172
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4572, metadata !DIExpression()), !dbg !5173
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4574, metadata !DIExpression()), !dbg !5174
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4576, metadata !DIExpression()), !dbg !5175
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4578, metadata !DIExpression()), !dbg !5176
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4580, metadata !DIExpression()), !dbg !5177
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4582, metadata !DIExpression()), !dbg !5178
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %context.addr = alloca i64, align 8
  %usb = alloca %struct.usb_device*, align 8
  %buf = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5179, metadata !DIExpression()), !dbg !5180
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5181, metadata !DIExpression()), !dbg !5182
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5183, metadata !DIExpression()), !dbg !5184
  store i64 %context, i64* %context.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %context.addr, metadata !5185, metadata !DIExpression()), !dbg !5186
  call void @llvm.dbg.declare(metadata %struct.usb_device** %usb, metadata !5187, metadata !DIExpression()), !dbg !5188
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5189
  %call = call %struct.usb_device* @comedi_to_usb_dev(%struct.comedi_device* %0) #8, !dbg !5190
  store %struct.usb_device* %call, %struct.usb_device** %usb, align 8, !dbg !5188
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !5191, metadata !DIExpression()), !dbg !5192
  call void @llvm.dbg.declare(metadata i8** %tmp, metadata !5193, metadata !DIExpression()), !dbg !5194
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5195, metadata !DIExpression()), !dbg !5196
  %1 = load i8*, i8** %data.addr, align 8, !dbg !5197
  %tobool = icmp ne i8* %1, null, !dbg !5197
  br i1 %tobool, label %if.end, label %if.then, !dbg !5199

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5200
  br label %return, !dbg !5200

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5201
  %cmp = icmp ugt i64 %2, 8192, !dbg !5203
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5204

if.then1:                                         ; preds = %if.end
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5205
  %class_dev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %3, i32 0, i32 4, !dbg !5205
  %4 = load %struct.device*, %struct.device** %class_dev, align 8, !dbg !5205
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !5205
  store i32 -12, i32* %retval, align 4, !dbg !5207
  br label %return, !dbg !5207

if.end2:                                          ; preds = %if.end
  %5 = load i8*, i8** %data.addr, align 8, !dbg !5208
  %6 = load i64, i64* %size.addr, align 8, !dbg !5209
  %call3 = call i8* @kmemdup(i8* %5, i64 %6, i32 3264) #8, !dbg !5210
  store i8* %call3, i8** %buf, align 8, !dbg !5211
  %7 = load i8*, i8** %buf, align 8, !dbg !5212
  %tobool4 = icmp ne i8* %7, null, !dbg !5212
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !5214

if.then5:                                         ; preds = %if.end2
  store i32 -12, i32* %retval, align 4, !dbg !5215
  br label %return, !dbg !5215

if.end6:                                          ; preds = %if.end2
  store i64 1, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %8 = load i64, i64* %size.addr.i, align 8, !dbg !5216
  %9 = call i1 @llvm.is.constant.i64(i64 %8) #10, !dbg !5217
  br i1 %9, label %if.then.i, label %if.end9.i, !dbg !5218

if.then.i:                                        ; preds = %if.end6
  %10 = load i64, i64* %size.addr.i, align 8, !dbg !5219
  %cmp.i = icmp ugt i64 %10, 8192, !dbg !5220
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5221

if.then1.i:                                       ; preds = %if.then.i
  %11 = load i64, i64* %size.addr.i, align 8, !dbg !5222
  %12 = load i32, i32* %flags.addr.i, align 4, !dbg !5223
  store i64 %11, i64* %size.addr.i.i, align 8
  store i32 %12, i32* %flags.addr.i.i, align 4
  %13 = load i64, i64* %size.addr.i.i, align 8, !dbg !5224
  %call.i.i = call i32 @get_order(i64 %13) #11, !dbg !5225
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5175
  %14 = load i64, i64* %size.addr.i.i, align 8, !dbg !5226
  %15 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5227
  %16 = load i32, i32* %order.i.i, align 4, !dbg !5228
  store i64 %14, i64* %size.addr.i.i.i, align 8
  store i32 %15, i32* %flags.addr.i.i.i, align 4
  store i32 %16, i32* %order.addr.i.i.i, align 4
  %17 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5229
  %18 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5230
  %19 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5231
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %17, i32 %18, i32 %19) #12, !dbg !5232
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5232
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5232
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5232
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !5232
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5233
  br label %kmalloc.exit, !dbg !5233

if.end.i:                                         ; preds = %if.then.i
  %20 = load i64, i64* %size.addr.i, align 8, !dbg !5234
  store i64 %20, i64* %size.addr.i11.i, align 8
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5235
  %tobool.i.i = icmp ne i64 %21, 0, !dbg !5235
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5236

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5237
  br label %kmalloc_index.exit.i, !dbg !5237

if.end.i.i:                                       ; preds = %if.end.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5238
  %cmp.i.i = icmp ule i64 %22, 8, !dbg !5239
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5240

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5241
  br label %kmalloc_index.exit.i, !dbg !5241

if.end2.i.i:                                      ; preds = %if.end.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5242
  %cmp3.i.i = icmp ugt i64 %23, 64, !dbg !5243
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5244

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5245
  %cmp4.i.i = icmp ule i64 %24, 96, !dbg !5246
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5247

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5248
  br label %kmalloc_index.exit.i, !dbg !5248

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5249
  %cmp7.i.i = icmp ugt i64 %25, 128, !dbg !5250
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5251

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5252
  %cmp9.i.i = icmp ule i64 %26, 192, !dbg !5253
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5254

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5255
  br label %kmalloc_index.exit.i, !dbg !5255

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5256
  %cmp12.i.i = icmp ule i64 %27, 8, !dbg !5257
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5258

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5259
  br label %kmalloc_index.exit.i, !dbg !5259

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5260
  %cmp15.i.i = icmp ule i64 %28, 16, !dbg !5261
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5262

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5263
  br label %kmalloc_index.exit.i, !dbg !5263

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5264
  %cmp18.i.i = icmp ule i64 %29, 32, !dbg !5265
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5266

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5267
  br label %kmalloc_index.exit.i, !dbg !5267

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5268
  %cmp21.i.i = icmp ule i64 %30, 64, !dbg !5269
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5270

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5271
  br label %kmalloc_index.exit.i, !dbg !5271

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5272
  %cmp24.i.i = icmp ule i64 %31, 128, !dbg !5273
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5274

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5275
  br label %kmalloc_index.exit.i, !dbg !5275

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5276
  %cmp27.i.i = icmp ule i64 %32, 256, !dbg !5277
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5278

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5279
  br label %kmalloc_index.exit.i, !dbg !5279

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5280
  %cmp30.i.i = icmp ule i64 %33, 512, !dbg !5281
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5282

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5283
  br label %kmalloc_index.exit.i, !dbg !5283

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5284
  %cmp33.i.i = icmp ule i64 %34, 1024, !dbg !5285
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5286

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5287
  br label %kmalloc_index.exit.i, !dbg !5287

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5288
  %cmp36.i.i = icmp ule i64 %35, 2048, !dbg !5289
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5290

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5291
  br label %kmalloc_index.exit.i, !dbg !5291

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5292
  %cmp39.i.i = icmp ule i64 %36, 4096, !dbg !5293
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5294

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5295
  br label %kmalloc_index.exit.i, !dbg !5295

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5296
  %cmp42.i.i = icmp ule i64 %37, 8192, !dbg !5297
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5298

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5299
  br label %kmalloc_index.exit.i, !dbg !5299

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5300
  %cmp45.i.i = icmp ule i64 %38, 16384, !dbg !5301
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5302

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5303
  br label %kmalloc_index.exit.i, !dbg !5303

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5304
  %cmp48.i.i = icmp ule i64 %39, 32768, !dbg !5305
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5306

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5307
  br label %kmalloc_index.exit.i, !dbg !5307

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5308
  %cmp51.i.i = icmp ule i64 %40, 65536, !dbg !5309
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5310

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5311
  br label %kmalloc_index.exit.i, !dbg !5311

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5312
  %cmp54.i.i = icmp ule i64 %41, 131072, !dbg !5313
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5314

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5315
  br label %kmalloc_index.exit.i, !dbg !5315

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5316
  %cmp57.i.i = icmp ule i64 %42, 262144, !dbg !5317
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5318

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5319
  br label %kmalloc_index.exit.i, !dbg !5319

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5320
  %cmp60.i.i = icmp ule i64 %43, 524288, !dbg !5321
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5322

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5323
  br label %kmalloc_index.exit.i, !dbg !5323

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5324
  %cmp63.i.i = icmp ule i64 %44, 1048576, !dbg !5325
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5326

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5327
  br label %kmalloc_index.exit.i, !dbg !5327

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5328
  %cmp66.i.i = icmp ule i64 %45, 2097152, !dbg !5329
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5330

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5331
  br label %kmalloc_index.exit.i, !dbg !5331

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5332
  %cmp69.i.i = icmp ule i64 %46, 4194304, !dbg !5333
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5334

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5335
  br label %kmalloc_index.exit.i, !dbg !5335

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5336
  %cmp72.i.i = icmp ule i64 %47, 8388608, !dbg !5337
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5338

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5339
  br label %kmalloc_index.exit.i, !dbg !5339

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5340
  %cmp75.i.i = icmp ule i64 %48, 16777216, !dbg !5341
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5342

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5343
  br label %kmalloc_index.exit.i, !dbg !5343

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5344
  %cmp78.i.i = icmp ule i64 %49, 33554432, !dbg !5345
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5346

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5347
  br label %kmalloc_index.exit.i, !dbg !5347

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5348
  %cmp81.i.i = icmp ule i64 %50, 67108864, !dbg !5349
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5350

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5351
  br label %kmalloc_index.exit.i, !dbg !5351

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !5352, !srcloc !4811
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #10, !dbg !5353, !srcloc !4815
  unreachable, !dbg !5354

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %51 = load i32, i32* %retval.i.i, align 4, !dbg !5355
  store i32 %51, i32* %index.i, align 4, !dbg !5356
  %52 = load i32, i32* %index.i, align 4, !dbg !5357
  %tobool.i = icmp ne i32 %52, 0, !dbg !5357
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5358

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5359
  br label %kmalloc.exit, !dbg !5359

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %53 = load i32, i32* %flags.addr.i, align 4, !dbg !5360
  store i32 %53, i32* %flags.addr.i13.i, align 4
  %54 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5361
  %and.i.i = and i32 %54, 17, !dbg !5361
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5361
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5361
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5361
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5361
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5362

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5363
  br label %kmalloc_type.exit.i, !dbg !5363

if.end.i16.i:                                     ; preds = %if.end4.i
  %55 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5364
  %and2.i.i = and i32 %55, 1, !dbg !5365
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5364
  %56 = zext i1 %tobool3.i.i to i64, !dbg !5364
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5364
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5366
  br label %kmalloc_type.exit.i, !dbg !5366

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %57 = load i32, i32* %retval.i12.i, align 4, !dbg !5367
  %idxprom.i = zext i32 %57 to i64, !dbg !5368
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5368
  %58 = load i32, i32* %index.i, align 4, !dbg !5369
  %idxprom6.i = zext i32 %58 to i64, !dbg !5368
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5368
  %59 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5368
  %60 = load i32, i32* %flags.addr.i, align 4, !dbg !5370
  %61 = load i64, i64* %size.addr.i, align 8, !dbg !5371
  store %struct.kmem_cache* %59, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %60, i32* %flags.addr.i17.i, align 4
  store i64 %61, i64* %size.addr.i18.i, align 8
  %62 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5372
  %63 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5373
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %62, i32 %63) #12, !dbg !5374
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5374
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5374
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5374
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !5374
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5163
  %64 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5375
  %65 = load i8*, i8** %ret.i.i, align 8, !dbg !5376
  %66 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5377
  %67 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5378
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %64, i8* %65, i64 %66, i32 %67) #12, !dbg !5379
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5380
  %68 = load i8*, i8** %ret.i.i, align 8, !dbg !5381
  store i8* %68, i8** %retval.i, align 8, !dbg !5382
  br label %kmalloc.exit, !dbg !5382

if.end9.i:                                        ; preds = %if.end6
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !5383
  %70 = load i32, i32* %flags.addr.i, align 4, !dbg !5384
  %call10.i = call noalias i8* @__kmalloc(i64 %69, i32 %70) #12, !dbg !5385
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5385
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5385
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5385
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !5385
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5386
  br label %kmalloc.exit, !dbg !5386

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %71 = load i8*, i8** %retval.i, align 8, !dbg !5387
  store i8* %71, i8** %tmp, align 8, !dbg !5388
  %72 = load i8*, i8** %tmp, align 8, !dbg !5389
  %tobool8 = icmp ne i8* %72, null, !dbg !5389
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !5391

if.then9:                                         ; preds = %kmalloc.exit
  %73 = load i8*, i8** %buf, align 8, !dbg !5392
  call void @kfree(i8* %73) #8, !dbg !5394
  store i32 -12, i32* %retval, align 4, !dbg !5395
  br label %return, !dbg !5395

if.end10:                                         ; preds = %kmalloc.exit
  %74 = load i8*, i8** %tmp, align 8, !dbg !5396
  store i8 1, i8* %74, align 1, !dbg !5397
  %75 = load %struct.usb_device*, %struct.usb_device** %usb, align 8, !dbg !5398
  %76 = load %struct.usb_device*, %struct.usb_device** %usb, align 8, !dbg !5399
  %call11 = call i32 @__create_pipe(%struct.usb_device* %76, i32 0) #8, !dbg !5399
  %or = or i32 -2147483648, %call11, !dbg !5399
  %77 = load i8*, i8** %tmp, align 8, !dbg !5400
  %call12 = call i32 @usb_control_msg(%struct.usb_device* %75, i32 %or, i8 zeroext -96, i8 zeroext 64, i16 zeroext -6656, i16 zeroext 0, i8* %77, i16 zeroext 1, i32 30) #8, !dbg !5401
  store i32 %call12, i32* %ret, align 4, !dbg !5402
  %78 = load i32, i32* %ret, align 4, !dbg !5403
  %cmp13 = icmp slt i32 %78, 0, !dbg !5405
  br i1 %cmp13, label %if.then14, label %if.end16, !dbg !5406

if.then14:                                        ; preds = %if.end10
  %79 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5407
  %class_dev15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %79, i32 0, i32 4, !dbg !5407
  %80 = load %struct.device*, %struct.device** %class_dev15, align 8, !dbg !5407
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %80, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !5407
  br label %done, !dbg !5409

if.end16:                                         ; preds = %if.end10
  %81 = load %struct.usb_device*, %struct.usb_device** %usb, align 8, !dbg !5410
  %82 = load %struct.usb_device*, %struct.usb_device** %usb, align 8, !dbg !5411
  %call17 = call i32 @__create_pipe(%struct.usb_device* %82, i32 0) #8, !dbg !5411
  %or18 = or i32 -2147483648, %call17, !dbg !5411
  %83 = load i8*, i8** %buf, align 8, !dbg !5412
  %84 = load i64, i64* %size.addr, align 8, !dbg !5413
  %conv = trunc i64 %84 to i16, !dbg !5413
  %call19 = call i32 @usb_control_msg(%struct.usb_device* %81, i32 %or18, i8 zeroext -96, i8 zeroext 64, i16 zeroext 0, i16 zeroext 0, i8* %83, i16 zeroext %conv, i32 30) #8, !dbg !5414
  store i32 %call19, i32* %ret, align 4, !dbg !5415
  %85 = load i32, i32* %ret, align 4, !dbg !5416
  %cmp20 = icmp slt i32 %85, 0, !dbg !5418
  br i1 %cmp20, label %if.then22, label %if.end24, !dbg !5419

if.then22:                                        ; preds = %if.end16
  %86 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5420
  %class_dev23 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %86, i32 0, i32 4, !dbg !5420
  %87 = load %struct.device*, %struct.device** %class_dev23, align 8, !dbg !5420
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %87, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #9, !dbg !5420
  br label %done, !dbg !5422

if.end24:                                         ; preds = %if.end16
  %88 = load i8*, i8** %tmp, align 8, !dbg !5423
  store i8 0, i8* %88, align 1, !dbg !5424
  %89 = load %struct.usb_device*, %struct.usb_device** %usb, align 8, !dbg !5425
  %90 = load %struct.usb_device*, %struct.usb_device** %usb, align 8, !dbg !5426
  %call25 = call i32 @__create_pipe(%struct.usb_device* %90, i32 0) #8, !dbg !5426
  %or26 = or i32 -2147483648, %call25, !dbg !5426
  %91 = load i8*, i8** %tmp, align 8, !dbg !5427
  %call27 = call i32 @usb_control_msg(%struct.usb_device* %89, i32 %or26, i8 zeroext -96, i8 zeroext 64, i16 zeroext -6656, i16 zeroext 0, i8* %91, i16 zeroext 1, i32 30) #8, !dbg !5428
  store i32 %call27, i32* %ret, align 4, !dbg !5429
  %92 = load i32, i32* %ret, align 4, !dbg !5430
  %cmp28 = icmp slt i32 %92, 0, !dbg !5432
  br i1 %cmp28, label %if.then30, label %if.end32, !dbg !5433

if.then30:                                        ; preds = %if.end24
  %93 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5434
  %class_dev31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %93, i32 0, i32 4, !dbg !5434
  %94 = load %struct.device*, %struct.device** %class_dev31, align 8, !dbg !5434
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %94, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #9, !dbg !5434
  br label %if.end32, !dbg !5434

if.end32:                                         ; preds = %if.then30, %if.end24
  br label %done, !dbg !5435

done:                                             ; preds = %if.end32, %if.then22, %if.then14
  call void @llvm.dbg.label(metadata !5436), !dbg !5437
  %95 = load i8*, i8** %tmp, align 8, !dbg !5438
  call void @kfree(i8* %95) #8, !dbg !5439
  %96 = load i8*, i8** %buf, align 8, !dbg !5440
  call void @kfree(i8* %96) #8, !dbg !5441
  %97 = load i32, i32* %ret, align 4, !dbg !5442
  store i32 %97, i32* %retval, align 4, !dbg !5443
  br label %return, !dbg !5443

return:                                           ; preds = %done, %if.then9, %if.then5, %if.then1, %if.then
  %98 = load i32, i32* %retval, align 4, !dbg !5444
  ret i32 %98, !dbg !5444
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usbduxfast_ai_insn_read(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !5445 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %usb = alloca %struct.usb_device*, align 8
  %devpriv = alloca %struct.usbduxfast_private*, align 8
  %chan = alloca i32, align 4
  %range = alloca i32, align 4
  %rngmask = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %actual_length = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5446, metadata !DIExpression()), !dbg !5447
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5448, metadata !DIExpression()), !dbg !5449
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5450, metadata !DIExpression()), !dbg !5451
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !5452, metadata !DIExpression()), !dbg !5453
  call void @llvm.dbg.declare(metadata %struct.usb_device** %usb, metadata !5454, metadata !DIExpression()), !dbg !5455
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5456
  %call = call %struct.usb_device* @comedi_to_usb_dev(%struct.comedi_device* %0) #8, !dbg !5457
  store %struct.usb_device* %call, %struct.usb_device** %usb, align 8, !dbg !5455
  call void @llvm.dbg.declare(metadata %struct.usbduxfast_private** %devpriv, metadata !5458, metadata !DIExpression()), !dbg !5459
  %1 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5460
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %1, i32 0, i32 3, !dbg !5461
  %2 = load i8*, i8** %private, align 8, !dbg !5461
  %3 = bitcast i8* %2 to %struct.usbduxfast_private*, !dbg !5460
  store %struct.usbduxfast_private* %3, %struct.usbduxfast_private** %devpriv, align 8, !dbg !5459
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !5462, metadata !DIExpression()), !dbg !5463
  %4 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5464
  %chanspec = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %4, i32 0, i32 4, !dbg !5464
  %5 = load i32, i32* %chanspec, align 4, !dbg !5464
  %and = and i32 %5, 65535, !dbg !5464
  store i32 %and, i32* %chan, align 4, !dbg !5463
  call void @llvm.dbg.declare(metadata i32* %range, metadata !5465, metadata !DIExpression()), !dbg !5466
  %6 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5467
  %chanspec1 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %6, i32 0, i32 4, !dbg !5467
  %7 = load i32, i32* %chanspec1, align 4, !dbg !5467
  %shr = lshr i32 %7, 16, !dbg !5467
  %and2 = and i32 %shr, 255, !dbg !5467
  store i32 %and2, i32* %range, align 4, !dbg !5466
  call void @llvm.dbg.declare(metadata i8* %rngmask, metadata !5468, metadata !DIExpression()), !dbg !5469
  %8 = load i32, i32* %range, align 4, !dbg !5470
  %tobool = icmp ne i32 %8, 0, !dbg !5470
  %9 = zext i1 %tobool to i64, !dbg !5470
  %cond = select i1 %tobool, i32 251, i32 255, !dbg !5470
  %conv = trunc i32 %cond to i8, !dbg !5470
  store i8 %conv, i8* %rngmask, align 1, !dbg !5469
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5471, metadata !DIExpression()), !dbg !5472
  call void @llvm.dbg.declare(metadata i32* %j, metadata !5473, metadata !DIExpression()), !dbg !5474
  call void @llvm.dbg.declare(metadata i32* %n, metadata !5475, metadata !DIExpression()), !dbg !5476
  call void @llvm.dbg.declare(metadata i32* %actual_length, metadata !5477, metadata !DIExpression()), !dbg !5478
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5479, metadata !DIExpression()), !dbg !5480
  %10 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !5481
  %mut = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %10, i32 0, i32 5, !dbg !5482
  call void @mutex_lock(%struct.mutex* %mut) #8, !dbg !5483
  %11 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !5484
  %ai_cmd_running = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %11, i32 0, i32 3, !dbg !5486
  %12 = load i16, i16* %ai_cmd_running, align 8, !dbg !5486
  %tobool3 = icmp ne i16 %12, 0, !dbg !5484
  br i1 %tobool3, label %if.then, label %if.end, !dbg !5487

if.then:                                          ; preds = %entry
  %13 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5488
  %class_dev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 4, !dbg !5488
  %14 = load %struct.device*, %struct.device** %class_dev, align 8, !dbg !5488
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %14, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0)) #9, !dbg !5488
  %15 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !5490
  %mut4 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %15, i32 0, i32 5, !dbg !5491
  call void @mutex_unlock(%struct.mutex* %mut4) #8, !dbg !5492
  store i32 -16, i32* %retval, align 4, !dbg !5493
  br label %return, !dbg !5493

if.end:                                           ; preds = %entry
  %16 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5494
  %17 = load i8, i8* %rngmask, align 1, !dbg !5495
  call void @usbduxfast_cmd_data(%struct.comedi_device* %16, i32 0, i8 zeroext 1, i8 zeroext 2, i8 zeroext %17, i8 zeroext 0) #8, !dbg !5496
  %18 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5497
  %19 = load i8, i8* %rngmask, align 1, !dbg !5498
  %conv5 = zext i8 %19 to i32, !dbg !5498
  %and6 = and i32 254, %conv5, !dbg !5499
  %conv7 = trunc i32 %and6 to i8, !dbg !5500
  call void @usbduxfast_cmd_data(%struct.comedi_device* %18, i32 1, i8 zeroext 12, i8 zeroext 0, i8 zeroext %conv7, i8 zeroext 0) #8, !dbg !5501
  %20 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5502
  %21 = load i8, i8* %rngmask, align 1, !dbg !5503
  %conv8 = zext i8 %21 to i32, !dbg !5503
  %and9 = and i32 254, %conv8, !dbg !5504
  %conv10 = trunc i32 %and9 to i8, !dbg !5505
  call void @usbduxfast_cmd_data(%struct.comedi_device* %20, i32 2, i8 zeroext 1, i8 zeroext 0, i8 zeroext %conv10, i8 zeroext 0) #8, !dbg !5506
  %22 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5507
  %23 = load i8, i8* %rngmask, align 1, !dbg !5508
  %conv11 = zext i8 %23 to i32, !dbg !5508
  %and12 = and i32 254, %conv11, !dbg !5509
  %conv13 = trunc i32 %and12 to i8, !dbg !5510
  call void @usbduxfast_cmd_data(%struct.comedi_device* %22, i32 3, i8 zeroext 1, i8 zeroext 0, i8 zeroext %conv13, i8 zeroext 0) #8, !dbg !5511
  %24 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5512
  %25 = load i8, i8* %rngmask, align 1, !dbg !5513
  %conv14 = zext i8 %25 to i32, !dbg !5513
  %and15 = and i32 254, %conv14, !dbg !5514
  %conv16 = trunc i32 %and15 to i8, !dbg !5515
  call void @usbduxfast_cmd_data(%struct.comedi_device* %24, i32 4, i8 zeroext 1, i8 zeroext 0, i8 zeroext %conv16, i8 zeroext 0) #8, !dbg !5516
  %26 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5517
  %27 = load i8, i8* %rngmask, align 1, !dbg !5518
  call void @usbduxfast_cmd_data(%struct.comedi_device* %26, i32 5, i8 zeroext 12, i8 zeroext 0, i8 zeroext %27, i8 zeroext 0) #8, !dbg !5519
  %28 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5520
  %29 = load i8, i8* %rngmask, align 1, !dbg !5521
  call void @usbduxfast_cmd_data(%struct.comedi_device* %28, i32 6, i8 zeroext 1, i8 zeroext 0, i8 zeroext %29, i8 zeroext 0) #8, !dbg !5522
  %30 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5523
  %call17 = call i32 @usbduxfast_send_cmd(%struct.comedi_device* %30, i32 0) #8, !dbg !5524
  store i32 %call17, i32* %ret, align 4, !dbg !5525
  %31 = load i32, i32* %ret, align 4, !dbg !5526
  %cmp = icmp slt i32 %31, 0, !dbg !5528
  br i1 %cmp, label %if.then19, label %if.end21, !dbg !5529

if.then19:                                        ; preds = %if.end
  %32 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !5530
  %mut20 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %32, i32 0, i32 5, !dbg !5532
  call void @mutex_unlock(%struct.mutex* %mut20) #8, !dbg !5533
  %33 = load i32, i32* %ret, align 4, !dbg !5534
  store i32 %33, i32* %retval, align 4, !dbg !5535
  br label %return, !dbg !5535

if.end21:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4, !dbg !5536
  br label %for.cond, !dbg !5538

for.cond:                                         ; preds = %for.inc, %if.end21
  %34 = load i32, i32* %i, align 4, !dbg !5539
  %cmp22 = icmp slt i32 %34, 4, !dbg !5541
  br i1 %cmp22, label %for.body, label %for.end, !dbg !5542

for.body:                                         ; preds = %for.cond
  %35 = load %struct.usb_device*, %struct.usb_device** %usb, align 8, !dbg !5543
  %36 = load %struct.usb_device*, %struct.usb_device** %usb, align 8, !dbg !5545
  %call24 = call i32 @__create_pipe(%struct.usb_device* %36, i32 6) #8, !dbg !5545
  %or = or i32 -1073741824, %call24, !dbg !5545
  %or25 = or i32 %or, 128, !dbg !5545
  %37 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !5546
  %inbuf = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %37, i32 0, i32 2, !dbg !5547
  %38 = load i8*, i8** %inbuf, align 8, !dbg !5547
  %call26 = call i32 @usb_bulk_msg(%struct.usb_device* %35, i32 %or25, i8* %38, i32 512, i32* %actual_length, i32 10000) #8, !dbg !5548
  store i32 %call26, i32* %ret, align 4, !dbg !5549
  %39 = load i32, i32* %ret, align 4, !dbg !5550
  %cmp27 = icmp slt i32 %39, 0, !dbg !5552
  br i1 %cmp27, label %if.then29, label %if.end32, !dbg !5553

if.then29:                                        ; preds = %for.body
  %40 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5554
  %class_dev30 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %40, i32 0, i32 4, !dbg !5554
  %41 = load %struct.device*, %struct.device** %class_dev30, align 8, !dbg !5554
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0)) #9, !dbg !5554
  %42 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !5556
  %mut31 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %42, i32 0, i32 5, !dbg !5557
  call void @mutex_unlock(%struct.mutex* %mut31) #8, !dbg !5558
  %43 = load i32, i32* %ret, align 4, !dbg !5559
  store i32 %43, i32* %retval, align 4, !dbg !5560
  br label %return, !dbg !5560

if.end32:                                         ; preds = %for.body
  br label %for.inc, !dbg !5561

for.inc:                                          ; preds = %if.end32
  %44 = load i32, i32* %i, align 4, !dbg !5562
  %inc = add i32 %44, 1, !dbg !5562
  store i32 %inc, i32* %i, align 4, !dbg !5562
  br label %for.cond, !dbg !5563, !llvm.loop !5564

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !5566
  br label %for.cond33, !dbg !5568

for.cond33:                                       ; preds = %for.end70, %for.end
  %45 = load i32, i32* %i, align 4, !dbg !5569
  %46 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5571
  %n34 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %46, i32 0, i32 1, !dbg !5572
  %47 = load i32, i32* %n34, align 4, !dbg !5572
  %cmp35 = icmp ult i32 %45, %47, !dbg !5573
  br i1 %cmp35, label %for.body37, label %for.end71, !dbg !5574

for.body37:                                       ; preds = %for.cond33
  %48 = load %struct.usb_device*, %struct.usb_device** %usb, align 8, !dbg !5575
  %49 = load %struct.usb_device*, %struct.usb_device** %usb, align 8, !dbg !5577
  %call38 = call i32 @__create_pipe(%struct.usb_device* %49, i32 6) #8, !dbg !5577
  %or39 = or i32 -1073741824, %call38, !dbg !5577
  %or40 = or i32 %or39, 128, !dbg !5577
  %50 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !5578
  %inbuf41 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %50, i32 0, i32 2, !dbg !5579
  %51 = load i8*, i8** %inbuf41, align 8, !dbg !5579
  %call42 = call i32 @usb_bulk_msg(%struct.usb_device* %48, i32 %or40, i8* %51, i32 512, i32* %actual_length, i32 10000) #8, !dbg !5580
  store i32 %call42, i32* %ret, align 4, !dbg !5581
  %52 = load i32, i32* %ret, align 4, !dbg !5582
  %cmp43 = icmp slt i32 %52, 0, !dbg !5584
  br i1 %cmp43, label %if.then45, label %if.end48, !dbg !5585

if.then45:                                        ; preds = %for.body37
  %53 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5586
  %class_dev46 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %53, i32 0, i32 4, !dbg !5586
  %54 = load %struct.device*, %struct.device** %class_dev46, align 8, !dbg !5586
  %55 = load i32, i32* %ret, align 4, !dbg !5586
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i32 %55) #9, !dbg !5586
  %56 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !5588
  %mut47 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %56, i32 0, i32 5, !dbg !5589
  call void @mutex_unlock(%struct.mutex* %mut47) #8, !dbg !5590
  %57 = load i32, i32* %ret, align 4, !dbg !5591
  store i32 %57, i32* %retval, align 4, !dbg !5592
  br label %return, !dbg !5592

if.end48:                                         ; preds = %for.body37
  %58 = load i32, i32* %actual_length, align 4, !dbg !5593
  %conv49 = sext i32 %58 to i64, !dbg !5593
  %div = udiv i64 %conv49, 2, !dbg !5594
  %conv50 = trunc i64 %div to i32, !dbg !5593
  store i32 %conv50, i32* %n, align 4, !dbg !5595
  %59 = load i32, i32* %n, align 4, !dbg !5596
  %rem = srem i32 %59, 16, !dbg !5598
  %cmp51 = icmp ne i32 %rem, 0, !dbg !5599
  br i1 %cmp51, label %if.then53, label %if.end56, !dbg !5600

if.then53:                                        ; preds = %if.end48
  %60 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5601
  %class_dev54 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %60, i32 0, i32 4, !dbg !5601
  %61 = load %struct.device*, %struct.device** %class_dev54, align 8, !dbg !5601
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0)) #9, !dbg !5601
  %62 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !5603
  %mut55 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %62, i32 0, i32 5, !dbg !5604
  call void @mutex_unlock(%struct.mutex* %mut55) #8, !dbg !5605
  store i32 -22, i32* %retval, align 4, !dbg !5606
  br label %return, !dbg !5606

if.end56:                                         ; preds = %if.end48
  %63 = load i32, i32* %chan, align 4, !dbg !5607
  store i32 %63, i32* %j, align 4, !dbg !5609
  br label %for.cond57, !dbg !5610

for.cond57:                                       ; preds = %for.inc69, %if.end56
  %64 = load i32, i32* %j, align 4, !dbg !5611
  %65 = load i32, i32* %n, align 4, !dbg !5613
  %cmp58 = icmp slt i32 %64, %65, !dbg !5614
  br i1 %cmp58, label %land.rhs, label %land.end, !dbg !5615

land.rhs:                                         ; preds = %for.cond57
  %66 = load i32, i32* %i, align 4, !dbg !5616
  %67 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5617
  %n60 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %67, i32 0, i32 1, !dbg !5618
  %68 = load i32, i32* %n60, align 4, !dbg !5618
  %cmp61 = icmp ult i32 %66, %68, !dbg !5619
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond57
  %69 = phi i1 [ false, %for.cond57 ], [ %cmp61, %land.rhs ], !dbg !5620
  br i1 %69, label %for.body63, label %for.end70, !dbg !5621

for.body63:                                       ; preds = %land.end
  %70 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !5622
  %inbuf64 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %70, i32 0, i32 2, !dbg !5624
  %71 = load i8*, i8** %inbuf64, align 8, !dbg !5624
  %72 = bitcast i8* %71 to i16*, !dbg !5625
  %73 = load i32, i32* %j, align 4, !dbg !5626
  %idxprom = sext i32 %73 to i64, !dbg !5625
  %arrayidx = getelementptr i16, i16* %72, i64 %idxprom, !dbg !5625
  %74 = load i16, i16* %arrayidx, align 2, !dbg !5625
  %conv65 = zext i16 %74 to i32, !dbg !5625
  %75 = load i32*, i32** %data.addr, align 8, !dbg !5627
  %76 = load i32, i32* %i, align 4, !dbg !5628
  %idxprom66 = sext i32 %76 to i64, !dbg !5627
  %arrayidx67 = getelementptr i32, i32* %75, i64 %idxprom66, !dbg !5627
  store i32 %conv65, i32* %arrayidx67, align 4, !dbg !5629
  %77 = load i32, i32* %i, align 4, !dbg !5630
  %inc68 = add i32 %77, 1, !dbg !5630
  store i32 %inc68, i32* %i, align 4, !dbg !5630
  br label %for.inc69, !dbg !5631

for.inc69:                                        ; preds = %for.body63
  %78 = load i32, i32* %j, align 4, !dbg !5632
  %add = add i32 %78, 16, !dbg !5633
  store i32 %add, i32* %j, align 4, !dbg !5634
  br label %for.cond57, !dbg !5635, !llvm.loop !5636

for.end70:                                        ; preds = %land.end
  br label %for.cond33, !dbg !5638, !llvm.loop !5639

for.end71:                                        ; preds = %for.cond33
  %79 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !5641
  %mut72 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %79, i32 0, i32 5, !dbg !5642
  call void @mutex_unlock(%struct.mutex* %mut72) #8, !dbg !5643
  %80 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5644
  %n73 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %80, i32 0, i32 1, !dbg !5645
  %81 = load i32, i32* %n73, align 4, !dbg !5645
  store i32 %81, i32* %retval, align 4, !dbg !5646
  br label %return, !dbg !5646

return:                                           ; preds = %for.end71, %if.then53, %if.then45, %if.then29, %if.then19, %if.then
  %82 = load i32, i32* %retval, align 4, !dbg !5647
  ret i32 %82, !dbg !5647
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usbduxfast_ai_cmdtest(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_cmd* %cmd) #2 !dbg !5648 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %cmd.addr = alloca %struct.comedi_cmd*, align 8
  %err = alloca i32, align 4
  %err2 = alloca i32, align 4
  %steps = alloca i32, align 4
  %arg = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5649, metadata !DIExpression()), !dbg !5650
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5651, metadata !DIExpression()), !dbg !5652
  store %struct.comedi_cmd* %cmd, %struct.comedi_cmd** %cmd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd.addr, metadata !5653, metadata !DIExpression()), !dbg !5654
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5655, metadata !DIExpression()), !dbg !5656
  store i32 0, i32* %err, align 4, !dbg !5656
  call void @llvm.dbg.declare(metadata i32* %err2, metadata !5657, metadata !DIExpression()), !dbg !5658
  store i32 0, i32* %err2, align 4, !dbg !5658
  call void @llvm.dbg.declare(metadata i32* %steps, metadata !5659, metadata !DIExpression()), !dbg !5660
  call void @llvm.dbg.declare(metadata i32* %arg, metadata !5661, metadata !DIExpression()), !dbg !5662
  %0 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5663
  %start_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %0, i32 0, i32 2, !dbg !5664
  %call = call i32 @comedi_check_trigger_src(i32* %start_src, i32 194) #8, !dbg !5665
  %1 = load i32, i32* %err, align 4, !dbg !5666
  %or = or i32 %1, %call, !dbg !5666
  store i32 %or, i32* %err, align 4, !dbg !5666
  %2 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5667
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %2, i32 0, i32 4, !dbg !5668
  %call1 = call i32 @comedi_check_trigger_src(i32* %scan_begin_src, i32 4) #8, !dbg !5669
  %3 = load i32, i32* %err, align 4, !dbg !5670
  %or2 = or i32 %3, %call1, !dbg !5670
  store i32 %or2, i32* %err, align 4, !dbg !5670
  %4 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5671
  %convert_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %4, i32 0, i32 6, !dbg !5672
  %call3 = call i32 @comedi_check_trigger_src(i32* %convert_src, i32 16) #8, !dbg !5673
  %5 = load i32, i32* %err, align 4, !dbg !5674
  %or4 = or i32 %5, %call3, !dbg !5674
  store i32 %or4, i32* %err, align 4, !dbg !5674
  %6 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5675
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %6, i32 0, i32 8, !dbg !5676
  %call5 = call i32 @comedi_check_trigger_src(i32* %scan_end_src, i32 32) #8, !dbg !5677
  %7 = load i32, i32* %err, align 4, !dbg !5678
  %or6 = or i32 %7, %call5, !dbg !5678
  store i32 %or6, i32* %err, align 4, !dbg !5678
  %8 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5679
  %stop_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %8, i32 0, i32 10, !dbg !5680
  %call7 = call i32 @comedi_check_trigger_src(i32* %stop_src, i32 33) #8, !dbg !5681
  %9 = load i32, i32* %err, align 4, !dbg !5682
  %or8 = or i32 %9, %call7, !dbg !5682
  store i32 %or8, i32* %err, align 4, !dbg !5682
  %10 = load i32, i32* %err, align 4, !dbg !5683
  %tobool = icmp ne i32 %10, 0, !dbg !5683
  br i1 %tobool, label %if.then, label %if.end, !dbg !5685

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !5686
  br label %return, !dbg !5686

if.end:                                           ; preds = %entry
  %11 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5687
  %start_src9 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %11, i32 0, i32 2, !dbg !5688
  %12 = load i32, i32* %start_src9, align 8, !dbg !5688
  %call10 = call i32 @comedi_check_trigger_is_unique(i32 %12) #8, !dbg !5689
  %13 = load i32, i32* %err, align 4, !dbg !5690
  %or11 = or i32 %13, %call10, !dbg !5690
  store i32 %or11, i32* %err, align 4, !dbg !5690
  %14 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5691
  %stop_src12 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %14, i32 0, i32 10, !dbg !5692
  %15 = load i32, i32* %stop_src12, align 8, !dbg !5692
  %call13 = call i32 @comedi_check_trigger_is_unique(i32 %15) #8, !dbg !5693
  %16 = load i32, i32* %err, align 4, !dbg !5694
  %or14 = or i32 %16, %call13, !dbg !5694
  store i32 %or14, i32* %err, align 4, !dbg !5694
  %17 = load i32, i32* %err, align 4, !dbg !5695
  %tobool15 = icmp ne i32 %17, 0, !dbg !5695
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !5697

if.then16:                                        ; preds = %if.end
  store i32 2, i32* %retval, align 4, !dbg !5698
  br label %return, !dbg !5698

if.end17:                                         ; preds = %if.end
  %18 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5699
  %start_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %18, i32 0, i32 3, !dbg !5700
  %call18 = call i32 @comedi_check_trigger_arg_is(i32* %start_arg, i32 0) #8, !dbg !5701
  %19 = load i32, i32* %err, align 4, !dbg !5702
  %or19 = or i32 %19, %call18, !dbg !5702
  store i32 %or19, i32* %err, align 4, !dbg !5702
  %20 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5703
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %20, i32 0, i32 13, !dbg !5705
  %21 = load i32, i32* %chanlist_len, align 8, !dbg !5705
  %tobool20 = icmp ne i32 %21, 0, !dbg !5703
  br i1 %tobool20, label %if.end23, label %if.then21, !dbg !5706

if.then21:                                        ; preds = %if.end17
  %22 = load i32, i32* %err, align 4, !dbg !5707
  %or22 = or i32 %22, -22, !dbg !5707
  store i32 %or22, i32* %err, align 4, !dbg !5707
  br label %if.end23, !dbg !5708

if.end23:                                         ; preds = %if.then21, %if.end17
  %23 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5709
  %start_src24 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %23, i32 0, i32 2, !dbg !5711
  %24 = load i32, i32* %start_src24, align 8, !dbg !5711
  %cmp = icmp eq i32 %24, 64, !dbg !5712
  br i1 %cmp, label %land.lhs.true, label %if.end32, !dbg !5713

land.lhs.true:                                    ; preds = %if.end23
  %25 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5714
  %chanlist_len25 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %25, i32 0, i32 13, !dbg !5715
  %26 = load i32, i32* %chanlist_len25, align 8, !dbg !5715
  %cmp26 = icmp ne i32 %26, 1, !dbg !5716
  br i1 %cmp26, label %land.lhs.true27, label %if.end32, !dbg !5717

land.lhs.true27:                                  ; preds = %land.lhs.true
  %27 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5718
  %chanlist_len28 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %27, i32 0, i32 13, !dbg !5719
  %28 = load i32, i32* %chanlist_len28, align 8, !dbg !5719
  %cmp29 = icmp ne i32 %28, 16, !dbg !5720
  br i1 %cmp29, label %if.then30, label %if.end32, !dbg !5721

if.then30:                                        ; preds = %land.lhs.true27
  %29 = load i32, i32* %err, align 4, !dbg !5722
  %or31 = or i32 %29, -22, !dbg !5722
  store i32 %or31, i32* %err, align 4, !dbg !5722
  br label %if.end32, !dbg !5723

if.end32:                                         ; preds = %if.then30, %land.lhs.true27, %land.lhs.true, %if.end23
  %30 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5724
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %30, i32 0, i32 9, !dbg !5725
  %31 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5726
  %chanlist_len33 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %31, i32 0, i32 13, !dbg !5727
  %32 = load i32, i32* %chanlist_len33, align 8, !dbg !5727
  %call34 = call i32 @comedi_check_trigger_arg_is(i32* %scan_end_arg, i32 %32) #8, !dbg !5728
  %33 = load i32, i32* %err, align 4, !dbg !5729
  %or35 = or i32 %33, %call34, !dbg !5729
  store i32 %or35, i32* %err, align 4, !dbg !5729
  %34 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5730
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %34, i32 0, i32 7, !dbg !5731
  %35 = load i32, i32* %convert_arg, align 4, !dbg !5731
  %mul = mul i32 %35, 30, !dbg !5732
  %div = udiv i32 %mul, 1000, !dbg !5733
  store i32 %div, i32* %steps, align 4, !dbg !5734
  %36 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5735
  %chanlist_len36 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %36, i32 0, i32 13, !dbg !5737
  %37 = load i32, i32* %chanlist_len36, align 8, !dbg !5737
  %cmp37 = icmp ne i32 %37, 1, !dbg !5738
  br i1 %cmp37, label %if.then38, label %if.else, !dbg !5739

if.then38:                                        ; preds = %if.end32
  %call39 = call i32 @comedi_check_trigger_arg_min(i32* %steps, i32 9) #8, !dbg !5740
  %38 = load i32, i32* %err2, align 4, !dbg !5741
  %or40 = or i32 %38, %call39, !dbg !5741
  store i32 %or40, i32* %err2, align 4, !dbg !5741
  br label %if.end43, !dbg !5742

if.else:                                          ; preds = %if.end32
  %call41 = call i32 @comedi_check_trigger_arg_min(i32* %steps, i32 1) #8, !dbg !5743
  %39 = load i32, i32* %err2, align 4, !dbg !5744
  %or42 = or i32 %39, %call41, !dbg !5744
  store i32 %or42, i32* %err2, align 4, !dbg !5744
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then38
  %call44 = call i32 @comedi_check_trigger_arg_max(i32* %steps, i32 500) #8, !dbg !5745
  %40 = load i32, i32* %err2, align 4, !dbg !5746
  %or45 = or i32 %40, %call44, !dbg !5746
  store i32 %or45, i32* %err2, align 4, !dbg !5746
  %41 = load i32, i32* %err2, align 4, !dbg !5747
  %tobool46 = icmp ne i32 %41, 0, !dbg !5747
  br i1 %tobool46, label %if.then47, label %if.end54, !dbg !5749

if.then47:                                        ; preds = %if.end43
  %42 = load i32, i32* %err2, align 4, !dbg !5750
  %43 = load i32, i32* %err, align 4, !dbg !5752
  %or48 = or i32 %43, %42, !dbg !5752
  store i32 %or48, i32* %err, align 4, !dbg !5752
  %44 = load i32, i32* %steps, align 4, !dbg !5753
  %mul49 = mul i32 %44, 1000, !dbg !5754
  %div50 = udiv i32 %mul49, 30, !dbg !5755
  store i32 %div50, i32* %arg, align 4, !dbg !5756
  %45 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5757
  %convert_arg51 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %45, i32 0, i32 7, !dbg !5758
  %46 = load i32, i32* %arg, align 4, !dbg !5759
  %call52 = call i32 @comedi_check_trigger_arg_is(i32* %convert_arg51, i32 %46) #8, !dbg !5760
  %47 = load i32, i32* %err, align 4, !dbg !5761
  %or53 = or i32 %47, %call52, !dbg !5761
  store i32 %or53, i32* %err, align 4, !dbg !5761
  br label %if.end54, !dbg !5762

if.end54:                                         ; preds = %if.then47, %if.end43
  %48 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5763
  %stop_src55 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %48, i32 0, i32 10, !dbg !5765
  %49 = load i32, i32* %stop_src55, align 8, !dbg !5765
  %cmp56 = icmp eq i32 %49, 32, !dbg !5766
  br i1 %cmp56, label %if.then57, label %if.else60, !dbg !5767

if.then57:                                        ; preds = %if.end54
  %50 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5768
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %50, i32 0, i32 11, !dbg !5769
  %call58 = call i32 @comedi_check_trigger_arg_min(i32* %stop_arg, i32 1) #8, !dbg !5770
  %51 = load i32, i32* %err, align 4, !dbg !5771
  %or59 = or i32 %51, %call58, !dbg !5771
  store i32 %or59, i32* %err, align 4, !dbg !5771
  br label %if.end64, !dbg !5772

if.else60:                                        ; preds = %if.end54
  %52 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5773
  %stop_arg61 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %52, i32 0, i32 11, !dbg !5774
  %call62 = call i32 @comedi_check_trigger_arg_is(i32* %stop_arg61, i32 0) #8, !dbg !5775
  %53 = load i32, i32* %err, align 4, !dbg !5776
  %or63 = or i32 %53, %call62, !dbg !5776
  store i32 %or63, i32* %err, align 4, !dbg !5776
  br label %if.end64

if.end64:                                         ; preds = %if.else60, %if.then57
  %54 = load i32, i32* %err, align 4, !dbg !5777
  %tobool65 = icmp ne i32 %54, 0, !dbg !5777
  br i1 %tobool65, label %if.then66, label %if.end67, !dbg !5779

if.then66:                                        ; preds = %if.end64
  store i32 3, i32* %retval, align 4, !dbg !5780
  br label %return, !dbg !5780

if.end67:                                         ; preds = %if.end64
  %55 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5781
  %chanlist = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %55, i32 0, i32 12, !dbg !5783
  %56 = load i32*, i32** %chanlist, align 8, !dbg !5783
  %tobool68 = icmp ne i32* %56, null, !dbg !5781
  br i1 %tobool68, label %land.lhs.true69, label %if.end75, !dbg !5784

land.lhs.true69:                                  ; preds = %if.end67
  %57 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5785
  %chanlist_len70 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %57, i32 0, i32 13, !dbg !5786
  %58 = load i32, i32* %chanlist_len70, align 8, !dbg !5786
  %cmp71 = icmp ugt i32 %58, 0, !dbg !5787
  br i1 %cmp71, label %if.then72, label %if.end75, !dbg !5788

if.then72:                                        ; preds = %land.lhs.true69
  %59 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5789
  %60 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5790
  %61 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5791
  %call73 = call i32 @usbduxfast_ai_check_chanlist(%struct.comedi_device* %59, %struct.comedi_subdevice* %60, %struct.comedi_cmd* %61) #8, !dbg !5792
  %62 = load i32, i32* %err, align 4, !dbg !5793
  %or74 = or i32 %62, %call73, !dbg !5793
  store i32 %or74, i32* %err, align 4, !dbg !5793
  br label %if.end75, !dbg !5794

if.end75:                                         ; preds = %if.then72, %land.lhs.true69, %if.end67
  %63 = load i32, i32* %err, align 4, !dbg !5795
  %tobool76 = icmp ne i32 %63, 0, !dbg !5795
  br i1 %tobool76, label %if.then77, label %if.end78, !dbg !5797

if.then77:                                        ; preds = %if.end75
  store i32 5, i32* %retval, align 4, !dbg !5798
  br label %return, !dbg !5798

if.end78:                                         ; preds = %if.end75
  store i32 0, i32* %retval, align 4, !dbg !5799
  br label %return, !dbg !5799

return:                                           ; preds = %if.end78, %if.then77, %if.then66, %if.then16, %if.then
  %64 = load i32, i32* %retval, align 4, !dbg !5800
  ret i32 %64, !dbg !5800
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usbduxfast_ai_cmd(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #2 !dbg !5801 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %devpriv = alloca %struct.usbduxfast_private*, align 8
  %cmd = alloca %struct.comedi_cmd*, align 8
  %rngmask = alloca i32, align 4
  %j = alloca i32, align 4
  %ret = alloca i32, align 4
  %steps = alloca i64, align 8
  %steps_tmp = alloca i64, align 8
  %index = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5802, metadata !DIExpression()), !dbg !5803
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5804, metadata !DIExpression()), !dbg !5805
  call void @llvm.dbg.declare(metadata %struct.usbduxfast_private** %devpriv, metadata !5806, metadata !DIExpression()), !dbg !5807
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5808
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5809
  %1 = load i8*, i8** %private, align 8, !dbg !5809
  %2 = bitcast i8* %1 to %struct.usbduxfast_private*, !dbg !5808
  store %struct.usbduxfast_private* %2, %struct.usbduxfast_private** %devpriv, align 8, !dbg !5807
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd, metadata !5810, metadata !DIExpression()), !dbg !5811
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5812
  %async = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %3, i32 0, i32 7, !dbg !5813
  %4 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5813
  %cmd1 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %4, i32 0, i32 17, !dbg !5814
  store %struct.comedi_cmd* %cmd1, %struct.comedi_cmd** %cmd, align 8, !dbg !5811
  call void @llvm.dbg.declare(metadata i32* %rngmask, metadata !5815, metadata !DIExpression()), !dbg !5816
  store i32 255, i32* %rngmask, align 4, !dbg !5816
  call void @llvm.dbg.declare(metadata i32* %j, metadata !5817, metadata !DIExpression()), !dbg !5818
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5819, metadata !DIExpression()), !dbg !5820
  call void @llvm.dbg.declare(metadata i64* %steps, metadata !5821, metadata !DIExpression()), !dbg !5822
  call void @llvm.dbg.declare(metadata i64* %steps_tmp, metadata !5823, metadata !DIExpression()), !dbg !5824
  %5 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !5825
  %mut = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %5, i32 0, i32 5, !dbg !5826
  call void @mutex_lock(%struct.mutex* %mut) #8, !dbg !5827
  %6 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !5828
  %ai_cmd_running = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %6, i32 0, i32 3, !dbg !5830
  %7 = load i16, i16* %ai_cmd_running, align 8, !dbg !5830
  %tobool = icmp ne i16 %7, 0, !dbg !5828
  br i1 %tobool, label %if.then, label %if.end, !dbg !5831

if.then:                                          ; preds = %entry
  store i32 -16, i32* %ret, align 4, !dbg !5832
  br label %cmd_exit, !dbg !5834

if.end:                                           ; preds = %entry
  %8 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !5835
  %ignore = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %8, i32 0, i32 4, !dbg !5836
  store i32 4, i32* %ignore, align 4, !dbg !5837
  %9 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5838
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %9, i32 0, i32 7, !dbg !5839
  %10 = load i32, i32* %convert_arg, align 4, !dbg !5839
  %mul = mul i32 %10, 30, !dbg !5840
  %div = udiv i32 %mul, 1000, !dbg !5841
  %conv = zext i32 %div to i64, !dbg !5842
  store i64 %conv, i64* %steps, align 8, !dbg !5843
  %11 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5844
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %11, i32 0, i32 13, !dbg !5845
  %12 = load i32, i32* %chanlist_len, align 8, !dbg !5845
  switch i32 %12, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb35
    i32 3, label %sw.bb84
    i32 16, label %sw.bb135
  ], !dbg !5846

sw.bb:                                            ; preds = %if.end
  %13 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5847
  %chanlist = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %13, i32 0, i32 12, !dbg !5847
  %14 = load i32*, i32** %chanlist, align 8, !dbg !5847
  %arrayidx = getelementptr i32, i32* %14, i64 0, !dbg !5847
  %15 = load i32, i32* %arrayidx, align 4, !dbg !5847
  %shr = lshr i32 %15, 16, !dbg !5847
  %and = and i32 %shr, 255, !dbg !5847
  %cmp = icmp ugt i32 %and, 0, !dbg !5850
  br i1 %cmp, label %if.then3, label %if.else, !dbg !5851

if.then3:                                         ; preds = %sw.bb
  store i32 251, i32* %rngmask, align 4, !dbg !5852
  br label %if.end4, !dbg !5853

if.else:                                          ; preds = %sw.bb
  store i32 255, i32* %rngmask, align 4, !dbg !5854
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then3
  %16 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5855
  %start_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %16, i32 0, i32 2, !dbg !5857
  %17 = load i32, i32* %start_src, align 8, !dbg !5857
  %cmp5 = icmp eq i32 %17, 64, !dbg !5858
  br i1 %cmp5, label %if.then7, label %if.else9, !dbg !5859

if.then7:                                         ; preds = %if.end4
  %18 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5860
  %19 = load i32, i32* %rngmask, align 4, !dbg !5862
  %conv8 = trunc i32 %19 to i8, !dbg !5862
  call void @usbduxfast_cmd_data(%struct.comedi_device* %18, i32 0, i8 zeroext 1, i8 zeroext 1, i8 zeroext %conv8, i8 zeroext 0) #8, !dbg !5863
  br label %if.end11, !dbg !5864

if.else9:                                         ; preds = %if.end4
  %20 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5865
  %21 = load i32, i32* %rngmask, align 4, !dbg !5867
  %conv10 = trunc i32 %21 to i8, !dbg !5867
  call void @usbduxfast_cmd_data(%struct.comedi_device* %20, i32 0, i8 zeroext 1, i8 zeroext 0, i8 zeroext %conv10, i8 zeroext 0) #8, !dbg !5868
  br label %if.end11

if.end11:                                         ; preds = %if.else9, %if.then7
  %22 = load i64, i64* %steps, align 8, !dbg !5869
  %cmp12 = icmp slt i64 %22, 9, !dbg !5871
  br i1 %cmp12, label %if.then14, label %if.else24, !dbg !5872

if.then14:                                        ; preds = %if.end11
  %23 = load i64, i64* %steps, align 8, !dbg !5873
  %cmp15 = icmp sle i64 %23, 1, !dbg !5876
  br i1 %cmp15, label %if.then17, label %if.else19, !dbg !5877

if.then17:                                        ; preds = %if.then14
  %24 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5878
  %25 = load i32, i32* %rngmask, align 4, !dbg !5880
  %conv18 = trunc i32 %25 to i8, !dbg !5880
  call void @usbduxfast_cmd_data(%struct.comedi_device* %24, i32 1, i8 zeroext -119, i8 zeroext 3, i8 zeroext %conv18, i8 zeroext -1) #8, !dbg !5881
  br label %if.end23, !dbg !5882

if.else19:                                        ; preds = %if.then14
  %26 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5883
  %27 = load i64, i64* %steps, align 8, !dbg !5885
  %sub = sub i64 %27, 1, !dbg !5886
  %conv20 = trunc i64 %sub to i8, !dbg !5885
  %28 = load i32, i32* %rngmask, align 4, !dbg !5887
  %conv21 = trunc i32 %28 to i8, !dbg !5887
  call void @usbduxfast_cmd_data(%struct.comedi_device* %26, i32 1, i8 zeroext %conv20, i8 zeroext 2, i8 zeroext %conv21, i8 zeroext 0) #8, !dbg !5888
  %29 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5889
  %30 = load i32, i32* %rngmask, align 4, !dbg !5890
  %conv22 = trunc i32 %30 to i8, !dbg !5890
  call void @usbduxfast_cmd_data(%struct.comedi_device* %29, i32 2, i8 zeroext 9, i8 zeroext 1, i8 zeroext %conv22, i8 zeroext -1) #8, !dbg !5891
  br label %if.end23

if.end23:                                         ; preds = %if.else19, %if.then17
  br label %if.end34, !dbg !5892

if.else24:                                        ; preds = %if.end11
  %31 = load i64, i64* %steps, align 8, !dbg !5893
  %sub25 = sub i64 %31, 1, !dbg !5895
  store i64 %sub25, i64* %steps, align 8, !dbg !5896
  %32 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5897
  %33 = load i64, i64* %steps, align 8, !dbg !5898
  %div26 = sdiv i64 %33, 2, !dbg !5899
  %conv27 = trunc i64 %div26 to i8, !dbg !5898
  %34 = load i32, i32* %rngmask, align 4, !dbg !5900
  %conv28 = trunc i32 %34 to i8, !dbg !5900
  call void @usbduxfast_cmd_data(%struct.comedi_device* %32, i32 1, i8 zeroext %conv27, i8 zeroext 0, i8 zeroext %conv28, i8 zeroext 0) #8, !dbg !5901
  %35 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5902
  %36 = load i64, i64* %steps, align 8, !dbg !5903
  %37 = load i64, i64* %steps, align 8, !dbg !5904
  %div29 = sdiv i64 %37, 2, !dbg !5905
  %sub30 = sub i64 %36, %div29, !dbg !5906
  %conv31 = trunc i64 %sub30 to i8, !dbg !5903
  %38 = load i32, i32* %rngmask, align 4, !dbg !5907
  %conv32 = trunc i32 %38 to i8, !dbg !5907
  call void @usbduxfast_cmd_data(%struct.comedi_device* %35, i32 2, i8 zeroext %conv31, i8 zeroext 0, i8 zeroext %conv32, i8 zeroext 0) #8, !dbg !5908
  %39 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5909
  %40 = load i32, i32* %rngmask, align 4, !dbg !5910
  %conv33 = trunc i32 %40 to i8, !dbg !5910
  call void @usbduxfast_cmd_data(%struct.comedi_device* %39, i32 3, i8 zeroext 9, i8 zeroext 3, i8 zeroext %conv33, i8 zeroext -1) #8, !dbg !5911
  br label %if.end34

if.end34:                                         ; preds = %if.else24, %if.end23
  br label %sw.epilog, !dbg !5912

sw.bb35:                                          ; preds = %if.end
  %41 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5913
  %chanlist36 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %41, i32 0, i32 12, !dbg !5913
  %42 = load i32*, i32** %chanlist36, align 8, !dbg !5913
  %arrayidx37 = getelementptr i32, i32* %42, i64 0, !dbg !5913
  %43 = load i32, i32* %arrayidx37, align 4, !dbg !5913
  %shr38 = lshr i32 %43, 16, !dbg !5913
  %and39 = and i32 %shr38, 255, !dbg !5913
  %cmp40 = icmp ugt i32 %and39, 0, !dbg !5915
  br i1 %cmp40, label %if.then42, label %if.else43, !dbg !5916

if.then42:                                        ; preds = %sw.bb35
  store i32 251, i32* %rngmask, align 4, !dbg !5917
  br label %if.end44, !dbg !5918

if.else43:                                        ; preds = %sw.bb35
  store i32 255, i32* %rngmask, align 4, !dbg !5919
  br label %if.end44

if.end44:                                         ; preds = %if.else43, %if.then42
  %44 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5920
  %45 = load i32, i32* %rngmask, align 4, !dbg !5921
  %conv45 = trunc i32 %45 to i8, !dbg !5921
  call void @usbduxfast_cmd_data(%struct.comedi_device* %44, i32 0, i8 zeroext 1, i8 zeroext 2, i8 zeroext %conv45, i8 zeroext 0) #8, !dbg !5922
  %46 = load i64, i64* %steps, align 8, !dbg !5923
  %sub46 = sub i64 %46, 1, !dbg !5924
  store i64 %sub46, i64* %steps_tmp, align 8, !dbg !5925
  %47 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5926
  %chanlist47 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %47, i32 0, i32 12, !dbg !5926
  %48 = load i32*, i32** %chanlist47, align 8, !dbg !5926
  %arrayidx48 = getelementptr i32, i32* %48, i64 1, !dbg !5926
  %49 = load i32, i32* %arrayidx48, align 4, !dbg !5926
  %shr49 = lshr i32 %49, 16, !dbg !5926
  %and50 = and i32 %shr49, 255, !dbg !5926
  %cmp51 = icmp ugt i32 %and50, 0, !dbg !5928
  br i1 %cmp51, label %if.then53, label %if.else54, !dbg !5929

if.then53:                                        ; preds = %if.end44
  store i32 251, i32* %rngmask, align 4, !dbg !5930
  br label %if.end55, !dbg !5931

if.else54:                                        ; preds = %if.end44
  store i32 255, i32* %rngmask, align 4, !dbg !5932
  br label %if.end55

if.end55:                                         ; preds = %if.else54, %if.then53
  %50 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5933
  %51 = load i64, i64* %steps_tmp, align 8, !dbg !5934
  %div56 = sdiv i64 %51, 2, !dbg !5935
  %conv57 = trunc i64 %div56 to i8, !dbg !5934
  %52 = load i32, i32* %rngmask, align 4, !dbg !5936
  %and58 = and i32 254, %52, !dbg !5937
  %conv59 = trunc i32 %and58 to i8, !dbg !5938
  call void @usbduxfast_cmd_data(%struct.comedi_device* %50, i32 1, i8 zeroext %conv57, i8 zeroext 0, i8 zeroext %conv59, i8 zeroext 0) #8, !dbg !5939
  %53 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5940
  %54 = load i64, i64* %steps_tmp, align 8, !dbg !5941
  %55 = load i64, i64* %steps_tmp, align 8, !dbg !5942
  %div60 = sdiv i64 %55, 2, !dbg !5943
  %sub61 = sub i64 %54, %div60, !dbg !5944
  %conv62 = trunc i64 %sub61 to i8, !dbg !5941
  %56 = load i32, i32* %rngmask, align 4, !dbg !5945
  %conv63 = trunc i32 %56 to i8, !dbg !5945
  call void @usbduxfast_cmd_data(%struct.comedi_device* %53, i32 2, i8 zeroext %conv62, i8 zeroext 0, i8 zeroext %conv63, i8 zeroext 0) #8, !dbg !5946
  %57 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5947
  %58 = load i32, i32* %rngmask, align 4, !dbg !5948
  %conv64 = trunc i32 %58 to i8, !dbg !5948
  call void @usbduxfast_cmd_data(%struct.comedi_device* %57, i32 3, i8 zeroext 1, i8 zeroext 2, i8 zeroext %conv64, i8 zeroext 0) #8, !dbg !5949
  %59 = load i64, i64* %steps, align 8, !dbg !5950
  %sub65 = sub i64 %59, 2, !dbg !5951
  store i64 %sub65, i64* %steps_tmp, align 8, !dbg !5952
  %60 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5953
  %chanlist66 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %60, i32 0, i32 12, !dbg !5953
  %61 = load i32*, i32** %chanlist66, align 8, !dbg !5953
  %arrayidx67 = getelementptr i32, i32* %61, i64 0, !dbg !5953
  %62 = load i32, i32* %arrayidx67, align 4, !dbg !5953
  %shr68 = lshr i32 %62, 16, !dbg !5953
  %and69 = and i32 %shr68, 255, !dbg !5953
  %cmp70 = icmp ugt i32 %and69, 0, !dbg !5955
  br i1 %cmp70, label %if.then72, label %if.else73, !dbg !5956

if.then72:                                        ; preds = %if.end55
  store i32 251, i32* %rngmask, align 4, !dbg !5957
  br label %if.end74, !dbg !5958

if.else73:                                        ; preds = %if.end55
  store i32 255, i32* %rngmask, align 4, !dbg !5959
  br label %if.end74

if.end74:                                         ; preds = %if.else73, %if.then72
  %63 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5960
  %64 = load i64, i64* %steps_tmp, align 8, !dbg !5961
  %div75 = sdiv i64 %64, 2, !dbg !5962
  %conv76 = trunc i64 %div75 to i8, !dbg !5961
  %65 = load i32, i32* %rngmask, align 4, !dbg !5963
  %and77 = and i32 253, %65, !dbg !5964
  %conv78 = trunc i32 %and77 to i8, !dbg !5965
  call void @usbduxfast_cmd_data(%struct.comedi_device* %63, i32 4, i8 zeroext %conv76, i8 zeroext 0, i8 zeroext %conv78, i8 zeroext 0) #8, !dbg !5966
  %66 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5967
  %67 = load i64, i64* %steps_tmp, align 8, !dbg !5968
  %68 = load i64, i64* %steps_tmp, align 8, !dbg !5969
  %div79 = sdiv i64 %68, 2, !dbg !5970
  %sub80 = sub i64 %67, %div79, !dbg !5971
  %conv81 = trunc i64 %sub80 to i8, !dbg !5968
  %69 = load i32, i32* %rngmask, align 4, !dbg !5972
  %conv82 = trunc i32 %69 to i8, !dbg !5972
  call void @usbduxfast_cmd_data(%struct.comedi_device* %66, i32 5, i8 zeroext %conv81, i8 zeroext 0, i8 zeroext %conv82, i8 zeroext 0) #8, !dbg !5973
  %70 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5974
  %71 = load i32, i32* %rngmask, align 4, !dbg !5975
  %conv83 = trunc i32 %71 to i8, !dbg !5975
  call void @usbduxfast_cmd_data(%struct.comedi_device* %70, i32 6, i8 zeroext 1, i8 zeroext 0, i8 zeroext %conv83, i8 zeroext 0) #8, !dbg !5976
  br label %sw.epilog, !dbg !5977

sw.bb84:                                          ; preds = %if.end
  store i32 0, i32* %j, align 4, !dbg !5978
  br label %for.cond, !dbg !5980

for.cond:                                         ; preds = %for.inc, %sw.bb84
  %72 = load i32, i32* %j, align 4, !dbg !5981
  %cmp85 = icmp slt i32 %72, 1, !dbg !5983
  br i1 %cmp85, label %for.body, label %for.end, !dbg !5984

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %index, metadata !5985, metadata !DIExpression()), !dbg !5987
  %73 = load i32, i32* %j, align 4, !dbg !5988
  %mul87 = mul i32 %73, 2, !dbg !5989
  store i32 %mul87, i32* %index, align 4, !dbg !5987
  %74 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5990
  %chanlist88 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %74, i32 0, i32 12, !dbg !5990
  %75 = load i32*, i32** %chanlist88, align 8, !dbg !5990
  %76 = load i32, i32* %j, align 4, !dbg !5990
  %idxprom = sext i32 %76 to i64, !dbg !5990
  %arrayidx89 = getelementptr i32, i32* %75, i64 %idxprom, !dbg !5990
  %77 = load i32, i32* %arrayidx89, align 4, !dbg !5990
  %shr90 = lshr i32 %77, 16, !dbg !5990
  %and91 = and i32 %shr90, 255, !dbg !5990
  %cmp92 = icmp ugt i32 %and91, 0, !dbg !5992
  br i1 %cmp92, label %if.then94, label %if.else95, !dbg !5993

if.then94:                                        ; preds = %for.body
  store i32 251, i32* %rngmask, align 4, !dbg !5994
  br label %if.end96, !dbg !5995

if.else95:                                        ; preds = %for.body
  store i32 255, i32* %rngmask, align 4, !dbg !5996
  br label %if.end96

if.end96:                                         ; preds = %if.else95, %if.then94
  %78 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5997
  %79 = load i32, i32* %index, align 4, !dbg !5998
  %80 = load i64, i64* %steps, align 8, !dbg !5999
  %div97 = sdiv i64 %80, 2, !dbg !6000
  %conv98 = trunc i64 %div97 to i8, !dbg !5999
  %81 = load i32, i32* %rngmask, align 4, !dbg !6001
  %conv99 = trunc i32 %81 to i8, !dbg !6001
  call void @usbduxfast_cmd_data(%struct.comedi_device* %78, i32 %79, i8 zeroext %conv98, i8 zeroext 2, i8 zeroext %conv99, i8 zeroext 0) #8, !dbg !6002
  %82 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !6003
  %chanlist100 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %82, i32 0, i32 12, !dbg !6003
  %83 = load i32*, i32** %chanlist100, align 8, !dbg !6003
  %84 = load i32, i32* %j, align 4, !dbg !6003
  %add = add i32 %84, 1, !dbg !6003
  %idxprom101 = sext i32 %add to i64, !dbg !6003
  %arrayidx102 = getelementptr i32, i32* %83, i64 %idxprom101, !dbg !6003
  %85 = load i32, i32* %arrayidx102, align 4, !dbg !6003
  %shr103 = lshr i32 %85, 16, !dbg !6003
  %and104 = and i32 %shr103, 255, !dbg !6003
  %cmp105 = icmp ugt i32 %and104, 0, !dbg !6005
  br i1 %cmp105, label %if.then107, label %if.else108, !dbg !6006

if.then107:                                       ; preds = %if.end96
  store i32 251, i32* %rngmask, align 4, !dbg !6007
  br label %if.end109, !dbg !6008

if.else108:                                       ; preds = %if.end96
  store i32 255, i32* %rngmask, align 4, !dbg !6009
  br label %if.end109

if.end109:                                        ; preds = %if.else108, %if.then107
  %86 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6010
  %87 = load i32, i32* %index, align 4, !dbg !6011
  %add110 = add i32 %87, 1, !dbg !6012
  %88 = load i64, i64* %steps, align 8, !dbg !6013
  %89 = load i64, i64* %steps, align 8, !dbg !6014
  %div111 = sdiv i64 %89, 2, !dbg !6015
  %sub112 = sub i64 %88, %div111, !dbg !6016
  %conv113 = trunc i64 %sub112 to i8, !dbg !6013
  %90 = load i32, i32* %rngmask, align 4, !dbg !6017
  %and114 = and i32 254, %90, !dbg !6018
  %conv115 = trunc i32 %and114 to i8, !dbg !6019
  call void @usbduxfast_cmd_data(%struct.comedi_device* %86, i32 %add110, i8 zeroext %conv113, i8 zeroext 0, i8 zeroext %conv115, i8 zeroext 0) #8, !dbg !6020
  br label %for.inc, !dbg !6021

for.inc:                                          ; preds = %if.end109
  %91 = load i32, i32* %j, align 4, !dbg !6022
  %inc = add i32 %91, 1, !dbg !6022
  store i32 %inc, i32* %j, align 4, !dbg !6022
  br label %for.cond, !dbg !6023, !llvm.loop !6024

for.end:                                          ; preds = %for.cond
  %92 = load i64, i64* %steps, align 8, !dbg !6026
  %sub116 = sub i64 %92, 2, !dbg !6027
  store i64 %sub116, i64* %steps_tmp, align 8, !dbg !6028
  %93 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6029
  %94 = load i64, i64* %steps_tmp, align 8, !dbg !6030
  %div117 = sdiv i64 %94, 2, !dbg !6031
  %conv118 = trunc i64 %div117 to i8, !dbg !6030
  %95 = load i32, i32* %rngmask, align 4, !dbg !6032
  %conv119 = trunc i32 %95 to i8, !dbg !6032
  call void @usbduxfast_cmd_data(%struct.comedi_device* %93, i32 4, i8 zeroext %conv118, i8 zeroext 2, i8 zeroext %conv119, i8 zeroext 0) #8, !dbg !6033
  %96 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !6034
  %chanlist120 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %96, i32 0, i32 12, !dbg !6034
  %97 = load i32*, i32** %chanlist120, align 8, !dbg !6034
  %arrayidx121 = getelementptr i32, i32* %97, i64 0, !dbg !6034
  %98 = load i32, i32* %arrayidx121, align 4, !dbg !6034
  %shr122 = lshr i32 %98, 16, !dbg !6034
  %and123 = and i32 %shr122, 255, !dbg !6034
  %cmp124 = icmp ugt i32 %and123, 0, !dbg !6036
  br i1 %cmp124, label %if.then126, label %if.else127, !dbg !6037

if.then126:                                       ; preds = %for.end
  store i32 251, i32* %rngmask, align 4, !dbg !6038
  br label %if.end128, !dbg !6039

if.else127:                                       ; preds = %for.end
  store i32 255, i32* %rngmask, align 4, !dbg !6040
  br label %if.end128

if.end128:                                        ; preds = %if.else127, %if.then126
  %99 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6041
  %100 = load i64, i64* %steps_tmp, align 8, !dbg !6042
  %101 = load i64, i64* %steps_tmp, align 8, !dbg !6043
  %div129 = sdiv i64 %101, 2, !dbg !6044
  %sub130 = sub i64 %100, %div129, !dbg !6045
  %conv131 = trunc i64 %sub130 to i8, !dbg !6042
  %102 = load i32, i32* %rngmask, align 4, !dbg !6046
  %and132 = and i32 253, %102, !dbg !6047
  %conv133 = trunc i32 %and132 to i8, !dbg !6048
  call void @usbduxfast_cmd_data(%struct.comedi_device* %99, i32 5, i8 zeroext %conv131, i8 zeroext 0, i8 zeroext %conv133, i8 zeroext 0) #8, !dbg !6049
  %103 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6050
  %104 = load i32, i32* %rngmask, align 4, !dbg !6051
  %conv134 = trunc i32 %104 to i8, !dbg !6051
  call void @usbduxfast_cmd_data(%struct.comedi_device* %103, i32 6, i8 zeroext 1, i8 zeroext 0, i8 zeroext %conv134, i8 zeroext 0) #8, !dbg !6052
  br label %sw.epilog, !dbg !6053

sw.bb135:                                         ; preds = %if.end
  %105 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !6054
  %chanlist136 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %105, i32 0, i32 12, !dbg !6054
  %106 = load i32*, i32** %chanlist136, align 8, !dbg !6054
  %arrayidx137 = getelementptr i32, i32* %106, i64 0, !dbg !6054
  %107 = load i32, i32* %arrayidx137, align 4, !dbg !6054
  %shr138 = lshr i32 %107, 16, !dbg !6054
  %and139 = and i32 %shr138, 255, !dbg !6054
  %cmp140 = icmp ugt i32 %and139, 0, !dbg !6056
  br i1 %cmp140, label %if.then142, label %if.else143, !dbg !6057

if.then142:                                       ; preds = %sw.bb135
  store i32 251, i32* %rngmask, align 4, !dbg !6058
  br label %if.end144, !dbg !6059

if.else143:                                       ; preds = %sw.bb135
  store i32 255, i32* %rngmask, align 4, !dbg !6060
  br label %if.end144

if.end144:                                        ; preds = %if.else143, %if.then142
  %108 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !6061
  %start_src145 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %108, i32 0, i32 2, !dbg !6063
  %109 = load i32, i32* %start_src145, align 8, !dbg !6063
  %cmp146 = icmp eq i32 %109, 64, !dbg !6064
  br i1 %cmp146, label %if.then148, label %if.else151, !dbg !6065

if.then148:                                       ; preds = %if.end144
  %110 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6066
  %111 = load i32, i32* %rngmask, align 4, !dbg !6068
  %and149 = and i32 253, %111, !dbg !6069
  %conv150 = trunc i32 %and149 to i8, !dbg !6070
  call void @usbduxfast_cmd_data(%struct.comedi_device* %110, i32 0, i8 zeroext 1, i8 zeroext 1, i8 zeroext %conv150, i8 zeroext 0) #8, !dbg !6071
  br label %if.end154, !dbg !6072

if.else151:                                       ; preds = %if.end144
  %112 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6073
  %113 = load i32, i32* %rngmask, align 4, !dbg !6075
  %and152 = and i32 253, %113, !dbg !6076
  %conv153 = trunc i32 %and152 to i8, !dbg !6077
  call void @usbduxfast_cmd_data(%struct.comedi_device* %112, i32 0, i8 zeroext -1, i8 zeroext 0, i8 zeroext %conv153, i8 zeroext 0) #8, !dbg !6078
  br label %if.end154

if.end154:                                        ; preds = %if.else151, %if.then148
  %114 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6079
  %115 = load i32, i32* %rngmask, align 4, !dbg !6080
  %conv155 = trunc i32 %115 to i8, !dbg !6080
  call void @usbduxfast_cmd_data(%struct.comedi_device* %114, i32 1, i8 zeroext 1, i8 zeroext 2, i8 zeroext %conv155, i8 zeroext 0) #8, !dbg !6081
  %116 = load i64, i64* %steps, align 8, !dbg !6082
  %sub156 = sub i64 %116, 2, !dbg !6083
  store i64 %sub156, i64* %steps, align 8, !dbg !6084
  %117 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6085
  %118 = load i64, i64* %steps, align 8, !dbg !6086
  %div157 = sdiv i64 %118, 2, !dbg !6087
  %conv158 = trunc i64 %div157 to i8, !dbg !6086
  %119 = load i32, i32* %rngmask, align 4, !dbg !6088
  %and159 = and i32 254, %119, !dbg !6089
  %conv160 = trunc i32 %and159 to i8, !dbg !6090
  call void @usbduxfast_cmd_data(%struct.comedi_device* %117, i32 2, i8 zeroext %conv158, i8 zeroext 0, i8 zeroext %conv160, i8 zeroext 0) #8, !dbg !6091
  %120 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6092
  %121 = load i64, i64* %steps, align 8, !dbg !6093
  %122 = load i64, i64* %steps, align 8, !dbg !6094
  %div161 = sdiv i64 %122, 2, !dbg !6095
  %sub162 = sub i64 %121, %div161, !dbg !6096
  %conv163 = trunc i64 %sub162 to i8, !dbg !6093
  %123 = load i32, i32* %rngmask, align 4, !dbg !6097
  %conv164 = trunc i32 %123 to i8, !dbg !6097
  call void @usbduxfast_cmd_data(%struct.comedi_device* %120, i32 3, i8 zeroext %conv163, i8 zeroext 0, i8 zeroext %conv164, i8 zeroext 0) #8, !dbg !6098
  %124 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6099
  %125 = load i32, i32* %rngmask, align 4, !dbg !6100
  %conv165 = trunc i32 %125 to i8, !dbg !6100
  call void @usbduxfast_cmd_data(%struct.comedi_device* %124, i32 4, i8 zeroext 9, i8 zeroext 1, i8 zeroext %conv165, i8 zeroext -1) #8, !dbg !6101
  br label %sw.epilog, !dbg !6102

sw.epilog:                                        ; preds = %if.end, %if.end154, %if.end128, %if.end74, %if.end34
  %126 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6103
  %call = call i32 @usbduxfast_send_cmd(%struct.comedi_device* %126, i32 0) #8, !dbg !6104
  store i32 %call, i32* %ret, align 4, !dbg !6105
  %127 = load i32, i32* %ret, align 4, !dbg !6106
  %cmp166 = icmp slt i32 %127, 0, !dbg !6108
  br i1 %cmp166, label %if.then168, label %if.end169, !dbg !6109

if.then168:                                       ; preds = %sw.epilog
  br label %cmd_exit, !dbg !6110

if.end169:                                        ; preds = %sw.epilog
  %128 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !6111
  %start_src170 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %128, i32 0, i32 2, !dbg !6113
  %129 = load i32, i32* %start_src170, align 8, !dbg !6113
  %cmp171 = icmp eq i32 %129, 2, !dbg !6114
  br i1 %cmp171, label %if.then176, label %lor.lhs.false, !dbg !6115

lor.lhs.false:                                    ; preds = %if.end169
  %130 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !6116
  %start_src173 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %130, i32 0, i32 2, !dbg !6117
  %131 = load i32, i32* %start_src173, align 8, !dbg !6117
  %cmp174 = icmp eq i32 %131, 64, !dbg !6118
  br i1 %cmp174, label %if.then176, label %if.else185, !dbg !6119

if.then176:                                       ; preds = %lor.lhs.false, %if.end169
  %132 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !6120
  %ai_cmd_running177 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %132, i32 0, i32 3, !dbg !6122
  store i16 1, i16* %ai_cmd_running177, align 8, !dbg !6123
  %133 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6124
  %call178 = call i32 @usbduxfast_submit_urb(%struct.comedi_device* %133) #8, !dbg !6125
  store i32 %call178, i32* %ret, align 4, !dbg !6126
  %134 = load i32, i32* %ret, align 4, !dbg !6127
  %cmp179 = icmp slt i32 %134, 0, !dbg !6129
  br i1 %cmp179, label %if.then181, label %if.end183, !dbg !6130

if.then181:                                       ; preds = %if.then176
  %135 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !6131
  %ai_cmd_running182 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %135, i32 0, i32 3, !dbg !6133
  store i16 0, i16* %ai_cmd_running182, align 8, !dbg !6134
  br label %cmd_exit, !dbg !6135

if.end183:                                        ; preds = %if.then176
  %136 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6136
  %async184 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %136, i32 0, i32 7, !dbg !6137
  %137 = load %struct.comedi_async*, %struct.comedi_async** %async184, align 8, !dbg !6137
  %inttrig = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %137, i32 0, i32 20, !dbg !6138
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* null, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)** %inttrig, align 8, !dbg !6139
  br label %if.end188, !dbg !6140

if.else185:                                       ; preds = %lor.lhs.false
  %138 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6141
  %async186 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %138, i32 0, i32 7, !dbg !6143
  %139 = load %struct.comedi_async*, %struct.comedi_async** %async186, align 8, !dbg !6143
  %inttrig187 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %139, i32 0, i32 20, !dbg !6144
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* @usbduxfast_ai_inttrig, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)** %inttrig187, align 8, !dbg !6145
  br label %if.end188

if.end188:                                        ; preds = %if.else185, %if.end183
  br label %cmd_exit, !dbg !6146

cmd_exit:                                         ; preds = %if.end188, %if.then181, %if.then168, %if.then
  call void @llvm.dbg.label(metadata !6147), !dbg !6148
  %140 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !6149
  %mut189 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %140, i32 0, i32 5, !dbg !6150
  call void @mutex_unlock(%struct.mutex* %mut189) #8, !dbg !6151
  %141 = load i32, i32* %ret, align 4, !dbg !6152
  ret i32 %141, !dbg !6153
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usbduxfast_ai_cancel(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #2 !dbg !6154 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %devpriv = alloca %struct.usbduxfast_private*, align 8
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !6155, metadata !DIExpression()), !dbg !6156
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !6157, metadata !DIExpression()), !dbg !6158
  call void @llvm.dbg.declare(metadata %struct.usbduxfast_private** %devpriv, metadata !6159, metadata !DIExpression()), !dbg !6160
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6161
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !6162
  %1 = load i8*, i8** %private, align 8, !dbg !6162
  %2 = bitcast i8* %1 to %struct.usbduxfast_private*, !dbg !6161
  store %struct.usbduxfast_private* %2, %struct.usbduxfast_private** %devpriv, align 8, !dbg !6160
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6163, metadata !DIExpression()), !dbg !6164
  %3 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !6165
  %mut = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %3, i32 0, i32 5, !dbg !6166
  call void @mutex_lock(%struct.mutex* %mut) #8, !dbg !6167
  %4 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6168
  %call = call i32 @usbduxfast_ai_stop(%struct.comedi_device* %4, i32 1) #8, !dbg !6169
  store i32 %call, i32* %ret, align 4, !dbg !6170
  %5 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !6171
  %mut1 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %5, i32 0, i32 5, !dbg !6172
  call void @mutex_unlock(%struct.mutex* %mut1) #8, !dbg !6173
  %6 = load i32, i32* %ret, align 4, !dbg !6174
  ret i32 %6, !dbg !6175
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !6176 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6180, metadata !DIExpression()), !dbg !6185
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6187, metadata !DIExpression()), !dbg !6188
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6189, metadata !DIExpression()), !dbg !6190
  %0 = load i64, i64* %size.addr, align 8, !dbg !6191
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6193
  br i1 %1, label %if.then, label %if.end447, !dbg !6194

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !6195
  %tobool = icmp ne i64 %2, 0, !dbg !6195
  br i1 %tobool, label %if.end, label %if.then1, !dbg !6198

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !6199
  br label %return, !dbg !6199

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !6200
  %cmp = icmp ult i64 %3, 4096, !dbg !6202
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !6203

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !6204
  br label %return, !dbg !6204

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub = sub i64 %4, 1, !dbg !6205
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !6205
  br i1 %5, label %cond.true, label %cond.false442, !dbg !6205

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub4 = sub i64 %6, 1, !dbg !6205
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !6205
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !6205

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub6 = sub i64 %8, 1, !dbg !6205
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !6205
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !6205

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !6205

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub9 = sub i64 %9, 1, !dbg !6205
  %and = and i64 %sub9, -9223372036854775808, !dbg !6205
  %tobool10 = icmp ne i64 %and, 0, !dbg !6205
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !6205

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !6205

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub13 = sub i64 %10, 1, !dbg !6205
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !6205
  %tobool15 = icmp ne i64 %and14, 0, !dbg !6205
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !6205

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !6205

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub18 = sub i64 %11, 1, !dbg !6205
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !6205
  %tobool20 = icmp ne i64 %and19, 0, !dbg !6205
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !6205

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !6205

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub23 = sub i64 %12, 1, !dbg !6205
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !6205
  %tobool25 = icmp ne i64 %and24, 0, !dbg !6205
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !6205

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !6205

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub28 = sub i64 %13, 1, !dbg !6205
  %and29 = and i64 %sub28, 576460752303423488, !dbg !6205
  %tobool30 = icmp ne i64 %and29, 0, !dbg !6205
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !6205

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !6205

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub33 = sub i64 %14, 1, !dbg !6205
  %and34 = and i64 %sub33, 288230376151711744, !dbg !6205
  %tobool35 = icmp ne i64 %and34, 0, !dbg !6205
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !6205

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !6205

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub38 = sub i64 %15, 1, !dbg !6205
  %and39 = and i64 %sub38, 144115188075855872, !dbg !6205
  %tobool40 = icmp ne i64 %and39, 0, !dbg !6205
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !6205

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !6205

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub43 = sub i64 %16, 1, !dbg !6205
  %and44 = and i64 %sub43, 72057594037927936, !dbg !6205
  %tobool45 = icmp ne i64 %and44, 0, !dbg !6205
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !6205

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !6205

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub48 = sub i64 %17, 1, !dbg !6205
  %and49 = and i64 %sub48, 36028797018963968, !dbg !6205
  %tobool50 = icmp ne i64 %and49, 0, !dbg !6205
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !6205

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !6205

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub53 = sub i64 %18, 1, !dbg !6205
  %and54 = and i64 %sub53, 18014398509481984, !dbg !6205
  %tobool55 = icmp ne i64 %and54, 0, !dbg !6205
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !6205

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !6205

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub58 = sub i64 %19, 1, !dbg !6205
  %and59 = and i64 %sub58, 9007199254740992, !dbg !6205
  %tobool60 = icmp ne i64 %and59, 0, !dbg !6205
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !6205

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !6205

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub63 = sub i64 %20, 1, !dbg !6205
  %and64 = and i64 %sub63, 4503599627370496, !dbg !6205
  %tobool65 = icmp ne i64 %and64, 0, !dbg !6205
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !6205

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !6205

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub68 = sub i64 %21, 1, !dbg !6205
  %and69 = and i64 %sub68, 2251799813685248, !dbg !6205
  %tobool70 = icmp ne i64 %and69, 0, !dbg !6205
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !6205

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !6205

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub73 = sub i64 %22, 1, !dbg !6205
  %and74 = and i64 %sub73, 1125899906842624, !dbg !6205
  %tobool75 = icmp ne i64 %and74, 0, !dbg !6205
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !6205

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !6205

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub78 = sub i64 %23, 1, !dbg !6205
  %and79 = and i64 %sub78, 562949953421312, !dbg !6205
  %tobool80 = icmp ne i64 %and79, 0, !dbg !6205
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !6205

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !6205

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub83 = sub i64 %24, 1, !dbg !6205
  %and84 = and i64 %sub83, 281474976710656, !dbg !6205
  %tobool85 = icmp ne i64 %and84, 0, !dbg !6205
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !6205

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !6205

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub88 = sub i64 %25, 1, !dbg !6205
  %and89 = and i64 %sub88, 140737488355328, !dbg !6205
  %tobool90 = icmp ne i64 %and89, 0, !dbg !6205
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !6205

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !6205

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub93 = sub i64 %26, 1, !dbg !6205
  %and94 = and i64 %sub93, 70368744177664, !dbg !6205
  %tobool95 = icmp ne i64 %and94, 0, !dbg !6205
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !6205

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !6205

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub98 = sub i64 %27, 1, !dbg !6205
  %and99 = and i64 %sub98, 35184372088832, !dbg !6205
  %tobool100 = icmp ne i64 %and99, 0, !dbg !6205
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !6205

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !6205

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub103 = sub i64 %28, 1, !dbg !6205
  %and104 = and i64 %sub103, 17592186044416, !dbg !6205
  %tobool105 = icmp ne i64 %and104, 0, !dbg !6205
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !6205

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !6205

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub108 = sub i64 %29, 1, !dbg !6205
  %and109 = and i64 %sub108, 8796093022208, !dbg !6205
  %tobool110 = icmp ne i64 %and109, 0, !dbg !6205
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !6205

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !6205

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub113 = sub i64 %30, 1, !dbg !6205
  %and114 = and i64 %sub113, 4398046511104, !dbg !6205
  %tobool115 = icmp ne i64 %and114, 0, !dbg !6205
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !6205

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !6205

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub118 = sub i64 %31, 1, !dbg !6205
  %and119 = and i64 %sub118, 2199023255552, !dbg !6205
  %tobool120 = icmp ne i64 %and119, 0, !dbg !6205
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !6205

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !6205

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub123 = sub i64 %32, 1, !dbg !6205
  %and124 = and i64 %sub123, 1099511627776, !dbg !6205
  %tobool125 = icmp ne i64 %and124, 0, !dbg !6205
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !6205

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !6205

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub128 = sub i64 %33, 1, !dbg !6205
  %and129 = and i64 %sub128, 549755813888, !dbg !6205
  %tobool130 = icmp ne i64 %and129, 0, !dbg !6205
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !6205

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !6205

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub133 = sub i64 %34, 1, !dbg !6205
  %and134 = and i64 %sub133, 274877906944, !dbg !6205
  %tobool135 = icmp ne i64 %and134, 0, !dbg !6205
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !6205

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !6205

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub138 = sub i64 %35, 1, !dbg !6205
  %and139 = and i64 %sub138, 137438953472, !dbg !6205
  %tobool140 = icmp ne i64 %and139, 0, !dbg !6205
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !6205

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !6205

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub143 = sub i64 %36, 1, !dbg !6205
  %and144 = and i64 %sub143, 68719476736, !dbg !6205
  %tobool145 = icmp ne i64 %and144, 0, !dbg !6205
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !6205

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !6205

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub148 = sub i64 %37, 1, !dbg !6205
  %and149 = and i64 %sub148, 34359738368, !dbg !6205
  %tobool150 = icmp ne i64 %and149, 0, !dbg !6205
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !6205

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !6205

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub153 = sub i64 %38, 1, !dbg !6205
  %and154 = and i64 %sub153, 17179869184, !dbg !6205
  %tobool155 = icmp ne i64 %and154, 0, !dbg !6205
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !6205

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !6205

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub158 = sub i64 %39, 1, !dbg !6205
  %and159 = and i64 %sub158, 8589934592, !dbg !6205
  %tobool160 = icmp ne i64 %and159, 0, !dbg !6205
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !6205

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !6205

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub163 = sub i64 %40, 1, !dbg !6205
  %and164 = and i64 %sub163, 4294967296, !dbg !6205
  %tobool165 = icmp ne i64 %and164, 0, !dbg !6205
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !6205

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !6205

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub168 = sub i64 %41, 1, !dbg !6205
  %and169 = and i64 %sub168, 2147483648, !dbg !6205
  %tobool170 = icmp ne i64 %and169, 0, !dbg !6205
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !6205

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !6205

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub173 = sub i64 %42, 1, !dbg !6205
  %and174 = and i64 %sub173, 1073741824, !dbg !6205
  %tobool175 = icmp ne i64 %and174, 0, !dbg !6205
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !6205

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !6205

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub178 = sub i64 %43, 1, !dbg !6205
  %and179 = and i64 %sub178, 536870912, !dbg !6205
  %tobool180 = icmp ne i64 %and179, 0, !dbg !6205
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !6205

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !6205

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub183 = sub i64 %44, 1, !dbg !6205
  %and184 = and i64 %sub183, 268435456, !dbg !6205
  %tobool185 = icmp ne i64 %and184, 0, !dbg !6205
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !6205

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !6205

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub188 = sub i64 %45, 1, !dbg !6205
  %and189 = and i64 %sub188, 134217728, !dbg !6205
  %tobool190 = icmp ne i64 %and189, 0, !dbg !6205
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !6205

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !6205

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub193 = sub i64 %46, 1, !dbg !6205
  %and194 = and i64 %sub193, 67108864, !dbg !6205
  %tobool195 = icmp ne i64 %and194, 0, !dbg !6205
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !6205

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !6205

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub198 = sub i64 %47, 1, !dbg !6205
  %and199 = and i64 %sub198, 33554432, !dbg !6205
  %tobool200 = icmp ne i64 %and199, 0, !dbg !6205
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !6205

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !6205

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub203 = sub i64 %48, 1, !dbg !6205
  %and204 = and i64 %sub203, 16777216, !dbg !6205
  %tobool205 = icmp ne i64 %and204, 0, !dbg !6205
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !6205

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !6205

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub208 = sub i64 %49, 1, !dbg !6205
  %and209 = and i64 %sub208, 8388608, !dbg !6205
  %tobool210 = icmp ne i64 %and209, 0, !dbg !6205
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !6205

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !6205

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub213 = sub i64 %50, 1, !dbg !6205
  %and214 = and i64 %sub213, 4194304, !dbg !6205
  %tobool215 = icmp ne i64 %and214, 0, !dbg !6205
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !6205

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !6205

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub218 = sub i64 %51, 1, !dbg !6205
  %and219 = and i64 %sub218, 2097152, !dbg !6205
  %tobool220 = icmp ne i64 %and219, 0, !dbg !6205
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !6205

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !6205

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub223 = sub i64 %52, 1, !dbg !6205
  %and224 = and i64 %sub223, 1048576, !dbg !6205
  %tobool225 = icmp ne i64 %and224, 0, !dbg !6205
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !6205

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !6205

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub228 = sub i64 %53, 1, !dbg !6205
  %and229 = and i64 %sub228, 524288, !dbg !6205
  %tobool230 = icmp ne i64 %and229, 0, !dbg !6205
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !6205

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !6205

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub233 = sub i64 %54, 1, !dbg !6205
  %and234 = and i64 %sub233, 262144, !dbg !6205
  %tobool235 = icmp ne i64 %and234, 0, !dbg !6205
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !6205

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !6205

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub238 = sub i64 %55, 1, !dbg !6205
  %and239 = and i64 %sub238, 131072, !dbg !6205
  %tobool240 = icmp ne i64 %and239, 0, !dbg !6205
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !6205

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !6205

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub243 = sub i64 %56, 1, !dbg !6205
  %and244 = and i64 %sub243, 65536, !dbg !6205
  %tobool245 = icmp ne i64 %and244, 0, !dbg !6205
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !6205

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !6205

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub248 = sub i64 %57, 1, !dbg !6205
  %and249 = and i64 %sub248, 32768, !dbg !6205
  %tobool250 = icmp ne i64 %and249, 0, !dbg !6205
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !6205

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !6205

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub253 = sub i64 %58, 1, !dbg !6205
  %and254 = and i64 %sub253, 16384, !dbg !6205
  %tobool255 = icmp ne i64 %and254, 0, !dbg !6205
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !6205

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !6205

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub258 = sub i64 %59, 1, !dbg !6205
  %and259 = and i64 %sub258, 8192, !dbg !6205
  %tobool260 = icmp ne i64 %and259, 0, !dbg !6205
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !6205

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !6205

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub263 = sub i64 %60, 1, !dbg !6205
  %and264 = and i64 %sub263, 4096, !dbg !6205
  %tobool265 = icmp ne i64 %and264, 0, !dbg !6205
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !6205

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !6205

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub268 = sub i64 %61, 1, !dbg !6205
  %and269 = and i64 %sub268, 2048, !dbg !6205
  %tobool270 = icmp ne i64 %and269, 0, !dbg !6205
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !6205

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !6205

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub273 = sub i64 %62, 1, !dbg !6205
  %and274 = and i64 %sub273, 1024, !dbg !6205
  %tobool275 = icmp ne i64 %and274, 0, !dbg !6205
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !6205

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !6205

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub278 = sub i64 %63, 1, !dbg !6205
  %and279 = and i64 %sub278, 512, !dbg !6205
  %tobool280 = icmp ne i64 %and279, 0, !dbg !6205
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !6205

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !6205

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub283 = sub i64 %64, 1, !dbg !6205
  %and284 = and i64 %sub283, 256, !dbg !6205
  %tobool285 = icmp ne i64 %and284, 0, !dbg !6205
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !6205

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !6205

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub288 = sub i64 %65, 1, !dbg !6205
  %and289 = and i64 %sub288, 128, !dbg !6205
  %tobool290 = icmp ne i64 %and289, 0, !dbg !6205
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !6205

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !6205

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub293 = sub i64 %66, 1, !dbg !6205
  %and294 = and i64 %sub293, 64, !dbg !6205
  %tobool295 = icmp ne i64 %and294, 0, !dbg !6205
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !6205

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !6205

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub298 = sub i64 %67, 1, !dbg !6205
  %and299 = and i64 %sub298, 32, !dbg !6205
  %tobool300 = icmp ne i64 %and299, 0, !dbg !6205
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !6205

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !6205

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub303 = sub i64 %68, 1, !dbg !6205
  %and304 = and i64 %sub303, 16, !dbg !6205
  %tobool305 = icmp ne i64 %and304, 0, !dbg !6205
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !6205

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !6205

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub308 = sub i64 %69, 1, !dbg !6205
  %and309 = and i64 %sub308, 8, !dbg !6205
  %tobool310 = icmp ne i64 %and309, 0, !dbg !6205
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !6205

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !6205

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub313 = sub i64 %70, 1, !dbg !6205
  %and314 = and i64 %sub313, 4, !dbg !6205
  %tobool315 = icmp ne i64 %and314, 0, !dbg !6205
  %71 = zext i1 %tobool315 to i64, !dbg !6205
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !6205
  br label %cond.end, !dbg !6205

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !6205
  br label %cond.end317, !dbg !6205

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !6205
  br label %cond.end319, !dbg !6205

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !6205
  br label %cond.end321, !dbg !6205

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !6205
  br label %cond.end323, !dbg !6205

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !6205
  br label %cond.end325, !dbg !6205

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !6205
  br label %cond.end327, !dbg !6205

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !6205
  br label %cond.end329, !dbg !6205

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !6205
  br label %cond.end331, !dbg !6205

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !6205
  br label %cond.end333, !dbg !6205

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !6205
  br label %cond.end335, !dbg !6205

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !6205
  br label %cond.end337, !dbg !6205

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !6205
  br label %cond.end339, !dbg !6205

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !6205
  br label %cond.end341, !dbg !6205

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !6205
  br label %cond.end343, !dbg !6205

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !6205
  br label %cond.end345, !dbg !6205

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !6205
  br label %cond.end347, !dbg !6205

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !6205
  br label %cond.end349, !dbg !6205

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !6205
  br label %cond.end351, !dbg !6205

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !6205
  br label %cond.end353, !dbg !6205

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !6205
  br label %cond.end355, !dbg !6205

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !6205
  br label %cond.end357, !dbg !6205

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !6205
  br label %cond.end359, !dbg !6205

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !6205
  br label %cond.end361, !dbg !6205

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !6205
  br label %cond.end363, !dbg !6205

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !6205
  br label %cond.end365, !dbg !6205

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !6205
  br label %cond.end367, !dbg !6205

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !6205
  br label %cond.end369, !dbg !6205

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !6205
  br label %cond.end371, !dbg !6205

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !6205
  br label %cond.end373, !dbg !6205

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !6205
  br label %cond.end375, !dbg !6205

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !6205
  br label %cond.end377, !dbg !6205

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !6205
  br label %cond.end379, !dbg !6205

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !6205
  br label %cond.end381, !dbg !6205

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !6205
  br label %cond.end383, !dbg !6205

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !6205
  br label %cond.end385, !dbg !6205

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !6205
  br label %cond.end387, !dbg !6205

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !6205
  br label %cond.end389, !dbg !6205

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !6205
  br label %cond.end391, !dbg !6205

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !6205
  br label %cond.end393, !dbg !6205

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !6205
  br label %cond.end395, !dbg !6205

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !6205
  br label %cond.end397, !dbg !6205

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !6205
  br label %cond.end399, !dbg !6205

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !6205
  br label %cond.end401, !dbg !6205

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !6205
  br label %cond.end403, !dbg !6205

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !6205
  br label %cond.end405, !dbg !6205

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !6205
  br label %cond.end407, !dbg !6205

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !6205
  br label %cond.end409, !dbg !6205

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !6205
  br label %cond.end411, !dbg !6205

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !6205
  br label %cond.end413, !dbg !6205

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !6205
  br label %cond.end415, !dbg !6205

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !6205
  br label %cond.end417, !dbg !6205

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !6205
  br label %cond.end419, !dbg !6205

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !6205
  br label %cond.end421, !dbg !6205

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !6205
  br label %cond.end423, !dbg !6205

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !6205
  br label %cond.end425, !dbg !6205

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !6205
  br label %cond.end427, !dbg !6205

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !6205
  br label %cond.end429, !dbg !6205

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !6205
  br label %cond.end431, !dbg !6205

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !6205
  br label %cond.end433, !dbg !6205

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !6205
  br label %cond.end435, !dbg !6205

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !6205
  br label %cond.end437, !dbg !6205

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !6205
  br label %cond.end440, !dbg !6205

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !6205

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !6205
  br label %cond.end444, !dbg !6205

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !6205
  %sub443 = sub i64 %72, 1, !dbg !6205
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !6205
  br label %cond.end444, !dbg !6205

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !6205
  %sub446 = sub i32 %cond445, 12, !dbg !6206
  %add = add i32 %sub446, 1, !dbg !6207
  store i32 %add, i32* %retval, align 4, !dbg !6208
  br label %return, !dbg !6208

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !6209
  %dec = add i64 %73, -1, !dbg !6209
  store i64 %dec, i64* %size.addr, align 8, !dbg !6209
  %74 = load i64, i64* %size.addr, align 8, !dbg !6210
  %shr = lshr i64 %74, 12, !dbg !6210
  store i64 %shr, i64* %size.addr, align 8, !dbg !6210
  %75 = load i64, i64* %size.addr, align 8, !dbg !6211
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6188
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !6212
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !6213
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !6212, !srcloc !6214
  store i32 %78, i32* %bitpos.i, align 4, !dbg !6212
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !6215
  %add.i = add i32 %79, 1, !dbg !6216
  store i32 %add.i, i32* %retval, align 4, !dbg !6217
  br label %return, !dbg !6217

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !6218
  ret i32 %80, !dbg !6218
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !6219 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6180, metadata !DIExpression()), !dbg !6223
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6187, metadata !DIExpression()), !dbg !6225
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !6226, metadata !DIExpression()), !dbg !6227
  %0 = load i64, i64* %n.addr, align 8, !dbg !6228
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6225
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !6229
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !6230
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !6229, !srcloc !6214
  store i32 %3, i32* %bitpos.i, align 4, !dbg !6229
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !6231
  %add.i = add i32 %4, 1, !dbg !6232
  %sub = sub i32 %add.i, 1, !dbg !6233
  ret i32 %sub, !dbg !6234
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #2 !dbg !6235 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !6239, metadata !DIExpression()), !dbg !6240
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !6241, metadata !DIExpression()), !dbg !6242
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6243, metadata !DIExpression()), !dbg !6244
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6245, metadata !DIExpression()), !dbg !6246
  %0 = load i8*, i8** %object.addr, align 8, !dbg !6247
  ret i8* %0, !dbg !6248
}

; Function Attrs: noredzone
declare dso_local i8* @kmemdup(i8*, i64, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i8 zeroext, i8 zeroext, i16 zeroext, i16 zeroext, i8*, i16 zeroext, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__create_pipe(%struct.usb_device* %dev, i32 %endpoint) #2 !dbg !6249 {
entry:
  %dev.addr = alloca %struct.usb_device*, align 8
  %endpoint.addr = alloca i32, align 4
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !6252, metadata !DIExpression()), !dbg !6253
  store i32 %endpoint, i32* %endpoint.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %endpoint.addr, metadata !6254, metadata !DIExpression()), !dbg !6255
  %0 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !6256
  %devnum = getelementptr inbounds %struct.usb_device, %struct.usb_device* %0, i32 0, i32 0, !dbg !6257
  %1 = load i32, i32* %devnum, align 8, !dbg !6257
  %shl = shl i32 %1, 8, !dbg !6258
  %2 = load i32, i32* %endpoint.addr, align 4, !dbg !6259
  %shl1 = shl i32 %2, 15, !dbg !6260
  %or = or i32 %shl, %shl1, !dbg !6261
  ret i32 %or, !dbg !6262
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usbduxfast_cmd_data(%struct.comedi_device* %dev, i32 %index, i8 zeroext %len, i8 zeroext %op, i8 zeroext %out, i8 zeroext %log) #2 !dbg !6263 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %index.addr = alloca i32, align 4
  %len.addr = alloca i8, align 1
  %op.addr = alloca i8, align 1
  %out.addr = alloca i8, align 1
  %log.addr = alloca i8, align 1
  %devpriv = alloca %struct.usbduxfast_private*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !6266, metadata !DIExpression()), !dbg !6267
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !6268, metadata !DIExpression()), !dbg !6269
  store i8 %len, i8* %len.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %len.addr, metadata !6270, metadata !DIExpression()), !dbg !6271
  store i8 %op, i8* %op.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %op.addr, metadata !6272, metadata !DIExpression()), !dbg !6273
  store i8 %out, i8* %out.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %out.addr, metadata !6274, metadata !DIExpression()), !dbg !6275
  store i8 %log, i8* %log.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %log.addr, metadata !6276, metadata !DIExpression()), !dbg !6277
  call void @llvm.dbg.declare(metadata %struct.usbduxfast_private** %devpriv, metadata !6278, metadata !DIExpression()), !dbg !6279
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6280
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !6281
  %1 = load i8*, i8** %private, align 8, !dbg !6281
  %2 = bitcast i8* %1 to %struct.usbduxfast_private*, !dbg !6280
  store %struct.usbduxfast_private* %2, %struct.usbduxfast_private** %devpriv, align 8, !dbg !6279
  %3 = load i8, i8* %len.addr, align 1, !dbg !6282
  %4 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !6283
  %duxbuf = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %4, i32 0, i32 1, !dbg !6284
  %5 = load i8*, i8** %duxbuf, align 8, !dbg !6284
  %6 = load i32, i32* %index.addr, align 4, !dbg !6285
  %add = add i32 1, %6, !dbg !6286
  %idxprom = sext i32 %add to i64, !dbg !6283
  %arrayidx = getelementptr i8, i8* %5, i64 %idxprom, !dbg !6283
  store i8 %3, i8* %arrayidx, align 1, !dbg !6287
  %7 = load i8, i8* %op.addr, align 1, !dbg !6288
  %8 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !6289
  %duxbuf1 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %8, i32 0, i32 1, !dbg !6290
  %9 = load i8*, i8** %duxbuf1, align 8, !dbg !6290
  %10 = load i32, i32* %index.addr, align 4, !dbg !6291
  %add2 = add i32 9, %10, !dbg !6292
  %idxprom3 = sext i32 %add2 to i64, !dbg !6289
  %arrayidx4 = getelementptr i8, i8* %9, i64 %idxprom3, !dbg !6289
  store i8 %7, i8* %arrayidx4, align 1, !dbg !6293
  %11 = load i8, i8* %out.addr, align 1, !dbg !6294
  %12 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !6295
  %duxbuf5 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %12, i32 0, i32 1, !dbg !6296
  %13 = load i8*, i8** %duxbuf5, align 8, !dbg !6296
  %14 = load i32, i32* %index.addr, align 4, !dbg !6297
  %add6 = add i32 17, %14, !dbg !6298
  %idxprom7 = sext i32 %add6 to i64, !dbg !6295
  %arrayidx8 = getelementptr i8, i8* %13, i64 %idxprom7, !dbg !6295
  store i8 %11, i8* %arrayidx8, align 1, !dbg !6299
  %15 = load i8, i8* %log.addr, align 1, !dbg !6300
  %16 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !6301
  %duxbuf9 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %16, i32 0, i32 1, !dbg !6302
  %17 = load i8*, i8** %duxbuf9, align 8, !dbg !6302
  %18 = load i32, i32* %index.addr, align 4, !dbg !6303
  %add10 = add i32 25, %18, !dbg !6304
  %idxprom11 = sext i32 %add10 to i64, !dbg !6301
  %arrayidx12 = getelementptr i8, i8* %17, i64 %idxprom11, !dbg !6301
  store i8 %15, i8* %arrayidx12, align 1, !dbg !6305
  ret void, !dbg !6306
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usbduxfast_send_cmd(%struct.comedi_device* %dev, i32 %cmd_type) #2 !dbg !6307 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %cmd_type.addr = alloca i32, align 4
  %usb = alloca %struct.usb_device*, align 8
  %devpriv = alloca %struct.usbduxfast_private*, align 8
  %nsent = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !6310, metadata !DIExpression()), !dbg !6311
  store i32 %cmd_type, i32* %cmd_type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cmd_type.addr, metadata !6312, metadata !DIExpression()), !dbg !6313
  call void @llvm.dbg.declare(metadata %struct.usb_device** %usb, metadata !6314, metadata !DIExpression()), !dbg !6315
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6316
  %call = call %struct.usb_device* @comedi_to_usb_dev(%struct.comedi_device* %0) #8, !dbg !6317
  store %struct.usb_device* %call, %struct.usb_device** %usb, align 8, !dbg !6315
  call void @llvm.dbg.declare(metadata %struct.usbduxfast_private** %devpriv, metadata !6318, metadata !DIExpression()), !dbg !6319
  %1 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6320
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %1, i32 0, i32 3, !dbg !6321
  %2 = load i8*, i8** %private, align 8, !dbg !6321
  %3 = bitcast i8* %2 to %struct.usbduxfast_private*, !dbg !6320
  store %struct.usbduxfast_private* %3, %struct.usbduxfast_private** %devpriv, align 8, !dbg !6319
  call void @llvm.dbg.declare(metadata i32* %nsent, metadata !6322, metadata !DIExpression()), !dbg !6323
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6324, metadata !DIExpression()), !dbg !6325
  %4 = load i32, i32* %cmd_type.addr, align 4, !dbg !6326
  %conv = trunc i32 %4 to i8, !dbg !6326
  %5 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !6327
  %duxbuf = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %5, i32 0, i32 1, !dbg !6328
  %6 = load i8*, i8** %duxbuf, align 8, !dbg !6328
  %arrayidx = getelementptr i8, i8* %6, i64 0, !dbg !6327
  store i8 %conv, i8* %arrayidx, align 1, !dbg !6329
  %7 = load %struct.usb_device*, %struct.usb_device** %usb, align 8, !dbg !6330
  %8 = load %struct.usb_device*, %struct.usb_device** %usb, align 8, !dbg !6331
  %call1 = call i32 @__create_pipe(%struct.usb_device* %8, i32 4) #8, !dbg !6331
  %or = or i32 -1073741824, %call1, !dbg !6331
  %9 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !6332
  %duxbuf2 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %9, i32 0, i32 1, !dbg !6333
  %10 = load i8*, i8** %duxbuf2, align 8, !dbg !6333
  %call3 = call i32 @usb_bulk_msg(%struct.usb_device* %7, i32 %or, i8* %10, i32 256, i32* %nsent, i32 10000) #8, !dbg !6334
  store i32 %call3, i32* %ret, align 4, !dbg !6335
  %11 = load i32, i32* %ret, align 4, !dbg !6336
  %cmp = icmp slt i32 %11, 0, !dbg !6338
  br i1 %cmp, label %if.then, label %if.end, !dbg !6339

if.then:                                          ; preds = %entry
  %12 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6340
  %class_dev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 4, !dbg !6340
  %13 = load %struct.device*, %struct.device** %class_dev, align 8, !dbg !6340
  %14 = load i32, i32* %ret, align 4, !dbg !6340
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %13, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.15, i64 0, i64 0), i32 %14) #9, !dbg !6340
  br label %if.end, !dbg !6340

if.end:                                           ; preds = %if.then, %entry
  %15 = load i32, i32* %ret, align 4, !dbg !6341
  ret i32 %15, !dbg !6342
}

; Function Attrs: noredzone
declare dso_local i32 @usb_bulk_msg(%struct.usb_device*, i32, i8*, i32, i32*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_src(i32* %src, i32 %flags) #2 !dbg !6343 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i32*, align 8
  %flags.addr = alloca i32, align 4
  %orig_src = alloca i32, align 4
  store i32* %src, i32** %src.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %src.addr, metadata !6346, metadata !DIExpression()), !dbg !6347
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6348, metadata !DIExpression()), !dbg !6349
  call void @llvm.dbg.declare(metadata i32* %orig_src, metadata !6350, metadata !DIExpression()), !dbg !6351
  %0 = load i32*, i32** %src.addr, align 8, !dbg !6352
  %1 = load i32, i32* %0, align 4, !dbg !6353
  store i32 %1, i32* %orig_src, align 4, !dbg !6351
  %2 = load i32, i32* %orig_src, align 4, !dbg !6354
  %3 = load i32, i32* %flags.addr, align 4, !dbg !6355
  %and = and i32 %2, %3, !dbg !6356
  %4 = load i32*, i32** %src.addr, align 8, !dbg !6357
  store i32 %and, i32* %4, align 4, !dbg !6358
  %5 = load i32*, i32** %src.addr, align 8, !dbg !6359
  %6 = load i32, i32* %5, align 4, !dbg !6361
  %cmp = icmp eq i32 %6, 0, !dbg !6362
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !6363

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32*, i32** %src.addr, align 8, !dbg !6364
  %8 = load i32, i32* %7, align 4, !dbg !6365
  %9 = load i32, i32* %orig_src, align 4, !dbg !6366
  %cmp1 = icmp ne i32 %8, %9, !dbg !6367
  br i1 %cmp1, label %if.then, label %if.end, !dbg !6368

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !6369
  br label %return, !dbg !6369

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %retval, align 4, !dbg !6370
  br label %return, !dbg !6370

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !6371
  ret i32 %10, !dbg !6371
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_is_unique(i32 %src) #2 !dbg !6372 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i32, align 4
  store i32 %src, i32* %src.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %src.addr, metadata !6375, metadata !DIExpression()), !dbg !6376
  %0 = load i32, i32* %src.addr, align 4, !dbg !6377
  %1 = load i32, i32* %src.addr, align 4, !dbg !6379
  %sub = sub i32 %1, 1, !dbg !6380
  %and = and i32 %0, %sub, !dbg !6381
  %cmp = icmp ne i32 %and, 0, !dbg !6382
  br i1 %cmp, label %if.then, label %if.end, !dbg !6383

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !6384
  br label %return, !dbg !6384

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6385
  br label %return, !dbg !6385

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !6386
  ret i32 %2, !dbg !6386
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_arg_is(i32* %arg, i32 %val) #2 !dbg !6387 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca i32*, align 8
  %val.addr = alloca i32, align 4
  store i32* %arg, i32** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %arg.addr, metadata !6388, metadata !DIExpression()), !dbg !6389
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !6390, metadata !DIExpression()), !dbg !6391
  %0 = load i32*, i32** %arg.addr, align 8, !dbg !6392
  %1 = load i32, i32* %0, align 4, !dbg !6394
  %2 = load i32, i32* %val.addr, align 4, !dbg !6395
  %cmp = icmp ne i32 %1, %2, !dbg !6396
  br i1 %cmp, label %if.then, label %if.end, !dbg !6397

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %val.addr, align 4, !dbg !6398
  %4 = load i32*, i32** %arg.addr, align 8, !dbg !6400
  store i32 %3, i32* %4, align 4, !dbg !6401
  store i32 -22, i32* %retval, align 4, !dbg !6402
  br label %return, !dbg !6402

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6403
  br label %return, !dbg !6403

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !6404
  ret i32 %5, !dbg !6404
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_arg_min(i32* %arg, i32 %val) #2 !dbg !6405 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca i32*, align 8
  %val.addr = alloca i32, align 4
  store i32* %arg, i32** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %arg.addr, metadata !6406, metadata !DIExpression()), !dbg !6407
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !6408, metadata !DIExpression()), !dbg !6409
  %0 = load i32*, i32** %arg.addr, align 8, !dbg !6410
  %1 = load i32, i32* %0, align 4, !dbg !6412
  %2 = load i32, i32* %val.addr, align 4, !dbg !6413
  %cmp = icmp ult i32 %1, %2, !dbg !6414
  br i1 %cmp, label %if.then, label %if.end, !dbg !6415

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %val.addr, align 4, !dbg !6416
  %4 = load i32*, i32** %arg.addr, align 8, !dbg !6418
  store i32 %3, i32* %4, align 4, !dbg !6419
  store i32 -22, i32* %retval, align 4, !dbg !6420
  br label %return, !dbg !6420

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6421
  br label %return, !dbg !6421

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !6422
  ret i32 %5, !dbg !6422
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_arg_max(i32* %arg, i32 %val) #2 !dbg !6423 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca i32*, align 8
  %val.addr = alloca i32, align 4
  store i32* %arg, i32** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %arg.addr, metadata !6424, metadata !DIExpression()), !dbg !6425
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !6426, metadata !DIExpression()), !dbg !6427
  %0 = load i32*, i32** %arg.addr, align 8, !dbg !6428
  %1 = load i32, i32* %0, align 4, !dbg !6430
  %2 = load i32, i32* %val.addr, align 4, !dbg !6431
  %cmp = icmp ugt i32 %1, %2, !dbg !6432
  br i1 %cmp, label %if.then, label %if.end, !dbg !6433

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %val.addr, align 4, !dbg !6434
  %4 = load i32*, i32** %arg.addr, align 8, !dbg !6436
  store i32 %3, i32* %4, align 4, !dbg !6437
  store i32 -22, i32* %retval, align 4, !dbg !6438
  br label %return, !dbg !6438

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6439
  br label %return, !dbg !6439

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !6440
  ret i32 %5, !dbg !6440
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usbduxfast_ai_check_chanlist(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_cmd* %cmd) #2 !dbg !6441 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %cmd.addr = alloca %struct.comedi_cmd*, align 8
  %gain0 = alloca i32, align 4
  %i = alloca i32, align 4
  %chan = alloca i32, align 4
  %gain = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !6442, metadata !DIExpression()), !dbg !6443
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !6444, metadata !DIExpression()), !dbg !6445
  store %struct.comedi_cmd* %cmd, %struct.comedi_cmd** %cmd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd.addr, metadata !6446, metadata !DIExpression()), !dbg !6447
  call void @llvm.dbg.declare(metadata i32* %gain0, metadata !6448, metadata !DIExpression()), !dbg !6449
  %0 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !6450
  %chanlist = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %0, i32 0, i32 12, !dbg !6450
  %1 = load i32*, i32** %chanlist, align 8, !dbg !6450
  %arrayidx = getelementptr i32, i32* %1, i64 0, !dbg !6450
  %2 = load i32, i32* %arrayidx, align 4, !dbg !6450
  %shr = lshr i32 %2, 16, !dbg !6450
  %and = and i32 %shr, 255, !dbg !6450
  store i32 %and, i32* %gain0, align 4, !dbg !6449
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6451, metadata !DIExpression()), !dbg !6452
  %3 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !6453
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %3, i32 0, i32 13, !dbg !6455
  %4 = load i32, i32* %chanlist_len, align 8, !dbg !6455
  %cmp = icmp ugt i32 %4, 3, !dbg !6456
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !6457

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !6458
  %chanlist_len1 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %5, i32 0, i32 13, !dbg !6459
  %6 = load i32, i32* %chanlist_len1, align 8, !dbg !6459
  %cmp2 = icmp ne i32 %6, 16, !dbg !6460
  br i1 %cmp2, label %if.then, label %if.end, !dbg !6461

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6462
  %class_dev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 4, !dbg !6462
  %8 = load %struct.device*, %struct.device** %class_dev, align 8, !dbg !6462
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %8, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0)) #9, !dbg !6462
  store i32 -22, i32* %retval, align 4, !dbg !6464
  br label %return, !dbg !6464

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, i32* %i, align 4, !dbg !6465
  br label %for.cond, !dbg !6467

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %i, align 4, !dbg !6468
  %10 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !6470
  %chanlist_len3 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %10, i32 0, i32 13, !dbg !6471
  %11 = load i32, i32* %chanlist_len3, align 8, !dbg !6471
  %cmp4 = icmp ult i32 %9, %11, !dbg !6472
  br i1 %cmp4, label %for.body, label %for.end, !dbg !6473

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !6474, metadata !DIExpression()), !dbg !6476
  %12 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !6477
  %chanlist5 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %12, i32 0, i32 12, !dbg !6477
  %13 = load i32*, i32** %chanlist5, align 8, !dbg !6477
  %14 = load i32, i32* %i, align 4, !dbg !6477
  %idxprom = sext i32 %14 to i64, !dbg !6477
  %arrayidx6 = getelementptr i32, i32* %13, i64 %idxprom, !dbg !6477
  %15 = load i32, i32* %arrayidx6, align 4, !dbg !6477
  %and7 = and i32 %15, 65535, !dbg !6477
  store i32 %and7, i32* %chan, align 4, !dbg !6476
  call void @llvm.dbg.declare(metadata i32* %gain, metadata !6478, metadata !DIExpression()), !dbg !6479
  %16 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !6480
  %chanlist8 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %16, i32 0, i32 12, !dbg !6480
  %17 = load i32*, i32** %chanlist8, align 8, !dbg !6480
  %18 = load i32, i32* %i, align 4, !dbg !6480
  %idxprom9 = sext i32 %18 to i64, !dbg !6480
  %arrayidx10 = getelementptr i32, i32* %17, i64 %idxprom9, !dbg !6480
  %19 = load i32, i32* %arrayidx10, align 4, !dbg !6480
  %shr11 = lshr i32 %19, 16, !dbg !6480
  %and12 = and i32 %shr11, 255, !dbg !6480
  store i32 %and12, i32* %gain, align 4, !dbg !6479
  %20 = load i32, i32* %chan, align 4, !dbg !6481
  %21 = load i32, i32* %i, align 4, !dbg !6483
  %cmp13 = icmp ne i32 %20, %21, !dbg !6484
  br i1 %cmp13, label %if.then14, label %if.end16, !dbg !6485

if.then14:                                        ; preds = %for.body
  %22 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6486
  %class_dev15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %22, i32 0, i32 4, !dbg !6486
  %23 = load %struct.device*, %struct.device** %class_dev15, align 8, !dbg !6486
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0)) #9, !dbg !6486
  store i32 -22, i32* %retval, align 4, !dbg !6488
  br label %return, !dbg !6488

if.end16:                                         ; preds = %for.body
  %24 = load i32, i32* %gain, align 4, !dbg !6489
  %25 = load i32, i32* %gain0, align 4, !dbg !6491
  %cmp17 = icmp ne i32 %24, %25, !dbg !6492
  br i1 %cmp17, label %land.lhs.true18, label %if.end23, !dbg !6493

land.lhs.true18:                                  ; preds = %if.end16
  %26 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !6494
  %chanlist_len19 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %26, i32 0, i32 13, !dbg !6495
  %27 = load i32, i32* %chanlist_len19, align 8, !dbg !6495
  %cmp20 = icmp ugt i32 %27, 3, !dbg !6496
  br i1 %cmp20, label %if.then21, label %if.end23, !dbg !6497

if.then21:                                        ; preds = %land.lhs.true18
  %28 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6498
  %class_dev22 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %28, i32 0, i32 4, !dbg !6498
  %29 = load %struct.device*, %struct.device** %class_dev22, align 8, !dbg !6498
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %29, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i64 0, i64 0)) #9, !dbg !6498
  store i32 -22, i32* %retval, align 4, !dbg !6500
  br label %return, !dbg !6500

if.end23:                                         ; preds = %land.lhs.true18, %if.end16
  br label %for.inc, !dbg !6501

for.inc:                                          ; preds = %if.end23
  %30 = load i32, i32* %i, align 4, !dbg !6502
  %inc = add i32 %30, 1, !dbg !6502
  store i32 %inc, i32* %i, align 4, !dbg !6502
  br label %for.cond, !dbg !6503, !llvm.loop !6504

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !6506
  br label %return, !dbg !6506

return:                                           ; preds = %for.end, %if.then21, %if.then14, %if.then
  %31 = load i32, i32* %retval, align 4, !dbg !6507
  ret i32 %31, !dbg !6507
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usbduxfast_submit_urb(%struct.comedi_device* %dev) #2 !dbg !6508 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %usb = alloca %struct.usb_device*, align 8
  %devpriv = alloca %struct.usbduxfast_private*, align 8
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !6509, metadata !DIExpression()), !dbg !6510
  call void @llvm.dbg.declare(metadata %struct.usb_device** %usb, metadata !6511, metadata !DIExpression()), !dbg !6512
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6513
  %call = call %struct.usb_device* @comedi_to_usb_dev(%struct.comedi_device* %0) #8, !dbg !6514
  store %struct.usb_device* %call, %struct.usb_device** %usb, align 8, !dbg !6512
  call void @llvm.dbg.declare(metadata %struct.usbduxfast_private** %devpriv, metadata !6515, metadata !DIExpression()), !dbg !6516
  %1 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6517
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %1, i32 0, i32 3, !dbg !6518
  %2 = load i8*, i8** %private, align 8, !dbg !6518
  %3 = bitcast i8* %2 to %struct.usbduxfast_private*, !dbg !6517
  store %struct.usbduxfast_private* %3, %struct.usbduxfast_private** %devpriv, align 8, !dbg !6516
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6519, metadata !DIExpression()), !dbg !6520
  %4 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !6521
  %urb = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %4, i32 0, i32 0, !dbg !6522
  %5 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !6522
  %6 = load %struct.usb_device*, %struct.usb_device** %usb, align 8, !dbg !6523
  %7 = load %struct.usb_device*, %struct.usb_device** %usb, align 8, !dbg !6524
  %call1 = call i32 @__create_pipe(%struct.usb_device* %7, i32 6) #8, !dbg !6524
  %or = or i32 -1073741824, %call1, !dbg !6524
  %or2 = or i32 %or, 128, !dbg !6524
  %8 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !6525
  %inbuf = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %8, i32 0, i32 2, !dbg !6526
  %9 = load i8*, i8** %inbuf, align 8, !dbg !6526
  %10 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6527
  %11 = bitcast %struct.comedi_device* %10 to i8*, !dbg !6527
  call void @usb_fill_bulk_urb(%struct.urb* %5, %struct.usb_device* %6, i32 %or2, i8* %9, i32 512, void (%struct.urb*)* @usbduxfast_ai_interrupt, i8* %11) #8, !dbg !6528
  %12 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !6529
  %urb3 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %12, i32 0, i32 0, !dbg !6530
  %13 = load %struct.urb*, %struct.urb** %urb3, align 8, !dbg !6530
  %call4 = call i32 @usb_submit_urb(%struct.urb* %13, i32 2592) #8, !dbg !6531
  store i32 %call4, i32* %ret, align 4, !dbg !6532
  %14 = load i32, i32* %ret, align 4, !dbg !6533
  %tobool = icmp ne i32 %14, 0, !dbg !6533
  br i1 %tobool, label %if.then, label %if.end, !dbg !6535

if.then:                                          ; preds = %entry
  %15 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6536
  %class_dev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 4, !dbg !6536
  %16 = load %struct.device*, %struct.device** %class_dev, align 8, !dbg !6536
  %17 = load i32, i32* %ret, align 4, !dbg !6536
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0), i32 %17) #9, !dbg !6536
  %18 = load i32, i32* %ret, align 4, !dbg !6538
  store i32 %18, i32* %retval, align 4, !dbg !6539
  br label %return, !dbg !6539

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6540
  br label %return, !dbg !6540

return:                                           ; preds = %if.end, %if.then
  %19 = load i32, i32* %retval, align 4, !dbg !6541
  ret i32 %19, !dbg !6541
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usbduxfast_ai_inttrig(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, i32 %trig_num) #2 !dbg !6542 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %trig_num.addr = alloca i32, align 4
  %devpriv = alloca %struct.usbduxfast_private*, align 8
  %cmd = alloca %struct.comedi_cmd*, align 8
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !6543, metadata !DIExpression()), !dbg !6544
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !6545, metadata !DIExpression()), !dbg !6546
  store i32 %trig_num, i32* %trig_num.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %trig_num.addr, metadata !6547, metadata !DIExpression()), !dbg !6548
  call void @llvm.dbg.declare(metadata %struct.usbduxfast_private** %devpriv, metadata !6549, metadata !DIExpression()), !dbg !6550
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6551
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !6552
  %1 = load i8*, i8** %private, align 8, !dbg !6552
  %2 = bitcast i8* %1 to %struct.usbduxfast_private*, !dbg !6551
  store %struct.usbduxfast_private* %2, %struct.usbduxfast_private** %devpriv, align 8, !dbg !6550
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd, metadata !6553, metadata !DIExpression()), !dbg !6554
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6555
  %async = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %3, i32 0, i32 7, !dbg !6556
  %4 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !6556
  %cmd1 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %4, i32 0, i32 17, !dbg !6557
  store %struct.comedi_cmd* %cmd1, %struct.comedi_cmd** %cmd, align 8, !dbg !6554
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6558, metadata !DIExpression()), !dbg !6559
  %5 = load i32, i32* %trig_num.addr, align 4, !dbg !6560
  %6 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !6562
  %start_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %6, i32 0, i32 3, !dbg !6563
  %7 = load i32, i32* %start_arg, align 4, !dbg !6563
  %cmp = icmp ne i32 %5, %7, !dbg !6564
  br i1 %cmp, label %if.then, label %if.end, !dbg !6565

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !6566
  br label %return, !dbg !6566

if.end:                                           ; preds = %entry
  %8 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !6567
  %mut = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %8, i32 0, i32 5, !dbg !6568
  call void @mutex_lock(%struct.mutex* %mut) #8, !dbg !6569
  %9 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !6570
  %ai_cmd_running = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %9, i32 0, i32 3, !dbg !6572
  %10 = load i16, i16* %ai_cmd_running, align 8, !dbg !6572
  %tobool = icmp ne i16 %10, 0, !dbg !6570
  br i1 %tobool, label %if.else, label %if.then2, !dbg !6573

if.then2:                                         ; preds = %if.end
  %11 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !6574
  %ai_cmd_running3 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %11, i32 0, i32 3, !dbg !6576
  store i16 1, i16* %ai_cmd_running3, align 8, !dbg !6577
  %12 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6578
  %call = call i32 @usbduxfast_submit_urb(%struct.comedi_device* %12) #8, !dbg !6579
  store i32 %call, i32* %ret, align 4, !dbg !6580
  %13 = load i32, i32* %ret, align 4, !dbg !6581
  %cmp4 = icmp slt i32 %13, 0, !dbg !6583
  br i1 %cmp4, label %if.then5, label %if.end8, !dbg !6584

if.then5:                                         ; preds = %if.then2
  %14 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6585
  %class_dev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 4, !dbg !6585
  %15 = load %struct.device*, %struct.device** %class_dev, align 8, !dbg !6585
  %16 = load i32, i32* %ret, align 4, !dbg !6585
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0), i32 %16) #9, !dbg !6585
  %17 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !6587
  %ai_cmd_running6 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %17, i32 0, i32 3, !dbg !6588
  store i16 0, i16* %ai_cmd_running6, align 8, !dbg !6589
  %18 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !6590
  %mut7 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %18, i32 0, i32 5, !dbg !6591
  call void @mutex_unlock(%struct.mutex* %mut7) #8, !dbg !6592
  %19 = load i32, i32* %ret, align 4, !dbg !6593
  store i32 %19, i32* %retval, align 4, !dbg !6594
  br label %return, !dbg !6594

if.end8:                                          ; preds = %if.then2
  %20 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6595
  %async9 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %20, i32 0, i32 7, !dbg !6596
  %21 = load %struct.comedi_async*, %struct.comedi_async** %async9, align 8, !dbg !6596
  %inttrig = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %21, i32 0, i32 20, !dbg !6597
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* null, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)** %inttrig, align 8, !dbg !6598
  br label %if.end11, !dbg !6599

if.else:                                          ; preds = %if.end
  %22 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6600
  %class_dev10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %22, i32 0, i32 4, !dbg !6600
  %23 = load %struct.device*, %struct.device** %class_dev10, align 8, !dbg !6600
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0)) #9, !dbg !6600
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.end8
  %24 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !6602
  %mut12 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %24, i32 0, i32 5, !dbg !6603
  call void @mutex_unlock(%struct.mutex* %mut12) #8, !dbg !6604
  store i32 1, i32* %retval, align 4, !dbg !6605
  br label %return, !dbg !6605

return:                                           ; preds = %if.end11, %if.then5, %if.then
  %25 = load i32, i32* %retval, align 4, !dbg !6606
  ret i32 %25, !dbg !6606
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_fill_bulk_urb(%struct.urb* %urb, %struct.usb_device* %dev, i32 %pipe, i8* %transfer_buffer, i32 %buffer_length, void (%struct.urb*)* %complete_fn, i8* %context) #2 !dbg !6607 {
entry:
  %urb.addr = alloca %struct.urb*, align 8
  %dev.addr = alloca %struct.usb_device*, align 8
  %pipe.addr = alloca i32, align 4
  %transfer_buffer.addr = alloca i8*, align 8
  %buffer_length.addr = alloca i32, align 4
  %complete_fn.addr = alloca void (%struct.urb*)*, align 8
  %context.addr = alloca i8*, align 8
  store %struct.urb* %urb, %struct.urb** %urb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !6610, metadata !DIExpression()), !dbg !6611
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !6612, metadata !DIExpression()), !dbg !6613
  store i32 %pipe, i32* %pipe.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pipe.addr, metadata !6614, metadata !DIExpression()), !dbg !6615
  store i8* %transfer_buffer, i8** %transfer_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %transfer_buffer.addr, metadata !6616, metadata !DIExpression()), !dbg !6617
  store i32 %buffer_length, i32* %buffer_length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %buffer_length.addr, metadata !6618, metadata !DIExpression()), !dbg !6619
  store void (%struct.urb*)* %complete_fn, void (%struct.urb*)** %complete_fn.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.urb*)** %complete_fn.addr, metadata !6620, metadata !DIExpression()), !dbg !6621
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !6622, metadata !DIExpression()), !dbg !6623
  %0 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !6624
  %1 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6625
  %dev1 = getelementptr inbounds %struct.urb, %struct.urb* %1, i32 0, i32 8, !dbg !6626
  store %struct.usb_device* %0, %struct.usb_device** %dev1, align 8, !dbg !6627
  %2 = load i32, i32* %pipe.addr, align 4, !dbg !6628
  %3 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6629
  %pipe2 = getelementptr inbounds %struct.urb, %struct.urb* %3, i32 0, i32 10, !dbg !6630
  store i32 %2, i32* %pipe2, align 8, !dbg !6631
  %4 = load i8*, i8** %transfer_buffer.addr, align 8, !dbg !6632
  %5 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6633
  %transfer_buffer3 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 14, !dbg !6634
  store i8* %4, i8** %transfer_buffer3, align 8, !dbg !6635
  %6 = load i32, i32* %buffer_length.addr, align 4, !dbg !6636
  %7 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6637
  %transfer_buffer_length = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 19, !dbg !6638
  store i32 %6, i32* %transfer_buffer_length, align 8, !dbg !6639
  %8 = load void (%struct.urb*)*, void (%struct.urb*)** %complete_fn.addr, align 8, !dbg !6640
  %9 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6641
  %complete = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 28, !dbg !6642
  store void (%struct.urb*)* %8, void (%struct.urb*)** %complete, align 8, !dbg !6643
  %10 = load i8*, i8** %context.addr, align 8, !dbg !6644
  %11 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6645
  %context4 = getelementptr inbounds %struct.urb, %struct.urb* %11, i32 0, i32 27, !dbg !6646
  store i8* %10, i8** %context4, align 8, !dbg !6647
  ret void, !dbg !6648
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usbduxfast_ai_interrupt(%struct.urb* %urb) #2 !dbg !6649 {
entry:
  %urb.addr = alloca %struct.urb*, align 8
  %dev = alloca %struct.comedi_device*, align 8
  %s = alloca %struct.comedi_subdevice*, align 8
  %async = alloca %struct.comedi_async*, align 8
  %devpriv = alloca %struct.usbduxfast_private*, align 8
  store %struct.urb* %urb, %struct.urb** %urb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !6650, metadata !DIExpression()), !dbg !6651
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev, metadata !6652, metadata !DIExpression()), !dbg !6653
  %0 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6654
  %context = getelementptr inbounds %struct.urb, %struct.urb* %0, i32 0, i32 27, !dbg !6655
  %1 = load i8*, i8** %context, align 8, !dbg !6655
  %2 = bitcast i8* %1 to %struct.comedi_device*, !dbg !6654
  store %struct.comedi_device* %2, %struct.comedi_device** %dev, align 8, !dbg !6653
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s, metadata !6656, metadata !DIExpression()), !dbg !6657
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !6658
  %read_subdev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %3, i32 0, i32 21, !dbg !6659
  %4 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %read_subdev, align 8, !dbg !6659
  store %struct.comedi_subdevice* %4, %struct.comedi_subdevice** %s, align 8, !dbg !6657
  call void @llvm.dbg.declare(metadata %struct.comedi_async** %async, metadata !6660, metadata !DIExpression()), !dbg !6661
  %5 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !6662
  %async1 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %5, i32 0, i32 7, !dbg !6663
  %6 = load %struct.comedi_async*, %struct.comedi_async** %async1, align 8, !dbg !6663
  store %struct.comedi_async* %6, %struct.comedi_async** %async, align 8, !dbg !6661
  call void @llvm.dbg.declare(metadata %struct.usbduxfast_private** %devpriv, metadata !6664, metadata !DIExpression()), !dbg !6665
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !6666
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 3, !dbg !6667
  %8 = load i8*, i8** %private, align 8, !dbg !6667
  %9 = bitcast i8* %8 to %struct.usbduxfast_private*, !dbg !6666
  store %struct.usbduxfast_private* %9, %struct.usbduxfast_private** %devpriv, align 8, !dbg !6665
  %10 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !6668
  %ai_cmd_running = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %10, i32 0, i32 3, !dbg !6670
  %11 = load i16, i16* %ai_cmd_running, align 8, !dbg !6670
  %tobool = icmp ne i16 %11, 0, !dbg !6668
  br i1 %tobool, label %if.end, label %if.then, !dbg !6671

if.then:                                          ; preds = %entry
  br label %return, !dbg !6672

if.end:                                           ; preds = %entry
  %12 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6673
  %status = getelementptr inbounds %struct.urb, %struct.urb* %12, i32 0, i32 12, !dbg !6674
  %13 = load i32, i32* %status, align 8, !dbg !6674
  switch i32 %13, label %sw.default [
    i32 0, label %sw.bb
    i32 -104, label %sw.bb2
    i32 -2, label %sw.bb2
    i32 -108, label %sw.bb2
    i32 -103, label %sw.bb2
  ], !dbg !6675

sw.bb:                                            ; preds = %if.end
  %14 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !6676
  %15 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !6678
  %16 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6679
  call void @usbduxfast_ai_handle_urb(%struct.comedi_device* %14, %struct.comedi_subdevice* %15, %struct.urb* %16) #8, !dbg !6680
  br label %sw.epilog, !dbg !6681

sw.bb2:                                           ; preds = %if.end, %if.end, %if.end, %if.end
  %17 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !6682
  %events = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %17, i32 0, i32 16, !dbg !6683
  %18 = load i32, i32* %events, align 4, !dbg !6684
  %or = or i32 %18, 16, !dbg !6684
  store i32 %or, i32* %events, align 4, !dbg !6684
  br label %sw.epilog, !dbg !6685

sw.default:                                       ; preds = %if.end
  %19 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !6686
  %class_dev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %19, i32 0, i32 4, !dbg !6686
  %20 = load %struct.device*, %struct.device** %class_dev, align 8, !dbg !6686
  %21 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6686
  %status3 = getelementptr inbounds %struct.urb, %struct.urb* %21, i32 0, i32 12, !dbg !6686
  %22 = load i32, i32* %status3, align 8, !dbg !6686
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %20, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.20, i64 0, i64 0), i32 %22) #9, !dbg !6686
  %23 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !6687
  %events4 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %23, i32 0, i32 16, !dbg !6688
  %24 = load i32, i32* %events4, align 4, !dbg !6689
  %or5 = or i32 %24, 16, !dbg !6689
  store i32 %or5, i32* %events4, align 4, !dbg !6689
  br label %sw.epilog, !dbg !6690

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %sw.bb
  %25 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !6691
  %events6 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %25, i32 0, i32 16, !dbg !6693
  %26 = load i32, i32* %events6, align 4, !dbg !6693
  %and = and i32 %26, 50, !dbg !6694
  %tobool7 = icmp ne i32 %and, 0, !dbg !6694
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !6695

if.then8:                                         ; preds = %sw.epilog
  %27 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !6696
  %call = call i32 @usbduxfast_ai_stop(%struct.comedi_device* %27, i32 0) #8, !dbg !6697
  br label %if.end9, !dbg !6697

if.end9:                                          ; preds = %if.then8, %sw.epilog
  %28 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !6698
  %29 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !6699
  call void @comedi_event(%struct.comedi_device* %28, %struct.comedi_subdevice* %29) #8, !dbg !6700
  br label %return, !dbg !6701

return:                                           ; preds = %if.end9, %if.then
  ret void, !dbg !6701
}

; Function Attrs: noredzone
declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usbduxfast_ai_handle_urb(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.urb* %urb) #2 !dbg !6702 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %urb.addr = alloca %struct.urb*, align 8
  %devpriv = alloca %struct.usbduxfast_private*, align 8
  %async = alloca %struct.comedi_async*, align 8
  %cmd = alloca %struct.comedi_cmd*, align 8
  %ret = alloca i32, align 4
  %nsamples = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !6705, metadata !DIExpression()), !dbg !6706
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !6707, metadata !DIExpression()), !dbg !6708
  store %struct.urb* %urb, %struct.urb** %urb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !6709, metadata !DIExpression()), !dbg !6710
  call void @llvm.dbg.declare(metadata %struct.usbduxfast_private** %devpriv, metadata !6711, metadata !DIExpression()), !dbg !6712
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6713
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !6714
  %1 = load i8*, i8** %private, align 8, !dbg !6714
  %2 = bitcast i8* %1 to %struct.usbduxfast_private*, !dbg !6713
  store %struct.usbduxfast_private* %2, %struct.usbduxfast_private** %devpriv, align 8, !dbg !6712
  call void @llvm.dbg.declare(metadata %struct.comedi_async** %async, metadata !6715, metadata !DIExpression()), !dbg !6716
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6717
  %async1 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %3, i32 0, i32 7, !dbg !6718
  %4 = load %struct.comedi_async*, %struct.comedi_async** %async1, align 8, !dbg !6718
  store %struct.comedi_async* %4, %struct.comedi_async** %async, align 8, !dbg !6716
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd, metadata !6719, metadata !DIExpression()), !dbg !6720
  %5 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !6721
  %cmd2 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %5, i32 0, i32 17, !dbg !6722
  store %struct.comedi_cmd* %cmd2, %struct.comedi_cmd** %cmd, align 8, !dbg !6720
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6723, metadata !DIExpression()), !dbg !6724
  %6 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !6725
  %ignore = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %6, i32 0, i32 4, !dbg !6727
  %7 = load i32, i32* %ignore, align 4, !dbg !6727
  %tobool = icmp ne i32 %7, 0, !dbg !6725
  br i1 %tobool, label %if.then, label %if.else, !dbg !6728

if.then:                                          ; preds = %entry
  %8 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !6729
  %ignore3 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %8, i32 0, i32 4, !dbg !6731
  %9 = load i32, i32* %ignore3, align 4, !dbg !6732
  %dec = add i32 %9, -1, !dbg !6732
  store i32 %dec, i32* %ignore3, align 4, !dbg !6732
  br label %if.end8, !dbg !6733

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %nsamples, metadata !6734, metadata !DIExpression()), !dbg !6736
  %10 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6737
  %11 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6738
  %actual_length = getelementptr inbounds %struct.urb, %struct.urb* %11, i32 0, i32 20, !dbg !6739
  %12 = load i32, i32* %actual_length, align 4, !dbg !6739
  %call = call i32 @comedi_bytes_to_samples(%struct.comedi_subdevice* %10, i32 %12) #8, !dbg !6740
  store i32 %call, i32* %nsamples, align 4, !dbg !6741
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6742
  %14 = load i32, i32* %nsamples, align 4, !dbg !6743
  %call4 = call i32 @comedi_nsamples_left(%struct.comedi_subdevice* %13, i32 %14) #8, !dbg !6744
  store i32 %call4, i32* %nsamples, align 4, !dbg !6745
  %15 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6746
  %16 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6747
  %transfer_buffer = getelementptr inbounds %struct.urb, %struct.urb* %16, i32 0, i32 14, !dbg !6748
  %17 = load i8*, i8** %transfer_buffer, align 8, !dbg !6748
  %18 = load i32, i32* %nsamples, align 4, !dbg !6749
  %call5 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %15, i8* %17, i32 %18) #8, !dbg !6750
  %19 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !6751
  %stop_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %19, i32 0, i32 10, !dbg !6753
  %20 = load i32, i32* %stop_src, align 8, !dbg !6753
  %cmp = icmp eq i32 %20, 32, !dbg !6754
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !6755

land.lhs.true:                                    ; preds = %if.else
  %21 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !6756
  %scans_done = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %21, i32 0, i32 11, !dbg !6757
  %22 = load i32, i32* %scans_done, align 8, !dbg !6757
  %23 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !6758
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %23, i32 0, i32 11, !dbg !6759
  %24 = load i32, i32* %stop_arg, align 4, !dbg !6759
  %cmp6 = icmp uge i32 %22, %24, !dbg !6760
  br i1 %cmp6, label %if.then7, label %if.end, !dbg !6761

if.then7:                                         ; preds = %land.lhs.true
  %25 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !6762
  %events = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %25, i32 0, i32 16, !dbg !6763
  %26 = load i32, i32* %events, align 4, !dbg !6764
  %or = or i32 %26, 2, !dbg !6764
  store i32 %or, i32* %events, align 4, !dbg !6764
  br label %if.end, !dbg !6762

if.end:                                           ; preds = %if.then7, %land.lhs.true, %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  %27 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !6765
  %events9 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %27, i32 0, i32 16, !dbg !6767
  %28 = load i32, i32* %events9, align 4, !dbg !6767
  %and = and i32 %28, 50, !dbg !6768
  %tobool10 = icmp ne i32 %and, 0, !dbg !6768
  br i1 %tobool10, label %if.end20, label %if.then11, !dbg !6769

if.then11:                                        ; preds = %if.end8
  %29 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6770
  %call12 = call %struct.usb_device* @comedi_to_usb_dev(%struct.comedi_device* %29) #8, !dbg !6772
  %30 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6773
  %dev13 = getelementptr inbounds %struct.urb, %struct.urb* %30, i32 0, i32 8, !dbg !6774
  store %struct.usb_device* %call12, %struct.usb_device** %dev13, align 8, !dbg !6775
  %31 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6776
  %status = getelementptr inbounds %struct.urb, %struct.urb* %31, i32 0, i32 12, !dbg !6777
  store i32 0, i32* %status, align 8, !dbg !6778
  %32 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6779
  %call14 = call i32 @usb_submit_urb(%struct.urb* %32, i32 2592) #8, !dbg !6780
  store i32 %call14, i32* %ret, align 4, !dbg !6781
  %33 = load i32, i32* %ret, align 4, !dbg !6782
  %cmp15 = icmp slt i32 %33, 0, !dbg !6784
  br i1 %cmp15, label %if.then16, label %if.end19, !dbg !6785

if.then16:                                        ; preds = %if.then11
  %34 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6786
  %class_dev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %34, i32 0, i32 4, !dbg !6786
  %35 = load %struct.device*, %struct.device** %class_dev, align 8, !dbg !6786
  %36 = load i32, i32* %ret, align 4, !dbg !6786
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0), i32 %36) #9, !dbg !6786
  %37 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !6788
  %events17 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %37, i32 0, i32 16, !dbg !6789
  %38 = load i32, i32* %events17, align 4, !dbg !6790
  %or18 = or i32 %38, 16, !dbg !6790
  store i32 %or18, i32* %events17, align 4, !dbg !6790
  br label %if.end19, !dbg !6791

if.end19:                                         ; preds = %if.then16, %if.then11
  br label %if.end20, !dbg !6792

if.end20:                                         ; preds = %if.end19, %if.end8
  ret void, !dbg !6793
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usbduxfast_ai_stop(%struct.comedi_device* %dev, i32 %do_unlink) #2 !dbg !6794 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %do_unlink.addr = alloca i32, align 4
  %devpriv = alloca %struct.usbduxfast_private*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !6795, metadata !DIExpression()), !dbg !6796
  store i32 %do_unlink, i32* %do_unlink.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %do_unlink.addr, metadata !6797, metadata !DIExpression()), !dbg !6798
  call void @llvm.dbg.declare(metadata %struct.usbduxfast_private** %devpriv, metadata !6799, metadata !DIExpression()), !dbg !6800
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6801
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !6802
  %1 = load i8*, i8** %private, align 8, !dbg !6802
  %2 = bitcast i8* %1 to %struct.usbduxfast_private*, !dbg !6801
  store %struct.usbduxfast_private* %2, %struct.usbduxfast_private** %devpriv, align 8, !dbg !6800
  %3 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !6803
  %ai_cmd_running = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %3, i32 0, i32 3, !dbg !6804
  store i16 0, i16* %ai_cmd_running, align 8, !dbg !6805
  %4 = load i32, i32* %do_unlink.addr, align 4, !dbg !6806
  %tobool = icmp ne i32 %4, 0, !dbg !6806
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6808

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !6809
  %urb = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %5, i32 0, i32 0, !dbg !6810
  %6 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !6810
  %tobool1 = icmp ne %struct.urb* %6, null, !dbg !6809
  br i1 %tobool1, label %if.then, label %if.end, !dbg !6811

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %devpriv, align 8, !dbg !6812
  %urb2 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %7, i32 0, i32 0, !dbg !6814
  %8 = load %struct.urb*, %struct.urb** %urb2, align 8, !dbg !6814
  call void @usb_kill_urb(%struct.urb* %8) #8, !dbg !6815
  br label %if.end, !dbg !6816

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret i32 0, !dbg !6817
}

; Function Attrs: noredzone
declare dso_local void @comedi_event(%struct.comedi_device*, %struct.comedi_subdevice*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_bytes_to_samples(%struct.comedi_subdevice* %s, i32 %nbytes) #2 !dbg !6818 {
entry:
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %nbytes.addr = alloca i32, align 4
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !6821, metadata !DIExpression()), !dbg !6822
  store i32 %nbytes, i32* %nbytes.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nbytes.addr, metadata !6823, metadata !DIExpression()), !dbg !6824
  %0 = load i32, i32* %nbytes.addr, align 4, !dbg !6825
  %1 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6826
  %call = call i32 @comedi_sample_shift(%struct.comedi_subdevice* %1) #8, !dbg !6827
  %shr = lshr i32 %0, %call, !dbg !6828
  ret i32 %shr, !dbg !6829
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_nsamples_left(%struct.comedi_subdevice*, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice*, i8*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_sample_shift(%struct.comedi_subdevice* %s) #2 !dbg !6830 {
entry:
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !6833, metadata !DIExpression()), !dbg !6834
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6835
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 4, !dbg !6836
  %1 = load i32, i32* %subdev_flags, align 4, !dbg !6836
  %and = and i32 %1, 268435456, !dbg !6837
  %tobool = icmp ne i32 %and, 0, !dbg !6835
  %2 = zext i1 %tobool to i64, !dbg !6835
  %cond = select i1 %tobool, i32 2, i32 1, !dbg !6835
  ret i32 %cond, !dbg !6838
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usbduxfast_usb_probe(%struct.usb_interface* %intf, %struct.usb_device_id* %id) #2 !dbg !6839 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %id.addr = alloca %struct.usb_device_id*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !6840, metadata !DIExpression()), !dbg !6841
  store %struct.usb_device_id* %id, %struct.usb_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device_id** %id.addr, metadata !6842, metadata !DIExpression()), !dbg !6843
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !6844
  %call = call i32 @comedi_usb_auto_config(%struct.usb_interface* %0, %struct.comedi_driver* @usbduxfast_driver, i64 0) #8, !dbg !6845
  ret i32 %call, !dbg !6846
}

; Function Attrs: noredzone
declare dso_local void @comedi_usb_auto_unconfig(%struct.usb_interface*) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_usb_auto_config(%struct.usb_interface*, %struct.comedi_driver*, i64) #1

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noredzone }
attributes #9 = { cold noredzone }
attributes #10 = { nounwind }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { noredzone nounwind }
attributes #13 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4185, !4186, !4187, !4188}
!llvm.ident = !{!4189}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_usbduxfast_driver_init240", scope: !2, file: !3, line: 1034, type: !168, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !167, globals: !177, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/staging/comedi/drivers/usbduxfast.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !100, !107, !119, !128, !133, !149, !156}
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
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_interface_condition", file: !101, line: 96, baseType: !7, size: 32, elements: !102)
!101 = !DIFile(filename: "./include/linux/usb.h", directory: "/home/lizy2001/genbc/linux")
!102 = !{!103, !104, !105, !106}
!103 = !DIEnumerator(name: "USB_INTERFACE_UNBOUND", value: 0, isUnsigned: true)
!104 = !DIEnumerator(name: "USB_INTERFACE_BINDING", value: 1, isUnsigned: true)
!105 = !DIEnumerator(name: "USB_INTERFACE_BOUND", value: 2, isUnsigned: true)
!106 = !DIEnumerator(name: "USB_INTERFACE_UNBINDING", value: 3, isUnsigned: true)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_state", file: !108, line: 1156, baseType: !7, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/uapi/linux/usb/ch9.h", directory: "/home/lizy2001/genbc/linux")
!109 = !{!110, !111, !112, !113, !114, !115, !116, !117, !118}
!110 = !DIEnumerator(name: "USB_STATE_NOTATTACHED", value: 0, isUnsigned: true)
!111 = !DIEnumerator(name: "USB_STATE_ATTACHED", value: 1, isUnsigned: true)
!112 = !DIEnumerator(name: "USB_STATE_POWERED", value: 2, isUnsigned: true)
!113 = !DIEnumerator(name: "USB_STATE_RECONNECTING", value: 3, isUnsigned: true)
!114 = !DIEnumerator(name: "USB_STATE_UNAUTHENTICATED", value: 4, isUnsigned: true)
!115 = !DIEnumerator(name: "USB_STATE_DEFAULT", value: 5, isUnsigned: true)
!116 = !DIEnumerator(name: "USB_STATE_ADDRESS", value: 6, isUnsigned: true)
!117 = !DIEnumerator(name: "USB_STATE_CONFIGURED", value: 7, isUnsigned: true)
!118 = !DIEnumerator(name: "USB_STATE_SUSPENDED", value: 8, isUnsigned: true)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_speed", file: !108, line: 1146, baseType: !7, size: 32, elements: !120)
!120 = !{!121, !122, !123, !124, !125, !126, !127}
!121 = !DIEnumerator(name: "USB_SPEED_UNKNOWN", value: 0, isUnsigned: true)
!122 = !DIEnumerator(name: "USB_SPEED_LOW", value: 1, isUnsigned: true)
!123 = !DIEnumerator(name: "USB_SPEED_FULL", value: 2, isUnsigned: true)
!124 = !DIEnumerator(name: "USB_SPEED_HIGH", value: 3, isUnsigned: true)
!125 = !DIEnumerator(name: "USB_SPEED_WIRELESS", value: 4, isUnsigned: true)
!126 = !DIEnumerator(name: "USB_SPEED_SUPER", value: 5, isUnsigned: true)
!127 = !DIEnumerator(name: "USB_SPEED_SUPER_PLUS", value: 6, isUnsigned: true)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_removable", file: !101, line: 476, baseType: !7, size: 32, elements: !129)
!129 = !{!130, !131, !132}
!130 = !DIEnumerator(name: "USB_DEVICE_REMOVABLE_UNKNOWN", value: 0, isUnsigned: true)
!131 = !DIEnumerator(name: "USB_DEVICE_REMOVABLE", value: 1, isUnsigned: true)
!132 = !DIEnumerator(name: "USB_DEVICE_FIXED", value: 2, isUnsigned: true)
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "comedi_subdevice_type", file: !134, line: 221, baseType: !7, size: 32, elements: !135)
!134 = !DIFile(filename: "drivers/staging/comedi/drivers/../comedi.h", directory: "/home/lizy2001/genbc/linux")
!135 = !{!136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148}
!136 = !DIEnumerator(name: "COMEDI_SUBD_UNUSED", value: 0, isUnsigned: true)
!137 = !DIEnumerator(name: "COMEDI_SUBD_AI", value: 1, isUnsigned: true)
!138 = !DIEnumerator(name: "COMEDI_SUBD_AO", value: 2, isUnsigned: true)
!139 = !DIEnumerator(name: "COMEDI_SUBD_DI", value: 3, isUnsigned: true)
!140 = !DIEnumerator(name: "COMEDI_SUBD_DO", value: 4, isUnsigned: true)
!141 = !DIEnumerator(name: "COMEDI_SUBD_DIO", value: 5, isUnsigned: true)
!142 = !DIEnumerator(name: "COMEDI_SUBD_COUNTER", value: 6, isUnsigned: true)
!143 = !DIEnumerator(name: "COMEDI_SUBD_TIMER", value: 7, isUnsigned: true)
!144 = !DIEnumerator(name: "COMEDI_SUBD_MEMORY", value: 8, isUnsigned: true)
!145 = !DIEnumerator(name: "COMEDI_SUBD_CALIB", value: 9, isUnsigned: true)
!146 = !DIEnumerator(name: "COMEDI_SUBD_PROC", value: 10, isUnsigned: true)
!147 = !DIEnumerator(name: "COMEDI_SUBD_SERIAL", value: 11, isUnsigned: true)
!148 = !DIEnumerator(name: "COMEDI_SUBD_PWM", value: 12, isUnsigned: true)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !150, line: 305, baseType: !7, size: 32, elements: !151)
!150 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!151 = !{!152, !153, !154, !155}
!152 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!153 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!154 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!155 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "comedi_cb", file: !157, line: 383, baseType: !7, size: 32, elements: !158)
!157 = !DIFile(filename: "drivers/staging/comedi/drivers/../comedidev.h", directory: "/home/lizy2001/genbc/linux")
!158 = !{!159, !160, !161, !162, !163, !164, !165, !166}
!159 = !DIEnumerator(name: "COMEDI_CB_EOS", value: 1, isUnsigned: true)
!160 = !DIEnumerator(name: "COMEDI_CB_EOA", value: 2, isUnsigned: true)
!161 = !DIEnumerator(name: "COMEDI_CB_BLOCK", value: 4, isUnsigned: true)
!162 = !DIEnumerator(name: "COMEDI_CB_EOBUF", value: 8, isUnsigned: true)
!163 = !DIEnumerator(name: "COMEDI_CB_ERROR", value: 16, isUnsigned: true)
!164 = !DIEnumerator(name: "COMEDI_CB_OVERFLOW", value: 32, isUnsigned: true)
!165 = !DIEnumerator(name: "COMEDI_CB_ERROR_MASK", value: 48, isUnsigned: true)
!166 = !DIEnumerator(name: "COMEDI_CB_CANCEL_MASK", value: 50, isUnsigned: true)
!167 = !{!168, !169, !171}
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !170, line: 148, baseType: !7)
!170 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !173, line: 19, baseType: !174)
!173 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !175, line: 24, baseType: !176)
!175 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!176 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!177 = !{!0, !178, !185, !192, !197, !202, !207, !212, !4025, !4028, !4030, !4182}
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(name: "__exitcall_usbduxfast_driver_exit", scope: !2, file: !3, line: 1034, type: !180, isLocal: true, isDefinition: true)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !181, line: 117, baseType: !182)
!181 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{null}
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author241", scope: !2, file: !3, line: 1036, type: !187, isLocal: true, isDefinition: true, align: 8)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 384, elements: !190)
!188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!189 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!190 = !{!191}
!191 = !DISubrange(count: 48)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description242", scope: !2, file: !3, line: 1037, type: !194, isLocal: true, isDefinition: true, align: 8)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 432, elements: !195)
!195 = !{!196}
!196 = !DISubrange(count: 54)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file243", scope: !2, file: !3, line: 1038, type: !199, isLocal: true, isDefinition: true, align: 8)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 464, elements: !200)
!200 = !{!201}
!201 = !DISubrange(count: 58)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license244", scope: !2, file: !3, line: 1038, type: !204, isLocal: true, isDefinition: true, align: 8)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 184, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 23)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_firmware245", scope: !2, file: !3, line: 1039, type: !209, isLocal: true, isDefinition: true, align: 8)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 352, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 44)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(name: "usbduxfast_driver", scope: !2, file: !3, line: 1007, type: !214, isLocal: true, isDefinition: true)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_driver", file: !157, line: 437, size: 576, elements: !215)
!215 = !{!216, !218, !220, !224, !4015, !4016, !4020, !4021, !4024}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !214, file: !157, line: 439, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !214, file: !157, line: 441, baseType: !219, size: 64, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !214, file: !157, line: 442, baseType: !221, size: 64, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !223, line: 76, flags: DIFlagFwdDecl)
!223 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!224 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !214, file: !157, line: 443, baseType: !225, size: 64, offset: 192)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{!228, !229, !4008}
!228 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_device", file: !157, line: 541, size: 1920, elements: !231)
!231 = !{!232, !233, !234, !237, !238, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3996, !4000, !4004}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !230, file: !157, line: 542, baseType: !228, size: 32)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !230, file: !157, line: 543, baseType: !217, size: 64, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "pacer", scope: !230, file: !157, line: 544, baseType: !235, size: 64, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_8254", file: !157, line: 544, flags: DIFlagFwdDecl)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !230, file: !157, line: 545, baseType: !168, size: 64, offset: 192)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !230, file: !157, line: 547, baseType: !239, size: 64, offset: 256)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !241)
!241 = !{!242, !3393, !3394, !3397, !3398, !3449, !3540, !3541, !3542, !3543, !3544, !3553, !3658, !3671, !3674, !3675, !3679, !3681, !3682, !3683, !3687, !3693, !3694, !3697, !3701, !3791, !3792, !3793, !3794, !3795, !3827, !3828, !3829, !3832, !3835, !3836, !3837, !3838}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !240, file: !73, line: 462, baseType: !243, size: 512)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !244, line: 64, size: 512, elements: !245)
!244 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!245 = !{!246, !247, !253, !255, !315, !3244, !3383, !3388, !3389, !3390, !3391, !3392}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !243, file: !244, line: 65, baseType: !219, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !243, file: !244, line: 66, baseType: !248, size: 128, offset: 64)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !170, line: 178, size: 128, elements: !249)
!249 = !{!250, !252}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !248, file: !170, line: 179, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !248, file: !170, line: 179, baseType: !251, size: 64, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !243, file: !244, line: 67, baseType: !254, size: 64, offset: 192)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !243, file: !244, line: 68, baseType: !256, size: 64, offset: 256)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !244, line: 192, size: 704, elements: !258)
!258 = !{!259, !260, !276, !277}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !257, file: !244, line: 193, baseType: !248, size: 128)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !257, file: !244, line: 194, baseType: !261, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !262, line: 83, baseType: !263)
!262 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !262, line: 71, elements: !264)
!264 = !{!265}
!265 = !DIDerivedType(tag: DW_TAG_member, scope: !263, file: !262, line: 72, baseType: !266)
!266 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !263, file: !262, line: 72, elements: !267)
!267 = !{!268}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !266, file: !262, line: 73, baseType: !269)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !262, line: 20, elements: !270)
!270 = !{!271}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !269, file: !262, line: 21, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !273, line: 25, baseType: !274)
!273 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !273, line: 25, elements: !275)
!275 = !{}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !257, file: !244, line: 195, baseType: !243, size: 512, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !257, file: !244, line: 196, baseType: !278, size: 64, offset: 640)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !280)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !244, line: 156, size: 192, elements: !281)
!281 = !{!282, !287, !292}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !280, file: !244, line: 157, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{!228, !256, !254}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !280, file: !244, line: 158, baseType: !288, size: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{!219, !256, !254}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !280, file: !244, line: 159, baseType: !293, size: 64, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!228, !256, !254, !297}
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !244, line: 148, size: 20736, elements: !299)
!299 = !{!300, !305, !309, !310, !314}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !298, file: !244, line: 149, baseType: !301, size: 192)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 192, elements: !303)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!303 = !{!304}
!304 = !DISubrange(count: 3)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !298, file: !244, line: 150, baseType: !306, size: 4096, offset: 192)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 4096, elements: !307)
!307 = !{!308}
!308 = !DISubrange(count: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !298, file: !244, line: 151, baseType: !228, size: 32, offset: 4288)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !298, file: !244, line: 152, baseType: !311, size: 16384, offset: 4320)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 16384, elements: !312)
!312 = !{!313}
!313 = !DISubrange(count: 2048)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !298, file: !244, line: 153, baseType: !228, size: 32, offset: 20704)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !243, file: !244, line: 69, baseType: !316, size: 64, offset: 320)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !244, line: 138, size: 448, elements: !318)
!318 = !{!319, !323, !352, !354, !3206, !3234, !3238}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !317, file: !244, line: 139, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !254}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !317, file: !244, line: 140, baseType: !324, size: 64, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !326)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !327, line: 230, size: 128, elements: !328)
!327 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!328 = !{!329, !344}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !326, file: !327, line: 231, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{!333, !254, !338, !302}
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !170, line: 60, baseType: !334)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !335, line: 73, baseType: !336)
!335 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !335, line: 15, baseType: !337)
!337 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !327, line: 30, size: 128, elements: !340)
!340 = !{!341, !342}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !339, file: !327, line: 31, baseType: !219, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !339, file: !327, line: 32, baseType: !343, size: 16, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !170, line: 19, baseType: !176)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !326, file: !327, line: 232, baseType: !345, size: 64, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{!333, !254, !338, !219, !348}
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !170, line: 55, baseType: !349)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !335, line: 72, baseType: !350)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !335, line: 16, baseType: !351)
!351 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !317, file: !244, line: 141, baseType: !353, size: 64, offset: 128)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !317, file: !244, line: 142, baseType: !355, size: 64, offset: 192)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !358)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !327, line: 84, size: 320, elements: !359)
!359 = !{!360, !361, !365, !3203, !3204}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !358, file: !327, line: 85, baseType: !219, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !358, file: !327, line: 86, baseType: !362, size: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DISubroutineType(types: !364)
!364 = !{!343, !254, !338, !228}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !358, file: !327, line: 88, baseType: !366, size: 64, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DISubroutineType(types: !368)
!368 = !{!343, !254, !369, !228}
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !327, line: 168, size: 448, elements: !371)
!371 = !{!372, !373, !374, !375, !3198, !3199}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !370, file: !327, line: 169, baseType: !339, size: 128)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !370, file: !327, line: 170, baseType: !348, size: 64, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !370, file: !327, line: 171, baseType: !168, size: 64, offset: 192)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !370, file: !327, line: 172, baseType: !376, size: 64, offset: 256)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{!333, !379, !254, !369, !302, !556, !348}
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !381)
!381 = !{!382, !400, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3181, !3182, !3191, !3192, !3193, !3194, !3195, !3196, !3197}
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
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !170, line: 216, size: 128, align: 64, elements: !393)
!393 = !{!394, !396}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !392, file: !170, line: 217, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !392, file: !170, line: 218, baseType: !397, size: 64, offset: 64)
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
!411 = !{!412, !413, !423, !431, !432, !453, !3131, !3133, !3145, !3146, !3147, !3148, !3149, !3155, !3156, !3157}
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
!434 = !{!435, !449}
!435 = !DIDerivedType(tag: DW_TAG_member, scope: !433, file: !407, line: 48, baseType: !436, size: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !433, file: !407, line: 48, size: 64, elements: !437)
!437 = !{!438, !445}
!438 = !DIDerivedType(tag: DW_TAG_member, scope: !436, file: !407, line: 49, baseType: !439, size: 64)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !436, file: !407, line: 49, size: 64, elements: !440)
!440 = !{!441, !444}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !439, file: !407, line: 50, baseType: !442, size: 32)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !173, line: 21, baseType: !443)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !175, line: 27, baseType: !7)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !439, file: !407, line: 50, baseType: !442, size: 32, offset: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !436, file: !407, line: 52, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !173, line: 23, baseType: !447)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !175, line: 31, baseType: !448)
!448 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !433, file: !407, line: 54, baseType: !450, size: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !452)
!452 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !410, file: !407, line: 96, baseType: !454, size: 64, offset: 384)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !456)
!456 = !{!457, !458, !459, !467, !474, !475, !623, !2842, !2843, !2844, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !3107, !3115, !3116, !3117, !3127, !3128, !3129, !3130}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !455, file: !44, line: 611, baseType: !343, size: 16)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !455, file: !44, line: 612, baseType: !176, size: 16, offset: 16)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !455, file: !44, line: 613, baseType: !460, size: 32, offset: 32)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !461, line: 23, baseType: !462)
!461 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !461, line: 21, size: 32, elements: !463)
!463 = !{!464}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !462, file: !461, line: 22, baseType: !465, size: 32)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !170, line: 32, baseType: !466)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !335, line: 49, baseType: !7)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !455, file: !44, line: 614, baseType: !468, size: 32, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !461, line: 28, baseType: !469)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !461, line: 26, size: 32, elements: !470)
!470 = !{!471}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !469, file: !461, line: 27, baseType: !472, size: 32)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !170, line: 33, baseType: !473)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !335, line: 50, baseType: !7)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !455, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !455, file: !44, line: 622, baseType: !476, size: 64, offset: 128)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !478)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !479)
!479 = !{!480, !484, !497, !501, !507, !511, !517, !521, !525, !529, !533, !534, !540, !544, !570, !599, !603, !609, !614, !618, !619}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !478, file: !44, line: 1865, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!409, !454, !409, !7}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !478, file: !44, line: 1866, baseType: !485, size: 64, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!219, !409, !454, !488}
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !490, line: 10, size: 128, elements: !491)
!490 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!491 = !{!492, !496}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !489, file: !490, line: 11, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{null, !168}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !489, file: !490, line: 12, baseType: !168, size: 64, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !478, file: !44, line: 1867, baseType: !498, size: 64, offset: 128)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!228, !454, !228}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !478, file: !44, line: 1868, baseType: !502, size: 64, offset: 192)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{!505, !454, !228}
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !478, file: !44, line: 1870, baseType: !508, size: 64, offset: 256)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!228, !409, !302, !228}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !478, file: !44, line: 1872, baseType: !512, size: 64, offset: 320)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!228, !454, !409, !343, !515}
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !170, line: 30, baseType: !516)
!516 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !478, file: !44, line: 1873, baseType: !518, size: 64, offset: 384)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!228, !409, !454, !409}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !478, file: !44, line: 1874, baseType: !522, size: 64, offset: 448)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{!228, !454, !409}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !478, file: !44, line: 1875, baseType: !526, size: 64, offset: 512)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DISubroutineType(types: !528)
!528 = !{!228, !454, !409, !219}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !478, file: !44, line: 1876, baseType: !530, size: 64, offset: 576)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DISubroutineType(types: !532)
!532 = !{!228, !454, !409, !343}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !478, file: !44, line: 1877, baseType: !522, size: 64, offset: 640)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !478, file: !44, line: 1878, baseType: !535, size: 64, offset: 704)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!228, !454, !409, !343, !538}
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !170, line: 16, baseType: !539)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !170, line: 13, baseType: !442)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !478, file: !44, line: 1879, baseType: !541, size: 64, offset: 768)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!228, !454, !409, !454, !409, !7}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !478, file: !44, line: 1881, baseType: !545, size: 64, offset: 832)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!228, !409, !548}
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !550)
!550 = !{!551, !552, !553, !554, !555, !559, !567, !568, !569}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !549, file: !44, line: 220, baseType: !7, size: 32)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !549, file: !44, line: 221, baseType: !343, size: 16, offset: 32)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !549, file: !44, line: 222, baseType: !460, size: 32, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !549, file: !44, line: 223, baseType: !468, size: 32, offset: 96)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !549, file: !44, line: 224, baseType: !556, size: 64, offset: 128)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !170, line: 46, baseType: !557)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !335, line: 88, baseType: !558)
!558 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !549, file: !44, line: 225, baseType: !560, size: 128, offset: 192)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !561, line: 13, size: 128, elements: !562)
!561 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!562 = !{!563, !566}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !560, file: !561, line: 14, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !561, line: 8, baseType: !565)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !175, line: 30, baseType: !558)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !560, file: !561, line: 15, baseType: !337, size: 64, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !549, file: !44, line: 226, baseType: !560, size: 128, offset: 320)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !549, file: !44, line: 227, baseType: !560, size: 128, offset: 448)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !549, file: !44, line: 234, baseType: !379, size: 64, offset: 576)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !478, file: !44, line: 1882, baseType: !571, size: 64, offset: 896)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!228, !574, !576, !442, !7}
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !401)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !578, line: 22, size: 1152, elements: !579)
!578 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!579 = !{!580, !581, !582, !583, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !577, file: !578, line: 23, baseType: !442, size: 32)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !577, file: !578, line: 24, baseType: !343, size: 16, offset: 32)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !577, file: !578, line: 25, baseType: !7, size: 32, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !577, file: !578, line: 26, baseType: !584, size: 32, offset: 96)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !170, line: 104, baseType: !442)
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
!602 = !{!333, !409, !302, !348}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !478, file: !44, line: 1884, baseType: !604, size: 64, offset: 1024)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DISubroutineType(types: !606)
!606 = !{!228, !454, !607, !446, !446}
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !478, file: !44, line: 1886, baseType: !610, size: 64, offset: 1088)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DISubroutineType(types: !612)
!612 = !{!228, !454, !613, !228}
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !478, file: !44, line: 1887, baseType: !615, size: 64, offset: 1152)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!228, !454, !409, !379, !7, !343}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !478, file: !44, line: 1890, baseType: !530, size: 64, offset: 1216)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !478, file: !44, line: 1891, baseType: !620, size: 64, offset: 1280)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!228, !454, !505, !228}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !455, file: !44, line: 623, baseType: !624, size: 64, offset: 192)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !626)
!626 = !{!627, !628, !629, !630, !631, !632, !679, !2449, !2531, !2614, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2630, !2634, !2635, !2638, !2639, !2642, !2643, !2644, !2685, !2712, !2713, !2714, !2715, !2716, !2717, !2720, !2722, !2729, !2730, !2732, !2733, !2734, !2793, !2794, !2809, !2810, !2811, !2812, !2813, !2816, !2817, !2818, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !625, file: !44, line: 1417, baseType: !248, size: 128)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !625, file: !44, line: 1418, baseType: !538, size: 32, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !625, file: !44, line: 1419, baseType: !452, size: 8, offset: 160)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !625, file: !44, line: 1420, baseType: !351, size: 64, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !625, file: !44, line: 1421, baseType: !556, size: 64, offset: 256)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !625, file: !44, line: 1422, baseType: !633, size: 64, offset: 320)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !635)
!635 = !{!636, !637, !638, !645, !649, !653, !657, !658, !659, !669, !672, !673, !674, !676, !677, !678}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !634, file: !44, line: 2229, baseType: !219, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !634, file: !44, line: 2230, baseType: !228, size: 32, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !634, file: !44, line: 2238, baseType: !639, size: 64, offset: 128)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!228, !642}
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
!652 = !{!409, !633, !228, !219, !168}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !634, file: !44, line: 2242, baseType: !654, size: 64, offset: 320)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{null, !624}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !634, file: !44, line: 2243, baseType: !221, size: 64, offset: 384)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !634, file: !44, line: 2244, baseType: !633, size: 64, offset: 448)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !634, file: !44, line: 2245, baseType: !660, size: 64, offset: 512)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !170, line: 182, size: 64, elements: !661)
!661 = !{!662}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !660, file: !170, line: 183, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !170, line: 186, size: 128, elements: !665)
!665 = !{!666, !667}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !664, file: !170, line: 187, baseType: !663, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !664, file: !170, line: 187, baseType: !668, size: 64, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !634, file: !44, line: 2247, baseType: !670, offset: 576)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !671, line: 187, elements: !275)
!671 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!672 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !634, file: !44, line: 2248, baseType: !670, offset: 576)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !634, file: !44, line: 2249, baseType: !670, offset: 576)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !634, file: !44, line: 2250, baseType: !675, offset: 576)
!675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !670, elements: !303)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !634, file: !44, line: 2252, baseType: !670, offset: 576)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !634, file: !44, line: 2253, baseType: !670, offset: 576)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !634, file: !44, line: 2254, baseType: !670, offset: 576)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !625, file: !44, line: 1423, baseType: !680, size: 64, offset: 384)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !682)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !683)
!683 = !{!684, !688, !692, !693, !697, !703, !707, !708, !709, !713, !717, !718, !719, !720, !726, !731, !732, !739, !740, !741, !742, !2433, !2448}
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
!696 = !{null, !454, !228}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !682, file: !44, line: 1941, baseType: !698, size: 64, offset: 256)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{!228, !454, !701}
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !44, line: 289, flags: DIFlagFwdDecl)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !682, file: !44, line: 1942, baseType: !704, size: 64, offset: 320)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{!228, !454}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !682, file: !44, line: 1943, baseType: !689, size: 64, offset: 384)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !682, file: !44, line: 1944, baseType: !654, size: 64, offset: 448)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !682, file: !44, line: 1945, baseType: !710, size: 64, offset: 512)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{!228, !624, !228}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !682, file: !44, line: 1946, baseType: !714, size: 64, offset: 576)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!228, !624}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !682, file: !44, line: 1947, baseType: !714, size: 64, offset: 640)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !682, file: !44, line: 1948, baseType: !714, size: 64, offset: 704)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !682, file: !44, line: 1949, baseType: !714, size: 64, offset: 768)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !682, file: !44, line: 1950, baseType: !721, size: 64, offset: 832)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{!228, !409, !724}
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !682, file: !44, line: 1951, baseType: !727, size: 64, offset: 896)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DISubroutineType(types: !729)
!729 = !{!228, !624, !730, !302}
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !682, file: !44, line: 1952, baseType: !654, size: 64, offset: 960)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !682, file: !44, line: 1954, baseType: !733, size: 64, offset: 1024)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!228, !736, !409}
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !738, line: 539, flags: DIFlagFwdDecl)
!738 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!739 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !682, file: !44, line: 1955, baseType: !733, size: 64, offset: 1088)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !682, file: !44, line: 1956, baseType: !733, size: 64, offset: 1152)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !682, file: !44, line: 1957, baseType: !733, size: 64, offset: 1216)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !682, file: !44, line: 1963, baseType: !743, size: 64, offset: 1280)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!228, !624, !746, !169}
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !748, line: 68, size: 512, align: 128, elements: !749)
!748 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!749 = !{!750, !751, !2425, !2432}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !747, file: !748, line: 69, baseType: !351, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, scope: !747, file: !748, line: 77, baseType: !752, size: 320, offset: 64)
!752 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !747, file: !748, line: 77, size: 320, elements: !753)
!753 = !{!754, !939, !944, !972, !980, !986, !2356, !2424}
!754 = !DIDerivedType(tag: DW_TAG_member, scope: !752, file: !748, line: 78, baseType: !755, size: 320)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !752, file: !748, line: 78, size: 320, elements: !756)
!756 = !{!757, !758, !937, !938}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !755, file: !748, line: 84, baseType: !248, size: 128)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !755, file: !748, line: 86, baseType: !759, size: 64, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !761)
!761 = !{!762, !763, !770, !771, !776, !791, !807, !808, !809, !810, !930, !931, !934, !935, !936}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !760, file: !44, line: 452, baseType: !454, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !760, file: !44, line: 453, baseType: !764, size: 128, offset: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !765, line: 292, size: 128, elements: !766)
!765 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!766 = !{!767, !768, !769}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !764, file: !765, line: 293, baseType: !261)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !764, file: !765, line: 295, baseType: !169, size: 32)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !764, file: !765, line: 296, baseType: !168, size: 64, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !760, file: !44, line: 454, baseType: !169, size: 32, offset: 192)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !760, file: !44, line: 455, baseType: !772, size: 32, offset: 224)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !170, line: 168, baseType: !773)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !170, line: 166, size: 32, elements: !774)
!774 = !{!775}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !773, file: !170, line: 167, baseType: !228, size: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !760, file: !44, line: 460, baseType: !777, size: 128, offset: 256)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !778, line: 125, size: 128, elements: !779)
!778 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!779 = !{!780, !790}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !777, file: !778, line: 126, baseType: !781, size: 64)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !778, line: 31, size: 64, elements: !782)
!782 = !{!783}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !781, file: !778, line: 32, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !778, line: 24, size: 192, align: 64, elements: !786)
!786 = !{!787, !788, !789}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !785, file: !778, line: 25, baseType: !351, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !785, file: !778, line: 26, baseType: !784, size: 64, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !785, file: !778, line: 27, baseType: !784, size: 64, offset: 128)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !777, file: !778, line: 127, baseType: !784, size: 64, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !760, file: !44, line: 461, baseType: !792, size: 256, offset: 384)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !793, line: 35, size: 256, elements: !794)
!793 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!794 = !{!795, !803, !804, !806}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !792, file: !793, line: 36, baseType: !796, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !797, line: 13, baseType: !798)
!797 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !170, line: 175, baseType: !799)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !170, line: 173, size: 64, elements: !800)
!800 = !{!801}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !799, file: !170, line: 174, baseType: !802, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !173, line: 22, baseType: !565)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !792, file: !793, line: 42, baseType: !796, size: 64, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !792, file: !793, line: 46, baseType: !805, offset: 128)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !262, line: 29, baseType: !269)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !792, file: !793, line: 47, baseType: !248, size: 128, offset: 128)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !760, file: !44, line: 462, baseType: !351, size: 64, offset: 640)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !760, file: !44, line: 463, baseType: !351, size: 64, offset: 704)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !760, file: !44, line: 464, baseType: !351, size: 64, offset: 768)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !760, file: !44, line: 465, baseType: !811, size: 64, offset: 832)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !813)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !814)
!814 = !{!815, !819, !823, !827, !831, !835, !841, !847, !851, !856, !860, !864, !868, !894, !898, !904, !905, !906, !910, !915, !919, !926}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !813, file: !44, line: 368, baseType: !816, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{!228, !746, !701}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !813, file: !44, line: 369, baseType: !820, size: 64, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{!228, !379, !746}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !813, file: !44, line: 372, baseType: !824, size: 64, offset: 128)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{!228, !759, !701}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !813, file: !44, line: 375, baseType: !828, size: 64, offset: 192)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{!228, !746}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !813, file: !44, line: 381, baseType: !832, size: 64, offset: 256)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DISubroutineType(types: !834)
!834 = !{!228, !379, !759, !251, !7}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !813, file: !44, line: 383, baseType: !836, size: 64, offset: 320)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{null, !839}
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !813, file: !44, line: 385, baseType: !842, size: 64, offset: 384)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{!228, !379, !759, !556, !7, !7, !845, !846}
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !813, file: !44, line: 388, baseType: !848, size: 64, offset: 448)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DISubroutineType(types: !850)
!850 = !{!228, !379, !759, !556, !7, !7, !746, !168}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !813, file: !44, line: 393, baseType: !852, size: 64, offset: 512)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{!855, !759, !855}
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !170, line: 125, baseType: !446)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !813, file: !44, line: 394, baseType: !857, size: 64, offset: 576)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{null, !746, !7, !7}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !813, file: !44, line: 395, baseType: !861, size: 64, offset: 640)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{!228, !746, !169}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !813, file: !44, line: 396, baseType: !865, size: 64, offset: 704)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{null, !746}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !813, file: !44, line: 397, baseType: !869, size: 64, offset: 768)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{!333, !872, !892}
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !874)
!874 = !{!875, !876, !877, !881, !882, !883, !884, !885}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !873, file: !44, line: 321, baseType: !379, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !873, file: !44, line: 326, baseType: !556, size: 64, offset: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !873, file: !44, line: 327, baseType: !878, size: 64, offset: 128)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{null, !872, !337, !337}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !873, file: !44, line: 328, baseType: !168, size: 64, offset: 192)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !873, file: !44, line: 329, baseType: !228, size: 32, offset: 256)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !873, file: !44, line: 330, baseType: !172, size: 16, offset: 288)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !873, file: !44, line: 331, baseType: !172, size: 16, offset: 304)
!885 = !DIDerivedType(tag: DW_TAG_member, scope: !873, file: !44, line: 332, baseType: !886, size: 64, offset: 320)
!886 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !873, file: !44, line: 332, size: 64, elements: !887)
!887 = !{!888, !889}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !886, file: !44, line: 333, baseType: !7, size: 32)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !886, file: !44, line: 334, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !813, file: !44, line: 402, baseType: !895, size: 64, offset: 832)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DISubroutineType(types: !897)
!897 = !{!228, !759, !746, !746, !5}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !813, file: !44, line: 404, baseType: !899, size: 64, offset: 896)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DISubroutineType(types: !901)
!901 = !{!515, !746, !902}
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !903, line: 305, baseType: !7)
!903 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!904 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !813, file: !44, line: 405, baseType: !865, size: 64, offset: 960)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !813, file: !44, line: 406, baseType: !828, size: 64, offset: 1024)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !813, file: !44, line: 407, baseType: !907, size: 64, offset: 1088)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DISubroutineType(types: !909)
!909 = !{!228, !746, !351, !351}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !813, file: !44, line: 409, baseType: !911, size: 64, offset: 1152)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DISubroutineType(types: !913)
!913 = !{null, !746, !914, !914}
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !813, file: !44, line: 410, baseType: !916, size: 64, offset: 1216)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DISubroutineType(types: !918)
!918 = !{!228, !759, !746}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !813, file: !44, line: 413, baseType: !920, size: 64, offset: 1280)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DISubroutineType(types: !922)
!922 = !{!228, !923, !379, !925}
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !813, file: !44, line: 415, baseType: !927, size: 64, offset: 1344)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DISubroutineType(types: !929)
!929 = !{null, !379}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !760, file: !44, line: 466, baseType: !351, size: 64, offset: 896)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !760, file: !44, line: 467, baseType: !932, size: 32, offset: 960)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !933, line: 8, baseType: !442)
!933 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!934 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !760, file: !44, line: 468, baseType: !261, offset: 992)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !760, file: !44, line: 469, baseType: !248, size: 128, offset: 1024)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !760, file: !44, line: 470, baseType: !168, size: 64, offset: 1152)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !755, file: !748, line: 87, baseType: !351, size: 64, offset: 192)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !755, file: !748, line: 94, baseType: !351, size: 64, offset: 256)
!939 = !DIDerivedType(tag: DW_TAG_member, scope: !752, file: !748, line: 96, baseType: !940, size: 64)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !752, file: !748, line: 96, size: 64, elements: !941)
!941 = !{!942}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !940, file: !748, line: 101, baseType: !943, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !170, line: 143, baseType: !446)
!944 = !DIDerivedType(tag: DW_TAG_member, scope: !752, file: !748, line: 103, baseType: !945, size: 320)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !752, file: !748, line: 103, size: 320, elements: !946)
!946 = !{!947, !957, !960, !961}
!947 = !DIDerivedType(tag: DW_TAG_member, scope: !945, file: !748, line: 104, baseType: !948, size: 128)
!948 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !945, file: !748, line: 104, size: 128, elements: !949)
!949 = !{!950, !951}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !948, file: !748, line: 105, baseType: !248, size: 128)
!951 = !DIDerivedType(tag: DW_TAG_member, scope: !948, file: !748, line: 106, baseType: !952, size: 128)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !948, file: !748, line: 106, size: 128, elements: !953)
!953 = !{!954, !955, !956}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !952, file: !748, line: 107, baseType: !746, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !952, file: !748, line: 109, baseType: !228, size: 32, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !952, file: !748, line: 110, baseType: !228, size: 32, offset: 96)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !945, file: !748, line: 117, baseType: !958, size: 64, offset: 128)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !748, line: 117, flags: DIFlagFwdDecl)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !945, file: !748, line: 119, baseType: !168, size: 64, offset: 192)
!961 = !DIDerivedType(tag: DW_TAG_member, scope: !945, file: !748, line: 120, baseType: !962, size: 64, offset: 256)
!962 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !945, file: !748, line: 120, size: 64, elements: !963)
!963 = !{!964, !965, !966}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !962, file: !748, line: 121, baseType: !168, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !962, file: !748, line: 122, baseType: !351, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, scope: !962, file: !748, line: 123, baseType: !967, size: 32)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !962, file: !748, line: 123, size: 32, elements: !968)
!968 = !{!969, !970, !971}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !967, file: !748, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !967, file: !748, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !967, file: !748, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!972 = !DIDerivedType(tag: DW_TAG_member, scope: !752, file: !748, line: 130, baseType: !973, size: 192)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !752, file: !748, line: 130, size: 192, elements: !974)
!974 = !{!975, !976, !977, !978, !979}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !973, file: !748, line: 131, baseType: !351, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !973, file: !748, line: 134, baseType: !452, size: 8, offset: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !973, file: !748, line: 135, baseType: !452, size: 8, offset: 72)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !973, file: !748, line: 136, baseType: !772, size: 32, offset: 96)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !973, file: !748, line: 137, baseType: !7, size: 32, offset: 128)
!980 = !DIDerivedType(tag: DW_TAG_member, scope: !752, file: !748, line: 139, baseType: !981, size: 256)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !752, file: !748, line: 139, size: 256, elements: !982)
!982 = !{!983, !984, !985}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !981, file: !748, line: 140, baseType: !351, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !981, file: !748, line: 141, baseType: !772, size: 32, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !981, file: !748, line: 143, baseType: !248, size: 128, offset: 128)
!986 = !DIDerivedType(tag: DW_TAG_member, scope: !752, file: !748, line: 145, baseType: !987, size: 256)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !752, file: !748, line: 145, size: 256, elements: !988)
!988 = !{!989, !990, !992, !993, !2355}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !987, file: !748, line: 146, baseType: !351, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !987, file: !748, line: 147, baseType: !991, size: 64, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !738, line: 509, baseType: !746)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !987, file: !748, line: 148, baseType: !351, size: 64, offset: 128)
!993 = !DIDerivedType(tag: DW_TAG_member, scope: !987, file: !748, line: 149, baseType: !994, size: 64, offset: 192)
!994 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !987, file: !748, line: 149, size: 64, elements: !995)
!995 = !{!996, !2354}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !994, file: !748, line: 150, baseType: !997, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !748, line: 388, size: 7296, elements: !999)
!999 = !{!1000, !2350}
!1000 = !DIDerivedType(tag: DW_TAG_member, scope: !998, file: !748, line: 389, baseType: !1001, size: 7296)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !998, file: !748, line: 389, size: 7296, elements: !1002)
!1002 = !{!1003, !1121, !1122, !1123, !1127, !1128, !1129, !1130, !1131, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1170, !1178, !1181, !1227, !1228, !2334, !2335, !2338, !2339, !2340, !2343, !2344, !2345, !2348, !2349}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1001, file: !748, line: 390, baseType: !1004, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !748, line: 305, size: 1472, elements: !1006)
!1006 = !{!1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1021, !1022, !1027, !1028, !1031, !1115, !1116, !1117, !1118, !1119}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1005, file: !748, line: 308, baseType: !351, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1005, file: !748, line: 309, baseType: !351, size: 64, offset: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1005, file: !748, line: 313, baseType: !1004, size: 64, offset: 128)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1005, file: !748, line: 313, baseType: !1004, size: 64, offset: 192)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1005, file: !748, line: 315, baseType: !785, size: 192, align: 64, offset: 256)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1005, file: !748, line: 323, baseType: !351, size: 64, offset: 448)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1005, file: !748, line: 327, baseType: !997, size: 64, offset: 512)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1005, file: !748, line: 333, baseType: !1015, size: 64, offset: 576)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !738, line: 284, baseType: !1016)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !738, line: 284, size: 64, elements: !1017)
!1017 = !{!1018}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1016, file: !738, line: 284, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1020, line: 19, baseType: !351)
!1020 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1005, file: !748, line: 334, baseType: !351, size: 64, offset: 640)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1005, file: !748, line: 343, baseType: !1023, size: 256, offset: 704)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1005, file: !748, line: 340, size: 256, elements: !1024)
!1024 = !{!1025, !1026}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1023, file: !748, line: 341, baseType: !785, size: 192, align: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1023, file: !748, line: 342, baseType: !351, size: 64, offset: 192)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1005, file: !748, line: 351, baseType: !248, size: 128, offset: 960)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1005, file: !748, line: 353, baseType: !1029, size: 64, offset: 1088)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !748, line: 353, flags: DIFlagFwdDecl)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1005, file: !748, line: 356, baseType: !1032, size: 64, offset: 1152)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1034)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1035)
!1035 = !{!1036, !1040, !1041, !1045, !1049, !1089, !1093, !1097, !1101, !1102, !1103, !1107, !1111}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1034, file: !14, line: 558, baseType: !1037, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{null, !1004}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1034, file: !14, line: 559, baseType: !1037, size: 64, offset: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1034, file: !14, line: 560, baseType: !1042, size: 64, offset: 128)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!228, !1004, !351}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1034, file: !14, line: 561, baseType: !1046, size: 64, offset: 192)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!228, !1004}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1034, file: !14, line: 562, baseType: !1050, size: 64, offset: 256)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!1053, !1054}
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !748, line: 682, baseType: !7)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1056)
!1056 = !{!1057, !1058, !1059, !1060, !1061, !1062, !1069, !1076, !1082, !1083, !1084, !1086, !1088}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1055, file: !14, line: 509, baseType: !1004, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1055, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1055, file: !14, line: 511, baseType: !169, size: 32, offset: 96)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1055, file: !14, line: 512, baseType: !351, size: 64, offset: 128)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1055, file: !14, line: 513, baseType: !351, size: 64, offset: 192)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1055, file: !14, line: 514, baseType: !1063, size: 64, offset: 256)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !738, line: 385, baseType: !1065)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !738, line: 385, size: 64, elements: !1066)
!1066 = !{!1067}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1065, file: !738, line: 385, baseType: !1068, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1020, line: 15, baseType: !351)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1055, file: !14, line: 516, baseType: !1070, size: 64, offset: 320)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !738, line: 359, baseType: !1072)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !738, line: 359, size: 64, elements: !1073)
!1073 = !{!1074}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1072, file: !738, line: 359, baseType: !1075, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1020, line: 16, baseType: !351)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1055, file: !14, line: 519, baseType: !1077, size: 64, offset: 384)
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1020, line: 21, baseType: !1078)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1020, line: 21, size: 64, elements: !1079)
!1079 = !{!1080}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1078, file: !1020, line: 21, baseType: !1081, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1020, line: 14, baseType: !351)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1055, file: !14, line: 521, baseType: !746, size: 64, offset: 448)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1055, file: !14, line: 522, baseType: !746, size: 64, offset: 512)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1055, file: !14, line: 528, baseType: !1085, size: 64, offset: 576)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1055, file: !14, line: 532, baseType: !1087, size: 64, offset: 640)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1055, file: !14, line: 536, baseType: !991, size: 64, offset: 704)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1034, file: !14, line: 563, baseType: !1090, size: 64, offset: 320)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!1053, !1054, !13}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1034, file: !14, line: 565, baseType: !1094, size: 64, offset: 384)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{null, !1054, !351, !351}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1034, file: !14, line: 567, baseType: !1098, size: 64, offset: 448)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!351, !1004}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1034, file: !14, line: 571, baseType: !1050, size: 64, offset: 512)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1034, file: !14, line: 574, baseType: !1050, size: 64, offset: 576)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1034, file: !14, line: 579, baseType: !1104, size: 64, offset: 640)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!228, !1004, !351, !168, !228, !228}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1034, file: !14, line: 585, baseType: !1108, size: 64, offset: 704)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!219, !1004}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1034, file: !14, line: 615, baseType: !1112, size: 64, offset: 768)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!746, !1004, !351}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1005, file: !748, line: 359, baseType: !351, size: 64, offset: 1216)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1005, file: !748, line: 361, baseType: !379, size: 64, offset: 1280)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1005, file: !748, line: 362, baseType: !168, size: 64, offset: 1344)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1005, file: !748, line: 365, baseType: !796, size: 64, offset: 1408)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1005, file: !748, line: 373, baseType: !1120, offset: 1472)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !748, line: 296, elements: !275)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1001, file: !748, line: 391, baseType: !781, size: 64, offset: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1001, file: !748, line: 392, baseType: !446, size: 64, offset: 128)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1001, file: !748, line: 394, baseType: !1124, size: 64, offset: 192)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!351, !379, !351, !351, !351, !351}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1001, file: !748, line: 398, baseType: !351, size: 64, offset: 256)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1001, file: !748, line: 399, baseType: !351, size: 64, offset: 320)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1001, file: !748, line: 405, baseType: !351, size: 64, offset: 384)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1001, file: !748, line: 406, baseType: !351, size: 64, offset: 448)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1001, file: !748, line: 407, baseType: !1132, size: 64, offset: 512)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !738, line: 286, baseType: !1134)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !738, line: 286, size: 64, elements: !1135)
!1135 = !{!1136}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1134, file: !738, line: 286, baseType: !1137, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1020, line: 18, baseType: !351)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1001, file: !748, line: 416, baseType: !772, size: 32, offset: 576)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1001, file: !748, line: 428, baseType: !772, size: 32, offset: 608)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1001, file: !748, line: 437, baseType: !772, size: 32, offset: 640)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1001, file: !748, line: 447, baseType: !772, size: 32, offset: 672)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1001, file: !748, line: 450, baseType: !796, size: 64, offset: 704)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1001, file: !748, line: 452, baseType: !228, size: 32, offset: 768)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1001, file: !748, line: 454, baseType: !261, offset: 800)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1001, file: !748, line: 457, baseType: !792, size: 256, offset: 832)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1001, file: !748, line: 459, baseType: !248, size: 128, offset: 1088)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1001, file: !748, line: 466, baseType: !351, size: 64, offset: 1216)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1001, file: !748, line: 467, baseType: !351, size: 64, offset: 1280)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1001, file: !748, line: 469, baseType: !351, size: 64, offset: 1344)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1001, file: !748, line: 470, baseType: !351, size: 64, offset: 1408)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1001, file: !748, line: 471, baseType: !798, size: 64, offset: 1472)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1001, file: !748, line: 472, baseType: !351, size: 64, offset: 1536)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1001, file: !748, line: 473, baseType: !351, size: 64, offset: 1600)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1001, file: !748, line: 474, baseType: !351, size: 64, offset: 1664)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1001, file: !748, line: 475, baseType: !351, size: 64, offset: 1728)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1001, file: !748, line: 477, baseType: !261, offset: 1792)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1001, file: !748, line: 478, baseType: !351, size: 64, offset: 1792)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1001, file: !748, line: 478, baseType: !351, size: 64, offset: 1856)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1001, file: !748, line: 478, baseType: !351, size: 64, offset: 1920)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1001, file: !748, line: 478, baseType: !351, size: 64, offset: 1984)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1001, file: !748, line: 479, baseType: !351, size: 64, offset: 2048)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1001, file: !748, line: 479, baseType: !351, size: 64, offset: 2112)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1001, file: !748, line: 479, baseType: !351, size: 64, offset: 2176)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1001, file: !748, line: 480, baseType: !351, size: 64, offset: 2240)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1001, file: !748, line: 480, baseType: !351, size: 64, offset: 2304)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1001, file: !748, line: 480, baseType: !351, size: 64, offset: 2368)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1001, file: !748, line: 480, baseType: !351, size: 64, offset: 2432)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1001, file: !748, line: 482, baseType: !1169, size: 2816, offset: 2496)
!1169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 2816, elements: !210)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1001, file: !748, line: 488, baseType: !1171, size: 256, offset: 5312)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1172, line: 60, size: 256, elements: !1173)
!1172 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1173 = !{!1174}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1171, file: !1172, line: 61, baseType: !1175, size: 256)
!1175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !796, size: 256, elements: !1176)
!1176 = !{!1177}
!1177 = !DISubrange(count: 4)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1001, file: !748, line: 490, baseType: !1179, size: 64, offset: 5568)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !748, line: 490, flags: DIFlagFwdDecl)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1001, file: !748, line: 493, baseType: !1182, size: 896, offset: 5632)
!1182 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1183, line: 53, baseType: !1184)
!1183 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1183, line: 13, size: 896, elements: !1185)
!1185 = !{!1186, !1187, !1188, !1189, !1192, !1193, !1200, !1201, !1221, !1222, !1223}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1184, file: !1183, line: 18, baseType: !446, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1184, file: !1183, line: 28, baseType: !798, size: 64, offset: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1184, file: !1183, line: 31, baseType: !792, size: 256, offset: 128)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1184, file: !1183, line: 32, baseType: !1190, size: 64, offset: 384)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1183, line: 32, flags: DIFlagFwdDecl)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1184, file: !1183, line: 37, baseType: !176, size: 16, offset: 448)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1184, file: !1183, line: 40, baseType: !1194, size: 192, offset: 512)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1195, line: 53, size: 192, elements: !1196)
!1195 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1196 = !{!1197, !1198, !1199}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1194, file: !1195, line: 54, baseType: !796, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1194, file: !1195, line: 55, baseType: !261, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1194, file: !1195, line: 59, baseType: !248, size: 128, offset: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1184, file: !1183, line: 41, baseType: !168, size: 64, offset: 704)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1184, file: !1183, line: 42, baseType: !1202, size: 64, offset: 768)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1204)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1205, line: 13, size: 896, elements: !1206)
!1205 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1206 = !{!1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1204, file: !1205, line: 14, baseType: !168, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1204, file: !1205, line: 15, baseType: !351, size: 64, offset: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1204, file: !1205, line: 17, baseType: !351, size: 64, offset: 128)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1204, file: !1205, line: 17, baseType: !351, size: 64, offset: 192)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1204, file: !1205, line: 19, baseType: !337, size: 64, offset: 256)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1204, file: !1205, line: 21, baseType: !337, size: 64, offset: 320)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1204, file: !1205, line: 22, baseType: !337, size: 64, offset: 384)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1204, file: !1205, line: 23, baseType: !337, size: 64, offset: 448)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1204, file: !1205, line: 24, baseType: !337, size: 64, offset: 512)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1204, file: !1205, line: 25, baseType: !337, size: 64, offset: 576)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1204, file: !1205, line: 26, baseType: !337, size: 64, offset: 640)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1204, file: !1205, line: 27, baseType: !337, size: 64, offset: 704)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1204, file: !1205, line: 28, baseType: !337, size: 64, offset: 768)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1204, file: !1205, line: 29, baseType: !337, size: 64, offset: 832)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1184, file: !1183, line: 44, baseType: !772, size: 32, offset: 832)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1184, file: !1183, line: 50, baseType: !172, size: 16, offset: 864)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1184, file: !1183, line: 51, baseType: !1224, size: 16, offset: 880)
!1224 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !173, line: 18, baseType: !1225)
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !175, line: 23, baseType: !1226)
!1226 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1001, file: !748, line: 495, baseType: !351, size: 64, offset: 6528)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1001, file: !748, line: 497, baseType: !1229, size: 64, offset: 6592)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !748, line: 381, size: 384, elements: !1231)
!1231 = !{!1232, !1233, !2333}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1230, file: !748, line: 382, baseType: !772, size: 32)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1230, file: !748, line: 383, baseType: !1234, size: 128, offset: 64)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !748, line: 376, size: 128, elements: !1235)
!1235 = !{!1236, !2331}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1234, file: !748, line: 377, baseType: !1237, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1239, line: 640, size: 48640, elements: !1240)
!1239 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1240 = !{!1241, !1247, !1249, !1250, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1267, !1285, !1296, !1381, !1382, !1383, !1394, !1395, !1397, !1398, !1399, !1400, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1479, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1517, !1519, !1520, !1521, !1533, !1534, !1535, !1536, !1537, !1538, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1562, !1567, !1751, !1752, !1753, !1754, !1758, !1761, !1764, !1767, !1770, !1774, !1875, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1919, !1920, !1921, !1922, !1923, !1928, !1929, !1930, !1933, !1934, !1937, !1940, !1943, !1946, !1989, !1992, !1993, !2072, !2073, !2076, !2077, !2080, !2081, !2082, !2086, !2087, !2088, !2101, !2102, !2103, !2113, !2118, !2121, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1238, file: !1239, line: 646, baseType: !1242, size: 128)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1243, line: 56, size: 128, elements: !1244)
!1243 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1244 = !{!1245, !1246}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1242, file: !1243, line: 57, baseType: !351, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1242, file: !1243, line: 58, baseType: !442, size: 32, offset: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1238, file: !1239, line: 649, baseType: !1248, size: 64, offset: 128)
!1248 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !337)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1238, file: !1239, line: 657, baseType: !168, size: 64, offset: 192)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1238, file: !1239, line: 658, baseType: !1251, size: 32, offset: 256)
!1251 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1252, line: 113, baseType: !1253)
!1252 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1252, line: 111, size: 32, elements: !1254)
!1254 = !{!1255}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1253, file: !1252, line: 112, baseType: !772, size: 32)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1238, file: !1239, line: 660, baseType: !7, size: 32, offset: 288)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1238, file: !1239, line: 661, baseType: !7, size: 32, offset: 320)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1238, file: !1239, line: 684, baseType: !228, size: 32, offset: 352)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1238, file: !1239, line: 686, baseType: !228, size: 32, offset: 384)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1238, file: !1239, line: 687, baseType: !228, size: 32, offset: 416)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1238, file: !1239, line: 688, baseType: !228, size: 32, offset: 448)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1238, file: !1239, line: 689, baseType: !7, size: 32, offset: 480)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1238, file: !1239, line: 691, baseType: !1264, size: 64, offset: 512)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1266)
!1266 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1239, line: 691, flags: DIFlagFwdDecl)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1238, file: !1239, line: 692, baseType: !1268, size: 832, offset: 576)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1239, line: 451, size: 832, elements: !1269)
!1269 = !{!1270, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1268, file: !1239, line: 453, baseType: !1271, size: 128)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1239, line: 325, size: 128, elements: !1272)
!1272 = !{!1273, !1274}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1271, file: !1239, line: 326, baseType: !351, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1271, file: !1239, line: 327, baseType: !442, size: 32, offset: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1268, file: !1239, line: 454, baseType: !785, size: 192, align: 64, offset: 128)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1268, file: !1239, line: 455, baseType: !248, size: 128, offset: 320)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1268, file: !1239, line: 456, baseType: !7, size: 32, offset: 448)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1268, file: !1239, line: 458, baseType: !446, size: 64, offset: 512)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1268, file: !1239, line: 459, baseType: !446, size: 64, offset: 576)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1268, file: !1239, line: 460, baseType: !446, size: 64, offset: 640)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1268, file: !1239, line: 461, baseType: !446, size: 64, offset: 704)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1268, file: !1239, line: 463, baseType: !446, size: 64, offset: 768)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1268, file: !1239, line: 465, baseType: !1284, offset: 832)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1239, line: 415, elements: !275)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1238, file: !1239, line: 693, baseType: !1286, size: 384, offset: 1408)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1239, line: 489, size: 384, elements: !1287)
!1287 = !{!1288, !1289, !1290, !1291, !1292, !1293, !1294}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1286, file: !1239, line: 490, baseType: !248, size: 128)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1286, file: !1239, line: 491, baseType: !351, size: 64, offset: 128)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1286, file: !1239, line: 492, baseType: !351, size: 64, offset: 192)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1286, file: !1239, line: 493, baseType: !7, size: 32, offset: 256)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1286, file: !1239, line: 494, baseType: !176, size: 16, offset: 288)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1286, file: !1239, line: 495, baseType: !176, size: 16, offset: 304)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1286, file: !1239, line: 497, baseType: !1295, size: 64, offset: 320)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1238, file: !1239, line: 697, baseType: !1297, size: 1792, offset: 1792)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1239, line: 507, size: 1792, elements: !1298)
!1298 = !{!1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1378, !1379}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1297, file: !1239, line: 508, baseType: !785, size: 192, align: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1297, file: !1239, line: 515, baseType: !446, size: 64, offset: 192)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1297, file: !1239, line: 516, baseType: !446, size: 64, offset: 256)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1297, file: !1239, line: 517, baseType: !446, size: 64, offset: 320)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1297, file: !1239, line: 518, baseType: !446, size: 64, offset: 384)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1297, file: !1239, line: 519, baseType: !446, size: 64, offset: 448)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1297, file: !1239, line: 526, baseType: !802, size: 64, offset: 512)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1297, file: !1239, line: 527, baseType: !446, size: 64, offset: 576)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1297, file: !1239, line: 528, baseType: !7, size: 32, offset: 640)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1297, file: !1239, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1297, file: !1239, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1297, file: !1239, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1297, file: !1239, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1297, file: !1239, line: 563, baseType: !1313, size: 512, offset: 704)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1314)
!1314 = !{!1315, !1323, !1324, !1329, !1372, !1375, !1376, !1377}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1313, file: !20, line: 119, baseType: !1316, size: 256)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1317, line: 9, size: 256, elements: !1318)
!1317 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1318 = !{!1319, !1320}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1316, file: !1317, line: 10, baseType: !785, size: 192, align: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1316, file: !1317, line: 11, baseType: !1321, size: 64, offset: 192)
!1321 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1322, line: 29, baseType: !802)
!1322 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1313, file: !20, line: 120, baseType: !1321, size: 64, offset: 256)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1313, file: !20, line: 121, baseType: !1325, size: 64, offset: 320)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{!19, !1328}
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1313, file: !20, line: 122, baseType: !1330, size: 64, offset: 384)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1332)
!1332 = !{!1333, !1353, !1354, !1357, !1362, !1363, !1367, !1371}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1331, file: !20, line: 160, baseType: !1334, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1336)
!1336 = !{!1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1335, file: !20, line: 215, baseType: !805)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1335, file: !20, line: 216, baseType: !7, size: 32)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1335, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1335, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1335, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1335, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1335, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1335, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1335, file: !20, line: 233, baseType: !1321, size: 64, offset: 128)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1335, file: !20, line: 234, baseType: !1328, size: 64, offset: 192)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1335, file: !20, line: 235, baseType: !1321, size: 64, offset: 256)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1335, file: !20, line: 236, baseType: !1328, size: 64, offset: 320)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1335, file: !20, line: 237, baseType: !1350, size: 4096, offset: 512)
!1350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1331, size: 4096, elements: !1351)
!1351 = !{!1352}
!1352 = !DISubrange(count: 8)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1331, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1331, file: !20, line: 162, baseType: !1355, size: 32, offset: 96)
!1355 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !170, line: 27, baseType: !1356)
!1356 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !335, line: 96, baseType: !228)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1331, file: !20, line: 163, baseType: !1358, size: 32, offset: 128)
!1358 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !415, line: 276, baseType: !1359)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !415, line: 276, size: 32, elements: !1360)
!1360 = !{!1361}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1359, file: !415, line: 276, baseType: !419, size: 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1331, file: !20, line: 164, baseType: !1328, size: 64, offset: 192)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1331, file: !20, line: 165, baseType: !1364, size: 128, offset: 256)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1317, line: 14, size: 128, elements: !1365)
!1365 = !{!1366}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1364, file: !1317, line: 15, baseType: !777, size: 128)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1331, file: !20, line: 166, baseType: !1368, size: 64, offset: 384)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!1321}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1331, file: !20, line: 167, baseType: !1321, size: 64, offset: 448)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1313, file: !20, line: 123, baseType: !1373, size: 8, offset: 448)
!1373 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !173, line: 17, baseType: !1374)
!1374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !175, line: 21, baseType: !452)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1313, file: !20, line: 124, baseType: !1373, size: 8, offset: 456)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1313, file: !20, line: 125, baseType: !1373, size: 8, offset: 464)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1313, file: !20, line: 126, baseType: !1373, size: 8, offset: 472)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1297, file: !1239, line: 572, baseType: !1313, size: 512, offset: 1216)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1297, file: !1239, line: 580, baseType: !1380, size: 64, offset: 1728)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1238, file: !1239, line: 721, baseType: !7, size: 32, offset: 3584)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1238, file: !1239, line: 722, baseType: !228, size: 32, offset: 3616)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1238, file: !1239, line: 723, baseType: !1384, size: 64, offset: 3648)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1386)
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1387, line: 17, baseType: !1388)
!1387 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1387, line: 17, size: 64, elements: !1389)
!1389 = !{!1390}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1388, file: !1387, line: 17, baseType: !1391, size: 64)
!1391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 64, elements: !1392)
!1392 = !{!1393}
!1393 = !DISubrange(count: 1)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1238, file: !1239, line: 724, baseType: !1386, size: 64, offset: 3712)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1238, file: !1239, line: 749, baseType: !1396, offset: 3776)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1239, line: 290, elements: !275)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1238, file: !1239, line: 751, baseType: !248, size: 128, offset: 3776)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1238, file: !1239, line: 757, baseType: !997, size: 64, offset: 3904)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1238, file: !1239, line: 758, baseType: !997, size: 64, offset: 3968)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1238, file: !1239, line: 761, baseType: !1401, size: 320, offset: 4032)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1172, line: 34, size: 320, elements: !1402)
!1402 = !{!1403, !1404}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1401, file: !1172, line: 35, baseType: !446, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1401, file: !1172, line: 36, baseType: !1405, size: 256, offset: 64)
!1405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1004, size: 256, elements: !1176)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1238, file: !1239, line: 766, baseType: !228, size: 32, offset: 4352)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1238, file: !1239, line: 767, baseType: !228, size: 32, offset: 4384)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1238, file: !1239, line: 768, baseType: !228, size: 32, offset: 4416)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1238, file: !1239, line: 770, baseType: !228, size: 32, offset: 4448)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1238, file: !1239, line: 772, baseType: !351, size: 64, offset: 4480)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1238, file: !1239, line: 775, baseType: !7, size: 32, offset: 4544)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1238, file: !1239, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1238, file: !1239, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1238, file: !1239, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1238, file: !1239, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1238, file: !1239, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1238, file: !1239, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1238, file: !1239, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1238, file: !1239, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1238, file: !1239, line: 831, baseType: !351, size: 64, offset: 4672)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1238, file: !1239, line: 833, baseType: !1422, size: 384, offset: 4736)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1423)
!1423 = !{!1424, !1429}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1422, file: !25, line: 26, baseType: !1425, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!337, !1428}
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, scope: !1422, file: !25, line: 27, baseType: !1430, size: 320, offset: 64)
!1430 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1422, file: !25, line: 27, size: 320, elements: !1431)
!1431 = !{!1432, !1442, !1469}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1430, file: !25, line: 36, baseType: !1433, size: 320)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1430, file: !25, line: 29, size: 320, elements: !1434)
!1434 = !{!1435, !1437, !1438, !1439, !1440, !1441}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1433, file: !25, line: 30, baseType: !1436, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1433, file: !25, line: 31, baseType: !442, size: 32, offset: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1433, file: !25, line: 32, baseType: !442, size: 32, offset: 96)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1433, file: !25, line: 33, baseType: !442, size: 32, offset: 128)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1433, file: !25, line: 34, baseType: !446, size: 64, offset: 192)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1433, file: !25, line: 35, baseType: !1436, size: 64, offset: 256)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1430, file: !25, line: 46, baseType: !1443, size: 192)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1430, file: !25, line: 38, size: 192, elements: !1444)
!1444 = !{!1445, !1446, !1447, !1468}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1443, file: !25, line: 39, baseType: !1355, size: 32)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1443, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1447 = !DIDerivedType(tag: DW_TAG_member, scope: !1443, file: !25, line: 41, baseType: !1448, size: 64, offset: 64)
!1448 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1443, file: !25, line: 41, size: 64, elements: !1449)
!1449 = !{!1450, !1458}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1448, file: !25, line: 42, baseType: !1451, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1453, line: 7, size: 128, elements: !1454)
!1453 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1454 = !{!1455, !1457}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1452, file: !1453, line: 8, baseType: !1456, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !335, line: 93, baseType: !558)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1452, file: !1453, line: 9, baseType: !558, size: 64, offset: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1448, file: !25, line: 43, baseType: !1459, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1461, line: 7, size: 64, elements: !1462)
!1461 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1462 = !{!1463, !1467}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1460, file: !1461, line: 8, baseType: !1464, size: 32)
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1461, line: 5, baseType: !1465)
!1465 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !173, line: 20, baseType: !1466)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !175, line: 26, baseType: !228)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1460, file: !1461, line: 9, baseType: !1465, size: 32, offset: 32)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1443, file: !25, line: 45, baseType: !446, size: 64, offset: 128)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1430, file: !25, line: 54, baseType: !1470, size: 256)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1430, file: !25, line: 48, size: 256, elements: !1471)
!1471 = !{!1472, !1475, !1476, !1477, !1478}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1470, file: !25, line: 49, baseType: !1473, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1470, file: !25, line: 50, baseType: !228, size: 32, offset: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1470, file: !25, line: 51, baseType: !228, size: 32, offset: 96)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1470, file: !25, line: 52, baseType: !351, size: 64, offset: 128)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1470, file: !25, line: 53, baseType: !351, size: 64, offset: 192)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1238, file: !1239, line: 835, baseType: !1480, size: 32, offset: 5120)
!1480 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !170, line: 22, baseType: !1481)
!1481 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !335, line: 28, baseType: !228)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1238, file: !1239, line: 836, baseType: !1480, size: 32, offset: 5152)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1238, file: !1239, line: 840, baseType: !351, size: 64, offset: 5184)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1238, file: !1239, line: 849, baseType: !1237, size: 64, offset: 5248)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1238, file: !1239, line: 852, baseType: !1237, size: 64, offset: 5312)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1238, file: !1239, line: 857, baseType: !248, size: 128, offset: 5376)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1238, file: !1239, line: 858, baseType: !248, size: 128, offset: 5504)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1238, file: !1239, line: 859, baseType: !1237, size: 64, offset: 5632)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1238, file: !1239, line: 867, baseType: !248, size: 128, offset: 5696)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1238, file: !1239, line: 868, baseType: !248, size: 128, offset: 5824)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1238, file: !1239, line: 871, baseType: !1492, size: 64, offset: 5952)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1494)
!1494 = !{!1495, !1496, !1497, !1498, !1500, !1501, !1508, !1509}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1493, file: !53, line: 61, baseType: !1251, size: 32)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1493, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1493, file: !53, line: 63, baseType: !261, offset: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1493, file: !53, line: 65, baseType: !1499, size: 256, offset: 64)
!1499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !660, size: 256, elements: !1176)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1493, file: !53, line: 66, baseType: !660, size: 64, offset: 320)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1493, file: !53, line: 68, baseType: !1502, size: 128, offset: 384)
!1502 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1503, line: 40, baseType: !1504)
!1503 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1503, line: 36, size: 128, elements: !1505)
!1505 = !{!1506, !1507}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1504, file: !1503, line: 37, baseType: !261)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1504, file: !1503, line: 38, baseType: !248, size: 128)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1493, file: !53, line: 69, baseType: !392, size: 128, align: 64, offset: 512)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1493, file: !53, line: 70, baseType: !1510, size: 128, offset: 640)
!1510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1511, size: 128, elements: !1392)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1512)
!1512 = !{!1513, !1514}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1511, file: !53, line: 55, baseType: !228, size: 32)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1511, file: !53, line: 56, baseType: !1515, size: 64, offset: 64)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1238, file: !1239, line: 872, baseType: !1518, size: 512, offset: 6016)
!1518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !664, size: 512, elements: !1176)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1238, file: !1239, line: 873, baseType: !248, size: 128, offset: 6528)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1238, file: !1239, line: 874, baseType: !248, size: 128, offset: 6656)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1238, file: !1239, line: 876, baseType: !1522, size: 64, offset: 6784)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1524, line: 26, size: 192, elements: !1525)
!1524 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1525 = !{!1526, !1527}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1523, file: !1524, line: 27, baseType: !7, size: 32)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1523, file: !1524, line: 28, baseType: !1528, size: 128, offset: 64)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1529, line: 43, size: 128, elements: !1530)
!1529 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1530 = !{!1531, !1532}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1528, file: !1529, line: 44, baseType: !805)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1528, file: !1529, line: 45, baseType: !248, size: 128)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1238, file: !1239, line: 879, baseType: !730, size: 64, offset: 6848)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1238, file: !1239, line: 882, baseType: !730, size: 64, offset: 6912)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1238, file: !1239, line: 884, baseType: !446, size: 64, offset: 6976)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1238, file: !1239, line: 885, baseType: !446, size: 64, offset: 7040)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1238, file: !1239, line: 890, baseType: !446, size: 64, offset: 7104)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1238, file: !1239, line: 891, baseType: !1539, size: 128, offset: 7168)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1239, line: 242, size: 128, elements: !1540)
!1540 = !{!1541, !1542, !1543}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1539, file: !1239, line: 244, baseType: !446, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1539, file: !1239, line: 245, baseType: !446, size: 64, offset: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1539, file: !1239, line: 246, baseType: !805, offset: 128)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1238, file: !1239, line: 900, baseType: !351, size: 64, offset: 7296)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1238, file: !1239, line: 901, baseType: !351, size: 64, offset: 7360)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1238, file: !1239, line: 904, baseType: !446, size: 64, offset: 7424)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1238, file: !1239, line: 907, baseType: !446, size: 64, offset: 7488)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1238, file: !1239, line: 910, baseType: !351, size: 64, offset: 7552)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1238, file: !1239, line: 911, baseType: !351, size: 64, offset: 7616)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1238, file: !1239, line: 914, baseType: !1551, size: 640, offset: 7680)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1552, line: 123, size: 640, elements: !1553)
!1552 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1553 = !{!1554, !1560, !1561}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1551, file: !1552, line: 124, baseType: !1555, size: 576)
!1555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1556, size: 576, elements: !303)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1552, line: 108, size: 192, elements: !1557)
!1557 = !{!1558, !1559}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1556, file: !1552, line: 109, baseType: !446, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1556, file: !1552, line: 110, baseType: !1364, size: 128, offset: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1551, file: !1552, line: 125, baseType: !7, size: 32, offset: 576)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1551, file: !1552, line: 126, baseType: !7, size: 32, offset: 608)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1238, file: !1239, line: 917, baseType: !1563, size: 192, offset: 8320)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1552, line: 134, size: 192, elements: !1564)
!1564 = !{!1565, !1566}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1563, file: !1552, line: 135, baseType: !392, size: 128, align: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1563, file: !1552, line: 136, baseType: !7, size: 32, offset: 128)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1238, file: !1239, line: 923, baseType: !1568, size: 64, offset: 8512)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1570)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1571, line: 111, size: 1280, elements: !1572)
!1571 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1572 = !{!1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1592, !1593, !1594, !1595, !1596, !1597, !1704, !1705, !1706, !1707, !1733, !1736, !1746}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1570, file: !1571, line: 112, baseType: !772, size: 32)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1570, file: !1571, line: 120, baseType: !460, size: 32, offset: 32)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1570, file: !1571, line: 121, baseType: !468, size: 32, offset: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1570, file: !1571, line: 122, baseType: !460, size: 32, offset: 96)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1570, file: !1571, line: 123, baseType: !468, size: 32, offset: 128)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1570, file: !1571, line: 124, baseType: !460, size: 32, offset: 160)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1570, file: !1571, line: 125, baseType: !468, size: 32, offset: 192)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1570, file: !1571, line: 126, baseType: !460, size: 32, offset: 224)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1570, file: !1571, line: 127, baseType: !468, size: 32, offset: 256)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1570, file: !1571, line: 128, baseType: !7, size: 32, offset: 288)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1570, file: !1571, line: 129, baseType: !1584, size: 64, offset: 320)
!1584 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1585, line: 26, baseType: !1586)
!1585 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1585, line: 24, size: 64, elements: !1587)
!1587 = !{!1588}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1586, file: !1585, line: 25, baseType: !1589, size: 64)
!1589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 64, elements: !1590)
!1590 = !{!1591}
!1591 = !DISubrange(count: 2)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1570, file: !1571, line: 130, baseType: !1584, size: 64, offset: 384)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1570, file: !1571, line: 131, baseType: !1584, size: 64, offset: 448)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1570, file: !1571, line: 132, baseType: !1584, size: 64, offset: 512)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1570, file: !1571, line: 133, baseType: !1584, size: 64, offset: 576)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1570, file: !1571, line: 135, baseType: !452, size: 8, offset: 640)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1570, file: !1571, line: 137, baseType: !1598, size: 64, offset: 704)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1600, line: 189, size: 1664, elements: !1601)
!1600 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1601 = !{!1602, !1603, !1606, !1611, !1612, !1615, !1616, !1621, !1622, !1623, !1624, !1626, !1627, !1628, !1629, !1630, !1668, !1689}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1599, file: !1600, line: 190, baseType: !1251, size: 32)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1599, file: !1600, line: 191, baseType: !1604, size: 32, offset: 32)
!1604 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1600, line: 28, baseType: !1605)
!1605 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !170, line: 98, baseType: !1465)
!1606 = !DIDerivedType(tag: DW_TAG_member, scope: !1599, file: !1600, line: 192, baseType: !1607, size: 192, offset: 64)
!1607 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1599, file: !1600, line: 192, size: 192, elements: !1608)
!1608 = !{!1609, !1610}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1607, file: !1600, line: 193, baseType: !248, size: 128)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1607, file: !1600, line: 194, baseType: !785, size: 192, align: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1599, file: !1600, line: 199, baseType: !792, size: 256, offset: 256)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1599, file: !1600, line: 200, baseType: !1613, size: 64, offset: 512)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1600, line: 200, flags: DIFlagFwdDecl)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1599, file: !1600, line: 201, baseType: !168, size: 64, offset: 576)
!1616 = !DIDerivedType(tag: DW_TAG_member, scope: !1599, file: !1600, line: 202, baseType: !1617, size: 64, offset: 640)
!1617 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1599, file: !1600, line: 202, size: 64, elements: !1618)
!1618 = !{!1619, !1620}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1617, file: !1600, line: 203, baseType: !564, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1617, file: !1600, line: 204, baseType: !564, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1599, file: !1600, line: 206, baseType: !564, size: 64, offset: 704)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1599, file: !1600, line: 207, baseType: !460, size: 32, offset: 768)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1599, file: !1600, line: 208, baseType: !468, size: 32, offset: 800)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1599, file: !1600, line: 209, baseType: !1625, size: 32, offset: 832)
!1625 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1600, line: 31, baseType: !584)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1599, file: !1600, line: 210, baseType: !176, size: 16, offset: 864)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1599, file: !1600, line: 211, baseType: !176, size: 16, offset: 880)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1599, file: !1600, line: 215, baseType: !1226, size: 16, offset: 896)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1599, file: !1600, line: 222, baseType: !351, size: 64, offset: 960)
!1630 = !DIDerivedType(tag: DW_TAG_member, scope: !1599, file: !1600, line: 239, baseType: !1631, size: 320, offset: 1024)
!1631 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1599, file: !1600, line: 239, size: 320, elements: !1632)
!1632 = !{!1633, !1660}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1631, file: !1600, line: 240, baseType: !1634, size: 320)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1600, line: 108, size: 320, elements: !1635)
!1635 = !{!1636, !1637, !1649, !1652, !1659}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1634, file: !1600, line: 110, baseType: !351, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, scope: !1634, file: !1600, line: 111, baseType: !1638, size: 64, offset: 64)
!1638 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1634, file: !1600, line: 111, size: 64, elements: !1639)
!1639 = !{!1640, !1648}
!1640 = !DIDerivedType(tag: DW_TAG_member, scope: !1638, file: !1600, line: 112, baseType: !1641, size: 64)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1638, file: !1600, line: 112, size: 64, elements: !1642)
!1642 = !{!1643, !1644}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1641, file: !1600, line: 114, baseType: !172, size: 16)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1641, file: !1600, line: 115, baseType: !1645, size: 48, offset: 16)
!1645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 48, elements: !1646)
!1646 = !{!1647}
!1647 = !DISubrange(count: 6)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1638, file: !1600, line: 121, baseType: !351, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1634, file: !1600, line: 123, baseType: !1650, size: 64, offset: 128)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1600, line: 96, flags: DIFlagFwdDecl)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1634, file: !1600, line: 124, baseType: !1653, size: 64, offset: 192)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1600, line: 102, size: 192, elements: !1655)
!1655 = !{!1656, !1657, !1658}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1654, file: !1600, line: 103, baseType: !392, size: 128, align: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1654, file: !1600, line: 104, baseType: !1251, size: 32, offset: 128)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1654, file: !1600, line: 105, baseType: !515, size: 8, offset: 160)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1634, file: !1600, line: 125, baseType: !219, size: 64, offset: 256)
!1660 = !DIDerivedType(tag: DW_TAG_member, scope: !1631, file: !1600, line: 241, baseType: !1661, size: 320)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1631, file: !1600, line: 241, size: 320, elements: !1662)
!1662 = !{!1663, !1664, !1665, !1666, !1667}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1661, file: !1600, line: 242, baseType: !351, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1661, file: !1600, line: 243, baseType: !351, size: 64, offset: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1661, file: !1600, line: 244, baseType: !1650, size: 64, offset: 128)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1661, file: !1600, line: 245, baseType: !1653, size: 64, offset: 192)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1661, file: !1600, line: 246, baseType: !302, size: 64, offset: 256)
!1668 = !DIDerivedType(tag: DW_TAG_member, scope: !1599, file: !1600, line: 254, baseType: !1669, size: 256, offset: 1344)
!1669 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1599, file: !1600, line: 254, size: 256, elements: !1670)
!1670 = !{!1671, !1677}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1669, file: !1600, line: 255, baseType: !1672, size: 256)
!1672 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1600, line: 128, size: 256, elements: !1673)
!1673 = !{!1674, !1675}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1672, file: !1600, line: 129, baseType: !168, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1672, file: !1600, line: 130, baseType: !1676, size: 256)
!1676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 256, elements: !1176)
!1677 = !DIDerivedType(tag: DW_TAG_member, scope: !1669, file: !1600, line: 256, baseType: !1678, size: 256)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1669, file: !1600, line: 256, size: 256, elements: !1679)
!1679 = !{!1680, !1681}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1678, file: !1600, line: 258, baseType: !248, size: 128)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1678, file: !1600, line: 259, baseType: !1682, size: 128, offset: 128)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1683, line: 22, size: 128, elements: !1684)
!1683 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1684 = !{!1685, !1688}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1682, file: !1683, line: 23, baseType: !1686, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1683, line: 23, flags: DIFlagFwdDecl)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1682, file: !1683, line: 24, baseType: !351, size: 64, offset: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1599, file: !1600, line: 274, baseType: !1690, size: 64, offset: 1600)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1600, line: 170, size: 192, elements: !1692)
!1692 = !{!1693, !1702, !1703}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1691, file: !1600, line: 171, baseType: !1694, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1600, line: 165, baseType: !1695)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!228, !1598, !1698, !1700, !1598}
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1651)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1672)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1691, file: !1600, line: 172, baseType: !1598, size: 64, offset: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1691, file: !1600, line: 173, baseType: !1650, size: 64, offset: 128)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1570, file: !1571, line: 138, baseType: !1598, size: 64, offset: 768)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1570, file: !1571, line: 139, baseType: !1598, size: 64, offset: 832)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1570, file: !1571, line: 140, baseType: !1598, size: 64, offset: 896)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1570, file: !1571, line: 145, baseType: !1708, size: 64, offset: 960)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1710, line: 13, size: 896, elements: !1711)
!1710 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1711 = !{!1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1709, file: !1710, line: 14, baseType: !1251, size: 32)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1709, file: !1710, line: 15, baseType: !772, size: 32, offset: 32)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1709, file: !1710, line: 16, baseType: !772, size: 32, offset: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1709, file: !1710, line: 21, baseType: !796, size: 64, offset: 128)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1709, file: !1710, line: 27, baseType: !351, size: 64, offset: 192)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1709, file: !1710, line: 28, baseType: !351, size: 64, offset: 256)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1709, file: !1710, line: 29, baseType: !796, size: 64, offset: 320)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1709, file: !1710, line: 32, baseType: !664, size: 128, offset: 384)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1709, file: !1710, line: 33, baseType: !460, size: 32, offset: 512)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1709, file: !1710, line: 37, baseType: !796, size: 64, offset: 576)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1709, file: !1710, line: 44, baseType: !1723, size: 256, offset: 640)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1724, line: 15, size: 256, elements: !1725)
!1724 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1725 = !{!1726, !1727, !1728, !1729, !1730, !1731, !1732}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1723, file: !1724, line: 16, baseType: !805)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1723, file: !1724, line: 18, baseType: !228, size: 32)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1723, file: !1724, line: 19, baseType: !228, size: 32, offset: 32)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1723, file: !1724, line: 20, baseType: !228, size: 32, offset: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1723, file: !1724, line: 21, baseType: !228, size: 32, offset: 96)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1723, file: !1724, line: 22, baseType: !351, size: 64, offset: 128)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1723, file: !1724, line: 23, baseType: !351, size: 64, offset: 192)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1570, file: !1571, line: 146, baseType: !1734, size: 64, offset: 1024)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !461, line: 18, flags: DIFlagFwdDecl)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1570, file: !1571, line: 147, baseType: !1737, size: 64, offset: 1088)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1571, line: 25, size: 64, elements: !1739)
!1739 = !{!1740, !1741, !1742}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1738, file: !1571, line: 26, baseType: !772, size: 32)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1738, file: !1571, line: 27, baseType: !228, size: 32, offset: 32)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1738, file: !1571, line: 28, baseType: !1743, offset: 64)
!1743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !468, elements: !1744)
!1744 = !{!1745}
!1745 = !DISubrange(count: 0)
!1746 = !DIDerivedType(tag: DW_TAG_member, scope: !1570, file: !1571, line: 149, baseType: !1747, size: 128, offset: 1152)
!1747 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1570, file: !1571, line: 149, size: 128, elements: !1748)
!1748 = !{!1749, !1750}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1747, file: !1571, line: 150, baseType: !228, size: 32)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1747, file: !1571, line: 151, baseType: !392, size: 128, align: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1238, file: !1239, line: 926, baseType: !1568, size: 64, offset: 8576)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1238, file: !1239, line: 929, baseType: !1568, size: 64, offset: 8640)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1238, file: !1239, line: 933, baseType: !1598, size: 64, offset: 8704)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1238, file: !1239, line: 943, baseType: !1755, size: 128, offset: 8768)
!1755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 128, elements: !1756)
!1756 = !{!1757}
!1757 = !DISubrange(count: 16)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1238, file: !1239, line: 945, baseType: !1759, size: 64, offset: 8896)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1239, line: 49, flags: DIFlagFwdDecl)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1238, file: !1239, line: 956, baseType: !1762, size: 64, offset: 8960)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1239, line: 45, flags: DIFlagFwdDecl)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1238, file: !1239, line: 959, baseType: !1765, size: 64, offset: 9024)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1239, line: 959, flags: DIFlagFwdDecl)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1238, file: !1239, line: 962, baseType: !1768, size: 64, offset: 9088)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1239, line: 66, flags: DIFlagFwdDecl)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1238, file: !1239, line: 966, baseType: !1771, size: 64, offset: 9152)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1773, line: 35, flags: DIFlagFwdDecl)
!1773 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1238, file: !1239, line: 969, baseType: !1775, size: 64, offset: 9216)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1777, line: 82, size: 7296, elements: !1778)
!1777 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1778 = !{!1779, !1780, !1781, !1782, !1783, !1784, !1785, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1814, !1823, !1824, !1826, !1827, !1828, !1831, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1861, !1862, !1869, !1870, !1871, !1872, !1873, !1874}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1776, file: !1777, line: 83, baseType: !1251, size: 32)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1776, file: !1777, line: 84, baseType: !772, size: 32, offset: 32)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1776, file: !1777, line: 85, baseType: !228, size: 32, offset: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1776, file: !1777, line: 86, baseType: !248, size: 128, offset: 128)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1776, file: !1777, line: 88, baseType: !1502, size: 128, offset: 256)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1776, file: !1777, line: 91, baseType: !1237, size: 64, offset: 384)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1776, file: !1777, line: 94, baseType: !1786, size: 192, offset: 448)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1787, line: 30, size: 192, elements: !1788)
!1787 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1788 = !{!1789, !1790}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1786, file: !1787, line: 31, baseType: !248, size: 128)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1786, file: !1787, line: 32, baseType: !1791, size: 64, offset: 128)
!1791 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1792, line: 25, baseType: !1793)
!1792 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1792, line: 23, size: 64, elements: !1794)
!1794 = !{!1795}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1793, file: !1792, line: 24, baseType: !1391, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1776, file: !1777, line: 97, baseType: !660, size: 64, offset: 640)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1776, file: !1777, line: 100, baseType: !228, size: 32, offset: 704)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1776, file: !1777, line: 106, baseType: !228, size: 32, offset: 736)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1776, file: !1777, line: 107, baseType: !1237, size: 64, offset: 768)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1776, file: !1777, line: 110, baseType: !228, size: 32, offset: 832)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1776, file: !1777, line: 111, baseType: !7, size: 32, offset: 864)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1776, file: !1777, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1776, file: !1777, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1776, file: !1777, line: 128, baseType: !228, size: 32, offset: 928)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1776, file: !1777, line: 129, baseType: !248, size: 128, offset: 960)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1776, file: !1777, line: 132, baseType: !1313, size: 512, offset: 1088)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1776, file: !1777, line: 133, baseType: !1321, size: 64, offset: 1600)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1776, file: !1777, line: 140, baseType: !1809, size: 256, offset: 1664)
!1809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1810, size: 256, elements: !1590)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1777, line: 38, size: 128, elements: !1811)
!1811 = !{!1812, !1813}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1810, file: !1777, line: 39, baseType: !446, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1810, file: !1777, line: 40, baseType: !446, size: 64, offset: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1776, file: !1777, line: 146, baseType: !1815, size: 192, offset: 1920)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1777, line: 66, size: 192, elements: !1816)
!1816 = !{!1817}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1815, file: !1777, line: 67, baseType: !1818, size: 192)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1777, line: 47, size: 192, elements: !1819)
!1819 = !{!1820, !1821, !1822}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1818, file: !1777, line: 48, baseType: !798, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1818, file: !1777, line: 49, baseType: !798, size: 64, offset: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1818, file: !1777, line: 50, baseType: !798, size: 64, offset: 128)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1776, file: !1777, line: 150, baseType: !1551, size: 640, offset: 2112)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1776, file: !1777, line: 153, baseType: !1825, size: 256, offset: 2752)
!1825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1492, size: 256, elements: !1176)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1776, file: !1777, line: 159, baseType: !1492, size: 64, offset: 3008)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1776, file: !1777, line: 162, baseType: !228, size: 32, offset: 3072)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1776, file: !1777, line: 164, baseType: !1829, size: 64, offset: 3136)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1777, line: 164, flags: DIFlagFwdDecl)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1776, file: !1777, line: 175, baseType: !1832, size: 32, offset: 3200)
!1832 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !415, line: 805, baseType: !1833)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !415, line: 798, size: 32, elements: !1834)
!1834 = !{!1835, !1836}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1833, file: !415, line: 803, baseType: !414, size: 32)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1833, file: !415, line: 804, baseType: !261, offset: 32)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1776, file: !1777, line: 176, baseType: !446, size: 64, offset: 3264)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1776, file: !1777, line: 176, baseType: !446, size: 64, offset: 3328)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1776, file: !1777, line: 176, baseType: !446, size: 64, offset: 3392)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1776, file: !1777, line: 176, baseType: !446, size: 64, offset: 3456)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1776, file: !1777, line: 177, baseType: !446, size: 64, offset: 3520)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1776, file: !1777, line: 178, baseType: !446, size: 64, offset: 3584)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1776, file: !1777, line: 179, baseType: !1539, size: 128, offset: 3648)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1776, file: !1777, line: 180, baseType: !351, size: 64, offset: 3776)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1776, file: !1777, line: 180, baseType: !351, size: 64, offset: 3840)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1776, file: !1777, line: 180, baseType: !351, size: 64, offset: 3904)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1776, file: !1777, line: 180, baseType: !351, size: 64, offset: 3968)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1776, file: !1777, line: 181, baseType: !351, size: 64, offset: 4032)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1776, file: !1777, line: 181, baseType: !351, size: 64, offset: 4096)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1776, file: !1777, line: 181, baseType: !351, size: 64, offset: 4160)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1776, file: !1777, line: 181, baseType: !351, size: 64, offset: 4224)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1776, file: !1777, line: 182, baseType: !351, size: 64, offset: 4288)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1776, file: !1777, line: 182, baseType: !351, size: 64, offset: 4352)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1776, file: !1777, line: 182, baseType: !351, size: 64, offset: 4416)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1776, file: !1777, line: 182, baseType: !351, size: 64, offset: 4480)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1776, file: !1777, line: 183, baseType: !351, size: 64, offset: 4544)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1776, file: !1777, line: 183, baseType: !351, size: 64, offset: 4608)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1776, file: !1777, line: 184, baseType: !1859, offset: 4672)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1860, line: 12, elements: !275)
!1860 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1776, file: !1777, line: 192, baseType: !448, size: 64, offset: 4672)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1776, file: !1777, line: 203, baseType: !1863, size: 2048, offset: 4736)
!1863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1864, size: 2048, elements: !1756)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1865, line: 43, size: 128, elements: !1866)
!1865 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1866 = !{!1867, !1868}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1864, file: !1865, line: 44, baseType: !350, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1864, file: !1865, line: 45, baseType: !350, size: 64, offset: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1776, file: !1777, line: 220, baseType: !515, size: 8, offset: 6784)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1776, file: !1777, line: 221, baseType: !1226, size: 16, offset: 6800)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1776, file: !1777, line: 222, baseType: !1226, size: 16, offset: 6816)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1776, file: !1777, line: 224, baseType: !997, size: 64, offset: 6848)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1776, file: !1777, line: 227, baseType: !1194, size: 192, offset: 6912)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1776, file: !1777, line: 233, baseType: !1194, size: 192, offset: 7104)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1238, file: !1239, line: 970, baseType: !1876, size: 64, offset: 9280)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1777, line: 20, size: 16576, elements: !1878)
!1878 = !{!1879, !1880, !1881, !1882}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1877, file: !1777, line: 21, baseType: !261)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1877, file: !1777, line: 22, baseType: !1251, size: 32)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1877, file: !1777, line: 23, baseType: !1502, size: 128, offset: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1877, file: !1777, line: 24, baseType: !1883, size: 16384, offset: 192)
!1883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1884, size: 16384, elements: !307)
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1787, line: 49, size: 256, elements: !1885)
!1885 = !{!1886}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1884, file: !1787, line: 50, baseType: !1887, size: 256)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1787, line: 35, size: 256, elements: !1888)
!1888 = !{!1889, !1896, !1897, !1901}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1887, file: !1787, line: 37, baseType: !1890, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1891, line: 19, baseType: !1892)
!1891 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1891, line: 18, baseType: !1894)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{null, !228}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1887, file: !1787, line: 38, baseType: !351, size: 64, offset: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1887, file: !1787, line: 44, baseType: !1898, size: 64, offset: 128)
!1898 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1891, line: 22, baseType: !1899)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1891, line: 21, baseType: !183)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1887, file: !1787, line: 46, baseType: !1791, size: 64, offset: 192)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1238, file: !1239, line: 971, baseType: !1791, size: 64, offset: 9344)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1238, file: !1239, line: 972, baseType: !1791, size: 64, offset: 9408)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1238, file: !1239, line: 974, baseType: !1791, size: 64, offset: 9472)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1238, file: !1239, line: 975, baseType: !1786, size: 192, offset: 9536)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1238, file: !1239, line: 976, baseType: !351, size: 64, offset: 9728)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1238, file: !1239, line: 977, baseType: !348, size: 64, offset: 9792)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1238, file: !1239, line: 978, baseType: !7, size: 32, offset: 9856)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1238, file: !1239, line: 980, baseType: !395, size: 64, offset: 9920)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1238, file: !1239, line: 989, baseType: !1911, size: 128, offset: 9984)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1912, line: 35, size: 128, elements: !1913)
!1912 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1913 = !{!1914, !1915, !1916}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1911, file: !1912, line: 36, baseType: !228, size: 32)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1911, file: !1912, line: 37, baseType: !772, size: 32, offset: 32)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1911, file: !1912, line: 38, baseType: !1917, size: 64, offset: 64)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1912, line: 23, flags: DIFlagFwdDecl)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1238, file: !1239, line: 992, baseType: !446, size: 64, offset: 10112)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1238, file: !1239, line: 993, baseType: !446, size: 64, offset: 10176)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1238, file: !1239, line: 996, baseType: !261, offset: 10240)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1238, file: !1239, line: 999, baseType: !805, offset: 10240)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1238, file: !1239, line: 1001, baseType: !1924, size: 64, offset: 10240)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1239, line: 636, size: 64, elements: !1925)
!1925 = !{!1926}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1924, file: !1239, line: 637, baseType: !1927, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1238, file: !1239, line: 1005, baseType: !777, size: 128, offset: 10304)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1238, file: !1239, line: 1007, baseType: !1237, size: 64, offset: 10432)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1238, file: !1239, line: 1009, baseType: !1931, size: 64, offset: 10496)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1239, line: 1009, flags: DIFlagFwdDecl)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1238, file: !1239, line: 1043, baseType: !168, size: 64, offset: 10560)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1238, file: !1239, line: 1046, baseType: !1935, size: 64, offset: 10624)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1239, line: 41, flags: DIFlagFwdDecl)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1238, file: !1239, line: 1050, baseType: !1938, size: 64, offset: 10688)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1239, line: 42, flags: DIFlagFwdDecl)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1238, file: !1239, line: 1054, baseType: !1941, size: 64, offset: 10752)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1239, line: 55, flags: DIFlagFwdDecl)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1238, file: !1239, line: 1056, baseType: !1944, size: 64, offset: 10816)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1239, line: 40, flags: DIFlagFwdDecl)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1238, file: !1239, line: 1058, baseType: !1947, size: 64, offset: 10880)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1949, line: 99, size: 704, elements: !1950)
!1949 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1950 = !{!1951, !1952, !1953, !1954, !1955, !1956, !1957, !1976, !1977}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1948, file: !1949, line: 100, baseType: !796, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1948, file: !1949, line: 101, baseType: !772, size: 32, offset: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1948, file: !1949, line: 102, baseType: !772, size: 32, offset: 96)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1948, file: !1949, line: 105, baseType: !261, offset: 128)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1948, file: !1949, line: 107, baseType: !176, size: 16, offset: 128)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1948, file: !1949, line: 109, baseType: !764, size: 128, offset: 192)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1948, file: !1949, line: 110, baseType: !1958, size: 64, offset: 320)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1949, line: 73, size: 448, elements: !1960)
!1960 = !{!1961, !1964, !1965, !1970, !1975}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1959, file: !1949, line: 74, baseType: !1962, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1949, line: 74, flags: DIFlagFwdDecl)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1959, file: !1949, line: 75, baseType: !1947, size: 64, offset: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, scope: !1959, file: !1949, line: 83, baseType: !1966, size: 128, offset: 128)
!1966 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1959, file: !1949, line: 83, size: 128, elements: !1967)
!1967 = !{!1968, !1969}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1966, file: !1949, line: 84, baseType: !248, size: 128)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1966, file: !1949, line: 85, baseType: !958, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, scope: !1959, file: !1949, line: 87, baseType: !1971, size: 128, offset: 256)
!1971 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1959, file: !1949, line: 87, size: 128, elements: !1972)
!1972 = !{!1973, !1974}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1971, file: !1949, line: 88, baseType: !664, size: 128)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1971, file: !1949, line: 89, baseType: !392, size: 128, align: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1959, file: !1949, line: 92, baseType: !7, size: 32, offset: 384)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1948, file: !1949, line: 111, baseType: !660, size: 64, offset: 384)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1948, file: !1949, line: 113, baseType: !1978, size: 256, offset: 448)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1979, line: 102, size: 256, elements: !1980)
!1979 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1980 = !{!1981, !1982, !1983}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1978, file: !1979, line: 103, baseType: !796, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1978, file: !1979, line: 104, baseType: !248, size: 128, offset: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1978, file: !1979, line: 105, baseType: !1984, size: 64, offset: 192)
!1984 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1979, line: 21, baseType: !1985)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{null, !1988}
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1238, file: !1239, line: 1061, baseType: !1990, size: 64, offset: 10944)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1239, line: 43, flags: DIFlagFwdDecl)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1238, file: !1239, line: 1064, baseType: !351, size: 64, offset: 11008)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1238, file: !1239, line: 1065, baseType: !1994, size: 64, offset: 11072)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1787, line: 14, baseType: !1996)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1787, line: 12, size: 384, elements: !1997)
!1997 = !{!1998}
!1998 = !DIDerivedType(tag: DW_TAG_member, scope: !1996, file: !1787, line: 13, baseType: !1999, size: 384)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1996, file: !1787, line: 13, size: 384, elements: !2000)
!2000 = !{!2001, !2002, !2003, !2004}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1999, file: !1787, line: 13, baseType: !228, size: 32)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1999, file: !1787, line: 13, baseType: !228, size: 32, offset: 32)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1999, file: !1787, line: 13, baseType: !228, size: 32, offset: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1999, file: !1787, line: 13, baseType: !2005, size: 256, offset: 128)
!2005 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2006, line: 32, size: 256, elements: !2007)
!2006 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2007 = !{!2008, !2013, !2026, !2032, !2041, !2061, !2066}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2005, file: !2006, line: 37, baseType: !2009, size: 64)
!2009 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2005, file: !2006, line: 34, size: 64, elements: !2010)
!2010 = !{!2011, !2012}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2009, file: !2006, line: 35, baseType: !1481, size: 32)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2009, file: !2006, line: 36, baseType: !466, size: 32, offset: 32)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2005, file: !2006, line: 45, baseType: !2014, size: 192)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2005, file: !2006, line: 40, size: 192, elements: !2015)
!2015 = !{!2016, !2018, !2019, !2025}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2014, file: !2006, line: 41, baseType: !2017, size: 32)
!2017 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !335, line: 95, baseType: !228)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2014, file: !2006, line: 42, baseType: !228, size: 32, offset: 32)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2014, file: !2006, line: 43, baseType: !2020, size: 64, offset: 64)
!2020 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2006, line: 11, baseType: !2021)
!2021 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2006, line: 8, size: 64, elements: !2022)
!2022 = !{!2023, !2024}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2021, file: !2006, line: 9, baseType: !228, size: 32)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2021, file: !2006, line: 10, baseType: !168, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2014, file: !2006, line: 44, baseType: !228, size: 32, offset: 128)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2005, file: !2006, line: 52, baseType: !2027, size: 128)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2005, file: !2006, line: 48, size: 128, elements: !2028)
!2028 = !{!2029, !2030, !2031}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2027, file: !2006, line: 49, baseType: !1481, size: 32)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2027, file: !2006, line: 50, baseType: !466, size: 32, offset: 32)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2027, file: !2006, line: 51, baseType: !2020, size: 64, offset: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2005, file: !2006, line: 61, baseType: !2033, size: 256)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2005, file: !2006, line: 55, size: 256, elements: !2034)
!2034 = !{!2035, !2036, !2037, !2038, !2040}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2033, file: !2006, line: 56, baseType: !1481, size: 32)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2033, file: !2006, line: 57, baseType: !466, size: 32, offset: 32)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2033, file: !2006, line: 58, baseType: !228, size: 32, offset: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2033, file: !2006, line: 59, baseType: !2039, size: 64, offset: 128)
!2039 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !335, line: 94, baseType: !336)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2033, file: !2006, line: 60, baseType: !2039, size: 64, offset: 192)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2005, file: !2006, line: 95, baseType: !2042, size: 256)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2005, file: !2006, line: 64, size: 256, elements: !2043)
!2043 = !{!2044, !2045}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2042, file: !2006, line: 65, baseType: !168, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, scope: !2042, file: !2006, line: 77, baseType: !2046, size: 192, offset: 64)
!2046 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2042, file: !2006, line: 77, size: 192, elements: !2047)
!2047 = !{!2048, !2049, !2056}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2046, file: !2006, line: 82, baseType: !1226, size: 16)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2046, file: !2006, line: 88, baseType: !2050, size: 192)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2046, file: !2006, line: 84, size: 192, elements: !2051)
!2051 = !{!2052, !2054, !2055}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2050, file: !2006, line: 85, baseType: !2053, size: 64)
!2053 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 64, elements: !1351)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2050, file: !2006, line: 86, baseType: !168, size: 64, offset: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2050, file: !2006, line: 87, baseType: !168, size: 64, offset: 128)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2046, file: !2006, line: 93, baseType: !2057, size: 96)
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2046, file: !2006, line: 90, size: 96, elements: !2058)
!2058 = !{!2059, !2060}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2057, file: !2006, line: 91, baseType: !2053, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2057, file: !2006, line: 92, baseType: !443, size: 32, offset: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2005, file: !2006, line: 101, baseType: !2062, size: 128)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2005, file: !2006, line: 98, size: 128, elements: !2063)
!2063 = !{!2064, !2065}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2062, file: !2006, line: 99, baseType: !337, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2062, file: !2006, line: 100, baseType: !228, size: 32, offset: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2005, file: !2006, line: 108, baseType: !2067, size: 128)
!2067 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2005, file: !2006, line: 104, size: 128, elements: !2068)
!2068 = !{!2069, !2070, !2071}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2067, file: !2006, line: 105, baseType: !168, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2067, file: !2006, line: 106, baseType: !228, size: 32, offset: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2067, file: !2006, line: 107, baseType: !7, size: 32, offset: 96)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1238, file: !1239, line: 1067, baseType: !1859, offset: 11136)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1238, file: !1239, line: 1099, baseType: !2074, size: 64, offset: 11136)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1239, line: 56, flags: DIFlagFwdDecl)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1238, file: !1239, line: 1103, baseType: !248, size: 128, offset: 11200)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1238, file: !1239, line: 1104, baseType: !2078, size: 64, offset: 11328)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1239, line: 46, flags: DIFlagFwdDecl)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1238, file: !1239, line: 1105, baseType: !1194, size: 192, offset: 11392)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1238, file: !1239, line: 1106, baseType: !7, size: 32, offset: 11584)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1238, file: !1239, line: 1109, baseType: !2083, size: 128, offset: 11648)
!2083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2084, size: 128, elements: !1590)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1239, line: 51, flags: DIFlagFwdDecl)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1238, file: !1239, line: 1110, baseType: !1194, size: 192, offset: 11776)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1238, file: !1239, line: 1111, baseType: !248, size: 128, offset: 11968)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1238, file: !1239, line: 1173, baseType: !2089, size: 64, offset: 12096)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2091, line: 62, size: 256, align: 256, elements: !2092)
!2091 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2092 = !{!2093, !2094, !2095, !2100}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2090, file: !2091, line: 75, baseType: !443, size: 32)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2090, file: !2091, line: 90, baseType: !443, size: 32, offset: 32)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2090, file: !2091, line: 124, baseType: !2096, size: 64, offset: 64)
!2096 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2090, file: !2091, line: 109, size: 64, elements: !2097)
!2097 = !{!2098, !2099}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2096, file: !2091, line: 110, baseType: !447, size: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2096, file: !2091, line: 112, baseType: !447, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2090, file: !2091, line: 144, baseType: !443, size: 32, offset: 128)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1238, file: !1239, line: 1174, baseType: !442, size: 32, offset: 12160)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1238, file: !1239, line: 1179, baseType: !351, size: 64, offset: 12224)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1238, file: !1239, line: 1182, baseType: !2104, size: 128, offset: 12288)
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1172, line: 76, size: 128, elements: !2105)
!2105 = !{!2106, !2111, !2112}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2104, file: !1172, line: 85, baseType: !2107, size: 64)
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2108, line: 7, size: 64, elements: !2109)
!2108 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2109 = !{!2110}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2107, file: !2108, line: 12, baseType: !1388, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2104, file: !1172, line: 88, baseType: !515, size: 8, offset: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2104, file: !1172, line: 95, baseType: !515, size: 8, offset: 72)
!2113 = !DIDerivedType(tag: DW_TAG_member, scope: !1238, file: !1239, line: 1184, baseType: !2114, size: 128, offset: 12416)
!2114 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1238, file: !1239, line: 1184, size: 128, elements: !2115)
!2115 = !{!2116, !2117}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2114, file: !1239, line: 1185, baseType: !1251, size: 32)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2114, file: !1239, line: 1186, baseType: !392, size: 128, align: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1238, file: !1239, line: 1190, baseType: !2119, size: 64, offset: 12544)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1239, line: 53, flags: DIFlagFwdDecl)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1238, file: !1239, line: 1192, baseType: !2122, size: 128, offset: 12608)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1172, line: 64, size: 128, elements: !2123)
!2123 = !{!2124, !2125, !2126}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2122, file: !1172, line: 65, baseType: !746, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2122, file: !1172, line: 67, baseType: !443, size: 32, offset: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2122, file: !1172, line: 68, baseType: !443, size: 32, offset: 96)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1238, file: !1239, line: 1206, baseType: !228, size: 32, offset: 12736)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1238, file: !1239, line: 1207, baseType: !228, size: 32, offset: 12768)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1238, file: !1239, line: 1209, baseType: !351, size: 64, offset: 12800)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1238, file: !1239, line: 1219, baseType: !446, size: 64, offset: 12864)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1238, file: !1239, line: 1220, baseType: !446, size: 64, offset: 12928)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1238, file: !1239, line: 1317, baseType: !228, size: 32, offset: 12992)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1238, file: !1239, line: 1319, baseType: !1237, size: 64, offset: 13056)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1238, file: !1239, line: 1322, baseType: !2135, size: 64, offset: 13120)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2137, line: 56, size: 512, elements: !2138)
!2137 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2138 = !{!2139, !2140, !2141, !2142, !2143, !2144, !2145, !2147}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2136, file: !2137, line: 57, baseType: !2135, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2136, file: !2137, line: 58, baseType: !168, size: 64, offset: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2136, file: !2137, line: 59, baseType: !351, size: 64, offset: 128)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2136, file: !2137, line: 60, baseType: !351, size: 64, offset: 192)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2136, file: !2137, line: 61, baseType: !845, size: 64, offset: 256)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2136, file: !2137, line: 62, baseType: !7, size: 32, offset: 320)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2136, file: !2137, line: 63, baseType: !2146, size: 64, offset: 384)
!2146 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !170, line: 153, baseType: !446)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2136, file: !2137, line: 64, baseType: !2148, size: 64, offset: 448)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1238, file: !1239, line: 1326, baseType: !1251, size: 32, offset: 13184)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1238, file: !1239, line: 1342, baseType: !168, size: 64, offset: 13248)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1238, file: !1239, line: 1343, baseType: !447, size: 64, offset: 13312)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1238, file: !1239, line: 1344, baseType: !446, size: 64, offset: 13376)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1238, file: !1239, line: 1345, baseType: !447, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1238, file: !1239, line: 1346, baseType: !447, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1238, file: !1239, line: 1347, baseType: !447, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1238, file: !1239, line: 1348, baseType: !392, size: 128, align: 64, offset: 13504)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1238, file: !1239, line: 1358, baseType: !2159, size: 34816, offset: 13824)
!2159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2160, line: 485, size: 34816, elements: !2161)
!2160 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2161 = !{!2162, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2191, !2192, !2193, !2194, !2195, !2196, !2199, !2200, !2201}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2159, file: !2160, line: 487, baseType: !2163, size: 192)
!2163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2164, size: 192, elements: !303)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2165, line: 16, size: 64, elements: !2166)
!2165 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2166 = !{!2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2164, file: !2165, line: 17, baseType: !172, size: 16)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2164, file: !2165, line: 18, baseType: !172, size: 16, offset: 16)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2164, file: !2165, line: 19, baseType: !172, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2164, file: !2165, line: 19, baseType: !172, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2164, file: !2165, line: 19, baseType: !172, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2164, file: !2165, line: 19, baseType: !172, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2164, file: !2165, line: 19, baseType: !172, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2164, file: !2165, line: 20, baseType: !172, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2164, file: !2165, line: 20, baseType: !172, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2164, file: !2165, line: 20, baseType: !172, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2164, file: !2165, line: 20, baseType: !172, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2164, file: !2165, line: 20, baseType: !172, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2164, file: !2165, line: 20, baseType: !172, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2159, file: !2160, line: 491, baseType: !351, size: 64, offset: 192)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2159, file: !2160, line: 495, baseType: !176, size: 16, offset: 256)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2159, file: !2160, line: 496, baseType: !176, size: 16, offset: 272)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2159, file: !2160, line: 497, baseType: !176, size: 16, offset: 288)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2159, file: !2160, line: 498, baseType: !176, size: 16, offset: 304)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2159, file: !2160, line: 502, baseType: !351, size: 64, offset: 320)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2159, file: !2160, line: 503, baseType: !351, size: 64, offset: 384)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2159, file: !2160, line: 514, baseType: !2188, size: 256, offset: 448)
!2188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2189, size: 256, elements: !1176)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2160, line: 483, flags: DIFlagFwdDecl)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2159, file: !2160, line: 516, baseType: !351, size: 64, offset: 704)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2159, file: !2160, line: 518, baseType: !351, size: 64, offset: 768)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2159, file: !2160, line: 520, baseType: !351, size: 64, offset: 832)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2159, file: !2160, line: 521, baseType: !351, size: 64, offset: 896)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2159, file: !2160, line: 522, baseType: !351, size: 64, offset: 960)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2159, file: !2160, line: 528, baseType: !2197, size: 64, offset: 1024)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2160, line: 10, flags: DIFlagFwdDecl)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2159, file: !2160, line: 535, baseType: !351, size: 64, offset: 1088)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2159, file: !2160, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2159, file: !2160, line: 540, baseType: !2202, size: 33280, offset: 1536)
!2202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2203, line: 317, size: 33280, elements: !2204)
!2203 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2204 = !{!2205, !2206, !2207}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2202, file: !2203, line: 330, baseType: !7, size: 32)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2202, file: !2203, line: 337, baseType: !351, size: 64, offset: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2202, file: !2203, line: 348, baseType: !2208, size: 32768, offset: 512)
!2208 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2203, line: 304, size: 32768, elements: !2209)
!2209 = !{!2210, !2225, !2264, !2314, !2327}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2208, file: !2203, line: 305, baseType: !2211, size: 896)
!2211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2203, line: 12, size: 896, elements: !2212)
!2212 = !{!2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2224}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2211, file: !2203, line: 13, baseType: !442, size: 32)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2211, file: !2203, line: 14, baseType: !442, size: 32, offset: 32)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2211, file: !2203, line: 15, baseType: !442, size: 32, offset: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2211, file: !2203, line: 16, baseType: !442, size: 32, offset: 96)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2211, file: !2203, line: 17, baseType: !442, size: 32, offset: 128)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2211, file: !2203, line: 18, baseType: !442, size: 32, offset: 160)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2211, file: !2203, line: 19, baseType: !442, size: 32, offset: 192)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2211, file: !2203, line: 22, baseType: !2221, size: 640, offset: 224)
!2221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 640, elements: !2222)
!2222 = !{!2223}
!2223 = !DISubrange(count: 20)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2211, file: !2203, line: 25, baseType: !442, size: 32, offset: 864)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2208, file: !2203, line: 306, baseType: !2226, size: 4096, align: 128)
!2226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2203, line: 34, size: 4096, align: 128, elements: !2227)
!2227 = !{!2228, !2229, !2230, !2231, !2232, !2247, !2248, !2249, !2253, !2255, !2259}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2226, file: !2203, line: 35, baseType: !172, size: 16)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2226, file: !2203, line: 36, baseType: !172, size: 16, offset: 16)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2226, file: !2203, line: 37, baseType: !172, size: 16, offset: 32)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2226, file: !2203, line: 38, baseType: !172, size: 16, offset: 48)
!2232 = !DIDerivedType(tag: DW_TAG_member, scope: !2226, file: !2203, line: 39, baseType: !2233, size: 128, offset: 64)
!2233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2226, file: !2203, line: 39, size: 128, elements: !2234)
!2234 = !{!2235, !2240}
!2235 = !DIDerivedType(tag: DW_TAG_member, scope: !2233, file: !2203, line: 40, baseType: !2236, size: 128)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2233, file: !2203, line: 40, size: 128, elements: !2237)
!2237 = !{!2238, !2239}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2236, file: !2203, line: 41, baseType: !446, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2236, file: !2203, line: 42, baseType: !446, size: 64, offset: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, scope: !2233, file: !2203, line: 44, baseType: !2241, size: 128)
!2241 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2233, file: !2203, line: 44, size: 128, elements: !2242)
!2242 = !{!2243, !2244, !2245, !2246}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2241, file: !2203, line: 45, baseType: !442, size: 32)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2241, file: !2203, line: 46, baseType: !442, size: 32, offset: 32)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2241, file: !2203, line: 47, baseType: !442, size: 32, offset: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2241, file: !2203, line: 48, baseType: !442, size: 32, offset: 96)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2226, file: !2203, line: 51, baseType: !442, size: 32, offset: 192)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2226, file: !2203, line: 52, baseType: !442, size: 32, offset: 224)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2226, file: !2203, line: 55, baseType: !2250, size: 1024, offset: 256)
!2250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 1024, elements: !2251)
!2251 = !{!2252}
!2252 = !DISubrange(count: 32)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2226, file: !2203, line: 58, baseType: !2254, size: 2048, offset: 1280)
!2254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 2048, elements: !307)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2226, file: !2203, line: 60, baseType: !2256, size: 384, offset: 3328)
!2256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 384, elements: !2257)
!2257 = !{!2258}
!2258 = !DISubrange(count: 12)
!2259 = !DIDerivedType(tag: DW_TAG_member, scope: !2226, file: !2203, line: 62, baseType: !2260, size: 384, offset: 3712)
!2260 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2226, file: !2203, line: 62, size: 384, elements: !2261)
!2261 = !{!2262, !2263}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2260, file: !2203, line: 63, baseType: !2256, size: 384)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2260, file: !2203, line: 64, baseType: !2256, size: 384)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2208, file: !2203, line: 307, baseType: !2265, size: 1088)
!2265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2203, line: 79, size: 1088, elements: !2266)
!2266 = !{!2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2313}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2265, file: !2203, line: 80, baseType: !442, size: 32)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2265, file: !2203, line: 81, baseType: !442, size: 32, offset: 32)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2265, file: !2203, line: 82, baseType: !442, size: 32, offset: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2265, file: !2203, line: 83, baseType: !442, size: 32, offset: 96)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2265, file: !2203, line: 84, baseType: !442, size: 32, offset: 128)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2265, file: !2203, line: 85, baseType: !442, size: 32, offset: 160)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2265, file: !2203, line: 86, baseType: !442, size: 32, offset: 192)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2265, file: !2203, line: 88, baseType: !2221, size: 640, offset: 224)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2265, file: !2203, line: 89, baseType: !1373, size: 8, offset: 864)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2265, file: !2203, line: 90, baseType: !1373, size: 8, offset: 872)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2265, file: !2203, line: 91, baseType: !1373, size: 8, offset: 880)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2265, file: !2203, line: 92, baseType: !1373, size: 8, offset: 888)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2265, file: !2203, line: 93, baseType: !1373, size: 8, offset: 896)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2265, file: !2203, line: 94, baseType: !1373, size: 8, offset: 904)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2265, file: !2203, line: 95, baseType: !2282, size: 64, offset: 960)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2284, line: 11, size: 128, elements: !2285)
!2284 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2285 = !{!2286, !2287}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2283, file: !2284, line: 12, baseType: !337, size: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2283, file: !2284, line: 13, baseType: !2288, size: 64, offset: 64)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2290, line: 56, size: 1344, elements: !2291)
!2290 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2291 = !{!2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2289, file: !2290, line: 61, baseType: !351, size: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2289, file: !2290, line: 62, baseType: !351, size: 64, offset: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2289, file: !2290, line: 63, baseType: !351, size: 64, offset: 128)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2289, file: !2290, line: 64, baseType: !351, size: 64, offset: 192)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2289, file: !2290, line: 65, baseType: !351, size: 64, offset: 256)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2289, file: !2290, line: 66, baseType: !351, size: 64, offset: 320)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2289, file: !2290, line: 68, baseType: !351, size: 64, offset: 384)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2289, file: !2290, line: 69, baseType: !351, size: 64, offset: 448)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2289, file: !2290, line: 70, baseType: !351, size: 64, offset: 512)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2289, file: !2290, line: 71, baseType: !351, size: 64, offset: 576)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2289, file: !2290, line: 72, baseType: !351, size: 64, offset: 640)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2289, file: !2290, line: 73, baseType: !351, size: 64, offset: 704)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2289, file: !2290, line: 74, baseType: !351, size: 64, offset: 768)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2289, file: !2290, line: 75, baseType: !351, size: 64, offset: 832)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2289, file: !2290, line: 76, baseType: !351, size: 64, offset: 896)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2289, file: !2290, line: 81, baseType: !351, size: 64, offset: 960)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2289, file: !2290, line: 83, baseType: !351, size: 64, offset: 1024)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2289, file: !2290, line: 84, baseType: !351, size: 64, offset: 1088)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2289, file: !2290, line: 85, baseType: !351, size: 64, offset: 1152)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2289, file: !2290, line: 86, baseType: !351, size: 64, offset: 1216)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2289, file: !2290, line: 87, baseType: !351, size: 64, offset: 1280)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2265, file: !2203, line: 96, baseType: !442, size: 32, offset: 1024)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2208, file: !2203, line: 308, baseType: !2315, size: 4608, align: 512)
!2315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2203, line: 289, size: 4608, align: 512, elements: !2316)
!2316 = !{!2317, !2318, !2325}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2315, file: !2203, line: 290, baseType: !2226, size: 4096, align: 128)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2315, file: !2203, line: 291, baseType: !2319, size: 512, offset: 4096)
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2203, line: 268, size: 512, elements: !2320)
!2320 = !{!2321, !2322, !2323}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2319, file: !2203, line: 269, baseType: !446, size: 64)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2319, file: !2203, line: 270, baseType: !446, size: 64, offset: 64)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2319, file: !2203, line: 271, baseType: !2324, size: 384, offset: 128)
!2324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 384, elements: !1646)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2315, file: !2203, line: 292, baseType: !2326, offset: 4608)
!2326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1373, elements: !1744)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2208, file: !2203, line: 309, baseType: !2328, size: 32768)
!2328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1373, size: 32768, elements: !2329)
!2329 = !{!2330}
!2330 = !DISubrange(count: 4096)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1234, file: !748, line: 378, baseType: !2332, size: 64, offset: 64)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1230, file: !748, line: 384, baseType: !1523, size: 192, offset: 192)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1001, file: !748, line: 500, baseType: !261, offset: 6656)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1001, file: !748, line: 501, baseType: !2336, size: 64, offset: 6656)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !748, line: 387, flags: DIFlagFwdDecl)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1001, file: !748, line: 516, baseType: !1734, size: 64, offset: 6720)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1001, file: !748, line: 519, baseType: !379, size: 64, offset: 6784)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1001, file: !748, line: 521, baseType: !2341, size: 64, offset: 6848)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !748, line: 521, flags: DIFlagFwdDecl)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1001, file: !748, line: 545, baseType: !772, size: 32, offset: 6912)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1001, file: !748, line: 548, baseType: !515, size: 8, offset: 6944)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1001, file: !748, line: 550, baseType: !2346, offset: 6952)
!2346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2347, line: 142, elements: !275)
!2347 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1001, file: !748, line: 554, baseType: !1978, size: 256, offset: 6976)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1001, file: !748, line: 557, baseType: !442, size: 32, offset: 7232)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !998, file: !748, line: 565, baseType: !2351, offset: 7296)
!2351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, elements: !2352)
!2352 = !{!2353}
!2353 = !DISubrange(count: -1)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !994, file: !748, line: 151, baseType: !772, size: 32)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !987, file: !748, line: 156, baseType: !261, offset: 256)
!2356 = !DIDerivedType(tag: DW_TAG_member, scope: !752, file: !748, line: 159, baseType: !2357, size: 128)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !752, file: !748, line: 159, size: 128, elements: !2358)
!2358 = !{!2359, !2423}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2357, file: !748, line: 161, baseType: !2360, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2362)
!2362 = !{!2363, !2373, !2394, !2395, !2396, !2397, !2398, !2410, !2411, !2412}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2361, file: !31, line: 111, baseType: !2364, size: 384)
!2364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2365)
!2365 = !{!2366, !2368, !2369, !2370, !2371, !2372}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2364, file: !31, line: 20, baseType: !2367, size: 64)
!2367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !351)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2364, file: !31, line: 21, baseType: !2367, size: 64, offset: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2364, file: !31, line: 22, baseType: !2367, size: 64, offset: 128)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2364, file: !31, line: 23, baseType: !351, size: 64, offset: 192)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2364, file: !31, line: 24, baseType: !351, size: 64, offset: 256)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2364, file: !31, line: 25, baseType: !351, size: 64, offset: 320)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2361, file: !31, line: 112, baseType: !2374, size: 64, offset: 384)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2376, line: 105, size: 128, elements: !2377)
!2376 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2377 = !{!2378, !2379}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2375, file: !2376, line: 110, baseType: !351, size: 64)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2375, file: !2376, line: 118, baseType: !2380, size: 64, offset: 64)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2376, line: 95, size: 448, elements: !2382)
!2382 = !{!2383, !2384, !2389, !2390, !2391, !2392, !2393}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2381, file: !2376, line: 96, baseType: !796, size: 64)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2381, file: !2376, line: 97, baseType: !2385, size: 64, offset: 64)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2376, line: 60, baseType: !2387)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{null, !2374}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2381, file: !2376, line: 98, baseType: !2385, size: 64, offset: 128)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2381, file: !2376, line: 99, baseType: !515, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2381, file: !2376, line: 100, baseType: !515, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2381, file: !2376, line: 101, baseType: !392, size: 128, align: 64, offset: 256)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2381, file: !2376, line: 102, baseType: !2374, size: 64, offset: 384)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2361, file: !31, line: 113, baseType: !2375, size: 128, offset: 448)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2361, file: !31, line: 114, baseType: !1523, size: 192, offset: 576)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2361, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2361, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2361, file: !31, line: 117, baseType: !2399, size: 64, offset: 832)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2401)
!2401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2402)
!2402 = !{!2403, !2404, !2408, !2409}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2401, file: !31, line: 73, baseType: !865, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2401, file: !31, line: 78, baseType: !2405, size: 64, offset: 64)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{null, !2360}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2401, file: !31, line: 83, baseType: !2405, size: 64, offset: 128)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2401, file: !31, line: 89, baseType: !1050, size: 64, offset: 192)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2361, file: !31, line: 118, baseType: !168, size: 64, offset: 896)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2361, file: !31, line: 119, baseType: !228, size: 32, offset: 960)
!2412 = !DIDerivedType(tag: DW_TAG_member, scope: !2361, file: !31, line: 120, baseType: !2413, size: 128, offset: 1024)
!2413 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2361, file: !31, line: 120, size: 128, elements: !2414)
!2414 = !{!2415, !2421}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2413, file: !31, line: 121, baseType: !2416, size: 128)
!2416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2417, line: 6, size: 128, elements: !2418)
!2417 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2418 = !{!2419, !2420}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2416, file: !2417, line: 7, baseType: !446, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2416, file: !2417, line: 8, baseType: !446, size: 64, offset: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2413, file: !31, line: 122, baseType: !2422)
!2422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2416, elements: !1744)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2357, file: !748, line: 162, baseType: !168, size: 64, offset: 64)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !752, file: !748, line: 176, baseType: !392, size: 128, align: 64)
!2425 = !DIDerivedType(tag: DW_TAG_member, scope: !747, file: !748, line: 179, baseType: !2426, size: 32, offset: 384)
!2426 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !747, file: !748, line: 179, size: 32, elements: !2427)
!2427 = !{!2428, !2429, !2430, !2431}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2426, file: !748, line: 184, baseType: !772, size: 32)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2426, file: !748, line: 192, baseType: !7, size: 32)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2426, file: !748, line: 194, baseType: !7, size: 32)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2426, file: !748, line: 195, baseType: !228, size: 32)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !747, file: !748, line: 199, baseType: !772, size: 32, offset: 416)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !682, file: !44, line: 1964, baseType: !2434, size: 64, offset: 1344)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{!337, !624, !2437}
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2439, line: 12, size: 256, elements: !2440)
!2439 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2440 = !{!2441, !2442, !2443, !2444, !2445}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2438, file: !2439, line: 13, baseType: !169, size: 32)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2438, file: !2439, line: 16, baseType: !228, size: 32, offset: 32)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2438, file: !2439, line: 23, baseType: !351, size: 64, offset: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2438, file: !2439, line: 30, baseType: !351, size: 64, offset: 128)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2438, file: !2439, line: 33, baseType: !2446, size: 64, offset: 192)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !748, line: 27, flags: DIFlagFwdDecl)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !682, file: !44, line: 1966, baseType: !2434, size: 64, offset: 1408)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !625, file: !44, line: 1424, baseType: !2450, size: 64, offset: 448)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2452)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2453)
!2453 = !{!2454, !2500, !2504, !2508, !2509, !2510, !2511, !2512, !2517, !2522, !2526}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2452, file: !38, line: 323, baseType: !2455, size: 64)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DISubroutineType(types: !2457)
!2457 = !{!228, !2458}
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2460)
!2460 = !{!2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2485, !2486, !2487}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2459, file: !38, line: 295, baseType: !664, size: 128)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2459, file: !38, line: 296, baseType: !248, size: 128, offset: 128)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2459, file: !38, line: 297, baseType: !248, size: 128, offset: 256)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2459, file: !38, line: 298, baseType: !248, size: 128, offset: 384)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2459, file: !38, line: 299, baseType: !1194, size: 192, offset: 512)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2459, file: !38, line: 300, baseType: !261, offset: 704)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2459, file: !38, line: 301, baseType: !772, size: 32, offset: 704)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2459, file: !38, line: 302, baseType: !624, size: 64, offset: 768)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2459, file: !38, line: 303, baseType: !2470, size: 64, offset: 832)
!2470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2471)
!2471 = !{!2472, !2484}
!2472 = !DIDerivedType(tag: DW_TAG_member, scope: !2470, file: !38, line: 69, baseType: !2473, size: 32)
!2473 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2470, file: !38, line: 69, size: 32, elements: !2474)
!2474 = !{!2475, !2476, !2477}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2473, file: !38, line: 70, baseType: !460, size: 32)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2473, file: !38, line: 71, baseType: !468, size: 32)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2473, file: !38, line: 72, baseType: !2478, size: 32)
!2478 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2479, line: 24, baseType: !2480)
!2479 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2479, line: 22, size: 32, elements: !2481)
!2481 = !{!2482}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2480, file: !2479, line: 23, baseType: !2483, size: 32)
!2483 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2479, line: 20, baseType: !466)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2470, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2459, file: !38, line: 304, baseType: !556, size: 64, offset: 896)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2459, file: !38, line: 305, baseType: !351, size: 64, offset: 960)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2459, file: !38, line: 306, baseType: !2488, size: 576, offset: 1024)
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2489)
!2489 = !{!2490, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2488, file: !38, line: 206, baseType: !2491, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !558)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2488, file: !38, line: 207, baseType: !2491, size: 64, offset: 64)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2488, file: !38, line: 208, baseType: !2491, size: 64, offset: 128)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2488, file: !38, line: 209, baseType: !2491, size: 64, offset: 192)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2488, file: !38, line: 210, baseType: !2491, size: 64, offset: 256)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2488, file: !38, line: 211, baseType: !2491, size: 64, offset: 320)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2488, file: !38, line: 212, baseType: !2491, size: 64, offset: 384)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2488, file: !38, line: 213, baseType: !564, size: 64, offset: 448)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2488, file: !38, line: 214, baseType: !564, size: 64, offset: 512)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2452, file: !38, line: 324, baseType: !2501, size: 64, offset: 64)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!2458, !624, !228}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2452, file: !38, line: 325, baseType: !2505, size: 64, offset: 128)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{null, !2458}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2452, file: !38, line: 326, baseType: !2455, size: 64, offset: 192)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2452, file: !38, line: 327, baseType: !2455, size: 64, offset: 256)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2452, file: !38, line: 328, baseType: !2455, size: 64, offset: 320)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2452, file: !38, line: 329, baseType: !710, size: 64, offset: 384)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2452, file: !38, line: 332, baseType: !2513, size: 64, offset: 448)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!2516, !454}
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2452, file: !38, line: 333, baseType: !2518, size: 64, offset: 512)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{!228, !454, !2521}
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2452, file: !38, line: 335, baseType: !2523, size: 64, offset: 576)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{!228, !454, !2516}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2452, file: !38, line: 337, baseType: !2527, size: 64, offset: 640)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!228, !624, !2530}
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !625, file: !44, line: 1425, baseType: !2532, size: 64, offset: 512)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2534)
!2534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2535)
!2535 = !{!2536, !2540, !2541, !2545, !2546, !2547, !2562, !2585, !2589, !2590, !2613}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2534, file: !38, line: 429, baseType: !2537, size: 64)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!228, !624, !228, !228, !574}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2534, file: !38, line: 430, baseType: !710, size: 64, offset: 64)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2534, file: !38, line: 431, baseType: !2542, size: 64, offset: 128)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{!228, !624, !7}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2534, file: !38, line: 432, baseType: !2542, size: 64, offset: 192)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2534, file: !38, line: 433, baseType: !710, size: 64, offset: 256)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2534, file: !38, line: 434, baseType: !2548, size: 64, offset: 320)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!228, !624, !228, !2551}
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2553)
!2553 = !{!2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2552, file: !38, line: 416, baseType: !228, size: 32)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2552, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2552, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2552, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2552, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2552, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2552, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2552, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2534, file: !38, line: 435, baseType: !2563, size: 64, offset: 384)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!228, !624, !2470, !2566}
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2568)
!2568 = !{!2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2567, file: !38, line: 344, baseType: !228, size: 32)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2567, file: !38, line: 345, baseType: !446, size: 64, offset: 64)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2567, file: !38, line: 346, baseType: !446, size: 64, offset: 128)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2567, file: !38, line: 347, baseType: !446, size: 64, offset: 192)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2567, file: !38, line: 348, baseType: !446, size: 64, offset: 256)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2567, file: !38, line: 349, baseType: !446, size: 64, offset: 320)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2567, file: !38, line: 350, baseType: !446, size: 64, offset: 384)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2567, file: !38, line: 351, baseType: !802, size: 64, offset: 448)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2567, file: !38, line: 353, baseType: !802, size: 64, offset: 512)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2567, file: !38, line: 354, baseType: !228, size: 32, offset: 576)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2567, file: !38, line: 355, baseType: !228, size: 32, offset: 608)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2567, file: !38, line: 356, baseType: !446, size: 64, offset: 640)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2567, file: !38, line: 357, baseType: !446, size: 64, offset: 704)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2567, file: !38, line: 358, baseType: !446, size: 64, offset: 768)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2567, file: !38, line: 359, baseType: !802, size: 64, offset: 832)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2567, file: !38, line: 360, baseType: !228, size: 32, offset: 896)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2534, file: !38, line: 436, baseType: !2586, size: 64, offset: 448)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!228, !624, !2530, !2566}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2534, file: !38, line: 438, baseType: !2563, size: 64, offset: 512)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2534, file: !38, line: 439, baseType: !2591, size: 64, offset: 576)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{!228, !624, !2594}
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2596)
!2596 = !{!2597, !2598}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2595, file: !38, line: 410, baseType: !7, size: 32)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2595, file: !38, line: 411, baseType: !2599, size: 1344, offset: 64)
!2599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2600, size: 1344, elements: !303)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2601)
!2601 = !{!2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2612}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2600, file: !38, line: 396, baseType: !7, size: 32)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2600, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2600, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2600, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2600, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2600, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2600, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2600, file: !38, line: 404, baseType: !448, size: 64, offset: 256)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2600, file: !38, line: 405, baseType: !2611, size: 64, offset: 320)
!2611 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !170, line: 126, baseType: !446)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2600, file: !38, line: 406, baseType: !2611, size: 64, offset: 384)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2534, file: !38, line: 440, baseType: !2542, size: 64, offset: 640)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !625, file: !44, line: 1426, baseType: !2615, size: 64, offset: 576)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2617)
!2617 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !625, file: !44, line: 1427, baseType: !351, size: 64, offset: 640)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !625, file: !44, line: 1428, baseType: !351, size: 64, offset: 704)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !625, file: !44, line: 1429, baseType: !351, size: 64, offset: 768)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !625, file: !44, line: 1430, baseType: !409, size: 64, offset: 832)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !625, file: !44, line: 1431, baseType: !792, size: 256, offset: 896)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !625, file: !44, line: 1432, baseType: !228, size: 32, offset: 1152)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !625, file: !44, line: 1433, baseType: !772, size: 32, offset: 1184)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !625, file: !44, line: 1437, baseType: !2626, size: 64, offset: 1216)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2629)
!2629 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !625, file: !44, line: 1449, baseType: !2631, size: 64, offset: 1280)
!2631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !425, line: 34, size: 64, elements: !2632)
!2632 = !{!2633}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2631, file: !425, line: 35, baseType: !428, size: 64)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !625, file: !44, line: 1450, baseType: !248, size: 128, offset: 1344)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !625, file: !44, line: 1451, baseType: !2636, size: 64, offset: 1472)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !625, file: !44, line: 1452, baseType: !1944, size: 64, offset: 1536)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !625, file: !44, line: 1453, baseType: !2640, size: 64, offset: 1600)
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2641 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !625, file: !44, line: 1454, baseType: !664, size: 128, offset: 1664)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !625, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !625, file: !44, line: 1456, baseType: !2645, size: 2432, offset: 1856)
!2645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2646)
!2646 = !{!2647, !2648, !2649, !2651, !2683}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2645, file: !38, line: 519, baseType: !7, size: 32)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2645, file: !38, line: 520, baseType: !792, size: 256, offset: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2645, file: !38, line: 521, baseType: !2650, size: 192, offset: 320)
!2650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, size: 192, elements: !303)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2645, file: !38, line: 522, baseType: !2652, size: 1728, offset: 512)
!2652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2653, size: 1728, elements: !303)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2654)
!2654 = !{!2655, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2653, file: !38, line: 223, baseType: !2656, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2658)
!2658 = !{!2659, !2660, !2673, !2674}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2657, file: !38, line: 444, baseType: !228, size: 32)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2657, file: !38, line: 445, baseType: !2661, size: 64, offset: 64)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2663)
!2663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2664)
!2664 = !{!2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2663, file: !38, line: 311, baseType: !710, size: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2663, file: !38, line: 312, baseType: !710, size: 64, offset: 64)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2663, file: !38, line: 313, baseType: !710, size: 64, offset: 128)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2663, file: !38, line: 314, baseType: !710, size: 64, offset: 192)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2663, file: !38, line: 315, baseType: !2455, size: 64, offset: 256)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2663, file: !38, line: 316, baseType: !2455, size: 64, offset: 320)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2663, file: !38, line: 317, baseType: !2455, size: 64, offset: 384)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2663, file: !38, line: 318, baseType: !2527, size: 64, offset: 448)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2657, file: !38, line: 446, baseType: !221, size: 64, offset: 128)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2657, file: !38, line: 447, baseType: !2656, size: 64, offset: 192)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2653, file: !38, line: 224, baseType: !228, size: 32, offset: 64)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2653, file: !38, line: 226, baseType: !248, size: 128, offset: 128)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2653, file: !38, line: 227, baseType: !351, size: 64, offset: 256)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2653, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2653, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2653, file: !38, line: 230, baseType: !2491, size: 64, offset: 384)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2653, file: !38, line: 231, baseType: !2491, size: 64, offset: 448)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2653, file: !38, line: 232, baseType: !168, size: 64, offset: 512)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2645, file: !38, line: 523, baseType: !2684, size: 192, offset: 2240)
!2684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2661, size: 192, elements: !303)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !625, file: !44, line: 1458, baseType: !2686, size: 2112, offset: 4288)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2687)
!2687 = !{!2688, !2689, !2690}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2686, file: !44, line: 1411, baseType: !228, size: 32)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2686, file: !44, line: 1412, baseType: !1502, size: 128, offset: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2686, file: !44, line: 1413, baseType: !2691, size: 1920, offset: 192)
!2691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2692, size: 1920, elements: !303)
!2692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2693, line: 12, size: 640, elements: !2694)
!2693 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2694 = !{!2695, !2703, !2705, !2710, !2711}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2692, file: !2693, line: 13, baseType: !2696, size: 320)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2697, line: 17, size: 320, elements: !2698)
!2697 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2698 = !{!2699, !2700, !2701, !2702}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2696, file: !2697, line: 18, baseType: !228, size: 32)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2696, file: !2697, line: 19, baseType: !228, size: 32, offset: 32)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2696, file: !2697, line: 20, baseType: !1502, size: 128, offset: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2696, file: !2697, line: 22, baseType: !392, size: 128, align: 64, offset: 192)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2692, file: !2693, line: 14, baseType: !2704, size: 64, offset: 320)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2692, file: !2693, line: 15, baseType: !2706, size: 64, offset: 384)
!2706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2707, line: 16, size: 64, elements: !2708)
!2707 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2708 = !{!2709}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2706, file: !2707, line: 17, baseType: !1237, size: 64)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2692, file: !2693, line: 16, baseType: !1502, size: 128, offset: 448)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2692, file: !2693, line: 17, baseType: !772, size: 32, offset: 576)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !625, file: !44, line: 1465, baseType: !168, size: 64, offset: 6400)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !625, file: !44, line: 1468, baseType: !442, size: 32, offset: 6464)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !625, file: !44, line: 1470, baseType: !564, size: 64, offset: 6528)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !625, file: !44, line: 1471, baseType: !564, size: 64, offset: 6592)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !625, file: !44, line: 1473, baseType: !443, size: 32, offset: 6656)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !625, file: !44, line: 1474, baseType: !2718, size: 64, offset: 6720)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !625, file: !44, line: 1477, baseType: !2721, size: 256, offset: 6784)
!2721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 256, elements: !2251)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !625, file: !44, line: 1478, baseType: !2723, size: 128, offset: 7040)
!2723 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2724, line: 18, baseType: !2725)
!2724 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2725 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2724, line: 16, size: 128, elements: !2726)
!2726 = !{!2727}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2725, file: !2724, line: 17, baseType: !2728, size: 128)
!2728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1374, size: 128, elements: !1756)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !625, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !625, file: !44, line: 1481, baseType: !2731, size: 32, offset: 7200)
!2731 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !170, line: 150, baseType: !7)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !625, file: !44, line: 1487, baseType: !1194, size: 192, offset: 7232)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !625, file: !44, line: 1493, baseType: !219, size: 64, offset: 7424)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !625, file: !44, line: 1495, baseType: !2735, size: 64, offset: 7488)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2737)
!2737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !407, line: 135, size: 1024, align: 512, elements: !2738)
!2738 = !{!2739, !2743, !2744, !2751, !2757, !2761, !2765, !2769, !2770, !2774, !2778, !2783, !2787}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2737, file: !407, line: 136, baseType: !2740, size: 64)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = !DISubroutineType(types: !2742)
!2742 = !{!228, !409, !7}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2737, file: !407, line: 137, baseType: !2740, size: 64, offset: 64)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2737, file: !407, line: 138, baseType: !2745, size: 64, offset: 128)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = !DISubroutineType(types: !2747)
!2747 = !{!228, !2748, !2750}
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !410)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2737, file: !407, line: 139, baseType: !2752, size: 64, offset: 192)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!228, !2748, !7, !219, !2755}
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !433)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2737, file: !407, line: 141, baseType: !2758, size: 64, offset: 256)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!228, !2748}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2737, file: !407, line: 142, baseType: !2762, size: 64, offset: 320)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!228, !409}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2737, file: !407, line: 143, baseType: !2766, size: 64, offset: 384)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{null, !409}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2737, file: !407, line: 144, baseType: !2766, size: 64, offset: 448)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2737, file: !407, line: 145, baseType: !2771, size: 64, offset: 512)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{null, !409, !454}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2737, file: !407, line: 146, baseType: !2775, size: 64, offset: 576)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!302, !409, !302, !228}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2737, file: !407, line: 147, baseType: !2779, size: 64, offset: 640)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{!405, !2782}
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2737, file: !407, line: 148, baseType: !2784, size: 64, offset: 704)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DISubroutineType(types: !2786)
!2786 = !{!228, !574, !515}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2737, file: !407, line: 149, baseType: !2788, size: 64, offset: 768)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{!409, !409, !2791}
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !455)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !625, file: !44, line: 1500, baseType: !228, size: 32, offset: 7552)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !625, file: !44, line: 1502, baseType: !2795, size: 448, offset: 7616)
!2795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2439, line: 60, size: 448, elements: !2796)
!2796 = !{!2797, !2802, !2803, !2804, !2805, !2806, !2807}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2795, file: !2439, line: 61, baseType: !2798, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!351, !2801, !2437}
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2795, file: !2439, line: 63, baseType: !2798, size: 64, offset: 64)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2795, file: !2439, line: 66, baseType: !337, size: 64, offset: 128)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2795, file: !2439, line: 67, baseType: !228, size: 32, offset: 192)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2795, file: !2439, line: 68, baseType: !7, size: 32, offset: 224)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2795, file: !2439, line: 71, baseType: !248, size: 128, offset: 256)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2795, file: !2439, line: 77, baseType: !2808, size: 64, offset: 384)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !625, file: !44, line: 1505, baseType: !796, size: 64, offset: 8064)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !625, file: !44, line: 1508, baseType: !796, size: 64, offset: 8128)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !625, file: !44, line: 1511, baseType: !228, size: 32, offset: 8192)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !625, file: !44, line: 1514, baseType: !932, size: 32, offset: 8224)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !625, file: !44, line: 1517, baseType: !2814, size: 64, offset: 8256)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1979, line: 18, flags: DIFlagFwdDecl)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !625, file: !44, line: 1518, baseType: !660, size: 64, offset: 8320)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !625, file: !44, line: 1525, baseType: !1734, size: 64, offset: 8384)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !625, file: !44, line: 1532, baseType: !2819, size: 64, offset: 8448)
!2819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2820, line: 52, size: 64, elements: !2821)
!2820 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2821 = !{!2822}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2819, file: !2820, line: 53, baseType: !2823, size: 64)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2820, line: 40, size: 256, elements: !2825)
!2825 = !{!2826, !2827, !2832}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2824, file: !2820, line: 42, baseType: !261)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2824, file: !2820, line: 44, baseType: !2828, size: 192)
!2828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2820, line: 28, size: 192, elements: !2829)
!2829 = !{!2830, !2831}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2828, file: !2820, line: 29, baseType: !248, size: 128)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2828, file: !2820, line: 31, baseType: !337, size: 64, offset: 128)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2824, file: !2820, line: 49, baseType: !337, size: 64, offset: 192)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !625, file: !44, line: 1533, baseType: !2819, size: 64, offset: 8512)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !625, file: !44, line: 1534, baseType: !392, size: 128, align: 64, offset: 8576)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !625, file: !44, line: 1535, baseType: !1978, size: 256, offset: 8704)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !625, file: !44, line: 1537, baseType: !1194, size: 192, offset: 8960)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !625, file: !44, line: 1542, baseType: !228, size: 32, offset: 9152)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !625, file: !44, line: 1545, baseType: !261, offset: 9184)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !625, file: !44, line: 1546, baseType: !248, size: 128, offset: 9216)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !625, file: !44, line: 1548, baseType: !261, offset: 9344)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !625, file: !44, line: 1549, baseType: !248, size: 128, offset: 9344)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !455, file: !44, line: 624, baseType: !759, size: 64, offset: 256)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !455, file: !44, line: 631, baseType: !351, size: 64, offset: 320)
!2844 = !DIDerivedType(tag: DW_TAG_member, scope: !455, file: !44, line: 639, baseType: !2845, size: 32, offset: 384)
!2845 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !455, file: !44, line: 639, size: 32, elements: !2846)
!2846 = !{!2847, !2849}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2845, file: !44, line: 640, baseType: !2848, size: 32)
!2848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2845, file: !44, line: 641, baseType: !7, size: 32)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !455, file: !44, line: 643, baseType: !538, size: 32, offset: 416)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !455, file: !44, line: 644, baseType: !556, size: 64, offset: 448)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !455, file: !44, line: 645, baseType: !560, size: 128, offset: 512)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !455, file: !44, line: 646, baseType: !560, size: 128, offset: 640)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !455, file: !44, line: 647, baseType: !560, size: 128, offset: 768)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !455, file: !44, line: 648, baseType: !261, offset: 896)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !455, file: !44, line: 649, baseType: !176, size: 16, offset: 896)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !455, file: !44, line: 650, baseType: !1373, size: 8, offset: 912)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !455, file: !44, line: 651, baseType: !1373, size: 8, offset: 920)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !455, file: !44, line: 652, baseType: !2611, size: 64, offset: 960)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !455, file: !44, line: 659, baseType: !351, size: 64, offset: 1024)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !455, file: !44, line: 660, baseType: !792, size: 256, offset: 1088)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !455, file: !44, line: 662, baseType: !351, size: 64, offset: 1344)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !455, file: !44, line: 663, baseType: !351, size: 64, offset: 1408)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !455, file: !44, line: 665, baseType: !664, size: 128, offset: 1472)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !455, file: !44, line: 666, baseType: !248, size: 128, offset: 1600)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !455, file: !44, line: 675, baseType: !248, size: 128, offset: 1728)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !455, file: !44, line: 676, baseType: !248, size: 128, offset: 1856)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !455, file: !44, line: 677, baseType: !248, size: 128, offset: 1984)
!2869 = !DIDerivedType(tag: DW_TAG_member, scope: !455, file: !44, line: 678, baseType: !2870, size: 128, offset: 2112)
!2870 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !455, file: !44, line: 678, size: 128, elements: !2871)
!2871 = !{!2872, !2873}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2870, file: !44, line: 679, baseType: !660, size: 64)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2870, file: !44, line: 680, baseType: !392, size: 128, align: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !455, file: !44, line: 682, baseType: !798, size: 64, offset: 2240)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !455, file: !44, line: 683, baseType: !798, size: 64, offset: 2304)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !455, file: !44, line: 684, baseType: !772, size: 32, offset: 2368)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !455, file: !44, line: 685, baseType: !772, size: 32, offset: 2400)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !455, file: !44, line: 686, baseType: !772, size: 32, offset: 2432)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !455, file: !44, line: 688, baseType: !772, size: 32, offset: 2464)
!2880 = !DIDerivedType(tag: DW_TAG_member, scope: !455, file: !44, line: 690, baseType: !2881, size: 64, offset: 2496)
!2881 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !455, file: !44, line: 690, size: 64, elements: !2882)
!2882 = !{!2883, !3106}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2881, file: !44, line: 691, baseType: !2884, size: 64)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2886)
!2886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2887)
!2887 = !{!2888, !2889, !2893, !2898, !2902, !2903, !2904, !2908, !2921, !2922, !2930, !2934, !2935, !2939, !2940, !2944, !2949, !2950, !2954, !2958, !3066, !3070, !3071, !3075, !3076, !3080, !3084, !3089, !3093, !3097, !3101, !3105}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2886, file: !44, line: 1823, baseType: !221, size: 64)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2886, file: !44, line: 1824, baseType: !2890, size: 64, offset: 64)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = !DISubroutineType(types: !2892)
!2892 = !{!556, !379, !556, !228}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2886, file: !44, line: 1825, baseType: !2894, size: 64, offset: 128)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!333, !379, !302, !348, !2897}
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2886, file: !44, line: 1826, baseType: !2899, size: 64, offset: 192)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{!333, !379, !219, !348, !2897}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2886, file: !44, line: 1827, baseType: !869, size: 64, offset: 256)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2886, file: !44, line: 1828, baseType: !869, size: 64, offset: 320)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2886, file: !44, line: 1829, baseType: !2905, size: 64, offset: 384)
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{!228, !872, !515}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2886, file: !44, line: 1830, baseType: !2909, size: 64, offset: 448)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{!228, !379, !2912}
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2914)
!2914 = !{!2915, !2920}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2913, file: !44, line: 1777, baseType: !2916, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2917)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!228, !2912, !219, !228, !556, !446, !7}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2913, file: !44, line: 1778, baseType: !556, size: 64, offset: 64)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2886, file: !44, line: 1831, baseType: !2909, size: 64, offset: 512)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2886, file: !44, line: 1832, baseType: !2923, size: 64, offset: 576)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = !DISubroutineType(types: !2925)
!2925 = !{!2926, !379, !2928}
!2926 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2927, line: 52, baseType: !7)
!2927 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !644, line: 27, flags: DIFlagFwdDecl)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2886, file: !44, line: 1833, baseType: !2931, size: 64, offset: 640)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{!337, !379, !7, !351}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2886, file: !44, line: 1834, baseType: !2931, size: 64, offset: 704)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2886, file: !44, line: 1835, baseType: !2936, size: 64, offset: 768)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{!228, !379, !1004}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2886, file: !44, line: 1836, baseType: !351, size: 64, offset: 832)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2886, file: !44, line: 1837, baseType: !2941, size: 64, offset: 896)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{!228, !454, !379}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2886, file: !44, line: 1838, baseType: !2945, size: 64, offset: 960)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DISubroutineType(types: !2947)
!2947 = !{!228, !379, !2948}
!2948 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !168)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2886, file: !44, line: 1839, baseType: !2941, size: 64, offset: 1024)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2886, file: !44, line: 1840, baseType: !2951, size: 64, offset: 1088)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{!228, !379, !556, !556, !228}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2886, file: !44, line: 1841, baseType: !2955, size: 64, offset: 1152)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{!228, !228, !379, !228}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2886, file: !44, line: 1842, baseType: !2959, size: 64, offset: 1216)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{!228, !379, !228, !2962}
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2964)
!2964 = !{!2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2996, !2997, !2998, !3011, !3042}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2963, file: !44, line: 1063, baseType: !2962, size: 64)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2963, file: !44, line: 1064, baseType: !248, size: 128, offset: 64)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2963, file: !44, line: 1065, baseType: !664, size: 128, offset: 192)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2963, file: !44, line: 1066, baseType: !248, size: 128, offset: 320)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2963, file: !44, line: 1069, baseType: !248, size: 128, offset: 448)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2963, file: !44, line: 1072, baseType: !2948, size: 64, offset: 576)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2963, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2963, file: !44, line: 1074, baseType: !452, size: 8, offset: 672)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2963, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2963, file: !44, line: 1076, baseType: !228, size: 32, offset: 736)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2963, file: !44, line: 1077, baseType: !1502, size: 128, offset: 768)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2963, file: !44, line: 1078, baseType: !379, size: 64, offset: 896)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2963, file: !44, line: 1079, baseType: !556, size: 64, offset: 960)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2963, file: !44, line: 1080, baseType: !556, size: 64, offset: 1024)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2963, file: !44, line: 1082, baseType: !2980, size: 64, offset: 1088)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2982)
!2982 = !{!2983, !2991, !2992, !2993, !2994, !2995}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2981, file: !44, line: 1315, baseType: !2984)
!2984 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2985, line: 20, baseType: !2986)
!2985 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2986 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2985, line: 11, elements: !2987)
!2987 = !{!2988}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2986, file: !2985, line: 12, baseType: !2989)
!2989 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !273, line: 33, baseType: !2990)
!2990 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !273, line: 31, elements: !275)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2981, file: !44, line: 1316, baseType: !228, size: 32)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2981, file: !44, line: 1317, baseType: !228, size: 32, offset: 32)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2981, file: !44, line: 1318, baseType: !2980, size: 64, offset: 64)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2981, file: !44, line: 1319, baseType: !379, size: 64, offset: 128)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2981, file: !44, line: 1320, baseType: !392, size: 128, align: 64, offset: 192)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2963, file: !44, line: 1084, baseType: !351, size: 64, offset: 1152)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2963, file: !44, line: 1085, baseType: !351, size: 64, offset: 1216)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2963, file: !44, line: 1087, baseType: !2999, size: 64, offset: 1280)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3001)
!3001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !3002)
!3002 = !{!3003, !3007}
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3001, file: !44, line: 1012, baseType: !3004, size: 64)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{null, !2962, !2962}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3001, file: !44, line: 1013, baseType: !3008, size: 64, offset: 64)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{null, !2962}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2963, file: !44, line: 1088, baseType: !3012, size: 64, offset: 1344)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3014)
!3014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !3015)
!3015 = !{!3016, !3020, !3024, !3025, !3029, !3033, !3037, !3041}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3014, file: !44, line: 1017, baseType: !3017, size: 64)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{!2948, !2948}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3014, file: !44, line: 1018, baseType: !3021, size: 64, offset: 64)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = !DISubroutineType(types: !3023)
!3023 = !{null, !2948}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3014, file: !44, line: 1019, baseType: !3008, size: 64, offset: 128)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3014, file: !44, line: 1020, baseType: !3026, size: 64, offset: 192)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{!228, !2962, !228}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3014, file: !44, line: 1021, baseType: !3030, size: 64, offset: 256)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{!515, !2962}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3014, file: !44, line: 1022, baseType: !3034, size: 64, offset: 320)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!228, !2962, !228, !251}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3014, file: !44, line: 1023, baseType: !3038, size: 64, offset: 384)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{null, !2962, !846}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3014, file: !44, line: 1024, baseType: !3030, size: 64, offset: 448)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2963, file: !44, line: 1097, baseType: !3043, size: 256, offset: 1408)
!3043 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2963, file: !44, line: 1089, size: 256, elements: !3044)
!3044 = !{!3045, !3054, !3060}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3043, file: !44, line: 1090, baseType: !3046, size: 256)
!3046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3047, line: 10, size: 256, elements: !3048)
!3047 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3048 = !{!3049, !3050, !3053}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3046, file: !3047, line: 11, baseType: !442, size: 32)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3046, file: !3047, line: 12, baseType: !3051, size: 64, offset: 64)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3047, line: 5, flags: DIFlagFwdDecl)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3046, file: !3047, line: 13, baseType: !248, size: 128, offset: 128)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3043, file: !44, line: 1091, baseType: !3055, size: 64)
!3055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3047, line: 17, size: 64, elements: !3056)
!3056 = !{!3057}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3055, file: !3047, line: 18, baseType: !3058, size: 64)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3047, line: 16, flags: DIFlagFwdDecl)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3043, file: !44, line: 1096, baseType: !3061, size: 192)
!3061 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3043, file: !44, line: 1092, size: 192, elements: !3062)
!3062 = !{!3063, !3064, !3065}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3061, file: !44, line: 1093, baseType: !248, size: 128)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3061, file: !44, line: 1094, baseType: !228, size: 32, offset: 128)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3061, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2886, file: !44, line: 1843, baseType: !3067, size: 64, offset: 1280)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{!333, !379, !746, !228, !348, !2897, !228}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2886, file: !44, line: 1844, baseType: !1124, size: 64, offset: 1344)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2886, file: !44, line: 1845, baseType: !3072, size: 64, offset: 1408)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{!228, !228}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2886, file: !44, line: 1846, baseType: !2959, size: 64, offset: 1472)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2886, file: !44, line: 1847, baseType: !3077, size: 64, offset: 1536)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{!333, !2119, !379, !2897, !348, !7}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2886, file: !44, line: 1848, baseType: !3081, size: 64, offset: 1600)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{!333, !379, !2897, !2119, !348, !7}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2886, file: !44, line: 1849, baseType: !3085, size: 64, offset: 1664)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!228, !379, !337, !3088, !846}
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2886, file: !44, line: 1850, baseType: !3090, size: 64, offset: 1728)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{!337, !379, !228, !556, !556}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2886, file: !44, line: 1852, baseType: !3094, size: 64, offset: 1792)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = !DISubroutineType(types: !3096)
!3096 = !{null, !736, !379}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2886, file: !44, line: 1856, baseType: !3098, size: 64, offset: 1856)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!333, !379, !556, !379, !556, !348, !7}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2886, file: !44, line: 1858, baseType: !3102, size: 64, offset: 1920)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{!556, !379, !556, !379, !556, !556, !7}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2886, file: !44, line: 1861, baseType: !2951, size: 64, offset: 1984)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2881, file: !44, line: 692, baseType: !689, size: 64)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !455, file: !44, line: 694, baseType: !3108, size: 64, offset: 2560)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3110)
!3110 = !{!3111, !3112, !3113, !3114}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3109, file: !44, line: 1101, baseType: !261)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3109, file: !44, line: 1102, baseType: !248, size: 128)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3109, file: !44, line: 1103, baseType: !248, size: 128, offset: 128)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3109, file: !44, line: 1104, baseType: !248, size: 128, offset: 256)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !455, file: !44, line: 695, baseType: !760, size: 1216, align: 64, offset: 2624)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !455, file: !44, line: 696, baseType: !248, size: 128, offset: 3840)
!3117 = !DIDerivedType(tag: DW_TAG_member, scope: !455, file: !44, line: 697, baseType: !3118, size: 64, offset: 3968)
!3118 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !455, file: !44, line: 697, size: 64, elements: !3119)
!3119 = !{!3120, !3121, !3122, !3125, !3126}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3118, file: !44, line: 698, baseType: !2119, size: 64)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3118, file: !44, line: 699, baseType: !2636, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3118, file: !44, line: 700, baseType: !3123, size: 64)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3118, file: !44, line: 701, baseType: !302, size: 64)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3118, file: !44, line: 702, baseType: !7, size: 32)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !455, file: !44, line: 705, baseType: !443, size: 32, offset: 4032)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !455, file: !44, line: 708, baseType: !443, size: 32, offset: 4064)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !455, file: !44, line: 709, baseType: !2718, size: 64, offset: 4096)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !455, file: !44, line: 720, baseType: !168, size: 64, offset: 4160)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !410, file: !407, line: 98, baseType: !3132, size: 256, offset: 448)
!3132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 256, elements: !2251)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !410, file: !407, line: 101, baseType: !3134, size: 32, offset: 704)
!3134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3135, line: 25, size: 32, elements: !3136)
!3135 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3136 = !{!3137}
!3137 = !DIDerivedType(tag: DW_TAG_member, scope: !3134, file: !3135, line: 26, baseType: !3138, size: 32)
!3138 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3134, file: !3135, line: 26, size: 32, elements: !3139)
!3139 = !{!3140}
!3140 = !DIDerivedType(tag: DW_TAG_member, scope: !3138, file: !3135, line: 30, baseType: !3141, size: 32)
!3141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3138, file: !3135, line: 30, size: 32, elements: !3142)
!3142 = !{!3143, !3144}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3141, file: !3135, line: 31, baseType: !261)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3141, file: !3135, line: 32, baseType: !228, size: 32)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !410, file: !407, line: 102, baseType: !2735, size: 64, offset: 768)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !410, file: !407, line: 103, baseType: !624, size: 64, offset: 832)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !410, file: !407, line: 104, baseType: !351, size: 64, offset: 896)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !410, file: !407, line: 105, baseType: !168, size: 64, offset: 960)
!3149 = !DIDerivedType(tag: DW_TAG_member, scope: !410, file: !407, line: 107, baseType: !3150, size: 128, offset: 1024)
!3150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !410, file: !407, line: 107, size: 128, elements: !3151)
!3151 = !{!3152, !3153}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3150, file: !407, line: 108, baseType: !248, size: 128)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3150, file: !407, line: 109, baseType: !3154, size: 64)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !410, file: !407, line: 111, baseType: !248, size: 128, offset: 1152)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !410, file: !407, line: 112, baseType: !248, size: 128, offset: 1280)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !410, file: !407, line: 120, baseType: !3158, size: 128, offset: 1408)
!3158 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !410, file: !407, line: 116, size: 128, elements: !3159)
!3159 = !{!3160, !3161, !3162}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3158, file: !407, line: 117, baseType: !664, size: 128)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3158, file: !407, line: 118, baseType: !424, size: 128)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3158, file: !407, line: 119, baseType: !392, size: 128, align: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !380, file: !44, line: 922, baseType: !454, size: 64, offset: 256)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !380, file: !44, line: 923, baseType: !2884, size: 64, offset: 320)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !380, file: !44, line: 929, baseType: !261, offset: 384)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !380, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !380, file: !44, line: 931, baseType: !796, size: 64, offset: 448)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !380, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !380, file: !44, line: 933, baseType: !2731, size: 32, offset: 544)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !380, file: !44, line: 934, baseType: !1194, size: 192, offset: 576)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !380, file: !44, line: 935, baseType: !556, size: 64, offset: 768)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !380, file: !44, line: 936, baseType: !3173, size: 192, offset: 832)
!3173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3174)
!3174 = !{!3175, !3176, !3177, !3178, !3179, !3180}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3173, file: !44, line: 886, baseType: !2984)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3173, file: !44, line: 887, baseType: !1492, size: 64)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3173, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3173, file: !44, line: 889, baseType: !460, size: 32, offset: 96)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3173, file: !44, line: 889, baseType: !460, size: 32, offset: 128)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3173, file: !44, line: 890, baseType: !228, size: 32, offset: 160)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !380, file: !44, line: 937, baseType: !1568, size: 64, offset: 1024)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !380, file: !44, line: 938, baseType: !3183, size: 256, offset: 1088)
!3183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3184)
!3184 = !{!3185, !3186, !3187, !3188, !3189, !3190}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3183, file: !44, line: 897, baseType: !351, size: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3183, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3183, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3183, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3183, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3183, file: !44, line: 904, baseType: !556, size: 64, offset: 192)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !380, file: !44, line: 940, baseType: !446, size: 64, offset: 1344)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !380, file: !44, line: 945, baseType: !168, size: 64, offset: 1408)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !380, file: !44, line: 949, baseType: !248, size: 128, offset: 1472)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !380, file: !44, line: 950, baseType: !248, size: 128, offset: 1600)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !380, file: !44, line: 952, baseType: !759, size: 64, offset: 1728)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !380, file: !44, line: 953, baseType: !932, size: 32, offset: 1792)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !380, file: !44, line: 954, baseType: !932, size: 32, offset: 1824)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !370, file: !327, line: 174, baseType: !376, size: 64, offset: 320)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !370, file: !327, line: 176, baseType: !3200, size: 64, offset: 384)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{!228, !379, !254, !369, !1004}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !358, file: !327, line: 90, baseType: !353, size: 64, offset: 192)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !358, file: !327, line: 91, baseType: !3205, size: 64, offset: 256)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !317, file: !244, line: 143, baseType: !3207, size: 64, offset: 256)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = !DISubroutineType(types: !3209)
!3209 = !{!3210, !254}
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3212)
!3212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3213)
!3213 = !{!3214, !3215, !3219, !3223, !3229, !3233}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3212, file: !61, line: 40, baseType: !60, size: 32)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3212, file: !61, line: 41, baseType: !3216, size: 64, offset: 64)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DISubroutineType(types: !3218)
!3218 = !{!515}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3212, file: !61, line: 42, baseType: !3220, size: 64, offset: 128)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = !DISubroutineType(types: !3222)
!3222 = !{!168}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3212, file: !61, line: 43, baseType: !3224, size: 64, offset: 192)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!2148, !3227}
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3212, file: !61, line: 44, baseType: !3230, size: 64, offset: 256)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!2148}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3212, file: !61, line: 45, baseType: !493, size: 64, offset: 320)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !317, file: !244, line: 144, baseType: !3235, size: 64, offset: 320)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{!2148, !254}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !317, file: !244, line: 145, baseType: !3239, size: 64, offset: 384)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{null, !254, !3242, !3243}
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !243, file: !244, line: 70, baseType: !3245, size: 64, offset: 384)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !644, line: 123, size: 1024, elements: !3247)
!3247 = !{!3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3376, !3377, !3378, !3379, !3380}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3246, file: !644, line: 124, baseType: !772, size: 32)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3246, file: !644, line: 125, baseType: !772, size: 32, offset: 32)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3246, file: !644, line: 135, baseType: !3245, size: 64, offset: 64)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3246, file: !644, line: 136, baseType: !219, size: 64, offset: 128)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3246, file: !644, line: 138, baseType: !785, size: 192, align: 64, offset: 192)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3246, file: !644, line: 140, baseType: !2148, size: 64, offset: 384)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3246, file: !644, line: 141, baseType: !7, size: 32, offset: 448)
!3255 = !DIDerivedType(tag: DW_TAG_member, scope: !3246, file: !644, line: 142, baseType: !3256, size: 256, offset: 512)
!3256 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3246, file: !644, line: 142, size: 256, elements: !3257)
!3257 = !{!3258, !3304, !3308}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3256, file: !644, line: 143, baseType: !3259, size: 192)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !644, line: 91, size: 192, elements: !3260)
!3260 = !{!3261, !3262, !3263}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3259, file: !644, line: 92, baseType: !351, size: 64)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3259, file: !644, line: 94, baseType: !781, size: 64, offset: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3259, file: !644, line: 100, baseType: !3264, size: 64, offset: 128)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !644, line: 180, size: 704, elements: !3266)
!3266 = !{!3267, !3268, !3269, !3276, !3277, !3278, !3302, !3303}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3265, file: !644, line: 182, baseType: !3245, size: 64)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3265, file: !644, line: 183, baseType: !7, size: 32, offset: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3265, file: !644, line: 186, baseType: !3270, size: 192, offset: 128)
!3270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3271, line: 19, size: 192, elements: !3272)
!3271 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3272 = !{!3273, !3274, !3275}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3270, file: !3271, line: 20, baseType: !764, size: 128)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3270, file: !3271, line: 21, baseType: !7, size: 32, offset: 128)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3270, file: !3271, line: 22, baseType: !7, size: 32, offset: 160)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3265, file: !644, line: 187, baseType: !442, size: 32, offset: 320)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3265, file: !644, line: 188, baseType: !442, size: 32, offset: 352)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3265, file: !644, line: 189, baseType: !3279, size: 64, offset: 384)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !644, line: 168, size: 320, elements: !3281)
!3281 = !{!3282, !3286, !3290, !3294, !3298}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3280, file: !644, line: 169, baseType: !3283, size: 64)
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{!228, !736, !3264}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3280, file: !644, line: 171, baseType: !3287, size: 64, offset: 64)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = !DISubroutineType(types: !3289)
!3289 = !{!228, !3245, !219, !343}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3280, file: !644, line: 173, baseType: !3291, size: 64, offset: 128)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{!228, !3245}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3280, file: !644, line: 174, baseType: !3295, size: 64, offset: 192)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = !DISubroutineType(types: !3297)
!3297 = !{!228, !3245, !3245, !219}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3280, file: !644, line: 176, baseType: !3299, size: 64, offset: 256)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = !DISubroutineType(types: !3301)
!3301 = !{!228, !736, !3245, !3264}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3265, file: !644, line: 192, baseType: !248, size: 128, offset: 448)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3265, file: !644, line: 194, baseType: !1502, size: 128, offset: 576)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3256, file: !644, line: 144, baseType: !3305, size: 64)
!3305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !644, line: 103, size: 64, elements: !3306)
!3306 = !{!3307}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3305, file: !644, line: 104, baseType: !3245, size: 64)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3256, file: !644, line: 145, baseType: !3309, size: 256)
!3309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !644, line: 107, size: 256, elements: !3310)
!3310 = !{!3311, !3371, !3374, !3375}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3309, file: !644, line: 108, baseType: !3312, size: 64)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3314)
!3314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !644, line: 217, size: 768, elements: !3315)
!3315 = !{!3316, !3336, !3340, !3344, !3348, !3352, !3356, !3360, !3361, !3362, !3363, !3367}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3314, file: !644, line: 222, baseType: !3317, size: 64)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = !DISubroutineType(types: !3319)
!3319 = !{!228, !3320}
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !644, line: 197, size: 1088, elements: !3322)
!3322 = !{!3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3321, file: !644, line: 199, baseType: !3245, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3321, file: !644, line: 200, baseType: !379, size: 64, offset: 64)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3321, file: !644, line: 201, baseType: !736, size: 64, offset: 128)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3321, file: !644, line: 202, baseType: !168, size: 64, offset: 192)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3321, file: !644, line: 205, baseType: !1194, size: 192, offset: 256)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3321, file: !644, line: 206, baseType: !1194, size: 192, offset: 448)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3321, file: !644, line: 207, baseType: !228, size: 32, offset: 640)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3321, file: !644, line: 208, baseType: !248, size: 128, offset: 704)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3321, file: !644, line: 209, baseType: !302, size: 64, offset: 832)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3321, file: !644, line: 211, baseType: !348, size: 64, offset: 896)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3321, file: !644, line: 212, baseType: !515, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3321, file: !644, line: 213, baseType: !515, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3321, file: !644, line: 214, baseType: !1032, size: 64, offset: 1024)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3314, file: !644, line: 223, baseType: !3337, size: 64, offset: 64)
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = !DISubroutineType(types: !3339)
!3339 = !{null, !3320}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3314, file: !644, line: 236, baseType: !3341, size: 64, offset: 128)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = !DISubroutineType(types: !3343)
!3343 = !{!228, !736, !168}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3314, file: !644, line: 238, baseType: !3345, size: 64, offset: 192)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = !DISubroutineType(types: !3347)
!3347 = !{!168, !736, !2897}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3314, file: !644, line: 239, baseType: !3349, size: 64, offset: 256)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!168, !736, !168, !2897}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3314, file: !644, line: 240, baseType: !3353, size: 64, offset: 320)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DISubroutineType(types: !3355)
!3355 = !{null, !736, !168}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3314, file: !644, line: 242, baseType: !3357, size: 64, offset: 384)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{!333, !3320, !302, !348, !556}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3314, file: !644, line: 252, baseType: !348, size: 64, offset: 448)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3314, file: !644, line: 259, baseType: !515, size: 8, offset: 512)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3314, file: !644, line: 260, baseType: !3357, size: 64, offset: 576)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3314, file: !644, line: 263, baseType: !3364, size: 64, offset: 640)
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{!2926, !3320, !2928}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3314, file: !644, line: 266, baseType: !3368, size: 64, offset: 704)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = !DISubroutineType(types: !3370)
!3370 = !{!228, !3320, !1004}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3309, file: !644, line: 109, baseType: !3372, size: 64, offset: 64)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !644, line: 31, flags: DIFlagFwdDecl)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3309, file: !644, line: 110, baseType: !556, size: 64, offset: 128)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3309, file: !644, line: 111, baseType: !3245, size: 64, offset: 192)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3246, file: !644, line: 148, baseType: !168, size: 64, offset: 768)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3246, file: !644, line: 154, baseType: !446, size: 64, offset: 832)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3246, file: !644, line: 156, baseType: !176, size: 16, offset: 896)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3246, file: !644, line: 157, baseType: !343, size: 16, offset: 912)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3246, file: !644, line: 158, baseType: !3381, size: 64, offset: 960)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !644, line: 32, flags: DIFlagFwdDecl)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !243, file: !244, line: 71, baseType: !3384, size: 32, offset: 448)
!3384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3385, line: 19, size: 32, elements: !3386)
!3385 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3386 = !{!3387}
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3384, file: !3385, line: 20, baseType: !1251, size: 32)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !243, file: !244, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !243, file: !244, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !243, file: !244, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !243, file: !244, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !243, file: !244, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !240, file: !73, line: 463, baseType: !239, size: 64, offset: 512)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !240, file: !73, line: 465, baseType: !3395, size: 64, offset: 576)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !240, file: !73, line: 467, baseType: !219, size: 64, offset: 640)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !240, file: !73, line: 468, baseType: !3399, size: 64, offset: 704)
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3401)
!3401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3402)
!3402 = !{!3403, !3404, !3405, !3409, !3414, !3418}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3401, file: !73, line: 88, baseType: !219, size: 64)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3401, file: !73, line: 89, baseType: !355, size: 64, offset: 64)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3401, file: !73, line: 90, baseType: !3406, size: 64, offset: 128)
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{!228, !239, !297}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3401, file: !73, line: 91, baseType: !3410, size: 64, offset: 192)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{!302, !239, !3413, !3242, !3243}
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3401, file: !73, line: 93, baseType: !3415, size: 64, offset: 256)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{null, !239}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3401, file: !73, line: 95, baseType: !3419, size: 64, offset: 320)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3421)
!3421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3422)
!3422 = !{!3423, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3421, file: !80, line: 279, baseType: !3424, size: 64)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = !DISubroutineType(types: !3426)
!3426 = !{!228, !239}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3421, file: !80, line: 280, baseType: !3415, size: 64, offset: 64)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3421, file: !80, line: 281, baseType: !3424, size: 64, offset: 128)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3421, file: !80, line: 282, baseType: !3424, size: 64, offset: 192)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3421, file: !80, line: 283, baseType: !3424, size: 64, offset: 256)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3421, file: !80, line: 284, baseType: !3424, size: 64, offset: 320)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3421, file: !80, line: 285, baseType: !3424, size: 64, offset: 384)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3421, file: !80, line: 286, baseType: !3424, size: 64, offset: 448)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3421, file: !80, line: 287, baseType: !3424, size: 64, offset: 512)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3421, file: !80, line: 288, baseType: !3424, size: 64, offset: 576)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3421, file: !80, line: 289, baseType: !3424, size: 64, offset: 640)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3421, file: !80, line: 290, baseType: !3424, size: 64, offset: 704)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3421, file: !80, line: 291, baseType: !3424, size: 64, offset: 768)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3421, file: !80, line: 292, baseType: !3424, size: 64, offset: 832)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3421, file: !80, line: 293, baseType: !3424, size: 64, offset: 896)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3421, file: !80, line: 294, baseType: !3424, size: 64, offset: 960)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3421, file: !80, line: 295, baseType: !3424, size: 64, offset: 1024)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3421, file: !80, line: 296, baseType: !3424, size: 64, offset: 1088)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3421, file: !80, line: 297, baseType: !3424, size: 64, offset: 1152)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3421, file: !80, line: 298, baseType: !3424, size: 64, offset: 1216)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3421, file: !80, line: 299, baseType: !3424, size: 64, offset: 1280)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3421, file: !80, line: 300, baseType: !3424, size: 64, offset: 1344)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3421, file: !80, line: 301, baseType: !3424, size: 64, offset: 1408)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !240, file: !73, line: 470, baseType: !3450, size: 64, offset: 768)
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3452, line: 82, size: 1408, elements: !3453)
!3452 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3453 = !{!3454, !3455, !3456, !3457, !3458, !3459, !3460, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3535, !3538, !3539}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3451, file: !3452, line: 83, baseType: !219, size: 64)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3451, file: !3452, line: 84, baseType: !219, size: 64, offset: 64)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3451, file: !3452, line: 85, baseType: !239, size: 64, offset: 128)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3451, file: !3452, line: 86, baseType: !355, size: 64, offset: 192)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3451, file: !3452, line: 87, baseType: !355, size: 64, offset: 256)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3451, file: !3452, line: 88, baseType: !355, size: 64, offset: 320)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3451, file: !3452, line: 90, baseType: !3461, size: 64, offset: 384)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = !DISubroutineType(types: !3463)
!3463 = !{!228, !239, !3464}
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3466)
!3466 = !{!3467, !3468, !3469, !3470, !3471, !3472, !3473, !3486, !3499, !3500, !3501, !3502, !3503, !3511, !3512, !3513, !3514, !3515, !3516}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3465, file: !67, line: 96, baseType: !219, size: 64)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3465, file: !67, line: 97, baseType: !3450, size: 64, offset: 64)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3465, file: !67, line: 99, baseType: !221, size: 64, offset: 128)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3465, file: !67, line: 100, baseType: !219, size: 64, offset: 192)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3465, file: !67, line: 102, baseType: !515, size: 8, offset: 256)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3465, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3465, file: !67, line: 105, baseType: !3474, size: 64, offset: 320)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3476)
!3476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3477, line: 262, size: 1600, elements: !3478)
!3477 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3478 = !{!3479, !3480, !3481, !3485}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3476, file: !3477, line: 263, baseType: !2721, size: 256)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3476, file: !3477, line: 264, baseType: !2721, size: 256, offset: 256)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3476, file: !3477, line: 265, baseType: !3482, size: 1024, offset: 512)
!3482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 1024, elements: !3483)
!3483 = !{!3484}
!3484 = !DISubrange(count: 128)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3476, file: !3477, line: 266, baseType: !2148, size: 64, offset: 1536)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3465, file: !67, line: 106, baseType: !3487, size: 64, offset: 384)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3489)
!3489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3477, line: 210, size: 256, elements: !3490)
!3490 = !{!3491, !3495, !3497, !3498}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3489, file: !3477, line: 211, baseType: !3492, size: 72)
!3492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1374, size: 72, elements: !3493)
!3493 = !{!3494}
!3494 = !DISubrange(count: 9)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3489, file: !3477, line: 212, baseType: !3496, size: 64, offset: 128)
!3496 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3477, line: 14, baseType: !351)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3489, file: !3477, line: 213, baseType: !443, size: 32, offset: 192)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3489, file: !3477, line: 214, baseType: !443, size: 32, offset: 224)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3465, file: !67, line: 108, baseType: !3424, size: 64, offset: 448)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3465, file: !67, line: 109, baseType: !3415, size: 64, offset: 512)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3465, file: !67, line: 110, baseType: !3424, size: 64, offset: 576)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3465, file: !67, line: 111, baseType: !3415, size: 64, offset: 640)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3465, file: !67, line: 112, baseType: !3504, size: 64, offset: 704)
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3505 = !DISubroutineType(types: !3506)
!3506 = !{!228, !239, !3507}
!3507 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3508)
!3508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3509)
!3509 = !{!3510}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3508, file: !80, line: 51, baseType: !228, size: 32)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3465, file: !67, line: 113, baseType: !3424, size: 64, offset: 768)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3465, file: !67, line: 114, baseType: !355, size: 64, offset: 832)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3465, file: !67, line: 115, baseType: !355, size: 64, offset: 896)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3465, file: !67, line: 117, baseType: !3419, size: 64, offset: 960)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3465, file: !67, line: 118, baseType: !3415, size: 64, offset: 1024)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3465, file: !67, line: 120, baseType: !3517, size: 64, offset: 1088)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3451, file: !3452, line: 91, baseType: !3406, size: 64, offset: 448)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3451, file: !3452, line: 92, baseType: !3424, size: 64, offset: 512)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3451, file: !3452, line: 93, baseType: !3415, size: 64, offset: 576)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3451, file: !3452, line: 94, baseType: !3424, size: 64, offset: 640)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3451, file: !3452, line: 95, baseType: !3415, size: 64, offset: 704)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3451, file: !3452, line: 97, baseType: !3424, size: 64, offset: 768)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3451, file: !3452, line: 98, baseType: !3424, size: 64, offset: 832)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3451, file: !3452, line: 100, baseType: !3504, size: 64, offset: 896)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3451, file: !3452, line: 101, baseType: !3424, size: 64, offset: 960)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3451, file: !3452, line: 103, baseType: !3424, size: 64, offset: 1024)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3451, file: !3452, line: 105, baseType: !3424, size: 64, offset: 1088)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3451, file: !3452, line: 107, baseType: !3419, size: 64, offset: 1152)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3451, file: !3452, line: 109, baseType: !3532, size: 64, offset: 1216)
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3534)
!3534 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3452, line: 109, flags: DIFlagFwdDecl)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3451, file: !3452, line: 111, baseType: !3536, size: 64, offset: 1280)
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3537, size: 64)
!3537 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3452, line: 111, flags: DIFlagFwdDecl)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3451, file: !3452, line: 112, baseType: !670, offset: 1344)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3451, file: !3452, line: 114, baseType: !515, size: 8, offset: 1344)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !240, file: !73, line: 471, baseType: !3464, size: 64, offset: 832)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !240, file: !73, line: 473, baseType: !168, size: 64, offset: 896)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !240, file: !73, line: 475, baseType: !168, size: 64, offset: 960)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !240, file: !73, line: 480, baseType: !1194, size: 192, offset: 1024)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !240, file: !73, line: 484, baseType: !3545, size: 576, offset: 1216)
!3545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3546)
!3546 = !{!3547, !3548, !3549, !3550, !3551, !3552}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3545, file: !73, line: 362, baseType: !248, size: 128)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3545, file: !73, line: 363, baseType: !248, size: 128, offset: 128)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3545, file: !73, line: 364, baseType: !248, size: 128, offset: 256)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3545, file: !73, line: 365, baseType: !248, size: 128, offset: 384)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3545, file: !73, line: 366, baseType: !515, size: 8, offset: 512)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3545, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !240, file: !73, line: 485, baseType: !3554, size: 2304, offset: 1792)
!3554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3555)
!3555 = !{!3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3651, !3655}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3554, file: !80, line: 566, baseType: !3507, size: 32)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3554, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3554, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3554, file: !80, line: 569, baseType: !515, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3554, file: !80, line: 570, baseType: !515, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3554, file: !80, line: 571, baseType: !515, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3554, file: !80, line: 572, baseType: !515, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3554, file: !80, line: 573, baseType: !515, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3554, file: !80, line: 574, baseType: !515, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3554, file: !80, line: 575, baseType: !515, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3554, file: !80, line: 576, baseType: !515, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3554, file: !80, line: 577, baseType: !442, size: 32, offset: 64)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3554, file: !80, line: 578, baseType: !261, offset: 96)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3554, file: !80, line: 580, baseType: !248, size: 128, offset: 128)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3554, file: !80, line: 581, baseType: !1523, size: 192, offset: 256)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3554, file: !80, line: 582, baseType: !3572, size: 64, offset: 448)
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3574, line: 43, size: 1472, elements: !3575)
!3574 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3575 = !{!3576, !3577, !3578, !3579, !3580, !3583, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3573, file: !3574, line: 44, baseType: !219, size: 64)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3573, file: !3574, line: 45, baseType: !228, size: 32, offset: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3573, file: !3574, line: 46, baseType: !248, size: 128, offset: 128)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3573, file: !3574, line: 47, baseType: !261, offset: 256)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3573, file: !3574, line: 48, baseType: !3581, size: 64, offset: 256)
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3582 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3573, file: !3574, line: 49, baseType: !3584, size: 320, offset: 320)
!3584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3585, line: 11, size: 320, elements: !3586)
!3585 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3586 = !{!3587, !3588, !3589, !3594}
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3584, file: !3585, line: 16, baseType: !664, size: 128)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3584, file: !3585, line: 17, baseType: !351, size: 64, offset: 128)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3584, file: !3585, line: 18, baseType: !3590, size: 64, offset: 192)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = !DISubroutineType(types: !3592)
!3592 = !{null, !3593}
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3584, file: !3585, line: 19, baseType: !442, size: 32, offset: 256)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3573, file: !3574, line: 50, baseType: !351, size: 64, offset: 640)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3573, file: !3574, line: 51, baseType: !1321, size: 64, offset: 704)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3573, file: !3574, line: 52, baseType: !1321, size: 64, offset: 768)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3573, file: !3574, line: 53, baseType: !1321, size: 64, offset: 832)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3573, file: !3574, line: 54, baseType: !1321, size: 64, offset: 896)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3573, file: !3574, line: 55, baseType: !1321, size: 64, offset: 960)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3573, file: !3574, line: 56, baseType: !351, size: 64, offset: 1024)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3573, file: !3574, line: 57, baseType: !351, size: 64, offset: 1088)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3573, file: !3574, line: 58, baseType: !351, size: 64, offset: 1152)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3573, file: !3574, line: 59, baseType: !351, size: 64, offset: 1216)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3573, file: !3574, line: 60, baseType: !351, size: 64, offset: 1280)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3573, file: !3574, line: 61, baseType: !239, size: 64, offset: 1344)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3573, file: !3574, line: 62, baseType: !515, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3573, file: !3574, line: 63, baseType: !515, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3554, file: !80, line: 583, baseType: !515, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3554, file: !80, line: 584, baseType: !515, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3554, file: !80, line: 585, baseType: !515, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3554, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3554, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3554, file: !80, line: 592, baseType: !1313, size: 512, offset: 576)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3554, file: !80, line: 593, baseType: !446, size: 64, offset: 1088)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3554, file: !80, line: 594, baseType: !1978, size: 256, offset: 1152)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3554, file: !80, line: 595, baseType: !1502, size: 128, offset: 1408)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3554, file: !80, line: 596, baseType: !3581, size: 64, offset: 1536)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3554, file: !80, line: 597, baseType: !772, size: 32, offset: 1600)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3554, file: !80, line: 598, baseType: !772, size: 32, offset: 1632)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3554, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3554, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3554, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3554, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3554, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3554, file: !80, line: 604, baseType: !515, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3554, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3554, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3554, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3554, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3554, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3554, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3554, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3554, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3554, file: !80, line: 613, baseType: !228, size: 32, offset: 1792)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3554, file: !80, line: 614, baseType: !228, size: 32, offset: 1824)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3554, file: !80, line: 615, baseType: !446, size: 64, offset: 1856)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3554, file: !80, line: 616, baseType: !446, size: 64, offset: 1920)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3554, file: !80, line: 617, baseType: !446, size: 64, offset: 1984)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3554, file: !80, line: 618, baseType: !446, size: 64, offset: 2048)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3554, file: !80, line: 620, baseType: !3642, size: 64, offset: 2112)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3644)
!3644 = !{!3645, !3646, !3647, !3648}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3643, file: !80, line: 537, baseType: !261)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3643, file: !80, line: 538, baseType: !7, size: 32)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3643, file: !80, line: 540, baseType: !248, size: 128, offset: 64)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3643, file: !80, line: 543, baseType: !3649, size: 64, offset: 192)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3554, file: !80, line: 621, baseType: !3652, size: 64, offset: 2176)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = !DISubroutineType(types: !3654)
!3654 = !{null, !239, !1465}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3554, file: !80, line: 622, baseType: !3656, size: 64, offset: 2240)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !240, file: !73, line: 486, baseType: !3659, size: 64, offset: 4096)
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3661)
!3661 = !{!3662, !3663, !3664, !3668, !3669, !3670}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3660, file: !80, line: 643, baseType: !3421, size: 1472)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3660, file: !80, line: 644, baseType: !3424, size: 64, offset: 1472)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3660, file: !80, line: 645, baseType: !3665, size: 64, offset: 1536)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = !DISubroutineType(types: !3667)
!3667 = !{null, !239, !515}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3660, file: !80, line: 646, baseType: !3424, size: 64, offset: 1600)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3660, file: !80, line: 647, baseType: !3415, size: 64, offset: 1664)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3660, file: !80, line: 648, baseType: !3415, size: 64, offset: 1728)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !240, file: !73, line: 493, baseType: !3672, size: 64, offset: 4160)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !73, line: 493, flags: DIFlagFwdDecl)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !240, file: !73, line: 499, baseType: !248, size: 128, offset: 4224)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !240, file: !73, line: 502, baseType: !3676, size: 64, offset: 4352)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3678)
!3678 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !240, file: !73, line: 504, baseType: !3680, size: 64, offset: 4416)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !240, file: !73, line: 505, baseType: !446, size: 64, offset: 4480)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !240, file: !73, line: 510, baseType: !446, size: 64, offset: 4544)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !240, file: !73, line: 511, baseType: !3684, size: 64, offset: 4608)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3686)
!3686 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !240, file: !73, line: 513, baseType: !3688, size: 64, offset: 4672)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3690)
!3690 = !{!3691, !3692}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3689, file: !73, line: 293, baseType: !7, size: 32)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3689, file: !73, line: 294, baseType: !351, size: 64, offset: 64)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !240, file: !73, line: 515, baseType: !248, size: 128, offset: 4736)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !240, file: !73, line: 526, baseType: !3695, offset: 4864)
!3695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3696, line: 5, elements: !275)
!3696 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !240, file: !73, line: 528, baseType: !3698, size: 64, offset: 4864)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3700, line: 14, flags: DIFlagFwdDecl)
!3700 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !240, file: !73, line: 529, baseType: !3702, size: 64, offset: 4928)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3704, line: 17, size: 192, elements: !3705)
!3704 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3705 = !{!3706, !3707, !3790}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3703, file: !3704, line: 18, baseType: !3702, size: 64)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3703, file: !3704, line: 19, baseType: !3708, size: 64, offset: 64)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3710)
!3710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3704, line: 110, size: 1152, elements: !3711)
!3711 = !{!3712, !3716, !3720, !3726, !3732, !3736, !3740, !3745, !3749, !3750, !3754, !3758, !3762, !3773, !3774, !3775, !3776, !3786}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3710, file: !3704, line: 111, baseType: !3713, size: 64)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{!3702, !3702}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3710, file: !3704, line: 112, baseType: !3717, size: 64, offset: 64)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{null, !3702}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3710, file: !3704, line: 113, baseType: !3721, size: 64, offset: 128)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{!515, !3724}
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3703)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3710, file: !3704, line: 114, baseType: !3727, size: 64, offset: 192)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!2148, !3724, !3730}
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !240)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3710, file: !3704, line: 116, baseType: !3733, size: 64, offset: 256)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!515, !3724, !219}
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3710, file: !3704, line: 118, baseType: !3737, size: 64, offset: 320)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{!228, !3724, !219, !7, !168, !348}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3710, file: !3704, line: 123, baseType: !3741, size: 64, offset: 384)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!228, !3724, !219, !3744, !348}
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3710, file: !3704, line: 126, baseType: !3746, size: 64, offset: 448)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3747 = !DISubroutineType(types: !3748)
!3748 = !{!219, !3724}
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3710, file: !3704, line: 127, baseType: !3746, size: 64, offset: 512)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3710, file: !3704, line: 128, baseType: !3751, size: 64, offset: 576)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{!3702, !3724}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3710, file: !3704, line: 130, baseType: !3755, size: 64, offset: 640)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!3702, !3724, !3702}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3710, file: !3704, line: 133, baseType: !3759, size: 64, offset: 704)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{!3702, !3724, !219}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3710, file: !3704, line: 135, baseType: !3763, size: 64, offset: 768)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{!228, !3724, !219, !219, !7, !7, !3766}
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3704, line: 43, size: 640, elements: !3768)
!3768 = !{!3769, !3770, !3771}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3767, file: !3704, line: 44, baseType: !3702, size: 64)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3767, file: !3704, line: 45, baseType: !7, size: 32, offset: 64)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3767, file: !3704, line: 46, baseType: !3772, size: 512, offset: 128)
!3772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 512, elements: !1351)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3710, file: !3704, line: 140, baseType: !3755, size: 64, offset: 832)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3710, file: !3704, line: 143, baseType: !3751, size: 64, offset: 896)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3710, file: !3704, line: 145, baseType: !3713, size: 64, offset: 960)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3710, file: !3704, line: 146, baseType: !3777, size: 64, offset: 1024)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!228, !3724, !3780}
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3704, line: 29, size: 128, elements: !3782)
!3782 = !{!3783, !3784, !3785}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3781, file: !3704, line: 30, baseType: !7, size: 32)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3781, file: !3704, line: 31, baseType: !7, size: 32, offset: 32)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3781, file: !3704, line: 32, baseType: !3724, size: 64, offset: 64)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3710, file: !3704, line: 148, baseType: !3787, size: 64, offset: 1088)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{!228, !3724, !239}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3703, file: !3704, line: 20, baseType: !239, size: 64, offset: 128)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !240, file: !73, line: 534, baseType: !538, size: 32, offset: 4992)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !240, file: !73, line: 535, baseType: !442, size: 32, offset: 5024)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !240, file: !73, line: 537, baseType: !261, offset: 5056)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !240, file: !73, line: 538, baseType: !248, size: 128, offset: 5056)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !240, file: !73, line: 540, baseType: !3796, size: 64, offset: 5184)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3798, line: 54, size: 960, elements: !3799)
!3798 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3799 = !{!3800, !3801, !3802, !3803, !3804, !3805, !3806, !3810, !3814, !3815, !3816, !3817, !3821, !3825, !3826}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3797, file: !3798, line: 55, baseType: !219, size: 64)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3797, file: !3798, line: 56, baseType: !221, size: 64, offset: 64)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3797, file: !3798, line: 58, baseType: !355, size: 64, offset: 128)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3797, file: !3798, line: 59, baseType: !355, size: 64, offset: 192)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3797, file: !3798, line: 60, baseType: !254, size: 64, offset: 256)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3797, file: !3798, line: 62, baseType: !3406, size: 64, offset: 320)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3797, file: !3798, line: 63, baseType: !3807, size: 64, offset: 384)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{!302, !239, !3413}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3797, file: !3798, line: 65, baseType: !3811, size: 64, offset: 448)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{null, !3796}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3797, file: !3798, line: 66, baseType: !3415, size: 64, offset: 512)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3797, file: !3798, line: 68, baseType: !3424, size: 64, offset: 576)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3797, file: !3798, line: 70, baseType: !3210, size: 64, offset: 640)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3797, file: !3798, line: 71, baseType: !3818, size: 64, offset: 704)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DISubroutineType(types: !3820)
!3820 = !{!2148, !239}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3797, file: !3798, line: 73, baseType: !3822, size: 64, offset: 768)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{null, !239, !3242, !3243}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3797, file: !3798, line: 75, baseType: !3419, size: 64, offset: 832)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3797, file: !3798, line: 77, baseType: !3536, size: 64, offset: 896)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !240, file: !73, line: 541, baseType: !355, size: 64, offset: 5248)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !240, file: !73, line: 543, baseType: !3415, size: 64, offset: 5312)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !240, file: !73, line: 544, baseType: !3830, size: 64, offset: 5376)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !240, file: !73, line: 545, baseType: !3833, size: 64, offset: 5440)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !240, file: !73, line: 547, baseType: !515, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !240, file: !73, line: 548, baseType: !515, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !240, file: !73, line: 549, baseType: !515, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !240, file: !73, line: 550, baseType: !515, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !230, file: !157, line: 548, baseType: !228, size: 32, offset: 320)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "detach_count", scope: !230, file: !157, line: 549, baseType: !7, size: 32, offset: 352)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "hw_dev", scope: !230, file: !157, line: 550, baseType: !239, size: 64, offset: 384)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !230, file: !157, line: 552, baseType: !219, size: 64, offset: 448)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "board_ptr", scope: !230, file: !157, line: 553, baseType: !2148, size: 64, offset: 512)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "attached", scope: !230, file: !157, line: 554, baseType: !7, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "ioenabled", scope: !230, file: !157, line: 555, baseType: !7, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "spinlock", scope: !230, file: !157, line: 556, baseType: !261, offset: 584)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !230, file: !157, line: 557, baseType: !1194, size: 192, offset: 640)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "attach_lock", scope: !230, file: !157, line: 558, baseType: !792, size: 256, offset: 832)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !230, file: !157, line: 559, baseType: !3384, size: 32, offset: 1088)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "n_subdevices", scope: !230, file: !157, line: 561, baseType: !228, size: 32, offset: 1120)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "subdevices", scope: !230, file: !157, line: 562, baseType: !3852, size: 64, offset: 1152)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_subdevice", file: !157, line: 153, size: 1792, elements: !3854)
!3854 = !{!3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3930, !3943, !3946, !3947, !3961, !3962, !3963, !3964, !3968, !3973, !3974, !3975, !3976, !3980, !3981, !3982, !3983, !3984}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3853, file: !157, line: 154, baseType: !229, size: 64)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3853, file: !157, line: 155, baseType: !228, size: 32, offset: 64)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3853, file: !157, line: 156, baseType: !228, size: 32, offset: 96)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "n_chan", scope: !3853, file: !157, line: 157, baseType: !228, size: 32, offset: 128)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "subdev_flags", scope: !3853, file: !157, line: 158, baseType: !228, size: 32, offset: 160)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "len_chanlist", scope: !3853, file: !157, line: 159, baseType: !228, size: 32, offset: 192)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3853, file: !157, line: 161, baseType: !168, size: 64, offset: 256)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "async", scope: !3853, file: !157, line: 163, baseType: !3863, size: 64, offset: 320)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_async", file: !157, line: 347, size: 1536, elements: !3865)
!3865 = !{!3866, !3867, !3868, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3916, !3917, !3918}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3864, file: !157, line: 348, baseType: !168, size: 64)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_bufsz", scope: !3864, file: !157, line: 349, baseType: !7, size: 32, offset: 64)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "buf_map", scope: !3864, file: !157, line: 350, baseType: !3869, size: 64, offset: 128)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_buf_map", file: !157, line: 249, size: 256, elements: !3871)
!3871 = !{!3872, !3873, !3879, !3880, !3881}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "dma_hw_dev", scope: !3870, file: !157, line: 250, baseType: !239, size: 64)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "page_list", scope: !3870, file: !157, line: 251, baseType: !3874, size: 64, offset: 64)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_buf_page", file: !157, line: 220, size: 128, elements: !3876)
!3876 = !{!3877, !3878}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "virt_addr", scope: !3875, file: !157, line: 221, baseType: !168, size: 64)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3875, file: !157, line: 222, baseType: !943, size: 64, offset: 64)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "n_pages", scope: !3870, file: !157, line: 252, baseType: !7, size: 32, offset: 128)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "dma_dir", scope: !3870, file: !157, line: 253, baseType: !93, size: 32, offset: 160)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3870, file: !157, line: 254, baseType: !3384, size: 32, offset: 192)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "max_bufsize", scope: !3864, file: !157, line: 351, baseType: !7, size: 32, offset: 192)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_count", scope: !3864, file: !157, line: 352, baseType: !7, size: 32, offset: 224)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_alloc_count", scope: !3864, file: !157, line: 353, baseType: !7, size: 32, offset: 256)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_count", scope: !3864, file: !157, line: 354, baseType: !7, size: 32, offset: 288)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_alloc_count", scope: !3864, file: !157, line: 355, baseType: !7, size: 32, offset: 320)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_ptr", scope: !3864, file: !157, line: 356, baseType: !7, size: 32, offset: 352)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_ptr", scope: !3864, file: !157, line: 357, baseType: !7, size: 32, offset: 384)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "cur_chan", scope: !3864, file: !157, line: 358, baseType: !7, size: 32, offset: 416)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "scans_done", scope: !3864, file: !157, line: 359, baseType: !7, size: 32, offset: 448)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "scan_progress", scope: !3864, file: !157, line: 360, baseType: !7, size: 32, offset: 480)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "munge_chan", scope: !3864, file: !157, line: 361, baseType: !7, size: 32, offset: 512)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "munge_count", scope: !3864, file: !157, line: 362, baseType: !7, size: 32, offset: 544)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "munge_ptr", scope: !3864, file: !157, line: 363, baseType: !7, size: 32, offset: 576)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3864, file: !157, line: 364, baseType: !7, size: 32, offset: 608)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !3864, file: !157, line: 365, baseType: !3897, size: 640, offset: 640)
!3897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_cmd", file: !134, line: 589, size: 640, elements: !3898)
!3898 = !{!3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3915}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "subdev", scope: !3897, file: !134, line: 590, baseType: !7, size: 32)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3897, file: !134, line: 591, baseType: !7, size: 32, offset: 32)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "start_src", scope: !3897, file: !134, line: 593, baseType: !7, size: 32, offset: 64)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "start_arg", scope: !3897, file: !134, line: 594, baseType: !7, size: 32, offset: 96)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "scan_begin_src", scope: !3897, file: !134, line: 596, baseType: !7, size: 32, offset: 128)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "scan_begin_arg", scope: !3897, file: !134, line: 597, baseType: !7, size: 32, offset: 160)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "convert_src", scope: !3897, file: !134, line: 599, baseType: !7, size: 32, offset: 192)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "convert_arg", scope: !3897, file: !134, line: 600, baseType: !7, size: 32, offset: 224)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "scan_end_src", scope: !3897, file: !134, line: 602, baseType: !7, size: 32, offset: 256)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "scan_end_arg", scope: !3897, file: !134, line: 603, baseType: !7, size: 32, offset: 288)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "stop_src", scope: !3897, file: !134, line: 605, baseType: !7, size: 32, offset: 320)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "stop_arg", scope: !3897, file: !134, line: 606, baseType: !7, size: 32, offset: 352)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist", scope: !3897, file: !134, line: 608, baseType: !2704, size: 64, offset: 384)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist_len", scope: !3897, file: !134, line: 609, baseType: !7, size: 32, offset: 448)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3897, file: !134, line: 611, baseType: !3914, size: 64, offset: 512)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !3897, file: !134, line: 612, baseType: !7, size: 32, offset: 576)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "wait_head", scope: !3864, file: !157, line: 366, baseType: !1502, size: 128, offset: 1280)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "cb_mask", scope: !3864, file: !157, line: 367, baseType: !7, size: 32, offset: 1408)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "inttrig", scope: !3864, file: !157, line: 368, baseType: !3919, size: 64, offset: 1472)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!228, !229, !3852, !7}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3853, file: !157, line: 165, baseType: !168, size: 64, offset: 384)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !3853, file: !157, line: 166, baseType: !168, size: 64, offset: 448)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "runflags", scope: !3853, file: !157, line: 167, baseType: !7, size: 32, offset: 512)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "spin_lock", scope: !3853, file: !157, line: 168, baseType: !261, offset: 544)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "io_bits", scope: !3853, file: !157, line: 170, baseType: !7, size: 32, offset: 544)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata", scope: !3853, file: !157, line: 172, baseType: !7, size: 32, offset: 576)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata_list", scope: !3853, file: !157, line: 173, baseType: !3929, size: 64, offset: 640)
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "range_table", scope: !3853, file: !157, line: 175, baseType: !3931, size: 64, offset: 704)
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3932 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3933)
!3933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_lrange", file: !157, line: 635, size: 32, elements: !3934)
!3934 = !{!3935, !3936}
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3933, file: !157, line: 636, baseType: !228, size: 32)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3933, file: !157, line: 637, baseType: !3937, offset: 32)
!3937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3938, elements: !2352)
!3938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_krange", file: !134, line: 685, size: 96, elements: !3939)
!3939 = !{!3940, !3941, !3942}
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !3938, file: !134, line: 686, baseType: !228, size: 32)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3938, file: !134, line: 687, baseType: !228, size: 32, offset: 32)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3938, file: !134, line: 688, baseType: !7, size: 32, offset: 64)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "range_table_list", scope: !3853, file: !157, line: 176, baseType: !3944, size: 64, offset: 768)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3931)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist", scope: !3853, file: !157, line: 178, baseType: !2704, size: 64, offset: 832)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "insn_read", scope: !3853, file: !157, line: 180, baseType: !3948, size: 64, offset: 896)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{!228, !229, !3852, !3951, !2704}
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_insn", file: !134, line: 491, size: 320, elements: !3953)
!3953 = !{!3954, !3955, !3956, !3957, !3958, !3959}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3952, file: !134, line: 492, baseType: !7, size: 32)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !3952, file: !134, line: 493, baseType: !7, size: 32, offset: 32)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3952, file: !134, line: 494, baseType: !2704, size: 64, offset: 64)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "subdev", scope: !3952, file: !134, line: 495, baseType: !7, size: 32, offset: 128)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "chanspec", scope: !3952, file: !134, line: 496, baseType: !7, size: 32, offset: 160)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !3952, file: !134, line: 497, baseType: !3960, size: 96, offset: 192)
!3960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 96, elements: !303)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "insn_write", scope: !3853, file: !157, line: 182, baseType: !3948, size: 64, offset: 960)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "insn_bits", scope: !3853, file: !157, line: 184, baseType: !3948, size: 64, offset: 1024)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "insn_config", scope: !3853, file: !157, line: 186, baseType: !3948, size: 64, offset: 1088)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "do_cmd", scope: !3853, file: !157, line: 191, baseType: !3965, size: 64, offset: 1152)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = !DISubroutineType(types: !3967)
!3967 = !{!228, !229, !3852}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "do_cmdtest", scope: !3853, file: !157, line: 192, baseType: !3969, size: 64, offset: 1216)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = !DISubroutineType(types: !3971)
!3971 = !{!228, !229, !3852, !3972}
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3897, size: 64)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3853, file: !157, line: 195, baseType: !3965, size: 64, offset: 1280)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "cancel", scope: !3853, file: !157, line: 196, baseType: !3965, size: 64, offset: 1344)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "buf_change", scope: !3853, file: !157, line: 199, baseType: !3965, size: 64, offset: 1408)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "munge", scope: !3853, file: !157, line: 202, baseType: !3977, size: 64, offset: 1472)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = !DISubroutineType(types: !3979)
!3979 = !{null, !229, !3852, !168, !7, !7}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "async_dma_dir", scope: !3853, file: !157, line: 205, baseType: !93, size: 32, offset: 1536)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3853, file: !157, line: 207, baseType: !7, size: 32, offset: 1568)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !3853, file: !157, line: 209, baseType: !239, size: 64, offset: 1600)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3853, file: !157, line: 210, baseType: !228, size: 32, offset: 1664)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "readback", scope: !3853, file: !157, line: 212, baseType: !2704, size: 64, offset: 1728)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "mmio", scope: !230, file: !157, line: 565, baseType: !168, size: 64, offset: 1216)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "iobase", scope: !230, file: !157, line: 566, baseType: !351, size: 64, offset: 1280)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "iolen", scope: !230, file: !157, line: 567, baseType: !351, size: 64, offset: 1344)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !230, file: !157, line: 568, baseType: !7, size: 32, offset: 1408)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "read_subdev", scope: !230, file: !157, line: 570, baseType: !3852, size: 64, offset: 1472)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "write_subdev", scope: !230, file: !157, line: 571, baseType: !3852, size: 64, offset: 1536)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "async_queue", scope: !230, file: !157, line: 573, baseType: !2980, size: 64, offset: 1600)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !230, file: !157, line: 575, baseType: !3993, size: 64, offset: 1664)
!3993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3994, size: 64)
!3994 = !DISubroutineType(types: !3995)
!3995 = !{!228, !229}
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !230, file: !157, line: 576, baseType: !3997, size: 64, offset: 1728)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DISubroutineType(types: !3999)
!3999 = !{null, !229}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "insn_device_config", scope: !230, file: !157, line: 577, baseType: !4001, size: 64, offset: 1792)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!228, !229, !3951, !2704}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "get_valid_routes", scope: !230, file: !157, line: 579, baseType: !4005, size: 64, offset: 1856)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{!7, !229, !7, !2704}
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_devconfig", file: !134, line: 834, size: 1184, elements: !4010)
!4010 = !{!4011, !4013}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !4009, file: !134, line: 835, baseType: !4012, size: 160)
!4012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 160, elements: !2222)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !4009, file: !134, line: 836, baseType: !4014, size: 1024, offset: 160)
!4014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 1024, elements: !2251)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !214, file: !157, line: 444, baseType: !3997, size: 64, offset: 256)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "auto_attach", scope: !214, file: !157, line: 445, baseType: !4017, size: 64, offset: 320)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DISubroutineType(types: !4019)
!4019 = !{!228, !229, !351}
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "num_names", scope: !214, file: !157, line: 446, baseType: !7, size: 32, offset: 384)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !214, file: !157, line: 447, baseType: !4022, size: 64, offset: 448)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !214, file: !157, line: 448, baseType: !228, size: 32, offset: 512)
!4025 = !DIGlobalVariableExpression(var: !4026, expr: !DIExpression())
!4026 = distinct !DIGlobalVariable(name: "__key", scope: !4027, file: !3, line: 931, type: !670, isLocal: true, isDefinition: true)
!4027 = distinct !DISubprogram(name: "usbduxfast_auto_attach", scope: !3, file: !3, line: 912, type: !4018, scopeLine: 914, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!4028 = !DIGlobalVariableExpression(var: !4029, expr: !DIExpression())
!4029 = distinct !DIGlobalVariable(name: "range_usbduxfast_ai_range", scope: !2, file: !3, line: 136, type: !3932, isLocal: true, isDefinition: true)
!4030 = !DIGlobalVariableExpression(var: !4031, expr: !DIExpression())
!4031 = distinct !DIGlobalVariable(name: "usbduxfast_usb_driver", scope: !2, file: !3, line: 1028, type: !4032, isLocal: true, isDefinition: true)
!4032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_driver", file: !101, line: 1184, size: 2112, elements: !4033)
!4033 = !{!4034, !4035, !4147, !4151, !4155, !4159, !4163, !4164, !4165, !4166, !4167, !4168, !4173, !4178, !4179, !4180, !4181}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4032, file: !101, line: 1185, baseType: !219, size: 64)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4032, file: !101, line: 1187, baseType: !4036, size: 64, offset: 64)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{!228, !4039, !4130}
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface", file: !101, line: 232, size: 6272, elements: !4041)
!4041 = !{!4042, !4103, !4104, !4105, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !4040, file: !101, line: 235, baseType: !4043, size: 64)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_interface", file: !101, line: 82, size: 320, elements: !4045)
!4045 = !{!4046, !4058, !4059, !4061, !4102}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4044, file: !101, line: 83, baseType: !4047, size: 72)
!4047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_descriptor", file: !108, line: 389, size: 72, elements: !4048)
!4048 = !{!4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4047, file: !108, line: 390, baseType: !1374, size: 8)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4047, file: !108, line: 391, baseType: !1374, size: 8, offset: 8)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !4047, file: !108, line: 393, baseType: !1374, size: 8, offset: 16)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "bAlternateSetting", scope: !4047, file: !108, line: 394, baseType: !1374, size: 8, offset: 24)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "bNumEndpoints", scope: !4047, file: !108, line: 395, baseType: !1374, size: 8, offset: 32)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !4047, file: !108, line: 396, baseType: !1374, size: 8, offset: 40)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !4047, file: !108, line: 397, baseType: !1374, size: 8, offset: 48)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !4047, file: !108, line: 398, baseType: !1374, size: 8, offset: 56)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "iInterface", scope: !4047, file: !108, line: 399, baseType: !1374, size: 8, offset: 64)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !4044, file: !101, line: 85, baseType: !228, size: 32, offset: 96)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4044, file: !101, line: 86, baseType: !4060, size: 64, offset: 128)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint", scope: !4044, file: !101, line: 91, baseType: !4062, size: 64, offset: 192)
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_endpoint", file: !101, line: 67, size: 640, elements: !4064)
!4064 = !{!4065, !4077, !4085, !4093, !4094, !4095, !4098, !4099, !4100, !4101}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4063, file: !101, line: 68, baseType: !4066, size: 72)
!4066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_endpoint_descriptor", file: !108, line: 407, size: 72, elements: !4067)
!4067 = !{!4068, !4069, !4070, !4071, !4072, !4074, !4075, !4076}
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4066, file: !108, line: 408, baseType: !1374, size: 8)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4066, file: !108, line: 409, baseType: !1374, size: 8, offset: 8)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "bEndpointAddress", scope: !4066, file: !108, line: 411, baseType: !1374, size: 8, offset: 16)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4066, file: !108, line: 412, baseType: !1374, size: 8, offset: 24)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "wMaxPacketSize", scope: !4066, file: !108, line: 413, baseType: !4073, size: 16, offset: 32)
!4073 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !2927, line: 29, baseType: !174)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "bInterval", scope: !4066, file: !108, line: 414, baseType: !1374, size: 8, offset: 48)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "bRefresh", scope: !4066, file: !108, line: 418, baseType: !1374, size: 8, offset: 56)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "bSynchAddress", scope: !4066, file: !108, line: 419, baseType: !1374, size: 8, offset: 64)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "ss_ep_comp", scope: !4063, file: !101, line: 69, baseType: !4078, size: 48, offset: 72)
!4078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_ep_comp_descriptor", file: !108, line: 689, size: 48, elements: !4079)
!4079 = !{!4080, !4081, !4082, !4083, !4084}
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4078, file: !108, line: 690, baseType: !1374, size: 8)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4078, file: !108, line: 691, baseType: !1374, size: 8, offset: 8)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxBurst", scope: !4078, file: !108, line: 693, baseType: !1374, size: 8, offset: 16)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4078, file: !108, line: 694, baseType: !1374, size: 8, offset: 24)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "wBytesPerInterval", scope: !4078, file: !108, line: 695, baseType: !4073, size: 16, offset: 32)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_isoc_ep_comp", scope: !4063, file: !101, line: 70, baseType: !4086, size: 64, offset: 120)
!4086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_isoc_ep_comp_descriptor", file: !108, line: 677, size: 64, elements: !4087)
!4087 = !{!4088, !4089, !4090, !4091}
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4086, file: !108, line: 678, baseType: !1374, size: 8)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4086, file: !108, line: 679, baseType: !1374, size: 8, offset: 8)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "wReseved", scope: !4086, file: !108, line: 680, baseType: !4073, size: 16, offset: 16)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "dwBytesPerInterval", scope: !4086, file: !108, line: 681, baseType: !4092, size: 32, offset: 32)
!4092 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !2927, line: 31, baseType: !443)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !4063, file: !101, line: 71, baseType: !248, size: 128, offset: 192)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !4063, file: !101, line: 72, baseType: !168, size: 64, offset: 320)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "ep_dev", scope: !4063, file: !101, line: 73, baseType: !4096, size: 64, offset: 384)
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4097 = !DICompositeType(tag: DW_TAG_structure_type, name: "ep_device", file: !101, line: 48, flags: DIFlagFwdDecl)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4063, file: !101, line: 75, baseType: !4060, size: 64, offset: 448)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !4063, file: !101, line: 76, baseType: !228, size: 32, offset: 512)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4063, file: !101, line: 77, baseType: !228, size: 32, offset: 544)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !4063, file: !101, line: 78, baseType: !228, size: 32, offset: 576)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4044, file: !101, line: 93, baseType: !302, size: 64, offset: 256)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "cur_altsetting", scope: !4040, file: !101, line: 237, baseType: !4043, size: 64, offset: 64)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !4040, file: !101, line: 239, baseType: !7, size: 32, offset: 128)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !4040, file: !101, line: 243, baseType: !4106, size: 64, offset: 192)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_assoc_descriptor", file: !108, line: 783, size: 64, elements: !4108)
!4108 = !{!4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4107, file: !108, line: 784, baseType: !1374, size: 8)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4107, file: !108, line: 785, baseType: !1374, size: 8, offset: 8)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "bFirstInterface", scope: !4107, file: !108, line: 787, baseType: !1374, size: 8, offset: 16)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceCount", scope: !4107, file: !108, line: 788, baseType: !1374, size: 8, offset: 24)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionClass", scope: !4107, file: !108, line: 789, baseType: !1374, size: 8, offset: 32)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionSubClass", scope: !4107, file: !108, line: 790, baseType: !1374, size: 8, offset: 40)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionProtocol", scope: !4107, file: !108, line: 791, baseType: !1374, size: 8, offset: 48)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "iFunction", scope: !4107, file: !108, line: 792, baseType: !1374, size: 8, offset: 56)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4040, file: !101, line: 245, baseType: !228, size: 32, offset: 256)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !4040, file: !101, line: 247, baseType: !100, size: 32, offset: 288)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_files_created", scope: !4040, file: !101, line: 248, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "ep_devs_created", scope: !4040, file: !101, line: 249, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !4040, file: !101, line: 250, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "needs_remote_wakeup", scope: !4040, file: !101, line: 251, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "needs_altsetting0", scope: !4040, file: !101, line: 252, baseType: !7, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "needs_binding", scope: !4040, file: !101, line: 253, baseType: !7, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "resetting_device", scope: !4040, file: !101, line: 254, baseType: !7, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !4040, file: !101, line: 255, baseType: !7, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4040, file: !101, line: 257, baseType: !240, size: 5568, offset: 384)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "usb_dev", scope: !4040, file: !101, line: 258, baseType: !239, size: 64, offset: 5952)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "reset_ws", scope: !4040, file: !101, line: 259, baseType: !1978, size: 256, offset: 6016)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4132)
!4132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_id", file: !3477, line: 121, size: 256, elements: !4133)
!4133 = !{!4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "match_flags", scope: !4132, file: !3477, line: 123, baseType: !174, size: 16)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !4132, file: !3477, line: 126, baseType: !174, size: 16, offset: 16)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !4132, file: !3477, line: 127, baseType: !174, size: 16, offset: 32)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_lo", scope: !4132, file: !3477, line: 128, baseType: !174, size: 16, offset: 48)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_hi", scope: !4132, file: !3477, line: 129, baseType: !174, size: 16, offset: 64)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !4132, file: !3477, line: 132, baseType: !1374, size: 8, offset: 80)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !4132, file: !3477, line: 133, baseType: !1374, size: 8, offset: 88)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !4132, file: !3477, line: 134, baseType: !1374, size: 8, offset: 96)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !4132, file: !3477, line: 137, baseType: !1374, size: 8, offset: 104)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !4132, file: !3477, line: 138, baseType: !1374, size: 8, offset: 112)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !4132, file: !3477, line: 139, baseType: !1374, size: 8, offset: 120)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !4132, file: !3477, line: 142, baseType: !1374, size: 8, offset: 128)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !4132, file: !3477, line: 145, baseType: !3496, size: 64, align: 64, offset: 192)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4032, file: !101, line: 1190, baseType: !4148, size: 64, offset: 128)
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4149 = !DISubroutineType(types: !4150)
!4150 = !{null, !4039}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4032, file: !101, line: 1192, baseType: !4152, size: 64, offset: 192)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DISubroutineType(types: !4154)
!4154 = !{!228, !4039, !7, !168}
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4032, file: !101, line: 1195, baseType: !4156, size: 64, offset: 256)
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4157 = !DISubroutineType(types: !4158)
!4158 = !{!228, !4039, !3507}
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4032, file: !101, line: 1196, baseType: !4160, size: 64, offset: 320)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = !DISubroutineType(types: !4162)
!4162 = !{!228, !4039}
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !4032, file: !101, line: 1197, baseType: !4160, size: 64, offset: 384)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "pre_reset", scope: !4032, file: !101, line: 1199, baseType: !4160, size: 64, offset: 448)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "post_reset", scope: !4032, file: !101, line: 1200, baseType: !4160, size: 64, offset: 512)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4032, file: !101, line: 1202, baseType: !4130, size: 64, offset: 576)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4032, file: !101, line: 1203, baseType: !355, size: 64, offset: 640)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4032, file: !101, line: 1205, baseType: !4169, size: 128, offset: 704)
!4169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_dynids", file: !101, line: 1091, size: 128, elements: !4170)
!4170 = !{!4171, !4172}
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4169, file: !101, line: 1092, baseType: !261)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4169, file: !101, line: 1093, baseType: !248, size: 128)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "drvwrap", scope: !4032, file: !101, line: 1206, baseType: !4174, size: 1216, offset: 832)
!4174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usbdrv_wrap", file: !101, line: 1113, size: 1216, elements: !4175)
!4175 = !{!4176, !4177}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4174, file: !101, line: 1114, baseType: !3465, size: 1152)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "for_devices", scope: !4174, file: !101, line: 1115, baseType: !228, size: 32, offset: 1152)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "no_dynamic_id", scope: !4032, file: !101, line: 1207, baseType: !7, size: 1, offset: 2048, flags: DIFlagBitField, extraData: i64 2048)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "supports_autosuspend", scope: !4032, file: !101, line: 1208, baseType: !7, size: 1, offset: 2049, flags: DIFlagBitField, extraData: i64 2048)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "disable_hub_initiated_lpm", scope: !4032, file: !101, line: 1209, baseType: !7, size: 1, offset: 2050, flags: DIFlagBitField, extraData: i64 2048)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "soft_unbind", scope: !4032, file: !101, line: 1210, baseType: !7, size: 1, offset: 2051, flags: DIFlagBitField, extraData: i64 2048)
!4182 = !DIGlobalVariableExpression(var: !4183, expr: !DIExpression())
!4183 = distinct !DIGlobalVariable(name: "usbduxfast_usb_table", scope: !2, file: !3, line: 1020, type: !4184, isLocal: true, isDefinition: true)
!4184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4131, size: 768, elements: !303)
!4185 = !{i32 7, !"Dwarf Version", i32 4}
!4186 = !{i32 2, !"Debug Info Version", i32 3}
!4187 = !{i32 1, !"wchar_size", i32 2}
!4188 = !{i32 1, !"Code Model", i32 2}
!4189 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4190 = distinct !DISubprogram(name: "usbduxfast_driver_init", scope: !3, file: !3, line: 1034, type: !4191, scopeLine: 1034, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!4191 = !DISubroutineType(types: !4192)
!4192 = !{!228}
!4193 = !DILocation(line: 1034, column: 1, scope: !4190)
!4194 = distinct !DISubprogram(name: "usbduxfast_driver_exit", scope: !3, file: !3, line: 1034, type: !183, scopeLine: 1034, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!4195 = !DILocation(line: 1034, column: 1, scope: !4194)
!4196 = distinct !DISubprogram(name: "usbduxfast_detach", scope: !3, file: !3, line: 980, type: !3998, scopeLine: 981, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!4197 = !DILocalVariable(name: "dev", arg: 1, scope: !4196, file: !3, line: 980, type: !229)
!4198 = !DILocation(line: 980, column: 53, scope: !4196)
!4199 = !DILocalVariable(name: "intf", scope: !4196, file: !3, line: 982, type: !4039)
!4200 = !DILocation(line: 982, column: 24, scope: !4196)
!4201 = !DILocation(line: 982, column: 55, scope: !4196)
!4202 = !DILocation(line: 982, column: 31, scope: !4196)
!4203 = !DILocalVariable(name: "devpriv", scope: !4196, file: !3, line: 983, type: !4204)
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usbduxfast_private", file: !3, line: 149, size: 448, elements: !4206)
!4206 = !{!4207, !4482, !4484, !4489, !4490, !4491}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "urb", scope: !4205, file: !3, line: 150, baseType: !4208, size: 64)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "urb", file: !101, line: 1561, size: 1472, elements: !4210)
!4210 = !{!4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4227, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4474}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !4209, file: !101, line: 1563, baseType: !3384, size: 32)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "unlinked", scope: !4209, file: !101, line: 1564, baseType: !228, size: 32, offset: 32)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !4209, file: !101, line: 1565, baseType: !168, size: 64, offset: 64)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !4209, file: !101, line: 1566, baseType: !772, size: 32, offset: 128)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "reject", scope: !4209, file: !101, line: 1567, baseType: !772, size: 32, offset: 160)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !4209, file: !101, line: 1570, baseType: !248, size: 128, offset: 192)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_list", scope: !4209, file: !101, line: 1572, baseType: !248, size: 128, offset: 320)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "anchor", scope: !4209, file: !101, line: 1573, baseType: !4219, size: 64, offset: 448)
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_anchor", file: !101, line: 1360, size: 320, elements: !4221)
!4221 = !{!4222, !4223, !4224, !4225, !4226}
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !4220, file: !101, line: 1361, baseType: !248, size: 128)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !4220, file: !101, line: 1362, baseType: !1502, size: 128, offset: 128)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4220, file: !101, line: 1363, baseType: !261, offset: 256)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_wakeups", scope: !4220, file: !101, line: 1364, baseType: !772, size: 32, offset: 256)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "poisoned", scope: !4220, file: !101, line: 1365, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4209, file: !101, line: 1574, baseType: !4228, size: 64, offset: 512)
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4229, size: 64)
!4229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device", file: !101, line: 631, size: 10624, elements: !4230)
!4230 = !{!4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4241, !4242, !4244, !4245, !4273, !4274, !4275, !4292, !4353, !4384, !4385, !4387, !4388, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4423, !4424, !4425, !4430, !4437, !4438, !4439, !4440}
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "devnum", scope: !4229, file: !101, line: 632, baseType: !228, size: 32)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "devpath", scope: !4229, file: !101, line: 633, baseType: !1755, size: 128, offset: 32)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "route", scope: !4229, file: !101, line: 634, baseType: !442, size: 32, offset: 160)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4229, file: !101, line: 635, baseType: !107, size: 32, offset: 192)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !4229, file: !101, line: 636, baseType: !119, size: 32, offset: 224)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "rx_lanes", scope: !4229, file: !101, line: 637, baseType: !7, size: 32, offset: 256)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "tx_lanes", scope: !4229, file: !101, line: 638, baseType: !7, size: 32, offset: 288)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !4229, file: !101, line: 640, baseType: !4239, size: 64, offset: 320)
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_tt", file: !101, line: 474, flags: DIFlagFwdDecl)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "ttport", scope: !4229, file: !101, line: 641, baseType: !228, size: 32, offset: 384)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "toggle", scope: !4229, file: !101, line: 643, baseType: !4243, size: 64, offset: 416)
!4243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !1590)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4229, file: !101, line: 645, baseType: !4228, size: 64, offset: 512)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4229, file: !101, line: 646, baseType: !4246, size: 64, offset: 576)
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bus", file: !101, line: 424, size: 960, elements: !4248)
!4248 = !{!4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4267, !4268, !4269, !4270, !4271, !4272}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !4247, file: !101, line: 425, baseType: !239, size: 64)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "sysdev", scope: !4247, file: !101, line: 426, baseType: !239, size: 64, offset: 64)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "busnum", scope: !4247, file: !101, line: 427, baseType: !228, size: 32, offset: 128)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "bus_name", scope: !4247, file: !101, line: 428, baseType: !219, size: 64, offset: 192)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "uses_pio_for_control", scope: !4247, file: !101, line: 429, baseType: !1373, size: 8, offset: 256)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "otg_port", scope: !4247, file: !101, line: 433, baseType: !1373, size: 8, offset: 264)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "is_b_host", scope: !4247, file: !101, line: 434, baseType: !7, size: 1, offset: 272, flags: DIFlagBitField, extraData: i64 272)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "b_hnp_enable", scope: !4247, file: !101, line: 435, baseType: !7, size: 1, offset: 273, flags: DIFlagBitField, extraData: i64 272)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "no_stop_on_short", scope: !4247, file: !101, line: 436, baseType: !7, size: 1, offset: 274, flags: DIFlagBitField, extraData: i64 272)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "no_sg_constraint", scope: !4247, file: !101, line: 441, baseType: !7, size: 1, offset: 275, flags: DIFlagBitField, extraData: i64 272)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "sg_tablesize", scope: !4247, file: !101, line: 442, baseType: !7, size: 32, offset: 288)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next", scope: !4247, file: !101, line: 444, baseType: !228, size: 32, offset: 320)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next_mutex", scope: !4247, file: !101, line: 446, baseType: !1194, size: 192, offset: 384)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "devmap", scope: !4247, file: !101, line: 448, baseType: !4263, size: 128, offset: 576)
!4263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_devmap", file: !101, line: 417, size: 128, elements: !4264)
!4264 = !{!4265}
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "devicemap", scope: !4263, file: !101, line: 418, baseType: !4266, size: 128)
!4266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 128, elements: !1590)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "root_hub", scope: !4247, file: !101, line: 449, baseType: !4228, size: 64, offset: 704)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "hs_companion", scope: !4247, file: !101, line: 450, baseType: !4246, size: 64, offset: 768)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_allocated", scope: !4247, file: !101, line: 452, baseType: !228, size: 32, offset: 832)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_int_reqs", scope: !4247, file: !101, line: 459, baseType: !228, size: 32, offset: 864)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_isoc_reqs", scope: !4247, file: !101, line: 460, baseType: !228, size: 32, offset: 896)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "resuming_ports", scope: !4247, file: !101, line: 462, baseType: !7, size: 32, offset: 928)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "ep0", scope: !4229, file: !101, line: 647, baseType: !4063, size: 640, offset: 640)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4229, file: !101, line: 649, baseType: !240, size: 5568, offset: 1280)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !4229, file: !101, line: 651, baseType: !4276, size: 144, offset: 6848)
!4276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_descriptor", file: !108, line: 289, size: 144, elements: !4277)
!4277 = !{!4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291}
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4276, file: !108, line: 290, baseType: !1374, size: 8)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4276, file: !108, line: 291, baseType: !1374, size: 8, offset: 8)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "bcdUSB", scope: !4276, file: !108, line: 293, baseType: !4073, size: 16, offset: 16)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !4276, file: !108, line: 294, baseType: !1374, size: 8, offset: 32)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !4276, file: !108, line: 295, baseType: !1374, size: 8, offset: 40)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !4276, file: !108, line: 296, baseType: !1374, size: 8, offset: 48)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPacketSize0", scope: !4276, file: !108, line: 297, baseType: !1374, size: 8, offset: 56)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !4276, file: !108, line: 298, baseType: !4073, size: 16, offset: 64)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !4276, file: !108, line: 299, baseType: !4073, size: 16, offset: 80)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice", scope: !4276, file: !108, line: 300, baseType: !4073, size: 16, offset: 96)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "iManufacturer", scope: !4276, file: !108, line: 301, baseType: !1374, size: 8, offset: 112)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "iProduct", scope: !4276, file: !108, line: 302, baseType: !1374, size: 8, offset: 120)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "iSerialNumber", scope: !4276, file: !108, line: 303, baseType: !1374, size: 8, offset: 128)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "bNumConfigurations", scope: !4276, file: !108, line: 304, baseType: !1374, size: 8, offset: 136)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "bos", scope: !4229, file: !101, line: 652, baseType: !4293, size: 64, offset: 7040)
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4294, size: 64)
!4294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_bos", file: !101, line: 396, size: 384, elements: !4295)
!4295 = !{!4296, !4304, !4312, !4324, !4337, !4346}
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4294, file: !101, line: 397, baseType: !4297, size: 64)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bos_descriptor", file: !108, line: 844, size: 40, elements: !4299)
!4299 = !{!4300, !4301, !4302, !4303}
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4298, file: !108, line: 845, baseType: !1374, size: 8)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4298, file: !108, line: 846, baseType: !1374, size: 8, offset: 8)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !4298, file: !108, line: 848, baseType: !4073, size: 16, offset: 16)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "bNumDeviceCaps", scope: !4298, file: !108, line: 849, baseType: !1374, size: 8, offset: 32)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "ext_cap", scope: !4294, file: !101, line: 400, baseType: !4305, size: 64, offset: 64)
!4305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4306, size: 64)
!4306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ext_cap_descriptor", file: !108, line: 895, size: 56, elements: !4307)
!4307 = !{!4308, !4309, !4310, !4311}
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4306, file: !108, line: 896, baseType: !1374, size: 8)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4306, file: !108, line: 897, baseType: !1374, size: 8, offset: 8)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4306, file: !108, line: 898, baseType: !1374, size: 8, offset: 16)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4306, file: !108, line: 899, baseType: !4092, size: 32, offset: 24)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "ss_cap", scope: !4294, file: !101, line: 401, baseType: !4313, size: 64, offset: 128)
!4313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4314, size: 64)
!4314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_cap_descriptor", file: !108, line: 917, size: 80, elements: !4315)
!4315 = !{!4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323}
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4314, file: !108, line: 918, baseType: !1374, size: 8)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4314, file: !108, line: 919, baseType: !1374, size: 8, offset: 8)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4314, file: !108, line: 920, baseType: !1374, size: 8, offset: 16)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4314, file: !108, line: 921, baseType: !1374, size: 8, offset: 24)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "wSpeedSupported", scope: !4314, file: !108, line: 923, baseType: !4073, size: 16, offset: 32)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionalitySupport", scope: !4314, file: !108, line: 928, baseType: !1374, size: 8, offset: 48)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "bU1devExitLat", scope: !4314, file: !108, line: 929, baseType: !1374, size: 8, offset: 56)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "bU2DevExitLat", scope: !4314, file: !108, line: 930, baseType: !4073, size: 16, offset: 64)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_cap", scope: !4294, file: !101, line: 402, baseType: !4325, size: 64, offset: 192)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_cap_descriptor", file: !108, line: 955, size: 128, elements: !4327)
!4327 = !{!4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335}
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4326, file: !108, line: 956, baseType: !1374, size: 8)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4326, file: !108, line: 957, baseType: !1374, size: 8, offset: 8)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4326, file: !108, line: 958, baseType: !1374, size: 8, offset: 16)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !4326, file: !108, line: 959, baseType: !1374, size: 8, offset: 24)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4326, file: !108, line: 960, baseType: !4092, size: 32, offset: 32)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "wFunctionalitySupport", scope: !4326, file: !108, line: 963, baseType: !4073, size: 16, offset: 64)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "wReserved", scope: !4326, file: !108, line: 967, baseType: !4073, size: 16, offset: 80)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "bmSublinkSpeedAttr", scope: !4326, file: !108, line: 968, baseType: !4336, size: 32, offset: 96)
!4336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4092, size: 32, elements: !1392)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "ss_id", scope: !4294, file: !101, line: 403, baseType: !4338, size: 64, offset: 256)
!4338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4339, size: 64)
!4339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_container_id_descriptor", file: !108, line: 940, size: 160, elements: !4340)
!4340 = !{!4341, !4342, !4343, !4344, !4345}
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4339, file: !108, line: 941, baseType: !1374, size: 8)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4339, file: !108, line: 942, baseType: !1374, size: 8, offset: 8)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4339, file: !108, line: 943, baseType: !1374, size: 8, offset: 16)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !4339, file: !108, line: 944, baseType: !1374, size: 8, offset: 24)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "ContainerID", scope: !4339, file: !108, line: 945, baseType: !2728, size: 128, offset: 32)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "ptm_cap", scope: !4294, file: !101, line: 404, baseType: !4347, size: 64, offset: 320)
!4347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4348, size: 64)
!4348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ptm_cap_descriptor", file: !108, line: 1080, size: 24, elements: !4349)
!4349 = !{!4350, !4351, !4352}
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4348, file: !108, line: 1081, baseType: !1374, size: 8)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4348, file: !108, line: 1082, baseType: !1374, size: 8, offset: 8)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4348, file: !108, line: 1083, baseType: !1374, size: 8, offset: 16)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !4229, file: !101, line: 653, baseType: !4354, size: 64, offset: 7104)
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4355, size: 64)
!4355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_config", file: !101, line: 374, size: 5440, elements: !4356)
!4356 = !{!4357, !4368, !4369, !4371, !4373, !4382, !4383}
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4355, file: !101, line: 375, baseType: !4358, size: 72)
!4358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_config_descriptor", file: !108, line: 349, size: 72, elements: !4359)
!4359 = !{!4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367}
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4358, file: !108, line: 350, baseType: !1374, size: 8)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4358, file: !108, line: 351, baseType: !1374, size: 8, offset: 8)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !4358, file: !108, line: 353, baseType: !4073, size: 16, offset: 16)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "bNumInterfaces", scope: !4358, file: !108, line: 354, baseType: !1374, size: 8, offset: 32)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "bConfigurationValue", scope: !4358, file: !108, line: 355, baseType: !1374, size: 8, offset: 40)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "iConfiguration", scope: !4358, file: !108, line: 356, baseType: !1374, size: 8, offset: 48)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4358, file: !108, line: 357, baseType: !1374, size: 8, offset: 56)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPower", scope: !4358, file: !108, line: 358, baseType: !1374, size: 8, offset: 64)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4355, file: !101, line: 377, baseType: !302, size: 64, offset: 128)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !4355, file: !101, line: 381, baseType: !4370, size: 1024, offset: 192)
!4370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4106, size: 1024, elements: !1756)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "interface", scope: !4355, file: !101, line: 385, baseType: !4372, size: 2048, offset: 1216)
!4372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4039, size: 2048, elements: !2251)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "intf_cache", scope: !4355, file: !101, line: 389, baseType: !4374, size: 2048, offset: 3264)
!4374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4375, size: 2048, elements: !2251)
!4375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4376, size: 64)
!4376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_cache", file: !101, line: 322, size: 64, elements: !4377)
!4377 = !{!4378, !4379, !4380}
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !4376, file: !101, line: 323, baseType: !7, size: 32)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4376, file: !101, line: 324, baseType: !3384, size: 32, offset: 32)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !4376, file: !101, line: 328, baseType: !4381, offset: 64)
!4381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4044, elements: !2352)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4355, file: !101, line: 391, baseType: !4060, size: 64, offset: 5312)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !4355, file: !101, line: 392, baseType: !228, size: 32, offset: 5376)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "actconfig", scope: !4229, file: !101, line: 655, baseType: !4354, size: 64, offset: 7168)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "ep_in", scope: !4229, file: !101, line: 656, baseType: !4386, size: 1024, offset: 7232)
!4386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4062, size: 1024, elements: !1756)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "ep_out", scope: !4229, file: !101, line: 657, baseType: !4386, size: 1024, offset: 8256)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "rawdescriptors", scope: !4229, file: !101, line: 659, baseType: !4389, size: 64, offset: 9280)
!4389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "bus_mA", scope: !4229, file: !101, line: 661, baseType: !176, size: 16, offset: 9344)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "portnum", scope: !4229, file: !101, line: 662, baseType: !1373, size: 8, offset: 9360)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4229, file: !101, line: 663, baseType: !1373, size: 8, offset: 9368)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "devaddr", scope: !4229, file: !101, line: 664, baseType: !1373, size: 8, offset: 9376)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "can_submit", scope: !4229, file: !101, line: 666, baseType: !7, size: 1, offset: 9384, flags: DIFlagBitField, extraData: i64 9384)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "persist_enabled", scope: !4229, file: !101, line: 667, baseType: !7, size: 1, offset: 9385, flags: DIFlagBitField, extraData: i64 9384)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "have_langid", scope: !4229, file: !101, line: 668, baseType: !7, size: 1, offset: 9386, flags: DIFlagBitField, extraData: i64 9384)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !4229, file: !101, line: 669, baseType: !7, size: 1, offset: 9387, flags: DIFlagBitField, extraData: i64 9384)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !4229, file: !101, line: 670, baseType: !7, size: 1, offset: 9388, flags: DIFlagBitField, extraData: i64 9384)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "wusb", scope: !4229, file: !101, line: 671, baseType: !7, size: 1, offset: 9389, flags: DIFlagBitField, extraData: i64 9384)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_capable", scope: !4229, file: !101, line: 672, baseType: !7, size: 1, offset: 9390, flags: DIFlagBitField, extraData: i64 9384)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_capable", scope: !4229, file: !101, line: 673, baseType: !7, size: 1, offset: 9391, flags: DIFlagBitField, extraData: i64 9384)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_besl_capable", scope: !4229, file: !101, line: 674, baseType: !7, size: 1, offset: 9392, flags: DIFlagBitField, extraData: i64 9384)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_enabled", scope: !4229, file: !101, line: 675, baseType: !7, size: 1, offset: 9393, flags: DIFlagBitField, extraData: i64 9384)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_allowed", scope: !4229, file: !101, line: 676, baseType: !7, size: 1, offset: 9394, flags: DIFlagBitField, extraData: i64 9384)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u1_enabled", scope: !4229, file: !101, line: 677, baseType: !7, size: 1, offset: 9395, flags: DIFlagBitField, extraData: i64 9384)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u2_enabled", scope: !4229, file: !101, line: 678, baseType: !7, size: 1, offset: 9396, flags: DIFlagBitField, extraData: i64 9384)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "string_langid", scope: !4229, file: !101, line: 679, baseType: !228, size: 32, offset: 9408)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4229, file: !101, line: 682, baseType: !302, size: 64, offset: 9472)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !4229, file: !101, line: 683, baseType: !302, size: 64, offset: 9536)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !4229, file: !101, line: 684, baseType: !302, size: 64, offset: 9600)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !4229, file: !101, line: 686, baseType: !248, size: 128, offset: 9664)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "maxchild", scope: !4229, file: !101, line: 688, baseType: !228, size: 32, offset: 9792)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !4229, file: !101, line: 690, baseType: !442, size: 32, offset: 9824)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "urbnum", scope: !4229, file: !101, line: 691, baseType: !772, size: 32, offset: 9856)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "active_duration", scope: !4229, file: !101, line: 693, baseType: !351, size: 64, offset: 9920)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !4229, file: !101, line: 696, baseType: !351, size: 64, offset: 9984)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "do_remote_wakeup", scope: !4229, file: !101, line: 698, baseType: !7, size: 1, offset: 10048, flags: DIFlagBitField, extraData: i64 10048)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !4229, file: !101, line: 699, baseType: !7, size: 1, offset: 10049, flags: DIFlagBitField, extraData: i64 10048)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "port_is_suspended", scope: !4229, file: !101, line: 700, baseType: !7, size: 1, offset: 10050, flags: DIFlagBitField, extraData: i64 10048)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "wusb_dev", scope: !4229, file: !101, line: 702, baseType: !4421, size: 64, offset: 10112)
!4421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4422, size: 64)
!4422 = !DICompositeType(tag: DW_TAG_structure_type, name: "wusb_dev", file: !101, line: 28, flags: DIFlagFwdDecl)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "slot_id", scope: !4229, file: !101, line: 703, baseType: !228, size: 32, offset: 10176)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4229, file: !101, line: 704, baseType: !128, size: 32, offset: 10208)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "l1_params", scope: !4229, file: !101, line: 705, baseType: !4426, size: 64, offset: 10240)
!4426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb2_lpm_parameters", file: !101, line: 502, size: 64, elements: !4427)
!4427 = !{!4428, !4429}
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "besl", scope: !4426, file: !101, line: 506, baseType: !7, size: 32)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4426, file: !101, line: 512, baseType: !228, size: 32, offset: 32)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "u1_params", scope: !4229, file: !101, line: 706, baseType: !4431, size: 128, offset: 10304)
!4431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb3_lpm_parameters", file: !101, line: 522, size: 128, elements: !4432)
!4432 = !{!4433, !4434, !4435, !4436}
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "mel", scope: !4431, file: !101, line: 529, baseType: !7, size: 32)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !4431, file: !101, line: 535, baseType: !7, size: 32, offset: 32)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "sel", scope: !4431, file: !101, line: 545, baseType: !7, size: 32, offset: 64)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4431, file: !101, line: 551, baseType: !228, size: 32, offset: 96)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "u2_params", scope: !4229, file: !101, line: 707, baseType: !4431, size: 128, offset: 10432)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_disable_count", scope: !4229, file: !101, line: 708, baseType: !7, size: 32, offset: 10560)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "hub_delay", scope: !4229, file: !101, line: 710, baseType: !172, size: 16, offset: 10592)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "use_generic_driver", scope: !4229, file: !101, line: 711, baseType: !7, size: 1, offset: 10608, flags: DIFlagBitField, extraData: i64 10608)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !4209, file: !101, line: 1575, baseType: !4062, size: 64, offset: 576)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !4209, file: !101, line: 1576, baseType: !7, size: 32, offset: 640)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4209, file: !101, line: 1577, baseType: !7, size: 32, offset: 672)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4209, file: !101, line: 1578, baseType: !228, size: 32, offset: 704)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_flags", scope: !4209, file: !101, line: 1579, baseType: !7, size: 32, offset: 736)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer", scope: !4209, file: !101, line: 1580, baseType: !168, size: 64, offset: 768)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_dma", scope: !4209, file: !101, line: 1581, baseType: !943, size: 64, offset: 832)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !4209, file: !101, line: 1582, baseType: !4449, size: 64, offset: 896)
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !4451, line: 11, size: 256, elements: !4452)
!4451 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/lizy2001/genbc/linux")
!4452 = !{!4453, !4454, !4455, !4456, !4457}
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !4450, file: !4451, line: 12, baseType: !351, size: 64)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4450, file: !4451, line: 13, baseType: !7, size: 32, offset: 64)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4450, file: !4451, line: 14, baseType: !7, size: 32, offset: 96)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !4450, file: !4451, line: 15, baseType: !943, size: 64, offset: 128)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !4450, file: !4451, line: 17, baseType: !7, size: 32, offset: 192)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "num_mapped_sgs", scope: !4209, file: !101, line: 1583, baseType: !228, size: 32, offset: 960)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "num_sgs", scope: !4209, file: !101, line: 1584, baseType: !228, size: 32, offset: 992)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer_length", scope: !4209, file: !101, line: 1585, baseType: !442, size: 32, offset: 1024)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !4209, file: !101, line: 1586, baseType: !442, size: 32, offset: 1056)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "setup_packet", scope: !4209, file: !101, line: 1587, baseType: !4060, size: 64, offset: 1088)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "setup_dma", scope: !4209, file: !101, line: 1588, baseType: !943, size: 64, offset: 1152)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !4209, file: !101, line: 1589, baseType: !228, size: 32, offset: 1216)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_packets", scope: !4209, file: !101, line: 1590, baseType: !228, size: 32, offset: 1248)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !4209, file: !101, line: 1591, baseType: !228, size: 32, offset: 1280)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "error_count", scope: !4209, file: !101, line: 1593, baseType: !228, size: 32, offset: 1312)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !4209, file: !101, line: 1594, baseType: !168, size: 64, offset: 1344)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4209, file: !101, line: 1595, baseType: !4470, size: 64, offset: 1408)
!4470 = !DIDerivedType(tag: DW_TAG_typedef, name: "usb_complete_t", file: !101, line: 1376, baseType: !4471)
!4471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4472, size: 64)
!4472 = !DISubroutineType(types: !4473)
!4473 = !{null, !4208}
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "iso_frame_desc", scope: !4209, file: !101, line: 1596, baseType: !4475, offset: 1472)
!4475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4476, elements: !2352)
!4476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_iso_packet_descriptor", file: !101, line: 1351, size: 128, elements: !4477)
!4477 = !{!4478, !4479, !4480, !4481}
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4476, file: !101, line: 1352, baseType: !7, size: 32)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4476, file: !101, line: 1353, baseType: !7, size: 32, offset: 32)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !4476, file: !101, line: 1354, baseType: !7, size: 32, offset: 64)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4476, file: !101, line: 1355, baseType: !228, size: 32, offset: 96)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "duxbuf", scope: !4205, file: !3, line: 151, baseType: !4483, size: 64, offset: 64)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "inbuf", scope: !4205, file: !3, line: 152, baseType: !4485, size: 64, offset: 128)
!4485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4486, size: 64)
!4486 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !173, line: 16, baseType: !4487)
!4487 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !175, line: 20, baseType: !4488)
!4488 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "ai_cmd_running", scope: !4205, file: !3, line: 153, baseType: !1226, size: 16, offset: 192)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "ignore", scope: !4205, file: !3, line: 154, baseType: !228, size: 32, offset: 224)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "mut", scope: !4205, file: !3, line: 155, baseType: !1194, size: 192, offset: 256)
!4492 = !DILocation(line: 983, column: 29, scope: !4196)
!4493 = !DILocation(line: 983, column: 39, scope: !4196)
!4494 = !DILocation(line: 983, column: 44, scope: !4196)
!4495 = !DILocation(line: 985, column: 7, scope: !4496)
!4496 = distinct !DILexicalBlock(scope: !4196, file: !3, line: 985, column: 6)
!4497 = !DILocation(line: 985, column: 6, scope: !4196)
!4498 = !DILocation(line: 986, column: 3, scope: !4496)
!4499 = !DILocation(line: 988, column: 14, scope: !4196)
!4500 = !DILocation(line: 988, column: 23, scope: !4196)
!4501 = !DILocation(line: 988, column: 2, scope: !4196)
!4502 = !DILocation(line: 990, column: 19, scope: !4196)
!4503 = !DILocation(line: 990, column: 2, scope: !4196)
!4504 = !DILocation(line: 992, column: 6, scope: !4505)
!4505 = distinct !DILexicalBlock(scope: !4196, file: !3, line: 992, column: 6)
!4506 = !DILocation(line: 992, column: 15, scope: !4505)
!4507 = !DILocation(line: 992, column: 6, scope: !4196)
!4508 = !DILocation(line: 994, column: 16, scope: !4509)
!4509 = distinct !DILexicalBlock(scope: !4505, file: !3, line: 992, column: 20)
!4510 = !DILocation(line: 994, column: 25, scope: !4509)
!4511 = !DILocation(line: 994, column: 3, scope: !4509)
!4512 = !DILocation(line: 996, column: 9, scope: !4509)
!4513 = !DILocation(line: 996, column: 18, scope: !4509)
!4514 = !DILocation(line: 996, column: 3, scope: !4509)
!4515 = !DILocation(line: 997, column: 16, scope: !4509)
!4516 = !DILocation(line: 997, column: 25, scope: !4509)
!4517 = !DILocation(line: 997, column: 3, scope: !4509)
!4518 = !DILocation(line: 998, column: 2, scope: !4509)
!4519 = !DILocation(line: 1000, column: 8, scope: !4196)
!4520 = !DILocation(line: 1000, column: 17, scope: !4196)
!4521 = !DILocation(line: 1000, column: 2, scope: !4196)
!4522 = !DILocation(line: 1002, column: 16, scope: !4196)
!4523 = !DILocation(line: 1002, column: 25, scope: !4196)
!4524 = !DILocation(line: 1002, column: 2, scope: !4196)
!4525 = !DILocation(line: 1004, column: 17, scope: !4196)
!4526 = !DILocation(line: 1004, column: 26, scope: !4196)
!4527 = !DILocation(line: 1004, column: 2, scope: !4196)
!4528 = !DILocation(line: 1005, column: 1, scope: !4196)
!4529 = !DILocalVariable(name: "s", arg: 1, scope: !4530, file: !150, line: 445, type: !958)
!4530 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !150, file: !150, line: 445, type: !4531, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!4531 = !DISubroutineType(types: !4532)
!4532 = !{!168, !958, !169, !348}
!4533 = !DILocation(line: 445, column: 72, scope: !4530, inlinedAt: !4534)
!4534 = distinct !DILocation(line: 552, column: 10, scope: !4535, inlinedAt: !4540)
!4535 = distinct !DILexicalBlock(scope: !4536, file: !150, line: 540, column: 34)
!4536 = distinct !DILexicalBlock(scope: !4537, file: !150, line: 540, column: 6)
!4537 = distinct !DISubprogram(name: "kmalloc", scope: !150, file: !150, line: 538, type: !4538, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!4538 = !DISubroutineType(types: !4539)
!4539 = !{!168, !348, !169}
!4540 = distinct !DILocation(line: 950, column: 19, scope: !4027)
!4541 = !DILocalVariable(name: "flags", arg: 2, scope: !4530, file: !150, line: 446, type: !169)
!4542 = !DILocation(line: 446, column: 9, scope: !4530, inlinedAt: !4534)
!4543 = !DILocalVariable(name: "size", arg: 3, scope: !4530, file: !150, line: 446, type: !348)
!4544 = !DILocation(line: 446, column: 23, scope: !4530, inlinedAt: !4534)
!4545 = !DILocalVariable(name: "ret", scope: !4530, file: !150, line: 448, type: !168)
!4546 = !DILocation(line: 448, column: 8, scope: !4530, inlinedAt: !4534)
!4547 = !DILocalVariable(name: "flags", arg: 1, scope: !4548, file: !150, line: 318, type: !169)
!4548 = distinct !DISubprogram(name: "kmalloc_type", scope: !150, file: !150, line: 318, type: !4549, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!4549 = !DISubroutineType(types: !4550)
!4550 = !{!149, !169}
!4551 = !DILocation(line: 318, column: 67, scope: !4548, inlinedAt: !4552)
!4552 = distinct !DILocation(line: 553, column: 20, scope: !4535, inlinedAt: !4540)
!4553 = !DILocalVariable(name: "size", arg: 1, scope: !4554, file: !150, line: 346, type: !348)
!4554 = distinct !DISubprogram(name: "kmalloc_index", scope: !150, file: !150, line: 346, type: !4555, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!4555 = !DISubroutineType(types: !4556)
!4556 = !{!7, !348}
!4557 = !DILocation(line: 346, column: 58, scope: !4554, inlinedAt: !4558)
!4558 = distinct !DILocation(line: 547, column: 11, scope: !4535, inlinedAt: !4540)
!4559 = !DILocalVariable(name: "size", arg: 1, scope: !4560, file: !150, line: 472, type: !348)
!4560 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !150, file: !150, line: 472, type: !4561, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!4561 = !DISubroutineType(types: !4562)
!4562 = !{!168, !348, !169, !7}
!4563 = !DILocation(line: 472, column: 28, scope: !4560, inlinedAt: !4564)
!4564 = distinct !DILocation(line: 481, column: 9, scope: !4565, inlinedAt: !4566)
!4565 = distinct !DISubprogram(name: "kmalloc_large", scope: !150, file: !150, line: 478, type: !4538, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!4566 = distinct !DILocation(line: 545, column: 11, scope: !4567, inlinedAt: !4540)
!4567 = distinct !DILexicalBlock(scope: !4535, file: !150, line: 544, column: 7)
!4568 = !DILocalVariable(name: "flags", arg: 2, scope: !4560, file: !150, line: 472, type: !169)
!4569 = !DILocation(line: 472, column: 40, scope: !4560, inlinedAt: !4564)
!4570 = !DILocalVariable(name: "order", arg: 3, scope: !4560, file: !150, line: 472, type: !7)
!4571 = !DILocation(line: 472, column: 60, scope: !4560, inlinedAt: !4564)
!4572 = !DILocalVariable(name: "size", arg: 1, scope: !4565, file: !150, line: 478, type: !348)
!4573 = !DILocation(line: 478, column: 51, scope: !4565, inlinedAt: !4566)
!4574 = !DILocalVariable(name: "flags", arg: 2, scope: !4565, file: !150, line: 478, type: !169)
!4575 = !DILocation(line: 478, column: 63, scope: !4565, inlinedAt: !4566)
!4576 = !DILocalVariable(name: "order", scope: !4565, file: !150, line: 480, type: !7)
!4577 = !DILocation(line: 480, column: 15, scope: !4565, inlinedAt: !4566)
!4578 = !DILocalVariable(name: "size", arg: 1, scope: !4537, file: !150, line: 538, type: !348)
!4579 = !DILocation(line: 538, column: 45, scope: !4537, inlinedAt: !4540)
!4580 = !DILocalVariable(name: "flags", arg: 2, scope: !4537, file: !150, line: 538, type: !169)
!4581 = !DILocation(line: 538, column: 57, scope: !4537, inlinedAt: !4540)
!4582 = !DILocalVariable(name: "index", scope: !4535, file: !150, line: 542, type: !7)
!4583 = !DILocation(line: 542, column: 16, scope: !4535, inlinedAt: !4540)
!4584 = !DILocation(line: 445, column: 72, scope: !4530, inlinedAt: !4585)
!4585 = distinct !DILocation(line: 552, column: 10, scope: !4535, inlinedAt: !4586)
!4586 = distinct !DILocation(line: 934, column: 20, scope: !4027)
!4587 = !DILocation(line: 446, column: 9, scope: !4530, inlinedAt: !4585)
!4588 = !DILocation(line: 446, column: 23, scope: !4530, inlinedAt: !4585)
!4589 = !DILocation(line: 448, column: 8, scope: !4530, inlinedAt: !4585)
!4590 = !DILocation(line: 318, column: 67, scope: !4548, inlinedAt: !4591)
!4591 = distinct !DILocation(line: 553, column: 20, scope: !4535, inlinedAt: !4586)
!4592 = !DILocation(line: 346, column: 58, scope: !4554, inlinedAt: !4593)
!4593 = distinct !DILocation(line: 547, column: 11, scope: !4535, inlinedAt: !4586)
!4594 = !DILocation(line: 472, column: 28, scope: !4560, inlinedAt: !4595)
!4595 = distinct !DILocation(line: 481, column: 9, scope: !4565, inlinedAt: !4596)
!4596 = distinct !DILocation(line: 545, column: 11, scope: !4567, inlinedAt: !4586)
!4597 = !DILocation(line: 472, column: 40, scope: !4560, inlinedAt: !4595)
!4598 = !DILocation(line: 472, column: 60, scope: !4560, inlinedAt: !4595)
!4599 = !DILocation(line: 478, column: 51, scope: !4565, inlinedAt: !4596)
!4600 = !DILocation(line: 478, column: 63, scope: !4565, inlinedAt: !4596)
!4601 = !DILocation(line: 480, column: 15, scope: !4565, inlinedAt: !4596)
!4602 = !DILocation(line: 538, column: 45, scope: !4537, inlinedAt: !4586)
!4603 = !DILocation(line: 538, column: 57, scope: !4537, inlinedAt: !4586)
!4604 = !DILocation(line: 542, column: 16, scope: !4535, inlinedAt: !4586)
!4605 = !DILocalVariable(name: "dev", arg: 1, scope: !4027, file: !3, line: 912, type: !229)
!4606 = !DILocation(line: 912, column: 57, scope: !4027)
!4607 = !DILocalVariable(name: "context_unused", arg: 2, scope: !4027, file: !3, line: 913, type: !351)
!4608 = !DILocation(line: 913, column: 21, scope: !4027)
!4609 = !DILocalVariable(name: "intf", scope: !4027, file: !3, line: 915, type: !4039)
!4610 = !DILocation(line: 915, column: 24, scope: !4027)
!4611 = !DILocation(line: 915, column: 55, scope: !4027)
!4612 = !DILocation(line: 915, column: 31, scope: !4027)
!4613 = !DILocalVariable(name: "usb", scope: !4027, file: !3, line: 916, type: !4228)
!4614 = !DILocation(line: 916, column: 21, scope: !4027)
!4615 = !DILocation(line: 916, column: 45, scope: !4027)
!4616 = !DILocation(line: 916, column: 27, scope: !4027)
!4617 = !DILocalVariable(name: "devpriv", scope: !4027, file: !3, line: 917, type: !4204)
!4618 = !DILocation(line: 917, column: 29, scope: !4027)
!4619 = !DILocalVariable(name: "s", scope: !4027, file: !3, line: 918, type: !3852)
!4620 = !DILocation(line: 918, column: 27, scope: !4027)
!4621 = !DILocalVariable(name: "ret", scope: !4027, file: !3, line: 919, type: !228)
!4622 = !DILocation(line: 919, column: 6, scope: !4027)
!4623 = !DILocation(line: 921, column: 6, scope: !4624)
!4624 = distinct !DILexicalBlock(scope: !4027, file: !3, line: 921, column: 6)
!4625 = !DILocation(line: 921, column: 11, scope: !4624)
!4626 = !DILocation(line: 921, column: 17, scope: !4624)
!4627 = !DILocation(line: 921, column: 6, scope: !4027)
!4628 = !DILocation(line: 922, column: 3, scope: !4629)
!4629 = distinct !DILexicalBlock(scope: !4624, file: !3, line: 921, column: 36)
!4630 = !DILocation(line: 924, column: 3, scope: !4629)
!4631 = !DILocation(line: 927, column: 33, scope: !4027)
!4632 = !DILocation(line: 927, column: 12, scope: !4027)
!4633 = !DILocation(line: 927, column: 10, scope: !4027)
!4634 = !DILocation(line: 928, column: 7, scope: !4635)
!4635 = distinct !DILexicalBlock(scope: !4027, file: !3, line: 928, column: 6)
!4636 = !DILocation(line: 928, column: 6, scope: !4027)
!4637 = !DILocation(line: 929, column: 3, scope: !4635)
!4638 = !DILocation(line: 931, column: 2, scope: !4027)
!4639 = !DILocation(line: 931, column: 2, scope: !4640)
!4640 = distinct !DILexicalBlock(scope: !4027, file: !3, line: 931, column: 2)
!4641 = !DILocation(line: 932, column: 19, scope: !4027)
!4642 = !DILocation(line: 932, column: 25, scope: !4027)
!4643 = !DILocation(line: 932, column: 2, scope: !4027)
!4644 = !DILocation(line: 540, column: 27, scope: !4536, inlinedAt: !4586)
!4645 = !DILocation(line: 540, column: 6, scope: !4536, inlinedAt: !4586)
!4646 = !DILocation(line: 540, column: 6, scope: !4537, inlinedAt: !4586)
!4647 = !DILocation(line: 544, column: 7, scope: !4567, inlinedAt: !4586)
!4648 = !DILocation(line: 544, column: 12, scope: !4567, inlinedAt: !4586)
!4649 = !DILocation(line: 544, column: 7, scope: !4535, inlinedAt: !4586)
!4650 = !DILocation(line: 545, column: 25, scope: !4567, inlinedAt: !4586)
!4651 = !DILocation(line: 545, column: 31, scope: !4567, inlinedAt: !4586)
!4652 = !DILocation(line: 480, column: 33, scope: !4565, inlinedAt: !4596)
!4653 = !DILocation(line: 480, column: 23, scope: !4565, inlinedAt: !4596)
!4654 = !DILocation(line: 481, column: 29, scope: !4565, inlinedAt: !4596)
!4655 = !DILocation(line: 481, column: 35, scope: !4565, inlinedAt: !4596)
!4656 = !DILocation(line: 481, column: 42, scope: !4565, inlinedAt: !4596)
!4657 = !DILocation(line: 474, column: 23, scope: !4560, inlinedAt: !4595)
!4658 = !DILocation(line: 474, column: 29, scope: !4560, inlinedAt: !4595)
!4659 = !DILocation(line: 474, column: 36, scope: !4560, inlinedAt: !4595)
!4660 = !DILocation(line: 474, column: 9, scope: !4560, inlinedAt: !4595)
!4661 = !DILocation(line: 545, column: 4, scope: !4567, inlinedAt: !4586)
!4662 = !DILocation(line: 547, column: 25, scope: !4535, inlinedAt: !4586)
!4663 = !DILocation(line: 348, column: 7, scope: !4664, inlinedAt: !4593)
!4664 = distinct !DILexicalBlock(scope: !4554, file: !150, line: 348, column: 6)
!4665 = !DILocation(line: 348, column: 6, scope: !4554, inlinedAt: !4593)
!4666 = !DILocation(line: 349, column: 3, scope: !4664, inlinedAt: !4593)
!4667 = !DILocation(line: 351, column: 6, scope: !4668, inlinedAt: !4593)
!4668 = distinct !DILexicalBlock(scope: !4554, file: !150, line: 351, column: 6)
!4669 = !DILocation(line: 351, column: 11, scope: !4668, inlinedAt: !4593)
!4670 = !DILocation(line: 351, column: 6, scope: !4554, inlinedAt: !4593)
!4671 = !DILocation(line: 352, column: 3, scope: !4668, inlinedAt: !4593)
!4672 = !DILocation(line: 354, column: 32, scope: !4673, inlinedAt: !4593)
!4673 = distinct !DILexicalBlock(scope: !4554, file: !150, line: 354, column: 6)
!4674 = !DILocation(line: 354, column: 37, scope: !4673, inlinedAt: !4593)
!4675 = !DILocation(line: 354, column: 42, scope: !4673, inlinedAt: !4593)
!4676 = !DILocation(line: 354, column: 45, scope: !4673, inlinedAt: !4593)
!4677 = !DILocation(line: 354, column: 50, scope: !4673, inlinedAt: !4593)
!4678 = !DILocation(line: 354, column: 6, scope: !4554, inlinedAt: !4593)
!4679 = !DILocation(line: 355, column: 3, scope: !4673, inlinedAt: !4593)
!4680 = !DILocation(line: 356, column: 32, scope: !4681, inlinedAt: !4593)
!4681 = distinct !DILexicalBlock(scope: !4554, file: !150, line: 356, column: 6)
!4682 = !DILocation(line: 356, column: 37, scope: !4681, inlinedAt: !4593)
!4683 = !DILocation(line: 356, column: 43, scope: !4681, inlinedAt: !4593)
!4684 = !DILocation(line: 356, column: 46, scope: !4681, inlinedAt: !4593)
!4685 = !DILocation(line: 356, column: 51, scope: !4681, inlinedAt: !4593)
!4686 = !DILocation(line: 356, column: 6, scope: !4554, inlinedAt: !4593)
!4687 = !DILocation(line: 357, column: 3, scope: !4681, inlinedAt: !4593)
!4688 = !DILocation(line: 358, column: 6, scope: !4689, inlinedAt: !4593)
!4689 = distinct !DILexicalBlock(scope: !4554, file: !150, line: 358, column: 6)
!4690 = !DILocation(line: 358, column: 11, scope: !4689, inlinedAt: !4593)
!4691 = !DILocation(line: 358, column: 6, scope: !4554, inlinedAt: !4593)
!4692 = !DILocation(line: 358, column: 26, scope: !4689, inlinedAt: !4593)
!4693 = !DILocation(line: 359, column: 6, scope: !4694, inlinedAt: !4593)
!4694 = distinct !DILexicalBlock(scope: !4554, file: !150, line: 359, column: 6)
!4695 = !DILocation(line: 359, column: 11, scope: !4694, inlinedAt: !4593)
!4696 = !DILocation(line: 359, column: 6, scope: !4554, inlinedAt: !4593)
!4697 = !DILocation(line: 359, column: 26, scope: !4694, inlinedAt: !4593)
!4698 = !DILocation(line: 360, column: 6, scope: !4699, inlinedAt: !4593)
!4699 = distinct !DILexicalBlock(scope: !4554, file: !150, line: 360, column: 6)
!4700 = !DILocation(line: 360, column: 11, scope: !4699, inlinedAt: !4593)
!4701 = !DILocation(line: 360, column: 6, scope: !4554, inlinedAt: !4593)
!4702 = !DILocation(line: 360, column: 26, scope: !4699, inlinedAt: !4593)
!4703 = !DILocation(line: 361, column: 6, scope: !4704, inlinedAt: !4593)
!4704 = distinct !DILexicalBlock(scope: !4554, file: !150, line: 361, column: 6)
!4705 = !DILocation(line: 361, column: 11, scope: !4704, inlinedAt: !4593)
!4706 = !DILocation(line: 361, column: 6, scope: !4554, inlinedAt: !4593)
!4707 = !DILocation(line: 361, column: 26, scope: !4704, inlinedAt: !4593)
!4708 = !DILocation(line: 362, column: 6, scope: !4709, inlinedAt: !4593)
!4709 = distinct !DILexicalBlock(scope: !4554, file: !150, line: 362, column: 6)
!4710 = !DILocation(line: 362, column: 11, scope: !4709, inlinedAt: !4593)
!4711 = !DILocation(line: 362, column: 6, scope: !4554, inlinedAt: !4593)
!4712 = !DILocation(line: 362, column: 26, scope: !4709, inlinedAt: !4593)
!4713 = !DILocation(line: 363, column: 6, scope: !4714, inlinedAt: !4593)
!4714 = distinct !DILexicalBlock(scope: !4554, file: !150, line: 363, column: 6)
!4715 = !DILocation(line: 363, column: 11, scope: !4714, inlinedAt: !4593)
!4716 = !DILocation(line: 363, column: 6, scope: !4554, inlinedAt: !4593)
!4717 = !DILocation(line: 363, column: 26, scope: !4714, inlinedAt: !4593)
!4718 = !DILocation(line: 364, column: 6, scope: !4719, inlinedAt: !4593)
!4719 = distinct !DILexicalBlock(scope: !4554, file: !150, line: 364, column: 6)
!4720 = !DILocation(line: 364, column: 11, scope: !4719, inlinedAt: !4593)
!4721 = !DILocation(line: 364, column: 6, scope: !4554, inlinedAt: !4593)
!4722 = !DILocation(line: 364, column: 26, scope: !4719, inlinedAt: !4593)
!4723 = !DILocation(line: 365, column: 6, scope: !4724, inlinedAt: !4593)
!4724 = distinct !DILexicalBlock(scope: !4554, file: !150, line: 365, column: 6)
!4725 = !DILocation(line: 365, column: 11, scope: !4724, inlinedAt: !4593)
!4726 = !DILocation(line: 365, column: 6, scope: !4554, inlinedAt: !4593)
!4727 = !DILocation(line: 365, column: 26, scope: !4724, inlinedAt: !4593)
!4728 = !DILocation(line: 366, column: 6, scope: !4729, inlinedAt: !4593)
!4729 = distinct !DILexicalBlock(scope: !4554, file: !150, line: 366, column: 6)
!4730 = !DILocation(line: 366, column: 11, scope: !4729, inlinedAt: !4593)
!4731 = !DILocation(line: 366, column: 6, scope: !4554, inlinedAt: !4593)
!4732 = !DILocation(line: 366, column: 26, scope: !4729, inlinedAt: !4593)
!4733 = !DILocation(line: 367, column: 6, scope: !4734, inlinedAt: !4593)
!4734 = distinct !DILexicalBlock(scope: !4554, file: !150, line: 367, column: 6)
!4735 = !DILocation(line: 367, column: 11, scope: !4734, inlinedAt: !4593)
!4736 = !DILocation(line: 367, column: 6, scope: !4554, inlinedAt: !4593)
!4737 = !DILocation(line: 367, column: 26, scope: !4734, inlinedAt: !4593)
!4738 = !DILocation(line: 368, column: 6, scope: !4739, inlinedAt: !4593)
!4739 = distinct !DILexicalBlock(scope: !4554, file: !150, line: 368, column: 6)
!4740 = !DILocation(line: 368, column: 11, scope: !4739, inlinedAt: !4593)
!4741 = !DILocation(line: 368, column: 6, scope: !4554, inlinedAt: !4593)
!4742 = !DILocation(line: 368, column: 26, scope: !4739, inlinedAt: !4593)
!4743 = !DILocation(line: 369, column: 6, scope: !4744, inlinedAt: !4593)
!4744 = distinct !DILexicalBlock(scope: !4554, file: !150, line: 369, column: 6)
!4745 = !DILocation(line: 369, column: 11, scope: !4744, inlinedAt: !4593)
!4746 = !DILocation(line: 369, column: 6, scope: !4554, inlinedAt: !4593)
!4747 = !DILocation(line: 369, column: 26, scope: !4744, inlinedAt: !4593)
!4748 = !DILocation(line: 370, column: 6, scope: !4749, inlinedAt: !4593)
!4749 = distinct !DILexicalBlock(scope: !4554, file: !150, line: 370, column: 6)
!4750 = !DILocation(line: 370, column: 11, scope: !4749, inlinedAt: !4593)
!4751 = !DILocation(line: 370, column: 6, scope: !4554, inlinedAt: !4593)
!4752 = !DILocation(line: 370, column: 26, scope: !4749, inlinedAt: !4593)
!4753 = !DILocation(line: 371, column: 6, scope: !4754, inlinedAt: !4593)
!4754 = distinct !DILexicalBlock(scope: !4554, file: !150, line: 371, column: 6)
!4755 = !DILocation(line: 371, column: 11, scope: !4754, inlinedAt: !4593)
!4756 = !DILocation(line: 371, column: 6, scope: !4554, inlinedAt: !4593)
!4757 = !DILocation(line: 371, column: 26, scope: !4754, inlinedAt: !4593)
!4758 = !DILocation(line: 372, column: 6, scope: !4759, inlinedAt: !4593)
!4759 = distinct !DILexicalBlock(scope: !4554, file: !150, line: 372, column: 6)
!4760 = !DILocation(line: 372, column: 11, scope: !4759, inlinedAt: !4593)
!4761 = !DILocation(line: 372, column: 6, scope: !4554, inlinedAt: !4593)
!4762 = !DILocation(line: 372, column: 26, scope: !4759, inlinedAt: !4593)
!4763 = !DILocation(line: 373, column: 6, scope: !4764, inlinedAt: !4593)
!4764 = distinct !DILexicalBlock(scope: !4554, file: !150, line: 373, column: 6)
!4765 = !DILocation(line: 373, column: 11, scope: !4764, inlinedAt: !4593)
!4766 = !DILocation(line: 373, column: 6, scope: !4554, inlinedAt: !4593)
!4767 = !DILocation(line: 373, column: 26, scope: !4764, inlinedAt: !4593)
!4768 = !DILocation(line: 374, column: 6, scope: !4769, inlinedAt: !4593)
!4769 = distinct !DILexicalBlock(scope: !4554, file: !150, line: 374, column: 6)
!4770 = !DILocation(line: 374, column: 11, scope: !4769, inlinedAt: !4593)
!4771 = !DILocation(line: 374, column: 6, scope: !4554, inlinedAt: !4593)
!4772 = !DILocation(line: 374, column: 26, scope: !4769, inlinedAt: !4593)
!4773 = !DILocation(line: 375, column: 6, scope: !4774, inlinedAt: !4593)
!4774 = distinct !DILexicalBlock(scope: !4554, file: !150, line: 375, column: 6)
!4775 = !DILocation(line: 375, column: 11, scope: !4774, inlinedAt: !4593)
!4776 = !DILocation(line: 375, column: 6, scope: !4554, inlinedAt: !4593)
!4777 = !DILocation(line: 375, column: 27, scope: !4774, inlinedAt: !4593)
!4778 = !DILocation(line: 376, column: 6, scope: !4779, inlinedAt: !4593)
!4779 = distinct !DILexicalBlock(scope: !4554, file: !150, line: 376, column: 6)
!4780 = !DILocation(line: 376, column: 11, scope: !4779, inlinedAt: !4593)
!4781 = !DILocation(line: 376, column: 6, scope: !4554, inlinedAt: !4593)
!4782 = !DILocation(line: 376, column: 32, scope: !4779, inlinedAt: !4593)
!4783 = !DILocation(line: 377, column: 6, scope: !4784, inlinedAt: !4593)
!4784 = distinct !DILexicalBlock(scope: !4554, file: !150, line: 377, column: 6)
!4785 = !DILocation(line: 377, column: 11, scope: !4784, inlinedAt: !4593)
!4786 = !DILocation(line: 377, column: 6, scope: !4554, inlinedAt: !4593)
!4787 = !DILocation(line: 377, column: 32, scope: !4784, inlinedAt: !4593)
!4788 = !DILocation(line: 378, column: 6, scope: !4789, inlinedAt: !4593)
!4789 = distinct !DILexicalBlock(scope: !4554, file: !150, line: 378, column: 6)
!4790 = !DILocation(line: 378, column: 11, scope: !4789, inlinedAt: !4593)
!4791 = !DILocation(line: 378, column: 6, scope: !4554, inlinedAt: !4593)
!4792 = !DILocation(line: 378, column: 32, scope: !4789, inlinedAt: !4593)
!4793 = !DILocation(line: 379, column: 6, scope: !4794, inlinedAt: !4593)
!4794 = distinct !DILexicalBlock(scope: !4554, file: !150, line: 379, column: 6)
!4795 = !DILocation(line: 379, column: 11, scope: !4794, inlinedAt: !4593)
!4796 = !DILocation(line: 379, column: 6, scope: !4554, inlinedAt: !4593)
!4797 = !DILocation(line: 379, column: 33, scope: !4794, inlinedAt: !4593)
!4798 = !DILocation(line: 380, column: 6, scope: !4799, inlinedAt: !4593)
!4799 = distinct !DILexicalBlock(scope: !4554, file: !150, line: 380, column: 6)
!4800 = !DILocation(line: 380, column: 11, scope: !4799, inlinedAt: !4593)
!4801 = !DILocation(line: 380, column: 6, scope: !4554, inlinedAt: !4593)
!4802 = !DILocation(line: 380, column: 33, scope: !4799, inlinedAt: !4593)
!4803 = !DILocation(line: 381, column: 6, scope: !4804, inlinedAt: !4593)
!4804 = distinct !DILexicalBlock(scope: !4554, file: !150, line: 381, column: 6)
!4805 = !DILocation(line: 381, column: 11, scope: !4804, inlinedAt: !4593)
!4806 = !DILocation(line: 381, column: 6, scope: !4554, inlinedAt: !4593)
!4807 = !DILocation(line: 381, column: 33, scope: !4804, inlinedAt: !4593)
!4808 = !DILocation(line: 382, column: 2, scope: !4809, inlinedAt: !4593)
!4809 = distinct !DILexicalBlock(scope: !4810, file: !150, line: 382, column: 2)
!4810 = distinct !DILexicalBlock(scope: !4554, file: !150, line: 382, column: 2)
!4811 = !{i32 -2144222761, i32 -2144222732, i32 -2144222686, i32 -2144222628, i32 -2144222574, i32 -2144222520, i32 -2144222465, i32 -2144222434}
!4812 = !DILocation(line: 382, column: 2, scope: !4813, inlinedAt: !4593)
!4813 = distinct !DILexicalBlock(scope: !4814, file: !150, line: 382, column: 2)
!4814 = distinct !DILexicalBlock(scope: !4810, file: !150, line: 382, column: 2)
!4815 = !{i32 -2144221991, i32 -2144221984, i32 -2144221930, i32 -2144221899, i32 -2144221869}
!4816 = !DILocation(line: 382, column: 2, scope: !4814, inlinedAt: !4593)
!4817 = !DILocation(line: 386, column: 1, scope: !4554, inlinedAt: !4593)
!4818 = !DILocation(line: 547, column: 9, scope: !4535, inlinedAt: !4586)
!4819 = !DILocation(line: 549, column: 8, scope: !4820, inlinedAt: !4586)
!4820 = distinct !DILexicalBlock(scope: !4535, file: !150, line: 549, column: 7)
!4821 = !DILocation(line: 549, column: 7, scope: !4535, inlinedAt: !4586)
!4822 = !DILocation(line: 550, column: 4, scope: !4820, inlinedAt: !4586)
!4823 = !DILocation(line: 553, column: 33, scope: !4535, inlinedAt: !4586)
!4824 = !DILocation(line: 325, column: 6, scope: !4825, inlinedAt: !4591)
!4825 = distinct !DILexicalBlock(scope: !4548, file: !150, line: 325, column: 6)
!4826 = !DILocation(line: 325, column: 6, scope: !4548, inlinedAt: !4591)
!4827 = !DILocation(line: 326, column: 3, scope: !4825, inlinedAt: !4591)
!4828 = !DILocation(line: 332, column: 9, scope: !4548, inlinedAt: !4591)
!4829 = !DILocation(line: 332, column: 15, scope: !4548, inlinedAt: !4591)
!4830 = !DILocation(line: 332, column: 2, scope: !4548, inlinedAt: !4591)
!4831 = !DILocation(line: 336, column: 1, scope: !4548, inlinedAt: !4591)
!4832 = !DILocation(line: 553, column: 5, scope: !4535, inlinedAt: !4586)
!4833 = !DILocation(line: 553, column: 41, scope: !4535, inlinedAt: !4586)
!4834 = !DILocation(line: 554, column: 5, scope: !4535, inlinedAt: !4586)
!4835 = !DILocation(line: 554, column: 12, scope: !4535, inlinedAt: !4586)
!4836 = !DILocation(line: 448, column: 31, scope: !4530, inlinedAt: !4585)
!4837 = !DILocation(line: 448, column: 34, scope: !4530, inlinedAt: !4585)
!4838 = !DILocation(line: 448, column: 14, scope: !4530, inlinedAt: !4585)
!4839 = !DILocation(line: 450, column: 22, scope: !4530, inlinedAt: !4585)
!4840 = !DILocation(line: 450, column: 25, scope: !4530, inlinedAt: !4585)
!4841 = !DILocation(line: 450, column: 30, scope: !4530, inlinedAt: !4585)
!4842 = !DILocation(line: 450, column: 36, scope: !4530, inlinedAt: !4585)
!4843 = !DILocation(line: 450, column: 8, scope: !4530, inlinedAt: !4585)
!4844 = !DILocation(line: 450, column: 6, scope: !4530, inlinedAt: !4585)
!4845 = !DILocation(line: 451, column: 9, scope: !4530, inlinedAt: !4585)
!4846 = !DILocation(line: 552, column: 3, scope: !4535, inlinedAt: !4586)
!4847 = !DILocation(line: 557, column: 19, scope: !4537, inlinedAt: !4586)
!4848 = !DILocation(line: 557, column: 25, scope: !4537, inlinedAt: !4586)
!4849 = !DILocation(line: 557, column: 9, scope: !4537, inlinedAt: !4586)
!4850 = !DILocation(line: 557, column: 2, scope: !4537, inlinedAt: !4586)
!4851 = !DILocation(line: 558, column: 1, scope: !4537, inlinedAt: !4586)
!4852 = !DILocation(line: 934, column: 2, scope: !4027)
!4853 = !DILocation(line: 934, column: 11, scope: !4027)
!4854 = !DILocation(line: 934, column: 18, scope: !4027)
!4855 = !DILocation(line: 935, column: 7, scope: !4856)
!4856 = distinct !DILexicalBlock(scope: !4027, file: !3, line: 935, column: 6)
!4857 = !DILocation(line: 935, column: 16, scope: !4856)
!4858 = !DILocation(line: 935, column: 6, scope: !4027)
!4859 = !DILocation(line: 936, column: 3, scope: !4856)
!4860 = !DILocation(line: 938, column: 26, scope: !4027)
!4861 = !DILocation(line: 939, column: 5, scope: !4027)
!4862 = !DILocation(line: 939, column: 11, scope: !4027)
!4863 = !DILocation(line: 939, column: 23, scope: !4027)
!4864 = !DILocation(line: 939, column: 28, scope: !4027)
!4865 = !DILocation(line: 938, column: 8, scope: !4027)
!4866 = !DILocation(line: 938, column: 6, scope: !4027)
!4867 = !DILocation(line: 940, column: 6, scope: !4868)
!4868 = distinct !DILexicalBlock(scope: !4027, file: !3, line: 940, column: 6)
!4869 = !DILocation(line: 940, column: 10, scope: !4868)
!4870 = !DILocation(line: 940, column: 6, scope: !4027)
!4871 = !DILocation(line: 941, column: 3, scope: !4872)
!4872 = distinct !DILexicalBlock(scope: !4868, file: !3, line: 940, column: 15)
!4873 = !DILocation(line: 943, column: 3, scope: !4872)
!4874 = !DILocation(line: 946, column: 17, scope: !4027)
!4875 = !DILocation(line: 946, column: 2, scope: !4027)
!4876 = !DILocation(line: 946, column: 11, scope: !4027)
!4877 = !DILocation(line: 946, column: 15, scope: !4027)
!4878 = !DILocation(line: 947, column: 7, scope: !4879)
!4879 = distinct !DILexicalBlock(scope: !4027, file: !3, line: 947, column: 6)
!4880 = !DILocation(line: 947, column: 16, scope: !4879)
!4881 = !DILocation(line: 947, column: 6, scope: !4027)
!4882 = !DILocation(line: 948, column: 3, scope: !4879)
!4883 = !DILocation(line: 540, column: 27, scope: !4536, inlinedAt: !4540)
!4884 = !DILocation(line: 540, column: 6, scope: !4536, inlinedAt: !4540)
!4885 = !DILocation(line: 540, column: 6, scope: !4537, inlinedAt: !4540)
!4886 = !DILocation(line: 544, column: 7, scope: !4567, inlinedAt: !4540)
!4887 = !DILocation(line: 544, column: 12, scope: !4567, inlinedAt: !4540)
!4888 = !DILocation(line: 544, column: 7, scope: !4535, inlinedAt: !4540)
!4889 = !DILocation(line: 545, column: 25, scope: !4567, inlinedAt: !4540)
!4890 = !DILocation(line: 545, column: 31, scope: !4567, inlinedAt: !4540)
!4891 = !DILocation(line: 480, column: 33, scope: !4565, inlinedAt: !4566)
!4892 = !DILocation(line: 480, column: 23, scope: !4565, inlinedAt: !4566)
!4893 = !DILocation(line: 481, column: 29, scope: !4565, inlinedAt: !4566)
!4894 = !DILocation(line: 481, column: 35, scope: !4565, inlinedAt: !4566)
!4895 = !DILocation(line: 481, column: 42, scope: !4565, inlinedAt: !4566)
!4896 = !DILocation(line: 474, column: 23, scope: !4560, inlinedAt: !4564)
!4897 = !DILocation(line: 474, column: 29, scope: !4560, inlinedAt: !4564)
!4898 = !DILocation(line: 474, column: 36, scope: !4560, inlinedAt: !4564)
!4899 = !DILocation(line: 474, column: 9, scope: !4560, inlinedAt: !4564)
!4900 = !DILocation(line: 545, column: 4, scope: !4567, inlinedAt: !4540)
!4901 = !DILocation(line: 547, column: 25, scope: !4535, inlinedAt: !4540)
!4902 = !DILocation(line: 348, column: 7, scope: !4664, inlinedAt: !4558)
!4903 = !DILocation(line: 348, column: 6, scope: !4554, inlinedAt: !4558)
!4904 = !DILocation(line: 349, column: 3, scope: !4664, inlinedAt: !4558)
!4905 = !DILocation(line: 351, column: 6, scope: !4668, inlinedAt: !4558)
!4906 = !DILocation(line: 351, column: 11, scope: !4668, inlinedAt: !4558)
!4907 = !DILocation(line: 351, column: 6, scope: !4554, inlinedAt: !4558)
!4908 = !DILocation(line: 352, column: 3, scope: !4668, inlinedAt: !4558)
!4909 = !DILocation(line: 354, column: 32, scope: !4673, inlinedAt: !4558)
!4910 = !DILocation(line: 354, column: 37, scope: !4673, inlinedAt: !4558)
!4911 = !DILocation(line: 354, column: 42, scope: !4673, inlinedAt: !4558)
!4912 = !DILocation(line: 354, column: 45, scope: !4673, inlinedAt: !4558)
!4913 = !DILocation(line: 354, column: 50, scope: !4673, inlinedAt: !4558)
!4914 = !DILocation(line: 354, column: 6, scope: !4554, inlinedAt: !4558)
!4915 = !DILocation(line: 355, column: 3, scope: !4673, inlinedAt: !4558)
!4916 = !DILocation(line: 356, column: 32, scope: !4681, inlinedAt: !4558)
!4917 = !DILocation(line: 356, column: 37, scope: !4681, inlinedAt: !4558)
!4918 = !DILocation(line: 356, column: 43, scope: !4681, inlinedAt: !4558)
!4919 = !DILocation(line: 356, column: 46, scope: !4681, inlinedAt: !4558)
!4920 = !DILocation(line: 356, column: 51, scope: !4681, inlinedAt: !4558)
!4921 = !DILocation(line: 356, column: 6, scope: !4554, inlinedAt: !4558)
!4922 = !DILocation(line: 357, column: 3, scope: !4681, inlinedAt: !4558)
!4923 = !DILocation(line: 358, column: 6, scope: !4689, inlinedAt: !4558)
!4924 = !DILocation(line: 358, column: 11, scope: !4689, inlinedAt: !4558)
!4925 = !DILocation(line: 358, column: 6, scope: !4554, inlinedAt: !4558)
!4926 = !DILocation(line: 358, column: 26, scope: !4689, inlinedAt: !4558)
!4927 = !DILocation(line: 359, column: 6, scope: !4694, inlinedAt: !4558)
!4928 = !DILocation(line: 359, column: 11, scope: !4694, inlinedAt: !4558)
!4929 = !DILocation(line: 359, column: 6, scope: !4554, inlinedAt: !4558)
!4930 = !DILocation(line: 359, column: 26, scope: !4694, inlinedAt: !4558)
!4931 = !DILocation(line: 360, column: 6, scope: !4699, inlinedAt: !4558)
!4932 = !DILocation(line: 360, column: 11, scope: !4699, inlinedAt: !4558)
!4933 = !DILocation(line: 360, column: 6, scope: !4554, inlinedAt: !4558)
!4934 = !DILocation(line: 360, column: 26, scope: !4699, inlinedAt: !4558)
!4935 = !DILocation(line: 361, column: 6, scope: !4704, inlinedAt: !4558)
!4936 = !DILocation(line: 361, column: 11, scope: !4704, inlinedAt: !4558)
!4937 = !DILocation(line: 361, column: 6, scope: !4554, inlinedAt: !4558)
!4938 = !DILocation(line: 361, column: 26, scope: !4704, inlinedAt: !4558)
!4939 = !DILocation(line: 362, column: 6, scope: !4709, inlinedAt: !4558)
!4940 = !DILocation(line: 362, column: 11, scope: !4709, inlinedAt: !4558)
!4941 = !DILocation(line: 362, column: 6, scope: !4554, inlinedAt: !4558)
!4942 = !DILocation(line: 362, column: 26, scope: !4709, inlinedAt: !4558)
!4943 = !DILocation(line: 363, column: 6, scope: !4714, inlinedAt: !4558)
!4944 = !DILocation(line: 363, column: 11, scope: !4714, inlinedAt: !4558)
!4945 = !DILocation(line: 363, column: 6, scope: !4554, inlinedAt: !4558)
!4946 = !DILocation(line: 363, column: 26, scope: !4714, inlinedAt: !4558)
!4947 = !DILocation(line: 364, column: 6, scope: !4719, inlinedAt: !4558)
!4948 = !DILocation(line: 364, column: 11, scope: !4719, inlinedAt: !4558)
!4949 = !DILocation(line: 364, column: 6, scope: !4554, inlinedAt: !4558)
!4950 = !DILocation(line: 364, column: 26, scope: !4719, inlinedAt: !4558)
!4951 = !DILocation(line: 365, column: 6, scope: !4724, inlinedAt: !4558)
!4952 = !DILocation(line: 365, column: 11, scope: !4724, inlinedAt: !4558)
!4953 = !DILocation(line: 365, column: 6, scope: !4554, inlinedAt: !4558)
!4954 = !DILocation(line: 365, column: 26, scope: !4724, inlinedAt: !4558)
!4955 = !DILocation(line: 366, column: 6, scope: !4729, inlinedAt: !4558)
!4956 = !DILocation(line: 366, column: 11, scope: !4729, inlinedAt: !4558)
!4957 = !DILocation(line: 366, column: 6, scope: !4554, inlinedAt: !4558)
!4958 = !DILocation(line: 366, column: 26, scope: !4729, inlinedAt: !4558)
!4959 = !DILocation(line: 367, column: 6, scope: !4734, inlinedAt: !4558)
!4960 = !DILocation(line: 367, column: 11, scope: !4734, inlinedAt: !4558)
!4961 = !DILocation(line: 367, column: 6, scope: !4554, inlinedAt: !4558)
!4962 = !DILocation(line: 367, column: 26, scope: !4734, inlinedAt: !4558)
!4963 = !DILocation(line: 368, column: 6, scope: !4739, inlinedAt: !4558)
!4964 = !DILocation(line: 368, column: 11, scope: !4739, inlinedAt: !4558)
!4965 = !DILocation(line: 368, column: 6, scope: !4554, inlinedAt: !4558)
!4966 = !DILocation(line: 368, column: 26, scope: !4739, inlinedAt: !4558)
!4967 = !DILocation(line: 369, column: 6, scope: !4744, inlinedAt: !4558)
!4968 = !DILocation(line: 369, column: 11, scope: !4744, inlinedAt: !4558)
!4969 = !DILocation(line: 369, column: 6, scope: !4554, inlinedAt: !4558)
!4970 = !DILocation(line: 369, column: 26, scope: !4744, inlinedAt: !4558)
!4971 = !DILocation(line: 370, column: 6, scope: !4749, inlinedAt: !4558)
!4972 = !DILocation(line: 370, column: 11, scope: !4749, inlinedAt: !4558)
!4973 = !DILocation(line: 370, column: 6, scope: !4554, inlinedAt: !4558)
!4974 = !DILocation(line: 370, column: 26, scope: !4749, inlinedAt: !4558)
!4975 = !DILocation(line: 371, column: 6, scope: !4754, inlinedAt: !4558)
!4976 = !DILocation(line: 371, column: 11, scope: !4754, inlinedAt: !4558)
!4977 = !DILocation(line: 371, column: 6, scope: !4554, inlinedAt: !4558)
!4978 = !DILocation(line: 371, column: 26, scope: !4754, inlinedAt: !4558)
!4979 = !DILocation(line: 372, column: 6, scope: !4759, inlinedAt: !4558)
!4980 = !DILocation(line: 372, column: 11, scope: !4759, inlinedAt: !4558)
!4981 = !DILocation(line: 372, column: 6, scope: !4554, inlinedAt: !4558)
!4982 = !DILocation(line: 372, column: 26, scope: !4759, inlinedAt: !4558)
!4983 = !DILocation(line: 373, column: 6, scope: !4764, inlinedAt: !4558)
!4984 = !DILocation(line: 373, column: 11, scope: !4764, inlinedAt: !4558)
!4985 = !DILocation(line: 373, column: 6, scope: !4554, inlinedAt: !4558)
!4986 = !DILocation(line: 373, column: 26, scope: !4764, inlinedAt: !4558)
!4987 = !DILocation(line: 374, column: 6, scope: !4769, inlinedAt: !4558)
!4988 = !DILocation(line: 374, column: 11, scope: !4769, inlinedAt: !4558)
!4989 = !DILocation(line: 374, column: 6, scope: !4554, inlinedAt: !4558)
!4990 = !DILocation(line: 374, column: 26, scope: !4769, inlinedAt: !4558)
!4991 = !DILocation(line: 375, column: 6, scope: !4774, inlinedAt: !4558)
!4992 = !DILocation(line: 375, column: 11, scope: !4774, inlinedAt: !4558)
!4993 = !DILocation(line: 375, column: 6, scope: !4554, inlinedAt: !4558)
!4994 = !DILocation(line: 375, column: 27, scope: !4774, inlinedAt: !4558)
!4995 = !DILocation(line: 376, column: 6, scope: !4779, inlinedAt: !4558)
!4996 = !DILocation(line: 376, column: 11, scope: !4779, inlinedAt: !4558)
!4997 = !DILocation(line: 376, column: 6, scope: !4554, inlinedAt: !4558)
!4998 = !DILocation(line: 376, column: 32, scope: !4779, inlinedAt: !4558)
!4999 = !DILocation(line: 377, column: 6, scope: !4784, inlinedAt: !4558)
!5000 = !DILocation(line: 377, column: 11, scope: !4784, inlinedAt: !4558)
!5001 = !DILocation(line: 377, column: 6, scope: !4554, inlinedAt: !4558)
!5002 = !DILocation(line: 377, column: 32, scope: !4784, inlinedAt: !4558)
!5003 = !DILocation(line: 378, column: 6, scope: !4789, inlinedAt: !4558)
!5004 = !DILocation(line: 378, column: 11, scope: !4789, inlinedAt: !4558)
!5005 = !DILocation(line: 378, column: 6, scope: !4554, inlinedAt: !4558)
!5006 = !DILocation(line: 378, column: 32, scope: !4789, inlinedAt: !4558)
!5007 = !DILocation(line: 379, column: 6, scope: !4794, inlinedAt: !4558)
!5008 = !DILocation(line: 379, column: 11, scope: !4794, inlinedAt: !4558)
!5009 = !DILocation(line: 379, column: 6, scope: !4554, inlinedAt: !4558)
!5010 = !DILocation(line: 379, column: 33, scope: !4794, inlinedAt: !4558)
!5011 = !DILocation(line: 380, column: 6, scope: !4799, inlinedAt: !4558)
!5012 = !DILocation(line: 380, column: 11, scope: !4799, inlinedAt: !4558)
!5013 = !DILocation(line: 380, column: 6, scope: !4554, inlinedAt: !4558)
!5014 = !DILocation(line: 380, column: 33, scope: !4799, inlinedAt: !4558)
!5015 = !DILocation(line: 381, column: 6, scope: !4804, inlinedAt: !4558)
!5016 = !DILocation(line: 381, column: 11, scope: !4804, inlinedAt: !4558)
!5017 = !DILocation(line: 381, column: 6, scope: !4554, inlinedAt: !4558)
!5018 = !DILocation(line: 381, column: 33, scope: !4804, inlinedAt: !4558)
!5019 = !DILocation(line: 382, column: 2, scope: !4809, inlinedAt: !4558)
!5020 = !DILocation(line: 382, column: 2, scope: !4813, inlinedAt: !4558)
!5021 = !DILocation(line: 382, column: 2, scope: !4814, inlinedAt: !4558)
!5022 = !DILocation(line: 386, column: 1, scope: !4554, inlinedAt: !4558)
!5023 = !DILocation(line: 547, column: 9, scope: !4535, inlinedAt: !4540)
!5024 = !DILocation(line: 549, column: 8, scope: !4820, inlinedAt: !4540)
!5025 = !DILocation(line: 549, column: 7, scope: !4535, inlinedAt: !4540)
!5026 = !DILocation(line: 550, column: 4, scope: !4820, inlinedAt: !4540)
!5027 = !DILocation(line: 553, column: 33, scope: !4535, inlinedAt: !4540)
!5028 = !DILocation(line: 325, column: 6, scope: !4825, inlinedAt: !4552)
!5029 = !DILocation(line: 325, column: 6, scope: !4548, inlinedAt: !4552)
!5030 = !DILocation(line: 326, column: 3, scope: !4825, inlinedAt: !4552)
!5031 = !DILocation(line: 332, column: 9, scope: !4548, inlinedAt: !4552)
!5032 = !DILocation(line: 332, column: 15, scope: !4548, inlinedAt: !4552)
!5033 = !DILocation(line: 332, column: 2, scope: !4548, inlinedAt: !4552)
!5034 = !DILocation(line: 336, column: 1, scope: !4548, inlinedAt: !4552)
!5035 = !DILocation(line: 553, column: 5, scope: !4535, inlinedAt: !4540)
!5036 = !DILocation(line: 553, column: 41, scope: !4535, inlinedAt: !4540)
!5037 = !DILocation(line: 554, column: 5, scope: !4535, inlinedAt: !4540)
!5038 = !DILocation(line: 554, column: 12, scope: !4535, inlinedAt: !4540)
!5039 = !DILocation(line: 448, column: 31, scope: !4530, inlinedAt: !4534)
!5040 = !DILocation(line: 448, column: 34, scope: !4530, inlinedAt: !4534)
!5041 = !DILocation(line: 448, column: 14, scope: !4530, inlinedAt: !4534)
!5042 = !DILocation(line: 450, column: 22, scope: !4530, inlinedAt: !4534)
!5043 = !DILocation(line: 450, column: 25, scope: !4530, inlinedAt: !4534)
!5044 = !DILocation(line: 450, column: 30, scope: !4530, inlinedAt: !4534)
!5045 = !DILocation(line: 450, column: 36, scope: !4530, inlinedAt: !4534)
!5046 = !DILocation(line: 450, column: 8, scope: !4530, inlinedAt: !4534)
!5047 = !DILocation(line: 450, column: 6, scope: !4530, inlinedAt: !4534)
!5048 = !DILocation(line: 451, column: 9, scope: !4530, inlinedAt: !4534)
!5049 = !DILocation(line: 552, column: 3, scope: !4535, inlinedAt: !4540)
!5050 = !DILocation(line: 557, column: 19, scope: !4537, inlinedAt: !4540)
!5051 = !DILocation(line: 557, column: 25, scope: !4537, inlinedAt: !4540)
!5052 = !DILocation(line: 557, column: 9, scope: !4537, inlinedAt: !4540)
!5053 = !DILocation(line: 557, column: 2, scope: !4537, inlinedAt: !4540)
!5054 = !DILocation(line: 558, column: 1, scope: !4537, inlinedAt: !4540)
!5055 = !DILocation(line: 950, column: 2, scope: !4027)
!5056 = !DILocation(line: 950, column: 11, scope: !4027)
!5057 = !DILocation(line: 950, column: 17, scope: !4027)
!5058 = !DILocation(line: 951, column: 7, scope: !5059)
!5059 = distinct !DILexicalBlock(scope: !4027, file: !3, line: 951, column: 6)
!5060 = !DILocation(line: 951, column: 16, scope: !5059)
!5061 = !DILocation(line: 951, column: 6, scope: !4027)
!5062 = !DILocation(line: 952, column: 3, scope: !5059)
!5063 = !DILocation(line: 954, column: 29, scope: !4027)
!5064 = !DILocation(line: 954, column: 35, scope: !4027)
!5065 = !DILocation(line: 954, column: 40, scope: !4027)
!5066 = !DILocation(line: 954, column: 8, scope: !4027)
!5067 = !DILocation(line: 954, column: 6, scope: !4027)
!5068 = !DILocation(line: 956, column: 6, scope: !5069)
!5069 = distinct !DILexicalBlock(scope: !4027, file: !3, line: 956, column: 6)
!5070 = !DILocation(line: 956, column: 6, scope: !4027)
!5071 = !DILocation(line: 957, column: 10, scope: !5069)
!5072 = !DILocation(line: 957, column: 3, scope: !5069)
!5073 = !DILocation(line: 959, column: 32, scope: !4027)
!5074 = !DILocation(line: 959, column: 8, scope: !4027)
!5075 = !DILocation(line: 959, column: 6, scope: !4027)
!5076 = !DILocation(line: 960, column: 6, scope: !5077)
!5077 = distinct !DILexicalBlock(scope: !4027, file: !3, line: 960, column: 6)
!5078 = !DILocation(line: 960, column: 6, scope: !4027)
!5079 = !DILocation(line: 961, column: 10, scope: !5077)
!5080 = !DILocation(line: 961, column: 3, scope: !5077)
!5081 = !DILocation(line: 964, column: 7, scope: !4027)
!5082 = !DILocation(line: 964, column: 12, scope: !4027)
!5083 = !DILocation(line: 964, column: 4, scope: !4027)
!5084 = !DILocation(line: 965, column: 21, scope: !4027)
!5085 = !DILocation(line: 965, column: 2, scope: !4027)
!5086 = !DILocation(line: 965, column: 7, scope: !4027)
!5087 = !DILocation(line: 965, column: 19, scope: !4027)
!5088 = !DILocation(line: 966, column: 2, scope: !4027)
!5089 = !DILocation(line: 966, column: 5, scope: !4027)
!5090 = !DILocation(line: 966, column: 11, scope: !4027)
!5091 = !DILocation(line: 967, column: 2, scope: !4027)
!5092 = !DILocation(line: 967, column: 5, scope: !4027)
!5093 = !DILocation(line: 967, column: 18, scope: !4027)
!5094 = !DILocation(line: 968, column: 2, scope: !4027)
!5095 = !DILocation(line: 968, column: 5, scope: !4027)
!5096 = !DILocation(line: 968, column: 12, scope: !4027)
!5097 = !DILocation(line: 969, column: 2, scope: !4027)
!5098 = !DILocation(line: 969, column: 5, scope: !4027)
!5099 = !DILocation(line: 969, column: 13, scope: !4027)
!5100 = !DILocation(line: 970, column: 2, scope: !4027)
!5101 = !DILocation(line: 970, column: 5, scope: !4027)
!5102 = !DILocation(line: 970, column: 17, scope: !4027)
!5103 = !DILocation(line: 971, column: 2, scope: !4027)
!5104 = !DILocation(line: 971, column: 5, scope: !4027)
!5105 = !DILocation(line: 971, column: 15, scope: !4027)
!5106 = !DILocation(line: 972, column: 20, scope: !4027)
!5107 = !DILocation(line: 972, column: 23, scope: !4027)
!5108 = !DILocation(line: 972, column: 2, scope: !4027)
!5109 = !DILocation(line: 972, column: 5, scope: !4027)
!5110 = !DILocation(line: 972, column: 18, scope: !4027)
!5111 = !DILocation(line: 973, column: 2, scope: !4027)
!5112 = !DILocation(line: 973, column: 5, scope: !4027)
!5113 = !DILocation(line: 973, column: 16, scope: !4027)
!5114 = !DILocation(line: 974, column: 2, scope: !4027)
!5115 = !DILocation(line: 974, column: 5, scope: !4027)
!5116 = !DILocation(line: 974, column: 12, scope: !4027)
!5117 = !DILocation(line: 975, column: 2, scope: !4027)
!5118 = !DILocation(line: 975, column: 5, scope: !4027)
!5119 = !DILocation(line: 975, column: 12, scope: !4027)
!5120 = !DILocation(line: 977, column: 2, scope: !4027)
!5121 = !DILocation(line: 978, column: 1, scope: !4027)
!5122 = distinct !DISubprogram(name: "usb_set_intfdata", scope: !101, file: !101, line: 268, type: !5123, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!5123 = !DISubroutineType(types: !5124)
!5124 = !{null, !4039, !168}
!5125 = !DILocalVariable(name: "intf", arg: 1, scope: !5122, file: !101, line: 268, type: !4039)
!5126 = !DILocation(line: 268, column: 59, scope: !5122)
!5127 = !DILocalVariable(name: "data", arg: 2, scope: !5122, file: !101, line: 268, type: !168)
!5128 = !DILocation(line: 268, column: 71, scope: !5122)
!5129 = !DILocation(line: 270, column: 19, scope: !5122)
!5130 = !DILocation(line: 270, column: 25, scope: !5122)
!5131 = !DILocation(line: 270, column: 30, scope: !5122)
!5132 = !DILocation(line: 270, column: 2, scope: !5122)
!5133 = !DILocation(line: 271, column: 1, scope: !5122)
!5134 = distinct !DISubprogram(name: "mutex_destroy", scope: !1195, file: !1195, line: 103, type: !5135, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!5135 = !DISubroutineType(types: !5136)
!5136 = !{null, !5137}
!5137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!5138 = !DILocalVariable(name: "lock", arg: 1, scope: !5134, file: !1195, line: 103, type: !5137)
!5139 = !DILocation(line: 103, column: 48, scope: !5134)
!5140 = !DILocation(line: 103, column: 55, scope: !5134)
!5141 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !73, file: !73, line: 660, type: !5142, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!5142 = !DISubroutineType(types: !5143)
!5143 = !{null, !239, !168}
!5144 = !DILocalVariable(name: "dev", arg: 1, scope: !5141, file: !73, line: 660, type: !239)
!5145 = !DILocation(line: 660, column: 51, scope: !5141)
!5146 = !DILocalVariable(name: "data", arg: 2, scope: !5141, file: !73, line: 660, type: !168)
!5147 = !DILocation(line: 660, column: 62, scope: !5141)
!5148 = !DILocation(line: 662, column: 21, scope: !5141)
!5149 = !DILocation(line: 662, column: 2, scope: !5141)
!5150 = !DILocation(line: 662, column: 7, scope: !5141)
!5151 = !DILocation(line: 662, column: 19, scope: !5141)
!5152 = !DILocation(line: 663, column: 1, scope: !5141)
!5153 = distinct !DISubprogram(name: "usbduxfast_upload_firmware", scope: !3, file: !3, line: 841, type: !5154, scopeLine: 844, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!5154 = !DISubroutineType(types: !5155)
!5155 = !{!228, !229, !5156, !348, !351}
!5156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5157, size: 64)
!5157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1373)
!5158 = !DILocation(line: 445, column: 72, scope: !4530, inlinedAt: !5159)
!5159 = distinct !DILocation(line: 552, column: 10, scope: !4535, inlinedAt: !5160)
!5160 = distinct !DILocation(line: 864, column: 8, scope: !5153)
!5161 = !DILocation(line: 446, column: 9, scope: !4530, inlinedAt: !5159)
!5162 = !DILocation(line: 446, column: 23, scope: !4530, inlinedAt: !5159)
!5163 = !DILocation(line: 448, column: 8, scope: !4530, inlinedAt: !5159)
!5164 = !DILocation(line: 318, column: 67, scope: !4548, inlinedAt: !5165)
!5165 = distinct !DILocation(line: 553, column: 20, scope: !4535, inlinedAt: !5160)
!5166 = !DILocation(line: 346, column: 58, scope: !4554, inlinedAt: !5167)
!5167 = distinct !DILocation(line: 547, column: 11, scope: !4535, inlinedAt: !5160)
!5168 = !DILocation(line: 472, column: 28, scope: !4560, inlinedAt: !5169)
!5169 = distinct !DILocation(line: 481, column: 9, scope: !4565, inlinedAt: !5170)
!5170 = distinct !DILocation(line: 545, column: 11, scope: !4567, inlinedAt: !5160)
!5171 = !DILocation(line: 472, column: 40, scope: !4560, inlinedAt: !5169)
!5172 = !DILocation(line: 472, column: 60, scope: !4560, inlinedAt: !5169)
!5173 = !DILocation(line: 478, column: 51, scope: !4565, inlinedAt: !5170)
!5174 = !DILocation(line: 478, column: 63, scope: !4565, inlinedAt: !5170)
!5175 = !DILocation(line: 480, column: 15, scope: !4565, inlinedAt: !5170)
!5176 = !DILocation(line: 538, column: 45, scope: !4537, inlinedAt: !5160)
!5177 = !DILocation(line: 538, column: 57, scope: !4537, inlinedAt: !5160)
!5178 = !DILocation(line: 542, column: 16, scope: !4535, inlinedAt: !5160)
!5179 = !DILocalVariable(name: "dev", arg: 1, scope: !5153, file: !3, line: 841, type: !229)
!5180 = !DILocation(line: 841, column: 61, scope: !5153)
!5181 = !DILocalVariable(name: "data", arg: 2, scope: !5153, file: !3, line: 842, type: !5156)
!5182 = !DILocation(line: 842, column: 21, scope: !5153)
!5183 = !DILocalVariable(name: "size", arg: 3, scope: !5153, file: !3, line: 842, type: !348)
!5184 = !DILocation(line: 842, column: 34, scope: !5153)
!5185 = !DILocalVariable(name: "context", arg: 4, scope: !5153, file: !3, line: 843, type: !351)
!5186 = !DILocation(line: 843, column: 25, scope: !5153)
!5187 = !DILocalVariable(name: "usb", scope: !5153, file: !3, line: 845, type: !4228)
!5188 = !DILocation(line: 845, column: 21, scope: !5153)
!5189 = !DILocation(line: 845, column: 45, scope: !5153)
!5190 = !DILocation(line: 845, column: 27, scope: !5153)
!5191 = !DILocalVariable(name: "buf", scope: !5153, file: !3, line: 846, type: !4483)
!5192 = !DILocation(line: 846, column: 6, scope: !5153)
!5193 = !DILocalVariable(name: "tmp", scope: !5153, file: !3, line: 847, type: !4060)
!5194 = !DILocation(line: 847, column: 17, scope: !5153)
!5195 = !DILocalVariable(name: "ret", scope: !5153, file: !3, line: 848, type: !228)
!5196 = !DILocation(line: 848, column: 6, scope: !5153)
!5197 = !DILocation(line: 850, column: 7, scope: !5198)
!5198 = distinct !DILexicalBlock(scope: !5153, file: !3, line: 850, column: 6)
!5199 = !DILocation(line: 850, column: 6, scope: !5153)
!5200 = !DILocation(line: 851, column: 3, scope: !5198)
!5201 = !DILocation(line: 853, column: 6, scope: !5202)
!5202 = distinct !DILexicalBlock(scope: !5153, file: !3, line: 853, column: 6)
!5203 = !DILocation(line: 853, column: 11, scope: !5202)
!5204 = !DILocation(line: 853, column: 6, scope: !5153)
!5205 = !DILocation(line: 854, column: 3, scope: !5206)
!5206 = distinct !DILexicalBlock(scope: !5202, file: !3, line: 853, column: 31)
!5207 = !DILocation(line: 855, column: 3, scope: !5206)
!5208 = !DILocation(line: 859, column: 16, scope: !5153)
!5209 = !DILocation(line: 859, column: 22, scope: !5153)
!5210 = !DILocation(line: 859, column: 8, scope: !5153)
!5211 = !DILocation(line: 859, column: 6, scope: !5153)
!5212 = !DILocation(line: 860, column: 7, scope: !5213)
!5213 = distinct !DILexicalBlock(scope: !5153, file: !3, line: 860, column: 6)
!5214 = !DILocation(line: 860, column: 6, scope: !5153)
!5215 = !DILocation(line: 861, column: 3, scope: !5213)
!5216 = !DILocation(line: 540, column: 27, scope: !4536, inlinedAt: !5160)
!5217 = !DILocation(line: 540, column: 6, scope: !4536, inlinedAt: !5160)
!5218 = !DILocation(line: 540, column: 6, scope: !4537, inlinedAt: !5160)
!5219 = !DILocation(line: 544, column: 7, scope: !4567, inlinedAt: !5160)
!5220 = !DILocation(line: 544, column: 12, scope: !4567, inlinedAt: !5160)
!5221 = !DILocation(line: 544, column: 7, scope: !4535, inlinedAt: !5160)
!5222 = !DILocation(line: 545, column: 25, scope: !4567, inlinedAt: !5160)
!5223 = !DILocation(line: 545, column: 31, scope: !4567, inlinedAt: !5160)
!5224 = !DILocation(line: 480, column: 33, scope: !4565, inlinedAt: !5170)
!5225 = !DILocation(line: 480, column: 23, scope: !4565, inlinedAt: !5170)
!5226 = !DILocation(line: 481, column: 29, scope: !4565, inlinedAt: !5170)
!5227 = !DILocation(line: 481, column: 35, scope: !4565, inlinedAt: !5170)
!5228 = !DILocation(line: 481, column: 42, scope: !4565, inlinedAt: !5170)
!5229 = !DILocation(line: 474, column: 23, scope: !4560, inlinedAt: !5169)
!5230 = !DILocation(line: 474, column: 29, scope: !4560, inlinedAt: !5169)
!5231 = !DILocation(line: 474, column: 36, scope: !4560, inlinedAt: !5169)
!5232 = !DILocation(line: 474, column: 9, scope: !4560, inlinedAt: !5169)
!5233 = !DILocation(line: 545, column: 4, scope: !4567, inlinedAt: !5160)
!5234 = !DILocation(line: 547, column: 25, scope: !4535, inlinedAt: !5160)
!5235 = !DILocation(line: 348, column: 7, scope: !4664, inlinedAt: !5167)
!5236 = !DILocation(line: 348, column: 6, scope: !4554, inlinedAt: !5167)
!5237 = !DILocation(line: 349, column: 3, scope: !4664, inlinedAt: !5167)
!5238 = !DILocation(line: 351, column: 6, scope: !4668, inlinedAt: !5167)
!5239 = !DILocation(line: 351, column: 11, scope: !4668, inlinedAt: !5167)
!5240 = !DILocation(line: 351, column: 6, scope: !4554, inlinedAt: !5167)
!5241 = !DILocation(line: 352, column: 3, scope: !4668, inlinedAt: !5167)
!5242 = !DILocation(line: 354, column: 32, scope: !4673, inlinedAt: !5167)
!5243 = !DILocation(line: 354, column: 37, scope: !4673, inlinedAt: !5167)
!5244 = !DILocation(line: 354, column: 42, scope: !4673, inlinedAt: !5167)
!5245 = !DILocation(line: 354, column: 45, scope: !4673, inlinedAt: !5167)
!5246 = !DILocation(line: 354, column: 50, scope: !4673, inlinedAt: !5167)
!5247 = !DILocation(line: 354, column: 6, scope: !4554, inlinedAt: !5167)
!5248 = !DILocation(line: 355, column: 3, scope: !4673, inlinedAt: !5167)
!5249 = !DILocation(line: 356, column: 32, scope: !4681, inlinedAt: !5167)
!5250 = !DILocation(line: 356, column: 37, scope: !4681, inlinedAt: !5167)
!5251 = !DILocation(line: 356, column: 43, scope: !4681, inlinedAt: !5167)
!5252 = !DILocation(line: 356, column: 46, scope: !4681, inlinedAt: !5167)
!5253 = !DILocation(line: 356, column: 51, scope: !4681, inlinedAt: !5167)
!5254 = !DILocation(line: 356, column: 6, scope: !4554, inlinedAt: !5167)
!5255 = !DILocation(line: 357, column: 3, scope: !4681, inlinedAt: !5167)
!5256 = !DILocation(line: 358, column: 6, scope: !4689, inlinedAt: !5167)
!5257 = !DILocation(line: 358, column: 11, scope: !4689, inlinedAt: !5167)
!5258 = !DILocation(line: 358, column: 6, scope: !4554, inlinedAt: !5167)
!5259 = !DILocation(line: 358, column: 26, scope: !4689, inlinedAt: !5167)
!5260 = !DILocation(line: 359, column: 6, scope: !4694, inlinedAt: !5167)
!5261 = !DILocation(line: 359, column: 11, scope: !4694, inlinedAt: !5167)
!5262 = !DILocation(line: 359, column: 6, scope: !4554, inlinedAt: !5167)
!5263 = !DILocation(line: 359, column: 26, scope: !4694, inlinedAt: !5167)
!5264 = !DILocation(line: 360, column: 6, scope: !4699, inlinedAt: !5167)
!5265 = !DILocation(line: 360, column: 11, scope: !4699, inlinedAt: !5167)
!5266 = !DILocation(line: 360, column: 6, scope: !4554, inlinedAt: !5167)
!5267 = !DILocation(line: 360, column: 26, scope: !4699, inlinedAt: !5167)
!5268 = !DILocation(line: 361, column: 6, scope: !4704, inlinedAt: !5167)
!5269 = !DILocation(line: 361, column: 11, scope: !4704, inlinedAt: !5167)
!5270 = !DILocation(line: 361, column: 6, scope: !4554, inlinedAt: !5167)
!5271 = !DILocation(line: 361, column: 26, scope: !4704, inlinedAt: !5167)
!5272 = !DILocation(line: 362, column: 6, scope: !4709, inlinedAt: !5167)
!5273 = !DILocation(line: 362, column: 11, scope: !4709, inlinedAt: !5167)
!5274 = !DILocation(line: 362, column: 6, scope: !4554, inlinedAt: !5167)
!5275 = !DILocation(line: 362, column: 26, scope: !4709, inlinedAt: !5167)
!5276 = !DILocation(line: 363, column: 6, scope: !4714, inlinedAt: !5167)
!5277 = !DILocation(line: 363, column: 11, scope: !4714, inlinedAt: !5167)
!5278 = !DILocation(line: 363, column: 6, scope: !4554, inlinedAt: !5167)
!5279 = !DILocation(line: 363, column: 26, scope: !4714, inlinedAt: !5167)
!5280 = !DILocation(line: 364, column: 6, scope: !4719, inlinedAt: !5167)
!5281 = !DILocation(line: 364, column: 11, scope: !4719, inlinedAt: !5167)
!5282 = !DILocation(line: 364, column: 6, scope: !4554, inlinedAt: !5167)
!5283 = !DILocation(line: 364, column: 26, scope: !4719, inlinedAt: !5167)
!5284 = !DILocation(line: 365, column: 6, scope: !4724, inlinedAt: !5167)
!5285 = !DILocation(line: 365, column: 11, scope: !4724, inlinedAt: !5167)
!5286 = !DILocation(line: 365, column: 6, scope: !4554, inlinedAt: !5167)
!5287 = !DILocation(line: 365, column: 26, scope: !4724, inlinedAt: !5167)
!5288 = !DILocation(line: 366, column: 6, scope: !4729, inlinedAt: !5167)
!5289 = !DILocation(line: 366, column: 11, scope: !4729, inlinedAt: !5167)
!5290 = !DILocation(line: 366, column: 6, scope: !4554, inlinedAt: !5167)
!5291 = !DILocation(line: 366, column: 26, scope: !4729, inlinedAt: !5167)
!5292 = !DILocation(line: 367, column: 6, scope: !4734, inlinedAt: !5167)
!5293 = !DILocation(line: 367, column: 11, scope: !4734, inlinedAt: !5167)
!5294 = !DILocation(line: 367, column: 6, scope: !4554, inlinedAt: !5167)
!5295 = !DILocation(line: 367, column: 26, scope: !4734, inlinedAt: !5167)
!5296 = !DILocation(line: 368, column: 6, scope: !4739, inlinedAt: !5167)
!5297 = !DILocation(line: 368, column: 11, scope: !4739, inlinedAt: !5167)
!5298 = !DILocation(line: 368, column: 6, scope: !4554, inlinedAt: !5167)
!5299 = !DILocation(line: 368, column: 26, scope: !4739, inlinedAt: !5167)
!5300 = !DILocation(line: 369, column: 6, scope: !4744, inlinedAt: !5167)
!5301 = !DILocation(line: 369, column: 11, scope: !4744, inlinedAt: !5167)
!5302 = !DILocation(line: 369, column: 6, scope: !4554, inlinedAt: !5167)
!5303 = !DILocation(line: 369, column: 26, scope: !4744, inlinedAt: !5167)
!5304 = !DILocation(line: 370, column: 6, scope: !4749, inlinedAt: !5167)
!5305 = !DILocation(line: 370, column: 11, scope: !4749, inlinedAt: !5167)
!5306 = !DILocation(line: 370, column: 6, scope: !4554, inlinedAt: !5167)
!5307 = !DILocation(line: 370, column: 26, scope: !4749, inlinedAt: !5167)
!5308 = !DILocation(line: 371, column: 6, scope: !4754, inlinedAt: !5167)
!5309 = !DILocation(line: 371, column: 11, scope: !4754, inlinedAt: !5167)
!5310 = !DILocation(line: 371, column: 6, scope: !4554, inlinedAt: !5167)
!5311 = !DILocation(line: 371, column: 26, scope: !4754, inlinedAt: !5167)
!5312 = !DILocation(line: 372, column: 6, scope: !4759, inlinedAt: !5167)
!5313 = !DILocation(line: 372, column: 11, scope: !4759, inlinedAt: !5167)
!5314 = !DILocation(line: 372, column: 6, scope: !4554, inlinedAt: !5167)
!5315 = !DILocation(line: 372, column: 26, scope: !4759, inlinedAt: !5167)
!5316 = !DILocation(line: 373, column: 6, scope: !4764, inlinedAt: !5167)
!5317 = !DILocation(line: 373, column: 11, scope: !4764, inlinedAt: !5167)
!5318 = !DILocation(line: 373, column: 6, scope: !4554, inlinedAt: !5167)
!5319 = !DILocation(line: 373, column: 26, scope: !4764, inlinedAt: !5167)
!5320 = !DILocation(line: 374, column: 6, scope: !4769, inlinedAt: !5167)
!5321 = !DILocation(line: 374, column: 11, scope: !4769, inlinedAt: !5167)
!5322 = !DILocation(line: 374, column: 6, scope: !4554, inlinedAt: !5167)
!5323 = !DILocation(line: 374, column: 26, scope: !4769, inlinedAt: !5167)
!5324 = !DILocation(line: 375, column: 6, scope: !4774, inlinedAt: !5167)
!5325 = !DILocation(line: 375, column: 11, scope: !4774, inlinedAt: !5167)
!5326 = !DILocation(line: 375, column: 6, scope: !4554, inlinedAt: !5167)
!5327 = !DILocation(line: 375, column: 27, scope: !4774, inlinedAt: !5167)
!5328 = !DILocation(line: 376, column: 6, scope: !4779, inlinedAt: !5167)
!5329 = !DILocation(line: 376, column: 11, scope: !4779, inlinedAt: !5167)
!5330 = !DILocation(line: 376, column: 6, scope: !4554, inlinedAt: !5167)
!5331 = !DILocation(line: 376, column: 32, scope: !4779, inlinedAt: !5167)
!5332 = !DILocation(line: 377, column: 6, scope: !4784, inlinedAt: !5167)
!5333 = !DILocation(line: 377, column: 11, scope: !4784, inlinedAt: !5167)
!5334 = !DILocation(line: 377, column: 6, scope: !4554, inlinedAt: !5167)
!5335 = !DILocation(line: 377, column: 32, scope: !4784, inlinedAt: !5167)
!5336 = !DILocation(line: 378, column: 6, scope: !4789, inlinedAt: !5167)
!5337 = !DILocation(line: 378, column: 11, scope: !4789, inlinedAt: !5167)
!5338 = !DILocation(line: 378, column: 6, scope: !4554, inlinedAt: !5167)
!5339 = !DILocation(line: 378, column: 32, scope: !4789, inlinedAt: !5167)
!5340 = !DILocation(line: 379, column: 6, scope: !4794, inlinedAt: !5167)
!5341 = !DILocation(line: 379, column: 11, scope: !4794, inlinedAt: !5167)
!5342 = !DILocation(line: 379, column: 6, scope: !4554, inlinedAt: !5167)
!5343 = !DILocation(line: 379, column: 33, scope: !4794, inlinedAt: !5167)
!5344 = !DILocation(line: 380, column: 6, scope: !4799, inlinedAt: !5167)
!5345 = !DILocation(line: 380, column: 11, scope: !4799, inlinedAt: !5167)
!5346 = !DILocation(line: 380, column: 6, scope: !4554, inlinedAt: !5167)
!5347 = !DILocation(line: 380, column: 33, scope: !4799, inlinedAt: !5167)
!5348 = !DILocation(line: 381, column: 6, scope: !4804, inlinedAt: !5167)
!5349 = !DILocation(line: 381, column: 11, scope: !4804, inlinedAt: !5167)
!5350 = !DILocation(line: 381, column: 6, scope: !4554, inlinedAt: !5167)
!5351 = !DILocation(line: 381, column: 33, scope: !4804, inlinedAt: !5167)
!5352 = !DILocation(line: 382, column: 2, scope: !4809, inlinedAt: !5167)
!5353 = !DILocation(line: 382, column: 2, scope: !4813, inlinedAt: !5167)
!5354 = !DILocation(line: 382, column: 2, scope: !4814, inlinedAt: !5167)
!5355 = !DILocation(line: 386, column: 1, scope: !4554, inlinedAt: !5167)
!5356 = !DILocation(line: 547, column: 9, scope: !4535, inlinedAt: !5160)
!5357 = !DILocation(line: 549, column: 8, scope: !4820, inlinedAt: !5160)
!5358 = !DILocation(line: 549, column: 7, scope: !4535, inlinedAt: !5160)
!5359 = !DILocation(line: 550, column: 4, scope: !4820, inlinedAt: !5160)
!5360 = !DILocation(line: 553, column: 33, scope: !4535, inlinedAt: !5160)
!5361 = !DILocation(line: 325, column: 6, scope: !4825, inlinedAt: !5165)
!5362 = !DILocation(line: 325, column: 6, scope: !4548, inlinedAt: !5165)
!5363 = !DILocation(line: 326, column: 3, scope: !4825, inlinedAt: !5165)
!5364 = !DILocation(line: 332, column: 9, scope: !4548, inlinedAt: !5165)
!5365 = !DILocation(line: 332, column: 15, scope: !4548, inlinedAt: !5165)
!5366 = !DILocation(line: 332, column: 2, scope: !4548, inlinedAt: !5165)
!5367 = !DILocation(line: 336, column: 1, scope: !4548, inlinedAt: !5165)
!5368 = !DILocation(line: 553, column: 5, scope: !4535, inlinedAt: !5160)
!5369 = !DILocation(line: 553, column: 41, scope: !4535, inlinedAt: !5160)
!5370 = !DILocation(line: 554, column: 5, scope: !4535, inlinedAt: !5160)
!5371 = !DILocation(line: 554, column: 12, scope: !4535, inlinedAt: !5160)
!5372 = !DILocation(line: 448, column: 31, scope: !4530, inlinedAt: !5159)
!5373 = !DILocation(line: 448, column: 34, scope: !4530, inlinedAt: !5159)
!5374 = !DILocation(line: 448, column: 14, scope: !4530, inlinedAt: !5159)
!5375 = !DILocation(line: 450, column: 22, scope: !4530, inlinedAt: !5159)
!5376 = !DILocation(line: 450, column: 25, scope: !4530, inlinedAt: !5159)
!5377 = !DILocation(line: 450, column: 30, scope: !4530, inlinedAt: !5159)
!5378 = !DILocation(line: 450, column: 36, scope: !4530, inlinedAt: !5159)
!5379 = !DILocation(line: 450, column: 8, scope: !4530, inlinedAt: !5159)
!5380 = !DILocation(line: 450, column: 6, scope: !4530, inlinedAt: !5159)
!5381 = !DILocation(line: 451, column: 9, scope: !4530, inlinedAt: !5159)
!5382 = !DILocation(line: 552, column: 3, scope: !4535, inlinedAt: !5160)
!5383 = !DILocation(line: 557, column: 19, scope: !4537, inlinedAt: !5160)
!5384 = !DILocation(line: 557, column: 25, scope: !4537, inlinedAt: !5160)
!5385 = !DILocation(line: 557, column: 9, scope: !4537, inlinedAt: !5160)
!5386 = !DILocation(line: 557, column: 2, scope: !4537, inlinedAt: !5160)
!5387 = !DILocation(line: 558, column: 1, scope: !4537, inlinedAt: !5160)
!5388 = !DILocation(line: 864, column: 6, scope: !5153)
!5389 = !DILocation(line: 865, column: 7, scope: !5390)
!5390 = distinct !DILexicalBlock(scope: !5153, file: !3, line: 865, column: 6)
!5391 = !DILocation(line: 865, column: 6, scope: !5153)
!5392 = !DILocation(line: 866, column: 9, scope: !5393)
!5393 = distinct !DILexicalBlock(scope: !5390, file: !3, line: 865, column: 12)
!5394 = !DILocation(line: 866, column: 3, scope: !5393)
!5395 = !DILocation(line: 867, column: 3, scope: !5393)
!5396 = !DILocation(line: 871, column: 3, scope: !5153)
!5397 = !DILocation(line: 871, column: 7, scope: !5153)
!5398 = !DILocation(line: 872, column: 24, scope: !5153)
!5399 = !DILocation(line: 872, column: 29, scope: !5153)
!5400 = !DILocation(line: 876, column: 10, scope: !5153)
!5401 = !DILocation(line: 872, column: 8, scope: !5153)
!5402 = !DILocation(line: 872, column: 6, scope: !5153)
!5403 = !DILocation(line: 878, column: 6, scope: !5404)
!5404 = distinct !DILexicalBlock(scope: !5153, file: !3, line: 878, column: 6)
!5405 = !DILocation(line: 878, column: 10, scope: !5404)
!5406 = !DILocation(line: 878, column: 6, scope: !5153)
!5407 = !DILocation(line: 879, column: 3, scope: !5408)
!5408 = distinct !DILexicalBlock(scope: !5404, file: !3, line: 878, column: 15)
!5409 = !DILocation(line: 880, column: 3, scope: !5408)
!5410 = !DILocation(line: 884, column: 24, scope: !5153)
!5411 = !DILocation(line: 884, column: 29, scope: !5153)
!5412 = !DILocation(line: 888, column: 10, scope: !5153)
!5413 = !DILocation(line: 888, column: 15, scope: !5153)
!5414 = !DILocation(line: 884, column: 8, scope: !5153)
!5415 = !DILocation(line: 884, column: 6, scope: !5153)
!5416 = !DILocation(line: 890, column: 6, scope: !5417)
!5417 = distinct !DILexicalBlock(scope: !5153, file: !3, line: 890, column: 6)
!5418 = !DILocation(line: 890, column: 10, scope: !5417)
!5419 = !DILocation(line: 890, column: 6, scope: !5153)
!5420 = !DILocation(line: 891, column: 3, scope: !5421)
!5421 = distinct !DILexicalBlock(scope: !5417, file: !3, line: 890, column: 15)
!5422 = !DILocation(line: 892, column: 3, scope: !5421)
!5423 = !DILocation(line: 896, column: 3, scope: !5153)
!5424 = !DILocation(line: 896, column: 7, scope: !5153)
!5425 = !DILocation(line: 897, column: 24, scope: !5153)
!5426 = !DILocation(line: 897, column: 29, scope: !5153)
!5427 = !DILocation(line: 901, column: 10, scope: !5153)
!5428 = !DILocation(line: 897, column: 8, scope: !5153)
!5429 = !DILocation(line: 897, column: 6, scope: !5153)
!5430 = !DILocation(line: 903, column: 6, scope: !5431)
!5431 = distinct !DILexicalBlock(scope: !5153, file: !3, line: 903, column: 6)
!5432 = !DILocation(line: 903, column: 10, scope: !5431)
!5433 = !DILocation(line: 903, column: 6, scope: !5153)
!5434 = !DILocation(line: 904, column: 3, scope: !5431)
!5435 = !DILocation(line: 903, column: 12, scope: !5431)
!5436 = !DILabel(scope: !5153, name: "done", file: !3, line: 906)
!5437 = !DILocation(line: 906, column: 1, scope: !5153)
!5438 = !DILocation(line: 907, column: 8, scope: !5153)
!5439 = !DILocation(line: 907, column: 2, scope: !5153)
!5440 = !DILocation(line: 908, column: 8, scope: !5153)
!5441 = !DILocation(line: 908, column: 2, scope: !5153)
!5442 = !DILocation(line: 909, column: 9, scope: !5153)
!5443 = !DILocation(line: 909, column: 2, scope: !5153)
!5444 = !DILocation(line: 910, column: 1, scope: !5153)
!5445 = distinct !DISubprogram(name: "usbduxfast_ai_insn_read", scope: !3, file: !3, line: 760, type: !3949, scopeLine: 764, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!5446 = !DILocalVariable(name: "dev", arg: 1, scope: !5445, file: !3, line: 760, type: !229)
!5447 = !DILocation(line: 760, column: 58, scope: !5445)
!5448 = !DILocalVariable(name: "s", arg: 2, scope: !5445, file: !3, line: 761, type: !3852)
!5449 = !DILocation(line: 761, column: 33, scope: !5445)
!5450 = !DILocalVariable(name: "insn", arg: 3, scope: !5445, file: !3, line: 762, type: !3951)
!5451 = !DILocation(line: 762, column: 28, scope: !5445)
!5452 = !DILocalVariable(name: "data", arg: 4, scope: !5445, file: !3, line: 763, type: !2704)
!5453 = !DILocation(line: 763, column: 22, scope: !5445)
!5454 = !DILocalVariable(name: "usb", scope: !5445, file: !3, line: 765, type: !4228)
!5455 = !DILocation(line: 765, column: 21, scope: !5445)
!5456 = !DILocation(line: 765, column: 45, scope: !5445)
!5457 = !DILocation(line: 765, column: 27, scope: !5445)
!5458 = !DILocalVariable(name: "devpriv", scope: !5445, file: !3, line: 766, type: !4204)
!5459 = !DILocation(line: 766, column: 29, scope: !5445)
!5460 = !DILocation(line: 766, column: 39, scope: !5445)
!5461 = !DILocation(line: 766, column: 44, scope: !5445)
!5462 = !DILocalVariable(name: "chan", scope: !5445, file: !3, line: 767, type: !7)
!5463 = !DILocation(line: 767, column: 15, scope: !5445)
!5464 = !DILocation(line: 767, column: 22, scope: !5445)
!5465 = !DILocalVariable(name: "range", scope: !5445, file: !3, line: 768, type: !7)
!5466 = !DILocation(line: 768, column: 15, scope: !5445)
!5467 = !DILocation(line: 768, column: 23, scope: !5445)
!5468 = !DILocalVariable(name: "rngmask", scope: !5445, file: !3, line: 769, type: !1373)
!5469 = !DILocation(line: 769, column: 5, scope: !5445)
!5470 = !DILocation(line: 769, column: 15, scope: !5445)
!5471 = !DILocalVariable(name: "i", scope: !5445, file: !3, line: 770, type: !228)
!5472 = !DILocation(line: 770, column: 6, scope: !5445)
!5473 = !DILocalVariable(name: "j", scope: !5445, file: !3, line: 770, type: !228)
!5474 = !DILocation(line: 770, column: 9, scope: !5445)
!5475 = !DILocalVariable(name: "n", scope: !5445, file: !3, line: 770, type: !228)
!5476 = !DILocation(line: 770, column: 12, scope: !5445)
!5477 = !DILocalVariable(name: "actual_length", scope: !5445, file: !3, line: 770, type: !228)
!5478 = !DILocation(line: 770, column: 15, scope: !5445)
!5479 = !DILocalVariable(name: "ret", scope: !5445, file: !3, line: 771, type: !228)
!5480 = !DILocation(line: 771, column: 6, scope: !5445)
!5481 = !DILocation(line: 773, column: 14, scope: !5445)
!5482 = !DILocation(line: 773, column: 23, scope: !5445)
!5483 = !DILocation(line: 773, column: 2, scope: !5445)
!5484 = !DILocation(line: 775, column: 6, scope: !5485)
!5485 = distinct !DILexicalBlock(scope: !5445, file: !3, line: 775, column: 6)
!5486 = !DILocation(line: 775, column: 15, scope: !5485)
!5487 = !DILocation(line: 775, column: 6, scope: !5445)
!5488 = !DILocation(line: 776, column: 3, scope: !5489)
!5489 = distinct !DILexicalBlock(scope: !5485, file: !3, line: 775, column: 31)
!5490 = !DILocation(line: 778, column: 17, scope: !5489)
!5491 = !DILocation(line: 778, column: 26, scope: !5489)
!5492 = !DILocation(line: 778, column: 3, scope: !5489)
!5493 = !DILocation(line: 779, column: 3, scope: !5489)
!5494 = !DILocation(line: 786, column: 22, scope: !5445)
!5495 = !DILocation(line: 786, column: 42, scope: !5445)
!5496 = !DILocation(line: 786, column: 2, scope: !5445)
!5497 = !DILocation(line: 789, column: 22, scope: !5445)
!5498 = !DILocation(line: 789, column: 49, scope: !5445)
!5499 = !DILocation(line: 789, column: 47, scope: !5445)
!5500 = !DILocation(line: 789, column: 42, scope: !5445)
!5501 = !DILocation(line: 789, column: 2, scope: !5445)
!5502 = !DILocation(line: 790, column: 22, scope: !5445)
!5503 = !DILocation(line: 790, column: 49, scope: !5445)
!5504 = !DILocation(line: 790, column: 47, scope: !5445)
!5505 = !DILocation(line: 790, column: 42, scope: !5445)
!5506 = !DILocation(line: 790, column: 2, scope: !5445)
!5507 = !DILocation(line: 791, column: 22, scope: !5445)
!5508 = !DILocation(line: 791, column: 49, scope: !5445)
!5509 = !DILocation(line: 791, column: 47, scope: !5445)
!5510 = !DILocation(line: 791, column: 42, scope: !5445)
!5511 = !DILocation(line: 791, column: 2, scope: !5445)
!5512 = !DILocation(line: 792, column: 22, scope: !5445)
!5513 = !DILocation(line: 792, column: 49, scope: !5445)
!5514 = !DILocation(line: 792, column: 47, scope: !5445)
!5515 = !DILocation(line: 792, column: 42, scope: !5445)
!5516 = !DILocation(line: 792, column: 2, scope: !5445)
!5517 = !DILocation(line: 795, column: 22, scope: !5445)
!5518 = !DILocation(line: 795, column: 42, scope: !5445)
!5519 = !DILocation(line: 795, column: 2, scope: !5445)
!5520 = !DILocation(line: 796, column: 22, scope: !5445)
!5521 = !DILocation(line: 796, column: 42, scope: !5445)
!5522 = !DILocation(line: 796, column: 2, scope: !5445)
!5523 = !DILocation(line: 798, column: 28, scope: !5445)
!5524 = !DILocation(line: 798, column: 8, scope: !5445)
!5525 = !DILocation(line: 798, column: 6, scope: !5445)
!5526 = !DILocation(line: 799, column: 6, scope: !5527)
!5527 = distinct !DILexicalBlock(scope: !5445, file: !3, line: 799, column: 6)
!5528 = !DILocation(line: 799, column: 10, scope: !5527)
!5529 = !DILocation(line: 799, column: 6, scope: !5445)
!5530 = !DILocation(line: 800, column: 17, scope: !5531)
!5531 = distinct !DILexicalBlock(scope: !5527, file: !3, line: 799, column: 15)
!5532 = !DILocation(line: 800, column: 26, scope: !5531)
!5533 = !DILocation(line: 800, column: 3, scope: !5531)
!5534 = !DILocation(line: 801, column: 10, scope: !5531)
!5535 = !DILocation(line: 801, column: 3, scope: !5531)
!5536 = !DILocation(line: 804, column: 9, scope: !5537)
!5537 = distinct !DILexicalBlock(scope: !5445, file: !3, line: 804, column: 2)
!5538 = !DILocation(line: 804, column: 7, scope: !5537)
!5539 = !DILocation(line: 804, column: 14, scope: !5540)
!5540 = distinct !DILexicalBlock(scope: !5537, file: !3, line: 804, column: 2)
!5541 = !DILocation(line: 804, column: 16, scope: !5540)
!5542 = !DILocation(line: 804, column: 2, scope: !5537)
!5543 = !DILocation(line: 805, column: 22, scope: !5544)
!5544 = distinct !DILexicalBlock(scope: !5540, file: !3, line: 804, column: 42)
!5545 = !DILocation(line: 805, column: 27, scope: !5544)
!5546 = !DILocation(line: 806, column: 8, scope: !5544)
!5547 = !DILocation(line: 806, column: 17, scope: !5544)
!5548 = !DILocation(line: 805, column: 9, scope: !5544)
!5549 = !DILocation(line: 805, column: 7, scope: !5544)
!5550 = !DILocation(line: 808, column: 7, scope: !5551)
!5551 = distinct !DILexicalBlock(scope: !5544, file: !3, line: 808, column: 7)
!5552 = !DILocation(line: 808, column: 11, scope: !5551)
!5553 = !DILocation(line: 808, column: 7, scope: !5544)
!5554 = !DILocation(line: 809, column: 4, scope: !5555)
!5555 = distinct !DILexicalBlock(scope: !5551, file: !3, line: 808, column: 16)
!5556 = !DILocation(line: 810, column: 18, scope: !5555)
!5557 = !DILocation(line: 810, column: 27, scope: !5555)
!5558 = !DILocation(line: 810, column: 4, scope: !5555)
!5559 = !DILocation(line: 811, column: 11, scope: !5555)
!5560 = !DILocation(line: 811, column: 4, scope: !5555)
!5561 = !DILocation(line: 813, column: 2, scope: !5544)
!5562 = !DILocation(line: 804, column: 38, scope: !5540)
!5563 = !DILocation(line: 804, column: 2, scope: !5540)
!5564 = distinct !{!5564, !5542, !5565}
!5565 = !DILocation(line: 813, column: 2, scope: !5537)
!5566 = !DILocation(line: 815, column: 9, scope: !5567)
!5567 = distinct !DILexicalBlock(scope: !5445, file: !3, line: 815, column: 2)
!5568 = !DILocation(line: 815, column: 7, scope: !5567)
!5569 = !DILocation(line: 815, column: 14, scope: !5570)
!5570 = distinct !DILexicalBlock(scope: !5567, file: !3, line: 815, column: 2)
!5571 = !DILocation(line: 815, column: 18, scope: !5570)
!5572 = !DILocation(line: 815, column: 24, scope: !5570)
!5573 = !DILocation(line: 815, column: 16, scope: !5570)
!5574 = !DILocation(line: 815, column: 2, scope: !5567)
!5575 = !DILocation(line: 816, column: 22, scope: !5576)
!5576 = distinct !DILexicalBlock(scope: !5570, file: !3, line: 815, column: 28)
!5577 = !DILocation(line: 816, column: 27, scope: !5576)
!5578 = !DILocation(line: 817, column: 8, scope: !5576)
!5579 = !DILocation(line: 817, column: 17, scope: !5576)
!5580 = !DILocation(line: 816, column: 9, scope: !5576)
!5581 = !DILocation(line: 816, column: 7, scope: !5576)
!5582 = !DILocation(line: 819, column: 7, scope: !5583)
!5583 = distinct !DILexicalBlock(scope: !5576, file: !3, line: 819, column: 7)
!5584 = !DILocation(line: 819, column: 11, scope: !5583)
!5585 = !DILocation(line: 819, column: 7, scope: !5576)
!5586 = !DILocation(line: 820, column: 4, scope: !5587)
!5587 = distinct !DILexicalBlock(scope: !5583, file: !3, line: 819, column: 16)
!5588 = !DILocation(line: 821, column: 18, scope: !5587)
!5589 = !DILocation(line: 821, column: 27, scope: !5587)
!5590 = !DILocation(line: 821, column: 4, scope: !5587)
!5591 = !DILocation(line: 822, column: 11, scope: !5587)
!5592 = !DILocation(line: 822, column: 4, scope: !5587)
!5593 = !DILocation(line: 824, column: 7, scope: !5576)
!5594 = !DILocation(line: 824, column: 21, scope: !5576)
!5595 = !DILocation(line: 824, column: 5, scope: !5576)
!5596 = !DILocation(line: 825, column: 8, scope: !5597)
!5597 = distinct !DILexicalBlock(scope: !5576, file: !3, line: 825, column: 7)
!5598 = !DILocation(line: 825, column: 10, scope: !5597)
!5599 = !DILocation(line: 825, column: 16, scope: !5597)
!5600 = !DILocation(line: 825, column: 7, scope: !5576)
!5601 = !DILocation(line: 826, column: 4, scope: !5602)
!5602 = distinct !DILexicalBlock(scope: !5597, file: !3, line: 825, column: 22)
!5603 = !DILocation(line: 827, column: 18, scope: !5602)
!5604 = !DILocation(line: 827, column: 27, scope: !5602)
!5605 = !DILocation(line: 827, column: 4, scope: !5602)
!5606 = !DILocation(line: 828, column: 4, scope: !5602)
!5607 = !DILocation(line: 830, column: 12, scope: !5608)
!5608 = distinct !DILexicalBlock(scope: !5576, file: !3, line: 830, column: 3)
!5609 = !DILocation(line: 830, column: 10, scope: !5608)
!5610 = !DILocation(line: 830, column: 8, scope: !5608)
!5611 = !DILocation(line: 830, column: 19, scope: !5612)
!5612 = distinct !DILexicalBlock(scope: !5608, file: !3, line: 830, column: 3)
!5613 = !DILocation(line: 830, column: 23, scope: !5612)
!5614 = !DILocation(line: 830, column: 21, scope: !5612)
!5615 = !DILocation(line: 830, column: 26, scope: !5612)
!5616 = !DILocation(line: 830, column: 30, scope: !5612)
!5617 = !DILocation(line: 830, column: 34, scope: !5612)
!5618 = !DILocation(line: 830, column: 40, scope: !5612)
!5619 = !DILocation(line: 830, column: 32, scope: !5612)
!5620 = !DILocation(line: 0, scope: !5612)
!5621 = !DILocation(line: 830, column: 3, scope: !5608)
!5622 = !DILocation(line: 831, column: 23, scope: !5623)
!5623 = distinct !DILexicalBlock(scope: !5612, file: !3, line: 830, column: 56)
!5624 = !DILocation(line: 831, column: 32, scope: !5623)
!5625 = !DILocation(line: 831, column: 14, scope: !5623)
!5626 = !DILocation(line: 831, column: 40, scope: !5623)
!5627 = !DILocation(line: 831, column: 4, scope: !5623)
!5628 = !DILocation(line: 831, column: 9, scope: !5623)
!5629 = !DILocation(line: 831, column: 12, scope: !5623)
!5630 = !DILocation(line: 832, column: 5, scope: !5623)
!5631 = !DILocation(line: 833, column: 3, scope: !5623)
!5632 = !DILocation(line: 830, column: 48, scope: !5612)
!5633 = !DILocation(line: 830, column: 50, scope: !5612)
!5634 = !DILocation(line: 830, column: 46, scope: !5612)
!5635 = !DILocation(line: 830, column: 3, scope: !5612)
!5636 = distinct !{!5636, !5621, !5637}
!5637 = !DILocation(line: 833, column: 3, scope: !5608)
!5638 = !DILocation(line: 815, column: 2, scope: !5570)
!5639 = distinct !{!5639, !5574, !5640}
!5640 = !DILocation(line: 834, column: 2, scope: !5567)
!5641 = !DILocation(line: 836, column: 16, scope: !5445)
!5642 = !DILocation(line: 836, column: 25, scope: !5445)
!5643 = !DILocation(line: 836, column: 2, scope: !5445)
!5644 = !DILocation(line: 838, column: 9, scope: !5445)
!5645 = !DILocation(line: 838, column: 15, scope: !5445)
!5646 = !DILocation(line: 838, column: 2, scope: !5445)
!5647 = !DILocation(line: 839, column: 1, scope: !5445)
!5648 = distinct !DISubprogram(name: "usbduxfast_ai_cmdtest", scope: !3, file: !3, line: 349, type: !3970, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!5649 = !DILocalVariable(name: "dev", arg: 1, scope: !5648, file: !3, line: 349, type: !229)
!5650 = !DILocation(line: 349, column: 56, scope: !5648)
!5651 = !DILocalVariable(name: "s", arg: 2, scope: !5648, file: !3, line: 350, type: !3852)
!5652 = !DILocation(line: 350, column: 31, scope: !5648)
!5653 = !DILocalVariable(name: "cmd", arg: 3, scope: !5648, file: !3, line: 351, type: !3972)
!5654 = !DILocation(line: 351, column: 25, scope: !5648)
!5655 = !DILocalVariable(name: "err", scope: !5648, file: !3, line: 353, type: !228)
!5656 = !DILocation(line: 353, column: 6, scope: !5648)
!5657 = !DILocalVariable(name: "err2", scope: !5648, file: !3, line: 354, type: !228)
!5658 = !DILocation(line: 354, column: 6, scope: !5648)
!5659 = !DILocalVariable(name: "steps", scope: !5648, file: !3, line: 355, type: !7)
!5660 = !DILocation(line: 355, column: 15, scope: !5648)
!5661 = !DILocalVariable(name: "arg", scope: !5648, file: !3, line: 356, type: !7)
!5662 = !DILocation(line: 356, column: 15, scope: !5648)
!5663 = !DILocation(line: 360, column: 35, scope: !5648)
!5664 = !DILocation(line: 360, column: 40, scope: !5648)
!5665 = !DILocation(line: 360, column: 9, scope: !5648)
!5666 = !DILocation(line: 360, column: 6, scope: !5648)
!5667 = !DILocation(line: 362, column: 35, scope: !5648)
!5668 = !DILocation(line: 362, column: 40, scope: !5648)
!5669 = !DILocation(line: 362, column: 9, scope: !5648)
!5670 = !DILocation(line: 362, column: 6, scope: !5648)
!5671 = !DILocation(line: 363, column: 35, scope: !5648)
!5672 = !DILocation(line: 363, column: 40, scope: !5648)
!5673 = !DILocation(line: 363, column: 9, scope: !5648)
!5674 = !DILocation(line: 363, column: 6, scope: !5648)
!5675 = !DILocation(line: 364, column: 35, scope: !5648)
!5676 = !DILocation(line: 364, column: 40, scope: !5648)
!5677 = !DILocation(line: 364, column: 9, scope: !5648)
!5678 = !DILocation(line: 364, column: 6, scope: !5648)
!5679 = !DILocation(line: 365, column: 35, scope: !5648)
!5680 = !DILocation(line: 365, column: 40, scope: !5648)
!5681 = !DILocation(line: 365, column: 9, scope: !5648)
!5682 = !DILocation(line: 365, column: 6, scope: !5648)
!5683 = !DILocation(line: 367, column: 6, scope: !5684)
!5684 = distinct !DILexicalBlock(scope: !5648, file: !3, line: 367, column: 6)
!5685 = !DILocation(line: 367, column: 6, scope: !5648)
!5686 = !DILocation(line: 368, column: 3, scope: !5684)
!5687 = !DILocation(line: 372, column: 40, scope: !5648)
!5688 = !DILocation(line: 372, column: 45, scope: !5648)
!5689 = !DILocation(line: 372, column: 9, scope: !5648)
!5690 = !DILocation(line: 372, column: 6, scope: !5648)
!5691 = !DILocation(line: 373, column: 40, scope: !5648)
!5692 = !DILocation(line: 373, column: 45, scope: !5648)
!5693 = !DILocation(line: 373, column: 9, scope: !5648)
!5694 = !DILocation(line: 373, column: 6, scope: !5648)
!5695 = !DILocation(line: 377, column: 6, scope: !5696)
!5696 = distinct !DILexicalBlock(scope: !5648, file: !3, line: 377, column: 6)
!5697 = !DILocation(line: 377, column: 6, scope: !5648)
!5698 = !DILocation(line: 378, column: 3, scope: !5696)
!5699 = !DILocation(line: 382, column: 38, scope: !5648)
!5700 = !DILocation(line: 382, column: 43, scope: !5648)
!5701 = !DILocation(line: 382, column: 9, scope: !5648)
!5702 = !DILocation(line: 382, column: 6, scope: !5648)
!5703 = !DILocation(line: 384, column: 7, scope: !5704)
!5704 = distinct !DILexicalBlock(scope: !5648, file: !3, line: 384, column: 6)
!5705 = !DILocation(line: 384, column: 12, scope: !5704)
!5706 = !DILocation(line: 384, column: 6, scope: !5648)
!5707 = !DILocation(line: 385, column: 7, scope: !5704)
!5708 = !DILocation(line: 385, column: 3, scope: !5704)
!5709 = !DILocation(line: 388, column: 6, scope: !5710)
!5710 = distinct !DILexicalBlock(scope: !5648, file: !3, line: 388, column: 6)
!5711 = !DILocation(line: 388, column: 11, scope: !5710)
!5712 = !DILocation(line: 388, column: 21, scope: !5710)
!5713 = !DILocation(line: 388, column: 33, scope: !5710)
!5714 = !DILocation(line: 389, column: 6, scope: !5710)
!5715 = !DILocation(line: 389, column: 11, scope: !5710)
!5716 = !DILocation(line: 389, column: 24, scope: !5710)
!5717 = !DILocation(line: 389, column: 29, scope: !5710)
!5718 = !DILocation(line: 389, column: 32, scope: !5710)
!5719 = !DILocation(line: 389, column: 37, scope: !5710)
!5720 = !DILocation(line: 389, column: 50, scope: !5710)
!5721 = !DILocation(line: 388, column: 6, scope: !5648)
!5722 = !DILocation(line: 390, column: 7, scope: !5710)
!5723 = !DILocation(line: 390, column: 3, scope: !5710)
!5724 = !DILocation(line: 392, column: 38, scope: !5648)
!5725 = !DILocation(line: 392, column: 43, scope: !5648)
!5726 = !DILocation(line: 393, column: 9, scope: !5648)
!5727 = !DILocation(line: 393, column: 14, scope: !5648)
!5728 = !DILocation(line: 392, column: 9, scope: !5648)
!5729 = !DILocation(line: 392, column: 6, scope: !5648)
!5730 = !DILocation(line: 402, column: 11, scope: !5648)
!5731 = !DILocation(line: 402, column: 16, scope: !5648)
!5732 = !DILocation(line: 402, column: 28, scope: !5648)
!5733 = !DILocation(line: 402, column: 34, scope: !5648)
!5734 = !DILocation(line: 402, column: 8, scope: !5648)
!5735 = !DILocation(line: 403, column: 6, scope: !5736)
!5736 = distinct !DILexicalBlock(scope: !5648, file: !3, line: 403, column: 6)
!5737 = !DILocation(line: 403, column: 11, scope: !5736)
!5738 = !DILocation(line: 403, column: 24, scope: !5736)
!5739 = !DILocation(line: 403, column: 6, scope: !5648)
!5740 = !DILocation(line: 404, column: 11, scope: !5736)
!5741 = !DILocation(line: 404, column: 8, scope: !5736)
!5742 = !DILocation(line: 404, column: 3, scope: !5736)
!5743 = !DILocation(line: 407, column: 11, scope: !5736)
!5744 = !DILocation(line: 407, column: 8, scope: !5736)
!5745 = !DILocation(line: 408, column: 10, scope: !5648)
!5746 = !DILocation(line: 408, column: 7, scope: !5648)
!5747 = !DILocation(line: 409, column: 6, scope: !5748)
!5748 = distinct !DILexicalBlock(scope: !5648, file: !3, line: 409, column: 6)
!5749 = !DILocation(line: 409, column: 6, scope: !5648)
!5750 = !DILocation(line: 410, column: 10, scope: !5751)
!5751 = distinct !DILexicalBlock(scope: !5748, file: !3, line: 409, column: 12)
!5752 = !DILocation(line: 410, column: 7, scope: !5751)
!5753 = !DILocation(line: 411, column: 10, scope: !5751)
!5754 = !DILocation(line: 411, column: 16, scope: !5751)
!5755 = !DILocation(line: 411, column: 24, scope: !5751)
!5756 = !DILocation(line: 411, column: 7, scope: !5751)
!5757 = !DILocation(line: 412, column: 39, scope: !5751)
!5758 = !DILocation(line: 412, column: 44, scope: !5751)
!5759 = !DILocation(line: 412, column: 57, scope: !5751)
!5760 = !DILocation(line: 412, column: 10, scope: !5751)
!5761 = !DILocation(line: 412, column: 7, scope: !5751)
!5762 = !DILocation(line: 413, column: 2, scope: !5751)
!5763 = !DILocation(line: 415, column: 6, scope: !5764)
!5764 = distinct !DILexicalBlock(scope: !5648, file: !3, line: 415, column: 6)
!5765 = !DILocation(line: 415, column: 11, scope: !5764)
!5766 = !DILocation(line: 415, column: 20, scope: !5764)
!5767 = !DILocation(line: 415, column: 6, scope: !5648)
!5768 = !DILocation(line: 416, column: 40, scope: !5764)
!5769 = !DILocation(line: 416, column: 45, scope: !5764)
!5770 = !DILocation(line: 416, column: 10, scope: !5764)
!5771 = !DILocation(line: 416, column: 7, scope: !5764)
!5772 = !DILocation(line: 416, column: 3, scope: !5764)
!5773 = !DILocation(line: 418, column: 39, scope: !5764)
!5774 = !DILocation(line: 418, column: 44, scope: !5764)
!5775 = !DILocation(line: 418, column: 10, scope: !5764)
!5776 = !DILocation(line: 418, column: 7, scope: !5764)
!5777 = !DILocation(line: 420, column: 6, scope: !5778)
!5778 = distinct !DILexicalBlock(scope: !5648, file: !3, line: 420, column: 6)
!5779 = !DILocation(line: 420, column: 6, scope: !5648)
!5780 = !DILocation(line: 421, column: 3, scope: !5778)
!5781 = !DILocation(line: 426, column: 6, scope: !5782)
!5782 = distinct !DILexicalBlock(scope: !5648, file: !3, line: 426, column: 6)
!5783 = !DILocation(line: 426, column: 11, scope: !5782)
!5784 = !DILocation(line: 426, column: 20, scope: !5782)
!5785 = !DILocation(line: 426, column: 23, scope: !5782)
!5786 = !DILocation(line: 426, column: 28, scope: !5782)
!5787 = !DILocation(line: 426, column: 41, scope: !5782)
!5788 = !DILocation(line: 426, column: 6, scope: !5648)
!5789 = !DILocation(line: 427, column: 39, scope: !5782)
!5790 = !DILocation(line: 427, column: 44, scope: !5782)
!5791 = !DILocation(line: 427, column: 47, scope: !5782)
!5792 = !DILocation(line: 427, column: 10, scope: !5782)
!5793 = !DILocation(line: 427, column: 7, scope: !5782)
!5794 = !DILocation(line: 427, column: 3, scope: !5782)
!5795 = !DILocation(line: 428, column: 6, scope: !5796)
!5796 = distinct !DILexicalBlock(scope: !5648, file: !3, line: 428, column: 6)
!5797 = !DILocation(line: 428, column: 6, scope: !5648)
!5798 = !DILocation(line: 429, column: 3, scope: !5796)
!5799 = !DILocation(line: 431, column: 2, scope: !5648)
!5800 = !DILocation(line: 432, column: 1, scope: !5648)
!5801 = distinct !DISubprogram(name: "usbduxfast_ai_cmd", scope: !3, file: !3, line: 464, type: !3966, scopeLine: 466, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!5802 = !DILocalVariable(name: "dev", arg: 1, scope: !5801, file: !3, line: 464, type: !229)
!5803 = !DILocation(line: 464, column: 52, scope: !5801)
!5804 = !DILocalVariable(name: "s", arg: 2, scope: !5801, file: !3, line: 465, type: !3852)
!5805 = !DILocation(line: 465, column: 34, scope: !5801)
!5806 = !DILocalVariable(name: "devpriv", scope: !5801, file: !3, line: 467, type: !4204)
!5807 = !DILocation(line: 467, column: 29, scope: !5801)
!5808 = !DILocation(line: 467, column: 39, scope: !5801)
!5809 = !DILocation(line: 467, column: 44, scope: !5801)
!5810 = !DILocalVariable(name: "cmd", scope: !5801, file: !3, line: 468, type: !3972)
!5811 = !DILocation(line: 468, column: 21, scope: !5801)
!5812 = !DILocation(line: 468, column: 28, scope: !5801)
!5813 = !DILocation(line: 468, column: 31, scope: !5801)
!5814 = !DILocation(line: 468, column: 38, scope: !5801)
!5815 = !DILocalVariable(name: "rngmask", scope: !5801, file: !3, line: 469, type: !7)
!5816 = !DILocation(line: 469, column: 15, scope: !5801)
!5817 = !DILocalVariable(name: "j", scope: !5801, file: !3, line: 470, type: !228)
!5818 = !DILocation(line: 470, column: 6, scope: !5801)
!5819 = !DILocalVariable(name: "ret", scope: !5801, file: !3, line: 470, type: !228)
!5820 = !DILocation(line: 470, column: 9, scope: !5801)
!5821 = !DILocalVariable(name: "steps", scope: !5801, file: !3, line: 471, type: !337)
!5822 = !DILocation(line: 471, column: 7, scope: !5801)
!5823 = !DILocalVariable(name: "steps_tmp", scope: !5801, file: !3, line: 471, type: !337)
!5824 = !DILocation(line: 471, column: 14, scope: !5801)
!5825 = !DILocation(line: 473, column: 14, scope: !5801)
!5826 = !DILocation(line: 473, column: 23, scope: !5801)
!5827 = !DILocation(line: 473, column: 2, scope: !5801)
!5828 = !DILocation(line: 474, column: 6, scope: !5829)
!5829 = distinct !DILexicalBlock(scope: !5801, file: !3, line: 474, column: 6)
!5830 = !DILocation(line: 474, column: 15, scope: !5829)
!5831 = !DILocation(line: 474, column: 6, scope: !5801)
!5832 = !DILocation(line: 475, column: 7, scope: !5833)
!5833 = distinct !DILexicalBlock(scope: !5829, file: !3, line: 474, column: 31)
!5834 = !DILocation(line: 476, column: 3, scope: !5833)
!5835 = !DILocation(line: 483, column: 2, scope: !5801)
!5836 = !DILocation(line: 483, column: 11, scope: !5801)
!5837 = !DILocation(line: 483, column: 18, scope: !5801)
!5838 = !DILocation(line: 485, column: 11, scope: !5801)
!5839 = !DILocation(line: 485, column: 16, scope: !5801)
!5840 = !DILocation(line: 485, column: 28, scope: !5801)
!5841 = !DILocation(line: 485, column: 34, scope: !5801)
!5842 = !DILocation(line: 485, column: 10, scope: !5801)
!5843 = !DILocation(line: 485, column: 8, scope: !5801)
!5844 = !DILocation(line: 487, column: 10, scope: !5801)
!5845 = !DILocation(line: 487, column: 15, scope: !5801)
!5846 = !DILocation(line: 487, column: 2, scope: !5801)
!5847 = !DILocation(line: 493, column: 7, scope: !5848)
!5848 = distinct !DILexicalBlock(scope: !5849, file: !3, line: 493, column: 7)
!5849 = distinct !DILexicalBlock(scope: !5801, file: !3, line: 487, column: 29)
!5850 = !DILocation(line: 493, column: 34, scope: !5848)
!5851 = !DILocation(line: 493, column: 7, scope: !5849)
!5852 = !DILocation(line: 494, column: 12, scope: !5848)
!5853 = !DILocation(line: 494, column: 4, scope: !5848)
!5854 = !DILocation(line: 496, column: 12, scope: !5848)
!5855 = !DILocation(line: 504, column: 7, scope: !5856)
!5856 = distinct !DILexicalBlock(scope: !5849, file: !3, line: 504, column: 7)
!5857 = !DILocation(line: 504, column: 12, scope: !5856)
!5858 = !DILocation(line: 504, column: 22, scope: !5856)
!5859 = !DILocation(line: 504, column: 7, scope: !5849)
!5860 = !DILocation(line: 508, column: 24, scope: !5861)
!5861 = distinct !DILexicalBlock(scope: !5856, file: !3, line: 504, column: 35)
!5862 = !DILocation(line: 508, column: 44, scope: !5861)
!5863 = !DILocation(line: 508, column: 4, scope: !5861)
!5864 = !DILocation(line: 509, column: 3, scope: !5861)
!5865 = !DILocation(line: 510, column: 24, scope: !5866)
!5866 = distinct !DILexicalBlock(scope: !5856, file: !3, line: 509, column: 10)
!5867 = !DILocation(line: 510, column: 44, scope: !5866)
!5868 = !DILocation(line: 510, column: 4, scope: !5866)
!5869 = !DILocation(line: 513, column: 7, scope: !5870)
!5870 = distinct !DILexicalBlock(scope: !5849, file: !3, line: 513, column: 7)
!5871 = !DILocation(line: 513, column: 13, scope: !5870)
!5872 = !DILocation(line: 513, column: 7, scope: !5849)
!5873 = !DILocation(line: 515, column: 8, scope: !5874)
!5874 = distinct !DILexicalBlock(scope: !5875, file: !3, line: 515, column: 8)
!5875 = distinct !DILexicalBlock(scope: !5870, file: !3, line: 513, column: 36)
!5876 = !DILocation(line: 515, column: 14, scope: !5874)
!5877 = !DILocation(line: 515, column: 8, scope: !5875)
!5878 = !DILocation(line: 525, column: 25, scope: !5879)
!5879 = distinct !DILexicalBlock(scope: !5874, file: !3, line: 515, column: 20)
!5880 = !DILocation(line: 526, column: 23, scope: !5879)
!5881 = !DILocation(line: 525, column: 5, scope: !5879)
!5882 = !DILocation(line: 527, column: 4, scope: !5879)
!5883 = !DILocation(line: 534, column: 25, scope: !5884)
!5884 = distinct !DILexicalBlock(scope: !5874, file: !3, line: 527, column: 11)
!5885 = !DILocation(line: 534, column: 33, scope: !5884)
!5886 = !DILocation(line: 534, column: 39, scope: !5884)
!5887 = !DILocation(line: 535, column: 17, scope: !5884)
!5888 = !DILocation(line: 534, column: 5, scope: !5884)
!5889 = !DILocation(line: 540, column: 25, scope: !5884)
!5890 = !DILocation(line: 541, column: 23, scope: !5884)
!5891 = !DILocation(line: 540, column: 5, scope: !5884)
!5892 = !DILocation(line: 543, column: 3, scope: !5875)
!5893 = !DILocation(line: 550, column: 12, scope: !5894)
!5894 = distinct !DILexicalBlock(scope: !5870, file: !3, line: 543, column: 10)
!5895 = !DILocation(line: 550, column: 18, scope: !5894)
!5896 = !DILocation(line: 550, column: 10, scope: !5894)
!5897 = !DILocation(line: 553, column: 24, scope: !5894)
!5898 = !DILocation(line: 554, column: 10, scope: !5894)
!5899 = !DILocation(line: 554, column: 16, scope: !5894)
!5900 = !DILocation(line: 554, column: 27, scope: !5894)
!5901 = !DILocation(line: 553, column: 4, scope: !5894)
!5902 = !DILocation(line: 557, column: 24, scope: !5894)
!5903 = !DILocation(line: 557, column: 32, scope: !5894)
!5904 = !DILocation(line: 557, column: 40, scope: !5894)
!5905 = !DILocation(line: 557, column: 46, scope: !5894)
!5906 = !DILocation(line: 557, column: 38, scope: !5894)
!5907 = !DILocation(line: 558, column: 16, scope: !5894)
!5908 = !DILocation(line: 557, column: 4, scope: !5894)
!5909 = !DILocation(line: 565, column: 24, scope: !5894)
!5910 = !DILocation(line: 566, column: 22, scope: !5894)
!5911 = !DILocation(line: 565, column: 4, scope: !5894)
!5912 = !DILocation(line: 568, column: 3, scope: !5849)
!5913 = !DILocation(line: 576, column: 7, scope: !5914)
!5914 = distinct !DILexicalBlock(scope: !5849, file: !3, line: 576, column: 7)
!5915 = !DILocation(line: 576, column: 34, scope: !5914)
!5916 = !DILocation(line: 576, column: 7, scope: !5849)
!5917 = !DILocation(line: 577, column: 12, scope: !5914)
!5918 = !DILocation(line: 577, column: 4, scope: !5914)
!5919 = !DILocation(line: 579, column: 12, scope: !5914)
!5920 = !DILocation(line: 582, column: 23, scope: !5849)
!5921 = !DILocation(line: 582, column: 43, scope: !5849)
!5922 = !DILocation(line: 582, column: 3, scope: !5849)
!5923 = !DILocation(line: 585, column: 15, scope: !5849)
!5924 = !DILocation(line: 585, column: 21, scope: !5849)
!5925 = !DILocation(line: 585, column: 13, scope: !5849)
!5926 = !DILocation(line: 587, column: 7, scope: !5927)
!5927 = distinct !DILexicalBlock(scope: !5849, file: !3, line: 587, column: 7)
!5928 = !DILocation(line: 587, column: 34, scope: !5927)
!5929 = !DILocation(line: 587, column: 7, scope: !5849)
!5930 = !DILocation(line: 588, column: 12, scope: !5927)
!5931 = !DILocation(line: 588, column: 4, scope: !5927)
!5932 = !DILocation(line: 590, column: 12, scope: !5927)
!5933 = !DILocation(line: 594, column: 23, scope: !5849)
!5934 = !DILocation(line: 594, column: 31, scope: !5849)
!5935 = !DILocation(line: 594, column: 41, scope: !5849)
!5936 = !DILocation(line: 595, column: 22, scope: !5849)
!5937 = !DILocation(line: 595, column: 20, scope: !5849)
!5938 = !DILocation(line: 595, column: 15, scope: !5849)
!5939 = !DILocation(line: 594, column: 3, scope: !5849)
!5940 = !DILocation(line: 598, column: 23, scope: !5849)
!5941 = !DILocation(line: 598, column: 31, scope: !5849)
!5942 = !DILocation(line: 598, column: 44, scope: !5849)
!5943 = !DILocation(line: 598, column: 54, scope: !5849)
!5944 = !DILocation(line: 598, column: 42, scope: !5849)
!5945 = !DILocation(line: 599, column: 15, scope: !5849)
!5946 = !DILocation(line: 598, column: 3, scope: !5849)
!5947 = !DILocation(line: 602, column: 23, scope: !5849)
!5948 = !DILocation(line: 602, column: 43, scope: !5849)
!5949 = !DILocation(line: 602, column: 3, scope: !5849)
!5950 = !DILocation(line: 608, column: 15, scope: !5849)
!5951 = !DILocation(line: 608, column: 21, scope: !5849)
!5952 = !DILocation(line: 608, column: 13, scope: !5849)
!5953 = !DILocation(line: 610, column: 7, scope: !5954)
!5954 = distinct !DILexicalBlock(scope: !5849, file: !3, line: 610, column: 7)
!5955 = !DILocation(line: 610, column: 34, scope: !5954)
!5956 = !DILocation(line: 610, column: 7, scope: !5849)
!5957 = !DILocation(line: 611, column: 12, scope: !5954)
!5958 = !DILocation(line: 611, column: 4, scope: !5954)
!5959 = !DILocation(line: 613, column: 12, scope: !5954)
!5960 = !DILocation(line: 617, column: 23, scope: !5849)
!5961 = !DILocation(line: 617, column: 31, scope: !5849)
!5962 = !DILocation(line: 617, column: 41, scope: !5849)
!5963 = !DILocation(line: 618, column: 31, scope: !5849)
!5964 = !DILocation(line: 618, column: 29, scope: !5849)
!5965 = !DILocation(line: 618, column: 15, scope: !5849)
!5966 = !DILocation(line: 617, column: 3, scope: !5849)
!5967 = !DILocation(line: 621, column: 23, scope: !5849)
!5968 = !DILocation(line: 621, column: 31, scope: !5849)
!5969 = !DILocation(line: 621, column: 43, scope: !5849)
!5970 = !DILocation(line: 621, column: 53, scope: !5849)
!5971 = !DILocation(line: 621, column: 41, scope: !5849)
!5972 = !DILocation(line: 622, column: 15, scope: !5849)
!5973 = !DILocation(line: 621, column: 3, scope: !5849)
!5974 = !DILocation(line: 624, column: 23, scope: !5849)
!5975 = !DILocation(line: 624, column: 43, scope: !5849)
!5976 = !DILocation(line: 624, column: 3, scope: !5849)
!5977 = !DILocation(line: 625, column: 3, scope: !5849)
!5978 = !DILocation(line: 631, column: 10, scope: !5979)
!5979 = distinct !DILexicalBlock(scope: !5849, file: !3, line: 631, column: 3)
!5980 = !DILocation(line: 631, column: 8, scope: !5979)
!5981 = !DILocation(line: 631, column: 15, scope: !5982)
!5982 = distinct !DILexicalBlock(scope: !5979, file: !3, line: 631, column: 3)
!5983 = !DILocation(line: 631, column: 17, scope: !5982)
!5984 = !DILocation(line: 631, column: 3, scope: !5979)
!5985 = !DILocalVariable(name: "index", scope: !5986, file: !3, line: 632, type: !228)
!5986 = distinct !DILexicalBlock(scope: !5982, file: !3, line: 631, column: 27)
!5987 = !DILocation(line: 632, column: 8, scope: !5986)
!5988 = !DILocation(line: 632, column: 16, scope: !5986)
!5989 = !DILocation(line: 632, column: 18, scope: !5986)
!5990 = !DILocation(line: 634, column: 8, scope: !5991)
!5991 = distinct !DILexicalBlock(scope: !5986, file: !3, line: 634, column: 8)
!5992 = !DILocation(line: 634, column: 35, scope: !5991)
!5993 = !DILocation(line: 634, column: 8, scope: !5986)
!5994 = !DILocation(line: 635, column: 13, scope: !5991)
!5995 = !DILocation(line: 635, column: 5, scope: !5991)
!5996 = !DILocation(line: 637, column: 13, scope: !5991)
!5997 = !DILocation(line: 644, column: 24, scope: !5986)
!5998 = !DILocation(line: 644, column: 29, scope: !5986)
!5999 = !DILocation(line: 644, column: 36, scope: !5986)
!6000 = !DILocation(line: 644, column: 42, scope: !5986)
!6001 = !DILocation(line: 645, column: 16, scope: !5986)
!6002 = !DILocation(line: 644, column: 4, scope: !5986)
!6003 = !DILocation(line: 647, column: 8, scope: !6004)
!6004 = distinct !DILexicalBlock(scope: !5986, file: !3, line: 647, column: 8)
!6005 = !DILocation(line: 647, column: 39, scope: !6004)
!6006 = !DILocation(line: 647, column: 8, scope: !5986)
!6007 = !DILocation(line: 648, column: 13, scope: !6004)
!6008 = !DILocation(line: 648, column: 5, scope: !6004)
!6009 = !DILocation(line: 650, column: 13, scope: !6004)
!6010 = !DILocation(line: 655, column: 24, scope: !5986)
!6011 = !DILocation(line: 655, column: 29, scope: !5986)
!6012 = !DILocation(line: 655, column: 35, scope: !5986)
!6013 = !DILocation(line: 655, column: 40, scope: !5986)
!6014 = !DILocation(line: 655, column: 48, scope: !5986)
!6015 = !DILocation(line: 655, column: 54, scope: !5986)
!6016 = !DILocation(line: 655, column: 46, scope: !5986)
!6017 = !DILocation(line: 656, column: 23, scope: !5986)
!6018 = !DILocation(line: 656, column: 21, scope: !5986)
!6019 = !DILocation(line: 656, column: 16, scope: !5986)
!6020 = !DILocation(line: 655, column: 4, scope: !5986)
!6021 = !DILocation(line: 657, column: 3, scope: !5986)
!6022 = !DILocation(line: 631, column: 23, scope: !5982)
!6023 = !DILocation(line: 631, column: 3, scope: !5982)
!6024 = distinct !{!6024, !5984, !6025}
!6025 = !DILocation(line: 657, column: 3, scope: !5979)
!6026 = !DILocation(line: 660, column: 15, scope: !5849)
!6027 = !DILocation(line: 660, column: 21, scope: !5849)
!6028 = !DILocation(line: 660, column: 13, scope: !5849)
!6029 = !DILocation(line: 664, column: 23, scope: !5849)
!6030 = !DILocation(line: 664, column: 31, scope: !5849)
!6031 = !DILocation(line: 664, column: 41, scope: !5849)
!6032 = !DILocation(line: 665, column: 15, scope: !5849)
!6033 = !DILocation(line: 664, column: 3, scope: !5849)
!6034 = !DILocation(line: 667, column: 7, scope: !6035)
!6035 = distinct !DILexicalBlock(scope: !5849, file: !3, line: 667, column: 7)
!6036 = !DILocation(line: 667, column: 34, scope: !6035)
!6037 = !DILocation(line: 667, column: 7, scope: !5849)
!6038 = !DILocation(line: 668, column: 12, scope: !6035)
!6039 = !DILocation(line: 668, column: 4, scope: !6035)
!6040 = !DILocation(line: 670, column: 12, scope: !6035)
!6041 = !DILocation(line: 675, column: 23, scope: !5849)
!6042 = !DILocation(line: 675, column: 31, scope: !5849)
!6043 = !DILocation(line: 675, column: 43, scope: !5849)
!6044 = !DILocation(line: 675, column: 53, scope: !5849)
!6045 = !DILocation(line: 675, column: 41, scope: !5849)
!6046 = !DILocation(line: 676, column: 31, scope: !5849)
!6047 = !DILocation(line: 676, column: 29, scope: !5849)
!6048 = !DILocation(line: 676, column: 15, scope: !5849)
!6049 = !DILocation(line: 675, column: 3, scope: !5849)
!6050 = !DILocation(line: 678, column: 23, scope: !5849)
!6051 = !DILocation(line: 678, column: 43, scope: !5849)
!6052 = !DILocation(line: 678, column: 3, scope: !5849)
!6053 = !DILocation(line: 679, column: 3, scope: !5849)
!6054 = !DILocation(line: 682, column: 7, scope: !6055)
!6055 = distinct !DILexicalBlock(scope: !5849, file: !3, line: 682, column: 7)
!6056 = !DILocation(line: 682, column: 34, scope: !6055)
!6057 = !DILocation(line: 682, column: 7, scope: !5849)
!6058 = !DILocation(line: 683, column: 12, scope: !6055)
!6059 = !DILocation(line: 683, column: 4, scope: !6055)
!6060 = !DILocation(line: 685, column: 12, scope: !6055)
!6061 = !DILocation(line: 687, column: 7, scope: !6062)
!6062 = distinct !DILexicalBlock(scope: !5849, file: !3, line: 687, column: 7)
!6063 = !DILocation(line: 687, column: 12, scope: !6062)
!6064 = !DILocation(line: 687, column: 22, scope: !6062)
!6065 = !DILocation(line: 687, column: 7, scope: !5849)
!6066 = !DILocation(line: 696, column: 24, scope: !6067)
!6067 = distinct !DILexicalBlock(scope: !6062, file: !3, line: 687, column: 35)
!6068 = !DILocation(line: 697, column: 26, scope: !6067)
!6069 = !DILocation(line: 697, column: 24, scope: !6067)
!6070 = !DILocation(line: 697, column: 10, scope: !6067)
!6071 = !DILocation(line: 696, column: 4, scope: !6067)
!6072 = !DILocation(line: 698, column: 3, scope: !6067)
!6073 = !DILocation(line: 705, column: 24, scope: !6074)
!6074 = distinct !DILexicalBlock(scope: !6062, file: !3, line: 698, column: 10)
!6075 = !DILocation(line: 706, column: 26, scope: !6074)
!6076 = !DILocation(line: 706, column: 24, scope: !6074)
!6077 = !DILocation(line: 706, column: 10, scope: !6074)
!6078 = !DILocation(line: 705, column: 4, scope: !6074)
!6079 = !DILocation(line: 711, column: 23, scope: !5849)
!6080 = !DILocation(line: 711, column: 43, scope: !5849)
!6081 = !DILocation(line: 711, column: 3, scope: !5849)
!6082 = !DILocation(line: 714, column: 11, scope: !5849)
!6083 = !DILocation(line: 714, column: 17, scope: !5849)
!6084 = !DILocation(line: 714, column: 9, scope: !5849)
!6085 = !DILocation(line: 717, column: 23, scope: !5849)
!6086 = !DILocation(line: 717, column: 31, scope: !5849)
!6087 = !DILocation(line: 717, column: 37, scope: !5849)
!6088 = !DILocation(line: 718, column: 22, scope: !5849)
!6089 = !DILocation(line: 718, column: 20, scope: !5849)
!6090 = !DILocation(line: 718, column: 15, scope: !5849)
!6091 = !DILocation(line: 717, column: 3, scope: !5849)
!6092 = !DILocation(line: 721, column: 23, scope: !5849)
!6093 = !DILocation(line: 721, column: 31, scope: !5849)
!6094 = !DILocation(line: 721, column: 39, scope: !5849)
!6095 = !DILocation(line: 721, column: 45, scope: !5849)
!6096 = !DILocation(line: 721, column: 37, scope: !5849)
!6097 = !DILocation(line: 722, column: 15, scope: !5849)
!6098 = !DILocation(line: 721, column: 3, scope: !5849)
!6099 = !DILocation(line: 727, column: 23, scope: !5849)
!6100 = !DILocation(line: 727, column: 43, scope: !5849)
!6101 = !DILocation(line: 727, column: 3, scope: !5849)
!6102 = !DILocation(line: 729, column: 3, scope: !5849)
!6103 = !DILocation(line: 733, column: 28, scope: !5801)
!6104 = !DILocation(line: 733, column: 8, scope: !5801)
!6105 = !DILocation(line: 733, column: 6, scope: !5801)
!6106 = !DILocation(line: 734, column: 6, scope: !6107)
!6107 = distinct !DILexicalBlock(scope: !5801, file: !3, line: 734, column: 6)
!6108 = !DILocation(line: 734, column: 10, scope: !6107)
!6109 = !DILocation(line: 734, column: 6, scope: !5801)
!6110 = !DILocation(line: 735, column: 3, scope: !6107)
!6111 = !DILocation(line: 737, column: 7, scope: !6112)
!6112 = distinct !DILexicalBlock(scope: !5801, file: !3, line: 737, column: 6)
!6113 = !DILocation(line: 737, column: 12, scope: !6112)
!6114 = !DILocation(line: 737, column: 22, scope: !6112)
!6115 = !DILocation(line: 737, column: 35, scope: !6112)
!6116 = !DILocation(line: 737, column: 39, scope: !6112)
!6117 = !DILocation(line: 737, column: 44, scope: !6112)
!6118 = !DILocation(line: 737, column: 54, scope: !6112)
!6119 = !DILocation(line: 737, column: 6, scope: !5801)
!6120 = !DILocation(line: 739, column: 3, scope: !6121)
!6121 = distinct !DILexicalBlock(scope: !6112, file: !3, line: 737, column: 68)
!6122 = !DILocation(line: 739, column: 12, scope: !6121)
!6123 = !DILocation(line: 739, column: 27, scope: !6121)
!6124 = !DILocation(line: 740, column: 31, scope: !6121)
!6125 = !DILocation(line: 740, column: 9, scope: !6121)
!6126 = !DILocation(line: 740, column: 7, scope: !6121)
!6127 = !DILocation(line: 741, column: 7, scope: !6128)
!6128 = distinct !DILexicalBlock(scope: !6121, file: !3, line: 741, column: 7)
!6129 = !DILocation(line: 741, column: 11, scope: !6128)
!6130 = !DILocation(line: 741, column: 7, scope: !6121)
!6131 = !DILocation(line: 742, column: 4, scope: !6132)
!6132 = distinct !DILexicalBlock(scope: !6128, file: !3, line: 741, column: 16)
!6133 = !DILocation(line: 742, column: 13, scope: !6132)
!6134 = !DILocation(line: 742, column: 28, scope: !6132)
!6135 = !DILocation(line: 744, column: 4, scope: !6132)
!6136 = !DILocation(line: 746, column: 3, scope: !6121)
!6137 = !DILocation(line: 746, column: 6, scope: !6121)
!6138 = !DILocation(line: 746, column: 13, scope: !6121)
!6139 = !DILocation(line: 746, column: 21, scope: !6121)
!6140 = !DILocation(line: 747, column: 2, scope: !6121)
!6141 = !DILocation(line: 748, column: 3, scope: !6142)
!6142 = distinct !DILexicalBlock(scope: !6112, file: !3, line: 747, column: 9)
!6143 = !DILocation(line: 748, column: 6, scope: !6142)
!6144 = !DILocation(line: 748, column: 13, scope: !6142)
!6145 = !DILocation(line: 748, column: 21, scope: !6142)
!6146 = !DILocation(line: 737, column: 65, scope: !6112)
!6147 = !DILabel(scope: !5801, name: "cmd_exit", file: !3, line: 751)
!6148 = !DILocation(line: 751, column: 1, scope: !5801)
!6149 = !DILocation(line: 752, column: 16, scope: !5801)
!6150 = !DILocation(line: 752, column: 25, scope: !5801)
!6151 = !DILocation(line: 752, column: 2, scope: !5801)
!6152 = !DILocation(line: 754, column: 9, scope: !5801)
!6153 = !DILocation(line: 754, column: 2, scope: !5801)
!6154 = distinct !DISubprogram(name: "usbduxfast_ai_cancel", scope: !3, file: !3, line: 210, type: !3966, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!6155 = !DILocalVariable(name: "dev", arg: 1, scope: !6154, file: !3, line: 210, type: !229)
!6156 = !DILocation(line: 210, column: 55, scope: !6154)
!6157 = !DILocalVariable(name: "s", arg: 2, scope: !6154, file: !3, line: 211, type: !3852)
!6158 = !DILocation(line: 211, column: 30, scope: !6154)
!6159 = !DILocalVariable(name: "devpriv", scope: !6154, file: !3, line: 213, type: !4204)
!6160 = !DILocation(line: 213, column: 29, scope: !6154)
!6161 = !DILocation(line: 213, column: 39, scope: !6154)
!6162 = !DILocation(line: 213, column: 44, scope: !6154)
!6163 = !DILocalVariable(name: "ret", scope: !6154, file: !3, line: 214, type: !228)
!6164 = !DILocation(line: 214, column: 6, scope: !6154)
!6165 = !DILocation(line: 216, column: 14, scope: !6154)
!6166 = !DILocation(line: 216, column: 23, scope: !6154)
!6167 = !DILocation(line: 216, column: 2, scope: !6154)
!6168 = !DILocation(line: 217, column: 27, scope: !6154)
!6169 = !DILocation(line: 217, column: 8, scope: !6154)
!6170 = !DILocation(line: 217, column: 6, scope: !6154)
!6171 = !DILocation(line: 218, column: 16, scope: !6154)
!6172 = !DILocation(line: 218, column: 25, scope: !6154)
!6173 = !DILocation(line: 218, column: 2, scope: !6154)
!6174 = !DILocation(line: 220, column: 9, scope: !6154)
!6175 = !DILocation(line: 220, column: 2, scope: !6154)
!6176 = distinct !DISubprogram(name: "get_order", scope: !6177, file: !6177, line: 29, type: !6178, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!6177 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!6178 = !DISubroutineType(types: !6179)
!6179 = !{!228, !351}
!6180 = !DILocalVariable(name: "x", arg: 1, scope: !6181, file: !6182, line: 366, type: !447)
!6181 = distinct !DISubprogram(name: "fls64", scope: !6182, file: !6182, line: 366, type: !6183, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!6182 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!6183 = !DISubroutineType(types: !6184)
!6184 = !{!228, !447}
!6185 = !DILocation(line: 366, column: 40, scope: !6181, inlinedAt: !6186)
!6186 = distinct !DILocation(line: 46, column: 9, scope: !6176)
!6187 = !DILocalVariable(name: "bitpos", scope: !6181, file: !6182, line: 368, type: !228)
!6188 = !DILocation(line: 368, column: 6, scope: !6181, inlinedAt: !6186)
!6189 = !DILocalVariable(name: "size", arg: 1, scope: !6176, file: !6177, line: 29, type: !351)
!6190 = !DILocation(line: 29, column: 63, scope: !6176)
!6191 = !DILocation(line: 31, column: 27, scope: !6192)
!6192 = distinct !DILexicalBlock(scope: !6176, file: !6177, line: 31, column: 6)
!6193 = !DILocation(line: 31, column: 6, scope: !6192)
!6194 = !DILocation(line: 31, column: 6, scope: !6176)
!6195 = !DILocation(line: 32, column: 8, scope: !6196)
!6196 = distinct !DILexicalBlock(scope: !6197, file: !6177, line: 32, column: 7)
!6197 = distinct !DILexicalBlock(scope: !6192, file: !6177, line: 31, column: 34)
!6198 = !DILocation(line: 32, column: 7, scope: !6197)
!6199 = !DILocation(line: 33, column: 4, scope: !6196)
!6200 = !DILocation(line: 35, column: 7, scope: !6201)
!6201 = distinct !DILexicalBlock(scope: !6197, file: !6177, line: 35, column: 7)
!6202 = !DILocation(line: 35, column: 12, scope: !6201)
!6203 = !DILocation(line: 35, column: 7, scope: !6197)
!6204 = !DILocation(line: 36, column: 4, scope: !6201)
!6205 = !DILocation(line: 38, column: 10, scope: !6197)
!6206 = !DILocation(line: 38, column: 28, scope: !6197)
!6207 = !DILocation(line: 38, column: 41, scope: !6197)
!6208 = !DILocation(line: 38, column: 3, scope: !6197)
!6209 = !DILocation(line: 41, column: 6, scope: !6176)
!6210 = !DILocation(line: 42, column: 7, scope: !6176)
!6211 = !DILocation(line: 46, column: 15, scope: !6176)
!6212 = !DILocation(line: 374, column: 2, scope: !6181, inlinedAt: !6186)
!6213 = !DILocation(line: 376, column: 14, scope: !6181, inlinedAt: !6186)
!6214 = !{i32 263995}
!6215 = !DILocation(line: 377, column: 9, scope: !6181, inlinedAt: !6186)
!6216 = !DILocation(line: 377, column: 16, scope: !6181, inlinedAt: !6186)
!6217 = !DILocation(line: 46, column: 2, scope: !6176)
!6218 = !DILocation(line: 48, column: 1, scope: !6176)
!6219 = distinct !DISubprogram(name: "__ilog2_u64", scope: !6220, file: !6220, line: 30, type: !6221, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!6220 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!6221 = !DISubroutineType(types: !6222)
!6222 = !{!228, !446}
!6223 = !DILocation(line: 366, column: 40, scope: !6181, inlinedAt: !6224)
!6224 = distinct !DILocation(line: 32, column: 9, scope: !6219)
!6225 = !DILocation(line: 368, column: 6, scope: !6181, inlinedAt: !6224)
!6226 = !DILocalVariable(name: "n", arg: 1, scope: !6219, file: !6220, line: 30, type: !446)
!6227 = !DILocation(line: 30, column: 21, scope: !6219)
!6228 = !DILocation(line: 32, column: 15, scope: !6219)
!6229 = !DILocation(line: 374, column: 2, scope: !6181, inlinedAt: !6224)
!6230 = !DILocation(line: 376, column: 14, scope: !6181, inlinedAt: !6224)
!6231 = !DILocation(line: 377, column: 9, scope: !6181, inlinedAt: !6224)
!6232 = !DILocation(line: 377, column: 16, scope: !6181, inlinedAt: !6224)
!6233 = !DILocation(line: 32, column: 18, scope: !6219)
!6234 = !DILocation(line: 32, column: 2, scope: !6219)
!6235 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !6236, file: !6236, line: 137, type: !6237, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!6236 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!6237 = !DISubroutineType(types: !6238)
!6238 = !{!168, !958, !2148, !348, !169}
!6239 = !DILocalVariable(name: "s", arg: 1, scope: !6235, file: !6236, line: 137, type: !958)
!6240 = !DILocation(line: 137, column: 54, scope: !6235)
!6241 = !DILocalVariable(name: "object", arg: 2, scope: !6235, file: !6236, line: 137, type: !2148)
!6242 = !DILocation(line: 137, column: 69, scope: !6235)
!6243 = !DILocalVariable(name: "size", arg: 3, scope: !6235, file: !6236, line: 138, type: !348)
!6244 = !DILocation(line: 138, column: 12, scope: !6235)
!6245 = !DILocalVariable(name: "flags", arg: 4, scope: !6235, file: !6236, line: 138, type: !169)
!6246 = !DILocation(line: 138, column: 24, scope: !6235)
!6247 = !DILocation(line: 140, column: 17, scope: !6235)
!6248 = !DILocation(line: 140, column: 2, scope: !6235)
!6249 = distinct !DISubprogram(name: "__create_pipe", scope: !101, file: !101, line: 1945, type: !6250, scopeLine: 1947, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!6250 = !DISubroutineType(types: !6251)
!6251 = !{!7, !4228, !7}
!6252 = !DILocalVariable(name: "dev", arg: 1, scope: !6249, file: !101, line: 1945, type: !4228)
!6253 = !DILocation(line: 1945, column: 61, scope: !6249)
!6254 = !DILocalVariable(name: "endpoint", arg: 2, scope: !6249, file: !101, line: 1946, type: !7)
!6255 = !DILocation(line: 1946, column: 16, scope: !6249)
!6256 = !DILocation(line: 1948, column: 10, scope: !6249)
!6257 = !DILocation(line: 1948, column: 15, scope: !6249)
!6258 = !DILocation(line: 1948, column: 22, scope: !6249)
!6259 = !DILocation(line: 1948, column: 31, scope: !6249)
!6260 = !DILocation(line: 1948, column: 40, scope: !6249)
!6261 = !DILocation(line: 1948, column: 28, scope: !6249)
!6262 = !DILocation(line: 1948, column: 2, scope: !6249)
!6263 = distinct !DISubprogram(name: "usbduxfast_cmd_data", scope: !3, file: !3, line: 183, type: !6264, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!6264 = !DISubroutineType(types: !6265)
!6265 = !{null, !229, !228, !1373, !1373, !1373, !1373}
!6266 = !DILocalVariable(name: "dev", arg: 1, scope: !6263, file: !3, line: 183, type: !229)
!6267 = !DILocation(line: 183, column: 55, scope: !6263)
!6268 = !DILocalVariable(name: "index", arg: 2, scope: !6263, file: !3, line: 183, type: !228)
!6269 = !DILocation(line: 183, column: 64, scope: !6263)
!6270 = !DILocalVariable(name: "len", arg: 3, scope: !6263, file: !3, line: 184, type: !1373)
!6271 = !DILocation(line: 184, column: 8, scope: !6263)
!6272 = !DILocalVariable(name: "op", arg: 4, scope: !6263, file: !3, line: 184, type: !1373)
!6273 = !DILocation(line: 184, column: 16, scope: !6263)
!6274 = !DILocalVariable(name: "out", arg: 5, scope: !6263, file: !3, line: 184, type: !1373)
!6275 = !DILocation(line: 184, column: 23, scope: !6263)
!6276 = !DILocalVariable(name: "log", arg: 6, scope: !6263, file: !3, line: 184, type: !1373)
!6277 = !DILocation(line: 184, column: 31, scope: !6263)
!6278 = !DILocalVariable(name: "devpriv", scope: !6263, file: !3, line: 186, type: !4204)
!6279 = !DILocation(line: 186, column: 29, scope: !6263)
!6280 = !DILocation(line: 186, column: 39, scope: !6263)
!6281 = !DILocation(line: 186, column: 44, scope: !6263)
!6282 = !DILocation(line: 189, column: 38, scope: !6263)
!6283 = !DILocation(line: 189, column: 2, scope: !6263)
!6284 = !DILocation(line: 189, column: 11, scope: !6263)
!6285 = !DILocation(line: 189, column: 29, scope: !6263)
!6286 = !DILocation(line: 189, column: 27, scope: !6263)
!6287 = !DILocation(line: 189, column: 36, scope: !6263)
!6288 = !DILocation(line: 190, column: 38, scope: !6263)
!6289 = !DILocation(line: 190, column: 2, scope: !6263)
!6290 = !DILocation(line: 190, column: 11, scope: !6263)
!6291 = !DILocation(line: 190, column: 29, scope: !6263)
!6292 = !DILocation(line: 190, column: 27, scope: !6263)
!6293 = !DILocation(line: 190, column: 36, scope: !6263)
!6294 = !DILocation(line: 191, column: 38, scope: !6263)
!6295 = !DILocation(line: 191, column: 2, scope: !6263)
!6296 = !DILocation(line: 191, column: 11, scope: !6263)
!6297 = !DILocation(line: 191, column: 29, scope: !6263)
!6298 = !DILocation(line: 191, column: 27, scope: !6263)
!6299 = !DILocation(line: 191, column: 36, scope: !6263)
!6300 = !DILocation(line: 192, column: 38, scope: !6263)
!6301 = !DILocation(line: 192, column: 2, scope: !6263)
!6302 = !DILocation(line: 192, column: 11, scope: !6263)
!6303 = !DILocation(line: 192, column: 29, scope: !6263)
!6304 = !DILocation(line: 192, column: 27, scope: !6263)
!6305 = !DILocation(line: 192, column: 36, scope: !6263)
!6306 = !DILocation(line: 193, column: 1, scope: !6263)
!6307 = distinct !DISubprogram(name: "usbduxfast_send_cmd", scope: !3, file: !3, line: 164, type: !6308, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!6308 = !DISubroutineType(types: !6309)
!6309 = !{!228, !229, !228}
!6310 = !DILocalVariable(name: "dev", arg: 1, scope: !6307, file: !3, line: 164, type: !229)
!6311 = !DILocation(line: 164, column: 54, scope: !6307)
!6312 = !DILocalVariable(name: "cmd_type", arg: 2, scope: !6307, file: !3, line: 164, type: !228)
!6313 = !DILocation(line: 164, column: 63, scope: !6307)
!6314 = !DILocalVariable(name: "usb", scope: !6307, file: !3, line: 166, type: !4228)
!6315 = !DILocation(line: 166, column: 21, scope: !6307)
!6316 = !DILocation(line: 166, column: 45, scope: !6307)
!6317 = !DILocation(line: 166, column: 27, scope: !6307)
!6318 = !DILocalVariable(name: "devpriv", scope: !6307, file: !3, line: 167, type: !4204)
!6319 = !DILocation(line: 167, column: 29, scope: !6307)
!6320 = !DILocation(line: 167, column: 39, scope: !6307)
!6321 = !DILocation(line: 167, column: 44, scope: !6307)
!6322 = !DILocalVariable(name: "nsent", scope: !6307, file: !3, line: 168, type: !228)
!6323 = !DILocation(line: 168, column: 6, scope: !6307)
!6324 = !DILocalVariable(name: "ret", scope: !6307, file: !3, line: 169, type: !228)
!6325 = !DILocation(line: 169, column: 6, scope: !6307)
!6326 = !DILocation(line: 171, column: 23, scope: !6307)
!6327 = !DILocation(line: 171, column: 2, scope: !6307)
!6328 = !DILocation(line: 171, column: 11, scope: !6307)
!6329 = !DILocation(line: 171, column: 21, scope: !6307)
!6330 = !DILocation(line: 173, column: 21, scope: !6307)
!6331 = !DILocation(line: 173, column: 26, scope: !6307)
!6332 = !DILocation(line: 174, column: 7, scope: !6307)
!6333 = !DILocation(line: 174, column: 16, scope: !6307)
!6334 = !DILocation(line: 173, column: 8, scope: !6307)
!6335 = !DILocation(line: 173, column: 6, scope: !6307)
!6336 = !DILocation(line: 176, column: 6, scope: !6337)
!6337 = distinct !DILexicalBlock(scope: !6307, file: !3, line: 176, column: 6)
!6338 = !DILocation(line: 176, column: 10, scope: !6337)
!6339 = !DILocation(line: 176, column: 6, scope: !6307)
!6340 = !DILocation(line: 177, column: 3, scope: !6337)
!6341 = !DILocation(line: 180, column: 9, scope: !6307)
!6342 = !DILocation(line: 180, column: 2, scope: !6307)
!6343 = distinct !DISubprogram(name: "comedi_check_trigger_src", scope: !157, file: !157, line: 859, type: !6344, scopeLine: 861, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!6344 = !DISubroutineType(types: !6345)
!6345 = !{!228, !2704, !7}
!6346 = !DILocalVariable(name: "src", arg: 1, scope: !6343, file: !157, line: 859, type: !2704)
!6347 = !DILocation(line: 859, column: 58, scope: !6343)
!6348 = !DILocalVariable(name: "flags", arg: 2, scope: !6343, file: !157, line: 860, type: !7)
!6349 = !DILocation(line: 860, column: 22, scope: !6343)
!6350 = !DILocalVariable(name: "orig_src", scope: !6343, file: !157, line: 862, type: !7)
!6351 = !DILocation(line: 862, column: 15, scope: !6343)
!6352 = !DILocation(line: 862, column: 27, scope: !6343)
!6353 = !DILocation(line: 862, column: 26, scope: !6343)
!6354 = !DILocation(line: 864, column: 9, scope: !6343)
!6355 = !DILocation(line: 864, column: 20, scope: !6343)
!6356 = !DILocation(line: 864, column: 18, scope: !6343)
!6357 = !DILocation(line: 864, column: 3, scope: !6343)
!6358 = !DILocation(line: 864, column: 7, scope: !6343)
!6359 = !DILocation(line: 865, column: 7, scope: !6360)
!6360 = distinct !DILexicalBlock(scope: !6343, file: !157, line: 865, column: 6)
!6361 = !DILocation(line: 865, column: 6, scope: !6360)
!6362 = !DILocation(line: 865, column: 11, scope: !6360)
!6363 = !DILocation(line: 865, column: 27, scope: !6360)
!6364 = !DILocation(line: 865, column: 31, scope: !6360)
!6365 = !DILocation(line: 865, column: 30, scope: !6360)
!6366 = !DILocation(line: 865, column: 38, scope: !6360)
!6367 = !DILocation(line: 865, column: 35, scope: !6360)
!6368 = !DILocation(line: 865, column: 6, scope: !6343)
!6369 = !DILocation(line: 866, column: 3, scope: !6360)
!6370 = !DILocation(line: 867, column: 2, scope: !6343)
!6371 = !DILocation(line: 868, column: 1, scope: !6343)
!6372 = distinct !DISubprogram(name: "comedi_check_trigger_is_unique", scope: !157, file: !157, line: 878, type: !6373, scopeLine: 879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!6373 = !DISubroutineType(types: !6374)
!6374 = !{!228, !7}
!6375 = !DILocalVariable(name: "src", arg: 1, scope: !6372, file: !157, line: 878, type: !7)
!6376 = !DILocation(line: 878, column: 63, scope: !6372)
!6377 = !DILocation(line: 881, column: 7, scope: !6378)
!6378 = distinct !DILexicalBlock(scope: !6372, file: !157, line: 881, column: 6)
!6379 = !DILocation(line: 881, column: 14, scope: !6378)
!6380 = !DILocation(line: 881, column: 18, scope: !6378)
!6381 = !DILocation(line: 881, column: 11, scope: !6378)
!6382 = !DILocation(line: 881, column: 24, scope: !6378)
!6383 = !DILocation(line: 881, column: 6, scope: !6372)
!6384 = !DILocation(line: 882, column: 3, scope: !6378)
!6385 = !DILocation(line: 883, column: 2, scope: !6372)
!6386 = !DILocation(line: 884, column: 1, scope: !6372)
!6387 = distinct !DISubprogram(name: "comedi_check_trigger_arg_is", scope: !157, file: !157, line: 897, type: !6344, scopeLine: 899, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!6388 = !DILocalVariable(name: "arg", arg: 1, scope: !6387, file: !157, line: 897, type: !2704)
!6389 = !DILocation(line: 897, column: 61, scope: !6387)
!6390 = !DILocalVariable(name: "val", arg: 2, scope: !6387, file: !157, line: 898, type: !7)
!6391 = !DILocation(line: 898, column: 25, scope: !6387)
!6392 = !DILocation(line: 900, column: 7, scope: !6393)
!6393 = distinct !DILexicalBlock(scope: !6387, file: !157, line: 900, column: 6)
!6394 = !DILocation(line: 900, column: 6, scope: !6393)
!6395 = !DILocation(line: 900, column: 14, scope: !6393)
!6396 = !DILocation(line: 900, column: 11, scope: !6393)
!6397 = !DILocation(line: 900, column: 6, scope: !6387)
!6398 = !DILocation(line: 901, column: 10, scope: !6399)
!6399 = distinct !DILexicalBlock(scope: !6393, file: !157, line: 900, column: 19)
!6400 = !DILocation(line: 901, column: 4, scope: !6399)
!6401 = !DILocation(line: 901, column: 8, scope: !6399)
!6402 = !DILocation(line: 902, column: 3, scope: !6399)
!6403 = !DILocation(line: 904, column: 2, scope: !6387)
!6404 = !DILocation(line: 905, column: 1, scope: !6387)
!6405 = distinct !DISubprogram(name: "comedi_check_trigger_arg_min", scope: !157, file: !157, line: 918, type: !6344, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!6406 = !DILocalVariable(name: "arg", arg: 1, scope: !6405, file: !157, line: 918, type: !2704)
!6407 = !DILocation(line: 918, column: 62, scope: !6405)
!6408 = !DILocalVariable(name: "val", arg: 2, scope: !6405, file: !157, line: 919, type: !7)
!6409 = !DILocation(line: 919, column: 26, scope: !6405)
!6410 = !DILocation(line: 921, column: 7, scope: !6411)
!6411 = distinct !DILexicalBlock(scope: !6405, file: !157, line: 921, column: 6)
!6412 = !DILocation(line: 921, column: 6, scope: !6411)
!6413 = !DILocation(line: 921, column: 13, scope: !6411)
!6414 = !DILocation(line: 921, column: 11, scope: !6411)
!6415 = !DILocation(line: 921, column: 6, scope: !6405)
!6416 = !DILocation(line: 922, column: 10, scope: !6417)
!6417 = distinct !DILexicalBlock(scope: !6411, file: !157, line: 921, column: 18)
!6418 = !DILocation(line: 922, column: 4, scope: !6417)
!6419 = !DILocation(line: 922, column: 8, scope: !6417)
!6420 = !DILocation(line: 923, column: 3, scope: !6417)
!6421 = !DILocation(line: 925, column: 2, scope: !6405)
!6422 = !DILocation(line: 926, column: 1, scope: !6405)
!6423 = distinct !DISubprogram(name: "comedi_check_trigger_arg_max", scope: !157, file: !157, line: 939, type: !6344, scopeLine: 941, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!6424 = !DILocalVariable(name: "arg", arg: 1, scope: !6423, file: !157, line: 939, type: !2704)
!6425 = !DILocation(line: 939, column: 62, scope: !6423)
!6426 = !DILocalVariable(name: "val", arg: 2, scope: !6423, file: !157, line: 940, type: !7)
!6427 = !DILocation(line: 940, column: 26, scope: !6423)
!6428 = !DILocation(line: 942, column: 7, scope: !6429)
!6429 = distinct !DILexicalBlock(scope: !6423, file: !157, line: 942, column: 6)
!6430 = !DILocation(line: 942, column: 6, scope: !6429)
!6431 = !DILocation(line: 942, column: 13, scope: !6429)
!6432 = !DILocation(line: 942, column: 11, scope: !6429)
!6433 = !DILocation(line: 942, column: 6, scope: !6423)
!6434 = !DILocation(line: 943, column: 10, scope: !6435)
!6435 = distinct !DILexicalBlock(scope: !6429, file: !157, line: 942, column: 18)
!6436 = !DILocation(line: 943, column: 4, scope: !6435)
!6437 = !DILocation(line: 943, column: 8, scope: !6435)
!6438 = !DILocation(line: 944, column: 3, scope: !6435)
!6439 = !DILocation(line: 946, column: 2, scope: !6423)
!6440 = !DILocation(line: 947, column: 1, scope: !6423)
!6441 = distinct !DISubprogram(name: "usbduxfast_ai_check_chanlist", scope: !3, file: !3, line: 319, type: !3970, scopeLine: 322, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!6442 = !DILocalVariable(name: "dev", arg: 1, scope: !6441, file: !3, line: 319, type: !229)
!6443 = !DILocation(line: 319, column: 63, scope: !6441)
!6444 = !DILocalVariable(name: "s", arg: 2, scope: !6441, file: !3, line: 320, type: !3852)
!6445 = !DILocation(line: 320, column: 31, scope: !6441)
!6446 = !DILocalVariable(name: "cmd", arg: 3, scope: !6441, file: !3, line: 321, type: !3972)
!6447 = !DILocation(line: 321, column: 25, scope: !6441)
!6448 = !DILocalVariable(name: "gain0", scope: !6441, file: !3, line: 323, type: !7)
!6449 = !DILocation(line: 323, column: 15, scope: !6441)
!6450 = !DILocation(line: 323, column: 23, scope: !6441)
!6451 = !DILocalVariable(name: "i", scope: !6441, file: !3, line: 324, type: !228)
!6452 = !DILocation(line: 324, column: 6, scope: !6441)
!6453 = !DILocation(line: 326, column: 6, scope: !6454)
!6454 = distinct !DILexicalBlock(scope: !6441, file: !3, line: 326, column: 6)
!6455 = !DILocation(line: 326, column: 11, scope: !6454)
!6456 = !DILocation(line: 326, column: 24, scope: !6454)
!6457 = !DILocation(line: 326, column: 28, scope: !6454)
!6458 = !DILocation(line: 326, column: 31, scope: !6454)
!6459 = !DILocation(line: 326, column: 36, scope: !6454)
!6460 = !DILocation(line: 326, column: 49, scope: !6454)
!6461 = !DILocation(line: 326, column: 6, scope: !6441)
!6462 = !DILocation(line: 327, column: 3, scope: !6463)
!6463 = distinct !DILexicalBlock(scope: !6454, file: !3, line: 326, column: 56)
!6464 = !DILocation(line: 328, column: 3, scope: !6463)
!6465 = !DILocation(line: 331, column: 9, scope: !6466)
!6466 = distinct !DILexicalBlock(scope: !6441, file: !3, line: 331, column: 2)
!6467 = !DILocation(line: 331, column: 7, scope: !6466)
!6468 = !DILocation(line: 331, column: 14, scope: !6469)
!6469 = distinct !DILexicalBlock(scope: !6466, file: !3, line: 331, column: 2)
!6470 = !DILocation(line: 331, column: 18, scope: !6469)
!6471 = !DILocation(line: 331, column: 23, scope: !6469)
!6472 = !DILocation(line: 331, column: 16, scope: !6469)
!6473 = !DILocation(line: 331, column: 2, scope: !6466)
!6474 = !DILocalVariable(name: "chan", scope: !6475, file: !3, line: 332, type: !7)
!6475 = distinct !DILexicalBlock(scope: !6469, file: !3, line: 331, column: 42)
!6476 = !DILocation(line: 332, column: 16, scope: !6475)
!6477 = !DILocation(line: 332, column: 23, scope: !6475)
!6478 = !DILocalVariable(name: "gain", scope: !6475, file: !3, line: 333, type: !7)
!6479 = !DILocation(line: 333, column: 16, scope: !6475)
!6480 = !DILocation(line: 333, column: 23, scope: !6475)
!6481 = !DILocation(line: 335, column: 7, scope: !6482)
!6482 = distinct !DILexicalBlock(scope: !6475, file: !3, line: 335, column: 7)
!6483 = !DILocation(line: 335, column: 15, scope: !6482)
!6484 = !DILocation(line: 335, column: 12, scope: !6482)
!6485 = !DILocation(line: 335, column: 7, scope: !6475)
!6486 = !DILocation(line: 336, column: 4, scope: !6487)
!6487 = distinct !DILexicalBlock(scope: !6482, file: !3, line: 335, column: 18)
!6488 = !DILocation(line: 338, column: 4, scope: !6487)
!6489 = !DILocation(line: 340, column: 7, scope: !6490)
!6490 = distinct !DILexicalBlock(scope: !6475, file: !3, line: 340, column: 7)
!6491 = !DILocation(line: 340, column: 15, scope: !6490)
!6492 = !DILocation(line: 340, column: 12, scope: !6490)
!6493 = !DILocation(line: 340, column: 21, scope: !6490)
!6494 = !DILocation(line: 340, column: 24, scope: !6490)
!6495 = !DILocation(line: 340, column: 29, scope: !6490)
!6496 = !DILocation(line: 340, column: 42, scope: !6490)
!6497 = !DILocation(line: 340, column: 7, scope: !6475)
!6498 = !DILocation(line: 341, column: 4, scope: !6499)
!6499 = distinct !DILexicalBlock(scope: !6490, file: !3, line: 340, column: 47)
!6500 = !DILocation(line: 343, column: 4, scope: !6499)
!6501 = !DILocation(line: 345, column: 2, scope: !6475)
!6502 = !DILocation(line: 331, column: 37, scope: !6469)
!6503 = !DILocation(line: 331, column: 2, scope: !6469)
!6504 = distinct !{!6504, !6473, !6505}
!6505 = !DILocation(line: 345, column: 2, scope: !6466)
!6506 = !DILocation(line: 346, column: 2, scope: !6441)
!6507 = !DILocation(line: 347, column: 1, scope: !6441)
!6508 = distinct !DISubprogram(name: "usbduxfast_submit_urb", scope: !3, file: !3, line: 301, type: !3994, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!6509 = !DILocalVariable(name: "dev", arg: 1, scope: !6508, file: !3, line: 301, type: !229)
!6510 = !DILocation(line: 301, column: 56, scope: !6508)
!6511 = !DILocalVariable(name: "usb", scope: !6508, file: !3, line: 303, type: !4228)
!6512 = !DILocation(line: 303, column: 21, scope: !6508)
!6513 = !DILocation(line: 303, column: 45, scope: !6508)
!6514 = !DILocation(line: 303, column: 27, scope: !6508)
!6515 = !DILocalVariable(name: "devpriv", scope: !6508, file: !3, line: 304, type: !4204)
!6516 = !DILocation(line: 304, column: 29, scope: !6508)
!6517 = !DILocation(line: 304, column: 39, scope: !6508)
!6518 = !DILocation(line: 304, column: 44, scope: !6508)
!6519 = !DILocalVariable(name: "ret", scope: !6508, file: !3, line: 305, type: !228)
!6520 = !DILocation(line: 305, column: 6, scope: !6508)
!6521 = !DILocation(line: 307, column: 20, scope: !6508)
!6522 = !DILocation(line: 307, column: 29, scope: !6508)
!6523 = !DILocation(line: 307, column: 34, scope: !6508)
!6524 = !DILocation(line: 307, column: 39, scope: !6508)
!6525 = !DILocation(line: 308, column: 6, scope: !6508)
!6526 = !DILocation(line: 308, column: 15, scope: !6508)
!6527 = !DILocation(line: 309, column: 31, scope: !6508)
!6528 = !DILocation(line: 307, column: 2, scope: !6508)
!6529 = !DILocation(line: 311, column: 23, scope: !6508)
!6530 = !DILocation(line: 311, column: 32, scope: !6508)
!6531 = !DILocation(line: 311, column: 8, scope: !6508)
!6532 = !DILocation(line: 311, column: 6, scope: !6508)
!6533 = !DILocation(line: 312, column: 6, scope: !6534)
!6534 = distinct !DILexicalBlock(scope: !6508, file: !3, line: 312, column: 6)
!6535 = !DILocation(line: 312, column: 6, scope: !6508)
!6536 = !DILocation(line: 313, column: 3, scope: !6537)
!6537 = distinct !DILexicalBlock(scope: !6534, file: !3, line: 312, column: 11)
!6538 = !DILocation(line: 314, column: 10, scope: !6537)
!6539 = !DILocation(line: 314, column: 3, scope: !6537)
!6540 = !DILocation(line: 316, column: 2, scope: !6508)
!6541 = !DILocation(line: 317, column: 1, scope: !6508)
!6542 = distinct !DISubprogram(name: "usbduxfast_ai_inttrig", scope: !3, file: !3, line: 434, type: !3920, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!6543 = !DILocalVariable(name: "dev", arg: 1, scope: !6542, file: !3, line: 434, type: !229)
!6544 = !DILocation(line: 434, column: 56, scope: !6542)
!6545 = !DILocalVariable(name: "s", arg: 2, scope: !6542, file: !3, line: 435, type: !3852)
!6546 = !DILocation(line: 435, column: 31, scope: !6542)
!6547 = !DILocalVariable(name: "trig_num", arg: 3, scope: !6542, file: !3, line: 436, type: !7)
!6548 = !DILocation(line: 436, column: 19, scope: !6542)
!6549 = !DILocalVariable(name: "devpriv", scope: !6542, file: !3, line: 438, type: !4204)
!6550 = !DILocation(line: 438, column: 29, scope: !6542)
!6551 = !DILocation(line: 438, column: 39, scope: !6542)
!6552 = !DILocation(line: 438, column: 44, scope: !6542)
!6553 = !DILocalVariable(name: "cmd", scope: !6542, file: !3, line: 439, type: !3972)
!6554 = !DILocation(line: 439, column: 21, scope: !6542)
!6555 = !DILocation(line: 439, column: 28, scope: !6542)
!6556 = !DILocation(line: 439, column: 31, scope: !6542)
!6557 = !DILocation(line: 439, column: 38, scope: !6542)
!6558 = !DILocalVariable(name: "ret", scope: !6542, file: !3, line: 440, type: !228)
!6559 = !DILocation(line: 440, column: 6, scope: !6542)
!6560 = !DILocation(line: 442, column: 6, scope: !6561)
!6561 = distinct !DILexicalBlock(scope: !6542, file: !3, line: 442, column: 6)
!6562 = !DILocation(line: 442, column: 18, scope: !6561)
!6563 = !DILocation(line: 442, column: 23, scope: !6561)
!6564 = !DILocation(line: 442, column: 15, scope: !6561)
!6565 = !DILocation(line: 442, column: 6, scope: !6542)
!6566 = !DILocation(line: 443, column: 3, scope: !6561)
!6567 = !DILocation(line: 445, column: 14, scope: !6542)
!6568 = !DILocation(line: 445, column: 23, scope: !6542)
!6569 = !DILocation(line: 445, column: 2, scope: !6542)
!6570 = !DILocation(line: 447, column: 7, scope: !6571)
!6571 = distinct !DILexicalBlock(scope: !6542, file: !3, line: 447, column: 6)
!6572 = !DILocation(line: 447, column: 16, scope: !6571)
!6573 = !DILocation(line: 447, column: 6, scope: !6542)
!6574 = !DILocation(line: 448, column: 3, scope: !6575)
!6575 = distinct !DILexicalBlock(scope: !6571, file: !3, line: 447, column: 32)
!6576 = !DILocation(line: 448, column: 12, scope: !6575)
!6577 = !DILocation(line: 448, column: 27, scope: !6575)
!6578 = !DILocation(line: 449, column: 31, scope: !6575)
!6579 = !DILocation(line: 449, column: 9, scope: !6575)
!6580 = !DILocation(line: 449, column: 7, scope: !6575)
!6581 = !DILocation(line: 450, column: 7, scope: !6582)
!6582 = distinct !DILexicalBlock(scope: !6575, file: !3, line: 450, column: 7)
!6583 = !DILocation(line: 450, column: 11, scope: !6582)
!6584 = !DILocation(line: 450, column: 7, scope: !6575)
!6585 = !DILocation(line: 451, column: 4, scope: !6586)
!6586 = distinct !DILexicalBlock(scope: !6582, file: !3, line: 450, column: 16)
!6587 = !DILocation(line: 452, column: 4, scope: !6586)
!6588 = !DILocation(line: 452, column: 13, scope: !6586)
!6589 = !DILocation(line: 452, column: 28, scope: !6586)
!6590 = !DILocation(line: 453, column: 18, scope: !6586)
!6591 = !DILocation(line: 453, column: 27, scope: !6586)
!6592 = !DILocation(line: 453, column: 4, scope: !6586)
!6593 = !DILocation(line: 454, column: 11, scope: !6586)
!6594 = !DILocation(line: 454, column: 4, scope: !6586)
!6595 = !DILocation(line: 456, column: 3, scope: !6575)
!6596 = !DILocation(line: 456, column: 6, scope: !6575)
!6597 = !DILocation(line: 456, column: 13, scope: !6575)
!6598 = !DILocation(line: 456, column: 21, scope: !6575)
!6599 = !DILocation(line: 457, column: 2, scope: !6575)
!6600 = !DILocation(line: 458, column: 3, scope: !6601)
!6601 = distinct !DILexicalBlock(scope: !6571, file: !3, line: 457, column: 9)
!6602 = !DILocation(line: 460, column: 16, scope: !6542)
!6603 = !DILocation(line: 460, column: 25, scope: !6542)
!6604 = !DILocation(line: 460, column: 2, scope: !6542)
!6605 = !DILocation(line: 461, column: 2, scope: !6542)
!6606 = !DILocation(line: 462, column: 1, scope: !6542)
!6607 = distinct !DISubprogram(name: "usb_fill_bulk_urb", scope: !101, file: !101, line: 1647, type: !6608, scopeLine: 1654, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!6608 = !DISubroutineType(types: !6609)
!6609 = !{null, !4208, !4228, !7, !168, !228, !4470, !168}
!6610 = !DILocalVariable(name: "urb", arg: 1, scope: !6607, file: !101, line: 1647, type: !4208)
!6611 = !DILocation(line: 1647, column: 50, scope: !6607)
!6612 = !DILocalVariable(name: "dev", arg: 2, scope: !6607, file: !101, line: 1648, type: !4228)
!6613 = !DILocation(line: 1648, column: 29, scope: !6607)
!6614 = !DILocalVariable(name: "pipe", arg: 3, scope: !6607, file: !101, line: 1649, type: !7)
!6615 = !DILocation(line: 1649, column: 23, scope: !6607)
!6616 = !DILocalVariable(name: "transfer_buffer", arg: 4, scope: !6607, file: !101, line: 1650, type: !168)
!6617 = !DILocation(line: 1650, column: 16, scope: !6607)
!6618 = !DILocalVariable(name: "buffer_length", arg: 5, scope: !6607, file: !101, line: 1651, type: !228)
!6619 = !DILocation(line: 1651, column: 14, scope: !6607)
!6620 = !DILocalVariable(name: "complete_fn", arg: 6, scope: !6607, file: !101, line: 1652, type: !4470)
!6621 = !DILocation(line: 1652, column: 25, scope: !6607)
!6622 = !DILocalVariable(name: "context", arg: 7, scope: !6607, file: !101, line: 1653, type: !168)
!6623 = !DILocation(line: 1653, column: 16, scope: !6607)
!6624 = !DILocation(line: 1655, column: 13, scope: !6607)
!6625 = !DILocation(line: 1655, column: 2, scope: !6607)
!6626 = !DILocation(line: 1655, column: 7, scope: !6607)
!6627 = !DILocation(line: 1655, column: 11, scope: !6607)
!6628 = !DILocation(line: 1656, column: 14, scope: !6607)
!6629 = !DILocation(line: 1656, column: 2, scope: !6607)
!6630 = !DILocation(line: 1656, column: 7, scope: !6607)
!6631 = !DILocation(line: 1656, column: 12, scope: !6607)
!6632 = !DILocation(line: 1657, column: 25, scope: !6607)
!6633 = !DILocation(line: 1657, column: 2, scope: !6607)
!6634 = !DILocation(line: 1657, column: 7, scope: !6607)
!6635 = !DILocation(line: 1657, column: 23, scope: !6607)
!6636 = !DILocation(line: 1658, column: 32, scope: !6607)
!6637 = !DILocation(line: 1658, column: 2, scope: !6607)
!6638 = !DILocation(line: 1658, column: 7, scope: !6607)
!6639 = !DILocation(line: 1658, column: 30, scope: !6607)
!6640 = !DILocation(line: 1659, column: 18, scope: !6607)
!6641 = !DILocation(line: 1659, column: 2, scope: !6607)
!6642 = !DILocation(line: 1659, column: 7, scope: !6607)
!6643 = !DILocation(line: 1659, column: 16, scope: !6607)
!6644 = !DILocation(line: 1660, column: 17, scope: !6607)
!6645 = !DILocation(line: 1660, column: 2, scope: !6607)
!6646 = !DILocation(line: 1660, column: 7, scope: !6607)
!6647 = !DILocation(line: 1660, column: 15, scope: !6607)
!6648 = !DILocation(line: 1661, column: 1, scope: !6607)
!6649 = distinct !DISubprogram(name: "usbduxfast_ai_interrupt", scope: !3, file: !3, line: 258, type: !4472, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!6650 = !DILocalVariable(name: "urb", arg: 1, scope: !6649, file: !3, line: 258, type: !4208)
!6651 = !DILocation(line: 258, column: 49, scope: !6649)
!6652 = !DILocalVariable(name: "dev", scope: !6649, file: !3, line: 260, type: !229)
!6653 = !DILocation(line: 260, column: 24, scope: !6649)
!6654 = !DILocation(line: 260, column: 30, scope: !6649)
!6655 = !DILocation(line: 260, column: 35, scope: !6649)
!6656 = !DILocalVariable(name: "s", scope: !6649, file: !3, line: 261, type: !3852)
!6657 = !DILocation(line: 261, column: 27, scope: !6649)
!6658 = !DILocation(line: 261, column: 31, scope: !6649)
!6659 = !DILocation(line: 261, column: 36, scope: !6649)
!6660 = !DILocalVariable(name: "async", scope: !6649, file: !3, line: 262, type: !3863)
!6661 = !DILocation(line: 262, column: 23, scope: !6649)
!6662 = !DILocation(line: 262, column: 31, scope: !6649)
!6663 = !DILocation(line: 262, column: 34, scope: !6649)
!6664 = !DILocalVariable(name: "devpriv", scope: !6649, file: !3, line: 263, type: !4204)
!6665 = !DILocation(line: 263, column: 29, scope: !6649)
!6666 = !DILocation(line: 263, column: 39, scope: !6649)
!6667 = !DILocation(line: 263, column: 44, scope: !6649)
!6668 = !DILocation(line: 266, column: 7, scope: !6669)
!6669 = distinct !DILexicalBlock(scope: !6649, file: !3, line: 266, column: 6)
!6670 = !DILocation(line: 266, column: 16, scope: !6669)
!6671 = !DILocation(line: 266, column: 6, scope: !6649)
!6672 = !DILocation(line: 267, column: 3, scope: !6669)
!6673 = !DILocation(line: 269, column: 10, scope: !6649)
!6674 = !DILocation(line: 269, column: 15, scope: !6649)
!6675 = !DILocation(line: 269, column: 2, scope: !6649)
!6676 = !DILocation(line: 271, column: 28, scope: !6677)
!6677 = distinct !DILexicalBlock(scope: !6649, file: !3, line: 269, column: 23)
!6678 = !DILocation(line: 271, column: 33, scope: !6677)
!6679 = !DILocation(line: 271, column: 36, scope: !6677)
!6680 = !DILocation(line: 271, column: 3, scope: !6677)
!6681 = !DILocation(line: 272, column: 3, scope: !6677)
!6682 = !DILocation(line: 279, column: 3, scope: !6677)
!6683 = !DILocation(line: 279, column: 10, scope: !6677)
!6684 = !DILocation(line: 279, column: 17, scope: !6677)
!6685 = !DILocation(line: 280, column: 3, scope: !6677)
!6686 = !DILocation(line: 284, column: 3, scope: !6677)
!6687 = !DILocation(line: 287, column: 3, scope: !6677)
!6688 = !DILocation(line: 287, column: 10, scope: !6677)
!6689 = !DILocation(line: 287, column: 17, scope: !6677)
!6690 = !DILocation(line: 288, column: 3, scope: !6677)
!6691 = !DILocation(line: 295, column: 6, scope: !6692)
!6692 = distinct !DILexicalBlock(scope: !6649, file: !3, line: 295, column: 6)
!6693 = !DILocation(line: 295, column: 13, scope: !6692)
!6694 = !DILocation(line: 295, column: 20, scope: !6692)
!6695 = !DILocation(line: 295, column: 6, scope: !6649)
!6696 = !DILocation(line: 296, column: 22, scope: !6692)
!6697 = !DILocation(line: 296, column: 3, scope: !6692)
!6698 = !DILocation(line: 298, column: 15, scope: !6649)
!6699 = !DILocation(line: 298, column: 20, scope: !6649)
!6700 = !DILocation(line: 298, column: 2, scope: !6649)
!6701 = !DILocation(line: 299, column: 1, scope: !6649)
!6702 = distinct !DISubprogram(name: "usbduxfast_ai_handle_urb", scope: !3, file: !3, line: 223, type: !6703, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!6703 = !DISubroutineType(types: !6704)
!6704 = !{null, !229, !3852, !4208}
!6705 = !DILocalVariable(name: "dev", arg: 1, scope: !6702, file: !3, line: 223, type: !229)
!6706 = !DILocation(line: 223, column: 60, scope: !6702)
!6707 = !DILocalVariable(name: "s", arg: 2, scope: !6702, file: !3, line: 224, type: !3852)
!6708 = !DILocation(line: 224, column: 35, scope: !6702)
!6709 = !DILocalVariable(name: "urb", arg: 3, scope: !6702, file: !3, line: 225, type: !4208)
!6710 = !DILocation(line: 225, column: 22, scope: !6702)
!6711 = !DILocalVariable(name: "devpriv", scope: !6702, file: !3, line: 227, type: !4204)
!6712 = !DILocation(line: 227, column: 29, scope: !6702)
!6713 = !DILocation(line: 227, column: 39, scope: !6702)
!6714 = !DILocation(line: 227, column: 44, scope: !6702)
!6715 = !DILocalVariable(name: "async", scope: !6702, file: !3, line: 228, type: !3863)
!6716 = !DILocation(line: 228, column: 23, scope: !6702)
!6717 = !DILocation(line: 228, column: 31, scope: !6702)
!6718 = !DILocation(line: 228, column: 34, scope: !6702)
!6719 = !DILocalVariable(name: "cmd", scope: !6702, file: !3, line: 229, type: !3972)
!6720 = !DILocation(line: 229, column: 21, scope: !6702)
!6721 = !DILocation(line: 229, column: 28, scope: !6702)
!6722 = !DILocation(line: 229, column: 35, scope: !6702)
!6723 = !DILocalVariable(name: "ret", scope: !6702, file: !3, line: 230, type: !228)
!6724 = !DILocation(line: 230, column: 6, scope: !6702)
!6725 = !DILocation(line: 232, column: 6, scope: !6726)
!6726 = distinct !DILexicalBlock(scope: !6702, file: !3, line: 232, column: 6)
!6727 = !DILocation(line: 232, column: 15, scope: !6726)
!6728 = !DILocation(line: 232, column: 6, scope: !6702)
!6729 = !DILocation(line: 233, column: 3, scope: !6730)
!6730 = distinct !DILexicalBlock(scope: !6726, file: !3, line: 232, column: 23)
!6731 = !DILocation(line: 233, column: 12, scope: !6730)
!6732 = !DILocation(line: 233, column: 18, scope: !6730)
!6733 = !DILocation(line: 234, column: 2, scope: !6730)
!6734 = !DILocalVariable(name: "nsamples", scope: !6735, file: !3, line: 235, type: !7)
!6735 = distinct !DILexicalBlock(scope: !6726, file: !3, line: 234, column: 9)
!6736 = !DILocation(line: 235, column: 16, scope: !6735)
!6737 = !DILocation(line: 237, column: 38, scope: !6735)
!6738 = !DILocation(line: 237, column: 41, scope: !6735)
!6739 = !DILocation(line: 237, column: 46, scope: !6735)
!6740 = !DILocation(line: 237, column: 14, scope: !6735)
!6741 = !DILocation(line: 237, column: 12, scope: !6735)
!6742 = !DILocation(line: 238, column: 35, scope: !6735)
!6743 = !DILocation(line: 238, column: 38, scope: !6735)
!6744 = !DILocation(line: 238, column: 14, scope: !6735)
!6745 = !DILocation(line: 238, column: 12, scope: !6735)
!6746 = !DILocation(line: 239, column: 28, scope: !6735)
!6747 = !DILocation(line: 239, column: 31, scope: !6735)
!6748 = !DILocation(line: 239, column: 36, scope: !6735)
!6749 = !DILocation(line: 239, column: 53, scope: !6735)
!6750 = !DILocation(line: 239, column: 3, scope: !6735)
!6751 = !DILocation(line: 241, column: 7, scope: !6752)
!6752 = distinct !DILexicalBlock(scope: !6735, file: !3, line: 241, column: 7)
!6753 = !DILocation(line: 241, column: 12, scope: !6752)
!6754 = !DILocation(line: 241, column: 21, scope: !6752)
!6755 = !DILocation(line: 241, column: 35, scope: !6752)
!6756 = !DILocation(line: 242, column: 7, scope: !6752)
!6757 = !DILocation(line: 242, column: 14, scope: !6752)
!6758 = !DILocation(line: 242, column: 28, scope: !6752)
!6759 = !DILocation(line: 242, column: 33, scope: !6752)
!6760 = !DILocation(line: 242, column: 25, scope: !6752)
!6761 = !DILocation(line: 241, column: 7, scope: !6735)
!6762 = !DILocation(line: 243, column: 4, scope: !6752)
!6763 = !DILocation(line: 243, column: 11, scope: !6752)
!6764 = !DILocation(line: 243, column: 18, scope: !6752)
!6765 = !DILocation(line: 247, column: 8, scope: !6766)
!6766 = distinct !DILexicalBlock(scope: !6702, file: !3, line: 247, column: 6)
!6767 = !DILocation(line: 247, column: 15, scope: !6766)
!6768 = !DILocation(line: 247, column: 22, scope: !6766)
!6769 = !DILocation(line: 247, column: 6, scope: !6702)
!6770 = !DILocation(line: 248, column: 32, scope: !6771)
!6771 = distinct !DILexicalBlock(scope: !6766, file: !3, line: 247, column: 48)
!6772 = !DILocation(line: 248, column: 14, scope: !6771)
!6773 = !DILocation(line: 248, column: 3, scope: !6771)
!6774 = !DILocation(line: 248, column: 8, scope: !6771)
!6775 = !DILocation(line: 248, column: 12, scope: !6771)
!6776 = !DILocation(line: 249, column: 3, scope: !6771)
!6777 = !DILocation(line: 249, column: 8, scope: !6771)
!6778 = !DILocation(line: 249, column: 15, scope: !6771)
!6779 = !DILocation(line: 250, column: 24, scope: !6771)
!6780 = !DILocation(line: 250, column: 9, scope: !6771)
!6781 = !DILocation(line: 250, column: 7, scope: !6771)
!6782 = !DILocation(line: 251, column: 7, scope: !6783)
!6783 = distinct !DILexicalBlock(scope: !6771, file: !3, line: 251, column: 7)
!6784 = !DILocation(line: 251, column: 11, scope: !6783)
!6785 = !DILocation(line: 251, column: 7, scope: !6771)
!6786 = !DILocation(line: 252, column: 4, scope: !6787)
!6787 = distinct !DILexicalBlock(scope: !6783, file: !3, line: 251, column: 16)
!6788 = !DILocation(line: 253, column: 4, scope: !6787)
!6789 = !DILocation(line: 253, column: 11, scope: !6787)
!6790 = !DILocation(line: 253, column: 18, scope: !6787)
!6791 = !DILocation(line: 254, column: 3, scope: !6787)
!6792 = !DILocation(line: 255, column: 2, scope: !6771)
!6793 = !DILocation(line: 256, column: 1, scope: !6702)
!6794 = distinct !DISubprogram(name: "usbduxfast_ai_stop", scope: !3, file: !3, line: 195, type: !6308, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!6795 = !DILocalVariable(name: "dev", arg: 1, scope: !6794, file: !3, line: 195, type: !229)
!6796 = !DILocation(line: 195, column: 53, scope: !6794)
!6797 = !DILocalVariable(name: "do_unlink", arg: 2, scope: !6794, file: !3, line: 195, type: !228)
!6798 = !DILocation(line: 195, column: 62, scope: !6794)
!6799 = !DILocalVariable(name: "devpriv", scope: !6794, file: !3, line: 197, type: !4204)
!6800 = !DILocation(line: 197, column: 29, scope: !6794)
!6801 = !DILocation(line: 197, column: 39, scope: !6794)
!6802 = !DILocation(line: 197, column: 44, scope: !6794)
!6803 = !DILocation(line: 200, column: 2, scope: !6794)
!6804 = !DILocation(line: 200, column: 11, scope: !6794)
!6805 = !DILocation(line: 200, column: 26, scope: !6794)
!6806 = !DILocation(line: 202, column: 6, scope: !6807)
!6807 = distinct !DILexicalBlock(scope: !6794, file: !3, line: 202, column: 6)
!6808 = !DILocation(line: 202, column: 16, scope: !6807)
!6809 = !DILocation(line: 202, column: 19, scope: !6807)
!6810 = !DILocation(line: 202, column: 28, scope: !6807)
!6811 = !DILocation(line: 202, column: 6, scope: !6794)
!6812 = !DILocation(line: 204, column: 16, scope: !6813)
!6813 = distinct !DILexicalBlock(scope: !6807, file: !3, line: 202, column: 33)
!6814 = !DILocation(line: 204, column: 25, scope: !6813)
!6815 = !DILocation(line: 204, column: 3, scope: !6813)
!6816 = !DILocation(line: 205, column: 2, scope: !6813)
!6817 = !DILocation(line: 207, column: 2, scope: !6794)
!6818 = distinct !DISubprogram(name: "comedi_bytes_to_samples", scope: !157, file: !157, line: 825, type: !6819, scopeLine: 827, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!6819 = !DISubroutineType(types: !6820)
!6820 = !{!7, !3852, !7}
!6821 = !DILocalVariable(name: "s", arg: 1, scope: !6818, file: !157, line: 825, type: !3852)
!6822 = !DILocation(line: 825, column: 77, scope: !6818)
!6823 = !DILocalVariable(name: "nbytes", arg: 2, scope: !6818, file: !157, line: 826, type: !7)
!6824 = !DILocation(line: 826, column: 23, scope: !6818)
!6825 = !DILocation(line: 828, column: 9, scope: !6818)
!6826 = !DILocation(line: 828, column: 39, scope: !6818)
!6827 = !DILocation(line: 828, column: 19, scope: !6818)
!6828 = !DILocation(line: 828, column: 16, scope: !6818)
!6829 = !DILocation(line: 828, column: 2, scope: !6818)
!6830 = distinct !DISubprogram(name: "comedi_sample_shift", scope: !157, file: !157, line: 813, type: !6831, scopeLine: 814, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!6831 = !DISubroutineType(types: !6832)
!6832 = !{!7, !3852}
!6833 = !DILocalVariable(name: "s", arg: 1, scope: !6830, file: !157, line: 813, type: !3852)
!6834 = !DILocation(line: 813, column: 73, scope: !6830)
!6835 = !DILocation(line: 815, column: 9, scope: !6830)
!6836 = !DILocation(line: 815, column: 12, scope: !6830)
!6837 = !DILocation(line: 815, column: 25, scope: !6830)
!6838 = !DILocation(line: 815, column: 2, scope: !6830)
!6839 = distinct !DISubprogram(name: "usbduxfast_usb_probe", scope: !3, file: !3, line: 1014, type: !4037, scopeLine: 1016, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !275)
!6840 = !DILocalVariable(name: "intf", arg: 1, scope: !6839, file: !3, line: 1014, type: !4039)
!6841 = !DILocation(line: 1014, column: 55, scope: !6839)
!6842 = !DILocalVariable(name: "id", arg: 2, scope: !6839, file: !3, line: 1015, type: !4130)
!6843 = !DILocation(line: 1015, column: 33, scope: !6839)
!6844 = !DILocation(line: 1017, column: 32, scope: !6839)
!6845 = !DILocation(line: 1017, column: 9, scope: !6839)
!6846 = !DILocation(line: 1017, column: 2, scope: !6839)
