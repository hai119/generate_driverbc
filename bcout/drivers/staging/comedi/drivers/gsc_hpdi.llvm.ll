; ModuleID = '../bcout/drivers/staging/comedi/drivers/gsc_hpdi.llvm.bc'
source_filename = "drivers/staging/comedi/drivers/gsc_hpdi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_gsc_hpdi_driver_init6:\09\09\09"
module asm ".long\09gsc_hpdi_driver_init - .\09\09\09"
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
%struct.hpdi_private = type { i8*, [4 x i32*], [4 x i64], %struct.plx_dma_desc*, i64, i32, [256 x i32*], i32, i32, i32, i64, i32 }
%struct.plx_dma_desc = type { i32, i32, i32, i32 }

@__UNIQUE_ID___addressable_gsc_hpdi_driver_init234 = internal global i8* bitcast (i32 ()* @gsc_hpdi_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@gsc_hpdi_driver = internal global %struct.comedi_driver { %struct.comedi_driver* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), %struct.module* null, i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* null, void (%struct.comedi_device*)* @gsc_hpdi_detach, i32 (%struct.comedi_device*, i64)* @gsc_hpdi_auto_attach, i32 0, i8** null, i32 0 }, align 8, !dbg !176
@gsc_hpdi_pci_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), %struct.pci_device_id* getelementptr inbounds ([2 x %struct.pci_device_id], [2 x %struct.pci_device_id]* @gsc_hpdi_pci_table, i32 0, i32 0), i32 (%struct.pci_dev*, %struct.pci_device_id*)* @gsc_hpdi_pci_probe, void (%struct.pci_dev*)* @comedi_pci_auto_unconfig, i32 (%struct.pci_dev*, i32)* null, i32 (%struct.pci_dev*)* null, void (%struct.pci_dev*)* null, i32 (%struct.pci_dev*, i32)* null, %struct.pci_error_handlers* null, %struct.attribute_group** null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, align 8, !dbg !3992
@__exitcall_gsc_hpdi_driver_exit = internal global void ()* @gsc_hpdi_driver_exit, section ".exitcall.exit", align 8, !dbg !147
@__UNIQUE_ID_author235 = internal constant [46 x i8] c"gsc_hpdi.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1, !dbg !154
@__UNIQUE_ID_description236 = internal constant [79 x i8] c"gsc_hpdi.description=Comedi driver for General Standards PCI-HPDI32/PMC-HPDI32\00", section ".modinfo", align 1, !dbg !161
@__UNIQUE_ID_file237 = internal constant [54 x i8] c"gsc_hpdi.file=drivers/staging/comedi/drivers/gsc_hpdi\00", section ".modinfo", align 1, !dbg !166
@__UNIQUE_ID_license238 = internal constant [21 x i8] c"gsc_hpdi.license=GPL\00", section ".modinfo", align 1, !dbg !171
@.str = private unnamed_addr constant [9 x i8] c"gsc_hpdi\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"pci-hpdi32\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to remap io memory\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"unable to allocate irq %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"failed to allocate DMA buffer\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"failed to allocate DMA descriptors\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c" dma descriptors not quad-word aligned (bug)\0A\00", align 1
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@.str.7 = private unnamed_addr constant [17 x i8] c"rx fifo overrun\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"rx fifo underrun\0A\00", align 1
@gsc_hpdi_pci_table = internal constant [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4277, i32 36992, i32 4277, i32 9216, i32 0, i32 0, i64 0 }, %struct.pci_device_id zeroinitializer], align 16, !dbg !4273
@llvm.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_gsc_hpdi_driver_init234 to i8*), i8* bitcast (void ()* @gsc_hpdi_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_gsc_hpdi_driver_exit to i8*), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__UNIQUE_ID_author235, i32 0, i32 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__UNIQUE_ID_description236, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__UNIQUE_ID_file237, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__UNIQUE_ID_license238, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @gsc_hpdi_driver_init() #0 section ".init.text" !dbg !4282 {
entry:
  %call = call i32 @comedi_pci_driver_register(%struct.comedi_driver* @gsc_hpdi_driver, %struct.pci_driver* @gsc_hpdi_pci_driver) #7, !dbg !4285
  ret i32 %call, !dbg !4285
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @gsc_hpdi_driver_exit() #0 section ".exit.text" !dbg !4286 {
entry:
  call void @comedi_pci_driver_unregister(%struct.comedi_driver* @gsc_hpdi_driver, %struct.pci_driver* @gsc_hpdi_pci_driver) #7, !dbg !4287
  ret void, !dbg !4287
}

; Function Attrs: noredzone
declare dso_local void @comedi_pci_driver_unregister(%struct.comedi_driver*, %struct.pci_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_pci_driver_register(%struct.comedi_driver*, %struct.pci_driver*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gsc_hpdi_detach(%struct.comedi_device* %dev) #2 !dbg !4288 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %devpriv = alloca %struct.hpdi_private*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4289, metadata !DIExpression()), !dbg !4290
  call void @llvm.dbg.declare(metadata %struct.hpdi_private** %devpriv, metadata !4291, metadata !DIExpression()), !dbg !4320
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4321
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !4322
  %1 = load i8*, i8** %private, align 8, !dbg !4322
  %2 = bitcast i8* %1 to %struct.hpdi_private*, !dbg !4321
  store %struct.hpdi_private* %2, %struct.hpdi_private** %devpriv, align 8, !dbg !4320
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4323
  %irq = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %3, i32 0, i32 20, !dbg !4325
  %4 = load i32, i32* %irq, align 8, !dbg !4325
  %tobool = icmp ne i32 %4, 0, !dbg !4323
  br i1 %tobool, label %if.then, label %if.end, !dbg !4326

if.then:                                          ; preds = %entry
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4327
  %irq1 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 20, !dbg !4328
  %6 = load i32, i32* %irq1, align 8, !dbg !4328
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4329
  %8 = bitcast %struct.comedi_device* %7 to i8*, !dbg !4329
  %call = call i8* @free_irq(i32 %6, i8* %8) #7, !dbg !4330
  br label %if.end, !dbg !4330

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !4331
  %tobool2 = icmp ne %struct.hpdi_private* %9, null, !dbg !4331
  br i1 %tobool2, label %if.then3, label %if.end13, !dbg !4333

if.then3:                                         ; preds = %if.end
  %10 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !4334
  %plx9080_mmio = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %10, i32 0, i32 0, !dbg !4337
  %11 = load i8*, i8** %plx9080_mmio, align 8, !dbg !4337
  %tobool4 = icmp ne i8* %11, null, !dbg !4334
  br i1 %tobool4, label %if.then5, label %if.end8, !dbg !4338

if.then5:                                         ; preds = %if.then3
  %12 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !4339
  %plx9080_mmio6 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %12, i32 0, i32 0, !dbg !4341
  %13 = load i8*, i8** %plx9080_mmio6, align 8, !dbg !4341
  %add.ptr = getelementptr i8, i8* %13, i64 104, !dbg !4342
  call void @writel(i32 0, i8* %add.ptr) #7, !dbg !4343
  %14 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !4344
  %plx9080_mmio7 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %14, i32 0, i32 0, !dbg !4345
  %15 = load i8*, i8** %plx9080_mmio7, align 8, !dbg !4345
  call void @iounmap(i8* %15) #7, !dbg !4346
  br label %if.end8, !dbg !4347

if.end8:                                          ; preds = %if.then5, %if.then3
  %16 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4348
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 17, !dbg !4350
  %17 = load i8*, i8** %mmio, align 8, !dbg !4350
  %tobool9 = icmp ne i8* %17, null, !dbg !4348
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !4351

if.then10:                                        ; preds = %if.end8
  %18 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4352
  %mmio11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 17, !dbg !4353
  %19 = load i8*, i8** %mmio11, align 8, !dbg !4353
  call void @iounmap(i8* %19) #7, !dbg !4354
  br label %if.end12, !dbg !4354

if.end12:                                         ; preds = %if.then10, %if.end8
  br label %if.end13, !dbg !4355

if.end13:                                         ; preds = %if.end12, %if.end
  %20 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4356
  call void @comedi_pci_disable(%struct.comedi_device* %20) #7, !dbg !4357
  %21 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4358
  call void @gsc_hpdi_free_dma(%struct.comedi_device* %21) #7, !dbg !4359
  ret void, !dbg !4360
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gsc_hpdi_auto_attach(%struct.comedi_device* %dev, i64 %context_unused) #2 !dbg !4361 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %context_unused.addr = alloca i64, align 8
  %pcidev = alloca %struct.pci_dev*, align 8
  %devpriv = alloca %struct.hpdi_private*, align 8
  %s = alloca %struct.comedi_subdevice*, align 8
  %i = alloca i32, align 4
  %retval1 = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4362, metadata !DIExpression()), !dbg !4363
  store i64 %context_unused, i64* %context_unused.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %context_unused.addr, metadata !4364, metadata !DIExpression()), !dbg !4365
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pcidev, metadata !4366, metadata !DIExpression()), !dbg !4367
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4368
  %call = call %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device* %0) #7, !dbg !4369
  store %struct.pci_dev* %call, %struct.pci_dev** %pcidev, align 8, !dbg !4367
  call void @llvm.dbg.declare(metadata %struct.hpdi_private** %devpriv, metadata !4370, metadata !DIExpression()), !dbg !4371
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s, metadata !4372, metadata !DIExpression()), !dbg !4373
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4374, metadata !DIExpression()), !dbg !4375
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !4376, metadata !DIExpression()), !dbg !4377
  %1 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4378
  %board_name = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %1, i32 0, i32 8, !dbg !4379
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %board_name, align 8, !dbg !4380
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4381
  %call2 = call i8* @comedi_alloc_devpriv(%struct.comedi_device* %2, i64 2176) #7, !dbg !4382
  %3 = bitcast i8* %call2 to %struct.hpdi_private*, !dbg !4382
  store %struct.hpdi_private* %3, %struct.hpdi_private** %devpriv, align 8, !dbg !4383
  %4 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !4384
  %tobool = icmp ne %struct.hpdi_private* %4, null, !dbg !4384
  br i1 %tobool, label %if.end, label %if.then, !dbg !4386

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !4387
  br label %return, !dbg !4387

if.end:                                           ; preds = %entry
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4388
  %call3 = call i32 @comedi_pci_enable(%struct.comedi_device* %5) #7, !dbg !4389
  store i32 %call3, i32* %retval1, align 4, !dbg !4390
  %6 = load i32, i32* %retval1, align 4, !dbg !4391
  %tobool4 = icmp ne i32 %6, 0, !dbg !4391
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !4393

if.then5:                                         ; preds = %if.end
  %7 = load i32, i32* %retval1, align 4, !dbg !4394
  store i32 %7, i32* %retval, align 4, !dbg !4395
  br label %return, !dbg !4395

if.end6:                                          ; preds = %if.end
  %8 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4396
  call void @pci_set_master(%struct.pci_dev* %8) #7, !dbg !4397
  %9 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4398
  %call7 = call i8* @pci_ioremap_bar(%struct.pci_dev* %9, i32 0) #7, !dbg !4399
  %10 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !4400
  %plx9080_mmio = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %10, i32 0, i32 0, !dbg !4401
  store i8* %call7, i8** %plx9080_mmio, align 8, !dbg !4402
  %11 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4403
  %call8 = call i8* @pci_ioremap_bar(%struct.pci_dev* %11, i32 2) #7, !dbg !4404
  %12 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4405
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 17, !dbg !4406
  store i8* %call8, i8** %mmio, align 8, !dbg !4407
  %13 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !4408
  %plx9080_mmio9 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %13, i32 0, i32 0, !dbg !4410
  %14 = load i8*, i8** %plx9080_mmio9, align 8, !dbg !4410
  %tobool10 = icmp ne i8* %14, null, !dbg !4408
  br i1 %tobool10, label %lor.lhs.false, label %if.then13, !dbg !4411

lor.lhs.false:                                    ; preds = %if.end6
  %15 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4412
  %mmio11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 17, !dbg !4413
  %16 = load i8*, i8** %mmio11, align 8, !dbg !4413
  %tobool12 = icmp ne i8* %16, null, !dbg !4412
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !4414

if.then13:                                        ; preds = %lor.lhs.false, %if.end6
  %17 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4415
  %class_dev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 4, !dbg !4415
  %18 = load %struct.device*, %struct.device** %class_dev, align 8, !dbg !4415
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !4415
  store i32 -12, i32* %retval, align 4, !dbg !4417
  br label %return, !dbg !4417

if.end14:                                         ; preds = %lor.lhs.false
  %19 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4418
  call void @gsc_hpdi_init_plx9080(%struct.comedi_device* %19) #7, !dbg !4419
  %20 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4420
  %irq = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 43, !dbg !4422
  %21 = load i32, i32* %irq, align 4, !dbg !4422
  %22 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4423
  %board_name15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %22, i32 0, i32 8, !dbg !4424
  %23 = load i8*, i8** %board_name15, align 8, !dbg !4424
  %24 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4425
  %25 = bitcast %struct.comedi_device* %24 to i8*, !dbg !4425
  %call16 = call i32 @request_irq(i32 %21, i32 (i32, i8*)* @gsc_hpdi_interrupt, i64 128, i8* %23, i8* %25) #7, !dbg !4426
  %tobool17 = icmp ne i32 %call16, 0, !dbg !4426
  br i1 %tobool17, label %if.then18, label %if.end21, !dbg !4427

if.then18:                                        ; preds = %if.end14
  %26 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4428
  %class_dev19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %26, i32 0, i32 4, !dbg !4428
  %27 = load %struct.device*, %struct.device** %class_dev19, align 8, !dbg !4428
  %28 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4428
  %irq20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 43, !dbg !4428
  %29 = load i32, i32* %irq20, align 4, !dbg !4428
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %29) #8, !dbg !4428
  store i32 -22, i32* %retval, align 4, !dbg !4430
  br label %return, !dbg !4430

if.end21:                                         ; preds = %if.end14
  %30 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4431
  %irq22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 43, !dbg !4432
  %31 = load i32, i32* %irq22, align 4, !dbg !4432
  %32 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4433
  %irq23 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %32, i32 0, i32 20, !dbg !4434
  store i32 %31, i32* %irq23, align 8, !dbg !4435
  store i32 0, i32* %i, align 4, !dbg !4436
  br label %for.cond, !dbg !4438

for.cond:                                         ; preds = %for.inc, %if.end21
  %33 = load i32, i32* %i, align 4, !dbg !4439
  %cmp = icmp slt i32 %33, 4, !dbg !4441
  br i1 %cmp, label %for.body, label %for.end, !dbg !4442

for.body:                                         ; preds = %for.cond
  %34 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4443
  %dev24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 41, !dbg !4445
  %35 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !4446
  %dio_buffer_phys_addr = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %35, i32 0, i32 2, !dbg !4447
  %36 = load i32, i32* %i, align 4, !dbg !4448
  %idxprom = sext i32 %36 to i64, !dbg !4446
  %arrayidx = getelementptr [4 x i64], [4 x i64]* %dio_buffer_phys_addr, i64 0, i64 %idxprom, !dbg !4446
  %call25 = call i8* @dma_alloc_coherent(%struct.device* %dev24, i64 65536, i64* %arrayidx, i32 3264) #7, !dbg !4449
  %37 = bitcast i8* %call25 to i32*, !dbg !4449
  %38 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !4450
  %dio_buffer = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %38, i32 0, i32 1, !dbg !4451
  %39 = load i32, i32* %i, align 4, !dbg !4452
  %idxprom26 = sext i32 %39 to i64, !dbg !4450
  %arrayidx27 = getelementptr [4 x i32*], [4 x i32*]* %dio_buffer, i64 0, i64 %idxprom26, !dbg !4450
  store i32* %37, i32** %arrayidx27, align 8, !dbg !4453
  %40 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !4454
  %dio_buffer28 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %40, i32 0, i32 1, !dbg !4456
  %41 = load i32, i32* %i, align 4, !dbg !4457
  %idxprom29 = sext i32 %41 to i64, !dbg !4454
  %arrayidx30 = getelementptr [4 x i32*], [4 x i32*]* %dio_buffer28, i64 0, i64 %idxprom29, !dbg !4454
  %42 = load i32*, i32** %arrayidx30, align 8, !dbg !4454
  %tobool31 = icmp ne i32* %42, null, !dbg !4454
  br i1 %tobool31, label %if.end34, label %if.then32, !dbg !4458

if.then32:                                        ; preds = %for.body
  %43 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4459
  %class_dev33 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %43, i32 0, i32 4, !dbg !4459
  %44 = load %struct.device*, %struct.device** %class_dev33, align 8, !dbg !4459
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %44, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !4459
  store i32 -12, i32* %retval, align 4, !dbg !4461
  br label %return, !dbg !4461

if.end34:                                         ; preds = %for.body
  br label %for.inc, !dbg !4462

for.inc:                                          ; preds = %if.end34
  %45 = load i32, i32* %i, align 4, !dbg !4463
  %inc = add i32 %45, 1, !dbg !4463
  store i32 %inc, i32* %i, align 4, !dbg !4463
  br label %for.cond, !dbg !4464, !llvm.loop !4465

for.end:                                          ; preds = %for.cond
  %46 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4467
  %dev35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 41, !dbg !4468
  %47 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !4469
  %dma_desc_phys_addr = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %47, i32 0, i32 4, !dbg !4470
  %call36 = call i8* @dma_alloc_coherent(%struct.device* %dev35, i64 4096, i64* %dma_desc_phys_addr, i32 3264) #7, !dbg !4471
  %48 = bitcast i8* %call36 to %struct.plx_dma_desc*, !dbg !4471
  %49 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !4472
  %dma_desc = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %49, i32 0, i32 3, !dbg !4473
  store %struct.plx_dma_desc* %48, %struct.plx_dma_desc** %dma_desc, align 8, !dbg !4474
  %50 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !4475
  %dma_desc37 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %50, i32 0, i32 3, !dbg !4477
  %51 = load %struct.plx_dma_desc*, %struct.plx_dma_desc** %dma_desc37, align 8, !dbg !4477
  %tobool38 = icmp ne %struct.plx_dma_desc* %51, null, !dbg !4475
  br i1 %tobool38, label %if.end41, label %if.then39, !dbg !4478

if.then39:                                        ; preds = %for.end
  %52 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4479
  %class_dev40 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %52, i32 0, i32 4, !dbg !4479
  %53 = load %struct.device*, %struct.device** %class_dev40, align 8, !dbg !4479
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %53, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !4479
  store i32 -12, i32* %retval, align 4, !dbg !4481
  br label %return, !dbg !4481

if.end41:                                         ; preds = %for.end
  %54 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !4482
  %dma_desc_phys_addr42 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %54, i32 0, i32 4, !dbg !4484
  %55 = load i64, i64* %dma_desc_phys_addr42, align 8, !dbg !4484
  %and = and i64 %55, 15, !dbg !4485
  %tobool43 = icmp ne i64 %and, 0, !dbg !4485
  br i1 %tobool43, label %if.then44, label %if.end46, !dbg !4486

if.then44:                                        ; preds = %if.end41
  %56 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4487
  %class_dev45 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %56, i32 0, i32 4, !dbg !4487
  %57 = load %struct.device*, %struct.device** %class_dev45, align 8, !dbg !4487
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %57, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0)) #8, !dbg !4487
  store i32 -5, i32* %retval, align 4, !dbg !4489
  br label %return, !dbg !4489

if.end46:                                         ; preds = %if.end41
  %58 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4490
  %call47 = call i32 @gsc_hpdi_setup_dma_descriptors(%struct.comedi_device* %58, i32 4096) #7, !dbg !4491
  store i32 %call47, i32* %retval1, align 4, !dbg !4492
  %59 = load i32, i32* %retval1, align 4, !dbg !4493
  %cmp48 = icmp slt i32 %59, 0, !dbg !4495
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !4496

if.then49:                                        ; preds = %if.end46
  %60 = load i32, i32* %retval1, align 4, !dbg !4497
  store i32 %60, i32* %retval, align 4, !dbg !4498
  br label %return, !dbg !4498

if.end50:                                         ; preds = %if.end46
  %61 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4499
  %call51 = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %61, i32 1) #7, !dbg !4500
  store i32 %call51, i32* %retval1, align 4, !dbg !4501
  %62 = load i32, i32* %retval1, align 4, !dbg !4502
  %tobool52 = icmp ne i32 %62, 0, !dbg !4502
  br i1 %tobool52, label %if.then53, label %if.end54, !dbg !4504

if.then53:                                        ; preds = %if.end50
  %63 = load i32, i32* %retval1, align 4, !dbg !4505
  store i32 %63, i32* %retval, align 4, !dbg !4506
  br label %return, !dbg !4506

if.end54:                                         ; preds = %if.end50
  %64 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4507
  %subdevices = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %64, i32 0, i32 16, !dbg !4508
  %65 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices, align 8, !dbg !4508
  %arrayidx55 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %65, i64 0, !dbg !4507
  store %struct.comedi_subdevice* %arrayidx55, %struct.comedi_subdevice** %s, align 8, !dbg !4509
  %66 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4510
  %67 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4511
  %read_subdev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %67, i32 0, i32 21, !dbg !4512
  store %struct.comedi_subdevice* %66, %struct.comedi_subdevice** %read_subdev, align 8, !dbg !4513
  %68 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4514
  %type = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %68, i32 0, i32 2, !dbg !4515
  store i32 5, i32* %type, align 4, !dbg !4516
  %69 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4517
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %69, i32 0, i32 4, !dbg !4518
  store i32 268664832, i32* %subdev_flags, align 4, !dbg !4519
  %70 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4520
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %70, i32 0, i32 3, !dbg !4521
  store i32 32, i32* %n_chan, align 8, !dbg !4522
  %71 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4523
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %71, i32 0, i32 5, !dbg !4524
  store i32 32, i32* %len_chanlist, align 8, !dbg !4525
  %72 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4526
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %72, i32 0, i32 13, !dbg !4527
  store i32 1, i32* %maxdata, align 8, !dbg !4528
  %73 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4529
  %range_table = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %73, i32 0, i32 15, !dbg !4530
  store %struct.comedi_lrange* @range_unipolar5, %struct.comedi_lrange** %range_table, align 8, !dbg !4531
  %74 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4532
  %insn_config = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %74, i32 0, i32 21, !dbg !4533
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @gsc_hpdi_dio_insn_config, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_config, align 8, !dbg !4534
  %75 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4535
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %75, i32 0, i32 22, !dbg !4536
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @gsc_hpdi_cmd, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)** %do_cmd, align 8, !dbg !4537
  %76 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4538
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %76, i32 0, i32 23, !dbg !4539
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @gsc_hpdi_cmd_test, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)** %do_cmdtest, align 8, !dbg !4540
  %77 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4541
  %cancel = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %77, i32 0, i32 25, !dbg !4542
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @gsc_hpdi_cancel, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)** %cancel, align 8, !dbg !4543
  %78 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4544
  %call56 = call i32 @gsc_hpdi_init(%struct.comedi_device* %78) #7, !dbg !4545
  store i32 %call56, i32* %retval, align 4, !dbg !4546
  br label %return, !dbg !4546

return:                                           ; preds = %if.end54, %if.then53, %if.then49, %if.then44, %if.then39, %if.then32, %if.then18, %if.then13, %if.then5, %if.then
  %79 = load i32, i32* %retval, align 4, !dbg !4547
  ret i32 %79, !dbg !4547
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noredzone
declare dso_local i8* @free_irq(i32, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writel(i32 %val, i8* %addr) #2 !dbg !4548 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !4554, metadata !DIExpression()), !dbg !4555
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !4556, metadata !DIExpression()), !dbg !4555
  %0 = load i32, i32* %val.addr, align 4, !dbg !4555
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !4555
  %2 = bitcast i8* %1 to i32*, !dbg !4555
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #6, !dbg !4555, !srcloc !4557
  ret void, !dbg !4555
}

; Function Attrs: noredzone
declare dso_local void @iounmap(i8*) #1

; Function Attrs: noredzone
declare dso_local void @comedi_pci_disable(%struct.comedi_device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gsc_hpdi_free_dma(%struct.comedi_device* %dev) #2 !dbg !4558 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %pcidev = alloca %struct.pci_dev*, align 8
  %devpriv = alloca %struct.hpdi_private*, align 8
  %i = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4559, metadata !DIExpression()), !dbg !4560
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pcidev, metadata !4561, metadata !DIExpression()), !dbg !4562
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4563
  %call = call %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device* %0) #7, !dbg !4564
  store %struct.pci_dev* %call, %struct.pci_dev** %pcidev, align 8, !dbg !4562
  call void @llvm.dbg.declare(metadata %struct.hpdi_private** %devpriv, metadata !4565, metadata !DIExpression()), !dbg !4566
  %1 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4567
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %1, i32 0, i32 3, !dbg !4568
  %2 = load i8*, i8** %private, align 8, !dbg !4568
  %3 = bitcast i8* %2 to %struct.hpdi_private*, !dbg !4567
  store %struct.hpdi_private* %3, %struct.hpdi_private** %devpriv, align 8, !dbg !4566
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4569, metadata !DIExpression()), !dbg !4570
  %4 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !4571
  %tobool = icmp ne %struct.hpdi_private* %4, null, !dbg !4571
  br i1 %tobool, label %if.end, label %if.then, !dbg !4573

if.then:                                          ; preds = %entry
  br label %if.end14, !dbg !4574

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !4575
  br label %for.cond, !dbg !4577

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4, !dbg !4578
  %cmp = icmp slt i32 %5, 4, !dbg !4580
  br i1 %cmp, label %for.body, label %for.end, !dbg !4581

for.body:                                         ; preds = %for.cond
  %6 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !4582
  %dio_buffer = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %6, i32 0, i32 1, !dbg !4585
  %7 = load i32, i32* %i, align 4, !dbg !4586
  %idxprom = sext i32 %7 to i64, !dbg !4582
  %arrayidx = getelementptr [4 x i32*], [4 x i32*]* %dio_buffer, i64 0, i64 %idxprom, !dbg !4582
  %8 = load i32*, i32** %arrayidx, align 8, !dbg !4582
  %tobool1 = icmp ne i32* %8, null, !dbg !4582
  br i1 %tobool1, label %if.then2, label %if.end9, !dbg !4587

if.then2:                                         ; preds = %for.body
  %9 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4588
  %dev3 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 41, !dbg !4589
  %10 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !4590
  %dio_buffer4 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %10, i32 0, i32 1, !dbg !4591
  %11 = load i32, i32* %i, align 4, !dbg !4592
  %idxprom5 = sext i32 %11 to i64, !dbg !4590
  %arrayidx6 = getelementptr [4 x i32*], [4 x i32*]* %dio_buffer4, i64 0, i64 %idxprom5, !dbg !4590
  %12 = load i32*, i32** %arrayidx6, align 8, !dbg !4590
  %13 = bitcast i32* %12 to i8*, !dbg !4590
  %14 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !4593
  %dio_buffer_phys_addr = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %14, i32 0, i32 2, !dbg !4594
  %15 = load i32, i32* %i, align 4, !dbg !4595
  %idxprom7 = sext i32 %15 to i64, !dbg !4593
  %arrayidx8 = getelementptr [4 x i64], [4 x i64]* %dio_buffer_phys_addr, i64 0, i64 %idxprom7, !dbg !4593
  %16 = load i64, i64* %arrayidx8, align 8, !dbg !4593
  call void @dma_free_coherent(%struct.device* %dev3, i64 65536, i8* %13, i64 %16) #7, !dbg !4596
  br label %if.end9, !dbg !4596

if.end9:                                          ; preds = %if.then2, %for.body
  br label %for.inc, !dbg !4597

for.inc:                                          ; preds = %if.end9
  %17 = load i32, i32* %i, align 4, !dbg !4598
  %inc = add i32 %17, 1, !dbg !4598
  store i32 %inc, i32* %i, align 4, !dbg !4598
  br label %for.cond, !dbg !4599, !llvm.loop !4600

for.end:                                          ; preds = %for.cond
  %18 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !4602
  %dma_desc = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %18, i32 0, i32 3, !dbg !4604
  %19 = load %struct.plx_dma_desc*, %struct.plx_dma_desc** %dma_desc, align 8, !dbg !4604
  %tobool10 = icmp ne %struct.plx_dma_desc* %19, null, !dbg !4602
  br i1 %tobool10, label %if.then11, label %if.end14, !dbg !4605

if.then11:                                        ; preds = %for.end
  %20 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4606
  %dev12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 41, !dbg !4607
  %21 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !4608
  %dma_desc13 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %21, i32 0, i32 3, !dbg !4609
  %22 = load %struct.plx_dma_desc*, %struct.plx_dma_desc** %dma_desc13, align 8, !dbg !4609
  %23 = bitcast %struct.plx_dma_desc* %22 to i8*, !dbg !4608
  %24 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !4610
  %dma_desc_phys_addr = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %24, i32 0, i32 4, !dbg !4611
  %25 = load i64, i64* %dma_desc_phys_addr, align 8, !dbg !4611
  call void @dma_free_coherent(%struct.device* %dev12, i64 4096, i8* %23, i64 %25) #7, !dbg !4612
  br label %if.end14, !dbg !4612

if.end14:                                         ; preds = %if.then, %if.then11, %for.end
  ret void, !dbg !4613
}

; Function Attrs: noredzone
declare dso_local %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dma_free_coherent(%struct.device* %dev, i64 %size, i8* %cpu_addr, i64 %dma_handle) #2 !dbg !4614 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %cpu_addr.addr = alloca i8*, align 8
  %dma_handle.addr = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4618, metadata !DIExpression()), !dbg !4619
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4620, metadata !DIExpression()), !dbg !4621
  store i8* %cpu_addr, i8** %cpu_addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %cpu_addr.addr, metadata !4622, metadata !DIExpression()), !dbg !4623
  store i64 %dma_handle, i64* %dma_handle.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dma_handle.addr, metadata !4624, metadata !DIExpression()), !dbg !4625
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4626
  %1 = load i64, i64* %size.addr, align 8, !dbg !4627
  %2 = load i8*, i8** %cpu_addr.addr, align 8, !dbg !4628
  %3 = load i64, i64* %dma_handle.addr, align 8, !dbg !4629
  call void @dma_free_attrs(%struct.device* %0, i64 %1, i8* %2, i64 %3, i64 0) #7, !dbg !4630
  ret void, !dbg !4631
}

; Function Attrs: noredzone
declare dso_local void @dma_free_attrs(%struct.device*, i64, i8*, i64, i64) #1

; Function Attrs: noredzone
declare dso_local i8* @comedi_alloc_devpriv(%struct.comedi_device*, i64) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_pci_enable(%struct.comedi_device*) #1

; Function Attrs: noredzone
declare dso_local void @pci_set_master(%struct.pci_dev*) #1

; Function Attrs: noredzone
declare dso_local i8* @pci_ioremap_bar(%struct.pci_dev*, i32) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gsc_hpdi_init_plx9080(%struct.comedi_device* %dev) #2 !dbg !4632 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %devpriv = alloca %struct.hpdi_private*, align 8
  %bits = alloca i32, align 4
  %plx_iobase = alloca i8*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4633, metadata !DIExpression()), !dbg !4634
  call void @llvm.dbg.declare(metadata %struct.hpdi_private** %devpriv, metadata !4635, metadata !DIExpression()), !dbg !4636
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4637
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !4638
  %1 = load i8*, i8** %private, align 8, !dbg !4638
  %2 = bitcast i8* %1 to %struct.hpdi_private*, !dbg !4637
  store %struct.hpdi_private* %2, %struct.hpdi_private** %devpriv, align 8, !dbg !4636
  call void @llvm.dbg.declare(metadata i32* %bits, metadata !4639, metadata !DIExpression()), !dbg !4640
  call void @llvm.dbg.declare(metadata i8** %plx_iobase, metadata !4641, metadata !DIExpression()), !dbg !4642
  %3 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !4643
  %plx9080_mmio = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %3, i32 0, i32 0, !dbg !4644
  %4 = load i8*, i8** %plx9080_mmio, align 8, !dbg !4644
  store i8* %4, i8** %plx_iobase, align 8, !dbg !4642
  store i32 0, i32* %bits, align 4, !dbg !4645
  %5 = load i32, i32* %bits, align 4, !dbg !4646
  %6 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !4647
  %plx9080_mmio1 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %6, i32 0, i32 0, !dbg !4648
  %7 = load i8*, i8** %plx9080_mmio1, align 8, !dbg !4648
  %add.ptr = getelementptr i8, i8* %7, i64 12, !dbg !4649
  call void @writel(i32 %5, i8* %add.ptr) #7, !dbg !4650
  %8 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !4651
  %plx9080_mmio2 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %8, i32 0, i32 0, !dbg !4652
  %9 = load i8*, i8** %plx9080_mmio2, align 8, !dbg !4652
  %add.ptr3 = getelementptr i8, i8* %9, i64 104, !dbg !4653
  call void @writel(i32 0, i8* %add.ptr3) #7, !dbg !4654
  %10 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4655
  call void @gsc_hpdi_abort_dma(%struct.comedi_device* %10, i32 0) #7, !dbg !4656
  %11 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4657
  call void @gsc_hpdi_abort_dma(%struct.comedi_device* %11, i32 1) #7, !dbg !4658
  store i32 0, i32* %bits, align 4, !dbg !4659
  %12 = load i32, i32* %bits, align 4, !dbg !4660
  %conv = zext i32 %12 to i64, !dbg !4660
  %or = or i64 %conv, 64, !dbg !4660
  %conv4 = trunc i64 %or to i32, !dbg !4660
  store i32 %conv4, i32* %bits, align 4, !dbg !4660
  %13 = load i32, i32* %bits, align 4, !dbg !4661
  %conv5 = zext i32 %13 to i64, !dbg !4661
  %or6 = or i64 %conv5, 512, !dbg !4661
  %conv7 = trunc i64 %or6 to i32, !dbg !4661
  store i32 %conv7, i32* %bits, align 4, !dbg !4661
  %14 = load i32, i32* %bits, align 4, !dbg !4662
  %conv8 = zext i32 %14 to i64, !dbg !4662
  %or9 = or i64 %conv8, 1024, !dbg !4662
  %conv10 = trunc i64 %or9 to i32, !dbg !4662
  store i32 %conv10, i32* %bits, align 4, !dbg !4662
  %15 = load i32, i32* %bits, align 4, !dbg !4663
  %conv11 = zext i32 %15 to i64, !dbg !4663
  %or12 = or i64 %conv11, 2048, !dbg !4663
  %conv13 = trunc i64 %or12 to i32, !dbg !4663
  store i32 %conv13, i32* %bits, align 4, !dbg !4663
  %16 = load i32, i32* %bits, align 4, !dbg !4664
  %conv14 = zext i32 %16 to i64, !dbg !4664
  %or15 = or i64 %conv14, 131072, !dbg !4664
  %conv16 = trunc i64 %or15 to i32, !dbg !4664
  store i32 %conv16, i32* %bits, align 4, !dbg !4664
  %17 = load i32, i32* %bits, align 4, !dbg !4665
  %conv17 = zext i32 %17 to i64, !dbg !4665
  %or18 = or i64 %conv17, 4096, !dbg !4665
  %conv19 = trunc i64 %or18 to i32, !dbg !4665
  store i32 %conv19, i32* %bits, align 4, !dbg !4665
  %18 = load i32, i32* %bits, align 4, !dbg !4666
  %conv20 = zext i32 %18 to i64, !dbg !4666
  %or21 = or i64 %conv20, 256, !dbg !4666
  %conv22 = trunc i64 %or21 to i32, !dbg !4666
  store i32 %conv22, i32* %bits, align 4, !dbg !4666
  %19 = load i32, i32* %bits, align 4, !dbg !4667
  %conv23 = zext i32 %19 to i64, !dbg !4667
  %or24 = or i64 %conv23, 2, !dbg !4667
  %conv25 = trunc i64 %or24 to i32, !dbg !4667
  store i32 %conv25, i32* %bits, align 4, !dbg !4667
  %20 = load i32, i32* %bits, align 4, !dbg !4668
  %21 = load i8*, i8** %plx_iobase, align 8, !dbg !4669
  %add.ptr26 = getelementptr i8, i8* %21, i64 128, !dbg !4670
  call void @writel(i32 %20, i8* %add.ptr26) #7, !dbg !4671
  ret void, !dbg !4672
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @request_irq(i32 %irq, i32 (i32, i8*)* %handler, i64 %flags, i8* %name, i8* %dev) #2 !dbg !4673 {
entry:
  %irq.addr = alloca i32, align 4
  %handler.addr = alloca i32 (i32, i8*)*, align 8
  %flags.addr = alloca i64, align 8
  %name.addr = alloca i8*, align 8
  %dev.addr = alloca i8*, align 8
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !4681, metadata !DIExpression()), !dbg !4682
  store i32 (i32, i8*)* %handler, i32 (i32, i8*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i32, i8*)** %handler.addr, metadata !4683, metadata !DIExpression()), !dbg !4684
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !4685, metadata !DIExpression()), !dbg !4686
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !4687, metadata !DIExpression()), !dbg !4688
  store i8* %dev, i8** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev.addr, metadata !4689, metadata !DIExpression()), !dbg !4690
  %0 = load i32, i32* %irq.addr, align 4, !dbg !4691
  %1 = load i32 (i32, i8*)*, i32 (i32, i8*)** %handler.addr, align 8, !dbg !4692
  %2 = load i64, i64* %flags.addr, align 8, !dbg !4693
  %3 = load i8*, i8** %name.addr, align 8, !dbg !4694
  %4 = load i8*, i8** %dev.addr, align 8, !dbg !4695
  %call = call i32 @request_threaded_irq(i32 %0, i32 (i32, i8*)* %1, i32 (i32, i8*)* null, i64 %2, i8* %3, i8* %4) #7, !dbg !4696
  ret i32 %call, !dbg !4697
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gsc_hpdi_interrupt(i32 %irq, i8* %d) #2 !dbg !4698 {
entry:
  %lock.addr.i132 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i132, metadata !4699, metadata !DIExpression()), !dbg !4704
  %flags.addr.i133 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i133, metadata !4706, metadata !DIExpression()), !dbg !4707
  %tmp.i134 = alloca i32, align 4
  %tmp8.i135 = alloca i32, align 4
  %lock.addr.i130 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i130, metadata !4708, metadata !DIExpression()), !dbg !4713
  %lock.addr.i128 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i128, metadata !4699, metadata !DIExpression()), !dbg !4720
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4706, metadata !DIExpression()), !dbg !4722
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4708, metadata !DIExpression()), !dbg !4723
  %retval = alloca i32, align 4
  %irq.addr = alloca i32, align 4
  %d.addr = alloca i8*, align 8
  %dev = alloca %struct.comedi_device*, align 8
  %devpriv = alloca %struct.hpdi_private*, align 8
  %s = alloca %struct.comedi_subdevice*, align 8
  %async = alloca %struct.comedi_async*, align 8
  %hpdi_intr_status = alloca i32, align 4
  %hpdi_board_status = alloca i32, align 4
  %plx_status = alloca i32, align 4
  %plx_bits = alloca i32, align 4
  %dma0_status = alloca i8, align 1
  %dma1_status = alloca i8, align 1
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy21 = alloca i64, align 8
  %__dummy222 = alloca i64, align 8
  %tmp25 = alloca i32, align 4
  %__dummy57 = alloca i64, align 8
  %__dummy258 = alloca i64, align 8
  %tmp61 = alloca i32, align 4
  %__dummy65 = alloca i64, align 8
  %__dummy266 = alloca i64, align 8
  %tmp69 = alloca i32, align 4
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !4730, metadata !DIExpression()), !dbg !4731
  store i8* %d, i8** %d.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %d.addr, metadata !4732, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev, metadata !4734, metadata !DIExpression()), !dbg !4735
  %0 = load i8*, i8** %d.addr, align 8, !dbg !4736
  %1 = bitcast i8* %0 to %struct.comedi_device*, !dbg !4736
  store %struct.comedi_device* %1, %struct.comedi_device** %dev, align 8, !dbg !4735
  call void @llvm.dbg.declare(metadata %struct.hpdi_private** %devpriv, metadata !4737, metadata !DIExpression()), !dbg !4738
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4739
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %2, i32 0, i32 3, !dbg !4740
  %3 = load i8*, i8** %private, align 8, !dbg !4740
  %4 = bitcast i8* %3 to %struct.hpdi_private*, !dbg !4739
  store %struct.hpdi_private* %4, %struct.hpdi_private** %devpriv, align 8, !dbg !4738
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s, metadata !4741, metadata !DIExpression()), !dbg !4742
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4743
  %read_subdev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 21, !dbg !4744
  %6 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %read_subdev, align 8, !dbg !4744
  store %struct.comedi_subdevice* %6, %struct.comedi_subdevice** %s, align 8, !dbg !4742
  call void @llvm.dbg.declare(metadata %struct.comedi_async** %async, metadata !4745, metadata !DIExpression()), !dbg !4746
  %7 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4747
  %async1 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %7, i32 0, i32 7, !dbg !4748
  %8 = load %struct.comedi_async*, %struct.comedi_async** %async1, align 8, !dbg !4748
  store %struct.comedi_async* %8, %struct.comedi_async** %async, align 8, !dbg !4746
  call void @llvm.dbg.declare(metadata i32* %hpdi_intr_status, metadata !4749, metadata !DIExpression()), !dbg !4750
  call void @llvm.dbg.declare(metadata i32* %hpdi_board_status, metadata !4751, metadata !DIExpression()), !dbg !4752
  call void @llvm.dbg.declare(metadata i32* %plx_status, metadata !4753, metadata !DIExpression()), !dbg !4754
  call void @llvm.dbg.declare(metadata i32* %plx_bits, metadata !4755, metadata !DIExpression()), !dbg !4756
  call void @llvm.dbg.declare(metadata i8* %dma0_status, metadata !4757, metadata !DIExpression()), !dbg !4758
  call void @llvm.dbg.declare(metadata i8* %dma1_status, metadata !4759, metadata !DIExpression()), !dbg !4760
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4761, metadata !DIExpression()), !dbg !4762
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4763
  %attached = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 10, !dbg !4765
  %bf.load = load i8, i8* %attached, align 8, !dbg !4765
  %bf.clear = and i8 %bf.load, 1, !dbg !4765
  %bf.cast = zext i8 %bf.clear to i32, !dbg !4765
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !4763
  br i1 %tobool, label %if.end, label %if.then, !dbg !4766

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4767
  br label %return, !dbg !4767

if.end:                                           ; preds = %entry
  %10 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !4768
  %plx9080_mmio = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %10, i32 0, i32 0, !dbg !4769
  %11 = load i8*, i8** %plx9080_mmio, align 8, !dbg !4769
  %add.ptr = getelementptr i8, i8* %11, i64 104, !dbg !4770
  %call = call i32 @readl(i8* %add.ptr) #7, !dbg !4771
  store i32 %call, i32* %plx_status, align 4, !dbg !4772
  %12 = load i32, i32* %plx_status, align 4, !dbg !4773
  %conv = zext i32 %12 to i64, !dbg !4773
  %and = and i64 %conv, 6324224, !dbg !4775
  %cmp = icmp eq i64 %and, 0, !dbg !4776
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !4777

if.then3:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4778
  br label %return, !dbg !4778

if.end4:                                          ; preds = %if.end
  %13 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4779
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 17, !dbg !4780
  %14 = load i8*, i8** %mmio, align 8, !dbg !4780
  %add.ptr5 = getelementptr i8, i8* %14, i64 52, !dbg !4781
  %call6 = call i32 @readl(i8* %add.ptr5) #7, !dbg !4782
  store i32 %call6, i32* %hpdi_intr_status, align 4, !dbg !4783
  %15 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4784
  %mmio7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 17, !dbg !4785
  %16 = load i8*, i8** %mmio7, align 8, !dbg !4785
  %add.ptr8 = getelementptr i8, i8* %16, i64 8, !dbg !4786
  %call9 = call i32 @readl(i8* %add.ptr8) #7, !dbg !4787
  store i32 %call9, i32* %hpdi_board_status, align 4, !dbg !4788
  %17 = load i32, i32* %hpdi_intr_status, align 4, !dbg !4789
  %tobool10 = icmp ne i32 %17, 0, !dbg !4789
  br i1 %tobool10, label %if.then11, label %if.end14, !dbg !4791

if.then11:                                        ; preds = %if.end4
  %18 = load i32, i32* %hpdi_intr_status, align 4, !dbg !4792
  %19 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4793
  %mmio12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %19, i32 0, i32 17, !dbg !4794
  %20 = load i8*, i8** %mmio12, align 8, !dbg !4794
  %add.ptr13 = getelementptr i8, i8* %20, i64 52, !dbg !4795
  call void @writel(i32 %18, i8* %add.ptr13) #7, !dbg !4796
  br label %if.end14, !dbg !4796

if.end14:                                         ; preds = %if.then11, %if.end4
  br label %do.body, !dbg !4797

do.body:                                          ; preds = %if.end14
  br label %do.body15, !dbg !4798

do.body15:                                        ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4799, metadata !DIExpression()), !dbg !4801
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4802, metadata !DIExpression()), !dbg !4801
  %cmp16 = icmp eq i64* %__dummy, %__dummy2, !dbg !4801
  %conv17 = zext i1 %cmp16 to i32, !dbg !4801
  store i32 1, i32* %tmp, align 4, !dbg !4801
  %21 = load i32, i32* %tmp, align 4, !dbg !4801
  br label %do.body18, !dbg !4803

do.body18:                                        ; preds = %do.body15
  br label %do.body19, !dbg !4804

do.body19:                                        ; preds = %do.body18
  br label %do.body20, !dbg !4805

do.body20:                                        ; preds = %do.body19
  call void @llvm.dbg.declare(metadata i64* %__dummy21, metadata !4807, metadata !DIExpression()), !dbg !4810
  call void @llvm.dbg.declare(metadata i64* %__dummy222, metadata !4811, metadata !DIExpression()), !dbg !4810
  %cmp23 = icmp eq i64* %__dummy21, %__dummy222, !dbg !4810
  %conv24 = zext i1 %cmp23 to i32, !dbg !4810
  store i32 1, i32* %tmp25, align 4, !dbg !4810
  %22 = load i32, i32* %tmp25, align 4, !dbg !4810
  %call26 = call i64 @arch_local_irq_save() #7, !dbg !4812
  store i64 %call26, i64* %flags, align 8, !dbg !4812
  br label %do.end, !dbg !4812

do.end:                                           ; preds = %do.body20
  br label %do.end27, !dbg !4805

do.end27:                                         ; preds = %do.end
  br label %do.body28, !dbg !4804

do.body28:                                        ; preds = %do.end27
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4813, !srcloc !4814
  br label %do.body29, !dbg !4813

do.body29:                                        ; preds = %do.body28
  %23 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4815
  %spinlock = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %23, i32 0, i32 11, !dbg !4815
  store %struct.spinlock* %spinlock, %struct.spinlock** %lock.addr.i, align 8
  %24 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4816
  %25 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %24, i32 0, i32 0, !dbg !4817
  %rlock.i = bitcast %union.anon.3* %25 to %struct.raw_spinlock*, !dbg !4817
  br label %do.end31, !dbg !4815

do.end31:                                         ; preds = %do.body29
  br label %do.end32, !dbg !4813

do.end32:                                         ; preds = %do.end31
  br label %do.end33, !dbg !4804

do.end33:                                         ; preds = %do.end32
  br label %do.end34, !dbg !4803

do.end34:                                         ; preds = %do.end33
  br label %do.end35, !dbg !4798

do.end35:                                         ; preds = %do.end34
  %26 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !4818
  %plx9080_mmio36 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %26, i32 0, i32 0, !dbg !4819
  %27 = load i8*, i8** %plx9080_mmio36, align 8, !dbg !4819
  %add.ptr37 = getelementptr i8, i8* %27, i64 168, !dbg !4820
  %call38 = call zeroext i8 @readb(i8* %add.ptr37) #7, !dbg !4821
  store i8 %call38, i8* %dma0_status, align 1, !dbg !4822
  %28 = load i32, i32* %plx_status, align 4, !dbg !4823
  %conv39 = zext i32 %28 to i64, !dbg !4823
  %and40 = and i64 %conv39, 2097152, !dbg !4825
  %tobool41 = icmp ne i64 %and40, 0, !dbg !4825
  br i1 %tobool41, label %if.then42, label %if.end53, !dbg !4826

if.then42:                                        ; preds = %do.end35
  %29 = load i8, i8* %dma0_status, align 1, !dbg !4827
  %conv43 = zext i8 %29 to i64, !dbg !4827
  %and44 = and i64 %conv43, 1, !dbg !4829
  %or = or i64 %and44, 8, !dbg !4830
  %conv45 = trunc i64 %or to i8, !dbg !4831
  %30 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !4832
  %plx9080_mmio46 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %30, i32 0, i32 0, !dbg !4833
  %31 = load i8*, i8** %plx9080_mmio46, align 8, !dbg !4833
  %add.ptr47 = getelementptr i8, i8* %31, i64 168, !dbg !4834
  call void @writeb(i8 zeroext %conv45, i8* %add.ptr47) #7, !dbg !4835
  %32 = load i8, i8* %dma0_status, align 1, !dbg !4836
  %conv48 = zext i8 %32 to i64, !dbg !4836
  %and49 = and i64 %conv48, 1, !dbg !4838
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4838
  br i1 %tobool50, label %if.then51, label %if.end52, !dbg !4839

if.then51:                                        ; preds = %if.then42
  %33 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4840
  call void @gsc_hpdi_drain_dma(%struct.comedi_device* %33, i32 0) #7, !dbg !4841
  br label %if.end52, !dbg !4841

if.end52:                                         ; preds = %if.then51, %if.then42
  br label %if.end53, !dbg !4842

if.end53:                                         ; preds = %if.end52, %do.end35
  %34 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4843
  %spinlock54 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %34, i32 0, i32 11, !dbg !4844
  %35 = load i64, i64* %flags, align 8, !dbg !4845
  store %struct.spinlock* %spinlock54, %struct.spinlock** %lock.addr.i128, align 8
  store i64 %35, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !240, metadata !4846, metadata !DIExpression()) #6, !dbg !4849
  call void @llvm.dbg.declare(metadata !240, metadata !4850, metadata !DIExpression()) #6, !dbg !4849
  store i32 1, i32* %tmp.i, align 4, !dbg !4849
  %36 = load i32, i32* %tmp.i, align 4, !dbg !4849
  call void @llvm.dbg.declare(metadata !240, metadata !4851, metadata !DIExpression()) #6, !dbg !4856
  call void @llvm.dbg.declare(metadata !240, metadata !4857, metadata !DIExpression()) #6, !dbg !4856
  store i32 1, i32* %tmp8.i, align 4, !dbg !4856
  %37 = load i32, i32* %tmp8.i, align 4, !dbg !4856
  %38 = load i64, i64* %flags.addr.i, align 8, !dbg !4858
  call void @arch_local_irq_restore(i64 %38) #9, !dbg !4858
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4859, !srcloc !4861
  %39 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i128, align 8, !dbg !4862
  %40 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %39, i32 0, i32 0, !dbg !4862
  %rlock.i129 = bitcast %union.anon.3* %40 to %struct.raw_spinlock*, !dbg !4862
  br label %do.body55, !dbg !4864

do.body55:                                        ; preds = %if.end53
  br label %do.body56, !dbg !4865

do.body56:                                        ; preds = %do.body55
  call void @llvm.dbg.declare(metadata i64* %__dummy57, metadata !4866, metadata !DIExpression()), !dbg !4868
  call void @llvm.dbg.declare(metadata i64* %__dummy258, metadata !4869, metadata !DIExpression()), !dbg !4868
  %cmp59 = icmp eq i64* %__dummy57, %__dummy258, !dbg !4868
  %conv60 = zext i1 %cmp59 to i32, !dbg !4868
  store i32 1, i32* %tmp61, align 4, !dbg !4868
  %41 = load i32, i32* %tmp61, align 4, !dbg !4868
  br label %do.body62, !dbg !4870

do.body62:                                        ; preds = %do.body56
  br label %do.body63, !dbg !4871

do.body63:                                        ; preds = %do.body62
  br label %do.body64, !dbg !4872

do.body64:                                        ; preds = %do.body63
  call void @llvm.dbg.declare(metadata i64* %__dummy65, metadata !4874, metadata !DIExpression()), !dbg !4877
  call void @llvm.dbg.declare(metadata i64* %__dummy266, metadata !4878, metadata !DIExpression()), !dbg !4877
  %cmp67 = icmp eq i64* %__dummy65, %__dummy266, !dbg !4877
  %conv68 = zext i1 %cmp67 to i32, !dbg !4877
  store i32 1, i32* %tmp69, align 4, !dbg !4877
  %42 = load i32, i32* %tmp69, align 4, !dbg !4877
  %call70 = call i64 @arch_local_irq_save() #7, !dbg !4879
  store i64 %call70, i64* %flags, align 8, !dbg !4879
  br label %do.end71, !dbg !4879

do.end71:                                         ; preds = %do.body64
  br label %do.end72, !dbg !4872

do.end72:                                         ; preds = %do.end71
  br label %do.body73, !dbg !4871

do.body73:                                        ; preds = %do.end72
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4880, !srcloc !4881
  br label %do.body74, !dbg !4880

do.body74:                                        ; preds = %do.body73
  %43 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4882
  %spinlock75 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %43, i32 0, i32 11, !dbg !4882
  store %struct.spinlock* %spinlock75, %struct.spinlock** %lock.addr.i130, align 8
  %44 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i130, align 8, !dbg !4883
  %45 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %44, i32 0, i32 0, !dbg !4884
  %rlock.i131 = bitcast %union.anon.3* %45 to %struct.raw_spinlock*, !dbg !4884
  br label %do.end77, !dbg !4882

do.end77:                                         ; preds = %do.body74
  br label %do.end78, !dbg !4880

do.end78:                                         ; preds = %do.end77
  br label %do.end79, !dbg !4871

do.end79:                                         ; preds = %do.end78
  br label %do.end80, !dbg !4870

do.end80:                                         ; preds = %do.end79
  br label %do.end81, !dbg !4865

do.end81:                                         ; preds = %do.end80
  %46 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !4885
  %plx9080_mmio82 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %46, i32 0, i32 0, !dbg !4886
  %47 = load i8*, i8** %plx9080_mmio82, align 8, !dbg !4886
  %add.ptr83 = getelementptr i8, i8* %47, i64 169, !dbg !4887
  %call84 = call zeroext i8 @readb(i8* %add.ptr83) #7, !dbg !4888
  store i8 %call84, i8* %dma1_status, align 1, !dbg !4889
  %48 = load i32, i32* %plx_status, align 4, !dbg !4890
  %conv85 = zext i32 %48 to i64, !dbg !4890
  %and86 = and i64 %conv85, 4194304, !dbg !4892
  %tobool87 = icmp ne i64 %and86, 0, !dbg !4892
  br i1 %tobool87, label %if.then88, label %if.end95, !dbg !4893

if.then88:                                        ; preds = %do.end81
  %49 = load i8, i8* %dma1_status, align 1, !dbg !4894
  %conv89 = zext i8 %49 to i64, !dbg !4894
  %and90 = and i64 %conv89, 1, !dbg !4896
  %or91 = or i64 %and90, 8, !dbg !4897
  %conv92 = trunc i64 %or91 to i8, !dbg !4898
  %50 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !4899
  %plx9080_mmio93 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %50, i32 0, i32 0, !dbg !4900
  %51 = load i8*, i8** %plx9080_mmio93, align 8, !dbg !4900
  %add.ptr94 = getelementptr i8, i8* %51, i64 169, !dbg !4901
  call void @writeb(i8 zeroext %conv92, i8* %add.ptr94) #7, !dbg !4902
  br label %if.end95, !dbg !4903

if.end95:                                         ; preds = %if.then88, %do.end81
  %52 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4904
  %spinlock96 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %52, i32 0, i32 11, !dbg !4905
  %53 = load i64, i64* %flags, align 8, !dbg !4906
  store %struct.spinlock* %spinlock96, %struct.spinlock** %lock.addr.i132, align 8
  store i64 %53, i64* %flags.addr.i133, align 8
  call void @llvm.dbg.declare(metadata !240, metadata !4846, metadata !DIExpression()) #6, !dbg !4907
  call void @llvm.dbg.declare(metadata !240, metadata !4850, metadata !DIExpression()) #6, !dbg !4907
  store i32 1, i32* %tmp.i134, align 4, !dbg !4907
  %54 = load i32, i32* %tmp.i134, align 4, !dbg !4907
  call void @llvm.dbg.declare(metadata !240, metadata !4851, metadata !DIExpression()) #6, !dbg !4908
  call void @llvm.dbg.declare(metadata !240, metadata !4857, metadata !DIExpression()) #6, !dbg !4908
  store i32 1, i32* %tmp8.i135, align 4, !dbg !4908
  %55 = load i32, i32* %tmp8.i135, align 4, !dbg !4908
  %56 = load i64, i64* %flags.addr.i133, align 8, !dbg !4909
  call void @arch_local_irq_restore(i64 %56) #9, !dbg !4909
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4910, !srcloc !4861
  %57 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i132, align 8, !dbg !4911
  %58 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %57, i32 0, i32 0, !dbg !4911
  %rlock.i136 = bitcast %union.anon.3* %58 to %struct.raw_spinlock*, !dbg !4911
  %59 = load i32, i32* %plx_status, align 4, !dbg !4912
  %conv97 = zext i32 %59 to i64, !dbg !4912
  %and98 = and i64 %conv97, 1048576, !dbg !4914
  %tobool99 = icmp ne i64 %and98, 0, !dbg !4914
  br i1 %tobool99, label %if.then100, label %if.end106, !dbg !4915

if.then100:                                       ; preds = %if.end95
  %60 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !4916
  %plx9080_mmio101 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %60, i32 0, i32 0, !dbg !4918
  %61 = load i8*, i8** %plx9080_mmio101, align 8, !dbg !4918
  %add.ptr102 = getelementptr i8, i8* %61, i64 100, !dbg !4919
  %call103 = call i32 @readl(i8* %add.ptr102) #7, !dbg !4920
  store i32 %call103, i32* %plx_bits, align 4, !dbg !4921
  %62 = load i32, i32* %plx_bits, align 4, !dbg !4922
  %63 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !4923
  %plx9080_mmio104 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %63, i32 0, i32 0, !dbg !4924
  %64 = load i8*, i8** %plx9080_mmio104, align 8, !dbg !4924
  %add.ptr105 = getelementptr i8, i8* %64, i64 100, !dbg !4925
  call void @writel(i32 %62, i8* %add.ptr105) #7, !dbg !4926
  br label %if.end106, !dbg !4927

if.end106:                                        ; preds = %if.then100, %if.end95
  %65 = load i32, i32* %hpdi_board_status, align 4, !dbg !4928
  %conv107 = zext i32 %65 to i64, !dbg !4928
  %and108 = and i64 %conv107, 8388608, !dbg !4930
  %tobool109 = icmp ne i64 %and108, 0, !dbg !4930
  br i1 %tobool109, label %if.then110, label %if.end112, !dbg !4931

if.then110:                                       ; preds = %if.end106
  %66 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4932
  %class_dev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %66, i32 0, i32 4, !dbg !4932
  %67 = load %struct.device*, %struct.device** %class_dev, align 8, !dbg !4932
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %67, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !4932
  %68 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4934
  %events = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %68, i32 0, i32 16, !dbg !4935
  %69 = load i32, i32* %events, align 4, !dbg !4936
  %or111 = or i32 %69, 16, !dbg !4936
  store i32 %or111, i32* %events, align 4, !dbg !4936
  br label %if.end112, !dbg !4937

if.end112:                                        ; preds = %if.then110, %if.end106
  %70 = load i32, i32* %hpdi_board_status, align 4, !dbg !4938
  %conv113 = zext i32 %70 to i64, !dbg !4938
  %and114 = and i64 %conv113, 4194304, !dbg !4940
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4940
  br i1 %tobool115, label %if.then116, label %if.end120, !dbg !4941

if.then116:                                       ; preds = %if.end112
  %71 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4942
  %class_dev117 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %71, i32 0, i32 4, !dbg !4942
  %72 = load %struct.device*, %struct.device** %class_dev117, align 8, !dbg !4942
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %72, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0)) #8, !dbg !4942
  %73 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4944
  %events118 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %73, i32 0, i32 16, !dbg !4945
  %74 = load i32, i32* %events118, align 4, !dbg !4946
  %or119 = or i32 %74, 16, !dbg !4946
  store i32 %or119, i32* %events118, align 4, !dbg !4946
  br label %if.end120, !dbg !4947

if.end120:                                        ; preds = %if.then116, %if.end112
  %75 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !4948
  %dio_count = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %75, i32 0, i32 10, !dbg !4950
  %76 = load i64, i64* %dio_count, align 8, !dbg !4950
  %cmp121 = icmp eq i64 %76, 0, !dbg !4951
  br i1 %cmp121, label %if.then123, label %if.end126, !dbg !4952

if.then123:                                       ; preds = %if.end120
  %77 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4953
  %events124 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %77, i32 0, i32 16, !dbg !4954
  %78 = load i32, i32* %events124, align 4, !dbg !4955
  %or125 = or i32 %78, 2, !dbg !4955
  store i32 %or125, i32* %events124, align 4, !dbg !4955
  br label %if.end126, !dbg !4953

if.end126:                                        ; preds = %if.then123, %if.end120
  %79 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4956
  %80 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4957
  %call127 = call i32 @comedi_handle_events(%struct.comedi_device* %79, %struct.comedi_subdevice* %80) #7, !dbg !4958
  store i32 1, i32* %retval, align 4, !dbg !4959
  br label %return, !dbg !4959

return:                                           ; preds = %if.end126, %if.then3, %if.then
  %81 = load i32, i32* %retval, align 4, !dbg !4960
  ret i32 %81, !dbg !4960
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dma_alloc_coherent(%struct.device* %dev, i64 %size, i64* %dma_handle, i32 %gfp) #2 !dbg !4961 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %dma_handle.addr = alloca i64*, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4965, metadata !DIExpression()), !dbg !4966
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4967, metadata !DIExpression()), !dbg !4968
  store i64* %dma_handle, i64** %dma_handle.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %dma_handle.addr, metadata !4969, metadata !DIExpression()), !dbg !4970
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !4971, metadata !DIExpression()), !dbg !4972
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4973
  %1 = load i64, i64* %size.addr, align 8, !dbg !4974
  %2 = load i64*, i64** %dma_handle.addr, align 8, !dbg !4975
  %3 = load i32, i32* %gfp.addr, align 4, !dbg !4976
  %4 = load i32, i32* %gfp.addr, align 4, !dbg !4977
  %and = and i32 %4, 8192, !dbg !4978
  %tobool = icmp ne i32 %and, 0, !dbg !4979
  %5 = zext i1 %tobool to i64, !dbg !4979
  %cond = select i1 %tobool, i64 256, i64 0, !dbg !4979
  %call = call i8* @dma_alloc_attrs(%struct.device* %0, i64 %1, i64* %2, i32 %3, i64 %cond) #7, !dbg !4980
  ret i8* %call, !dbg !4981
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gsc_hpdi_setup_dma_descriptors(%struct.comedi_device* %dev, i32 %len) #2 !dbg !4982 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %len.addr = alloca i32, align 4
  %devpriv = alloca %struct.hpdi_private*, align 8
  %phys_addr = alloca i64, align 8
  %next_bits = alloca i32, align 4
  %offset = alloca i32, align 4
  %idx = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4985, metadata !DIExpression()), !dbg !4986
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !4987, metadata !DIExpression()), !dbg !4988
  call void @llvm.dbg.declare(metadata %struct.hpdi_private** %devpriv, metadata !4989, metadata !DIExpression()), !dbg !4990
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4991
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !4992
  %1 = load i8*, i8** %private, align 8, !dbg !4992
  %2 = bitcast i8* %1 to %struct.hpdi_private*, !dbg !4991
  store %struct.hpdi_private* %2, %struct.hpdi_private** %devpriv, align 8, !dbg !4990
  call void @llvm.dbg.declare(metadata i64* %phys_addr, metadata !4993, metadata !DIExpression()), !dbg !4994
  %3 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !4995
  %dma_desc_phys_addr = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %3, i32 0, i32 4, !dbg !4996
  %4 = load i64, i64* %dma_desc_phys_addr, align 8, !dbg !4996
  store i64 %4, i64* %phys_addr, align 8, !dbg !4994
  call void @llvm.dbg.declare(metadata i32* %next_bits, metadata !4997, metadata !DIExpression()), !dbg !4998
  store i32 13, i32* %next_bits, align 4, !dbg !4998
  call void @llvm.dbg.declare(metadata i32* %offset, metadata !4999, metadata !DIExpression()), !dbg !5000
  store i32 0, i32* %offset, align 4, !dbg !5000
  call void @llvm.dbg.declare(metadata i32* %idx, metadata !5001, metadata !DIExpression()), !dbg !5002
  store i32 0, i32* %idx, align 4, !dbg !5002
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5003, metadata !DIExpression()), !dbg !5004
  %5 = load i32, i32* %len.addr, align 4, !dbg !5005
  %cmp = icmp ugt i32 %5, 65536, !dbg !5007
  br i1 %cmp, label %if.then, label %if.end, !dbg !5008

if.then:                                          ; preds = %entry
  store i32 65536, i32* %len.addr, align 4, !dbg !5009
  br label %if.end, !dbg !5010

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %len.addr, align 4, !dbg !5011
  %conv = zext i32 %6 to i64, !dbg !5011
  %rem = urem i64 %conv, 4, !dbg !5012
  %7 = load i32, i32* %len.addr, align 4, !dbg !5013
  %conv1 = zext i32 %7 to i64, !dbg !5013
  %sub = sub i64 %conv1, %rem, !dbg !5013
  %conv2 = trunc i64 %sub to i32, !dbg !5013
  store i32 %conv2, i32* %len.addr, align 4, !dbg !5013
  %8 = load i32, i32* %len.addr, align 4, !dbg !5014
  %cmp3 = icmp eq i32 %8, 0, !dbg !5016
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !5017

if.then5:                                         ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !5018
  br label %return, !dbg !5018

if.end6:                                          ; preds = %if.end
  store i32 0, i32* %i, align 4, !dbg !5019
  br label %for.cond, !dbg !5021

for.cond:                                         ; preds = %for.inc, %if.end6
  %9 = load i32, i32* %i, align 4, !dbg !5022
  %cmp7 = icmp ult i32 %9, 256, !dbg !5024
  br i1 %cmp7, label %land.rhs, label %land.end, !dbg !5025

land.rhs:                                         ; preds = %for.cond
  %10 = load i32, i32* %idx, align 4, !dbg !5026
  %cmp9 = icmp ult i32 %10, 4, !dbg !5027
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %11 = phi i1 [ false, %for.cond ], [ %cmp9, %land.rhs ], !dbg !5028
  br i1 %11, label %for.body, label %for.end, !dbg !5029

for.body:                                         ; preds = %land.end
  %12 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !5030
  %dio_buffer_phys_addr = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %12, i32 0, i32 2, !dbg !5030
  %13 = load i32, i32* %idx, align 4, !dbg !5030
  %idxprom = zext i32 %13 to i64, !dbg !5030
  %arrayidx = getelementptr [4 x i64], [4 x i64]* %dio_buffer_phys_addr, i64 0, i64 %idxprom, !dbg !5030
  %14 = load i64, i64* %arrayidx, align 8, !dbg !5030
  %15 = load i32, i32* %offset, align 4, !dbg !5030
  %conv11 = zext i32 %15 to i64, !dbg !5030
  %add = add i64 %14, %conv11, !dbg !5030
  %conv12 = trunc i64 %add to i32, !dbg !5030
  %16 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !5032
  %dma_desc = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %16, i32 0, i32 3, !dbg !5033
  %17 = load %struct.plx_dma_desc*, %struct.plx_dma_desc** %dma_desc, align 8, !dbg !5033
  %18 = load i32, i32* %i, align 4, !dbg !5034
  %idxprom13 = zext i32 %18 to i64, !dbg !5032
  %arrayidx14 = getelementptr %struct.plx_dma_desc, %struct.plx_dma_desc* %17, i64 %idxprom13, !dbg !5032
  %pci_start_addr = getelementptr inbounds %struct.plx_dma_desc, %struct.plx_dma_desc* %arrayidx14, i32 0, i32 0, !dbg !5035
  store i32 %conv12, i32* %pci_start_addr, align 4, !dbg !5036
  %19 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !5037
  %dma_desc15 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %19, i32 0, i32 3, !dbg !5038
  %20 = load %struct.plx_dma_desc*, %struct.plx_dma_desc** %dma_desc15, align 8, !dbg !5038
  %21 = load i32, i32* %i, align 4, !dbg !5039
  %idxprom16 = zext i32 %21 to i64, !dbg !5037
  %arrayidx17 = getelementptr %struct.plx_dma_desc, %struct.plx_dma_desc* %20, i64 %idxprom16, !dbg !5037
  %local_start_addr = getelementptr inbounds %struct.plx_dma_desc, %struct.plx_dma_desc* %arrayidx17, i32 0, i32 1, !dbg !5040
  store i32 24, i32* %local_start_addr, align 4, !dbg !5041
  %22 = load i32, i32* %len.addr, align 4, !dbg !5042
  %23 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !5043
  %dma_desc18 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %23, i32 0, i32 3, !dbg !5044
  %24 = load %struct.plx_dma_desc*, %struct.plx_dma_desc** %dma_desc18, align 8, !dbg !5044
  %25 = load i32, i32* %i, align 4, !dbg !5045
  %idxprom19 = zext i32 %25 to i64, !dbg !5043
  %arrayidx20 = getelementptr %struct.plx_dma_desc, %struct.plx_dma_desc* %24, i64 %idxprom19, !dbg !5043
  %transfer_size = getelementptr inbounds %struct.plx_dma_desc, %struct.plx_dma_desc* %arrayidx20, i32 0, i32 2, !dbg !5046
  store i32 %22, i32* %transfer_size, align 4, !dbg !5047
  %26 = load i64, i64* %phys_addr, align 8, !dbg !5048
  %27 = load i32, i32* %i, align 4, !dbg !5048
  %add21 = add i32 %27, 1, !dbg !5048
  %conv22 = zext i32 %add21 to i64, !dbg !5048
  %mul = mul i64 %conv22, 16, !dbg !5048
  %add23 = add i64 %26, %mul, !dbg !5048
  %28 = load i32, i32* %next_bits, align 4, !dbg !5048
  %conv24 = zext i32 %28 to i64, !dbg !5048
  %or = or i64 %add23, %conv24, !dbg !5048
  %conv25 = trunc i64 %or to i32, !dbg !5048
  %29 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !5049
  %dma_desc26 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %29, i32 0, i32 3, !dbg !5050
  %30 = load %struct.plx_dma_desc*, %struct.plx_dma_desc** %dma_desc26, align 8, !dbg !5050
  %31 = load i32, i32* %i, align 4, !dbg !5051
  %idxprom27 = zext i32 %31 to i64, !dbg !5049
  %arrayidx28 = getelementptr %struct.plx_dma_desc, %struct.plx_dma_desc* %30, i64 %idxprom27, !dbg !5049
  %next = getelementptr inbounds %struct.plx_dma_desc, %struct.plx_dma_desc* %arrayidx28, i32 0, i32 3, !dbg !5052
  store i32 %conv25, i32* %next, align 4, !dbg !5053
  %32 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !5054
  %dio_buffer = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %32, i32 0, i32 1, !dbg !5055
  %33 = load i32, i32* %idx, align 4, !dbg !5056
  %idxprom29 = zext i32 %33 to i64, !dbg !5054
  %arrayidx30 = getelementptr [4 x i32*], [4 x i32*]* %dio_buffer, i64 0, i64 %idxprom29, !dbg !5054
  %34 = load i32*, i32** %arrayidx30, align 8, !dbg !5054
  %35 = load i32, i32* %offset, align 4, !dbg !5057
  %conv31 = zext i32 %35 to i64, !dbg !5057
  %div = udiv i64 %conv31, 4, !dbg !5058
  %add.ptr = getelementptr i32, i32* %34, i64 %div, !dbg !5059
  %36 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !5060
  %desc_dio_buffer = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %36, i32 0, i32 6, !dbg !5061
  %37 = load i32, i32* %i, align 4, !dbg !5062
  %idxprom32 = zext i32 %37 to i64, !dbg !5060
  %arrayidx33 = getelementptr [256 x i32*], [256 x i32*]* %desc_dio_buffer, i64 0, i64 %idxprom32, !dbg !5060
  store i32* %add.ptr, i32** %arrayidx33, align 8, !dbg !5063
  %38 = load i32, i32* %len.addr, align 4, !dbg !5064
  %39 = load i32, i32* %offset, align 4, !dbg !5065
  %add34 = add i32 %39, %38, !dbg !5065
  store i32 %add34, i32* %offset, align 4, !dbg !5065
  %40 = load i32, i32* %len.addr, align 4, !dbg !5066
  %41 = load i32, i32* %offset, align 4, !dbg !5068
  %add35 = add i32 %40, %41, !dbg !5069
  %cmp36 = icmp ugt i32 %add35, 65536, !dbg !5070
  br i1 %cmp36, label %if.then38, label %if.end39, !dbg !5071

if.then38:                                        ; preds = %for.body
  store i32 0, i32* %offset, align 4, !dbg !5072
  %42 = load i32, i32* %idx, align 4, !dbg !5074
  %inc = add i32 %42, 1, !dbg !5074
  store i32 %inc, i32* %idx, align 4, !dbg !5074
  br label %if.end39, !dbg !5075

if.end39:                                         ; preds = %if.then38, %for.body
  br label %for.inc, !dbg !5076

for.inc:                                          ; preds = %if.end39
  %43 = load i32, i32* %i, align 4, !dbg !5077
  %inc40 = add i32 %43, 1, !dbg !5077
  store i32 %inc40, i32* %i, align 4, !dbg !5077
  br label %for.cond, !dbg !5078, !llvm.loop !5079

for.end:                                          ; preds = %land.end
  %44 = load i32, i32* %i, align 4, !dbg !5081
  %45 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !5082
  %num_dma_descriptors = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %45, i32 0, i32 5, !dbg !5083
  store i32 %44, i32* %num_dma_descriptors, align 8, !dbg !5084
  %46 = load i64, i64* %phys_addr, align 8, !dbg !5085
  %47 = load i32, i32* %next_bits, align 4, !dbg !5085
  %conv41 = zext i32 %47 to i64, !dbg !5085
  %or42 = or i64 %46, %conv41, !dbg !5085
  %conv43 = trunc i64 %or42 to i32, !dbg !5085
  %48 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !5086
  %dma_desc44 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %48, i32 0, i32 3, !dbg !5087
  %49 = load %struct.plx_dma_desc*, %struct.plx_dma_desc** %dma_desc44, align 8, !dbg !5087
  %50 = load i32, i32* %i, align 4, !dbg !5088
  %sub45 = sub i32 %50, 1, !dbg !5089
  %idxprom46 = zext i32 %sub45 to i64, !dbg !5086
  %arrayidx47 = getelementptr %struct.plx_dma_desc, %struct.plx_dma_desc* %49, i64 %idxprom46, !dbg !5086
  %next48 = getelementptr inbounds %struct.plx_dma_desc, %struct.plx_dma_desc* %arrayidx47, i32 0, i32 3, !dbg !5090
  store i32 %conv43, i32* %next48, align 4, !dbg !5091
  %51 = load i32, i32* %len.addr, align 4, !dbg !5092
  %52 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !5093
  %block_size = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %52, i32 0, i32 11, !dbg !5094
  store i32 %51, i32* %block_size, align 8, !dbg !5095
  %53 = load i32, i32* %len.addr, align 4, !dbg !5096
  store i32 %53, i32* %retval, align 4, !dbg !5097
  br label %return, !dbg !5097

return:                                           ; preds = %for.end, %if.then5
  %54 = load i32, i32* %retval, align 4, !dbg !5098
  ret i32 %54, !dbg !5098
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gsc_hpdi_dio_insn_config(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !5099 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5100, metadata !DIExpression()), !dbg !5101
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5102, metadata !DIExpression()), !dbg !5103
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5104, metadata !DIExpression()), !dbg !5105
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !5106, metadata !DIExpression()), !dbg !5107
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5108, metadata !DIExpression()), !dbg !5109
  %0 = load i32*, i32** %data.addr, align 8, !dbg !5110
  %arrayidx = getelementptr i32, i32* %0, i64 0, !dbg !5110
  %1 = load i32, i32* %arrayidx, align 4, !dbg !5110
  switch i32 %1, label %sw.default [
    i32 22, label %sw.bb
  ], !dbg !5111

sw.bb:                                            ; preds = %entry
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5112
  %3 = load i32*, i32** %data.addr, align 8, !dbg !5114
  %arrayidx1 = getelementptr i32, i32* %3, i64 1, !dbg !5114
  %4 = load i32, i32* %arrayidx1, align 4, !dbg !5114
  %call = call i32 @gsc_hpdi_setup_dma_descriptors(%struct.comedi_device* %2, i32 %4) #7, !dbg !5115
  store i32 %call, i32* %ret, align 4, !dbg !5116
  %5 = load i32, i32* %ret, align 4, !dbg !5117
  %tobool = icmp ne i32 %5, 0, !dbg !5117
  br i1 %tobool, label %if.then, label %if.end, !dbg !5119

if.then:                                          ; preds = %sw.bb
  %6 = load i32, i32* %ret, align 4, !dbg !5120
  store i32 %6, i32* %retval, align 4, !dbg !5121
  br label %return, !dbg !5121

if.end:                                           ; preds = %sw.bb
  %7 = load i32, i32* %ret, align 4, !dbg !5122
  %8 = load i32*, i32** %data.addr, align 8, !dbg !5123
  %arrayidx2 = getelementptr i32, i32* %8, i64 1, !dbg !5123
  store i32 %7, i32* %arrayidx2, align 4, !dbg !5124
  br label %sw.epilog, !dbg !5125

sw.default:                                       ; preds = %entry
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5126
  %10 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5127
  %11 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5128
  %12 = load i32*, i32** %data.addr, align 8, !dbg !5129
  %call3 = call i32 @comedi_dio_insn_config(%struct.comedi_device* %9, %struct.comedi_subdevice* %10, %struct.comedi_insn* %11, i32* %12, i32 -1) #7, !dbg !5130
  store i32 %call3, i32* %ret, align 4, !dbg !5131
  %13 = load i32, i32* %ret, align 4, !dbg !5132
  %tobool4 = icmp ne i32 %13, 0, !dbg !5132
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !5134

if.then5:                                         ; preds = %sw.default
  %14 = load i32, i32* %ret, align 4, !dbg !5135
  store i32 %14, i32* %retval, align 4, !dbg !5136
  br label %return, !dbg !5136

if.end6:                                          ; preds = %sw.default
  br label %sw.epilog, !dbg !5137

sw.epilog:                                        ; preds = %if.end6, %if.end
  %15 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5138
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %15, i32 0, i32 1, !dbg !5139
  %16 = load i32, i32* %n, align 4, !dbg !5139
  store i32 %16, i32* %retval, align 4, !dbg !5140
  br label %return, !dbg !5140

return:                                           ; preds = %sw.epilog, %if.then5, %if.then
  %17 = load i32, i32* %retval, align 4, !dbg !5141
  ret i32 %17, !dbg !5141
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gsc_hpdi_cmd(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #2 !dbg !5142 {
entry:
  %lock.addr.i46 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i46, metadata !4699, metadata !DIExpression()), !dbg !5143
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4706, metadata !DIExpression()), !dbg !5145
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4708, metadata !DIExpression()), !dbg !5146
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %devpriv = alloca %struct.hpdi_private*, align 8
  %async = alloca %struct.comedi_async*, align 8
  %cmd = alloca %struct.comedi_cmd*, align 8
  %flags = alloca i64, align 8
  %bits = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy17 = alloca i64, align 8
  %__dummy218 = alloca i64, align 8
  %tmp21 = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5153, metadata !DIExpression()), !dbg !5154
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5155, metadata !DIExpression()), !dbg !5156
  call void @llvm.dbg.declare(metadata %struct.hpdi_private** %devpriv, metadata !5157, metadata !DIExpression()), !dbg !5158
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5159
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5160
  %1 = load i8*, i8** %private, align 8, !dbg !5160
  %2 = bitcast i8* %1 to %struct.hpdi_private*, !dbg !5159
  store %struct.hpdi_private* %2, %struct.hpdi_private** %devpriv, align 8, !dbg !5158
  call void @llvm.dbg.declare(metadata %struct.comedi_async** %async, metadata !5161, metadata !DIExpression()), !dbg !5162
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5163
  %async1 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %3, i32 0, i32 7, !dbg !5164
  %4 = load %struct.comedi_async*, %struct.comedi_async** %async1, align 8, !dbg !5164
  store %struct.comedi_async* %4, %struct.comedi_async** %async, align 8, !dbg !5162
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd, metadata !5165, metadata !DIExpression()), !dbg !5166
  %5 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5167
  %cmd2 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %5, i32 0, i32 17, !dbg !5168
  store %struct.comedi_cmd* %cmd2, %struct.comedi_cmd** %cmd, align 8, !dbg !5166
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5169, metadata !DIExpression()), !dbg !5170
  call void @llvm.dbg.declare(metadata i32* %bits, metadata !5171, metadata !DIExpression()), !dbg !5172
  %6 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5173
  %io_bits = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %6, i32 0, i32 12, !dbg !5175
  %7 = load i32, i32* %io_bits, align 4, !dbg !5175
  %tobool = icmp ne i32 %7, 0, !dbg !5173
  br i1 %tobool, label %if.then, label %if.end, !dbg !5176

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5177
  br label %return, !dbg !5177

if.end:                                           ; preds = %entry
  %8 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5178
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 17, !dbg !5179
  %9 = load i8*, i8** %mmio, align 8, !dbg !5179
  %add.ptr = getelementptr i8, i8* %9, i64 4, !dbg !5180
  call void @writel(i32 4, i8* %add.ptr) #7, !dbg !5181
  %10 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5182
  call void @gsc_hpdi_abort_dma(%struct.comedi_device* %10, i32 0) #7, !dbg !5183
  %11 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !5184
  %dma_desc_index = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %11, i32 0, i32 7, !dbg !5185
  store i32 0, i32* %dma_desc_index, align 8, !dbg !5186
  %12 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !5187
  %plx9080_mmio = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %12, i32 0, i32 0, !dbg !5188
  %13 = load i8*, i8** %plx9080_mmio, align 8, !dbg !5188
  %add.ptr3 = getelementptr i8, i8* %13, i64 140, !dbg !5189
  call void @writel(i32 0, i8* %add.ptr3) #7, !dbg !5190
  %14 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !5191
  %plx9080_mmio4 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %14, i32 0, i32 0, !dbg !5192
  %15 = load i8*, i8** %plx9080_mmio4, align 8, !dbg !5192
  %add.ptr5 = getelementptr i8, i8* %15, i64 132, !dbg !5193
  call void @writel(i32 0, i8* %add.ptr5) #7, !dbg !5194
  %16 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !5195
  %plx9080_mmio6 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %16, i32 0, i32 0, !dbg !5196
  %17 = load i8*, i8** %plx9080_mmio6, align 8, !dbg !5196
  %add.ptr7 = getelementptr i8, i8* %17, i64 136, !dbg !5197
  call void @writel(i32 0, i8* %add.ptr7) #7, !dbg !5198
  %18 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !5199
  %dma_desc_phys_addr = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %18, i32 0, i32 4, !dbg !5200
  %19 = load i64, i64* %dma_desc_phys_addr, align 8, !dbg !5200
  %or = or i64 %19, 1, !dbg !5201
  %or8 = or i64 %or, 4, !dbg !5202
  %or9 = or i64 %or8, 8, !dbg !5203
  %conv = trunc i64 %or9 to i32, !dbg !5199
  store i32 %conv, i32* %bits, align 4, !dbg !5204
  %20 = load i32, i32* %bits, align 4, !dbg !5205
  %21 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !5206
  %plx9080_mmio10 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %21, i32 0, i32 0, !dbg !5207
  %22 = load i8*, i8** %plx9080_mmio10, align 8, !dbg !5207
  %add.ptr11 = getelementptr i8, i8* %22, i64 144, !dbg !5208
  call void @writel(i32 %20, i8* %add.ptr11) #7, !dbg !5209
  br label %do.body, !dbg !5210

do.body:                                          ; preds = %if.end
  br label %do.body12, !dbg !5211

do.body12:                                        ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5212, metadata !DIExpression()), !dbg !5214
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5215, metadata !DIExpression()), !dbg !5214
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !5214
  %conv13 = zext i1 %cmp to i32, !dbg !5214
  store i32 1, i32* %tmp, align 4, !dbg !5214
  %23 = load i32, i32* %tmp, align 4, !dbg !5214
  br label %do.body14, !dbg !5216

do.body14:                                        ; preds = %do.body12
  br label %do.body15, !dbg !5217

do.body15:                                        ; preds = %do.body14
  br label %do.body16, !dbg !5218

do.body16:                                        ; preds = %do.body15
  call void @llvm.dbg.declare(metadata i64* %__dummy17, metadata !5220, metadata !DIExpression()), !dbg !5223
  call void @llvm.dbg.declare(metadata i64* %__dummy218, metadata !5224, metadata !DIExpression()), !dbg !5223
  %cmp19 = icmp eq i64* %__dummy17, %__dummy218, !dbg !5223
  %conv20 = zext i1 %cmp19 to i32, !dbg !5223
  store i32 1, i32* %tmp21, align 4, !dbg !5223
  %24 = load i32, i32* %tmp21, align 4, !dbg !5223
  %call = call i64 @arch_local_irq_save() #7, !dbg !5225
  store i64 %call, i64* %flags, align 8, !dbg !5225
  br label %do.end, !dbg !5225

do.end:                                           ; preds = %do.body16
  br label %do.end22, !dbg !5218

do.end22:                                         ; preds = %do.end
  br label %do.body23, !dbg !5217

do.body23:                                        ; preds = %do.end22
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !5226, !srcloc !5227
  br label %do.body24, !dbg !5226

do.body24:                                        ; preds = %do.body23
  %25 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5228
  %spinlock = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 11, !dbg !5228
  store %struct.spinlock* %spinlock, %struct.spinlock** %lock.addr.i, align 8
  %26 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5229
  %27 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %26, i32 0, i32 0, !dbg !5230
  %rlock.i = bitcast %union.anon.3* %27 to %struct.raw_spinlock*, !dbg !5230
  br label %do.end26, !dbg !5228

do.end26:                                         ; preds = %do.body24
  br label %do.end27, !dbg !5226

do.end27:                                         ; preds = %do.end26
  br label %do.end28, !dbg !5217

do.end28:                                         ; preds = %do.end27
  br label %do.end29, !dbg !5216

do.end29:                                         ; preds = %do.end28
  br label %do.end30, !dbg !5211

do.end30:                                         ; preds = %do.end29
  %28 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !5231
  %plx9080_mmio31 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %28, i32 0, i32 0, !dbg !5232
  %29 = load i8*, i8** %plx9080_mmio31, align 8, !dbg !5232
  %add.ptr32 = getelementptr i8, i8* %29, i64 168, !dbg !5233
  call void @writeb(i8 zeroext 11, i8* %add.ptr32) #7, !dbg !5234
  %30 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5235
  %spinlock33 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %30, i32 0, i32 11, !dbg !5236
  %31 = load i64, i64* %flags, align 8, !dbg !5237
  store %struct.spinlock* %spinlock33, %struct.spinlock** %lock.addr.i46, align 8
  store i64 %31, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !240, metadata !4846, metadata !DIExpression()) #6, !dbg !5238
  call void @llvm.dbg.declare(metadata !240, metadata !4850, metadata !DIExpression()) #6, !dbg !5238
  store i32 1, i32* %tmp.i, align 4, !dbg !5238
  %32 = load i32, i32* %tmp.i, align 4, !dbg !5238
  call void @llvm.dbg.declare(metadata !240, metadata !4851, metadata !DIExpression()) #6, !dbg !5239
  call void @llvm.dbg.declare(metadata !240, metadata !4857, metadata !DIExpression()) #6, !dbg !5239
  store i32 1, i32* %tmp8.i, align 4, !dbg !5239
  %33 = load i32, i32* %tmp8.i, align 4, !dbg !5239
  %34 = load i64, i64* %flags.addr.i, align 8, !dbg !5240
  call void @arch_local_irq_restore(i64 %34) #9, !dbg !5240
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !5241, !srcloc !4861
  %35 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i46, align 8, !dbg !5242
  %36 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %35, i32 0, i32 0, !dbg !5242
  %rlock.i47 = bitcast %union.anon.3* %36 to %struct.raw_spinlock*, !dbg !5242
  %37 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5243
  %stop_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %37, i32 0, i32 10, !dbg !5245
  %38 = load i32, i32* %stop_src, align 8, !dbg !5245
  %cmp34 = icmp eq i32 %38, 32, !dbg !5246
  br i1 %cmp34, label %if.then36, label %if.else, !dbg !5247

if.then36:                                        ; preds = %do.end30
  %39 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5248
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %39, i32 0, i32 11, !dbg !5249
  %40 = load i32, i32* %stop_arg, align 4, !dbg !5249
  %conv37 = zext i32 %40 to i64, !dbg !5248
  %41 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !5250
  %dio_count = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %41, i32 0, i32 10, !dbg !5251
  store i64 %conv37, i64* %dio_count, align 8, !dbg !5252
  br label %if.end39, !dbg !5250

if.else:                                          ; preds = %do.end30
  %42 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !5253
  %dio_count38 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %42, i32 0, i32 10, !dbg !5254
  store i64 1, i64* %dio_count38, align 8, !dbg !5255
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then36
  %43 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5256
  %mmio40 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %43, i32 0, i32 17, !dbg !5257
  %44 = load i8*, i8** %mmio40, align 8, !dbg !5257
  %add.ptr41 = getelementptr i8, i8* %44, i64 8, !dbg !5258
  call void @writel(i32 12582912, i8* %add.ptr41) #7, !dbg !5259
  %45 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5260
  %mmio42 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %45, i32 0, i32 17, !dbg !5261
  %46 = load i8*, i8** %mmio42, align 8, !dbg !5261
  %add.ptr43 = getelementptr i8, i8* %46, i64 48, !dbg !5262
  call void @writel(i32 32768, i8* %add.ptr43) #7, !dbg !5263
  %47 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5264
  %mmio44 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %47, i32 0, i32 17, !dbg !5265
  %48 = load i8*, i8** %mmio44, align 8, !dbg !5265
  %add.ptr45 = getelementptr i8, i8* %48, i64 4, !dbg !5266
  call void @writel(i32 32, i8* %add.ptr45) #7, !dbg !5267
  store i32 0, i32* %retval, align 4, !dbg !5268
  br label %return, !dbg !5268

return:                                           ; preds = %if.end39, %if.then
  %49 = load i32, i32* %retval, align 4, !dbg !5269
  ret i32 %49, !dbg !5269
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gsc_hpdi_cmd_test(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_cmd* %cmd) #2 !dbg !5270 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %cmd.addr = alloca %struct.comedi_cmd*, align 8
  %err = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5271, metadata !DIExpression()), !dbg !5272
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5273, metadata !DIExpression()), !dbg !5274
  store %struct.comedi_cmd* %cmd, %struct.comedi_cmd** %cmd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd.addr, metadata !5275, metadata !DIExpression()), !dbg !5276
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5277, metadata !DIExpression()), !dbg !5278
  store i32 0, i32* %err, align 4, !dbg !5278
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5279
  %io_bits = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 12, !dbg !5281
  %1 = load i32, i32* %io_bits, align 4, !dbg !5281
  %tobool = icmp ne i32 %1, 0, !dbg !5279
  br i1 %tobool, label %if.then, label %if.end, !dbg !5282

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5283
  br label %return, !dbg !5283

if.end:                                           ; preds = %entry
  %2 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5284
  %start_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %2, i32 0, i32 2, !dbg !5285
  %call = call i32 @comedi_check_trigger_src(i32* %start_src, i32 2) #7, !dbg !5286
  %3 = load i32, i32* %err, align 4, !dbg !5287
  %or = or i32 %3, %call, !dbg !5287
  store i32 %or, i32* %err, align 4, !dbg !5287
  %4 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5288
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %4, i32 0, i32 4, !dbg !5289
  %call1 = call i32 @comedi_check_trigger_src(i32* %scan_begin_src, i32 64) #7, !dbg !5290
  %5 = load i32, i32* %err, align 4, !dbg !5291
  %or2 = or i32 %5, %call1, !dbg !5291
  store i32 %or2, i32* %err, align 4, !dbg !5291
  %6 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5292
  %convert_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %6, i32 0, i32 6, !dbg !5293
  %call3 = call i32 @comedi_check_trigger_src(i32* %convert_src, i32 2) #7, !dbg !5294
  %7 = load i32, i32* %err, align 4, !dbg !5295
  %or4 = or i32 %7, %call3, !dbg !5295
  store i32 %or4, i32* %err, align 4, !dbg !5295
  %8 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5296
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %8, i32 0, i32 8, !dbg !5297
  %call5 = call i32 @comedi_check_trigger_src(i32* %scan_end_src, i32 32) #7, !dbg !5298
  %9 = load i32, i32* %err, align 4, !dbg !5299
  %or6 = or i32 %9, %call5, !dbg !5299
  store i32 %or6, i32* %err, align 4, !dbg !5299
  %10 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5300
  %stop_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %10, i32 0, i32 10, !dbg !5301
  %call7 = call i32 @comedi_check_trigger_src(i32* %stop_src, i32 33) #7, !dbg !5302
  %11 = load i32, i32* %err, align 4, !dbg !5303
  %or8 = or i32 %11, %call7, !dbg !5303
  store i32 %or8, i32* %err, align 4, !dbg !5303
  %12 = load i32, i32* %err, align 4, !dbg !5304
  %tobool9 = icmp ne i32 %12, 0, !dbg !5304
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !5306

if.then10:                                        ; preds = %if.end
  store i32 1, i32* %retval, align 4, !dbg !5307
  br label %return, !dbg !5307

if.end11:                                         ; preds = %if.end
  %13 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5308
  %stop_src12 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %13, i32 0, i32 10, !dbg !5309
  %14 = load i32, i32* %stop_src12, align 8, !dbg !5309
  %call13 = call i32 @comedi_check_trigger_is_unique(i32 %14) #7, !dbg !5310
  %15 = load i32, i32* %err, align 4, !dbg !5311
  %or14 = or i32 %15, %call13, !dbg !5311
  store i32 %or14, i32* %err, align 4, !dbg !5311
  %16 = load i32, i32* %err, align 4, !dbg !5312
  %tobool15 = icmp ne i32 %16, 0, !dbg !5312
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !5314

if.then16:                                        ; preds = %if.end11
  store i32 2, i32* %retval, align 4, !dbg !5315
  br label %return, !dbg !5315

if.end17:                                         ; preds = %if.end11
  %17 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5316
  %start_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %17, i32 0, i32 3, !dbg !5317
  %call18 = call i32 @comedi_check_trigger_arg_is(i32* %start_arg, i32 0) #7, !dbg !5318
  %18 = load i32, i32* %err, align 4, !dbg !5319
  %or19 = or i32 %18, %call18, !dbg !5319
  store i32 %or19, i32* %err, align 4, !dbg !5319
  %19 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5320
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %19, i32 0, i32 13, !dbg !5322
  %20 = load i32, i32* %chanlist_len, align 8, !dbg !5322
  %tobool20 = icmp ne i32 %20, 0, !dbg !5320
  br i1 %tobool20, label %lor.lhs.false, label %if.then22, !dbg !5323

lor.lhs.false:                                    ; preds = %if.end17
  %21 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5324
  %chanlist = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %21, i32 0, i32 12, !dbg !5325
  %22 = load i32*, i32** %chanlist, align 8, !dbg !5325
  %tobool21 = icmp ne i32* %22, null, !dbg !5324
  br i1 %tobool21, label %if.end25, label %if.then22, !dbg !5326

if.then22:                                        ; preds = %lor.lhs.false, %if.end17
  %23 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5327
  %chanlist_len23 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %23, i32 0, i32 13, !dbg !5329
  store i32 32, i32* %chanlist_len23, align 8, !dbg !5330
  %24 = load i32, i32* %err, align 4, !dbg !5331
  %or24 = or i32 %24, -22, !dbg !5331
  store i32 %or24, i32* %err, align 4, !dbg !5331
  br label %if.end25, !dbg !5332

if.end25:                                         ; preds = %if.then22, %lor.lhs.false
  %25 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5333
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %25, i32 0, i32 9, !dbg !5334
  %26 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5335
  %chanlist_len26 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %26, i32 0, i32 13, !dbg !5336
  %27 = load i32, i32* %chanlist_len26, align 8, !dbg !5336
  %call27 = call i32 @comedi_check_trigger_arg_is(i32* %scan_end_arg, i32 %27) #7, !dbg !5337
  %28 = load i32, i32* %err, align 4, !dbg !5338
  %or28 = or i32 %28, %call27, !dbg !5338
  store i32 %or28, i32* %err, align 4, !dbg !5338
  %29 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5339
  %stop_src29 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %29, i32 0, i32 10, !dbg !5341
  %30 = load i32, i32* %stop_src29, align 8, !dbg !5341
  %cmp = icmp eq i32 %30, 32, !dbg !5342
  br i1 %cmp, label %if.then30, label %if.else, !dbg !5343

if.then30:                                        ; preds = %if.end25
  %31 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5344
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %31, i32 0, i32 11, !dbg !5345
  %call31 = call i32 @comedi_check_trigger_arg_min(i32* %stop_arg, i32 1) #7, !dbg !5346
  %32 = load i32, i32* %err, align 4, !dbg !5347
  %or32 = or i32 %32, %call31, !dbg !5347
  store i32 %or32, i32* %err, align 4, !dbg !5347
  br label %if.end36, !dbg !5348

if.else:                                          ; preds = %if.end25
  %33 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5349
  %stop_arg33 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %33, i32 0, i32 11, !dbg !5350
  %call34 = call i32 @comedi_check_trigger_arg_is(i32* %stop_arg33, i32 0) #7, !dbg !5351
  %34 = load i32, i32* %err, align 4, !dbg !5352
  %or35 = or i32 %34, %call34, !dbg !5352
  store i32 %or35, i32* %err, align 4, !dbg !5352
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then30
  %35 = load i32, i32* %err, align 4, !dbg !5353
  %tobool37 = icmp ne i32 %35, 0, !dbg !5353
  br i1 %tobool37, label %if.then38, label %if.end39, !dbg !5355

if.then38:                                        ; preds = %if.end36
  store i32 3, i32* %retval, align 4, !dbg !5356
  br label %return, !dbg !5356

if.end39:                                         ; preds = %if.end36
  %36 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5357
  %chanlist40 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %36, i32 0, i32 12, !dbg !5359
  %37 = load i32*, i32** %chanlist40, align 8, !dbg !5359
  %tobool41 = icmp ne i32* %37, null, !dbg !5357
  br i1 %tobool41, label %land.lhs.true, label %if.end47, !dbg !5360

land.lhs.true:                                    ; preds = %if.end39
  %38 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5361
  %chanlist_len42 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %38, i32 0, i32 13, !dbg !5362
  %39 = load i32, i32* %chanlist_len42, align 8, !dbg !5362
  %cmp43 = icmp ugt i32 %39, 0, !dbg !5363
  br i1 %cmp43, label %if.then44, label %if.end47, !dbg !5364

if.then44:                                        ; preds = %land.lhs.true
  %40 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5365
  %41 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5366
  %42 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5367
  %call45 = call i32 @gsc_hpdi_check_chanlist(%struct.comedi_device* %40, %struct.comedi_subdevice* %41, %struct.comedi_cmd* %42) #7, !dbg !5368
  %43 = load i32, i32* %err, align 4, !dbg !5369
  %or46 = or i32 %43, %call45, !dbg !5369
  store i32 %or46, i32* %err, align 4, !dbg !5369
  br label %if.end47, !dbg !5370

if.end47:                                         ; preds = %if.then44, %land.lhs.true, %if.end39
  %44 = load i32, i32* %err, align 4, !dbg !5371
  %tobool48 = icmp ne i32 %44, 0, !dbg !5371
  br i1 %tobool48, label %if.then49, label %if.end50, !dbg !5373

if.then49:                                        ; preds = %if.end47
  store i32 5, i32* %retval, align 4, !dbg !5374
  br label %return, !dbg !5374

if.end50:                                         ; preds = %if.end47
  store i32 0, i32* %retval, align 4, !dbg !5375
  br label %return, !dbg !5375

return:                                           ; preds = %if.end50, %if.then49, %if.then38, %if.then16, %if.then10, %if.then
  %45 = load i32, i32* %retval, align 4, !dbg !5376
  ret i32 %45, !dbg !5376
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gsc_hpdi_cancel(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #2 !dbg !5377 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5378, metadata !DIExpression()), !dbg !5379
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5380, metadata !DIExpression()), !dbg !5381
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5382
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 17, !dbg !5383
  %1 = load i8*, i8** %mmio, align 8, !dbg !5383
  %add.ptr = getelementptr i8, i8* %1, i64 4, !dbg !5384
  call void @writel(i32 0, i8* %add.ptr) #7, !dbg !5385
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5386
  %mmio1 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %2, i32 0, i32 17, !dbg !5387
  %3 = load i8*, i8** %mmio1, align 8, !dbg !5387
  %add.ptr2 = getelementptr i8, i8* %3, i64 48, !dbg !5388
  call void @writel(i32 0, i8* %add.ptr2) #7, !dbg !5389
  %4 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5390
  call void @gsc_hpdi_abort_dma(%struct.comedi_device* %4, i32 0) #7, !dbg !5391
  ret i32 0, !dbg !5392
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gsc_hpdi_init(%struct.comedi_device* %dev) #2 !dbg !5393 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %devpriv = alloca %struct.hpdi_private*, align 8
  %plx_intcsr_bits = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5394, metadata !DIExpression()), !dbg !5395
  call void @llvm.dbg.declare(metadata %struct.hpdi_private** %devpriv, metadata !5396, metadata !DIExpression()), !dbg !5397
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5398
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5399
  %1 = load i8*, i8** %private, align 8, !dbg !5399
  %2 = bitcast i8* %1 to %struct.hpdi_private*, !dbg !5398
  store %struct.hpdi_private* %2, %struct.hpdi_private** %devpriv, align 8, !dbg !5397
  call void @llvm.dbg.declare(metadata i32* %plx_intcsr_bits, metadata !5400, metadata !DIExpression()), !dbg !5401
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5402
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %3, i32 0, i32 17, !dbg !5403
  %4 = load i8*, i8** %mmio, align 8, !dbg !5403
  %add.ptr = getelementptr i8, i8* %4, i64 4, !dbg !5404
  call void @writel(i32 1, i8* %add.ptr) #7, !dbg !5405
  call void @usleep_range(i64 10, i64 1000) #7, !dbg !5406
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5407
  %mmio1 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 17, !dbg !5408
  %6 = load i8*, i8** %mmio1, align 8, !dbg !5408
  %add.ptr2 = getelementptr i8, i8* %6, i64 16, !dbg !5409
  call void @writel(i32 2097184, i8* %add.ptr2) #7, !dbg !5410
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5411
  %mmio3 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 17, !dbg !5412
  %8 = load i8*, i8** %mmio3, align 8, !dbg !5412
  %add.ptr4 = getelementptr i8, i8* %8, i64 12, !dbg !5413
  call void @writel(i32 2097184, i8* %add.ptr4) #7, !dbg !5414
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5415
  %mmio5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 17, !dbg !5416
  %10 = load i8*, i8** %mmio5, align 8, !dbg !5416
  %add.ptr6 = getelementptr i8, i8* %10, i64 64, !dbg !5417
  %call = call i32 @readl(i8* %add.ptr6) #7, !dbg !5418
  %and = and i32 %call, 1048575, !dbg !5419
  %11 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !5420
  %tx_fifo_size = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %11, i32 0, i32 8, !dbg !5421
  store i32 %and, i32* %tx_fifo_size, align 4, !dbg !5422
  %12 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5423
  %mmio7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 17, !dbg !5424
  %13 = load i8*, i8** %mmio7, align 8, !dbg !5424
  %add.ptr8 = getelementptr i8, i8* %13, i64 68, !dbg !5425
  %call9 = call i32 @readl(i8* %add.ptr8) #7, !dbg !5426
  %and10 = and i32 %call9, 1048575, !dbg !5427
  %14 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !5428
  %rx_fifo_size = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %14, i32 0, i32 9, !dbg !5429
  store i32 %and10, i32* %rx_fifo_size, align 8, !dbg !5430
  %15 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5431
  %mmio11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 17, !dbg !5432
  %16 = load i8*, i8** %mmio11, align 8, !dbg !5432
  %add.ptr12 = getelementptr i8, i8* %16, i64 48, !dbg !5433
  call void @writel(i32 0, i8* %add.ptr12) #7, !dbg !5434
  store i32 331011, i32* %plx_intcsr_bits, align 4, !dbg !5435
  %17 = load i32, i32* %plx_intcsr_bits, align 4, !dbg !5436
  %18 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !5437
  %plx9080_mmio = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %18, i32 0, i32 0, !dbg !5438
  %19 = load i8*, i8** %plx9080_mmio, align 8, !dbg !5438
  %add.ptr13 = getelementptr i8, i8* %19, i64 104, !dbg !5439
  call void @writel(i32 %17, i8* %add.ptr13) #7, !dbg !5440
  ret i32 0, !dbg !5441
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gsc_hpdi_abort_dma(%struct.comedi_device* %dev, i32 %channel) #2 !dbg !5442 {
entry:
  %lock.addr.i21 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i21, metadata !4699, metadata !DIExpression()), !dbg !5445
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4706, metadata !DIExpression()), !dbg !5447
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4708, metadata !DIExpression()), !dbg !5448
  %dev.addr = alloca %struct.comedi_device*, align 8
  %channel.addr = alloca i32, align 4
  %devpriv = alloca %struct.hpdi_private*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5455, metadata !DIExpression()), !dbg !5456
  store i32 %channel, i32* %channel.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %channel.addr, metadata !5457, metadata !DIExpression()), !dbg !5458
  call void @llvm.dbg.declare(metadata %struct.hpdi_private** %devpriv, metadata !5459, metadata !DIExpression()), !dbg !5460
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5461
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5462
  %1 = load i8*, i8** %private, align 8, !dbg !5462
  %2 = bitcast i8* %1 to %struct.hpdi_private*, !dbg !5461
  store %struct.hpdi_private* %2, %struct.hpdi_private** %devpriv, align 8, !dbg !5460
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5463, metadata !DIExpression()), !dbg !5464
  br label %do.body, !dbg !5465

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5466

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5467, metadata !DIExpression()), !dbg !5469
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5470, metadata !DIExpression()), !dbg !5469
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !5469
  %conv = zext i1 %cmp to i32, !dbg !5469
  store i32 1, i32* %tmp, align 4, !dbg !5469
  %3 = load i32, i32* %tmp, align 4, !dbg !5469
  br label %do.body2, !dbg !5471

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !5472

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !5473

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !5475, metadata !DIExpression()), !dbg !5478
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !5479, metadata !DIExpression()), !dbg !5478
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !5478
  %conv8 = zext i1 %cmp7 to i32, !dbg !5478
  store i32 1, i32* %tmp9, align 4, !dbg !5478
  %4 = load i32, i32* %tmp9, align 4, !dbg !5478
  %call = call i64 @arch_local_irq_save() #7, !dbg !5480
  store i64 %call, i64* %flags, align 8, !dbg !5480
  br label %do.end, !dbg !5480

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !5473

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !5472

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !5481, !srcloc !5482
  br label %do.body12, !dbg !5481

do.body12:                                        ; preds = %do.body11
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5483
  %spinlock = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 11, !dbg !5483
  store %struct.spinlock* %spinlock, %struct.spinlock** %lock.addr.i, align 8
  %6 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5484
  %7 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %6, i32 0, i32 0, !dbg !5485
  %rlock.i = bitcast %union.anon.3* %7 to %struct.raw_spinlock*, !dbg !5485
  br label %do.end14, !dbg !5483

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !5481

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !5472

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !5471

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !5466

do.end18:                                         ; preds = %do.end17
  %8 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !5486
  %plx9080_mmio = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %8, i32 0, i32 0, !dbg !5487
  %9 = load i8*, i8** %plx9080_mmio, align 8, !dbg !5487
  %10 = load i32, i32* %channel.addr, align 4, !dbg !5488
  %call19 = call i32 @plx9080_abort_dma(i8* %9, i32 %10) #7, !dbg !5489
  %11 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5490
  %spinlock20 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 11, !dbg !5491
  %12 = load i64, i64* %flags, align 8, !dbg !5492
  store %struct.spinlock* %spinlock20, %struct.spinlock** %lock.addr.i21, align 8
  store i64 %12, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !240, metadata !4846, metadata !DIExpression()) #6, !dbg !5493
  call void @llvm.dbg.declare(metadata !240, metadata !4850, metadata !DIExpression()) #6, !dbg !5493
  store i32 1, i32* %tmp.i, align 4, !dbg !5493
  %13 = load i32, i32* %tmp.i, align 4, !dbg !5493
  call void @llvm.dbg.declare(metadata !240, metadata !4851, metadata !DIExpression()) #6, !dbg !5494
  call void @llvm.dbg.declare(metadata !240, metadata !4857, metadata !DIExpression()) #6, !dbg !5494
  store i32 1, i32* %tmp8.i, align 4, !dbg !5494
  %14 = load i32, i32* %tmp8.i, align 4, !dbg !5494
  %15 = load i64, i64* %flags.addr.i, align 8, !dbg !5495
  call void @arch_local_irq_restore(i64 %15) #9, !dbg !5495
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !5496, !srcloc !4861
  %16 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i21, align 8, !dbg !5497
  %17 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %16, i32 0, i32 0, !dbg !5497
  %rlock.i22 = bitcast %union.anon.3* %17 to %struct.raw_spinlock*, !dbg !5497
  ret void, !dbg !5498
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #2 !dbg !5499 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !5503, metadata !DIExpression()), !dbg !5504
  %call = call i64 @arch_local_save_flags() #7, !dbg !5505
  store i64 %call, i64* %f, align 8, !dbg !5506
  call void @arch_local_irq_disable() #7, !dbg !5507
  %0 = load i64, i64* %f, align 8, !dbg !5508
  ret i64 %0, !dbg !5509
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @plx9080_abort_dma(i8* %iobase, i32 %channel) #2 !dbg !5510 {
entry:
  %retval = alloca i32, align 4
  %iobase.addr = alloca i8*, align 8
  %channel.addr = alloca i32, align 4
  %dma_cs_addr = alloca i8*, align 8
  %dma_status = alloca i8, align 1
  %timeout = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %iobase, i8** %iobase.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %iobase.addr, metadata !5513, metadata !DIExpression()), !dbg !5514
  store i32 %channel, i32* %channel.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %channel.addr, metadata !5515, metadata !DIExpression()), !dbg !5516
  call void @llvm.dbg.declare(metadata i8** %dma_cs_addr, metadata !5517, metadata !DIExpression()), !dbg !5518
  call void @llvm.dbg.declare(metadata i8* %dma_status, metadata !5519, metadata !DIExpression()), !dbg !5520
  call void @llvm.dbg.declare(metadata i32* %timeout, metadata !5521, metadata !DIExpression()), !dbg !5523
  store i32 10000, i32* %timeout, align 4, !dbg !5523
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5524, metadata !DIExpression()), !dbg !5525
  %0 = load i8*, i8** %iobase.addr, align 8, !dbg !5526
  %1 = load i32, i32* %channel.addr, align 4, !dbg !5527
  %tobool = icmp ne i32 %1, 0, !dbg !5527
  %2 = zext i1 %tobool to i64, !dbg !5527
  %cond = select i1 %tobool, i32 169, i32 168, !dbg !5527
  %idx.ext = sext i32 %cond to i64, !dbg !5528
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext, !dbg !5528
  store i8* %add.ptr, i8** %dma_cs_addr, align 8, !dbg !5529
  %3 = load i8*, i8** %dma_cs_addr, align 8, !dbg !5530
  %call = call zeroext i8 @readb(i8* %3) #7, !dbg !5531
  store i8 %call, i8* %dma_status, align 1, !dbg !5532
  %4 = load i8, i8* %dma_status, align 1, !dbg !5533
  %conv = zext i8 %4 to i64, !dbg !5533
  %and = and i64 %conv, 1, !dbg !5535
  %cmp = icmp eq i64 %and, 0, !dbg !5536
  br i1 %cmp, label %if.then, label %if.end, !dbg !5537

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5538
  br label %return, !dbg !5538

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !5539
  br label %for.cond, !dbg !5541

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i8, i8* %dma_status, align 1, !dbg !5542
  %conv2 = zext i8 %5 to i64, !dbg !5542
  %and3 = and i64 %conv2, 16, !dbg !5544
  %tobool4 = icmp ne i64 %and3, 0, !dbg !5544
  br i1 %tobool4, label %land.rhs, label %land.end, !dbg !5545

land.rhs:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !5546
  %cmp5 = icmp ult i32 %6, 10000, !dbg !5547
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %7 = phi i1 [ false, %for.cond ], [ %cmp5, %land.rhs ], !dbg !5548
  br i1 %7, label %for.body, label %for.end, !dbg !5549

for.body:                                         ; preds = %land.end
  call void @__const_udelay(i64 4295) #7, !dbg !5550
  %8 = load i8*, i8** %dma_cs_addr, align 8, !dbg !5556
  %call7 = call zeroext i8 @readb(i8* %8) #7, !dbg !5557
  store i8 %call7, i8* %dma_status, align 1, !dbg !5558
  br label %for.inc, !dbg !5559

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !5560
  %inc = add i32 %9, 1, !dbg !5560
  store i32 %inc, i32* %i, align 4, !dbg !5560
  br label %for.cond, !dbg !5561, !llvm.loop !5562

for.end:                                          ; preds = %land.end
  %10 = load i32, i32* %i, align 4, !dbg !5564
  %cmp8 = icmp eq i32 %10, 10000, !dbg !5566
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !5567

if.then10:                                        ; preds = %for.end
  store i32 -110, i32* %retval, align 4, !dbg !5568
  br label %return, !dbg !5568

if.end11:                                         ; preds = %for.end
  %11 = load i8*, i8** %dma_cs_addr, align 8, !dbg !5569
  call void @writeb(i8 zeroext 4, i8* %11) #7, !dbg !5570
  %12 = load i8*, i8** %dma_cs_addr, align 8, !dbg !5571
  %call12 = call zeroext i8 @readb(i8* %12) #7, !dbg !5572
  store i8 %call12, i8* %dma_status, align 1, !dbg !5573
  store i32 0, i32* %i, align 4, !dbg !5574
  br label %for.cond13, !dbg !5576

for.cond13:                                       ; preds = %for.inc24, %if.end11
  %13 = load i8, i8* %dma_status, align 1, !dbg !5577
  %conv14 = zext i8 %13 to i64, !dbg !5577
  %and15 = and i64 %conv14, 16, !dbg !5579
  %cmp16 = icmp eq i64 %and15, 0, !dbg !5580
  br i1 %cmp16, label %land.rhs18, label %land.end21, !dbg !5581

land.rhs18:                                       ; preds = %for.cond13
  %14 = load i32, i32* %i, align 4, !dbg !5582
  %cmp19 = icmp ult i32 %14, 10000, !dbg !5583
  br label %land.end21

land.end21:                                       ; preds = %land.rhs18, %for.cond13
  %15 = phi i1 [ false, %for.cond13 ], [ %cmp19, %land.rhs18 ], !dbg !5584
  br i1 %15, label %for.body22, label %for.end26, !dbg !5585

for.body22:                                       ; preds = %land.end21
  call void @__const_udelay(i64 4295) #7, !dbg !5586
  %16 = load i8*, i8** %dma_cs_addr, align 8, !dbg !5592
  %call23 = call zeroext i8 @readb(i8* %16) #7, !dbg !5593
  store i8 %call23, i8* %dma_status, align 1, !dbg !5594
  br label %for.inc24, !dbg !5595

for.inc24:                                        ; preds = %for.body22
  %17 = load i32, i32* %i, align 4, !dbg !5596
  %inc25 = add i32 %17, 1, !dbg !5596
  store i32 %inc25, i32* %i, align 4, !dbg !5596
  br label %for.cond13, !dbg !5597, !llvm.loop !5598

for.end26:                                        ; preds = %land.end21
  %18 = load i32, i32* %i, align 4, !dbg !5600
  %cmp27 = icmp eq i32 %18, 10000, !dbg !5602
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !5603

if.then29:                                        ; preds = %for.end26
  store i32 -110, i32* %retval, align 4, !dbg !5604
  br label %return, !dbg !5604

if.end30:                                         ; preds = %for.end26
  store i32 0, i32* %retval, align 4, !dbg !5605
  br label %return, !dbg !5605

return:                                           ; preds = %if.end30, %if.then29, %if.then10, %if.then
  %19 = load i32, i32* %retval, align 4, !dbg !5606
  ret i32 %19, !dbg !5606
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #2 !dbg !5607 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !5608, metadata !DIExpression()), !dbg !5610
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5611, metadata !DIExpression()), !dbg !5610
  %0 = load i64, i64* %__edi, align 8, !dbg !5610
  store i64 %0, i64* %__edi, align 8, !dbg !5610
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5612, metadata !DIExpression()), !dbg !5610
  %1 = load i64, i64* %__esi, align 8, !dbg !5610
  store i64 %1, i64* %__esi, align 8, !dbg !5610
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5613, metadata !DIExpression()), !dbg !5610
  %2 = load i64, i64* %__edx, align 8, !dbg !5610
  store i64 %2, i64* %__edx, align 8, !dbg !5610
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5614, metadata !DIExpression()), !dbg !5610
  %3 = load i64, i64* %__ecx, align 8, !dbg !5610
  store i64 %3, i64* %__ecx, align 8, !dbg !5610
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5615, metadata !DIExpression()), !dbg !5610
  %4 = load i64, i64* %__eax, align 8, !dbg !5610
  store i64 %4, i64* %__eax, align 8, !dbg !5610
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !5610
  %6 = call i64 @llvm.read_register.i64(metadata !4276), !dbg !5616
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #6, !dbg !5616, !srcloc !5619
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5616
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5616
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5616
  call void @llvm.write_register.i64(metadata !4276, i64 %asmresult1), !dbg !5616
  %8 = load i64, i64* %__eax, align 8, !dbg !5616
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !5620, metadata !DIExpression()), !dbg !5622
  store i64 -1, i64* %__mask, align 8, !dbg !5622
  %9 = load i64, i64* %__mask, align 8, !dbg !5622
  store i64 %9, i64* %tmp, align 8, !dbg !5622
  %10 = load i64, i64* %tmp, align 8, !dbg !5622
  %and = and i64 %8, %10, !dbg !5616
  store i64 %and, i64* %__ret, align 8, !dbg !5616
  %11 = load i64, i64* %__ret, align 8, !dbg !5610
  store i64 %11, i64* %tmp2, align 8, !dbg !5623
  %12 = load i64, i64* %tmp2, align 8, !dbg !5610
  ret i64 %12, !dbg !5624
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #2 !dbg !5625 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5626, metadata !DIExpression()), !dbg !5628
  %0 = load i64, i64* %__edi, align 8, !dbg !5628
  store i64 %0, i64* %__edi, align 8, !dbg !5628
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5629, metadata !DIExpression()), !dbg !5628
  %1 = load i64, i64* %__esi, align 8, !dbg !5628
  store i64 %1, i64* %__esi, align 8, !dbg !5628
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5630, metadata !DIExpression()), !dbg !5628
  %2 = load i64, i64* %__edx, align 8, !dbg !5628
  store i64 %2, i64* %__edx, align 8, !dbg !5628
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5631, metadata !DIExpression()), !dbg !5628
  %3 = load i64, i64* %__ecx, align 8, !dbg !5628
  store i64 %3, i64* %__ecx, align 8, !dbg !5628
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5632, metadata !DIExpression()), !dbg !5628
  %4 = load i64, i64* %__eax, align 8, !dbg !5628
  store i64 %4, i64* %__eax, align 8, !dbg !5628
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !5628
  %6 = call i64 @llvm.read_register.i64(metadata !4276), !dbg !5628
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #6, !dbg !5628, !srcloc !5633
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5628
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5628
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5628
  call void @llvm.write_register.i64(metadata !4276, i64 %asmresult1), !dbg !5628
  ret void, !dbg !5634
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #5

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @readb(i8* %addr) #2 !dbg !5635 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i8, align 1
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5640, metadata !DIExpression()), !dbg !5641
  call void @llvm.dbg.declare(metadata i8* %ret, metadata !5642, metadata !DIExpression()), !dbg !5641
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !5641
  %1 = call i8 asm sideeffect "movb $1,$0", "=q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %0) #6, !dbg !5641, !srcloc !5643
  store i8 %1, i8* %ret, align 1, !dbg !5641
  %2 = load i8, i8* %ret, align 1, !dbg !5641
  ret i8 %2, !dbg !5641
}

; Function Attrs: noredzone
declare dso_local void @__const_udelay(i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writeb(i8 zeroext %val, i8* %addr) #2 !dbg !5644 {
entry:
  %val.addr = alloca i8, align 1
  %addr.addr = alloca i8*, align 8
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !5647, metadata !DIExpression()), !dbg !5648
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5649, metadata !DIExpression()), !dbg !5648
  %0 = load i8, i8* %val.addr, align 1, !dbg !5648
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !5648
  call void asm sideeffect "movb $0,$1", "q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 %0, i8* %1) #6, !dbg !5648, !srcloc !5650
  ret void, !dbg !5648
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #2 !dbg !5651 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !5654, metadata !DIExpression()), !dbg !5655
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5656, metadata !DIExpression()), !dbg !5658
  %0 = load i64, i64* %__edi, align 8, !dbg !5658
  store i64 %0, i64* %__edi, align 8, !dbg !5658
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5659, metadata !DIExpression()), !dbg !5658
  %1 = load i64, i64* %__esi, align 8, !dbg !5658
  store i64 %1, i64* %__esi, align 8, !dbg !5658
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5660, metadata !DIExpression()), !dbg !5658
  %2 = load i64, i64* %__edx, align 8, !dbg !5658
  store i64 %2, i64* %__edx, align 8, !dbg !5658
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5661, metadata !DIExpression()), !dbg !5658
  %3 = load i64, i64* %__ecx, align 8, !dbg !5658
  store i64 %3, i64* %__ecx, align 8, !dbg !5658
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5662, metadata !DIExpression()), !dbg !5658
  %4 = load i64, i64* %__eax, align 8, !dbg !5658
  store i64 %4, i64* %__eax, align 8, !dbg !5658
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !5658
  %6 = call i64 @llvm.read_register.i64(metadata !4276), !dbg !5658
  %7 = load i64, i64* %f.addr, align 8, !dbg !5658
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #6, !dbg !5658, !srcloc !5663
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !5658
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !5658
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5658
  call void @llvm.write_register.i64(metadata !4276, i64 %asmresult1), !dbg !5658
  ret void, !dbg !5664
}

; Function Attrs: noredzone
declare dso_local i32 @request_threaded_irq(i32, i32 (i32, i8*)*, i32 (i32, i8*)*, i64, i8*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @readl(i8* %addr) #2 !dbg !5665 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5668, metadata !DIExpression()), !dbg !5669
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5670, metadata !DIExpression()), !dbg !5669
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !5669
  %1 = bitcast i8* %0 to i32*, !dbg !5669
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %1) #6, !dbg !5669, !srcloc !5671
  store i32 %2, i32* %ret, align 4, !dbg !5669
  %3 = load i32, i32* %ret, align 4, !dbg !5669
  ret i32 %3, !dbg !5669
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gsc_hpdi_drain_dma(%struct.comedi_device* %dev, i32 %channel) #2 !dbg !5672 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %channel.addr = alloca i32, align 4
  %devpriv = alloca %struct.hpdi_private*, align 8
  %s = alloca %struct.comedi_subdevice*, align 8
  %cmd = alloca %struct.comedi_cmd*, align 8
  %idx = alloca i32, align 4
  %start = alloca i32, align 4
  %desc = alloca i32, align 4
  %size = alloca i32, align 4
  %next = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5673, metadata !DIExpression()), !dbg !5674
  store i32 %channel, i32* %channel.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %channel.addr, metadata !5675, metadata !DIExpression()), !dbg !5676
  call void @llvm.dbg.declare(metadata %struct.hpdi_private** %devpriv, metadata !5677, metadata !DIExpression()), !dbg !5678
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5679
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5680
  %1 = load i8*, i8** %private, align 8, !dbg !5680
  %2 = bitcast i8* %1 to %struct.hpdi_private*, !dbg !5679
  store %struct.hpdi_private* %2, %struct.hpdi_private** %devpriv, align 8, !dbg !5678
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s, metadata !5681, metadata !DIExpression()), !dbg !5682
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5683
  %read_subdev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %3, i32 0, i32 21, !dbg !5684
  %4 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %read_subdev, align 8, !dbg !5684
  store %struct.comedi_subdevice* %4, %struct.comedi_subdevice** %s, align 8, !dbg !5682
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd, metadata !5685, metadata !DIExpression()), !dbg !5686
  %5 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !5687
  %async = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %5, i32 0, i32 7, !dbg !5688
  %6 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5688
  %cmd1 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %6, i32 0, i32 17, !dbg !5689
  store %struct.comedi_cmd* %cmd1, %struct.comedi_cmd** %cmd, align 8, !dbg !5686
  call void @llvm.dbg.declare(metadata i32* %idx, metadata !5690, metadata !DIExpression()), !dbg !5691
  call void @llvm.dbg.declare(metadata i32* %start, metadata !5692, metadata !DIExpression()), !dbg !5693
  call void @llvm.dbg.declare(metadata i32* %desc, metadata !5694, metadata !DIExpression()), !dbg !5695
  call void @llvm.dbg.declare(metadata i32* %size, metadata !5696, metadata !DIExpression()), !dbg !5697
  call void @llvm.dbg.declare(metadata i32* %next, metadata !5698, metadata !DIExpression()), !dbg !5699
  %7 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !5700
  %plx9080_mmio = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %7, i32 0, i32 0, !dbg !5701
  %8 = load i8*, i8** %plx9080_mmio, align 8, !dbg !5701
  %9 = load i32, i32* %channel.addr, align 4, !dbg !5702
  %tobool = icmp ne i32 %9, 0, !dbg !5702
  %10 = zext i1 %tobool to i64, !dbg !5702
  %cond = select i1 %tobool, i32 152, i32 132, !dbg !5702
  %idx.ext = sext i32 %cond to i64, !dbg !5703
  %add.ptr = getelementptr i8, i8* %8, i64 %idx.ext, !dbg !5703
  %call = call i32 @readl(i8* %add.ptr) #7, !dbg !5704
  store i32 %call, i32* %next, align 4, !dbg !5705
  %11 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !5706
  %dma_desc_index = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %11, i32 0, i32 7, !dbg !5707
  %12 = load i32, i32* %dma_desc_index, align 8, !dbg !5707
  store i32 %12, i32* %idx, align 4, !dbg !5708
  %13 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !5709
  %dma_desc = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %13, i32 0, i32 3, !dbg !5709
  %14 = load %struct.plx_dma_desc*, %struct.plx_dma_desc** %dma_desc, align 8, !dbg !5709
  %15 = load i32, i32* %idx, align 4, !dbg !5709
  %idxprom = zext i32 %15 to i64, !dbg !5709
  %arrayidx = getelementptr %struct.plx_dma_desc, %struct.plx_dma_desc* %14, i64 %idxprom, !dbg !5709
  %pci_start_addr = getelementptr inbounds %struct.plx_dma_desc, %struct.plx_dma_desc* %arrayidx, i32 0, i32 0, !dbg !5709
  %16 = load i32, i32* %pci_start_addr, align 4, !dbg !5709
  store i32 %16, i32* %start, align 4, !dbg !5710
  store i32 0, i32* %desc, align 4, !dbg !5711
  br label %for.cond, !dbg !5713

for.cond:                                         ; preds = %for.inc, %entry
  %17 = load i32, i32* %next, align 4, !dbg !5714
  %18 = load i32, i32* %start, align 4, !dbg !5716
  %cmp = icmp ult i32 %17, %18, !dbg !5717
  br i1 %cmp, label %land.rhs, label %lor.lhs.false, !dbg !5718

lor.lhs.false:                                    ; preds = %for.cond
  %19 = load i32, i32* %next, align 4, !dbg !5719
  %20 = load i32, i32* %start, align 4, !dbg !5720
  %21 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !5721
  %block_size = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %21, i32 0, i32 11, !dbg !5722
  %22 = load i32, i32* %block_size, align 8, !dbg !5722
  %add = add i32 %20, %22, !dbg !5723
  %cmp2 = icmp uge i32 %19, %add, !dbg !5724
  br i1 %cmp2, label %land.rhs, label %land.end, !dbg !5725

land.rhs:                                         ; preds = %lor.lhs.false, %for.cond
  %23 = load i32, i32* %desc, align 4, !dbg !5726
  %24 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !5727
  %num_dma_descriptors = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %24, i32 0, i32 5, !dbg !5728
  %25 = load i32, i32* %num_dma_descriptors, align 8, !dbg !5728
  %cmp3 = icmp ult i32 %23, %25, !dbg !5729
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false
  %26 = phi i1 [ false, %lor.lhs.false ], [ %cmp3, %land.rhs ], !dbg !5730
  br i1 %26, label %for.body, label %for.end, !dbg !5731

for.body:                                         ; preds = %land.end
  %27 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !5732
  %block_size4 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %27, i32 0, i32 11, !dbg !5734
  %28 = load i32, i32* %block_size4, align 8, !dbg !5734
  %conv = zext i32 %28 to i64, !dbg !5732
  %div = udiv i64 %conv, 4, !dbg !5735
  %conv5 = trunc i64 %div to i32, !dbg !5732
  store i32 %conv5, i32* %size, align 4, !dbg !5736
  %29 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5737
  %stop_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %29, i32 0, i32 10, !dbg !5739
  %30 = load i32, i32* %stop_src, align 8, !dbg !5739
  %cmp6 = icmp eq i32 %30, 32, !dbg !5740
  br i1 %cmp6, label %if.then, label %if.end16, !dbg !5741

if.then:                                          ; preds = %for.body
  %31 = load i32, i32* %size, align 4, !dbg !5742
  %conv8 = zext i32 %31 to i64, !dbg !5742
  %32 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !5745
  %dio_count = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %32, i32 0, i32 10, !dbg !5746
  %33 = load i64, i64* %dio_count, align 8, !dbg !5746
  %cmp9 = icmp ugt i64 %conv8, %33, !dbg !5747
  br i1 %cmp9, label %if.then11, label %if.end, !dbg !5748

if.then11:                                        ; preds = %if.then
  %34 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !5749
  %dio_count12 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %34, i32 0, i32 10, !dbg !5750
  %35 = load i64, i64* %dio_count12, align 8, !dbg !5750
  %conv13 = trunc i64 %35 to i32, !dbg !5749
  store i32 %conv13, i32* %size, align 4, !dbg !5751
  br label %if.end, !dbg !5752

if.end:                                           ; preds = %if.then11, %if.then
  %36 = load i32, i32* %size, align 4, !dbg !5753
  %conv14 = zext i32 %36 to i64, !dbg !5753
  %37 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !5754
  %dio_count15 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %37, i32 0, i32 10, !dbg !5755
  %38 = load i64, i64* %dio_count15, align 8, !dbg !5756
  %sub = sub i64 %38, %conv14, !dbg !5756
  store i64 %sub, i64* %dio_count15, align 8, !dbg !5756
  br label %if.end16, !dbg !5757

if.end16:                                         ; preds = %if.end, %for.body
  %39 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !5758
  %40 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !5759
  %desc_dio_buffer = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %40, i32 0, i32 6, !dbg !5760
  %41 = load i32, i32* %idx, align 4, !dbg !5761
  %idxprom17 = zext i32 %41 to i64, !dbg !5759
  %arrayidx18 = getelementptr [256 x i32*], [256 x i32*]* %desc_dio_buffer, i64 0, i64 %idxprom17, !dbg !5759
  %42 = load i32*, i32** %arrayidx18, align 8, !dbg !5759
  %43 = bitcast i32* %42 to i8*, !dbg !5759
  %44 = load i32, i32* %size, align 4, !dbg !5762
  %call19 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %39, i8* %43, i32 %44) #7, !dbg !5763
  %45 = load i32, i32* %idx, align 4, !dbg !5764
  %inc = add i32 %45, 1, !dbg !5764
  store i32 %inc, i32* %idx, align 4, !dbg !5764
  %46 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !5765
  %num_dma_descriptors20 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %46, i32 0, i32 5, !dbg !5766
  %47 = load i32, i32* %num_dma_descriptors20, align 8, !dbg !5766
  %48 = load i32, i32* %idx, align 4, !dbg !5767
  %rem = urem i32 %48, %47, !dbg !5767
  store i32 %rem, i32* %idx, align 4, !dbg !5767
  %49 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !5768
  %dma_desc21 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %49, i32 0, i32 3, !dbg !5768
  %50 = load %struct.plx_dma_desc*, %struct.plx_dma_desc** %dma_desc21, align 8, !dbg !5768
  %51 = load i32, i32* %idx, align 4, !dbg !5768
  %idxprom22 = zext i32 %51 to i64, !dbg !5768
  %arrayidx23 = getelementptr %struct.plx_dma_desc, %struct.plx_dma_desc* %50, i64 %idxprom22, !dbg !5768
  %pci_start_addr24 = getelementptr inbounds %struct.plx_dma_desc, %struct.plx_dma_desc* %arrayidx23, i32 0, i32 0, !dbg !5768
  %52 = load i32, i32* %pci_start_addr24, align 4, !dbg !5768
  store i32 %52, i32* %start, align 4, !dbg !5769
  %53 = load i32, i32* %idx, align 4, !dbg !5770
  %54 = load %struct.hpdi_private*, %struct.hpdi_private** %devpriv, align 8, !dbg !5771
  %dma_desc_index25 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %54, i32 0, i32 7, !dbg !5772
  store i32 %53, i32* %dma_desc_index25, align 8, !dbg !5773
  br label %for.inc, !dbg !5774

for.inc:                                          ; preds = %if.end16
  %55 = load i32, i32* %desc, align 4, !dbg !5775
  %inc26 = add i32 %55, 1, !dbg !5775
  store i32 %inc26, i32* %desc, align 4, !dbg !5775
  br label %for.cond, !dbg !5776, !llvm.loop !5777

for.end:                                          ; preds = %land.end
  ret void, !dbg !5779
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noredzone
declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice*, i8*, i32) #1

; Function Attrs: noredzone
declare dso_local i8* @dma_alloc_attrs(%struct.device*, i64, i64*, i32, i64) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_dio_insn_config(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_src(i32* %src, i32 %flags) #2 !dbg !5780 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i32*, align 8
  %flags.addr = alloca i32, align 4
  %orig_src = alloca i32, align 4
  store i32* %src, i32** %src.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %src.addr, metadata !5783, metadata !DIExpression()), !dbg !5784
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5785, metadata !DIExpression()), !dbg !5786
  call void @llvm.dbg.declare(metadata i32* %orig_src, metadata !5787, metadata !DIExpression()), !dbg !5788
  %0 = load i32*, i32** %src.addr, align 8, !dbg !5789
  %1 = load i32, i32* %0, align 4, !dbg !5790
  store i32 %1, i32* %orig_src, align 4, !dbg !5788
  %2 = load i32, i32* %orig_src, align 4, !dbg !5791
  %3 = load i32, i32* %flags.addr, align 4, !dbg !5792
  %and = and i32 %2, %3, !dbg !5793
  %4 = load i32*, i32** %src.addr, align 8, !dbg !5794
  store i32 %and, i32* %4, align 4, !dbg !5795
  %5 = load i32*, i32** %src.addr, align 8, !dbg !5796
  %6 = load i32, i32* %5, align 4, !dbg !5798
  %cmp = icmp eq i32 %6, 0, !dbg !5799
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5800

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32*, i32** %src.addr, align 8, !dbg !5801
  %8 = load i32, i32* %7, align 4, !dbg !5802
  %9 = load i32, i32* %orig_src, align 4, !dbg !5803
  %cmp1 = icmp ne i32 %8, %9, !dbg !5804
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5805

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !5806
  br label %return, !dbg !5806

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %retval, align 4, !dbg !5807
  br label %return, !dbg !5807

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !5808
  ret i32 %10, !dbg !5808
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_is_unique(i32 %src) #2 !dbg !5809 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i32, align 4
  store i32 %src, i32* %src.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %src.addr, metadata !5812, metadata !DIExpression()), !dbg !5813
  %0 = load i32, i32* %src.addr, align 4, !dbg !5814
  %1 = load i32, i32* %src.addr, align 4, !dbg !5816
  %sub = sub i32 %1, 1, !dbg !5817
  %and = and i32 %0, %sub, !dbg !5818
  %cmp = icmp ne i32 %and, 0, !dbg !5819
  br i1 %cmp, label %if.then, label %if.end, !dbg !5820

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5821
  br label %return, !dbg !5821

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5822
  br label %return, !dbg !5822

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !5823
  ret i32 %2, !dbg !5823
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_arg_is(i32* %arg, i32 %val) #2 !dbg !5824 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca i32*, align 8
  %val.addr = alloca i32, align 4
  store i32* %arg, i32** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %arg.addr, metadata !5825, metadata !DIExpression()), !dbg !5826
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5827, metadata !DIExpression()), !dbg !5828
  %0 = load i32*, i32** %arg.addr, align 8, !dbg !5829
  %1 = load i32, i32* %0, align 4, !dbg !5831
  %2 = load i32, i32* %val.addr, align 4, !dbg !5832
  %cmp = icmp ne i32 %1, %2, !dbg !5833
  br i1 %cmp, label %if.then, label %if.end, !dbg !5834

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %val.addr, align 4, !dbg !5835
  %4 = load i32*, i32** %arg.addr, align 8, !dbg !5837
  store i32 %3, i32* %4, align 4, !dbg !5838
  store i32 -22, i32* %retval, align 4, !dbg !5839
  br label %return, !dbg !5839

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5840
  br label %return, !dbg !5840

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !5841
  ret i32 %5, !dbg !5841
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_arg_min(i32* %arg, i32 %val) #2 !dbg !5842 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca i32*, align 8
  %val.addr = alloca i32, align 4
  store i32* %arg, i32** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %arg.addr, metadata !5843, metadata !DIExpression()), !dbg !5844
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5845, metadata !DIExpression()), !dbg !5846
  %0 = load i32*, i32** %arg.addr, align 8, !dbg !5847
  %1 = load i32, i32* %0, align 4, !dbg !5849
  %2 = load i32, i32* %val.addr, align 4, !dbg !5850
  %cmp = icmp ult i32 %1, %2, !dbg !5851
  br i1 %cmp, label %if.then, label %if.end, !dbg !5852

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %val.addr, align 4, !dbg !5853
  %4 = load i32*, i32** %arg.addr, align 8, !dbg !5855
  store i32 %3, i32* %4, align 4, !dbg !5856
  store i32 -22, i32* %retval, align 4, !dbg !5857
  br label %return, !dbg !5857

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5858
  br label %return, !dbg !5858

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !5859
  ret i32 %5, !dbg !5859
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gsc_hpdi_check_chanlist(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_cmd* %cmd) #2 !dbg !5860 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %cmd.addr = alloca %struct.comedi_cmd*, align 8
  %i = alloca i32, align 4
  %chan = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5861, metadata !DIExpression()), !dbg !5862
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5863, metadata !DIExpression()), !dbg !5864
  store %struct.comedi_cmd* %cmd, %struct.comedi_cmd** %cmd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd.addr, metadata !5865, metadata !DIExpression()), !dbg !5866
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5867, metadata !DIExpression()), !dbg !5868
  store i32 0, i32* %i, align 4, !dbg !5869
  br label %for.cond, !dbg !5871

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !5872
  %1 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5874
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %1, i32 0, i32 13, !dbg !5875
  %2 = load i32, i32* %chanlist_len, align 8, !dbg !5875
  %cmp = icmp ult i32 %0, %2, !dbg !5876
  br i1 %cmp, label %for.body, label %for.end, !dbg !5877

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !5878, metadata !DIExpression()), !dbg !5880
  %3 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5881
  %chanlist = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %3, i32 0, i32 12, !dbg !5881
  %4 = load i32*, i32** %chanlist, align 8, !dbg !5881
  %5 = load i32, i32* %i, align 4, !dbg !5881
  %idxprom = sext i32 %5 to i64, !dbg !5881
  %arrayidx = getelementptr i32, i32* %4, i64 %idxprom, !dbg !5881
  %6 = load i32, i32* %arrayidx, align 4, !dbg !5881
  %and = and i32 %6, 65535, !dbg !5881
  store i32 %and, i32* %chan, align 4, !dbg !5880
  %7 = load i32, i32* %chan, align 4, !dbg !5882
  %8 = load i32, i32* %i, align 4, !dbg !5884
  %cmp1 = icmp ne i32 %7, %8, !dbg !5885
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5886

if.then:                                          ; preds = %for.body
  store i32 -22, i32* %retval, align 4, !dbg !5887
  br label %return, !dbg !5887

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5889

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4, !dbg !5890
  %inc = add i32 %9, 1, !dbg !5890
  store i32 %inc, i32* %i, align 4, !dbg !5890
  br label %for.cond, !dbg !5891, !llvm.loop !5892

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !5894
  br label %return, !dbg !5894

return:                                           ; preds = %for.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !5895
  ret i32 %10, !dbg !5895
}

; Function Attrs: noredzone
declare dso_local void @usleep_range(i64, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gsc_hpdi_pci_probe(%struct.pci_dev* %dev, %struct.pci_device_id* %id) #2 !dbg !5896 {
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
  %call = call i32 @comedi_pci_auto_config(%struct.pci_dev* %0, %struct.comedi_driver* @gsc_hpdi_driver, i64 %2) #7, !dbg !5904
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
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { noredzone }
attributes #8 = { cold noredzone }
attributes #9 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4276}
!llvm.module.flags = !{!4277, !4278, !4279, !4280}
!llvm.ident = !{!4281}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_gsc_hpdi_driver_init234", scope: !2, file: !3, line: 719, type: !202, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !133, globals: !146, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/staging/comedi/drivers/gsc_hpdi.c", directory: "/home/lizy2001/genbc/linux")
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
!133 = !{!134, !136, !138, !139, !142, !144}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !137, line: 148, baseType: !7)
!137 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!138 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !141)
!141 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !143, line: 27, baseType: !7)
!143 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !145, line: 31, baseType: !142)
!145 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!146 = !{!0, !147, !154, !161, !166, !171, !176, !3992, !4273}
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(name: "__exitcall_gsc_hpdi_driver_exit", scope: !2, file: !3, line: 719, type: !149, isLocal: true, isDefinition: true)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !150, line: 117, baseType: !151)
!150 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{null}
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author235", scope: !2, file: !3, line: 721, type: !156, isLocal: true, isDefinition: true, align: 8)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 368, elements: !159)
!157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!158 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!159 = !{!160}
!160 = !DISubrange(count: 46)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description236", scope: !2, file: !3, line: 722, type: !163, isLocal: true, isDefinition: true, align: 8)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 632, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 79)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file237", scope: !2, file: !3, line: 723, type: !168, isLocal: true, isDefinition: true, align: 8)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 432, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 54)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license238", scope: !2, file: !3, line: 723, type: !173, isLocal: true, isDefinition: true, align: 8)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 168, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 21)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(name: "gsc_hpdi_driver", scope: !2, file: !3, line: 693, type: !178, isLocal: true, isDefinition: true)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_driver", file: !123, line: 437, size: 576, elements: !179)
!179 = !{!180, !182, !184, !188, !3982, !3983, !3987, !3988, !3991}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !178, file: !123, line: 439, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !178, file: !123, line: 441, baseType: !183, size: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !178, file: !123, line: 442, baseType: !185, size: 64, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !187, line: 76, flags: DIFlagFwdDecl)
!187 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!188 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !178, file: !123, line: 443, baseType: !189, size: 64, offset: 192)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!192, !193, !3975}
!192 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_device", file: !123, line: 541, size: 1920, elements: !195)
!195 = !{!196, !197, !198, !201, !203, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3963, !3967, !3971}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !194, file: !123, line: 542, baseType: !192, size: 32)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !194, file: !123, line: 543, baseType: !181, size: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "pacer", scope: !194, file: !123, line: 544, baseType: !199, size: 64, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_8254", file: !123, line: 544, flags: DIFlagFwdDecl)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !194, file: !123, line: 545, baseType: !202, size: 64, offset: 192)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !194, file: !123, line: 547, baseType: !204, size: 64, offset: 256)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !206)
!206 = !{!207, !3360, !3361, !3364, !3365, !3416, !3507, !3508, !3509, !3510, !3511, !3520, !3625, !3638, !3641, !3642, !3646, !3648, !3649, !3650, !3654, !3660, !3661, !3664, !3668, !3758, !3759, !3760, !3761, !3762, !3794, !3795, !3796, !3799, !3802, !3803, !3804, !3805}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !205, file: !73, line: 462, baseType: !208, size: 512)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !209, line: 64, size: 512, elements: !210)
!209 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!210 = !{!211, !212, !218, !220, !280, !3211, !3350, !3355, !3356, !3357, !3358, !3359}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !208, file: !209, line: 65, baseType: !183, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !208, file: !209, line: 66, baseType: !213, size: 128, offset: 64)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !137, line: 178, size: 128, elements: !214)
!214 = !{!215, !217}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !213, file: !137, line: 179, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !213, file: !137, line: 179, baseType: !216, size: 64, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !208, file: !209, line: 67, baseType: !219, size: 64, offset: 192)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !208, file: !209, line: 68, baseType: !221, size: 64, offset: 256)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !209, line: 192, size: 704, elements: !223)
!223 = !{!224, !225, !241, !242}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !222, file: !209, line: 193, baseType: !213, size: 128)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !222, file: !209, line: 194, baseType: !226, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !227, line: 83, baseType: !228)
!227 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !227, line: 71, elements: !229)
!229 = !{!230}
!230 = !DIDerivedType(tag: DW_TAG_member, scope: !228, file: !227, line: 72, baseType: !231)
!231 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !228, file: !227, line: 72, elements: !232)
!232 = !{!233}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !231, file: !227, line: 73, baseType: !234)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !227, line: 20, elements: !235)
!235 = !{!236}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !234, file: !227, line: 21, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !238, line: 25, baseType: !239)
!238 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !238, line: 25, elements: !240)
!240 = !{}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !222, file: !209, line: 195, baseType: !208, size: 512, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !222, file: !209, line: 196, baseType: !243, size: 64, offset: 640)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !209, line: 156, size: 192, elements: !246)
!246 = !{!247, !252, !257}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !245, file: !209, line: 157, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{!192, !221, !219}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !245, file: !209, line: 158, baseType: !253, size: 64, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !254)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{!183, !221, !219}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !245, file: !209, line: 159, baseType: !258, size: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{!192, !221, !219, !262}
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !209, line: 148, size: 20736, elements: !264)
!264 = !{!265, !270, !274, !275, !279}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !263, file: !209, line: 149, baseType: !266, size: 192)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 192, elements: !268)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!268 = !{!269}
!269 = !DISubrange(count: 3)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !263, file: !209, line: 150, baseType: !271, size: 4096, offset: 192)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 4096, elements: !272)
!272 = !{!273}
!273 = !DISubrange(count: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !263, file: !209, line: 151, baseType: !192, size: 32, offset: 4288)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !263, file: !209, line: 152, baseType: !276, size: 16384, offset: 4320)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 16384, elements: !277)
!277 = !{!278}
!278 = !DISubrange(count: 2048)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !263, file: !209, line: 153, baseType: !192, size: 32, offset: 20704)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !208, file: !209, line: 69, baseType: !281, size: 64, offset: 320)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !209, line: 138, size: 448, elements: !283)
!283 = !{!284, !288, !317, !319, !3173, !3201, !3205}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !282, file: !209, line: 139, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{null, !219}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !282, file: !209, line: 140, baseType: !289, size: 64, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !291)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !292, line: 230, size: 128, elements: !293)
!292 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!293 = !{!294, !310}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !291, file: !292, line: 231, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{!298, !219, !303, !267}
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !137, line: 60, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !300, line: 73, baseType: !301)
!300 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !300, line: 15, baseType: !302)
!302 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !292, line: 30, size: 128, elements: !305)
!305 = !{!306, !307}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !304, file: !292, line: 31, baseType: !183, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !304, file: !292, line: 32, baseType: !308, size: 16, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !137, line: 19, baseType: !309)
!309 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !291, file: !292, line: 232, baseType: !311, size: 64, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!298, !219, !303, !183, !314}
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !137, line: 55, baseType: !315)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !300, line: 72, baseType: !316)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !300, line: 16, baseType: !138)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !282, file: !209, line: 141, baseType: !318, size: 64, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !282, file: !209, line: 142, baseType: !320, size: 64, offset: 192)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !323)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !292, line: 84, size: 320, elements: !324)
!324 = !{!325, !326, !330, !3170, !3171}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !323, file: !292, line: 85, baseType: !183, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !323, file: !292, line: 86, baseType: !327, size: 64, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!308, !219, !303, !192}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !323, file: !292, line: 88, baseType: !331, size: 64, offset: 128)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!308, !219, !334, !192}
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !292, line: 168, size: 448, elements: !336)
!336 = !{!337, !338, !339, !340, !3165, !3166}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !335, file: !292, line: 169, baseType: !304, size: 128)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !335, file: !292, line: 170, baseType: !314, size: 64, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !335, file: !292, line: 171, baseType: !202, size: 64, offset: 192)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !335, file: !292, line: 172, baseType: !341, size: 64, offset: 256)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{!298, !344, !219, !334, !267, !520, !314}
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !346)
!346 = !{!347, !365, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3148, !3149, !3158, !3159, !3160, !3161, !3162, !3163, !3164}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !345, file: !44, line: 920, baseType: !348, size: 128)
!348 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !345, file: !44, line: 917, size: 128, elements: !349)
!349 = !{!350, !356}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !348, file: !44, line: 918, baseType: !351, size: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !352, line: 58, size: 64, elements: !353)
!352 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!353 = !{!354}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !351, file: !352, line: 59, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !348, file: !44, line: 919, baseType: !357, size: 128, align: 64)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !137, line: 216, size: 128, align: 64, elements: !358)
!358 = !{!359, !361}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !357, file: !137, line: 217, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !357, file: !137, line: 218, baseType: !362, size: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DISubroutineType(types: !364)
!364 = !{null, !360}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !345, file: !44, line: 921, baseType: !366, size: 128, offset: 128)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !367, line: 8, size: 128, elements: !368)
!367 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!368 = !{!369, !373}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !366, file: !367, line: 9, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !372, line: 18, flags: DIFlagFwdDecl)
!372 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!373 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !366, file: !367, line: 10, baseType: !374, size: 64, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !372, line: 89, size: 1536, elements: !376)
!376 = !{!377, !378, !388, !396, !397, !417, !3098, !3100, !3112, !3113, !3114, !3115, !3116, !3122, !3123, !3124}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !375, file: !372, line: 91, baseType: !7, size: 32)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !375, file: !372, line: 92, baseType: !379, size: 32, offset: 32)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !380, line: 277, baseType: !381)
!380 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !380, line: 277, size: 32, elements: !382)
!382 = !{!383}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !381, file: !380, line: 277, baseType: !384, size: 32)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !380, line: 70, baseType: !385)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !380, line: 65, size: 32, elements: !386)
!386 = !{!387}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !385, file: !380, line: 66, baseType: !7, size: 32)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !375, file: !372, line: 93, baseType: !389, size: 128, offset: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !390, line: 38, size: 128, elements: !391)
!390 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!391 = !{!392, !394}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !389, file: !390, line: 39, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !389, file: !390, line: 39, baseType: !395, size: 64, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !375, file: !372, line: 94, baseType: !374, size: 64, offset: 192)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !375, file: !372, line: 95, baseType: !398, size: 128, offset: 256)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !372, line: 47, size: 128, elements: !399)
!399 = !{!400, !414}
!400 = !DIDerivedType(tag: DW_TAG_member, scope: !398, file: !372, line: 48, baseType: !401, size: 64)
!401 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !398, file: !372, line: 48, size: 64, elements: !402)
!402 = !{!403, !410}
!403 = !DIDerivedType(tag: DW_TAG_member, scope: !401, file: !372, line: 49, baseType: !404, size: 64)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !401, file: !372, line: 49, size: 64, elements: !405)
!405 = !{!406, !409}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !404, file: !372, line: 50, baseType: !407, size: 32)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !408, line: 21, baseType: !142)
!408 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!409 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !404, file: !372, line: 50, baseType: !407, size: 32, offset: 32)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !401, file: !372, line: 52, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !408, line: 23, baseType: !412)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !143, line: 31, baseType: !413)
!413 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !398, file: !372, line: 54, baseType: !415, size: 64, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !375, file: !372, line: 96, baseType: !418, size: 64, offset: 384)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !420)
!420 = !{!421, !422, !423, !431, !438, !439, !587, !2810, !2811, !2812, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !3074, !3082, !3083, !3084, !3094, !3095, !3096, !3097}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !419, file: !44, line: 611, baseType: !308, size: 16)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !419, file: !44, line: 612, baseType: !309, size: 16, offset: 16)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !419, file: !44, line: 613, baseType: !424, size: 32, offset: 32)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !425, line: 23, baseType: !426)
!425 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !425, line: 21, size: 32, elements: !427)
!427 = !{!428}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !426, file: !425, line: 22, baseType: !429, size: 32)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !137, line: 32, baseType: !430)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !300, line: 49, baseType: !7)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !419, file: !44, line: 614, baseType: !432, size: 32, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !425, line: 28, baseType: !433)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !425, line: 26, size: 32, elements: !434)
!434 = !{!435}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !433, file: !425, line: 27, baseType: !436, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !137, line: 33, baseType: !437)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !300, line: 50, baseType: !7)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !419, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !419, file: !44, line: 622, baseType: !440, size: 64, offset: 128)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !442)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !443)
!443 = !{!444, !448, !461, !465, !471, !475, !481, !485, !489, !493, !497, !498, !504, !508, !534, !563, !567, !573, !578, !582, !583}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !442, file: !44, line: 1865, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{!374, !418, !374, !7}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !442, file: !44, line: 1866, baseType: !449, size: 64, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DISubroutineType(types: !451)
!451 = !{!183, !374, !418, !452}
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !454, line: 10, size: 128, elements: !455)
!454 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!455 = !{!456, !460}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !453, file: !454, line: 11, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{null, !202}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !453, file: !454, line: 12, baseType: !202, size: 64, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !442, file: !44, line: 1867, baseType: !462, size: 64, offset: 128)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!192, !418, !192}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !442, file: !44, line: 1868, baseType: !466, size: 64, offset: 192)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!469, !418, !192}
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !442, file: !44, line: 1870, baseType: !472, size: 64, offset: 256)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{!192, !374, !267, !192}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !442, file: !44, line: 1872, baseType: !476, size: 64, offset: 320)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!192, !418, !374, !308, !479}
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !137, line: 30, baseType: !480)
!480 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !442, file: !44, line: 1873, baseType: !482, size: 64, offset: 384)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!192, !374, !418, !374}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !442, file: !44, line: 1874, baseType: !486, size: 64, offset: 448)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!192, !418, !374}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !442, file: !44, line: 1875, baseType: !490, size: 64, offset: 512)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DISubroutineType(types: !492)
!492 = !{!192, !418, !374, !183}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !442, file: !44, line: 1876, baseType: !494, size: 64, offset: 576)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{!192, !418, !374, !308}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !442, file: !44, line: 1877, baseType: !486, size: 64, offset: 640)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !442, file: !44, line: 1878, baseType: !499, size: 64, offset: 704)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!192, !418, !374, !308, !502}
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !137, line: 16, baseType: !503)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !137, line: 13, baseType: !407)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !442, file: !44, line: 1879, baseType: !505, size: 64, offset: 768)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{!192, !418, !374, !418, !374, !7}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !442, file: !44, line: 1881, baseType: !509, size: 64, offset: 832)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!192, !374, !512}
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !514)
!514 = !{!515, !516, !517, !518, !519, !523, !531, !532, !533}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !513, file: !44, line: 220, baseType: !7, size: 32)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !513, file: !44, line: 221, baseType: !308, size: 16, offset: 32)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !513, file: !44, line: 222, baseType: !424, size: 32, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !513, file: !44, line: 223, baseType: !432, size: 32, offset: 96)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !513, file: !44, line: 224, baseType: !520, size: 64, offset: 128)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !137, line: 46, baseType: !521)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !300, line: 88, baseType: !522)
!522 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !513, file: !44, line: 225, baseType: !524, size: 128, offset: 192)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !525, line: 13, size: 128, elements: !526)
!525 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!526 = !{!527, !530}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !524, file: !525, line: 14, baseType: !528, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !525, line: 8, baseType: !529)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !143, line: 30, baseType: !522)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !524, file: !525, line: 15, baseType: !302, size: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !513, file: !44, line: 226, baseType: !524, size: 128, offset: 320)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !513, file: !44, line: 227, baseType: !524, size: 128, offset: 448)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !513, file: !44, line: 234, baseType: !344, size: 64, offset: 576)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !442, file: !44, line: 1882, baseType: !535, size: 64, offset: 896)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!192, !538, !540, !407, !7}
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !366)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !542, line: 22, size: 1152, elements: !543)
!542 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!543 = !{!544, !545, !546, !547, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !541, file: !542, line: 23, baseType: !407, size: 32)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !541, file: !542, line: 24, baseType: !308, size: 16, offset: 32)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !541, file: !542, line: 25, baseType: !7, size: 32, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !541, file: !542, line: 26, baseType: !548, size: 32, offset: 96)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !137, line: 104, baseType: !407)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !541, file: !542, line: 27, baseType: !411, size: 64, offset: 128)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !541, file: !542, line: 28, baseType: !411, size: 64, offset: 192)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !541, file: !542, line: 37, baseType: !411, size: 64, offset: 256)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !541, file: !542, line: 38, baseType: !502, size: 32, offset: 320)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !541, file: !542, line: 39, baseType: !502, size: 32, offset: 352)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !541, file: !542, line: 40, baseType: !424, size: 32, offset: 384)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !541, file: !542, line: 41, baseType: !432, size: 32, offset: 416)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !541, file: !542, line: 42, baseType: !520, size: 64, offset: 448)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !541, file: !542, line: 43, baseType: !524, size: 128, offset: 512)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !541, file: !542, line: 44, baseType: !524, size: 128, offset: 640)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !541, file: !542, line: 45, baseType: !524, size: 128, offset: 768)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !541, file: !542, line: 46, baseType: !524, size: 128, offset: 896)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !541, file: !542, line: 47, baseType: !411, size: 64, offset: 1024)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !541, file: !542, line: 48, baseType: !411, size: 64, offset: 1088)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !442, file: !44, line: 1883, baseType: !564, size: 64, offset: 960)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{!298, !374, !267, !314}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !442, file: !44, line: 1884, baseType: !568, size: 64, offset: 1024)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!192, !418, !571, !411, !411}
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !442, file: !44, line: 1886, baseType: !574, size: 64, offset: 1088)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{!192, !418, !577, !192}
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !442, file: !44, line: 1887, baseType: !579, size: 64, offset: 1152)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DISubroutineType(types: !581)
!581 = !{!192, !418, !374, !344, !7, !308}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !442, file: !44, line: 1890, baseType: !494, size: 64, offset: 1216)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !442, file: !44, line: 1891, baseType: !584, size: 64, offset: 1280)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{!192, !418, !469, !192}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !419, file: !44, line: 623, baseType: !588, size: 64, offset: 192)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !590)
!590 = !{!591, !592, !593, !594, !595, !596, !643, !2417, !2499, !2582, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2598, !2602, !2603, !2606, !2607, !2610, !2611, !2612, !2653, !2680, !2681, !2682, !2683, !2684, !2685, !2688, !2690, !2697, !2698, !2700, !2701, !2702, !2761, !2762, !2777, !2778, !2779, !2780, !2781, !2784, !2785, !2786, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !589, file: !44, line: 1417, baseType: !213, size: 128)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !589, file: !44, line: 1418, baseType: !502, size: 32, offset: 128)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !589, file: !44, line: 1419, baseType: !141, size: 8, offset: 160)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !589, file: !44, line: 1420, baseType: !138, size: 64, offset: 192)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !589, file: !44, line: 1421, baseType: !520, size: 64, offset: 256)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !589, file: !44, line: 1422, baseType: !597, size: 64, offset: 320)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !599)
!599 = !{!600, !601, !602, !609, !613, !617, !621, !622, !623, !633, !636, !637, !638, !640, !641, !642}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !598, file: !44, line: 2229, baseType: !183, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !598, file: !44, line: 2230, baseType: !192, size: 32, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !598, file: !44, line: 2238, baseType: !603, size: 64, offset: 128)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{!192, !606}
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !608, line: 28, flags: DIFlagFwdDecl)
!608 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!609 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !598, file: !44, line: 2239, baseType: !610, size: 64, offset: 192)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !612)
!612 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !598, file: !44, line: 2240, baseType: !614, size: 64, offset: 256)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{!374, !597, !192, !183, !202}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !598, file: !44, line: 2242, baseType: !618, size: 64, offset: 320)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{null, !588}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !598, file: !44, line: 2243, baseType: !185, size: 64, offset: 384)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !598, file: !44, line: 2244, baseType: !597, size: 64, offset: 448)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !598, file: !44, line: 2245, baseType: !624, size: 64, offset: 512)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !137, line: 182, size: 64, elements: !625)
!625 = !{!626}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !624, file: !137, line: 183, baseType: !627, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !137, line: 186, size: 128, elements: !629)
!629 = !{!630, !631}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !628, file: !137, line: 187, baseType: !627, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !628, file: !137, line: 187, baseType: !632, size: 64, offset: 64)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !598, file: !44, line: 2247, baseType: !634, offset: 576)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !635, line: 187, elements: !240)
!635 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!636 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !598, file: !44, line: 2248, baseType: !634, offset: 576)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !598, file: !44, line: 2249, baseType: !634, offset: 576)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !598, file: !44, line: 2250, baseType: !639, offset: 576)
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !634, elements: !268)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !598, file: !44, line: 2252, baseType: !634, offset: 576)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !598, file: !44, line: 2253, baseType: !634, offset: 576)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !598, file: !44, line: 2254, baseType: !634, offset: 576)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !589, file: !44, line: 1423, baseType: !644, size: 64, offset: 384)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !646)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !647)
!647 = !{!648, !652, !656, !657, !661, !667, !671, !672, !673, !677, !681, !682, !683, !684, !690, !695, !696, !703, !704, !705, !706, !2401, !2416}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !646, file: !44, line: 1936, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{!418, !588}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !646, file: !44, line: 1937, baseType: !653, size: 64, offset: 64)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{null, !418}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !646, file: !44, line: 1938, baseType: !653, size: 64, offset: 128)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !646, file: !44, line: 1940, baseType: !658, size: 64, offset: 192)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DISubroutineType(types: !660)
!660 = !{null, !418, !192}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !646, file: !44, line: 1941, baseType: !662, size: 64, offset: 256)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DISubroutineType(types: !664)
!664 = !{!192, !418, !665}
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !646, file: !44, line: 1942, baseType: !668, size: 64, offset: 320)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DISubroutineType(types: !670)
!670 = !{!192, !418}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !646, file: !44, line: 1943, baseType: !653, size: 64, offset: 384)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !646, file: !44, line: 1944, baseType: !618, size: 64, offset: 448)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !646, file: !44, line: 1945, baseType: !674, size: 64, offset: 512)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{!192, !588, !192}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !646, file: !44, line: 1946, baseType: !678, size: 64, offset: 576)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{!192, !588}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !646, file: !44, line: 1947, baseType: !678, size: 64, offset: 640)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !646, file: !44, line: 1948, baseType: !678, size: 64, offset: 704)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !646, file: !44, line: 1949, baseType: !678, size: 64, offset: 768)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !646, file: !44, line: 1950, baseType: !685, size: 64, offset: 832)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DISubroutineType(types: !687)
!687 = !{!192, !374, !688}
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !646, file: !44, line: 1951, baseType: !691, size: 64, offset: 896)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DISubroutineType(types: !693)
!693 = !{!192, !588, !694, !267}
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !646, file: !44, line: 1952, baseType: !618, size: 64, offset: 960)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !646, file: !44, line: 1954, baseType: !697, size: 64, offset: 1024)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DISubroutineType(types: !699)
!699 = !{!192, !700, !374}
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !702, line: 539, flags: DIFlagFwdDecl)
!702 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!703 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !646, file: !44, line: 1955, baseType: !697, size: 64, offset: 1088)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !646, file: !44, line: 1956, baseType: !697, size: 64, offset: 1152)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !646, file: !44, line: 1957, baseType: !697, size: 64, offset: 1216)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !646, file: !44, line: 1963, baseType: !707, size: 64, offset: 1280)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DISubroutineType(types: !709)
!709 = !{!192, !588, !710, !136}
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !712, line: 68, size: 512, align: 128, elements: !713)
!712 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!713 = !{!714, !715, !2393, !2400}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !711, file: !712, line: 69, baseType: !138, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, scope: !711, file: !712, line: 77, baseType: !716, size: 320, offset: 64)
!716 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !711, file: !712, line: 77, size: 320, elements: !717)
!717 = !{!718, !905, !910, !938, !946, !952, !2324, !2392}
!718 = !DIDerivedType(tag: DW_TAG_member, scope: !716, file: !712, line: 78, baseType: !719, size: 320)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !716, file: !712, line: 78, size: 320, elements: !720)
!720 = !{!721, !722, !903, !904}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !719, file: !712, line: 84, baseType: !213, size: 128)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !719, file: !712, line: 86, baseType: !723, size: 64, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !725)
!725 = !{!726, !727, !734, !735, !740, !755, !771, !772, !773, !774, !896, !897, !900, !901, !902}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !724, file: !44, line: 452, baseType: !418, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !724, file: !44, line: 453, baseType: !728, size: 128, offset: 64)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !729, line: 292, size: 128, elements: !730)
!729 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!730 = !{!731, !732, !733}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !728, file: !729, line: 293, baseType: !226)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !728, file: !729, line: 295, baseType: !136, size: 32)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !728, file: !729, line: 296, baseType: !202, size: 64, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !724, file: !44, line: 454, baseType: !136, size: 32, offset: 192)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !724, file: !44, line: 455, baseType: !736, size: 32, offset: 224)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !137, line: 168, baseType: !737)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !137, line: 166, size: 32, elements: !738)
!738 = !{!739}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !737, file: !137, line: 167, baseType: !192, size: 32)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !724, file: !44, line: 460, baseType: !741, size: 128, offset: 256)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !742, line: 125, size: 128, elements: !743)
!742 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!743 = !{!744, !754}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !741, file: !742, line: 126, baseType: !745, size: 64)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !742, line: 31, size: 64, elements: !746)
!746 = !{!747}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !745, file: !742, line: 32, baseType: !748, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !742, line: 24, size: 192, align: 64, elements: !750)
!750 = !{!751, !752, !753}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !749, file: !742, line: 25, baseType: !138, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !749, file: !742, line: 26, baseType: !748, size: 64, offset: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !749, file: !742, line: 27, baseType: !748, size: 64, offset: 128)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !741, file: !742, line: 127, baseType: !748, size: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !724, file: !44, line: 461, baseType: !756, size: 256, offset: 384)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !757, line: 35, size: 256, elements: !758)
!757 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!758 = !{!759, !767, !768, !770}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !756, file: !757, line: 36, baseType: !760, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !761, line: 13, baseType: !762)
!761 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !137, line: 175, baseType: !763)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !137, line: 173, size: 64, elements: !764)
!764 = !{!765}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !763, file: !137, line: 174, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !408, line: 22, baseType: !529)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !756, file: !757, line: 42, baseType: !760, size: 64, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !756, file: !757, line: 46, baseType: !769, offset: 128)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !227, line: 29, baseType: !234)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !756, file: !757, line: 47, baseType: !213, size: 128, offset: 128)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !724, file: !44, line: 462, baseType: !138, size: 64, offset: 640)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !724, file: !44, line: 463, baseType: !138, size: 64, offset: 704)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !724, file: !44, line: 464, baseType: !138, size: 64, offset: 768)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !724, file: !44, line: 465, baseType: !775, size: 64, offset: 832)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !777)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !778)
!778 = !{!779, !783, !787, !791, !795, !799, !805, !811, !815, !820, !824, !828, !832, !860, !864, !870, !871, !872, !876, !881, !885, !892}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !777, file: !44, line: 368, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DISubroutineType(types: !782)
!782 = !{!192, !710, !665}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !777, file: !44, line: 369, baseType: !784, size: 64, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DISubroutineType(types: !786)
!786 = !{!192, !344, !710}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !777, file: !44, line: 372, baseType: !788, size: 64, offset: 128)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DISubroutineType(types: !790)
!790 = !{!192, !723, !665}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !777, file: !44, line: 375, baseType: !792, size: 64, offset: 192)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{!192, !710}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !777, file: !44, line: 381, baseType: !796, size: 64, offset: 256)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{!192, !344, !723, !216, !7}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !777, file: !44, line: 383, baseType: !800, size: 64, offset: 320)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DISubroutineType(types: !802)
!802 = !{null, !803}
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !777, file: !44, line: 385, baseType: !806, size: 64, offset: 384)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{!192, !344, !723, !520, !7, !7, !809, !810}
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !777, file: !44, line: 388, baseType: !812, size: 64, offset: 448)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{!192, !344, !723, !520, !7, !7, !710, !202}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !777, file: !44, line: 393, baseType: !816, size: 64, offset: 512)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{!819, !723, !819}
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !137, line: 125, baseType: !411)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !777, file: !44, line: 394, baseType: !821, size: 64, offset: 576)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DISubroutineType(types: !823)
!823 = !{null, !710, !7, !7}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !777, file: !44, line: 395, baseType: !825, size: 64, offset: 640)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{!192, !710, !136}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !777, file: !44, line: 396, baseType: !829, size: 64, offset: 704)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{null, !710}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !777, file: !44, line: 397, baseType: !833, size: 64, offset: 768)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{!298, !836, !858}
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !838)
!838 = !{!839, !840, !841, !845, !846, !847, !850, !851}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !837, file: !44, line: 321, baseType: !344, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !837, file: !44, line: 326, baseType: !520, size: 64, offset: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !837, file: !44, line: 327, baseType: !842, size: 64, offset: 128)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{null, !836, !302, !302}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !837, file: !44, line: 328, baseType: !202, size: 64, offset: 192)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !837, file: !44, line: 329, baseType: !192, size: 32, offset: 256)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !837, file: !44, line: 330, baseType: !848, size: 16, offset: 288)
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !408, line: 19, baseType: !849)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !143, line: 24, baseType: !309)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !837, file: !44, line: 331, baseType: !848, size: 16, offset: 304)
!851 = !DIDerivedType(tag: DW_TAG_member, scope: !837, file: !44, line: 332, baseType: !852, size: 64, offset: 320)
!852 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !837, file: !44, line: 332, size: 64, elements: !853)
!853 = !{!854, !855}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !852, file: !44, line: 333, baseType: !7, size: 32)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !852, file: !44, line: 334, baseType: !856, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !777, file: !44, line: 402, baseType: !861, size: 64, offset: 832)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{!192, !723, !710, !710, !5}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !777, file: !44, line: 404, baseType: !865, size: 64, offset: 896)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{!479, !710, !868}
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !869, line: 305, baseType: !7)
!869 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!870 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !777, file: !44, line: 405, baseType: !829, size: 64, offset: 960)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !777, file: !44, line: 406, baseType: !792, size: 64, offset: 1024)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !777, file: !44, line: 407, baseType: !873, size: 64, offset: 1088)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{!192, !710, !138, !138}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !777, file: !44, line: 409, baseType: !877, size: 64, offset: 1152)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DISubroutineType(types: !879)
!879 = !{null, !710, !880, !880}
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !777, file: !44, line: 410, baseType: !882, size: 64, offset: 1216)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DISubroutineType(types: !884)
!884 = !{!192, !723, !710}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !777, file: !44, line: 413, baseType: !886, size: 64, offset: 1280)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DISubroutineType(types: !888)
!888 = !{!192, !889, !344, !891}
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !777, file: !44, line: 415, baseType: !893, size: 64, offset: 1344)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DISubroutineType(types: !895)
!895 = !{null, !344}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !724, file: !44, line: 466, baseType: !138, size: 64, offset: 896)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !724, file: !44, line: 467, baseType: !898, size: 32, offset: 960)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !899, line: 8, baseType: !407)
!899 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!900 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !724, file: !44, line: 468, baseType: !226, offset: 992)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !724, file: !44, line: 469, baseType: !213, size: 128, offset: 1024)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !724, file: !44, line: 470, baseType: !202, size: 64, offset: 1152)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !719, file: !712, line: 87, baseType: !138, size: 64, offset: 192)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !719, file: !712, line: 94, baseType: !138, size: 64, offset: 256)
!905 = !DIDerivedType(tag: DW_TAG_member, scope: !716, file: !712, line: 96, baseType: !906, size: 64)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !716, file: !712, line: 96, size: 64, elements: !907)
!907 = !{!908}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !906, file: !712, line: 101, baseType: !909, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !137, line: 143, baseType: !411)
!910 = !DIDerivedType(tag: DW_TAG_member, scope: !716, file: !712, line: 103, baseType: !911, size: 320)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !716, file: !712, line: 103, size: 320, elements: !912)
!912 = !{!913, !923, !926, !927}
!913 = !DIDerivedType(tag: DW_TAG_member, scope: !911, file: !712, line: 104, baseType: !914, size: 128)
!914 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !911, file: !712, line: 104, size: 128, elements: !915)
!915 = !{!916, !917}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !914, file: !712, line: 105, baseType: !213, size: 128)
!917 = !DIDerivedType(tag: DW_TAG_member, scope: !914, file: !712, line: 106, baseType: !918, size: 128)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !914, file: !712, line: 106, size: 128, elements: !919)
!919 = !{!920, !921, !922}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !918, file: !712, line: 107, baseType: !710, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !918, file: !712, line: 109, baseType: !192, size: 32, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !918, file: !712, line: 110, baseType: !192, size: 32, offset: 96)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !911, file: !712, line: 117, baseType: !924, size: 64, offset: 128)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !712, line: 117, flags: DIFlagFwdDecl)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !911, file: !712, line: 119, baseType: !202, size: 64, offset: 192)
!927 = !DIDerivedType(tag: DW_TAG_member, scope: !911, file: !712, line: 120, baseType: !928, size: 64, offset: 256)
!928 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !911, file: !712, line: 120, size: 64, elements: !929)
!929 = !{!930, !931, !932}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !928, file: !712, line: 121, baseType: !202, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !928, file: !712, line: 122, baseType: !138, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, scope: !928, file: !712, line: 123, baseType: !933, size: 32)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !928, file: !712, line: 123, size: 32, elements: !934)
!934 = !{!935, !936, !937}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !933, file: !712, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !933, file: !712, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !933, file: !712, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!938 = !DIDerivedType(tag: DW_TAG_member, scope: !716, file: !712, line: 130, baseType: !939, size: 192)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !716, file: !712, line: 130, size: 192, elements: !940)
!940 = !{!941, !942, !943, !944, !945}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !939, file: !712, line: 131, baseType: !138, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !939, file: !712, line: 134, baseType: !141, size: 8, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !939, file: !712, line: 135, baseType: !141, size: 8, offset: 72)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !939, file: !712, line: 136, baseType: !736, size: 32, offset: 96)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !939, file: !712, line: 137, baseType: !7, size: 32, offset: 128)
!946 = !DIDerivedType(tag: DW_TAG_member, scope: !716, file: !712, line: 139, baseType: !947, size: 256)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !716, file: !712, line: 139, size: 256, elements: !948)
!948 = !{!949, !950, !951}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !947, file: !712, line: 140, baseType: !138, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !947, file: !712, line: 141, baseType: !736, size: 32, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !947, file: !712, line: 143, baseType: !213, size: 128, offset: 128)
!952 = !DIDerivedType(tag: DW_TAG_member, scope: !716, file: !712, line: 145, baseType: !953, size: 256)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !716, file: !712, line: 145, size: 256, elements: !954)
!954 = !{!955, !956, !958, !959, !2323}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !953, file: !712, line: 146, baseType: !138, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !953, file: !712, line: 147, baseType: !957, size: 64, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !702, line: 509, baseType: !710)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !953, file: !712, line: 148, baseType: !138, size: 64, offset: 128)
!959 = !DIDerivedType(tag: DW_TAG_member, scope: !953, file: !712, line: 149, baseType: !960, size: 64, offset: 192)
!960 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !953, file: !712, line: 149, size: 64, elements: !961)
!961 = !{!962, !2322}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !960, file: !712, line: 150, baseType: !963, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !712, line: 388, size: 7296, elements: !965)
!965 = !{!966, !2318}
!966 = !DIDerivedType(tag: DW_TAG_member, scope: !964, file: !712, line: 389, baseType: !967, size: 7296)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !964, file: !712, line: 389, size: 7296, elements: !968)
!968 = !{!969, !1087, !1088, !1089, !1093, !1094, !1095, !1096, !1097, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1138, !1146, !1149, !1195, !1196, !2302, !2303, !2306, !2307, !2308, !2311, !2312, !2313, !2316, !2317}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !967, file: !712, line: 390, baseType: !970, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !712, line: 305, size: 1472, elements: !972)
!972 = !{!973, !974, !975, !976, !977, !978, !979, !980, !987, !988, !993, !994, !997, !1081, !1082, !1083, !1084, !1085}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !971, file: !712, line: 308, baseType: !138, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !971, file: !712, line: 309, baseType: !138, size: 64, offset: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !971, file: !712, line: 313, baseType: !970, size: 64, offset: 128)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !971, file: !712, line: 313, baseType: !970, size: 64, offset: 192)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !971, file: !712, line: 315, baseType: !749, size: 192, align: 64, offset: 256)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !971, file: !712, line: 323, baseType: !138, size: 64, offset: 448)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !971, file: !712, line: 327, baseType: !963, size: 64, offset: 512)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !971, file: !712, line: 333, baseType: !981, size: 64, offset: 576)
!981 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !702, line: 284, baseType: !982)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !702, line: 284, size: 64, elements: !983)
!983 = !{!984}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !982, file: !702, line: 284, baseType: !985, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !986, line: 19, baseType: !138)
!986 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!987 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !971, file: !712, line: 334, baseType: !138, size: 64, offset: 640)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !971, file: !712, line: 343, baseType: !989, size: 256, offset: 704)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !971, file: !712, line: 340, size: 256, elements: !990)
!990 = !{!991, !992}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !989, file: !712, line: 341, baseType: !749, size: 192, align: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !989, file: !712, line: 342, baseType: !138, size: 64, offset: 192)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !971, file: !712, line: 351, baseType: !213, size: 128, offset: 960)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !971, file: !712, line: 353, baseType: !995, size: 64, offset: 1088)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !712, line: 353, flags: DIFlagFwdDecl)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !971, file: !712, line: 356, baseType: !998, size: 64, offset: 1152)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1000)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1001)
!1001 = !{!1002, !1006, !1007, !1011, !1015, !1055, !1059, !1063, !1067, !1068, !1069, !1073, !1077}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1000, file: !14, line: 558, baseType: !1003, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{null, !970}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1000, file: !14, line: 559, baseType: !1003, size: 64, offset: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1000, file: !14, line: 560, baseType: !1008, size: 64, offset: 128)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!192, !970, !138}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1000, file: !14, line: 561, baseType: !1012, size: 64, offset: 192)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!192, !970}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1000, file: !14, line: 562, baseType: !1016, size: 64, offset: 256)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!1019, !1020}
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !712, line: 682, baseType: !7)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1022)
!1022 = !{!1023, !1024, !1025, !1026, !1027, !1028, !1035, !1042, !1048, !1049, !1050, !1052, !1054}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1021, file: !14, line: 509, baseType: !970, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1021, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1021, file: !14, line: 511, baseType: !136, size: 32, offset: 96)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1021, file: !14, line: 512, baseType: !138, size: 64, offset: 128)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1021, file: !14, line: 513, baseType: !138, size: 64, offset: 192)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1021, file: !14, line: 514, baseType: !1029, size: 64, offset: 256)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !702, line: 385, baseType: !1031)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !702, line: 385, size: 64, elements: !1032)
!1032 = !{!1033}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1031, file: !702, line: 385, baseType: !1034, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !986, line: 15, baseType: !138)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1021, file: !14, line: 516, baseType: !1036, size: 64, offset: 320)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !702, line: 359, baseType: !1038)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !702, line: 359, size: 64, elements: !1039)
!1039 = !{!1040}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1038, file: !702, line: 359, baseType: !1041, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !986, line: 16, baseType: !138)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1021, file: !14, line: 519, baseType: !1043, size: 64, offset: 384)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !986, line: 21, baseType: !1044)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !986, line: 21, size: 64, elements: !1045)
!1045 = !{!1046}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1044, file: !986, line: 21, baseType: !1047, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !986, line: 14, baseType: !138)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1021, file: !14, line: 521, baseType: !710, size: 64, offset: 448)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1021, file: !14, line: 522, baseType: !710, size: 64, offset: 512)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1021, file: !14, line: 528, baseType: !1051, size: 64, offset: 576)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1021, file: !14, line: 532, baseType: !1053, size: 64, offset: 640)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1021, file: !14, line: 536, baseType: !957, size: 64, offset: 704)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1000, file: !14, line: 563, baseType: !1056, size: 64, offset: 320)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!1019, !1020, !13}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1000, file: !14, line: 565, baseType: !1060, size: 64, offset: 384)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{null, !1020, !138, !138}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1000, file: !14, line: 567, baseType: !1064, size: 64, offset: 448)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!138, !970}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1000, file: !14, line: 571, baseType: !1016, size: 64, offset: 512)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1000, file: !14, line: 574, baseType: !1016, size: 64, offset: 576)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1000, file: !14, line: 579, baseType: !1070, size: 64, offset: 640)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!192, !970, !138, !202, !192, !192}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1000, file: !14, line: 585, baseType: !1074, size: 64, offset: 704)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!183, !970}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1000, file: !14, line: 615, baseType: !1078, size: 64, offset: 768)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!710, !970, !138}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !971, file: !712, line: 359, baseType: !138, size: 64, offset: 1216)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !971, file: !712, line: 361, baseType: !344, size: 64, offset: 1280)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !971, file: !712, line: 362, baseType: !202, size: 64, offset: 1344)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !971, file: !712, line: 365, baseType: !760, size: 64, offset: 1408)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !971, file: !712, line: 373, baseType: !1086, offset: 1472)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !712, line: 296, elements: !240)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !967, file: !712, line: 391, baseType: !745, size: 64, offset: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !967, file: !712, line: 392, baseType: !411, size: 64, offset: 128)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !967, file: !712, line: 394, baseType: !1090, size: 64, offset: 192)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!138, !344, !138, !138, !138, !138}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !967, file: !712, line: 398, baseType: !138, size: 64, offset: 256)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !967, file: !712, line: 399, baseType: !138, size: 64, offset: 320)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !967, file: !712, line: 405, baseType: !138, size: 64, offset: 384)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !967, file: !712, line: 406, baseType: !138, size: 64, offset: 448)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !967, file: !712, line: 407, baseType: !1098, size: 64, offset: 512)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !702, line: 286, baseType: !1100)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !702, line: 286, size: 64, elements: !1101)
!1101 = !{!1102}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1100, file: !702, line: 286, baseType: !1103, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !986, line: 18, baseType: !138)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !967, file: !712, line: 416, baseType: !736, size: 32, offset: 576)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !967, file: !712, line: 428, baseType: !736, size: 32, offset: 608)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !967, file: !712, line: 437, baseType: !736, size: 32, offset: 640)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !967, file: !712, line: 447, baseType: !736, size: 32, offset: 672)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !967, file: !712, line: 450, baseType: !760, size: 64, offset: 704)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !967, file: !712, line: 452, baseType: !192, size: 32, offset: 768)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !967, file: !712, line: 454, baseType: !226, offset: 800)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !967, file: !712, line: 457, baseType: !756, size: 256, offset: 832)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !967, file: !712, line: 459, baseType: !213, size: 128, offset: 1088)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !967, file: !712, line: 466, baseType: !138, size: 64, offset: 1216)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !967, file: !712, line: 467, baseType: !138, size: 64, offset: 1280)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !967, file: !712, line: 469, baseType: !138, size: 64, offset: 1344)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !967, file: !712, line: 470, baseType: !138, size: 64, offset: 1408)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !967, file: !712, line: 471, baseType: !762, size: 64, offset: 1472)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !967, file: !712, line: 472, baseType: !138, size: 64, offset: 1536)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !967, file: !712, line: 473, baseType: !138, size: 64, offset: 1600)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !967, file: !712, line: 474, baseType: !138, size: 64, offset: 1664)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !967, file: !712, line: 475, baseType: !138, size: 64, offset: 1728)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !967, file: !712, line: 477, baseType: !226, offset: 1792)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !967, file: !712, line: 478, baseType: !138, size: 64, offset: 1792)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !967, file: !712, line: 478, baseType: !138, size: 64, offset: 1856)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !967, file: !712, line: 478, baseType: !138, size: 64, offset: 1920)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !967, file: !712, line: 478, baseType: !138, size: 64, offset: 1984)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !967, file: !712, line: 479, baseType: !138, size: 64, offset: 2048)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !967, file: !712, line: 479, baseType: !138, size: 64, offset: 2112)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !967, file: !712, line: 479, baseType: !138, size: 64, offset: 2176)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !967, file: !712, line: 480, baseType: !138, size: 64, offset: 2240)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !967, file: !712, line: 480, baseType: !138, size: 64, offset: 2304)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !967, file: !712, line: 480, baseType: !138, size: 64, offset: 2368)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !967, file: !712, line: 480, baseType: !138, size: 64, offset: 2432)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !967, file: !712, line: 482, baseType: !1135, size: 2816, offset: 2496)
!1135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 2816, elements: !1136)
!1136 = !{!1137}
!1137 = !DISubrange(count: 44)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !967, file: !712, line: 488, baseType: !1139, size: 256, offset: 5312)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1140, line: 60, size: 256, elements: !1141)
!1140 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1141 = !{!1142}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1139, file: !1140, line: 61, baseType: !1143, size: 256)
!1143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !760, size: 256, elements: !1144)
!1144 = !{!1145}
!1145 = !DISubrange(count: 4)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !967, file: !712, line: 490, baseType: !1147, size: 64, offset: 5568)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !712, line: 490, flags: DIFlagFwdDecl)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !967, file: !712, line: 493, baseType: !1150, size: 896, offset: 5632)
!1150 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1151, line: 53, baseType: !1152)
!1151 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1151, line: 13, size: 896, elements: !1153)
!1153 = !{!1154, !1155, !1156, !1157, !1160, !1161, !1168, !1169, !1189, !1190, !1191}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1152, file: !1151, line: 18, baseType: !411, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1152, file: !1151, line: 28, baseType: !762, size: 64, offset: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1152, file: !1151, line: 31, baseType: !756, size: 256, offset: 128)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1152, file: !1151, line: 32, baseType: !1158, size: 64, offset: 384)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1151, line: 32, flags: DIFlagFwdDecl)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1152, file: !1151, line: 37, baseType: !309, size: 16, offset: 448)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1152, file: !1151, line: 40, baseType: !1162, size: 192, offset: 512)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1163, line: 53, size: 192, elements: !1164)
!1163 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1164 = !{!1165, !1166, !1167}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1162, file: !1163, line: 54, baseType: !760, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1162, file: !1163, line: 55, baseType: !226, offset: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1162, file: !1163, line: 59, baseType: !213, size: 128, offset: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1152, file: !1151, line: 41, baseType: !202, size: 64, offset: 704)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1152, file: !1151, line: 42, baseType: !1170, size: 64, offset: 768)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1172)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1173, line: 13, size: 896, elements: !1174)
!1173 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1174 = !{!1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1172, file: !1173, line: 14, baseType: !202, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1172, file: !1173, line: 15, baseType: !138, size: 64, offset: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1172, file: !1173, line: 17, baseType: !138, size: 64, offset: 128)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1172, file: !1173, line: 17, baseType: !138, size: 64, offset: 192)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1172, file: !1173, line: 19, baseType: !302, size: 64, offset: 256)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1172, file: !1173, line: 21, baseType: !302, size: 64, offset: 320)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1172, file: !1173, line: 22, baseType: !302, size: 64, offset: 384)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1172, file: !1173, line: 23, baseType: !302, size: 64, offset: 448)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1172, file: !1173, line: 24, baseType: !302, size: 64, offset: 512)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1172, file: !1173, line: 25, baseType: !302, size: 64, offset: 576)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1172, file: !1173, line: 26, baseType: !302, size: 64, offset: 640)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1172, file: !1173, line: 27, baseType: !302, size: 64, offset: 704)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1172, file: !1173, line: 28, baseType: !302, size: 64, offset: 768)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1172, file: !1173, line: 29, baseType: !302, size: 64, offset: 832)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1152, file: !1151, line: 44, baseType: !736, size: 32, offset: 832)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1152, file: !1151, line: 50, baseType: !848, size: 16, offset: 864)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1152, file: !1151, line: 51, baseType: !1192, size: 16, offset: 880)
!1192 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !408, line: 18, baseType: !1193)
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !143, line: 23, baseType: !1194)
!1194 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !967, file: !712, line: 495, baseType: !138, size: 64, offset: 6528)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !967, file: !712, line: 497, baseType: !1197, size: 64, offset: 6592)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !712, line: 381, size: 384, elements: !1199)
!1199 = !{!1200, !1201, !2301}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1198, file: !712, line: 382, baseType: !736, size: 32)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1198, file: !712, line: 383, baseType: !1202, size: 128, offset: 64)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !712, line: 376, size: 128, elements: !1203)
!1203 = !{!1204, !2299}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1202, file: !712, line: 377, baseType: !1205, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1207, line: 640, size: 48640, elements: !1208)
!1207 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1208 = !{!1209, !1215, !1217, !1218, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1235, !1253, !1264, !1349, !1350, !1351, !1362, !1363, !1365, !1366, !1367, !1368, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1447, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1485, !1487, !1488, !1489, !1501, !1502, !1503, !1504, !1505, !1506, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1530, !1535, !1719, !1720, !1721, !1722, !1726, !1729, !1732, !1735, !1738, !1742, !1843, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1887, !1888, !1889, !1890, !1891, !1896, !1897, !1898, !1901, !1902, !1905, !1908, !1911, !1914, !1957, !1960, !1961, !2040, !2041, !2044, !2045, !2048, !2049, !2050, !2054, !2055, !2056, !2069, !2070, !2071, !2081, !2086, !2089, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1206, file: !1207, line: 646, baseType: !1210, size: 128)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1211, line: 56, size: 128, elements: !1212)
!1211 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1212 = !{!1213, !1214}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1210, file: !1211, line: 57, baseType: !138, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1210, file: !1211, line: 58, baseType: !407, size: 32, offset: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1206, file: !1207, line: 649, baseType: !1216, size: 64, offset: 128)
!1216 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !302)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1206, file: !1207, line: 657, baseType: !202, size: 64, offset: 192)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1206, file: !1207, line: 658, baseType: !1219, size: 32, offset: 256)
!1219 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1220, line: 113, baseType: !1221)
!1220 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1220, line: 111, size: 32, elements: !1222)
!1222 = !{!1223}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1221, file: !1220, line: 112, baseType: !736, size: 32)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1206, file: !1207, line: 660, baseType: !7, size: 32, offset: 288)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1206, file: !1207, line: 661, baseType: !7, size: 32, offset: 320)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1206, file: !1207, line: 684, baseType: !192, size: 32, offset: 352)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1206, file: !1207, line: 686, baseType: !192, size: 32, offset: 384)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1206, file: !1207, line: 687, baseType: !192, size: 32, offset: 416)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1206, file: !1207, line: 688, baseType: !192, size: 32, offset: 448)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1206, file: !1207, line: 689, baseType: !7, size: 32, offset: 480)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1206, file: !1207, line: 691, baseType: !1232, size: 64, offset: 512)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1234)
!1234 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1207, line: 691, flags: DIFlagFwdDecl)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1206, file: !1207, line: 692, baseType: !1236, size: 832, offset: 576)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1207, line: 451, size: 832, elements: !1237)
!1237 = !{!1238, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1236, file: !1207, line: 453, baseType: !1239, size: 128)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1207, line: 325, size: 128, elements: !1240)
!1240 = !{!1241, !1242}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1239, file: !1207, line: 326, baseType: !138, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1239, file: !1207, line: 327, baseType: !407, size: 32, offset: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1236, file: !1207, line: 454, baseType: !749, size: 192, align: 64, offset: 128)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1236, file: !1207, line: 455, baseType: !213, size: 128, offset: 320)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1236, file: !1207, line: 456, baseType: !7, size: 32, offset: 448)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1236, file: !1207, line: 458, baseType: !411, size: 64, offset: 512)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1236, file: !1207, line: 459, baseType: !411, size: 64, offset: 576)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1236, file: !1207, line: 460, baseType: !411, size: 64, offset: 640)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1236, file: !1207, line: 461, baseType: !411, size: 64, offset: 704)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1236, file: !1207, line: 463, baseType: !411, size: 64, offset: 768)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1236, file: !1207, line: 465, baseType: !1252, offset: 832)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1207, line: 415, elements: !240)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1206, file: !1207, line: 693, baseType: !1254, size: 384, offset: 1408)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1207, line: 489, size: 384, elements: !1255)
!1255 = !{!1256, !1257, !1258, !1259, !1260, !1261, !1262}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1254, file: !1207, line: 490, baseType: !213, size: 128)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1254, file: !1207, line: 491, baseType: !138, size: 64, offset: 128)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1254, file: !1207, line: 492, baseType: !138, size: 64, offset: 192)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1254, file: !1207, line: 493, baseType: !7, size: 32, offset: 256)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1254, file: !1207, line: 494, baseType: !309, size: 16, offset: 288)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1254, file: !1207, line: 495, baseType: !309, size: 16, offset: 304)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1254, file: !1207, line: 497, baseType: !1263, size: 64, offset: 320)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1206, file: !1207, line: 697, baseType: !1265, size: 1792, offset: 1792)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1207, line: 507, size: 1792, elements: !1266)
!1266 = !{!1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1346, !1347}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1265, file: !1207, line: 508, baseType: !749, size: 192, align: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1265, file: !1207, line: 515, baseType: !411, size: 64, offset: 192)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1265, file: !1207, line: 516, baseType: !411, size: 64, offset: 256)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1265, file: !1207, line: 517, baseType: !411, size: 64, offset: 320)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1265, file: !1207, line: 518, baseType: !411, size: 64, offset: 384)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1265, file: !1207, line: 519, baseType: !411, size: 64, offset: 448)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1265, file: !1207, line: 526, baseType: !766, size: 64, offset: 512)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1265, file: !1207, line: 527, baseType: !411, size: 64, offset: 576)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1265, file: !1207, line: 528, baseType: !7, size: 32, offset: 640)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1265, file: !1207, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1265, file: !1207, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1265, file: !1207, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1265, file: !1207, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1265, file: !1207, line: 563, baseType: !1281, size: 512, offset: 704)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1282)
!1282 = !{!1283, !1291, !1292, !1297, !1340, !1343, !1344, !1345}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1281, file: !20, line: 119, baseType: !1284, size: 256)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1285, line: 9, size: 256, elements: !1286)
!1285 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1286 = !{!1287, !1288}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1284, file: !1285, line: 10, baseType: !749, size: 192, align: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1284, file: !1285, line: 11, baseType: !1289, size: 64, offset: 192)
!1289 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1290, line: 29, baseType: !766)
!1290 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1281, file: !20, line: 120, baseType: !1289, size: 64, offset: 256)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1281, file: !20, line: 121, baseType: !1293, size: 64, offset: 320)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{!19, !1296}
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1281, file: !20, line: 122, baseType: !1298, size: 64, offset: 384)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1300)
!1300 = !{!1301, !1321, !1322, !1325, !1330, !1331, !1335, !1339}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1299, file: !20, line: 160, baseType: !1302, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1304)
!1304 = !{!1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1303, file: !20, line: 215, baseType: !769)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1303, file: !20, line: 216, baseType: !7, size: 32)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1303, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1303, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1303, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1303, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1303, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1303, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1303, file: !20, line: 233, baseType: !1289, size: 64, offset: 128)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1303, file: !20, line: 234, baseType: !1296, size: 64, offset: 192)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1303, file: !20, line: 235, baseType: !1289, size: 64, offset: 256)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1303, file: !20, line: 236, baseType: !1296, size: 64, offset: 320)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1303, file: !20, line: 237, baseType: !1318, size: 4096, offset: 512)
!1318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1299, size: 4096, elements: !1319)
!1319 = !{!1320}
!1320 = !DISubrange(count: 8)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1299, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1299, file: !20, line: 162, baseType: !1323, size: 32, offset: 96)
!1323 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !137, line: 27, baseType: !1324)
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !300, line: 96, baseType: !192)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1299, file: !20, line: 163, baseType: !1326, size: 32, offset: 128)
!1326 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !380, line: 276, baseType: !1327)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !380, line: 276, size: 32, elements: !1328)
!1328 = !{!1329}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1327, file: !380, line: 276, baseType: !384, size: 32)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1299, file: !20, line: 164, baseType: !1296, size: 64, offset: 192)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1299, file: !20, line: 165, baseType: !1332, size: 128, offset: 256)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1285, line: 14, size: 128, elements: !1333)
!1333 = !{!1334}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1332, file: !1285, line: 15, baseType: !741, size: 128)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1299, file: !20, line: 166, baseType: !1336, size: 64, offset: 384)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!1289}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1299, file: !20, line: 167, baseType: !1289, size: 64, offset: 448)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1281, file: !20, line: 123, baseType: !1341, size: 8, offset: 448)
!1341 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !408, line: 17, baseType: !1342)
!1342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !143, line: 21, baseType: !141)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1281, file: !20, line: 124, baseType: !1341, size: 8, offset: 456)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1281, file: !20, line: 125, baseType: !1341, size: 8, offset: 464)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1281, file: !20, line: 126, baseType: !1341, size: 8, offset: 472)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1265, file: !1207, line: 572, baseType: !1281, size: 512, offset: 1216)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1265, file: !1207, line: 580, baseType: !1348, size: 64, offset: 1728)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1206, file: !1207, line: 721, baseType: !7, size: 32, offset: 3584)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1206, file: !1207, line: 722, baseType: !192, size: 32, offset: 3616)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1206, file: !1207, line: 723, baseType: !1352, size: 64, offset: 3648)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1354)
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1355, line: 17, baseType: !1356)
!1355 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1355, line: 17, size: 64, elements: !1357)
!1357 = !{!1358}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1356, file: !1355, line: 17, baseType: !1359, size: 64)
!1359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 64, elements: !1360)
!1360 = !{!1361}
!1361 = !DISubrange(count: 1)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1206, file: !1207, line: 724, baseType: !1354, size: 64, offset: 3712)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1206, file: !1207, line: 749, baseType: !1364, offset: 3776)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1207, line: 290, elements: !240)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1206, file: !1207, line: 751, baseType: !213, size: 128, offset: 3776)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1206, file: !1207, line: 757, baseType: !963, size: 64, offset: 3904)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1206, file: !1207, line: 758, baseType: !963, size: 64, offset: 3968)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1206, file: !1207, line: 761, baseType: !1369, size: 320, offset: 4032)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1140, line: 34, size: 320, elements: !1370)
!1370 = !{!1371, !1372}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1369, file: !1140, line: 35, baseType: !411, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1369, file: !1140, line: 36, baseType: !1373, size: 256, offset: 64)
!1373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !970, size: 256, elements: !1144)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1206, file: !1207, line: 766, baseType: !192, size: 32, offset: 4352)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1206, file: !1207, line: 767, baseType: !192, size: 32, offset: 4384)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1206, file: !1207, line: 768, baseType: !192, size: 32, offset: 4416)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1206, file: !1207, line: 770, baseType: !192, size: 32, offset: 4448)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1206, file: !1207, line: 772, baseType: !138, size: 64, offset: 4480)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1206, file: !1207, line: 775, baseType: !7, size: 32, offset: 4544)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1206, file: !1207, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1206, file: !1207, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1206, file: !1207, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1206, file: !1207, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1206, file: !1207, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1206, file: !1207, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1206, file: !1207, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1206, file: !1207, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1206, file: !1207, line: 831, baseType: !138, size: 64, offset: 4672)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1206, file: !1207, line: 833, baseType: !1390, size: 384, offset: 4736)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1391)
!1391 = !{!1392, !1397}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1390, file: !25, line: 26, baseType: !1393, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{!302, !1396}
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, scope: !1390, file: !25, line: 27, baseType: !1398, size: 320, offset: 64)
!1398 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1390, file: !25, line: 27, size: 320, elements: !1399)
!1399 = !{!1400, !1410, !1437}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1398, file: !25, line: 36, baseType: !1401, size: 320)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1398, file: !25, line: 29, size: 320, elements: !1402)
!1402 = !{!1403, !1405, !1406, !1407, !1408, !1409}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1401, file: !25, line: 30, baseType: !1404, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1401, file: !25, line: 31, baseType: !407, size: 32, offset: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1401, file: !25, line: 32, baseType: !407, size: 32, offset: 96)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1401, file: !25, line: 33, baseType: !407, size: 32, offset: 128)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1401, file: !25, line: 34, baseType: !411, size: 64, offset: 192)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1401, file: !25, line: 35, baseType: !1404, size: 64, offset: 256)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1398, file: !25, line: 46, baseType: !1411, size: 192)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1398, file: !25, line: 38, size: 192, elements: !1412)
!1412 = !{!1413, !1414, !1415, !1436}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1411, file: !25, line: 39, baseType: !1323, size: 32)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1411, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1415 = !DIDerivedType(tag: DW_TAG_member, scope: !1411, file: !25, line: 41, baseType: !1416, size: 64, offset: 64)
!1416 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1411, file: !25, line: 41, size: 64, elements: !1417)
!1417 = !{!1418, !1426}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1416, file: !25, line: 42, baseType: !1419, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1421, line: 7, size: 128, elements: !1422)
!1421 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1422 = !{!1423, !1425}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1420, file: !1421, line: 8, baseType: !1424, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !300, line: 93, baseType: !522)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1420, file: !1421, line: 9, baseType: !522, size: 64, offset: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1416, file: !25, line: 43, baseType: !1427, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1429, line: 7, size: 64, elements: !1430)
!1429 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1430 = !{!1431, !1435}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1428, file: !1429, line: 8, baseType: !1432, size: 32)
!1432 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1429, line: 5, baseType: !1433)
!1433 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !408, line: 20, baseType: !1434)
!1434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !143, line: 26, baseType: !192)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1428, file: !1429, line: 9, baseType: !1433, size: 32, offset: 32)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1411, file: !25, line: 45, baseType: !411, size: 64, offset: 128)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1398, file: !25, line: 54, baseType: !1438, size: 256)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1398, file: !25, line: 48, size: 256, elements: !1439)
!1439 = !{!1440, !1443, !1444, !1445, !1446}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1438, file: !25, line: 49, baseType: !1441, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1438, file: !25, line: 50, baseType: !192, size: 32, offset: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1438, file: !25, line: 51, baseType: !192, size: 32, offset: 96)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1438, file: !25, line: 52, baseType: !138, size: 64, offset: 128)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1438, file: !25, line: 53, baseType: !138, size: 64, offset: 192)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1206, file: !1207, line: 835, baseType: !1448, size: 32, offset: 5120)
!1448 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !137, line: 22, baseType: !1449)
!1449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !300, line: 28, baseType: !192)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1206, file: !1207, line: 836, baseType: !1448, size: 32, offset: 5152)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1206, file: !1207, line: 840, baseType: !138, size: 64, offset: 5184)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1206, file: !1207, line: 849, baseType: !1205, size: 64, offset: 5248)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1206, file: !1207, line: 852, baseType: !1205, size: 64, offset: 5312)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1206, file: !1207, line: 857, baseType: !213, size: 128, offset: 5376)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1206, file: !1207, line: 858, baseType: !213, size: 128, offset: 5504)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1206, file: !1207, line: 859, baseType: !1205, size: 64, offset: 5632)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1206, file: !1207, line: 867, baseType: !213, size: 128, offset: 5696)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1206, file: !1207, line: 868, baseType: !213, size: 128, offset: 5824)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1206, file: !1207, line: 871, baseType: !1460, size: 64, offset: 5952)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1462)
!1462 = !{!1463, !1464, !1465, !1466, !1468, !1469, !1476, !1477}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1461, file: !53, line: 61, baseType: !1219, size: 32)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1461, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1461, file: !53, line: 63, baseType: !226, offset: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1461, file: !53, line: 65, baseType: !1467, size: 256, offset: 64)
!1467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !624, size: 256, elements: !1144)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1461, file: !53, line: 66, baseType: !624, size: 64, offset: 320)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1461, file: !53, line: 68, baseType: !1470, size: 128, offset: 384)
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1471, line: 40, baseType: !1472)
!1471 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1471, line: 36, size: 128, elements: !1473)
!1473 = !{!1474, !1475}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1472, file: !1471, line: 37, baseType: !226)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1472, file: !1471, line: 38, baseType: !213, size: 128)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1461, file: !53, line: 69, baseType: !357, size: 128, align: 64, offset: 512)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1461, file: !53, line: 70, baseType: !1478, size: 128, offset: 640)
!1478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1479, size: 128, elements: !1360)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1480)
!1480 = !{!1481, !1482}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1479, file: !53, line: 55, baseType: !192, size: 32)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1479, file: !53, line: 56, baseType: !1483, size: 64, offset: 64)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1206, file: !1207, line: 872, baseType: !1486, size: 512, offset: 6016)
!1486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !628, size: 512, elements: !1144)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1206, file: !1207, line: 873, baseType: !213, size: 128, offset: 6528)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1206, file: !1207, line: 874, baseType: !213, size: 128, offset: 6656)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1206, file: !1207, line: 876, baseType: !1490, size: 64, offset: 6784)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1492, line: 26, size: 192, elements: !1493)
!1492 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1493 = !{!1494, !1495}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1491, file: !1492, line: 27, baseType: !7, size: 32)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1491, file: !1492, line: 28, baseType: !1496, size: 128, offset: 64)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1497, line: 43, size: 128, elements: !1498)
!1497 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1498 = !{!1499, !1500}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1496, file: !1497, line: 44, baseType: !769)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1496, file: !1497, line: 45, baseType: !213, size: 128)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1206, file: !1207, line: 879, baseType: !694, size: 64, offset: 6848)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1206, file: !1207, line: 882, baseType: !694, size: 64, offset: 6912)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1206, file: !1207, line: 884, baseType: !411, size: 64, offset: 6976)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1206, file: !1207, line: 885, baseType: !411, size: 64, offset: 7040)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1206, file: !1207, line: 890, baseType: !411, size: 64, offset: 7104)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1206, file: !1207, line: 891, baseType: !1507, size: 128, offset: 7168)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1207, line: 242, size: 128, elements: !1508)
!1508 = !{!1509, !1510, !1511}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1507, file: !1207, line: 244, baseType: !411, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1507, file: !1207, line: 245, baseType: !411, size: 64, offset: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1507, file: !1207, line: 246, baseType: !769, offset: 128)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1206, file: !1207, line: 900, baseType: !138, size: 64, offset: 7296)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1206, file: !1207, line: 901, baseType: !138, size: 64, offset: 7360)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1206, file: !1207, line: 904, baseType: !411, size: 64, offset: 7424)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1206, file: !1207, line: 907, baseType: !411, size: 64, offset: 7488)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1206, file: !1207, line: 910, baseType: !138, size: 64, offset: 7552)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1206, file: !1207, line: 911, baseType: !138, size: 64, offset: 7616)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1206, file: !1207, line: 914, baseType: !1519, size: 640, offset: 7680)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1520, line: 123, size: 640, elements: !1521)
!1520 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1521 = !{!1522, !1528, !1529}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1519, file: !1520, line: 124, baseType: !1523, size: 576)
!1523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1524, size: 576, elements: !268)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1520, line: 108, size: 192, elements: !1525)
!1525 = !{!1526, !1527}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1524, file: !1520, line: 109, baseType: !411, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1524, file: !1520, line: 110, baseType: !1332, size: 128, offset: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1519, file: !1520, line: 125, baseType: !7, size: 32, offset: 576)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1519, file: !1520, line: 126, baseType: !7, size: 32, offset: 608)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1206, file: !1207, line: 917, baseType: !1531, size: 192, offset: 8320)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1520, line: 134, size: 192, elements: !1532)
!1532 = !{!1533, !1534}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1531, file: !1520, line: 135, baseType: !357, size: 128, align: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1531, file: !1520, line: 136, baseType: !7, size: 32, offset: 128)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1206, file: !1207, line: 923, baseType: !1536, size: 64, offset: 8512)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1538)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1539, line: 111, size: 1280, elements: !1540)
!1539 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1540 = !{!1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1560, !1561, !1562, !1563, !1564, !1565, !1672, !1673, !1674, !1675, !1701, !1704, !1714}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1538, file: !1539, line: 112, baseType: !736, size: 32)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1538, file: !1539, line: 120, baseType: !424, size: 32, offset: 32)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1538, file: !1539, line: 121, baseType: !432, size: 32, offset: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1538, file: !1539, line: 122, baseType: !424, size: 32, offset: 96)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1538, file: !1539, line: 123, baseType: !432, size: 32, offset: 128)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1538, file: !1539, line: 124, baseType: !424, size: 32, offset: 160)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1538, file: !1539, line: 125, baseType: !432, size: 32, offset: 192)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1538, file: !1539, line: 126, baseType: !424, size: 32, offset: 224)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1538, file: !1539, line: 127, baseType: !432, size: 32, offset: 256)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1538, file: !1539, line: 128, baseType: !7, size: 32, offset: 288)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1538, file: !1539, line: 129, baseType: !1552, size: 64, offset: 320)
!1552 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1553, line: 26, baseType: !1554)
!1553 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1553, line: 24, size: 64, elements: !1555)
!1555 = !{!1556}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1554, file: !1553, line: 25, baseType: !1557, size: 64)
!1557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 64, elements: !1558)
!1558 = !{!1559}
!1559 = !DISubrange(count: 2)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1538, file: !1539, line: 130, baseType: !1552, size: 64, offset: 384)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1538, file: !1539, line: 131, baseType: !1552, size: 64, offset: 448)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1538, file: !1539, line: 132, baseType: !1552, size: 64, offset: 512)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1538, file: !1539, line: 133, baseType: !1552, size: 64, offset: 576)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1538, file: !1539, line: 135, baseType: !141, size: 8, offset: 640)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1538, file: !1539, line: 137, baseType: !1566, size: 64, offset: 704)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1568, line: 189, size: 1664, elements: !1569)
!1568 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1569 = !{!1570, !1571, !1574, !1579, !1580, !1583, !1584, !1589, !1590, !1591, !1592, !1594, !1595, !1596, !1597, !1598, !1636, !1657}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1567, file: !1568, line: 190, baseType: !1219, size: 32)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1567, file: !1568, line: 191, baseType: !1572, size: 32, offset: 32)
!1572 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1568, line: 28, baseType: !1573)
!1573 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !137, line: 98, baseType: !1433)
!1574 = !DIDerivedType(tag: DW_TAG_member, scope: !1567, file: !1568, line: 192, baseType: !1575, size: 192, offset: 64)
!1575 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1567, file: !1568, line: 192, size: 192, elements: !1576)
!1576 = !{!1577, !1578}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1575, file: !1568, line: 193, baseType: !213, size: 128)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1575, file: !1568, line: 194, baseType: !749, size: 192, align: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1567, file: !1568, line: 199, baseType: !756, size: 256, offset: 256)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1567, file: !1568, line: 200, baseType: !1581, size: 64, offset: 512)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1568, line: 200, flags: DIFlagFwdDecl)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1567, file: !1568, line: 201, baseType: !202, size: 64, offset: 576)
!1584 = !DIDerivedType(tag: DW_TAG_member, scope: !1567, file: !1568, line: 202, baseType: !1585, size: 64, offset: 640)
!1585 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1567, file: !1568, line: 202, size: 64, elements: !1586)
!1586 = !{!1587, !1588}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1585, file: !1568, line: 203, baseType: !528, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1585, file: !1568, line: 204, baseType: !528, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1567, file: !1568, line: 206, baseType: !528, size: 64, offset: 704)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1567, file: !1568, line: 207, baseType: !424, size: 32, offset: 768)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1567, file: !1568, line: 208, baseType: !432, size: 32, offset: 800)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1567, file: !1568, line: 209, baseType: !1593, size: 32, offset: 832)
!1593 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1568, line: 31, baseType: !548)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1567, file: !1568, line: 210, baseType: !309, size: 16, offset: 864)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1567, file: !1568, line: 211, baseType: !309, size: 16, offset: 880)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1567, file: !1568, line: 215, baseType: !1194, size: 16, offset: 896)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1567, file: !1568, line: 222, baseType: !138, size: 64, offset: 960)
!1598 = !DIDerivedType(tag: DW_TAG_member, scope: !1567, file: !1568, line: 239, baseType: !1599, size: 320, offset: 1024)
!1599 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1567, file: !1568, line: 239, size: 320, elements: !1600)
!1600 = !{!1601, !1628}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1599, file: !1568, line: 240, baseType: !1602, size: 320)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1568, line: 108, size: 320, elements: !1603)
!1603 = !{!1604, !1605, !1617, !1620, !1627}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1602, file: !1568, line: 110, baseType: !138, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_member, scope: !1602, file: !1568, line: 111, baseType: !1606, size: 64, offset: 64)
!1606 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1602, file: !1568, line: 111, size: 64, elements: !1607)
!1607 = !{!1608, !1616}
!1608 = !DIDerivedType(tag: DW_TAG_member, scope: !1606, file: !1568, line: 112, baseType: !1609, size: 64)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1606, file: !1568, line: 112, size: 64, elements: !1610)
!1610 = !{!1611, !1612}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1609, file: !1568, line: 114, baseType: !848, size: 16)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1609, file: !1568, line: 115, baseType: !1613, size: 48, offset: 16)
!1613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 48, elements: !1614)
!1614 = !{!1615}
!1615 = !DISubrange(count: 6)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1606, file: !1568, line: 121, baseType: !138, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1602, file: !1568, line: 123, baseType: !1618, size: 64, offset: 128)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1568, line: 96, flags: DIFlagFwdDecl)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1602, file: !1568, line: 124, baseType: !1621, size: 64, offset: 192)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1568, line: 102, size: 192, elements: !1623)
!1623 = !{!1624, !1625, !1626}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1622, file: !1568, line: 103, baseType: !357, size: 128, align: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1622, file: !1568, line: 104, baseType: !1219, size: 32, offset: 128)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1622, file: !1568, line: 105, baseType: !479, size: 8, offset: 160)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1602, file: !1568, line: 125, baseType: !183, size: 64, offset: 256)
!1628 = !DIDerivedType(tag: DW_TAG_member, scope: !1599, file: !1568, line: 241, baseType: !1629, size: 320)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1599, file: !1568, line: 241, size: 320, elements: !1630)
!1630 = !{!1631, !1632, !1633, !1634, !1635}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1629, file: !1568, line: 242, baseType: !138, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1629, file: !1568, line: 243, baseType: !138, size: 64, offset: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1629, file: !1568, line: 244, baseType: !1618, size: 64, offset: 128)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1629, file: !1568, line: 245, baseType: !1621, size: 64, offset: 192)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1629, file: !1568, line: 246, baseType: !267, size: 64, offset: 256)
!1636 = !DIDerivedType(tag: DW_TAG_member, scope: !1567, file: !1568, line: 254, baseType: !1637, size: 256, offset: 1344)
!1637 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1567, file: !1568, line: 254, size: 256, elements: !1638)
!1638 = !{!1639, !1645}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1637, file: !1568, line: 255, baseType: !1640, size: 256)
!1640 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1568, line: 128, size: 256, elements: !1641)
!1641 = !{!1642, !1643}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1640, file: !1568, line: 129, baseType: !202, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1640, file: !1568, line: 130, baseType: !1644, size: 256)
!1644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 256, elements: !1144)
!1645 = !DIDerivedType(tag: DW_TAG_member, scope: !1637, file: !1568, line: 256, baseType: !1646, size: 256)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1637, file: !1568, line: 256, size: 256, elements: !1647)
!1647 = !{!1648, !1649}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1646, file: !1568, line: 258, baseType: !213, size: 128)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1646, file: !1568, line: 259, baseType: !1650, size: 128, offset: 128)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1651, line: 22, size: 128, elements: !1652)
!1651 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1652 = !{!1653, !1656}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1650, file: !1651, line: 23, baseType: !1654, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1651, line: 23, flags: DIFlagFwdDecl)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1650, file: !1651, line: 24, baseType: !138, size: 64, offset: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1567, file: !1568, line: 274, baseType: !1658, size: 64, offset: 1600)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1568, line: 170, size: 192, elements: !1660)
!1660 = !{!1661, !1670, !1671}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1659, file: !1568, line: 171, baseType: !1662, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1568, line: 165, baseType: !1663)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!192, !1566, !1666, !1668, !1566}
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1619)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1640)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1659, file: !1568, line: 172, baseType: !1566, size: 64, offset: 64)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1659, file: !1568, line: 173, baseType: !1618, size: 64, offset: 128)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1538, file: !1539, line: 138, baseType: !1566, size: 64, offset: 768)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1538, file: !1539, line: 139, baseType: !1566, size: 64, offset: 832)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1538, file: !1539, line: 140, baseType: !1566, size: 64, offset: 896)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1538, file: !1539, line: 145, baseType: !1676, size: 64, offset: 960)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1678, line: 13, size: 896, elements: !1679)
!1678 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1679 = !{!1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1677, file: !1678, line: 14, baseType: !1219, size: 32)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1677, file: !1678, line: 15, baseType: !736, size: 32, offset: 32)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1677, file: !1678, line: 16, baseType: !736, size: 32, offset: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1677, file: !1678, line: 21, baseType: !760, size: 64, offset: 128)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1677, file: !1678, line: 27, baseType: !138, size: 64, offset: 192)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1677, file: !1678, line: 28, baseType: !138, size: 64, offset: 256)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1677, file: !1678, line: 29, baseType: !760, size: 64, offset: 320)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1677, file: !1678, line: 32, baseType: !628, size: 128, offset: 384)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1677, file: !1678, line: 33, baseType: !424, size: 32, offset: 512)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1677, file: !1678, line: 37, baseType: !760, size: 64, offset: 576)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1677, file: !1678, line: 44, baseType: !1691, size: 256, offset: 640)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1692, line: 15, size: 256, elements: !1693)
!1692 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1693 = !{!1694, !1695, !1696, !1697, !1698, !1699, !1700}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1691, file: !1692, line: 16, baseType: !769)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1691, file: !1692, line: 18, baseType: !192, size: 32)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1691, file: !1692, line: 19, baseType: !192, size: 32, offset: 32)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1691, file: !1692, line: 20, baseType: !192, size: 32, offset: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1691, file: !1692, line: 21, baseType: !192, size: 32, offset: 96)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1691, file: !1692, line: 22, baseType: !138, size: 64, offset: 128)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1691, file: !1692, line: 23, baseType: !138, size: 64, offset: 192)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1538, file: !1539, line: 146, baseType: !1702, size: 64, offset: 1024)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !425, line: 18, flags: DIFlagFwdDecl)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1538, file: !1539, line: 147, baseType: !1705, size: 64, offset: 1088)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1539, line: 25, size: 64, elements: !1707)
!1707 = !{!1708, !1709, !1710}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1706, file: !1539, line: 26, baseType: !736, size: 32)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1706, file: !1539, line: 27, baseType: !192, size: 32, offset: 32)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1706, file: !1539, line: 28, baseType: !1711, offset: 64)
!1711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !432, elements: !1712)
!1712 = !{!1713}
!1713 = !DISubrange(count: 0)
!1714 = !DIDerivedType(tag: DW_TAG_member, scope: !1538, file: !1539, line: 149, baseType: !1715, size: 128, offset: 1152)
!1715 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1538, file: !1539, line: 149, size: 128, elements: !1716)
!1716 = !{!1717, !1718}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1715, file: !1539, line: 150, baseType: !192, size: 32)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1715, file: !1539, line: 151, baseType: !357, size: 128, align: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1206, file: !1207, line: 926, baseType: !1536, size: 64, offset: 8576)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1206, file: !1207, line: 929, baseType: !1536, size: 64, offset: 8640)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1206, file: !1207, line: 933, baseType: !1566, size: 64, offset: 8704)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1206, file: !1207, line: 943, baseType: !1723, size: 128, offset: 8768)
!1723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 128, elements: !1724)
!1724 = !{!1725}
!1725 = !DISubrange(count: 16)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1206, file: !1207, line: 945, baseType: !1727, size: 64, offset: 8896)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1207, line: 49, flags: DIFlagFwdDecl)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1206, file: !1207, line: 956, baseType: !1730, size: 64, offset: 8960)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1207, line: 45, flags: DIFlagFwdDecl)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1206, file: !1207, line: 959, baseType: !1733, size: 64, offset: 9024)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1207, line: 959, flags: DIFlagFwdDecl)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1206, file: !1207, line: 962, baseType: !1736, size: 64, offset: 9088)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1207, line: 66, flags: DIFlagFwdDecl)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1206, file: !1207, line: 966, baseType: !1739, size: 64, offset: 9152)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1741, line: 35, flags: DIFlagFwdDecl)
!1741 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1206, file: !1207, line: 969, baseType: !1743, size: 64, offset: 9216)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1745, line: 82, size: 7296, elements: !1746)
!1745 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1746 = !{!1747, !1748, !1749, !1750, !1751, !1752, !1753, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1782, !1791, !1792, !1794, !1795, !1796, !1799, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1829, !1830, !1837, !1838, !1839, !1840, !1841, !1842}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1744, file: !1745, line: 83, baseType: !1219, size: 32)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1744, file: !1745, line: 84, baseType: !736, size: 32, offset: 32)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1744, file: !1745, line: 85, baseType: !192, size: 32, offset: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1744, file: !1745, line: 86, baseType: !213, size: 128, offset: 128)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1744, file: !1745, line: 88, baseType: !1470, size: 128, offset: 256)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1744, file: !1745, line: 91, baseType: !1205, size: 64, offset: 384)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1744, file: !1745, line: 94, baseType: !1754, size: 192, offset: 448)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1755, line: 30, size: 192, elements: !1756)
!1755 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1756 = !{!1757, !1758}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1754, file: !1755, line: 31, baseType: !213, size: 128)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1754, file: !1755, line: 32, baseType: !1759, size: 64, offset: 128)
!1759 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1760, line: 25, baseType: !1761)
!1760 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1760, line: 23, size: 64, elements: !1762)
!1762 = !{!1763}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1761, file: !1760, line: 24, baseType: !1359, size: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1744, file: !1745, line: 97, baseType: !624, size: 64, offset: 640)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1744, file: !1745, line: 100, baseType: !192, size: 32, offset: 704)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1744, file: !1745, line: 106, baseType: !192, size: 32, offset: 736)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1744, file: !1745, line: 107, baseType: !1205, size: 64, offset: 768)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1744, file: !1745, line: 110, baseType: !192, size: 32, offset: 832)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1744, file: !1745, line: 111, baseType: !7, size: 32, offset: 864)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1744, file: !1745, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1744, file: !1745, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1744, file: !1745, line: 128, baseType: !192, size: 32, offset: 928)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1744, file: !1745, line: 129, baseType: !213, size: 128, offset: 960)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1744, file: !1745, line: 132, baseType: !1281, size: 512, offset: 1088)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1744, file: !1745, line: 133, baseType: !1289, size: 64, offset: 1600)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1744, file: !1745, line: 140, baseType: !1777, size: 256, offset: 1664)
!1777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1778, size: 256, elements: !1558)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1745, line: 38, size: 128, elements: !1779)
!1779 = !{!1780, !1781}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1778, file: !1745, line: 39, baseType: !411, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1778, file: !1745, line: 40, baseType: !411, size: 64, offset: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1744, file: !1745, line: 146, baseType: !1783, size: 192, offset: 1920)
!1783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1745, line: 66, size: 192, elements: !1784)
!1784 = !{!1785}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1783, file: !1745, line: 67, baseType: !1786, size: 192)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1745, line: 47, size: 192, elements: !1787)
!1787 = !{!1788, !1789, !1790}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1786, file: !1745, line: 48, baseType: !762, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1786, file: !1745, line: 49, baseType: !762, size: 64, offset: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1786, file: !1745, line: 50, baseType: !762, size: 64, offset: 128)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1744, file: !1745, line: 150, baseType: !1519, size: 640, offset: 2112)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1744, file: !1745, line: 153, baseType: !1793, size: 256, offset: 2752)
!1793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1460, size: 256, elements: !1144)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1744, file: !1745, line: 159, baseType: !1460, size: 64, offset: 3008)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1744, file: !1745, line: 162, baseType: !192, size: 32, offset: 3072)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1744, file: !1745, line: 164, baseType: !1797, size: 64, offset: 3136)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1745, line: 164, flags: DIFlagFwdDecl)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1744, file: !1745, line: 175, baseType: !1800, size: 32, offset: 3200)
!1800 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !380, line: 805, baseType: !1801)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !380, line: 798, size: 32, elements: !1802)
!1802 = !{!1803, !1804}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1801, file: !380, line: 803, baseType: !379, size: 32)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1801, file: !380, line: 804, baseType: !226, offset: 32)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1744, file: !1745, line: 176, baseType: !411, size: 64, offset: 3264)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1744, file: !1745, line: 176, baseType: !411, size: 64, offset: 3328)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1744, file: !1745, line: 176, baseType: !411, size: 64, offset: 3392)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1744, file: !1745, line: 176, baseType: !411, size: 64, offset: 3456)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1744, file: !1745, line: 177, baseType: !411, size: 64, offset: 3520)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1744, file: !1745, line: 178, baseType: !411, size: 64, offset: 3584)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1744, file: !1745, line: 179, baseType: !1507, size: 128, offset: 3648)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1744, file: !1745, line: 180, baseType: !138, size: 64, offset: 3776)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1744, file: !1745, line: 180, baseType: !138, size: 64, offset: 3840)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1744, file: !1745, line: 180, baseType: !138, size: 64, offset: 3904)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1744, file: !1745, line: 180, baseType: !138, size: 64, offset: 3968)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1744, file: !1745, line: 181, baseType: !138, size: 64, offset: 4032)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1744, file: !1745, line: 181, baseType: !138, size: 64, offset: 4096)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1744, file: !1745, line: 181, baseType: !138, size: 64, offset: 4160)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1744, file: !1745, line: 181, baseType: !138, size: 64, offset: 4224)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1744, file: !1745, line: 182, baseType: !138, size: 64, offset: 4288)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1744, file: !1745, line: 182, baseType: !138, size: 64, offset: 4352)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1744, file: !1745, line: 182, baseType: !138, size: 64, offset: 4416)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1744, file: !1745, line: 182, baseType: !138, size: 64, offset: 4480)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1744, file: !1745, line: 183, baseType: !138, size: 64, offset: 4544)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1744, file: !1745, line: 183, baseType: !138, size: 64, offset: 4608)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1744, file: !1745, line: 184, baseType: !1827, offset: 4672)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1828, line: 12, elements: !240)
!1828 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1744, file: !1745, line: 192, baseType: !413, size: 64, offset: 4672)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1744, file: !1745, line: 203, baseType: !1831, size: 2048, offset: 4736)
!1831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1832, size: 2048, elements: !1724)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1833, line: 43, size: 128, elements: !1834)
!1833 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1834 = !{!1835, !1836}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1832, file: !1833, line: 44, baseType: !316, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1832, file: !1833, line: 45, baseType: !316, size: 64, offset: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1744, file: !1745, line: 220, baseType: !479, size: 8, offset: 6784)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1744, file: !1745, line: 221, baseType: !1194, size: 16, offset: 6800)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1744, file: !1745, line: 222, baseType: !1194, size: 16, offset: 6816)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1744, file: !1745, line: 224, baseType: !963, size: 64, offset: 6848)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1744, file: !1745, line: 227, baseType: !1162, size: 192, offset: 6912)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1744, file: !1745, line: 233, baseType: !1162, size: 192, offset: 7104)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1206, file: !1207, line: 970, baseType: !1844, size: 64, offset: 9280)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1745, line: 20, size: 16576, elements: !1846)
!1846 = !{!1847, !1848, !1849, !1850}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1845, file: !1745, line: 21, baseType: !226)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1845, file: !1745, line: 22, baseType: !1219, size: 32)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1845, file: !1745, line: 23, baseType: !1470, size: 128, offset: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1845, file: !1745, line: 24, baseType: !1851, size: 16384, offset: 192)
!1851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1852, size: 16384, elements: !272)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1755, line: 49, size: 256, elements: !1853)
!1853 = !{!1854}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1852, file: !1755, line: 50, baseType: !1855, size: 256)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1755, line: 35, size: 256, elements: !1856)
!1856 = !{!1857, !1864, !1865, !1869}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1855, file: !1755, line: 37, baseType: !1858, size: 64)
!1858 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1859, line: 19, baseType: !1860)
!1859 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1859, line: 18, baseType: !1862)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{null, !192}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1855, file: !1755, line: 38, baseType: !138, size: 64, offset: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1855, file: !1755, line: 44, baseType: !1866, size: 64, offset: 128)
!1866 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1859, line: 22, baseType: !1867)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1859, line: 21, baseType: !152)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1855, file: !1755, line: 46, baseType: !1759, size: 64, offset: 192)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1206, file: !1207, line: 971, baseType: !1759, size: 64, offset: 9344)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1206, file: !1207, line: 972, baseType: !1759, size: 64, offset: 9408)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1206, file: !1207, line: 974, baseType: !1759, size: 64, offset: 9472)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1206, file: !1207, line: 975, baseType: !1754, size: 192, offset: 9536)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1206, file: !1207, line: 976, baseType: !138, size: 64, offset: 9728)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1206, file: !1207, line: 977, baseType: !314, size: 64, offset: 9792)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1206, file: !1207, line: 978, baseType: !7, size: 32, offset: 9856)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1206, file: !1207, line: 980, baseType: !360, size: 64, offset: 9920)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1206, file: !1207, line: 989, baseType: !1879, size: 128, offset: 9984)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1880, line: 35, size: 128, elements: !1881)
!1880 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1881 = !{!1882, !1883, !1884}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1879, file: !1880, line: 36, baseType: !192, size: 32)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1879, file: !1880, line: 37, baseType: !736, size: 32, offset: 32)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1879, file: !1880, line: 38, baseType: !1885, size: 64, offset: 64)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1880, line: 23, flags: DIFlagFwdDecl)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1206, file: !1207, line: 992, baseType: !411, size: 64, offset: 10112)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1206, file: !1207, line: 993, baseType: !411, size: 64, offset: 10176)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1206, file: !1207, line: 996, baseType: !226, offset: 10240)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1206, file: !1207, line: 999, baseType: !769, offset: 10240)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1206, file: !1207, line: 1001, baseType: !1892, size: 64, offset: 10240)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1207, line: 636, size: 64, elements: !1893)
!1893 = !{!1894}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1892, file: !1207, line: 637, baseType: !1895, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1206, file: !1207, line: 1005, baseType: !741, size: 128, offset: 10304)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1206, file: !1207, line: 1007, baseType: !1205, size: 64, offset: 10432)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1206, file: !1207, line: 1009, baseType: !1899, size: 64, offset: 10496)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1207, line: 1009, flags: DIFlagFwdDecl)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1206, file: !1207, line: 1043, baseType: !202, size: 64, offset: 10560)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1206, file: !1207, line: 1046, baseType: !1903, size: 64, offset: 10624)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1207, line: 41, flags: DIFlagFwdDecl)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1206, file: !1207, line: 1050, baseType: !1906, size: 64, offset: 10688)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1207, line: 42, flags: DIFlagFwdDecl)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1206, file: !1207, line: 1054, baseType: !1909, size: 64, offset: 10752)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1207, line: 55, flags: DIFlagFwdDecl)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1206, file: !1207, line: 1056, baseType: !1912, size: 64, offset: 10816)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1207, line: 40, flags: DIFlagFwdDecl)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1206, file: !1207, line: 1058, baseType: !1915, size: 64, offset: 10880)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1917, line: 99, size: 704, elements: !1918)
!1917 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1918 = !{!1919, !1920, !1921, !1922, !1923, !1924, !1925, !1944, !1945}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1916, file: !1917, line: 100, baseType: !760, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1916, file: !1917, line: 101, baseType: !736, size: 32, offset: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1916, file: !1917, line: 102, baseType: !736, size: 32, offset: 96)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1916, file: !1917, line: 105, baseType: !226, offset: 128)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1916, file: !1917, line: 107, baseType: !309, size: 16, offset: 128)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1916, file: !1917, line: 109, baseType: !728, size: 128, offset: 192)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1916, file: !1917, line: 110, baseType: !1926, size: 64, offset: 320)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1917, line: 73, size: 448, elements: !1928)
!1928 = !{!1929, !1932, !1933, !1938, !1943}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1927, file: !1917, line: 74, baseType: !1930, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1917, line: 74, flags: DIFlagFwdDecl)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1927, file: !1917, line: 75, baseType: !1915, size: 64, offset: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, scope: !1927, file: !1917, line: 83, baseType: !1934, size: 128, offset: 128)
!1934 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1927, file: !1917, line: 83, size: 128, elements: !1935)
!1935 = !{!1936, !1937}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1934, file: !1917, line: 84, baseType: !213, size: 128)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1934, file: !1917, line: 85, baseType: !924, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, scope: !1927, file: !1917, line: 87, baseType: !1939, size: 128, offset: 256)
!1939 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1927, file: !1917, line: 87, size: 128, elements: !1940)
!1940 = !{!1941, !1942}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1939, file: !1917, line: 88, baseType: !628, size: 128)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1939, file: !1917, line: 89, baseType: !357, size: 128, align: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1927, file: !1917, line: 92, baseType: !7, size: 32, offset: 384)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1916, file: !1917, line: 111, baseType: !624, size: 64, offset: 384)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1916, file: !1917, line: 113, baseType: !1946, size: 256, offset: 448)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1947, line: 102, size: 256, elements: !1948)
!1947 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1948 = !{!1949, !1950, !1951}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1946, file: !1947, line: 103, baseType: !760, size: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1946, file: !1947, line: 104, baseType: !213, size: 128, offset: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1946, file: !1947, line: 105, baseType: !1952, size: 64, offset: 192)
!1952 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1947, line: 21, baseType: !1953)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{null, !1956}
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1206, file: !1207, line: 1061, baseType: !1958, size: 64, offset: 10944)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1207, line: 43, flags: DIFlagFwdDecl)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1206, file: !1207, line: 1064, baseType: !138, size: 64, offset: 11008)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1206, file: !1207, line: 1065, baseType: !1962, size: 64, offset: 11072)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1755, line: 14, baseType: !1964)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1755, line: 12, size: 384, elements: !1965)
!1965 = !{!1966}
!1966 = !DIDerivedType(tag: DW_TAG_member, scope: !1964, file: !1755, line: 13, baseType: !1967, size: 384)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1964, file: !1755, line: 13, size: 384, elements: !1968)
!1968 = !{!1969, !1970, !1971, !1972}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1967, file: !1755, line: 13, baseType: !192, size: 32)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1967, file: !1755, line: 13, baseType: !192, size: 32, offset: 32)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1967, file: !1755, line: 13, baseType: !192, size: 32, offset: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1967, file: !1755, line: 13, baseType: !1973, size: 256, offset: 128)
!1973 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1974, line: 32, size: 256, elements: !1975)
!1974 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1975 = !{!1976, !1981, !1994, !2000, !2009, !2029, !2034}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1973, file: !1974, line: 37, baseType: !1977, size: 64)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1973, file: !1974, line: 34, size: 64, elements: !1978)
!1978 = !{!1979, !1980}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1977, file: !1974, line: 35, baseType: !1449, size: 32)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1977, file: !1974, line: 36, baseType: !430, size: 32, offset: 32)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1973, file: !1974, line: 45, baseType: !1982, size: 192)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1973, file: !1974, line: 40, size: 192, elements: !1983)
!1983 = !{!1984, !1986, !1987, !1993}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1982, file: !1974, line: 41, baseType: !1985, size: 32)
!1985 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !300, line: 95, baseType: !192)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1982, file: !1974, line: 42, baseType: !192, size: 32, offset: 32)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1982, file: !1974, line: 43, baseType: !1988, size: 64, offset: 64)
!1988 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1974, line: 11, baseType: !1989)
!1989 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1974, line: 8, size: 64, elements: !1990)
!1990 = !{!1991, !1992}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1989, file: !1974, line: 9, baseType: !192, size: 32)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1989, file: !1974, line: 10, baseType: !202, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1982, file: !1974, line: 44, baseType: !192, size: 32, offset: 128)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1973, file: !1974, line: 52, baseType: !1995, size: 128)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1973, file: !1974, line: 48, size: 128, elements: !1996)
!1996 = !{!1997, !1998, !1999}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1995, file: !1974, line: 49, baseType: !1449, size: 32)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1995, file: !1974, line: 50, baseType: !430, size: 32, offset: 32)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1995, file: !1974, line: 51, baseType: !1988, size: 64, offset: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1973, file: !1974, line: 61, baseType: !2001, size: 256)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1973, file: !1974, line: 55, size: 256, elements: !2002)
!2002 = !{!2003, !2004, !2005, !2006, !2008}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2001, file: !1974, line: 56, baseType: !1449, size: 32)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2001, file: !1974, line: 57, baseType: !430, size: 32, offset: 32)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2001, file: !1974, line: 58, baseType: !192, size: 32, offset: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2001, file: !1974, line: 59, baseType: !2007, size: 64, offset: 128)
!2007 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !300, line: 94, baseType: !301)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2001, file: !1974, line: 60, baseType: !2007, size: 64, offset: 192)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1973, file: !1974, line: 95, baseType: !2010, size: 256)
!2010 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1973, file: !1974, line: 64, size: 256, elements: !2011)
!2011 = !{!2012, !2013}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2010, file: !1974, line: 65, baseType: !202, size: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, scope: !2010, file: !1974, line: 77, baseType: !2014, size: 192, offset: 64)
!2014 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2010, file: !1974, line: 77, size: 192, elements: !2015)
!2015 = !{!2016, !2017, !2024}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2014, file: !1974, line: 82, baseType: !1194, size: 16)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2014, file: !1974, line: 88, baseType: !2018, size: 192)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2014, file: !1974, line: 84, size: 192, elements: !2019)
!2019 = !{!2020, !2022, !2023}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2018, file: !1974, line: 85, baseType: !2021, size: 64)
!2021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 64, elements: !1319)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2018, file: !1974, line: 86, baseType: !202, size: 64, offset: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2018, file: !1974, line: 87, baseType: !202, size: 64, offset: 128)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2014, file: !1974, line: 93, baseType: !2025, size: 96)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2014, file: !1974, line: 90, size: 96, elements: !2026)
!2026 = !{!2027, !2028}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2025, file: !1974, line: 91, baseType: !2021, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2025, file: !1974, line: 92, baseType: !142, size: 32, offset: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1973, file: !1974, line: 101, baseType: !2030, size: 128)
!2030 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1973, file: !1974, line: 98, size: 128, elements: !2031)
!2031 = !{!2032, !2033}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2030, file: !1974, line: 99, baseType: !302, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2030, file: !1974, line: 100, baseType: !192, size: 32, offset: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1973, file: !1974, line: 108, baseType: !2035, size: 128)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1973, file: !1974, line: 104, size: 128, elements: !2036)
!2036 = !{!2037, !2038, !2039}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2035, file: !1974, line: 105, baseType: !202, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2035, file: !1974, line: 106, baseType: !192, size: 32, offset: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2035, file: !1974, line: 107, baseType: !7, size: 32, offset: 96)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1206, file: !1207, line: 1067, baseType: !1827, offset: 11136)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1206, file: !1207, line: 1099, baseType: !2042, size: 64, offset: 11136)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1207, line: 56, flags: DIFlagFwdDecl)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1206, file: !1207, line: 1103, baseType: !213, size: 128, offset: 11200)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1206, file: !1207, line: 1104, baseType: !2046, size: 64, offset: 11328)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1207, line: 46, flags: DIFlagFwdDecl)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1206, file: !1207, line: 1105, baseType: !1162, size: 192, offset: 11392)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1206, file: !1207, line: 1106, baseType: !7, size: 32, offset: 11584)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1206, file: !1207, line: 1109, baseType: !2051, size: 128, offset: 11648)
!2051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2052, size: 128, elements: !1558)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1207, line: 51, flags: DIFlagFwdDecl)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1206, file: !1207, line: 1110, baseType: !1162, size: 192, offset: 11776)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1206, file: !1207, line: 1111, baseType: !213, size: 128, offset: 11968)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1206, file: !1207, line: 1173, baseType: !2057, size: 64, offset: 12096)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2059, line: 62, size: 256, align: 256, elements: !2060)
!2059 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2060 = !{!2061, !2062, !2063, !2068}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2058, file: !2059, line: 75, baseType: !142, size: 32)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2058, file: !2059, line: 90, baseType: !142, size: 32, offset: 32)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2058, file: !2059, line: 124, baseType: !2064, size: 64, offset: 64)
!2064 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2058, file: !2059, line: 109, size: 64, elements: !2065)
!2065 = !{!2066, !2067}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2064, file: !2059, line: 110, baseType: !412, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2064, file: !2059, line: 112, baseType: !412, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2058, file: !2059, line: 144, baseType: !142, size: 32, offset: 128)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1206, file: !1207, line: 1174, baseType: !407, size: 32, offset: 12160)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1206, file: !1207, line: 1179, baseType: !138, size: 64, offset: 12224)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1206, file: !1207, line: 1182, baseType: !2072, size: 128, offset: 12288)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1140, line: 76, size: 128, elements: !2073)
!2073 = !{!2074, !2079, !2080}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2072, file: !1140, line: 85, baseType: !2075, size: 64)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2076, line: 7, size: 64, elements: !2077)
!2076 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2077 = !{!2078}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2075, file: !2076, line: 12, baseType: !1356, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2072, file: !1140, line: 88, baseType: !479, size: 8, offset: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2072, file: !1140, line: 95, baseType: !479, size: 8, offset: 72)
!2081 = !DIDerivedType(tag: DW_TAG_member, scope: !1206, file: !1207, line: 1184, baseType: !2082, size: 128, offset: 12416)
!2082 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1206, file: !1207, line: 1184, size: 128, elements: !2083)
!2083 = !{!2084, !2085}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2082, file: !1207, line: 1185, baseType: !1219, size: 32)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2082, file: !1207, line: 1186, baseType: !357, size: 128, align: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1206, file: !1207, line: 1190, baseType: !2087, size: 64, offset: 12544)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1207, line: 53, flags: DIFlagFwdDecl)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1206, file: !1207, line: 1192, baseType: !2090, size: 128, offset: 12608)
!2090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1140, line: 64, size: 128, elements: !2091)
!2091 = !{!2092, !2093, !2094}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2090, file: !1140, line: 65, baseType: !710, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2090, file: !1140, line: 67, baseType: !142, size: 32, offset: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2090, file: !1140, line: 68, baseType: !142, size: 32, offset: 96)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1206, file: !1207, line: 1206, baseType: !192, size: 32, offset: 12736)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1206, file: !1207, line: 1207, baseType: !192, size: 32, offset: 12768)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1206, file: !1207, line: 1209, baseType: !138, size: 64, offset: 12800)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1206, file: !1207, line: 1219, baseType: !411, size: 64, offset: 12864)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1206, file: !1207, line: 1220, baseType: !411, size: 64, offset: 12928)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1206, file: !1207, line: 1317, baseType: !192, size: 32, offset: 12992)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1206, file: !1207, line: 1319, baseType: !1205, size: 64, offset: 13056)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1206, file: !1207, line: 1322, baseType: !2103, size: 64, offset: 13120)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2105, line: 56, size: 512, elements: !2106)
!2105 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2106 = !{!2107, !2108, !2109, !2110, !2111, !2112, !2113, !2115}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2104, file: !2105, line: 57, baseType: !2103, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2104, file: !2105, line: 58, baseType: !202, size: 64, offset: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2104, file: !2105, line: 59, baseType: !138, size: 64, offset: 128)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2104, file: !2105, line: 60, baseType: !138, size: 64, offset: 192)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2104, file: !2105, line: 61, baseType: !809, size: 64, offset: 256)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2104, file: !2105, line: 62, baseType: !7, size: 32, offset: 320)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2104, file: !2105, line: 63, baseType: !2114, size: 64, offset: 384)
!2114 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !137, line: 153, baseType: !411)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2104, file: !2105, line: 64, baseType: !2116, size: 64, offset: 448)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1206, file: !1207, line: 1326, baseType: !1219, size: 32, offset: 13184)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1206, file: !1207, line: 1342, baseType: !202, size: 64, offset: 13248)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1206, file: !1207, line: 1343, baseType: !412, size: 64, offset: 13312)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1206, file: !1207, line: 1344, baseType: !411, size: 64, offset: 13376)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1206, file: !1207, line: 1345, baseType: !412, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1206, file: !1207, line: 1346, baseType: !412, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1206, file: !1207, line: 1347, baseType: !412, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1206, file: !1207, line: 1348, baseType: !357, size: 128, align: 64, offset: 13504)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1206, file: !1207, line: 1358, baseType: !2127, size: 34816, offset: 13824)
!2127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2128, line: 485, size: 34816, elements: !2129)
!2128 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2129 = !{!2130, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2159, !2160, !2161, !2162, !2163, !2164, !2167, !2168, !2169}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2127, file: !2128, line: 487, baseType: !2131, size: 192)
!2131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2132, size: 192, elements: !268)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2133, line: 16, size: 64, elements: !2134)
!2133 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2134 = !{!2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2132, file: !2133, line: 17, baseType: !848, size: 16)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2132, file: !2133, line: 18, baseType: !848, size: 16, offset: 16)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2132, file: !2133, line: 19, baseType: !848, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2132, file: !2133, line: 19, baseType: !848, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2132, file: !2133, line: 19, baseType: !848, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2132, file: !2133, line: 19, baseType: !848, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2132, file: !2133, line: 19, baseType: !848, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2132, file: !2133, line: 20, baseType: !848, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2132, file: !2133, line: 20, baseType: !848, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2132, file: !2133, line: 20, baseType: !848, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2132, file: !2133, line: 20, baseType: !848, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2132, file: !2133, line: 20, baseType: !848, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2132, file: !2133, line: 20, baseType: !848, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2127, file: !2128, line: 491, baseType: !138, size: 64, offset: 192)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2127, file: !2128, line: 495, baseType: !309, size: 16, offset: 256)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2127, file: !2128, line: 496, baseType: !309, size: 16, offset: 272)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2127, file: !2128, line: 497, baseType: !309, size: 16, offset: 288)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2127, file: !2128, line: 498, baseType: !309, size: 16, offset: 304)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2127, file: !2128, line: 502, baseType: !138, size: 64, offset: 320)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2127, file: !2128, line: 503, baseType: !138, size: 64, offset: 384)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2127, file: !2128, line: 514, baseType: !2156, size: 256, offset: 448)
!2156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2157, size: 256, elements: !1144)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2128, line: 483, flags: DIFlagFwdDecl)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2127, file: !2128, line: 516, baseType: !138, size: 64, offset: 704)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2127, file: !2128, line: 518, baseType: !138, size: 64, offset: 768)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2127, file: !2128, line: 520, baseType: !138, size: 64, offset: 832)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2127, file: !2128, line: 521, baseType: !138, size: 64, offset: 896)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2127, file: !2128, line: 522, baseType: !138, size: 64, offset: 960)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2127, file: !2128, line: 528, baseType: !2165, size: 64, offset: 1024)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2128, line: 10, flags: DIFlagFwdDecl)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2127, file: !2128, line: 535, baseType: !138, size: 64, offset: 1088)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2127, file: !2128, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2127, file: !2128, line: 540, baseType: !2170, size: 33280, offset: 1536)
!2170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2171, line: 317, size: 33280, elements: !2172)
!2171 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2172 = !{!2173, !2174, !2175}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2170, file: !2171, line: 330, baseType: !7, size: 32)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2170, file: !2171, line: 337, baseType: !138, size: 64, offset: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2170, file: !2171, line: 348, baseType: !2176, size: 32768, offset: 512)
!2176 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2171, line: 304, size: 32768, elements: !2177)
!2177 = !{!2178, !2193, !2232, !2282, !2295}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2176, file: !2171, line: 305, baseType: !2179, size: 896)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2171, line: 12, size: 896, elements: !2180)
!2180 = !{!2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2192}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2179, file: !2171, line: 13, baseType: !407, size: 32)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2179, file: !2171, line: 14, baseType: !407, size: 32, offset: 32)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2179, file: !2171, line: 15, baseType: !407, size: 32, offset: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2179, file: !2171, line: 16, baseType: !407, size: 32, offset: 96)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2179, file: !2171, line: 17, baseType: !407, size: 32, offset: 128)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2179, file: !2171, line: 18, baseType: !407, size: 32, offset: 160)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2179, file: !2171, line: 19, baseType: !407, size: 32, offset: 192)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2179, file: !2171, line: 22, baseType: !2189, size: 640, offset: 224)
!2189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 640, elements: !2190)
!2190 = !{!2191}
!2191 = !DISubrange(count: 20)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2179, file: !2171, line: 25, baseType: !407, size: 32, offset: 864)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2176, file: !2171, line: 306, baseType: !2194, size: 4096, align: 128)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2171, line: 34, size: 4096, align: 128, elements: !2195)
!2195 = !{!2196, !2197, !2198, !2199, !2200, !2215, !2216, !2217, !2221, !2223, !2227}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2194, file: !2171, line: 35, baseType: !848, size: 16)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2194, file: !2171, line: 36, baseType: !848, size: 16, offset: 16)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2194, file: !2171, line: 37, baseType: !848, size: 16, offset: 32)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2194, file: !2171, line: 38, baseType: !848, size: 16, offset: 48)
!2200 = !DIDerivedType(tag: DW_TAG_member, scope: !2194, file: !2171, line: 39, baseType: !2201, size: 128, offset: 64)
!2201 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2194, file: !2171, line: 39, size: 128, elements: !2202)
!2202 = !{!2203, !2208}
!2203 = !DIDerivedType(tag: DW_TAG_member, scope: !2201, file: !2171, line: 40, baseType: !2204, size: 128)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2201, file: !2171, line: 40, size: 128, elements: !2205)
!2205 = !{!2206, !2207}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2204, file: !2171, line: 41, baseType: !411, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2204, file: !2171, line: 42, baseType: !411, size: 64, offset: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, scope: !2201, file: !2171, line: 44, baseType: !2209, size: 128)
!2209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2201, file: !2171, line: 44, size: 128, elements: !2210)
!2210 = !{!2211, !2212, !2213, !2214}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2209, file: !2171, line: 45, baseType: !407, size: 32)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2209, file: !2171, line: 46, baseType: !407, size: 32, offset: 32)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2209, file: !2171, line: 47, baseType: !407, size: 32, offset: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2209, file: !2171, line: 48, baseType: !407, size: 32, offset: 96)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2194, file: !2171, line: 51, baseType: !407, size: 32, offset: 192)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2194, file: !2171, line: 52, baseType: !407, size: 32, offset: 224)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2194, file: !2171, line: 55, baseType: !2218, size: 1024, offset: 256)
!2218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 1024, elements: !2219)
!2219 = !{!2220}
!2220 = !DISubrange(count: 32)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2194, file: !2171, line: 58, baseType: !2222, size: 2048, offset: 1280)
!2222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 2048, elements: !272)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2194, file: !2171, line: 60, baseType: !2224, size: 384, offset: 3328)
!2224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 384, elements: !2225)
!2225 = !{!2226}
!2226 = !DISubrange(count: 12)
!2227 = !DIDerivedType(tag: DW_TAG_member, scope: !2194, file: !2171, line: 62, baseType: !2228, size: 384, offset: 3712)
!2228 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2194, file: !2171, line: 62, size: 384, elements: !2229)
!2229 = !{!2230, !2231}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2228, file: !2171, line: 63, baseType: !2224, size: 384)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2228, file: !2171, line: 64, baseType: !2224, size: 384)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2176, file: !2171, line: 307, baseType: !2233, size: 1088)
!2233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2171, line: 79, size: 1088, elements: !2234)
!2234 = !{!2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2281}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2233, file: !2171, line: 80, baseType: !407, size: 32)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2233, file: !2171, line: 81, baseType: !407, size: 32, offset: 32)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2233, file: !2171, line: 82, baseType: !407, size: 32, offset: 64)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2233, file: !2171, line: 83, baseType: !407, size: 32, offset: 96)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2233, file: !2171, line: 84, baseType: !407, size: 32, offset: 128)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2233, file: !2171, line: 85, baseType: !407, size: 32, offset: 160)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2233, file: !2171, line: 86, baseType: !407, size: 32, offset: 192)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2233, file: !2171, line: 88, baseType: !2189, size: 640, offset: 224)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2233, file: !2171, line: 89, baseType: !1341, size: 8, offset: 864)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2233, file: !2171, line: 90, baseType: !1341, size: 8, offset: 872)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2233, file: !2171, line: 91, baseType: !1341, size: 8, offset: 880)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2233, file: !2171, line: 92, baseType: !1341, size: 8, offset: 888)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2233, file: !2171, line: 93, baseType: !1341, size: 8, offset: 896)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2233, file: !2171, line: 94, baseType: !1341, size: 8, offset: 904)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2233, file: !2171, line: 95, baseType: !2250, size: 64, offset: 960)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2252, line: 11, size: 128, elements: !2253)
!2252 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2253 = !{!2254, !2255}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2251, file: !2252, line: 12, baseType: !302, size: 64)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2251, file: !2252, line: 13, baseType: !2256, size: 64, offset: 64)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2258, line: 56, size: 1344, elements: !2259)
!2258 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2259 = !{!2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2257, file: !2258, line: 61, baseType: !138, size: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2257, file: !2258, line: 62, baseType: !138, size: 64, offset: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2257, file: !2258, line: 63, baseType: !138, size: 64, offset: 128)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2257, file: !2258, line: 64, baseType: !138, size: 64, offset: 192)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2257, file: !2258, line: 65, baseType: !138, size: 64, offset: 256)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2257, file: !2258, line: 66, baseType: !138, size: 64, offset: 320)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2257, file: !2258, line: 68, baseType: !138, size: 64, offset: 384)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2257, file: !2258, line: 69, baseType: !138, size: 64, offset: 448)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2257, file: !2258, line: 70, baseType: !138, size: 64, offset: 512)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2257, file: !2258, line: 71, baseType: !138, size: 64, offset: 576)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2257, file: !2258, line: 72, baseType: !138, size: 64, offset: 640)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2257, file: !2258, line: 73, baseType: !138, size: 64, offset: 704)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2257, file: !2258, line: 74, baseType: !138, size: 64, offset: 768)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2257, file: !2258, line: 75, baseType: !138, size: 64, offset: 832)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2257, file: !2258, line: 76, baseType: !138, size: 64, offset: 896)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2257, file: !2258, line: 81, baseType: !138, size: 64, offset: 960)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2257, file: !2258, line: 83, baseType: !138, size: 64, offset: 1024)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2257, file: !2258, line: 84, baseType: !138, size: 64, offset: 1088)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2257, file: !2258, line: 85, baseType: !138, size: 64, offset: 1152)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2257, file: !2258, line: 86, baseType: !138, size: 64, offset: 1216)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2257, file: !2258, line: 87, baseType: !138, size: 64, offset: 1280)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2233, file: !2171, line: 96, baseType: !407, size: 32, offset: 1024)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2176, file: !2171, line: 308, baseType: !2283, size: 4608, align: 512)
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2171, line: 289, size: 4608, align: 512, elements: !2284)
!2284 = !{!2285, !2286, !2293}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2283, file: !2171, line: 290, baseType: !2194, size: 4096, align: 128)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2283, file: !2171, line: 291, baseType: !2287, size: 512, offset: 4096)
!2287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2171, line: 268, size: 512, elements: !2288)
!2288 = !{!2289, !2290, !2291}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2287, file: !2171, line: 269, baseType: !411, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2287, file: !2171, line: 270, baseType: !411, size: 64, offset: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2287, file: !2171, line: 271, baseType: !2292, size: 384, offset: 128)
!2292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !411, size: 384, elements: !1614)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2283, file: !2171, line: 292, baseType: !2294, offset: 4608)
!2294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1341, elements: !1712)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2176, file: !2171, line: 309, baseType: !2296, size: 32768)
!2296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1341, size: 32768, elements: !2297)
!2297 = !{!2298}
!2298 = !DISubrange(count: 4096)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1202, file: !712, line: 378, baseType: !2300, size: 64, offset: 64)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1198, file: !712, line: 384, baseType: !1491, size: 192, offset: 192)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !967, file: !712, line: 500, baseType: !226, offset: 6656)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !967, file: !712, line: 501, baseType: !2304, size: 64, offset: 6656)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !712, line: 387, flags: DIFlagFwdDecl)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !967, file: !712, line: 516, baseType: !1702, size: 64, offset: 6720)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !967, file: !712, line: 519, baseType: !344, size: 64, offset: 6784)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !967, file: !712, line: 521, baseType: !2309, size: 64, offset: 6848)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !712, line: 521, flags: DIFlagFwdDecl)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !967, file: !712, line: 545, baseType: !736, size: 32, offset: 6912)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !967, file: !712, line: 548, baseType: !479, size: 8, offset: 6944)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !967, file: !712, line: 550, baseType: !2314, offset: 6952)
!2314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2315, line: 142, elements: !240)
!2315 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !967, file: !712, line: 554, baseType: !1946, size: 256, offset: 6976)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !967, file: !712, line: 557, baseType: !407, size: 32, offset: 7232)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !964, file: !712, line: 565, baseType: !2319, offset: 7296)
!2319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, elements: !2320)
!2320 = !{!2321}
!2321 = !DISubrange(count: -1)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !960, file: !712, line: 151, baseType: !736, size: 32)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !953, file: !712, line: 156, baseType: !226, offset: 256)
!2324 = !DIDerivedType(tag: DW_TAG_member, scope: !716, file: !712, line: 159, baseType: !2325, size: 128)
!2325 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !716, file: !712, line: 159, size: 128, elements: !2326)
!2326 = !{!2327, !2391}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2325, file: !712, line: 161, baseType: !2328, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2330)
!2330 = !{!2331, !2341, !2362, !2363, !2364, !2365, !2366, !2378, !2379, !2380}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2329, file: !31, line: 111, baseType: !2332, size: 384)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2333)
!2333 = !{!2334, !2336, !2337, !2338, !2339, !2340}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2332, file: !31, line: 20, baseType: !2335, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2332, file: !31, line: 21, baseType: !2335, size: 64, offset: 64)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2332, file: !31, line: 22, baseType: !2335, size: 64, offset: 128)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2332, file: !31, line: 23, baseType: !138, size: 64, offset: 192)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2332, file: !31, line: 24, baseType: !138, size: 64, offset: 256)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2332, file: !31, line: 25, baseType: !138, size: 64, offset: 320)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2329, file: !31, line: 112, baseType: !2342, size: 64, offset: 384)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2344, line: 105, size: 128, elements: !2345)
!2344 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2345 = !{!2346, !2347}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2343, file: !2344, line: 110, baseType: !138, size: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2343, file: !2344, line: 118, baseType: !2348, size: 64, offset: 64)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2344, line: 95, size: 448, elements: !2350)
!2350 = !{!2351, !2352, !2357, !2358, !2359, !2360, !2361}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2349, file: !2344, line: 96, baseType: !760, size: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2349, file: !2344, line: 97, baseType: !2353, size: 64, offset: 64)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2344, line: 60, baseType: !2355)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{null, !2342}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2349, file: !2344, line: 98, baseType: !2353, size: 64, offset: 128)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2349, file: !2344, line: 99, baseType: !479, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2349, file: !2344, line: 100, baseType: !479, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2349, file: !2344, line: 101, baseType: !357, size: 128, align: 64, offset: 256)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2349, file: !2344, line: 102, baseType: !2342, size: 64, offset: 384)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2329, file: !31, line: 113, baseType: !2343, size: 128, offset: 448)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2329, file: !31, line: 114, baseType: !1491, size: 192, offset: 576)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2329, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2329, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2329, file: !31, line: 117, baseType: !2367, size: 64, offset: 832)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2369)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2370)
!2370 = !{!2371, !2372, !2376, !2377}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2369, file: !31, line: 73, baseType: !829, size: 64)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2369, file: !31, line: 78, baseType: !2373, size: 64, offset: 64)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{null, !2328}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2369, file: !31, line: 83, baseType: !2373, size: 64, offset: 128)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2369, file: !31, line: 89, baseType: !1016, size: 64, offset: 192)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2329, file: !31, line: 118, baseType: !202, size: 64, offset: 896)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2329, file: !31, line: 119, baseType: !192, size: 32, offset: 960)
!2380 = !DIDerivedType(tag: DW_TAG_member, scope: !2329, file: !31, line: 120, baseType: !2381, size: 128, offset: 1024)
!2381 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2329, file: !31, line: 120, size: 128, elements: !2382)
!2382 = !{!2383, !2389}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2381, file: !31, line: 121, baseType: !2384, size: 128)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2385, line: 6, size: 128, elements: !2386)
!2385 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2386 = !{!2387, !2388}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2384, file: !2385, line: 7, baseType: !411, size: 64)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2384, file: !2385, line: 8, baseType: !411, size: 64, offset: 64)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2381, file: !31, line: 122, baseType: !2390)
!2390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2384, elements: !1712)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2325, file: !712, line: 162, baseType: !202, size: 64, offset: 64)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !716, file: !712, line: 176, baseType: !357, size: 128, align: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, scope: !711, file: !712, line: 179, baseType: !2394, size: 32, offset: 384)
!2394 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !711, file: !712, line: 179, size: 32, elements: !2395)
!2395 = !{!2396, !2397, !2398, !2399}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2394, file: !712, line: 184, baseType: !736, size: 32)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2394, file: !712, line: 192, baseType: !7, size: 32)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2394, file: !712, line: 194, baseType: !7, size: 32)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2394, file: !712, line: 195, baseType: !192, size: 32)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !711, file: !712, line: 199, baseType: !736, size: 32, offset: 416)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !646, file: !44, line: 1964, baseType: !2402, size: 64, offset: 1344)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{!302, !588, !2405}
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2407, line: 12, size: 256, elements: !2408)
!2407 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2408 = !{!2409, !2410, !2411, !2412, !2413}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2406, file: !2407, line: 13, baseType: !136, size: 32)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2406, file: !2407, line: 16, baseType: !192, size: 32, offset: 32)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2406, file: !2407, line: 23, baseType: !138, size: 64, offset: 64)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2406, file: !2407, line: 30, baseType: !138, size: 64, offset: 128)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2406, file: !2407, line: 33, baseType: !2414, size: 64, offset: 192)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !712, line: 27, flags: DIFlagFwdDecl)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !646, file: !44, line: 1966, baseType: !2402, size: 64, offset: 1408)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !589, file: !44, line: 1424, baseType: !2418, size: 64, offset: 448)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2420)
!2420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2421)
!2421 = !{!2422, !2468, !2472, !2476, !2477, !2478, !2479, !2480, !2485, !2490, !2494}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2420, file: !38, line: 323, baseType: !2423, size: 64)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!192, !2426}
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2428)
!2428 = !{!2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2453, !2454, !2455}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2427, file: !38, line: 295, baseType: !628, size: 128)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2427, file: !38, line: 296, baseType: !213, size: 128, offset: 128)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2427, file: !38, line: 297, baseType: !213, size: 128, offset: 256)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2427, file: !38, line: 298, baseType: !213, size: 128, offset: 384)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2427, file: !38, line: 299, baseType: !1162, size: 192, offset: 512)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2427, file: !38, line: 300, baseType: !226, offset: 704)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2427, file: !38, line: 301, baseType: !736, size: 32, offset: 704)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2427, file: !38, line: 302, baseType: !588, size: 64, offset: 768)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2427, file: !38, line: 303, baseType: !2438, size: 64, offset: 832)
!2438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2439)
!2439 = !{!2440, !2452}
!2440 = !DIDerivedType(tag: DW_TAG_member, scope: !2438, file: !38, line: 69, baseType: !2441, size: 32)
!2441 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2438, file: !38, line: 69, size: 32, elements: !2442)
!2442 = !{!2443, !2444, !2445}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2441, file: !38, line: 70, baseType: !424, size: 32)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2441, file: !38, line: 71, baseType: !432, size: 32)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2441, file: !38, line: 72, baseType: !2446, size: 32)
!2446 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2447, line: 24, baseType: !2448)
!2447 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2447, line: 22, size: 32, elements: !2449)
!2449 = !{!2450}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2448, file: !2447, line: 23, baseType: !2451, size: 32)
!2451 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2447, line: 20, baseType: !430)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2438, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2427, file: !38, line: 304, baseType: !520, size: 64, offset: 896)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2427, file: !38, line: 305, baseType: !138, size: 64, offset: 960)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2427, file: !38, line: 306, baseType: !2456, size: 576, offset: 1024)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2457)
!2457 = !{!2458, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2456, file: !38, line: 206, baseType: !2459, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !522)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2456, file: !38, line: 207, baseType: !2459, size: 64, offset: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2456, file: !38, line: 208, baseType: !2459, size: 64, offset: 128)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2456, file: !38, line: 209, baseType: !2459, size: 64, offset: 192)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2456, file: !38, line: 210, baseType: !2459, size: 64, offset: 256)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2456, file: !38, line: 211, baseType: !2459, size: 64, offset: 320)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2456, file: !38, line: 212, baseType: !2459, size: 64, offset: 384)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2456, file: !38, line: 213, baseType: !528, size: 64, offset: 448)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2456, file: !38, line: 214, baseType: !528, size: 64, offset: 512)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2420, file: !38, line: 324, baseType: !2469, size: 64, offset: 64)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{!2426, !588, !192}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2420, file: !38, line: 325, baseType: !2473, size: 64, offset: 128)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{null, !2426}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2420, file: !38, line: 326, baseType: !2423, size: 64, offset: 192)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2420, file: !38, line: 327, baseType: !2423, size: 64, offset: 256)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2420, file: !38, line: 328, baseType: !2423, size: 64, offset: 320)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2420, file: !38, line: 329, baseType: !674, size: 64, offset: 384)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2420, file: !38, line: 332, baseType: !2481, size: 64, offset: 448)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = !DISubroutineType(types: !2483)
!2483 = !{!2484, !418}
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2420, file: !38, line: 333, baseType: !2486, size: 64, offset: 512)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!192, !418, !2489}
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2420, file: !38, line: 335, baseType: !2491, size: 64, offset: 576)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!192, !418, !2484}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2420, file: !38, line: 337, baseType: !2495, size: 64, offset: 640)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!192, !588, !2498}
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !589, file: !44, line: 1425, baseType: !2500, size: 64, offset: 512)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2502)
!2502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2503)
!2503 = !{!2504, !2508, !2509, !2513, !2514, !2515, !2530, !2553, !2557, !2558, !2581}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2502, file: !38, line: 429, baseType: !2505, size: 64)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{!192, !588, !192, !192, !538}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2502, file: !38, line: 430, baseType: !674, size: 64, offset: 64)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2502, file: !38, line: 431, baseType: !2510, size: 64, offset: 128)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{!192, !588, !7}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2502, file: !38, line: 432, baseType: !2510, size: 64, offset: 192)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2502, file: !38, line: 433, baseType: !674, size: 64, offset: 256)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2502, file: !38, line: 434, baseType: !2516, size: 64, offset: 320)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{!192, !588, !192, !2519}
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2521)
!2521 = !{!2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2520, file: !38, line: 416, baseType: !192, size: 32)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2520, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2520, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2520, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2520, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2520, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2520, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2520, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2502, file: !38, line: 435, baseType: !2531, size: 64, offset: 384)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!192, !588, !2438, !2534}
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2536)
!2536 = !{!2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2535, file: !38, line: 344, baseType: !192, size: 32)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2535, file: !38, line: 345, baseType: !411, size: 64, offset: 64)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2535, file: !38, line: 346, baseType: !411, size: 64, offset: 128)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2535, file: !38, line: 347, baseType: !411, size: 64, offset: 192)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2535, file: !38, line: 348, baseType: !411, size: 64, offset: 256)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2535, file: !38, line: 349, baseType: !411, size: 64, offset: 320)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2535, file: !38, line: 350, baseType: !411, size: 64, offset: 384)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2535, file: !38, line: 351, baseType: !766, size: 64, offset: 448)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2535, file: !38, line: 353, baseType: !766, size: 64, offset: 512)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2535, file: !38, line: 354, baseType: !192, size: 32, offset: 576)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2535, file: !38, line: 355, baseType: !192, size: 32, offset: 608)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2535, file: !38, line: 356, baseType: !411, size: 64, offset: 640)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2535, file: !38, line: 357, baseType: !411, size: 64, offset: 704)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2535, file: !38, line: 358, baseType: !411, size: 64, offset: 768)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2535, file: !38, line: 359, baseType: !766, size: 64, offset: 832)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2535, file: !38, line: 360, baseType: !192, size: 32, offset: 896)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2502, file: !38, line: 436, baseType: !2554, size: 64, offset: 448)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{!192, !588, !2498, !2534}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2502, file: !38, line: 438, baseType: !2531, size: 64, offset: 512)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2502, file: !38, line: 439, baseType: !2559, size: 64, offset: 576)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!192, !588, !2562}
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2564)
!2564 = !{!2565, !2566}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2563, file: !38, line: 410, baseType: !7, size: 32)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2563, file: !38, line: 411, baseType: !2567, size: 1344, offset: 64)
!2567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2568, size: 1344, elements: !268)
!2568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2569)
!2569 = !{!2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2580}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2568, file: !38, line: 396, baseType: !7, size: 32)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2568, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2568, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2568, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2568, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2568, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2568, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2568, file: !38, line: 404, baseType: !413, size: 64, offset: 256)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2568, file: !38, line: 405, baseType: !2579, size: 64, offset: 320)
!2579 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !137, line: 126, baseType: !411)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2568, file: !38, line: 406, baseType: !2579, size: 64, offset: 384)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2502, file: !38, line: 440, baseType: !2510, size: 64, offset: 640)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !589, file: !44, line: 1426, baseType: !2583, size: 64, offset: 576)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2585)
!2585 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !589, file: !44, line: 1427, baseType: !138, size: 64, offset: 640)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !589, file: !44, line: 1428, baseType: !138, size: 64, offset: 704)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !589, file: !44, line: 1429, baseType: !138, size: 64, offset: 768)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !589, file: !44, line: 1430, baseType: !374, size: 64, offset: 832)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !589, file: !44, line: 1431, baseType: !756, size: 256, offset: 896)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !589, file: !44, line: 1432, baseType: !192, size: 32, offset: 1152)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !589, file: !44, line: 1433, baseType: !736, size: 32, offset: 1184)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !589, file: !44, line: 1437, baseType: !2594, size: 64, offset: 1216)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2597)
!2597 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !589, file: !44, line: 1449, baseType: !2599, size: 64, offset: 1280)
!2599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !390, line: 34, size: 64, elements: !2600)
!2600 = !{!2601}
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2599, file: !390, line: 35, baseType: !393, size: 64)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !589, file: !44, line: 1450, baseType: !213, size: 128, offset: 1344)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !589, file: !44, line: 1451, baseType: !2604, size: 64, offset: 1472)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !589, file: !44, line: 1452, baseType: !1912, size: 64, offset: 1536)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !589, file: !44, line: 1453, baseType: !2608, size: 64, offset: 1600)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !589, file: !44, line: 1454, baseType: !628, size: 128, offset: 1664)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !589, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !589, file: !44, line: 1456, baseType: !2613, size: 2432, offset: 1856)
!2613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2614)
!2614 = !{!2615, !2616, !2617, !2619, !2651}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2613, file: !38, line: 519, baseType: !7, size: 32)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2613, file: !38, line: 520, baseType: !756, size: 256, offset: 64)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2613, file: !38, line: 521, baseType: !2618, size: 192, offset: 320)
!2618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 192, elements: !268)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2613, file: !38, line: 522, baseType: !2620, size: 1728, offset: 512)
!2620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2621, size: 1728, elements: !268)
!2621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2622)
!2622 = !{!2623, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2621, file: !38, line: 223, baseType: !2624, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2626)
!2626 = !{!2627, !2628, !2641, !2642}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2625, file: !38, line: 444, baseType: !192, size: 32)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2625, file: !38, line: 445, baseType: !2629, size: 64, offset: 64)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2631)
!2631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2632)
!2632 = !{!2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2631, file: !38, line: 311, baseType: !674, size: 64)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2631, file: !38, line: 312, baseType: !674, size: 64, offset: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2631, file: !38, line: 313, baseType: !674, size: 64, offset: 128)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2631, file: !38, line: 314, baseType: !674, size: 64, offset: 192)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2631, file: !38, line: 315, baseType: !2423, size: 64, offset: 256)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2631, file: !38, line: 316, baseType: !2423, size: 64, offset: 320)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2631, file: !38, line: 317, baseType: !2423, size: 64, offset: 384)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2631, file: !38, line: 318, baseType: !2495, size: 64, offset: 448)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2625, file: !38, line: 446, baseType: !185, size: 64, offset: 128)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2625, file: !38, line: 447, baseType: !2624, size: 64, offset: 192)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2621, file: !38, line: 224, baseType: !192, size: 32, offset: 64)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2621, file: !38, line: 226, baseType: !213, size: 128, offset: 128)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2621, file: !38, line: 227, baseType: !138, size: 64, offset: 256)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2621, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2621, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2621, file: !38, line: 230, baseType: !2459, size: 64, offset: 384)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2621, file: !38, line: 231, baseType: !2459, size: 64, offset: 448)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2621, file: !38, line: 232, baseType: !202, size: 64, offset: 512)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2613, file: !38, line: 523, baseType: !2652, size: 192, offset: 2240)
!2652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2629, size: 192, elements: !268)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !589, file: !44, line: 1458, baseType: !2654, size: 2112, offset: 4288)
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2655)
!2655 = !{!2656, !2657, !2658}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2654, file: !44, line: 1411, baseType: !192, size: 32)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2654, file: !44, line: 1412, baseType: !1470, size: 128, offset: 64)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2654, file: !44, line: 1413, baseType: !2659, size: 1920, offset: 192)
!2659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2660, size: 1920, elements: !268)
!2660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2661, line: 12, size: 640, elements: !2662)
!2661 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2662 = !{!2663, !2671, !2673, !2678, !2679}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2660, file: !2661, line: 13, baseType: !2664, size: 320)
!2664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2665, line: 17, size: 320, elements: !2666)
!2665 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2666 = !{!2667, !2668, !2669, !2670}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2664, file: !2665, line: 18, baseType: !192, size: 32)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2664, file: !2665, line: 19, baseType: !192, size: 32, offset: 32)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2664, file: !2665, line: 20, baseType: !1470, size: 128, offset: 64)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2664, file: !2665, line: 22, baseType: !357, size: 128, align: 64, offset: 192)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2660, file: !2661, line: 14, baseType: !2672, size: 64, offset: 320)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2660, file: !2661, line: 15, baseType: !2674, size: 64, offset: 384)
!2674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2675, line: 16, size: 64, elements: !2676)
!2675 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2676 = !{!2677}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2674, file: !2675, line: 17, baseType: !1205, size: 64)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2660, file: !2661, line: 16, baseType: !1470, size: 128, offset: 448)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2660, file: !2661, line: 17, baseType: !736, size: 32, offset: 576)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !589, file: !44, line: 1465, baseType: !202, size: 64, offset: 6400)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !589, file: !44, line: 1468, baseType: !407, size: 32, offset: 6464)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !589, file: !44, line: 1470, baseType: !528, size: 64, offset: 6528)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !589, file: !44, line: 1471, baseType: !528, size: 64, offset: 6592)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !589, file: !44, line: 1473, baseType: !142, size: 32, offset: 6656)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !589, file: !44, line: 1474, baseType: !2686, size: 64, offset: 6720)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !589, file: !44, line: 1477, baseType: !2689, size: 256, offset: 6784)
!2689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 256, elements: !2219)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !589, file: !44, line: 1478, baseType: !2691, size: 128, offset: 7040)
!2691 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2692, line: 18, baseType: !2693)
!2692 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2693 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2692, line: 16, size: 128, elements: !2694)
!2694 = !{!2695}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2693, file: !2692, line: 17, baseType: !2696, size: 128)
!2696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1342, size: 128, elements: !1724)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !589, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !589, file: !44, line: 1481, baseType: !2699, size: 32, offset: 7200)
!2699 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !137, line: 150, baseType: !7)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !589, file: !44, line: 1487, baseType: !1162, size: 192, offset: 7232)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !589, file: !44, line: 1493, baseType: !183, size: 64, offset: 7424)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !589, file: !44, line: 1495, baseType: !2703, size: 64, offset: 7488)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2705)
!2705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !372, line: 135, size: 1024, align: 512, elements: !2706)
!2706 = !{!2707, !2711, !2712, !2719, !2725, !2729, !2733, !2737, !2738, !2742, !2746, !2751, !2755}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2705, file: !372, line: 136, baseType: !2708, size: 64)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{!192, !374, !7}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2705, file: !372, line: 137, baseType: !2708, size: 64, offset: 64)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2705, file: !372, line: 138, baseType: !2713, size: 64, offset: 128)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!192, !2716, !2718}
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !375)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2705, file: !372, line: 139, baseType: !2720, size: 64, offset: 192)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{!192, !2716, !7, !183, !2723}
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !398)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2705, file: !372, line: 141, baseType: !2726, size: 64, offset: 256)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!192, !2716}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2705, file: !372, line: 142, baseType: !2730, size: 64, offset: 320)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{!192, !374}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2705, file: !372, line: 143, baseType: !2734, size: 64, offset: 384)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{null, !374}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2705, file: !372, line: 144, baseType: !2734, size: 64, offset: 448)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2705, file: !372, line: 145, baseType: !2739, size: 64, offset: 512)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{null, !374, !418}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2705, file: !372, line: 146, baseType: !2743, size: 64, offset: 576)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = !DISubroutineType(types: !2745)
!2745 = !{!267, !374, !267, !192}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2705, file: !372, line: 147, baseType: !2747, size: 64, offset: 640)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{!370, !2750}
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2705, file: !372, line: 148, baseType: !2752, size: 64, offset: 704)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!192, !538, !479}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2705, file: !372, line: 149, baseType: !2756, size: 64, offset: 768)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = !DISubroutineType(types: !2758)
!2758 = !{!374, !374, !2759}
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !419)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !589, file: !44, line: 1500, baseType: !192, size: 32, offset: 7552)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !589, file: !44, line: 1502, baseType: !2763, size: 448, offset: 7616)
!2763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2407, line: 60, size: 448, elements: !2764)
!2764 = !{!2765, !2770, !2771, !2772, !2773, !2774, !2775}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2763, file: !2407, line: 61, baseType: !2766, size: 64)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{!138, !2769, !2405}
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2763, file: !2407, line: 63, baseType: !2766, size: 64, offset: 64)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2763, file: !2407, line: 66, baseType: !302, size: 64, offset: 128)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2763, file: !2407, line: 67, baseType: !192, size: 32, offset: 192)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2763, file: !2407, line: 68, baseType: !7, size: 32, offset: 224)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2763, file: !2407, line: 71, baseType: !213, size: 128, offset: 256)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2763, file: !2407, line: 77, baseType: !2776, size: 64, offset: 384)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !589, file: !44, line: 1505, baseType: !760, size: 64, offset: 8064)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !589, file: !44, line: 1508, baseType: !760, size: 64, offset: 8128)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !589, file: !44, line: 1511, baseType: !192, size: 32, offset: 8192)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !589, file: !44, line: 1514, baseType: !898, size: 32, offset: 8224)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !589, file: !44, line: 1517, baseType: !2782, size: 64, offset: 8256)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1947, line: 18, flags: DIFlagFwdDecl)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !589, file: !44, line: 1518, baseType: !624, size: 64, offset: 8320)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !589, file: !44, line: 1525, baseType: !1702, size: 64, offset: 8384)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !589, file: !44, line: 1532, baseType: !2787, size: 64, offset: 8448)
!2787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2788, line: 52, size: 64, elements: !2789)
!2788 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2789 = !{!2790}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2787, file: !2788, line: 53, baseType: !2791, size: 64)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2788, line: 40, size: 256, elements: !2793)
!2793 = !{!2794, !2795, !2800}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2792, file: !2788, line: 42, baseType: !226)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2792, file: !2788, line: 44, baseType: !2796, size: 192)
!2796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2788, line: 28, size: 192, elements: !2797)
!2797 = !{!2798, !2799}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2796, file: !2788, line: 29, baseType: !213, size: 128)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2796, file: !2788, line: 31, baseType: !302, size: 64, offset: 128)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2792, file: !2788, line: 49, baseType: !302, size: 64, offset: 192)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !589, file: !44, line: 1533, baseType: !2787, size: 64, offset: 8512)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !589, file: !44, line: 1534, baseType: !357, size: 128, align: 64, offset: 8576)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !589, file: !44, line: 1535, baseType: !1946, size: 256, offset: 8704)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !589, file: !44, line: 1537, baseType: !1162, size: 192, offset: 8960)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !589, file: !44, line: 1542, baseType: !192, size: 32, offset: 9152)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !589, file: !44, line: 1545, baseType: !226, offset: 9184)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !589, file: !44, line: 1546, baseType: !213, size: 128, offset: 9216)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !589, file: !44, line: 1548, baseType: !226, offset: 9344)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !589, file: !44, line: 1549, baseType: !213, size: 128, offset: 9344)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !419, file: !44, line: 624, baseType: !723, size: 64, offset: 256)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !419, file: !44, line: 631, baseType: !138, size: 64, offset: 320)
!2812 = !DIDerivedType(tag: DW_TAG_member, scope: !419, file: !44, line: 639, baseType: !2813, size: 32, offset: 384)
!2813 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !419, file: !44, line: 639, size: 32, elements: !2814)
!2814 = !{!2815, !2817}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2813, file: !44, line: 640, baseType: !2816, size: 32)
!2816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2813, file: !44, line: 641, baseType: !7, size: 32)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !419, file: !44, line: 643, baseType: !502, size: 32, offset: 416)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !419, file: !44, line: 644, baseType: !520, size: 64, offset: 448)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !419, file: !44, line: 645, baseType: !524, size: 128, offset: 512)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !419, file: !44, line: 646, baseType: !524, size: 128, offset: 640)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !419, file: !44, line: 647, baseType: !524, size: 128, offset: 768)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !419, file: !44, line: 648, baseType: !226, offset: 896)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !419, file: !44, line: 649, baseType: !309, size: 16, offset: 896)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !419, file: !44, line: 650, baseType: !1341, size: 8, offset: 912)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !419, file: !44, line: 651, baseType: !1341, size: 8, offset: 920)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !419, file: !44, line: 652, baseType: !2579, size: 64, offset: 960)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !419, file: !44, line: 659, baseType: !138, size: 64, offset: 1024)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !419, file: !44, line: 660, baseType: !756, size: 256, offset: 1088)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !419, file: !44, line: 662, baseType: !138, size: 64, offset: 1344)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !419, file: !44, line: 663, baseType: !138, size: 64, offset: 1408)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !419, file: !44, line: 665, baseType: !628, size: 128, offset: 1472)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !419, file: !44, line: 666, baseType: !213, size: 128, offset: 1600)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !419, file: !44, line: 675, baseType: !213, size: 128, offset: 1728)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !419, file: !44, line: 676, baseType: !213, size: 128, offset: 1856)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !419, file: !44, line: 677, baseType: !213, size: 128, offset: 1984)
!2837 = !DIDerivedType(tag: DW_TAG_member, scope: !419, file: !44, line: 678, baseType: !2838, size: 128, offset: 2112)
!2838 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !419, file: !44, line: 678, size: 128, elements: !2839)
!2839 = !{!2840, !2841}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2838, file: !44, line: 679, baseType: !624, size: 64)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2838, file: !44, line: 680, baseType: !357, size: 128, align: 64)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !419, file: !44, line: 682, baseType: !762, size: 64, offset: 2240)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !419, file: !44, line: 683, baseType: !762, size: 64, offset: 2304)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !419, file: !44, line: 684, baseType: !736, size: 32, offset: 2368)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !419, file: !44, line: 685, baseType: !736, size: 32, offset: 2400)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !419, file: !44, line: 686, baseType: !736, size: 32, offset: 2432)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !419, file: !44, line: 688, baseType: !736, size: 32, offset: 2464)
!2848 = !DIDerivedType(tag: DW_TAG_member, scope: !419, file: !44, line: 690, baseType: !2849, size: 64, offset: 2496)
!2849 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !419, file: !44, line: 690, size: 64, elements: !2850)
!2850 = !{!2851, !3073}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2849, file: !44, line: 691, baseType: !2852, size: 64)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2854)
!2854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2855)
!2855 = !{!2856, !2857, !2861, !2866, !2870, !2871, !2872, !2876, !2889, !2890, !2897, !2901, !2902, !2906, !2907, !2911, !2916, !2917, !2921, !2925, !3033, !3037, !3038, !3042, !3043, !3047, !3051, !3056, !3060, !3064, !3068, !3072}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2854, file: !44, line: 1823, baseType: !185, size: 64)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2854, file: !44, line: 1824, baseType: !2858, size: 64, offset: 64)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!520, !344, !520, !192}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2854, file: !44, line: 1825, baseType: !2862, size: 64, offset: 128)
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = !DISubroutineType(types: !2864)
!2864 = !{!298, !344, !267, !314, !2865}
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2854, file: !44, line: 1826, baseType: !2867, size: 64, offset: 192)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!298, !344, !183, !314, !2865}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2854, file: !44, line: 1827, baseType: !833, size: 64, offset: 256)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2854, file: !44, line: 1828, baseType: !833, size: 64, offset: 320)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2854, file: !44, line: 1829, baseType: !2873, size: 64, offset: 384)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{!192, !836, !479}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2854, file: !44, line: 1830, baseType: !2877, size: 64, offset: 448)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = !DISubroutineType(types: !2879)
!2879 = !{!192, !344, !2880}
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2882)
!2882 = !{!2883, !2888}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2881, file: !44, line: 1777, baseType: !2884, size: 64)
!2884 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2885)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!192, !2880, !183, !192, !520, !411, !7}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2881, file: !44, line: 1778, baseType: !520, size: 64, offset: 64)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2854, file: !44, line: 1831, baseType: !2877, size: 64, offset: 512)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2854, file: !44, line: 1832, baseType: !2891, size: 64, offset: 576)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{!2894, !344, !2895}
!2894 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !145, line: 52, baseType: !7)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !608, line: 27, flags: DIFlagFwdDecl)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2854, file: !44, line: 1833, baseType: !2898, size: 64, offset: 640)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{!302, !344, !7, !138}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2854, file: !44, line: 1834, baseType: !2898, size: 64, offset: 704)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2854, file: !44, line: 1835, baseType: !2903, size: 64, offset: 768)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{!192, !344, !970}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2854, file: !44, line: 1836, baseType: !138, size: 64, offset: 832)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2854, file: !44, line: 1837, baseType: !2908, size: 64, offset: 896)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!192, !418, !344}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2854, file: !44, line: 1838, baseType: !2912, size: 64, offset: 960)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!192, !344, !2915}
!2915 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !202)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2854, file: !44, line: 1839, baseType: !2908, size: 64, offset: 1024)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2854, file: !44, line: 1840, baseType: !2918, size: 64, offset: 1088)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{!192, !344, !520, !520, !192}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2854, file: !44, line: 1841, baseType: !2922, size: 64, offset: 1152)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!192, !192, !344, !192}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2854, file: !44, line: 1842, baseType: !2926, size: 64, offset: 1216)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{!192, !344, !192, !2929}
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2931)
!2931 = !{!2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2963, !2964, !2965, !2978, !3009}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2930, file: !44, line: 1063, baseType: !2929, size: 64)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2930, file: !44, line: 1064, baseType: !213, size: 128, offset: 64)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2930, file: !44, line: 1065, baseType: !628, size: 128, offset: 192)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2930, file: !44, line: 1066, baseType: !213, size: 128, offset: 320)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2930, file: !44, line: 1069, baseType: !213, size: 128, offset: 448)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2930, file: !44, line: 1072, baseType: !2915, size: 64, offset: 576)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2930, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2930, file: !44, line: 1074, baseType: !141, size: 8, offset: 672)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2930, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2930, file: !44, line: 1076, baseType: !192, size: 32, offset: 736)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2930, file: !44, line: 1077, baseType: !1470, size: 128, offset: 768)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2930, file: !44, line: 1078, baseType: !344, size: 64, offset: 896)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2930, file: !44, line: 1079, baseType: !520, size: 64, offset: 960)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2930, file: !44, line: 1080, baseType: !520, size: 64, offset: 1024)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2930, file: !44, line: 1082, baseType: !2947, size: 64, offset: 1088)
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2949)
!2949 = !{!2950, !2958, !2959, !2960, !2961, !2962}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2948, file: !44, line: 1315, baseType: !2951)
!2951 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2952, line: 20, baseType: !2953)
!2952 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2953 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2952, line: 11, elements: !2954)
!2954 = !{!2955}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2953, file: !2952, line: 12, baseType: !2956)
!2956 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !238, line: 33, baseType: !2957)
!2957 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !238, line: 31, elements: !240)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2948, file: !44, line: 1316, baseType: !192, size: 32)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2948, file: !44, line: 1317, baseType: !192, size: 32, offset: 32)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2948, file: !44, line: 1318, baseType: !2947, size: 64, offset: 64)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2948, file: !44, line: 1319, baseType: !344, size: 64, offset: 128)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2948, file: !44, line: 1320, baseType: !357, size: 128, align: 64, offset: 192)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2930, file: !44, line: 1084, baseType: !138, size: 64, offset: 1152)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2930, file: !44, line: 1085, baseType: !138, size: 64, offset: 1216)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2930, file: !44, line: 1087, baseType: !2966, size: 64, offset: 1280)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2968)
!2968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !2969)
!2969 = !{!2970, !2974}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2968, file: !44, line: 1012, baseType: !2971, size: 64)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{null, !2929, !2929}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2968, file: !44, line: 1013, baseType: !2975, size: 64, offset: 64)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{null, !2929}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2930, file: !44, line: 1088, baseType: !2979, size: 64, offset: 1344)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2981)
!2981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !2982)
!2982 = !{!2983, !2987, !2991, !2992, !2996, !3000, !3004, !3008}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2981, file: !44, line: 1017, baseType: !2984, size: 64)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!2915, !2915}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2981, file: !44, line: 1018, baseType: !2988, size: 64, offset: 64)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{null, !2915}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2981, file: !44, line: 1019, baseType: !2975, size: 64, offset: 128)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2981, file: !44, line: 1020, baseType: !2993, size: 64, offset: 192)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!192, !2929, !192}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2981, file: !44, line: 1021, baseType: !2997, size: 64, offset: 256)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{!479, !2929}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2981, file: !44, line: 1022, baseType: !3001, size: 64, offset: 320)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!192, !2929, !192, !216}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2981, file: !44, line: 1023, baseType: !3005, size: 64, offset: 384)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{null, !2929, !810}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2981, file: !44, line: 1024, baseType: !2997, size: 64, offset: 448)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2930, file: !44, line: 1097, baseType: !3010, size: 256, offset: 1408)
!3010 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2930, file: !44, line: 1089, size: 256, elements: !3011)
!3011 = !{!3012, !3021, !3027}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3010, file: !44, line: 1090, baseType: !3013, size: 256)
!3013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3014, line: 10, size: 256, elements: !3015)
!3014 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3015 = !{!3016, !3017, !3020}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3013, file: !3014, line: 11, baseType: !407, size: 32)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3013, file: !3014, line: 12, baseType: !3018, size: 64, offset: 64)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3014, line: 5, flags: DIFlagFwdDecl)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3013, file: !3014, line: 13, baseType: !213, size: 128, offset: 128)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3010, file: !44, line: 1091, baseType: !3022, size: 64)
!3022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3014, line: 17, size: 64, elements: !3023)
!3023 = !{!3024}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3022, file: !3014, line: 18, baseType: !3025, size: 64)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3014, line: 16, flags: DIFlagFwdDecl)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3010, file: !44, line: 1096, baseType: !3028, size: 192)
!3028 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3010, file: !44, line: 1092, size: 192, elements: !3029)
!3029 = !{!3030, !3031, !3032}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3028, file: !44, line: 1093, baseType: !213, size: 128)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3028, file: !44, line: 1094, baseType: !192, size: 32, offset: 128)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3028, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2854, file: !44, line: 1843, baseType: !3034, size: 64, offset: 1280)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!298, !344, !710, !192, !314, !2865, !192}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2854, file: !44, line: 1844, baseType: !1090, size: 64, offset: 1344)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2854, file: !44, line: 1845, baseType: !3039, size: 64, offset: 1408)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!192, !192}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2854, file: !44, line: 1846, baseType: !2926, size: 64, offset: 1472)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2854, file: !44, line: 1847, baseType: !3044, size: 64, offset: 1536)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!298, !2087, !344, !2865, !314, !7}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2854, file: !44, line: 1848, baseType: !3048, size: 64, offset: 1600)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{!298, !344, !2865, !2087, !314, !7}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2854, file: !44, line: 1849, baseType: !3052, size: 64, offset: 1664)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!192, !344, !302, !3055, !810}
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2854, file: !44, line: 1850, baseType: !3057, size: 64, offset: 1728)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{!302, !344, !192, !520, !520}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2854, file: !44, line: 1852, baseType: !3061, size: 64, offset: 1792)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{null, !700, !344}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2854, file: !44, line: 1856, baseType: !3065, size: 64, offset: 1856)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{!298, !344, !520, !344, !520, !314, !7}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2854, file: !44, line: 1858, baseType: !3069, size: 64, offset: 1920)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = !DISubroutineType(types: !3071)
!3071 = !{!520, !344, !520, !344, !520, !520, !7}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2854, file: !44, line: 1861, baseType: !2918, size: 64, offset: 1984)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2849, file: !44, line: 692, baseType: !653, size: 64)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !419, file: !44, line: 694, baseType: !3075, size: 64, offset: 2560)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3077)
!3077 = !{!3078, !3079, !3080, !3081}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3076, file: !44, line: 1101, baseType: !226)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3076, file: !44, line: 1102, baseType: !213, size: 128)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3076, file: !44, line: 1103, baseType: !213, size: 128, offset: 128)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3076, file: !44, line: 1104, baseType: !213, size: 128, offset: 256)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !419, file: !44, line: 695, baseType: !724, size: 1216, align: 64, offset: 2624)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !419, file: !44, line: 696, baseType: !213, size: 128, offset: 3840)
!3084 = !DIDerivedType(tag: DW_TAG_member, scope: !419, file: !44, line: 697, baseType: !3085, size: 64, offset: 3968)
!3085 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !419, file: !44, line: 697, size: 64, elements: !3086)
!3086 = !{!3087, !3088, !3089, !3092, !3093}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3085, file: !44, line: 698, baseType: !2087, size: 64)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3085, file: !44, line: 699, baseType: !2604, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3085, file: !44, line: 700, baseType: !3090, size: 64)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3085, file: !44, line: 701, baseType: !267, size: 64)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3085, file: !44, line: 702, baseType: !7, size: 32)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !419, file: !44, line: 705, baseType: !142, size: 32, offset: 4032)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !419, file: !44, line: 708, baseType: !142, size: 32, offset: 4064)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !419, file: !44, line: 709, baseType: !2686, size: 64, offset: 4096)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !419, file: !44, line: 720, baseType: !202, size: 64, offset: 4160)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !375, file: !372, line: 98, baseType: !3099, size: 256, offset: 448)
!3099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 256, elements: !2219)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !375, file: !372, line: 101, baseType: !3101, size: 32, offset: 704)
!3101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3102, line: 25, size: 32, elements: !3103)
!3102 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3103 = !{!3104}
!3104 = !DIDerivedType(tag: DW_TAG_member, scope: !3101, file: !3102, line: 26, baseType: !3105, size: 32)
!3105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3101, file: !3102, line: 26, size: 32, elements: !3106)
!3106 = !{!3107}
!3107 = !DIDerivedType(tag: DW_TAG_member, scope: !3105, file: !3102, line: 30, baseType: !3108, size: 32)
!3108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3105, file: !3102, line: 30, size: 32, elements: !3109)
!3109 = !{!3110, !3111}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3108, file: !3102, line: 31, baseType: !226)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3108, file: !3102, line: 32, baseType: !192, size: 32)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !375, file: !372, line: 102, baseType: !2703, size: 64, offset: 768)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !375, file: !372, line: 103, baseType: !588, size: 64, offset: 832)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !375, file: !372, line: 104, baseType: !138, size: 64, offset: 896)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !375, file: !372, line: 105, baseType: !202, size: 64, offset: 960)
!3116 = !DIDerivedType(tag: DW_TAG_member, scope: !375, file: !372, line: 107, baseType: !3117, size: 128, offset: 1024)
!3117 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !375, file: !372, line: 107, size: 128, elements: !3118)
!3118 = !{!3119, !3120}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3117, file: !372, line: 108, baseType: !213, size: 128)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3117, file: !372, line: 109, baseType: !3121, size: 64)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !375, file: !372, line: 111, baseType: !213, size: 128, offset: 1152)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !375, file: !372, line: 112, baseType: !213, size: 128, offset: 1280)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !375, file: !372, line: 120, baseType: !3125, size: 128, offset: 1408)
!3125 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !375, file: !372, line: 116, size: 128, elements: !3126)
!3126 = !{!3127, !3128, !3129}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3125, file: !372, line: 117, baseType: !628, size: 128)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3125, file: !372, line: 118, baseType: !389, size: 128)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3125, file: !372, line: 119, baseType: !357, size: 128, align: 64)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !345, file: !44, line: 922, baseType: !418, size: 64, offset: 256)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !345, file: !44, line: 923, baseType: !2852, size: 64, offset: 320)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !345, file: !44, line: 929, baseType: !226, offset: 384)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !345, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !345, file: !44, line: 931, baseType: !760, size: 64, offset: 448)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !345, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !345, file: !44, line: 933, baseType: !2699, size: 32, offset: 544)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !345, file: !44, line: 934, baseType: !1162, size: 192, offset: 576)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !345, file: !44, line: 935, baseType: !520, size: 64, offset: 768)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !345, file: !44, line: 936, baseType: !3140, size: 192, offset: 832)
!3140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3141)
!3141 = !{!3142, !3143, !3144, !3145, !3146, !3147}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3140, file: !44, line: 886, baseType: !2951)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3140, file: !44, line: 887, baseType: !1460, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3140, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3140, file: !44, line: 889, baseType: !424, size: 32, offset: 96)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3140, file: !44, line: 889, baseType: !424, size: 32, offset: 128)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3140, file: !44, line: 890, baseType: !192, size: 32, offset: 160)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !345, file: !44, line: 937, baseType: !1536, size: 64, offset: 1024)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !345, file: !44, line: 938, baseType: !3150, size: 256, offset: 1088)
!3150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3151)
!3151 = !{!3152, !3153, !3154, !3155, !3156, !3157}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3150, file: !44, line: 897, baseType: !138, size: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3150, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3150, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3150, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3150, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3150, file: !44, line: 904, baseType: !520, size: 64, offset: 192)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !345, file: !44, line: 940, baseType: !411, size: 64, offset: 1344)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !345, file: !44, line: 945, baseType: !202, size: 64, offset: 1408)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !345, file: !44, line: 949, baseType: !213, size: 128, offset: 1472)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !345, file: !44, line: 950, baseType: !213, size: 128, offset: 1600)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !345, file: !44, line: 952, baseType: !723, size: 64, offset: 1728)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !345, file: !44, line: 953, baseType: !898, size: 32, offset: 1792)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !345, file: !44, line: 954, baseType: !898, size: 32, offset: 1824)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !335, file: !292, line: 174, baseType: !341, size: 64, offset: 320)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !335, file: !292, line: 176, baseType: !3167, size: 64, offset: 384)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!192, !344, !219, !334, !970}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !323, file: !292, line: 90, baseType: !318, size: 64, offset: 192)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !323, file: !292, line: 91, baseType: !3172, size: 64, offset: 256)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !282, file: !209, line: 143, baseType: !3174, size: 64, offset: 256)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{!3177, !219}
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3179)
!3179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3180)
!3180 = !{!3181, !3182, !3186, !3190, !3196, !3200}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3179, file: !61, line: 40, baseType: !60, size: 32)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3179, file: !61, line: 41, baseType: !3183, size: 64, offset: 64)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!479}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3179, file: !61, line: 42, baseType: !3187, size: 64, offset: 128)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{!202}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3179, file: !61, line: 43, baseType: !3191, size: 64, offset: 192)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!2116, !3194}
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3179, file: !61, line: 44, baseType: !3197, size: 64, offset: 256)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{!2116}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3179, file: !61, line: 45, baseType: !457, size: 64, offset: 320)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !282, file: !209, line: 144, baseType: !3202, size: 64, offset: 320)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = !DISubroutineType(types: !3204)
!3204 = !{!2116, !219}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !282, file: !209, line: 145, baseType: !3206, size: 64, offset: 384)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{null, !219, !3209, !3210}
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !208, file: !209, line: 70, baseType: !3212, size: 64, offset: 384)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !608, line: 123, size: 1024, elements: !3214)
!3214 = !{!3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3343, !3344, !3345, !3346, !3347}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3213, file: !608, line: 124, baseType: !736, size: 32)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3213, file: !608, line: 125, baseType: !736, size: 32, offset: 32)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3213, file: !608, line: 135, baseType: !3212, size: 64, offset: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3213, file: !608, line: 136, baseType: !183, size: 64, offset: 128)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3213, file: !608, line: 138, baseType: !749, size: 192, align: 64, offset: 192)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3213, file: !608, line: 140, baseType: !2116, size: 64, offset: 384)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3213, file: !608, line: 141, baseType: !7, size: 32, offset: 448)
!3222 = !DIDerivedType(tag: DW_TAG_member, scope: !3213, file: !608, line: 142, baseType: !3223, size: 256, offset: 512)
!3223 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3213, file: !608, line: 142, size: 256, elements: !3224)
!3224 = !{!3225, !3271, !3275}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3223, file: !608, line: 143, baseType: !3226, size: 192)
!3226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !608, line: 91, size: 192, elements: !3227)
!3227 = !{!3228, !3229, !3230}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3226, file: !608, line: 92, baseType: !138, size: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3226, file: !608, line: 94, baseType: !745, size: 64, offset: 64)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3226, file: !608, line: 100, baseType: !3231, size: 64, offset: 128)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !608, line: 180, size: 704, elements: !3233)
!3233 = !{!3234, !3235, !3236, !3243, !3244, !3245, !3269, !3270}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3232, file: !608, line: 182, baseType: !3212, size: 64)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3232, file: !608, line: 183, baseType: !7, size: 32, offset: 64)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3232, file: !608, line: 186, baseType: !3237, size: 192, offset: 128)
!3237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3238, line: 19, size: 192, elements: !3239)
!3238 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3239 = !{!3240, !3241, !3242}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3237, file: !3238, line: 20, baseType: !728, size: 128)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3237, file: !3238, line: 21, baseType: !7, size: 32, offset: 128)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3237, file: !3238, line: 22, baseType: !7, size: 32, offset: 160)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3232, file: !608, line: 187, baseType: !407, size: 32, offset: 320)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3232, file: !608, line: 188, baseType: !407, size: 32, offset: 352)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3232, file: !608, line: 189, baseType: !3246, size: 64, offset: 384)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !608, line: 168, size: 320, elements: !3248)
!3248 = !{!3249, !3253, !3257, !3261, !3265}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3247, file: !608, line: 169, baseType: !3250, size: 64)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{!192, !700, !3231}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3247, file: !608, line: 171, baseType: !3254, size: 64, offset: 64)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = !DISubroutineType(types: !3256)
!3256 = !{!192, !3212, !183, !308}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3247, file: !608, line: 173, baseType: !3258, size: 64, offset: 128)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{!192, !3212}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3247, file: !608, line: 174, baseType: !3262, size: 64, offset: 192)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = !DISubroutineType(types: !3264)
!3264 = !{!192, !3212, !3212, !183}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3247, file: !608, line: 176, baseType: !3266, size: 64, offset: 256)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = !DISubroutineType(types: !3268)
!3268 = !{!192, !700, !3212, !3231}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3232, file: !608, line: 192, baseType: !213, size: 128, offset: 448)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3232, file: !608, line: 194, baseType: !1470, size: 128, offset: 576)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3223, file: !608, line: 144, baseType: !3272, size: 64)
!3272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !608, line: 103, size: 64, elements: !3273)
!3273 = !{!3274}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3272, file: !608, line: 104, baseType: !3212, size: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3223, file: !608, line: 145, baseType: !3276, size: 256)
!3276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !608, line: 107, size: 256, elements: !3277)
!3277 = !{!3278, !3338, !3341, !3342}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3276, file: !608, line: 108, baseType: !3279, size: 64)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3281)
!3281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !608, line: 217, size: 768, elements: !3282)
!3282 = !{!3283, !3303, !3307, !3311, !3315, !3319, !3323, !3327, !3328, !3329, !3330, !3334}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3281, file: !608, line: 222, baseType: !3284, size: 64)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = !DISubroutineType(types: !3286)
!3286 = !{!192, !3287}
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !608, line: 197, size: 1088, elements: !3289)
!3289 = !{!3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3288, file: !608, line: 199, baseType: !3212, size: 64)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3288, file: !608, line: 200, baseType: !344, size: 64, offset: 64)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3288, file: !608, line: 201, baseType: !700, size: 64, offset: 128)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3288, file: !608, line: 202, baseType: !202, size: 64, offset: 192)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3288, file: !608, line: 205, baseType: !1162, size: 192, offset: 256)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3288, file: !608, line: 206, baseType: !1162, size: 192, offset: 448)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3288, file: !608, line: 207, baseType: !192, size: 32, offset: 640)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3288, file: !608, line: 208, baseType: !213, size: 128, offset: 704)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3288, file: !608, line: 209, baseType: !267, size: 64, offset: 832)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3288, file: !608, line: 211, baseType: !314, size: 64, offset: 896)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3288, file: !608, line: 212, baseType: !479, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3288, file: !608, line: 213, baseType: !479, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3288, file: !608, line: 214, baseType: !998, size: 64, offset: 1024)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3281, file: !608, line: 223, baseType: !3304, size: 64, offset: 64)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DISubroutineType(types: !3306)
!3306 = !{null, !3287}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3281, file: !608, line: 236, baseType: !3308, size: 64, offset: 128)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{!192, !700, !202}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3281, file: !608, line: 238, baseType: !3312, size: 64, offset: 192)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DISubroutineType(types: !3314)
!3314 = !{!202, !700, !2865}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3281, file: !608, line: 239, baseType: !3316, size: 64, offset: 256)
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = !DISubroutineType(types: !3318)
!3318 = !{!202, !700, !202, !2865}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3281, file: !608, line: 240, baseType: !3320, size: 64, offset: 320)
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{null, !700, !202}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3281, file: !608, line: 242, baseType: !3324, size: 64, offset: 384)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{!298, !3287, !267, !314, !520}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3281, file: !608, line: 252, baseType: !314, size: 64, offset: 448)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3281, file: !608, line: 259, baseType: !479, size: 8, offset: 512)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3281, file: !608, line: 260, baseType: !3324, size: 64, offset: 576)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3281, file: !608, line: 263, baseType: !3331, size: 64, offset: 640)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!2894, !3287, !2895}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3281, file: !608, line: 266, baseType: !3335, size: 64, offset: 704)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{!192, !3287, !970}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3276, file: !608, line: 109, baseType: !3339, size: 64, offset: 64)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !608, line: 31, flags: DIFlagFwdDecl)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3276, file: !608, line: 110, baseType: !520, size: 64, offset: 128)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3276, file: !608, line: 111, baseType: !3212, size: 64, offset: 192)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3213, file: !608, line: 148, baseType: !202, size: 64, offset: 768)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3213, file: !608, line: 154, baseType: !411, size: 64, offset: 832)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3213, file: !608, line: 156, baseType: !309, size: 16, offset: 896)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3213, file: !608, line: 157, baseType: !308, size: 16, offset: 912)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3213, file: !608, line: 158, baseType: !3348, size: 64, offset: 960)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !608, line: 32, flags: DIFlagFwdDecl)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !208, file: !209, line: 71, baseType: !3351, size: 32, offset: 448)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3352, line: 19, size: 32, elements: !3353)
!3352 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3353 = !{!3354}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3351, file: !3352, line: 20, baseType: !1219, size: 32)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !208, file: !209, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !208, file: !209, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !208, file: !209, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !208, file: !209, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !208, file: !209, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !205, file: !73, line: 463, baseType: !204, size: 64, offset: 512)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !205, file: !73, line: 465, baseType: !3362, size: 64, offset: 576)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !205, file: !73, line: 467, baseType: !183, size: 64, offset: 640)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !205, file: !73, line: 468, baseType: !3366, size: 64, offset: 704)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3368)
!3368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3369)
!3369 = !{!3370, !3371, !3372, !3376, !3381, !3385}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3368, file: !73, line: 88, baseType: !183, size: 64)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3368, file: !73, line: 89, baseType: !320, size: 64, offset: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3368, file: !73, line: 90, baseType: !3373, size: 64, offset: 128)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{!192, !204, !262}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3368, file: !73, line: 91, baseType: !3377, size: 64, offset: 192)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = !DISubroutineType(types: !3379)
!3379 = !{!267, !204, !3380, !3209, !3210}
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3368, file: !73, line: 93, baseType: !3382, size: 64, offset: 256)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{null, !204}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3368, file: !73, line: 95, baseType: !3386, size: 64, offset: 320)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3388)
!3388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3389)
!3389 = !{!3390, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3388, file: !80, line: 279, baseType: !3391, size: 64)
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{!192, !204}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3388, file: !80, line: 280, baseType: !3382, size: 64, offset: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3388, file: !80, line: 281, baseType: !3391, size: 64, offset: 128)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3388, file: !80, line: 282, baseType: !3391, size: 64, offset: 192)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3388, file: !80, line: 283, baseType: !3391, size: 64, offset: 256)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3388, file: !80, line: 284, baseType: !3391, size: 64, offset: 320)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3388, file: !80, line: 285, baseType: !3391, size: 64, offset: 384)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3388, file: !80, line: 286, baseType: !3391, size: 64, offset: 448)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3388, file: !80, line: 287, baseType: !3391, size: 64, offset: 512)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3388, file: !80, line: 288, baseType: !3391, size: 64, offset: 576)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3388, file: !80, line: 289, baseType: !3391, size: 64, offset: 640)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3388, file: !80, line: 290, baseType: !3391, size: 64, offset: 704)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3388, file: !80, line: 291, baseType: !3391, size: 64, offset: 768)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3388, file: !80, line: 292, baseType: !3391, size: 64, offset: 832)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3388, file: !80, line: 293, baseType: !3391, size: 64, offset: 896)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3388, file: !80, line: 294, baseType: !3391, size: 64, offset: 960)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3388, file: !80, line: 295, baseType: !3391, size: 64, offset: 1024)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3388, file: !80, line: 296, baseType: !3391, size: 64, offset: 1088)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3388, file: !80, line: 297, baseType: !3391, size: 64, offset: 1152)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3388, file: !80, line: 298, baseType: !3391, size: 64, offset: 1216)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3388, file: !80, line: 299, baseType: !3391, size: 64, offset: 1280)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3388, file: !80, line: 300, baseType: !3391, size: 64, offset: 1344)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3388, file: !80, line: 301, baseType: !3391, size: 64, offset: 1408)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !205, file: !73, line: 470, baseType: !3417, size: 64, offset: 768)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3419, line: 82, size: 1408, elements: !3420)
!3419 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3420 = !{!3421, !3422, !3423, !3424, !3425, !3426, !3427, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3502, !3505, !3506}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3418, file: !3419, line: 83, baseType: !183, size: 64)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3418, file: !3419, line: 84, baseType: !183, size: 64, offset: 64)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3418, file: !3419, line: 85, baseType: !204, size: 64, offset: 128)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3418, file: !3419, line: 86, baseType: !320, size: 64, offset: 192)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3418, file: !3419, line: 87, baseType: !320, size: 64, offset: 256)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3418, file: !3419, line: 88, baseType: !320, size: 64, offset: 320)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3418, file: !3419, line: 90, baseType: !3428, size: 64, offset: 384)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{!192, !204, !3431}
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3433)
!3433 = !{!3434, !3435, !3436, !3437, !3438, !3439, !3440, !3453, !3466, !3467, !3468, !3469, !3470, !3478, !3479, !3480, !3481, !3482, !3483}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3432, file: !67, line: 96, baseType: !183, size: 64)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3432, file: !67, line: 97, baseType: !3417, size: 64, offset: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3432, file: !67, line: 99, baseType: !185, size: 64, offset: 128)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3432, file: !67, line: 100, baseType: !183, size: 64, offset: 192)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3432, file: !67, line: 102, baseType: !479, size: 8, offset: 256)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3432, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3432, file: !67, line: 105, baseType: !3441, size: 64, offset: 320)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3443)
!3443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3444, line: 262, size: 1600, elements: !3445)
!3444 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3445 = !{!3446, !3447, !3448, !3452}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3443, file: !3444, line: 263, baseType: !2689, size: 256)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3443, file: !3444, line: 264, baseType: !2689, size: 256, offset: 256)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3443, file: !3444, line: 265, baseType: !3449, size: 1024, offset: 512)
!3449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 1024, elements: !3450)
!3450 = !{!3451}
!3451 = !DISubrange(count: 128)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3443, file: !3444, line: 266, baseType: !2116, size: 64, offset: 1536)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3432, file: !67, line: 106, baseType: !3454, size: 64, offset: 384)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3456)
!3456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3444, line: 210, size: 256, elements: !3457)
!3457 = !{!3458, !3462, !3464, !3465}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3456, file: !3444, line: 211, baseType: !3459, size: 72)
!3459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1342, size: 72, elements: !3460)
!3460 = !{!3461}
!3461 = !DISubrange(count: 9)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3456, file: !3444, line: 212, baseType: !3463, size: 64, offset: 128)
!3463 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3444, line: 14, baseType: !138)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3456, file: !3444, line: 213, baseType: !142, size: 32, offset: 192)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3456, file: !3444, line: 214, baseType: !142, size: 32, offset: 224)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3432, file: !67, line: 108, baseType: !3391, size: 64, offset: 448)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3432, file: !67, line: 109, baseType: !3382, size: 64, offset: 512)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3432, file: !67, line: 110, baseType: !3391, size: 64, offset: 576)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3432, file: !67, line: 111, baseType: !3382, size: 64, offset: 640)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3432, file: !67, line: 112, baseType: !3471, size: 64, offset: 704)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{!192, !204, !3474}
!3474 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3475)
!3475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3476)
!3476 = !{!3477}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3475, file: !80, line: 51, baseType: !192, size: 32)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3432, file: !67, line: 113, baseType: !3391, size: 64, offset: 768)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3432, file: !67, line: 114, baseType: !320, size: 64, offset: 832)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3432, file: !67, line: 115, baseType: !320, size: 64, offset: 896)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3432, file: !67, line: 117, baseType: !3386, size: 64, offset: 960)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3432, file: !67, line: 118, baseType: !3382, size: 64, offset: 1024)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3432, file: !67, line: 120, baseType: !3484, size: 64, offset: 1088)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3418, file: !3419, line: 91, baseType: !3373, size: 64, offset: 448)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3418, file: !3419, line: 92, baseType: !3391, size: 64, offset: 512)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3418, file: !3419, line: 93, baseType: !3382, size: 64, offset: 576)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3418, file: !3419, line: 94, baseType: !3391, size: 64, offset: 640)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3418, file: !3419, line: 95, baseType: !3382, size: 64, offset: 704)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3418, file: !3419, line: 97, baseType: !3391, size: 64, offset: 768)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3418, file: !3419, line: 98, baseType: !3391, size: 64, offset: 832)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3418, file: !3419, line: 100, baseType: !3471, size: 64, offset: 896)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3418, file: !3419, line: 101, baseType: !3391, size: 64, offset: 960)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3418, file: !3419, line: 103, baseType: !3391, size: 64, offset: 1024)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3418, file: !3419, line: 105, baseType: !3391, size: 64, offset: 1088)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3418, file: !3419, line: 107, baseType: !3386, size: 64, offset: 1152)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3418, file: !3419, line: 109, baseType: !3499, size: 64, offset: 1216)
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3501)
!3501 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3419, line: 109, flags: DIFlagFwdDecl)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3418, file: !3419, line: 111, baseType: !3503, size: 64, offset: 1280)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3419, line: 111, flags: DIFlagFwdDecl)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3418, file: !3419, line: 112, baseType: !634, offset: 1344)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3418, file: !3419, line: 114, baseType: !479, size: 8, offset: 1344)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !205, file: !73, line: 471, baseType: !3431, size: 64, offset: 832)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !205, file: !73, line: 473, baseType: !202, size: 64, offset: 896)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !205, file: !73, line: 475, baseType: !202, size: 64, offset: 960)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !205, file: !73, line: 480, baseType: !1162, size: 192, offset: 1024)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !205, file: !73, line: 484, baseType: !3512, size: 576, offset: 1216)
!3512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3513)
!3513 = !{!3514, !3515, !3516, !3517, !3518, !3519}
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3512, file: !73, line: 362, baseType: !213, size: 128)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3512, file: !73, line: 363, baseType: !213, size: 128, offset: 128)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3512, file: !73, line: 364, baseType: !213, size: 128, offset: 256)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3512, file: !73, line: 365, baseType: !213, size: 128, offset: 384)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3512, file: !73, line: 366, baseType: !479, size: 8, offset: 512)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3512, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !205, file: !73, line: 485, baseType: !3521, size: 2304, offset: 1792)
!3521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3522)
!3522 = !{!3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3618, !3622}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3521, file: !80, line: 566, baseType: !3474, size: 32)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3521, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3521, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3521, file: !80, line: 569, baseType: !479, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3521, file: !80, line: 570, baseType: !479, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3521, file: !80, line: 571, baseType: !479, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3521, file: !80, line: 572, baseType: !479, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3521, file: !80, line: 573, baseType: !479, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3521, file: !80, line: 574, baseType: !479, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3521, file: !80, line: 575, baseType: !479, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3521, file: !80, line: 576, baseType: !479, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3521, file: !80, line: 577, baseType: !407, size: 32, offset: 64)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3521, file: !80, line: 578, baseType: !226, offset: 96)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3521, file: !80, line: 580, baseType: !213, size: 128, offset: 128)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3521, file: !80, line: 581, baseType: !1491, size: 192, offset: 256)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3521, file: !80, line: 582, baseType: !3539, size: 64, offset: 448)
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3541, line: 43, size: 1472, elements: !3542)
!3541 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3542 = !{!3543, !3544, !3545, !3546, !3547, !3550, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575}
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3540, file: !3541, line: 44, baseType: !183, size: 64)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3540, file: !3541, line: 45, baseType: !192, size: 32, offset: 64)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3540, file: !3541, line: 46, baseType: !213, size: 128, offset: 128)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3540, file: !3541, line: 47, baseType: !226, offset: 256)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3540, file: !3541, line: 48, baseType: !3548, size: 64, offset: 256)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3540, file: !3541, line: 49, baseType: !3551, size: 320, offset: 320)
!3551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3552, line: 11, size: 320, elements: !3553)
!3552 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3553 = !{!3554, !3555, !3556, !3561}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3551, file: !3552, line: 16, baseType: !628, size: 128)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3551, file: !3552, line: 17, baseType: !138, size: 64, offset: 128)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3551, file: !3552, line: 18, baseType: !3557, size: 64, offset: 192)
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = !DISubroutineType(types: !3559)
!3559 = !{null, !3560}
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3551, size: 64)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3551, file: !3552, line: 19, baseType: !407, size: 32, offset: 256)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3540, file: !3541, line: 50, baseType: !138, size: 64, offset: 640)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3540, file: !3541, line: 51, baseType: !1289, size: 64, offset: 704)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3540, file: !3541, line: 52, baseType: !1289, size: 64, offset: 768)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3540, file: !3541, line: 53, baseType: !1289, size: 64, offset: 832)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3540, file: !3541, line: 54, baseType: !1289, size: 64, offset: 896)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3540, file: !3541, line: 55, baseType: !1289, size: 64, offset: 960)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3540, file: !3541, line: 56, baseType: !138, size: 64, offset: 1024)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3540, file: !3541, line: 57, baseType: !138, size: 64, offset: 1088)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3540, file: !3541, line: 58, baseType: !138, size: 64, offset: 1152)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3540, file: !3541, line: 59, baseType: !138, size: 64, offset: 1216)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3540, file: !3541, line: 60, baseType: !138, size: 64, offset: 1280)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3540, file: !3541, line: 61, baseType: !204, size: 64, offset: 1344)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3540, file: !3541, line: 62, baseType: !479, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3540, file: !3541, line: 63, baseType: !479, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3521, file: !80, line: 583, baseType: !479, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3521, file: !80, line: 584, baseType: !479, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3521, file: !80, line: 585, baseType: !479, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3521, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3521, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3521, file: !80, line: 592, baseType: !1281, size: 512, offset: 576)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3521, file: !80, line: 593, baseType: !411, size: 64, offset: 1088)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3521, file: !80, line: 594, baseType: !1946, size: 256, offset: 1152)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3521, file: !80, line: 595, baseType: !1470, size: 128, offset: 1408)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3521, file: !80, line: 596, baseType: !3548, size: 64, offset: 1536)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3521, file: !80, line: 597, baseType: !736, size: 32, offset: 1600)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3521, file: !80, line: 598, baseType: !736, size: 32, offset: 1632)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3521, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3521, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3521, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3521, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3521, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3521, file: !80, line: 604, baseType: !479, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3521, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3521, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3521, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3521, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3521, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3521, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3521, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3521, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3521, file: !80, line: 613, baseType: !192, size: 32, offset: 1792)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3521, file: !80, line: 614, baseType: !192, size: 32, offset: 1824)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3521, file: !80, line: 615, baseType: !411, size: 64, offset: 1856)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3521, file: !80, line: 616, baseType: !411, size: 64, offset: 1920)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3521, file: !80, line: 617, baseType: !411, size: 64, offset: 1984)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3521, file: !80, line: 618, baseType: !411, size: 64, offset: 2048)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3521, file: !80, line: 620, baseType: !3609, size: 64, offset: 2112)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3611)
!3611 = !{!3612, !3613, !3614, !3615}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3610, file: !80, line: 537, baseType: !226)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3610, file: !80, line: 538, baseType: !7, size: 32)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3610, file: !80, line: 540, baseType: !213, size: 128, offset: 64)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3610, file: !80, line: 543, baseType: !3616, size: 64, offset: 192)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3521, file: !80, line: 621, baseType: !3619, size: 64, offset: 2176)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = !DISubroutineType(types: !3621)
!3621 = !{null, !204, !1433}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3521, file: !80, line: 622, baseType: !3623, size: 64, offset: 2240)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !205, file: !73, line: 486, baseType: !3626, size: 64, offset: 4096)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3628)
!3628 = !{!3629, !3630, !3631, !3635, !3636, !3637}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3627, file: !80, line: 643, baseType: !3388, size: 1472)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3627, file: !80, line: 644, baseType: !3391, size: 64, offset: 1472)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3627, file: !80, line: 645, baseType: !3632, size: 64, offset: 1536)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = !DISubroutineType(types: !3634)
!3634 = !{null, !204, !479}
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3627, file: !80, line: 646, baseType: !3391, size: 64, offset: 1600)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3627, file: !80, line: 647, baseType: !3382, size: 64, offset: 1664)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3627, file: !80, line: 648, baseType: !3382, size: 64, offset: 1728)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !205, file: !73, line: 493, baseType: !3639, size: 64, offset: 4160)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !73, line: 493, flags: DIFlagFwdDecl)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !205, file: !73, line: 499, baseType: !213, size: 128, offset: 4224)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !205, file: !73, line: 502, baseType: !3643, size: 64, offset: 4352)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3645)
!3645 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !205, file: !73, line: 504, baseType: !3647, size: 64, offset: 4416)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !205, file: !73, line: 505, baseType: !411, size: 64, offset: 4480)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !205, file: !73, line: 510, baseType: !411, size: 64, offset: 4544)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !205, file: !73, line: 511, baseType: !3651, size: 64, offset: 4608)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3653)
!3653 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !205, file: !73, line: 513, baseType: !3655, size: 64, offset: 4672)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3657)
!3657 = !{!3658, !3659}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3656, file: !73, line: 293, baseType: !7, size: 32)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3656, file: !73, line: 294, baseType: !138, size: 64, offset: 64)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !205, file: !73, line: 515, baseType: !213, size: 128, offset: 4736)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !205, file: !73, line: 526, baseType: !3662, offset: 4864)
!3662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3663, line: 5, elements: !240)
!3663 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !205, file: !73, line: 528, baseType: !3665, size: 64, offset: 4864)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3667, line: 14, flags: DIFlagFwdDecl)
!3667 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !205, file: !73, line: 529, baseType: !3669, size: 64, offset: 4928)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3671, line: 17, size: 192, elements: !3672)
!3671 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3672 = !{!3673, !3674, !3757}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3670, file: !3671, line: 18, baseType: !3669, size: 64)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3670, file: !3671, line: 19, baseType: !3675, size: 64, offset: 64)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3677)
!3677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3671, line: 110, size: 1152, elements: !3678)
!3678 = !{!3679, !3683, !3687, !3693, !3699, !3703, !3707, !3712, !3716, !3717, !3721, !3725, !3729, !3740, !3741, !3742, !3743, !3753}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3677, file: !3671, line: 111, baseType: !3680, size: 64)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{!3669, !3669}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3677, file: !3671, line: 112, baseType: !3684, size: 64, offset: 64)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{null, !3669}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3677, file: !3671, line: 113, baseType: !3688, size: 64, offset: 128)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{!479, !3691}
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3670)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3677, file: !3671, line: 114, baseType: !3694, size: 64, offset: 192)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{!2116, !3691, !3697}
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !205)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3677, file: !3671, line: 116, baseType: !3700, size: 64, offset: 256)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!479, !3691, !183}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3677, file: !3671, line: 118, baseType: !3704, size: 64, offset: 320)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = !DISubroutineType(types: !3706)
!3706 = !{!192, !3691, !183, !7, !202, !314}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3677, file: !3671, line: 123, baseType: !3708, size: 64, offset: 384)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DISubroutineType(types: !3710)
!3710 = !{!192, !3691, !183, !3711, !314}
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3677, file: !3671, line: 126, baseType: !3713, size: 64, offset: 448)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{!183, !3691}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3677, file: !3671, line: 127, baseType: !3713, size: 64, offset: 512)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3677, file: !3671, line: 128, baseType: !3718, size: 64, offset: 576)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{!3669, !3691}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3677, file: !3671, line: 130, baseType: !3722, size: 64, offset: 640)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{!3669, !3691, !3669}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3677, file: !3671, line: 133, baseType: !3726, size: 64, offset: 704)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{!3669, !3691, !183}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3677, file: !3671, line: 135, baseType: !3730, size: 64, offset: 768)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{!192, !3691, !183, !183, !7, !7, !3733}
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3671, line: 43, size: 640, elements: !3735)
!3735 = !{!3736, !3737, !3738}
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3734, file: !3671, line: 44, baseType: !3669, size: 64)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3734, file: !3671, line: 45, baseType: !7, size: 32, offset: 64)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3734, file: !3671, line: 46, baseType: !3739, size: 512, offset: 128)
!3739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !411, size: 512, elements: !1319)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3677, file: !3671, line: 140, baseType: !3722, size: 64, offset: 832)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3677, file: !3671, line: 143, baseType: !3718, size: 64, offset: 896)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3677, file: !3671, line: 145, baseType: !3680, size: 64, offset: 960)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3677, file: !3671, line: 146, baseType: !3744, size: 64, offset: 1024)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!192, !3691, !3747}
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3671, line: 29, size: 128, elements: !3749)
!3749 = !{!3750, !3751, !3752}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3748, file: !3671, line: 30, baseType: !7, size: 32)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3748, file: !3671, line: 31, baseType: !7, size: 32, offset: 32)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3748, file: !3671, line: 32, baseType: !3691, size: 64, offset: 64)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3677, file: !3671, line: 148, baseType: !3754, size: 64, offset: 1088)
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = !DISubroutineType(types: !3756)
!3756 = !{!192, !3691, !204}
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3670, file: !3671, line: 20, baseType: !204, size: 64, offset: 128)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !205, file: !73, line: 534, baseType: !502, size: 32, offset: 4992)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !205, file: !73, line: 535, baseType: !407, size: 32, offset: 5024)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !205, file: !73, line: 537, baseType: !226, offset: 5056)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !205, file: !73, line: 538, baseType: !213, size: 128, offset: 5056)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !205, file: !73, line: 540, baseType: !3763, size: 64, offset: 5184)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3765, line: 54, size: 960, elements: !3766)
!3765 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3766 = !{!3767, !3768, !3769, !3770, !3771, !3772, !3773, !3777, !3781, !3782, !3783, !3784, !3788, !3792, !3793}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3764, file: !3765, line: 55, baseType: !183, size: 64)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3764, file: !3765, line: 56, baseType: !185, size: 64, offset: 64)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3764, file: !3765, line: 58, baseType: !320, size: 64, offset: 128)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3764, file: !3765, line: 59, baseType: !320, size: 64, offset: 192)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3764, file: !3765, line: 60, baseType: !219, size: 64, offset: 256)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3764, file: !3765, line: 62, baseType: !3373, size: 64, offset: 320)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3764, file: !3765, line: 63, baseType: !3774, size: 64, offset: 384)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = !DISubroutineType(types: !3776)
!3776 = !{!267, !204, !3380}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3764, file: !3765, line: 65, baseType: !3778, size: 64, offset: 448)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = !DISubroutineType(types: !3780)
!3780 = !{null, !3763}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3764, file: !3765, line: 66, baseType: !3382, size: 64, offset: 512)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3764, file: !3765, line: 68, baseType: !3391, size: 64, offset: 576)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3764, file: !3765, line: 70, baseType: !3177, size: 64, offset: 640)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3764, file: !3765, line: 71, baseType: !3785, size: 64, offset: 704)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!2116, !204}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3764, file: !3765, line: 73, baseType: !3789, size: 64, offset: 768)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{null, !204, !3209, !3210}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3764, file: !3765, line: 75, baseType: !3386, size: 64, offset: 832)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3764, file: !3765, line: 77, baseType: !3503, size: 64, offset: 896)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !205, file: !73, line: 541, baseType: !320, size: 64, offset: 5248)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !205, file: !73, line: 543, baseType: !3382, size: 64, offset: 5312)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !205, file: !73, line: 544, baseType: !3797, size: 64, offset: 5376)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !205, file: !73, line: 545, baseType: !3800, size: 64, offset: 5440)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !205, file: !73, line: 547, baseType: !479, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !205, file: !73, line: 548, baseType: !479, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !205, file: !73, line: 549, baseType: !479, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !205, file: !73, line: 550, baseType: !479, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !194, file: !123, line: 548, baseType: !192, size: 32, offset: 320)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "detach_count", scope: !194, file: !123, line: 549, baseType: !7, size: 32, offset: 352)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "hw_dev", scope: !194, file: !123, line: 550, baseType: !204, size: 64, offset: 384)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !194, file: !123, line: 552, baseType: !183, size: 64, offset: 448)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "board_ptr", scope: !194, file: !123, line: 553, baseType: !2116, size: 64, offset: 512)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "attached", scope: !194, file: !123, line: 554, baseType: !7, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "ioenabled", scope: !194, file: !123, line: 555, baseType: !7, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "spinlock", scope: !194, file: !123, line: 556, baseType: !226, offset: 584)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !194, file: !123, line: 557, baseType: !1162, size: 192, offset: 640)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "attach_lock", scope: !194, file: !123, line: 558, baseType: !756, size: 256, offset: 832)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !194, file: !123, line: 559, baseType: !3351, size: 32, offset: 1088)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "n_subdevices", scope: !194, file: !123, line: 561, baseType: !192, size: 32, offset: 1120)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "subdevices", scope: !194, file: !123, line: 562, baseType: !3819, size: 64, offset: 1152)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_subdevice", file: !123, line: 153, size: 1792, elements: !3821)
!3821 = !{!3822, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3897, !3910, !3913, !3914, !3928, !3929, !3930, !3931, !3935, !3940, !3941, !3942, !3943, !3947, !3948, !3949, !3950, !3951}
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3820, file: !123, line: 154, baseType: !193, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3820, file: !123, line: 155, baseType: !192, size: 32, offset: 64)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3820, file: !123, line: 156, baseType: !192, size: 32, offset: 96)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "n_chan", scope: !3820, file: !123, line: 157, baseType: !192, size: 32, offset: 128)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "subdev_flags", scope: !3820, file: !123, line: 158, baseType: !192, size: 32, offset: 160)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "len_chanlist", scope: !3820, file: !123, line: 159, baseType: !192, size: 32, offset: 192)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3820, file: !123, line: 161, baseType: !202, size: 64, offset: 256)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "async", scope: !3820, file: !123, line: 163, baseType: !3830, size: 64, offset: 320)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_async", file: !123, line: 347, size: 1536, elements: !3832)
!3832 = !{!3833, !3834, !3835, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3883, !3884, !3885}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3831, file: !123, line: 348, baseType: !202, size: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_bufsz", scope: !3831, file: !123, line: 349, baseType: !7, size: 32, offset: 64)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "buf_map", scope: !3831, file: !123, line: 350, baseType: !3836, size: 64, offset: 128)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_buf_map", file: !123, line: 249, size: 256, elements: !3838)
!3838 = !{!3839, !3840, !3846, !3847, !3848}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "dma_hw_dev", scope: !3837, file: !123, line: 250, baseType: !204, size: 64)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "page_list", scope: !3837, file: !123, line: 251, baseType: !3841, size: 64, offset: 64)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_buf_page", file: !123, line: 220, size: 128, elements: !3843)
!3843 = !{!3844, !3845}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "virt_addr", scope: !3842, file: !123, line: 221, baseType: !202, size: 64)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3842, file: !123, line: 222, baseType: !909, size: 64, offset: 64)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "n_pages", scope: !3837, file: !123, line: 252, baseType: !7, size: 32, offset: 128)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "dma_dir", scope: !3837, file: !123, line: 253, baseType: !93, size: 32, offset: 160)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3837, file: !123, line: 254, baseType: !3351, size: 32, offset: 192)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "max_bufsize", scope: !3831, file: !123, line: 351, baseType: !7, size: 32, offset: 192)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_count", scope: !3831, file: !123, line: 352, baseType: !7, size: 32, offset: 224)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_alloc_count", scope: !3831, file: !123, line: 353, baseType: !7, size: 32, offset: 256)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_count", scope: !3831, file: !123, line: 354, baseType: !7, size: 32, offset: 288)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_alloc_count", scope: !3831, file: !123, line: 355, baseType: !7, size: 32, offset: 320)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_ptr", scope: !3831, file: !123, line: 356, baseType: !7, size: 32, offset: 352)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_ptr", scope: !3831, file: !123, line: 357, baseType: !7, size: 32, offset: 384)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "cur_chan", scope: !3831, file: !123, line: 358, baseType: !7, size: 32, offset: 416)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "scans_done", scope: !3831, file: !123, line: 359, baseType: !7, size: 32, offset: 448)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "scan_progress", scope: !3831, file: !123, line: 360, baseType: !7, size: 32, offset: 480)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "munge_chan", scope: !3831, file: !123, line: 361, baseType: !7, size: 32, offset: 512)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "munge_count", scope: !3831, file: !123, line: 362, baseType: !7, size: 32, offset: 544)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "munge_ptr", scope: !3831, file: !123, line: 363, baseType: !7, size: 32, offset: 576)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3831, file: !123, line: 364, baseType: !7, size: 32, offset: 608)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !3831, file: !123, line: 365, baseType: !3864, size: 640, offset: 640)
!3864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_cmd", file: !101, line: 589, size: 640, elements: !3865)
!3865 = !{!3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3882}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "subdev", scope: !3864, file: !101, line: 590, baseType: !7, size: 32)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3864, file: !101, line: 591, baseType: !7, size: 32, offset: 32)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "start_src", scope: !3864, file: !101, line: 593, baseType: !7, size: 32, offset: 64)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "start_arg", scope: !3864, file: !101, line: 594, baseType: !7, size: 32, offset: 96)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "scan_begin_src", scope: !3864, file: !101, line: 596, baseType: !7, size: 32, offset: 128)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "scan_begin_arg", scope: !3864, file: !101, line: 597, baseType: !7, size: 32, offset: 160)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "convert_src", scope: !3864, file: !101, line: 599, baseType: !7, size: 32, offset: 192)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "convert_arg", scope: !3864, file: !101, line: 600, baseType: !7, size: 32, offset: 224)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "scan_end_src", scope: !3864, file: !101, line: 602, baseType: !7, size: 32, offset: 256)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "scan_end_arg", scope: !3864, file: !101, line: 603, baseType: !7, size: 32, offset: 288)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "stop_src", scope: !3864, file: !101, line: 605, baseType: !7, size: 32, offset: 320)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "stop_arg", scope: !3864, file: !101, line: 606, baseType: !7, size: 32, offset: 352)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist", scope: !3864, file: !101, line: 608, baseType: !2672, size: 64, offset: 384)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist_len", scope: !3864, file: !101, line: 609, baseType: !7, size: 32, offset: 448)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3864, file: !101, line: 611, baseType: !3881, size: 64, offset: 512)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !3864, file: !101, line: 612, baseType: !7, size: 32, offset: 576)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "wait_head", scope: !3831, file: !123, line: 366, baseType: !1470, size: 128, offset: 1280)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "cb_mask", scope: !3831, file: !123, line: 367, baseType: !7, size: 32, offset: 1408)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "inttrig", scope: !3831, file: !123, line: 368, baseType: !3886, size: 64, offset: 1472)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!192, !193, !3819, !7}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3820, file: !123, line: 165, baseType: !202, size: 64, offset: 384)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !3820, file: !123, line: 166, baseType: !202, size: 64, offset: 448)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "runflags", scope: !3820, file: !123, line: 167, baseType: !7, size: 32, offset: 512)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "spin_lock", scope: !3820, file: !123, line: 168, baseType: !226, offset: 544)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "io_bits", scope: !3820, file: !123, line: 170, baseType: !7, size: 32, offset: 544)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata", scope: !3820, file: !123, line: 172, baseType: !7, size: 32, offset: 576)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata_list", scope: !3820, file: !123, line: 173, baseType: !3896, size: 64, offset: 640)
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "range_table", scope: !3820, file: !123, line: 175, baseType: !3898, size: 64, offset: 704)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3900)
!3900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_lrange", file: !123, line: 635, size: 32, elements: !3901)
!3901 = !{!3902, !3903}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3900, file: !123, line: 636, baseType: !192, size: 32)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3900, file: !123, line: 637, baseType: !3904, offset: 32)
!3904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3905, elements: !2320)
!3905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_krange", file: !101, line: 685, size: 96, elements: !3906)
!3906 = !{!3907, !3908, !3909}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !3905, file: !101, line: 686, baseType: !192, size: 32)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3905, file: !101, line: 687, baseType: !192, size: 32, offset: 32)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3905, file: !101, line: 688, baseType: !7, size: 32, offset: 64)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "range_table_list", scope: !3820, file: !123, line: 176, baseType: !3911, size: 64, offset: 768)
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3898)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist", scope: !3820, file: !123, line: 178, baseType: !2672, size: 64, offset: 832)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "insn_read", scope: !3820, file: !123, line: 180, baseType: !3915, size: 64, offset: 896)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = !DISubroutineType(types: !3917)
!3917 = !{!192, !193, !3819, !3918, !2672}
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_insn", file: !101, line: 491, size: 320, elements: !3920)
!3920 = !{!3921, !3922, !3923, !3924, !3925, !3926}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3919, file: !101, line: 492, baseType: !7, size: 32)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !3919, file: !101, line: 493, baseType: !7, size: 32, offset: 32)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3919, file: !101, line: 494, baseType: !2672, size: 64, offset: 64)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "subdev", scope: !3919, file: !101, line: 495, baseType: !7, size: 32, offset: 128)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "chanspec", scope: !3919, file: !101, line: 496, baseType: !7, size: 32, offset: 160)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !3919, file: !101, line: 497, baseType: !3927, size: 96, offset: 192)
!3927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 96, elements: !268)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "insn_write", scope: !3820, file: !123, line: 182, baseType: !3915, size: 64, offset: 960)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "insn_bits", scope: !3820, file: !123, line: 184, baseType: !3915, size: 64, offset: 1024)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "insn_config", scope: !3820, file: !123, line: 186, baseType: !3915, size: 64, offset: 1088)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "do_cmd", scope: !3820, file: !123, line: 191, baseType: !3932, size: 64, offset: 1152)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{!192, !193, !3819}
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "do_cmdtest", scope: !3820, file: !123, line: 192, baseType: !3936, size: 64, offset: 1216)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{!192, !193, !3819, !3939}
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3820, file: !123, line: 195, baseType: !3932, size: 64, offset: 1280)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "cancel", scope: !3820, file: !123, line: 196, baseType: !3932, size: 64, offset: 1344)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "buf_change", scope: !3820, file: !123, line: 199, baseType: !3932, size: 64, offset: 1408)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "munge", scope: !3820, file: !123, line: 202, baseType: !3944, size: 64, offset: 1472)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{null, !193, !3819, !202, !7, !7}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "async_dma_dir", scope: !3820, file: !123, line: 205, baseType: !93, size: 32, offset: 1536)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3820, file: !123, line: 207, baseType: !7, size: 32, offset: 1568)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !3820, file: !123, line: 209, baseType: !204, size: 64, offset: 1600)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3820, file: !123, line: 210, baseType: !192, size: 32, offset: 1664)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "readback", scope: !3820, file: !123, line: 212, baseType: !2672, size: 64, offset: 1728)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "mmio", scope: !194, file: !123, line: 565, baseType: !202, size: 64, offset: 1216)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "iobase", scope: !194, file: !123, line: 566, baseType: !138, size: 64, offset: 1280)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "iolen", scope: !194, file: !123, line: 567, baseType: !138, size: 64, offset: 1344)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !194, file: !123, line: 568, baseType: !7, size: 32, offset: 1408)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "read_subdev", scope: !194, file: !123, line: 570, baseType: !3819, size: 64, offset: 1472)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "write_subdev", scope: !194, file: !123, line: 571, baseType: !3819, size: 64, offset: 1536)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "async_queue", scope: !194, file: !123, line: 573, baseType: !2947, size: 64, offset: 1600)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !194, file: !123, line: 575, baseType: !3960, size: 64, offset: 1664)
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!3961 = !DISubroutineType(types: !3962)
!3962 = !{!192, !193}
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !194, file: !123, line: 576, baseType: !3964, size: 64, offset: 1728)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3965 = !DISubroutineType(types: !3966)
!3966 = !{null, !193}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "insn_device_config", scope: !194, file: !123, line: 577, baseType: !3968, size: 64, offset: 1792)
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = !DISubroutineType(types: !3970)
!3970 = !{!192, !193, !3918, !2672}
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "get_valid_routes", scope: !194, file: !123, line: 579, baseType: !3972, size: 64, offset: 1856)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{!7, !193, !7, !2672}
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_devconfig", file: !101, line: 834, size: 1184, elements: !3977)
!3977 = !{!3978, !3980}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !3976, file: !101, line: 835, baseType: !3979, size: 160)
!3979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 160, elements: !2190)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !3976, file: !101, line: 836, baseType: !3981, size: 1024, offset: 160)
!3981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 1024, elements: !2219)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !178, file: !123, line: 444, baseType: !3964, size: 64, offset: 256)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "auto_attach", scope: !178, file: !123, line: 445, baseType: !3984, size: 64, offset: 320)
!3984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3985, size: 64)
!3985 = !DISubroutineType(types: !3986)
!3986 = !{!192, !193, !138}
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "num_names", scope: !178, file: !123, line: 446, baseType: !7, size: 32, offset: 384)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !178, file: !123, line: 447, baseType: !3989, size: 64, offset: 448)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !178, file: !123, line: 448, baseType: !192, size: 32, offset: 512)
!3992 = !DIGlobalVariableExpression(var: !3993, expr: !DIExpression())
!3993 = distinct !DIGlobalVariable(name: "gsc_hpdi_pci_driver", scope: !2, file: !3, line: 713, type: !3994, isLocal: true, isDefinition: true)
!3994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !3995, line: 858, size: 2048, elements: !3996)
!3995 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!3996 = !{!3997, !3998, !3999, !4011, !4231, !4235, !4239, !4243, !4244, !4248, !4266, !4267, !4268}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3994, file: !3995, line: 859, baseType: !213, size: 128)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3994, file: !3995, line: 860, baseType: !183, size: 64, offset: 128)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3994, file: !3995, line: 861, baseType: !4000, size: 64, offset: 192)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4002)
!4002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3444, line: 38, size: 256, elements: !4003)
!4003 = !{!4004, !4005, !4006, !4007, !4008, !4009, !4010}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4002, file: !3444, line: 39, baseType: !142, size: 32)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4002, file: !3444, line: 39, baseType: !142, size: 32, offset: 32)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4002, file: !3444, line: 40, baseType: !142, size: 32, offset: 64)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4002, file: !3444, line: 40, baseType: !142, size: 32, offset: 96)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4002, file: !3444, line: 41, baseType: !142, size: 32, offset: 128)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4002, file: !3444, line: 41, baseType: !142, size: 32, offset: 160)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4002, file: !3444, line: 42, baseType: !3463, size: 64, offset: 192)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3994, file: !3995, line: 862, baseType: !4012, size: 64, offset: 256)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = !DISubroutineType(types: !4014)
!4014 = !{!192, !4015, !4000}
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !3995, line: 309, size: 19264, elements: !4017)
!4017 = !{!4018, !4019, !4094, !4095, !4096, !4097, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4125, !4127, !4128, !4129, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4153, !4154, !4155, !4156, !4158, !4159, !4160, !4161, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4204, !4205, !4207, !4208, !4209, !4210, !4212, !4213, !4214, !4217, !4224, !4225, !4226, !4227, !4228, !4229, !4230}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !4016, file: !3995, line: 310, baseType: !213, size: 128)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4016, file: !3995, line: 311, baseType: !4020, size: 64, offset: 128)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !3995, line: 605, size: 8064, elements: !4022)
!4022 = !{!4023, !4024, !4025, !4026, !4027, !4028, !4029, !4044, !4045, !4046, !4070, !4073, !4074, !4078, !4079, !4080, !4081, !4082, !4086, !4087, !4089, !4090, !4091, !4092, !4093}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4021, file: !3995, line: 606, baseType: !213, size: 128)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4021, file: !3995, line: 607, baseType: !4020, size: 64, offset: 128)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4021, file: !3995, line: 608, baseType: !213, size: 128, offset: 192)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4021, file: !3995, line: 609, baseType: !213, size: 128, offset: 320)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4021, file: !3995, line: 610, baseType: !4015, size: 64, offset: 448)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !4021, file: !3995, line: 611, baseType: !213, size: 128, offset: 512)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4021, file: !3995, line: 613, baseType: !4030, size: 256, offset: 640)
!4030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4031, size: 256, elements: !1144)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4033, line: 20, size: 512, elements: !4034)
!4033 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!4034 = !{!4035, !4037, !4038, !4039, !4040, !4041, !4042, !4043}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4032, file: !4033, line: 21, baseType: !4036, size: 64)
!4036 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !137, line: 158, baseType: !2114)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4032, file: !4033, line: 22, baseType: !4036, size: 64, offset: 64)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4032, file: !4033, line: 23, baseType: !183, size: 64, offset: 128)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4032, file: !4033, line: 24, baseType: !138, size: 64, offset: 192)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4032, file: !4033, line: 25, baseType: !138, size: 64, offset: 256)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4032, file: !4033, line: 26, baseType: !4031, size: 64, offset: 320)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4032, file: !4033, line: 26, baseType: !4031, size: 64, offset: 384)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4032, file: !4033, line: 26, baseType: !4031, size: 64, offset: 448)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4021, file: !3995, line: 614, baseType: !213, size: 128, offset: 896)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !4021, file: !3995, line: 615, baseType: !4032, size: 512, offset: 1024)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4021, file: !3995, line: 617, baseType: !4047, size: 64, offset: 1536)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !3995, line: 731, size: 320, elements: !4049)
!4049 = !{!4050, !4054, !4058, !4062, !4066}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !4048, file: !3995, line: 732, baseType: !4051, size: 64)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = !DISubroutineType(types: !4053)
!4053 = !{!192, !4020}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !4048, file: !3995, line: 733, baseType: !4055, size: 64, offset: 64)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = !DISubroutineType(types: !4057)
!4057 = !{null, !4020}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !4048, file: !3995, line: 734, baseType: !4059, size: 64, offset: 128)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = !DISubroutineType(types: !4061)
!4061 = !{!202, !4020, !7, !192}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4048, file: !3995, line: 735, baseType: !4063, size: 64, offset: 192)
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = !DISubroutineType(types: !4065)
!4065 = !{!192, !4020, !7, !192, !192, !1404}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4048, file: !3995, line: 736, baseType: !4067, size: 64, offset: 256)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = !DISubroutineType(types: !4069)
!4069 = !{!192, !4020, !7, !192, !192, !407}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4021, file: !3995, line: 618, baseType: !4071, size: 64, offset: 1600)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !3995, line: 537, flags: DIFlagFwdDecl)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4021, file: !3995, line: 619, baseType: !202, size: 64, offset: 1664)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !4021, file: !3995, line: 620, baseType: !4075, size: 64, offset: 1728)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4077, line: 123, flags: DIFlagFwdDecl)
!4077 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4021, file: !3995, line: 622, baseType: !141, size: 8, offset: 1792)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4021, file: !3995, line: 623, baseType: !141, size: 8, offset: 1800)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !4021, file: !3995, line: 624, baseType: !141, size: 8, offset: 1808)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !4021, file: !3995, line: 625, baseType: !141, size: 8, offset: 1816)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4021, file: !3995, line: 630, baseType: !4083, size: 384, offset: 1824)
!4083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 384, elements: !4084)
!4084 = !{!4085}
!4085 = !DISubrange(count: 48)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !4021, file: !3995, line: 632, baseType: !309, size: 16, offset: 2208)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !4021, file: !3995, line: 633, baseType: !4088, size: 16, offset: 2224)
!4088 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !3995, line: 237, baseType: !309)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !4021, file: !3995, line: 634, baseType: !204, size: 64, offset: 2240)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4021, file: !3995, line: 635, baseType: !205, size: 5568, offset: 2304)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !4021, file: !3995, line: 636, baseType: !334, size: 64, offset: 7872)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !4021, file: !3995, line: 637, baseType: !334, size: 64, offset: 7936)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !4021, file: !3995, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !4016, file: !3995, line: 312, baseType: !4020, size: 64, offset: 192)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4016, file: !3995, line: 314, baseType: !202, size: 64, offset: 256)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !4016, file: !3995, line: 315, baseType: !4075, size: 64, offset: 320)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4016, file: !3995, line: 316, baseType: !4098, size: 64, offset: 384)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !3995, line: 69, size: 832, elements: !4100)
!4100 = !{!4101, !4102, !4103, !4106, !4107}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4099, file: !3995, line: 70, baseType: !4020, size: 64)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4099, file: !3995, line: 71, baseType: !213, size: 128, offset: 64)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4099, file: !3995, line: 72, baseType: !4104, size: 64, offset: 192)
!4104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4105, size: 64)
!4105 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !3995, line: 72, flags: DIFlagFwdDecl)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4099, file: !3995, line: 73, baseType: !141, size: 8, offset: 256)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4099, file: !3995, line: 74, baseType: !208, size: 512, offset: 320)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !4016, file: !3995, line: 318, baseType: !7, size: 32, offset: 448)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4016, file: !3995, line: 319, baseType: !309, size: 16, offset: 480)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4016, file: !3995, line: 320, baseType: !309, size: 16, offset: 496)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4016, file: !3995, line: 321, baseType: !309, size: 16, offset: 512)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4016, file: !3995, line: 322, baseType: !309, size: 16, offset: 528)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4016, file: !3995, line: 323, baseType: !7, size: 32, offset: 544)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4016, file: !3995, line: 324, baseType: !1341, size: 8, offset: 576)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4016, file: !3995, line: 325, baseType: !1341, size: 8, offset: 584)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !4016, file: !3995, line: 330, baseType: !1341, size: 8, offset: 592)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !4016, file: !3995, line: 331, baseType: !1341, size: 8, offset: 600)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !4016, file: !3995, line: 332, baseType: !1341, size: 8, offset: 608)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !4016, file: !3995, line: 333, baseType: !1341, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !4016, file: !3995, line: 334, baseType: !1341, size: 8, offset: 624)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4016, file: !3995, line: 335, baseType: !1341, size: 8, offset: 632)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !4016, file: !3995, line: 336, baseType: !848, size: 16, offset: 640)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !4016, file: !3995, line: 337, baseType: !4124, size: 64, offset: 704)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4016, file: !3995, line: 339, baseType: !4126, size: 64, offset: 768)
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3994, size: 64)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4016, file: !3995, line: 340, baseType: !411, size: 64, offset: 832)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4016, file: !3995, line: 346, baseType: !3656, size: 128, offset: 896)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !4016, file: !3995, line: 348, baseType: !4130, size: 32, offset: 1024)
!4130 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !3995, line: 155, baseType: !192)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !4016, file: !3995, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !4016, file: !3995, line: 352, baseType: !1341, size: 8, offset: 1064)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !4016, file: !3995, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !4016, file: !3995, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !4016, file: !3995, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !4016, file: !3995, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !4016, file: !3995, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !4016, file: !3995, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !4016, file: !3995, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !4016, file: !3995, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !4016, file: !3995, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !4016, file: !3995, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !4016, file: !3995, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !4016, file: !3995, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !4016, file: !3995, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !4016, file: !3995, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !4016, file: !3995, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !4016, file: !3995, line: 376, baseType: !7, size: 32, offset: 1120)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !4016, file: !3995, line: 377, baseType: !7, size: 32, offset: 1152)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !4016, file: !3995, line: 380, baseType: !4151, size: 64, offset: 1216)
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4152 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !3995, line: 303, flags: DIFlagFwdDecl)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !4016, file: !3995, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !4016, file: !3995, line: 383, baseType: !192, size: 32, offset: 1312)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !4016, file: !3995, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !4016, file: !3995, line: 387, baseType: !4157, size: 32, offset: 1376)
!4157 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !3995, line: 180, baseType: !7)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4016, file: !3995, line: 388, baseType: !205, size: 5568, offset: 1408)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !4016, file: !3995, line: 390, baseType: !192, size: 32, offset: 6976)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4016, file: !3995, line: 396, baseType: !7, size: 32, offset: 7008)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4016, file: !3995, line: 397, baseType: !4162, size: 8704, offset: 7040)
!4162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4032, size: 8704, elements: !4163)
!4163 = !{!4164}
!4164 = !DISubrange(count: 17)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4016, file: !3995, line: 399, baseType: !479, size: 8, offset: 15744)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !4016, file: !3995, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !4016, file: !3995, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !4016, file: !3995, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !4016, file: !3995, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !4016, file: !3995, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !4016, file: !3995, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !4016, file: !3995, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !4016, file: !3995, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !4016, file: !3995, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !4016, file: !3995, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !4016, file: !3995, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !4016, file: !3995, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !4016, file: !3995, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !4016, file: !3995, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !4016, file: !3995, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !4016, file: !3995, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !4016, file: !3995, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !4016, file: !3995, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !4016, file: !3995, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !4016, file: !3995, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !4016, file: !3995, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !4016, file: !3995, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !4016, file: !3995, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !4016, file: !3995, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !4016, file: !3995, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !4016, file: !3995, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !4016, file: !3995, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !4016, file: !3995, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !4016, file: !3995, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !4016, file: !3995, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !4016, file: !3995, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !4016, file: !3995, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !4016, file: !3995, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !4016, file: !3995, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !4016, file: !3995, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !4016, file: !3995, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !4016, file: !3995, line: 450, baseType: !4203, size: 16, offset: 15792)
!4203 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !3995, line: 206, baseType: !309)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !4016, file: !3995, line: 451, baseType: !736, size: 32, offset: 15808)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !4016, file: !3995, line: 453, baseType: !4206, size: 512, offset: 15840)
!4206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 512, elements: !1724)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !4016, file: !3995, line: 454, baseType: !624, size: 64, offset: 16384)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !4016, file: !3995, line: 455, baseType: !334, size: 64, offset: 16448)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !4016, file: !3995, line: 456, baseType: !192, size: 32, offset: 16512)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !4016, file: !3995, line: 457, baseType: !4211, size: 1088, offset: 16576)
!4211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !334, size: 1088, elements: !4163)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !4016, file: !3995, line: 458, baseType: !4211, size: 1088, offset: 17664)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !4016, file: !3995, line: 469, baseType: !320, size: 64, offset: 18752)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !4016, file: !3995, line: 471, baseType: !4215, size: 64, offset: 18816)
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4216, size: 64)
!4216 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !3995, line: 304, flags: DIFlagFwdDecl)
!4217 = !DIDerivedType(tag: DW_TAG_member, scope: !4016, file: !3995, line: 478, baseType: !4218, size: 64, offset: 18880)
!4218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4016, file: !3995, line: 478, size: 64, elements: !4219)
!4219 = !{!4220, !4223}
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4218, file: !3995, line: 479, baseType: !4221, size: 64)
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !3995, line: 305, flags: DIFlagFwdDecl)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4218, file: !3995, line: 480, baseType: !4015, size: 64)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !4016, file: !3995, line: 482, baseType: !848, size: 16, offset: 18944)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !4016, file: !3995, line: 483, baseType: !1341, size: 8, offset: 18960)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !4016, file: !3995, line: 497, baseType: !848, size: 16, offset: 18976)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !4016, file: !3995, line: 498, baseType: !2114, size: 64, offset: 19008)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !4016, file: !3995, line: 499, baseType: !314, size: 64, offset: 19072)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !4016, file: !3995, line: 500, baseType: !267, size: 64, offset: 19136)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !4016, file: !3995, line: 502, baseType: !138, size: 64, offset: 19200)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3994, file: !3995, line: 863, baseType: !4232, size: 64, offset: 320)
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4233, size: 64)
!4233 = !DISubroutineType(types: !4234)
!4234 = !{null, !4015}
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3994, file: !3995, line: 864, baseType: !4236, size: 64, offset: 384)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = !DISubroutineType(types: !4238)
!4238 = !{!192, !4015, !3474}
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3994, file: !3995, line: 865, baseType: !4240, size: 64, offset: 448)
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4241, size: 64)
!4241 = !DISubroutineType(types: !4242)
!4242 = !{!192, !4015}
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3994, file: !3995, line: 866, baseType: !4232, size: 64, offset: 512)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !3994, file: !3995, line: 867, baseType: !4245, size: 64, offset: 576)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = !DISubroutineType(types: !4247)
!4247 = !{!192, !4015, !192}
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !3994, file: !3995, line: 868, baseType: !4249, size: 64, offset: 640)
!4249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4250, size: 64)
!4250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4251)
!4251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !3995, line: 795, size: 384, elements: !4252)
!4252 = !{!4253, !4258, !4262, !4263, !4264, !4265}
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4251, file: !3995, line: 797, baseType: !4254, size: 64)
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = !DISubroutineType(types: !4256)
!4256 = !{!4257, !4015, !4157}
!4257 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !3995, line: 772, baseType: !7)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4251, file: !3995, line: 801, baseType: !4259, size: 64, offset: 64)
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4260 = !DISubroutineType(types: !4261)
!4261 = !{!4257, !4015}
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4251, file: !3995, line: 804, baseType: !4259, size: 64, offset: 128)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4251, file: !3995, line: 807, baseType: !4232, size: 64, offset: 192)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4251, file: !3995, line: 808, baseType: !4232, size: 64, offset: 256)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4251, file: !3995, line: 811, baseType: !4232, size: 64, offset: 320)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3994, file: !3995, line: 869, baseType: !320, size: 64, offset: 704)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3994, file: !3995, line: 870, baseType: !3432, size: 1152, offset: 768)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !3994, file: !3995, line: 871, baseType: !4269, size: 128, offset: 1920)
!4269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !3995, line: 759, size: 128, elements: !4270)
!4270 = !{!4271, !4272}
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4269, file: !3995, line: 760, baseType: !226)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4269, file: !3995, line: 761, baseType: !213, size: 128)
!4273 = !DIGlobalVariableExpression(var: !4274, expr: !DIExpression())
!4274 = distinct !DIGlobalVariable(name: "gsc_hpdi_pci_table", scope: !2, file: !3, line: 706, type: !4275, isLocal: true, isDefinition: true)
!4275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4001, size: 512, elements: !1558)
!4276 = !{!"rsp"}
!4277 = !{i32 7, !"Dwarf Version", i32 4}
!4278 = !{i32 2, !"Debug Info Version", i32 3}
!4279 = !{i32 1, !"wchar_size", i32 2}
!4280 = !{i32 1, !"Code Model", i32 2}
!4281 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4282 = distinct !DISubprogram(name: "gsc_hpdi_driver_init", scope: !3, file: !3, line: 719, type: !4283, scopeLine: 719, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!4283 = !DISubroutineType(types: !4284)
!4284 = !{!192}
!4285 = !DILocation(line: 719, column: 1, scope: !4282)
!4286 = distinct !DISubprogram(name: "gsc_hpdi_driver_exit", scope: !3, file: !3, line: 719, type: !152, scopeLine: 719, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!4287 = !DILocation(line: 719, column: 1, scope: !4286)
!4288 = distinct !DISubprogram(name: "gsc_hpdi_detach", scope: !3, file: !3, line: 675, type: !3965, scopeLine: 676, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!4289 = !DILocalVariable(name: "dev", arg: 1, scope: !4288, file: !3, line: 675, type: !193)
!4290 = !DILocation(line: 675, column: 51, scope: !4288)
!4291 = !DILocalVariable(name: "devpriv", scope: !4288, file: !3, line: 677, type: !4292)
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hpdi_private", file: !3, line: 117, size: 17408, elements: !4294)
!4294 = !{!4295, !4296, !4298, !4300, !4309, !4310, !4311, !4315, !4316, !4317, !4318, !4319}
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "plx9080_mmio", scope: !4293, file: !3, line: 118, baseType: !202, size: 64)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "dio_buffer", scope: !4293, file: !3, line: 119, baseType: !4297, size: 256, offset: 64)
!4297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1404, size: 256, elements: !1144)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "dio_buffer_phys_addr", scope: !4293, file: !3, line: 121, baseType: !4299, size: 256, offset: 320)
!4299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !909, size: 256, elements: !1144)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "dma_desc", scope: !4293, file: !3, line: 126, baseType: !4301, size: 64, offset: 576)
!4301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4302, size: 64)
!4302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plx_dma_desc", file: !4303, line: 42, size: 128, elements: !4304)
!4303 = !DIFile(filename: "drivers/staging/comedi/drivers/plx9080.h", directory: "/home/lizy2001/genbc/linux")
!4304 = !{!4305, !4306, !4307, !4308}
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "pci_start_addr", scope: !4302, file: !4303, line: 43, baseType: !144, size: 32)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "local_start_addr", scope: !4302, file: !4303, line: 44, baseType: !144, size: 32, offset: 32)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_size", scope: !4302, file: !4303, line: 45, baseType: !144, size: 32, offset: 64)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4302, file: !4303, line: 46, baseType: !144, size: 32, offset: 96)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "dma_desc_phys_addr", scope: !4293, file: !3, line: 128, baseType: !909, size: 64, offset: 640)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "num_dma_descriptors", scope: !4293, file: !3, line: 129, baseType: !7, size: 32, offset: 704)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "desc_dio_buffer", scope: !4293, file: !3, line: 131, baseType: !4312, size: 16384, offset: 768)
!4312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1404, size: 16384, elements: !4313)
!4313 = !{!4314}
!4314 = !DISubrange(count: 256)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "dma_desc_index", scope: !4293, file: !3, line: 133, baseType: !7, size: 32, offset: 17152)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "tx_fifo_size", scope: !4293, file: !3, line: 134, baseType: !7, size: 32, offset: 17184)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "rx_fifo_size", scope: !4293, file: !3, line: 135, baseType: !7, size: 32, offset: 17216)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "dio_count", scope: !4293, file: !3, line: 136, baseType: !138, size: 64, offset: 17280)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !4293, file: !3, line: 138, baseType: !7, size: 32, offset: 17344)
!4320 = !DILocation(line: 677, column: 23, scope: !4288)
!4321 = !DILocation(line: 677, column: 33, scope: !4288)
!4322 = !DILocation(line: 677, column: 38, scope: !4288)
!4323 = !DILocation(line: 679, column: 6, scope: !4324)
!4324 = distinct !DILexicalBlock(scope: !4288, file: !3, line: 679, column: 6)
!4325 = !DILocation(line: 679, column: 11, scope: !4324)
!4326 = !DILocation(line: 679, column: 6, scope: !4288)
!4327 = !DILocation(line: 680, column: 12, scope: !4324)
!4328 = !DILocation(line: 680, column: 17, scope: !4324)
!4329 = !DILocation(line: 680, column: 22, scope: !4324)
!4330 = !DILocation(line: 680, column: 3, scope: !4324)
!4331 = !DILocation(line: 681, column: 6, scope: !4332)
!4332 = distinct !DILexicalBlock(scope: !4288, file: !3, line: 681, column: 6)
!4333 = !DILocation(line: 681, column: 6, scope: !4288)
!4334 = !DILocation(line: 682, column: 7, scope: !4335)
!4335 = distinct !DILexicalBlock(scope: !4336, file: !3, line: 682, column: 7)
!4336 = distinct !DILexicalBlock(scope: !4332, file: !3, line: 681, column: 15)
!4337 = !DILocation(line: 682, column: 16, scope: !4335)
!4338 = !DILocation(line: 682, column: 7, scope: !4336)
!4339 = !DILocation(line: 683, column: 14, scope: !4340)
!4340 = distinct !DILexicalBlock(scope: !4335, file: !3, line: 682, column: 30)
!4341 = !DILocation(line: 683, column: 23, scope: !4340)
!4342 = !DILocation(line: 683, column: 36, scope: !4340)
!4343 = !DILocation(line: 683, column: 4, scope: !4340)
!4344 = !DILocation(line: 684, column: 12, scope: !4340)
!4345 = !DILocation(line: 684, column: 21, scope: !4340)
!4346 = !DILocation(line: 684, column: 4, scope: !4340)
!4347 = !DILocation(line: 685, column: 3, scope: !4340)
!4348 = !DILocation(line: 686, column: 7, scope: !4349)
!4349 = distinct !DILexicalBlock(scope: !4336, file: !3, line: 686, column: 7)
!4350 = !DILocation(line: 686, column: 12, scope: !4349)
!4351 = !DILocation(line: 686, column: 7, scope: !4336)
!4352 = !DILocation(line: 687, column: 12, scope: !4349)
!4353 = !DILocation(line: 687, column: 17, scope: !4349)
!4354 = !DILocation(line: 687, column: 4, scope: !4349)
!4355 = !DILocation(line: 688, column: 2, scope: !4336)
!4356 = !DILocation(line: 689, column: 21, scope: !4288)
!4357 = !DILocation(line: 689, column: 2, scope: !4288)
!4358 = !DILocation(line: 690, column: 20, scope: !4288)
!4359 = !DILocation(line: 690, column: 2, scope: !4288)
!4360 = !DILocation(line: 691, column: 1, scope: !4288)
!4361 = distinct !DISubprogram(name: "gsc_hpdi_auto_attach", scope: !3, file: !3, line: 580, type: !3985, scopeLine: 582, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!4362 = !DILocalVariable(name: "dev", arg: 1, scope: !4361, file: !3, line: 580, type: !193)
!4363 = !DILocation(line: 580, column: 55, scope: !4361)
!4364 = !DILocalVariable(name: "context_unused", arg: 2, scope: !4361, file: !3, line: 581, type: !138)
!4365 = !DILocation(line: 581, column: 19, scope: !4361)
!4366 = !DILocalVariable(name: "pcidev", scope: !4361, file: !3, line: 583, type: !4015)
!4367 = !DILocation(line: 583, column: 18, scope: !4361)
!4368 = !DILocation(line: 583, column: 45, scope: !4361)
!4369 = !DILocation(line: 583, column: 27, scope: !4361)
!4370 = !DILocalVariable(name: "devpriv", scope: !4361, file: !3, line: 584, type: !4292)
!4371 = !DILocation(line: 584, column: 23, scope: !4361)
!4372 = !DILocalVariable(name: "s", scope: !4361, file: !3, line: 585, type: !3819)
!4373 = !DILocation(line: 585, column: 27, scope: !4361)
!4374 = !DILocalVariable(name: "i", scope: !4361, file: !3, line: 586, type: !192)
!4375 = !DILocation(line: 586, column: 6, scope: !4361)
!4376 = !DILocalVariable(name: "retval", scope: !4361, file: !3, line: 587, type: !192)
!4377 = !DILocation(line: 587, column: 6, scope: !4361)
!4378 = !DILocation(line: 589, column: 2, scope: !4361)
!4379 = !DILocation(line: 589, column: 7, scope: !4361)
!4380 = !DILocation(line: 589, column: 18, scope: !4361)
!4381 = !DILocation(line: 591, column: 33, scope: !4361)
!4382 = !DILocation(line: 591, column: 12, scope: !4361)
!4383 = !DILocation(line: 591, column: 10, scope: !4361)
!4384 = !DILocation(line: 592, column: 7, scope: !4385)
!4385 = distinct !DILexicalBlock(scope: !4361, file: !3, line: 592, column: 6)
!4386 = !DILocation(line: 592, column: 6, scope: !4361)
!4387 = !DILocation(line: 593, column: 3, scope: !4385)
!4388 = !DILocation(line: 595, column: 29, scope: !4361)
!4389 = !DILocation(line: 595, column: 11, scope: !4361)
!4390 = !DILocation(line: 595, column: 9, scope: !4361)
!4391 = !DILocation(line: 596, column: 6, scope: !4392)
!4392 = distinct !DILexicalBlock(scope: !4361, file: !3, line: 596, column: 6)
!4393 = !DILocation(line: 596, column: 6, scope: !4361)
!4394 = !DILocation(line: 597, column: 10, scope: !4392)
!4395 = !DILocation(line: 597, column: 3, scope: !4392)
!4396 = !DILocation(line: 598, column: 17, scope: !4361)
!4397 = !DILocation(line: 598, column: 2, scope: !4361)
!4398 = !DILocation(line: 600, column: 42, scope: !4361)
!4399 = !DILocation(line: 600, column: 26, scope: !4361)
!4400 = !DILocation(line: 600, column: 2, scope: !4361)
!4401 = !DILocation(line: 600, column: 11, scope: !4361)
!4402 = !DILocation(line: 600, column: 24, scope: !4361)
!4403 = !DILocation(line: 601, column: 30, scope: !4361)
!4404 = !DILocation(line: 601, column: 14, scope: !4361)
!4405 = !DILocation(line: 601, column: 2, scope: !4361)
!4406 = !DILocation(line: 601, column: 7, scope: !4361)
!4407 = !DILocation(line: 601, column: 12, scope: !4361)
!4408 = !DILocation(line: 602, column: 7, scope: !4409)
!4409 = distinct !DILexicalBlock(scope: !4361, file: !3, line: 602, column: 6)
!4410 = !DILocation(line: 602, column: 16, scope: !4409)
!4411 = !DILocation(line: 602, column: 29, scope: !4409)
!4412 = !DILocation(line: 602, column: 33, scope: !4409)
!4413 = !DILocation(line: 602, column: 38, scope: !4409)
!4414 = !DILocation(line: 602, column: 6, scope: !4361)
!4415 = !DILocation(line: 603, column: 3, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !4409, file: !3, line: 602, column: 44)
!4417 = !DILocation(line: 604, column: 3, scope: !4416)
!4418 = !DILocation(line: 607, column: 24, scope: !4361)
!4419 = !DILocation(line: 607, column: 2, scope: !4361)
!4420 = !DILocation(line: 610, column: 18, scope: !4421)
!4421 = distinct !DILexicalBlock(scope: !4361, file: !3, line: 610, column: 6)
!4422 = !DILocation(line: 610, column: 26, scope: !4421)
!4423 = !DILocation(line: 611, column: 4, scope: !4421)
!4424 = !DILocation(line: 611, column: 9, scope: !4421)
!4425 = !DILocation(line: 611, column: 21, scope: !4421)
!4426 = !DILocation(line: 610, column: 6, scope: !4421)
!4427 = !DILocation(line: 610, column: 6, scope: !4361)
!4428 = !DILocation(line: 612, column: 3, scope: !4429)
!4429 = distinct !DILexicalBlock(scope: !4421, file: !3, line: 611, column: 27)
!4430 = !DILocation(line: 614, column: 3, scope: !4429)
!4431 = !DILocation(line: 616, column: 13, scope: !4361)
!4432 = !DILocation(line: 616, column: 21, scope: !4361)
!4433 = !DILocation(line: 616, column: 2, scope: !4361)
!4434 = !DILocation(line: 616, column: 7, scope: !4361)
!4435 = !DILocation(line: 616, column: 11, scope: !4361)
!4436 = !DILocation(line: 621, column: 9, scope: !4437)
!4437 = distinct !DILexicalBlock(scope: !4361, file: !3, line: 621, column: 2)
!4438 = !DILocation(line: 621, column: 7, scope: !4437)
!4439 = !DILocation(line: 621, column: 14, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4437, file: !3, line: 621, column: 2)
!4441 = !DILocation(line: 621, column: 16, scope: !4440)
!4442 = !DILocation(line: 621, column: 2, scope: !4437)
!4443 = !DILocation(line: 623, column: 27, scope: !4444)
!4444 = distinct !DILexicalBlock(scope: !4440, file: !3, line: 621, column: 40)
!4445 = !DILocation(line: 623, column: 35, scope: !4444)
!4446 = !DILocation(line: 624, column: 13, scope: !4444)
!4447 = !DILocation(line: 624, column: 22, scope: !4444)
!4448 = !DILocation(line: 624, column: 43, scope: !4444)
!4449 = !DILocation(line: 623, column: 7, scope: !4444)
!4450 = !DILocation(line: 622, column: 3, scope: !4444)
!4451 = !DILocation(line: 622, column: 12, scope: !4444)
!4452 = !DILocation(line: 622, column: 23, scope: !4444)
!4453 = !DILocation(line: 622, column: 26, scope: !4444)
!4454 = !DILocation(line: 626, column: 8, scope: !4455)
!4455 = distinct !DILexicalBlock(scope: !4444, file: !3, line: 626, column: 7)
!4456 = !DILocation(line: 626, column: 17, scope: !4455)
!4457 = !DILocation(line: 626, column: 28, scope: !4455)
!4458 = !DILocation(line: 626, column: 7, scope: !4444)
!4459 = !DILocation(line: 627, column: 4, scope: !4460)
!4460 = distinct !DILexicalBlock(scope: !4455, file: !3, line: 626, column: 32)
!4461 = !DILocation(line: 629, column: 4, scope: !4460)
!4462 = !DILocation(line: 631, column: 2, scope: !4444)
!4463 = !DILocation(line: 621, column: 36, scope: !4440)
!4464 = !DILocation(line: 621, column: 2, scope: !4440)
!4465 = distinct !{!4465, !4442, !4466}
!4466 = !DILocation(line: 631, column: 2, scope: !4437)
!4467 = !DILocation(line: 633, column: 42, scope: !4361)
!4468 = !DILocation(line: 633, column: 50, scope: !4361)
!4469 = !DILocation(line: 636, column: 14, scope: !4361)
!4470 = !DILocation(line: 636, column: 23, scope: !4361)
!4471 = !DILocation(line: 633, column: 22, scope: !4361)
!4472 = !DILocation(line: 633, column: 2, scope: !4361)
!4473 = !DILocation(line: 633, column: 11, scope: !4361)
!4474 = !DILocation(line: 633, column: 20, scope: !4361)
!4475 = !DILocation(line: 638, column: 7, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !4361, file: !3, line: 638, column: 6)
!4477 = !DILocation(line: 638, column: 16, scope: !4476)
!4478 = !DILocation(line: 638, column: 6, scope: !4361)
!4479 = !DILocation(line: 639, column: 3, scope: !4480)
!4480 = distinct !DILexicalBlock(scope: !4476, file: !3, line: 638, column: 26)
!4481 = !DILocation(line: 641, column: 3, scope: !4480)
!4482 = !DILocation(line: 643, column: 6, scope: !4483)
!4483 = distinct !DILexicalBlock(scope: !4361, file: !3, line: 643, column: 6)
!4484 = !DILocation(line: 643, column: 15, scope: !4483)
!4485 = !DILocation(line: 643, column: 34, scope: !4483)
!4486 = !DILocation(line: 643, column: 6, scope: !4361)
!4487 = !DILocation(line: 644, column: 3, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4483, file: !3, line: 643, column: 41)
!4489 = !DILocation(line: 646, column: 3, scope: !4488)
!4490 = !DILocation(line: 649, column: 42, scope: !4361)
!4491 = !DILocation(line: 649, column: 11, scope: !4361)
!4492 = !DILocation(line: 649, column: 9, scope: !4361)
!4493 = !DILocation(line: 650, column: 6, scope: !4494)
!4494 = distinct !DILexicalBlock(scope: !4361, file: !3, line: 650, column: 6)
!4495 = !DILocation(line: 650, column: 13, scope: !4494)
!4496 = !DILocation(line: 650, column: 6, scope: !4361)
!4497 = !DILocation(line: 651, column: 10, scope: !4494)
!4498 = !DILocation(line: 651, column: 3, scope: !4494)
!4499 = !DILocation(line: 653, column: 35, scope: !4361)
!4500 = !DILocation(line: 653, column: 11, scope: !4361)
!4501 = !DILocation(line: 653, column: 9, scope: !4361)
!4502 = !DILocation(line: 654, column: 6, scope: !4503)
!4503 = distinct !DILexicalBlock(scope: !4361, file: !3, line: 654, column: 6)
!4504 = !DILocation(line: 654, column: 6, scope: !4361)
!4505 = !DILocation(line: 655, column: 10, scope: !4503)
!4506 = !DILocation(line: 655, column: 3, scope: !4503)
!4507 = !DILocation(line: 658, column: 7, scope: !4361)
!4508 = !DILocation(line: 658, column: 12, scope: !4361)
!4509 = !DILocation(line: 658, column: 4, scope: !4361)
!4510 = !DILocation(line: 659, column: 21, scope: !4361)
!4511 = !DILocation(line: 659, column: 2, scope: !4361)
!4512 = !DILocation(line: 659, column: 7, scope: !4361)
!4513 = !DILocation(line: 659, column: 19, scope: !4361)
!4514 = !DILocation(line: 660, column: 2, scope: !4361)
!4515 = !DILocation(line: 660, column: 5, scope: !4361)
!4516 = !DILocation(line: 660, column: 11, scope: !4361)
!4517 = !DILocation(line: 661, column: 2, scope: !4361)
!4518 = !DILocation(line: 661, column: 5, scope: !4361)
!4519 = !DILocation(line: 661, column: 18, scope: !4361)
!4520 = !DILocation(line: 663, column: 2, scope: !4361)
!4521 = !DILocation(line: 663, column: 5, scope: !4361)
!4522 = !DILocation(line: 663, column: 12, scope: !4361)
!4523 = !DILocation(line: 664, column: 2, scope: !4361)
!4524 = !DILocation(line: 664, column: 5, scope: !4361)
!4525 = !DILocation(line: 664, column: 18, scope: !4361)
!4526 = !DILocation(line: 665, column: 2, scope: !4361)
!4527 = !DILocation(line: 665, column: 5, scope: !4361)
!4528 = !DILocation(line: 665, column: 13, scope: !4361)
!4529 = !DILocation(line: 666, column: 2, scope: !4361)
!4530 = !DILocation(line: 666, column: 5, scope: !4361)
!4531 = !DILocation(line: 666, column: 17, scope: !4361)
!4532 = !DILocation(line: 667, column: 2, scope: !4361)
!4533 = !DILocation(line: 667, column: 5, scope: !4361)
!4534 = !DILocation(line: 667, column: 17, scope: !4361)
!4535 = !DILocation(line: 668, column: 2, scope: !4361)
!4536 = !DILocation(line: 668, column: 5, scope: !4361)
!4537 = !DILocation(line: 668, column: 12, scope: !4361)
!4538 = !DILocation(line: 669, column: 2, scope: !4361)
!4539 = !DILocation(line: 669, column: 5, scope: !4361)
!4540 = !DILocation(line: 669, column: 16, scope: !4361)
!4541 = !DILocation(line: 670, column: 2, scope: !4361)
!4542 = !DILocation(line: 670, column: 5, scope: !4361)
!4543 = !DILocation(line: 670, column: 12, scope: !4361)
!4544 = !DILocation(line: 672, column: 23, scope: !4361)
!4545 = !DILocation(line: 672, column: 9, scope: !4361)
!4546 = !DILocation(line: 672, column: 2, scope: !4361)
!4547 = !DILocation(line: 673, column: 1, scope: !4361)
!4548 = distinct !DISubprogram(name: "writel", scope: !4549, file: !4549, line: 67, type: !4550, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!4549 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!4550 = !DISubroutineType(types: !4551)
!4551 = !{null, !7, !4552}
!4552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4553, size: 64)
!4553 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4554 = !DILocalVariable(name: "val", arg: 1, scope: !4548, file: !4549, line: 67, type: !7)
!4555 = !DILocation(line: 67, column: 1, scope: !4548)
!4556 = !DILocalVariable(name: "addr", arg: 2, scope: !4548, file: !4549, line: 67, type: !4552)
!4557 = !{i32 -2143407431}
!4558 = distinct !DISubprogram(name: "gsc_hpdi_free_dma", scope: !3, file: !3, line: 479, type: !3965, scopeLine: 480, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!4559 = !DILocalVariable(name: "dev", arg: 1, scope: !4558, file: !3, line: 479, type: !193)
!4560 = !DILocation(line: 479, column: 53, scope: !4558)
!4561 = !DILocalVariable(name: "pcidev", scope: !4558, file: !3, line: 481, type: !4015)
!4562 = !DILocation(line: 481, column: 18, scope: !4558)
!4563 = !DILocation(line: 481, column: 45, scope: !4558)
!4564 = !DILocation(line: 481, column: 27, scope: !4558)
!4565 = !DILocalVariable(name: "devpriv", scope: !4558, file: !3, line: 482, type: !4292)
!4566 = !DILocation(line: 482, column: 23, scope: !4558)
!4567 = !DILocation(line: 482, column: 33, scope: !4558)
!4568 = !DILocation(line: 482, column: 38, scope: !4558)
!4569 = !DILocalVariable(name: "i", scope: !4558, file: !3, line: 483, type: !192)
!4570 = !DILocation(line: 483, column: 6, scope: !4558)
!4571 = !DILocation(line: 485, column: 7, scope: !4572)
!4572 = distinct !DILexicalBlock(scope: !4558, file: !3, line: 485, column: 6)
!4573 = !DILocation(line: 485, column: 6, scope: !4558)
!4574 = !DILocation(line: 486, column: 3, scope: !4572)
!4575 = !DILocation(line: 489, column: 9, scope: !4576)
!4576 = distinct !DILexicalBlock(scope: !4558, file: !3, line: 489, column: 2)
!4577 = !DILocation(line: 489, column: 7, scope: !4576)
!4578 = !DILocation(line: 489, column: 14, scope: !4579)
!4579 = distinct !DILexicalBlock(scope: !4576, file: !3, line: 489, column: 2)
!4580 = !DILocation(line: 489, column: 16, scope: !4579)
!4581 = !DILocation(line: 489, column: 2, scope: !4576)
!4582 = !DILocation(line: 490, column: 7, scope: !4583)
!4583 = distinct !DILexicalBlock(scope: !4584, file: !3, line: 490, column: 7)
!4584 = distinct !DILexicalBlock(scope: !4579, file: !3, line: 489, column: 40)
!4585 = !DILocation(line: 490, column: 16, scope: !4583)
!4586 = !DILocation(line: 490, column: 27, scope: !4583)
!4587 = !DILocation(line: 490, column: 7, scope: !4584)
!4588 = !DILocation(line: 491, column: 23, scope: !4583)
!4589 = !DILocation(line: 491, column: 31, scope: !4583)
!4590 = !DILocation(line: 493, column: 8, scope: !4583)
!4591 = !DILocation(line: 493, column: 17, scope: !4583)
!4592 = !DILocation(line: 493, column: 28, scope: !4583)
!4593 = !DILocation(line: 494, column: 8, scope: !4583)
!4594 = !DILocation(line: 494, column: 17, scope: !4583)
!4595 = !DILocation(line: 494, column: 38, scope: !4583)
!4596 = !DILocation(line: 491, column: 4, scope: !4583)
!4597 = !DILocation(line: 495, column: 2, scope: !4584)
!4598 = !DILocation(line: 489, column: 36, scope: !4579)
!4599 = !DILocation(line: 489, column: 2, scope: !4579)
!4600 = distinct !{!4600, !4581, !4601}
!4601 = !DILocation(line: 495, column: 2, scope: !4576)
!4602 = !DILocation(line: 497, column: 6, scope: !4603)
!4603 = distinct !DILexicalBlock(scope: !4558, file: !3, line: 497, column: 6)
!4604 = !DILocation(line: 497, column: 15, scope: !4603)
!4605 = !DILocation(line: 497, column: 6, scope: !4558)
!4606 = !DILocation(line: 498, column: 22, scope: !4603)
!4607 = !DILocation(line: 498, column: 30, scope: !4603)
!4608 = !DILocation(line: 501, column: 7, scope: !4603)
!4609 = !DILocation(line: 501, column: 16, scope: !4603)
!4610 = !DILocation(line: 502, column: 7, scope: !4603)
!4611 = !DILocation(line: 502, column: 16, scope: !4603)
!4612 = !DILocation(line: 498, column: 3, scope: !4603)
!4613 = !DILocation(line: 503, column: 1, scope: !4558)
!4614 = distinct !DISubprogram(name: "dma_free_coherent", scope: !4615, file: !4615, line: 400, type: !4616, scopeLine: 402, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!4615 = !DIFile(filename: "./include/linux/dma-mapping.h", directory: "/home/lizy2001/genbc/linux")
!4616 = !DISubroutineType(types: !4617)
!4617 = !{null, !204, !314, !202, !909}
!4618 = !DILocalVariable(name: "dev", arg: 1, scope: !4614, file: !4615, line: 400, type: !204)
!4619 = !DILocation(line: 400, column: 53, scope: !4614)
!4620 = !DILocalVariable(name: "size", arg: 2, scope: !4614, file: !4615, line: 400, type: !314)
!4621 = !DILocation(line: 400, column: 65, scope: !4614)
!4622 = !DILocalVariable(name: "cpu_addr", arg: 3, scope: !4614, file: !4615, line: 401, type: !202)
!4623 = !DILocation(line: 401, column: 9, scope: !4614)
!4624 = !DILocalVariable(name: "dma_handle", arg: 4, scope: !4614, file: !4615, line: 401, type: !909)
!4625 = !DILocation(line: 401, column: 30, scope: !4614)
!4626 = !DILocation(line: 403, column: 24, scope: !4614)
!4627 = !DILocation(line: 403, column: 29, scope: !4614)
!4628 = !DILocation(line: 403, column: 35, scope: !4614)
!4629 = !DILocation(line: 403, column: 45, scope: !4614)
!4630 = !DILocation(line: 403, column: 9, scope: !4614)
!4631 = !DILocation(line: 403, column: 2, scope: !4614)
!4632 = distinct !DISubprogram(name: "gsc_hpdi_init_plx9080", scope: !3, file: !3, line: 536, type: !3965, scopeLine: 537, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!4633 = !DILocalVariable(name: "dev", arg: 1, scope: !4632, file: !3, line: 536, type: !193)
!4634 = !DILocation(line: 536, column: 57, scope: !4632)
!4635 = !DILocalVariable(name: "devpriv", scope: !4632, file: !3, line: 538, type: !4292)
!4636 = !DILocation(line: 538, column: 23, scope: !4632)
!4637 = !DILocation(line: 538, column: 33, scope: !4632)
!4638 = !DILocation(line: 538, column: 38, scope: !4632)
!4639 = !DILocalVariable(name: "bits", scope: !4632, file: !3, line: 539, type: !407)
!4640 = !DILocation(line: 539, column: 6, scope: !4632)
!4641 = !DILocalVariable(name: "plx_iobase", scope: !4632, file: !3, line: 540, type: !202)
!4642 = !DILocation(line: 540, column: 16, scope: !4632)
!4643 = !DILocation(line: 540, column: 29, scope: !4632)
!4644 = !DILocation(line: 540, column: 38, scope: !4632)
!4645 = !DILocation(line: 545, column: 7, scope: !4632)
!4646 = !DILocation(line: 547, column: 9, scope: !4632)
!4647 = !DILocation(line: 547, column: 15, scope: !4632)
!4648 = !DILocation(line: 547, column: 24, scope: !4632)
!4649 = !DILocation(line: 547, column: 37, scope: !4632)
!4650 = !DILocation(line: 547, column: 2, scope: !4632)
!4651 = !DILocation(line: 549, column: 12, scope: !4632)
!4652 = !DILocation(line: 549, column: 21, scope: !4632)
!4653 = !DILocation(line: 549, column: 34, scope: !4632)
!4654 = !DILocation(line: 549, column: 2, scope: !4632)
!4655 = !DILocation(line: 551, column: 21, scope: !4632)
!4656 = !DILocation(line: 551, column: 2, scope: !4632)
!4657 = !DILocation(line: 552, column: 21, scope: !4632)
!4658 = !DILocation(line: 552, column: 2, scope: !4632)
!4659 = !DILocation(line: 555, column: 7, scope: !4632)
!4660 = !DILocation(line: 557, column: 7, scope: !4632)
!4661 = !DILocation(line: 559, column: 7, scope: !4632)
!4662 = !DILocation(line: 564, column: 7, scope: !4632)
!4663 = !DILocation(line: 569, column: 7, scope: !4632)
!4664 = !DILocation(line: 571, column: 7, scope: !4632)
!4665 = !DILocation(line: 573, column: 7, scope: !4632)
!4666 = !DILocation(line: 575, column: 7, scope: !4632)
!4667 = !DILocation(line: 576, column: 7, scope: !4632)
!4668 = !DILocation(line: 577, column: 9, scope: !4632)
!4669 = !DILocation(line: 577, column: 15, scope: !4632)
!4670 = !DILocation(line: 577, column: 26, scope: !4632)
!4671 = !DILocation(line: 577, column: 2, scope: !4632)
!4672 = !DILocation(line: 578, column: 1, scope: !4632)
!4673 = distinct !DISubprogram(name: "request_irq", scope: !4077, file: !4077, line: 157, type: !4674, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!4674 = !DISubroutineType(types: !4675)
!4675 = !{!192, !7, !4676, !138, !183, !202}
!4676 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !4077, line: 92, baseType: !4677)
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4678, size: 64)
!4678 = !DISubroutineType(types: !4679)
!4679 = !{!4680, !192, !202}
!4680 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !117, line: 17, baseType: !116)
!4681 = !DILocalVariable(name: "irq", arg: 1, scope: !4673, file: !4077, line: 157, type: !7)
!4682 = !DILocation(line: 157, column: 26, scope: !4673)
!4683 = !DILocalVariable(name: "handler", arg: 2, scope: !4673, file: !4077, line: 157, type: !4676)
!4684 = !DILocation(line: 157, column: 45, scope: !4673)
!4685 = !DILocalVariable(name: "flags", arg: 3, scope: !4673, file: !4077, line: 157, type: !138)
!4686 = !DILocation(line: 157, column: 68, scope: !4673)
!4687 = !DILocalVariable(name: "name", arg: 4, scope: !4673, file: !4077, line: 158, type: !183)
!4688 = !DILocation(line: 158, column: 18, scope: !4673)
!4689 = !DILocalVariable(name: "dev", arg: 5, scope: !4673, file: !4077, line: 158, type: !202)
!4690 = !DILocation(line: 158, column: 30, scope: !4673)
!4691 = !DILocation(line: 160, column: 30, scope: !4673)
!4692 = !DILocation(line: 160, column: 35, scope: !4673)
!4693 = !DILocation(line: 160, column: 50, scope: !4673)
!4694 = !DILocation(line: 160, column: 57, scope: !4673)
!4695 = !DILocation(line: 160, column: 63, scope: !4673)
!4696 = !DILocation(line: 160, column: 9, scope: !4673)
!4697 = !DILocation(line: 160, column: 2, scope: !4673)
!4698 = distinct !DISubprogram(name: "gsc_hpdi_interrupt", scope: !3, file: !3, line: 177, type: !4678, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!4699 = !DILocalVariable(name: "lock", arg: 1, scope: !4700, file: !4701, line: 407, type: !1053)
!4700 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !4701, file: !4701, line: 407, type: !4702, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!4701 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!4702 = !DISubroutineType(types: !4703)
!4703 = !{null, !1053, !138}
!4704 = !DILocation(line: 407, column: 64, scope: !4700, inlinedAt: !4705)
!4705 = distinct !DILocation(line: 224, column: 2, scope: !4698)
!4706 = !DILocalVariable(name: "flags", arg: 2, scope: !4700, file: !4701, line: 407, type: !138)
!4707 = !DILocation(line: 407, column: 84, scope: !4700, inlinedAt: !4705)
!4708 = !DILocalVariable(name: "lock", arg: 1, scope: !4709, file: !4701, line: 327, type: !1053)
!4709 = distinct !DISubprogram(name: "spinlock_check", scope: !4701, file: !4701, line: 327, type: !4710, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!4710 = !DISubroutineType(types: !4711)
!4711 = !{!4712, !1053}
!4712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!4713 = !DILocation(line: 327, column: 67, scope: !4709, inlinedAt: !4714)
!4714 = distinct !DILocation(line: 217, column: 2, scope: !4715)
!4715 = distinct !DILexicalBlock(scope: !4716, file: !3, line: 217, column: 2)
!4716 = distinct !DILexicalBlock(scope: !4717, file: !3, line: 217, column: 2)
!4717 = distinct !DILexicalBlock(scope: !4718, file: !3, line: 217, column: 2)
!4718 = distinct !DILexicalBlock(scope: !4719, file: !3, line: 217, column: 2)
!4719 = distinct !DILexicalBlock(scope: !4698, file: !3, line: 217, column: 2)
!4720 = !DILocation(line: 407, column: 64, scope: !4700, inlinedAt: !4721)
!4721 = distinct !DILocation(line: 214, column: 2, scope: !4698)
!4722 = !DILocation(line: 407, column: 84, scope: !4700, inlinedAt: !4721)
!4723 = !DILocation(line: 327, column: 67, scope: !4709, inlinedAt: !4724)
!4724 = distinct !DILocation(line: 204, column: 2, scope: !4725)
!4725 = distinct !DILexicalBlock(scope: !4726, file: !3, line: 204, column: 2)
!4726 = distinct !DILexicalBlock(scope: !4727, file: !3, line: 204, column: 2)
!4727 = distinct !DILexicalBlock(scope: !4728, file: !3, line: 204, column: 2)
!4728 = distinct !DILexicalBlock(scope: !4729, file: !3, line: 204, column: 2)
!4729 = distinct !DILexicalBlock(scope: !4698, file: !3, line: 204, column: 2)
!4730 = !DILocalVariable(name: "irq", arg: 1, scope: !4698, file: !3, line: 177, type: !192)
!4731 = !DILocation(line: 177, column: 43, scope: !4698)
!4732 = !DILocalVariable(name: "d", arg: 2, scope: !4698, file: !3, line: 177, type: !202)
!4733 = !DILocation(line: 177, column: 54, scope: !4698)
!4734 = !DILocalVariable(name: "dev", scope: !4698, file: !3, line: 179, type: !193)
!4735 = !DILocation(line: 179, column: 24, scope: !4698)
!4736 = !DILocation(line: 179, column: 30, scope: !4698)
!4737 = !DILocalVariable(name: "devpriv", scope: !4698, file: !3, line: 180, type: !4292)
!4738 = !DILocation(line: 180, column: 23, scope: !4698)
!4739 = !DILocation(line: 180, column: 33, scope: !4698)
!4740 = !DILocation(line: 180, column: 38, scope: !4698)
!4741 = !DILocalVariable(name: "s", scope: !4698, file: !3, line: 181, type: !3819)
!4742 = !DILocation(line: 181, column: 27, scope: !4698)
!4743 = !DILocation(line: 181, column: 31, scope: !4698)
!4744 = !DILocation(line: 181, column: 36, scope: !4698)
!4745 = !DILocalVariable(name: "async", scope: !4698, file: !3, line: 182, type: !3830)
!4746 = !DILocation(line: 182, column: 23, scope: !4698)
!4747 = !DILocation(line: 182, column: 31, scope: !4698)
!4748 = !DILocation(line: 182, column: 34, scope: !4698)
!4749 = !DILocalVariable(name: "hpdi_intr_status", scope: !4698, file: !3, line: 183, type: !407)
!4750 = !DILocation(line: 183, column: 6, scope: !4698)
!4751 = !DILocalVariable(name: "hpdi_board_status", scope: !4698, file: !3, line: 183, type: !407)
!4752 = !DILocation(line: 183, column: 24, scope: !4698)
!4753 = !DILocalVariable(name: "plx_status", scope: !4698, file: !3, line: 184, type: !407)
!4754 = !DILocation(line: 184, column: 6, scope: !4698)
!4755 = !DILocalVariable(name: "plx_bits", scope: !4698, file: !3, line: 185, type: !407)
!4756 = !DILocation(line: 185, column: 6, scope: !4698)
!4757 = !DILocalVariable(name: "dma0_status", scope: !4698, file: !3, line: 186, type: !1341)
!4758 = !DILocation(line: 186, column: 5, scope: !4698)
!4759 = !DILocalVariable(name: "dma1_status", scope: !4698, file: !3, line: 186, type: !1341)
!4760 = !DILocation(line: 186, column: 18, scope: !4698)
!4761 = !DILocalVariable(name: "flags", scope: !4698, file: !3, line: 187, type: !138)
!4762 = !DILocation(line: 187, column: 16, scope: !4698)
!4763 = !DILocation(line: 189, column: 7, scope: !4764)
!4764 = distinct !DILexicalBlock(scope: !4698, file: !3, line: 189, column: 6)
!4765 = !DILocation(line: 189, column: 12, scope: !4764)
!4766 = !DILocation(line: 189, column: 6, scope: !4698)
!4767 = !DILocation(line: 190, column: 3, scope: !4764)
!4768 = !DILocation(line: 192, column: 21, scope: !4698)
!4769 = !DILocation(line: 192, column: 30, scope: !4698)
!4770 = !DILocation(line: 192, column: 43, scope: !4698)
!4771 = !DILocation(line: 192, column: 15, scope: !4698)
!4772 = !DILocation(line: 192, column: 13, scope: !4698)
!4773 = !DILocation(line: 193, column: 7, scope: !4774)
!4774 = distinct !DILexicalBlock(scope: !4698, file: !3, line: 193, column: 6)
!4775 = !DILocation(line: 193, column: 18, scope: !4774)
!4776 = !DILocation(line: 194, column: 66, scope: !4774)
!4777 = !DILocation(line: 193, column: 6, scope: !4698)
!4778 = !DILocation(line: 195, column: 3, scope: !4774)
!4779 = !DILocation(line: 197, column: 27, scope: !4698)
!4780 = !DILocation(line: 197, column: 32, scope: !4698)
!4781 = !DILocation(line: 197, column: 37, scope: !4698)
!4782 = !DILocation(line: 197, column: 21, scope: !4698)
!4783 = !DILocation(line: 197, column: 19, scope: !4698)
!4784 = !DILocation(line: 198, column: 28, scope: !4698)
!4785 = !DILocation(line: 198, column: 33, scope: !4698)
!4786 = !DILocation(line: 198, column: 38, scope: !4698)
!4787 = !DILocation(line: 198, column: 22, scope: !4698)
!4788 = !DILocation(line: 198, column: 20, scope: !4698)
!4789 = !DILocation(line: 200, column: 6, scope: !4790)
!4790 = distinct !DILexicalBlock(scope: !4698, file: !3, line: 200, column: 6)
!4791 = !DILocation(line: 200, column: 6, scope: !4698)
!4792 = !DILocation(line: 201, column: 10, scope: !4790)
!4793 = !DILocation(line: 201, column: 28, scope: !4790)
!4794 = !DILocation(line: 201, column: 33, scope: !4790)
!4795 = !DILocation(line: 201, column: 38, scope: !4790)
!4796 = !DILocation(line: 201, column: 3, scope: !4790)
!4797 = !DILocation(line: 204, column: 2, scope: !4698)
!4798 = !DILocation(line: 204, column: 2, scope: !4729)
!4799 = !DILocalVariable(name: "__dummy", scope: !4800, file: !3, line: 204, type: !138)
!4800 = distinct !DILexicalBlock(scope: !4728, file: !3, line: 204, column: 2)
!4801 = !DILocation(line: 204, column: 2, scope: !4800)
!4802 = !DILocalVariable(name: "__dummy2", scope: !4800, file: !3, line: 204, type: !138)
!4803 = !DILocation(line: 204, column: 2, scope: !4728)
!4804 = !DILocation(line: 204, column: 2, scope: !4727)
!4805 = !DILocation(line: 204, column: 2, scope: !4806)
!4806 = distinct !DILexicalBlock(scope: !4727, file: !3, line: 204, column: 2)
!4807 = !DILocalVariable(name: "__dummy", scope: !4808, file: !3, line: 204, type: !138)
!4808 = distinct !DILexicalBlock(scope: !4809, file: !3, line: 204, column: 2)
!4809 = distinct !DILexicalBlock(scope: !4806, file: !3, line: 204, column: 2)
!4810 = !DILocation(line: 204, column: 2, scope: !4808)
!4811 = !DILocalVariable(name: "__dummy2", scope: !4808, file: !3, line: 204, type: !138)
!4812 = !DILocation(line: 204, column: 2, scope: !4809)
!4813 = !DILocation(line: 204, column: 2, scope: !4726)
!4814 = !{i32 -2141597506}
!4815 = !DILocation(line: 204, column: 2, scope: !4725)
!4816 = !DILocation(line: 329, column: 10, scope: !4709, inlinedAt: !4724)
!4817 = !DILocation(line: 329, column: 16, scope: !4709, inlinedAt: !4724)
!4818 = !DILocation(line: 205, column: 22, scope: !4698)
!4819 = !DILocation(line: 205, column: 31, scope: !4698)
!4820 = !DILocation(line: 205, column: 44, scope: !4698)
!4821 = !DILocation(line: 205, column: 16, scope: !4698)
!4822 = !DILocation(line: 205, column: 14, scope: !4698)
!4823 = !DILocation(line: 206, column: 6, scope: !4824)
!4824 = distinct !DILexicalBlock(scope: !4698, file: !3, line: 206, column: 6)
!4825 = !DILocation(line: 206, column: 17, scope: !4824)
!4826 = !DILocation(line: 206, column: 6, scope: !4698)
!4827 = !DILocation(line: 208, column: 11, scope: !4828)
!4828 = distinct !DILexicalBlock(scope: !4824, file: !3, line: 206, column: 38)
!4829 = !DILocation(line: 208, column: 23, scope: !4828)
!4830 = !DILocation(line: 208, column: 44, scope: !4828)
!4831 = !DILocation(line: 208, column: 10, scope: !4828)
!4832 = !DILocation(line: 209, column: 10, scope: !4828)
!4833 = !DILocation(line: 209, column: 19, scope: !4828)
!4834 = !DILocation(line: 209, column: 32, scope: !4828)
!4835 = !DILocation(line: 208, column: 3, scope: !4828)
!4836 = !DILocation(line: 211, column: 7, scope: !4837)
!4837 = distinct !DILexicalBlock(scope: !4828, file: !3, line: 211, column: 7)
!4838 = !DILocation(line: 211, column: 19, scope: !4837)
!4839 = !DILocation(line: 211, column: 7, scope: !4828)
!4840 = !DILocation(line: 212, column: 23, scope: !4837)
!4841 = !DILocation(line: 212, column: 4, scope: !4837)
!4842 = !DILocation(line: 213, column: 2, scope: !4828)
!4843 = !DILocation(line: 214, column: 26, scope: !4698)
!4844 = !DILocation(line: 214, column: 31, scope: !4698)
!4845 = !DILocation(line: 214, column: 41, scope: !4698)
!4846 = !DILocalVariable(name: "__dummy", scope: !4847, file: !4701, line: 409, type: !138)
!4847 = distinct !DILexicalBlock(scope: !4848, file: !4701, line: 409, column: 2)
!4848 = distinct !DILexicalBlock(scope: !4700, file: !4701, line: 409, column: 2)
!4849 = !DILocation(line: 409, column: 2, scope: !4847, inlinedAt: !4721)
!4850 = !DILocalVariable(name: "__dummy2", scope: !4847, file: !4701, line: 409, type: !138)
!4851 = !DILocalVariable(name: "__dummy", scope: !4852, file: !4701, line: 409, type: !138)
!4852 = distinct !DILexicalBlock(scope: !4853, file: !4701, line: 409, column: 2)
!4853 = distinct !DILexicalBlock(scope: !4854, file: !4701, line: 409, column: 2)
!4854 = distinct !DILexicalBlock(scope: !4855, file: !4701, line: 409, column: 2)
!4855 = distinct !DILexicalBlock(scope: !4848, file: !4701, line: 409, column: 2)
!4856 = !DILocation(line: 409, column: 2, scope: !4852, inlinedAt: !4721)
!4857 = !DILocalVariable(name: "__dummy2", scope: !4852, file: !4701, line: 409, type: !138)
!4858 = !DILocation(line: 409, column: 2, scope: !4853, inlinedAt: !4721)
!4859 = !DILocation(line: 409, column: 2, scope: !4860, inlinedAt: !4721)
!4860 = distinct !DILexicalBlock(scope: !4855, file: !4701, line: 409, column: 2)
!4861 = !{i32 -2145457384}
!4862 = !DILocation(line: 409, column: 2, scope: !4863, inlinedAt: !4721)
!4863 = distinct !DILexicalBlock(scope: !4860, file: !4701, line: 409, column: 2)
!4864 = !DILocation(line: 217, column: 2, scope: !4698)
!4865 = !DILocation(line: 217, column: 2, scope: !4719)
!4866 = !DILocalVariable(name: "__dummy", scope: !4867, file: !3, line: 217, type: !138)
!4867 = distinct !DILexicalBlock(scope: !4718, file: !3, line: 217, column: 2)
!4868 = !DILocation(line: 217, column: 2, scope: !4867)
!4869 = !DILocalVariable(name: "__dummy2", scope: !4867, file: !3, line: 217, type: !138)
!4870 = !DILocation(line: 217, column: 2, scope: !4718)
!4871 = !DILocation(line: 217, column: 2, scope: !4717)
!4872 = !DILocation(line: 217, column: 2, scope: !4873)
!4873 = distinct !DILexicalBlock(scope: !4717, file: !3, line: 217, column: 2)
!4874 = !DILocalVariable(name: "__dummy", scope: !4875, file: !3, line: 217, type: !138)
!4875 = distinct !DILexicalBlock(scope: !4876, file: !3, line: 217, column: 2)
!4876 = distinct !DILexicalBlock(scope: !4873, file: !3, line: 217, column: 2)
!4877 = !DILocation(line: 217, column: 2, scope: !4875)
!4878 = !DILocalVariable(name: "__dummy2", scope: !4875, file: !3, line: 217, type: !138)
!4879 = !DILocation(line: 217, column: 2, scope: !4876)
!4880 = !DILocation(line: 217, column: 2, scope: !4716)
!4881 = !{i32 -2141596109}
!4882 = !DILocation(line: 217, column: 2, scope: !4715)
!4883 = !DILocation(line: 329, column: 10, scope: !4709, inlinedAt: !4714)
!4884 = !DILocation(line: 329, column: 16, scope: !4709, inlinedAt: !4714)
!4885 = !DILocation(line: 218, column: 22, scope: !4698)
!4886 = !DILocation(line: 218, column: 31, scope: !4698)
!4887 = !DILocation(line: 218, column: 44, scope: !4698)
!4888 = !DILocation(line: 218, column: 16, scope: !4698)
!4889 = !DILocation(line: 218, column: 14, scope: !4698)
!4890 = !DILocation(line: 219, column: 6, scope: !4891)
!4891 = distinct !DILexicalBlock(scope: !4698, file: !3, line: 219, column: 6)
!4892 = !DILocation(line: 219, column: 17, scope: !4891)
!4893 = !DILocation(line: 219, column: 6, scope: !4698)
!4894 = !DILocation(line: 221, column: 11, scope: !4895)
!4895 = distinct !DILexicalBlock(scope: !4891, file: !3, line: 219, column: 38)
!4896 = !DILocation(line: 221, column: 23, scope: !4895)
!4897 = !DILocation(line: 221, column: 44, scope: !4895)
!4898 = !DILocation(line: 221, column: 10, scope: !4895)
!4899 = !DILocation(line: 222, column: 10, scope: !4895)
!4900 = !DILocation(line: 222, column: 19, scope: !4895)
!4901 = !DILocation(line: 222, column: 32, scope: !4895)
!4902 = !DILocation(line: 221, column: 3, scope: !4895)
!4903 = !DILocation(line: 223, column: 2, scope: !4895)
!4904 = !DILocation(line: 224, column: 26, scope: !4698)
!4905 = !DILocation(line: 224, column: 31, scope: !4698)
!4906 = !DILocation(line: 224, column: 41, scope: !4698)
!4907 = !DILocation(line: 409, column: 2, scope: !4847, inlinedAt: !4705)
!4908 = !DILocation(line: 409, column: 2, scope: !4852, inlinedAt: !4705)
!4909 = !DILocation(line: 409, column: 2, scope: !4853, inlinedAt: !4705)
!4910 = !DILocation(line: 409, column: 2, scope: !4860, inlinedAt: !4705)
!4911 = !DILocation(line: 409, column: 2, scope: !4863, inlinedAt: !4705)
!4912 = !DILocation(line: 227, column: 6, scope: !4913)
!4913 = distinct !DILexicalBlock(scope: !4698, file: !3, line: 227, column: 6)
!4914 = !DILocation(line: 227, column: 17, scope: !4913)
!4915 = !DILocation(line: 227, column: 6, scope: !4698)
!4916 = !DILocation(line: 229, column: 20, scope: !4917)
!4917 = distinct !DILexicalBlock(scope: !4913, file: !3, line: 227, column: 37)
!4918 = !DILocation(line: 229, column: 29, scope: !4917)
!4919 = !DILocation(line: 229, column: 42, scope: !4917)
!4920 = !DILocation(line: 229, column: 14, scope: !4917)
!4921 = !DILocation(line: 229, column: 12, scope: !4917)
!4922 = !DILocation(line: 230, column: 10, scope: !4917)
!4923 = !DILocation(line: 230, column: 20, scope: !4917)
!4924 = !DILocation(line: 230, column: 29, scope: !4917)
!4925 = !DILocation(line: 230, column: 42, scope: !4917)
!4926 = !DILocation(line: 230, column: 3, scope: !4917)
!4927 = !DILocation(line: 231, column: 2, scope: !4917)
!4928 = !DILocation(line: 233, column: 6, scope: !4929)
!4929 = distinct !DILexicalBlock(scope: !4698, file: !3, line: 233, column: 6)
!4930 = !DILocation(line: 233, column: 24, scope: !4929)
!4931 = !DILocation(line: 233, column: 6, scope: !4698)
!4932 = !DILocation(line: 234, column: 3, scope: !4933)
!4933 = distinct !DILexicalBlock(scope: !4929, file: !3, line: 233, column: 42)
!4934 = !DILocation(line: 235, column: 3, scope: !4933)
!4935 = !DILocation(line: 235, column: 10, scope: !4933)
!4936 = !DILocation(line: 235, column: 17, scope: !4933)
!4937 = !DILocation(line: 236, column: 2, scope: !4933)
!4938 = !DILocation(line: 238, column: 6, scope: !4939)
!4939 = distinct !DILexicalBlock(scope: !4698, file: !3, line: 238, column: 6)
!4940 = !DILocation(line: 238, column: 24, scope: !4939)
!4941 = !DILocation(line: 238, column: 6, scope: !4698)
!4942 = !DILocation(line: 239, column: 3, scope: !4943)
!4943 = distinct !DILexicalBlock(scope: !4939, file: !3, line: 238, column: 43)
!4944 = !DILocation(line: 240, column: 3, scope: !4943)
!4945 = !DILocation(line: 240, column: 10, scope: !4943)
!4946 = !DILocation(line: 240, column: 17, scope: !4943)
!4947 = !DILocation(line: 241, column: 2, scope: !4943)
!4948 = !DILocation(line: 243, column: 6, scope: !4949)
!4949 = distinct !DILexicalBlock(scope: !4698, file: !3, line: 243, column: 6)
!4950 = !DILocation(line: 243, column: 15, scope: !4949)
!4951 = !DILocation(line: 243, column: 25, scope: !4949)
!4952 = !DILocation(line: 243, column: 6, scope: !4698)
!4953 = !DILocation(line: 244, column: 3, scope: !4949)
!4954 = !DILocation(line: 244, column: 10, scope: !4949)
!4955 = !DILocation(line: 244, column: 17, scope: !4949)
!4956 = !DILocation(line: 246, column: 23, scope: !4698)
!4957 = !DILocation(line: 246, column: 28, scope: !4698)
!4958 = !DILocation(line: 246, column: 2, scope: !4698)
!4959 = !DILocation(line: 248, column: 2, scope: !4698)
!4960 = !DILocation(line: 249, column: 1, scope: !4698)
!4961 = distinct !DISubprogram(name: "dma_alloc_coherent", scope: !4615, file: !4615, line: 392, type: !4962, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!4962 = !DISubroutineType(types: !4963)
!4963 = !{!202, !204, !314, !4964, !136}
!4964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!4965 = !DILocalVariable(name: "dev", arg: 1, scope: !4961, file: !4615, line: 392, type: !204)
!4966 = !DILocation(line: 392, column: 55, scope: !4961)
!4967 = !DILocalVariable(name: "size", arg: 2, scope: !4961, file: !4615, line: 392, type: !314)
!4968 = !DILocation(line: 392, column: 67, scope: !4961)
!4969 = !DILocalVariable(name: "dma_handle", arg: 3, scope: !4961, file: !4615, line: 393, type: !4964)
!4970 = !DILocation(line: 393, column: 15, scope: !4961)
!4971 = !DILocalVariable(name: "gfp", arg: 4, scope: !4961, file: !4615, line: 393, type: !136)
!4972 = !DILocation(line: 393, column: 33, scope: !4961)
!4973 = !DILocation(line: 396, column: 25, scope: !4961)
!4974 = !DILocation(line: 396, column: 30, scope: !4961)
!4975 = !DILocation(line: 396, column: 36, scope: !4961)
!4976 = !DILocation(line: 396, column: 48, scope: !4961)
!4977 = !DILocation(line: 397, column: 5, scope: !4961)
!4978 = !DILocation(line: 397, column: 9, scope: !4961)
!4979 = !DILocation(line: 397, column: 4, scope: !4961)
!4980 = !DILocation(line: 396, column: 9, scope: !4961)
!4981 = !DILocation(line: 396, column: 2, scope: !4961)
!4982 = distinct !DISubprogram(name: "gsc_hpdi_setup_dma_descriptors", scope: !3, file: !3, line: 411, type: !4983, scopeLine: 413, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!4983 = !DISubroutineType(types: !4984)
!4984 = !{!192, !193, !7}
!4985 = !DILocalVariable(name: "dev", arg: 1, scope: !4982, file: !3, line: 411, type: !193)
!4986 = !DILocation(line: 411, column: 65, scope: !4982)
!4987 = !DILocalVariable(name: "len", arg: 2, scope: !4982, file: !3, line: 412, type: !7)
!4988 = !DILocation(line: 412, column: 21, scope: !4982)
!4989 = !DILocalVariable(name: "devpriv", scope: !4982, file: !3, line: 414, type: !4292)
!4990 = !DILocation(line: 414, column: 23, scope: !4982)
!4991 = !DILocation(line: 414, column: 33, scope: !4982)
!4992 = !DILocation(line: 414, column: 38, scope: !4982)
!4993 = !DILocalVariable(name: "phys_addr", scope: !4982, file: !3, line: 415, type: !909)
!4994 = !DILocation(line: 415, column: 13, scope: !4982)
!4995 = !DILocation(line: 415, column: 25, scope: !4982)
!4996 = !DILocation(line: 415, column: 34, scope: !4982)
!4997 = !DILocalVariable(name: "next_bits", scope: !4982, file: !3, line: 416, type: !407)
!4998 = !DILocation(line: 416, column: 6, scope: !4982)
!4999 = !DILocalVariable(name: "offset", scope: !4982, file: !3, line: 418, type: !7)
!5000 = !DILocation(line: 418, column: 15, scope: !4982)
!5001 = !DILocalVariable(name: "idx", scope: !4982, file: !3, line: 419, type: !7)
!5002 = !DILocation(line: 419, column: 15, scope: !4982)
!5003 = !DILocalVariable(name: "i", scope: !4982, file: !3, line: 420, type: !7)
!5004 = !DILocation(line: 420, column: 15, scope: !4982)
!5005 = !DILocation(line: 422, column: 6, scope: !5006)
!5006 = distinct !DILexicalBlock(scope: !4982, file: !3, line: 422, column: 6)
!5007 = !DILocation(line: 422, column: 10, scope: !5006)
!5008 = !DILocation(line: 422, column: 6, scope: !4982)
!5009 = !DILocation(line: 423, column: 7, scope: !5006)
!5010 = !DILocation(line: 423, column: 3, scope: !5006)
!5011 = !DILocation(line: 424, column: 9, scope: !4982)
!5012 = !DILocation(line: 424, column: 13, scope: !4982)
!5013 = !DILocation(line: 424, column: 6, scope: !4982)
!5014 = !DILocation(line: 425, column: 6, scope: !5015)
!5015 = distinct !DILexicalBlock(scope: !4982, file: !3, line: 425, column: 6)
!5016 = !DILocation(line: 425, column: 10, scope: !5015)
!5017 = !DILocation(line: 425, column: 6, scope: !4982)
!5018 = !DILocation(line: 426, column: 3, scope: !5015)
!5019 = !DILocation(line: 428, column: 9, scope: !5020)
!5020 = distinct !DILexicalBlock(scope: !4982, file: !3, line: 428, column: 2)
!5021 = !DILocation(line: 428, column: 7, scope: !5020)
!5022 = !DILocation(line: 428, column: 14, scope: !5023)
!5023 = distinct !DILexicalBlock(scope: !5020, file: !3, line: 428, column: 2)
!5024 = !DILocation(line: 428, column: 16, scope: !5023)
!5025 = !DILocation(line: 428, column: 38, scope: !5023)
!5026 = !DILocation(line: 428, column: 41, scope: !5023)
!5027 = !DILocation(line: 428, column: 45, scope: !5023)
!5028 = !DILocation(line: 0, scope: !5023)
!5029 = !DILocation(line: 428, column: 2, scope: !5020)
!5030 = !DILocation(line: 430, column: 7, scope: !5031)
!5031 = distinct !DILexicalBlock(scope: !5023, file: !3, line: 428, column: 69)
!5032 = !DILocation(line: 429, column: 3, scope: !5031)
!5033 = !DILocation(line: 429, column: 12, scope: !5031)
!5034 = !DILocation(line: 429, column: 21, scope: !5031)
!5035 = !DILocation(line: 429, column: 24, scope: !5031)
!5036 = !DILocation(line: 429, column: 39, scope: !5031)
!5037 = !DILocation(line: 431, column: 3, scope: !5031)
!5038 = !DILocation(line: 431, column: 12, scope: !5031)
!5039 = !DILocation(line: 431, column: 21, scope: !5031)
!5040 = !DILocation(line: 431, column: 24, scope: !5031)
!5041 = !DILocation(line: 431, column: 41, scope: !5031)
!5042 = !DILocation(line: 432, column: 40, scope: !5031)
!5043 = !DILocation(line: 432, column: 3, scope: !5031)
!5044 = !DILocation(line: 432, column: 12, scope: !5031)
!5045 = !DILocation(line: 432, column: 21, scope: !5031)
!5046 = !DILocation(line: 432, column: 24, scope: !5031)
!5047 = !DILocation(line: 432, column: 38, scope: !5031)
!5048 = !DILocation(line: 433, column: 31, scope: !5031)
!5049 = !DILocation(line: 433, column: 3, scope: !5031)
!5050 = !DILocation(line: 433, column: 12, scope: !5031)
!5051 = !DILocation(line: 433, column: 21, scope: !5031)
!5052 = !DILocation(line: 433, column: 24, scope: !5031)
!5053 = !DILocation(line: 433, column: 29, scope: !5031)
!5054 = !DILocation(line: 436, column: 33, scope: !5031)
!5055 = !DILocation(line: 436, column: 42, scope: !5031)
!5056 = !DILocation(line: 436, column: 53, scope: !5031)
!5057 = !DILocation(line: 437, column: 13, scope: !5031)
!5058 = !DILocation(line: 437, column: 20, scope: !5031)
!5059 = !DILocation(line: 436, column: 58, scope: !5031)
!5060 = !DILocation(line: 436, column: 3, scope: !5031)
!5061 = !DILocation(line: 436, column: 12, scope: !5031)
!5062 = !DILocation(line: 436, column: 28, scope: !5031)
!5063 = !DILocation(line: 436, column: 31, scope: !5031)
!5064 = !DILocation(line: 439, column: 13, scope: !5031)
!5065 = !DILocation(line: 439, column: 10, scope: !5031)
!5066 = !DILocation(line: 440, column: 7, scope: !5067)
!5067 = distinct !DILexicalBlock(scope: !5031, file: !3, line: 440, column: 7)
!5068 = !DILocation(line: 440, column: 13, scope: !5067)
!5069 = !DILocation(line: 440, column: 11, scope: !5067)
!5070 = !DILocation(line: 440, column: 20, scope: !5067)
!5071 = !DILocation(line: 440, column: 7, scope: !5031)
!5072 = !DILocation(line: 441, column: 11, scope: !5073)
!5073 = distinct !DILexicalBlock(scope: !5067, file: !3, line: 440, column: 39)
!5074 = !DILocation(line: 442, column: 7, scope: !5073)
!5075 = !DILocation(line: 443, column: 3, scope: !5073)
!5076 = !DILocation(line: 444, column: 2, scope: !5031)
!5077 = !DILocation(line: 428, column: 65, scope: !5023)
!5078 = !DILocation(line: 428, column: 2, scope: !5023)
!5079 = distinct !{!5079, !5029, !5080}
!5080 = !DILocation(line: 444, column: 2, scope: !5020)
!5081 = !DILocation(line: 445, column: 33, scope: !4982)
!5082 = !DILocation(line: 445, column: 2, scope: !4982)
!5083 = !DILocation(line: 445, column: 11, scope: !4982)
!5084 = !DILocation(line: 445, column: 31, scope: !4982)
!5085 = !DILocation(line: 447, column: 34, scope: !4982)
!5086 = !DILocation(line: 447, column: 2, scope: !4982)
!5087 = !DILocation(line: 447, column: 11, scope: !4982)
!5088 = !DILocation(line: 447, column: 20, scope: !4982)
!5089 = !DILocation(line: 447, column: 22, scope: !4982)
!5090 = !DILocation(line: 447, column: 27, scope: !4982)
!5091 = !DILocation(line: 447, column: 32, scope: !4982)
!5092 = !DILocation(line: 449, column: 24, scope: !4982)
!5093 = !DILocation(line: 449, column: 2, scope: !4982)
!5094 = !DILocation(line: 449, column: 11, scope: !4982)
!5095 = !DILocation(line: 449, column: 22, scope: !4982)
!5096 = !DILocation(line: 451, column: 9, scope: !4982)
!5097 = !DILocation(line: 451, column: 2, scope: !4982)
!5098 = !DILocation(line: 452, column: 1, scope: !4982)
!5099 = distinct !DISubprogram(name: "gsc_hpdi_dio_insn_config", scope: !3, file: !3, line: 454, type: !3916, scopeLine: 458, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!5100 = !DILocalVariable(name: "dev", arg: 1, scope: !5099, file: !3, line: 454, type: !193)
!5101 = !DILocation(line: 454, column: 59, scope: !5099)
!5102 = !DILocalVariable(name: "s", arg: 2, scope: !5099, file: !3, line: 455, type: !3819)
!5103 = !DILocation(line: 455, column: 34, scope: !5099)
!5104 = !DILocalVariable(name: "insn", arg: 3, scope: !5099, file: !3, line: 456, type: !3918)
!5105 = !DILocation(line: 456, column: 29, scope: !5099)
!5106 = !DILocalVariable(name: "data", arg: 4, scope: !5099, file: !3, line: 457, type: !2672)
!5107 = !DILocation(line: 457, column: 23, scope: !5099)
!5108 = !DILocalVariable(name: "ret", scope: !5099, file: !3, line: 459, type: !192)
!5109 = !DILocation(line: 459, column: 6, scope: !5099)
!5110 = !DILocation(line: 461, column: 10, scope: !5099)
!5111 = !DILocation(line: 461, column: 2, scope: !5099)
!5112 = !DILocation(line: 463, column: 40, scope: !5113)
!5113 = distinct !DILexicalBlock(scope: !5099, file: !3, line: 461, column: 19)
!5114 = !DILocation(line: 463, column: 45, scope: !5113)
!5115 = !DILocation(line: 463, column: 9, scope: !5113)
!5116 = !DILocation(line: 463, column: 7, scope: !5113)
!5117 = !DILocation(line: 464, column: 7, scope: !5118)
!5118 = distinct !DILexicalBlock(scope: !5113, file: !3, line: 464, column: 7)
!5119 = !DILocation(line: 464, column: 7, scope: !5113)
!5120 = !DILocation(line: 465, column: 11, scope: !5118)
!5121 = !DILocation(line: 465, column: 4, scope: !5118)
!5122 = !DILocation(line: 467, column: 13, scope: !5113)
!5123 = !DILocation(line: 467, column: 3, scope: !5113)
!5124 = !DILocation(line: 467, column: 11, scope: !5113)
!5125 = !DILocation(line: 468, column: 3, scope: !5113)
!5126 = !DILocation(line: 470, column: 32, scope: !5113)
!5127 = !DILocation(line: 470, column: 37, scope: !5113)
!5128 = !DILocation(line: 470, column: 40, scope: !5113)
!5129 = !DILocation(line: 470, column: 46, scope: !5113)
!5130 = !DILocation(line: 470, column: 9, scope: !5113)
!5131 = !DILocation(line: 470, column: 7, scope: !5113)
!5132 = !DILocation(line: 471, column: 7, scope: !5133)
!5133 = distinct !DILexicalBlock(scope: !5113, file: !3, line: 471, column: 7)
!5134 = !DILocation(line: 471, column: 7, scope: !5113)
!5135 = !DILocation(line: 472, column: 11, scope: !5133)
!5136 = !DILocation(line: 472, column: 4, scope: !5133)
!5137 = !DILocation(line: 473, column: 3, scope: !5113)
!5138 = !DILocation(line: 476, column: 9, scope: !5099)
!5139 = !DILocation(line: 476, column: 15, scope: !5099)
!5140 = !DILocation(line: 476, column: 2, scope: !5099)
!5141 = !DILocation(line: 477, column: 1, scope: !5099)
!5142 = distinct !DISubprogram(name: "gsc_hpdi_cmd", scope: !3, file: !3, line: 275, type: !3933, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!5143 = !DILocation(line: 407, column: 64, scope: !4700, inlinedAt: !5144)
!5144 = distinct !DILocation(line: 312, column: 2, scope: !5142)
!5145 = !DILocation(line: 407, column: 84, scope: !4700, inlinedAt: !5144)
!5146 = !DILocation(line: 327, column: 67, scope: !4709, inlinedAt: !5147)
!5147 = distinct !DILocation(line: 309, column: 2, scope: !5148)
!5148 = distinct !DILexicalBlock(scope: !5149, file: !3, line: 309, column: 2)
!5149 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 309, column: 2)
!5150 = distinct !DILexicalBlock(scope: !5151, file: !3, line: 309, column: 2)
!5151 = distinct !DILexicalBlock(scope: !5152, file: !3, line: 309, column: 2)
!5152 = distinct !DILexicalBlock(scope: !5142, file: !3, line: 309, column: 2)
!5153 = !DILocalVariable(name: "dev", arg: 1, scope: !5142, file: !3, line: 275, type: !193)
!5154 = !DILocation(line: 275, column: 47, scope: !5142)
!5155 = !DILocalVariable(name: "s", arg: 2, scope: !5142, file: !3, line: 276, type: !3819)
!5156 = !DILocation(line: 276, column: 29, scope: !5142)
!5157 = !DILocalVariable(name: "devpriv", scope: !5142, file: !3, line: 278, type: !4292)
!5158 = !DILocation(line: 278, column: 23, scope: !5142)
!5159 = !DILocation(line: 278, column: 33, scope: !5142)
!5160 = !DILocation(line: 278, column: 38, scope: !5142)
!5161 = !DILocalVariable(name: "async", scope: !5142, file: !3, line: 279, type: !3830)
!5162 = !DILocation(line: 279, column: 23, scope: !5142)
!5163 = !DILocation(line: 279, column: 31, scope: !5142)
!5164 = !DILocation(line: 279, column: 34, scope: !5142)
!5165 = !DILocalVariable(name: "cmd", scope: !5142, file: !3, line: 280, type: !3939)
!5166 = !DILocation(line: 280, column: 21, scope: !5142)
!5167 = !DILocation(line: 280, column: 28, scope: !5142)
!5168 = !DILocation(line: 280, column: 35, scope: !5142)
!5169 = !DILocalVariable(name: "flags", scope: !5142, file: !3, line: 281, type: !138)
!5170 = !DILocation(line: 281, column: 16, scope: !5142)
!5171 = !DILocalVariable(name: "bits", scope: !5142, file: !3, line: 282, type: !407)
!5172 = !DILocation(line: 282, column: 6, scope: !5142)
!5173 = !DILocation(line: 284, column: 6, scope: !5174)
!5174 = distinct !DILexicalBlock(scope: !5142, file: !3, line: 284, column: 6)
!5175 = !DILocation(line: 284, column: 9, scope: !5174)
!5176 = !DILocation(line: 284, column: 6, scope: !5142)
!5177 = !DILocation(line: 285, column: 3, scope: !5174)
!5178 = !DILocation(line: 287, column: 28, scope: !5142)
!5179 = !DILocation(line: 287, column: 33, scope: !5142)
!5180 = !DILocation(line: 287, column: 38, scope: !5142)
!5181 = !DILocation(line: 287, column: 2, scope: !5142)
!5182 = !DILocation(line: 289, column: 21, scope: !5142)
!5183 = !DILocation(line: 289, column: 2, scope: !5142)
!5184 = !DILocation(line: 291, column: 2, scope: !5142)
!5185 = !DILocation(line: 291, column: 11, scope: !5142)
!5186 = !DILocation(line: 291, column: 26, scope: !5142)
!5187 = !DILocation(line: 299, column: 12, scope: !5142)
!5188 = !DILocation(line: 299, column: 21, scope: !5142)
!5189 = !DILocation(line: 299, column: 34, scope: !5142)
!5190 = !DILocation(line: 299, column: 2, scope: !5142)
!5191 = !DILocation(line: 300, column: 12, scope: !5142)
!5192 = !DILocation(line: 300, column: 21, scope: !5142)
!5193 = !DILocation(line: 300, column: 34, scope: !5142)
!5194 = !DILocation(line: 300, column: 2, scope: !5142)
!5195 = !DILocation(line: 301, column: 12, scope: !5142)
!5196 = !DILocation(line: 301, column: 21, scope: !5142)
!5197 = !DILocation(line: 301, column: 34, scope: !5142)
!5198 = !DILocation(line: 301, column: 2, scope: !5142)
!5199 = !DILocation(line: 304, column: 9, scope: !5142)
!5200 = !DILocation(line: 304, column: 18, scope: !5142)
!5201 = !DILocation(line: 304, column: 37, scope: !5142)
!5202 = !DILocation(line: 304, column: 58, scope: !5142)
!5203 = !DILocation(line: 305, column: 27, scope: !5142)
!5204 = !DILocation(line: 304, column: 7, scope: !5142)
!5205 = !DILocation(line: 306, column: 9, scope: !5142)
!5206 = !DILocation(line: 306, column: 15, scope: !5142)
!5207 = !DILocation(line: 306, column: 24, scope: !5142)
!5208 = !DILocation(line: 306, column: 37, scope: !5142)
!5209 = !DILocation(line: 306, column: 2, scope: !5142)
!5210 = !DILocation(line: 309, column: 2, scope: !5142)
!5211 = !DILocation(line: 309, column: 2, scope: !5152)
!5212 = !DILocalVariable(name: "__dummy", scope: !5213, file: !3, line: 309, type: !138)
!5213 = distinct !DILexicalBlock(scope: !5151, file: !3, line: 309, column: 2)
!5214 = !DILocation(line: 309, column: 2, scope: !5213)
!5215 = !DILocalVariable(name: "__dummy2", scope: !5213, file: !3, line: 309, type: !138)
!5216 = !DILocation(line: 309, column: 2, scope: !5151)
!5217 = !DILocation(line: 309, column: 2, scope: !5150)
!5218 = !DILocation(line: 309, column: 2, scope: !5219)
!5219 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 309, column: 2)
!5220 = !DILocalVariable(name: "__dummy", scope: !5221, file: !3, line: 309, type: !138)
!5221 = distinct !DILexicalBlock(scope: !5222, file: !3, line: 309, column: 2)
!5222 = distinct !DILexicalBlock(scope: !5219, file: !3, line: 309, column: 2)
!5223 = !DILocation(line: 309, column: 2, scope: !5221)
!5224 = !DILocalVariable(name: "__dummy2", scope: !5221, file: !3, line: 309, type: !138)
!5225 = !DILocation(line: 309, column: 2, scope: !5222)
!5226 = !DILocation(line: 309, column: 2, scope: !5149)
!5227 = !{i32 -2141592846}
!5228 = !DILocation(line: 309, column: 2, scope: !5148)
!5229 = !DILocation(line: 329, column: 10, scope: !4709, inlinedAt: !5147)
!5230 = !DILocation(line: 329, column: 16, scope: !4709, inlinedAt: !5147)
!5231 = !DILocation(line: 311, column: 9, scope: !5142)
!5232 = !DILocation(line: 311, column: 18, scope: !5142)
!5233 = !DILocation(line: 311, column: 31, scope: !5142)
!5234 = !DILocation(line: 310, column: 2, scope: !5142)
!5235 = !DILocation(line: 312, column: 26, scope: !5142)
!5236 = !DILocation(line: 312, column: 31, scope: !5142)
!5237 = !DILocation(line: 312, column: 41, scope: !5142)
!5238 = !DILocation(line: 409, column: 2, scope: !4847, inlinedAt: !5144)
!5239 = !DILocation(line: 409, column: 2, scope: !4852, inlinedAt: !5144)
!5240 = !DILocation(line: 409, column: 2, scope: !4853, inlinedAt: !5144)
!5241 = !DILocation(line: 409, column: 2, scope: !4860, inlinedAt: !5144)
!5242 = !DILocation(line: 409, column: 2, scope: !4863, inlinedAt: !5144)
!5243 = !DILocation(line: 314, column: 6, scope: !5244)
!5244 = distinct !DILexicalBlock(scope: !5142, file: !3, line: 314, column: 6)
!5245 = !DILocation(line: 314, column: 11, scope: !5244)
!5246 = !DILocation(line: 314, column: 20, scope: !5244)
!5247 = !DILocation(line: 314, column: 6, scope: !5142)
!5248 = !DILocation(line: 315, column: 24, scope: !5244)
!5249 = !DILocation(line: 315, column: 29, scope: !5244)
!5250 = !DILocation(line: 315, column: 3, scope: !5244)
!5251 = !DILocation(line: 315, column: 12, scope: !5244)
!5252 = !DILocation(line: 315, column: 22, scope: !5244)
!5253 = !DILocation(line: 317, column: 3, scope: !5244)
!5254 = !DILocation(line: 317, column: 12, scope: !5244)
!5255 = !DILocation(line: 317, column: 22, scope: !5244)
!5256 = !DILocation(line: 320, column: 43, scope: !5142)
!5257 = !DILocation(line: 320, column: 48, scope: !5142)
!5258 = !DILocation(line: 320, column: 53, scope: !5142)
!5259 = !DILocation(line: 320, column: 2, scope: !5142)
!5260 = !DILocation(line: 323, column: 23, scope: !5142)
!5261 = !DILocation(line: 323, column: 28, scope: !5142)
!5262 = !DILocation(line: 323, column: 33, scope: !5142)
!5263 = !DILocation(line: 323, column: 2, scope: !5142)
!5264 = !DILocation(line: 325, column: 24, scope: !5142)
!5265 = !DILocation(line: 325, column: 29, scope: !5142)
!5266 = !DILocation(line: 325, column: 34, scope: !5142)
!5267 = !DILocation(line: 325, column: 2, scope: !5142)
!5268 = !DILocation(line: 327, column: 2, scope: !5142)
!5269 = !DILocation(line: 328, column: 1, scope: !5142)
!5270 = distinct !DISubprogram(name: "gsc_hpdi_cmd_test", scope: !3, file: !3, line: 349, type: !3937, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!5271 = !DILocalVariable(name: "dev", arg: 1, scope: !5270, file: !3, line: 349, type: !193)
!5272 = !DILocation(line: 349, column: 52, scope: !5270)
!5273 = !DILocalVariable(name: "s", arg: 2, scope: !5270, file: !3, line: 350, type: !3819)
!5274 = !DILocation(line: 350, column: 34, scope: !5270)
!5275 = !DILocalVariable(name: "cmd", arg: 3, scope: !5270, file: !3, line: 351, type: !3939)
!5276 = !DILocation(line: 351, column: 28, scope: !5270)
!5277 = !DILocalVariable(name: "err", scope: !5270, file: !3, line: 353, type: !192)
!5278 = !DILocation(line: 353, column: 6, scope: !5270)
!5279 = !DILocation(line: 355, column: 6, scope: !5280)
!5280 = distinct !DILexicalBlock(scope: !5270, file: !3, line: 355, column: 6)
!5281 = !DILocation(line: 355, column: 9, scope: !5280)
!5282 = !DILocation(line: 355, column: 6, scope: !5270)
!5283 = !DILocation(line: 356, column: 3, scope: !5280)
!5284 = !DILocation(line: 360, column: 35, scope: !5270)
!5285 = !DILocation(line: 360, column: 40, scope: !5270)
!5286 = !DILocation(line: 360, column: 9, scope: !5270)
!5287 = !DILocation(line: 360, column: 6, scope: !5270)
!5288 = !DILocation(line: 361, column: 35, scope: !5270)
!5289 = !DILocation(line: 361, column: 40, scope: !5270)
!5290 = !DILocation(line: 361, column: 9, scope: !5270)
!5291 = !DILocation(line: 361, column: 6, scope: !5270)
!5292 = !DILocation(line: 362, column: 35, scope: !5270)
!5293 = !DILocation(line: 362, column: 40, scope: !5270)
!5294 = !DILocation(line: 362, column: 9, scope: !5270)
!5295 = !DILocation(line: 362, column: 6, scope: !5270)
!5296 = !DILocation(line: 363, column: 35, scope: !5270)
!5297 = !DILocation(line: 363, column: 40, scope: !5270)
!5298 = !DILocation(line: 363, column: 9, scope: !5270)
!5299 = !DILocation(line: 363, column: 6, scope: !5270)
!5300 = !DILocation(line: 364, column: 35, scope: !5270)
!5301 = !DILocation(line: 364, column: 40, scope: !5270)
!5302 = !DILocation(line: 364, column: 9, scope: !5270)
!5303 = !DILocation(line: 364, column: 6, scope: !5270)
!5304 = !DILocation(line: 366, column: 6, scope: !5305)
!5305 = distinct !DILexicalBlock(scope: !5270, file: !3, line: 366, column: 6)
!5306 = !DILocation(line: 366, column: 6, scope: !5270)
!5307 = !DILocation(line: 367, column: 3, scope: !5305)
!5308 = !DILocation(line: 371, column: 40, scope: !5270)
!5309 = !DILocation(line: 371, column: 45, scope: !5270)
!5310 = !DILocation(line: 371, column: 9, scope: !5270)
!5311 = !DILocation(line: 371, column: 6, scope: !5270)
!5312 = !DILocation(line: 375, column: 6, scope: !5313)
!5313 = distinct !DILexicalBlock(scope: !5270, file: !3, line: 375, column: 6)
!5314 = !DILocation(line: 375, column: 6, scope: !5270)
!5315 = !DILocation(line: 376, column: 3, scope: !5313)
!5316 = !DILocation(line: 380, column: 38, scope: !5270)
!5317 = !DILocation(line: 380, column: 43, scope: !5270)
!5318 = !DILocation(line: 380, column: 9, scope: !5270)
!5319 = !DILocation(line: 380, column: 6, scope: !5270)
!5320 = !DILocation(line: 382, column: 7, scope: !5321)
!5321 = distinct !DILexicalBlock(scope: !5270, file: !3, line: 382, column: 6)
!5322 = !DILocation(line: 382, column: 12, scope: !5321)
!5323 = !DILocation(line: 382, column: 25, scope: !5321)
!5324 = !DILocation(line: 382, column: 29, scope: !5321)
!5325 = !DILocation(line: 382, column: 34, scope: !5321)
!5326 = !DILocation(line: 382, column: 6, scope: !5270)
!5327 = !DILocation(line: 383, column: 3, scope: !5328)
!5328 = distinct !DILexicalBlock(scope: !5321, file: !3, line: 382, column: 44)
!5329 = !DILocation(line: 383, column: 8, scope: !5328)
!5330 = !DILocation(line: 383, column: 21, scope: !5328)
!5331 = !DILocation(line: 384, column: 7, scope: !5328)
!5332 = !DILocation(line: 385, column: 2, scope: !5328)
!5333 = !DILocation(line: 386, column: 38, scope: !5270)
!5334 = !DILocation(line: 386, column: 43, scope: !5270)
!5335 = !DILocation(line: 387, column: 9, scope: !5270)
!5336 = !DILocation(line: 387, column: 14, scope: !5270)
!5337 = !DILocation(line: 386, column: 9, scope: !5270)
!5338 = !DILocation(line: 386, column: 6, scope: !5270)
!5339 = !DILocation(line: 389, column: 6, scope: !5340)
!5340 = distinct !DILexicalBlock(scope: !5270, file: !3, line: 389, column: 6)
!5341 = !DILocation(line: 389, column: 11, scope: !5340)
!5342 = !DILocation(line: 389, column: 20, scope: !5340)
!5343 = !DILocation(line: 389, column: 6, scope: !5270)
!5344 = !DILocation(line: 390, column: 40, scope: !5340)
!5345 = !DILocation(line: 390, column: 45, scope: !5340)
!5346 = !DILocation(line: 390, column: 10, scope: !5340)
!5347 = !DILocation(line: 390, column: 7, scope: !5340)
!5348 = !DILocation(line: 390, column: 3, scope: !5340)
!5349 = !DILocation(line: 392, column: 39, scope: !5340)
!5350 = !DILocation(line: 392, column: 44, scope: !5340)
!5351 = !DILocation(line: 392, column: 10, scope: !5340)
!5352 = !DILocation(line: 392, column: 7, scope: !5340)
!5353 = !DILocation(line: 394, column: 6, scope: !5354)
!5354 = distinct !DILexicalBlock(scope: !5270, file: !3, line: 394, column: 6)
!5355 = !DILocation(line: 394, column: 6, scope: !5270)
!5356 = !DILocation(line: 395, column: 3, scope: !5354)
!5357 = !DILocation(line: 401, column: 6, scope: !5358)
!5358 = distinct !DILexicalBlock(scope: !5270, file: !3, line: 401, column: 6)
!5359 = !DILocation(line: 401, column: 11, scope: !5358)
!5360 = !DILocation(line: 401, column: 20, scope: !5358)
!5361 = !DILocation(line: 401, column: 23, scope: !5358)
!5362 = !DILocation(line: 401, column: 28, scope: !5358)
!5363 = !DILocation(line: 401, column: 41, scope: !5358)
!5364 = !DILocation(line: 401, column: 6, scope: !5270)
!5365 = !DILocation(line: 402, column: 34, scope: !5358)
!5366 = !DILocation(line: 402, column: 39, scope: !5358)
!5367 = !DILocation(line: 402, column: 42, scope: !5358)
!5368 = !DILocation(line: 402, column: 10, scope: !5358)
!5369 = !DILocation(line: 402, column: 7, scope: !5358)
!5370 = !DILocation(line: 402, column: 3, scope: !5358)
!5371 = !DILocation(line: 404, column: 6, scope: !5372)
!5372 = distinct !DILexicalBlock(scope: !5270, file: !3, line: 404, column: 6)
!5373 = !DILocation(line: 404, column: 6, scope: !5270)
!5374 = !DILocation(line: 405, column: 3, scope: !5372)
!5375 = !DILocation(line: 407, column: 2, scope: !5270)
!5376 = !DILocation(line: 408, column: 1, scope: !5270)
!5377 = distinct !DISubprogram(name: "gsc_hpdi_cancel", scope: !3, file: !3, line: 264, type: !3933, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!5378 = !DILocalVariable(name: "dev", arg: 1, scope: !5377, file: !3, line: 264, type: !193)
!5379 = !DILocation(line: 264, column: 50, scope: !5377)
!5380 = !DILocalVariable(name: "s", arg: 2, scope: !5377, file: !3, line: 265, type: !3819)
!5381 = !DILocation(line: 265, column: 32, scope: !5377)
!5382 = !DILocation(line: 267, column: 12, scope: !5377)
!5383 = !DILocation(line: 267, column: 17, scope: !5377)
!5384 = !DILocation(line: 267, column: 22, scope: !5377)
!5385 = !DILocation(line: 267, column: 2, scope: !5377)
!5386 = !DILocation(line: 268, column: 12, scope: !5377)
!5387 = !DILocation(line: 268, column: 17, scope: !5377)
!5388 = !DILocation(line: 268, column: 22, scope: !5377)
!5389 = !DILocation(line: 268, column: 2, scope: !5377)
!5390 = !DILocation(line: 270, column: 21, scope: !5377)
!5391 = !DILocation(line: 270, column: 2, scope: !5377)
!5392 = !DILocation(line: 272, column: 2, scope: !5377)
!5393 = distinct !DISubprogram(name: "gsc_hpdi_init", scope: !3, file: !3, line: 505, type: !3961, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!5394 = !DILocalVariable(name: "dev", arg: 1, scope: !5393, file: !3, line: 505, type: !193)
!5395 = !DILocation(line: 505, column: 48, scope: !5393)
!5396 = !DILocalVariable(name: "devpriv", scope: !5393, file: !3, line: 507, type: !4292)
!5397 = !DILocation(line: 507, column: 23, scope: !5393)
!5398 = !DILocation(line: 507, column: 33, scope: !5393)
!5399 = !DILocation(line: 507, column: 38, scope: !5393)
!5400 = !DILocalVariable(name: "plx_intcsr_bits", scope: !5393, file: !3, line: 508, type: !407)
!5401 = !DILocation(line: 508, column: 6, scope: !5393)
!5402 = !DILocation(line: 511, column: 26, scope: !5393)
!5403 = !DILocation(line: 511, column: 31, scope: !5393)
!5404 = !DILocation(line: 511, column: 36, scope: !5393)
!5405 = !DILocation(line: 511, column: 2, scope: !5393)
!5406 = !DILocation(line: 512, column: 2, scope: !5393)
!5407 = !DILocation(line: 515, column: 9, scope: !5393)
!5408 = !DILocation(line: 515, column: 14, scope: !5393)
!5409 = !DILocation(line: 515, column: 19, scope: !5393)
!5410 = !DILocation(line: 514, column: 2, scope: !5393)
!5411 = !DILocation(line: 517, column: 9, scope: !5393)
!5412 = !DILocation(line: 517, column: 14, scope: !5393)
!5413 = !DILocation(line: 517, column: 19, scope: !5393)
!5414 = !DILocation(line: 516, column: 2, scope: !5393)
!5415 = !DILocation(line: 519, column: 32, scope: !5393)
!5416 = !DILocation(line: 519, column: 37, scope: !5393)
!5417 = !DILocation(line: 519, column: 42, scope: !5393)
!5418 = !DILocation(line: 519, column: 26, scope: !5393)
!5419 = !DILocation(line: 519, column: 62, scope: !5393)
!5420 = !DILocation(line: 519, column: 2, scope: !5393)
!5421 = !DILocation(line: 519, column: 11, scope: !5393)
!5422 = !DILocation(line: 519, column: 24, scope: !5393)
!5423 = !DILocation(line: 521, column: 32, scope: !5393)
!5424 = !DILocation(line: 521, column: 37, scope: !5393)
!5425 = !DILocation(line: 521, column: 42, scope: !5393)
!5426 = !DILocation(line: 521, column: 26, scope: !5393)
!5427 = !DILocation(line: 521, column: 62, scope: !5393)
!5428 = !DILocation(line: 521, column: 2, scope: !5393)
!5429 = !DILocation(line: 521, column: 11, scope: !5393)
!5430 = !DILocation(line: 521, column: 24, scope: !5393)
!5431 = !DILocation(line: 524, column: 12, scope: !5393)
!5432 = !DILocation(line: 524, column: 17, scope: !5393)
!5433 = !DILocation(line: 524, column: 22, scope: !5393)
!5434 = !DILocation(line: 524, column: 2, scope: !5393)
!5435 = !DILocation(line: 527, column: 18, scope: !5393)
!5436 = !DILocation(line: 531, column: 9, scope: !5393)
!5437 = !DILocation(line: 531, column: 26, scope: !5393)
!5438 = !DILocation(line: 531, column: 35, scope: !5393)
!5439 = !DILocation(line: 531, column: 48, scope: !5393)
!5440 = !DILocation(line: 531, column: 2, scope: !5393)
!5441 = !DILocation(line: 533, column: 2, scope: !5393)
!5442 = distinct !DISubprogram(name: "gsc_hpdi_abort_dma", scope: !3, file: !3, line: 251, type: !5443, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!5443 = !DISubroutineType(types: !5444)
!5444 = !{null, !193, !7}
!5445 = !DILocation(line: 407, column: 64, scope: !4700, inlinedAt: !5446)
!5446 = distinct !DILocation(line: 261, column: 2, scope: !5442)
!5447 = !DILocation(line: 407, column: 84, scope: !4700, inlinedAt: !5446)
!5448 = !DILocation(line: 327, column: 67, scope: !4709, inlinedAt: !5449)
!5449 = distinct !DILocation(line: 257, column: 2, scope: !5450)
!5450 = distinct !DILexicalBlock(scope: !5451, file: !3, line: 257, column: 2)
!5451 = distinct !DILexicalBlock(scope: !5452, file: !3, line: 257, column: 2)
!5452 = distinct !DILexicalBlock(scope: !5453, file: !3, line: 257, column: 2)
!5453 = distinct !DILexicalBlock(scope: !5454, file: !3, line: 257, column: 2)
!5454 = distinct !DILexicalBlock(scope: !5442, file: !3, line: 257, column: 2)
!5455 = !DILocalVariable(name: "dev", arg: 1, scope: !5442, file: !3, line: 251, type: !193)
!5456 = !DILocation(line: 251, column: 54, scope: !5442)
!5457 = !DILocalVariable(name: "channel", arg: 2, scope: !5442, file: !3, line: 251, type: !7)
!5458 = !DILocation(line: 251, column: 72, scope: !5442)
!5459 = !DILocalVariable(name: "devpriv", scope: !5442, file: !3, line: 253, type: !4292)
!5460 = !DILocation(line: 253, column: 23, scope: !5442)
!5461 = !DILocation(line: 253, column: 33, scope: !5442)
!5462 = !DILocation(line: 253, column: 38, scope: !5442)
!5463 = !DILocalVariable(name: "flags", scope: !5442, file: !3, line: 254, type: !138)
!5464 = !DILocation(line: 254, column: 16, scope: !5442)
!5465 = !DILocation(line: 257, column: 2, scope: !5442)
!5466 = !DILocation(line: 257, column: 2, scope: !5454)
!5467 = !DILocalVariable(name: "__dummy", scope: !5468, file: !3, line: 257, type: !138)
!5468 = distinct !DILexicalBlock(scope: !5453, file: !3, line: 257, column: 2)
!5469 = !DILocation(line: 257, column: 2, scope: !5468)
!5470 = !DILocalVariable(name: "__dummy2", scope: !5468, file: !3, line: 257, type: !138)
!5471 = !DILocation(line: 257, column: 2, scope: !5453)
!5472 = !DILocation(line: 257, column: 2, scope: !5452)
!5473 = !DILocation(line: 257, column: 2, scope: !5474)
!5474 = distinct !DILexicalBlock(scope: !5452, file: !3, line: 257, column: 2)
!5475 = !DILocalVariable(name: "__dummy", scope: !5476, file: !3, line: 257, type: !138)
!5476 = distinct !DILexicalBlock(scope: !5477, file: !3, line: 257, column: 2)
!5477 = distinct !DILexicalBlock(scope: !5474, file: !3, line: 257, column: 2)
!5478 = !DILocation(line: 257, column: 2, scope: !5476)
!5479 = !DILocalVariable(name: "__dummy2", scope: !5476, file: !3, line: 257, type: !138)
!5480 = !DILocation(line: 257, column: 2, scope: !5477)
!5481 = !DILocation(line: 257, column: 2, scope: !5451)
!5482 = !{i32 -2141594309}
!5483 = !DILocation(line: 257, column: 2, scope: !5450)
!5484 = !DILocation(line: 329, column: 10, scope: !4709, inlinedAt: !5449)
!5485 = !DILocation(line: 329, column: 16, scope: !4709, inlinedAt: !5449)
!5486 = !DILocation(line: 259, column: 20, scope: !5442)
!5487 = !DILocation(line: 259, column: 29, scope: !5442)
!5488 = !DILocation(line: 259, column: 43, scope: !5442)
!5489 = !DILocation(line: 259, column: 2, scope: !5442)
!5490 = !DILocation(line: 261, column: 26, scope: !5442)
!5491 = !DILocation(line: 261, column: 31, scope: !5442)
!5492 = !DILocation(line: 261, column: 41, scope: !5442)
!5493 = !DILocation(line: 409, column: 2, scope: !4847, inlinedAt: !5446)
!5494 = !DILocation(line: 409, column: 2, scope: !4852, inlinedAt: !5446)
!5495 = !DILocation(line: 409, column: 2, scope: !4853, inlinedAt: !5446)
!5496 = !DILocation(line: 409, column: 2, scope: !4860, inlinedAt: !5446)
!5497 = !DILocation(line: 409, column: 2, scope: !4863, inlinedAt: !5446)
!5498 = !DILocation(line: 262, column: 1, scope: !5442)
!5499 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !5500, file: !5500, line: 666, type: !5501, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!5500 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!5501 = !DISubroutineType(types: !5502)
!5502 = !{!138}
!5503 = !DILocalVariable(name: "f", scope: !5499, file: !5500, line: 668, type: !138)
!5504 = !DILocation(line: 668, column: 16, scope: !5499)
!5505 = !DILocation(line: 670, column: 6, scope: !5499)
!5506 = !DILocation(line: 670, column: 4, scope: !5499)
!5507 = !DILocation(line: 671, column: 2, scope: !5499)
!5508 = !DILocation(line: 672, column: 9, scope: !5499)
!5509 = !DILocation(line: 672, column: 2, scope: !5499)
!5510 = distinct !DISubprogram(name: "plx9080_abort_dma", scope: !4303, file: !4303, line: 620, type: !5511, scopeLine: 621, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!5511 = !DISubroutineType(types: !5512)
!5512 = !{!192, !202, !7}
!5513 = !DILocalVariable(name: "iobase", arg: 1, scope: !5510, file: !4303, line: 620, type: !202)
!5514 = !DILocation(line: 620, column: 51, scope: !5510)
!5515 = !DILocalVariable(name: "channel", arg: 2, scope: !5510, file: !4303, line: 620, type: !7)
!5516 = !DILocation(line: 620, column: 72, scope: !5510)
!5517 = !DILocalVariable(name: "dma_cs_addr", scope: !5510, file: !4303, line: 622, type: !202)
!5518 = !DILocation(line: 622, column: 16, scope: !5510)
!5519 = !DILocalVariable(name: "dma_status", scope: !5510, file: !4303, line: 623, type: !1341)
!5520 = !DILocation(line: 623, column: 5, scope: !5510)
!5521 = !DILocalVariable(name: "timeout", scope: !5510, file: !4303, line: 624, type: !5522)
!5522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!5523 = !DILocation(line: 624, column: 12, scope: !5510)
!5524 = !DILocalVariable(name: "i", scope: !5510, file: !4303, line: 625, type: !7)
!5525 = !DILocation(line: 625, column: 15, scope: !5510)
!5526 = !DILocation(line: 627, column: 16, scope: !5510)
!5527 = !DILocation(line: 627, column: 25, scope: !5510)
!5528 = !DILocation(line: 627, column: 23, scope: !5510)
!5529 = !DILocation(line: 627, column: 14, scope: !5510)
!5530 = !DILocation(line: 630, column: 21, scope: !5510)
!5531 = !DILocation(line: 630, column: 15, scope: !5510)
!5532 = !DILocation(line: 630, column: 13, scope: !5510)
!5533 = !DILocation(line: 631, column: 7, scope: !5534)
!5534 = distinct !DILexicalBlock(scope: !5510, file: !4303, line: 631, column: 6)
!5535 = !DILocation(line: 631, column: 18, scope: !5534)
!5536 = !DILocation(line: 631, column: 39, scope: !5534)
!5537 = !DILocation(line: 631, column: 6, scope: !5510)
!5538 = !DILocation(line: 632, column: 3, scope: !5534)
!5539 = !DILocation(line: 635, column: 9, scope: !5540)
!5540 = distinct !DILexicalBlock(scope: !5510, file: !4303, line: 635, column: 2)
!5541 = !DILocation(line: 635, column: 7, scope: !5540)
!5542 = !DILocation(line: 635, column: 15, scope: !5543)
!5543 = distinct !DILexicalBlock(scope: !5540, file: !4303, line: 635, column: 2)
!5544 = !DILocation(line: 635, column: 26, scope: !5543)
!5545 = !DILocation(line: 635, column: 45, scope: !5543)
!5546 = !DILocation(line: 635, column: 48, scope: !5543)
!5547 = !DILocation(line: 635, column: 50, scope: !5543)
!5548 = !DILocation(line: 0, scope: !5543)
!5549 = !DILocation(line: 635, column: 2, scope: !5540)
!5550 = !DILocation(line: 636, column: 3, scope: !5551)
!5551 = distinct !DILexicalBlock(scope: !5552, file: !4303, line: 636, column: 3)
!5552 = distinct !DILexicalBlock(scope: !5553, file: !4303, line: 636, column: 3)
!5553 = distinct !DILexicalBlock(scope: !5554, file: !4303, line: 636, column: 3)
!5554 = distinct !DILexicalBlock(scope: !5555, file: !4303, line: 636, column: 3)
!5555 = distinct !DILexicalBlock(scope: !5543, file: !4303, line: 635, column: 66)
!5556 = !DILocation(line: 637, column: 22, scope: !5555)
!5557 = !DILocation(line: 637, column: 16, scope: !5555)
!5558 = !DILocation(line: 637, column: 14, scope: !5555)
!5559 = !DILocation(line: 638, column: 2, scope: !5555)
!5560 = !DILocation(line: 635, column: 62, scope: !5543)
!5561 = !DILocation(line: 635, column: 2, scope: !5543)
!5562 = distinct !{!5562, !5549, !5563}
!5563 = !DILocation(line: 638, column: 2, scope: !5540)
!5564 = !DILocation(line: 639, column: 6, scope: !5565)
!5565 = distinct !DILexicalBlock(scope: !5510, file: !4303, line: 639, column: 6)
!5566 = !DILocation(line: 639, column: 8, scope: !5565)
!5567 = !DILocation(line: 639, column: 6, scope: !5510)
!5568 = !DILocation(line: 640, column: 3, scope: !5565)
!5569 = !DILocation(line: 643, column: 27, scope: !5510)
!5570 = !DILocation(line: 643, column: 2, scope: !5510)
!5571 = !DILocation(line: 645, column: 21, scope: !5510)
!5572 = !DILocation(line: 645, column: 15, scope: !5510)
!5573 = !DILocation(line: 645, column: 13, scope: !5510)
!5574 = !DILocation(line: 646, column: 9, scope: !5575)
!5575 = distinct !DILexicalBlock(scope: !5510, file: !4303, line: 646, column: 2)
!5576 = !DILocation(line: 646, column: 7, scope: !5575)
!5577 = !DILocation(line: 646, column: 15, scope: !5578)
!5578 = distinct !DILexicalBlock(scope: !5575, file: !4303, line: 646, column: 2)
!5579 = !DILocation(line: 646, column: 26, scope: !5578)
!5580 = !DILocation(line: 646, column: 45, scope: !5578)
!5581 = !DILocation(line: 646, column: 50, scope: !5578)
!5582 = !DILocation(line: 646, column: 53, scope: !5578)
!5583 = !DILocation(line: 646, column: 55, scope: !5578)
!5584 = !DILocation(line: 0, scope: !5578)
!5585 = !DILocation(line: 646, column: 2, scope: !5575)
!5586 = !DILocation(line: 647, column: 3, scope: !5587)
!5587 = distinct !DILexicalBlock(scope: !5588, file: !4303, line: 647, column: 3)
!5588 = distinct !DILexicalBlock(scope: !5589, file: !4303, line: 647, column: 3)
!5589 = distinct !DILexicalBlock(scope: !5590, file: !4303, line: 647, column: 3)
!5590 = distinct !DILexicalBlock(scope: !5591, file: !4303, line: 647, column: 3)
!5591 = distinct !DILexicalBlock(scope: !5578, file: !4303, line: 646, column: 71)
!5592 = !DILocation(line: 648, column: 22, scope: !5591)
!5593 = !DILocation(line: 648, column: 16, scope: !5591)
!5594 = !DILocation(line: 648, column: 14, scope: !5591)
!5595 = !DILocation(line: 649, column: 2, scope: !5591)
!5596 = !DILocation(line: 646, column: 67, scope: !5578)
!5597 = !DILocation(line: 646, column: 2, scope: !5578)
!5598 = distinct !{!5598, !5585, !5599}
!5599 = !DILocation(line: 649, column: 2, scope: !5575)
!5600 = !DILocation(line: 650, column: 6, scope: !5601)
!5601 = distinct !DILexicalBlock(scope: !5510, file: !4303, line: 650, column: 6)
!5602 = !DILocation(line: 650, column: 8, scope: !5601)
!5603 = !DILocation(line: 650, column: 6, scope: !5510)
!5604 = !DILocation(line: 651, column: 3, scope: !5601)
!5605 = !DILocation(line: 653, column: 2, scope: !5510)
!5606 = !DILocation(line: 654, column: 1, scope: !5510)
!5607 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !5500, file: !5500, line: 646, type: !5501, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!5608 = !DILocalVariable(name: "__ret", scope: !5609, file: !5500, line: 648, type: !138)
!5609 = distinct !DILexicalBlock(scope: !5607, file: !5500, line: 648, column: 9)
!5610 = !DILocation(line: 648, column: 9, scope: !5609)
!5611 = !DILocalVariable(name: "__edi", scope: !5609, file: !5500, line: 648, type: !138)
!5612 = !DILocalVariable(name: "__esi", scope: !5609, file: !5500, line: 648, type: !138)
!5613 = !DILocalVariable(name: "__edx", scope: !5609, file: !5500, line: 648, type: !138)
!5614 = !DILocalVariable(name: "__ecx", scope: !5609, file: !5500, line: 648, type: !138)
!5615 = !DILocalVariable(name: "__eax", scope: !5609, file: !5500, line: 648, type: !138)
!5616 = !DILocation(line: 648, column: 9, scope: !5617)
!5617 = distinct !DILexicalBlock(scope: !5618, file: !5500, line: 648, column: 9)
!5618 = distinct !DILexicalBlock(scope: !5609, file: !5500, line: 648, column: 9)
!5619 = !{i32 -2145770953, i32 -2145768638, i32 -2145768404, i32 -2145768353, i32 -2145768325, i32 -2145768300, i32 -2145768616, i32 -2145768603, i32 -2145768165, i32 -2145768046, i32 -2145768511, i32 -2145768484, i32 -2145768456, i32 -2145768426}
!5620 = !DILocalVariable(name: "__mask", scope: !5621, file: !5500, line: 648, type: !138)
!5621 = distinct !DILexicalBlock(scope: !5617, file: !5500, line: 648, column: 9)
!5622 = !DILocation(line: 648, column: 9, scope: !5621)
!5623 = !DILocation(line: 648, column: 9, scope: !5618)
!5624 = !DILocation(line: 648, column: 2, scope: !5607)
!5625 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !5500, file: !5500, line: 656, type: !152, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!5626 = !DILocalVariable(name: "__edi", scope: !5627, file: !5500, line: 658, type: !138)
!5627 = distinct !DILexicalBlock(scope: !5625, file: !5500, line: 658, column: 2)
!5628 = !DILocation(line: 658, column: 2, scope: !5627)
!5629 = !DILocalVariable(name: "__esi", scope: !5627, file: !5500, line: 658, type: !138)
!5630 = !DILocalVariable(name: "__edx", scope: !5627, file: !5500, line: 658, type: !138)
!5631 = !DILocalVariable(name: "__ecx", scope: !5627, file: !5500, line: 658, type: !138)
!5632 = !DILocalVariable(name: "__eax", scope: !5627, file: !5500, line: 658, type: !138)
!5633 = !{i32 -2145763859, i32 -2145763127, i32 -2145762893, i32 -2145762842, i32 -2145762814, i32 -2145762789, i32 -2145763105, i32 -2145763092, i32 -2145762654, i32 -2145762535, i32 -2145763000, i32 -2145762973, i32 -2145762945, i32 -2145762915}
!5634 = !DILocation(line: 659, column: 1, scope: !5625)
!5635 = distinct !DISubprogram(name: "readb", scope: !4549, file: !4549, line: 57, type: !5636, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!5636 = !DISubroutineType(types: !5637)
!5637 = !{!141, !5638}
!5638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5639, size: 64)
!5639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4553)
!5640 = !DILocalVariable(name: "addr", arg: 1, scope: !5635, file: !4549, line: 57, type: !5638)
!5641 = !DILocation(line: 57, column: 1, scope: !5635)
!5642 = !DILocalVariable(name: "ret", scope: !5635, file: !4549, line: 57, type: !141)
!5643 = !{i32 -2143410655}
!5644 = distinct !DISubprogram(name: "writeb", scope: !4549, file: !4549, line: 65, type: !5645, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!5645 = !DISubroutineType(types: !5646)
!5646 = !{null, !141, !4552}
!5647 = !DILocalVariable(name: "val", arg: 1, scope: !5644, file: !4549, line: 65, type: !141)
!5648 = !DILocation(line: 65, column: 1, scope: !5644)
!5649 = !DILocalVariable(name: "addr", arg: 2, scope: !5644, file: !4549, line: 65, type: !4552)
!5650 = !{i32 -2143408201}
!5651 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !5500, file: !5500, line: 651, type: !5652, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!5652 = !DISubroutineType(types: !5653)
!5653 = !{null, !138}
!5654 = !DILocalVariable(name: "f", arg: 1, scope: !5651, file: !5500, line: 651, type: !138)
!5655 = !DILocation(line: 651, column: 65, scope: !5651)
!5656 = !DILocalVariable(name: "__edi", scope: !5657, file: !5500, line: 653, type: !138)
!5657 = distinct !DILexicalBlock(scope: !5651, file: !5500, line: 653, column: 2)
!5658 = !DILocation(line: 653, column: 2, scope: !5657)
!5659 = !DILocalVariable(name: "__esi", scope: !5657, file: !5500, line: 653, type: !138)
!5660 = !DILocalVariable(name: "__edx", scope: !5657, file: !5500, line: 653, type: !138)
!5661 = !DILocalVariable(name: "__ecx", scope: !5657, file: !5500, line: 653, type: !138)
!5662 = !DILocalVariable(name: "__eax", scope: !5657, file: !5500, line: 653, type: !138)
!5663 = !{i32 -2145766486, i32 -2145765736, i32 -2145765502, i32 -2145765451, i32 -2145765423, i32 -2145765398, i32 -2145765714, i32 -2145765701, i32 -2145765263, i32 -2145765144, i32 -2145765609, i32 -2145765582, i32 -2145765554, i32 -2145765524}
!5664 = !DILocation(line: 654, column: 1, scope: !5651)
!5665 = distinct !DISubprogram(name: "readl", scope: !4549, file: !4549, line: 59, type: !5666, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!5666 = !DISubroutineType(types: !5667)
!5667 = !{!7, !5638}
!5668 = !DILocalVariable(name: "addr", arg: 1, scope: !5665, file: !4549, line: 59, type: !5638)
!5669 = !DILocation(line: 59, column: 1, scope: !5665)
!5670 = !DILocalVariable(name: "ret", scope: !5665, file: !4549, line: 59, type: !7)
!5671 = !{i32 -2143409824}
!5672 = distinct !DISubprogram(name: "gsc_hpdi_drain_dma", scope: !3, file: !3, line: 141, type: !5443, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!5673 = !DILocalVariable(name: "dev", arg: 1, scope: !5672, file: !3, line: 141, type: !193)
!5674 = !DILocation(line: 141, column: 54, scope: !5672)
!5675 = !DILocalVariable(name: "channel", arg: 2, scope: !5672, file: !3, line: 141, type: !7)
!5676 = !DILocation(line: 141, column: 72, scope: !5672)
!5677 = !DILocalVariable(name: "devpriv", scope: !5672, file: !3, line: 143, type: !4292)
!5678 = !DILocation(line: 143, column: 23, scope: !5672)
!5679 = !DILocation(line: 143, column: 33, scope: !5672)
!5680 = !DILocation(line: 143, column: 38, scope: !5672)
!5681 = !DILocalVariable(name: "s", scope: !5672, file: !3, line: 144, type: !3819)
!5682 = !DILocation(line: 144, column: 27, scope: !5672)
!5683 = !DILocation(line: 144, column: 31, scope: !5672)
!5684 = !DILocation(line: 144, column: 36, scope: !5672)
!5685 = !DILocalVariable(name: "cmd", scope: !5672, file: !3, line: 145, type: !3939)
!5686 = !DILocation(line: 145, column: 21, scope: !5672)
!5687 = !DILocation(line: 145, column: 28, scope: !5672)
!5688 = !DILocation(line: 145, column: 31, scope: !5672)
!5689 = !DILocation(line: 145, column: 38, scope: !5672)
!5690 = !DILocalVariable(name: "idx", scope: !5672, file: !3, line: 146, type: !7)
!5691 = !DILocation(line: 146, column: 15, scope: !5672)
!5692 = !DILocalVariable(name: "start", scope: !5672, file: !3, line: 147, type: !7)
!5693 = !DILocation(line: 147, column: 15, scope: !5672)
!5694 = !DILocalVariable(name: "desc", scope: !5672, file: !3, line: 148, type: !7)
!5695 = !DILocation(line: 148, column: 15, scope: !5672)
!5696 = !DILocalVariable(name: "size", scope: !5672, file: !3, line: 149, type: !7)
!5697 = !DILocation(line: 149, column: 15, scope: !5672)
!5698 = !DILocalVariable(name: "next", scope: !5672, file: !3, line: 150, type: !7)
!5699 = !DILocation(line: 150, column: 15, scope: !5672)
!5700 = !DILocation(line: 152, column: 15, scope: !5672)
!5701 = !DILocation(line: 152, column: 24, scope: !5672)
!5702 = !DILocation(line: 152, column: 39, scope: !5672)
!5703 = !DILocation(line: 152, column: 37, scope: !5672)
!5704 = !DILocation(line: 152, column: 9, scope: !5672)
!5705 = !DILocation(line: 152, column: 7, scope: !5672)
!5706 = !DILocation(line: 154, column: 8, scope: !5672)
!5707 = !DILocation(line: 154, column: 17, scope: !5672)
!5708 = !DILocation(line: 154, column: 6, scope: !5672)
!5709 = !DILocation(line: 155, column: 10, scope: !5672)
!5710 = !DILocation(line: 155, column: 8, scope: !5672)
!5711 = !DILocation(line: 157, column: 12, scope: !5712)
!5712 = distinct !DILexicalBlock(scope: !5672, file: !3, line: 157, column: 2)
!5713 = !DILocation(line: 157, column: 7, scope: !5712)
!5714 = !DILocation(line: 157, column: 18, scope: !5715)
!5715 = distinct !DILexicalBlock(scope: !5712, file: !3, line: 157, column: 2)
!5716 = !DILocation(line: 157, column: 25, scope: !5715)
!5717 = !DILocation(line: 157, column: 23, scope: !5715)
!5718 = !DILocation(line: 157, column: 31, scope: !5715)
!5719 = !DILocation(line: 157, column: 34, scope: !5715)
!5720 = !DILocation(line: 157, column: 42, scope: !5715)
!5721 = !DILocation(line: 157, column: 50, scope: !5715)
!5722 = !DILocation(line: 157, column: 59, scope: !5715)
!5723 = !DILocation(line: 157, column: 48, scope: !5715)
!5724 = !DILocation(line: 157, column: 39, scope: !5715)
!5725 = !DILocation(line: 157, column: 71, scope: !5715)
!5726 = !DILocation(line: 158, column: 7, scope: !5715)
!5727 = !DILocation(line: 158, column: 14, scope: !5715)
!5728 = !DILocation(line: 158, column: 23, scope: !5715)
!5729 = !DILocation(line: 158, column: 12, scope: !5715)
!5730 = !DILocation(line: 0, scope: !5715)
!5731 = !DILocation(line: 157, column: 2, scope: !5712)
!5732 = !DILocation(line: 160, column: 10, scope: !5733)
!5733 = distinct !DILexicalBlock(scope: !5715, file: !3, line: 158, column: 52)
!5734 = !DILocation(line: 160, column: 19, scope: !5733)
!5735 = !DILocation(line: 160, column: 30, scope: !5733)
!5736 = !DILocation(line: 160, column: 8, scope: !5733)
!5737 = !DILocation(line: 161, column: 7, scope: !5738)
!5738 = distinct !DILexicalBlock(scope: !5733, file: !3, line: 161, column: 7)
!5739 = !DILocation(line: 161, column: 12, scope: !5738)
!5740 = !DILocation(line: 161, column: 21, scope: !5738)
!5741 = !DILocation(line: 161, column: 7, scope: !5733)
!5742 = !DILocation(line: 162, column: 8, scope: !5743)
!5743 = distinct !DILexicalBlock(scope: !5744, file: !3, line: 162, column: 8)
!5744 = distinct !DILexicalBlock(scope: !5738, file: !3, line: 161, column: 36)
!5745 = !DILocation(line: 162, column: 15, scope: !5743)
!5746 = !DILocation(line: 162, column: 24, scope: !5743)
!5747 = !DILocation(line: 162, column: 13, scope: !5743)
!5748 = !DILocation(line: 162, column: 8, scope: !5744)
!5749 = !DILocation(line: 163, column: 12, scope: !5743)
!5750 = !DILocation(line: 163, column: 21, scope: !5743)
!5751 = !DILocation(line: 163, column: 10, scope: !5743)
!5752 = !DILocation(line: 163, column: 5, scope: !5743)
!5753 = !DILocation(line: 164, column: 26, scope: !5744)
!5754 = !DILocation(line: 164, column: 4, scope: !5744)
!5755 = !DILocation(line: 164, column: 13, scope: !5744)
!5756 = !DILocation(line: 164, column: 23, scope: !5744)
!5757 = !DILocation(line: 165, column: 3, scope: !5744)
!5758 = !DILocation(line: 166, column: 28, scope: !5733)
!5759 = !DILocation(line: 166, column: 31, scope: !5733)
!5760 = !DILocation(line: 166, column: 40, scope: !5733)
!5761 = !DILocation(line: 166, column: 56, scope: !5733)
!5762 = !DILocation(line: 167, column: 7, scope: !5733)
!5763 = !DILocation(line: 166, column: 3, scope: !5733)
!5764 = !DILocation(line: 168, column: 6, scope: !5733)
!5765 = !DILocation(line: 169, column: 10, scope: !5733)
!5766 = !DILocation(line: 169, column: 19, scope: !5733)
!5767 = !DILocation(line: 169, column: 7, scope: !5733)
!5768 = !DILocation(line: 170, column: 11, scope: !5733)
!5769 = !DILocation(line: 170, column: 9, scope: !5733)
!5770 = !DILocation(line: 172, column: 29, scope: !5733)
!5771 = !DILocation(line: 172, column: 3, scope: !5733)
!5772 = !DILocation(line: 172, column: 12, scope: !5733)
!5773 = !DILocation(line: 172, column: 27, scope: !5733)
!5774 = !DILocation(line: 173, column: 2, scope: !5733)
!5775 = !DILocation(line: 158, column: 48, scope: !5715)
!5776 = !DILocation(line: 157, column: 2, scope: !5715)
!5777 = distinct !{!5777, !5731, !5778}
!5778 = !DILocation(line: 173, column: 2, scope: !5712)
!5779 = !DILocation(line: 175, column: 1, scope: !5672)
!5780 = distinct !DISubprogram(name: "comedi_check_trigger_src", scope: !123, file: !123, line: 859, type: !5781, scopeLine: 861, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!5781 = !DISubroutineType(types: !5782)
!5782 = !{!192, !2672, !7}
!5783 = !DILocalVariable(name: "src", arg: 1, scope: !5780, file: !123, line: 859, type: !2672)
!5784 = !DILocation(line: 859, column: 58, scope: !5780)
!5785 = !DILocalVariable(name: "flags", arg: 2, scope: !5780, file: !123, line: 860, type: !7)
!5786 = !DILocation(line: 860, column: 22, scope: !5780)
!5787 = !DILocalVariable(name: "orig_src", scope: !5780, file: !123, line: 862, type: !7)
!5788 = !DILocation(line: 862, column: 15, scope: !5780)
!5789 = !DILocation(line: 862, column: 27, scope: !5780)
!5790 = !DILocation(line: 862, column: 26, scope: !5780)
!5791 = !DILocation(line: 864, column: 9, scope: !5780)
!5792 = !DILocation(line: 864, column: 20, scope: !5780)
!5793 = !DILocation(line: 864, column: 18, scope: !5780)
!5794 = !DILocation(line: 864, column: 3, scope: !5780)
!5795 = !DILocation(line: 864, column: 7, scope: !5780)
!5796 = !DILocation(line: 865, column: 7, scope: !5797)
!5797 = distinct !DILexicalBlock(scope: !5780, file: !123, line: 865, column: 6)
!5798 = !DILocation(line: 865, column: 6, scope: !5797)
!5799 = !DILocation(line: 865, column: 11, scope: !5797)
!5800 = !DILocation(line: 865, column: 27, scope: !5797)
!5801 = !DILocation(line: 865, column: 31, scope: !5797)
!5802 = !DILocation(line: 865, column: 30, scope: !5797)
!5803 = !DILocation(line: 865, column: 38, scope: !5797)
!5804 = !DILocation(line: 865, column: 35, scope: !5797)
!5805 = !DILocation(line: 865, column: 6, scope: !5780)
!5806 = !DILocation(line: 866, column: 3, scope: !5797)
!5807 = !DILocation(line: 867, column: 2, scope: !5780)
!5808 = !DILocation(line: 868, column: 1, scope: !5780)
!5809 = distinct !DISubprogram(name: "comedi_check_trigger_is_unique", scope: !123, file: !123, line: 878, type: !5810, scopeLine: 879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!5810 = !DISubroutineType(types: !5811)
!5811 = !{!192, !7}
!5812 = !DILocalVariable(name: "src", arg: 1, scope: !5809, file: !123, line: 878, type: !7)
!5813 = !DILocation(line: 878, column: 63, scope: !5809)
!5814 = !DILocation(line: 881, column: 7, scope: !5815)
!5815 = distinct !DILexicalBlock(scope: !5809, file: !123, line: 881, column: 6)
!5816 = !DILocation(line: 881, column: 14, scope: !5815)
!5817 = !DILocation(line: 881, column: 18, scope: !5815)
!5818 = !DILocation(line: 881, column: 11, scope: !5815)
!5819 = !DILocation(line: 881, column: 24, scope: !5815)
!5820 = !DILocation(line: 881, column: 6, scope: !5809)
!5821 = !DILocation(line: 882, column: 3, scope: !5815)
!5822 = !DILocation(line: 883, column: 2, scope: !5809)
!5823 = !DILocation(line: 884, column: 1, scope: !5809)
!5824 = distinct !DISubprogram(name: "comedi_check_trigger_arg_is", scope: !123, file: !123, line: 897, type: !5781, scopeLine: 899, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!5825 = !DILocalVariable(name: "arg", arg: 1, scope: !5824, file: !123, line: 897, type: !2672)
!5826 = !DILocation(line: 897, column: 61, scope: !5824)
!5827 = !DILocalVariable(name: "val", arg: 2, scope: !5824, file: !123, line: 898, type: !7)
!5828 = !DILocation(line: 898, column: 25, scope: !5824)
!5829 = !DILocation(line: 900, column: 7, scope: !5830)
!5830 = distinct !DILexicalBlock(scope: !5824, file: !123, line: 900, column: 6)
!5831 = !DILocation(line: 900, column: 6, scope: !5830)
!5832 = !DILocation(line: 900, column: 14, scope: !5830)
!5833 = !DILocation(line: 900, column: 11, scope: !5830)
!5834 = !DILocation(line: 900, column: 6, scope: !5824)
!5835 = !DILocation(line: 901, column: 10, scope: !5836)
!5836 = distinct !DILexicalBlock(scope: !5830, file: !123, line: 900, column: 19)
!5837 = !DILocation(line: 901, column: 4, scope: !5836)
!5838 = !DILocation(line: 901, column: 8, scope: !5836)
!5839 = !DILocation(line: 902, column: 3, scope: !5836)
!5840 = !DILocation(line: 904, column: 2, scope: !5824)
!5841 = !DILocation(line: 905, column: 1, scope: !5824)
!5842 = distinct !DISubprogram(name: "comedi_check_trigger_arg_min", scope: !123, file: !123, line: 918, type: !5781, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!5843 = !DILocalVariable(name: "arg", arg: 1, scope: !5842, file: !123, line: 918, type: !2672)
!5844 = !DILocation(line: 918, column: 62, scope: !5842)
!5845 = !DILocalVariable(name: "val", arg: 2, scope: !5842, file: !123, line: 919, type: !7)
!5846 = !DILocation(line: 919, column: 26, scope: !5842)
!5847 = !DILocation(line: 921, column: 7, scope: !5848)
!5848 = distinct !DILexicalBlock(scope: !5842, file: !123, line: 921, column: 6)
!5849 = !DILocation(line: 921, column: 6, scope: !5848)
!5850 = !DILocation(line: 921, column: 13, scope: !5848)
!5851 = !DILocation(line: 921, column: 11, scope: !5848)
!5852 = !DILocation(line: 921, column: 6, scope: !5842)
!5853 = !DILocation(line: 922, column: 10, scope: !5854)
!5854 = distinct !DILexicalBlock(scope: !5848, file: !123, line: 921, column: 18)
!5855 = !DILocation(line: 922, column: 4, scope: !5854)
!5856 = !DILocation(line: 922, column: 8, scope: !5854)
!5857 = !DILocation(line: 923, column: 3, scope: !5854)
!5858 = !DILocation(line: 925, column: 2, scope: !5842)
!5859 = !DILocation(line: 926, column: 1, scope: !5842)
!5860 = distinct !DISubprogram(name: "gsc_hpdi_check_chanlist", scope: !3, file: !3, line: 330, type: !3937, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!5861 = !DILocalVariable(name: "dev", arg: 1, scope: !5860, file: !3, line: 330, type: !193)
!5862 = !DILocation(line: 330, column: 58, scope: !5860)
!5863 = !DILocalVariable(name: "s", arg: 2, scope: !5860, file: !3, line: 331, type: !3819)
!5864 = !DILocation(line: 331, column: 33, scope: !5860)
!5865 = !DILocalVariable(name: "cmd", arg: 3, scope: !5860, file: !3, line: 332, type: !3939)
!5866 = !DILocation(line: 332, column: 27, scope: !5860)
!5867 = !DILocalVariable(name: "i", scope: !5860, file: !3, line: 334, type: !192)
!5868 = !DILocation(line: 334, column: 6, scope: !5860)
!5869 = !DILocation(line: 336, column: 9, scope: !5870)
!5870 = distinct !DILexicalBlock(scope: !5860, file: !3, line: 336, column: 2)
!5871 = !DILocation(line: 336, column: 7, scope: !5870)
!5872 = !DILocation(line: 336, column: 14, scope: !5873)
!5873 = distinct !DILexicalBlock(scope: !5870, file: !3, line: 336, column: 2)
!5874 = !DILocation(line: 336, column: 18, scope: !5873)
!5875 = !DILocation(line: 336, column: 23, scope: !5873)
!5876 = !DILocation(line: 336, column: 16, scope: !5873)
!5877 = !DILocation(line: 336, column: 2, scope: !5870)
!5878 = !DILocalVariable(name: "chan", scope: !5879, file: !3, line: 337, type: !7)
!5879 = distinct !DILexicalBlock(scope: !5873, file: !3, line: 336, column: 42)
!5880 = !DILocation(line: 337, column: 16, scope: !5879)
!5881 = !DILocation(line: 337, column: 23, scope: !5879)
!5882 = !DILocation(line: 339, column: 7, scope: !5883)
!5883 = distinct !DILexicalBlock(scope: !5879, file: !3, line: 339, column: 7)
!5884 = !DILocation(line: 339, column: 15, scope: !5883)
!5885 = !DILocation(line: 339, column: 12, scope: !5883)
!5886 = !DILocation(line: 339, column: 7, scope: !5879)
!5887 = !DILocation(line: 342, column: 4, scope: !5888)
!5888 = distinct !DILexicalBlock(scope: !5883, file: !3, line: 339, column: 18)
!5889 = !DILocation(line: 344, column: 2, scope: !5879)
!5890 = !DILocation(line: 336, column: 38, scope: !5873)
!5891 = !DILocation(line: 336, column: 2, scope: !5873)
!5892 = distinct !{!5892, !5877, !5893}
!5893 = !DILocation(line: 344, column: 2, scope: !5870)
!5894 = !DILocation(line: 346, column: 2, scope: !5860)
!5895 = !DILocation(line: 347, column: 1, scope: !5860)
!5896 = distinct !DISubprogram(name: "gsc_hpdi_pci_probe", scope: !3, file: !3, line: 700, type: !4013, scopeLine: 702, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!5897 = !DILocalVariable(name: "dev", arg: 1, scope: !5896, file: !3, line: 700, type: !4015)
!5898 = !DILocation(line: 700, column: 47, scope: !5896)
!5899 = !DILocalVariable(name: "id", arg: 2, scope: !5896, file: !3, line: 701, type: !4000)
!5900 = !DILocation(line: 701, column: 38, scope: !5896)
!5901 = !DILocation(line: 703, column: 32, scope: !5896)
!5902 = !DILocation(line: 703, column: 55, scope: !5896)
!5903 = !DILocation(line: 703, column: 59, scope: !5896)
!5904 = !DILocation(line: 703, column: 9, scope: !5896)
!5905 = !DILocation(line: 703, column: 2, scope: !5896)
