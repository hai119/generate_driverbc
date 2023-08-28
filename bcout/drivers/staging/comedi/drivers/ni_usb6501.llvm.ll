; ModuleID = '../bcout/drivers/staging/comedi/drivers/ni_usb6501.llvm.bc'
source_filename = "drivers/staging/comedi/drivers/ni_usb6501.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_ni6501_driver_init6:\09\09\09"
module asm ".long\09ni6501_driver_init - .\09\09\09"
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
%struct.ni6501_private = type { %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor*, %struct.mutex, i8*, i8* }
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

@__UNIQUE_ID___addressable_ni6501_driver_init239 = internal global i8* bitcast (i32 ()* @ni6501_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@ni6501_driver = internal global %struct.comedi_driver { %struct.comedi_driver* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), %struct.module* null, i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* null, void (%struct.comedi_device*)* @ni6501_detach, i32 (%struct.comedi_device*, i64)* @ni6501_auto_attach, i32 0, i8** null, i32 0 }, align 8, !dbg !207
@ni6501_usb_driver = internal global %struct.usb_driver { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 (%struct.usb_interface*, %struct.usb_device_id*)* @ni6501_usb_probe, void (%struct.usb_interface*)* @comedi_usb_auto_unconfig, i32 (%struct.usb_interface*, i32, i8*)* null, i32 (%struct.usb_interface*, i32)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, %struct.usb_device_id* getelementptr inbounds ([2 x %struct.usb_device_id], [2 x %struct.usb_device_id]* @ni6501_usb_table, i32 0, i32 0), %struct.attribute_group** null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, align 8, !dbg !4053
@__exitcall_ni6501_driver_exit = internal global void ()* @ni6501_driver_exit, section ".exitcall.exit", align 8, !dbg !178
@__UNIQUE_ID_author240 = internal constant [30 x i8] c"ni_usb6501.author=Luca Ellero\00", section ".modinfo", align 1, !dbg !185
@__UNIQUE_ID_description241 = internal constant [71 x i8] c"ni_usb6501.description=Comedi driver for National Instruments USB-6501\00", section ".modinfo", align 1, !dbg !192
@__UNIQUE_ID_file242 = internal constant [58 x i8] c"ni_usb6501.file=drivers/staging/comedi/drivers/ni_usb6501\00", section ".modinfo", align 1, !dbg !197
@__UNIQUE_ID_license243 = internal constant [23 x i8] c"ni_usb6501.license=GPL\00", section ".modinfo", align 1, !dbg !202
@.str = private unnamed_addr constant [7 x i8] c"ni6501\00", align 1
@ni6501_auto_attach.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4023
@.str.1 = private unnamed_addr constant [14 x i8] c"&devpriv->mut\00", align 1
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Wrong number of endpoints\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@READ_PORT_REQUEST = internal constant [16 x i8] c"\00\01\00\10\00\0C\01\0E\02\10\00\00\00\03\00\00", align 16, !dbg !4026
@WRITE_PORT_REQUEST = internal constant [20 x i8] c"\00\01\00\14\00\10\01\0F\02\10\00\00\00\03\00\00\03\00\00\00", align 16, !dbg !4030
@SET_PORT_DIR_REQUEST = internal constant [24 x i8] c"\00\01\00\18\00\14\01\12\02\10\00\00\00\05\00\00\00\00\05\00\00\00\00\00", align 16, !dbg !4033
@READ_PORT_RESPONSE = internal constant [16 x i8] c"\00\01\00\10\00\0C\01\00\00\00\00\02\00\03\00\00", align 16, !dbg !4038
@GENERIC_RESPONSE = internal constant [12 x i8] c"\00\01\00\0C\00\08\01\00\00\00\00\02", align 1, !dbg !4040
@START_COUNTER_REQUEST = internal constant [12 x i8] c"\00\01\00\0C\00\08\01\09\02 \00\00", align 1, !dbg !4043
@STOP_COUNTER_REQUEST = internal constant [12 x i8] c"\00\01\00\0C\00\08\01\0C\02 \00\00", align 1, !dbg !4045
@READ_COUNTER_REQUEST = internal constant [12 x i8] c"\00\01\00\0C\00\08\01\0E\02 \00\00", align 1, !dbg !4047
@WRITE_COUNTER_REQUEST = internal constant [16 x i8] c"\00\01\00\10\00\0C\01\0F\02 \00\00\00\00\00\00", align 16, !dbg !4049
@READ_COUNTER_RESPONSE = internal constant [16 x i8] c"\00\01\00\10\00\0C\01\00\00\00\00\02\00\00\00\00", align 16, !dbg !4051
@ni6501_usb_table = internal constant [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 14627, i16 29066, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 0 }, %struct.usb_device_id zeroinitializer], align 16, !dbg !4204
@llvm.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_ni6501_driver_init239 to i8*), i8* bitcast (void ()* @ni6501_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_ni6501_driver_exit to i8*), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__UNIQUE_ID_author240, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @__UNIQUE_ID_description241, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__UNIQUE_ID_file242, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__UNIQUE_ID_license243, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @ni6501_driver_init() #0 section ".init.text" !dbg !4212 {
entry:
  %call = call i32 @comedi_usb_driver_register(%struct.comedi_driver* @ni6501_driver, %struct.usb_driver* @ni6501_usb_driver) #9, !dbg !4215
  ret i32 %call, !dbg !4215
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @ni6501_driver_exit() #0 section ".exit.text" !dbg !4216 {
entry:
  call void @comedi_usb_driver_unregister(%struct.comedi_driver* @ni6501_driver, %struct.usb_driver* @ni6501_usb_driver) #9, !dbg !4217
  ret void, !dbg !4217
}

; Function Attrs: noredzone
declare dso_local void @comedi_usb_driver_unregister(%struct.comedi_driver*, %struct.usb_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_usb_driver_register(%struct.comedi_driver*, %struct.usb_driver*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ni6501_detach(%struct.comedi_device* %dev) #2 !dbg !4218 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %intf = alloca %struct.usb_interface*, align 8
  %devpriv = alloca %struct.ni6501_private*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4219, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf, metadata !4221, metadata !DIExpression()), !dbg !4222
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4223
  %call = call %struct.usb_interface* @comedi_to_usb_interface(%struct.comedi_device* %0) #9, !dbg !4224
  store %struct.usb_interface* %call, %struct.usb_interface** %intf, align 8, !dbg !4222
  call void @llvm.dbg.declare(metadata %struct.ni6501_private** %devpriv, metadata !4225, metadata !DIExpression()), !dbg !4236
  %1 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4237
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %1, i32 0, i32 3, !dbg !4238
  %2 = load i8*, i8** %private, align 8, !dbg !4238
  %3 = bitcast i8* %2 to %struct.ni6501_private*, !dbg !4237
  store %struct.ni6501_private* %3, %struct.ni6501_private** %devpriv, align 8, !dbg !4236
  %4 = load %struct.ni6501_private*, %struct.ni6501_private** %devpriv, align 8, !dbg !4239
  %tobool = icmp ne %struct.ni6501_private* %4, null, !dbg !4239
  br i1 %tobool, label %if.end, label %if.then, !dbg !4241

if.then:                                          ; preds = %entry
  br label %return, !dbg !4242

if.end:                                           ; preds = %entry
  %5 = load %struct.ni6501_private*, %struct.ni6501_private** %devpriv, align 8, !dbg !4243
  %mut = getelementptr inbounds %struct.ni6501_private, %struct.ni6501_private* %5, i32 0, i32 2, !dbg !4244
  call void @mutex_destroy(%struct.mutex* %mut) #9, !dbg !4245
  %6 = load %struct.usb_interface*, %struct.usb_interface** %intf, align 8, !dbg !4246
  call void @usb_set_intfdata(%struct.usb_interface* %6, i8* null) #9, !dbg !4247
  %7 = load %struct.ni6501_private*, %struct.ni6501_private** %devpriv, align 8, !dbg !4248
  %usb_rx_buf = getelementptr inbounds %struct.ni6501_private, %struct.ni6501_private* %7, i32 0, i32 3, !dbg !4249
  %8 = load i8*, i8** %usb_rx_buf, align 8, !dbg !4249
  call void @kfree(i8* %8) #9, !dbg !4250
  %9 = load %struct.ni6501_private*, %struct.ni6501_private** %devpriv, align 8, !dbg !4251
  %usb_tx_buf = getelementptr inbounds %struct.ni6501_private, %struct.ni6501_private* %9, i32 0, i32 4, !dbg !4252
  %10 = load i8*, i8** %usb_tx_buf, align 8, !dbg !4252
  call void @kfree(i8* %10) #9, !dbg !4253
  br label %return, !dbg !4254

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4254
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ni6501_auto_attach(%struct.comedi_device* %dev, i64 %context) #2 !dbg !4025 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %context.addr = alloca i64, align 8
  %intf = alloca %struct.usb_interface*, align 8
  %devpriv = alloca %struct.ni6501_private*, align 8
  %s = alloca %struct.comedi_subdevice*, align 8
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4255, metadata !DIExpression()), !dbg !4256
  store i64 %context, i64* %context.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %context.addr, metadata !4257, metadata !DIExpression()), !dbg !4258
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf, metadata !4259, metadata !DIExpression()), !dbg !4260
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4261
  %call = call %struct.usb_interface* @comedi_to_usb_interface(%struct.comedi_device* %0) #9, !dbg !4262
  store %struct.usb_interface* %call, %struct.usb_interface** %intf, align 8, !dbg !4260
  call void @llvm.dbg.declare(metadata %struct.ni6501_private** %devpriv, metadata !4263, metadata !DIExpression()), !dbg !4264
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s, metadata !4265, metadata !DIExpression()), !dbg !4266
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4267, metadata !DIExpression()), !dbg !4268
  %1 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4269
  %call1 = call i8* @comedi_alloc_devpriv(%struct.comedi_device* %1, i64 56) #9, !dbg !4270
  %2 = bitcast i8* %call1 to %struct.ni6501_private*, !dbg !4270
  store %struct.ni6501_private* %2, %struct.ni6501_private** %devpriv, align 8, !dbg !4271
  %3 = load %struct.ni6501_private*, %struct.ni6501_private** %devpriv, align 8, !dbg !4272
  %tobool = icmp ne %struct.ni6501_private* %3, null, !dbg !4272
  br i1 %tobool, label %if.end, label %if.then, !dbg !4274

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !4275
  br label %return, !dbg !4275

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !4276

do.body:                                          ; preds = %if.end
  %4 = load %struct.ni6501_private*, %struct.ni6501_private** %devpriv, align 8, !dbg !4277
  %mut = getelementptr inbounds %struct.ni6501_private, %struct.ni6501_private* %4, i32 0, i32 2, !dbg !4277
  call void @__mutex_init(%struct.mutex* %mut, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct.lock_class_key* @ni6501_auto_attach.__key) #9, !dbg !4277
  br label %do.end, !dbg !4277

do.end:                                           ; preds = %do.body
  %5 = load %struct.usb_interface*, %struct.usb_interface** %intf, align 8, !dbg !4279
  %6 = load %struct.ni6501_private*, %struct.ni6501_private** %devpriv, align 8, !dbg !4280
  %7 = bitcast %struct.ni6501_private* %6 to i8*, !dbg !4280
  call void @usb_set_intfdata(%struct.usb_interface* %5, i8* %7) #9, !dbg !4281
  %8 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4282
  %call2 = call i32 @ni6501_find_endpoints(%struct.comedi_device* %8) #9, !dbg !4283
  store i32 %call2, i32* %ret, align 4, !dbg !4284
  %9 = load i32, i32* %ret, align 4, !dbg !4285
  %tobool3 = icmp ne i32 %9, 0, !dbg !4285
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4287

if.then4:                                         ; preds = %do.end
  %10 = load i32, i32* %ret, align 4, !dbg !4288
  store i32 %10, i32* %retval, align 4, !dbg !4289
  br label %return, !dbg !4289

if.end5:                                          ; preds = %do.end
  %11 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4290
  %call6 = call i32 @ni6501_alloc_usb_buffers(%struct.comedi_device* %11) #9, !dbg !4291
  store i32 %call6, i32* %ret, align 4, !dbg !4292
  %12 = load i32, i32* %ret, align 4, !dbg !4293
  %tobool7 = icmp ne i32 %12, 0, !dbg !4293
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !4295

if.then8:                                         ; preds = %if.end5
  %13 = load i32, i32* %ret, align 4, !dbg !4296
  store i32 %13, i32* %retval, align 4, !dbg !4297
  br label %return, !dbg !4297

if.end9:                                          ; preds = %if.end5
  %14 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4298
  %call10 = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %14, i32 2) #9, !dbg !4299
  store i32 %call10, i32* %ret, align 4, !dbg !4300
  %15 = load i32, i32* %ret, align 4, !dbg !4301
  %tobool11 = icmp ne i32 %15, 0, !dbg !4301
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !4303

if.then12:                                        ; preds = %if.end9
  %16 = load i32, i32* %ret, align 4, !dbg !4304
  store i32 %16, i32* %retval, align 4, !dbg !4305
  br label %return, !dbg !4305

if.end13:                                         ; preds = %if.end9
  %17 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4306
  %subdevices = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 16, !dbg !4307
  %18 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices, align 8, !dbg !4307
  %arrayidx = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %18, i64 0, !dbg !4306
  store %struct.comedi_subdevice* %arrayidx, %struct.comedi_subdevice** %s, align 8, !dbg !4308
  %19 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4309
  %type = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %19, i32 0, i32 2, !dbg !4310
  store i32 5, i32* %type, align 4, !dbg !4311
  %20 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4312
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %20, i32 0, i32 4, !dbg !4313
  store i32 196608, i32* %subdev_flags, align 4, !dbg !4314
  %21 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4315
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %21, i32 0, i32 3, !dbg !4316
  store i32 24, i32* %n_chan, align 8, !dbg !4317
  %22 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4318
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %22, i32 0, i32 13, !dbg !4319
  store i32 1, i32* %maxdata, align 8, !dbg !4320
  %23 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4321
  %range_table = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %23, i32 0, i32 15, !dbg !4322
  store %struct.comedi_lrange* @range_unipolar5, %struct.comedi_lrange** %range_table, align 8, !dbg !4323
  %24 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4324
  %insn_bits = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %24, i32 0, i32 20, !dbg !4325
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @ni6501_dio_insn_bits, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_bits, align 8, !dbg !4326
  %25 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4327
  %insn_config = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %25, i32 0, i32 21, !dbg !4328
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @ni6501_dio_insn_config, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_config, align 8, !dbg !4329
  %26 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4330
  %subdevices14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %26, i32 0, i32 16, !dbg !4331
  %27 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices14, align 8, !dbg !4331
  %arrayidx15 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %27, i64 1, !dbg !4330
  store %struct.comedi_subdevice* %arrayidx15, %struct.comedi_subdevice** %s, align 8, !dbg !4332
  %28 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4333
  %type16 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %28, i32 0, i32 2, !dbg !4334
  store i32 6, i32* %type16, align 4, !dbg !4335
  %29 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4336
  %subdev_flags17 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %29, i32 0, i32 4, !dbg !4337
  store i32 268632064, i32* %subdev_flags17, align 4, !dbg !4338
  %30 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4339
  %n_chan18 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %30, i32 0, i32 3, !dbg !4340
  store i32 1, i32* %n_chan18, align 8, !dbg !4341
  %31 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4342
  %maxdata19 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %31, i32 0, i32 13, !dbg !4343
  store i32 -1, i32* %maxdata19, align 8, !dbg !4344
  %32 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4345
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %32, i32 0, i32 18, !dbg !4346
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @ni6501_cnt_insn_read, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_read, align 8, !dbg !4347
  %33 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4348
  %insn_write = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %33, i32 0, i32 19, !dbg !4349
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @ni6501_cnt_insn_write, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_write, align 8, !dbg !4350
  %34 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4351
  %insn_config20 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %34, i32 0, i32 21, !dbg !4352
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @ni6501_cnt_insn_config, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_config20, align 8, !dbg !4353
  store i32 0, i32* %retval, align 4, !dbg !4354
  br label %return, !dbg !4354

return:                                           ; preds = %if.end13, %if.then12, %if.then8, %if.then4, %if.then
  %35 = load i32, i32* %retval, align 4, !dbg !4355
  ret i32 %35, !dbg !4355
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noredzone
declare dso_local %struct.usb_interface* @comedi_to_usb_interface(%struct.comedi_device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mutex_destroy(%struct.mutex* %lock) #2 !dbg !4356 {
entry:
  %lock.addr = alloca %struct.mutex*, align 8
  store %struct.mutex* %lock, %struct.mutex** %lock.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mutex** %lock.addr, metadata !4360, metadata !DIExpression()), !dbg !4361
  ret void, !dbg !4362
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_set_intfdata(%struct.usb_interface* %intf, i8* %data) #2 !dbg !4363 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !4366, metadata !DIExpression()), !dbg !4367
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4368, metadata !DIExpression()), !dbg !4369
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4370
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !4371
  %1 = load i8*, i8** %data.addr, align 8, !dbg !4372
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #9, !dbg !4373
  ret void, !dbg !4374
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !4375 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4378, metadata !DIExpression()), !dbg !4379
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4380, metadata !DIExpression()), !dbg !4381
  %0 = load i8*, i8** %data.addr, align 8, !dbg !4382
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4383
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !4384
  store i8* %0, i8** %driver_data, align 8, !dbg !4385
  ret void, !dbg !4386
}

; Function Attrs: noredzone
declare dso_local i8* @comedi_alloc_devpriv(%struct.comedi_device*, i64) #1

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ni6501_find_endpoints(%struct.comedi_device* %dev) #2 !dbg !4387 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %intf = alloca %struct.usb_interface*, align 8
  %devpriv = alloca %struct.ni6501_private*, align 8
  %iface_desc = alloca %struct.usb_host_interface*, align 8
  %ep_desc = alloca %struct.usb_endpoint_descriptor*, align 8
  %i = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4388, metadata !DIExpression()), !dbg !4389
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf, metadata !4390, metadata !DIExpression()), !dbg !4391
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4392
  %call = call %struct.usb_interface* @comedi_to_usb_interface(%struct.comedi_device* %0) #9, !dbg !4393
  store %struct.usb_interface* %call, %struct.usb_interface** %intf, align 8, !dbg !4391
  call void @llvm.dbg.declare(metadata %struct.ni6501_private** %devpriv, metadata !4394, metadata !DIExpression()), !dbg !4395
  %1 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4396
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %1, i32 0, i32 3, !dbg !4397
  %2 = load i8*, i8** %private, align 8, !dbg !4397
  %3 = bitcast i8* %2 to %struct.ni6501_private*, !dbg !4396
  store %struct.ni6501_private* %3, %struct.ni6501_private** %devpriv, align 8, !dbg !4395
  call void @llvm.dbg.declare(metadata %struct.usb_host_interface** %iface_desc, metadata !4398, metadata !DIExpression()), !dbg !4399
  %4 = load %struct.usb_interface*, %struct.usb_interface** %intf, align 8, !dbg !4400
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %4, i32 0, i32 1, !dbg !4401
  %5 = load %struct.usb_host_interface*, %struct.usb_host_interface** %cur_altsetting, align 8, !dbg !4401
  store %struct.usb_host_interface* %5, %struct.usb_host_interface** %iface_desc, align 8, !dbg !4399
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %ep_desc, metadata !4402, metadata !DIExpression()), !dbg !4403
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4404, metadata !DIExpression()), !dbg !4405
  %6 = load %struct.usb_host_interface*, %struct.usb_host_interface** %iface_desc, align 8, !dbg !4406
  %desc = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %6, i32 0, i32 0, !dbg !4408
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %desc, i32 0, i32 4, !dbg !4409
  %7 = load i8, i8* %bNumEndpoints, align 4, !dbg !4409
  %conv = zext i8 %7 to i32, !dbg !4406
  %cmp = icmp ne i32 %conv, 2, !dbg !4410
  br i1 %cmp, label %if.then, label %if.end, !dbg !4411

if.then:                                          ; preds = %entry
  %8 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4412
  %class_dev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 4, !dbg !4412
  %9 = load %struct.device*, %struct.device** %class_dev, align 8, !dbg !4412
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !4412
  store i32 -19, i32* %retval, align 4, !dbg !4414
  br label %return, !dbg !4414

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !4415
  br label %for.cond, !dbg !4417

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, i32* %i, align 4, !dbg !4418
  %11 = load %struct.usb_host_interface*, %struct.usb_host_interface** %iface_desc, align 8, !dbg !4420
  %desc2 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %11, i32 0, i32 0, !dbg !4421
  %bNumEndpoints3 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %desc2, i32 0, i32 4, !dbg !4422
  %12 = load i8, i8* %bNumEndpoints3, align 4, !dbg !4422
  %conv4 = zext i8 %12 to i32, !dbg !4420
  %cmp5 = icmp slt i32 %10, %conv4, !dbg !4423
  br i1 %cmp5, label %for.body, label %for.end, !dbg !4424

for.body:                                         ; preds = %for.cond
  %13 = load %struct.usb_host_interface*, %struct.usb_host_interface** %iface_desc, align 8, !dbg !4425
  %endpoint = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %13, i32 0, i32 3, !dbg !4427
  %14 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %endpoint, align 8, !dbg !4427
  %15 = load i32, i32* %i, align 4, !dbg !4428
  %idxprom = sext i32 %15 to i64, !dbg !4425
  %arrayidx = getelementptr %struct.usb_host_endpoint, %struct.usb_host_endpoint* %14, i64 %idxprom, !dbg !4425
  %desc7 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %arrayidx, i32 0, i32 0, !dbg !4429
  store %struct.usb_endpoint_descriptor* %desc7, %struct.usb_endpoint_descriptor** %ep_desc, align 8, !dbg !4430
  %16 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep_desc, align 8, !dbg !4431
  %call8 = call i32 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor* %16) #9, !dbg !4433
  %tobool = icmp ne i32 %call8, 0, !dbg !4433
  br i1 %tobool, label %if.then9, label %if.end14, !dbg !4434

if.then9:                                         ; preds = %for.body
  %17 = load %struct.ni6501_private*, %struct.ni6501_private** %devpriv, align 8, !dbg !4435
  %ep_rx = getelementptr inbounds %struct.ni6501_private, %struct.ni6501_private* %17, i32 0, i32 0, !dbg !4438
  %18 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep_rx, align 8, !dbg !4438
  %tobool10 = icmp ne %struct.usb_endpoint_descriptor* %18, null, !dbg !4435
  br i1 %tobool10, label %if.end13, label %if.then11, !dbg !4439

if.then11:                                        ; preds = %if.then9
  %19 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep_desc, align 8, !dbg !4440
  %20 = load %struct.ni6501_private*, %struct.ni6501_private** %devpriv, align 8, !dbg !4441
  %ep_rx12 = getelementptr inbounds %struct.ni6501_private, %struct.ni6501_private* %20, i32 0, i32 0, !dbg !4442
  store %struct.usb_endpoint_descriptor* %19, %struct.usb_endpoint_descriptor** %ep_rx12, align 8, !dbg !4443
  br label %if.end13, !dbg !4441

if.end13:                                         ; preds = %if.then11, %if.then9
  br label %for.inc, !dbg !4444

if.end14:                                         ; preds = %for.body
  %21 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep_desc, align 8, !dbg !4445
  %call15 = call i32 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor* %21) #9, !dbg !4447
  %tobool16 = icmp ne i32 %call15, 0, !dbg !4447
  br i1 %tobool16, label %if.then17, label %if.end22, !dbg !4448

if.then17:                                        ; preds = %if.end14
  %22 = load %struct.ni6501_private*, %struct.ni6501_private** %devpriv, align 8, !dbg !4449
  %ep_tx = getelementptr inbounds %struct.ni6501_private, %struct.ni6501_private* %22, i32 0, i32 1, !dbg !4452
  %23 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep_tx, align 8, !dbg !4452
  %tobool18 = icmp ne %struct.usb_endpoint_descriptor* %23, null, !dbg !4449
  br i1 %tobool18, label %if.end21, label %if.then19, !dbg !4453

if.then19:                                        ; preds = %if.then17
  %24 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep_desc, align 8, !dbg !4454
  %25 = load %struct.ni6501_private*, %struct.ni6501_private** %devpriv, align 8, !dbg !4455
  %ep_tx20 = getelementptr inbounds %struct.ni6501_private, %struct.ni6501_private* %25, i32 0, i32 1, !dbg !4456
  store %struct.usb_endpoint_descriptor* %24, %struct.usb_endpoint_descriptor** %ep_tx20, align 8, !dbg !4457
  br label %if.end21, !dbg !4455

if.end21:                                         ; preds = %if.then19, %if.then17
  br label %for.inc, !dbg !4458

if.end22:                                         ; preds = %if.end14
  br label %for.inc, !dbg !4459

for.inc:                                          ; preds = %if.end22, %if.end21, %if.end13
  %26 = load i32, i32* %i, align 4, !dbg !4460
  %inc = add i32 %26, 1, !dbg !4460
  store i32 %inc, i32* %i, align 4, !dbg !4460
  br label %for.cond, !dbg !4461, !llvm.loop !4462

for.end:                                          ; preds = %for.cond
  %27 = load %struct.ni6501_private*, %struct.ni6501_private** %devpriv, align 8, !dbg !4464
  %ep_rx23 = getelementptr inbounds %struct.ni6501_private, %struct.ni6501_private* %27, i32 0, i32 0, !dbg !4466
  %28 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep_rx23, align 8, !dbg !4466
  %tobool24 = icmp ne %struct.usb_endpoint_descriptor* %28, null, !dbg !4464
  br i1 %tobool24, label %lor.lhs.false, label %if.then27, !dbg !4467

lor.lhs.false:                                    ; preds = %for.end
  %29 = load %struct.ni6501_private*, %struct.ni6501_private** %devpriv, align 8, !dbg !4468
  %ep_tx25 = getelementptr inbounds %struct.ni6501_private, %struct.ni6501_private* %29, i32 0, i32 1, !dbg !4469
  %30 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep_tx25, align 8, !dbg !4469
  %tobool26 = icmp ne %struct.usb_endpoint_descriptor* %30, null, !dbg !4468
  br i1 %tobool26, label %if.end28, label %if.then27, !dbg !4470

if.then27:                                        ; preds = %lor.lhs.false, %for.end
  store i32 -19, i32* %retval, align 4, !dbg !4471
  br label %return, !dbg !4471

if.end28:                                         ; preds = %lor.lhs.false
  store i32 0, i32* %retval, align 4, !dbg !4472
  br label %return, !dbg !4472

return:                                           ; preds = %if.end28, %if.then27, %if.then
  %31 = load i32, i32* %retval, align 4, !dbg !4473
  ret i32 %31, !dbg !4473
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ni6501_alloc_usb_buffers(%struct.comedi_device* %dev) #2 !dbg !4474 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %devpriv = alloca %struct.ni6501_private*, align 8
  %size = alloca i64, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4475, metadata !DIExpression()), !dbg !4476
  call void @llvm.dbg.declare(metadata %struct.ni6501_private** %devpriv, metadata !4477, metadata !DIExpression()), !dbg !4478
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4479
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !4480
  %1 = load i8*, i8** %private, align 8, !dbg !4480
  %2 = bitcast i8* %1 to %struct.ni6501_private*, !dbg !4479
  store %struct.ni6501_private* %2, %struct.ni6501_private** %devpriv, align 8, !dbg !4478
  call void @llvm.dbg.declare(metadata i64* %size, metadata !4481, metadata !DIExpression()), !dbg !4482
  %3 = load %struct.ni6501_private*, %struct.ni6501_private** %devpriv, align 8, !dbg !4483
  %ep_rx = getelementptr inbounds %struct.ni6501_private, %struct.ni6501_private* %3, i32 0, i32 0, !dbg !4484
  %4 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep_rx, align 8, !dbg !4484
  %call = call i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %4) #9, !dbg !4485
  %conv = sext i32 %call to i64, !dbg !4485
  store i64 %conv, i64* %size, align 8, !dbg !4486
  %5 = load i64, i64* %size, align 8, !dbg !4487
  %call1 = call i8* @kzalloc(i64 %5, i32 3264) #9, !dbg !4488
  %6 = load %struct.ni6501_private*, %struct.ni6501_private** %devpriv, align 8, !dbg !4489
  %usb_rx_buf = getelementptr inbounds %struct.ni6501_private, %struct.ni6501_private* %6, i32 0, i32 3, !dbg !4490
  store i8* %call1, i8** %usb_rx_buf, align 8, !dbg !4491
  %7 = load %struct.ni6501_private*, %struct.ni6501_private** %devpriv, align 8, !dbg !4492
  %usb_rx_buf2 = getelementptr inbounds %struct.ni6501_private, %struct.ni6501_private* %7, i32 0, i32 3, !dbg !4494
  %8 = load i8*, i8** %usb_rx_buf2, align 8, !dbg !4494
  %tobool = icmp ne i8* %8, null, !dbg !4492
  br i1 %tobool, label %if.end, label %if.then, !dbg !4495

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !4496
  br label %return, !dbg !4496

if.end:                                           ; preds = %entry
  %9 = load %struct.ni6501_private*, %struct.ni6501_private** %devpriv, align 8, !dbg !4497
  %ep_tx = getelementptr inbounds %struct.ni6501_private, %struct.ni6501_private* %9, i32 0, i32 1, !dbg !4498
  %10 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep_tx, align 8, !dbg !4498
  %call3 = call i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %10) #9, !dbg !4499
  %conv4 = sext i32 %call3 to i64, !dbg !4499
  store i64 %conv4, i64* %size, align 8, !dbg !4500
  %11 = load i64, i64* %size, align 8, !dbg !4501
  %call5 = call i8* @kzalloc(i64 %11, i32 3264) #9, !dbg !4502
  %12 = load %struct.ni6501_private*, %struct.ni6501_private** %devpriv, align 8, !dbg !4503
  %usb_tx_buf = getelementptr inbounds %struct.ni6501_private, %struct.ni6501_private* %12, i32 0, i32 4, !dbg !4504
  store i8* %call5, i8** %usb_tx_buf, align 8, !dbg !4505
  %13 = load %struct.ni6501_private*, %struct.ni6501_private** %devpriv, align 8, !dbg !4506
  %usb_tx_buf6 = getelementptr inbounds %struct.ni6501_private, %struct.ni6501_private* %13, i32 0, i32 4, !dbg !4508
  %14 = load i8*, i8** %usb_tx_buf6, align 8, !dbg !4508
  %tobool7 = icmp ne i8* %14, null, !dbg !4506
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !4509

if.then8:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !4510
  br label %return, !dbg !4510

if.end9:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4511
  br label %return, !dbg !4511

return:                                           ; preds = %if.end9, %if.then8, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !4512
  ret i32 %15, !dbg !4512
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ni6501_dio_insn_bits(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !4513 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %mask = alloca i32, align 4
  %ret = alloca i32, align 4
  %port = alloca i8, align 1
  %bitmap = alloca i8, align 1
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4514, metadata !DIExpression()), !dbg !4515
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4516, metadata !DIExpression()), !dbg !4517
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !4518, metadata !DIExpression()), !dbg !4519
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !4520, metadata !DIExpression()), !dbg !4521
  call void @llvm.dbg.declare(metadata i32* %mask, metadata !4522, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4524, metadata !DIExpression()), !dbg !4525
  call void @llvm.dbg.declare(metadata i8* %port, metadata !4526, metadata !DIExpression()), !dbg !4527
  call void @llvm.dbg.declare(metadata i8* %bitmap, metadata !4528, metadata !DIExpression()), !dbg !4529
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4530
  %1 = load i32*, i32** %data.addr, align 8, !dbg !4531
  %call = call i32 @comedi_dio_update_state(%struct.comedi_subdevice* %0, i32* %1) #9, !dbg !4532
  store i32 %call, i32* %mask, align 4, !dbg !4533
  store i8 0, i8* %port, align 1, !dbg !4534
  br label %for.cond, !dbg !4536

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i8, i8* %port, align 1, !dbg !4537
  %conv = zext i8 %2 to i32, !dbg !4537
  %cmp = icmp slt i32 %conv, 3, !dbg !4539
  br i1 %cmp, label %for.body, label %for.end, !dbg !4540

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %mask, align 4, !dbg !4541
  %4 = load i8, i8* %port, align 1, !dbg !4544
  %conv2 = zext i8 %4 to i32, !dbg !4544
  %mul = mul i32 %conv2, 8, !dbg !4545
  %shl = shl i32 255, %mul, !dbg !4546
  %and = and i32 %3, %shl, !dbg !4547
  %tobool = icmp ne i32 %and, 0, !dbg !4547
  br i1 %tobool, label %if.then, label %if.end11, !dbg !4548

if.then:                                          ; preds = %for.body
  %5 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4549
  %state = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %5, i32 0, i32 29, !dbg !4551
  %6 = load i32, i32* %state, align 4, !dbg !4551
  %7 = load i8, i8* %port, align 1, !dbg !4552
  %conv3 = zext i8 %7 to i32, !dbg !4552
  %mul4 = mul i32 %conv3, 8, !dbg !4553
  %shr = lshr i32 %6, %mul4, !dbg !4554
  %and5 = and i32 %shr, 255, !dbg !4555
  %conv6 = trunc i32 %and5 to i8, !dbg !4556
  store i8 %conv6, i8* %bitmap, align 1, !dbg !4557
  %8 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4558
  %9 = load i8, i8* %port, align 1, !dbg !4559
  %conv7 = zext i8 %9 to i32, !dbg !4559
  %call8 = call i32 @ni6501_port_command(%struct.comedi_device* %8, i32 1, i32 %conv7, i8* %bitmap) #9, !dbg !4560
  store i32 %call8, i32* %ret, align 4, !dbg !4561
  %10 = load i32, i32* %ret, align 4, !dbg !4562
  %tobool9 = icmp ne i32 %10, 0, !dbg !4562
  br i1 %tobool9, label %if.then10, label %if.end, !dbg !4564

if.then10:                                        ; preds = %if.then
  %11 = load i32, i32* %ret, align 4, !dbg !4565
  store i32 %11, i32* %retval, align 4, !dbg !4566
  br label %return, !dbg !4566

if.end:                                           ; preds = %if.then
  br label %if.end11, !dbg !4567

if.end11:                                         ; preds = %if.end, %for.body
  br label %for.inc, !dbg !4568

for.inc:                                          ; preds = %if.end11
  %12 = load i8, i8* %port, align 1, !dbg !4569
  %inc = add i8 %12, 1, !dbg !4569
  store i8 %inc, i8* %port, align 1, !dbg !4569
  br label %for.cond, !dbg !4570, !llvm.loop !4571

for.end:                                          ; preds = %for.cond
  %13 = load i32*, i32** %data.addr, align 8, !dbg !4573
  %arrayidx = getelementptr i32, i32* %13, i64 1, !dbg !4573
  store i32 0, i32* %arrayidx, align 4, !dbg !4574
  store i8 0, i8* %port, align 1, !dbg !4575
  br label %for.cond12, !dbg !4577

for.cond12:                                       ; preds = %for.inc27, %for.end
  %14 = load i8, i8* %port, align 1, !dbg !4578
  %conv13 = zext i8 %14 to i32, !dbg !4578
  %cmp14 = icmp slt i32 %conv13, 3, !dbg !4580
  br i1 %cmp14, label %for.body16, label %for.end29, !dbg !4581

for.body16:                                       ; preds = %for.cond12
  %15 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4582
  %16 = load i8, i8* %port, align 1, !dbg !4584
  %conv17 = zext i8 %16 to i32, !dbg !4584
  %call18 = call i32 @ni6501_port_command(%struct.comedi_device* %15, i32 0, i32 %conv17, i8* %bitmap) #9, !dbg !4585
  store i32 %call18, i32* %ret, align 4, !dbg !4586
  %17 = load i32, i32* %ret, align 4, !dbg !4587
  %tobool19 = icmp ne i32 %17, 0, !dbg !4587
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !4589

if.then20:                                        ; preds = %for.body16
  %18 = load i32, i32* %ret, align 4, !dbg !4590
  store i32 %18, i32* %retval, align 4, !dbg !4591
  br label %return, !dbg !4591

if.end21:                                         ; preds = %for.body16
  %19 = load i8, i8* %bitmap, align 1, !dbg !4592
  %conv22 = zext i8 %19 to i32, !dbg !4592
  %20 = load i8, i8* %port, align 1, !dbg !4593
  %conv23 = zext i8 %20 to i32, !dbg !4593
  %mul24 = mul i32 %conv23, 8, !dbg !4594
  %shl25 = shl i32 %conv22, %mul24, !dbg !4595
  %21 = load i32*, i32** %data.addr, align 8, !dbg !4596
  %arrayidx26 = getelementptr i32, i32* %21, i64 1, !dbg !4596
  %22 = load i32, i32* %arrayidx26, align 4, !dbg !4597
  %or = or i32 %22, %shl25, !dbg !4597
  store i32 %or, i32* %arrayidx26, align 4, !dbg !4597
  br label %for.inc27, !dbg !4598

for.inc27:                                        ; preds = %if.end21
  %23 = load i8, i8* %port, align 1, !dbg !4599
  %inc28 = add i8 %23, 1, !dbg !4599
  store i8 %inc28, i8* %port, align 1, !dbg !4599
  br label %for.cond12, !dbg !4600, !llvm.loop !4601

for.end29:                                        ; preds = %for.cond12
  %24 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4603
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %24, i32 0, i32 1, !dbg !4604
  %25 = load i32, i32* %n, align 4, !dbg !4604
  store i32 %25, i32* %retval, align 4, !dbg !4605
  br label %return, !dbg !4605

return:                                           ; preds = %for.end29, %if.then20, %if.then10
  %26 = load i32, i32* %retval, align 4, !dbg !4606
  ret i32 %26, !dbg !4606
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ni6501_dio_insn_config(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !4607 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4608, metadata !DIExpression()), !dbg !4609
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4610, metadata !DIExpression()), !dbg !4611
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !4612, metadata !DIExpression()), !dbg !4613
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !4614, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4616, metadata !DIExpression()), !dbg !4617
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4618
  %1 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4619
  %2 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4620
  %3 = load i32*, i32** %data.addr, align 8, !dbg !4621
  %call = call i32 @comedi_dio_insn_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3, i32 0) #9, !dbg !4622
  store i32 %call, i32* %ret, align 4, !dbg !4623
  %4 = load i32, i32* %ret, align 4, !dbg !4624
  %tobool = icmp ne i32 %4, 0, !dbg !4624
  br i1 %tobool, label %if.then, label %if.end, !dbg !4626

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4, !dbg !4627
  store i32 %5, i32* %retval, align 4, !dbg !4628
  br label %return, !dbg !4628

if.end:                                           ; preds = %entry
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4629
  %7 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4630
  %io_bits = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %7, i32 0, i32 12, !dbg !4631
  %8 = load i32, i32* %io_bits, align 4, !dbg !4631
  %call1 = call i32 @ni6501_port_command(%struct.comedi_device* %6, i32 2, i32 %8, i8* null) #9, !dbg !4632
  store i32 %call1, i32* %ret, align 4, !dbg !4633
  %9 = load i32, i32* %ret, align 4, !dbg !4634
  %tobool2 = icmp ne i32 %9, 0, !dbg !4634
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !4636

if.then3:                                         ; preds = %if.end
  %10 = load i32, i32* %ret, align 4, !dbg !4637
  store i32 %10, i32* %retval, align 4, !dbg !4638
  br label %return, !dbg !4638

if.end4:                                          ; preds = %if.end
  %11 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4639
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %11, i32 0, i32 1, !dbg !4640
  %12 = load i32, i32* %n, align 4, !dbg !4640
  store i32 %12, i32* %retval, align 4, !dbg !4641
  br label %return, !dbg !4641

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !4642
  ret i32 %13, !dbg !4642
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ni6501_cnt_insn_read(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !4643 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %ret = alloca i32, align 4
  %val = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4644, metadata !DIExpression()), !dbg !4645
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4646, metadata !DIExpression()), !dbg !4647
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !4648, metadata !DIExpression()), !dbg !4649
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !4650, metadata !DIExpression()), !dbg !4651
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4652, metadata !DIExpression()), !dbg !4653
  call void @llvm.dbg.declare(metadata i32* %val, metadata !4654, metadata !DIExpression()), !dbg !4655
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4656, metadata !DIExpression()), !dbg !4657
  store i32 0, i32* %i, align 4, !dbg !4658
  br label %for.cond, !dbg !4660

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !4661
  %1 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4663
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %1, i32 0, i32 1, !dbg !4664
  %2 = load i32, i32* %n, align 4, !dbg !4664
  %cmp = icmp ult i32 %0, %2, !dbg !4665
  br i1 %cmp, label %for.body, label %for.end, !dbg !4666

for.body:                                         ; preds = %for.cond
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4667
  %call = call i32 @ni6501_counter_command(%struct.comedi_device* %3, i32 5, i32* %val) #9, !dbg !4669
  store i32 %call, i32* %ret, align 4, !dbg !4670
  %4 = load i32, i32* %ret, align 4, !dbg !4671
  %tobool = icmp ne i32 %4, 0, !dbg !4671
  br i1 %tobool, label %if.then, label %if.end, !dbg !4673

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %ret, align 4, !dbg !4674
  store i32 %5, i32* %retval, align 4, !dbg !4675
  br label %return, !dbg !4675

if.end:                                           ; preds = %for.body
  %6 = load i32, i32* %val, align 4, !dbg !4676
  %7 = load i32*, i32** %data.addr, align 8, !dbg !4677
  %8 = load i32, i32* %i, align 4, !dbg !4678
  %idxprom = zext i32 %8 to i64, !dbg !4677
  %arrayidx = getelementptr i32, i32* %7, i64 %idxprom, !dbg !4677
  store i32 %6, i32* %arrayidx, align 4, !dbg !4679
  br label %for.inc, !dbg !4680

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4, !dbg !4681
  %inc = add i32 %9, 1, !dbg !4681
  store i32 %inc, i32* %i, align 4, !dbg !4681
  br label %for.cond, !dbg !4682, !llvm.loop !4683

for.end:                                          ; preds = %for.cond
  %10 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4685
  %n1 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %10, i32 0, i32 1, !dbg !4686
  %11 = load i32, i32* %n1, align 4, !dbg !4686
  store i32 %11, i32* %retval, align 4, !dbg !4687
  br label %return, !dbg !4687

return:                                           ; preds = %for.end, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !4688
  ret i32 %12, !dbg !4688
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ni6501_cnt_insn_write(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !4689 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %ret = alloca i32, align 4
  %val = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4690, metadata !DIExpression()), !dbg !4691
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4692, metadata !DIExpression()), !dbg !4693
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !4694, metadata !DIExpression()), !dbg !4695
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !4696, metadata !DIExpression()), !dbg !4697
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4698, metadata !DIExpression()), !dbg !4699
  %0 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4700
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %0, i32 0, i32 1, !dbg !4702
  %1 = load i32, i32* %n, align 4, !dbg !4702
  %tobool = icmp ne i32 %1, 0, !dbg !4700
  br i1 %tobool, label %if.then, label %if.end4, !dbg !4703

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %val, metadata !4704, metadata !DIExpression()), !dbg !4706
  %2 = load i32*, i32** %data.addr, align 8, !dbg !4707
  %3 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4708
  %n1 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %3, i32 0, i32 1, !dbg !4709
  %4 = load i32, i32* %n1, align 4, !dbg !4709
  %sub = sub i32 %4, 1, !dbg !4710
  %idxprom = zext i32 %sub to i64, !dbg !4707
  %arrayidx = getelementptr i32, i32* %2, i64 %idxprom, !dbg !4707
  %5 = load i32, i32* %arrayidx, align 4, !dbg !4707
  store i32 %5, i32* %val, align 4, !dbg !4706
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4711
  %call = call i32 @ni6501_counter_command(%struct.comedi_device* %6, i32 6, i32* %val) #9, !dbg !4712
  store i32 %call, i32* %ret, align 4, !dbg !4713
  %7 = load i32, i32* %ret, align 4, !dbg !4714
  %tobool2 = icmp ne i32 %7, 0, !dbg !4714
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !4716

if.then3:                                         ; preds = %if.then
  %8 = load i32, i32* %ret, align 4, !dbg !4717
  store i32 %8, i32* %retval, align 4, !dbg !4718
  br label %return, !dbg !4718

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !4719

if.end4:                                          ; preds = %if.end, %entry
  %9 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4720
  %n5 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %9, i32 0, i32 1, !dbg !4721
  %10 = load i32, i32* %n5, align 4, !dbg !4721
  store i32 %10, i32* %retval, align 4, !dbg !4722
  br label %return, !dbg !4722

return:                                           ; preds = %if.end4, %if.then3
  %11 = load i32, i32* %retval, align 4, !dbg !4723
  ret i32 %11, !dbg !4723
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ni6501_cnt_insn_config(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !4724 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %ret = alloca i32, align 4
  %val = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4725, metadata !DIExpression()), !dbg !4726
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4727, metadata !DIExpression()), !dbg !4728
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !4729, metadata !DIExpression()), !dbg !4730
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !4731, metadata !DIExpression()), !dbg !4732
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4733, metadata !DIExpression()), !dbg !4734
  call void @llvm.dbg.declare(metadata i32* %val, metadata !4735, metadata !DIExpression()), !dbg !4736
  store i32 0, i32* %val, align 4, !dbg !4736
  %0 = load i32*, i32** %data.addr, align 8, !dbg !4737
  %arrayidx = getelementptr i32, i32* %0, i64 0, !dbg !4737
  %1 = load i32, i32* %arrayidx, align 4, !dbg !4737
  switch i32 %1, label %sw.default [
    i32 31, label %sw.bb
    i32 32, label %sw.bb1
    i32 34, label %sw.bb3
  ], !dbg !4738

sw.bb:                                            ; preds = %entry
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4739
  %call = call i32 @ni6501_counter_command(%struct.comedi_device* %2, i32 3, i32* null) #9, !dbg !4741
  store i32 %call, i32* %ret, align 4, !dbg !4742
  br label %sw.epilog, !dbg !4743

sw.bb1:                                           ; preds = %entry
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4744
  %call2 = call i32 @ni6501_counter_command(%struct.comedi_device* %3, i32 4, i32* null) #9, !dbg !4745
  store i32 %call2, i32* %ret, align 4, !dbg !4746
  br label %sw.epilog, !dbg !4747

sw.bb3:                                           ; preds = %entry
  %4 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4748
  %call4 = call i32 @ni6501_counter_command(%struct.comedi_device* %4, i32 4, i32* null) #9, !dbg !4749
  store i32 %call4, i32* %ret, align 4, !dbg !4750
  %5 = load i32, i32* %ret, align 4, !dbg !4751
  %tobool = icmp ne i32 %5, 0, !dbg !4751
  br i1 %tobool, label %if.then, label %if.end, !dbg !4753

if.then:                                          ; preds = %sw.bb3
  br label %sw.epilog, !dbg !4754

if.end:                                           ; preds = %sw.bb3
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4755
  %call5 = call i32 @ni6501_counter_command(%struct.comedi_device* %6, i32 6, i32* %val) #9, !dbg !4756
  store i32 %call5, i32* %ret, align 4, !dbg !4757
  br label %sw.epilog, !dbg !4758

sw.default:                                       ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4759
  br label %return, !dbg !4759

sw.epilog:                                        ; preds = %if.end, %if.then, %sw.bb1, %sw.bb
  %7 = load i32, i32* %ret, align 4, !dbg !4760
  %tobool6 = icmp ne i32 %7, 0, !dbg !4760
  br i1 %tobool6, label %cond.true, label %cond.false, !dbg !4760

cond.true:                                        ; preds = %sw.epilog
  %8 = load i32, i32* %ret, align 4, !dbg !4761
  br label %cond.end, !dbg !4760

cond.false:                                       ; preds = %sw.epilog
  %9 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4762
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %9, i32 0, i32 1, !dbg !4763
  %10 = load i32, i32* %n, align 4, !dbg !4763
  br label %cond.end, !dbg !4760

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ %10, %cond.false ], !dbg !4760
  store i32 %cond, i32* %retval, align 4, !dbg !4764
  br label %return, !dbg !4764

return:                                           ; preds = %cond.end, %sw.default
  %11 = load i32, i32* %retval, align 4, !dbg !4765
  ret i32 %11, !dbg !4765
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !4766 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !4771, metadata !DIExpression()), !dbg !4772
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !4773
  %call = call i32 @usb_endpoint_xfer_bulk(%struct.usb_endpoint_descriptor* %0) #9, !dbg !4774
  %tobool = icmp ne i32 %call, 0, !dbg !4774
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !4775

land.rhs:                                         ; preds = %entry
  %1 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !4776
  %call1 = call i32 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %1) #9, !dbg !4777
  %tobool2 = icmp ne i32 %call1, 0, !dbg !4775
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ], !dbg !4778
  %land.ext = zext i1 %2 to i32, !dbg !4775
  ret i32 %land.ext, !dbg !4779
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !4780 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !4781, metadata !DIExpression()), !dbg !4782
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !4783
  %call = call i32 @usb_endpoint_xfer_bulk(%struct.usb_endpoint_descriptor* %0) #9, !dbg !4784
  %tobool = icmp ne i32 %call, 0, !dbg !4784
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !4785

land.rhs:                                         ; preds = %entry
  %1 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !4786
  %call1 = call i32 @usb_endpoint_dir_out(%struct.usb_endpoint_descriptor* %1) #9, !dbg !4787
  %tobool2 = icmp ne i32 %call1, 0, !dbg !4785
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ], !dbg !4788
  %land.ext = zext i1 %2 to i32, !dbg !4785
  ret i32 %land.ext, !dbg !4789
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_xfer_bulk(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !4790 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !4791, metadata !DIExpression()), !dbg !4792
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !4793
  %bmAttributes = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %0, i32 0, i32 3, !dbg !4794
  %1 = load i8, i8* %bmAttributes, align 1, !dbg !4794
  %conv = zext i8 %1 to i32, !dbg !4793
  %and = and i32 %conv, 3, !dbg !4795
  %cmp = icmp eq i32 %and, 2, !dbg !4796
  %conv1 = zext i1 %cmp to i32, !dbg !4796
  ret i32 %conv1, !dbg !4797
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !4798 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !4799, metadata !DIExpression()), !dbg !4800
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !4801
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %0, i32 0, i32 2, !dbg !4802
  %1 = load i8, i8* %bEndpointAddress, align 1, !dbg !4802
  %conv = zext i8 %1 to i32, !dbg !4801
  %and = and i32 %conv, 128, !dbg !4803
  %cmp = icmp eq i32 %and, 128, !dbg !4804
  %conv1 = zext i1 %cmp to i32, !dbg !4804
  ret i32 %conv1, !dbg !4805
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_dir_out(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !4806 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !4807, metadata !DIExpression()), !dbg !4808
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !4809
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %0, i32 0, i32 2, !dbg !4810
  %1 = load i8, i8* %bEndpointAddress, align 1, !dbg !4810
  %conv = zext i8 %1 to i32, !dbg !4809
  %and = and i32 %conv, 128, !dbg !4811
  %cmp = icmp eq i32 %and, 0, !dbg !4812
  %conv1 = zext i1 %cmp to i32, !dbg !4812
  ret i32 %conv1, !dbg !4813
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !4814 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !4815, metadata !DIExpression()), !dbg !4816
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !4817
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %0, i32 0, i32 4, !dbg !4817
  %1 = load i16, i16* %wMaxPacketSize, align 1, !dbg !4817
  %conv = zext i16 %1 to i32, !dbg !4817
  %and = and i32 %conv, 2047, !dbg !4818
  ret i32 %and, !dbg !4819
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #2 !dbg !4820 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4823, metadata !DIExpression()), !dbg !4827
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4833, metadata !DIExpression()), !dbg !4834
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4835, metadata !DIExpression()), !dbg !4836
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4837, metadata !DIExpression()), !dbg !4838
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4839, metadata !DIExpression()), !dbg !4843
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4845, metadata !DIExpression()), !dbg !4849
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4851, metadata !DIExpression()), !dbg !4855
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4860, metadata !DIExpression()), !dbg !4861
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4862, metadata !DIExpression()), !dbg !4863
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4864, metadata !DIExpression()), !dbg !4865
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4866, metadata !DIExpression()), !dbg !4867
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4868, metadata !DIExpression()), !dbg !4869
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4870, metadata !DIExpression()), !dbg !4871
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4872, metadata !DIExpression()), !dbg !4873
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4874, metadata !DIExpression()), !dbg !4875
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4876, metadata !DIExpression()), !dbg !4877
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4878, metadata !DIExpression()), !dbg !4879
  %0 = load i64, i64* %size.addr, align 8, !dbg !4880
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4881
  %or = or i32 %1, 256, !dbg !4882
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4883
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #11, !dbg !4884
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4885

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4886
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4887
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4888

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4889
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4890
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4891
  %call.i.i = call i32 @get_order(i64 %7) #12, !dbg !4892
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4869
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4893
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4894
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4895
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4896
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4897
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4898
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #13, !dbg !4899
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4899
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4899
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4899
  call void @llvm.assume(i1 %maskcond.i.i.i) #11, !dbg !4899
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4900
  br label %kmalloc.exit, !dbg !4900

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4901
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4902
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4902
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4904

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4905
  br label %kmalloc_index.exit.i, !dbg !4905

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4906
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4908
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4909

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4910
  br label %kmalloc_index.exit.i, !dbg !4910

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4911
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4913
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4914

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4915
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4916
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4917

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4918
  br label %kmalloc_index.exit.i, !dbg !4918

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4919
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4921
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4922

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4923
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4924
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4925

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4926
  br label %kmalloc_index.exit.i, !dbg !4926

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4927
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4929
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4930

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4931
  br label %kmalloc_index.exit.i, !dbg !4931

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4932
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4934
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4935

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4936
  br label %kmalloc_index.exit.i, !dbg !4936

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4937
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4939
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4940

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4941
  br label %kmalloc_index.exit.i, !dbg !4941

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4942
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4944
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4945

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4946
  br label %kmalloc_index.exit.i, !dbg !4946

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4947
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4949
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4950

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4951
  br label %kmalloc_index.exit.i, !dbg !4951

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4952
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4954
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4955

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4956
  br label %kmalloc_index.exit.i, !dbg !4956

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4957
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4959
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4960

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4961
  br label %kmalloc_index.exit.i, !dbg !4961

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4962
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4964
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4965

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4966
  br label %kmalloc_index.exit.i, !dbg !4966

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4967
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4969
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4970

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4971
  br label %kmalloc_index.exit.i, !dbg !4971

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4972
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4974
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4975

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4976
  br label %kmalloc_index.exit.i, !dbg !4976

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4977
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4979
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4980

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4981
  br label %kmalloc_index.exit.i, !dbg !4981

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4982
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4984
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4985

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4986
  br label %kmalloc_index.exit.i, !dbg !4986

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4987
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4989
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4990

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4991
  br label %kmalloc_index.exit.i, !dbg !4991

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4992
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4994
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4995

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4996
  br label %kmalloc_index.exit.i, !dbg !4996

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4997
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4999
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5000

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5001
  br label %kmalloc_index.exit.i, !dbg !5001

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5002
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !5004
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5005

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5006
  br label %kmalloc_index.exit.i, !dbg !5006

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5007
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !5009
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5010

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5011
  br label %kmalloc_index.exit.i, !dbg !5011

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5012
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !5014
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5015

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5016
  br label %kmalloc_index.exit.i, !dbg !5016

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5017
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !5019
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5020

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5021
  br label %kmalloc_index.exit.i, !dbg !5021

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5022
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !5024
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5025

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5026
  br label %kmalloc_index.exit.i, !dbg !5026

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5027
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !5029
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5030

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5031
  br label %kmalloc_index.exit.i, !dbg !5031

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5032
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !5034
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5035

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5036
  br label %kmalloc_index.exit.i, !dbg !5036

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5037
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !5039
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5040

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5041
  br label %kmalloc_index.exit.i, !dbg !5041

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5042
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !5044
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5045

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5046
  br label %kmalloc_index.exit.i, !dbg !5046

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 382, i32 0, i64 12) #11, !dbg !5047, !srcloc !5050
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #11, !dbg !5051, !srcloc !5054
  unreachable, !dbg !5055

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !5056
  store i32 %45, i32* %index.i, align 4, !dbg !5057
  %46 = load i32, i32* %index.i, align 4, !dbg !5058
  %tobool.i = icmp ne i32 %46, 0, !dbg !5058
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5060

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5061
  br label %kmalloc.exit, !dbg !5061

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !5062
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5063
  %and.i.i = and i32 %48, 17, !dbg !5063
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5063
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5063
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5063
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5063
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5065

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5066
  br label %kmalloc_type.exit.i, !dbg !5066

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5067
  %and2.i.i = and i32 %49, 1, !dbg !5068
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5067
  %50 = zext i1 %tobool3.i.i to i64, !dbg !5067
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5067
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5069
  br label %kmalloc_type.exit.i, !dbg !5069

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !5070
  %idxprom.i = zext i32 %51 to i64, !dbg !5071
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5071
  %52 = load i32, i32* %index.i, align 4, !dbg !5072
  %idxprom6.i = zext i32 %52 to i64, !dbg !5071
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5071
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5071
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !5073
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !5074
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5075
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5076
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #13, !dbg !5077
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5077
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5077
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5077
  call void @llvm.assume(i1 %maskcond.i.i) #11, !dbg !5077
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4838
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5078
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !5079
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5080
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5081
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #13, !dbg !5082
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5083
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !5084
  store i8* %62, i8** %retval.i, align 8, !dbg !5085
  br label %kmalloc.exit, !dbg !5085

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !5086
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !5087
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #13, !dbg !5088
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5088
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5088
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5088
  call void @llvm.assume(i1 %maskcond.i) #11, !dbg !5088
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5089
  br label %kmalloc.exit, !dbg !5089

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !5090
  ret i8* %65, !dbg !5091
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !5092 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5096, metadata !DIExpression()), !dbg !5101
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5103, metadata !DIExpression()), !dbg !5104
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5105, metadata !DIExpression()), !dbg !5106
  %0 = load i64, i64* %size.addr, align 8, !dbg !5107
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5109
  br i1 %1, label %if.then, label %if.end447, !dbg !5110

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5111
  %tobool = icmp ne i64 %2, 0, !dbg !5111
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5114

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5115
  br label %return, !dbg !5115

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5116
  %cmp = icmp ult i64 %3, 4096, !dbg !5118
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5119

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5120
  br label %return, !dbg !5120

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub = sub i64 %4, 1, !dbg !5121
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5121
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5121

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub4 = sub i64 %6, 1, !dbg !5121
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5121
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5121

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub6 = sub i64 %8, 1, !dbg !5121
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5121
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5121

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5121

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub9 = sub i64 %9, 1, !dbg !5121
  %and = and i64 %sub9, -9223372036854775808, !dbg !5121
  %tobool10 = icmp ne i64 %and, 0, !dbg !5121
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5121

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5121

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub13 = sub i64 %10, 1, !dbg !5121
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5121
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5121
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5121

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5121

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub18 = sub i64 %11, 1, !dbg !5121
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5121
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5121
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5121

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5121

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub23 = sub i64 %12, 1, !dbg !5121
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5121
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5121
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5121

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5121

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub28 = sub i64 %13, 1, !dbg !5121
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5121
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5121
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5121

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5121

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub33 = sub i64 %14, 1, !dbg !5121
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5121
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5121
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5121

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5121

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub38 = sub i64 %15, 1, !dbg !5121
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5121
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5121
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5121

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5121

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub43 = sub i64 %16, 1, !dbg !5121
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5121
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5121
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5121

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5121

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub48 = sub i64 %17, 1, !dbg !5121
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5121
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5121
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5121

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5121

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub53 = sub i64 %18, 1, !dbg !5121
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5121
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5121
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5121

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5121

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub58 = sub i64 %19, 1, !dbg !5121
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5121
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5121
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5121

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5121

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub63 = sub i64 %20, 1, !dbg !5121
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5121
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5121
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5121

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5121

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub68 = sub i64 %21, 1, !dbg !5121
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5121
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5121
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5121

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5121

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub73 = sub i64 %22, 1, !dbg !5121
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5121
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5121
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5121

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5121

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub78 = sub i64 %23, 1, !dbg !5121
  %and79 = and i64 %sub78, 562949953421312, !dbg !5121
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5121
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5121

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5121

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub83 = sub i64 %24, 1, !dbg !5121
  %and84 = and i64 %sub83, 281474976710656, !dbg !5121
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5121
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5121

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5121

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub88 = sub i64 %25, 1, !dbg !5121
  %and89 = and i64 %sub88, 140737488355328, !dbg !5121
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5121
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5121

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5121

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub93 = sub i64 %26, 1, !dbg !5121
  %and94 = and i64 %sub93, 70368744177664, !dbg !5121
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5121
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5121

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5121

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub98 = sub i64 %27, 1, !dbg !5121
  %and99 = and i64 %sub98, 35184372088832, !dbg !5121
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5121
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5121

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5121

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub103 = sub i64 %28, 1, !dbg !5121
  %and104 = and i64 %sub103, 17592186044416, !dbg !5121
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5121
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5121

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5121

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub108 = sub i64 %29, 1, !dbg !5121
  %and109 = and i64 %sub108, 8796093022208, !dbg !5121
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5121
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5121

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5121

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub113 = sub i64 %30, 1, !dbg !5121
  %and114 = and i64 %sub113, 4398046511104, !dbg !5121
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5121
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5121

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5121

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub118 = sub i64 %31, 1, !dbg !5121
  %and119 = and i64 %sub118, 2199023255552, !dbg !5121
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5121
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5121

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5121

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub123 = sub i64 %32, 1, !dbg !5121
  %and124 = and i64 %sub123, 1099511627776, !dbg !5121
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5121
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5121

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5121

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub128 = sub i64 %33, 1, !dbg !5121
  %and129 = and i64 %sub128, 549755813888, !dbg !5121
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5121
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5121

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5121

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub133 = sub i64 %34, 1, !dbg !5121
  %and134 = and i64 %sub133, 274877906944, !dbg !5121
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5121
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5121

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5121

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub138 = sub i64 %35, 1, !dbg !5121
  %and139 = and i64 %sub138, 137438953472, !dbg !5121
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5121
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5121

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5121

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub143 = sub i64 %36, 1, !dbg !5121
  %and144 = and i64 %sub143, 68719476736, !dbg !5121
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5121
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5121

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5121

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub148 = sub i64 %37, 1, !dbg !5121
  %and149 = and i64 %sub148, 34359738368, !dbg !5121
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5121
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5121

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5121

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub153 = sub i64 %38, 1, !dbg !5121
  %and154 = and i64 %sub153, 17179869184, !dbg !5121
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5121
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5121

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5121

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub158 = sub i64 %39, 1, !dbg !5121
  %and159 = and i64 %sub158, 8589934592, !dbg !5121
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5121
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5121

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5121

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub163 = sub i64 %40, 1, !dbg !5121
  %and164 = and i64 %sub163, 4294967296, !dbg !5121
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5121
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5121

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5121

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub168 = sub i64 %41, 1, !dbg !5121
  %and169 = and i64 %sub168, 2147483648, !dbg !5121
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5121
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5121

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5121

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub173 = sub i64 %42, 1, !dbg !5121
  %and174 = and i64 %sub173, 1073741824, !dbg !5121
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5121
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5121

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5121

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub178 = sub i64 %43, 1, !dbg !5121
  %and179 = and i64 %sub178, 536870912, !dbg !5121
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5121
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5121

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5121

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub183 = sub i64 %44, 1, !dbg !5121
  %and184 = and i64 %sub183, 268435456, !dbg !5121
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5121
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5121

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5121

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub188 = sub i64 %45, 1, !dbg !5121
  %and189 = and i64 %sub188, 134217728, !dbg !5121
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5121
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5121

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5121

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub193 = sub i64 %46, 1, !dbg !5121
  %and194 = and i64 %sub193, 67108864, !dbg !5121
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5121
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5121

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5121

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub198 = sub i64 %47, 1, !dbg !5121
  %and199 = and i64 %sub198, 33554432, !dbg !5121
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5121
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5121

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5121

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub203 = sub i64 %48, 1, !dbg !5121
  %and204 = and i64 %sub203, 16777216, !dbg !5121
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5121
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5121

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5121

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub208 = sub i64 %49, 1, !dbg !5121
  %and209 = and i64 %sub208, 8388608, !dbg !5121
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5121
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5121

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5121

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub213 = sub i64 %50, 1, !dbg !5121
  %and214 = and i64 %sub213, 4194304, !dbg !5121
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5121
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5121

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5121

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub218 = sub i64 %51, 1, !dbg !5121
  %and219 = and i64 %sub218, 2097152, !dbg !5121
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5121
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5121

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5121

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub223 = sub i64 %52, 1, !dbg !5121
  %and224 = and i64 %sub223, 1048576, !dbg !5121
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5121
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5121

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5121

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub228 = sub i64 %53, 1, !dbg !5121
  %and229 = and i64 %sub228, 524288, !dbg !5121
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5121
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5121

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5121

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub233 = sub i64 %54, 1, !dbg !5121
  %and234 = and i64 %sub233, 262144, !dbg !5121
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5121
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5121

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5121

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub238 = sub i64 %55, 1, !dbg !5121
  %and239 = and i64 %sub238, 131072, !dbg !5121
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5121
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5121

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5121

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub243 = sub i64 %56, 1, !dbg !5121
  %and244 = and i64 %sub243, 65536, !dbg !5121
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5121
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5121

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5121

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub248 = sub i64 %57, 1, !dbg !5121
  %and249 = and i64 %sub248, 32768, !dbg !5121
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5121
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5121

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5121

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub253 = sub i64 %58, 1, !dbg !5121
  %and254 = and i64 %sub253, 16384, !dbg !5121
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5121
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5121

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5121

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub258 = sub i64 %59, 1, !dbg !5121
  %and259 = and i64 %sub258, 8192, !dbg !5121
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5121
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5121

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5121

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub263 = sub i64 %60, 1, !dbg !5121
  %and264 = and i64 %sub263, 4096, !dbg !5121
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5121
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5121

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5121

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub268 = sub i64 %61, 1, !dbg !5121
  %and269 = and i64 %sub268, 2048, !dbg !5121
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5121
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5121

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5121

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub273 = sub i64 %62, 1, !dbg !5121
  %and274 = and i64 %sub273, 1024, !dbg !5121
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5121
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5121

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5121

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub278 = sub i64 %63, 1, !dbg !5121
  %and279 = and i64 %sub278, 512, !dbg !5121
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5121
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5121

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5121

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub283 = sub i64 %64, 1, !dbg !5121
  %and284 = and i64 %sub283, 256, !dbg !5121
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5121
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5121

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5121

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub288 = sub i64 %65, 1, !dbg !5121
  %and289 = and i64 %sub288, 128, !dbg !5121
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5121
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5121

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5121

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub293 = sub i64 %66, 1, !dbg !5121
  %and294 = and i64 %sub293, 64, !dbg !5121
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5121
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5121

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5121

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub298 = sub i64 %67, 1, !dbg !5121
  %and299 = and i64 %sub298, 32, !dbg !5121
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5121
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5121

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5121

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub303 = sub i64 %68, 1, !dbg !5121
  %and304 = and i64 %sub303, 16, !dbg !5121
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5121
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5121

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5121

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub308 = sub i64 %69, 1, !dbg !5121
  %and309 = and i64 %sub308, 8, !dbg !5121
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5121
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5121

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5121

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub313 = sub i64 %70, 1, !dbg !5121
  %and314 = and i64 %sub313, 4, !dbg !5121
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5121
  %71 = zext i1 %tobool315 to i64, !dbg !5121
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5121
  br label %cond.end, !dbg !5121

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5121
  br label %cond.end317, !dbg !5121

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5121
  br label %cond.end319, !dbg !5121

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5121
  br label %cond.end321, !dbg !5121

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5121
  br label %cond.end323, !dbg !5121

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5121
  br label %cond.end325, !dbg !5121

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5121
  br label %cond.end327, !dbg !5121

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5121
  br label %cond.end329, !dbg !5121

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5121
  br label %cond.end331, !dbg !5121

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5121
  br label %cond.end333, !dbg !5121

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5121
  br label %cond.end335, !dbg !5121

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5121
  br label %cond.end337, !dbg !5121

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5121
  br label %cond.end339, !dbg !5121

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5121
  br label %cond.end341, !dbg !5121

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5121
  br label %cond.end343, !dbg !5121

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5121
  br label %cond.end345, !dbg !5121

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5121
  br label %cond.end347, !dbg !5121

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5121
  br label %cond.end349, !dbg !5121

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5121
  br label %cond.end351, !dbg !5121

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5121
  br label %cond.end353, !dbg !5121

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5121
  br label %cond.end355, !dbg !5121

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5121
  br label %cond.end357, !dbg !5121

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5121
  br label %cond.end359, !dbg !5121

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5121
  br label %cond.end361, !dbg !5121

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5121
  br label %cond.end363, !dbg !5121

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5121
  br label %cond.end365, !dbg !5121

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5121
  br label %cond.end367, !dbg !5121

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5121
  br label %cond.end369, !dbg !5121

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5121
  br label %cond.end371, !dbg !5121

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5121
  br label %cond.end373, !dbg !5121

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5121
  br label %cond.end375, !dbg !5121

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5121
  br label %cond.end377, !dbg !5121

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5121
  br label %cond.end379, !dbg !5121

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5121
  br label %cond.end381, !dbg !5121

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5121
  br label %cond.end383, !dbg !5121

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5121
  br label %cond.end385, !dbg !5121

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5121
  br label %cond.end387, !dbg !5121

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5121
  br label %cond.end389, !dbg !5121

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5121
  br label %cond.end391, !dbg !5121

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5121
  br label %cond.end393, !dbg !5121

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5121
  br label %cond.end395, !dbg !5121

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5121
  br label %cond.end397, !dbg !5121

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5121
  br label %cond.end399, !dbg !5121

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5121
  br label %cond.end401, !dbg !5121

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5121
  br label %cond.end403, !dbg !5121

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5121
  br label %cond.end405, !dbg !5121

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5121
  br label %cond.end407, !dbg !5121

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5121
  br label %cond.end409, !dbg !5121

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5121
  br label %cond.end411, !dbg !5121

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5121
  br label %cond.end413, !dbg !5121

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5121
  br label %cond.end415, !dbg !5121

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5121
  br label %cond.end417, !dbg !5121

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5121
  br label %cond.end419, !dbg !5121

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5121
  br label %cond.end421, !dbg !5121

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5121
  br label %cond.end423, !dbg !5121

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5121
  br label %cond.end425, !dbg !5121

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5121
  br label %cond.end427, !dbg !5121

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5121
  br label %cond.end429, !dbg !5121

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5121
  br label %cond.end431, !dbg !5121

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5121
  br label %cond.end433, !dbg !5121

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5121
  br label %cond.end435, !dbg !5121

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5121
  br label %cond.end437, !dbg !5121

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5121
  br label %cond.end440, !dbg !5121

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5121

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5121
  br label %cond.end444, !dbg !5121

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5121
  %sub443 = sub i64 %72, 1, !dbg !5121
  %call = call i32 @__ilog2_u64(i64 %sub443) #12, !dbg !5121
  br label %cond.end444, !dbg !5121

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5121
  %sub446 = sub i32 %cond445, 12, !dbg !5122
  %add = add i32 %sub446, 1, !dbg !5123
  store i32 %add, i32* %retval, align 4, !dbg !5124
  br label %return, !dbg !5124

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5125
  %dec = add i64 %73, -1, !dbg !5125
  store i64 %dec, i64* %size.addr, align 8, !dbg !5125
  %74 = load i64, i64* %size.addr, align 8, !dbg !5126
  %shr = lshr i64 %74, 12, !dbg !5126
  store i64 %shr, i64* %size.addr, align 8, !dbg !5126
  %75 = load i64, i64* %size.addr, align 8, !dbg !5127
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5104
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5128
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5129
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #14, !dbg !5128, !srcloc !5130
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5128
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5131
  %add.i = add i32 %79, 1, !dbg !5132
  store i32 %add.i, i32* %retval, align 4, !dbg !5133
  br label %return, !dbg !5133

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5134
  ret i32 %80, !dbg !5134
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !5135 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5096, metadata !DIExpression()), !dbg !5139
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5103, metadata !DIExpression()), !dbg !5141
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5142, metadata !DIExpression()), !dbg !5143
  %0 = load i64, i64* %n.addr, align 8, !dbg !5144
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5141
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5145
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5146
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #14, !dbg !5145, !srcloc !5130
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5145
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5147
  %add.i = add i32 %4, 1, !dbg !5148
  %sub = sub i32 %add.i, 1, !dbg !5149
  ret i32 %sub, !dbg !5150
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #2 !dbg !5151 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5155, metadata !DIExpression()), !dbg !5156
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5157, metadata !DIExpression()), !dbg !5158
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5159, metadata !DIExpression()), !dbg !5160
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5161, metadata !DIExpression()), !dbg !5162
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5163
  ret i8* %0, !dbg !5164
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_dio_update_state(%struct.comedi_subdevice*, i32*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ni6501_port_command(%struct.comedi_device* %dev, i32 %command, i32 %val, i8* %bitmap) #2 !dbg !5165 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %command.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %bitmap.addr = alloca i8*, align 8
  %usb = alloca %struct.usb_device*, align 8
  %devpriv = alloca %struct.ni6501_private*, align 8
  %request_size = alloca i32, align 4
  %response_size = alloca i32, align 4
  %tx = alloca i8*, align 8
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5168, metadata !DIExpression()), !dbg !5169
  store i32 %command, i32* %command.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %command.addr, metadata !5170, metadata !DIExpression()), !dbg !5171
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5172, metadata !DIExpression()), !dbg !5173
  store i8* %bitmap, i8** %bitmap.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bitmap.addr, metadata !5174, metadata !DIExpression()), !dbg !5175
  call void @llvm.dbg.declare(metadata %struct.usb_device** %usb, metadata !5176, metadata !DIExpression()), !dbg !5390
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5391
  %call = call %struct.usb_device* @comedi_to_usb_dev(%struct.comedi_device* %0) #9, !dbg !5392
  store %struct.usb_device* %call, %struct.usb_device** %usb, align 8, !dbg !5390
  call void @llvm.dbg.declare(metadata %struct.ni6501_private** %devpriv, metadata !5393, metadata !DIExpression()), !dbg !5394
  %1 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5395
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %1, i32 0, i32 3, !dbg !5396
  %2 = load i8*, i8** %private, align 8, !dbg !5396
  %3 = bitcast i8* %2 to %struct.ni6501_private*, !dbg !5395
  store %struct.ni6501_private* %3, %struct.ni6501_private** %devpriv, align 8, !dbg !5394
  call void @llvm.dbg.declare(metadata i32* %request_size, metadata !5397, metadata !DIExpression()), !dbg !5398
  call void @llvm.dbg.declare(metadata i32* %response_size, metadata !5399, metadata !DIExpression()), !dbg !5400
  call void @llvm.dbg.declare(metadata i8** %tx, metadata !5401, metadata !DIExpression()), !dbg !5402
  %4 = load %struct.ni6501_private*, %struct.ni6501_private** %devpriv, align 8, !dbg !5403
  %usb_tx_buf = getelementptr inbounds %struct.ni6501_private, %struct.ni6501_private* %4, i32 0, i32 4, !dbg !5404
  %5 = load i8*, i8** %usb_tx_buf, align 8, !dbg !5404
  store i8* %5, i8** %tx, align 8, !dbg !5402
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5405, metadata !DIExpression()), !dbg !5406
  %6 = load i32, i32* %command.addr, align 4, !dbg !5407
  %cmp = icmp ne i32 %6, 2, !dbg !5409
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5410

land.lhs.true:                                    ; preds = %entry
  %7 = load i8*, i8** %bitmap.addr, align 8, !dbg !5411
  %tobool = icmp ne i8* %7, null, !dbg !5411
  br i1 %tobool, label %if.end, label %if.then, !dbg !5412

if.then:                                          ; preds = %land.lhs.true
  store i32 -22, i32* %retval, align 4, !dbg !5413
  br label %return, !dbg !5413

if.end:                                           ; preds = %land.lhs.true, %entry
  %8 = load %struct.ni6501_private*, %struct.ni6501_private** %devpriv, align 8, !dbg !5414
  %mut = getelementptr inbounds %struct.ni6501_private, %struct.ni6501_private* %8, i32 0, i32 2, !dbg !5415
  call void @mutex_lock(%struct.mutex* %mut) #9, !dbg !5416
  %9 = load i32, i32* %command.addr, align 4, !dbg !5417
  switch i32 %9, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb8
  ], !dbg !5418

sw.bb:                                            ; preds = %if.end
  store i32 16, i32* %request_size, align 4, !dbg !5419
  store i32 16, i32* %response_size, align 4, !dbg !5421
  %10 = load i8*, i8** %tx, align 8, !dbg !5422
  %11 = load i32, i32* %request_size, align 4, !dbg !5423
  %conv = sext i32 %11 to i64, !dbg !5423
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 16 getelementptr inbounds ([16 x i8], [16 x i8]* @READ_PORT_REQUEST, i64 0, i64 0), i64 %conv, i1 false), !dbg !5424
  %12 = load i32, i32* %val.addr, align 4, !dbg !5425
  %and = and i32 %12, 255, !dbg !5426
  %conv1 = trunc i32 %and to i8, !dbg !5425
  %13 = load i8*, i8** %tx, align 8, !dbg !5427
  %arrayidx = getelementptr i8, i8* %13, i64 14, !dbg !5427
  store i8 %conv1, i8* %arrayidx, align 1, !dbg !5428
  br label %sw.epilog, !dbg !5429

sw.bb2:                                           ; preds = %if.end
  store i32 20, i32* %request_size, align 4, !dbg !5430
  store i32 12, i32* %response_size, align 4, !dbg !5431
  %14 = load i8*, i8** %tx, align 8, !dbg !5432
  %15 = load i32, i32* %request_size, align 4, !dbg !5433
  %conv3 = sext i32 %15 to i64, !dbg !5433
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %14, i8* align 16 getelementptr inbounds ([20 x i8], [20 x i8]* @WRITE_PORT_REQUEST, i64 0, i64 0), i64 %conv3, i1 false), !dbg !5434
  %16 = load i32, i32* %val.addr, align 4, !dbg !5435
  %and4 = and i32 %16, 255, !dbg !5436
  %conv5 = trunc i32 %and4 to i8, !dbg !5435
  %17 = load i8*, i8** %tx, align 8, !dbg !5437
  %arrayidx6 = getelementptr i8, i8* %17, i64 14, !dbg !5437
  store i8 %conv5, i8* %arrayidx6, align 1, !dbg !5438
  %18 = load i8*, i8** %bitmap.addr, align 8, !dbg !5439
  %19 = load i8, i8* %18, align 1, !dbg !5440
  %20 = load i8*, i8** %tx, align 8, !dbg !5441
  %arrayidx7 = getelementptr i8, i8* %20, i64 17, !dbg !5441
  store i8 %19, i8* %arrayidx7, align 1, !dbg !5442
  br label %sw.epilog, !dbg !5443

sw.bb8:                                           ; preds = %if.end
  store i32 24, i32* %request_size, align 4, !dbg !5444
  store i32 12, i32* %response_size, align 4, !dbg !5445
  %21 = load i8*, i8** %tx, align 8, !dbg !5446
  %22 = load i32, i32* %request_size, align 4, !dbg !5447
  %conv9 = sext i32 %22 to i64, !dbg !5447
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %21, i8* align 16 getelementptr inbounds ([24 x i8], [24 x i8]* @SET_PORT_DIR_REQUEST, i64 0, i64 0), i64 %conv9, i1 false), !dbg !5448
  %23 = load i32, i32* %val.addr, align 4, !dbg !5449
  %and10 = and i32 %23, 255, !dbg !5450
  %conv11 = trunc i32 %and10 to i8, !dbg !5449
  %24 = load i8*, i8** %tx, align 8, !dbg !5451
  %arrayidx12 = getelementptr i8, i8* %24, i64 14, !dbg !5451
  store i8 %conv11, i8* %arrayidx12, align 1, !dbg !5452
  %25 = load i32, i32* %val.addr, align 4, !dbg !5453
  %shr = lshr i32 %25, 8, !dbg !5454
  %and13 = and i32 %shr, 255, !dbg !5455
  %conv14 = trunc i32 %and13 to i8, !dbg !5456
  %26 = load i8*, i8** %tx, align 8, !dbg !5457
  %arrayidx15 = getelementptr i8, i8* %26, i64 15, !dbg !5457
  store i8 %conv14, i8* %arrayidx15, align 1, !dbg !5458
  %27 = load i32, i32* %val.addr, align 4, !dbg !5459
  %shr16 = lshr i32 %27, 16, !dbg !5460
  %and17 = and i32 %shr16, 255, !dbg !5461
  %conv18 = trunc i32 %and17 to i8, !dbg !5462
  %28 = load i8*, i8** %tx, align 8, !dbg !5463
  %arrayidx19 = getelementptr i8, i8* %28, i64 16, !dbg !5463
  store i8 %conv18, i8* %arrayidx19, align 1, !dbg !5464
  br label %sw.epilog, !dbg !5465

sw.default:                                       ; preds = %if.end
  store i32 -22, i32* %ret, align 4, !dbg !5466
  br label %end, !dbg !5467

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb2, %sw.bb
  %29 = load %struct.usb_device*, %struct.usb_device** %usb, align 8, !dbg !5468
  %30 = load %struct.usb_device*, %struct.usb_device** %usb, align 8, !dbg !5469
  %31 = load %struct.ni6501_private*, %struct.ni6501_private** %devpriv, align 8, !dbg !5469
  %ep_tx = getelementptr inbounds %struct.ni6501_private, %struct.ni6501_private* %31, i32 0, i32 1, !dbg !5469
  %32 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep_tx, align 8, !dbg !5469
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %32, i32 0, i32 2, !dbg !5469
  %33 = load i8, i8* %bEndpointAddress, align 1, !dbg !5469
  %conv20 = zext i8 %33 to i32, !dbg !5469
  %call21 = call i32 @__create_pipe(%struct.usb_device* %30, i32 %conv20) #9, !dbg !5469
  %or = or i32 -1073741824, %call21, !dbg !5469
  %34 = load %struct.ni6501_private*, %struct.ni6501_private** %devpriv, align 8, !dbg !5470
  %usb_tx_buf22 = getelementptr inbounds %struct.ni6501_private, %struct.ni6501_private* %34, i32 0, i32 4, !dbg !5471
  %35 = load i8*, i8** %usb_tx_buf22, align 8, !dbg !5471
  %36 = load i32, i32* %request_size, align 4, !dbg !5472
  %call23 = call i32 @usb_bulk_msg(%struct.usb_device* %29, i32 %or, i8* %35, i32 %36, i32* null, i32 1000) #9, !dbg !5473
  store i32 %call23, i32* %ret, align 4, !dbg !5474
  %37 = load i32, i32* %ret, align 4, !dbg !5475
  %tobool24 = icmp ne i32 %37, 0, !dbg !5475
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !5477

if.then25:                                        ; preds = %sw.epilog
  br label %end, !dbg !5478

if.end26:                                         ; preds = %sw.epilog
  %38 = load %struct.usb_device*, %struct.usb_device** %usb, align 8, !dbg !5479
  %39 = load %struct.usb_device*, %struct.usb_device** %usb, align 8, !dbg !5480
  %40 = load %struct.ni6501_private*, %struct.ni6501_private** %devpriv, align 8, !dbg !5480
  %ep_rx = getelementptr inbounds %struct.ni6501_private, %struct.ni6501_private* %40, i32 0, i32 0, !dbg !5480
  %41 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep_rx, align 8, !dbg !5480
  %bEndpointAddress27 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %41, i32 0, i32 2, !dbg !5480
  %42 = load i8, i8* %bEndpointAddress27, align 1, !dbg !5480
  %conv28 = zext i8 %42 to i32, !dbg !5480
  %call29 = call i32 @__create_pipe(%struct.usb_device* %39, i32 %conv28) #9, !dbg !5480
  %or30 = or i32 -1073741824, %call29, !dbg !5480
  %or31 = or i32 %or30, 128, !dbg !5480
  %43 = load %struct.ni6501_private*, %struct.ni6501_private** %devpriv, align 8, !dbg !5481
  %usb_rx_buf = getelementptr inbounds %struct.ni6501_private, %struct.ni6501_private* %43, i32 0, i32 3, !dbg !5482
  %44 = load i8*, i8** %usb_rx_buf, align 8, !dbg !5482
  %45 = load i32, i32* %response_size, align 4, !dbg !5483
  %call32 = call i32 @usb_bulk_msg(%struct.usb_device* %38, i32 %or31, i8* %44, i32 %45, i32* null, i32 1000) #9, !dbg !5484
  store i32 %call32, i32* %ret, align 4, !dbg !5485
  %46 = load i32, i32* %ret, align 4, !dbg !5486
  %tobool33 = icmp ne i32 %46, 0, !dbg !5486
  br i1 %tobool33, label %if.then34, label %if.end35, !dbg !5488

if.then34:                                        ; preds = %if.end26
  br label %end, !dbg !5489

if.end35:                                         ; preds = %if.end26
  %47 = load i32, i32* %command.addr, align 4, !dbg !5490
  %cmp36 = icmp eq i32 %47, 0, !dbg !5492
  br i1 %cmp36, label %if.then38, label %if.else, !dbg !5493

if.then38:                                        ; preds = %if.end35
  %48 = load %struct.ni6501_private*, %struct.ni6501_private** %devpriv, align 8, !dbg !5494
  %usb_rx_buf39 = getelementptr inbounds %struct.ni6501_private, %struct.ni6501_private* %48, i32 0, i32 3, !dbg !5496
  %49 = load i8*, i8** %usb_rx_buf39, align 8, !dbg !5496
  %arrayidx40 = getelementptr i8, i8* %49, i64 14, !dbg !5494
  %50 = load i8, i8* %arrayidx40, align 1, !dbg !5494
  %51 = load i8*, i8** %bitmap.addr, align 8, !dbg !5497
  store i8 %50, i8* %51, align 1, !dbg !5498
  %52 = load %struct.ni6501_private*, %struct.ni6501_private** %devpriv, align 8, !dbg !5499
  %usb_rx_buf41 = getelementptr inbounds %struct.ni6501_private, %struct.ni6501_private* %52, i32 0, i32 3, !dbg !5500
  %53 = load i8*, i8** %usb_rx_buf41, align 8, !dbg !5500
  %arrayidx42 = getelementptr i8, i8* %53, i64 14, !dbg !5499
  store i8 0, i8* %arrayidx42, align 1, !dbg !5501
  %54 = load %struct.ni6501_private*, %struct.ni6501_private** %devpriv, align 8, !dbg !5502
  %usb_rx_buf43 = getelementptr inbounds %struct.ni6501_private, %struct.ni6501_private* %54, i32 0, i32 3, !dbg !5504
  %55 = load i8*, i8** %usb_rx_buf43, align 8, !dbg !5504
  %call44 = call i32 @memcmp(i8* %55, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @READ_PORT_RESPONSE, i64 0, i64 0), i64 16) #9, !dbg !5505
  %tobool45 = icmp ne i32 %call44, 0, !dbg !5505
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !5506

if.then46:                                        ; preds = %if.then38
  store i32 -22, i32* %ret, align 4, !dbg !5507
  br label %if.end47, !dbg !5509

if.end47:                                         ; preds = %if.then46, %if.then38
  br label %if.end53, !dbg !5510

if.else:                                          ; preds = %if.end35
  %56 = load %struct.ni6501_private*, %struct.ni6501_private** %devpriv, align 8, !dbg !5511
  %usb_rx_buf48 = getelementptr inbounds %struct.ni6501_private, %struct.ni6501_private* %56, i32 0, i32 3, !dbg !5513
  %57 = load i8*, i8** %usb_rx_buf48, align 8, !dbg !5513
  %call49 = call i32 @memcmp(i8* %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @GENERIC_RESPONSE, i64 0, i64 0), i64 12) #9, !dbg !5514
  %tobool50 = icmp ne i32 %call49, 0, !dbg !5514
  br i1 %tobool50, label %if.then51, label %if.end52, !dbg !5515

if.then51:                                        ; preds = %if.else
  store i32 -22, i32* %ret, align 4, !dbg !5516
  br label %if.end52, !dbg !5518

if.end52:                                         ; preds = %if.then51, %if.else
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.end47
  br label %end, !dbg !5519

end:                                              ; preds = %if.end53, %if.then34, %if.then25, %sw.default
  call void @llvm.dbg.label(metadata !5520), !dbg !5521
  %58 = load %struct.ni6501_private*, %struct.ni6501_private** %devpriv, align 8, !dbg !5522
  %mut54 = getelementptr inbounds %struct.ni6501_private, %struct.ni6501_private* %58, i32 0, i32 2, !dbg !5523
  call void @mutex_unlock(%struct.mutex* %mut54) #9, !dbg !5524
  %59 = load i32, i32* %ret, align 4, !dbg !5525
  store i32 %59, i32* %retval, align 4, !dbg !5526
  br label %return, !dbg !5526

return:                                           ; preds = %end, %if.then
  %60 = load i32, i32* %retval, align 4, !dbg !5527
  ret i32 %60, !dbg !5527
}

; Function Attrs: noredzone
declare dso_local %struct.usb_device* @comedi_to_usb_dev(%struct.comedi_device*) #1

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noredzone
declare dso_local i32 @usb_bulk_msg(%struct.usb_device*, i32, i8*, i32, i32*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__create_pipe(%struct.usb_device* %dev, i32 %endpoint) #2 !dbg !5528 {
entry:
  %dev.addr = alloca %struct.usb_device*, align 8
  %endpoint.addr = alloca i32, align 4
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5531, metadata !DIExpression()), !dbg !5532
  store i32 %endpoint, i32* %endpoint.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %endpoint.addr, metadata !5533, metadata !DIExpression()), !dbg !5534
  %0 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5535
  %devnum = getelementptr inbounds %struct.usb_device, %struct.usb_device* %0, i32 0, i32 0, !dbg !5536
  %1 = load i32, i32* %devnum, align 8, !dbg !5536
  %shl = shl i32 %1, 8, !dbg !5537
  %2 = load i32, i32* %endpoint.addr, align 4, !dbg !5538
  %shl1 = shl i32 %2, 15, !dbg !5539
  %or = or i32 %shl, %shl1, !dbg !5540
  ret i32 %or, !dbg !5541
}

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_dio_insn_config(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ni6501_counter_command(%struct.comedi_device* %dev, i32 %command, i32* %val) #2 !dbg !5542 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %command.addr = alloca i32, align 4
  %val.addr = alloca i32*, align 8
  %usb = alloca %struct.usb_device*, align 8
  %devpriv = alloca %struct.ni6501_private*, align 8
  %request_size = alloca i32, align 4
  %response_size = alloca i32, align 4
  %tx = alloca i8*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5545, metadata !DIExpression()), !dbg !5546
  store i32 %command, i32* %command.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %command.addr, metadata !5547, metadata !DIExpression()), !dbg !5548
  store i32* %val, i32** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %val.addr, metadata !5549, metadata !DIExpression()), !dbg !5550
  call void @llvm.dbg.declare(metadata %struct.usb_device** %usb, metadata !5551, metadata !DIExpression()), !dbg !5552
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5553
  %call = call %struct.usb_device* @comedi_to_usb_dev(%struct.comedi_device* %0) #9, !dbg !5554
  store %struct.usb_device* %call, %struct.usb_device** %usb, align 8, !dbg !5552
  call void @llvm.dbg.declare(metadata %struct.ni6501_private** %devpriv, metadata !5555, metadata !DIExpression()), !dbg !5556
  %1 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5557
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %1, i32 0, i32 3, !dbg !5558
  %2 = load i8*, i8** %private, align 8, !dbg !5558
  %3 = bitcast i8* %2 to %struct.ni6501_private*, !dbg !5557
  store %struct.ni6501_private* %3, %struct.ni6501_private** %devpriv, align 8, !dbg !5556
  call void @llvm.dbg.declare(metadata i32* %request_size, metadata !5559, metadata !DIExpression()), !dbg !5560
  call void @llvm.dbg.declare(metadata i32* %response_size, metadata !5561, metadata !DIExpression()), !dbg !5562
  call void @llvm.dbg.declare(metadata i8** %tx, metadata !5563, metadata !DIExpression()), !dbg !5564
  %4 = load %struct.ni6501_private*, %struct.ni6501_private** %devpriv, align 8, !dbg !5565
  %usb_tx_buf = getelementptr inbounds %struct.ni6501_private, %struct.ni6501_private* %4, i32 0, i32 4, !dbg !5566
  %5 = load i8*, i8** %usb_tx_buf, align 8, !dbg !5566
  store i8* %5, i8** %tx, align 8, !dbg !5564
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5567, metadata !DIExpression()), !dbg !5568
  %6 = load i32, i32* %command.addr, align 4, !dbg !5569
  %cmp = icmp eq i32 %6, 5, !dbg !5571
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !5572

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32, i32* %command.addr, align 4, !dbg !5573
  %cmp1 = icmp eq i32 %7, 6, !dbg !5574
  br i1 %cmp1, label %land.lhs.true, label %if.end, !dbg !5575

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %8 = load i32*, i32** %val.addr, align 8, !dbg !5576
  %tobool = icmp ne i32* %8, null, !dbg !5576
  br i1 %tobool, label %if.end, label %if.then, !dbg !5577

if.then:                                          ; preds = %land.lhs.true
  store i32 -22, i32* %retval, align 4, !dbg !5578
  br label %return, !dbg !5578

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %9 = load %struct.ni6501_private*, %struct.ni6501_private** %devpriv, align 8, !dbg !5579
  %mut = getelementptr inbounds %struct.ni6501_private, %struct.ni6501_private* %9, i32 0, i32 2, !dbg !5580
  call void @mutex_lock(%struct.mutex* %mut) #9, !dbg !5581
  %10 = load i32, i32* %command.addr, align 4, !dbg !5582
  switch i32 %10, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb2
    i32 5, label %sw.bb4
    i32 6, label %sw.bb6
  ], !dbg !5583

sw.bb:                                            ; preds = %if.end
  store i32 12, i32* %request_size, align 4, !dbg !5584
  store i32 12, i32* %response_size, align 4, !dbg !5586
  %11 = load i8*, i8** %tx, align 8, !dbg !5587
  %12 = load i32, i32* %request_size, align 4, !dbg !5588
  %conv = sext i32 %12 to i64, !dbg !5588
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 getelementptr inbounds ([12 x i8], [12 x i8]* @START_COUNTER_REQUEST, i64 0, i64 0), i64 %conv, i1 false), !dbg !5589
  br label %sw.epilog, !dbg !5590

sw.bb2:                                           ; preds = %if.end
  store i32 12, i32* %request_size, align 4, !dbg !5591
  store i32 12, i32* %response_size, align 4, !dbg !5592
  %13 = load i8*, i8** %tx, align 8, !dbg !5593
  %14 = load i32, i32* %request_size, align 4, !dbg !5594
  %conv3 = sext i32 %14 to i64, !dbg !5594
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 getelementptr inbounds ([12 x i8], [12 x i8]* @STOP_COUNTER_REQUEST, i64 0, i64 0), i64 %conv3, i1 false), !dbg !5595
  br label %sw.epilog, !dbg !5596

sw.bb4:                                           ; preds = %if.end
  store i32 12, i32* %request_size, align 4, !dbg !5597
  store i32 16, i32* %response_size, align 4, !dbg !5598
  %15 = load i8*, i8** %tx, align 8, !dbg !5599
  %16 = load i32, i32* %request_size, align 4, !dbg !5600
  %conv5 = sext i32 %16 to i64, !dbg !5600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 getelementptr inbounds ([12 x i8], [12 x i8]* @READ_COUNTER_REQUEST, i64 0, i64 0), i64 %conv5, i1 false), !dbg !5601
  br label %sw.epilog, !dbg !5602

sw.bb6:                                           ; preds = %if.end
  store i32 16, i32* %request_size, align 4, !dbg !5603
  store i32 12, i32* %response_size, align 4, !dbg !5604
  %17 = load i8*, i8** %tx, align 8, !dbg !5605
  %18 = load i32, i32* %request_size, align 4, !dbg !5606
  %conv7 = sext i32 %18 to i64, !dbg !5606
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 16 getelementptr inbounds ([16 x i8], [16 x i8]* @WRITE_COUNTER_REQUEST, i64 0, i64 0), i64 %conv7, i1 false), !dbg !5607
  %19 = load i32*, i32** %val.addr, align 8, !dbg !5608
  %20 = load i32, i32* %19, align 4, !dbg !5608
  %21 = call i1 @llvm.is.constant.i32(i32 %20), !dbg !5608
  br i1 %21, label %cond.true, label %cond.false, !dbg !5608

cond.true:                                        ; preds = %sw.bb6
  %22 = load i32*, i32** %val.addr, align 8, !dbg !5608
  %23 = load i32, i32* %22, align 4, !dbg !5608
  %and = and i32 %23, 255, !dbg !5608
  %shl = shl i32 %and, 24, !dbg !5608
  %24 = load i32*, i32** %val.addr, align 8, !dbg !5608
  %25 = load i32, i32* %24, align 4, !dbg !5608
  %and8 = and i32 %25, 65280, !dbg !5608
  %shl9 = shl i32 %and8, 8, !dbg !5608
  %or = or i32 %shl, %shl9, !dbg !5608
  %26 = load i32*, i32** %val.addr, align 8, !dbg !5608
  %27 = load i32, i32* %26, align 4, !dbg !5608
  %and10 = and i32 %27, 16711680, !dbg !5608
  %shr = lshr i32 %and10, 8, !dbg !5608
  %or11 = or i32 %or, %shr, !dbg !5608
  %28 = load i32*, i32** %val.addr, align 8, !dbg !5608
  %29 = load i32, i32* %28, align 4, !dbg !5608
  %and12 = and i32 %29, -16777216, !dbg !5608
  %shr13 = lshr i32 %and12, 24, !dbg !5608
  %or14 = or i32 %or11, %shr13, !dbg !5608
  br label %cond.end, !dbg !5608

cond.false:                                       ; preds = %sw.bb6
  %30 = load i32*, i32** %val.addr, align 8, !dbg !5608
  %31 = load i32, i32* %30, align 4, !dbg !5608
  %call15 = call i32 @__fswab32(i32 %31) #12, !dbg !5608
  br label %cond.end, !dbg !5608

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or14, %cond.true ], [ %call15, %cond.false ], !dbg !5608
  %32 = load i8*, i8** %tx, align 8, !dbg !5609
  %arrayidx = getelementptr i8, i8* %32, i64 12, !dbg !5609
  %33 = bitcast i8* %arrayidx to i32*, !dbg !5610
  store i32 %cond, i32* %33, align 4, !dbg !5611
  br label %sw.epilog, !dbg !5612

sw.default:                                       ; preds = %if.end
  store i32 -22, i32* %ret, align 4, !dbg !5613
  br label %end, !dbg !5614

sw.epilog:                                        ; preds = %cond.end, %sw.bb4, %sw.bb2, %sw.bb
  %34 = load %struct.usb_device*, %struct.usb_device** %usb, align 8, !dbg !5615
  %35 = load %struct.usb_device*, %struct.usb_device** %usb, align 8, !dbg !5616
  %36 = load %struct.ni6501_private*, %struct.ni6501_private** %devpriv, align 8, !dbg !5616
  %ep_tx = getelementptr inbounds %struct.ni6501_private, %struct.ni6501_private* %36, i32 0, i32 1, !dbg !5616
  %37 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep_tx, align 8, !dbg !5616
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %37, i32 0, i32 2, !dbg !5616
  %38 = load i8, i8* %bEndpointAddress, align 1, !dbg !5616
  %conv16 = zext i8 %38 to i32, !dbg !5616
  %call17 = call i32 @__create_pipe(%struct.usb_device* %35, i32 %conv16) #9, !dbg !5616
  %or18 = or i32 -1073741824, %call17, !dbg !5616
  %39 = load %struct.ni6501_private*, %struct.ni6501_private** %devpriv, align 8, !dbg !5617
  %usb_tx_buf19 = getelementptr inbounds %struct.ni6501_private, %struct.ni6501_private* %39, i32 0, i32 4, !dbg !5618
  %40 = load i8*, i8** %usb_tx_buf19, align 8, !dbg !5618
  %41 = load i32, i32* %request_size, align 4, !dbg !5619
  %call20 = call i32 @usb_bulk_msg(%struct.usb_device* %34, i32 %or18, i8* %40, i32 %41, i32* null, i32 1000) #9, !dbg !5620
  store i32 %call20, i32* %ret, align 4, !dbg !5621
  %42 = load i32, i32* %ret, align 4, !dbg !5622
  %tobool21 = icmp ne i32 %42, 0, !dbg !5622
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !5624

if.then22:                                        ; preds = %sw.epilog
  br label %end, !dbg !5625

if.end23:                                         ; preds = %sw.epilog
  %43 = load %struct.usb_device*, %struct.usb_device** %usb, align 8, !dbg !5626
  %44 = load %struct.usb_device*, %struct.usb_device** %usb, align 8, !dbg !5627
  %45 = load %struct.ni6501_private*, %struct.ni6501_private** %devpriv, align 8, !dbg !5627
  %ep_rx = getelementptr inbounds %struct.ni6501_private, %struct.ni6501_private* %45, i32 0, i32 0, !dbg !5627
  %46 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep_rx, align 8, !dbg !5627
  %bEndpointAddress24 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %46, i32 0, i32 2, !dbg !5627
  %47 = load i8, i8* %bEndpointAddress24, align 1, !dbg !5627
  %conv25 = zext i8 %47 to i32, !dbg !5627
  %call26 = call i32 @__create_pipe(%struct.usb_device* %44, i32 %conv25) #9, !dbg !5627
  %or27 = or i32 -1073741824, %call26, !dbg !5627
  %or28 = or i32 %or27, 128, !dbg !5627
  %48 = load %struct.ni6501_private*, %struct.ni6501_private** %devpriv, align 8, !dbg !5628
  %usb_rx_buf = getelementptr inbounds %struct.ni6501_private, %struct.ni6501_private* %48, i32 0, i32 3, !dbg !5629
  %49 = load i8*, i8** %usb_rx_buf, align 8, !dbg !5629
  %50 = load i32, i32* %response_size, align 4, !dbg !5630
  %call29 = call i32 @usb_bulk_msg(%struct.usb_device* %43, i32 %or28, i8* %49, i32 %50, i32* null, i32 1000) #9, !dbg !5631
  store i32 %call29, i32* %ret, align 4, !dbg !5632
  %51 = load i32, i32* %ret, align 4, !dbg !5633
  %tobool30 = icmp ne i32 %51, 0, !dbg !5633
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !5635

if.then31:                                        ; preds = %if.end23
  br label %end, !dbg !5636

if.end32:                                         ; preds = %if.end23
  %52 = load i32, i32* %command.addr, align 4, !dbg !5637
  %cmp33 = icmp eq i32 %52, 5, !dbg !5639
  br i1 %cmp33, label %if.then35, label %if.else, !dbg !5640

if.then35:                                        ; preds = %if.end32
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5641, metadata !DIExpression()), !dbg !5643
  %53 = load %struct.ni6501_private*, %struct.ni6501_private** %devpriv, align 8, !dbg !5644
  %usb_rx_buf36 = getelementptr inbounds %struct.ni6501_private, %struct.ni6501_private* %53, i32 0, i32 3, !dbg !5644
  %54 = load i8*, i8** %usb_rx_buf36, align 8, !dbg !5644
  %arrayidx37 = getelementptr i8, i8* %54, i64 12, !dbg !5644
  %55 = bitcast i8* %arrayidx37 to i32*, !dbg !5644
  %56 = load i32, i32* %55, align 4, !dbg !5644
  %57 = call i1 @llvm.is.constant.i32(i32 %56), !dbg !5644
  br i1 %57, label %cond.true38, label %cond.false58, !dbg !5644

cond.true38:                                      ; preds = %if.then35
  %58 = load %struct.ni6501_private*, %struct.ni6501_private** %devpriv, align 8, !dbg !5644
  %usb_rx_buf39 = getelementptr inbounds %struct.ni6501_private, %struct.ni6501_private* %58, i32 0, i32 3, !dbg !5644
  %59 = load i8*, i8** %usb_rx_buf39, align 8, !dbg !5644
  %arrayidx40 = getelementptr i8, i8* %59, i64 12, !dbg !5644
  %60 = bitcast i8* %arrayidx40 to i32*, !dbg !5644
  %61 = load i32, i32* %60, align 4, !dbg !5644
  %and41 = and i32 %61, 255, !dbg !5644
  %shl42 = shl i32 %and41, 24, !dbg !5644
  %62 = load %struct.ni6501_private*, %struct.ni6501_private** %devpriv, align 8, !dbg !5644
  %usb_rx_buf43 = getelementptr inbounds %struct.ni6501_private, %struct.ni6501_private* %62, i32 0, i32 3, !dbg !5644
  %63 = load i8*, i8** %usb_rx_buf43, align 8, !dbg !5644
  %arrayidx44 = getelementptr i8, i8* %63, i64 12, !dbg !5644
  %64 = bitcast i8* %arrayidx44 to i32*, !dbg !5644
  %65 = load i32, i32* %64, align 4, !dbg !5644
  %and45 = and i32 %65, 65280, !dbg !5644
  %shl46 = shl i32 %and45, 8, !dbg !5644
  %or47 = or i32 %shl42, %shl46, !dbg !5644
  %66 = load %struct.ni6501_private*, %struct.ni6501_private** %devpriv, align 8, !dbg !5644
  %usb_rx_buf48 = getelementptr inbounds %struct.ni6501_private, %struct.ni6501_private* %66, i32 0, i32 3, !dbg !5644
  %67 = load i8*, i8** %usb_rx_buf48, align 8, !dbg !5644
  %arrayidx49 = getelementptr i8, i8* %67, i64 12, !dbg !5644
  %68 = bitcast i8* %arrayidx49 to i32*, !dbg !5644
  %69 = load i32, i32* %68, align 4, !dbg !5644
  %and50 = and i32 %69, 16711680, !dbg !5644
  %shr51 = lshr i32 %and50, 8, !dbg !5644
  %or52 = or i32 %or47, %shr51, !dbg !5644
  %70 = load %struct.ni6501_private*, %struct.ni6501_private** %devpriv, align 8, !dbg !5644
  %usb_rx_buf53 = getelementptr inbounds %struct.ni6501_private, %struct.ni6501_private* %70, i32 0, i32 3, !dbg !5644
  %71 = load i8*, i8** %usb_rx_buf53, align 8, !dbg !5644
  %arrayidx54 = getelementptr i8, i8* %71, i64 12, !dbg !5644
  %72 = bitcast i8* %arrayidx54 to i32*, !dbg !5644
  %73 = load i32, i32* %72, align 4, !dbg !5644
  %and55 = and i32 %73, -16777216, !dbg !5644
  %shr56 = lshr i32 %and55, 24, !dbg !5644
  %or57 = or i32 %or52, %shr56, !dbg !5644
  br label %cond.end62, !dbg !5644

cond.false58:                                     ; preds = %if.then35
  %74 = load %struct.ni6501_private*, %struct.ni6501_private** %devpriv, align 8, !dbg !5644
  %usb_rx_buf59 = getelementptr inbounds %struct.ni6501_private, %struct.ni6501_private* %74, i32 0, i32 3, !dbg !5644
  %75 = load i8*, i8** %usb_rx_buf59, align 8, !dbg !5644
  %arrayidx60 = getelementptr i8, i8* %75, i64 12, !dbg !5644
  %76 = bitcast i8* %arrayidx60 to i32*, !dbg !5644
  %77 = load i32, i32* %76, align 4, !dbg !5644
  %call61 = call i32 @__fswab32(i32 %77) #12, !dbg !5644
  br label %cond.end62, !dbg !5644

cond.end62:                                       ; preds = %cond.false58, %cond.true38
  %cond63 = phi i32 [ %or57, %cond.true38 ], [ %call61, %cond.false58 ], !dbg !5644
  %78 = load i32*, i32** %val.addr, align 8, !dbg !5645
  store i32 %cond63, i32* %78, align 4, !dbg !5646
  store i32 12, i32* %i, align 4, !dbg !5647
  br label %for.cond, !dbg !5649

for.cond:                                         ; preds = %for.inc, %cond.end62
  %79 = load i32, i32* %i, align 4, !dbg !5650
  %conv64 = sext i32 %79 to i64, !dbg !5650
  %cmp65 = icmp ult i64 %conv64, 16, !dbg !5652
  br i1 %cmp65, label %for.body, label %for.end, !dbg !5653

for.body:                                         ; preds = %for.cond
  %80 = load %struct.ni6501_private*, %struct.ni6501_private** %devpriv, align 8, !dbg !5654
  %usb_rx_buf67 = getelementptr inbounds %struct.ni6501_private, %struct.ni6501_private* %80, i32 0, i32 3, !dbg !5655
  %81 = load i8*, i8** %usb_rx_buf67, align 8, !dbg !5655
  %82 = load i32, i32* %i, align 4, !dbg !5656
  %idxprom = sext i32 %82 to i64, !dbg !5654
  %arrayidx68 = getelementptr i8, i8* %81, i64 %idxprom, !dbg !5654
  store i8 0, i8* %arrayidx68, align 1, !dbg !5657
  br label %for.inc, !dbg !5654

for.inc:                                          ; preds = %for.body
  %83 = load i32, i32* %i, align 4, !dbg !5658
  %inc = add i32 %83, 1, !dbg !5658
  store i32 %inc, i32* %i, align 4, !dbg !5658
  br label %for.cond, !dbg !5659, !llvm.loop !5660

for.end:                                          ; preds = %for.cond
  %84 = load %struct.ni6501_private*, %struct.ni6501_private** %devpriv, align 8, !dbg !5662
  %usb_rx_buf69 = getelementptr inbounds %struct.ni6501_private, %struct.ni6501_private* %84, i32 0, i32 3, !dbg !5664
  %85 = load i8*, i8** %usb_rx_buf69, align 8, !dbg !5664
  %call70 = call i32 @memcmp(i8* %85, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @READ_COUNTER_RESPONSE, i64 0, i64 0), i64 16) #9, !dbg !5665
  %tobool71 = icmp ne i32 %call70, 0, !dbg !5665
  br i1 %tobool71, label %if.then72, label %if.end73, !dbg !5666

if.then72:                                        ; preds = %for.end
  store i32 -22, i32* %ret, align 4, !dbg !5667
  br label %if.end73, !dbg !5669

if.end73:                                         ; preds = %if.then72, %for.end
  br label %if.end79, !dbg !5670

if.else:                                          ; preds = %if.end32
  %86 = load %struct.ni6501_private*, %struct.ni6501_private** %devpriv, align 8, !dbg !5671
  %usb_rx_buf74 = getelementptr inbounds %struct.ni6501_private, %struct.ni6501_private* %86, i32 0, i32 3, !dbg !5673
  %87 = load i8*, i8** %usb_rx_buf74, align 8, !dbg !5673
  %call75 = call i32 @memcmp(i8* %87, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @GENERIC_RESPONSE, i64 0, i64 0), i64 12) #9, !dbg !5674
  %tobool76 = icmp ne i32 %call75, 0, !dbg !5674
  br i1 %tobool76, label %if.then77, label %if.end78, !dbg !5675

if.then77:                                        ; preds = %if.else
  store i32 -22, i32* %ret, align 4, !dbg !5676
  br label %if.end78, !dbg !5678

if.end78:                                         ; preds = %if.then77, %if.else
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.end73
  br label %end, !dbg !5679

end:                                              ; preds = %if.end79, %if.then31, %if.then22, %sw.default
  call void @llvm.dbg.label(metadata !5680), !dbg !5681
  %88 = load %struct.ni6501_private*, %struct.ni6501_private** %devpriv, align 8, !dbg !5682
  %mut80 = getelementptr inbounds %struct.ni6501_private, %struct.ni6501_private* %88, i32 0, i32 2, !dbg !5683
  call void @mutex_unlock(%struct.mutex* %mut80) #9, !dbg !5684
  %89 = load i32, i32* %ret, align 4, !dbg !5685
  store i32 %89, i32* %retval, align 4, !dbg !5686
  br label %return, !dbg !5686

return:                                           ; preds = %end, %if.then
  %90 = load i32, i32* %retval, align 4, !dbg !5687
  ret i32 %90, !dbg !5687
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__fswab32(i32 %val) #7 !dbg !5688 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5692, metadata !DIExpression()), !dbg !5693
  %0 = load i32, i32* %val.addr, align 4, !dbg !5694
  %call = call i32 @__arch_swab32(i32 %0) #12, !dbg !5695
  ret i32 %call, !dbg !5696
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__arch_swab32(i32 %val) #7 !dbg !5697 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5699, metadata !DIExpression()), !dbg !5700
  %0 = load i32, i32* %val.addr, align 4, !dbg !5701
  %1 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %0) #15, !dbg !5702, !srcloc !5703
  store i32 %1, i32* %val.addr, align 4, !dbg !5702
  %2 = load i32, i32* %val.addr, align 4, !dbg !5704
  ret i32 %2, !dbg !5705
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ni6501_usb_probe(%struct.usb_interface* %intf, %struct.usb_device_id* %id) #2 !dbg !5706 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %id.addr = alloca %struct.usb_device_id*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5707, metadata !DIExpression()), !dbg !5708
  store %struct.usb_device_id* %id, %struct.usb_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device_id** %id.addr, metadata !5709, metadata !DIExpression()), !dbg !5710
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5711
  %1 = load %struct.usb_device_id*, %struct.usb_device_id** %id.addr, align 8, !dbg !5712
  %driver_info = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %1, i32 0, i32 12, !dbg !5713
  %2 = load i64, i64* %driver_info, align 8, !dbg !5713
  %call = call i32 @comedi_usb_auto_config(%struct.usb_interface* %0, %struct.comedi_driver* @ni6501_driver, i64 %2) #9, !dbg !5714
  ret i32 %call, !dbg !5715
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
attributes #8 = { argmemonly nounwind willreturn }
attributes #9 = { noredzone }
attributes #10 = { cold noredzone }
attributes #11 = { nounwind }
attributes #12 = { noredzone nounwind readnone }
attributes #13 = { noredzone nounwind }
attributes #14 = { nounwind readonly }
attributes #15 = { nounwind readnone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4207, !4208, !4209, !4210}
!llvm.ident = !{!4211}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ni6501_driver_init239", scope: !2, file: !3, line: 598, type: !166, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !165, globals: !177, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/staging/comedi/drivers/ni_usb6501.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !100, !107, !123, !130, !139, !151, !160}
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
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "comedi_subdevice_type", file: !108, line: 221, baseType: !7, size: 32, elements: !109)
!108 = !DIFile(filename: "drivers/staging/comedi/drivers/../comedi.h", directory: "/home/lizy2001/genbc/linux")
!109 = !{!110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122}
!110 = !DIEnumerator(name: "COMEDI_SUBD_UNUSED", value: 0, isUnsigned: true)
!111 = !DIEnumerator(name: "COMEDI_SUBD_AI", value: 1, isUnsigned: true)
!112 = !DIEnumerator(name: "COMEDI_SUBD_AO", value: 2, isUnsigned: true)
!113 = !DIEnumerator(name: "COMEDI_SUBD_DI", value: 3, isUnsigned: true)
!114 = !DIEnumerator(name: "COMEDI_SUBD_DO", value: 4, isUnsigned: true)
!115 = !DIEnumerator(name: "COMEDI_SUBD_DIO", value: 5, isUnsigned: true)
!116 = !DIEnumerator(name: "COMEDI_SUBD_COUNTER", value: 6, isUnsigned: true)
!117 = !DIEnumerator(name: "COMEDI_SUBD_TIMER", value: 7, isUnsigned: true)
!118 = !DIEnumerator(name: "COMEDI_SUBD_MEMORY", value: 8, isUnsigned: true)
!119 = !DIEnumerator(name: "COMEDI_SUBD_CALIB", value: 9, isUnsigned: true)
!120 = !DIEnumerator(name: "COMEDI_SUBD_PROC", value: 10, isUnsigned: true)
!121 = !DIEnumerator(name: "COMEDI_SUBD_SERIAL", value: 11, isUnsigned: true)
!122 = !DIEnumerator(name: "COMEDI_SUBD_PWM", value: 12, isUnsigned: true)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !124, line: 305, baseType: !7, size: 32, elements: !125)
!124 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!125 = !{!126, !127, !128, !129}
!126 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!127 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!128 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!129 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "commands", file: !3, line: 147, baseType: !7, size: 32, elements: !131)
!131 = !{!132, !133, !134, !135, !136, !137, !138}
!132 = !DIEnumerator(name: "READ_PORT", value: 0, isUnsigned: true)
!133 = !DIEnumerator(name: "WRITE_PORT", value: 1, isUnsigned: true)
!134 = !DIEnumerator(name: "SET_PORT_DIR", value: 2, isUnsigned: true)
!135 = !DIEnumerator(name: "START_COUNTER", value: 3, isUnsigned: true)
!136 = !DIEnumerator(name: "STOP_COUNTER", value: 4, isUnsigned: true)
!137 = !DIEnumerator(name: "READ_COUNTER", value: 5, isUnsigned: true)
!138 = !DIEnumerator(name: "WRITE_COUNTER", value: 6, isUnsigned: true)
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_state", file: !140, line: 1156, baseType: !7, size: 32, elements: !141)
!140 = !DIFile(filename: "./include/uapi/linux/usb/ch9.h", directory: "/home/lizy2001/genbc/linux")
!141 = !{!142, !143, !144, !145, !146, !147, !148, !149, !150}
!142 = !DIEnumerator(name: "USB_STATE_NOTATTACHED", value: 0, isUnsigned: true)
!143 = !DIEnumerator(name: "USB_STATE_ATTACHED", value: 1, isUnsigned: true)
!144 = !DIEnumerator(name: "USB_STATE_POWERED", value: 2, isUnsigned: true)
!145 = !DIEnumerator(name: "USB_STATE_RECONNECTING", value: 3, isUnsigned: true)
!146 = !DIEnumerator(name: "USB_STATE_UNAUTHENTICATED", value: 4, isUnsigned: true)
!147 = !DIEnumerator(name: "USB_STATE_DEFAULT", value: 5, isUnsigned: true)
!148 = !DIEnumerator(name: "USB_STATE_ADDRESS", value: 6, isUnsigned: true)
!149 = !DIEnumerator(name: "USB_STATE_CONFIGURED", value: 7, isUnsigned: true)
!150 = !DIEnumerator(name: "USB_STATE_SUSPENDED", value: 8, isUnsigned: true)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_speed", file: !140, line: 1146, baseType: !7, size: 32, elements: !152)
!152 = !{!153, !154, !155, !156, !157, !158, !159}
!153 = !DIEnumerator(name: "USB_SPEED_UNKNOWN", value: 0, isUnsigned: true)
!154 = !DIEnumerator(name: "USB_SPEED_LOW", value: 1, isUnsigned: true)
!155 = !DIEnumerator(name: "USB_SPEED_FULL", value: 2, isUnsigned: true)
!156 = !DIEnumerator(name: "USB_SPEED_HIGH", value: 3, isUnsigned: true)
!157 = !DIEnumerator(name: "USB_SPEED_WIRELESS", value: 4, isUnsigned: true)
!158 = !DIEnumerator(name: "USB_SPEED_SUPER", value: 5, isUnsigned: true)
!159 = !DIEnumerator(name: "USB_SPEED_SUPER_PLUS", value: 6, isUnsigned: true)
!160 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_removable", file: !101, line: 476, baseType: !7, size: 32, elements: !161)
!161 = !{!162, !163, !164}
!162 = !DIEnumerator(name: "USB_DEVICE_REMOVABLE_UNKNOWN", value: 0, isUnsigned: true)
!163 = !DIEnumerator(name: "USB_DEVICE_REMOVABLE", value: 1, isUnsigned: true)
!164 = !DIEnumerator(name: "USB_DEVICE_FIXED", value: 2, isUnsigned: true)
!165 = !{!166, !167, !169, !172, !174, !175, !176}
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !168, line: 148, baseType: !7)
!168 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !170, line: 24, baseType: !171)
!170 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!171 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !173, line: 29, baseType: !169)
!173 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !173, line: 32, baseType: !175)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !170, line: 27, baseType: !7)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!177 = !{!0, !178, !185, !192, !197, !202, !207, !4023, !4026, !4030, !4033, !4038, !4040, !4043, !4045, !4047, !4049, !4051, !4053, !4204}
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(name: "__exitcall_ni6501_driver_exit", scope: !2, file: !3, line: 598, type: !180, isLocal: true, isDefinition: true)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !181, line: 117, baseType: !182)
!181 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{null}
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author240", scope: !2, file: !3, line: 600, type: !187, isLocal: true, isDefinition: true, align: 8)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 240, elements: !190)
!188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!189 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!190 = !{!191}
!191 = !DISubrange(count: 30)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description241", scope: !2, file: !3, line: 601, type: !194, isLocal: true, isDefinition: true, align: 8)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 568, elements: !195)
!195 = !{!196}
!196 = !DISubrange(count: 71)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file242", scope: !2, file: !3, line: 602, type: !199, isLocal: true, isDefinition: true, align: 8)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 464, elements: !200)
!200 = !{!201}
!201 = !DISubrange(count: 58)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license243", scope: !2, file: !3, line: 602, type: !204, isLocal: true, isDefinition: true, align: 8)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 184, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 23)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(name: "ni6501_driver", scope: !2, file: !3, line: 573, type: !209, isLocal: true, isDefinition: true)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_driver", file: !210, line: 437, size: 576, elements: !211)
!210 = !DIFile(filename: "drivers/staging/comedi/drivers/../comedidev.h", directory: "/home/lizy2001/genbc/linux")
!211 = !{!212, !214, !216, !220, !4013, !4014, !4018, !4019, !4022}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !209, file: !210, line: 439, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !209, file: !210, line: 441, baseType: !215, size: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !209, file: !210, line: 442, baseType: !217, size: 64, offset: 128)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !219, line: 76, flags: DIFlagFwdDecl)
!219 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!220 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !209, file: !210, line: 443, baseType: !221, size: 64, offset: 192)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!224, !225, !4006}
!224 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_device", file: !210, line: 541, size: 1920, elements: !227)
!227 = !{!228, !229, !230, !233, !234, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3994, !3998, !4002}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !226, file: !210, line: 542, baseType: !224, size: 32)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !226, file: !210, line: 543, baseType: !213, size: 64, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "pacer", scope: !226, file: !210, line: 544, baseType: !231, size: 64, offset: 128)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_8254", file: !210, line: 544, flags: DIFlagFwdDecl)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !226, file: !210, line: 545, baseType: !166, size: 64, offset: 192)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !226, file: !210, line: 547, baseType: !235, size: 64, offset: 256)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !237)
!237 = !{!238, !3391, !3392, !3395, !3396, !3447, !3538, !3539, !3540, !3541, !3542, !3551, !3656, !3669, !3672, !3673, !3677, !3679, !3680, !3681, !3685, !3691, !3692, !3695, !3699, !3789, !3790, !3791, !3792, !3793, !3825, !3826, !3827, !3830, !3833, !3834, !3835, !3836}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !236, file: !73, line: 462, baseType: !239, size: 512)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !240, line: 64, size: 512, elements: !241)
!240 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!241 = !{!242, !243, !249, !251, !311, !3242, !3381, !3386, !3387, !3388, !3389, !3390}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !239, file: !240, line: 65, baseType: !215, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !239, file: !240, line: 66, baseType: !244, size: 128, offset: 64)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !168, line: 178, size: 128, elements: !245)
!245 = !{!246, !248}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !244, file: !168, line: 179, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !244, file: !168, line: 179, baseType: !247, size: 64, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !239, file: !240, line: 67, baseType: !250, size: 64, offset: 192)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !239, file: !240, line: 68, baseType: !252, size: 64, offset: 256)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !240, line: 192, size: 704, elements: !254)
!254 = !{!255, !256, !272, !273}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !253, file: !240, line: 193, baseType: !244, size: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !253, file: !240, line: 194, baseType: !257, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !258, line: 83, baseType: !259)
!258 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !258, line: 71, elements: !260)
!260 = !{!261}
!261 = !DIDerivedType(tag: DW_TAG_member, scope: !259, file: !258, line: 72, baseType: !262)
!262 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !259, file: !258, line: 72, elements: !263)
!263 = !{!264}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !262, file: !258, line: 73, baseType: !265)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !258, line: 20, elements: !266)
!266 = !{!267}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !265, file: !258, line: 21, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !269, line: 25, baseType: !270)
!269 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !269, line: 25, elements: !271)
!271 = !{}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !253, file: !240, line: 195, baseType: !239, size: 512, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !253, file: !240, line: 196, baseType: !274, size: 64, offset: 640)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !276)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !240, line: 156, size: 192, elements: !277)
!277 = !{!278, !283, !288}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !276, file: !240, line: 157, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{!224, !252, !250}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !276, file: !240, line: 158, baseType: !284, size: 64, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!215, !252, !250}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !276, file: !240, line: 159, baseType: !289, size: 64, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !290)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{!224, !252, !250, !293}
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !240, line: 148, size: 20736, elements: !295)
!295 = !{!296, !301, !305, !306, !310}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !294, file: !240, line: 149, baseType: !297, size: 192)
!297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 192, elements: !299)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!299 = !{!300}
!300 = !DISubrange(count: 3)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !294, file: !240, line: 150, baseType: !302, size: 4096, offset: 192)
!302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 4096, elements: !303)
!303 = !{!304}
!304 = !DISubrange(count: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !294, file: !240, line: 151, baseType: !224, size: 32, offset: 4288)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !294, file: !240, line: 152, baseType: !307, size: 16384, offset: 4320)
!307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 16384, elements: !308)
!308 = !{!309}
!309 = !DISubrange(count: 2048)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !294, file: !240, line: 153, baseType: !224, size: 32, offset: 20704)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !239, file: !240, line: 69, baseType: !312, size: 64, offset: 320)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !240, line: 138, size: 448, elements: !314)
!314 = !{!315, !319, !348, !350, !3204, !3232, !3236}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !313, file: !240, line: 139, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{null, !250}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !313, file: !240, line: 140, baseType: !320, size: 64, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !322)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !323, line: 230, size: 128, elements: !324)
!323 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!324 = !{!325, !340}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !322, file: !323, line: 231, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{!329, !250, !334, !298}
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !168, line: 60, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !331, line: 73, baseType: !332)
!331 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !331, line: 15, baseType: !333)
!333 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !323, line: 30, size: 128, elements: !336)
!336 = !{!337, !338}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !335, file: !323, line: 31, baseType: !215, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !335, file: !323, line: 32, baseType: !339, size: 16, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !168, line: 19, baseType: !171)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !322, file: !323, line: 232, baseType: !341, size: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{!329, !250, !334, !215, !344}
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !168, line: 55, baseType: !345)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !331, line: 72, baseType: !346)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !331, line: 16, baseType: !347)
!347 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !313, file: !240, line: 141, baseType: !349, size: 64, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !313, file: !240, line: 142, baseType: !351, size: 64, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !354)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !323, line: 84, size: 320, elements: !355)
!355 = !{!356, !357, !361, !3201, !3202}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !354, file: !323, line: 85, baseType: !215, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !354, file: !323, line: 86, baseType: !358, size: 64, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DISubroutineType(types: !360)
!360 = !{!339, !250, !334, !224}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !354, file: !323, line: 88, baseType: !362, size: 64, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DISubroutineType(types: !364)
!364 = !{!339, !250, !365, !224}
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !323, line: 168, size: 448, elements: !367)
!367 = !{!368, !369, !370, !371, !3196, !3197}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !366, file: !323, line: 169, baseType: !335, size: 128)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !366, file: !323, line: 170, baseType: !344, size: 64, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !366, file: !323, line: 171, baseType: !166, size: 64, offset: 192)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !366, file: !323, line: 172, baseType: !372, size: 64, offset: 256)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{!329, !375, !250, !365, !298, !552, !344}
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !377)
!377 = !{!378, !396, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3179, !3180, !3189, !3190, !3191, !3192, !3193, !3194, !3195}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !376, file: !44, line: 920, baseType: !379, size: 128)
!379 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !376, file: !44, line: 917, size: 128, elements: !380)
!380 = !{!381, !387}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !379, file: !44, line: 918, baseType: !382, size: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !383, line: 58, size: 64, elements: !384)
!383 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!384 = !{!385}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !382, file: !383, line: 59, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !379, file: !44, line: 919, baseType: !388, size: 128, align: 64)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !168, line: 216, size: 128, align: 64, elements: !389)
!389 = !{!390, !392}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !388, file: !168, line: 217, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !388, file: !168, line: 218, baseType: !393, size: 64, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DISubroutineType(types: !395)
!395 = !{null, !391}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !376, file: !44, line: 921, baseType: !397, size: 128, offset: 128)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !398, line: 8, size: 128, elements: !399)
!398 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!399 = !{!400, !404}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !397, file: !398, line: 9, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !403, line: 18, flags: DIFlagFwdDecl)
!403 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!404 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !397, file: !398, line: 10, baseType: !405, size: 64, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !403, line: 89, size: 1536, elements: !407)
!407 = !{!408, !409, !419, !427, !428, !449, !3129, !3131, !3143, !3144, !3145, !3146, !3147, !3153, !3154, !3155}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !406, file: !403, line: 91, baseType: !7, size: 32)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !406, file: !403, line: 92, baseType: !410, size: 32, offset: 32)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !411, line: 277, baseType: !412)
!411 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !411, line: 277, size: 32, elements: !413)
!413 = !{!414}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !412, file: !411, line: 277, baseType: !415, size: 32)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !411, line: 70, baseType: !416)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !411, line: 65, size: 32, elements: !417)
!417 = !{!418}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !416, file: !411, line: 66, baseType: !7, size: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !406, file: !403, line: 93, baseType: !420, size: 128, offset: 64)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !421, line: 38, size: 128, elements: !422)
!421 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!422 = !{!423, !425}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !420, file: !421, line: 39, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !420, file: !421, line: 39, baseType: !426, size: 64, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !406, file: !403, line: 94, baseType: !405, size: 64, offset: 192)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !406, file: !403, line: 95, baseType: !429, size: 128, offset: 256)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !403, line: 47, size: 128, elements: !430)
!430 = !{!431, !445}
!431 = !DIDerivedType(tag: DW_TAG_member, scope: !429, file: !403, line: 48, baseType: !432, size: 64)
!432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !429, file: !403, line: 48, size: 64, elements: !433)
!433 = !{!434, !441}
!434 = !DIDerivedType(tag: DW_TAG_member, scope: !432, file: !403, line: 49, baseType: !435, size: 64)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !432, file: !403, line: 49, size: 64, elements: !436)
!436 = !{!437, !440}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !435, file: !403, line: 50, baseType: !438, size: 32)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !439, line: 21, baseType: !175)
!439 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!440 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !435, file: !403, line: 50, baseType: !438, size: 32, offset: 32)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !432, file: !403, line: 52, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !439, line: 23, baseType: !443)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !170, line: 31, baseType: !444)
!444 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !429, file: !403, line: 54, baseType: !446, size: 64, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !448)
!448 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !406, file: !403, line: 96, baseType: !450, size: 64, offset: 384)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !452)
!452 = !{!453, !454, !455, !463, !470, !471, !619, !2841, !2842, !2843, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !3105, !3113, !3114, !3115, !3125, !3126, !3127, !3128}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !451, file: !44, line: 611, baseType: !339, size: 16)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !451, file: !44, line: 612, baseType: !171, size: 16, offset: 16)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !451, file: !44, line: 613, baseType: !456, size: 32, offset: 32)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !457, line: 23, baseType: !458)
!457 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !457, line: 21, size: 32, elements: !459)
!459 = !{!460}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !458, file: !457, line: 22, baseType: !461, size: 32)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !168, line: 32, baseType: !462)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !331, line: 49, baseType: !7)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !451, file: !44, line: 614, baseType: !464, size: 32, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !457, line: 28, baseType: !465)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !457, line: 26, size: 32, elements: !466)
!466 = !{!467}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !465, file: !457, line: 27, baseType: !468, size: 32)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !168, line: 33, baseType: !469)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !331, line: 50, baseType: !7)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !451, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !451, file: !44, line: 622, baseType: !472, size: 64, offset: 128)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !474)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !475)
!475 = !{!476, !480, !493, !497, !503, !507, !513, !517, !521, !525, !529, !530, !536, !540, !566, !595, !599, !605, !610, !614, !615}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !474, file: !44, line: 1865, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{!405, !450, !405, !7}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !474, file: !44, line: 1866, baseType: !481, size: 64, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!215, !405, !450, !484}
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !486, line: 10, size: 128, elements: !487)
!486 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!487 = !{!488, !492}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !485, file: !486, line: 11, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{null, !166}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !485, file: !486, line: 12, baseType: !166, size: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !474, file: !44, line: 1867, baseType: !494, size: 64, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{!224, !450, !224}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !474, file: !44, line: 1868, baseType: !498, size: 64, offset: 192)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!501, !450, !224}
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !474, file: !44, line: 1870, baseType: !504, size: 64, offset: 256)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!224, !405, !298, !224}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !474, file: !44, line: 1872, baseType: !508, size: 64, offset: 320)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!224, !450, !405, !339, !511}
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !168, line: 30, baseType: !512)
!512 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !474, file: !44, line: 1873, baseType: !514, size: 64, offset: 384)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!224, !405, !450, !405}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !474, file: !44, line: 1874, baseType: !518, size: 64, offset: 448)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!224, !450, !405}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !474, file: !44, line: 1875, baseType: !522, size: 64, offset: 512)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{!224, !450, !405, !215}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !474, file: !44, line: 1876, baseType: !526, size: 64, offset: 576)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DISubroutineType(types: !528)
!528 = !{!224, !450, !405, !339}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !474, file: !44, line: 1877, baseType: !518, size: 64, offset: 640)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !474, file: !44, line: 1878, baseType: !531, size: 64, offset: 704)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!224, !450, !405, !339, !534}
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !168, line: 16, baseType: !535)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !168, line: 13, baseType: !438)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !474, file: !44, line: 1879, baseType: !537, size: 64, offset: 768)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{!224, !450, !405, !450, !405, !7}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !474, file: !44, line: 1881, baseType: !541, size: 64, offset: 832)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!224, !405, !544}
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !546)
!546 = !{!547, !548, !549, !550, !551, !555, !563, !564, !565}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !545, file: !44, line: 220, baseType: !7, size: 32)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !545, file: !44, line: 221, baseType: !339, size: 16, offset: 32)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !545, file: !44, line: 222, baseType: !456, size: 32, offset: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !545, file: !44, line: 223, baseType: !464, size: 32, offset: 96)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !545, file: !44, line: 224, baseType: !552, size: 64, offset: 128)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !168, line: 46, baseType: !553)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !331, line: 88, baseType: !554)
!554 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !545, file: !44, line: 225, baseType: !556, size: 128, offset: 192)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !557, line: 13, size: 128, elements: !558)
!557 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!558 = !{!559, !562}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !556, file: !557, line: 14, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !557, line: 8, baseType: !561)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !170, line: 30, baseType: !554)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !556, file: !557, line: 15, baseType: !333, size: 64, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !545, file: !44, line: 226, baseType: !556, size: 128, offset: 320)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !545, file: !44, line: 227, baseType: !556, size: 128, offset: 448)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !545, file: !44, line: 234, baseType: !375, size: 64, offset: 576)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !474, file: !44, line: 1882, baseType: !567, size: 64, offset: 896)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{!224, !570, !572, !438, !7}
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !397)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !574, line: 22, size: 1152, elements: !575)
!574 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!575 = !{!576, !577, !578, !579, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !573, file: !574, line: 23, baseType: !438, size: 32)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !573, file: !574, line: 24, baseType: !339, size: 16, offset: 32)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !573, file: !574, line: 25, baseType: !7, size: 32, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !573, file: !574, line: 26, baseType: !580, size: 32, offset: 96)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !168, line: 104, baseType: !438)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !573, file: !574, line: 27, baseType: !442, size: 64, offset: 128)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !573, file: !574, line: 28, baseType: !442, size: 64, offset: 192)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !573, file: !574, line: 37, baseType: !442, size: 64, offset: 256)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !573, file: !574, line: 38, baseType: !534, size: 32, offset: 320)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !573, file: !574, line: 39, baseType: !534, size: 32, offset: 352)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !573, file: !574, line: 40, baseType: !456, size: 32, offset: 384)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !573, file: !574, line: 41, baseType: !464, size: 32, offset: 416)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !573, file: !574, line: 42, baseType: !552, size: 64, offset: 448)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !573, file: !574, line: 43, baseType: !556, size: 128, offset: 512)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !573, file: !574, line: 44, baseType: !556, size: 128, offset: 640)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !573, file: !574, line: 45, baseType: !556, size: 128, offset: 768)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !573, file: !574, line: 46, baseType: !556, size: 128, offset: 896)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !573, file: !574, line: 47, baseType: !442, size: 64, offset: 1024)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !573, file: !574, line: 48, baseType: !442, size: 64, offset: 1088)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !474, file: !44, line: 1883, baseType: !596, size: 64, offset: 960)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DISubroutineType(types: !598)
!598 = !{!329, !405, !298, !344}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !474, file: !44, line: 1884, baseType: !600, size: 64, offset: 1024)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DISubroutineType(types: !602)
!602 = !{!224, !450, !603, !442, !442}
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !474, file: !44, line: 1886, baseType: !606, size: 64, offset: 1088)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{!224, !450, !609, !224}
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !474, file: !44, line: 1887, baseType: !611, size: 64, offset: 1152)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{!224, !450, !405, !375, !7, !339}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !474, file: !44, line: 1890, baseType: !526, size: 64, offset: 1216)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !474, file: !44, line: 1891, baseType: !616, size: 64, offset: 1280)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DISubroutineType(types: !618)
!618 = !{!224, !450, !501, !224}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !451, file: !44, line: 623, baseType: !620, size: 64, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !622)
!622 = !{!623, !624, !625, !626, !627, !628, !675, !2448, !2530, !2613, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2629, !2633, !2634, !2637, !2638, !2641, !2642, !2643, !2684, !2711, !2712, !2713, !2714, !2715, !2716, !2719, !2721, !2728, !2729, !2731, !2732, !2733, !2792, !2793, !2808, !2809, !2810, !2811, !2812, !2815, !2816, !2817, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !621, file: !44, line: 1417, baseType: !244, size: 128)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !621, file: !44, line: 1418, baseType: !534, size: 32, offset: 128)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !621, file: !44, line: 1419, baseType: !448, size: 8, offset: 160)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !621, file: !44, line: 1420, baseType: !347, size: 64, offset: 192)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !621, file: !44, line: 1421, baseType: !552, size: 64, offset: 256)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !621, file: !44, line: 1422, baseType: !629, size: 64, offset: 320)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !631)
!631 = !{!632, !633, !634, !641, !645, !649, !653, !654, !655, !665, !668, !669, !670, !672, !673, !674}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !630, file: !44, line: 2229, baseType: !215, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !630, file: !44, line: 2230, baseType: !224, size: 32, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !630, file: !44, line: 2238, baseType: !635, size: 64, offset: 128)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!224, !638}
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !640, line: 28, flags: DIFlagFwdDecl)
!640 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!641 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !630, file: !44, line: 2239, baseType: !642, size: 64, offset: 192)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !644)
!644 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !630, file: !44, line: 2240, baseType: !646, size: 64, offset: 256)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{!405, !629, !224, !215, !166}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !630, file: !44, line: 2242, baseType: !650, size: 64, offset: 320)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{null, !620}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !630, file: !44, line: 2243, baseType: !217, size: 64, offset: 384)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !630, file: !44, line: 2244, baseType: !629, size: 64, offset: 448)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !630, file: !44, line: 2245, baseType: !656, size: 64, offset: 512)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !168, line: 182, size: 64, elements: !657)
!657 = !{!658}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !656, file: !168, line: 183, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !168, line: 186, size: 128, elements: !661)
!661 = !{!662, !663}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !660, file: !168, line: 187, baseType: !659, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !660, file: !168, line: 187, baseType: !664, size: 64, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !630, file: !44, line: 2247, baseType: !666, offset: 576)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !667, line: 187, elements: !271)
!667 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!668 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !630, file: !44, line: 2248, baseType: !666, offset: 576)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !630, file: !44, line: 2249, baseType: !666, offset: 576)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !630, file: !44, line: 2250, baseType: !671, offset: 576)
!671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !666, elements: !299)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !630, file: !44, line: 2252, baseType: !666, offset: 576)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !630, file: !44, line: 2253, baseType: !666, offset: 576)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !630, file: !44, line: 2254, baseType: !666, offset: 576)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !621, file: !44, line: 1423, baseType: !676, size: 64, offset: 384)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !678)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !679)
!679 = !{!680, !684, !688, !689, !693, !699, !703, !704, !705, !709, !713, !714, !715, !716, !722, !727, !728, !735, !736, !737, !738, !2432, !2447}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !678, file: !44, line: 1936, baseType: !681, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DISubroutineType(types: !683)
!683 = !{!450, !620}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !678, file: !44, line: 1937, baseType: !685, size: 64, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DISubroutineType(types: !687)
!687 = !{null, !450}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !678, file: !44, line: 1938, baseType: !685, size: 64, offset: 128)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !678, file: !44, line: 1940, baseType: !690, size: 64, offset: 192)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DISubroutineType(types: !692)
!692 = !{null, !450, !224}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !678, file: !44, line: 1941, baseType: !694, size: 64, offset: 256)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{!224, !450, !697}
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !44, line: 289, flags: DIFlagFwdDecl)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !678, file: !44, line: 1942, baseType: !700, size: 64, offset: 320)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!224, !450}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !678, file: !44, line: 1943, baseType: !685, size: 64, offset: 384)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !678, file: !44, line: 1944, baseType: !650, size: 64, offset: 448)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !678, file: !44, line: 1945, baseType: !706, size: 64, offset: 512)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DISubroutineType(types: !708)
!708 = !{!224, !620, !224}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !678, file: !44, line: 1946, baseType: !710, size: 64, offset: 576)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{!224, !620}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !678, file: !44, line: 1947, baseType: !710, size: 64, offset: 640)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !678, file: !44, line: 1948, baseType: !710, size: 64, offset: 704)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !678, file: !44, line: 1949, baseType: !710, size: 64, offset: 768)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !678, file: !44, line: 1950, baseType: !717, size: 64, offset: 832)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DISubroutineType(types: !719)
!719 = !{!224, !405, !720}
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !678, file: !44, line: 1951, baseType: !723, size: 64, offset: 896)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{!224, !620, !726, !298}
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !678, file: !44, line: 1952, baseType: !650, size: 64, offset: 960)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !678, file: !44, line: 1954, baseType: !729, size: 64, offset: 1024)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{!224, !732, !405}
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !734, line: 539, flags: DIFlagFwdDecl)
!734 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!735 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !678, file: !44, line: 1955, baseType: !729, size: 64, offset: 1088)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !678, file: !44, line: 1956, baseType: !729, size: 64, offset: 1152)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !678, file: !44, line: 1957, baseType: !729, size: 64, offset: 1216)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !678, file: !44, line: 1963, baseType: !739, size: 64, offset: 1280)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!224, !620, !742, !167}
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !744, line: 68, size: 512, align: 128, elements: !745)
!744 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!745 = !{!746, !747, !2424, !2431}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !743, file: !744, line: 69, baseType: !347, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, scope: !743, file: !744, line: 77, baseType: !748, size: 320, offset: 64)
!748 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !743, file: !744, line: 77, size: 320, elements: !749)
!749 = !{!750, !936, !941, !969, !977, !983, !2355, !2423}
!750 = !DIDerivedType(tag: DW_TAG_member, scope: !748, file: !744, line: 78, baseType: !751, size: 320)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !748, file: !744, line: 78, size: 320, elements: !752)
!752 = !{!753, !754, !934, !935}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !751, file: !744, line: 84, baseType: !244, size: 128)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !751, file: !744, line: 86, baseType: !755, size: 64, offset: 128)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !757)
!757 = !{!758, !759, !766, !767, !772, !787, !803, !804, !805, !806, !927, !928, !931, !932, !933}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !756, file: !44, line: 452, baseType: !450, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !756, file: !44, line: 453, baseType: !760, size: 128, offset: 64)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !761, line: 292, size: 128, elements: !762)
!761 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!762 = !{!763, !764, !765}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !760, file: !761, line: 293, baseType: !257)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !760, file: !761, line: 295, baseType: !167, size: 32)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !760, file: !761, line: 296, baseType: !166, size: 64, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !756, file: !44, line: 454, baseType: !167, size: 32, offset: 192)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !756, file: !44, line: 455, baseType: !768, size: 32, offset: 224)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !168, line: 168, baseType: !769)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !168, line: 166, size: 32, elements: !770)
!770 = !{!771}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !769, file: !168, line: 167, baseType: !224, size: 32)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !756, file: !44, line: 460, baseType: !773, size: 128, offset: 256)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !774, line: 125, size: 128, elements: !775)
!774 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!775 = !{!776, !786}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !773, file: !774, line: 126, baseType: !777, size: 64)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !774, line: 31, size: 64, elements: !778)
!778 = !{!779}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !777, file: !774, line: 32, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !774, line: 24, size: 192, align: 64, elements: !782)
!782 = !{!783, !784, !785}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !781, file: !774, line: 25, baseType: !347, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !781, file: !774, line: 26, baseType: !780, size: 64, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !781, file: !774, line: 27, baseType: !780, size: 64, offset: 128)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !773, file: !774, line: 127, baseType: !780, size: 64, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !756, file: !44, line: 461, baseType: !788, size: 256, offset: 384)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !789, line: 35, size: 256, elements: !790)
!789 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!790 = !{!791, !799, !800, !802}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !788, file: !789, line: 36, baseType: !792, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !793, line: 13, baseType: !794)
!793 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !168, line: 175, baseType: !795)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !168, line: 173, size: 64, elements: !796)
!796 = !{!797}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !795, file: !168, line: 174, baseType: !798, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !439, line: 22, baseType: !561)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !788, file: !789, line: 42, baseType: !792, size: 64, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !788, file: !789, line: 46, baseType: !801, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !258, line: 29, baseType: !265)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !788, file: !789, line: 47, baseType: !244, size: 128, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !756, file: !44, line: 462, baseType: !347, size: 64, offset: 640)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !756, file: !44, line: 463, baseType: !347, size: 64, offset: 704)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !756, file: !44, line: 464, baseType: !347, size: 64, offset: 768)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !756, file: !44, line: 465, baseType: !807, size: 64, offset: 832)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !809)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !810)
!810 = !{!811, !815, !819, !823, !827, !831, !837, !843, !847, !852, !856, !860, !864, !891, !895, !901, !902, !903, !907, !912, !916, !923}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !809, file: !44, line: 368, baseType: !812, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{!224, !742, !697}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !809, file: !44, line: 369, baseType: !816, size: 64, offset: 64)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{!224, !375, !742}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !809, file: !44, line: 372, baseType: !820, size: 64, offset: 128)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{!224, !755, !697}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !809, file: !44, line: 375, baseType: !824, size: 64, offset: 192)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{!224, !742}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !809, file: !44, line: 381, baseType: !828, size: 64, offset: 256)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{!224, !375, !755, !247, !7}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !809, file: !44, line: 383, baseType: !832, size: 64, offset: 320)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DISubroutineType(types: !834)
!834 = !{null, !835}
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !809, file: !44, line: 385, baseType: !838, size: 64, offset: 384)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DISubroutineType(types: !840)
!840 = !{!224, !375, !755, !552, !7, !7, !841, !842}
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !809, file: !44, line: 388, baseType: !844, size: 64, offset: 448)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DISubroutineType(types: !846)
!846 = !{!224, !375, !755, !552, !7, !7, !742, !166}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !809, file: !44, line: 393, baseType: !848, size: 64, offset: 512)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DISubroutineType(types: !850)
!850 = !{!851, !755, !851}
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !168, line: 125, baseType: !442)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !809, file: !44, line: 394, baseType: !853, size: 64, offset: 576)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{null, !742, !7, !7}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !809, file: !44, line: 395, baseType: !857, size: 64, offset: 640)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{!224, !742, !167}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !809, file: !44, line: 396, baseType: !861, size: 64, offset: 704)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{null, !742}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !809, file: !44, line: 397, baseType: !865, size: 64, offset: 768)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{!329, !868, !889}
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !870)
!870 = !{!871, !872, !873, !877, !878, !879, !881, !882}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !869, file: !44, line: 321, baseType: !375, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !869, file: !44, line: 326, baseType: !552, size: 64, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !869, file: !44, line: 327, baseType: !874, size: 64, offset: 128)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DISubroutineType(types: !876)
!876 = !{null, !868, !333, !333}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !869, file: !44, line: 328, baseType: !166, size: 64, offset: 192)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !869, file: !44, line: 329, baseType: !224, size: 32, offset: 256)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !869, file: !44, line: 330, baseType: !880, size: 16, offset: 288)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !439, line: 19, baseType: !169)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !869, file: !44, line: 331, baseType: !880, size: 16, offset: 304)
!882 = !DIDerivedType(tag: DW_TAG_member, scope: !869, file: !44, line: 332, baseType: !883, size: 64, offset: 320)
!883 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !869, file: !44, line: 332, size: 64, elements: !884)
!884 = !{!885, !886}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !883, file: !44, line: 333, baseType: !7, size: 32)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !883, file: !44, line: 334, baseType: !887, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !809, file: !44, line: 402, baseType: !892, size: 64, offset: 832)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DISubroutineType(types: !894)
!894 = !{!224, !755, !742, !742, !5}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !809, file: !44, line: 404, baseType: !896, size: 64, offset: 896)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DISubroutineType(types: !898)
!898 = !{!511, !742, !899}
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !900, line: 305, baseType: !7)
!900 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!901 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !809, file: !44, line: 405, baseType: !861, size: 64, offset: 960)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !809, file: !44, line: 406, baseType: !824, size: 64, offset: 1024)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !809, file: !44, line: 407, baseType: !904, size: 64, offset: 1088)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DISubroutineType(types: !906)
!906 = !{!224, !742, !347, !347}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !809, file: !44, line: 409, baseType: !908, size: 64, offset: 1152)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DISubroutineType(types: !910)
!910 = !{null, !742, !911, !911}
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !809, file: !44, line: 410, baseType: !913, size: 64, offset: 1216)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DISubroutineType(types: !915)
!915 = !{!224, !755, !742}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !809, file: !44, line: 413, baseType: !917, size: 64, offset: 1280)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DISubroutineType(types: !919)
!919 = !{!224, !920, !375, !922}
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !809, file: !44, line: 415, baseType: !924, size: 64, offset: 1344)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DISubroutineType(types: !926)
!926 = !{null, !375}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !756, file: !44, line: 466, baseType: !347, size: 64, offset: 896)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !756, file: !44, line: 467, baseType: !929, size: 32, offset: 960)
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !930, line: 8, baseType: !438)
!930 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!931 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !756, file: !44, line: 468, baseType: !257, offset: 992)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !756, file: !44, line: 469, baseType: !244, size: 128, offset: 1024)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !756, file: !44, line: 470, baseType: !166, size: 64, offset: 1152)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !751, file: !744, line: 87, baseType: !347, size: 64, offset: 192)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !751, file: !744, line: 94, baseType: !347, size: 64, offset: 256)
!936 = !DIDerivedType(tag: DW_TAG_member, scope: !748, file: !744, line: 96, baseType: !937, size: 64)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !748, file: !744, line: 96, size: 64, elements: !938)
!938 = !{!939}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !937, file: !744, line: 101, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !168, line: 143, baseType: !442)
!941 = !DIDerivedType(tag: DW_TAG_member, scope: !748, file: !744, line: 103, baseType: !942, size: 320)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !748, file: !744, line: 103, size: 320, elements: !943)
!943 = !{!944, !954, !957, !958}
!944 = !DIDerivedType(tag: DW_TAG_member, scope: !942, file: !744, line: 104, baseType: !945, size: 128)
!945 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !942, file: !744, line: 104, size: 128, elements: !946)
!946 = !{!947, !948}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !945, file: !744, line: 105, baseType: !244, size: 128)
!948 = !DIDerivedType(tag: DW_TAG_member, scope: !945, file: !744, line: 106, baseType: !949, size: 128)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !945, file: !744, line: 106, size: 128, elements: !950)
!950 = !{!951, !952, !953}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !949, file: !744, line: 107, baseType: !742, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !949, file: !744, line: 109, baseType: !224, size: 32, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !949, file: !744, line: 110, baseType: !224, size: 32, offset: 96)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !942, file: !744, line: 117, baseType: !955, size: 64, offset: 128)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !744, line: 117, flags: DIFlagFwdDecl)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !942, file: !744, line: 119, baseType: !166, size: 64, offset: 192)
!958 = !DIDerivedType(tag: DW_TAG_member, scope: !942, file: !744, line: 120, baseType: !959, size: 64, offset: 256)
!959 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !942, file: !744, line: 120, size: 64, elements: !960)
!960 = !{!961, !962, !963}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !959, file: !744, line: 121, baseType: !166, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !959, file: !744, line: 122, baseType: !347, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, scope: !959, file: !744, line: 123, baseType: !964, size: 32)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !959, file: !744, line: 123, size: 32, elements: !965)
!965 = !{!966, !967, !968}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !964, file: !744, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !964, file: !744, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !964, file: !744, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!969 = !DIDerivedType(tag: DW_TAG_member, scope: !748, file: !744, line: 130, baseType: !970, size: 192)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !748, file: !744, line: 130, size: 192, elements: !971)
!971 = !{!972, !973, !974, !975, !976}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !970, file: !744, line: 131, baseType: !347, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !970, file: !744, line: 134, baseType: !448, size: 8, offset: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !970, file: !744, line: 135, baseType: !448, size: 8, offset: 72)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !970, file: !744, line: 136, baseType: !768, size: 32, offset: 96)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !970, file: !744, line: 137, baseType: !7, size: 32, offset: 128)
!977 = !DIDerivedType(tag: DW_TAG_member, scope: !748, file: !744, line: 139, baseType: !978, size: 256)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !748, file: !744, line: 139, size: 256, elements: !979)
!979 = !{!980, !981, !982}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !978, file: !744, line: 140, baseType: !347, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !978, file: !744, line: 141, baseType: !768, size: 32, offset: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !978, file: !744, line: 143, baseType: !244, size: 128, offset: 128)
!983 = !DIDerivedType(tag: DW_TAG_member, scope: !748, file: !744, line: 145, baseType: !984, size: 256)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !748, file: !744, line: 145, size: 256, elements: !985)
!985 = !{!986, !987, !989, !990, !2354}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !984, file: !744, line: 146, baseType: !347, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !984, file: !744, line: 147, baseType: !988, size: 64, offset: 64)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !734, line: 509, baseType: !742)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !984, file: !744, line: 148, baseType: !347, size: 64, offset: 128)
!990 = !DIDerivedType(tag: DW_TAG_member, scope: !984, file: !744, line: 149, baseType: !991, size: 64, offset: 192)
!991 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !984, file: !744, line: 149, size: 64, elements: !992)
!992 = !{!993, !2353}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !991, file: !744, line: 150, baseType: !994, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !744, line: 388, size: 7296, elements: !996)
!996 = !{!997, !2349}
!997 = !DIDerivedType(tag: DW_TAG_member, scope: !995, file: !744, line: 389, baseType: !998, size: 7296)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !995, file: !744, line: 389, size: 7296, elements: !999)
!999 = !{!1000, !1118, !1119, !1120, !1124, !1125, !1126, !1127, !1128, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1169, !1177, !1180, !1226, !1227, !2333, !2334, !2337, !2338, !2339, !2342, !2343, !2344, !2347, !2348}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !998, file: !744, line: 390, baseType: !1001, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !744, line: 305, size: 1472, elements: !1003)
!1003 = !{!1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1018, !1019, !1024, !1025, !1028, !1112, !1113, !1114, !1115, !1116}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1002, file: !744, line: 308, baseType: !347, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1002, file: !744, line: 309, baseType: !347, size: 64, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1002, file: !744, line: 313, baseType: !1001, size: 64, offset: 128)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1002, file: !744, line: 313, baseType: !1001, size: 64, offset: 192)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1002, file: !744, line: 315, baseType: !781, size: 192, align: 64, offset: 256)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1002, file: !744, line: 323, baseType: !347, size: 64, offset: 448)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1002, file: !744, line: 327, baseType: !994, size: 64, offset: 512)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1002, file: !744, line: 333, baseType: !1012, size: 64, offset: 576)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !734, line: 284, baseType: !1013)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !734, line: 284, size: 64, elements: !1014)
!1014 = !{!1015}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1013, file: !734, line: 284, baseType: !1016, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1017, line: 19, baseType: !347)
!1017 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1002, file: !744, line: 334, baseType: !347, size: 64, offset: 640)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1002, file: !744, line: 343, baseType: !1020, size: 256, offset: 704)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1002, file: !744, line: 340, size: 256, elements: !1021)
!1021 = !{!1022, !1023}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1020, file: !744, line: 341, baseType: !781, size: 192, align: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1020, file: !744, line: 342, baseType: !347, size: 64, offset: 192)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1002, file: !744, line: 351, baseType: !244, size: 128, offset: 960)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1002, file: !744, line: 353, baseType: !1026, size: 64, offset: 1088)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !744, line: 353, flags: DIFlagFwdDecl)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1002, file: !744, line: 356, baseType: !1029, size: 64, offset: 1152)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1031)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1032)
!1032 = !{!1033, !1037, !1038, !1042, !1046, !1086, !1090, !1094, !1098, !1099, !1100, !1104, !1108}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1031, file: !14, line: 558, baseType: !1034, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{null, !1001}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1031, file: !14, line: 559, baseType: !1034, size: 64, offset: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1031, file: !14, line: 560, baseType: !1039, size: 64, offset: 128)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!224, !1001, !347}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1031, file: !14, line: 561, baseType: !1043, size: 64, offset: 192)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!224, !1001}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1031, file: !14, line: 562, baseType: !1047, size: 64, offset: 256)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!1050, !1051}
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !744, line: 682, baseType: !7)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1053)
!1053 = !{!1054, !1055, !1056, !1057, !1058, !1059, !1066, !1073, !1079, !1080, !1081, !1083, !1085}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1052, file: !14, line: 509, baseType: !1001, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1052, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1052, file: !14, line: 511, baseType: !167, size: 32, offset: 96)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1052, file: !14, line: 512, baseType: !347, size: 64, offset: 128)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1052, file: !14, line: 513, baseType: !347, size: 64, offset: 192)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1052, file: !14, line: 514, baseType: !1060, size: 64, offset: 256)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !734, line: 385, baseType: !1062)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !734, line: 385, size: 64, elements: !1063)
!1063 = !{!1064}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1062, file: !734, line: 385, baseType: !1065, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1017, line: 15, baseType: !347)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1052, file: !14, line: 516, baseType: !1067, size: 64, offset: 320)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !734, line: 359, baseType: !1069)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !734, line: 359, size: 64, elements: !1070)
!1070 = !{!1071}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1069, file: !734, line: 359, baseType: !1072, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1017, line: 16, baseType: !347)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1052, file: !14, line: 519, baseType: !1074, size: 64, offset: 384)
!1074 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1017, line: 21, baseType: !1075)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1017, line: 21, size: 64, elements: !1076)
!1076 = !{!1077}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1075, file: !1017, line: 21, baseType: !1078, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1017, line: 14, baseType: !347)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1052, file: !14, line: 521, baseType: !742, size: 64, offset: 448)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1052, file: !14, line: 522, baseType: !742, size: 64, offset: 512)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1052, file: !14, line: 528, baseType: !1082, size: 64, offset: 576)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1052, file: !14, line: 532, baseType: !1084, size: 64, offset: 640)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1052, file: !14, line: 536, baseType: !988, size: 64, offset: 704)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1031, file: !14, line: 563, baseType: !1087, size: 64, offset: 320)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!1050, !1051, !13}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1031, file: !14, line: 565, baseType: !1091, size: 64, offset: 384)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{null, !1051, !347, !347}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1031, file: !14, line: 567, baseType: !1095, size: 64, offset: 448)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!347, !1001}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1031, file: !14, line: 571, baseType: !1047, size: 64, offset: 512)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1031, file: !14, line: 574, baseType: !1047, size: 64, offset: 576)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1031, file: !14, line: 579, baseType: !1101, size: 64, offset: 640)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!224, !1001, !347, !166, !224, !224}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1031, file: !14, line: 585, baseType: !1105, size: 64, offset: 704)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!215, !1001}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1031, file: !14, line: 615, baseType: !1109, size: 64, offset: 768)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!742, !1001, !347}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1002, file: !744, line: 359, baseType: !347, size: 64, offset: 1216)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1002, file: !744, line: 361, baseType: !375, size: 64, offset: 1280)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1002, file: !744, line: 362, baseType: !166, size: 64, offset: 1344)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1002, file: !744, line: 365, baseType: !792, size: 64, offset: 1408)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1002, file: !744, line: 373, baseType: !1117, offset: 1472)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !744, line: 296, elements: !271)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !998, file: !744, line: 391, baseType: !777, size: 64, offset: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !998, file: !744, line: 392, baseType: !442, size: 64, offset: 128)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !998, file: !744, line: 394, baseType: !1121, size: 64, offset: 192)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!347, !375, !347, !347, !347, !347}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !998, file: !744, line: 398, baseType: !347, size: 64, offset: 256)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !998, file: !744, line: 399, baseType: !347, size: 64, offset: 320)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !998, file: !744, line: 405, baseType: !347, size: 64, offset: 384)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !998, file: !744, line: 406, baseType: !347, size: 64, offset: 448)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !998, file: !744, line: 407, baseType: !1129, size: 64, offset: 512)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !734, line: 286, baseType: !1131)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !734, line: 286, size: 64, elements: !1132)
!1132 = !{!1133}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1131, file: !734, line: 286, baseType: !1134, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1017, line: 18, baseType: !347)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !998, file: !744, line: 416, baseType: !768, size: 32, offset: 576)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !998, file: !744, line: 428, baseType: !768, size: 32, offset: 608)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !998, file: !744, line: 437, baseType: !768, size: 32, offset: 640)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !998, file: !744, line: 447, baseType: !768, size: 32, offset: 672)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !998, file: !744, line: 450, baseType: !792, size: 64, offset: 704)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !998, file: !744, line: 452, baseType: !224, size: 32, offset: 768)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !998, file: !744, line: 454, baseType: !257, offset: 800)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !998, file: !744, line: 457, baseType: !788, size: 256, offset: 832)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !998, file: !744, line: 459, baseType: !244, size: 128, offset: 1088)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !998, file: !744, line: 466, baseType: !347, size: 64, offset: 1216)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !998, file: !744, line: 467, baseType: !347, size: 64, offset: 1280)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !998, file: !744, line: 469, baseType: !347, size: 64, offset: 1344)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !998, file: !744, line: 470, baseType: !347, size: 64, offset: 1408)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !998, file: !744, line: 471, baseType: !794, size: 64, offset: 1472)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !998, file: !744, line: 472, baseType: !347, size: 64, offset: 1536)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !998, file: !744, line: 473, baseType: !347, size: 64, offset: 1600)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !998, file: !744, line: 474, baseType: !347, size: 64, offset: 1664)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !998, file: !744, line: 475, baseType: !347, size: 64, offset: 1728)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !998, file: !744, line: 477, baseType: !257, offset: 1792)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !998, file: !744, line: 478, baseType: !347, size: 64, offset: 1792)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !998, file: !744, line: 478, baseType: !347, size: 64, offset: 1856)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !998, file: !744, line: 478, baseType: !347, size: 64, offset: 1920)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !998, file: !744, line: 478, baseType: !347, size: 64, offset: 1984)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !998, file: !744, line: 479, baseType: !347, size: 64, offset: 2048)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !998, file: !744, line: 479, baseType: !347, size: 64, offset: 2112)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !998, file: !744, line: 479, baseType: !347, size: 64, offset: 2176)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !998, file: !744, line: 480, baseType: !347, size: 64, offset: 2240)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !998, file: !744, line: 480, baseType: !347, size: 64, offset: 2304)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !998, file: !744, line: 480, baseType: !347, size: 64, offset: 2368)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !998, file: !744, line: 480, baseType: !347, size: 64, offset: 2432)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !998, file: !744, line: 482, baseType: !1166, size: 2816, offset: 2496)
!1166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 2816, elements: !1167)
!1167 = !{!1168}
!1168 = !DISubrange(count: 44)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !998, file: !744, line: 488, baseType: !1170, size: 256, offset: 5312)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1171, line: 60, size: 256, elements: !1172)
!1171 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1172 = !{!1173}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1170, file: !1171, line: 61, baseType: !1174, size: 256)
!1174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !792, size: 256, elements: !1175)
!1175 = !{!1176}
!1176 = !DISubrange(count: 4)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !998, file: !744, line: 490, baseType: !1178, size: 64, offset: 5568)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !744, line: 490, flags: DIFlagFwdDecl)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !998, file: !744, line: 493, baseType: !1181, size: 896, offset: 5632)
!1181 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1182, line: 53, baseType: !1183)
!1182 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1182, line: 13, size: 896, elements: !1184)
!1184 = !{!1185, !1186, !1187, !1188, !1191, !1192, !1199, !1200, !1220, !1221, !1222}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1183, file: !1182, line: 18, baseType: !442, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1183, file: !1182, line: 28, baseType: !794, size: 64, offset: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1183, file: !1182, line: 31, baseType: !788, size: 256, offset: 128)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1183, file: !1182, line: 32, baseType: !1189, size: 64, offset: 384)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1182, line: 32, flags: DIFlagFwdDecl)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1183, file: !1182, line: 37, baseType: !171, size: 16, offset: 448)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1183, file: !1182, line: 40, baseType: !1193, size: 192, offset: 512)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1194, line: 53, size: 192, elements: !1195)
!1194 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1195 = !{!1196, !1197, !1198}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1193, file: !1194, line: 54, baseType: !792, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1193, file: !1194, line: 55, baseType: !257, offset: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1193, file: !1194, line: 59, baseType: !244, size: 128, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1183, file: !1182, line: 41, baseType: !166, size: 64, offset: 704)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1183, file: !1182, line: 42, baseType: !1201, size: 64, offset: 768)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1203)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1204, line: 13, size: 896, elements: !1205)
!1204 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1205 = !{!1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1203, file: !1204, line: 14, baseType: !166, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1203, file: !1204, line: 15, baseType: !347, size: 64, offset: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1203, file: !1204, line: 17, baseType: !347, size: 64, offset: 128)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1203, file: !1204, line: 17, baseType: !347, size: 64, offset: 192)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1203, file: !1204, line: 19, baseType: !333, size: 64, offset: 256)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1203, file: !1204, line: 21, baseType: !333, size: 64, offset: 320)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1203, file: !1204, line: 22, baseType: !333, size: 64, offset: 384)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1203, file: !1204, line: 23, baseType: !333, size: 64, offset: 448)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1203, file: !1204, line: 24, baseType: !333, size: 64, offset: 512)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1203, file: !1204, line: 25, baseType: !333, size: 64, offset: 576)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1203, file: !1204, line: 26, baseType: !333, size: 64, offset: 640)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1203, file: !1204, line: 27, baseType: !333, size: 64, offset: 704)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1203, file: !1204, line: 28, baseType: !333, size: 64, offset: 768)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1203, file: !1204, line: 29, baseType: !333, size: 64, offset: 832)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1183, file: !1182, line: 44, baseType: !768, size: 32, offset: 832)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1183, file: !1182, line: 50, baseType: !880, size: 16, offset: 864)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1183, file: !1182, line: 51, baseType: !1223, size: 16, offset: 880)
!1223 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !439, line: 18, baseType: !1224)
!1224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !170, line: 23, baseType: !1225)
!1225 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !998, file: !744, line: 495, baseType: !347, size: 64, offset: 6528)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !998, file: !744, line: 497, baseType: !1228, size: 64, offset: 6592)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !744, line: 381, size: 384, elements: !1230)
!1230 = !{!1231, !1232, !2332}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1229, file: !744, line: 382, baseType: !768, size: 32)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1229, file: !744, line: 383, baseType: !1233, size: 128, offset: 64)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !744, line: 376, size: 128, elements: !1234)
!1234 = !{!1235, !2330}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1233, file: !744, line: 377, baseType: !1236, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1238, line: 640, size: 48640, elements: !1239)
!1238 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1239 = !{!1240, !1246, !1248, !1249, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1266, !1284, !1295, !1380, !1381, !1382, !1393, !1394, !1396, !1397, !1398, !1399, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1478, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1516, !1518, !1519, !1520, !1532, !1533, !1534, !1535, !1536, !1537, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1561, !1566, !1750, !1751, !1752, !1753, !1757, !1760, !1763, !1766, !1769, !1773, !1874, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1918, !1919, !1920, !1921, !1922, !1927, !1928, !1929, !1932, !1933, !1936, !1939, !1942, !1945, !1988, !1991, !1992, !2071, !2072, !2075, !2076, !2079, !2080, !2081, !2085, !2086, !2087, !2100, !2101, !2102, !2112, !2117, !2120, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1237, file: !1238, line: 646, baseType: !1241, size: 128)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1242, line: 56, size: 128, elements: !1243)
!1242 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1243 = !{!1244, !1245}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1241, file: !1242, line: 57, baseType: !347, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1241, file: !1242, line: 58, baseType: !438, size: 32, offset: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1237, file: !1238, line: 649, baseType: !1247, size: 64, offset: 128)
!1247 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !333)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1237, file: !1238, line: 657, baseType: !166, size: 64, offset: 192)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1237, file: !1238, line: 658, baseType: !1250, size: 32, offset: 256)
!1250 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1251, line: 113, baseType: !1252)
!1251 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1251, line: 111, size: 32, elements: !1253)
!1253 = !{!1254}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1252, file: !1251, line: 112, baseType: !768, size: 32)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1237, file: !1238, line: 660, baseType: !7, size: 32, offset: 288)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1237, file: !1238, line: 661, baseType: !7, size: 32, offset: 320)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1237, file: !1238, line: 684, baseType: !224, size: 32, offset: 352)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1237, file: !1238, line: 686, baseType: !224, size: 32, offset: 384)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1237, file: !1238, line: 687, baseType: !224, size: 32, offset: 416)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1237, file: !1238, line: 688, baseType: !224, size: 32, offset: 448)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1237, file: !1238, line: 689, baseType: !7, size: 32, offset: 480)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1237, file: !1238, line: 691, baseType: !1263, size: 64, offset: 512)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1265)
!1265 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1238, line: 691, flags: DIFlagFwdDecl)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1237, file: !1238, line: 692, baseType: !1267, size: 832, offset: 576)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1238, line: 451, size: 832, elements: !1268)
!1268 = !{!1269, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1267, file: !1238, line: 453, baseType: !1270, size: 128)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1238, line: 325, size: 128, elements: !1271)
!1271 = !{!1272, !1273}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1270, file: !1238, line: 326, baseType: !347, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1270, file: !1238, line: 327, baseType: !438, size: 32, offset: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1267, file: !1238, line: 454, baseType: !781, size: 192, align: 64, offset: 128)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1267, file: !1238, line: 455, baseType: !244, size: 128, offset: 320)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1267, file: !1238, line: 456, baseType: !7, size: 32, offset: 448)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1267, file: !1238, line: 458, baseType: !442, size: 64, offset: 512)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1267, file: !1238, line: 459, baseType: !442, size: 64, offset: 576)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1267, file: !1238, line: 460, baseType: !442, size: 64, offset: 640)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1267, file: !1238, line: 461, baseType: !442, size: 64, offset: 704)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1267, file: !1238, line: 463, baseType: !442, size: 64, offset: 768)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1267, file: !1238, line: 465, baseType: !1283, offset: 832)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1238, line: 415, elements: !271)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1237, file: !1238, line: 693, baseType: !1285, size: 384, offset: 1408)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1238, line: 489, size: 384, elements: !1286)
!1286 = !{!1287, !1288, !1289, !1290, !1291, !1292, !1293}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1285, file: !1238, line: 490, baseType: !244, size: 128)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1285, file: !1238, line: 491, baseType: !347, size: 64, offset: 128)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1285, file: !1238, line: 492, baseType: !347, size: 64, offset: 192)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1285, file: !1238, line: 493, baseType: !7, size: 32, offset: 256)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1285, file: !1238, line: 494, baseType: !171, size: 16, offset: 288)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1285, file: !1238, line: 495, baseType: !171, size: 16, offset: 304)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1285, file: !1238, line: 497, baseType: !1294, size: 64, offset: 320)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1237, file: !1238, line: 697, baseType: !1296, size: 1792, offset: 1792)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1238, line: 507, size: 1792, elements: !1297)
!1297 = !{!1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1377, !1378}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1296, file: !1238, line: 508, baseType: !781, size: 192, align: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1296, file: !1238, line: 515, baseType: !442, size: 64, offset: 192)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1296, file: !1238, line: 516, baseType: !442, size: 64, offset: 256)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1296, file: !1238, line: 517, baseType: !442, size: 64, offset: 320)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1296, file: !1238, line: 518, baseType: !442, size: 64, offset: 384)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1296, file: !1238, line: 519, baseType: !442, size: 64, offset: 448)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1296, file: !1238, line: 526, baseType: !798, size: 64, offset: 512)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1296, file: !1238, line: 527, baseType: !442, size: 64, offset: 576)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1296, file: !1238, line: 528, baseType: !7, size: 32, offset: 640)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1296, file: !1238, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1296, file: !1238, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1296, file: !1238, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1296, file: !1238, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1296, file: !1238, line: 563, baseType: !1312, size: 512, offset: 704)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1313)
!1313 = !{!1314, !1322, !1323, !1328, !1371, !1374, !1375, !1376}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1312, file: !20, line: 119, baseType: !1315, size: 256)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1316, line: 9, size: 256, elements: !1317)
!1316 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1317 = !{!1318, !1319}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1315, file: !1316, line: 10, baseType: !781, size: 192, align: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1315, file: !1316, line: 11, baseType: !1320, size: 64, offset: 192)
!1320 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1321, line: 29, baseType: !798)
!1321 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1312, file: !20, line: 120, baseType: !1320, size: 64, offset: 256)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1312, file: !20, line: 121, baseType: !1324, size: 64, offset: 320)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!19, !1327}
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1312, file: !20, line: 122, baseType: !1329, size: 64, offset: 384)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1331)
!1331 = !{!1332, !1352, !1353, !1356, !1361, !1362, !1366, !1370}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1330, file: !20, line: 160, baseType: !1333, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1335)
!1335 = !{!1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1334, file: !20, line: 215, baseType: !801)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1334, file: !20, line: 216, baseType: !7, size: 32)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1334, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1334, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1334, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1334, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1334, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1334, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1334, file: !20, line: 233, baseType: !1320, size: 64, offset: 128)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1334, file: !20, line: 234, baseType: !1327, size: 64, offset: 192)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1334, file: !20, line: 235, baseType: !1320, size: 64, offset: 256)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1334, file: !20, line: 236, baseType: !1327, size: 64, offset: 320)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1334, file: !20, line: 237, baseType: !1349, size: 4096, offset: 512)
!1349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1330, size: 4096, elements: !1350)
!1350 = !{!1351}
!1351 = !DISubrange(count: 8)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1330, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1330, file: !20, line: 162, baseType: !1354, size: 32, offset: 96)
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !168, line: 27, baseType: !1355)
!1355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !331, line: 96, baseType: !224)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1330, file: !20, line: 163, baseType: !1357, size: 32, offset: 128)
!1357 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !411, line: 276, baseType: !1358)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !411, line: 276, size: 32, elements: !1359)
!1359 = !{!1360}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1358, file: !411, line: 276, baseType: !415, size: 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1330, file: !20, line: 164, baseType: !1327, size: 64, offset: 192)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1330, file: !20, line: 165, baseType: !1363, size: 128, offset: 256)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1316, line: 14, size: 128, elements: !1364)
!1364 = !{!1365}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1363, file: !1316, line: 15, baseType: !773, size: 128)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1330, file: !20, line: 166, baseType: !1367, size: 64, offset: 384)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!1320}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1330, file: !20, line: 167, baseType: !1320, size: 64, offset: 448)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1312, file: !20, line: 123, baseType: !1372, size: 8, offset: 448)
!1372 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !439, line: 17, baseType: !1373)
!1373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !170, line: 21, baseType: !448)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1312, file: !20, line: 124, baseType: !1372, size: 8, offset: 456)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1312, file: !20, line: 125, baseType: !1372, size: 8, offset: 464)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1312, file: !20, line: 126, baseType: !1372, size: 8, offset: 472)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1296, file: !1238, line: 572, baseType: !1312, size: 512, offset: 1216)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1296, file: !1238, line: 580, baseType: !1379, size: 64, offset: 1728)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1237, file: !1238, line: 721, baseType: !7, size: 32, offset: 3584)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1237, file: !1238, line: 722, baseType: !224, size: 32, offset: 3616)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1237, file: !1238, line: 723, baseType: !1383, size: 64, offset: 3648)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1385)
!1385 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1386, line: 17, baseType: !1387)
!1386 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1386, line: 17, size: 64, elements: !1388)
!1388 = !{!1389}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1387, file: !1386, line: 17, baseType: !1390, size: 64)
!1390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 64, elements: !1391)
!1391 = !{!1392}
!1392 = !DISubrange(count: 1)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1237, file: !1238, line: 724, baseType: !1385, size: 64, offset: 3712)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1237, file: !1238, line: 749, baseType: !1395, offset: 3776)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1238, line: 290, elements: !271)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1237, file: !1238, line: 751, baseType: !244, size: 128, offset: 3776)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1237, file: !1238, line: 757, baseType: !994, size: 64, offset: 3904)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1237, file: !1238, line: 758, baseType: !994, size: 64, offset: 3968)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1237, file: !1238, line: 761, baseType: !1400, size: 320, offset: 4032)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1171, line: 34, size: 320, elements: !1401)
!1401 = !{!1402, !1403}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1400, file: !1171, line: 35, baseType: !442, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1400, file: !1171, line: 36, baseType: !1404, size: 256, offset: 64)
!1404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1001, size: 256, elements: !1175)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1237, file: !1238, line: 766, baseType: !224, size: 32, offset: 4352)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1237, file: !1238, line: 767, baseType: !224, size: 32, offset: 4384)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1237, file: !1238, line: 768, baseType: !224, size: 32, offset: 4416)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1237, file: !1238, line: 770, baseType: !224, size: 32, offset: 4448)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1237, file: !1238, line: 772, baseType: !347, size: 64, offset: 4480)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1237, file: !1238, line: 775, baseType: !7, size: 32, offset: 4544)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1237, file: !1238, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1237, file: !1238, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1237, file: !1238, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1237, file: !1238, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1237, file: !1238, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1237, file: !1238, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1237, file: !1238, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1237, file: !1238, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1237, file: !1238, line: 831, baseType: !347, size: 64, offset: 4672)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1237, file: !1238, line: 833, baseType: !1421, size: 384, offset: 4736)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1422)
!1422 = !{!1423, !1428}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1421, file: !25, line: 26, baseType: !1424, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!333, !1427}
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, scope: !1421, file: !25, line: 27, baseType: !1429, size: 320, offset: 64)
!1429 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1421, file: !25, line: 27, size: 320, elements: !1430)
!1430 = !{!1431, !1441, !1468}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1429, file: !25, line: 36, baseType: !1432, size: 320)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1429, file: !25, line: 29, size: 320, elements: !1433)
!1433 = !{!1434, !1436, !1437, !1438, !1439, !1440}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1432, file: !25, line: 30, baseType: !1435, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1432, file: !25, line: 31, baseType: !438, size: 32, offset: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1432, file: !25, line: 32, baseType: !438, size: 32, offset: 96)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1432, file: !25, line: 33, baseType: !438, size: 32, offset: 128)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1432, file: !25, line: 34, baseType: !442, size: 64, offset: 192)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1432, file: !25, line: 35, baseType: !1435, size: 64, offset: 256)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1429, file: !25, line: 46, baseType: !1442, size: 192)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1429, file: !25, line: 38, size: 192, elements: !1443)
!1443 = !{!1444, !1445, !1446, !1467}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1442, file: !25, line: 39, baseType: !1354, size: 32)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1442, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1446 = !DIDerivedType(tag: DW_TAG_member, scope: !1442, file: !25, line: 41, baseType: !1447, size: 64, offset: 64)
!1447 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1442, file: !25, line: 41, size: 64, elements: !1448)
!1448 = !{!1449, !1457}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1447, file: !25, line: 42, baseType: !1450, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1452, line: 7, size: 128, elements: !1453)
!1452 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1453 = !{!1454, !1456}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1451, file: !1452, line: 8, baseType: !1455, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !331, line: 93, baseType: !554)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1451, file: !1452, line: 9, baseType: !554, size: 64, offset: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1447, file: !25, line: 43, baseType: !1458, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1460, line: 7, size: 64, elements: !1461)
!1460 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1461 = !{!1462, !1466}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1459, file: !1460, line: 8, baseType: !1463, size: 32)
!1463 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1460, line: 5, baseType: !1464)
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !439, line: 20, baseType: !1465)
!1465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !170, line: 26, baseType: !224)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1459, file: !1460, line: 9, baseType: !1464, size: 32, offset: 32)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1442, file: !25, line: 45, baseType: !442, size: 64, offset: 128)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1429, file: !25, line: 54, baseType: !1469, size: 256)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1429, file: !25, line: 48, size: 256, elements: !1470)
!1470 = !{!1471, !1474, !1475, !1476, !1477}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1469, file: !25, line: 49, baseType: !1472, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1469, file: !25, line: 50, baseType: !224, size: 32, offset: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1469, file: !25, line: 51, baseType: !224, size: 32, offset: 96)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1469, file: !25, line: 52, baseType: !347, size: 64, offset: 128)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1469, file: !25, line: 53, baseType: !347, size: 64, offset: 192)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1237, file: !1238, line: 835, baseType: !1479, size: 32, offset: 5120)
!1479 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !168, line: 22, baseType: !1480)
!1480 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !331, line: 28, baseType: !224)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1237, file: !1238, line: 836, baseType: !1479, size: 32, offset: 5152)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1237, file: !1238, line: 840, baseType: !347, size: 64, offset: 5184)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1237, file: !1238, line: 849, baseType: !1236, size: 64, offset: 5248)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1237, file: !1238, line: 852, baseType: !1236, size: 64, offset: 5312)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1237, file: !1238, line: 857, baseType: !244, size: 128, offset: 5376)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1237, file: !1238, line: 858, baseType: !244, size: 128, offset: 5504)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1237, file: !1238, line: 859, baseType: !1236, size: 64, offset: 5632)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1237, file: !1238, line: 867, baseType: !244, size: 128, offset: 5696)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1237, file: !1238, line: 868, baseType: !244, size: 128, offset: 5824)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1237, file: !1238, line: 871, baseType: !1491, size: 64, offset: 5952)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1493)
!1493 = !{!1494, !1495, !1496, !1497, !1499, !1500, !1507, !1508}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1492, file: !53, line: 61, baseType: !1250, size: 32)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1492, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1492, file: !53, line: 63, baseType: !257, offset: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1492, file: !53, line: 65, baseType: !1498, size: 256, offset: 64)
!1498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !656, size: 256, elements: !1175)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1492, file: !53, line: 66, baseType: !656, size: 64, offset: 320)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1492, file: !53, line: 68, baseType: !1501, size: 128, offset: 384)
!1501 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1502, line: 40, baseType: !1503)
!1502 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1502, line: 36, size: 128, elements: !1504)
!1504 = !{!1505, !1506}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1503, file: !1502, line: 37, baseType: !257)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1503, file: !1502, line: 38, baseType: !244, size: 128)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1492, file: !53, line: 69, baseType: !388, size: 128, align: 64, offset: 512)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1492, file: !53, line: 70, baseType: !1509, size: 128, offset: 640)
!1509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1510, size: 128, elements: !1391)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1511)
!1511 = !{!1512, !1513}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1510, file: !53, line: 55, baseType: !224, size: 32)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1510, file: !53, line: 56, baseType: !1514, size: 64, offset: 64)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1237, file: !1238, line: 872, baseType: !1517, size: 512, offset: 6016)
!1517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !660, size: 512, elements: !1175)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1237, file: !1238, line: 873, baseType: !244, size: 128, offset: 6528)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1237, file: !1238, line: 874, baseType: !244, size: 128, offset: 6656)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1237, file: !1238, line: 876, baseType: !1521, size: 64, offset: 6784)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1523, line: 26, size: 192, elements: !1524)
!1523 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1524 = !{!1525, !1526}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1522, file: !1523, line: 27, baseType: !7, size: 32)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1522, file: !1523, line: 28, baseType: !1527, size: 128, offset: 64)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1528, line: 43, size: 128, elements: !1529)
!1528 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1529 = !{!1530, !1531}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1527, file: !1528, line: 44, baseType: !801)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1527, file: !1528, line: 45, baseType: !244, size: 128)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1237, file: !1238, line: 879, baseType: !726, size: 64, offset: 6848)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1237, file: !1238, line: 882, baseType: !726, size: 64, offset: 6912)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1237, file: !1238, line: 884, baseType: !442, size: 64, offset: 6976)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1237, file: !1238, line: 885, baseType: !442, size: 64, offset: 7040)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1237, file: !1238, line: 890, baseType: !442, size: 64, offset: 7104)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1237, file: !1238, line: 891, baseType: !1538, size: 128, offset: 7168)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1238, line: 242, size: 128, elements: !1539)
!1539 = !{!1540, !1541, !1542}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1538, file: !1238, line: 244, baseType: !442, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1538, file: !1238, line: 245, baseType: !442, size: 64, offset: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1538, file: !1238, line: 246, baseType: !801, offset: 128)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1237, file: !1238, line: 900, baseType: !347, size: 64, offset: 7296)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1237, file: !1238, line: 901, baseType: !347, size: 64, offset: 7360)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1237, file: !1238, line: 904, baseType: !442, size: 64, offset: 7424)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1237, file: !1238, line: 907, baseType: !442, size: 64, offset: 7488)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1237, file: !1238, line: 910, baseType: !347, size: 64, offset: 7552)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1237, file: !1238, line: 911, baseType: !347, size: 64, offset: 7616)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1237, file: !1238, line: 914, baseType: !1550, size: 640, offset: 7680)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1551, line: 123, size: 640, elements: !1552)
!1551 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1552 = !{!1553, !1559, !1560}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1550, file: !1551, line: 124, baseType: !1554, size: 576)
!1554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1555, size: 576, elements: !299)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1551, line: 108, size: 192, elements: !1556)
!1556 = !{!1557, !1558}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1555, file: !1551, line: 109, baseType: !442, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1555, file: !1551, line: 110, baseType: !1363, size: 128, offset: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1550, file: !1551, line: 125, baseType: !7, size: 32, offset: 576)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1550, file: !1551, line: 126, baseType: !7, size: 32, offset: 608)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1237, file: !1238, line: 917, baseType: !1562, size: 192, offset: 8320)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1551, line: 134, size: 192, elements: !1563)
!1563 = !{!1564, !1565}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1562, file: !1551, line: 135, baseType: !388, size: 128, align: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1562, file: !1551, line: 136, baseType: !7, size: 32, offset: 128)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1237, file: !1238, line: 923, baseType: !1567, size: 64, offset: 8512)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1569)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1570, line: 111, size: 1280, elements: !1571)
!1570 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1571 = !{!1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1591, !1592, !1593, !1594, !1595, !1596, !1703, !1704, !1705, !1706, !1732, !1735, !1745}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1569, file: !1570, line: 112, baseType: !768, size: 32)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1569, file: !1570, line: 120, baseType: !456, size: 32, offset: 32)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1569, file: !1570, line: 121, baseType: !464, size: 32, offset: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1569, file: !1570, line: 122, baseType: !456, size: 32, offset: 96)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1569, file: !1570, line: 123, baseType: !464, size: 32, offset: 128)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1569, file: !1570, line: 124, baseType: !456, size: 32, offset: 160)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1569, file: !1570, line: 125, baseType: !464, size: 32, offset: 192)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1569, file: !1570, line: 126, baseType: !456, size: 32, offset: 224)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1569, file: !1570, line: 127, baseType: !464, size: 32, offset: 256)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1569, file: !1570, line: 128, baseType: !7, size: 32, offset: 288)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1569, file: !1570, line: 129, baseType: !1583, size: 64, offset: 320)
!1583 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1584, line: 26, baseType: !1585)
!1584 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1584, line: 24, size: 64, elements: !1586)
!1586 = !{!1587}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1585, file: !1584, line: 25, baseType: !1588, size: 64)
!1588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 64, elements: !1589)
!1589 = !{!1590}
!1590 = !DISubrange(count: 2)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1569, file: !1570, line: 130, baseType: !1583, size: 64, offset: 384)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1569, file: !1570, line: 131, baseType: !1583, size: 64, offset: 448)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1569, file: !1570, line: 132, baseType: !1583, size: 64, offset: 512)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1569, file: !1570, line: 133, baseType: !1583, size: 64, offset: 576)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1569, file: !1570, line: 135, baseType: !448, size: 8, offset: 640)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1569, file: !1570, line: 137, baseType: !1597, size: 64, offset: 704)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1599, line: 189, size: 1664, elements: !1600)
!1599 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1600 = !{!1601, !1602, !1605, !1610, !1611, !1614, !1615, !1620, !1621, !1622, !1623, !1625, !1626, !1627, !1628, !1629, !1667, !1688}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1598, file: !1599, line: 190, baseType: !1250, size: 32)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1598, file: !1599, line: 191, baseType: !1603, size: 32, offset: 32)
!1603 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1599, line: 28, baseType: !1604)
!1604 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !168, line: 98, baseType: !1464)
!1605 = !DIDerivedType(tag: DW_TAG_member, scope: !1598, file: !1599, line: 192, baseType: !1606, size: 192, offset: 64)
!1606 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1598, file: !1599, line: 192, size: 192, elements: !1607)
!1607 = !{!1608, !1609}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1606, file: !1599, line: 193, baseType: !244, size: 128)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1606, file: !1599, line: 194, baseType: !781, size: 192, align: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1598, file: !1599, line: 199, baseType: !788, size: 256, offset: 256)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1598, file: !1599, line: 200, baseType: !1612, size: 64, offset: 512)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1599, line: 200, flags: DIFlagFwdDecl)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1598, file: !1599, line: 201, baseType: !166, size: 64, offset: 576)
!1615 = !DIDerivedType(tag: DW_TAG_member, scope: !1598, file: !1599, line: 202, baseType: !1616, size: 64, offset: 640)
!1616 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1598, file: !1599, line: 202, size: 64, elements: !1617)
!1617 = !{!1618, !1619}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1616, file: !1599, line: 203, baseType: !560, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1616, file: !1599, line: 204, baseType: !560, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1598, file: !1599, line: 206, baseType: !560, size: 64, offset: 704)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1598, file: !1599, line: 207, baseType: !456, size: 32, offset: 768)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1598, file: !1599, line: 208, baseType: !464, size: 32, offset: 800)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1598, file: !1599, line: 209, baseType: !1624, size: 32, offset: 832)
!1624 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1599, line: 31, baseType: !580)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1598, file: !1599, line: 210, baseType: !171, size: 16, offset: 864)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1598, file: !1599, line: 211, baseType: !171, size: 16, offset: 880)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1598, file: !1599, line: 215, baseType: !1225, size: 16, offset: 896)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1598, file: !1599, line: 222, baseType: !347, size: 64, offset: 960)
!1629 = !DIDerivedType(tag: DW_TAG_member, scope: !1598, file: !1599, line: 239, baseType: !1630, size: 320, offset: 1024)
!1630 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1598, file: !1599, line: 239, size: 320, elements: !1631)
!1631 = !{!1632, !1659}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1630, file: !1599, line: 240, baseType: !1633, size: 320)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1599, line: 108, size: 320, elements: !1634)
!1634 = !{!1635, !1636, !1648, !1651, !1658}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1633, file: !1599, line: 110, baseType: !347, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, scope: !1633, file: !1599, line: 111, baseType: !1637, size: 64, offset: 64)
!1637 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1633, file: !1599, line: 111, size: 64, elements: !1638)
!1638 = !{!1639, !1647}
!1639 = !DIDerivedType(tag: DW_TAG_member, scope: !1637, file: !1599, line: 112, baseType: !1640, size: 64)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1637, file: !1599, line: 112, size: 64, elements: !1641)
!1641 = !{!1642, !1643}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1640, file: !1599, line: 114, baseType: !880, size: 16)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1640, file: !1599, line: 115, baseType: !1644, size: 48, offset: 16)
!1644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 48, elements: !1645)
!1645 = !{!1646}
!1646 = !DISubrange(count: 6)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1637, file: !1599, line: 121, baseType: !347, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1633, file: !1599, line: 123, baseType: !1649, size: 64, offset: 128)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1599, line: 96, flags: DIFlagFwdDecl)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1633, file: !1599, line: 124, baseType: !1652, size: 64, offset: 192)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1599, line: 102, size: 192, elements: !1654)
!1654 = !{!1655, !1656, !1657}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1653, file: !1599, line: 103, baseType: !388, size: 128, align: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1653, file: !1599, line: 104, baseType: !1250, size: 32, offset: 128)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1653, file: !1599, line: 105, baseType: !511, size: 8, offset: 160)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1633, file: !1599, line: 125, baseType: !215, size: 64, offset: 256)
!1659 = !DIDerivedType(tag: DW_TAG_member, scope: !1630, file: !1599, line: 241, baseType: !1660, size: 320)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1630, file: !1599, line: 241, size: 320, elements: !1661)
!1661 = !{!1662, !1663, !1664, !1665, !1666}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1660, file: !1599, line: 242, baseType: !347, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1660, file: !1599, line: 243, baseType: !347, size: 64, offset: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1660, file: !1599, line: 244, baseType: !1649, size: 64, offset: 128)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1660, file: !1599, line: 245, baseType: !1652, size: 64, offset: 192)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1660, file: !1599, line: 246, baseType: !298, size: 64, offset: 256)
!1667 = !DIDerivedType(tag: DW_TAG_member, scope: !1598, file: !1599, line: 254, baseType: !1668, size: 256, offset: 1344)
!1668 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1598, file: !1599, line: 254, size: 256, elements: !1669)
!1669 = !{!1670, !1676}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1668, file: !1599, line: 255, baseType: !1671, size: 256)
!1671 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1599, line: 128, size: 256, elements: !1672)
!1672 = !{!1673, !1674}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1671, file: !1599, line: 129, baseType: !166, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1671, file: !1599, line: 130, baseType: !1675, size: 256)
!1675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 256, elements: !1175)
!1676 = !DIDerivedType(tag: DW_TAG_member, scope: !1668, file: !1599, line: 256, baseType: !1677, size: 256)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1668, file: !1599, line: 256, size: 256, elements: !1678)
!1678 = !{!1679, !1680}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1677, file: !1599, line: 258, baseType: !244, size: 128)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1677, file: !1599, line: 259, baseType: !1681, size: 128, offset: 128)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1682, line: 22, size: 128, elements: !1683)
!1682 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1683 = !{!1684, !1687}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1681, file: !1682, line: 23, baseType: !1685, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1682, line: 23, flags: DIFlagFwdDecl)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1681, file: !1682, line: 24, baseType: !347, size: 64, offset: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1598, file: !1599, line: 274, baseType: !1689, size: 64, offset: 1600)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1599, line: 170, size: 192, elements: !1691)
!1691 = !{!1692, !1701, !1702}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1690, file: !1599, line: 171, baseType: !1693, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1599, line: 165, baseType: !1694)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!224, !1597, !1697, !1699, !1597}
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1650)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1671)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1690, file: !1599, line: 172, baseType: !1597, size: 64, offset: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1690, file: !1599, line: 173, baseType: !1649, size: 64, offset: 128)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1569, file: !1570, line: 138, baseType: !1597, size: 64, offset: 768)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1569, file: !1570, line: 139, baseType: !1597, size: 64, offset: 832)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1569, file: !1570, line: 140, baseType: !1597, size: 64, offset: 896)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1569, file: !1570, line: 145, baseType: !1707, size: 64, offset: 960)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1709, line: 13, size: 896, elements: !1710)
!1709 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1710 = !{!1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1708, file: !1709, line: 14, baseType: !1250, size: 32)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1708, file: !1709, line: 15, baseType: !768, size: 32, offset: 32)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1708, file: !1709, line: 16, baseType: !768, size: 32, offset: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1708, file: !1709, line: 21, baseType: !792, size: 64, offset: 128)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1708, file: !1709, line: 27, baseType: !347, size: 64, offset: 192)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1708, file: !1709, line: 28, baseType: !347, size: 64, offset: 256)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1708, file: !1709, line: 29, baseType: !792, size: 64, offset: 320)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1708, file: !1709, line: 32, baseType: !660, size: 128, offset: 384)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1708, file: !1709, line: 33, baseType: !456, size: 32, offset: 512)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1708, file: !1709, line: 37, baseType: !792, size: 64, offset: 576)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1708, file: !1709, line: 44, baseType: !1722, size: 256, offset: 640)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1723, line: 15, size: 256, elements: !1724)
!1723 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1724 = !{!1725, !1726, !1727, !1728, !1729, !1730, !1731}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1722, file: !1723, line: 16, baseType: !801)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1722, file: !1723, line: 18, baseType: !224, size: 32)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1722, file: !1723, line: 19, baseType: !224, size: 32, offset: 32)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1722, file: !1723, line: 20, baseType: !224, size: 32, offset: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1722, file: !1723, line: 21, baseType: !224, size: 32, offset: 96)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1722, file: !1723, line: 22, baseType: !347, size: 64, offset: 128)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1722, file: !1723, line: 23, baseType: !347, size: 64, offset: 192)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1569, file: !1570, line: 146, baseType: !1733, size: 64, offset: 1024)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !457, line: 18, flags: DIFlagFwdDecl)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1569, file: !1570, line: 147, baseType: !1736, size: 64, offset: 1088)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1570, line: 25, size: 64, elements: !1738)
!1738 = !{!1739, !1740, !1741}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1737, file: !1570, line: 26, baseType: !768, size: 32)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1737, file: !1570, line: 27, baseType: !224, size: 32, offset: 32)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1737, file: !1570, line: 28, baseType: !1742, offset: 64)
!1742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, elements: !1743)
!1743 = !{!1744}
!1744 = !DISubrange(count: 0)
!1745 = !DIDerivedType(tag: DW_TAG_member, scope: !1569, file: !1570, line: 149, baseType: !1746, size: 128, offset: 1152)
!1746 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1569, file: !1570, line: 149, size: 128, elements: !1747)
!1747 = !{!1748, !1749}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1746, file: !1570, line: 150, baseType: !224, size: 32)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1746, file: !1570, line: 151, baseType: !388, size: 128, align: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1237, file: !1238, line: 926, baseType: !1567, size: 64, offset: 8576)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1237, file: !1238, line: 929, baseType: !1567, size: 64, offset: 8640)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1237, file: !1238, line: 933, baseType: !1597, size: 64, offset: 8704)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1237, file: !1238, line: 943, baseType: !1754, size: 128, offset: 8768)
!1754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 128, elements: !1755)
!1755 = !{!1756}
!1756 = !DISubrange(count: 16)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1237, file: !1238, line: 945, baseType: !1758, size: 64, offset: 8896)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1238, line: 49, flags: DIFlagFwdDecl)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1237, file: !1238, line: 956, baseType: !1761, size: 64, offset: 8960)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1238, line: 45, flags: DIFlagFwdDecl)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1237, file: !1238, line: 959, baseType: !1764, size: 64, offset: 9024)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1238, line: 959, flags: DIFlagFwdDecl)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1237, file: !1238, line: 962, baseType: !1767, size: 64, offset: 9088)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1238, line: 66, flags: DIFlagFwdDecl)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1237, file: !1238, line: 966, baseType: !1770, size: 64, offset: 9152)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1772, line: 35, flags: DIFlagFwdDecl)
!1772 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1237, file: !1238, line: 969, baseType: !1774, size: 64, offset: 9216)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1776, line: 82, size: 7296, elements: !1777)
!1776 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1777 = !{!1778, !1779, !1780, !1781, !1782, !1783, !1784, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1813, !1822, !1823, !1825, !1826, !1827, !1830, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1860, !1861, !1868, !1869, !1870, !1871, !1872, !1873}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1775, file: !1776, line: 83, baseType: !1250, size: 32)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1775, file: !1776, line: 84, baseType: !768, size: 32, offset: 32)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1775, file: !1776, line: 85, baseType: !224, size: 32, offset: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1775, file: !1776, line: 86, baseType: !244, size: 128, offset: 128)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1775, file: !1776, line: 88, baseType: !1501, size: 128, offset: 256)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1775, file: !1776, line: 91, baseType: !1236, size: 64, offset: 384)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1775, file: !1776, line: 94, baseType: !1785, size: 192, offset: 448)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1786, line: 30, size: 192, elements: !1787)
!1786 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1787 = !{!1788, !1789}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1785, file: !1786, line: 31, baseType: !244, size: 128)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1785, file: !1786, line: 32, baseType: !1790, size: 64, offset: 128)
!1790 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1791, line: 25, baseType: !1792)
!1791 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1791, line: 23, size: 64, elements: !1793)
!1793 = !{!1794}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1792, file: !1791, line: 24, baseType: !1390, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1775, file: !1776, line: 97, baseType: !656, size: 64, offset: 640)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1775, file: !1776, line: 100, baseType: !224, size: 32, offset: 704)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1775, file: !1776, line: 106, baseType: !224, size: 32, offset: 736)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1775, file: !1776, line: 107, baseType: !1236, size: 64, offset: 768)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1775, file: !1776, line: 110, baseType: !224, size: 32, offset: 832)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1775, file: !1776, line: 111, baseType: !7, size: 32, offset: 864)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1775, file: !1776, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1775, file: !1776, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1775, file: !1776, line: 128, baseType: !224, size: 32, offset: 928)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1775, file: !1776, line: 129, baseType: !244, size: 128, offset: 960)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1775, file: !1776, line: 132, baseType: !1312, size: 512, offset: 1088)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1775, file: !1776, line: 133, baseType: !1320, size: 64, offset: 1600)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1775, file: !1776, line: 140, baseType: !1808, size: 256, offset: 1664)
!1808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1809, size: 256, elements: !1589)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1776, line: 38, size: 128, elements: !1810)
!1810 = !{!1811, !1812}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1809, file: !1776, line: 39, baseType: !442, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1809, file: !1776, line: 40, baseType: !442, size: 64, offset: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1775, file: !1776, line: 146, baseType: !1814, size: 192, offset: 1920)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1776, line: 66, size: 192, elements: !1815)
!1815 = !{!1816}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1814, file: !1776, line: 67, baseType: !1817, size: 192)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1776, line: 47, size: 192, elements: !1818)
!1818 = !{!1819, !1820, !1821}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1817, file: !1776, line: 48, baseType: !794, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1817, file: !1776, line: 49, baseType: !794, size: 64, offset: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1817, file: !1776, line: 50, baseType: !794, size: 64, offset: 128)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1775, file: !1776, line: 150, baseType: !1550, size: 640, offset: 2112)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1775, file: !1776, line: 153, baseType: !1824, size: 256, offset: 2752)
!1824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1491, size: 256, elements: !1175)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1775, file: !1776, line: 159, baseType: !1491, size: 64, offset: 3008)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1775, file: !1776, line: 162, baseType: !224, size: 32, offset: 3072)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1775, file: !1776, line: 164, baseType: !1828, size: 64, offset: 3136)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1776, line: 164, flags: DIFlagFwdDecl)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1775, file: !1776, line: 175, baseType: !1831, size: 32, offset: 3200)
!1831 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !411, line: 805, baseType: !1832)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !411, line: 798, size: 32, elements: !1833)
!1833 = !{!1834, !1835}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1832, file: !411, line: 803, baseType: !410, size: 32)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1832, file: !411, line: 804, baseType: !257, offset: 32)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1775, file: !1776, line: 176, baseType: !442, size: 64, offset: 3264)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1775, file: !1776, line: 176, baseType: !442, size: 64, offset: 3328)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1775, file: !1776, line: 176, baseType: !442, size: 64, offset: 3392)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1775, file: !1776, line: 176, baseType: !442, size: 64, offset: 3456)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1775, file: !1776, line: 177, baseType: !442, size: 64, offset: 3520)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1775, file: !1776, line: 178, baseType: !442, size: 64, offset: 3584)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1775, file: !1776, line: 179, baseType: !1538, size: 128, offset: 3648)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1775, file: !1776, line: 180, baseType: !347, size: 64, offset: 3776)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1775, file: !1776, line: 180, baseType: !347, size: 64, offset: 3840)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1775, file: !1776, line: 180, baseType: !347, size: 64, offset: 3904)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1775, file: !1776, line: 180, baseType: !347, size: 64, offset: 3968)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1775, file: !1776, line: 181, baseType: !347, size: 64, offset: 4032)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1775, file: !1776, line: 181, baseType: !347, size: 64, offset: 4096)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1775, file: !1776, line: 181, baseType: !347, size: 64, offset: 4160)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1775, file: !1776, line: 181, baseType: !347, size: 64, offset: 4224)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1775, file: !1776, line: 182, baseType: !347, size: 64, offset: 4288)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1775, file: !1776, line: 182, baseType: !347, size: 64, offset: 4352)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1775, file: !1776, line: 182, baseType: !347, size: 64, offset: 4416)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1775, file: !1776, line: 182, baseType: !347, size: 64, offset: 4480)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1775, file: !1776, line: 183, baseType: !347, size: 64, offset: 4544)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1775, file: !1776, line: 183, baseType: !347, size: 64, offset: 4608)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1775, file: !1776, line: 184, baseType: !1858, offset: 4672)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1859, line: 12, elements: !271)
!1859 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1775, file: !1776, line: 192, baseType: !444, size: 64, offset: 4672)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1775, file: !1776, line: 203, baseType: !1862, size: 2048, offset: 4736)
!1862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1863, size: 2048, elements: !1755)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1864, line: 43, size: 128, elements: !1865)
!1864 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1865 = !{!1866, !1867}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1863, file: !1864, line: 44, baseType: !346, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1863, file: !1864, line: 45, baseType: !346, size: 64, offset: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1775, file: !1776, line: 220, baseType: !511, size: 8, offset: 6784)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1775, file: !1776, line: 221, baseType: !1225, size: 16, offset: 6800)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1775, file: !1776, line: 222, baseType: !1225, size: 16, offset: 6816)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1775, file: !1776, line: 224, baseType: !994, size: 64, offset: 6848)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1775, file: !1776, line: 227, baseType: !1193, size: 192, offset: 6912)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1775, file: !1776, line: 233, baseType: !1193, size: 192, offset: 7104)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1237, file: !1238, line: 970, baseType: !1875, size: 64, offset: 9280)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1776, line: 20, size: 16576, elements: !1877)
!1877 = !{!1878, !1879, !1880, !1881}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1876, file: !1776, line: 21, baseType: !257)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1876, file: !1776, line: 22, baseType: !1250, size: 32)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1876, file: !1776, line: 23, baseType: !1501, size: 128, offset: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1876, file: !1776, line: 24, baseType: !1882, size: 16384, offset: 192)
!1882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1883, size: 16384, elements: !303)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1786, line: 49, size: 256, elements: !1884)
!1884 = !{!1885}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1883, file: !1786, line: 50, baseType: !1886, size: 256)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1786, line: 35, size: 256, elements: !1887)
!1887 = !{!1888, !1895, !1896, !1900}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1886, file: !1786, line: 37, baseType: !1889, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1890, line: 19, baseType: !1891)
!1890 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1890, line: 18, baseType: !1893)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{null, !224}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1886, file: !1786, line: 38, baseType: !347, size: 64, offset: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1886, file: !1786, line: 44, baseType: !1897, size: 64, offset: 128)
!1897 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1890, line: 22, baseType: !1898)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1890, line: 21, baseType: !183)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1886, file: !1786, line: 46, baseType: !1790, size: 64, offset: 192)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1237, file: !1238, line: 971, baseType: !1790, size: 64, offset: 9344)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1237, file: !1238, line: 972, baseType: !1790, size: 64, offset: 9408)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1237, file: !1238, line: 974, baseType: !1790, size: 64, offset: 9472)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1237, file: !1238, line: 975, baseType: !1785, size: 192, offset: 9536)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1237, file: !1238, line: 976, baseType: !347, size: 64, offset: 9728)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1237, file: !1238, line: 977, baseType: !344, size: 64, offset: 9792)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1237, file: !1238, line: 978, baseType: !7, size: 32, offset: 9856)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1237, file: !1238, line: 980, baseType: !391, size: 64, offset: 9920)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1237, file: !1238, line: 989, baseType: !1910, size: 128, offset: 9984)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1911, line: 35, size: 128, elements: !1912)
!1911 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1912 = !{!1913, !1914, !1915}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1910, file: !1911, line: 36, baseType: !224, size: 32)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1910, file: !1911, line: 37, baseType: !768, size: 32, offset: 32)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1910, file: !1911, line: 38, baseType: !1916, size: 64, offset: 64)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1911, line: 23, flags: DIFlagFwdDecl)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1237, file: !1238, line: 992, baseType: !442, size: 64, offset: 10112)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1237, file: !1238, line: 993, baseType: !442, size: 64, offset: 10176)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1237, file: !1238, line: 996, baseType: !257, offset: 10240)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1237, file: !1238, line: 999, baseType: !801, offset: 10240)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1237, file: !1238, line: 1001, baseType: !1923, size: 64, offset: 10240)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1238, line: 636, size: 64, elements: !1924)
!1924 = !{!1925}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1923, file: !1238, line: 637, baseType: !1926, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1237, file: !1238, line: 1005, baseType: !773, size: 128, offset: 10304)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1237, file: !1238, line: 1007, baseType: !1236, size: 64, offset: 10432)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1237, file: !1238, line: 1009, baseType: !1930, size: 64, offset: 10496)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1238, line: 1009, flags: DIFlagFwdDecl)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1237, file: !1238, line: 1043, baseType: !166, size: 64, offset: 10560)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1237, file: !1238, line: 1046, baseType: !1934, size: 64, offset: 10624)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1238, line: 41, flags: DIFlagFwdDecl)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1237, file: !1238, line: 1050, baseType: !1937, size: 64, offset: 10688)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1238, line: 42, flags: DIFlagFwdDecl)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1237, file: !1238, line: 1054, baseType: !1940, size: 64, offset: 10752)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1238, line: 55, flags: DIFlagFwdDecl)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1237, file: !1238, line: 1056, baseType: !1943, size: 64, offset: 10816)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1238, line: 40, flags: DIFlagFwdDecl)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1237, file: !1238, line: 1058, baseType: !1946, size: 64, offset: 10880)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1948, line: 99, size: 704, elements: !1949)
!1948 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1949 = !{!1950, !1951, !1952, !1953, !1954, !1955, !1956, !1975, !1976}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1947, file: !1948, line: 100, baseType: !792, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1947, file: !1948, line: 101, baseType: !768, size: 32, offset: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1947, file: !1948, line: 102, baseType: !768, size: 32, offset: 96)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1947, file: !1948, line: 105, baseType: !257, offset: 128)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1947, file: !1948, line: 107, baseType: !171, size: 16, offset: 128)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1947, file: !1948, line: 109, baseType: !760, size: 128, offset: 192)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1947, file: !1948, line: 110, baseType: !1957, size: 64, offset: 320)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1948, line: 73, size: 448, elements: !1959)
!1959 = !{!1960, !1963, !1964, !1969, !1974}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1958, file: !1948, line: 74, baseType: !1961, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1948, line: 74, flags: DIFlagFwdDecl)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1958, file: !1948, line: 75, baseType: !1946, size: 64, offset: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, scope: !1958, file: !1948, line: 83, baseType: !1965, size: 128, offset: 128)
!1965 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1958, file: !1948, line: 83, size: 128, elements: !1966)
!1966 = !{!1967, !1968}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1965, file: !1948, line: 84, baseType: !244, size: 128)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1965, file: !1948, line: 85, baseType: !955, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, scope: !1958, file: !1948, line: 87, baseType: !1970, size: 128, offset: 256)
!1970 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1958, file: !1948, line: 87, size: 128, elements: !1971)
!1971 = !{!1972, !1973}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1970, file: !1948, line: 88, baseType: !660, size: 128)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1970, file: !1948, line: 89, baseType: !388, size: 128, align: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1958, file: !1948, line: 92, baseType: !7, size: 32, offset: 384)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1947, file: !1948, line: 111, baseType: !656, size: 64, offset: 384)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1947, file: !1948, line: 113, baseType: !1977, size: 256, offset: 448)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1978, line: 102, size: 256, elements: !1979)
!1978 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1979 = !{!1980, !1981, !1982}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1977, file: !1978, line: 103, baseType: !792, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1977, file: !1978, line: 104, baseType: !244, size: 128, offset: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1977, file: !1978, line: 105, baseType: !1983, size: 64, offset: 192)
!1983 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1978, line: 21, baseType: !1984)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{null, !1987}
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1237, file: !1238, line: 1061, baseType: !1989, size: 64, offset: 10944)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1238, line: 43, flags: DIFlagFwdDecl)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1237, file: !1238, line: 1064, baseType: !347, size: 64, offset: 11008)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1237, file: !1238, line: 1065, baseType: !1993, size: 64, offset: 11072)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1786, line: 14, baseType: !1995)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1786, line: 12, size: 384, elements: !1996)
!1996 = !{!1997}
!1997 = !DIDerivedType(tag: DW_TAG_member, scope: !1995, file: !1786, line: 13, baseType: !1998, size: 384)
!1998 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1995, file: !1786, line: 13, size: 384, elements: !1999)
!1999 = !{!2000, !2001, !2002, !2003}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1998, file: !1786, line: 13, baseType: !224, size: 32)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1998, file: !1786, line: 13, baseType: !224, size: 32, offset: 32)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1998, file: !1786, line: 13, baseType: !224, size: 32, offset: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1998, file: !1786, line: 13, baseType: !2004, size: 256, offset: 128)
!2004 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2005, line: 32, size: 256, elements: !2006)
!2005 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2006 = !{!2007, !2012, !2025, !2031, !2040, !2060, !2065}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2004, file: !2005, line: 37, baseType: !2008, size: 64)
!2008 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2004, file: !2005, line: 34, size: 64, elements: !2009)
!2009 = !{!2010, !2011}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2008, file: !2005, line: 35, baseType: !1480, size: 32)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2008, file: !2005, line: 36, baseType: !462, size: 32, offset: 32)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2004, file: !2005, line: 45, baseType: !2013, size: 192)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2004, file: !2005, line: 40, size: 192, elements: !2014)
!2014 = !{!2015, !2017, !2018, !2024}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2013, file: !2005, line: 41, baseType: !2016, size: 32)
!2016 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !331, line: 95, baseType: !224)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2013, file: !2005, line: 42, baseType: !224, size: 32, offset: 32)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2013, file: !2005, line: 43, baseType: !2019, size: 64, offset: 64)
!2019 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2005, line: 11, baseType: !2020)
!2020 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2005, line: 8, size: 64, elements: !2021)
!2021 = !{!2022, !2023}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2020, file: !2005, line: 9, baseType: !224, size: 32)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2020, file: !2005, line: 10, baseType: !166, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2013, file: !2005, line: 44, baseType: !224, size: 32, offset: 128)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2004, file: !2005, line: 52, baseType: !2026, size: 128)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2004, file: !2005, line: 48, size: 128, elements: !2027)
!2027 = !{!2028, !2029, !2030}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2026, file: !2005, line: 49, baseType: !1480, size: 32)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2026, file: !2005, line: 50, baseType: !462, size: 32, offset: 32)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2026, file: !2005, line: 51, baseType: !2019, size: 64, offset: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2004, file: !2005, line: 61, baseType: !2032, size: 256)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2004, file: !2005, line: 55, size: 256, elements: !2033)
!2033 = !{!2034, !2035, !2036, !2037, !2039}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2032, file: !2005, line: 56, baseType: !1480, size: 32)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2032, file: !2005, line: 57, baseType: !462, size: 32, offset: 32)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2032, file: !2005, line: 58, baseType: !224, size: 32, offset: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2032, file: !2005, line: 59, baseType: !2038, size: 64, offset: 128)
!2038 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !331, line: 94, baseType: !332)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2032, file: !2005, line: 60, baseType: !2038, size: 64, offset: 192)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2004, file: !2005, line: 95, baseType: !2041, size: 256)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2004, file: !2005, line: 64, size: 256, elements: !2042)
!2042 = !{!2043, !2044}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2041, file: !2005, line: 65, baseType: !166, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_member, scope: !2041, file: !2005, line: 77, baseType: !2045, size: 192, offset: 64)
!2045 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2041, file: !2005, line: 77, size: 192, elements: !2046)
!2046 = !{!2047, !2048, !2055}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2045, file: !2005, line: 82, baseType: !1225, size: 16)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2045, file: !2005, line: 88, baseType: !2049, size: 192)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2045, file: !2005, line: 84, size: 192, elements: !2050)
!2050 = !{!2051, !2053, !2054}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2049, file: !2005, line: 85, baseType: !2052, size: 64)
!2052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 64, elements: !1350)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2049, file: !2005, line: 86, baseType: !166, size: 64, offset: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2049, file: !2005, line: 87, baseType: !166, size: 64, offset: 128)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2045, file: !2005, line: 93, baseType: !2056, size: 96)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2045, file: !2005, line: 90, size: 96, elements: !2057)
!2057 = !{!2058, !2059}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2056, file: !2005, line: 91, baseType: !2052, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2056, file: !2005, line: 92, baseType: !175, size: 32, offset: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2004, file: !2005, line: 101, baseType: !2061, size: 128)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2004, file: !2005, line: 98, size: 128, elements: !2062)
!2062 = !{!2063, !2064}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2061, file: !2005, line: 99, baseType: !333, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2061, file: !2005, line: 100, baseType: !224, size: 32, offset: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2004, file: !2005, line: 108, baseType: !2066, size: 128)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2004, file: !2005, line: 104, size: 128, elements: !2067)
!2067 = !{!2068, !2069, !2070}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2066, file: !2005, line: 105, baseType: !166, size: 64)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2066, file: !2005, line: 106, baseType: !224, size: 32, offset: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2066, file: !2005, line: 107, baseType: !7, size: 32, offset: 96)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1237, file: !1238, line: 1067, baseType: !1858, offset: 11136)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1237, file: !1238, line: 1099, baseType: !2073, size: 64, offset: 11136)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1238, line: 56, flags: DIFlagFwdDecl)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1237, file: !1238, line: 1103, baseType: !244, size: 128, offset: 11200)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1237, file: !1238, line: 1104, baseType: !2077, size: 64, offset: 11328)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1238, line: 46, flags: DIFlagFwdDecl)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1237, file: !1238, line: 1105, baseType: !1193, size: 192, offset: 11392)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1237, file: !1238, line: 1106, baseType: !7, size: 32, offset: 11584)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1237, file: !1238, line: 1109, baseType: !2082, size: 128, offset: 11648)
!2082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2083, size: 128, elements: !1589)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1238, line: 51, flags: DIFlagFwdDecl)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1237, file: !1238, line: 1110, baseType: !1193, size: 192, offset: 11776)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1237, file: !1238, line: 1111, baseType: !244, size: 128, offset: 11968)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1237, file: !1238, line: 1173, baseType: !2088, size: 64, offset: 12096)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2090, line: 62, size: 256, align: 256, elements: !2091)
!2090 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2091 = !{!2092, !2093, !2094, !2099}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2089, file: !2090, line: 75, baseType: !175, size: 32)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2089, file: !2090, line: 90, baseType: !175, size: 32, offset: 32)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2089, file: !2090, line: 124, baseType: !2095, size: 64, offset: 64)
!2095 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2089, file: !2090, line: 109, size: 64, elements: !2096)
!2096 = !{!2097, !2098}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2095, file: !2090, line: 110, baseType: !443, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2095, file: !2090, line: 112, baseType: !443, size: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2089, file: !2090, line: 144, baseType: !175, size: 32, offset: 128)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1237, file: !1238, line: 1174, baseType: !438, size: 32, offset: 12160)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1237, file: !1238, line: 1179, baseType: !347, size: 64, offset: 12224)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1237, file: !1238, line: 1182, baseType: !2103, size: 128, offset: 12288)
!2103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1171, line: 76, size: 128, elements: !2104)
!2104 = !{!2105, !2110, !2111}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2103, file: !1171, line: 85, baseType: !2106, size: 64)
!2106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2107, line: 7, size: 64, elements: !2108)
!2107 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2108 = !{!2109}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2106, file: !2107, line: 12, baseType: !1387, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2103, file: !1171, line: 88, baseType: !511, size: 8, offset: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2103, file: !1171, line: 95, baseType: !511, size: 8, offset: 72)
!2112 = !DIDerivedType(tag: DW_TAG_member, scope: !1237, file: !1238, line: 1184, baseType: !2113, size: 128, offset: 12416)
!2113 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1237, file: !1238, line: 1184, size: 128, elements: !2114)
!2114 = !{!2115, !2116}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2113, file: !1238, line: 1185, baseType: !1250, size: 32)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2113, file: !1238, line: 1186, baseType: !388, size: 128, align: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1237, file: !1238, line: 1190, baseType: !2118, size: 64, offset: 12544)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1238, line: 53, flags: DIFlagFwdDecl)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1237, file: !1238, line: 1192, baseType: !2121, size: 128, offset: 12608)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1171, line: 64, size: 128, elements: !2122)
!2122 = !{!2123, !2124, !2125}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2121, file: !1171, line: 65, baseType: !742, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2121, file: !1171, line: 67, baseType: !175, size: 32, offset: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2121, file: !1171, line: 68, baseType: !175, size: 32, offset: 96)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1237, file: !1238, line: 1206, baseType: !224, size: 32, offset: 12736)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1237, file: !1238, line: 1207, baseType: !224, size: 32, offset: 12768)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1237, file: !1238, line: 1209, baseType: !347, size: 64, offset: 12800)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1237, file: !1238, line: 1219, baseType: !442, size: 64, offset: 12864)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1237, file: !1238, line: 1220, baseType: !442, size: 64, offset: 12928)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1237, file: !1238, line: 1317, baseType: !224, size: 32, offset: 12992)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1237, file: !1238, line: 1319, baseType: !1236, size: 64, offset: 13056)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1237, file: !1238, line: 1322, baseType: !2134, size: 64, offset: 13120)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2136, line: 56, size: 512, elements: !2137)
!2136 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2137 = !{!2138, !2139, !2140, !2141, !2142, !2143, !2144, !2146}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2135, file: !2136, line: 57, baseType: !2134, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2135, file: !2136, line: 58, baseType: !166, size: 64, offset: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2135, file: !2136, line: 59, baseType: !347, size: 64, offset: 128)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2135, file: !2136, line: 60, baseType: !347, size: 64, offset: 192)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2135, file: !2136, line: 61, baseType: !841, size: 64, offset: 256)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2135, file: !2136, line: 62, baseType: !7, size: 32, offset: 320)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2135, file: !2136, line: 63, baseType: !2145, size: 64, offset: 384)
!2145 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !168, line: 153, baseType: !442)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2135, file: !2136, line: 64, baseType: !2147, size: 64, offset: 448)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1237, file: !1238, line: 1326, baseType: !1250, size: 32, offset: 13184)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1237, file: !1238, line: 1342, baseType: !166, size: 64, offset: 13248)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1237, file: !1238, line: 1343, baseType: !443, size: 64, offset: 13312)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1237, file: !1238, line: 1344, baseType: !442, size: 64, offset: 13376)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1237, file: !1238, line: 1345, baseType: !443, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1237, file: !1238, line: 1346, baseType: !443, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1237, file: !1238, line: 1347, baseType: !443, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1237, file: !1238, line: 1348, baseType: !388, size: 128, align: 64, offset: 13504)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1237, file: !1238, line: 1358, baseType: !2158, size: 34816, offset: 13824)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2159, line: 485, size: 34816, elements: !2160)
!2159 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2160 = !{!2161, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2190, !2191, !2192, !2193, !2194, !2195, !2198, !2199, !2200}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2158, file: !2159, line: 487, baseType: !2162, size: 192)
!2162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2163, size: 192, elements: !299)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2164, line: 16, size: 64, elements: !2165)
!2164 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2165 = !{!2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2163, file: !2164, line: 17, baseType: !880, size: 16)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2163, file: !2164, line: 18, baseType: !880, size: 16, offset: 16)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2163, file: !2164, line: 19, baseType: !880, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2163, file: !2164, line: 19, baseType: !880, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2163, file: !2164, line: 19, baseType: !880, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2163, file: !2164, line: 19, baseType: !880, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2163, file: !2164, line: 19, baseType: !880, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2163, file: !2164, line: 20, baseType: !880, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2163, file: !2164, line: 20, baseType: !880, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2163, file: !2164, line: 20, baseType: !880, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2163, file: !2164, line: 20, baseType: !880, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2163, file: !2164, line: 20, baseType: !880, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2163, file: !2164, line: 20, baseType: !880, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2158, file: !2159, line: 491, baseType: !347, size: 64, offset: 192)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2158, file: !2159, line: 495, baseType: !171, size: 16, offset: 256)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2158, file: !2159, line: 496, baseType: !171, size: 16, offset: 272)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2158, file: !2159, line: 497, baseType: !171, size: 16, offset: 288)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2158, file: !2159, line: 498, baseType: !171, size: 16, offset: 304)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2158, file: !2159, line: 502, baseType: !347, size: 64, offset: 320)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2158, file: !2159, line: 503, baseType: !347, size: 64, offset: 384)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2158, file: !2159, line: 514, baseType: !2187, size: 256, offset: 448)
!2187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2188, size: 256, elements: !1175)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2159, line: 483, flags: DIFlagFwdDecl)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2158, file: !2159, line: 516, baseType: !347, size: 64, offset: 704)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2158, file: !2159, line: 518, baseType: !347, size: 64, offset: 768)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2158, file: !2159, line: 520, baseType: !347, size: 64, offset: 832)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2158, file: !2159, line: 521, baseType: !347, size: 64, offset: 896)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2158, file: !2159, line: 522, baseType: !347, size: 64, offset: 960)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2158, file: !2159, line: 528, baseType: !2196, size: 64, offset: 1024)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2159, line: 10, flags: DIFlagFwdDecl)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2158, file: !2159, line: 535, baseType: !347, size: 64, offset: 1088)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2158, file: !2159, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2158, file: !2159, line: 540, baseType: !2201, size: 33280, offset: 1536)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2202, line: 317, size: 33280, elements: !2203)
!2202 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2203 = !{!2204, !2205, !2206}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2201, file: !2202, line: 330, baseType: !7, size: 32)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2201, file: !2202, line: 337, baseType: !347, size: 64, offset: 64)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2201, file: !2202, line: 348, baseType: !2207, size: 32768, offset: 512)
!2207 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2202, line: 304, size: 32768, elements: !2208)
!2208 = !{!2209, !2224, !2263, !2313, !2326}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2207, file: !2202, line: 305, baseType: !2210, size: 896)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2202, line: 12, size: 896, elements: !2211)
!2211 = !{!2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2223}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2210, file: !2202, line: 13, baseType: !438, size: 32)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2210, file: !2202, line: 14, baseType: !438, size: 32, offset: 32)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2210, file: !2202, line: 15, baseType: !438, size: 32, offset: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2210, file: !2202, line: 16, baseType: !438, size: 32, offset: 96)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2210, file: !2202, line: 17, baseType: !438, size: 32, offset: 128)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2210, file: !2202, line: 18, baseType: !438, size: 32, offset: 160)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2210, file: !2202, line: 19, baseType: !438, size: 32, offset: 192)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2210, file: !2202, line: 22, baseType: !2220, size: 640, offset: 224)
!2220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, size: 640, elements: !2221)
!2221 = !{!2222}
!2222 = !DISubrange(count: 20)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2210, file: !2202, line: 25, baseType: !438, size: 32, offset: 864)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2207, file: !2202, line: 306, baseType: !2225, size: 4096, align: 128)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2202, line: 34, size: 4096, align: 128, elements: !2226)
!2226 = !{!2227, !2228, !2229, !2230, !2231, !2246, !2247, !2248, !2252, !2254, !2258}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2225, file: !2202, line: 35, baseType: !880, size: 16)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2225, file: !2202, line: 36, baseType: !880, size: 16, offset: 16)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2225, file: !2202, line: 37, baseType: !880, size: 16, offset: 32)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2225, file: !2202, line: 38, baseType: !880, size: 16, offset: 48)
!2231 = !DIDerivedType(tag: DW_TAG_member, scope: !2225, file: !2202, line: 39, baseType: !2232, size: 128, offset: 64)
!2232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2225, file: !2202, line: 39, size: 128, elements: !2233)
!2233 = !{!2234, !2239}
!2234 = !DIDerivedType(tag: DW_TAG_member, scope: !2232, file: !2202, line: 40, baseType: !2235, size: 128)
!2235 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2232, file: !2202, line: 40, size: 128, elements: !2236)
!2236 = !{!2237, !2238}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2235, file: !2202, line: 41, baseType: !442, size: 64)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2235, file: !2202, line: 42, baseType: !442, size: 64, offset: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, scope: !2232, file: !2202, line: 44, baseType: !2240, size: 128)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2232, file: !2202, line: 44, size: 128, elements: !2241)
!2241 = !{!2242, !2243, !2244, !2245}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2240, file: !2202, line: 45, baseType: !438, size: 32)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2240, file: !2202, line: 46, baseType: !438, size: 32, offset: 32)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2240, file: !2202, line: 47, baseType: !438, size: 32, offset: 64)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2240, file: !2202, line: 48, baseType: !438, size: 32, offset: 96)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2225, file: !2202, line: 51, baseType: !438, size: 32, offset: 192)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2225, file: !2202, line: 52, baseType: !438, size: 32, offset: 224)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2225, file: !2202, line: 55, baseType: !2249, size: 1024, offset: 256)
!2249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, size: 1024, elements: !2250)
!2250 = !{!2251}
!2251 = !DISubrange(count: 32)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2225, file: !2202, line: 58, baseType: !2253, size: 2048, offset: 1280)
!2253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, size: 2048, elements: !303)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2225, file: !2202, line: 60, baseType: !2255, size: 384, offset: 3328)
!2255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, size: 384, elements: !2256)
!2256 = !{!2257}
!2257 = !DISubrange(count: 12)
!2258 = !DIDerivedType(tag: DW_TAG_member, scope: !2225, file: !2202, line: 62, baseType: !2259, size: 384, offset: 3712)
!2259 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2225, file: !2202, line: 62, size: 384, elements: !2260)
!2260 = !{!2261, !2262}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2259, file: !2202, line: 63, baseType: !2255, size: 384)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2259, file: !2202, line: 64, baseType: !2255, size: 384)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2207, file: !2202, line: 307, baseType: !2264, size: 1088)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2202, line: 79, size: 1088, elements: !2265)
!2265 = !{!2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2312}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2264, file: !2202, line: 80, baseType: !438, size: 32)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2264, file: !2202, line: 81, baseType: !438, size: 32, offset: 32)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2264, file: !2202, line: 82, baseType: !438, size: 32, offset: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2264, file: !2202, line: 83, baseType: !438, size: 32, offset: 96)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2264, file: !2202, line: 84, baseType: !438, size: 32, offset: 128)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2264, file: !2202, line: 85, baseType: !438, size: 32, offset: 160)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2264, file: !2202, line: 86, baseType: !438, size: 32, offset: 192)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2264, file: !2202, line: 88, baseType: !2220, size: 640, offset: 224)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2264, file: !2202, line: 89, baseType: !1372, size: 8, offset: 864)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2264, file: !2202, line: 90, baseType: !1372, size: 8, offset: 872)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2264, file: !2202, line: 91, baseType: !1372, size: 8, offset: 880)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2264, file: !2202, line: 92, baseType: !1372, size: 8, offset: 888)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2264, file: !2202, line: 93, baseType: !1372, size: 8, offset: 896)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2264, file: !2202, line: 94, baseType: !1372, size: 8, offset: 904)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2264, file: !2202, line: 95, baseType: !2281, size: 64, offset: 960)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2283, line: 11, size: 128, elements: !2284)
!2283 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2284 = !{!2285, !2286}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2282, file: !2283, line: 12, baseType: !333, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2282, file: !2283, line: 13, baseType: !2287, size: 64, offset: 64)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2289, line: 56, size: 1344, elements: !2290)
!2289 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2290 = !{!2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2288, file: !2289, line: 61, baseType: !347, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2288, file: !2289, line: 62, baseType: !347, size: 64, offset: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2288, file: !2289, line: 63, baseType: !347, size: 64, offset: 128)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2288, file: !2289, line: 64, baseType: !347, size: 64, offset: 192)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2288, file: !2289, line: 65, baseType: !347, size: 64, offset: 256)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2288, file: !2289, line: 66, baseType: !347, size: 64, offset: 320)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2288, file: !2289, line: 68, baseType: !347, size: 64, offset: 384)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2288, file: !2289, line: 69, baseType: !347, size: 64, offset: 448)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2288, file: !2289, line: 70, baseType: !347, size: 64, offset: 512)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2288, file: !2289, line: 71, baseType: !347, size: 64, offset: 576)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2288, file: !2289, line: 72, baseType: !347, size: 64, offset: 640)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2288, file: !2289, line: 73, baseType: !347, size: 64, offset: 704)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2288, file: !2289, line: 74, baseType: !347, size: 64, offset: 768)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2288, file: !2289, line: 75, baseType: !347, size: 64, offset: 832)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2288, file: !2289, line: 76, baseType: !347, size: 64, offset: 896)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2288, file: !2289, line: 81, baseType: !347, size: 64, offset: 960)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2288, file: !2289, line: 83, baseType: !347, size: 64, offset: 1024)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2288, file: !2289, line: 84, baseType: !347, size: 64, offset: 1088)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2288, file: !2289, line: 85, baseType: !347, size: 64, offset: 1152)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2288, file: !2289, line: 86, baseType: !347, size: 64, offset: 1216)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2288, file: !2289, line: 87, baseType: !347, size: 64, offset: 1280)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2264, file: !2202, line: 96, baseType: !438, size: 32, offset: 1024)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2207, file: !2202, line: 308, baseType: !2314, size: 4608, align: 512)
!2314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2202, line: 289, size: 4608, align: 512, elements: !2315)
!2315 = !{!2316, !2317, !2324}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2314, file: !2202, line: 290, baseType: !2225, size: 4096, align: 128)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2314, file: !2202, line: 291, baseType: !2318, size: 512, offset: 4096)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2202, line: 268, size: 512, elements: !2319)
!2319 = !{!2320, !2321, !2322}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2318, file: !2202, line: 269, baseType: !442, size: 64)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2318, file: !2202, line: 270, baseType: !442, size: 64, offset: 64)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2318, file: !2202, line: 271, baseType: !2323, size: 384, offset: 128)
!2323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 384, elements: !1645)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2314, file: !2202, line: 292, baseType: !2325, offset: 4608)
!2325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1372, elements: !1743)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2207, file: !2202, line: 309, baseType: !2327, size: 32768)
!2327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1372, size: 32768, elements: !2328)
!2328 = !{!2329}
!2329 = !DISubrange(count: 4096)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1233, file: !744, line: 378, baseType: !2331, size: 64, offset: 64)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1229, file: !744, line: 384, baseType: !1522, size: 192, offset: 192)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !998, file: !744, line: 500, baseType: !257, offset: 6656)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !998, file: !744, line: 501, baseType: !2335, size: 64, offset: 6656)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !744, line: 387, flags: DIFlagFwdDecl)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !998, file: !744, line: 516, baseType: !1733, size: 64, offset: 6720)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !998, file: !744, line: 519, baseType: !375, size: 64, offset: 6784)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !998, file: !744, line: 521, baseType: !2340, size: 64, offset: 6848)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !744, line: 521, flags: DIFlagFwdDecl)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !998, file: !744, line: 545, baseType: !768, size: 32, offset: 6912)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !998, file: !744, line: 548, baseType: !511, size: 8, offset: 6944)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !998, file: !744, line: 550, baseType: !2345, offset: 6952)
!2345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2346, line: 142, elements: !271)
!2346 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !998, file: !744, line: 554, baseType: !1977, size: 256, offset: 6976)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !998, file: !744, line: 557, baseType: !438, size: 32, offset: 7232)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !995, file: !744, line: 565, baseType: !2350, offset: 7296)
!2350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, elements: !2351)
!2351 = !{!2352}
!2352 = !DISubrange(count: -1)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !991, file: !744, line: 151, baseType: !768, size: 32)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !984, file: !744, line: 156, baseType: !257, offset: 256)
!2355 = !DIDerivedType(tag: DW_TAG_member, scope: !748, file: !744, line: 159, baseType: !2356, size: 128)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !748, file: !744, line: 159, size: 128, elements: !2357)
!2357 = !{!2358, !2422}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2356, file: !744, line: 161, baseType: !2359, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2361)
!2361 = !{!2362, !2372, !2393, !2394, !2395, !2396, !2397, !2409, !2410, !2411}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2360, file: !31, line: 111, baseType: !2363, size: 384)
!2363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2364)
!2364 = !{!2365, !2367, !2368, !2369, !2370, !2371}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2363, file: !31, line: 20, baseType: !2366, size: 64)
!2366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !347)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2363, file: !31, line: 21, baseType: !2366, size: 64, offset: 64)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2363, file: !31, line: 22, baseType: !2366, size: 64, offset: 128)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2363, file: !31, line: 23, baseType: !347, size: 64, offset: 192)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2363, file: !31, line: 24, baseType: !347, size: 64, offset: 256)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2363, file: !31, line: 25, baseType: !347, size: 64, offset: 320)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2360, file: !31, line: 112, baseType: !2373, size: 64, offset: 384)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2375, line: 105, size: 128, elements: !2376)
!2375 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2376 = !{!2377, !2378}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2374, file: !2375, line: 110, baseType: !347, size: 64)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2374, file: !2375, line: 118, baseType: !2379, size: 64, offset: 64)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2375, line: 95, size: 448, elements: !2381)
!2381 = !{!2382, !2383, !2388, !2389, !2390, !2391, !2392}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2380, file: !2375, line: 96, baseType: !792, size: 64)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2380, file: !2375, line: 97, baseType: !2384, size: 64, offset: 64)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2375, line: 60, baseType: !2386)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{null, !2373}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2380, file: !2375, line: 98, baseType: !2384, size: 64, offset: 128)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2380, file: !2375, line: 99, baseType: !511, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2380, file: !2375, line: 100, baseType: !511, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2380, file: !2375, line: 101, baseType: !388, size: 128, align: 64, offset: 256)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2380, file: !2375, line: 102, baseType: !2373, size: 64, offset: 384)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2360, file: !31, line: 113, baseType: !2374, size: 128, offset: 448)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2360, file: !31, line: 114, baseType: !1522, size: 192, offset: 576)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2360, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2360, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2360, file: !31, line: 117, baseType: !2398, size: 64, offset: 832)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2400)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2401)
!2401 = !{!2402, !2403, !2407, !2408}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2400, file: !31, line: 73, baseType: !861, size: 64)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2400, file: !31, line: 78, baseType: !2404, size: 64, offset: 64)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{null, !2359}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2400, file: !31, line: 83, baseType: !2404, size: 64, offset: 128)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2400, file: !31, line: 89, baseType: !1047, size: 64, offset: 192)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2360, file: !31, line: 118, baseType: !166, size: 64, offset: 896)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2360, file: !31, line: 119, baseType: !224, size: 32, offset: 960)
!2411 = !DIDerivedType(tag: DW_TAG_member, scope: !2360, file: !31, line: 120, baseType: !2412, size: 128, offset: 1024)
!2412 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2360, file: !31, line: 120, size: 128, elements: !2413)
!2413 = !{!2414, !2420}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2412, file: !31, line: 121, baseType: !2415, size: 128)
!2415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2416, line: 6, size: 128, elements: !2417)
!2416 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2417 = !{!2418, !2419}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2415, file: !2416, line: 7, baseType: !442, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2415, file: !2416, line: 8, baseType: !442, size: 64, offset: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2412, file: !31, line: 122, baseType: !2421)
!2421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2415, elements: !1743)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2356, file: !744, line: 162, baseType: !166, size: 64, offset: 64)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !748, file: !744, line: 176, baseType: !388, size: 128, align: 64)
!2424 = !DIDerivedType(tag: DW_TAG_member, scope: !743, file: !744, line: 179, baseType: !2425, size: 32, offset: 384)
!2425 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !743, file: !744, line: 179, size: 32, elements: !2426)
!2426 = !{!2427, !2428, !2429, !2430}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2425, file: !744, line: 184, baseType: !768, size: 32)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2425, file: !744, line: 192, baseType: !7, size: 32)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2425, file: !744, line: 194, baseType: !7, size: 32)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2425, file: !744, line: 195, baseType: !224, size: 32)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !743, file: !744, line: 199, baseType: !768, size: 32, offset: 416)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !678, file: !44, line: 1964, baseType: !2433, size: 64, offset: 1344)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{!333, !620, !2436}
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2438, line: 12, size: 256, elements: !2439)
!2438 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2439 = !{!2440, !2441, !2442, !2443, !2444}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2437, file: !2438, line: 13, baseType: !167, size: 32)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2437, file: !2438, line: 16, baseType: !224, size: 32, offset: 32)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2437, file: !2438, line: 23, baseType: !347, size: 64, offset: 64)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2437, file: !2438, line: 30, baseType: !347, size: 64, offset: 128)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2437, file: !2438, line: 33, baseType: !2445, size: 64, offset: 192)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !744, line: 27, flags: DIFlagFwdDecl)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !678, file: !44, line: 1966, baseType: !2433, size: 64, offset: 1408)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !621, file: !44, line: 1424, baseType: !2449, size: 64, offset: 448)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2451)
!2451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2452)
!2452 = !{!2453, !2499, !2503, !2507, !2508, !2509, !2510, !2511, !2516, !2521, !2525}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2451, file: !38, line: 323, baseType: !2454, size: 64)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!224, !2457}
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2459)
!2459 = !{!2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2484, !2485, !2486}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2458, file: !38, line: 295, baseType: !660, size: 128)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2458, file: !38, line: 296, baseType: !244, size: 128, offset: 128)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2458, file: !38, line: 297, baseType: !244, size: 128, offset: 256)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2458, file: !38, line: 298, baseType: !244, size: 128, offset: 384)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2458, file: !38, line: 299, baseType: !1193, size: 192, offset: 512)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2458, file: !38, line: 300, baseType: !257, offset: 704)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2458, file: !38, line: 301, baseType: !768, size: 32, offset: 704)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2458, file: !38, line: 302, baseType: !620, size: 64, offset: 768)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2458, file: !38, line: 303, baseType: !2469, size: 64, offset: 832)
!2469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2470)
!2470 = !{!2471, !2483}
!2471 = !DIDerivedType(tag: DW_TAG_member, scope: !2469, file: !38, line: 69, baseType: !2472, size: 32)
!2472 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2469, file: !38, line: 69, size: 32, elements: !2473)
!2473 = !{!2474, !2475, !2476}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2472, file: !38, line: 70, baseType: !456, size: 32)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2472, file: !38, line: 71, baseType: !464, size: 32)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2472, file: !38, line: 72, baseType: !2477, size: 32)
!2477 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2478, line: 24, baseType: !2479)
!2478 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2479 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2478, line: 22, size: 32, elements: !2480)
!2480 = !{!2481}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2479, file: !2478, line: 23, baseType: !2482, size: 32)
!2482 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2478, line: 20, baseType: !462)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2469, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2458, file: !38, line: 304, baseType: !552, size: 64, offset: 896)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2458, file: !38, line: 305, baseType: !347, size: 64, offset: 960)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2458, file: !38, line: 306, baseType: !2487, size: 576, offset: 1024)
!2487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2488)
!2488 = !{!2489, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2487, file: !38, line: 206, baseType: !2490, size: 64)
!2490 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !554)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2487, file: !38, line: 207, baseType: !2490, size: 64, offset: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2487, file: !38, line: 208, baseType: !2490, size: 64, offset: 128)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2487, file: !38, line: 209, baseType: !2490, size: 64, offset: 192)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2487, file: !38, line: 210, baseType: !2490, size: 64, offset: 256)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2487, file: !38, line: 211, baseType: !2490, size: 64, offset: 320)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2487, file: !38, line: 212, baseType: !2490, size: 64, offset: 384)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2487, file: !38, line: 213, baseType: !560, size: 64, offset: 448)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2487, file: !38, line: 214, baseType: !560, size: 64, offset: 512)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2451, file: !38, line: 324, baseType: !2500, size: 64, offset: 64)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!2457, !620, !224}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2451, file: !38, line: 325, baseType: !2504, size: 64, offset: 128)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{null, !2457}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2451, file: !38, line: 326, baseType: !2454, size: 64, offset: 192)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2451, file: !38, line: 327, baseType: !2454, size: 64, offset: 256)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2451, file: !38, line: 328, baseType: !2454, size: 64, offset: 320)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2451, file: !38, line: 329, baseType: !706, size: 64, offset: 384)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2451, file: !38, line: 332, baseType: !2512, size: 64, offset: 448)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!2515, !450}
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2451, file: !38, line: 333, baseType: !2517, size: 64, offset: 512)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!224, !450, !2520}
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2451, file: !38, line: 335, baseType: !2522, size: 64, offset: 576)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{!224, !450, !2515}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2451, file: !38, line: 337, baseType: !2526, size: 64, offset: 640)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!224, !620, !2529}
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !621, file: !44, line: 1425, baseType: !2531, size: 64, offset: 512)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2533)
!2533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2534)
!2534 = !{!2535, !2539, !2540, !2544, !2545, !2546, !2561, !2584, !2588, !2589, !2612}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2533, file: !38, line: 429, baseType: !2536, size: 64)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!224, !620, !224, !224, !570}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2533, file: !38, line: 430, baseType: !706, size: 64, offset: 64)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2533, file: !38, line: 431, baseType: !2541, size: 64, offset: 128)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!224, !620, !7}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2533, file: !38, line: 432, baseType: !2541, size: 64, offset: 192)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2533, file: !38, line: 433, baseType: !706, size: 64, offset: 256)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2533, file: !38, line: 434, baseType: !2547, size: 64, offset: 320)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!224, !620, !224, !2550}
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2552)
!2552 = !{!2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2551, file: !38, line: 416, baseType: !224, size: 32)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2551, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2551, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2551, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2551, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2551, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2551, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2551, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2533, file: !38, line: 435, baseType: !2562, size: 64, offset: 384)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!224, !620, !2469, !2565}
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2567)
!2567 = !{!2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2566, file: !38, line: 344, baseType: !224, size: 32)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2566, file: !38, line: 345, baseType: !442, size: 64, offset: 64)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2566, file: !38, line: 346, baseType: !442, size: 64, offset: 128)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2566, file: !38, line: 347, baseType: !442, size: 64, offset: 192)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2566, file: !38, line: 348, baseType: !442, size: 64, offset: 256)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2566, file: !38, line: 349, baseType: !442, size: 64, offset: 320)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2566, file: !38, line: 350, baseType: !442, size: 64, offset: 384)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2566, file: !38, line: 351, baseType: !798, size: 64, offset: 448)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2566, file: !38, line: 353, baseType: !798, size: 64, offset: 512)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2566, file: !38, line: 354, baseType: !224, size: 32, offset: 576)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2566, file: !38, line: 355, baseType: !224, size: 32, offset: 608)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2566, file: !38, line: 356, baseType: !442, size: 64, offset: 640)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2566, file: !38, line: 357, baseType: !442, size: 64, offset: 704)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2566, file: !38, line: 358, baseType: !442, size: 64, offset: 768)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2566, file: !38, line: 359, baseType: !798, size: 64, offset: 832)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2566, file: !38, line: 360, baseType: !224, size: 32, offset: 896)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2533, file: !38, line: 436, baseType: !2585, size: 64, offset: 448)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = !DISubroutineType(types: !2587)
!2587 = !{!224, !620, !2529, !2565}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2533, file: !38, line: 438, baseType: !2562, size: 64, offset: 512)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2533, file: !38, line: 439, baseType: !2590, size: 64, offset: 576)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DISubroutineType(types: !2592)
!2592 = !{!224, !620, !2593}
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2595)
!2595 = !{!2596, !2597}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2594, file: !38, line: 410, baseType: !7, size: 32)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2594, file: !38, line: 411, baseType: !2598, size: 1344, offset: 64)
!2598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2599, size: 1344, elements: !299)
!2599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2600)
!2600 = !{!2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2611}
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2599, file: !38, line: 396, baseType: !7, size: 32)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2599, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2599, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2599, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2599, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2599, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2599, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2599, file: !38, line: 404, baseType: !444, size: 64, offset: 256)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2599, file: !38, line: 405, baseType: !2610, size: 64, offset: 320)
!2610 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !168, line: 126, baseType: !442)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2599, file: !38, line: 406, baseType: !2610, size: 64, offset: 384)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2533, file: !38, line: 440, baseType: !2541, size: 64, offset: 640)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !621, file: !44, line: 1426, baseType: !2614, size: 64, offset: 576)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2616)
!2616 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !621, file: !44, line: 1427, baseType: !347, size: 64, offset: 640)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !621, file: !44, line: 1428, baseType: !347, size: 64, offset: 704)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !621, file: !44, line: 1429, baseType: !347, size: 64, offset: 768)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !621, file: !44, line: 1430, baseType: !405, size: 64, offset: 832)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !621, file: !44, line: 1431, baseType: !788, size: 256, offset: 896)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !621, file: !44, line: 1432, baseType: !224, size: 32, offset: 1152)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !621, file: !44, line: 1433, baseType: !768, size: 32, offset: 1184)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !621, file: !44, line: 1437, baseType: !2625, size: 64, offset: 1216)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2628)
!2628 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !621, file: !44, line: 1449, baseType: !2630, size: 64, offset: 1280)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !421, line: 34, size: 64, elements: !2631)
!2631 = !{!2632}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2630, file: !421, line: 35, baseType: !424, size: 64)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !621, file: !44, line: 1450, baseType: !244, size: 128, offset: 1344)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !621, file: !44, line: 1451, baseType: !2635, size: 64, offset: 1472)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !621, file: !44, line: 1452, baseType: !1943, size: 64, offset: 1536)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !621, file: !44, line: 1453, baseType: !2639, size: 64, offset: 1600)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !621, file: !44, line: 1454, baseType: !660, size: 128, offset: 1664)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !621, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !621, file: !44, line: 1456, baseType: !2644, size: 2432, offset: 1856)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2645)
!2645 = !{!2646, !2647, !2648, !2650, !2682}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2644, file: !38, line: 519, baseType: !7, size: 32)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2644, file: !38, line: 520, baseType: !788, size: 256, offset: 64)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2644, file: !38, line: 521, baseType: !2649, size: 192, offset: 320)
!2649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !450, size: 192, elements: !299)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2644, file: !38, line: 522, baseType: !2651, size: 1728, offset: 512)
!2651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2652, size: 1728, elements: !299)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2653)
!2653 = !{!2654, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2652, file: !38, line: 223, baseType: !2655, size: 64)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2657)
!2657 = !{!2658, !2659, !2672, !2673}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2656, file: !38, line: 444, baseType: !224, size: 32)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2656, file: !38, line: 445, baseType: !2660, size: 64, offset: 64)
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2662)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2663)
!2663 = !{!2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2662, file: !38, line: 311, baseType: !706, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2662, file: !38, line: 312, baseType: !706, size: 64, offset: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2662, file: !38, line: 313, baseType: !706, size: 64, offset: 128)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2662, file: !38, line: 314, baseType: !706, size: 64, offset: 192)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2662, file: !38, line: 315, baseType: !2454, size: 64, offset: 256)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2662, file: !38, line: 316, baseType: !2454, size: 64, offset: 320)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2662, file: !38, line: 317, baseType: !2454, size: 64, offset: 384)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2662, file: !38, line: 318, baseType: !2526, size: 64, offset: 448)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2656, file: !38, line: 446, baseType: !217, size: 64, offset: 128)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2656, file: !38, line: 447, baseType: !2655, size: 64, offset: 192)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2652, file: !38, line: 224, baseType: !224, size: 32, offset: 64)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2652, file: !38, line: 226, baseType: !244, size: 128, offset: 128)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2652, file: !38, line: 227, baseType: !347, size: 64, offset: 256)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2652, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2652, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2652, file: !38, line: 230, baseType: !2490, size: 64, offset: 384)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2652, file: !38, line: 231, baseType: !2490, size: 64, offset: 448)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2652, file: !38, line: 232, baseType: !166, size: 64, offset: 512)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2644, file: !38, line: 523, baseType: !2683, size: 192, offset: 2240)
!2683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2660, size: 192, elements: !299)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !621, file: !44, line: 1458, baseType: !2685, size: 2112, offset: 4288)
!2685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2686)
!2686 = !{!2687, !2688, !2689}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2685, file: !44, line: 1411, baseType: !224, size: 32)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2685, file: !44, line: 1412, baseType: !1501, size: 128, offset: 64)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2685, file: !44, line: 1413, baseType: !2690, size: 1920, offset: 192)
!2690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2691, size: 1920, elements: !299)
!2691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2692, line: 12, size: 640, elements: !2693)
!2692 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2693 = !{!2694, !2702, !2704, !2709, !2710}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2691, file: !2692, line: 13, baseType: !2695, size: 320)
!2695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2696, line: 17, size: 320, elements: !2697)
!2696 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2697 = !{!2698, !2699, !2700, !2701}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2695, file: !2696, line: 18, baseType: !224, size: 32)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2695, file: !2696, line: 19, baseType: !224, size: 32, offset: 32)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2695, file: !2696, line: 20, baseType: !1501, size: 128, offset: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2695, file: !2696, line: 22, baseType: !388, size: 128, align: 64, offset: 192)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2691, file: !2692, line: 14, baseType: !2703, size: 64, offset: 320)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2691, file: !2692, line: 15, baseType: !2705, size: 64, offset: 384)
!2705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2706, line: 16, size: 64, elements: !2707)
!2706 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2707 = !{!2708}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2705, file: !2706, line: 17, baseType: !1236, size: 64)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2691, file: !2692, line: 16, baseType: !1501, size: 128, offset: 448)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2691, file: !2692, line: 17, baseType: !768, size: 32, offset: 576)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !621, file: !44, line: 1465, baseType: !166, size: 64, offset: 6400)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !621, file: !44, line: 1468, baseType: !438, size: 32, offset: 6464)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !621, file: !44, line: 1470, baseType: !560, size: 64, offset: 6528)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !621, file: !44, line: 1471, baseType: !560, size: 64, offset: 6592)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !621, file: !44, line: 1473, baseType: !175, size: 32, offset: 6656)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !621, file: !44, line: 1474, baseType: !2717, size: 64, offset: 6720)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !621, file: !44, line: 1477, baseType: !2720, size: 256, offset: 6784)
!2720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 256, elements: !2250)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !621, file: !44, line: 1478, baseType: !2722, size: 128, offset: 7040)
!2722 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2723, line: 18, baseType: !2724)
!2723 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2724 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2723, line: 16, size: 128, elements: !2725)
!2725 = !{!2726}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2724, file: !2723, line: 17, baseType: !2727, size: 128)
!2727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1373, size: 128, elements: !1755)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !621, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !621, file: !44, line: 1481, baseType: !2730, size: 32, offset: 7200)
!2730 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !168, line: 150, baseType: !7)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !621, file: !44, line: 1487, baseType: !1193, size: 192, offset: 7232)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !621, file: !44, line: 1493, baseType: !215, size: 64, offset: 7424)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !621, file: !44, line: 1495, baseType: !2734, size: 64, offset: 7488)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2736)
!2736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !403, line: 135, size: 1024, align: 512, elements: !2737)
!2737 = !{!2738, !2742, !2743, !2750, !2756, !2760, !2764, !2768, !2769, !2773, !2777, !2782, !2786}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2736, file: !403, line: 136, baseType: !2739, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!224, !405, !7}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2736, file: !403, line: 137, baseType: !2739, size: 64, offset: 64)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2736, file: !403, line: 138, baseType: !2744, size: 64, offset: 128)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{!224, !2747, !2749}
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !406)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2736, file: !403, line: 139, baseType: !2751, size: 64, offset: 192)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2752 = !DISubroutineType(types: !2753)
!2753 = !{!224, !2747, !7, !215, !2754}
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !429)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2736, file: !403, line: 141, baseType: !2757, size: 64, offset: 256)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{!224, !2747}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2736, file: !403, line: 142, baseType: !2761, size: 64, offset: 320)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!224, !405}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2736, file: !403, line: 143, baseType: !2765, size: 64, offset: 384)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{null, !405}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2736, file: !403, line: 144, baseType: !2765, size: 64, offset: 448)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2736, file: !403, line: 145, baseType: !2770, size: 64, offset: 512)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{null, !405, !450}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2736, file: !403, line: 146, baseType: !2774, size: 64, offset: 576)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{!298, !405, !298, !224}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2736, file: !403, line: 147, baseType: !2778, size: 64, offset: 640)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DISubroutineType(types: !2780)
!2780 = !{!401, !2781}
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2736, file: !403, line: 148, baseType: !2783, size: 64, offset: 704)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{!224, !570, !511}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2736, file: !403, line: 149, baseType: !2787, size: 64, offset: 768)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{!405, !405, !2790}
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !451)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !621, file: !44, line: 1500, baseType: !224, size: 32, offset: 7552)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !621, file: !44, line: 1502, baseType: !2794, size: 448, offset: 7616)
!2794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2438, line: 60, size: 448, elements: !2795)
!2795 = !{!2796, !2801, !2802, !2803, !2804, !2805, !2806}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2794, file: !2438, line: 61, baseType: !2797, size: 64)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!347, !2800, !2436}
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2794, file: !2438, line: 63, baseType: !2797, size: 64, offset: 64)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2794, file: !2438, line: 66, baseType: !333, size: 64, offset: 128)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2794, file: !2438, line: 67, baseType: !224, size: 32, offset: 192)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2794, file: !2438, line: 68, baseType: !7, size: 32, offset: 224)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2794, file: !2438, line: 71, baseType: !244, size: 128, offset: 256)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2794, file: !2438, line: 77, baseType: !2807, size: 64, offset: 384)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !621, file: !44, line: 1505, baseType: !792, size: 64, offset: 8064)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !621, file: !44, line: 1508, baseType: !792, size: 64, offset: 8128)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !621, file: !44, line: 1511, baseType: !224, size: 32, offset: 8192)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !621, file: !44, line: 1514, baseType: !929, size: 32, offset: 8224)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !621, file: !44, line: 1517, baseType: !2813, size: 64, offset: 8256)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2814 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1978, line: 18, flags: DIFlagFwdDecl)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !621, file: !44, line: 1518, baseType: !656, size: 64, offset: 8320)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !621, file: !44, line: 1525, baseType: !1733, size: 64, offset: 8384)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !621, file: !44, line: 1532, baseType: !2818, size: 64, offset: 8448)
!2818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2819, line: 52, size: 64, elements: !2820)
!2819 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2820 = !{!2821}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2818, file: !2819, line: 53, baseType: !2822, size: 64)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2819, line: 40, size: 256, elements: !2824)
!2824 = !{!2825, !2826, !2831}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2823, file: !2819, line: 42, baseType: !257)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2823, file: !2819, line: 44, baseType: !2827, size: 192)
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2819, line: 28, size: 192, elements: !2828)
!2828 = !{!2829, !2830}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2827, file: !2819, line: 29, baseType: !244, size: 128)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2827, file: !2819, line: 31, baseType: !333, size: 64, offset: 128)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2823, file: !2819, line: 49, baseType: !333, size: 64, offset: 192)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !621, file: !44, line: 1533, baseType: !2818, size: 64, offset: 8512)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !621, file: !44, line: 1534, baseType: !388, size: 128, align: 64, offset: 8576)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !621, file: !44, line: 1535, baseType: !1977, size: 256, offset: 8704)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !621, file: !44, line: 1537, baseType: !1193, size: 192, offset: 8960)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !621, file: !44, line: 1542, baseType: !224, size: 32, offset: 9152)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !621, file: !44, line: 1545, baseType: !257, offset: 9184)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !621, file: !44, line: 1546, baseType: !244, size: 128, offset: 9216)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !621, file: !44, line: 1548, baseType: !257, offset: 9344)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !621, file: !44, line: 1549, baseType: !244, size: 128, offset: 9344)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !451, file: !44, line: 624, baseType: !755, size: 64, offset: 256)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !451, file: !44, line: 631, baseType: !347, size: 64, offset: 320)
!2843 = !DIDerivedType(tag: DW_TAG_member, scope: !451, file: !44, line: 639, baseType: !2844, size: 32, offset: 384)
!2844 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !451, file: !44, line: 639, size: 32, elements: !2845)
!2845 = !{!2846, !2848}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2844, file: !44, line: 640, baseType: !2847, size: 32)
!2847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2844, file: !44, line: 641, baseType: !7, size: 32)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !451, file: !44, line: 643, baseType: !534, size: 32, offset: 416)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !451, file: !44, line: 644, baseType: !552, size: 64, offset: 448)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !451, file: !44, line: 645, baseType: !556, size: 128, offset: 512)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !451, file: !44, line: 646, baseType: !556, size: 128, offset: 640)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !451, file: !44, line: 647, baseType: !556, size: 128, offset: 768)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !451, file: !44, line: 648, baseType: !257, offset: 896)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !451, file: !44, line: 649, baseType: !171, size: 16, offset: 896)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !451, file: !44, line: 650, baseType: !1372, size: 8, offset: 912)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !451, file: !44, line: 651, baseType: !1372, size: 8, offset: 920)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !451, file: !44, line: 652, baseType: !2610, size: 64, offset: 960)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !451, file: !44, line: 659, baseType: !347, size: 64, offset: 1024)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !451, file: !44, line: 660, baseType: !788, size: 256, offset: 1088)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !451, file: !44, line: 662, baseType: !347, size: 64, offset: 1344)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !451, file: !44, line: 663, baseType: !347, size: 64, offset: 1408)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !451, file: !44, line: 665, baseType: !660, size: 128, offset: 1472)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !451, file: !44, line: 666, baseType: !244, size: 128, offset: 1600)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !451, file: !44, line: 675, baseType: !244, size: 128, offset: 1728)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !451, file: !44, line: 676, baseType: !244, size: 128, offset: 1856)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !451, file: !44, line: 677, baseType: !244, size: 128, offset: 1984)
!2868 = !DIDerivedType(tag: DW_TAG_member, scope: !451, file: !44, line: 678, baseType: !2869, size: 128, offset: 2112)
!2869 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !451, file: !44, line: 678, size: 128, elements: !2870)
!2870 = !{!2871, !2872}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2869, file: !44, line: 679, baseType: !656, size: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2869, file: !44, line: 680, baseType: !388, size: 128, align: 64)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !451, file: !44, line: 682, baseType: !794, size: 64, offset: 2240)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !451, file: !44, line: 683, baseType: !794, size: 64, offset: 2304)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !451, file: !44, line: 684, baseType: !768, size: 32, offset: 2368)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !451, file: !44, line: 685, baseType: !768, size: 32, offset: 2400)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !451, file: !44, line: 686, baseType: !768, size: 32, offset: 2432)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !451, file: !44, line: 688, baseType: !768, size: 32, offset: 2464)
!2879 = !DIDerivedType(tag: DW_TAG_member, scope: !451, file: !44, line: 690, baseType: !2880, size: 64, offset: 2496)
!2880 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !451, file: !44, line: 690, size: 64, elements: !2881)
!2881 = !{!2882, !3104}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2880, file: !44, line: 691, baseType: !2883, size: 64)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2885)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2886)
!2886 = !{!2887, !2888, !2892, !2897, !2901, !2902, !2903, !2907, !2920, !2921, !2928, !2932, !2933, !2937, !2938, !2942, !2947, !2948, !2952, !2956, !3064, !3068, !3069, !3073, !3074, !3078, !3082, !3087, !3091, !3095, !3099, !3103}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2885, file: !44, line: 1823, baseType: !217, size: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2885, file: !44, line: 1824, baseType: !2889, size: 64, offset: 64)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!552, !375, !552, !224}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2885, file: !44, line: 1825, baseType: !2893, size: 64, offset: 128)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = !DISubroutineType(types: !2895)
!2895 = !{!329, !375, !298, !344, !2896}
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2885, file: !44, line: 1826, baseType: !2898, size: 64, offset: 192)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{!329, !375, !215, !344, !2896}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2885, file: !44, line: 1827, baseType: !865, size: 64, offset: 256)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2885, file: !44, line: 1828, baseType: !865, size: 64, offset: 320)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2885, file: !44, line: 1829, baseType: !2904, size: 64, offset: 384)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!224, !868, !511}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2885, file: !44, line: 1830, baseType: !2908, size: 64, offset: 448)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!224, !375, !2911}
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2913)
!2913 = !{!2914, !2919}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2912, file: !44, line: 1777, baseType: !2915, size: 64)
!2915 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2916)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!224, !2911, !215, !224, !552, !442, !7}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2912, file: !44, line: 1778, baseType: !552, size: 64, offset: 64)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2885, file: !44, line: 1831, baseType: !2908, size: 64, offset: 512)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2885, file: !44, line: 1832, baseType: !2922, size: 64, offset: 576)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!2925, !375, !2926}
!2925 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !173, line: 52, baseType: !7)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !640, line: 27, flags: DIFlagFwdDecl)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2885, file: !44, line: 1833, baseType: !2929, size: 64, offset: 640)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!333, !375, !7, !347}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2885, file: !44, line: 1834, baseType: !2929, size: 64, offset: 704)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2885, file: !44, line: 1835, baseType: !2934, size: 64, offset: 768)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{!224, !375, !1001}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2885, file: !44, line: 1836, baseType: !347, size: 64, offset: 832)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2885, file: !44, line: 1837, baseType: !2939, size: 64, offset: 896)
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!224, !450, !375}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2885, file: !44, line: 1838, baseType: !2943, size: 64, offset: 960)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DISubroutineType(types: !2945)
!2945 = !{!224, !375, !2946}
!2946 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !166)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2885, file: !44, line: 1839, baseType: !2939, size: 64, offset: 1024)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2885, file: !44, line: 1840, baseType: !2949, size: 64, offset: 1088)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{!224, !375, !552, !552, !224}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2885, file: !44, line: 1841, baseType: !2953, size: 64, offset: 1152)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DISubroutineType(types: !2955)
!2955 = !{!224, !224, !375, !224}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2885, file: !44, line: 1842, baseType: !2957, size: 64, offset: 1216)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = !DISubroutineType(types: !2959)
!2959 = !{!224, !375, !224, !2960}
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2962)
!2962 = !{!2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2994, !2995, !2996, !3009, !3040}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2961, file: !44, line: 1063, baseType: !2960, size: 64)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2961, file: !44, line: 1064, baseType: !244, size: 128, offset: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2961, file: !44, line: 1065, baseType: !660, size: 128, offset: 192)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2961, file: !44, line: 1066, baseType: !244, size: 128, offset: 320)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2961, file: !44, line: 1069, baseType: !244, size: 128, offset: 448)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2961, file: !44, line: 1072, baseType: !2946, size: 64, offset: 576)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2961, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2961, file: !44, line: 1074, baseType: !448, size: 8, offset: 672)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2961, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2961, file: !44, line: 1076, baseType: !224, size: 32, offset: 736)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2961, file: !44, line: 1077, baseType: !1501, size: 128, offset: 768)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2961, file: !44, line: 1078, baseType: !375, size: 64, offset: 896)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2961, file: !44, line: 1079, baseType: !552, size: 64, offset: 960)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2961, file: !44, line: 1080, baseType: !552, size: 64, offset: 1024)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2961, file: !44, line: 1082, baseType: !2978, size: 64, offset: 1088)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2980)
!2980 = !{!2981, !2989, !2990, !2991, !2992, !2993}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2979, file: !44, line: 1315, baseType: !2982)
!2982 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2983, line: 20, baseType: !2984)
!2983 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2984 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2983, line: 11, elements: !2985)
!2985 = !{!2986}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2984, file: !2983, line: 12, baseType: !2987)
!2987 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !269, line: 33, baseType: !2988)
!2988 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !269, line: 31, elements: !271)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2979, file: !44, line: 1316, baseType: !224, size: 32)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2979, file: !44, line: 1317, baseType: !224, size: 32, offset: 32)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2979, file: !44, line: 1318, baseType: !2978, size: 64, offset: 64)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2979, file: !44, line: 1319, baseType: !375, size: 64, offset: 128)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2979, file: !44, line: 1320, baseType: !388, size: 128, align: 64, offset: 192)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2961, file: !44, line: 1084, baseType: !347, size: 64, offset: 1152)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2961, file: !44, line: 1085, baseType: !347, size: 64, offset: 1216)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2961, file: !44, line: 1087, baseType: !2997, size: 64, offset: 1280)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2999)
!2999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !3000)
!3000 = !{!3001, !3005}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2999, file: !44, line: 1012, baseType: !3002, size: 64)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{null, !2960, !2960}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2999, file: !44, line: 1013, baseType: !3006, size: 64, offset: 64)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{null, !2960}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2961, file: !44, line: 1088, baseType: !3010, size: 64, offset: 1344)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3012)
!3012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !3013)
!3013 = !{!3014, !3018, !3022, !3023, !3027, !3031, !3035, !3039}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3012, file: !44, line: 1017, baseType: !3015, size: 64)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{!2946, !2946}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3012, file: !44, line: 1018, baseType: !3019, size: 64, offset: 64)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{null, !2946}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3012, file: !44, line: 1019, baseType: !3006, size: 64, offset: 128)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3012, file: !44, line: 1020, baseType: !3024, size: 64, offset: 192)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{!224, !2960, !224}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3012, file: !44, line: 1021, baseType: !3028, size: 64, offset: 256)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{!511, !2960}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3012, file: !44, line: 1022, baseType: !3032, size: 64, offset: 320)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{!224, !2960, !224, !247}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3012, file: !44, line: 1023, baseType: !3036, size: 64, offset: 384)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{null, !2960, !842}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3012, file: !44, line: 1024, baseType: !3028, size: 64, offset: 448)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2961, file: !44, line: 1097, baseType: !3041, size: 256, offset: 1408)
!3041 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2961, file: !44, line: 1089, size: 256, elements: !3042)
!3042 = !{!3043, !3052, !3058}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3041, file: !44, line: 1090, baseType: !3044, size: 256)
!3044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3045, line: 10, size: 256, elements: !3046)
!3045 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3046 = !{!3047, !3048, !3051}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3044, file: !3045, line: 11, baseType: !438, size: 32)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3044, file: !3045, line: 12, baseType: !3049, size: 64, offset: 64)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3045, line: 5, flags: DIFlagFwdDecl)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3044, file: !3045, line: 13, baseType: !244, size: 128, offset: 128)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3041, file: !44, line: 1091, baseType: !3053, size: 64)
!3053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3045, line: 17, size: 64, elements: !3054)
!3054 = !{!3055}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3053, file: !3045, line: 18, baseType: !3056, size: 64)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3045, line: 16, flags: DIFlagFwdDecl)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3041, file: !44, line: 1096, baseType: !3059, size: 192)
!3059 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3041, file: !44, line: 1092, size: 192, elements: !3060)
!3060 = !{!3061, !3062, !3063}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3059, file: !44, line: 1093, baseType: !244, size: 128)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3059, file: !44, line: 1094, baseType: !224, size: 32, offset: 128)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3059, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2885, file: !44, line: 1843, baseType: !3065, size: 64, offset: 1280)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{!329, !375, !742, !224, !344, !2896, !224}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2885, file: !44, line: 1844, baseType: !1121, size: 64, offset: 1344)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2885, file: !44, line: 1845, baseType: !3070, size: 64, offset: 1408)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{!224, !224}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2885, file: !44, line: 1846, baseType: !2957, size: 64, offset: 1472)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2885, file: !44, line: 1847, baseType: !3075, size: 64, offset: 1536)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!329, !2118, !375, !2896, !344, !7}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2885, file: !44, line: 1848, baseType: !3079, size: 64, offset: 1600)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{!329, !375, !2896, !2118, !344, !7}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2885, file: !44, line: 1849, baseType: !3083, size: 64, offset: 1664)
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{!224, !375, !333, !3086, !842}
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2885, file: !44, line: 1850, baseType: !3088, size: 64, offset: 1728)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{!333, !375, !224, !552, !552}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2885, file: !44, line: 1852, baseType: !3092, size: 64, offset: 1792)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{null, !732, !375}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2885, file: !44, line: 1856, baseType: !3096, size: 64, offset: 1856)
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!3097 = !DISubroutineType(types: !3098)
!3098 = !{!329, !375, !552, !375, !552, !344, !7}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2885, file: !44, line: 1858, baseType: !3100, size: 64, offset: 1920)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!552, !375, !552, !375, !552, !552, !7}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2885, file: !44, line: 1861, baseType: !2949, size: 64, offset: 1984)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2880, file: !44, line: 692, baseType: !685, size: 64)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !451, file: !44, line: 694, baseType: !3106, size: 64, offset: 2560)
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3107, size: 64)
!3107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3108)
!3108 = !{!3109, !3110, !3111, !3112}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3107, file: !44, line: 1101, baseType: !257)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3107, file: !44, line: 1102, baseType: !244, size: 128)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3107, file: !44, line: 1103, baseType: !244, size: 128, offset: 128)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3107, file: !44, line: 1104, baseType: !244, size: 128, offset: 256)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !451, file: !44, line: 695, baseType: !756, size: 1216, align: 64, offset: 2624)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !451, file: !44, line: 696, baseType: !244, size: 128, offset: 3840)
!3115 = !DIDerivedType(tag: DW_TAG_member, scope: !451, file: !44, line: 697, baseType: !3116, size: 64, offset: 3968)
!3116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !451, file: !44, line: 697, size: 64, elements: !3117)
!3117 = !{!3118, !3119, !3120, !3123, !3124}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3116, file: !44, line: 698, baseType: !2118, size: 64)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3116, file: !44, line: 699, baseType: !2635, size: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3116, file: !44, line: 700, baseType: !3121, size: 64)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3116, file: !44, line: 701, baseType: !298, size: 64)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3116, file: !44, line: 702, baseType: !7, size: 32)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !451, file: !44, line: 705, baseType: !175, size: 32, offset: 4032)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !451, file: !44, line: 708, baseType: !175, size: 32, offset: 4064)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !451, file: !44, line: 709, baseType: !2717, size: 64, offset: 4096)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !451, file: !44, line: 720, baseType: !166, size: 64, offset: 4160)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !406, file: !403, line: 98, baseType: !3130, size: 256, offset: 448)
!3130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 256, elements: !2250)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !406, file: !403, line: 101, baseType: !3132, size: 32, offset: 704)
!3132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3133, line: 25, size: 32, elements: !3134)
!3133 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3134 = !{!3135}
!3135 = !DIDerivedType(tag: DW_TAG_member, scope: !3132, file: !3133, line: 26, baseType: !3136, size: 32)
!3136 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3132, file: !3133, line: 26, size: 32, elements: !3137)
!3137 = !{!3138}
!3138 = !DIDerivedType(tag: DW_TAG_member, scope: !3136, file: !3133, line: 30, baseType: !3139, size: 32)
!3139 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3136, file: !3133, line: 30, size: 32, elements: !3140)
!3140 = !{!3141, !3142}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3139, file: !3133, line: 31, baseType: !257)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3139, file: !3133, line: 32, baseType: !224, size: 32)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !406, file: !403, line: 102, baseType: !2734, size: 64, offset: 768)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !406, file: !403, line: 103, baseType: !620, size: 64, offset: 832)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !406, file: !403, line: 104, baseType: !347, size: 64, offset: 896)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !406, file: !403, line: 105, baseType: !166, size: 64, offset: 960)
!3147 = !DIDerivedType(tag: DW_TAG_member, scope: !406, file: !403, line: 107, baseType: !3148, size: 128, offset: 1024)
!3148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !406, file: !403, line: 107, size: 128, elements: !3149)
!3149 = !{!3150, !3151}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3148, file: !403, line: 108, baseType: !244, size: 128)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3148, file: !403, line: 109, baseType: !3152, size: 64)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !406, file: !403, line: 111, baseType: !244, size: 128, offset: 1152)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !406, file: !403, line: 112, baseType: !244, size: 128, offset: 1280)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !406, file: !403, line: 120, baseType: !3156, size: 128, offset: 1408)
!3156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !406, file: !403, line: 116, size: 128, elements: !3157)
!3157 = !{!3158, !3159, !3160}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3156, file: !403, line: 117, baseType: !660, size: 128)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3156, file: !403, line: 118, baseType: !420, size: 128)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3156, file: !403, line: 119, baseType: !388, size: 128, align: 64)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !376, file: !44, line: 922, baseType: !450, size: 64, offset: 256)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !376, file: !44, line: 923, baseType: !2883, size: 64, offset: 320)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !376, file: !44, line: 929, baseType: !257, offset: 384)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !376, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !376, file: !44, line: 931, baseType: !792, size: 64, offset: 448)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !376, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !376, file: !44, line: 933, baseType: !2730, size: 32, offset: 544)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !376, file: !44, line: 934, baseType: !1193, size: 192, offset: 576)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !376, file: !44, line: 935, baseType: !552, size: 64, offset: 768)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !376, file: !44, line: 936, baseType: !3171, size: 192, offset: 832)
!3171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3172)
!3172 = !{!3173, !3174, !3175, !3176, !3177, !3178}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3171, file: !44, line: 886, baseType: !2982)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3171, file: !44, line: 887, baseType: !1491, size: 64)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3171, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3171, file: !44, line: 889, baseType: !456, size: 32, offset: 96)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3171, file: !44, line: 889, baseType: !456, size: 32, offset: 128)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3171, file: !44, line: 890, baseType: !224, size: 32, offset: 160)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !376, file: !44, line: 937, baseType: !1567, size: 64, offset: 1024)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !376, file: !44, line: 938, baseType: !3181, size: 256, offset: 1088)
!3181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3182)
!3182 = !{!3183, !3184, !3185, !3186, !3187, !3188}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3181, file: !44, line: 897, baseType: !347, size: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3181, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3181, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3181, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3181, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3181, file: !44, line: 904, baseType: !552, size: 64, offset: 192)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !376, file: !44, line: 940, baseType: !442, size: 64, offset: 1344)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !376, file: !44, line: 945, baseType: !166, size: 64, offset: 1408)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !376, file: !44, line: 949, baseType: !244, size: 128, offset: 1472)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !376, file: !44, line: 950, baseType: !244, size: 128, offset: 1600)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !376, file: !44, line: 952, baseType: !755, size: 64, offset: 1728)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !376, file: !44, line: 953, baseType: !929, size: 32, offset: 1792)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !376, file: !44, line: 954, baseType: !929, size: 32, offset: 1824)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !366, file: !323, line: 174, baseType: !372, size: 64, offset: 320)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !366, file: !323, line: 176, baseType: !3198, size: 64, offset: 384)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = !DISubroutineType(types: !3200)
!3200 = !{!224, !375, !250, !365, !1001}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !354, file: !323, line: 90, baseType: !349, size: 64, offset: 192)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !354, file: !323, line: 91, baseType: !3203, size: 64, offset: 256)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !313, file: !240, line: 143, baseType: !3205, size: 64, offset: 256)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!3208, !250}
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3210)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3211)
!3211 = !{!3212, !3213, !3217, !3221, !3227, !3231}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3210, file: !61, line: 40, baseType: !60, size: 32)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3210, file: !61, line: 41, baseType: !3214, size: 64, offset: 64)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!511}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3210, file: !61, line: 42, baseType: !3218, size: 64, offset: 128)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{!166}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3210, file: !61, line: 43, baseType: !3222, size: 64, offset: 192)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{!2147, !3225}
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3210, file: !61, line: 44, baseType: !3228, size: 64, offset: 256)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{!2147}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3210, file: !61, line: 45, baseType: !489, size: 64, offset: 320)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !313, file: !240, line: 144, baseType: !3233, size: 64, offset: 320)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!2147, !250}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !313, file: !240, line: 145, baseType: !3237, size: 64, offset: 384)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{null, !250, !3240, !3241}
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !239, file: !240, line: 70, baseType: !3243, size: 64, offset: 384)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !640, line: 123, size: 1024, elements: !3245)
!3245 = !{!3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3374, !3375, !3376, !3377, !3378}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3244, file: !640, line: 124, baseType: !768, size: 32)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3244, file: !640, line: 125, baseType: !768, size: 32, offset: 32)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3244, file: !640, line: 135, baseType: !3243, size: 64, offset: 64)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3244, file: !640, line: 136, baseType: !215, size: 64, offset: 128)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3244, file: !640, line: 138, baseType: !781, size: 192, align: 64, offset: 192)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3244, file: !640, line: 140, baseType: !2147, size: 64, offset: 384)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3244, file: !640, line: 141, baseType: !7, size: 32, offset: 448)
!3253 = !DIDerivedType(tag: DW_TAG_member, scope: !3244, file: !640, line: 142, baseType: !3254, size: 256, offset: 512)
!3254 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3244, file: !640, line: 142, size: 256, elements: !3255)
!3255 = !{!3256, !3302, !3306}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3254, file: !640, line: 143, baseType: !3257, size: 192)
!3257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !640, line: 91, size: 192, elements: !3258)
!3258 = !{!3259, !3260, !3261}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3257, file: !640, line: 92, baseType: !347, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3257, file: !640, line: 94, baseType: !777, size: 64, offset: 64)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3257, file: !640, line: 100, baseType: !3262, size: 64, offset: 128)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !640, line: 180, size: 704, elements: !3264)
!3264 = !{!3265, !3266, !3267, !3274, !3275, !3276, !3300, !3301}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3263, file: !640, line: 182, baseType: !3243, size: 64)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3263, file: !640, line: 183, baseType: !7, size: 32, offset: 64)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3263, file: !640, line: 186, baseType: !3268, size: 192, offset: 128)
!3268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3269, line: 19, size: 192, elements: !3270)
!3269 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3270 = !{!3271, !3272, !3273}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3268, file: !3269, line: 20, baseType: !760, size: 128)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3268, file: !3269, line: 21, baseType: !7, size: 32, offset: 128)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3268, file: !3269, line: 22, baseType: !7, size: 32, offset: 160)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3263, file: !640, line: 187, baseType: !438, size: 32, offset: 320)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3263, file: !640, line: 188, baseType: !438, size: 32, offset: 352)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3263, file: !640, line: 189, baseType: !3277, size: 64, offset: 384)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !640, line: 168, size: 320, elements: !3279)
!3279 = !{!3280, !3284, !3288, !3292, !3296}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3278, file: !640, line: 169, baseType: !3281, size: 64)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!224, !732, !3262}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3278, file: !640, line: 171, baseType: !3285, size: 64, offset: 64)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!224, !3243, !215, !339}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3278, file: !640, line: 173, baseType: !3289, size: 64, offset: 128)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DISubroutineType(types: !3291)
!3291 = !{!224, !3243}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3278, file: !640, line: 174, baseType: !3293, size: 64, offset: 192)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!224, !3243, !3243, !215}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3278, file: !640, line: 176, baseType: !3297, size: 64, offset: 256)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{!224, !732, !3243, !3262}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3263, file: !640, line: 192, baseType: !244, size: 128, offset: 448)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3263, file: !640, line: 194, baseType: !1501, size: 128, offset: 576)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3254, file: !640, line: 144, baseType: !3303, size: 64)
!3303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !640, line: 103, size: 64, elements: !3304)
!3304 = !{!3305}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3303, file: !640, line: 104, baseType: !3243, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3254, file: !640, line: 145, baseType: !3307, size: 256)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !640, line: 107, size: 256, elements: !3308)
!3308 = !{!3309, !3369, !3372, !3373}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3307, file: !640, line: 108, baseType: !3310, size: 64)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3312)
!3312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !640, line: 217, size: 768, elements: !3313)
!3313 = !{!3314, !3334, !3338, !3342, !3346, !3350, !3354, !3358, !3359, !3360, !3361, !3365}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3312, file: !640, line: 222, baseType: !3315, size: 64)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!224, !3318}
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !640, line: 197, size: 1088, elements: !3320)
!3320 = !{!3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3319, file: !640, line: 199, baseType: !3243, size: 64)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3319, file: !640, line: 200, baseType: !375, size: 64, offset: 64)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3319, file: !640, line: 201, baseType: !732, size: 64, offset: 128)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3319, file: !640, line: 202, baseType: !166, size: 64, offset: 192)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3319, file: !640, line: 205, baseType: !1193, size: 192, offset: 256)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3319, file: !640, line: 206, baseType: !1193, size: 192, offset: 448)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3319, file: !640, line: 207, baseType: !224, size: 32, offset: 640)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3319, file: !640, line: 208, baseType: !244, size: 128, offset: 704)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3319, file: !640, line: 209, baseType: !298, size: 64, offset: 832)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3319, file: !640, line: 211, baseType: !344, size: 64, offset: 896)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3319, file: !640, line: 212, baseType: !511, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3319, file: !640, line: 213, baseType: !511, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3319, file: !640, line: 214, baseType: !1029, size: 64, offset: 1024)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3312, file: !640, line: 223, baseType: !3335, size: 64, offset: 64)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{null, !3318}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3312, file: !640, line: 236, baseType: !3339, size: 64, offset: 128)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!224, !732, !166}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3312, file: !640, line: 238, baseType: !3343, size: 64, offset: 192)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!166, !732, !2896}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3312, file: !640, line: 239, baseType: !3347, size: 64, offset: 256)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{!166, !732, !166, !2896}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3312, file: !640, line: 240, baseType: !3351, size: 64, offset: 320)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{null, !732, !166}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3312, file: !640, line: 242, baseType: !3355, size: 64, offset: 384)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{!329, !3318, !298, !344, !552}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3312, file: !640, line: 252, baseType: !344, size: 64, offset: 448)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3312, file: !640, line: 259, baseType: !511, size: 8, offset: 512)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3312, file: !640, line: 260, baseType: !3355, size: 64, offset: 576)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3312, file: !640, line: 263, baseType: !3362, size: 64, offset: 640)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{!2925, !3318, !2926}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3312, file: !640, line: 266, baseType: !3366, size: 64, offset: 704)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!224, !3318, !1001}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3307, file: !640, line: 109, baseType: !3370, size: 64, offset: 64)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !640, line: 31, flags: DIFlagFwdDecl)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3307, file: !640, line: 110, baseType: !552, size: 64, offset: 128)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3307, file: !640, line: 111, baseType: !3243, size: 64, offset: 192)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3244, file: !640, line: 148, baseType: !166, size: 64, offset: 768)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3244, file: !640, line: 154, baseType: !442, size: 64, offset: 832)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3244, file: !640, line: 156, baseType: !171, size: 16, offset: 896)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3244, file: !640, line: 157, baseType: !339, size: 16, offset: 912)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3244, file: !640, line: 158, baseType: !3379, size: 64, offset: 960)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !640, line: 32, flags: DIFlagFwdDecl)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !239, file: !240, line: 71, baseType: !3382, size: 32, offset: 448)
!3382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3383, line: 19, size: 32, elements: !3384)
!3383 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3384 = !{!3385}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3382, file: !3383, line: 20, baseType: !1250, size: 32)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !239, file: !240, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !239, file: !240, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !239, file: !240, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !239, file: !240, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !239, file: !240, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !236, file: !73, line: 463, baseType: !235, size: 64, offset: 512)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !236, file: !73, line: 465, baseType: !3393, size: 64, offset: 576)
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !236, file: !73, line: 467, baseType: !215, size: 64, offset: 640)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !236, file: !73, line: 468, baseType: !3397, size: 64, offset: 704)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3399)
!3399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3400)
!3400 = !{!3401, !3402, !3403, !3407, !3412, !3416}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3399, file: !73, line: 88, baseType: !215, size: 64)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3399, file: !73, line: 89, baseType: !351, size: 64, offset: 64)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3399, file: !73, line: 90, baseType: !3404, size: 64, offset: 128)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{!224, !235, !293}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3399, file: !73, line: 91, baseType: !3408, size: 64, offset: 192)
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = !DISubroutineType(types: !3410)
!3410 = !{!298, !235, !3411, !3240, !3241}
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3399, file: !73, line: 93, baseType: !3413, size: 64, offset: 256)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = !DISubroutineType(types: !3415)
!3415 = !{null, !235}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3399, file: !73, line: 95, baseType: !3417, size: 64, offset: 320)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3419)
!3419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3420)
!3420 = !{!3421, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3419, file: !80, line: 279, baseType: !3422, size: 64)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DISubroutineType(types: !3424)
!3424 = !{!224, !235}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3419, file: !80, line: 280, baseType: !3413, size: 64, offset: 64)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3419, file: !80, line: 281, baseType: !3422, size: 64, offset: 128)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3419, file: !80, line: 282, baseType: !3422, size: 64, offset: 192)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3419, file: !80, line: 283, baseType: !3422, size: 64, offset: 256)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3419, file: !80, line: 284, baseType: !3422, size: 64, offset: 320)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3419, file: !80, line: 285, baseType: !3422, size: 64, offset: 384)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3419, file: !80, line: 286, baseType: !3422, size: 64, offset: 448)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3419, file: !80, line: 287, baseType: !3422, size: 64, offset: 512)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3419, file: !80, line: 288, baseType: !3422, size: 64, offset: 576)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3419, file: !80, line: 289, baseType: !3422, size: 64, offset: 640)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3419, file: !80, line: 290, baseType: !3422, size: 64, offset: 704)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3419, file: !80, line: 291, baseType: !3422, size: 64, offset: 768)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3419, file: !80, line: 292, baseType: !3422, size: 64, offset: 832)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3419, file: !80, line: 293, baseType: !3422, size: 64, offset: 896)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3419, file: !80, line: 294, baseType: !3422, size: 64, offset: 960)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3419, file: !80, line: 295, baseType: !3422, size: 64, offset: 1024)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3419, file: !80, line: 296, baseType: !3422, size: 64, offset: 1088)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3419, file: !80, line: 297, baseType: !3422, size: 64, offset: 1152)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3419, file: !80, line: 298, baseType: !3422, size: 64, offset: 1216)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3419, file: !80, line: 299, baseType: !3422, size: 64, offset: 1280)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3419, file: !80, line: 300, baseType: !3422, size: 64, offset: 1344)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3419, file: !80, line: 301, baseType: !3422, size: 64, offset: 1408)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !236, file: !73, line: 470, baseType: !3448, size: 64, offset: 768)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3450, line: 82, size: 1408, elements: !3451)
!3450 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3451 = !{!3452, !3453, !3454, !3455, !3456, !3457, !3458, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3533, !3536, !3537}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3449, file: !3450, line: 83, baseType: !215, size: 64)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3449, file: !3450, line: 84, baseType: !215, size: 64, offset: 64)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3449, file: !3450, line: 85, baseType: !235, size: 64, offset: 128)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3449, file: !3450, line: 86, baseType: !351, size: 64, offset: 192)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3449, file: !3450, line: 87, baseType: !351, size: 64, offset: 256)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3449, file: !3450, line: 88, baseType: !351, size: 64, offset: 320)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3449, file: !3450, line: 90, baseType: !3459, size: 64, offset: 384)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{!224, !235, !3462}
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3464)
!3464 = !{!3465, !3466, !3467, !3468, !3469, !3470, !3471, !3484, !3497, !3498, !3499, !3500, !3501, !3509, !3510, !3511, !3512, !3513, !3514}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3463, file: !67, line: 96, baseType: !215, size: 64)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3463, file: !67, line: 97, baseType: !3448, size: 64, offset: 64)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3463, file: !67, line: 99, baseType: !217, size: 64, offset: 128)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3463, file: !67, line: 100, baseType: !215, size: 64, offset: 192)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3463, file: !67, line: 102, baseType: !511, size: 8, offset: 256)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3463, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3463, file: !67, line: 105, baseType: !3472, size: 64, offset: 320)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3474)
!3474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3475, line: 262, size: 1600, elements: !3476)
!3475 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3476 = !{!3477, !3478, !3479, !3483}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3474, file: !3475, line: 263, baseType: !2720, size: 256)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3474, file: !3475, line: 264, baseType: !2720, size: 256, offset: 256)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3474, file: !3475, line: 265, baseType: !3480, size: 1024, offset: 512)
!3480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 1024, elements: !3481)
!3481 = !{!3482}
!3482 = !DISubrange(count: 128)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3474, file: !3475, line: 266, baseType: !2147, size: 64, offset: 1536)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3463, file: !67, line: 106, baseType: !3485, size: 64, offset: 384)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3487)
!3487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3475, line: 210, size: 256, elements: !3488)
!3488 = !{!3489, !3493, !3495, !3496}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3487, file: !3475, line: 211, baseType: !3490, size: 72)
!3490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1373, size: 72, elements: !3491)
!3491 = !{!3492}
!3492 = !DISubrange(count: 9)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3487, file: !3475, line: 212, baseType: !3494, size: 64, offset: 128)
!3494 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3475, line: 14, baseType: !347)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3487, file: !3475, line: 213, baseType: !175, size: 32, offset: 192)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3487, file: !3475, line: 214, baseType: !175, size: 32, offset: 224)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3463, file: !67, line: 108, baseType: !3422, size: 64, offset: 448)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3463, file: !67, line: 109, baseType: !3413, size: 64, offset: 512)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3463, file: !67, line: 110, baseType: !3422, size: 64, offset: 576)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3463, file: !67, line: 111, baseType: !3413, size: 64, offset: 640)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3463, file: !67, line: 112, baseType: !3502, size: 64, offset: 704)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = !DISubroutineType(types: !3504)
!3504 = !{!224, !235, !3505}
!3505 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3506)
!3506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3507)
!3507 = !{!3508}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3506, file: !80, line: 51, baseType: !224, size: 32)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3463, file: !67, line: 113, baseType: !3422, size: 64, offset: 768)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3463, file: !67, line: 114, baseType: !351, size: 64, offset: 832)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3463, file: !67, line: 115, baseType: !351, size: 64, offset: 896)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3463, file: !67, line: 117, baseType: !3417, size: 64, offset: 960)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3463, file: !67, line: 118, baseType: !3413, size: 64, offset: 1024)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3463, file: !67, line: 120, baseType: !3515, size: 64, offset: 1088)
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3516, size: 64)
!3516 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3449, file: !3450, line: 91, baseType: !3404, size: 64, offset: 448)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3449, file: !3450, line: 92, baseType: !3422, size: 64, offset: 512)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3449, file: !3450, line: 93, baseType: !3413, size: 64, offset: 576)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3449, file: !3450, line: 94, baseType: !3422, size: 64, offset: 640)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3449, file: !3450, line: 95, baseType: !3413, size: 64, offset: 704)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3449, file: !3450, line: 97, baseType: !3422, size: 64, offset: 768)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3449, file: !3450, line: 98, baseType: !3422, size: 64, offset: 832)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3449, file: !3450, line: 100, baseType: !3502, size: 64, offset: 896)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3449, file: !3450, line: 101, baseType: !3422, size: 64, offset: 960)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3449, file: !3450, line: 103, baseType: !3422, size: 64, offset: 1024)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3449, file: !3450, line: 105, baseType: !3422, size: 64, offset: 1088)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3449, file: !3450, line: 107, baseType: !3417, size: 64, offset: 1152)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3449, file: !3450, line: 109, baseType: !3530, size: 64, offset: 1216)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3532)
!3532 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3450, line: 109, flags: DIFlagFwdDecl)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3449, file: !3450, line: 111, baseType: !3534, size: 64, offset: 1280)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3450, line: 111, flags: DIFlagFwdDecl)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3449, file: !3450, line: 112, baseType: !666, offset: 1344)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3449, file: !3450, line: 114, baseType: !511, size: 8, offset: 1344)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !236, file: !73, line: 471, baseType: !3462, size: 64, offset: 832)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !236, file: !73, line: 473, baseType: !166, size: 64, offset: 896)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !236, file: !73, line: 475, baseType: !166, size: 64, offset: 960)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !236, file: !73, line: 480, baseType: !1193, size: 192, offset: 1024)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !236, file: !73, line: 484, baseType: !3543, size: 576, offset: 1216)
!3543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3544)
!3544 = !{!3545, !3546, !3547, !3548, !3549, !3550}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3543, file: !73, line: 362, baseType: !244, size: 128)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3543, file: !73, line: 363, baseType: !244, size: 128, offset: 128)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3543, file: !73, line: 364, baseType: !244, size: 128, offset: 256)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3543, file: !73, line: 365, baseType: !244, size: 128, offset: 384)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3543, file: !73, line: 366, baseType: !511, size: 8, offset: 512)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3543, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !236, file: !73, line: 485, baseType: !3552, size: 2304, offset: 1792)
!3552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3553)
!3553 = !{!3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3649, !3653}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3552, file: !80, line: 566, baseType: !3505, size: 32)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3552, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3552, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3552, file: !80, line: 569, baseType: !511, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3552, file: !80, line: 570, baseType: !511, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3552, file: !80, line: 571, baseType: !511, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3552, file: !80, line: 572, baseType: !511, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3552, file: !80, line: 573, baseType: !511, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3552, file: !80, line: 574, baseType: !511, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3552, file: !80, line: 575, baseType: !511, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3552, file: !80, line: 576, baseType: !511, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3552, file: !80, line: 577, baseType: !438, size: 32, offset: 64)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3552, file: !80, line: 578, baseType: !257, offset: 96)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3552, file: !80, line: 580, baseType: !244, size: 128, offset: 128)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3552, file: !80, line: 581, baseType: !1522, size: 192, offset: 256)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3552, file: !80, line: 582, baseType: !3570, size: 64, offset: 448)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3572, line: 43, size: 1472, elements: !3573)
!3572 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3573 = !{!3574, !3575, !3576, !3577, !3578, !3581, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3571, file: !3572, line: 44, baseType: !215, size: 64)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3571, file: !3572, line: 45, baseType: !224, size: 32, offset: 64)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3571, file: !3572, line: 46, baseType: !244, size: 128, offset: 128)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3571, file: !3572, line: 47, baseType: !257, offset: 256)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3571, file: !3572, line: 48, baseType: !3579, size: 64, offset: 256)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3580 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3571, file: !3572, line: 49, baseType: !3582, size: 320, offset: 320)
!3582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3583, line: 11, size: 320, elements: !3584)
!3583 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3584 = !{!3585, !3586, !3587, !3592}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3582, file: !3583, line: 16, baseType: !660, size: 128)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3582, file: !3583, line: 17, baseType: !347, size: 64, offset: 128)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3582, file: !3583, line: 18, baseType: !3588, size: 64, offset: 192)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{null, !3591}
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3582, file: !3583, line: 19, baseType: !438, size: 32, offset: 256)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3571, file: !3572, line: 50, baseType: !347, size: 64, offset: 640)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3571, file: !3572, line: 51, baseType: !1320, size: 64, offset: 704)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3571, file: !3572, line: 52, baseType: !1320, size: 64, offset: 768)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3571, file: !3572, line: 53, baseType: !1320, size: 64, offset: 832)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3571, file: !3572, line: 54, baseType: !1320, size: 64, offset: 896)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3571, file: !3572, line: 55, baseType: !1320, size: 64, offset: 960)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3571, file: !3572, line: 56, baseType: !347, size: 64, offset: 1024)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3571, file: !3572, line: 57, baseType: !347, size: 64, offset: 1088)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3571, file: !3572, line: 58, baseType: !347, size: 64, offset: 1152)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3571, file: !3572, line: 59, baseType: !347, size: 64, offset: 1216)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3571, file: !3572, line: 60, baseType: !347, size: 64, offset: 1280)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3571, file: !3572, line: 61, baseType: !235, size: 64, offset: 1344)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3571, file: !3572, line: 62, baseType: !511, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3571, file: !3572, line: 63, baseType: !511, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3552, file: !80, line: 583, baseType: !511, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3552, file: !80, line: 584, baseType: !511, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3552, file: !80, line: 585, baseType: !511, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3552, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3552, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3552, file: !80, line: 592, baseType: !1312, size: 512, offset: 576)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3552, file: !80, line: 593, baseType: !442, size: 64, offset: 1088)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3552, file: !80, line: 594, baseType: !1977, size: 256, offset: 1152)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3552, file: !80, line: 595, baseType: !1501, size: 128, offset: 1408)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3552, file: !80, line: 596, baseType: !3579, size: 64, offset: 1536)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3552, file: !80, line: 597, baseType: !768, size: 32, offset: 1600)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3552, file: !80, line: 598, baseType: !768, size: 32, offset: 1632)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3552, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3552, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3552, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3552, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3552, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3552, file: !80, line: 604, baseType: !511, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3552, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3552, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3552, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3552, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3552, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3552, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3552, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3552, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3552, file: !80, line: 613, baseType: !224, size: 32, offset: 1792)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3552, file: !80, line: 614, baseType: !224, size: 32, offset: 1824)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3552, file: !80, line: 615, baseType: !442, size: 64, offset: 1856)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3552, file: !80, line: 616, baseType: !442, size: 64, offset: 1920)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3552, file: !80, line: 617, baseType: !442, size: 64, offset: 1984)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3552, file: !80, line: 618, baseType: !442, size: 64, offset: 2048)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3552, file: !80, line: 620, baseType: !3640, size: 64, offset: 2112)
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3642)
!3642 = !{!3643, !3644, !3645, !3646}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3641, file: !80, line: 537, baseType: !257)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3641, file: !80, line: 538, baseType: !7, size: 32)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3641, file: !80, line: 540, baseType: !244, size: 128, offset: 64)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3641, file: !80, line: 543, baseType: !3647, size: 64, offset: 192)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3552, file: !80, line: 621, baseType: !3650, size: 64, offset: 2176)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = !DISubroutineType(types: !3652)
!3652 = !{null, !235, !1464}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3552, file: !80, line: 622, baseType: !3654, size: 64, offset: 2240)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !236, file: !73, line: 486, baseType: !3657, size: 64, offset: 4096)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3659)
!3659 = !{!3660, !3661, !3662, !3666, !3667, !3668}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3658, file: !80, line: 643, baseType: !3419, size: 1472)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3658, file: !80, line: 644, baseType: !3422, size: 64, offset: 1472)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3658, file: !80, line: 645, baseType: !3663, size: 64, offset: 1536)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = !DISubroutineType(types: !3665)
!3665 = !{null, !235, !511}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3658, file: !80, line: 646, baseType: !3422, size: 64, offset: 1600)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3658, file: !80, line: 647, baseType: !3413, size: 64, offset: 1664)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3658, file: !80, line: 648, baseType: !3413, size: 64, offset: 1728)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !236, file: !73, line: 493, baseType: !3670, size: 64, offset: 4160)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !73, line: 493, flags: DIFlagFwdDecl)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !236, file: !73, line: 499, baseType: !244, size: 128, offset: 4224)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !236, file: !73, line: 502, baseType: !3674, size: 64, offset: 4352)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3676)
!3676 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !236, file: !73, line: 504, baseType: !3678, size: 64, offset: 4416)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !236, file: !73, line: 505, baseType: !442, size: 64, offset: 4480)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !236, file: !73, line: 510, baseType: !442, size: 64, offset: 4544)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !236, file: !73, line: 511, baseType: !3682, size: 64, offset: 4608)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3684)
!3684 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !236, file: !73, line: 513, baseType: !3686, size: 64, offset: 4672)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3688)
!3688 = !{!3689, !3690}
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3687, file: !73, line: 293, baseType: !7, size: 32)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3687, file: !73, line: 294, baseType: !347, size: 64, offset: 64)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !236, file: !73, line: 515, baseType: !244, size: 128, offset: 4736)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !236, file: !73, line: 526, baseType: !3693, offset: 4864)
!3693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3694, line: 5, elements: !271)
!3694 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !236, file: !73, line: 528, baseType: !3696, size: 64, offset: 4864)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3698, line: 14, flags: DIFlagFwdDecl)
!3698 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !236, file: !73, line: 529, baseType: !3700, size: 64, offset: 4928)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3702, line: 17, size: 192, elements: !3703)
!3702 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3703 = !{!3704, !3705, !3788}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3701, file: !3702, line: 18, baseType: !3700, size: 64)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3701, file: !3702, line: 19, baseType: !3706, size: 64, offset: 64)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3708)
!3708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3702, line: 110, size: 1152, elements: !3709)
!3709 = !{!3710, !3714, !3718, !3724, !3730, !3734, !3738, !3743, !3747, !3748, !3752, !3756, !3760, !3771, !3772, !3773, !3774, !3784}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3708, file: !3702, line: 111, baseType: !3711, size: 64)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{!3700, !3700}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3708, file: !3702, line: 112, baseType: !3715, size: 64, offset: 64)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{null, !3700}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3708, file: !3702, line: 113, baseType: !3719, size: 64, offset: 128)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!511, !3722}
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3701)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3708, file: !3702, line: 114, baseType: !3725, size: 64, offset: 192)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{!2147, !3722, !3728}
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !236)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3708, file: !3702, line: 116, baseType: !3731, size: 64, offset: 256)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!511, !3722, !215}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3708, file: !3702, line: 118, baseType: !3735, size: 64, offset: 320)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!224, !3722, !215, !7, !166, !344}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3708, file: !3702, line: 123, baseType: !3739, size: 64, offset: 384)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!224, !3722, !215, !3742, !344}
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3708, file: !3702, line: 126, baseType: !3744, size: 64, offset: 448)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!215, !3722}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3708, file: !3702, line: 127, baseType: !3744, size: 64, offset: 512)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3708, file: !3702, line: 128, baseType: !3749, size: 64, offset: 576)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{!3700, !3722}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3708, file: !3702, line: 130, baseType: !3753, size: 64, offset: 640)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{!3700, !3722, !3700}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3708, file: !3702, line: 133, baseType: !3757, size: 64, offset: 704)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!3700, !3722, !215}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3708, file: !3702, line: 135, baseType: !3761, size: 64, offset: 768)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = !DISubroutineType(types: !3763)
!3763 = !{!224, !3722, !215, !215, !7, !7, !3764}
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3702, line: 43, size: 640, elements: !3766)
!3766 = !{!3767, !3768, !3769}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3765, file: !3702, line: 44, baseType: !3700, size: 64)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3765, file: !3702, line: 45, baseType: !7, size: 32, offset: 64)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3765, file: !3702, line: 46, baseType: !3770, size: 512, offset: 128)
!3770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 512, elements: !1350)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3708, file: !3702, line: 140, baseType: !3753, size: 64, offset: 832)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3708, file: !3702, line: 143, baseType: !3749, size: 64, offset: 896)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3708, file: !3702, line: 145, baseType: !3711, size: 64, offset: 960)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3708, file: !3702, line: 146, baseType: !3775, size: 64, offset: 1024)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DISubroutineType(types: !3777)
!3777 = !{!224, !3722, !3778}
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3702, line: 29, size: 128, elements: !3780)
!3780 = !{!3781, !3782, !3783}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3779, file: !3702, line: 30, baseType: !7, size: 32)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3779, file: !3702, line: 31, baseType: !7, size: 32, offset: 32)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3779, file: !3702, line: 32, baseType: !3722, size: 64, offset: 64)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3708, file: !3702, line: 148, baseType: !3785, size: 64, offset: 1088)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!224, !3722, !235}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3701, file: !3702, line: 20, baseType: !235, size: 64, offset: 128)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !236, file: !73, line: 534, baseType: !534, size: 32, offset: 4992)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !236, file: !73, line: 535, baseType: !438, size: 32, offset: 5024)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !236, file: !73, line: 537, baseType: !257, offset: 5056)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !236, file: !73, line: 538, baseType: !244, size: 128, offset: 5056)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !236, file: !73, line: 540, baseType: !3794, size: 64, offset: 5184)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3796, line: 54, size: 960, elements: !3797)
!3796 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3797 = !{!3798, !3799, !3800, !3801, !3802, !3803, !3804, !3808, !3812, !3813, !3814, !3815, !3819, !3823, !3824}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3795, file: !3796, line: 55, baseType: !215, size: 64)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3795, file: !3796, line: 56, baseType: !217, size: 64, offset: 64)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3795, file: !3796, line: 58, baseType: !351, size: 64, offset: 128)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3795, file: !3796, line: 59, baseType: !351, size: 64, offset: 192)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3795, file: !3796, line: 60, baseType: !250, size: 64, offset: 256)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3795, file: !3796, line: 62, baseType: !3404, size: 64, offset: 320)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3795, file: !3796, line: 63, baseType: !3805, size: 64, offset: 384)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!298, !235, !3411}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3795, file: !3796, line: 65, baseType: !3809, size: 64, offset: 448)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{null, !3794}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3795, file: !3796, line: 66, baseType: !3413, size: 64, offset: 512)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3795, file: !3796, line: 68, baseType: !3422, size: 64, offset: 576)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3795, file: !3796, line: 70, baseType: !3208, size: 64, offset: 640)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3795, file: !3796, line: 71, baseType: !3816, size: 64, offset: 704)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DISubroutineType(types: !3818)
!3818 = !{!2147, !235}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3795, file: !3796, line: 73, baseType: !3820, size: 64, offset: 768)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{null, !235, !3240, !3241}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3795, file: !3796, line: 75, baseType: !3417, size: 64, offset: 832)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3795, file: !3796, line: 77, baseType: !3534, size: 64, offset: 896)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !236, file: !73, line: 541, baseType: !351, size: 64, offset: 5248)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !236, file: !73, line: 543, baseType: !3413, size: 64, offset: 5312)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !236, file: !73, line: 544, baseType: !3828, size: 64, offset: 5376)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !236, file: !73, line: 545, baseType: !3831, size: 64, offset: 5440)
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !236, file: !73, line: 547, baseType: !511, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !236, file: !73, line: 548, baseType: !511, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !236, file: !73, line: 549, baseType: !511, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !236, file: !73, line: 550, baseType: !511, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !226, file: !210, line: 548, baseType: !224, size: 32, offset: 320)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "detach_count", scope: !226, file: !210, line: 549, baseType: !7, size: 32, offset: 352)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "hw_dev", scope: !226, file: !210, line: 550, baseType: !235, size: 64, offset: 384)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !226, file: !210, line: 552, baseType: !215, size: 64, offset: 448)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "board_ptr", scope: !226, file: !210, line: 553, baseType: !2147, size: 64, offset: 512)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "attached", scope: !226, file: !210, line: 554, baseType: !7, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "ioenabled", scope: !226, file: !210, line: 555, baseType: !7, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "spinlock", scope: !226, file: !210, line: 556, baseType: !257, offset: 584)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !226, file: !210, line: 557, baseType: !1193, size: 192, offset: 640)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "attach_lock", scope: !226, file: !210, line: 558, baseType: !788, size: 256, offset: 832)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !226, file: !210, line: 559, baseType: !3382, size: 32, offset: 1088)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "n_subdevices", scope: !226, file: !210, line: 561, baseType: !224, size: 32, offset: 1120)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "subdevices", scope: !226, file: !210, line: 562, baseType: !3850, size: 64, offset: 1152)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_subdevice", file: !210, line: 153, size: 1792, elements: !3852)
!3852 = !{!3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3928, !3941, !3944, !3945, !3959, !3960, !3961, !3962, !3966, !3971, !3972, !3973, !3974, !3978, !3979, !3980, !3981, !3982}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3851, file: !210, line: 154, baseType: !225, size: 64)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3851, file: !210, line: 155, baseType: !224, size: 32, offset: 64)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3851, file: !210, line: 156, baseType: !224, size: 32, offset: 96)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "n_chan", scope: !3851, file: !210, line: 157, baseType: !224, size: 32, offset: 128)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "subdev_flags", scope: !3851, file: !210, line: 158, baseType: !224, size: 32, offset: 160)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "len_chanlist", scope: !3851, file: !210, line: 159, baseType: !224, size: 32, offset: 192)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3851, file: !210, line: 161, baseType: !166, size: 64, offset: 256)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "async", scope: !3851, file: !210, line: 163, baseType: !3861, size: 64, offset: 320)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_async", file: !210, line: 347, size: 1536, elements: !3863)
!3863 = !{!3864, !3865, !3866, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3914, !3915, !3916}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3862, file: !210, line: 348, baseType: !166, size: 64)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_bufsz", scope: !3862, file: !210, line: 349, baseType: !7, size: 32, offset: 64)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "buf_map", scope: !3862, file: !210, line: 350, baseType: !3867, size: 64, offset: 128)
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_buf_map", file: !210, line: 249, size: 256, elements: !3869)
!3869 = !{!3870, !3871, !3877, !3878, !3879}
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "dma_hw_dev", scope: !3868, file: !210, line: 250, baseType: !235, size: 64)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "page_list", scope: !3868, file: !210, line: 251, baseType: !3872, size: 64, offset: 64)
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_buf_page", file: !210, line: 220, size: 128, elements: !3874)
!3874 = !{!3875, !3876}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "virt_addr", scope: !3873, file: !210, line: 221, baseType: !166, size: 64)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3873, file: !210, line: 222, baseType: !940, size: 64, offset: 64)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "n_pages", scope: !3868, file: !210, line: 252, baseType: !7, size: 32, offset: 128)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "dma_dir", scope: !3868, file: !210, line: 253, baseType: !93, size: 32, offset: 160)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3868, file: !210, line: 254, baseType: !3382, size: 32, offset: 192)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "max_bufsize", scope: !3862, file: !210, line: 351, baseType: !7, size: 32, offset: 192)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_count", scope: !3862, file: !210, line: 352, baseType: !7, size: 32, offset: 224)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_alloc_count", scope: !3862, file: !210, line: 353, baseType: !7, size: 32, offset: 256)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_count", scope: !3862, file: !210, line: 354, baseType: !7, size: 32, offset: 288)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_alloc_count", scope: !3862, file: !210, line: 355, baseType: !7, size: 32, offset: 320)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_ptr", scope: !3862, file: !210, line: 356, baseType: !7, size: 32, offset: 352)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_ptr", scope: !3862, file: !210, line: 357, baseType: !7, size: 32, offset: 384)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "cur_chan", scope: !3862, file: !210, line: 358, baseType: !7, size: 32, offset: 416)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "scans_done", scope: !3862, file: !210, line: 359, baseType: !7, size: 32, offset: 448)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "scan_progress", scope: !3862, file: !210, line: 360, baseType: !7, size: 32, offset: 480)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "munge_chan", scope: !3862, file: !210, line: 361, baseType: !7, size: 32, offset: 512)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "munge_count", scope: !3862, file: !210, line: 362, baseType: !7, size: 32, offset: 544)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "munge_ptr", scope: !3862, file: !210, line: 363, baseType: !7, size: 32, offset: 576)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3862, file: !210, line: 364, baseType: !7, size: 32, offset: 608)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !3862, file: !210, line: 365, baseType: !3895, size: 640, offset: 640)
!3895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_cmd", file: !108, line: 589, size: 640, elements: !3896)
!3896 = !{!3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3913}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "subdev", scope: !3895, file: !108, line: 590, baseType: !7, size: 32)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3895, file: !108, line: 591, baseType: !7, size: 32, offset: 32)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "start_src", scope: !3895, file: !108, line: 593, baseType: !7, size: 32, offset: 64)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "start_arg", scope: !3895, file: !108, line: 594, baseType: !7, size: 32, offset: 96)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "scan_begin_src", scope: !3895, file: !108, line: 596, baseType: !7, size: 32, offset: 128)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "scan_begin_arg", scope: !3895, file: !108, line: 597, baseType: !7, size: 32, offset: 160)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "convert_src", scope: !3895, file: !108, line: 599, baseType: !7, size: 32, offset: 192)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "convert_arg", scope: !3895, file: !108, line: 600, baseType: !7, size: 32, offset: 224)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "scan_end_src", scope: !3895, file: !108, line: 602, baseType: !7, size: 32, offset: 256)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "scan_end_arg", scope: !3895, file: !108, line: 603, baseType: !7, size: 32, offset: 288)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "stop_src", scope: !3895, file: !108, line: 605, baseType: !7, size: 32, offset: 320)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "stop_arg", scope: !3895, file: !108, line: 606, baseType: !7, size: 32, offset: 352)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist", scope: !3895, file: !108, line: 608, baseType: !2703, size: 64, offset: 384)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist_len", scope: !3895, file: !108, line: 609, baseType: !7, size: 32, offset: 448)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3895, file: !108, line: 611, baseType: !3912, size: 64, offset: 512)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !3895, file: !108, line: 612, baseType: !7, size: 32, offset: 576)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "wait_head", scope: !3862, file: !210, line: 366, baseType: !1501, size: 128, offset: 1280)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "cb_mask", scope: !3862, file: !210, line: 367, baseType: !7, size: 32, offset: 1408)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "inttrig", scope: !3862, file: !210, line: 368, baseType: !3917, size: 64, offset: 1472)
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3918, size: 64)
!3918 = !DISubroutineType(types: !3919)
!3919 = !{!224, !225, !3850, !7}
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3851, file: !210, line: 165, baseType: !166, size: 64, offset: 384)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !3851, file: !210, line: 166, baseType: !166, size: 64, offset: 448)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "runflags", scope: !3851, file: !210, line: 167, baseType: !7, size: 32, offset: 512)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "spin_lock", scope: !3851, file: !210, line: 168, baseType: !257, offset: 544)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "io_bits", scope: !3851, file: !210, line: 170, baseType: !7, size: 32, offset: 544)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata", scope: !3851, file: !210, line: 172, baseType: !7, size: 32, offset: 576)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata_list", scope: !3851, file: !210, line: 173, baseType: !3927, size: 64, offset: 640)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "range_table", scope: !3851, file: !210, line: 175, baseType: !3929, size: 64, offset: 704)
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3930 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3931)
!3931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_lrange", file: !210, line: 635, size: 32, elements: !3932)
!3932 = !{!3933, !3934}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3931, file: !210, line: 636, baseType: !224, size: 32)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3931, file: !210, line: 637, baseType: !3935, offset: 32)
!3935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3936, elements: !2351)
!3936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_krange", file: !108, line: 685, size: 96, elements: !3937)
!3937 = !{!3938, !3939, !3940}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !3936, file: !108, line: 686, baseType: !224, size: 32)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3936, file: !108, line: 687, baseType: !224, size: 32, offset: 32)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3936, file: !108, line: 688, baseType: !7, size: 32, offset: 64)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "range_table_list", scope: !3851, file: !210, line: 176, baseType: !3942, size: 64, offset: 768)
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3943, size: 64)
!3943 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3929)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist", scope: !3851, file: !210, line: 178, baseType: !2703, size: 64, offset: 832)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "insn_read", scope: !3851, file: !210, line: 180, baseType: !3946, size: 64, offset: 896)
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3947, size: 64)
!3947 = !DISubroutineType(types: !3948)
!3948 = !{!224, !225, !3850, !3949, !2703}
!3949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3950, size: 64)
!3950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_insn", file: !108, line: 491, size: 320, elements: !3951)
!3951 = !{!3952, !3953, !3954, !3955, !3956, !3957}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3950, file: !108, line: 492, baseType: !7, size: 32)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !3950, file: !108, line: 493, baseType: !7, size: 32, offset: 32)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3950, file: !108, line: 494, baseType: !2703, size: 64, offset: 64)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "subdev", scope: !3950, file: !108, line: 495, baseType: !7, size: 32, offset: 128)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "chanspec", scope: !3950, file: !108, line: 496, baseType: !7, size: 32, offset: 160)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !3950, file: !108, line: 497, baseType: !3958, size: 96, offset: 192)
!3958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 96, elements: !299)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "insn_write", scope: !3851, file: !210, line: 182, baseType: !3946, size: 64, offset: 960)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "insn_bits", scope: !3851, file: !210, line: 184, baseType: !3946, size: 64, offset: 1024)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "insn_config", scope: !3851, file: !210, line: 186, baseType: !3946, size: 64, offset: 1088)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "do_cmd", scope: !3851, file: !210, line: 191, baseType: !3963, size: 64, offset: 1152)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{!224, !225, !3850}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "do_cmdtest", scope: !3851, file: !210, line: 192, baseType: !3967, size: 64, offset: 1216)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = !DISubroutineType(types: !3969)
!3969 = !{!224, !225, !3850, !3970}
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3851, file: !210, line: 195, baseType: !3963, size: 64, offset: 1280)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "cancel", scope: !3851, file: !210, line: 196, baseType: !3963, size: 64, offset: 1344)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "buf_change", scope: !3851, file: !210, line: 199, baseType: !3963, size: 64, offset: 1408)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "munge", scope: !3851, file: !210, line: 202, baseType: !3975, size: 64, offset: 1472)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = !DISubroutineType(types: !3977)
!3977 = !{null, !225, !3850, !166, !7, !7}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "async_dma_dir", scope: !3851, file: !210, line: 205, baseType: !93, size: 32, offset: 1536)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3851, file: !210, line: 207, baseType: !7, size: 32, offset: 1568)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !3851, file: !210, line: 209, baseType: !235, size: 64, offset: 1600)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3851, file: !210, line: 210, baseType: !224, size: 32, offset: 1664)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "readback", scope: !3851, file: !210, line: 212, baseType: !2703, size: 64, offset: 1728)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "mmio", scope: !226, file: !210, line: 565, baseType: !166, size: 64, offset: 1216)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "iobase", scope: !226, file: !210, line: 566, baseType: !347, size: 64, offset: 1280)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "iolen", scope: !226, file: !210, line: 567, baseType: !347, size: 64, offset: 1344)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !226, file: !210, line: 568, baseType: !7, size: 32, offset: 1408)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "read_subdev", scope: !226, file: !210, line: 570, baseType: !3850, size: 64, offset: 1472)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "write_subdev", scope: !226, file: !210, line: 571, baseType: !3850, size: 64, offset: 1536)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "async_queue", scope: !226, file: !210, line: 573, baseType: !2978, size: 64, offset: 1600)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !226, file: !210, line: 575, baseType: !3991, size: 64, offset: 1664)
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3992, size: 64)
!3992 = !DISubroutineType(types: !3993)
!3993 = !{!224, !225}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !226, file: !210, line: 576, baseType: !3995, size: 64, offset: 1728)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = !DISubroutineType(types: !3997)
!3997 = !{null, !225}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "insn_device_config", scope: !226, file: !210, line: 577, baseType: !3999, size: 64, offset: 1792)
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4000 = !DISubroutineType(types: !4001)
!4001 = !{!224, !225, !3949, !2703}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "get_valid_routes", scope: !226, file: !210, line: 579, baseType: !4003, size: 64, offset: 1856)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = !DISubroutineType(types: !4005)
!4005 = !{!7, !225, !7, !2703}
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_devconfig", file: !108, line: 834, size: 1184, elements: !4008)
!4008 = !{!4009, !4011}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !4007, file: !108, line: 835, baseType: !4010, size: 160)
!4010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 160, elements: !2221)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !4007, file: !108, line: 836, baseType: !4012, size: 1024, offset: 160)
!4012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 1024, elements: !2250)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !209, file: !210, line: 444, baseType: !3995, size: 64, offset: 256)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "auto_attach", scope: !209, file: !210, line: 445, baseType: !4015, size: 64, offset: 320)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = !DISubroutineType(types: !4017)
!4017 = !{!224, !225, !347}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "num_names", scope: !209, file: !210, line: 446, baseType: !7, size: 32, offset: 384)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !209, file: !210, line: 447, baseType: !4020, size: 64, offset: 448)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !209, file: !210, line: 448, baseType: !224, size: 32, offset: 512)
!4023 = !DIGlobalVariableExpression(var: !4024, expr: !DIExpression())
!4024 = distinct !DIGlobalVariable(name: "__key", scope: !4025, file: !3, line: 519, type: !666, isLocal: true, isDefinition: true)
!4025 = distinct !DISubprogram(name: "ni6501_auto_attach", scope: !3, file: !3, line: 507, type: !4016, scopeLine: 509, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4026 = !DIGlobalVariableExpression(var: !4027, expr: !DIExpression())
!4027 = distinct !DIGlobalVariable(name: "READ_PORT_REQUEST", scope: !2, file: !3, line: 96, type: !4028, isLocal: true, isDefinition: true)
!4028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4029, size: 128, elements: !1755)
!4029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1372)
!4030 = !DIGlobalVariableExpression(var: !4031, expr: !DIExpression())
!4031 = distinct !DIGlobalVariable(name: "WRITE_PORT_REQUEST", scope: !2, file: !3, line: 101, type: !4032, isLocal: true, isDefinition: true)
!4032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4029, size: 160, elements: !2221)
!4033 = !DIGlobalVariableExpression(var: !4034, expr: !DIExpression())
!4034 = distinct !DIGlobalVariable(name: "SET_PORT_DIR_REQUEST", scope: !2, file: !3, line: 107, type: !4035, isLocal: true, isDefinition: true)
!4035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4029, size: 192, elements: !4036)
!4036 = !{!4037}
!4037 = !DISubrange(count: 24)
!4038 = !DIGlobalVariableExpression(var: !4039, expr: !DIExpression())
!4039 = distinct !DIGlobalVariable(name: "READ_PORT_RESPONSE", scope: !2, file: !3, line: 137, type: !4028, isLocal: true, isDefinition: true)
!4040 = !DIGlobalVariableExpression(var: !4041, expr: !DIExpression())
!4041 = distinct !DIGlobalVariable(name: "GENERIC_RESPONSE", scope: !2, file: !3, line: 133, type: !4042, isLocal: true, isDefinition: true)
!4042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4029, size: 96, elements: !2256)
!4043 = !DIGlobalVariableExpression(var: !4044, expr: !DIExpression())
!4044 = distinct !DIGlobalVariable(name: "START_COUNTER_REQUEST", scope: !2, file: !3, line: 115, type: !4042, isLocal: true, isDefinition: true)
!4045 = !DIGlobalVariableExpression(var: !4046, expr: !DIExpression())
!4046 = distinct !DIGlobalVariable(name: "STOP_COUNTER_REQUEST", scope: !2, file: !3, line: 119, type: !4042, isLocal: true, isDefinition: true)
!4047 = !DIGlobalVariableExpression(var: !4048, expr: !DIExpression())
!4048 = distinct !DIGlobalVariable(name: "READ_COUNTER_REQUEST", scope: !2, file: !3, line: 123, type: !4042, isLocal: true, isDefinition: true)
!4049 = !DIGlobalVariableExpression(var: !4050, expr: !DIExpression())
!4050 = distinct !DIGlobalVariable(name: "WRITE_COUNTER_REQUEST", scope: !2, file: !3, line: 127, type: !4028, isLocal: true, isDefinition: true)
!4051 = !DIGlobalVariableExpression(var: !4052, expr: !DIExpression())
!4052 = distinct !DIGlobalVariable(name: "READ_COUNTER_RESPONSE", scope: !2, file: !3, line: 142, type: !4028, isLocal: true, isDefinition: true)
!4053 = !DIGlobalVariableExpression(var: !4054, expr: !DIExpression())
!4054 = distinct !DIGlobalVariable(name: "ni6501_usb_driver", scope: !2, file: !3, line: 592, type: !4055, isLocal: true, isDefinition: true)
!4055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_driver", file: !101, line: 1184, size: 2112, elements: !4056)
!4056 = !{!4057, !4058, !4169, !4173, !4177, !4181, !4185, !4186, !4187, !4188, !4189, !4190, !4195, !4200, !4201, !4202, !4203}
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4055, file: !101, line: 1185, baseType: !215, size: 64)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4055, file: !101, line: 1187, baseType: !4059, size: 64, offset: 64)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = !DISubroutineType(types: !4061)
!4061 = !{!224, !4062, !4152}
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface", file: !101, line: 232, size: 6272, elements: !4064)
!4064 = !{!4065, !4125, !4126, !4127, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !4063, file: !101, line: 235, baseType: !4066, size: 64)
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4067, size: 64)
!4067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_interface", file: !101, line: 82, size: 320, elements: !4068)
!4068 = !{!4069, !4081, !4082, !4084, !4124}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4067, file: !101, line: 83, baseType: !4070, size: 72)
!4070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_descriptor", file: !140, line: 389, size: 72, elements: !4071)
!4071 = !{!4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4070, file: !140, line: 390, baseType: !1373, size: 8)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4070, file: !140, line: 391, baseType: !1373, size: 8, offset: 8)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !4070, file: !140, line: 393, baseType: !1373, size: 8, offset: 16)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "bAlternateSetting", scope: !4070, file: !140, line: 394, baseType: !1373, size: 8, offset: 24)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "bNumEndpoints", scope: !4070, file: !140, line: 395, baseType: !1373, size: 8, offset: 32)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !4070, file: !140, line: 396, baseType: !1373, size: 8, offset: 40)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !4070, file: !140, line: 397, baseType: !1373, size: 8, offset: 48)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !4070, file: !140, line: 398, baseType: !1373, size: 8, offset: 56)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "iInterface", scope: !4070, file: !140, line: 399, baseType: !1373, size: 8, offset: 64)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !4067, file: !101, line: 85, baseType: !224, size: 32, offset: 96)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4067, file: !101, line: 86, baseType: !4083, size: 64, offset: 128)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint", scope: !4067, file: !101, line: 91, baseType: !4085, size: 64, offset: 192)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_endpoint", file: !101, line: 67, size: 640, elements: !4087)
!4087 = !{!4088, !4099, !4107, !4115, !4116, !4117, !4120, !4121, !4122, !4123}
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4086, file: !101, line: 68, baseType: !4089, size: 72)
!4089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_endpoint_descriptor", file: !140, line: 407, size: 72, elements: !4090)
!4090 = !{!4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098}
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4089, file: !140, line: 408, baseType: !1373, size: 8)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4089, file: !140, line: 409, baseType: !1373, size: 8, offset: 8)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "bEndpointAddress", scope: !4089, file: !140, line: 411, baseType: !1373, size: 8, offset: 16)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4089, file: !140, line: 412, baseType: !1373, size: 8, offset: 24)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "wMaxPacketSize", scope: !4089, file: !140, line: 413, baseType: !172, size: 16, offset: 32)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "bInterval", scope: !4089, file: !140, line: 414, baseType: !1373, size: 8, offset: 48)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "bRefresh", scope: !4089, file: !140, line: 418, baseType: !1373, size: 8, offset: 56)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "bSynchAddress", scope: !4089, file: !140, line: 419, baseType: !1373, size: 8, offset: 64)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "ss_ep_comp", scope: !4086, file: !101, line: 69, baseType: !4100, size: 48, offset: 72)
!4100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_ep_comp_descriptor", file: !140, line: 689, size: 48, elements: !4101)
!4101 = !{!4102, !4103, !4104, !4105, !4106}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4100, file: !140, line: 690, baseType: !1373, size: 8)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4100, file: !140, line: 691, baseType: !1373, size: 8, offset: 8)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxBurst", scope: !4100, file: !140, line: 693, baseType: !1373, size: 8, offset: 16)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4100, file: !140, line: 694, baseType: !1373, size: 8, offset: 24)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "wBytesPerInterval", scope: !4100, file: !140, line: 695, baseType: !172, size: 16, offset: 32)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_isoc_ep_comp", scope: !4086, file: !101, line: 70, baseType: !4108, size: 64, offset: 120)
!4108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_isoc_ep_comp_descriptor", file: !140, line: 677, size: 64, elements: !4109)
!4109 = !{!4110, !4111, !4112, !4113}
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4108, file: !140, line: 678, baseType: !1373, size: 8)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4108, file: !140, line: 679, baseType: !1373, size: 8, offset: 8)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "wReseved", scope: !4108, file: !140, line: 680, baseType: !172, size: 16, offset: 16)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "dwBytesPerInterval", scope: !4108, file: !140, line: 681, baseType: !4114, size: 32, offset: 32)
!4114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !173, line: 31, baseType: !175)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !4086, file: !101, line: 71, baseType: !244, size: 128, offset: 192)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !4086, file: !101, line: 72, baseType: !166, size: 64, offset: 320)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "ep_dev", scope: !4086, file: !101, line: 73, baseType: !4118, size: 64, offset: 384)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DICompositeType(tag: DW_TAG_structure_type, name: "ep_device", file: !101, line: 48, flags: DIFlagFwdDecl)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4086, file: !101, line: 75, baseType: !4083, size: 64, offset: 448)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !4086, file: !101, line: 76, baseType: !224, size: 32, offset: 512)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4086, file: !101, line: 77, baseType: !224, size: 32, offset: 544)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !4086, file: !101, line: 78, baseType: !224, size: 32, offset: 576)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4067, file: !101, line: 93, baseType: !298, size: 64, offset: 256)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "cur_altsetting", scope: !4063, file: !101, line: 237, baseType: !4066, size: 64, offset: 64)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !4063, file: !101, line: 239, baseType: !7, size: 32, offset: 128)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !4063, file: !101, line: 243, baseType: !4128, size: 64, offset: 192)
!4128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4129, size: 64)
!4129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_assoc_descriptor", file: !140, line: 783, size: 64, elements: !4130)
!4130 = !{!4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138}
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4129, file: !140, line: 784, baseType: !1373, size: 8)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4129, file: !140, line: 785, baseType: !1373, size: 8, offset: 8)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "bFirstInterface", scope: !4129, file: !140, line: 787, baseType: !1373, size: 8, offset: 16)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceCount", scope: !4129, file: !140, line: 788, baseType: !1373, size: 8, offset: 24)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionClass", scope: !4129, file: !140, line: 789, baseType: !1373, size: 8, offset: 32)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionSubClass", scope: !4129, file: !140, line: 790, baseType: !1373, size: 8, offset: 40)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionProtocol", scope: !4129, file: !140, line: 791, baseType: !1373, size: 8, offset: 48)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "iFunction", scope: !4129, file: !140, line: 792, baseType: !1373, size: 8, offset: 56)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4063, file: !101, line: 245, baseType: !224, size: 32, offset: 256)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !4063, file: !101, line: 247, baseType: !100, size: 32, offset: 288)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_files_created", scope: !4063, file: !101, line: 248, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "ep_devs_created", scope: !4063, file: !101, line: 249, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !4063, file: !101, line: 250, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "needs_remote_wakeup", scope: !4063, file: !101, line: 251, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "needs_altsetting0", scope: !4063, file: !101, line: 252, baseType: !7, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "needs_binding", scope: !4063, file: !101, line: 253, baseType: !7, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "resetting_device", scope: !4063, file: !101, line: 254, baseType: !7, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !4063, file: !101, line: 255, baseType: !7, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4063, file: !101, line: 257, baseType: !236, size: 5568, offset: 384)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "usb_dev", scope: !4063, file: !101, line: 258, baseType: !235, size: 64, offset: 5952)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "reset_ws", scope: !4063, file: !101, line: 259, baseType: !1977, size: 256, offset: 6016)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4154)
!4154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_id", file: !3475, line: 121, size: 256, elements: !4155)
!4155 = !{!4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168}
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "match_flags", scope: !4154, file: !3475, line: 123, baseType: !169, size: 16)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !4154, file: !3475, line: 126, baseType: !169, size: 16, offset: 16)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !4154, file: !3475, line: 127, baseType: !169, size: 16, offset: 32)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_lo", scope: !4154, file: !3475, line: 128, baseType: !169, size: 16, offset: 48)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_hi", scope: !4154, file: !3475, line: 129, baseType: !169, size: 16, offset: 64)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !4154, file: !3475, line: 132, baseType: !1373, size: 8, offset: 80)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !4154, file: !3475, line: 133, baseType: !1373, size: 8, offset: 88)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !4154, file: !3475, line: 134, baseType: !1373, size: 8, offset: 96)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !4154, file: !3475, line: 137, baseType: !1373, size: 8, offset: 104)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !4154, file: !3475, line: 138, baseType: !1373, size: 8, offset: 112)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !4154, file: !3475, line: 139, baseType: !1373, size: 8, offset: 120)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !4154, file: !3475, line: 142, baseType: !1373, size: 8, offset: 128)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !4154, file: !3475, line: 145, baseType: !3494, size: 64, align: 64, offset: 192)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4055, file: !101, line: 1190, baseType: !4170, size: 64, offset: 128)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{null, !4062}
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4055, file: !101, line: 1192, baseType: !4174, size: 64, offset: 192)
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = !DISubroutineType(types: !4176)
!4176 = !{!224, !4062, !7, !166}
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4055, file: !101, line: 1195, baseType: !4178, size: 64, offset: 256)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{!224, !4062, !3505}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4055, file: !101, line: 1196, baseType: !4182, size: 64, offset: 320)
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4183, size: 64)
!4183 = !DISubroutineType(types: !4184)
!4184 = !{!224, !4062}
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !4055, file: !101, line: 1197, baseType: !4182, size: 64, offset: 384)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "pre_reset", scope: !4055, file: !101, line: 1199, baseType: !4182, size: 64, offset: 448)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "post_reset", scope: !4055, file: !101, line: 1200, baseType: !4182, size: 64, offset: 512)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4055, file: !101, line: 1202, baseType: !4152, size: 64, offset: 576)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4055, file: !101, line: 1203, baseType: !351, size: 64, offset: 640)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4055, file: !101, line: 1205, baseType: !4191, size: 128, offset: 704)
!4191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_dynids", file: !101, line: 1091, size: 128, elements: !4192)
!4192 = !{!4193, !4194}
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4191, file: !101, line: 1092, baseType: !257)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4191, file: !101, line: 1093, baseType: !244, size: 128)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "drvwrap", scope: !4055, file: !101, line: 1206, baseType: !4196, size: 1216, offset: 832)
!4196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usbdrv_wrap", file: !101, line: 1113, size: 1216, elements: !4197)
!4197 = !{!4198, !4199}
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4196, file: !101, line: 1114, baseType: !3463, size: 1152)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "for_devices", scope: !4196, file: !101, line: 1115, baseType: !224, size: 32, offset: 1152)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "no_dynamic_id", scope: !4055, file: !101, line: 1207, baseType: !7, size: 1, offset: 2048, flags: DIFlagBitField, extraData: i64 2048)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "supports_autosuspend", scope: !4055, file: !101, line: 1208, baseType: !7, size: 1, offset: 2049, flags: DIFlagBitField, extraData: i64 2048)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "disable_hub_initiated_lpm", scope: !4055, file: !101, line: 1209, baseType: !7, size: 1, offset: 2050, flags: DIFlagBitField, extraData: i64 2048)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "soft_unbind", scope: !4055, file: !101, line: 1210, baseType: !7, size: 1, offset: 2051, flags: DIFlagBitField, extraData: i64 2048)
!4204 = !DIGlobalVariableExpression(var: !4205, expr: !DIExpression())
!4205 = distinct !DIGlobalVariable(name: "ni6501_usb_table", scope: !2, file: !3, line: 586, type: !4206, isLocal: true, isDefinition: true)
!4206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4153, size: 512, elements: !1589)
!4207 = !{i32 7, !"Dwarf Version", i32 4}
!4208 = !{i32 2, !"Debug Info Version", i32 3}
!4209 = !{i32 1, !"wchar_size", i32 2}
!4210 = !{i32 1, !"Code Model", i32 2}
!4211 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4212 = distinct !DISubprogram(name: "ni6501_driver_init", scope: !3, file: !3, line: 598, type: !4213, scopeLine: 598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4213 = !DISubroutineType(types: !4214)
!4214 = !{!224}
!4215 = !DILocation(line: 598, column: 1, scope: !4212)
!4216 = distinct !DISubprogram(name: "ni6501_driver_exit", scope: !3, file: !3, line: 598, type: !183, scopeLine: 598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4217 = !DILocation(line: 598, column: 1, scope: !4216)
!4218 = distinct !DISubprogram(name: "ni6501_detach", scope: !3, file: !3, line: 557, type: !3996, scopeLine: 558, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4219 = !DILocalVariable(name: "dev", arg: 1, scope: !4218, file: !3, line: 557, type: !225)
!4220 = !DILocation(line: 557, column: 49, scope: !4218)
!4221 = !DILocalVariable(name: "intf", scope: !4218, file: !3, line: 559, type: !4062)
!4222 = !DILocation(line: 559, column: 24, scope: !4218)
!4223 = !DILocation(line: 559, column: 55, scope: !4218)
!4224 = !DILocation(line: 559, column: 31, scope: !4218)
!4225 = !DILocalVariable(name: "devpriv", scope: !4218, file: !3, line: 560, type: !4226)
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ni6501_private", file: !3, line: 157, size: 448, elements: !4228)
!4228 = !{!4229, !4231, !4232, !4233, !4235}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "ep_rx", scope: !4227, file: !3, line: 158, baseType: !4230, size: 64)
!4230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "ep_tx", scope: !4227, file: !3, line: 159, baseType: !4230, size: 64, offset: 64)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "mut", scope: !4227, file: !3, line: 160, baseType: !1193, size: 192, offset: 128)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "usb_rx_buf", scope: !4227, file: !3, line: 161, baseType: !4234, size: 64, offset: 320)
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "usb_tx_buf", scope: !4227, file: !3, line: 162, baseType: !4234, size: 64, offset: 384)
!4236 = !DILocation(line: 560, column: 25, scope: !4218)
!4237 = !DILocation(line: 560, column: 35, scope: !4218)
!4238 = !DILocation(line: 560, column: 40, scope: !4218)
!4239 = !DILocation(line: 562, column: 7, scope: !4240)
!4240 = distinct !DILexicalBlock(scope: !4218, file: !3, line: 562, column: 6)
!4241 = !DILocation(line: 562, column: 6, scope: !4218)
!4242 = !DILocation(line: 563, column: 3, scope: !4240)
!4243 = !DILocation(line: 565, column: 17, scope: !4218)
!4244 = !DILocation(line: 565, column: 26, scope: !4218)
!4245 = !DILocation(line: 565, column: 2, scope: !4218)
!4246 = !DILocation(line: 567, column: 19, scope: !4218)
!4247 = !DILocation(line: 567, column: 2, scope: !4218)
!4248 = !DILocation(line: 569, column: 8, scope: !4218)
!4249 = !DILocation(line: 569, column: 17, scope: !4218)
!4250 = !DILocation(line: 569, column: 2, scope: !4218)
!4251 = !DILocation(line: 570, column: 8, scope: !4218)
!4252 = !DILocation(line: 570, column: 17, scope: !4218)
!4253 = !DILocation(line: 570, column: 2, scope: !4218)
!4254 = !DILocation(line: 571, column: 1, scope: !4218)
!4255 = !DILocalVariable(name: "dev", arg: 1, scope: !4025, file: !3, line: 507, type: !225)
!4256 = !DILocation(line: 507, column: 53, scope: !4025)
!4257 = !DILocalVariable(name: "context", arg: 2, scope: !4025, file: !3, line: 508, type: !347)
!4258 = !DILocation(line: 508, column: 24, scope: !4025)
!4259 = !DILocalVariable(name: "intf", scope: !4025, file: !3, line: 510, type: !4062)
!4260 = !DILocation(line: 510, column: 24, scope: !4025)
!4261 = !DILocation(line: 510, column: 55, scope: !4025)
!4262 = !DILocation(line: 510, column: 31, scope: !4025)
!4263 = !DILocalVariable(name: "devpriv", scope: !4025, file: !3, line: 511, type: !4226)
!4264 = !DILocation(line: 511, column: 25, scope: !4025)
!4265 = !DILocalVariable(name: "s", scope: !4025, file: !3, line: 512, type: !3850)
!4266 = !DILocation(line: 512, column: 27, scope: !4025)
!4267 = !DILocalVariable(name: "ret", scope: !4025, file: !3, line: 513, type: !224)
!4268 = !DILocation(line: 513, column: 6, scope: !4025)
!4269 = !DILocation(line: 515, column: 33, scope: !4025)
!4270 = !DILocation(line: 515, column: 12, scope: !4025)
!4271 = !DILocation(line: 515, column: 10, scope: !4025)
!4272 = !DILocation(line: 516, column: 7, scope: !4273)
!4273 = distinct !DILexicalBlock(scope: !4025, file: !3, line: 516, column: 6)
!4274 = !DILocation(line: 516, column: 6, scope: !4025)
!4275 = !DILocation(line: 517, column: 3, scope: !4273)
!4276 = !DILocation(line: 519, column: 2, scope: !4025)
!4277 = !DILocation(line: 519, column: 2, scope: !4278)
!4278 = distinct !DILexicalBlock(scope: !4025, file: !3, line: 519, column: 2)
!4279 = !DILocation(line: 520, column: 19, scope: !4025)
!4280 = !DILocation(line: 520, column: 25, scope: !4025)
!4281 = !DILocation(line: 520, column: 2, scope: !4025)
!4282 = !DILocation(line: 522, column: 30, scope: !4025)
!4283 = !DILocation(line: 522, column: 8, scope: !4025)
!4284 = !DILocation(line: 522, column: 6, scope: !4025)
!4285 = !DILocation(line: 523, column: 6, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !4025, file: !3, line: 523, column: 6)
!4287 = !DILocation(line: 523, column: 6, scope: !4025)
!4288 = !DILocation(line: 524, column: 10, scope: !4286)
!4289 = !DILocation(line: 524, column: 3, scope: !4286)
!4290 = !DILocation(line: 526, column: 33, scope: !4025)
!4291 = !DILocation(line: 526, column: 8, scope: !4025)
!4292 = !DILocation(line: 526, column: 6, scope: !4025)
!4293 = !DILocation(line: 527, column: 6, scope: !4294)
!4294 = distinct !DILexicalBlock(scope: !4025, file: !3, line: 527, column: 6)
!4295 = !DILocation(line: 527, column: 6, scope: !4025)
!4296 = !DILocation(line: 528, column: 10, scope: !4294)
!4297 = !DILocation(line: 528, column: 3, scope: !4294)
!4298 = !DILocation(line: 530, column: 32, scope: !4025)
!4299 = !DILocation(line: 530, column: 8, scope: !4025)
!4300 = !DILocation(line: 530, column: 6, scope: !4025)
!4301 = !DILocation(line: 531, column: 6, scope: !4302)
!4302 = distinct !DILexicalBlock(scope: !4025, file: !3, line: 531, column: 6)
!4303 = !DILocation(line: 531, column: 6, scope: !4025)
!4304 = !DILocation(line: 532, column: 10, scope: !4302)
!4305 = !DILocation(line: 532, column: 3, scope: !4302)
!4306 = !DILocation(line: 535, column: 7, scope: !4025)
!4307 = !DILocation(line: 535, column: 12, scope: !4025)
!4308 = !DILocation(line: 535, column: 4, scope: !4025)
!4309 = !DILocation(line: 536, column: 2, scope: !4025)
!4310 = !DILocation(line: 536, column: 5, scope: !4025)
!4311 = !DILocation(line: 536, column: 11, scope: !4025)
!4312 = !DILocation(line: 537, column: 2, scope: !4025)
!4313 = !DILocation(line: 537, column: 5, scope: !4025)
!4314 = !DILocation(line: 537, column: 18, scope: !4025)
!4315 = !DILocation(line: 538, column: 2, scope: !4025)
!4316 = !DILocation(line: 538, column: 5, scope: !4025)
!4317 = !DILocation(line: 538, column: 12, scope: !4025)
!4318 = !DILocation(line: 539, column: 2, scope: !4025)
!4319 = !DILocation(line: 539, column: 5, scope: !4025)
!4320 = !DILocation(line: 539, column: 13, scope: !4025)
!4321 = !DILocation(line: 540, column: 2, scope: !4025)
!4322 = !DILocation(line: 540, column: 5, scope: !4025)
!4323 = !DILocation(line: 540, column: 17, scope: !4025)
!4324 = !DILocation(line: 541, column: 2, scope: !4025)
!4325 = !DILocation(line: 541, column: 5, scope: !4025)
!4326 = !DILocation(line: 541, column: 15, scope: !4025)
!4327 = !DILocation(line: 542, column: 2, scope: !4025)
!4328 = !DILocation(line: 542, column: 5, scope: !4025)
!4329 = !DILocation(line: 542, column: 17, scope: !4025)
!4330 = !DILocation(line: 545, column: 7, scope: !4025)
!4331 = !DILocation(line: 545, column: 12, scope: !4025)
!4332 = !DILocation(line: 545, column: 4, scope: !4025)
!4333 = !DILocation(line: 546, column: 2, scope: !4025)
!4334 = !DILocation(line: 546, column: 5, scope: !4025)
!4335 = !DILocation(line: 546, column: 11, scope: !4025)
!4336 = !DILocation(line: 547, column: 2, scope: !4025)
!4337 = !DILocation(line: 547, column: 5, scope: !4025)
!4338 = !DILocation(line: 547, column: 18, scope: !4025)
!4339 = !DILocation(line: 548, column: 2, scope: !4025)
!4340 = !DILocation(line: 548, column: 5, scope: !4025)
!4341 = !DILocation(line: 548, column: 12, scope: !4025)
!4342 = !DILocation(line: 549, column: 2, scope: !4025)
!4343 = !DILocation(line: 549, column: 5, scope: !4025)
!4344 = !DILocation(line: 549, column: 13, scope: !4025)
!4345 = !DILocation(line: 550, column: 2, scope: !4025)
!4346 = !DILocation(line: 550, column: 5, scope: !4025)
!4347 = !DILocation(line: 550, column: 15, scope: !4025)
!4348 = !DILocation(line: 551, column: 2, scope: !4025)
!4349 = !DILocation(line: 551, column: 5, scope: !4025)
!4350 = !DILocation(line: 551, column: 16, scope: !4025)
!4351 = !DILocation(line: 552, column: 2, scope: !4025)
!4352 = !DILocation(line: 552, column: 5, scope: !4025)
!4353 = !DILocation(line: 552, column: 17, scope: !4025)
!4354 = !DILocation(line: 554, column: 2, scope: !4025)
!4355 = !DILocation(line: 555, column: 1, scope: !4025)
!4356 = distinct !DISubprogram(name: "mutex_destroy", scope: !1194, file: !1194, line: 103, type: !4357, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4357 = !DISubroutineType(types: !4358)
!4358 = !{null, !4359}
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!4360 = !DILocalVariable(name: "lock", arg: 1, scope: !4356, file: !1194, line: 103, type: !4359)
!4361 = !DILocation(line: 103, column: 48, scope: !4356)
!4362 = !DILocation(line: 103, column: 55, scope: !4356)
!4363 = distinct !DISubprogram(name: "usb_set_intfdata", scope: !101, file: !101, line: 268, type: !4364, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4364 = !DISubroutineType(types: !4365)
!4365 = !{null, !4062, !166}
!4366 = !DILocalVariable(name: "intf", arg: 1, scope: !4363, file: !101, line: 268, type: !4062)
!4367 = !DILocation(line: 268, column: 59, scope: !4363)
!4368 = !DILocalVariable(name: "data", arg: 2, scope: !4363, file: !101, line: 268, type: !166)
!4369 = !DILocation(line: 268, column: 71, scope: !4363)
!4370 = !DILocation(line: 270, column: 19, scope: !4363)
!4371 = !DILocation(line: 270, column: 25, scope: !4363)
!4372 = !DILocation(line: 270, column: 30, scope: !4363)
!4373 = !DILocation(line: 270, column: 2, scope: !4363)
!4374 = !DILocation(line: 271, column: 1, scope: !4363)
!4375 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !73, file: !73, line: 660, type: !4376, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4376 = !DISubroutineType(types: !4377)
!4377 = !{null, !235, !166}
!4378 = !DILocalVariable(name: "dev", arg: 1, scope: !4375, file: !73, line: 660, type: !235)
!4379 = !DILocation(line: 660, column: 51, scope: !4375)
!4380 = !DILocalVariable(name: "data", arg: 2, scope: !4375, file: !73, line: 660, type: !166)
!4381 = !DILocation(line: 660, column: 62, scope: !4375)
!4382 = !DILocation(line: 662, column: 21, scope: !4375)
!4383 = !DILocation(line: 662, column: 2, scope: !4375)
!4384 = !DILocation(line: 662, column: 7, scope: !4375)
!4385 = !DILocation(line: 662, column: 19, scope: !4375)
!4386 = !DILocation(line: 663, column: 1, scope: !4375)
!4387 = distinct !DISubprogram(name: "ni6501_find_endpoints", scope: !3, file: !3, line: 472, type: !3992, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4388 = !DILocalVariable(name: "dev", arg: 1, scope: !4387, file: !3, line: 472, type: !225)
!4389 = !DILocation(line: 472, column: 56, scope: !4387)
!4390 = !DILocalVariable(name: "intf", scope: !4387, file: !3, line: 474, type: !4062)
!4391 = !DILocation(line: 474, column: 24, scope: !4387)
!4392 = !DILocation(line: 474, column: 55, scope: !4387)
!4393 = !DILocation(line: 474, column: 31, scope: !4387)
!4394 = !DILocalVariable(name: "devpriv", scope: !4387, file: !3, line: 475, type: !4226)
!4395 = !DILocation(line: 475, column: 25, scope: !4387)
!4396 = !DILocation(line: 475, column: 35, scope: !4387)
!4397 = !DILocation(line: 475, column: 40, scope: !4387)
!4398 = !DILocalVariable(name: "iface_desc", scope: !4387, file: !3, line: 476, type: !4066)
!4399 = !DILocation(line: 476, column: 29, scope: !4387)
!4400 = !DILocation(line: 476, column: 42, scope: !4387)
!4401 = !DILocation(line: 476, column: 48, scope: !4387)
!4402 = !DILocalVariable(name: "ep_desc", scope: !4387, file: !3, line: 477, type: !4230)
!4403 = !DILocation(line: 477, column: 34, scope: !4387)
!4404 = !DILocalVariable(name: "i", scope: !4387, file: !3, line: 478, type: !224)
!4405 = !DILocation(line: 478, column: 6, scope: !4387)
!4406 = !DILocation(line: 480, column: 6, scope: !4407)
!4407 = distinct !DILexicalBlock(scope: !4387, file: !3, line: 480, column: 6)
!4408 = !DILocation(line: 480, column: 18, scope: !4407)
!4409 = !DILocation(line: 480, column: 23, scope: !4407)
!4410 = !DILocation(line: 480, column: 37, scope: !4407)
!4411 = !DILocation(line: 480, column: 6, scope: !4387)
!4412 = !DILocation(line: 481, column: 3, scope: !4413)
!4413 = distinct !DILexicalBlock(scope: !4407, file: !3, line: 480, column: 43)
!4414 = !DILocation(line: 482, column: 3, scope: !4413)
!4415 = !DILocation(line: 485, column: 9, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !4387, file: !3, line: 485, column: 2)
!4417 = !DILocation(line: 485, column: 7, scope: !4416)
!4418 = !DILocation(line: 485, column: 14, scope: !4419)
!4419 = distinct !DILexicalBlock(scope: !4416, file: !3, line: 485, column: 2)
!4420 = !DILocation(line: 485, column: 18, scope: !4419)
!4421 = !DILocation(line: 485, column: 30, scope: !4419)
!4422 = !DILocation(line: 485, column: 35, scope: !4419)
!4423 = !DILocation(line: 485, column: 16, scope: !4419)
!4424 = !DILocation(line: 485, column: 2, scope: !4416)
!4425 = !DILocation(line: 486, column: 14, scope: !4426)
!4426 = distinct !DILexicalBlock(scope: !4419, file: !3, line: 485, column: 55)
!4427 = !DILocation(line: 486, column: 26, scope: !4426)
!4428 = !DILocation(line: 486, column: 35, scope: !4426)
!4429 = !DILocation(line: 486, column: 38, scope: !4426)
!4430 = !DILocation(line: 486, column: 11, scope: !4426)
!4431 = !DILocation(line: 488, column: 31, scope: !4432)
!4432 = distinct !DILexicalBlock(scope: !4426, file: !3, line: 488, column: 7)
!4433 = !DILocation(line: 488, column: 7, scope: !4432)
!4434 = !DILocation(line: 488, column: 7, scope: !4426)
!4435 = !DILocation(line: 489, column: 9, scope: !4436)
!4436 = distinct !DILexicalBlock(scope: !4437, file: !3, line: 489, column: 8)
!4437 = distinct !DILexicalBlock(scope: !4432, file: !3, line: 488, column: 41)
!4438 = !DILocation(line: 489, column: 18, scope: !4436)
!4439 = !DILocation(line: 489, column: 8, scope: !4437)
!4440 = !DILocation(line: 490, column: 22, scope: !4436)
!4441 = !DILocation(line: 490, column: 5, scope: !4436)
!4442 = !DILocation(line: 490, column: 14, scope: !4436)
!4443 = !DILocation(line: 490, column: 20, scope: !4436)
!4444 = !DILocation(line: 491, column: 4, scope: !4437)
!4445 = !DILocation(line: 494, column: 32, scope: !4446)
!4446 = distinct !DILexicalBlock(scope: !4426, file: !3, line: 494, column: 7)
!4447 = !DILocation(line: 494, column: 7, scope: !4446)
!4448 = !DILocation(line: 494, column: 7, scope: !4426)
!4449 = !DILocation(line: 495, column: 9, scope: !4450)
!4450 = distinct !DILexicalBlock(scope: !4451, file: !3, line: 495, column: 8)
!4451 = distinct !DILexicalBlock(scope: !4446, file: !3, line: 494, column: 42)
!4452 = !DILocation(line: 495, column: 18, scope: !4450)
!4453 = !DILocation(line: 495, column: 8, scope: !4451)
!4454 = !DILocation(line: 496, column: 22, scope: !4450)
!4455 = !DILocation(line: 496, column: 5, scope: !4450)
!4456 = !DILocation(line: 496, column: 14, scope: !4450)
!4457 = !DILocation(line: 496, column: 20, scope: !4450)
!4458 = !DILocation(line: 497, column: 4, scope: !4451)
!4459 = !DILocation(line: 499, column: 2, scope: !4426)
!4460 = !DILocation(line: 485, column: 51, scope: !4419)
!4461 = !DILocation(line: 485, column: 2, scope: !4419)
!4462 = distinct !{!4462, !4424, !4463}
!4463 = !DILocation(line: 499, column: 2, scope: !4416)
!4464 = !DILocation(line: 501, column: 7, scope: !4465)
!4465 = distinct !DILexicalBlock(scope: !4387, file: !3, line: 501, column: 6)
!4466 = !DILocation(line: 501, column: 16, scope: !4465)
!4467 = !DILocation(line: 501, column: 22, scope: !4465)
!4468 = !DILocation(line: 501, column: 26, scope: !4465)
!4469 = !DILocation(line: 501, column: 35, scope: !4465)
!4470 = !DILocation(line: 501, column: 6, scope: !4387)
!4471 = !DILocation(line: 502, column: 3, scope: !4465)
!4472 = !DILocation(line: 504, column: 2, scope: !4387)
!4473 = !DILocation(line: 505, column: 1, scope: !4387)
!4474 = distinct !DISubprogram(name: "ni6501_alloc_usb_buffers", scope: !3, file: !3, line: 454, type: !3992, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4475 = !DILocalVariable(name: "dev", arg: 1, scope: !4474, file: !3, line: 454, type: !225)
!4476 = !DILocation(line: 454, column: 59, scope: !4474)
!4477 = !DILocalVariable(name: "devpriv", scope: !4474, file: !3, line: 456, type: !4226)
!4478 = !DILocation(line: 456, column: 25, scope: !4474)
!4479 = !DILocation(line: 456, column: 35, scope: !4474)
!4480 = !DILocation(line: 456, column: 40, scope: !4474)
!4481 = !DILocalVariable(name: "size", scope: !4474, file: !3, line: 457, type: !344)
!4482 = !DILocation(line: 457, column: 9, scope: !4474)
!4483 = !DILocation(line: 459, column: 27, scope: !4474)
!4484 = !DILocation(line: 459, column: 36, scope: !4474)
!4485 = !DILocation(line: 459, column: 9, scope: !4474)
!4486 = !DILocation(line: 459, column: 7, scope: !4474)
!4487 = !DILocation(line: 460, column: 32, scope: !4474)
!4488 = !DILocation(line: 460, column: 24, scope: !4474)
!4489 = !DILocation(line: 460, column: 2, scope: !4474)
!4490 = !DILocation(line: 460, column: 11, scope: !4474)
!4491 = !DILocation(line: 460, column: 22, scope: !4474)
!4492 = !DILocation(line: 461, column: 7, scope: !4493)
!4493 = distinct !DILexicalBlock(scope: !4474, file: !3, line: 461, column: 6)
!4494 = !DILocation(line: 461, column: 16, scope: !4493)
!4495 = !DILocation(line: 461, column: 6, scope: !4474)
!4496 = !DILocation(line: 462, column: 3, scope: !4493)
!4497 = !DILocation(line: 464, column: 27, scope: !4474)
!4498 = !DILocation(line: 464, column: 36, scope: !4474)
!4499 = !DILocation(line: 464, column: 9, scope: !4474)
!4500 = !DILocation(line: 464, column: 7, scope: !4474)
!4501 = !DILocation(line: 465, column: 32, scope: !4474)
!4502 = !DILocation(line: 465, column: 24, scope: !4474)
!4503 = !DILocation(line: 465, column: 2, scope: !4474)
!4504 = !DILocation(line: 465, column: 11, scope: !4474)
!4505 = !DILocation(line: 465, column: 22, scope: !4474)
!4506 = !DILocation(line: 466, column: 7, scope: !4507)
!4507 = distinct !DILexicalBlock(scope: !4474, file: !3, line: 466, column: 6)
!4508 = !DILocation(line: 466, column: 16, scope: !4507)
!4509 = !DILocation(line: 466, column: 6, scope: !4474)
!4510 = !DILocation(line: 467, column: 3, scope: !4507)
!4511 = !DILocation(line: 469, column: 2, scope: !4474)
!4512 = !DILocation(line: 470, column: 1, scope: !4474)
!4513 = distinct !DISubprogram(name: "ni6501_dio_insn_bits", scope: !3, file: !3, line: 355, type: !3947, scopeLine: 359, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4514 = !DILocalVariable(name: "dev", arg: 1, scope: !4513, file: !3, line: 355, type: !225)
!4515 = !DILocation(line: 355, column: 55, scope: !4513)
!4516 = !DILocalVariable(name: "s", arg: 2, scope: !4513, file: !3, line: 356, type: !3850)
!4517 = !DILocation(line: 356, column: 30, scope: !4513)
!4518 = !DILocalVariable(name: "insn", arg: 3, scope: !4513, file: !3, line: 357, type: !3949)
!4519 = !DILocation(line: 357, column: 25, scope: !4513)
!4520 = !DILocalVariable(name: "data", arg: 4, scope: !4513, file: !3, line: 358, type: !2703)
!4521 = !DILocation(line: 358, column: 19, scope: !4513)
!4522 = !DILocalVariable(name: "mask", scope: !4513, file: !3, line: 360, type: !7)
!4523 = !DILocation(line: 360, column: 15, scope: !4513)
!4524 = !DILocalVariable(name: "ret", scope: !4513, file: !3, line: 361, type: !224)
!4525 = !DILocation(line: 361, column: 6, scope: !4513)
!4526 = !DILocalVariable(name: "port", scope: !4513, file: !3, line: 362, type: !1372)
!4527 = !DILocation(line: 362, column: 5, scope: !4513)
!4528 = !DILocalVariable(name: "bitmap", scope: !4513, file: !3, line: 363, type: !1372)
!4529 = !DILocation(line: 363, column: 5, scope: !4513)
!4530 = !DILocation(line: 365, column: 33, scope: !4513)
!4531 = !DILocation(line: 365, column: 36, scope: !4513)
!4532 = !DILocation(line: 365, column: 9, scope: !4513)
!4533 = !DILocation(line: 365, column: 7, scope: !4513)
!4534 = !DILocation(line: 367, column: 12, scope: !4535)
!4535 = distinct !DILexicalBlock(scope: !4513, file: !3, line: 367, column: 2)
!4536 = !DILocation(line: 367, column: 7, scope: !4535)
!4537 = !DILocation(line: 367, column: 17, scope: !4538)
!4538 = distinct !DILexicalBlock(scope: !4535, file: !3, line: 367, column: 2)
!4539 = !DILocation(line: 367, column: 22, scope: !4538)
!4540 = !DILocation(line: 367, column: 2, scope: !4535)
!4541 = !DILocation(line: 368, column: 7, scope: !4542)
!4542 = distinct !DILexicalBlock(scope: !4543, file: !3, line: 368, column: 7)
!4543 = distinct !DILexicalBlock(scope: !4538, file: !3, line: 367, column: 35)
!4544 = !DILocation(line: 368, column: 23, scope: !4542)
!4545 = !DILocation(line: 368, column: 28, scope: !4542)
!4546 = !DILocation(line: 368, column: 20, scope: !4542)
!4547 = !DILocation(line: 368, column: 12, scope: !4542)
!4548 = !DILocation(line: 368, column: 7, scope: !4543)
!4549 = !DILocation(line: 369, column: 14, scope: !4550)
!4550 = distinct !DILexicalBlock(scope: !4542, file: !3, line: 368, column: 34)
!4551 = !DILocation(line: 369, column: 17, scope: !4550)
!4552 = !DILocation(line: 369, column: 26, scope: !4550)
!4553 = !DILocation(line: 369, column: 31, scope: !4550)
!4554 = !DILocation(line: 369, column: 23, scope: !4550)
!4555 = !DILocation(line: 369, column: 36, scope: !4550)
!4556 = !DILocation(line: 369, column: 13, scope: !4550)
!4557 = !DILocation(line: 369, column: 11, scope: !4550)
!4558 = !DILocation(line: 370, column: 30, scope: !4550)
!4559 = !DILocation(line: 371, column: 9, scope: !4550)
!4560 = !DILocation(line: 370, column: 10, scope: !4550)
!4561 = !DILocation(line: 370, column: 8, scope: !4550)
!4562 = !DILocation(line: 372, column: 8, scope: !4563)
!4563 = distinct !DILexicalBlock(scope: !4550, file: !3, line: 372, column: 8)
!4564 = !DILocation(line: 372, column: 8, scope: !4550)
!4565 = !DILocation(line: 373, column: 12, scope: !4563)
!4566 = !DILocation(line: 373, column: 5, scope: !4563)
!4567 = !DILocation(line: 374, column: 3, scope: !4550)
!4568 = !DILocation(line: 375, column: 2, scope: !4543)
!4569 = !DILocation(line: 367, column: 31, scope: !4538)
!4570 = !DILocation(line: 367, column: 2, scope: !4538)
!4571 = distinct !{!4571, !4540, !4572}
!4572 = !DILocation(line: 375, column: 2, scope: !4535)
!4573 = !DILocation(line: 377, column: 2, scope: !4513)
!4574 = !DILocation(line: 377, column: 10, scope: !4513)
!4575 = !DILocation(line: 379, column: 12, scope: !4576)
!4576 = distinct !DILexicalBlock(scope: !4513, file: !3, line: 379, column: 2)
!4577 = !DILocation(line: 379, column: 7, scope: !4576)
!4578 = !DILocation(line: 379, column: 17, scope: !4579)
!4579 = distinct !DILexicalBlock(scope: !4576, file: !3, line: 379, column: 2)
!4580 = !DILocation(line: 379, column: 22, scope: !4579)
!4581 = !DILocation(line: 379, column: 2, scope: !4576)
!4582 = !DILocation(line: 380, column: 29, scope: !4583)
!4583 = distinct !DILexicalBlock(scope: !4579, file: !3, line: 379, column: 35)
!4584 = !DILocation(line: 380, column: 45, scope: !4583)
!4585 = !DILocation(line: 380, column: 9, scope: !4583)
!4586 = !DILocation(line: 380, column: 7, scope: !4583)
!4587 = !DILocation(line: 381, column: 7, scope: !4588)
!4588 = distinct !DILexicalBlock(scope: !4583, file: !3, line: 381, column: 7)
!4589 = !DILocation(line: 381, column: 7, scope: !4583)
!4590 = !DILocation(line: 382, column: 11, scope: !4588)
!4591 = !DILocation(line: 382, column: 4, scope: !4588)
!4592 = !DILocation(line: 383, column: 14, scope: !4583)
!4593 = !DILocation(line: 383, column: 24, scope: !4583)
!4594 = !DILocation(line: 383, column: 29, scope: !4583)
!4595 = !DILocation(line: 383, column: 21, scope: !4583)
!4596 = !DILocation(line: 383, column: 3, scope: !4583)
!4597 = !DILocation(line: 383, column: 11, scope: !4583)
!4598 = !DILocation(line: 384, column: 2, scope: !4583)
!4599 = !DILocation(line: 379, column: 31, scope: !4579)
!4600 = !DILocation(line: 379, column: 2, scope: !4579)
!4601 = distinct !{!4601, !4581, !4602}
!4602 = !DILocation(line: 384, column: 2, scope: !4576)
!4603 = !DILocation(line: 386, column: 9, scope: !4513)
!4604 = !DILocation(line: 386, column: 15, scope: !4513)
!4605 = !DILocation(line: 386, column: 2, scope: !4513)
!4606 = !DILocation(line: 387, column: 1, scope: !4513)
!4607 = distinct !DISubprogram(name: "ni6501_dio_insn_config", scope: !3, file: !3, line: 337, type: !3947, scopeLine: 341, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4608 = !DILocalVariable(name: "dev", arg: 1, scope: !4607, file: !3, line: 337, type: !225)
!4609 = !DILocation(line: 337, column: 57, scope: !4607)
!4610 = !DILocalVariable(name: "s", arg: 2, scope: !4607, file: !3, line: 338, type: !3850)
!4611 = !DILocation(line: 338, column: 32, scope: !4607)
!4612 = !DILocalVariable(name: "insn", arg: 3, scope: !4607, file: !3, line: 339, type: !3949)
!4613 = !DILocation(line: 339, column: 27, scope: !4607)
!4614 = !DILocalVariable(name: "data", arg: 4, scope: !4607, file: !3, line: 340, type: !2703)
!4615 = !DILocation(line: 340, column: 21, scope: !4607)
!4616 = !DILocalVariable(name: "ret", scope: !4607, file: !3, line: 342, type: !224)
!4617 = !DILocation(line: 342, column: 6, scope: !4607)
!4618 = !DILocation(line: 344, column: 31, scope: !4607)
!4619 = !DILocation(line: 344, column: 36, scope: !4607)
!4620 = !DILocation(line: 344, column: 39, scope: !4607)
!4621 = !DILocation(line: 344, column: 45, scope: !4607)
!4622 = !DILocation(line: 344, column: 8, scope: !4607)
!4623 = !DILocation(line: 344, column: 6, scope: !4607)
!4624 = !DILocation(line: 345, column: 6, scope: !4625)
!4625 = distinct !DILexicalBlock(scope: !4607, file: !3, line: 345, column: 6)
!4626 = !DILocation(line: 345, column: 6, scope: !4607)
!4627 = !DILocation(line: 346, column: 10, scope: !4625)
!4628 = !DILocation(line: 346, column: 3, scope: !4625)
!4629 = !DILocation(line: 348, column: 28, scope: !4607)
!4630 = !DILocation(line: 348, column: 47, scope: !4607)
!4631 = !DILocation(line: 348, column: 50, scope: !4607)
!4632 = !DILocation(line: 348, column: 8, scope: !4607)
!4633 = !DILocation(line: 348, column: 6, scope: !4607)
!4634 = !DILocation(line: 349, column: 6, scope: !4635)
!4635 = distinct !DILexicalBlock(scope: !4607, file: !3, line: 349, column: 6)
!4636 = !DILocation(line: 349, column: 6, scope: !4607)
!4637 = !DILocation(line: 350, column: 10, scope: !4635)
!4638 = !DILocation(line: 350, column: 3, scope: !4635)
!4639 = !DILocation(line: 352, column: 9, scope: !4607)
!4640 = !DILocation(line: 352, column: 15, scope: !4607)
!4641 = !DILocation(line: 352, column: 2, scope: !4607)
!4642 = !DILocation(line: 353, column: 1, scope: !4607)
!4643 = distinct !DISubprogram(name: "ni6501_cnt_insn_read", scope: !3, file: !3, line: 417, type: !3947, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4644 = !DILocalVariable(name: "dev", arg: 1, scope: !4643, file: !3, line: 417, type: !225)
!4645 = !DILocation(line: 417, column: 55, scope: !4643)
!4646 = !DILocalVariable(name: "s", arg: 2, scope: !4643, file: !3, line: 418, type: !3850)
!4647 = !DILocation(line: 418, column: 30, scope: !4643)
!4648 = !DILocalVariable(name: "insn", arg: 3, scope: !4643, file: !3, line: 419, type: !3949)
!4649 = !DILocation(line: 419, column: 25, scope: !4643)
!4650 = !DILocalVariable(name: "data", arg: 4, scope: !4643, file: !3, line: 420, type: !2703)
!4651 = !DILocation(line: 420, column: 19, scope: !4643)
!4652 = !DILocalVariable(name: "ret", scope: !4643, file: !3, line: 422, type: !224)
!4653 = !DILocation(line: 422, column: 6, scope: !4643)
!4654 = !DILocalVariable(name: "val", scope: !4643, file: !3, line: 423, type: !438)
!4655 = !DILocation(line: 423, column: 6, scope: !4643)
!4656 = !DILocalVariable(name: "i", scope: !4643, file: !3, line: 424, type: !7)
!4657 = !DILocation(line: 424, column: 15, scope: !4643)
!4658 = !DILocation(line: 426, column: 9, scope: !4659)
!4659 = distinct !DILexicalBlock(scope: !4643, file: !3, line: 426, column: 2)
!4660 = !DILocation(line: 426, column: 7, scope: !4659)
!4661 = !DILocation(line: 426, column: 14, scope: !4662)
!4662 = distinct !DILexicalBlock(scope: !4659, file: !3, line: 426, column: 2)
!4663 = !DILocation(line: 426, column: 18, scope: !4662)
!4664 = !DILocation(line: 426, column: 24, scope: !4662)
!4665 = !DILocation(line: 426, column: 16, scope: !4662)
!4666 = !DILocation(line: 426, column: 2, scope: !4659)
!4667 = !DILocation(line: 427, column: 32, scope: !4668)
!4668 = distinct !DILexicalBlock(scope: !4662, file: !3, line: 426, column: 32)
!4669 = !DILocation(line: 427, column: 9, scope: !4668)
!4670 = !DILocation(line: 427, column: 7, scope: !4668)
!4671 = !DILocation(line: 428, column: 7, scope: !4672)
!4672 = distinct !DILexicalBlock(scope: !4668, file: !3, line: 428, column: 7)
!4673 = !DILocation(line: 428, column: 7, scope: !4668)
!4674 = !DILocation(line: 429, column: 11, scope: !4672)
!4675 = !DILocation(line: 429, column: 4, scope: !4672)
!4676 = !DILocation(line: 430, column: 13, scope: !4668)
!4677 = !DILocation(line: 430, column: 3, scope: !4668)
!4678 = !DILocation(line: 430, column: 8, scope: !4668)
!4679 = !DILocation(line: 430, column: 11, scope: !4668)
!4680 = !DILocation(line: 431, column: 2, scope: !4668)
!4681 = !DILocation(line: 426, column: 28, scope: !4662)
!4682 = !DILocation(line: 426, column: 2, scope: !4662)
!4683 = distinct !{!4683, !4666, !4684}
!4684 = !DILocation(line: 431, column: 2, scope: !4659)
!4685 = !DILocation(line: 433, column: 9, scope: !4643)
!4686 = !DILocation(line: 433, column: 15, scope: !4643)
!4687 = !DILocation(line: 433, column: 2, scope: !4643)
!4688 = !DILocation(line: 434, column: 1, scope: !4643)
!4689 = distinct !DISubprogram(name: "ni6501_cnt_insn_write", scope: !3, file: !3, line: 436, type: !3947, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4690 = !DILocalVariable(name: "dev", arg: 1, scope: !4689, file: !3, line: 436, type: !225)
!4691 = !DILocation(line: 436, column: 56, scope: !4689)
!4692 = !DILocalVariable(name: "s", arg: 2, scope: !4689, file: !3, line: 437, type: !3850)
!4693 = !DILocation(line: 437, column: 31, scope: !4689)
!4694 = !DILocalVariable(name: "insn", arg: 3, scope: !4689, file: !3, line: 438, type: !3949)
!4695 = !DILocation(line: 438, column: 26, scope: !4689)
!4696 = !DILocalVariable(name: "data", arg: 4, scope: !4689, file: !3, line: 439, type: !2703)
!4697 = !DILocation(line: 439, column: 20, scope: !4689)
!4698 = !DILocalVariable(name: "ret", scope: !4689, file: !3, line: 441, type: !224)
!4699 = !DILocation(line: 441, column: 6, scope: !4689)
!4700 = !DILocation(line: 443, column: 6, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !4689, file: !3, line: 443, column: 6)
!4702 = !DILocation(line: 443, column: 12, scope: !4701)
!4703 = !DILocation(line: 443, column: 6, scope: !4689)
!4704 = !DILocalVariable(name: "val", scope: !4705, file: !3, line: 444, type: !438)
!4705 = distinct !DILexicalBlock(scope: !4701, file: !3, line: 443, column: 15)
!4706 = !DILocation(line: 444, column: 7, scope: !4705)
!4707 = !DILocation(line: 444, column: 13, scope: !4705)
!4708 = !DILocation(line: 444, column: 18, scope: !4705)
!4709 = !DILocation(line: 444, column: 24, scope: !4705)
!4710 = !DILocation(line: 444, column: 26, scope: !4705)
!4711 = !DILocation(line: 446, column: 32, scope: !4705)
!4712 = !DILocation(line: 446, column: 9, scope: !4705)
!4713 = !DILocation(line: 446, column: 7, scope: !4705)
!4714 = !DILocation(line: 447, column: 7, scope: !4715)
!4715 = distinct !DILexicalBlock(scope: !4705, file: !3, line: 447, column: 7)
!4716 = !DILocation(line: 447, column: 7, scope: !4705)
!4717 = !DILocation(line: 448, column: 11, scope: !4715)
!4718 = !DILocation(line: 448, column: 4, scope: !4715)
!4719 = !DILocation(line: 449, column: 2, scope: !4705)
!4720 = !DILocation(line: 451, column: 9, scope: !4689)
!4721 = !DILocation(line: 451, column: 15, scope: !4689)
!4722 = !DILocation(line: 451, column: 2, scope: !4689)
!4723 = !DILocation(line: 452, column: 1, scope: !4689)
!4724 = distinct !DISubprogram(name: "ni6501_cnt_insn_config", scope: !3, file: !3, line: 389, type: !3947, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4725 = !DILocalVariable(name: "dev", arg: 1, scope: !4724, file: !3, line: 389, type: !225)
!4726 = !DILocation(line: 389, column: 57, scope: !4724)
!4727 = !DILocalVariable(name: "s", arg: 2, scope: !4724, file: !3, line: 390, type: !3850)
!4728 = !DILocation(line: 390, column: 32, scope: !4724)
!4729 = !DILocalVariable(name: "insn", arg: 3, scope: !4724, file: !3, line: 391, type: !3949)
!4730 = !DILocation(line: 391, column: 27, scope: !4724)
!4731 = !DILocalVariable(name: "data", arg: 4, scope: !4724, file: !3, line: 392, type: !2703)
!4732 = !DILocation(line: 392, column: 21, scope: !4724)
!4733 = !DILocalVariable(name: "ret", scope: !4724, file: !3, line: 394, type: !224)
!4734 = !DILocation(line: 394, column: 6, scope: !4724)
!4735 = !DILocalVariable(name: "val", scope: !4724, file: !3, line: 395, type: !438)
!4736 = !DILocation(line: 395, column: 6, scope: !4724)
!4737 = !DILocation(line: 397, column: 10, scope: !4724)
!4738 = !DILocation(line: 397, column: 2, scope: !4724)
!4739 = !DILocation(line: 399, column: 32, scope: !4740)
!4740 = distinct !DILexicalBlock(scope: !4724, file: !3, line: 397, column: 19)
!4741 = !DILocation(line: 399, column: 9, scope: !4740)
!4742 = !DILocation(line: 399, column: 7, scope: !4740)
!4743 = !DILocation(line: 400, column: 3, scope: !4740)
!4744 = !DILocation(line: 402, column: 32, scope: !4740)
!4745 = !DILocation(line: 402, column: 9, scope: !4740)
!4746 = !DILocation(line: 402, column: 7, scope: !4740)
!4747 = !DILocation(line: 403, column: 3, scope: !4740)
!4748 = !DILocation(line: 405, column: 32, scope: !4740)
!4749 = !DILocation(line: 405, column: 9, scope: !4740)
!4750 = !DILocation(line: 405, column: 7, scope: !4740)
!4751 = !DILocation(line: 406, column: 7, scope: !4752)
!4752 = distinct !DILexicalBlock(scope: !4740, file: !3, line: 406, column: 7)
!4753 = !DILocation(line: 406, column: 7, scope: !4740)
!4754 = !DILocation(line: 407, column: 4, scope: !4752)
!4755 = !DILocation(line: 408, column: 32, scope: !4740)
!4756 = !DILocation(line: 408, column: 9, scope: !4740)
!4757 = !DILocation(line: 408, column: 7, scope: !4740)
!4758 = !DILocation(line: 409, column: 3, scope: !4740)
!4759 = !DILocation(line: 411, column: 3, scope: !4740)
!4760 = !DILocation(line: 414, column: 9, scope: !4724)
!4761 = !DILocation(line: 414, column: 15, scope: !4724)
!4762 = !DILocation(line: 414, column: 21, scope: !4724)
!4763 = !DILocation(line: 414, column: 27, scope: !4724)
!4764 = !DILocation(line: 414, column: 2, scope: !4724)
!4765 = !DILocation(line: 415, column: 1, scope: !4724)
!4766 = distinct !DISubprogram(name: "usb_endpoint_is_bulk_in", scope: !140, file: !140, line: 570, type: !4767, scopeLine: 572, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4767 = !DISubroutineType(types: !4768)
!4768 = !{!224, !4769}
!4769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4770, size: 64)
!4770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4089)
!4771 = !DILocalVariable(name: "epd", arg: 1, scope: !4766, file: !140, line: 571, type: !4769)
!4772 = !DILocation(line: 571, column: 43, scope: !4766)
!4773 = !DILocation(line: 573, column: 32, scope: !4766)
!4774 = !DILocation(line: 573, column: 9, scope: !4766)
!4775 = !DILocation(line: 573, column: 37, scope: !4766)
!4776 = !DILocation(line: 573, column: 60, scope: !4766)
!4777 = !DILocation(line: 573, column: 40, scope: !4766)
!4778 = !DILocation(line: 0, scope: !4766)
!4779 = !DILocation(line: 573, column: 2, scope: !4766)
!4780 = distinct !DISubprogram(name: "usb_endpoint_is_bulk_out", scope: !140, file: !140, line: 583, type: !4767, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4781 = !DILocalVariable(name: "epd", arg: 1, scope: !4780, file: !140, line: 584, type: !4769)
!4782 = !DILocation(line: 584, column: 43, scope: !4780)
!4783 = !DILocation(line: 586, column: 32, scope: !4780)
!4784 = !DILocation(line: 586, column: 9, scope: !4780)
!4785 = !DILocation(line: 586, column: 37, scope: !4780)
!4786 = !DILocation(line: 586, column: 61, scope: !4780)
!4787 = !DILocation(line: 586, column: 40, scope: !4780)
!4788 = !DILocation(line: 0, scope: !4780)
!4789 = !DILocation(line: 586, column: 2, scope: !4780)
!4790 = distinct !DISubprogram(name: "usb_endpoint_xfer_bulk", scope: !140, file: !140, line: 515, type: !4767, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4791 = !DILocalVariable(name: "epd", arg: 1, scope: !4790, file: !140, line: 516, type: !4769)
!4792 = !DILocation(line: 516, column: 43, scope: !4790)
!4793 = !DILocation(line: 518, column: 11, scope: !4790)
!4794 = !DILocation(line: 518, column: 16, scope: !4790)
!4795 = !DILocation(line: 518, column: 29, scope: !4790)
!4796 = !DILocation(line: 518, column: 59, scope: !4790)
!4797 = !DILocation(line: 518, column: 2, scope: !4790)
!4798 = distinct !DISubprogram(name: "usb_endpoint_dir_in", scope: !140, file: !140, line: 492, type: !4767, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4799 = !DILocalVariable(name: "epd", arg: 1, scope: !4798, file: !140, line: 492, type: !4769)
!4800 = !DILocation(line: 492, column: 77, scope: !4798)
!4801 = !DILocation(line: 494, column: 11, scope: !4798)
!4802 = !DILocation(line: 494, column: 16, scope: !4798)
!4803 = !DILocation(line: 494, column: 33, scope: !4798)
!4804 = !DILocation(line: 494, column: 58, scope: !4798)
!4805 = !DILocation(line: 494, column: 2, scope: !4798)
!4806 = distinct !DISubprogram(name: "usb_endpoint_dir_out", scope: !140, file: !140, line: 503, type: !4767, scopeLine: 505, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4807 = !DILocalVariable(name: "epd", arg: 1, scope: !4806, file: !140, line: 504, type: !4769)
!4808 = !DILocation(line: 504, column: 43, scope: !4806)
!4809 = !DILocation(line: 506, column: 11, scope: !4806)
!4810 = !DILocation(line: 506, column: 16, scope: !4806)
!4811 = !DILocation(line: 506, column: 33, scope: !4806)
!4812 = !DILocation(line: 506, column: 58, scope: !4806)
!4813 = !DILocation(line: 506, column: 2, scope: !4806)
!4814 = distinct !DISubprogram(name: "usb_endpoint_maxp", scope: !140, file: !140, line: 647, type: !4767, scopeLine: 648, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4815 = !DILocalVariable(name: "epd", arg: 1, scope: !4814, file: !140, line: 647, type: !4769)
!4816 = !DILocation(line: 647, column: 75, scope: !4814)
!4817 = !DILocation(line: 649, column: 9, scope: !4814)
!4818 = !DILocation(line: 649, column: 44, scope: !4814)
!4819 = !DILocation(line: 649, column: 2, scope: !4814)
!4820 = distinct !DISubprogram(name: "kzalloc", scope: !124, file: !124, line: 662, type: !4821, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4821 = !DISubroutineType(types: !4822)
!4822 = !{!166, !344, !167}
!4823 = !DILocalVariable(name: "s", arg: 1, scope: !4824, file: !124, line: 445, type: !955)
!4824 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !124, file: !124, line: 445, type: !4825, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4825 = !DISubroutineType(types: !4826)
!4826 = !{!166, !955, !167, !344}
!4827 = !DILocation(line: 445, column: 72, scope: !4824, inlinedAt: !4828)
!4828 = distinct !DILocation(line: 552, column: 10, scope: !4829, inlinedAt: !4832)
!4829 = distinct !DILexicalBlock(scope: !4830, file: !124, line: 540, column: 34)
!4830 = distinct !DILexicalBlock(scope: !4831, file: !124, line: 540, column: 6)
!4831 = distinct !DISubprogram(name: "kmalloc", scope: !124, file: !124, line: 538, type: !4821, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4832 = distinct !DILocation(line: 664, column: 9, scope: !4820)
!4833 = !DILocalVariable(name: "flags", arg: 2, scope: !4824, file: !124, line: 446, type: !167)
!4834 = !DILocation(line: 446, column: 9, scope: !4824, inlinedAt: !4828)
!4835 = !DILocalVariable(name: "size", arg: 3, scope: !4824, file: !124, line: 446, type: !344)
!4836 = !DILocation(line: 446, column: 23, scope: !4824, inlinedAt: !4828)
!4837 = !DILocalVariable(name: "ret", scope: !4824, file: !124, line: 448, type: !166)
!4838 = !DILocation(line: 448, column: 8, scope: !4824, inlinedAt: !4828)
!4839 = !DILocalVariable(name: "flags", arg: 1, scope: !4840, file: !124, line: 318, type: !167)
!4840 = distinct !DISubprogram(name: "kmalloc_type", scope: !124, file: !124, line: 318, type: !4841, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4841 = !DISubroutineType(types: !4842)
!4842 = !{!123, !167}
!4843 = !DILocation(line: 318, column: 67, scope: !4840, inlinedAt: !4844)
!4844 = distinct !DILocation(line: 553, column: 20, scope: !4829, inlinedAt: !4832)
!4845 = !DILocalVariable(name: "size", arg: 1, scope: !4846, file: !124, line: 346, type: !344)
!4846 = distinct !DISubprogram(name: "kmalloc_index", scope: !124, file: !124, line: 346, type: !4847, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4847 = !DISubroutineType(types: !4848)
!4848 = !{!7, !344}
!4849 = !DILocation(line: 346, column: 58, scope: !4846, inlinedAt: !4850)
!4850 = distinct !DILocation(line: 547, column: 11, scope: !4829, inlinedAt: !4832)
!4851 = !DILocalVariable(name: "size", arg: 1, scope: !4852, file: !124, line: 472, type: !344)
!4852 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !124, file: !124, line: 472, type: !4853, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4853 = !DISubroutineType(types: !4854)
!4854 = !{!166, !344, !167, !7}
!4855 = !DILocation(line: 472, column: 28, scope: !4852, inlinedAt: !4856)
!4856 = distinct !DILocation(line: 481, column: 9, scope: !4857, inlinedAt: !4858)
!4857 = distinct !DISubprogram(name: "kmalloc_large", scope: !124, file: !124, line: 478, type: !4821, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4858 = distinct !DILocation(line: 545, column: 11, scope: !4859, inlinedAt: !4832)
!4859 = distinct !DILexicalBlock(scope: !4829, file: !124, line: 544, column: 7)
!4860 = !DILocalVariable(name: "flags", arg: 2, scope: !4852, file: !124, line: 472, type: !167)
!4861 = !DILocation(line: 472, column: 40, scope: !4852, inlinedAt: !4856)
!4862 = !DILocalVariable(name: "order", arg: 3, scope: !4852, file: !124, line: 472, type: !7)
!4863 = !DILocation(line: 472, column: 60, scope: !4852, inlinedAt: !4856)
!4864 = !DILocalVariable(name: "size", arg: 1, scope: !4857, file: !124, line: 478, type: !344)
!4865 = !DILocation(line: 478, column: 51, scope: !4857, inlinedAt: !4858)
!4866 = !DILocalVariable(name: "flags", arg: 2, scope: !4857, file: !124, line: 478, type: !167)
!4867 = !DILocation(line: 478, column: 63, scope: !4857, inlinedAt: !4858)
!4868 = !DILocalVariable(name: "order", scope: !4857, file: !124, line: 480, type: !7)
!4869 = !DILocation(line: 480, column: 15, scope: !4857, inlinedAt: !4858)
!4870 = !DILocalVariable(name: "size", arg: 1, scope: !4831, file: !124, line: 538, type: !344)
!4871 = !DILocation(line: 538, column: 45, scope: !4831, inlinedAt: !4832)
!4872 = !DILocalVariable(name: "flags", arg: 2, scope: !4831, file: !124, line: 538, type: !167)
!4873 = !DILocation(line: 538, column: 57, scope: !4831, inlinedAt: !4832)
!4874 = !DILocalVariable(name: "index", scope: !4829, file: !124, line: 542, type: !7)
!4875 = !DILocation(line: 542, column: 16, scope: !4829, inlinedAt: !4832)
!4876 = !DILocalVariable(name: "size", arg: 1, scope: !4820, file: !124, line: 662, type: !344)
!4877 = !DILocation(line: 662, column: 36, scope: !4820)
!4878 = !DILocalVariable(name: "flags", arg: 2, scope: !4820, file: !124, line: 662, type: !167)
!4879 = !DILocation(line: 662, column: 48, scope: !4820)
!4880 = !DILocation(line: 664, column: 17, scope: !4820)
!4881 = !DILocation(line: 664, column: 23, scope: !4820)
!4882 = !DILocation(line: 664, column: 29, scope: !4820)
!4883 = !DILocation(line: 540, column: 27, scope: !4830, inlinedAt: !4832)
!4884 = !DILocation(line: 540, column: 6, scope: !4830, inlinedAt: !4832)
!4885 = !DILocation(line: 540, column: 6, scope: !4831, inlinedAt: !4832)
!4886 = !DILocation(line: 544, column: 7, scope: !4859, inlinedAt: !4832)
!4887 = !DILocation(line: 544, column: 12, scope: !4859, inlinedAt: !4832)
!4888 = !DILocation(line: 544, column: 7, scope: !4829, inlinedAt: !4832)
!4889 = !DILocation(line: 545, column: 25, scope: !4859, inlinedAt: !4832)
!4890 = !DILocation(line: 545, column: 31, scope: !4859, inlinedAt: !4832)
!4891 = !DILocation(line: 480, column: 33, scope: !4857, inlinedAt: !4858)
!4892 = !DILocation(line: 480, column: 23, scope: !4857, inlinedAt: !4858)
!4893 = !DILocation(line: 481, column: 29, scope: !4857, inlinedAt: !4858)
!4894 = !DILocation(line: 481, column: 35, scope: !4857, inlinedAt: !4858)
!4895 = !DILocation(line: 481, column: 42, scope: !4857, inlinedAt: !4858)
!4896 = !DILocation(line: 474, column: 23, scope: !4852, inlinedAt: !4856)
!4897 = !DILocation(line: 474, column: 29, scope: !4852, inlinedAt: !4856)
!4898 = !DILocation(line: 474, column: 36, scope: !4852, inlinedAt: !4856)
!4899 = !DILocation(line: 474, column: 9, scope: !4852, inlinedAt: !4856)
!4900 = !DILocation(line: 545, column: 4, scope: !4859, inlinedAt: !4832)
!4901 = !DILocation(line: 547, column: 25, scope: !4829, inlinedAt: !4832)
!4902 = !DILocation(line: 348, column: 7, scope: !4903, inlinedAt: !4850)
!4903 = distinct !DILexicalBlock(scope: !4846, file: !124, line: 348, column: 6)
!4904 = !DILocation(line: 348, column: 6, scope: !4846, inlinedAt: !4850)
!4905 = !DILocation(line: 349, column: 3, scope: !4903, inlinedAt: !4850)
!4906 = !DILocation(line: 351, column: 6, scope: !4907, inlinedAt: !4850)
!4907 = distinct !DILexicalBlock(scope: !4846, file: !124, line: 351, column: 6)
!4908 = !DILocation(line: 351, column: 11, scope: !4907, inlinedAt: !4850)
!4909 = !DILocation(line: 351, column: 6, scope: !4846, inlinedAt: !4850)
!4910 = !DILocation(line: 352, column: 3, scope: !4907, inlinedAt: !4850)
!4911 = !DILocation(line: 354, column: 32, scope: !4912, inlinedAt: !4850)
!4912 = distinct !DILexicalBlock(scope: !4846, file: !124, line: 354, column: 6)
!4913 = !DILocation(line: 354, column: 37, scope: !4912, inlinedAt: !4850)
!4914 = !DILocation(line: 354, column: 42, scope: !4912, inlinedAt: !4850)
!4915 = !DILocation(line: 354, column: 45, scope: !4912, inlinedAt: !4850)
!4916 = !DILocation(line: 354, column: 50, scope: !4912, inlinedAt: !4850)
!4917 = !DILocation(line: 354, column: 6, scope: !4846, inlinedAt: !4850)
!4918 = !DILocation(line: 355, column: 3, scope: !4912, inlinedAt: !4850)
!4919 = !DILocation(line: 356, column: 32, scope: !4920, inlinedAt: !4850)
!4920 = distinct !DILexicalBlock(scope: !4846, file: !124, line: 356, column: 6)
!4921 = !DILocation(line: 356, column: 37, scope: !4920, inlinedAt: !4850)
!4922 = !DILocation(line: 356, column: 43, scope: !4920, inlinedAt: !4850)
!4923 = !DILocation(line: 356, column: 46, scope: !4920, inlinedAt: !4850)
!4924 = !DILocation(line: 356, column: 51, scope: !4920, inlinedAt: !4850)
!4925 = !DILocation(line: 356, column: 6, scope: !4846, inlinedAt: !4850)
!4926 = !DILocation(line: 357, column: 3, scope: !4920, inlinedAt: !4850)
!4927 = !DILocation(line: 358, column: 6, scope: !4928, inlinedAt: !4850)
!4928 = distinct !DILexicalBlock(scope: !4846, file: !124, line: 358, column: 6)
!4929 = !DILocation(line: 358, column: 11, scope: !4928, inlinedAt: !4850)
!4930 = !DILocation(line: 358, column: 6, scope: !4846, inlinedAt: !4850)
!4931 = !DILocation(line: 358, column: 26, scope: !4928, inlinedAt: !4850)
!4932 = !DILocation(line: 359, column: 6, scope: !4933, inlinedAt: !4850)
!4933 = distinct !DILexicalBlock(scope: !4846, file: !124, line: 359, column: 6)
!4934 = !DILocation(line: 359, column: 11, scope: !4933, inlinedAt: !4850)
!4935 = !DILocation(line: 359, column: 6, scope: !4846, inlinedAt: !4850)
!4936 = !DILocation(line: 359, column: 26, scope: !4933, inlinedAt: !4850)
!4937 = !DILocation(line: 360, column: 6, scope: !4938, inlinedAt: !4850)
!4938 = distinct !DILexicalBlock(scope: !4846, file: !124, line: 360, column: 6)
!4939 = !DILocation(line: 360, column: 11, scope: !4938, inlinedAt: !4850)
!4940 = !DILocation(line: 360, column: 6, scope: !4846, inlinedAt: !4850)
!4941 = !DILocation(line: 360, column: 26, scope: !4938, inlinedAt: !4850)
!4942 = !DILocation(line: 361, column: 6, scope: !4943, inlinedAt: !4850)
!4943 = distinct !DILexicalBlock(scope: !4846, file: !124, line: 361, column: 6)
!4944 = !DILocation(line: 361, column: 11, scope: !4943, inlinedAt: !4850)
!4945 = !DILocation(line: 361, column: 6, scope: !4846, inlinedAt: !4850)
!4946 = !DILocation(line: 361, column: 26, scope: !4943, inlinedAt: !4850)
!4947 = !DILocation(line: 362, column: 6, scope: !4948, inlinedAt: !4850)
!4948 = distinct !DILexicalBlock(scope: !4846, file: !124, line: 362, column: 6)
!4949 = !DILocation(line: 362, column: 11, scope: !4948, inlinedAt: !4850)
!4950 = !DILocation(line: 362, column: 6, scope: !4846, inlinedAt: !4850)
!4951 = !DILocation(line: 362, column: 26, scope: !4948, inlinedAt: !4850)
!4952 = !DILocation(line: 363, column: 6, scope: !4953, inlinedAt: !4850)
!4953 = distinct !DILexicalBlock(scope: !4846, file: !124, line: 363, column: 6)
!4954 = !DILocation(line: 363, column: 11, scope: !4953, inlinedAt: !4850)
!4955 = !DILocation(line: 363, column: 6, scope: !4846, inlinedAt: !4850)
!4956 = !DILocation(line: 363, column: 26, scope: !4953, inlinedAt: !4850)
!4957 = !DILocation(line: 364, column: 6, scope: !4958, inlinedAt: !4850)
!4958 = distinct !DILexicalBlock(scope: !4846, file: !124, line: 364, column: 6)
!4959 = !DILocation(line: 364, column: 11, scope: !4958, inlinedAt: !4850)
!4960 = !DILocation(line: 364, column: 6, scope: !4846, inlinedAt: !4850)
!4961 = !DILocation(line: 364, column: 26, scope: !4958, inlinedAt: !4850)
!4962 = !DILocation(line: 365, column: 6, scope: !4963, inlinedAt: !4850)
!4963 = distinct !DILexicalBlock(scope: !4846, file: !124, line: 365, column: 6)
!4964 = !DILocation(line: 365, column: 11, scope: !4963, inlinedAt: !4850)
!4965 = !DILocation(line: 365, column: 6, scope: !4846, inlinedAt: !4850)
!4966 = !DILocation(line: 365, column: 26, scope: !4963, inlinedAt: !4850)
!4967 = !DILocation(line: 366, column: 6, scope: !4968, inlinedAt: !4850)
!4968 = distinct !DILexicalBlock(scope: !4846, file: !124, line: 366, column: 6)
!4969 = !DILocation(line: 366, column: 11, scope: !4968, inlinedAt: !4850)
!4970 = !DILocation(line: 366, column: 6, scope: !4846, inlinedAt: !4850)
!4971 = !DILocation(line: 366, column: 26, scope: !4968, inlinedAt: !4850)
!4972 = !DILocation(line: 367, column: 6, scope: !4973, inlinedAt: !4850)
!4973 = distinct !DILexicalBlock(scope: !4846, file: !124, line: 367, column: 6)
!4974 = !DILocation(line: 367, column: 11, scope: !4973, inlinedAt: !4850)
!4975 = !DILocation(line: 367, column: 6, scope: !4846, inlinedAt: !4850)
!4976 = !DILocation(line: 367, column: 26, scope: !4973, inlinedAt: !4850)
!4977 = !DILocation(line: 368, column: 6, scope: !4978, inlinedAt: !4850)
!4978 = distinct !DILexicalBlock(scope: !4846, file: !124, line: 368, column: 6)
!4979 = !DILocation(line: 368, column: 11, scope: !4978, inlinedAt: !4850)
!4980 = !DILocation(line: 368, column: 6, scope: !4846, inlinedAt: !4850)
!4981 = !DILocation(line: 368, column: 26, scope: !4978, inlinedAt: !4850)
!4982 = !DILocation(line: 369, column: 6, scope: !4983, inlinedAt: !4850)
!4983 = distinct !DILexicalBlock(scope: !4846, file: !124, line: 369, column: 6)
!4984 = !DILocation(line: 369, column: 11, scope: !4983, inlinedAt: !4850)
!4985 = !DILocation(line: 369, column: 6, scope: !4846, inlinedAt: !4850)
!4986 = !DILocation(line: 369, column: 26, scope: !4983, inlinedAt: !4850)
!4987 = !DILocation(line: 370, column: 6, scope: !4988, inlinedAt: !4850)
!4988 = distinct !DILexicalBlock(scope: !4846, file: !124, line: 370, column: 6)
!4989 = !DILocation(line: 370, column: 11, scope: !4988, inlinedAt: !4850)
!4990 = !DILocation(line: 370, column: 6, scope: !4846, inlinedAt: !4850)
!4991 = !DILocation(line: 370, column: 26, scope: !4988, inlinedAt: !4850)
!4992 = !DILocation(line: 371, column: 6, scope: !4993, inlinedAt: !4850)
!4993 = distinct !DILexicalBlock(scope: !4846, file: !124, line: 371, column: 6)
!4994 = !DILocation(line: 371, column: 11, scope: !4993, inlinedAt: !4850)
!4995 = !DILocation(line: 371, column: 6, scope: !4846, inlinedAt: !4850)
!4996 = !DILocation(line: 371, column: 26, scope: !4993, inlinedAt: !4850)
!4997 = !DILocation(line: 372, column: 6, scope: !4998, inlinedAt: !4850)
!4998 = distinct !DILexicalBlock(scope: !4846, file: !124, line: 372, column: 6)
!4999 = !DILocation(line: 372, column: 11, scope: !4998, inlinedAt: !4850)
!5000 = !DILocation(line: 372, column: 6, scope: !4846, inlinedAt: !4850)
!5001 = !DILocation(line: 372, column: 26, scope: !4998, inlinedAt: !4850)
!5002 = !DILocation(line: 373, column: 6, scope: !5003, inlinedAt: !4850)
!5003 = distinct !DILexicalBlock(scope: !4846, file: !124, line: 373, column: 6)
!5004 = !DILocation(line: 373, column: 11, scope: !5003, inlinedAt: !4850)
!5005 = !DILocation(line: 373, column: 6, scope: !4846, inlinedAt: !4850)
!5006 = !DILocation(line: 373, column: 26, scope: !5003, inlinedAt: !4850)
!5007 = !DILocation(line: 374, column: 6, scope: !5008, inlinedAt: !4850)
!5008 = distinct !DILexicalBlock(scope: !4846, file: !124, line: 374, column: 6)
!5009 = !DILocation(line: 374, column: 11, scope: !5008, inlinedAt: !4850)
!5010 = !DILocation(line: 374, column: 6, scope: !4846, inlinedAt: !4850)
!5011 = !DILocation(line: 374, column: 26, scope: !5008, inlinedAt: !4850)
!5012 = !DILocation(line: 375, column: 6, scope: !5013, inlinedAt: !4850)
!5013 = distinct !DILexicalBlock(scope: !4846, file: !124, line: 375, column: 6)
!5014 = !DILocation(line: 375, column: 11, scope: !5013, inlinedAt: !4850)
!5015 = !DILocation(line: 375, column: 6, scope: !4846, inlinedAt: !4850)
!5016 = !DILocation(line: 375, column: 27, scope: !5013, inlinedAt: !4850)
!5017 = !DILocation(line: 376, column: 6, scope: !5018, inlinedAt: !4850)
!5018 = distinct !DILexicalBlock(scope: !4846, file: !124, line: 376, column: 6)
!5019 = !DILocation(line: 376, column: 11, scope: !5018, inlinedAt: !4850)
!5020 = !DILocation(line: 376, column: 6, scope: !4846, inlinedAt: !4850)
!5021 = !DILocation(line: 376, column: 32, scope: !5018, inlinedAt: !4850)
!5022 = !DILocation(line: 377, column: 6, scope: !5023, inlinedAt: !4850)
!5023 = distinct !DILexicalBlock(scope: !4846, file: !124, line: 377, column: 6)
!5024 = !DILocation(line: 377, column: 11, scope: !5023, inlinedAt: !4850)
!5025 = !DILocation(line: 377, column: 6, scope: !4846, inlinedAt: !4850)
!5026 = !DILocation(line: 377, column: 32, scope: !5023, inlinedAt: !4850)
!5027 = !DILocation(line: 378, column: 6, scope: !5028, inlinedAt: !4850)
!5028 = distinct !DILexicalBlock(scope: !4846, file: !124, line: 378, column: 6)
!5029 = !DILocation(line: 378, column: 11, scope: !5028, inlinedAt: !4850)
!5030 = !DILocation(line: 378, column: 6, scope: !4846, inlinedAt: !4850)
!5031 = !DILocation(line: 378, column: 32, scope: !5028, inlinedAt: !4850)
!5032 = !DILocation(line: 379, column: 6, scope: !5033, inlinedAt: !4850)
!5033 = distinct !DILexicalBlock(scope: !4846, file: !124, line: 379, column: 6)
!5034 = !DILocation(line: 379, column: 11, scope: !5033, inlinedAt: !4850)
!5035 = !DILocation(line: 379, column: 6, scope: !4846, inlinedAt: !4850)
!5036 = !DILocation(line: 379, column: 33, scope: !5033, inlinedAt: !4850)
!5037 = !DILocation(line: 380, column: 6, scope: !5038, inlinedAt: !4850)
!5038 = distinct !DILexicalBlock(scope: !4846, file: !124, line: 380, column: 6)
!5039 = !DILocation(line: 380, column: 11, scope: !5038, inlinedAt: !4850)
!5040 = !DILocation(line: 380, column: 6, scope: !4846, inlinedAt: !4850)
!5041 = !DILocation(line: 380, column: 33, scope: !5038, inlinedAt: !4850)
!5042 = !DILocation(line: 381, column: 6, scope: !5043, inlinedAt: !4850)
!5043 = distinct !DILexicalBlock(scope: !4846, file: !124, line: 381, column: 6)
!5044 = !DILocation(line: 381, column: 11, scope: !5043, inlinedAt: !4850)
!5045 = !DILocation(line: 381, column: 6, scope: !4846, inlinedAt: !4850)
!5046 = !DILocation(line: 381, column: 33, scope: !5043, inlinedAt: !4850)
!5047 = !DILocation(line: 382, column: 2, scope: !5048, inlinedAt: !4850)
!5048 = distinct !DILexicalBlock(scope: !5049, file: !124, line: 382, column: 2)
!5049 = distinct !DILexicalBlock(scope: !4846, file: !124, line: 382, column: 2)
!5050 = !{i32 -2144233146, i32 -2144233117, i32 -2144233071, i32 -2144233013, i32 -2144232959, i32 -2144232905, i32 -2144232850, i32 -2144232819}
!5051 = !DILocation(line: 382, column: 2, scope: !5052, inlinedAt: !4850)
!5052 = distinct !DILexicalBlock(scope: !5053, file: !124, line: 382, column: 2)
!5053 = distinct !DILexicalBlock(scope: !5049, file: !124, line: 382, column: 2)
!5054 = !{i32 -2144232376, i32 -2144232369, i32 -2144232315, i32 -2144232284, i32 -2144232254}
!5055 = !DILocation(line: 382, column: 2, scope: !5053, inlinedAt: !4850)
!5056 = !DILocation(line: 386, column: 1, scope: !4846, inlinedAt: !4850)
!5057 = !DILocation(line: 547, column: 9, scope: !4829, inlinedAt: !4832)
!5058 = !DILocation(line: 549, column: 8, scope: !5059, inlinedAt: !4832)
!5059 = distinct !DILexicalBlock(scope: !4829, file: !124, line: 549, column: 7)
!5060 = !DILocation(line: 549, column: 7, scope: !4829, inlinedAt: !4832)
!5061 = !DILocation(line: 550, column: 4, scope: !5059, inlinedAt: !4832)
!5062 = !DILocation(line: 553, column: 33, scope: !4829, inlinedAt: !4832)
!5063 = !DILocation(line: 325, column: 6, scope: !5064, inlinedAt: !4844)
!5064 = distinct !DILexicalBlock(scope: !4840, file: !124, line: 325, column: 6)
!5065 = !DILocation(line: 325, column: 6, scope: !4840, inlinedAt: !4844)
!5066 = !DILocation(line: 326, column: 3, scope: !5064, inlinedAt: !4844)
!5067 = !DILocation(line: 332, column: 9, scope: !4840, inlinedAt: !4844)
!5068 = !DILocation(line: 332, column: 15, scope: !4840, inlinedAt: !4844)
!5069 = !DILocation(line: 332, column: 2, scope: !4840, inlinedAt: !4844)
!5070 = !DILocation(line: 336, column: 1, scope: !4840, inlinedAt: !4844)
!5071 = !DILocation(line: 553, column: 5, scope: !4829, inlinedAt: !4832)
!5072 = !DILocation(line: 553, column: 41, scope: !4829, inlinedAt: !4832)
!5073 = !DILocation(line: 554, column: 5, scope: !4829, inlinedAt: !4832)
!5074 = !DILocation(line: 554, column: 12, scope: !4829, inlinedAt: !4832)
!5075 = !DILocation(line: 448, column: 31, scope: !4824, inlinedAt: !4828)
!5076 = !DILocation(line: 448, column: 34, scope: !4824, inlinedAt: !4828)
!5077 = !DILocation(line: 448, column: 14, scope: !4824, inlinedAt: !4828)
!5078 = !DILocation(line: 450, column: 22, scope: !4824, inlinedAt: !4828)
!5079 = !DILocation(line: 450, column: 25, scope: !4824, inlinedAt: !4828)
!5080 = !DILocation(line: 450, column: 30, scope: !4824, inlinedAt: !4828)
!5081 = !DILocation(line: 450, column: 36, scope: !4824, inlinedAt: !4828)
!5082 = !DILocation(line: 450, column: 8, scope: !4824, inlinedAt: !4828)
!5083 = !DILocation(line: 450, column: 6, scope: !4824, inlinedAt: !4828)
!5084 = !DILocation(line: 451, column: 9, scope: !4824, inlinedAt: !4828)
!5085 = !DILocation(line: 552, column: 3, scope: !4829, inlinedAt: !4832)
!5086 = !DILocation(line: 557, column: 19, scope: !4831, inlinedAt: !4832)
!5087 = !DILocation(line: 557, column: 25, scope: !4831, inlinedAt: !4832)
!5088 = !DILocation(line: 557, column: 9, scope: !4831, inlinedAt: !4832)
!5089 = !DILocation(line: 557, column: 2, scope: !4831, inlinedAt: !4832)
!5090 = !DILocation(line: 558, column: 1, scope: !4831, inlinedAt: !4832)
!5091 = !DILocation(line: 664, column: 2, scope: !4820)
!5092 = distinct !DISubprogram(name: "get_order", scope: !5093, file: !5093, line: 29, type: !5094, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5093 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5094 = !DISubroutineType(types: !5095)
!5095 = !{!224, !347}
!5096 = !DILocalVariable(name: "x", arg: 1, scope: !5097, file: !5098, line: 366, type: !443)
!5097 = distinct !DISubprogram(name: "fls64", scope: !5098, file: !5098, line: 366, type: !5099, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5098 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5099 = !DISubroutineType(types: !5100)
!5100 = !{!224, !443}
!5101 = !DILocation(line: 366, column: 40, scope: !5097, inlinedAt: !5102)
!5102 = distinct !DILocation(line: 46, column: 9, scope: !5092)
!5103 = !DILocalVariable(name: "bitpos", scope: !5097, file: !5098, line: 368, type: !224)
!5104 = !DILocation(line: 368, column: 6, scope: !5097, inlinedAt: !5102)
!5105 = !DILocalVariable(name: "size", arg: 1, scope: !5092, file: !5093, line: 29, type: !347)
!5106 = !DILocation(line: 29, column: 63, scope: !5092)
!5107 = !DILocation(line: 31, column: 27, scope: !5108)
!5108 = distinct !DILexicalBlock(scope: !5092, file: !5093, line: 31, column: 6)
!5109 = !DILocation(line: 31, column: 6, scope: !5108)
!5110 = !DILocation(line: 31, column: 6, scope: !5092)
!5111 = !DILocation(line: 32, column: 8, scope: !5112)
!5112 = distinct !DILexicalBlock(scope: !5113, file: !5093, line: 32, column: 7)
!5113 = distinct !DILexicalBlock(scope: !5108, file: !5093, line: 31, column: 34)
!5114 = !DILocation(line: 32, column: 7, scope: !5113)
!5115 = !DILocation(line: 33, column: 4, scope: !5112)
!5116 = !DILocation(line: 35, column: 7, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !5113, file: !5093, line: 35, column: 7)
!5118 = !DILocation(line: 35, column: 12, scope: !5117)
!5119 = !DILocation(line: 35, column: 7, scope: !5113)
!5120 = !DILocation(line: 36, column: 4, scope: !5117)
!5121 = !DILocation(line: 38, column: 10, scope: !5113)
!5122 = !DILocation(line: 38, column: 28, scope: !5113)
!5123 = !DILocation(line: 38, column: 41, scope: !5113)
!5124 = !DILocation(line: 38, column: 3, scope: !5113)
!5125 = !DILocation(line: 41, column: 6, scope: !5092)
!5126 = !DILocation(line: 42, column: 7, scope: !5092)
!5127 = !DILocation(line: 46, column: 15, scope: !5092)
!5128 = !DILocation(line: 374, column: 2, scope: !5097, inlinedAt: !5102)
!5129 = !DILocation(line: 376, column: 14, scope: !5097, inlinedAt: !5102)
!5130 = !{i32 253610}
!5131 = !DILocation(line: 377, column: 9, scope: !5097, inlinedAt: !5102)
!5132 = !DILocation(line: 377, column: 16, scope: !5097, inlinedAt: !5102)
!5133 = !DILocation(line: 46, column: 2, scope: !5092)
!5134 = !DILocation(line: 48, column: 1, scope: !5092)
!5135 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5136, file: !5136, line: 30, type: !5137, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5136 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5137 = !DISubroutineType(types: !5138)
!5138 = !{!224, !442}
!5139 = !DILocation(line: 366, column: 40, scope: !5097, inlinedAt: !5140)
!5140 = distinct !DILocation(line: 32, column: 9, scope: !5135)
!5141 = !DILocation(line: 368, column: 6, scope: !5097, inlinedAt: !5140)
!5142 = !DILocalVariable(name: "n", arg: 1, scope: !5135, file: !5136, line: 30, type: !442)
!5143 = !DILocation(line: 30, column: 21, scope: !5135)
!5144 = !DILocation(line: 32, column: 15, scope: !5135)
!5145 = !DILocation(line: 374, column: 2, scope: !5097, inlinedAt: !5140)
!5146 = !DILocation(line: 376, column: 14, scope: !5097, inlinedAt: !5140)
!5147 = !DILocation(line: 377, column: 9, scope: !5097, inlinedAt: !5140)
!5148 = !DILocation(line: 377, column: 16, scope: !5097, inlinedAt: !5140)
!5149 = !DILocation(line: 32, column: 18, scope: !5135)
!5150 = !DILocation(line: 32, column: 2, scope: !5135)
!5151 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5152, file: !5152, line: 137, type: !5153, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5152 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5153 = !DISubroutineType(types: !5154)
!5154 = !{!166, !955, !2147, !344, !167}
!5155 = !DILocalVariable(name: "s", arg: 1, scope: !5151, file: !5152, line: 137, type: !955)
!5156 = !DILocation(line: 137, column: 54, scope: !5151)
!5157 = !DILocalVariable(name: "object", arg: 2, scope: !5151, file: !5152, line: 137, type: !2147)
!5158 = !DILocation(line: 137, column: 69, scope: !5151)
!5159 = !DILocalVariable(name: "size", arg: 3, scope: !5151, file: !5152, line: 138, type: !344)
!5160 = !DILocation(line: 138, column: 12, scope: !5151)
!5161 = !DILocalVariable(name: "flags", arg: 4, scope: !5151, file: !5152, line: 138, type: !167)
!5162 = !DILocation(line: 138, column: 24, scope: !5151)
!5163 = !DILocation(line: 140, column: 17, scope: !5151)
!5164 = !DILocation(line: 140, column: 2, scope: !5151)
!5165 = distinct !DISubprogram(name: "ni6501_port_command", scope: !3, file: !3, line: 165, type: !5166, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5166 = !DISubroutineType(types: !5167)
!5167 = !{!224, !225, !224, !7, !4234}
!5168 = !DILocalVariable(name: "dev", arg: 1, scope: !5165, file: !3, line: 165, type: !225)
!5169 = !DILocation(line: 165, column: 54, scope: !5165)
!5170 = !DILocalVariable(name: "command", arg: 2, scope: !5165, file: !3, line: 165, type: !224)
!5171 = !DILocation(line: 165, column: 63, scope: !5165)
!5172 = !DILocalVariable(name: "val", arg: 3, scope: !5165, file: !3, line: 166, type: !7)
!5173 = !DILocation(line: 166, column: 24, scope: !5165)
!5174 = !DILocalVariable(name: "bitmap", arg: 4, scope: !5165, file: !3, line: 166, type: !4234)
!5175 = !DILocation(line: 166, column: 33, scope: !5165)
!5176 = !DILocalVariable(name: "usb", scope: !5165, file: !3, line: 168, type: !5177)
!5177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5178, size: 64)
!5178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device", file: !101, line: 631, size: 10624, elements: !5179)
!5179 = !{!5180, !5181, !5182, !5183, !5184, !5185, !5186, !5187, !5190, !5191, !5193, !5194, !5222, !5223, !5224, !5241, !5302, !5333, !5334, !5336, !5337, !5339, !5340, !5341, !5342, !5343, !5344, !5345, !5346, !5347, !5348, !5349, !5350, !5351, !5352, !5353, !5354, !5355, !5356, !5357, !5358, !5359, !5360, !5361, !5362, !5363, !5364, !5365, !5366, !5367, !5368, !5369, !5372, !5373, !5374, !5379, !5386, !5387, !5388, !5389}
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "devnum", scope: !5178, file: !101, line: 632, baseType: !224, size: 32)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "devpath", scope: !5178, file: !101, line: 633, baseType: !1754, size: 128, offset: 32)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "route", scope: !5178, file: !101, line: 634, baseType: !438, size: 32, offset: 160)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5178, file: !101, line: 635, baseType: !139, size: 32, offset: 192)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !5178, file: !101, line: 636, baseType: !151, size: 32, offset: 224)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "rx_lanes", scope: !5178, file: !101, line: 637, baseType: !7, size: 32, offset: 256)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "tx_lanes", scope: !5178, file: !101, line: 638, baseType: !7, size: 32, offset: 288)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !5178, file: !101, line: 640, baseType: !5188, size: 64, offset: 320)
!5188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5189, size: 64)
!5189 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_tt", file: !101, line: 474, flags: DIFlagFwdDecl)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "ttport", scope: !5178, file: !101, line: 641, baseType: !224, size: 32, offset: 384)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "toggle", scope: !5178, file: !101, line: 643, baseType: !5192, size: 64, offset: 416)
!5192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !1589)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5178, file: !101, line: 645, baseType: !5177, size: 64, offset: 512)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !5178, file: !101, line: 646, baseType: !5195, size: 64, offset: 576)
!5195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5196, size: 64)
!5196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bus", file: !101, line: 424, size: 960, elements: !5197)
!5197 = !{!5198, !5199, !5200, !5201, !5202, !5203, !5204, !5205, !5206, !5207, !5208, !5209, !5210, !5211, !5216, !5217, !5218, !5219, !5220, !5221}
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !5196, file: !101, line: 425, baseType: !235, size: 64)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "sysdev", scope: !5196, file: !101, line: 426, baseType: !235, size: 64, offset: 64)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "busnum", scope: !5196, file: !101, line: 427, baseType: !224, size: 32, offset: 128)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "bus_name", scope: !5196, file: !101, line: 428, baseType: !215, size: 64, offset: 192)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "uses_pio_for_control", scope: !5196, file: !101, line: 429, baseType: !1372, size: 8, offset: 256)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "otg_port", scope: !5196, file: !101, line: 433, baseType: !1372, size: 8, offset: 264)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "is_b_host", scope: !5196, file: !101, line: 434, baseType: !7, size: 1, offset: 272, flags: DIFlagBitField, extraData: i64 272)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "b_hnp_enable", scope: !5196, file: !101, line: 435, baseType: !7, size: 1, offset: 273, flags: DIFlagBitField, extraData: i64 272)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "no_stop_on_short", scope: !5196, file: !101, line: 436, baseType: !7, size: 1, offset: 274, flags: DIFlagBitField, extraData: i64 272)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "no_sg_constraint", scope: !5196, file: !101, line: 441, baseType: !7, size: 1, offset: 275, flags: DIFlagBitField, extraData: i64 272)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "sg_tablesize", scope: !5196, file: !101, line: 442, baseType: !7, size: 32, offset: 288)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next", scope: !5196, file: !101, line: 444, baseType: !224, size: 32, offset: 320)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next_mutex", scope: !5196, file: !101, line: 446, baseType: !1193, size: 192, offset: 384)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "devmap", scope: !5196, file: !101, line: 448, baseType: !5212, size: 128, offset: 576)
!5212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_devmap", file: !101, line: 417, size: 128, elements: !5213)
!5213 = !{!5214}
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "devicemap", scope: !5212, file: !101, line: 418, baseType: !5215, size: 128)
!5215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 128, elements: !1589)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "root_hub", scope: !5196, file: !101, line: 449, baseType: !5177, size: 64, offset: 704)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "hs_companion", scope: !5196, file: !101, line: 450, baseType: !5195, size: 64, offset: 768)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_allocated", scope: !5196, file: !101, line: 452, baseType: !224, size: 32, offset: 832)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_int_reqs", scope: !5196, file: !101, line: 459, baseType: !224, size: 32, offset: 864)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_isoc_reqs", scope: !5196, file: !101, line: 460, baseType: !224, size: 32, offset: 896)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "resuming_ports", scope: !5196, file: !101, line: 462, baseType: !7, size: 32, offset: 928)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "ep0", scope: !5178, file: !101, line: 647, baseType: !4086, size: 640, offset: 640)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5178, file: !101, line: 649, baseType: !236, size: 5568, offset: 1280)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !5178, file: !101, line: 651, baseType: !5225, size: 144, offset: 6848)
!5225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_descriptor", file: !140, line: 289, size: 144, elements: !5226)
!5226 = !{!5227, !5228, !5229, !5230, !5231, !5232, !5233, !5234, !5235, !5236, !5237, !5238, !5239, !5240}
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5225, file: !140, line: 290, baseType: !1373, size: 8)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5225, file: !140, line: 291, baseType: !1373, size: 8, offset: 8)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "bcdUSB", scope: !5225, file: !140, line: 293, baseType: !172, size: 16, offset: 16)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !5225, file: !140, line: 294, baseType: !1373, size: 8, offset: 32)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !5225, file: !140, line: 295, baseType: !1373, size: 8, offset: 40)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !5225, file: !140, line: 296, baseType: !1373, size: 8, offset: 48)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPacketSize0", scope: !5225, file: !140, line: 297, baseType: !1373, size: 8, offset: 56)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !5225, file: !140, line: 298, baseType: !172, size: 16, offset: 64)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !5225, file: !140, line: 299, baseType: !172, size: 16, offset: 80)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice", scope: !5225, file: !140, line: 300, baseType: !172, size: 16, offset: 96)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "iManufacturer", scope: !5225, file: !140, line: 301, baseType: !1373, size: 8, offset: 112)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "iProduct", scope: !5225, file: !140, line: 302, baseType: !1373, size: 8, offset: 120)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "iSerialNumber", scope: !5225, file: !140, line: 303, baseType: !1373, size: 8, offset: 128)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "bNumConfigurations", scope: !5225, file: !140, line: 304, baseType: !1373, size: 8, offset: 136)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "bos", scope: !5178, file: !101, line: 652, baseType: !5242, size: 64, offset: 7040)
!5242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5243, size: 64)
!5243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_bos", file: !101, line: 396, size: 384, elements: !5244)
!5244 = !{!5245, !5253, !5261, !5273, !5286, !5295}
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !5243, file: !101, line: 397, baseType: !5246, size: 64)
!5246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5247, size: 64)
!5247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bos_descriptor", file: !140, line: 844, size: 40, elements: !5248)
!5248 = !{!5249, !5250, !5251, !5252}
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5247, file: !140, line: 845, baseType: !1373, size: 8)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5247, file: !140, line: 846, baseType: !1373, size: 8, offset: 8)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !5247, file: !140, line: 848, baseType: !172, size: 16, offset: 16)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "bNumDeviceCaps", scope: !5247, file: !140, line: 849, baseType: !1373, size: 8, offset: 32)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "ext_cap", scope: !5243, file: !101, line: 400, baseType: !5254, size: 64, offset: 64)
!5254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5255, size: 64)
!5255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ext_cap_descriptor", file: !140, line: 895, size: 56, elements: !5256)
!5256 = !{!5257, !5258, !5259, !5260}
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5255, file: !140, line: 896, baseType: !1373, size: 8)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5255, file: !140, line: 897, baseType: !1373, size: 8, offset: 8)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !5255, file: !140, line: 898, baseType: !1373, size: 8, offset: 16)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !5255, file: !140, line: 899, baseType: !4114, size: 32, offset: 24)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "ss_cap", scope: !5243, file: !101, line: 401, baseType: !5262, size: 64, offset: 128)
!5262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5263, size: 64)
!5263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_cap_descriptor", file: !140, line: 917, size: 80, elements: !5264)
!5264 = !{!5265, !5266, !5267, !5268, !5269, !5270, !5271, !5272}
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5263, file: !140, line: 918, baseType: !1373, size: 8)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5263, file: !140, line: 919, baseType: !1373, size: 8, offset: 8)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !5263, file: !140, line: 920, baseType: !1373, size: 8, offset: 16)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !5263, file: !140, line: 921, baseType: !1373, size: 8, offset: 24)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "wSpeedSupported", scope: !5263, file: !140, line: 923, baseType: !172, size: 16, offset: 32)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionalitySupport", scope: !5263, file: !140, line: 928, baseType: !1373, size: 8, offset: 48)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "bU1devExitLat", scope: !5263, file: !140, line: 929, baseType: !1373, size: 8, offset: 56)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "bU2DevExitLat", scope: !5263, file: !140, line: 930, baseType: !172, size: 16, offset: 64)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_cap", scope: !5243, file: !101, line: 402, baseType: !5274, size: 64, offset: 192)
!5274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5275, size: 64)
!5275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_cap_descriptor", file: !140, line: 955, size: 128, elements: !5276)
!5276 = !{!5277, !5278, !5279, !5280, !5281, !5282, !5283, !5284}
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5275, file: !140, line: 956, baseType: !1373, size: 8)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5275, file: !140, line: 957, baseType: !1373, size: 8, offset: 8)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !5275, file: !140, line: 958, baseType: !1373, size: 8, offset: 16)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !5275, file: !140, line: 959, baseType: !1373, size: 8, offset: 24)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !5275, file: !140, line: 960, baseType: !4114, size: 32, offset: 32)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "wFunctionalitySupport", scope: !5275, file: !140, line: 963, baseType: !172, size: 16, offset: 64)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "wReserved", scope: !5275, file: !140, line: 967, baseType: !172, size: 16, offset: 80)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "bmSublinkSpeedAttr", scope: !5275, file: !140, line: 968, baseType: !5285, size: 32, offset: 96)
!5285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4114, size: 32, elements: !1391)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "ss_id", scope: !5243, file: !101, line: 403, baseType: !5287, size: 64, offset: 256)
!5287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5288, size: 64)
!5288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_container_id_descriptor", file: !140, line: 940, size: 160, elements: !5289)
!5289 = !{!5290, !5291, !5292, !5293, !5294}
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5288, file: !140, line: 941, baseType: !1373, size: 8)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5288, file: !140, line: 942, baseType: !1373, size: 8, offset: 8)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !5288, file: !140, line: 943, baseType: !1373, size: 8, offset: 16)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !5288, file: !140, line: 944, baseType: !1373, size: 8, offset: 24)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "ContainerID", scope: !5288, file: !140, line: 945, baseType: !2727, size: 128, offset: 32)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "ptm_cap", scope: !5243, file: !101, line: 404, baseType: !5296, size: 64, offset: 320)
!5296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5297, size: 64)
!5297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ptm_cap_descriptor", file: !140, line: 1080, size: 24, elements: !5298)
!5298 = !{!5299, !5300, !5301}
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5297, file: !140, line: 1081, baseType: !1373, size: 8)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5297, file: !140, line: 1082, baseType: !1373, size: 8, offset: 8)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !5297, file: !140, line: 1083, baseType: !1373, size: 8, offset: 16)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !5178, file: !101, line: 653, baseType: !5303, size: 64, offset: 7104)
!5303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5304, size: 64)
!5304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_config", file: !101, line: 374, size: 5440, elements: !5305)
!5305 = !{!5306, !5317, !5318, !5320, !5322, !5331, !5332}
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !5304, file: !101, line: 375, baseType: !5307, size: 72)
!5307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_config_descriptor", file: !140, line: 349, size: 72, elements: !5308)
!5308 = !{!5309, !5310, !5311, !5312, !5313, !5314, !5315, !5316}
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5307, file: !140, line: 350, baseType: !1373, size: 8)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5307, file: !140, line: 351, baseType: !1373, size: 8, offset: 8)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !5307, file: !140, line: 353, baseType: !172, size: 16, offset: 16)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "bNumInterfaces", scope: !5307, file: !140, line: 354, baseType: !1373, size: 8, offset: 32)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "bConfigurationValue", scope: !5307, file: !140, line: 355, baseType: !1373, size: 8, offset: 40)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "iConfiguration", scope: !5307, file: !140, line: 356, baseType: !1373, size: 8, offset: 48)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !5307, file: !140, line: 357, baseType: !1373, size: 8, offset: 56)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPower", scope: !5307, file: !140, line: 358, baseType: !1373, size: 8, offset: 64)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !5304, file: !101, line: 377, baseType: !298, size: 64, offset: 128)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !5304, file: !101, line: 381, baseType: !5319, size: 1024, offset: 192)
!5319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4128, size: 1024, elements: !1755)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "interface", scope: !5304, file: !101, line: 385, baseType: !5321, size: 2048, offset: 1216)
!5321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4062, size: 2048, elements: !2250)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "intf_cache", scope: !5304, file: !101, line: 389, baseType: !5323, size: 2048, offset: 3264)
!5323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5324, size: 2048, elements: !2250)
!5324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5325, size: 64)
!5325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_cache", file: !101, line: 322, size: 64, elements: !5326)
!5326 = !{!5327, !5328, !5329}
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !5325, file: !101, line: 323, baseType: !7, size: 32)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5325, file: !101, line: 324, baseType: !3382, size: 32, offset: 32)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !5325, file: !101, line: 328, baseType: !5330, offset: 64)
!5330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4067, elements: !2351)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !5304, file: !101, line: 391, baseType: !4083, size: 64, offset: 5312)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !5304, file: !101, line: 392, baseType: !224, size: 32, offset: 5376)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "actconfig", scope: !5178, file: !101, line: 655, baseType: !5303, size: 64, offset: 7168)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "ep_in", scope: !5178, file: !101, line: 656, baseType: !5335, size: 1024, offset: 7232)
!5335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4085, size: 1024, elements: !1755)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "ep_out", scope: !5178, file: !101, line: 657, baseType: !5335, size: 1024, offset: 8256)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "rawdescriptors", scope: !5178, file: !101, line: 659, baseType: !5338, size: 64, offset: 9280)
!5338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "bus_mA", scope: !5178, file: !101, line: 661, baseType: !171, size: 16, offset: 9344)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "portnum", scope: !5178, file: !101, line: 662, baseType: !1372, size: 8, offset: 9360)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !5178, file: !101, line: 663, baseType: !1372, size: 8, offset: 9368)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "devaddr", scope: !5178, file: !101, line: 664, baseType: !1372, size: 8, offset: 9376)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "can_submit", scope: !5178, file: !101, line: 666, baseType: !7, size: 1, offset: 9384, flags: DIFlagBitField, extraData: i64 9384)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "persist_enabled", scope: !5178, file: !101, line: 667, baseType: !7, size: 1, offset: 9385, flags: DIFlagBitField, extraData: i64 9384)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "have_langid", scope: !5178, file: !101, line: 668, baseType: !7, size: 1, offset: 9386, flags: DIFlagBitField, extraData: i64 9384)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !5178, file: !101, line: 669, baseType: !7, size: 1, offset: 9387, flags: DIFlagBitField, extraData: i64 9384)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !5178, file: !101, line: 670, baseType: !7, size: 1, offset: 9388, flags: DIFlagBitField, extraData: i64 9384)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "wusb", scope: !5178, file: !101, line: 671, baseType: !7, size: 1, offset: 9389, flags: DIFlagBitField, extraData: i64 9384)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_capable", scope: !5178, file: !101, line: 672, baseType: !7, size: 1, offset: 9390, flags: DIFlagBitField, extraData: i64 9384)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_capable", scope: !5178, file: !101, line: 673, baseType: !7, size: 1, offset: 9391, flags: DIFlagBitField, extraData: i64 9384)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_besl_capable", scope: !5178, file: !101, line: 674, baseType: !7, size: 1, offset: 9392, flags: DIFlagBitField, extraData: i64 9384)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_enabled", scope: !5178, file: !101, line: 675, baseType: !7, size: 1, offset: 9393, flags: DIFlagBitField, extraData: i64 9384)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_allowed", scope: !5178, file: !101, line: 676, baseType: !7, size: 1, offset: 9394, flags: DIFlagBitField, extraData: i64 9384)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u1_enabled", scope: !5178, file: !101, line: 677, baseType: !7, size: 1, offset: 9395, flags: DIFlagBitField, extraData: i64 9384)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u2_enabled", scope: !5178, file: !101, line: 678, baseType: !7, size: 1, offset: 9396, flags: DIFlagBitField, extraData: i64 9384)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "string_langid", scope: !5178, file: !101, line: 679, baseType: !224, size: 32, offset: 9408)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !5178, file: !101, line: 682, baseType: !298, size: 64, offset: 9472)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !5178, file: !101, line: 683, baseType: !298, size: 64, offset: 9536)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !5178, file: !101, line: 684, baseType: !298, size: 64, offset: 9600)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !5178, file: !101, line: 686, baseType: !244, size: 128, offset: 9664)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "maxchild", scope: !5178, file: !101, line: 688, baseType: !224, size: 32, offset: 9792)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !5178, file: !101, line: 690, baseType: !438, size: 32, offset: 9824)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "urbnum", scope: !5178, file: !101, line: 691, baseType: !768, size: 32, offset: 9856)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "active_duration", scope: !5178, file: !101, line: 693, baseType: !347, size: 64, offset: 9920)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !5178, file: !101, line: 696, baseType: !347, size: 64, offset: 9984)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "do_remote_wakeup", scope: !5178, file: !101, line: 698, baseType: !7, size: 1, offset: 10048, flags: DIFlagBitField, extraData: i64 10048)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !5178, file: !101, line: 699, baseType: !7, size: 1, offset: 10049, flags: DIFlagBitField, extraData: i64 10048)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "port_is_suspended", scope: !5178, file: !101, line: 700, baseType: !7, size: 1, offset: 10050, flags: DIFlagBitField, extraData: i64 10048)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "wusb_dev", scope: !5178, file: !101, line: 702, baseType: !5370, size: 64, offset: 10112)
!5370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5371, size: 64)
!5371 = !DICompositeType(tag: DW_TAG_structure_type, name: "wusb_dev", file: !101, line: 28, flags: DIFlagFwdDecl)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "slot_id", scope: !5178, file: !101, line: 703, baseType: !224, size: 32, offset: 10176)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !5178, file: !101, line: 704, baseType: !160, size: 32, offset: 10208)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "l1_params", scope: !5178, file: !101, line: 705, baseType: !5375, size: 64, offset: 10240)
!5375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb2_lpm_parameters", file: !101, line: 502, size: 64, elements: !5376)
!5376 = !{!5377, !5378}
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "besl", scope: !5375, file: !101, line: 506, baseType: !7, size: 32)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !5375, file: !101, line: 512, baseType: !224, size: 32, offset: 32)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "u1_params", scope: !5178, file: !101, line: 706, baseType: !5380, size: 128, offset: 10304)
!5380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb3_lpm_parameters", file: !101, line: 522, size: 128, elements: !5381)
!5381 = !{!5382, !5383, !5384, !5385}
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "mel", scope: !5380, file: !101, line: 529, baseType: !7, size: 32)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !5380, file: !101, line: 535, baseType: !7, size: 32, offset: 32)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "sel", scope: !5380, file: !101, line: 545, baseType: !7, size: 32, offset: 64)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !5380, file: !101, line: 551, baseType: !224, size: 32, offset: 96)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "u2_params", scope: !5178, file: !101, line: 707, baseType: !5380, size: 128, offset: 10432)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_disable_count", scope: !5178, file: !101, line: 708, baseType: !7, size: 32, offset: 10560)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "hub_delay", scope: !5178, file: !101, line: 710, baseType: !880, size: 16, offset: 10592)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "use_generic_driver", scope: !5178, file: !101, line: 711, baseType: !7, size: 1, offset: 10608, flags: DIFlagBitField, extraData: i64 10608)
!5390 = !DILocation(line: 168, column: 21, scope: !5165)
!5391 = !DILocation(line: 168, column: 45, scope: !5165)
!5392 = !DILocation(line: 168, column: 27, scope: !5165)
!5393 = !DILocalVariable(name: "devpriv", scope: !5165, file: !3, line: 169, type: !4226)
!5394 = !DILocation(line: 169, column: 25, scope: !5165)
!5395 = !DILocation(line: 169, column: 35, scope: !5165)
!5396 = !DILocation(line: 169, column: 40, scope: !5165)
!5397 = !DILocalVariable(name: "request_size", scope: !5165, file: !3, line: 170, type: !224)
!5398 = !DILocation(line: 170, column: 6, scope: !5165)
!5399 = !DILocalVariable(name: "response_size", scope: !5165, file: !3, line: 170, type: !224)
!5400 = !DILocation(line: 170, column: 20, scope: !5165)
!5401 = !DILocalVariable(name: "tx", scope: !5165, file: !3, line: 171, type: !4234)
!5402 = !DILocation(line: 171, column: 6, scope: !5165)
!5403 = !DILocation(line: 171, column: 11, scope: !5165)
!5404 = !DILocation(line: 171, column: 20, scope: !5165)
!5405 = !DILocalVariable(name: "ret", scope: !5165, file: !3, line: 172, type: !224)
!5406 = !DILocation(line: 172, column: 6, scope: !5165)
!5407 = !DILocation(line: 174, column: 6, scope: !5408)
!5408 = distinct !DILexicalBlock(scope: !5165, file: !3, line: 174, column: 6)
!5409 = !DILocation(line: 174, column: 14, scope: !5408)
!5410 = !DILocation(line: 174, column: 30, scope: !5408)
!5411 = !DILocation(line: 174, column: 34, scope: !5408)
!5412 = !DILocation(line: 174, column: 6, scope: !5165)
!5413 = !DILocation(line: 175, column: 3, scope: !5408)
!5414 = !DILocation(line: 177, column: 14, scope: !5165)
!5415 = !DILocation(line: 177, column: 23, scope: !5165)
!5416 = !DILocation(line: 177, column: 2, scope: !5165)
!5417 = !DILocation(line: 179, column: 10, scope: !5165)
!5418 = !DILocation(line: 179, column: 2, scope: !5165)
!5419 = !DILocation(line: 181, column: 16, scope: !5420)
!5420 = distinct !DILexicalBlock(scope: !5165, file: !3, line: 179, column: 19)
!5421 = !DILocation(line: 182, column: 17, scope: !5420)
!5422 = !DILocation(line: 183, column: 10, scope: !5420)
!5423 = !DILocation(line: 183, column: 33, scope: !5420)
!5424 = !DILocation(line: 183, column: 3, scope: !5420)
!5425 = !DILocation(line: 184, column: 12, scope: !5420)
!5426 = !DILocation(line: 184, column: 16, scope: !5420)
!5427 = !DILocation(line: 184, column: 3, scope: !5420)
!5428 = !DILocation(line: 184, column: 10, scope: !5420)
!5429 = !DILocation(line: 185, column: 3, scope: !5420)
!5430 = !DILocation(line: 187, column: 16, scope: !5420)
!5431 = !DILocation(line: 188, column: 17, scope: !5420)
!5432 = !DILocation(line: 189, column: 10, scope: !5420)
!5433 = !DILocation(line: 189, column: 34, scope: !5420)
!5434 = !DILocation(line: 189, column: 3, scope: !5420)
!5435 = !DILocation(line: 190, column: 12, scope: !5420)
!5436 = !DILocation(line: 190, column: 16, scope: !5420)
!5437 = !DILocation(line: 190, column: 3, scope: !5420)
!5438 = !DILocation(line: 190, column: 10, scope: !5420)
!5439 = !DILocation(line: 191, column: 13, scope: !5420)
!5440 = !DILocation(line: 191, column: 12, scope: !5420)
!5441 = !DILocation(line: 191, column: 3, scope: !5420)
!5442 = !DILocation(line: 191, column: 10, scope: !5420)
!5443 = !DILocation(line: 192, column: 3, scope: !5420)
!5444 = !DILocation(line: 194, column: 16, scope: !5420)
!5445 = !DILocation(line: 195, column: 17, scope: !5420)
!5446 = !DILocation(line: 196, column: 10, scope: !5420)
!5447 = !DILocation(line: 196, column: 36, scope: !5420)
!5448 = !DILocation(line: 196, column: 3, scope: !5420)
!5449 = !DILocation(line: 197, column: 12, scope: !5420)
!5450 = !DILocation(line: 197, column: 16, scope: !5420)
!5451 = !DILocation(line: 197, column: 3, scope: !5420)
!5452 = !DILocation(line: 197, column: 10, scope: !5420)
!5453 = !DILocation(line: 198, column: 13, scope: !5420)
!5454 = !DILocation(line: 198, column: 17, scope: !5420)
!5455 = !DILocation(line: 198, column: 23, scope: !5420)
!5456 = !DILocation(line: 198, column: 12, scope: !5420)
!5457 = !DILocation(line: 198, column: 3, scope: !5420)
!5458 = !DILocation(line: 198, column: 10, scope: !5420)
!5459 = !DILocation(line: 199, column: 13, scope: !5420)
!5460 = !DILocation(line: 199, column: 17, scope: !5420)
!5461 = !DILocation(line: 199, column: 24, scope: !5420)
!5462 = !DILocation(line: 199, column: 12, scope: !5420)
!5463 = !DILocation(line: 199, column: 3, scope: !5420)
!5464 = !DILocation(line: 199, column: 10, scope: !5420)
!5465 = !DILocation(line: 200, column: 3, scope: !5420)
!5466 = !DILocation(line: 202, column: 7, scope: !5420)
!5467 = !DILocation(line: 203, column: 3, scope: !5420)
!5468 = !DILocation(line: 206, column: 21, scope: !5165)
!5469 = !DILocation(line: 207, column: 7, scope: !5165)
!5470 = !DILocation(line: 209, column: 7, scope: !5165)
!5471 = !DILocation(line: 209, column: 16, scope: !5165)
!5472 = !DILocation(line: 210, column: 7, scope: !5165)
!5473 = !DILocation(line: 206, column: 8, scope: !5165)
!5474 = !DILocation(line: 206, column: 6, scope: !5165)
!5475 = !DILocation(line: 213, column: 6, scope: !5476)
!5476 = distinct !DILexicalBlock(scope: !5165, file: !3, line: 213, column: 6)
!5477 = !DILocation(line: 213, column: 6, scope: !5165)
!5478 = !DILocation(line: 214, column: 3, scope: !5476)
!5479 = !DILocation(line: 216, column: 21, scope: !5165)
!5480 = !DILocation(line: 217, column: 7, scope: !5165)
!5481 = !DILocation(line: 219, column: 7, scope: !5165)
!5482 = !DILocation(line: 219, column: 16, scope: !5165)
!5483 = !DILocation(line: 220, column: 7, scope: !5165)
!5484 = !DILocation(line: 216, column: 8, scope: !5165)
!5485 = !DILocation(line: 216, column: 6, scope: !5165)
!5486 = !DILocation(line: 223, column: 6, scope: !5487)
!5487 = distinct !DILexicalBlock(scope: !5165, file: !3, line: 223, column: 6)
!5488 = !DILocation(line: 223, column: 6, scope: !5165)
!5489 = !DILocation(line: 224, column: 3, scope: !5487)
!5490 = !DILocation(line: 228, column: 6, scope: !5491)
!5491 = distinct !DILexicalBlock(scope: !5165, file: !3, line: 228, column: 6)
!5492 = !DILocation(line: 228, column: 14, scope: !5491)
!5493 = !DILocation(line: 228, column: 6, scope: !5165)
!5494 = !DILocation(line: 229, column: 13, scope: !5495)
!5495 = distinct !DILexicalBlock(scope: !5491, file: !3, line: 228, column: 28)
!5496 = !DILocation(line: 229, column: 22, scope: !5495)
!5497 = !DILocation(line: 229, column: 4, scope: !5495)
!5498 = !DILocation(line: 229, column: 11, scope: !5495)
!5499 = !DILocation(line: 231, column: 3, scope: !5495)
!5500 = !DILocation(line: 231, column: 12, scope: !5495)
!5501 = !DILocation(line: 231, column: 27, scope: !5495)
!5502 = !DILocation(line: 233, column: 14, scope: !5503)
!5503 = distinct !DILexicalBlock(scope: !5495, file: !3, line: 233, column: 7)
!5504 = !DILocation(line: 233, column: 23, scope: !5503)
!5505 = !DILocation(line: 233, column: 7, scope: !5503)
!5506 = !DILocation(line: 233, column: 7, scope: !5495)
!5507 = !DILocation(line: 235, column: 8, scope: !5508)
!5508 = distinct !DILexicalBlock(scope: !5503, file: !3, line: 234, column: 36)
!5509 = !DILocation(line: 236, column: 3, scope: !5508)
!5510 = !DILocation(line: 237, column: 2, scope: !5495)
!5511 = !DILocation(line: 237, column: 20, scope: !5512)
!5512 = distinct !DILexicalBlock(scope: !5491, file: !3, line: 237, column: 13)
!5513 = !DILocation(line: 237, column: 29, scope: !5512)
!5514 = !DILocation(line: 237, column: 13, scope: !5512)
!5515 = !DILocation(line: 237, column: 13, scope: !5491)
!5516 = !DILocation(line: 239, column: 7, scope: !5517)
!5517 = distinct !DILexicalBlock(scope: !5512, file: !3, line: 238, column: 33)
!5518 = !DILocation(line: 240, column: 2, scope: !5517)
!5519 = !DILocation(line: 228, column: 17, scope: !5491)
!5520 = !DILabel(scope: !5165, name: "end", file: !3, line: 241)
!5521 = !DILocation(line: 241, column: 1, scope: !5165)
!5522 = !DILocation(line: 242, column: 16, scope: !5165)
!5523 = !DILocation(line: 242, column: 25, scope: !5165)
!5524 = !DILocation(line: 242, column: 2, scope: !5165)
!5525 = !DILocation(line: 244, column: 9, scope: !5165)
!5526 = !DILocation(line: 244, column: 2, scope: !5165)
!5527 = !DILocation(line: 245, column: 1, scope: !5165)
!5528 = distinct !DISubprogram(name: "__create_pipe", scope: !101, file: !101, line: 1945, type: !5529, scopeLine: 1947, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5529 = !DISubroutineType(types: !5530)
!5530 = !{!7, !5177, !7}
!5531 = !DILocalVariable(name: "dev", arg: 1, scope: !5528, file: !101, line: 1945, type: !5177)
!5532 = !DILocation(line: 1945, column: 61, scope: !5528)
!5533 = !DILocalVariable(name: "endpoint", arg: 2, scope: !5528, file: !101, line: 1946, type: !7)
!5534 = !DILocation(line: 1946, column: 16, scope: !5528)
!5535 = !DILocation(line: 1948, column: 10, scope: !5528)
!5536 = !DILocation(line: 1948, column: 15, scope: !5528)
!5537 = !DILocation(line: 1948, column: 22, scope: !5528)
!5538 = !DILocation(line: 1948, column: 31, scope: !5528)
!5539 = !DILocation(line: 1948, column: 40, scope: !5528)
!5540 = !DILocation(line: 1948, column: 28, scope: !5528)
!5541 = !DILocation(line: 1948, column: 2, scope: !5528)
!5542 = distinct !DISubprogram(name: "ni6501_counter_command", scope: !3, file: !3, line: 247, type: !5543, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5543 = !DISubroutineType(types: !5544)
!5544 = !{!224, !225, !224, !1435}
!5545 = !DILocalVariable(name: "dev", arg: 1, scope: !5542, file: !3, line: 247, type: !225)
!5546 = !DILocation(line: 247, column: 57, scope: !5542)
!5547 = !DILocalVariable(name: "command", arg: 2, scope: !5542, file: !3, line: 247, type: !224)
!5548 = !DILocation(line: 247, column: 66, scope: !5542)
!5549 = !DILocalVariable(name: "val", arg: 3, scope: !5542, file: !3, line: 248, type: !1435)
!5550 = !DILocation(line: 248, column: 12, scope: !5542)
!5551 = !DILocalVariable(name: "usb", scope: !5542, file: !3, line: 250, type: !5177)
!5552 = !DILocation(line: 250, column: 21, scope: !5542)
!5553 = !DILocation(line: 250, column: 45, scope: !5542)
!5554 = !DILocation(line: 250, column: 27, scope: !5542)
!5555 = !DILocalVariable(name: "devpriv", scope: !5542, file: !3, line: 251, type: !4226)
!5556 = !DILocation(line: 251, column: 25, scope: !5542)
!5557 = !DILocation(line: 251, column: 35, scope: !5542)
!5558 = !DILocation(line: 251, column: 40, scope: !5542)
!5559 = !DILocalVariable(name: "request_size", scope: !5542, file: !3, line: 252, type: !224)
!5560 = !DILocation(line: 252, column: 6, scope: !5542)
!5561 = !DILocalVariable(name: "response_size", scope: !5542, file: !3, line: 252, type: !224)
!5562 = !DILocation(line: 252, column: 20, scope: !5542)
!5563 = !DILocalVariable(name: "tx", scope: !5542, file: !3, line: 253, type: !4234)
!5564 = !DILocation(line: 253, column: 6, scope: !5542)
!5565 = !DILocation(line: 253, column: 11, scope: !5542)
!5566 = !DILocation(line: 253, column: 20, scope: !5542)
!5567 = !DILocalVariable(name: "ret", scope: !5542, file: !3, line: 254, type: !224)
!5568 = !DILocation(line: 254, column: 6, scope: !5542)
!5569 = !DILocation(line: 256, column: 7, scope: !5570)
!5570 = distinct !DILexicalBlock(scope: !5542, file: !3, line: 256, column: 6)
!5571 = !DILocation(line: 256, column: 15, scope: !5570)
!5572 = !DILocation(line: 256, column: 31, scope: !5570)
!5573 = !DILocation(line: 256, column: 34, scope: !5570)
!5574 = !DILocation(line: 256, column: 42, scope: !5570)
!5575 = !DILocation(line: 256, column: 61, scope: !5570)
!5576 = !DILocation(line: 256, column: 65, scope: !5570)
!5577 = !DILocation(line: 256, column: 6, scope: !5542)
!5578 = !DILocation(line: 257, column: 3, scope: !5570)
!5579 = !DILocation(line: 259, column: 14, scope: !5542)
!5580 = !DILocation(line: 259, column: 23, scope: !5542)
!5581 = !DILocation(line: 259, column: 2, scope: !5542)
!5582 = !DILocation(line: 261, column: 10, scope: !5542)
!5583 = !DILocation(line: 261, column: 2, scope: !5542)
!5584 = !DILocation(line: 263, column: 16, scope: !5585)
!5585 = distinct !DILexicalBlock(scope: !5542, file: !3, line: 261, column: 19)
!5586 = !DILocation(line: 264, column: 17, scope: !5585)
!5587 = !DILocation(line: 265, column: 10, scope: !5585)
!5588 = !DILocation(line: 265, column: 37, scope: !5585)
!5589 = !DILocation(line: 265, column: 3, scope: !5585)
!5590 = !DILocation(line: 266, column: 3, scope: !5585)
!5591 = !DILocation(line: 268, column: 16, scope: !5585)
!5592 = !DILocation(line: 269, column: 17, scope: !5585)
!5593 = !DILocation(line: 270, column: 10, scope: !5585)
!5594 = !DILocation(line: 270, column: 36, scope: !5585)
!5595 = !DILocation(line: 270, column: 3, scope: !5585)
!5596 = !DILocation(line: 271, column: 3, scope: !5585)
!5597 = !DILocation(line: 273, column: 16, scope: !5585)
!5598 = !DILocation(line: 274, column: 17, scope: !5585)
!5599 = !DILocation(line: 275, column: 10, scope: !5585)
!5600 = !DILocation(line: 275, column: 36, scope: !5585)
!5601 = !DILocation(line: 275, column: 3, scope: !5585)
!5602 = !DILocation(line: 276, column: 3, scope: !5585)
!5603 = !DILocation(line: 278, column: 16, scope: !5585)
!5604 = !DILocation(line: 279, column: 17, scope: !5585)
!5605 = !DILocation(line: 280, column: 10, scope: !5585)
!5606 = !DILocation(line: 280, column: 37, scope: !5585)
!5607 = !DILocation(line: 280, column: 3, scope: !5585)
!5608 = !DILocation(line: 283, column: 26, scope: !5585)
!5609 = !DILocation(line: 283, column: 16, scope: !5585)
!5610 = !DILocation(line: 283, column: 3, scope: !5585)
!5611 = !DILocation(line: 283, column: 24, scope: !5585)
!5612 = !DILocation(line: 284, column: 3, scope: !5585)
!5613 = !DILocation(line: 286, column: 7, scope: !5585)
!5614 = !DILocation(line: 287, column: 3, scope: !5585)
!5615 = !DILocation(line: 290, column: 21, scope: !5542)
!5616 = !DILocation(line: 291, column: 7, scope: !5542)
!5617 = !DILocation(line: 293, column: 7, scope: !5542)
!5618 = !DILocation(line: 293, column: 16, scope: !5542)
!5619 = !DILocation(line: 294, column: 7, scope: !5542)
!5620 = !DILocation(line: 290, column: 8, scope: !5542)
!5621 = !DILocation(line: 290, column: 6, scope: !5542)
!5622 = !DILocation(line: 297, column: 6, scope: !5623)
!5623 = distinct !DILexicalBlock(scope: !5542, file: !3, line: 297, column: 6)
!5624 = !DILocation(line: 297, column: 6, scope: !5542)
!5625 = !DILocation(line: 298, column: 3, scope: !5623)
!5626 = !DILocation(line: 300, column: 21, scope: !5542)
!5627 = !DILocation(line: 301, column: 7, scope: !5542)
!5628 = !DILocation(line: 303, column: 7, scope: !5542)
!5629 = !DILocation(line: 303, column: 16, scope: !5542)
!5630 = !DILocation(line: 304, column: 7, scope: !5542)
!5631 = !DILocation(line: 300, column: 8, scope: !5542)
!5632 = !DILocation(line: 300, column: 6, scope: !5542)
!5633 = !DILocation(line: 307, column: 6, scope: !5634)
!5634 = distinct !DILexicalBlock(scope: !5542, file: !3, line: 307, column: 6)
!5635 = !DILocation(line: 307, column: 6, scope: !5542)
!5636 = !DILocation(line: 308, column: 3, scope: !5634)
!5637 = !DILocation(line: 312, column: 6, scope: !5638)
!5638 = distinct !DILexicalBlock(scope: !5542, file: !3, line: 312, column: 6)
!5639 = !DILocation(line: 312, column: 14, scope: !5638)
!5640 = !DILocation(line: 312, column: 6, scope: !5542)
!5641 = !DILocalVariable(name: "i", scope: !5642, file: !3, line: 313, type: !224)
!5642 = distinct !DILexicalBlock(scope: !5638, file: !3, line: 312, column: 31)
!5643 = !DILocation(line: 313, column: 7, scope: !5642)
!5644 = !DILocation(line: 317, column: 10, scope: !5642)
!5645 = !DILocation(line: 317, column: 4, scope: !5642)
!5646 = !DILocation(line: 317, column: 8, scope: !5642)
!5647 = !DILocation(line: 320, column: 10, scope: !5648)
!5648 = distinct !DILexicalBlock(scope: !5642, file: !3, line: 320, column: 3)
!5649 = !DILocation(line: 320, column: 8, scope: !5648)
!5650 = !DILocation(line: 320, column: 16, scope: !5651)
!5651 = distinct !DILexicalBlock(scope: !5648, file: !3, line: 320, column: 3)
!5652 = !DILocation(line: 320, column: 18, scope: !5651)
!5653 = !DILocation(line: 320, column: 3, scope: !5648)
!5654 = !DILocation(line: 321, column: 4, scope: !5651)
!5655 = !DILocation(line: 321, column: 13, scope: !5651)
!5656 = !DILocation(line: 321, column: 24, scope: !5651)
!5657 = !DILocation(line: 321, column: 27, scope: !5651)
!5658 = !DILocation(line: 320, column: 51, scope: !5651)
!5659 = !DILocation(line: 320, column: 3, scope: !5651)
!5660 = distinct !{!5660, !5653, !5661}
!5661 = !DILocation(line: 321, column: 29, scope: !5648)
!5662 = !DILocation(line: 323, column: 14, scope: !5663)
!5663 = distinct !DILexicalBlock(scope: !5642, file: !3, line: 323, column: 7)
!5664 = !DILocation(line: 323, column: 23, scope: !5663)
!5665 = !DILocation(line: 323, column: 7, scope: !5663)
!5666 = !DILocation(line: 323, column: 7, scope: !5642)
!5667 = !DILocation(line: 325, column: 8, scope: !5668)
!5668 = distinct !DILexicalBlock(scope: !5663, file: !3, line: 324, column: 39)
!5669 = !DILocation(line: 326, column: 3, scope: !5668)
!5670 = !DILocation(line: 327, column: 2, scope: !5642)
!5671 = !DILocation(line: 327, column: 20, scope: !5672)
!5672 = distinct !DILexicalBlock(scope: !5638, file: !3, line: 327, column: 13)
!5673 = !DILocation(line: 327, column: 29, scope: !5672)
!5674 = !DILocation(line: 327, column: 13, scope: !5672)
!5675 = !DILocation(line: 327, column: 13, scope: !5638)
!5676 = !DILocation(line: 329, column: 7, scope: !5677)
!5677 = distinct !DILexicalBlock(scope: !5672, file: !3, line: 328, column: 33)
!5678 = !DILocation(line: 330, column: 2, scope: !5677)
!5679 = !DILocation(line: 312, column: 17, scope: !5638)
!5680 = !DILabel(scope: !5542, name: "end", file: !3, line: 331)
!5681 = !DILocation(line: 331, column: 1, scope: !5542)
!5682 = !DILocation(line: 332, column: 16, scope: !5542)
!5683 = !DILocation(line: 332, column: 25, scope: !5542)
!5684 = !DILocation(line: 332, column: 2, scope: !5542)
!5685 = !DILocation(line: 334, column: 9, scope: !5542)
!5686 = !DILocation(line: 334, column: 2, scope: !5542)
!5687 = !DILocation(line: 335, column: 1, scope: !5542)
!5688 = distinct !DISubprogram(name: "__fswab32", scope: !5689, file: !5689, line: 57, type: !5690, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5689 = !DIFile(filename: "./include/uapi/linux/swab.h", directory: "/home/lizy2001/genbc/linux")
!5690 = !DISubroutineType(types: !5691)
!5691 = !{!175, !175}
!5692 = !DILocalVariable(name: "val", arg: 1, scope: !5688, file: !5689, line: 57, type: !175)
!5693 = !DILocation(line: 57, column: 57, scope: !5688)
!5694 = !DILocation(line: 60, column: 23, scope: !5688)
!5695 = !DILocation(line: 60, column: 9, scope: !5688)
!5696 = !DILocation(line: 60, column: 2, scope: !5688)
!5697 = distinct !DISubprogram(name: "__arch_swab32", scope: !5698, file: !5698, line: 8, type: !5690, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5698 = !DIFile(filename: "./arch/x86/include/uapi/asm/swab.h", directory: "/home/lizy2001/genbc/linux")
!5699 = !DILocalVariable(name: "val", arg: 1, scope: !5697, file: !5698, line: 8, type: !175)
!5700 = !DILocation(line: 8, column: 61, scope: !5697)
!5701 = !DILocation(line: 10, column: 38, scope: !5697)
!5702 = !DILocation(line: 10, column: 2, scope: !5697)
!5703 = !{i32 373834}
!5704 = !DILocation(line: 11, column: 9, scope: !5697)
!5705 = !DILocation(line: 11, column: 2, scope: !5697)
!5706 = distinct !DISubprogram(name: "ni6501_usb_probe", scope: !3, file: !3, line: 580, type: !4060, scopeLine: 582, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5707 = !DILocalVariable(name: "intf", arg: 1, scope: !5706, file: !3, line: 580, type: !4062)
!5708 = !DILocation(line: 580, column: 51, scope: !5706)
!5709 = !DILocalVariable(name: "id", arg: 2, scope: !5706, file: !3, line: 581, type: !4152)
!5710 = !DILocation(line: 581, column: 36, scope: !5706)
!5711 = !DILocation(line: 583, column: 32, scope: !5706)
!5712 = !DILocation(line: 583, column: 54, scope: !5706)
!5713 = !DILocation(line: 583, column: 58, scope: !5706)
!5714 = !DILocation(line: 583, column: 9, scope: !5706)
!5715 = !DILocation(line: 583, column: 2, scope: !5706)
