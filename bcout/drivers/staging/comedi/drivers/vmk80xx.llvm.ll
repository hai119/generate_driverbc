; ModuleID = '../bcout/drivers/staging/comedi/drivers/vmk80xx.llvm.bc'
source_filename = "drivers/staging/comedi/drivers/vmk80xx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_vmk80xx_driver_init6:\09\09\09"
module asm ".long\09vmk80xx_driver_init - .\09\09\09"
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
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
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
%struct.vmk80xx_board = type { i8*, i32, %struct.comedi_lrange*, i32, i32, i32, i32, i32, i32, i32 }
%struct.kmem_cache = type opaque
%struct.vmk80xx_private = type { %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor*, %struct.semaphore, i8*, i8*, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
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

@__UNIQUE_ID___addressable_vmk80xx_driver_init240 = internal global i8* bitcast (i32 ()* @vmk80xx_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@vmk80xx_driver = internal global %struct.comedi_driver { %struct.comedi_driver* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct.module* null, i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* null, void (%struct.comedi_device*)* @vmk80xx_detach, i32 (%struct.comedi_device*, i64)* @vmk80xx_auto_attach, i32 0, i8** null, i32 0 }, align 8, !dbg !201
@vmk80xx_usb_driver = internal global %struct.usb_driver { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 (%struct.usb_interface*, %struct.usb_device_id*)* @vmk80xx_usb_probe, void (%struct.usb_interface*)* @comedi_usb_auto_unconfig, i32 (%struct.usb_interface*, i32, i8*)* null, i32 (%struct.usb_interface*, i32)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, %struct.usb_device_id* getelementptr inbounds ([13 x %struct.usb_device_id], [13 x %struct.usb_device_id]* @vmk80xx_usb_id_table, i32 0, i32 0), %struct.attribute_group** null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, align 8, !dbg !4057
@__exitcall_vmk80xx_driver_exit = internal global void ()* @vmk80xx_driver_exit, section ".exitcall.exit", align 8, !dbg !172
@__UNIQUE_ID_author241 = internal constant [48 x i8] c"vmk80xx.author=Manuel Gebele <forensixs@gmx.de>\00", section ".modinfo", align 1, !dbg !179
@__UNIQUE_ID_description242 = internal constant [56 x i8] c"vmk80xx.description=Velleman USB Board Low-Level Driver\00", section ".modinfo", align 1, !dbg !186
@__UNIQUE_ID_file243 = internal constant [52 x i8] c"vmk80xx.file=drivers/staging/comedi/drivers/vmk80xx\00", section ".modinfo", align 1, !dbg !191
@__UNIQUE_ID_license244 = internal constant [20 x i8] c"vmk80xx.license=GPL\00", section ".modinfo", align 1, !dbg !196
@.str = private unnamed_addr constant [8 x i8] c"vmk80xx\00", align 1
@vmk80xx_boardinfo = internal constant [2 x %struct.vmk80xx_board] [%struct.vmk80xx_board { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 0, %struct.comedi_lrange* @range_unipolar5, i32 2, i32 255, i32 2, i32 6, i32 65535, i32 0, i32 0 }, %struct.vmk80xx_board { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 1, %struct.comedi_lrange* bitcast ({ i32, [2 x %struct.comedi_krange] }* @vmk8061_range to %struct.comedi_lrange*), i32 8, i32 1023, i32 8, i32 8, i32 0, i32 1, i32 1023 }], align 16, !dbg !4027
@.str.1 = private unnamed_addr constant [14 x i8] c"K8055 (VM110)\00", align 1
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"K8061 (VM140)\00", align 1
@vmk8061_range = internal constant { i32, [2 x %struct.comedi_krange] } { i32 2, [2 x %struct.comedi_krange] [%struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }] }, align 4, !dbg !4043
@sema_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4045
@.str.4 = private unnamed_addr constant [16 x i8] c"semaphore->lock\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@vmk80xx_usb_id_table = internal constant [13 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 4303, i16 21760, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 0 }, %struct.usb_device_id { i16 3, i16 4303, i16 21761, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 0 }, %struct.usb_device_id { i16 3, i16 4303, i16 21762, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 0 }, %struct.usb_device_id { i16 3, i16 4303, i16 21763, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 0 }, %struct.usb_device_id { i16 3, i16 4303, i16 -32671, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1 }, %struct.usb_device_id { i16 3, i16 4303, i16 -32670, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1 }, %struct.usb_device_id { i16 3, i16 4303, i16 -32669, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1 }, %struct.usb_device_id { i16 3, i16 4303, i16 -32668, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1 }, %struct.usb_device_id { i16 3, i16 4303, i16 -32667, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1 }, %struct.usb_device_id { i16 3, i16 4303, i16 -32666, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1 }, %struct.usb_device_id { i16 3, i16 4303, i16 -32665, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1 }, %struct.usb_device_id { i16 3, i16 4303, i16 -32664, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1 }, %struct.usb_device_id zeroinitializer], align 16, !dbg !4208
@llvm.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_vmk80xx_driver_init240 to i8*), i8* bitcast (void ()* @vmk80xx_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_vmk80xx_driver_exit to i8*), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__UNIQUE_ID_author241, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__UNIQUE_ID_description242, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__UNIQUE_ID_file243, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__UNIQUE_ID_license244, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @vmk80xx_driver_init() #0 section ".init.text" !dbg !4218 {
entry:
  %call = call i32 @comedi_usb_driver_register(%struct.comedi_driver* @vmk80xx_driver, %struct.usb_driver* @vmk80xx_usb_driver) #8, !dbg !4221
  ret i32 %call, !dbg !4221
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @vmk80xx_driver_exit() #0 section ".exit.text" !dbg !4222 {
entry:
  call void @comedi_usb_driver_unregister(%struct.comedi_driver* @vmk80xx_driver, %struct.usb_driver* @vmk80xx_usb_driver) #8, !dbg !4223
  ret void, !dbg !4223
}

; Function Attrs: noredzone
declare dso_local void @comedi_usb_driver_unregister(%struct.comedi_driver*, %struct.usb_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_usb_driver_register(%struct.comedi_driver*, %struct.usb_driver*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vmk80xx_detach(%struct.comedi_device* %dev) #2 !dbg !4224 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %intf = alloca %struct.usb_interface*, align 8
  %devpriv = alloca %struct.vmk80xx_private*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4225, metadata !DIExpression()), !dbg !4226
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf, metadata !4227, metadata !DIExpression()), !dbg !4228
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4229
  %call = call %struct.usb_interface* @comedi_to_usb_interface(%struct.comedi_device* %0) #8, !dbg !4230
  store %struct.usb_interface* %call, %struct.usb_interface** %intf, align 8, !dbg !4228
  call void @llvm.dbg.declare(metadata %struct.vmk80xx_private** %devpriv, metadata !4231, metadata !DIExpression()), !dbg !4242
  %1 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4243
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %1, i32 0, i32 3, !dbg !4244
  %2 = load i8*, i8** %private, align 8, !dbg !4244
  %3 = bitcast i8* %2 to %struct.vmk80xx_private*, !dbg !4243
  store %struct.vmk80xx_private* %3, %struct.vmk80xx_private** %devpriv, align 8, !dbg !4242
  %4 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !4245
  %tobool = icmp ne %struct.vmk80xx_private* %4, null, !dbg !4245
  br i1 %tobool, label %if.end, label %if.then, !dbg !4247

if.then:                                          ; preds = %entry
  br label %return, !dbg !4248

if.end:                                           ; preds = %entry
  %5 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !4249
  %limit_sem = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %5, i32 0, i32 2, !dbg !4250
  call void @down(%struct.semaphore* %limit_sem) #8, !dbg !4251
  %6 = load %struct.usb_interface*, %struct.usb_interface** %intf, align 8, !dbg !4252
  call void @usb_set_intfdata(%struct.usb_interface* %6, i8* null) #8, !dbg !4253
  %7 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !4254
  %usb_rx_buf = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %7, i32 0, i32 3, !dbg !4255
  %8 = load i8*, i8** %usb_rx_buf, align 8, !dbg !4255
  call void @kfree(i8* %8) #8, !dbg !4256
  %9 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !4257
  %usb_tx_buf = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %9, i32 0, i32 4, !dbg !4258
  %10 = load i8*, i8** %usb_tx_buf, align 8, !dbg !4258
  call void @kfree(i8* %10) #8, !dbg !4259
  %11 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !4260
  %limit_sem1 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %11, i32 0, i32 2, !dbg !4261
  call void @up(%struct.semaphore* %limit_sem1) #8, !dbg !4262
  br label %return, !dbg !4263

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4263
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vmk80xx_auto_attach(%struct.comedi_device* %dev, i64 %context) #2 !dbg !4264 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %context.addr = alloca i64, align 8
  %intf = alloca %struct.usb_interface*, align 8
  %board = alloca %struct.vmk80xx_board*, align 8
  %devpriv = alloca %struct.vmk80xx_private*, align 8
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4265, metadata !DIExpression()), !dbg !4266
  store i64 %context, i64* %context.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %context.addr, metadata !4267, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf, metadata !4269, metadata !DIExpression()), !dbg !4270
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4271
  %call = call %struct.usb_interface* @comedi_to_usb_interface(%struct.comedi_device* %0) #8, !dbg !4272
  store %struct.usb_interface* %call, %struct.usb_interface** %intf, align 8, !dbg !4270
  call void @llvm.dbg.declare(metadata %struct.vmk80xx_board** %board, metadata !4273, metadata !DIExpression()), !dbg !4275
  store %struct.vmk80xx_board* null, %struct.vmk80xx_board** %board, align 8, !dbg !4275
  call void @llvm.dbg.declare(metadata %struct.vmk80xx_private** %devpriv, metadata !4276, metadata !DIExpression()), !dbg !4277
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4278, metadata !DIExpression()), !dbg !4279
  %1 = load i64, i64* %context.addr, align 8, !dbg !4280
  %cmp = icmp ult i64 %1, 2, !dbg !4282
  br i1 %cmp, label %if.then, label %if.end, !dbg !4283

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %context.addr, align 8, !dbg !4284
  %arrayidx = getelementptr [2 x %struct.vmk80xx_board], [2 x %struct.vmk80xx_board]* @vmk80xx_boardinfo, i64 0, i64 %2, !dbg !4285
  store %struct.vmk80xx_board* %arrayidx, %struct.vmk80xx_board** %board, align 8, !dbg !4286
  br label %if.end, !dbg !4287

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.vmk80xx_board*, %struct.vmk80xx_board** %board, align 8, !dbg !4288
  %tobool = icmp ne %struct.vmk80xx_board* %3, null, !dbg !4288
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !4290

if.then1:                                         ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !4291
  br label %return, !dbg !4291

if.end2:                                          ; preds = %if.end
  %4 = load %struct.vmk80xx_board*, %struct.vmk80xx_board** %board, align 8, !dbg !4292
  %5 = bitcast %struct.vmk80xx_board* %4 to i8*, !dbg !4292
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4293
  %board_ptr = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 9, !dbg !4294
  store i8* %5, i8** %board_ptr, align 8, !dbg !4295
  %7 = load %struct.vmk80xx_board*, %struct.vmk80xx_board** %board, align 8, !dbg !4296
  %name = getelementptr inbounds %struct.vmk80xx_board, %struct.vmk80xx_board* %7, i32 0, i32 0, !dbg !4297
  %8 = load i8*, i8** %name, align 8, !dbg !4297
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4298
  %board_name = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 8, !dbg !4299
  store i8* %8, i8** %board_name, align 8, !dbg !4300
  %10 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4301
  %call3 = call i8* @comedi_alloc_devpriv(%struct.comedi_device* %10, i64 64) #8, !dbg !4302
  %11 = bitcast i8* %call3 to %struct.vmk80xx_private*, !dbg !4302
  store %struct.vmk80xx_private* %11, %struct.vmk80xx_private** %devpriv, align 8, !dbg !4303
  %12 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !4304
  %tobool4 = icmp ne %struct.vmk80xx_private* %12, null, !dbg !4304
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !4306

if.then5:                                         ; preds = %if.end2
  store i32 -12, i32* %retval, align 4, !dbg !4307
  br label %return, !dbg !4307

if.end6:                                          ; preds = %if.end2
  %13 = load %struct.vmk80xx_board*, %struct.vmk80xx_board** %board, align 8, !dbg !4308
  %model = getelementptr inbounds %struct.vmk80xx_board, %struct.vmk80xx_board* %13, i32 0, i32 1, !dbg !4309
  %14 = load i32, i32* %model, align 8, !dbg !4309
  %15 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !4310
  %model7 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %15, i32 0, i32 5, !dbg !4311
  store i32 %14, i32* %model7, align 8, !dbg !4312
  %16 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !4313
  %limit_sem = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %16, i32 0, i32 2, !dbg !4314
  call void @sema_init(%struct.semaphore* %limit_sem, i32 8) #8, !dbg !4315
  %17 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4316
  %call8 = call i32 @vmk80xx_find_usb_endpoints(%struct.comedi_device* %17) #8, !dbg !4317
  store i32 %call8, i32* %ret, align 4, !dbg !4318
  %18 = load i32, i32* %ret, align 4, !dbg !4319
  %tobool9 = icmp ne i32 %18, 0, !dbg !4319
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !4321

if.then10:                                        ; preds = %if.end6
  %19 = load i32, i32* %ret, align 4, !dbg !4322
  store i32 %19, i32* %retval, align 4, !dbg !4323
  br label %return, !dbg !4323

if.end11:                                         ; preds = %if.end6
  %20 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4324
  %call12 = call i32 @vmk80xx_alloc_usb_buffers(%struct.comedi_device* %20) #8, !dbg !4325
  store i32 %call12, i32* %ret, align 4, !dbg !4326
  %21 = load i32, i32* %ret, align 4, !dbg !4327
  %tobool13 = icmp ne i32 %21, 0, !dbg !4327
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !4329

if.then14:                                        ; preds = %if.end11
  %22 = load i32, i32* %ret, align 4, !dbg !4330
  store i32 %22, i32* %retval, align 4, !dbg !4331
  br label %return, !dbg !4331

if.end15:                                         ; preds = %if.end11
  %23 = load %struct.usb_interface*, %struct.usb_interface** %intf, align 8, !dbg !4332
  %24 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !4333
  %25 = bitcast %struct.vmk80xx_private* %24 to i8*, !dbg !4333
  call void @usb_set_intfdata(%struct.usb_interface* %23, i8* %25) #8, !dbg !4334
  %26 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !4335
  %model16 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %26, i32 0, i32 5, !dbg !4337
  %27 = load i32, i32* %model16, align 8, !dbg !4337
  %cmp17 = icmp eq i32 %27, 0, !dbg !4338
  br i1 %cmp17, label %if.then18, label %if.end20, !dbg !4339

if.then18:                                        ; preds = %if.end15
  %28 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4340
  %call19 = call i32 @vmk80xx_reset_device(%struct.comedi_device* %28) #8, !dbg !4341
  br label %if.end20, !dbg !4341

if.end20:                                         ; preds = %if.then18, %if.end15
  %29 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4342
  %call21 = call i32 @vmk80xx_init_subdevices(%struct.comedi_device* %29) #8, !dbg !4343
  store i32 %call21, i32* %retval, align 4, !dbg !4344
  br label %return, !dbg !4344

return:                                           ; preds = %if.end20, %if.then14, %if.then10, %if.then5, %if.then1
  %30 = load i32, i32* %retval, align 4, !dbg !4345
  ret i32 %30, !dbg !4345
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noredzone
declare dso_local %struct.usb_interface* @comedi_to_usb_interface(%struct.comedi_device*) #1

; Function Attrs: noredzone
declare dso_local void @down(%struct.semaphore*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_set_intfdata(%struct.usb_interface* %intf, i8* %data) #2 !dbg !4346 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !4349, metadata !DIExpression()), !dbg !4350
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4351, metadata !DIExpression()), !dbg !4352
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4353
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !4354
  %1 = load i8*, i8** %data.addr, align 8, !dbg !4355
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #8, !dbg !4356
  ret void, !dbg !4357
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: noredzone
declare dso_local void @up(%struct.semaphore*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !4358 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4361, metadata !DIExpression()), !dbg !4362
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4363, metadata !DIExpression()), !dbg !4364
  %0 = load i8*, i8** %data.addr, align 8, !dbg !4365
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4366
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !4367
  store i8* %0, i8** %driver_data, align 8, !dbg !4368
  ret void, !dbg !4369
}

; Function Attrs: noredzone
declare dso_local i8* @comedi_alloc_devpriv(%struct.comedi_device*, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @sema_init(%struct.semaphore* %sem, i32 %val) #2 !dbg !4047 {
entry:
  %sem.addr = alloca %struct.semaphore*, align 8
  %val.addr = alloca i32, align 4
  %.compoundliteral = alloca %struct.semaphore, align 8
  store %struct.semaphore* %sem, %struct.semaphore** %sem.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.semaphore** %sem.addr, metadata !4370, metadata !DIExpression()), !dbg !4371
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !4372, metadata !DIExpression()), !dbg !4373
  %0 = load %struct.semaphore*, %struct.semaphore** %sem.addr, align 8, !dbg !4374
  %count = getelementptr inbounds %struct.semaphore, %struct.semaphore* %.compoundliteral, i32 0, i32 1, !dbg !4375
  %1 = load i32, i32* %val.addr, align 4, !dbg !4375
  store i32 %1, i32* %count, align 8, !dbg !4375
  %wait_list = getelementptr inbounds %struct.semaphore, %struct.semaphore* %.compoundliteral, i32 0, i32 2, !dbg !4375
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %wait_list, i32 0, i32 0, !dbg !4375
  %2 = load %struct.semaphore*, %struct.semaphore** %sem.addr, align 8, !dbg !4375
  %wait_list1 = getelementptr inbounds %struct.semaphore, %struct.semaphore* %2, i32 0, i32 2, !dbg !4375
  store %struct.list_head* %wait_list1, %struct.list_head** %next, align 8, !dbg !4375
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %wait_list, i32 0, i32 1, !dbg !4375
  %3 = load %struct.semaphore*, %struct.semaphore** %sem.addr, align 8, !dbg !4375
  %wait_list2 = getelementptr inbounds %struct.semaphore, %struct.semaphore* %3, i32 0, i32 2, !dbg !4375
  store %struct.list_head* %wait_list2, %struct.list_head** %prev, align 8, !dbg !4375
  %4 = bitcast %struct.semaphore* %0 to i8*, !dbg !4376
  %5 = bitcast %struct.semaphore* %.compoundliteral to i8*, !dbg !4376
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 %5, i64 24, i1 false), !dbg !4376
  br label %do.body, !dbg !4377

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4378

do.end:                                           ; preds = %do.body
  ret void, !dbg !4380
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vmk80xx_find_usb_endpoints(%struct.comedi_device* %dev) #2 !dbg !4381 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %devpriv = alloca %struct.vmk80xx_private*, align 8
  %intf = alloca %struct.usb_interface*, align 8
  %iface_desc = alloca %struct.usb_host_interface*, align 8
  %ep_desc = alloca %struct.usb_endpoint_descriptor*, align 8
  %i = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4382, metadata !DIExpression()), !dbg !4383
  call void @llvm.dbg.declare(metadata %struct.vmk80xx_private** %devpriv, metadata !4384, metadata !DIExpression()), !dbg !4385
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4386
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !4387
  %1 = load i8*, i8** %private, align 8, !dbg !4387
  %2 = bitcast i8* %1 to %struct.vmk80xx_private*, !dbg !4386
  store %struct.vmk80xx_private* %2, %struct.vmk80xx_private** %devpriv, align 8, !dbg !4385
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf, metadata !4388, metadata !DIExpression()), !dbg !4389
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4390
  %call = call %struct.usb_interface* @comedi_to_usb_interface(%struct.comedi_device* %3) #8, !dbg !4391
  store %struct.usb_interface* %call, %struct.usb_interface** %intf, align 8, !dbg !4389
  call void @llvm.dbg.declare(metadata %struct.usb_host_interface** %iface_desc, metadata !4392, metadata !DIExpression()), !dbg !4393
  %4 = load %struct.usb_interface*, %struct.usb_interface** %intf, align 8, !dbg !4394
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %4, i32 0, i32 1, !dbg !4395
  %5 = load %struct.usb_host_interface*, %struct.usb_host_interface** %cur_altsetting, align 8, !dbg !4395
  store %struct.usb_host_interface* %5, %struct.usb_host_interface** %iface_desc, align 8, !dbg !4393
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %ep_desc, metadata !4396, metadata !DIExpression()), !dbg !4397
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4398, metadata !DIExpression()), !dbg !4399
  %6 = load %struct.usb_host_interface*, %struct.usb_host_interface** %iface_desc, align 8, !dbg !4400
  %desc = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %6, i32 0, i32 0, !dbg !4402
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %desc, i32 0, i32 4, !dbg !4403
  %7 = load i8, i8* %bNumEndpoints, align 4, !dbg !4403
  %conv = zext i8 %7 to i32, !dbg !4400
  %cmp = icmp ne i32 %conv, 2, !dbg !4404
  br i1 %cmp, label %if.then, label %if.end, !dbg !4405

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !4406
  br label %return, !dbg !4406

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !4407
  br label %for.cond, !dbg !4409

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4, !dbg !4410
  %9 = load %struct.usb_host_interface*, %struct.usb_host_interface** %iface_desc, align 8, !dbg !4412
  %desc2 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %9, i32 0, i32 0, !dbg !4413
  %bNumEndpoints3 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %desc2, i32 0, i32 4, !dbg !4414
  %10 = load i8, i8* %bNumEndpoints3, align 4, !dbg !4414
  %conv4 = zext i8 %10 to i32, !dbg !4412
  %cmp5 = icmp slt i32 %8, %conv4, !dbg !4415
  br i1 %cmp5, label %for.body, label %for.end, !dbg !4416

for.body:                                         ; preds = %for.cond
  %11 = load %struct.usb_host_interface*, %struct.usb_host_interface** %iface_desc, align 8, !dbg !4417
  %endpoint = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %11, i32 0, i32 3, !dbg !4419
  %12 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %endpoint, align 8, !dbg !4419
  %13 = load i32, i32* %i, align 4, !dbg !4420
  %idxprom = sext i32 %13 to i64, !dbg !4417
  %arrayidx = getelementptr %struct.usb_host_endpoint, %struct.usb_host_endpoint* %12, i64 %idxprom, !dbg !4417
  %desc7 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %arrayidx, i32 0, i32 0, !dbg !4421
  store %struct.usb_endpoint_descriptor* %desc7, %struct.usb_endpoint_descriptor** %ep_desc, align 8, !dbg !4422
  %14 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep_desc, align 8, !dbg !4423
  %call8 = call i32 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor* %14) #8, !dbg !4425
  %tobool = icmp ne i32 %call8, 0, !dbg !4425
  br i1 %tobool, label %if.then11, label %lor.lhs.false, !dbg !4426

lor.lhs.false:                                    ; preds = %for.body
  %15 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep_desc, align 8, !dbg !4427
  %call9 = call i32 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor* %15) #8, !dbg !4428
  %tobool10 = icmp ne i32 %call9, 0, !dbg !4428
  br i1 %tobool10, label %if.then11, label %if.end16, !dbg !4429

if.then11:                                        ; preds = %lor.lhs.false, %for.body
  %16 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !4430
  %ep_rx = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %16, i32 0, i32 0, !dbg !4433
  %17 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep_rx, align 8, !dbg !4433
  %tobool12 = icmp ne %struct.usb_endpoint_descriptor* %17, null, !dbg !4430
  br i1 %tobool12, label %if.end15, label %if.then13, !dbg !4434

if.then13:                                        ; preds = %if.then11
  %18 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep_desc, align 8, !dbg !4435
  %19 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !4436
  %ep_rx14 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %19, i32 0, i32 0, !dbg !4437
  store %struct.usb_endpoint_descriptor* %18, %struct.usb_endpoint_descriptor** %ep_rx14, align 8, !dbg !4438
  br label %if.end15, !dbg !4436

if.end15:                                         ; preds = %if.then13, %if.then11
  br label %for.inc, !dbg !4439

if.end16:                                         ; preds = %lor.lhs.false
  %20 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep_desc, align 8, !dbg !4440
  %call17 = call i32 @usb_endpoint_is_int_out(%struct.usb_endpoint_descriptor* %20) #8, !dbg !4442
  %tobool18 = icmp ne i32 %call17, 0, !dbg !4442
  br i1 %tobool18, label %if.then22, label %lor.lhs.false19, !dbg !4443

lor.lhs.false19:                                  ; preds = %if.end16
  %21 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep_desc, align 8, !dbg !4444
  %call20 = call i32 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor* %21) #8, !dbg !4445
  %tobool21 = icmp ne i32 %call20, 0, !dbg !4445
  br i1 %tobool21, label %if.then22, label %if.end27, !dbg !4446

if.then22:                                        ; preds = %lor.lhs.false19, %if.end16
  %22 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !4447
  %ep_tx = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %22, i32 0, i32 1, !dbg !4450
  %23 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep_tx, align 8, !dbg !4450
  %tobool23 = icmp ne %struct.usb_endpoint_descriptor* %23, null, !dbg !4447
  br i1 %tobool23, label %if.end26, label %if.then24, !dbg !4451

if.then24:                                        ; preds = %if.then22
  %24 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep_desc, align 8, !dbg !4452
  %25 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !4453
  %ep_tx25 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %25, i32 0, i32 1, !dbg !4454
  store %struct.usb_endpoint_descriptor* %24, %struct.usb_endpoint_descriptor** %ep_tx25, align 8, !dbg !4455
  br label %if.end26, !dbg !4453

if.end26:                                         ; preds = %if.then24, %if.then22
  br label %for.inc, !dbg !4456

if.end27:                                         ; preds = %lor.lhs.false19
  br label %for.inc, !dbg !4457

for.inc:                                          ; preds = %if.end27, %if.end26, %if.end15
  %26 = load i32, i32* %i, align 4, !dbg !4458
  %inc = add i32 %26, 1, !dbg !4458
  store i32 %inc, i32* %i, align 4, !dbg !4458
  br label %for.cond, !dbg !4459, !llvm.loop !4460

for.end:                                          ; preds = %for.cond
  %27 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !4462
  %ep_rx28 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %27, i32 0, i32 0, !dbg !4464
  %28 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep_rx28, align 8, !dbg !4464
  %tobool29 = icmp ne %struct.usb_endpoint_descriptor* %28, null, !dbg !4462
  br i1 %tobool29, label %lor.lhs.false30, label %if.then33, !dbg !4465

lor.lhs.false30:                                  ; preds = %for.end
  %29 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !4466
  %ep_tx31 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %29, i32 0, i32 1, !dbg !4467
  %30 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep_tx31, align 8, !dbg !4467
  %tobool32 = icmp ne %struct.usb_endpoint_descriptor* %30, null, !dbg !4466
  br i1 %tobool32, label %if.end34, label %if.then33, !dbg !4468

if.then33:                                        ; preds = %lor.lhs.false30, %for.end
  store i32 -19, i32* %retval, align 4, !dbg !4469
  br label %return, !dbg !4469

if.end34:                                         ; preds = %lor.lhs.false30
  %31 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !4470
  %ep_rx35 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %31, i32 0, i32 0, !dbg !4472
  %32 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep_rx35, align 8, !dbg !4472
  %call36 = call i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %32) #8, !dbg !4473
  %tobool37 = icmp ne i32 %call36, 0, !dbg !4473
  br i1 %tobool37, label %lor.lhs.false38, label %if.then42, !dbg !4474

lor.lhs.false38:                                  ; preds = %if.end34
  %33 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !4475
  %ep_tx39 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %33, i32 0, i32 1, !dbg !4476
  %34 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep_tx39, align 8, !dbg !4476
  %call40 = call i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %34) #8, !dbg !4477
  %tobool41 = icmp ne i32 %call40, 0, !dbg !4477
  br i1 %tobool41, label %if.end43, label %if.then42, !dbg !4478

if.then42:                                        ; preds = %lor.lhs.false38, %if.end34
  store i32 -22, i32* %retval, align 4, !dbg !4479
  br label %return, !dbg !4479

if.end43:                                         ; preds = %lor.lhs.false38
  store i32 0, i32* %retval, align 4, !dbg !4480
  br label %return, !dbg !4480

return:                                           ; preds = %if.end43, %if.then42, %if.then33, %if.then
  %35 = load i32, i32* %retval, align 4, !dbg !4481
  ret i32 %35, !dbg !4481
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vmk80xx_alloc_usb_buffers(%struct.comedi_device* %dev) #2 !dbg !4482 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %devpriv = alloca %struct.vmk80xx_private*, align 8
  %size = alloca i64, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4483, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.declare(metadata %struct.vmk80xx_private** %devpriv, metadata !4485, metadata !DIExpression()), !dbg !4486
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4487
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !4488
  %1 = load i8*, i8** %private, align 8, !dbg !4488
  %2 = bitcast i8* %1 to %struct.vmk80xx_private*, !dbg !4487
  store %struct.vmk80xx_private* %2, %struct.vmk80xx_private** %devpriv, align 8, !dbg !4486
  call void @llvm.dbg.declare(metadata i64* %size, metadata !4489, metadata !DIExpression()), !dbg !4490
  %3 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !4491
  %ep_rx = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %3, i32 0, i32 0, !dbg !4492
  %4 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep_rx, align 8, !dbg !4492
  %call = call i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %4) #8, !dbg !4493
  %conv = sext i32 %call to i64, !dbg !4493
  store i64 %conv, i64* %size, align 8, !dbg !4494
  %5 = load i64, i64* %size, align 8, !dbg !4495
  %call1 = call i8* @kzalloc(i64 %5, i32 3264) #8, !dbg !4496
  %6 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !4497
  %usb_rx_buf = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %6, i32 0, i32 3, !dbg !4498
  store i8* %call1, i8** %usb_rx_buf, align 8, !dbg !4499
  %7 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !4500
  %usb_rx_buf2 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %7, i32 0, i32 3, !dbg !4502
  %8 = load i8*, i8** %usb_rx_buf2, align 8, !dbg !4502
  %tobool = icmp ne i8* %8, null, !dbg !4500
  br i1 %tobool, label %if.end, label %if.then, !dbg !4503

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !4504
  br label %return, !dbg !4504

if.end:                                           ; preds = %entry
  %9 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !4505
  %ep_tx = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %9, i32 0, i32 1, !dbg !4506
  %10 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep_tx, align 8, !dbg !4506
  %call3 = call i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %10) #8, !dbg !4507
  %conv4 = sext i32 %call3 to i64, !dbg !4507
  store i64 %conv4, i64* %size, align 8, !dbg !4508
  %11 = load i64, i64* %size, align 8, !dbg !4509
  %call5 = call i8* @kzalloc(i64 %11, i32 3264) #8, !dbg !4510
  %12 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !4511
  %usb_tx_buf = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %12, i32 0, i32 4, !dbg !4512
  store i8* %call5, i8** %usb_tx_buf, align 8, !dbg !4513
  %13 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !4514
  %usb_tx_buf6 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %13, i32 0, i32 4, !dbg !4516
  %14 = load i8*, i8** %usb_tx_buf6, align 8, !dbg !4516
  %tobool7 = icmp ne i8* %14, null, !dbg !4514
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !4517

if.then8:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !4518
  br label %return, !dbg !4518

if.end9:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4519
  br label %return, !dbg !4519

return:                                           ; preds = %if.end9, %if.then8, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !4520
  ret i32 %15, !dbg !4520
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vmk80xx_reset_device(%struct.comedi_device* %dev) #2 !dbg !4521 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %devpriv = alloca %struct.vmk80xx_private*, align 8
  %size = alloca i64, align 8
  %retval1 = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4522, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.declare(metadata %struct.vmk80xx_private** %devpriv, metadata !4524, metadata !DIExpression()), !dbg !4525
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4526
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !4527
  %1 = load i8*, i8** %private, align 8, !dbg !4527
  %2 = bitcast i8* %1 to %struct.vmk80xx_private*, !dbg !4526
  store %struct.vmk80xx_private* %2, %struct.vmk80xx_private** %devpriv, align 8, !dbg !4525
  call void @llvm.dbg.declare(metadata i64* %size, metadata !4528, metadata !DIExpression()), !dbg !4529
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !4530, metadata !DIExpression()), !dbg !4531
  %3 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !4532
  %ep_tx = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %3, i32 0, i32 1, !dbg !4533
  %4 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep_tx, align 8, !dbg !4533
  %call = call i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %4) #8, !dbg !4534
  %conv = sext i32 %call to i64, !dbg !4534
  store i64 %conv, i64* %size, align 8, !dbg !4535
  %5 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !4536
  %usb_tx_buf = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %5, i32 0, i32 4, !dbg !4537
  %6 = load i8*, i8** %usb_tx_buf, align 8, !dbg !4537
  %7 = load i64, i64* %size, align 8, !dbg !4538
  call void @llvm.memset.p0i8.i64(i8* align 1 %6, i8 0, i64 %7, i1 false), !dbg !4539
  %8 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4540
  %call2 = call i32 @vmk80xx_write_packet(%struct.comedi_device* %8, i32 0) #8, !dbg !4541
  store i32 %call2, i32* %retval1, align 4, !dbg !4542
  %9 = load i32, i32* %retval1, align 4, !dbg !4543
  %tobool = icmp ne i32 %9, 0, !dbg !4543
  br i1 %tobool, label %if.then, label %if.end, !dbg !4545

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %retval1, align 4, !dbg !4546
  store i32 %10, i32* %retval, align 4, !dbg !4547
  br label %return, !dbg !4547

if.end:                                           ; preds = %entry
  %11 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4548
  %call3 = call i32 @vmk80xx_write_packet(%struct.comedi_device* %11, i32 5) #8, !dbg !4549
  store i32 %call3, i32* %retval, align 4, !dbg !4550
  br label %return, !dbg !4550

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !4551
  ret i32 %12, !dbg !4551
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vmk80xx_init_subdevices(%struct.comedi_device* %dev) #2 !dbg !4552 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %board = alloca %struct.vmk80xx_board*, align 8
  %devpriv = alloca %struct.vmk80xx_private*, align 8
  %s = alloca %struct.comedi_subdevice*, align 8
  %n_subd = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4553, metadata !DIExpression()), !dbg !4554
  call void @llvm.dbg.declare(metadata %struct.vmk80xx_board** %board, metadata !4555, metadata !DIExpression()), !dbg !4556
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4557
  %board_ptr = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 9, !dbg !4558
  %1 = load i8*, i8** %board_ptr, align 8, !dbg !4558
  %2 = bitcast i8* %1 to %struct.vmk80xx_board*, !dbg !4557
  store %struct.vmk80xx_board* %2, %struct.vmk80xx_board** %board, align 8, !dbg !4556
  call void @llvm.dbg.declare(metadata %struct.vmk80xx_private** %devpriv, metadata !4559, metadata !DIExpression()), !dbg !4560
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4561
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %3, i32 0, i32 3, !dbg !4562
  %4 = load i8*, i8** %private, align 8, !dbg !4562
  %5 = bitcast i8* %4 to %struct.vmk80xx_private*, !dbg !4561
  store %struct.vmk80xx_private* %5, %struct.vmk80xx_private** %devpriv, align 8, !dbg !4560
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s, metadata !4563, metadata !DIExpression()), !dbg !4564
  call void @llvm.dbg.declare(metadata i32* %n_subd, metadata !4565, metadata !DIExpression()), !dbg !4566
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4567, metadata !DIExpression()), !dbg !4568
  %6 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !4569
  %limit_sem = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %6, i32 0, i32 2, !dbg !4570
  call void @down(%struct.semaphore* %limit_sem) #8, !dbg !4571
  %7 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !4572
  %model = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %7, i32 0, i32 5, !dbg !4574
  %8 = load i32, i32* %model, align 8, !dbg !4574
  %cmp = icmp eq i32 %8, 0, !dbg !4575
  br i1 %cmp, label %if.then, label %if.else, !dbg !4576

if.then:                                          ; preds = %entry
  store i32 5, i32* %n_subd, align 4, !dbg !4577
  br label %if.end, !dbg !4578

if.else:                                          ; preds = %entry
  store i32 6, i32* %n_subd, align 4, !dbg !4579
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4580
  %10 = load i32, i32* %n_subd, align 4, !dbg !4581
  %call = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %9, i32 %10) #8, !dbg !4582
  store i32 %call, i32* %ret, align 4, !dbg !4583
  %11 = load i32, i32* %ret, align 4, !dbg !4584
  %tobool = icmp ne i32 %11, 0, !dbg !4584
  br i1 %tobool, label %if.then1, label %if.end3, !dbg !4586

if.then1:                                         ; preds = %if.end
  %12 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !4587
  %limit_sem2 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %12, i32 0, i32 2, !dbg !4589
  call void @up(%struct.semaphore* %limit_sem2) #8, !dbg !4590
  %13 = load i32, i32* %ret, align 4, !dbg !4591
  store i32 %13, i32* %retval, align 4, !dbg !4592
  br label %return, !dbg !4592

if.end3:                                          ; preds = %if.end
  %14 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4593
  %subdevices = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 16, !dbg !4594
  %15 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices, align 8, !dbg !4594
  %arrayidx = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %15, i64 0, !dbg !4593
  store %struct.comedi_subdevice* %arrayidx, %struct.comedi_subdevice** %s, align 8, !dbg !4595
  %16 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4596
  %type = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %16, i32 0, i32 2, !dbg !4597
  store i32 1, i32* %type, align 4, !dbg !4598
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4599
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %17, i32 0, i32 4, !dbg !4600
  store i32 1114112, i32* %subdev_flags, align 4, !dbg !4601
  %18 = load %struct.vmk80xx_board*, %struct.vmk80xx_board** %board, align 8, !dbg !4602
  %ai_nchans = getelementptr inbounds %struct.vmk80xx_board, %struct.vmk80xx_board* %18, i32 0, i32 3, !dbg !4603
  %19 = load i32, i32* %ai_nchans, align 8, !dbg !4603
  %20 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4604
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %20, i32 0, i32 3, !dbg !4605
  store i32 %19, i32* %n_chan, align 8, !dbg !4606
  %21 = load %struct.vmk80xx_board*, %struct.vmk80xx_board** %board, align 8, !dbg !4607
  %ai_maxdata = getelementptr inbounds %struct.vmk80xx_board, %struct.vmk80xx_board* %21, i32 0, i32 4, !dbg !4608
  %22 = load i32, i32* %ai_maxdata, align 4, !dbg !4608
  %23 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4609
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %23, i32 0, i32 13, !dbg !4610
  store i32 %22, i32* %maxdata, align 8, !dbg !4611
  %24 = load %struct.vmk80xx_board*, %struct.vmk80xx_board** %board, align 8, !dbg !4612
  %range = getelementptr inbounds %struct.vmk80xx_board, %struct.vmk80xx_board* %24, i32 0, i32 2, !dbg !4613
  %25 = load %struct.comedi_lrange*, %struct.comedi_lrange** %range, align 8, !dbg !4613
  %26 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4614
  %range_table = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %26, i32 0, i32 15, !dbg !4615
  store %struct.comedi_lrange* %25, %struct.comedi_lrange** %range_table, align 8, !dbg !4616
  %27 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4617
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %27, i32 0, i32 18, !dbg !4618
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @vmk80xx_ai_insn_read, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_read, align 8, !dbg !4619
  %28 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4620
  %subdevices4 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %28, i32 0, i32 16, !dbg !4621
  %29 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices4, align 8, !dbg !4621
  %arrayidx5 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %29, i64 1, !dbg !4620
  store %struct.comedi_subdevice* %arrayidx5, %struct.comedi_subdevice** %s, align 8, !dbg !4622
  %30 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4623
  %type6 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %30, i32 0, i32 2, !dbg !4624
  store i32 2, i32* %type6, align 4, !dbg !4625
  %31 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4626
  %subdev_flags7 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %31, i32 0, i32 4, !dbg !4627
  store i32 1179648, i32* %subdev_flags7, align 4, !dbg !4628
  %32 = load %struct.vmk80xx_board*, %struct.vmk80xx_board** %board, align 8, !dbg !4629
  %ao_nchans = getelementptr inbounds %struct.vmk80xx_board, %struct.vmk80xx_board* %32, i32 0, i32 5, !dbg !4630
  %33 = load i32, i32* %ao_nchans, align 8, !dbg !4630
  %34 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4631
  %n_chan8 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %34, i32 0, i32 3, !dbg !4632
  store i32 %33, i32* %n_chan8, align 8, !dbg !4633
  %35 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4634
  %maxdata9 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %35, i32 0, i32 13, !dbg !4635
  store i32 255, i32* %maxdata9, align 8, !dbg !4636
  %36 = load %struct.vmk80xx_board*, %struct.vmk80xx_board** %board, align 8, !dbg !4637
  %range10 = getelementptr inbounds %struct.vmk80xx_board, %struct.vmk80xx_board* %36, i32 0, i32 2, !dbg !4638
  %37 = load %struct.comedi_lrange*, %struct.comedi_lrange** %range10, align 8, !dbg !4638
  %38 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4639
  %range_table11 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %38, i32 0, i32 15, !dbg !4640
  store %struct.comedi_lrange* %37, %struct.comedi_lrange** %range_table11, align 8, !dbg !4641
  %39 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4642
  %insn_write = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %39, i32 0, i32 19, !dbg !4643
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @vmk80xx_ao_insn_write, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_write, align 8, !dbg !4644
  %40 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !4645
  %model12 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %40, i32 0, i32 5, !dbg !4647
  %41 = load i32, i32* %model12, align 8, !dbg !4647
  %cmp13 = icmp eq i32 %41, 1, !dbg !4648
  br i1 %cmp13, label %if.then14, label %if.end17, !dbg !4649

if.then14:                                        ; preds = %if.end3
  %42 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4650
  %subdev_flags15 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %42, i32 0, i32 4, !dbg !4652
  %43 = load i32, i32* %subdev_flags15, align 4, !dbg !4653
  %or = or i32 %43, 65536, !dbg !4653
  store i32 %or, i32* %subdev_flags15, align 4, !dbg !4653
  %44 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4654
  %insn_read16 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %44, i32 0, i32 18, !dbg !4655
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @vmk80xx_ao_insn_read, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_read16, align 8, !dbg !4656
  br label %if.end17, !dbg !4657

if.end17:                                         ; preds = %if.then14, %if.end3
  %45 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4658
  %subdevices18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %45, i32 0, i32 16, !dbg !4659
  %46 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices18, align 8, !dbg !4659
  %arrayidx19 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %46, i64 2, !dbg !4658
  store %struct.comedi_subdevice* %arrayidx19, %struct.comedi_subdevice** %s, align 8, !dbg !4660
  %47 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4661
  %type20 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %47, i32 0, i32 2, !dbg !4662
  store i32 3, i32* %type20, align 4, !dbg !4663
  %48 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4664
  %subdev_flags21 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %48, i32 0, i32 4, !dbg !4665
  store i32 65536, i32* %subdev_flags21, align 4, !dbg !4666
  %49 = load %struct.vmk80xx_board*, %struct.vmk80xx_board** %board, align 8, !dbg !4667
  %di_nchans = getelementptr inbounds %struct.vmk80xx_board, %struct.vmk80xx_board* %49, i32 0, i32 6, !dbg !4668
  %50 = load i32, i32* %di_nchans, align 4, !dbg !4668
  %51 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4669
  %n_chan22 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %51, i32 0, i32 3, !dbg !4670
  store i32 %50, i32* %n_chan22, align 8, !dbg !4671
  %52 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4672
  %maxdata23 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %52, i32 0, i32 13, !dbg !4673
  store i32 1, i32* %maxdata23, align 8, !dbg !4674
  %53 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4675
  %range_table24 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %53, i32 0, i32 15, !dbg !4676
  store %struct.comedi_lrange* @range_unipolar5, %struct.comedi_lrange** %range_table24, align 8, !dbg !4677
  %54 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4678
  %insn_bits = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %54, i32 0, i32 20, !dbg !4679
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @vmk80xx_di_insn_bits, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_bits, align 8, !dbg !4680
  %55 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4681
  %subdevices25 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %55, i32 0, i32 16, !dbg !4682
  %56 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices25, align 8, !dbg !4682
  %arrayidx26 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %56, i64 3, !dbg !4681
  store %struct.comedi_subdevice* %arrayidx26, %struct.comedi_subdevice** %s, align 8, !dbg !4683
  %57 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4684
  %type27 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %57, i32 0, i32 2, !dbg !4685
  store i32 4, i32* %type27, align 4, !dbg !4686
  %58 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4687
  %subdev_flags28 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %58, i32 0, i32 4, !dbg !4688
  store i32 131072, i32* %subdev_flags28, align 4, !dbg !4689
  %59 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4690
  %n_chan29 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %59, i32 0, i32 3, !dbg !4691
  store i32 8, i32* %n_chan29, align 8, !dbg !4692
  %60 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4693
  %maxdata30 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %60, i32 0, i32 13, !dbg !4694
  store i32 1, i32* %maxdata30, align 8, !dbg !4695
  %61 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4696
  %range_table31 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %61, i32 0, i32 15, !dbg !4697
  store %struct.comedi_lrange* @range_unipolar5, %struct.comedi_lrange** %range_table31, align 8, !dbg !4698
  %62 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4699
  %insn_bits32 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %62, i32 0, i32 20, !dbg !4700
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @vmk80xx_do_insn_bits, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_bits32, align 8, !dbg !4701
  %63 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4702
  %subdevices33 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %63, i32 0, i32 16, !dbg !4703
  %64 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices33, align 8, !dbg !4703
  %arrayidx34 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %64, i64 4, !dbg !4702
  store %struct.comedi_subdevice* %arrayidx34, %struct.comedi_subdevice** %s, align 8, !dbg !4704
  %65 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4705
  %type35 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %65, i32 0, i32 2, !dbg !4706
  store i32 6, i32* %type35, align 4, !dbg !4707
  %66 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4708
  %subdev_flags36 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %66, i32 0, i32 4, !dbg !4709
  store i32 65536, i32* %subdev_flags36, align 4, !dbg !4710
  %67 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4711
  %n_chan37 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %67, i32 0, i32 3, !dbg !4712
  store i32 2, i32* %n_chan37, align 8, !dbg !4713
  %68 = load %struct.vmk80xx_board*, %struct.vmk80xx_board** %board, align 8, !dbg !4714
  %cnt_maxdata = getelementptr inbounds %struct.vmk80xx_board, %struct.vmk80xx_board* %68, i32 0, i32 7, !dbg !4715
  %69 = load i32, i32* %cnt_maxdata, align 8, !dbg !4715
  %70 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4716
  %maxdata38 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %70, i32 0, i32 13, !dbg !4717
  store i32 %69, i32* %maxdata38, align 8, !dbg !4718
  %71 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4719
  %insn_read39 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %71, i32 0, i32 18, !dbg !4720
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @vmk80xx_cnt_insn_read, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_read39, align 8, !dbg !4721
  %72 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4722
  %insn_config = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %72, i32 0, i32 21, !dbg !4723
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @vmk80xx_cnt_insn_config, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_config, align 8, !dbg !4724
  %73 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !4725
  %model40 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %73, i32 0, i32 5, !dbg !4727
  %74 = load i32, i32* %model40, align 8, !dbg !4727
  %cmp41 = icmp eq i32 %74, 0, !dbg !4728
  br i1 %cmp41, label %if.then42, label %if.end46, !dbg !4729

if.then42:                                        ; preds = %if.end17
  %75 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4730
  %subdev_flags43 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %75, i32 0, i32 4, !dbg !4732
  %76 = load i32, i32* %subdev_flags43, align 4, !dbg !4733
  %or44 = or i32 %76, 131072, !dbg !4733
  store i32 %or44, i32* %subdev_flags43, align 4, !dbg !4733
  %77 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4734
  %insn_write45 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %77, i32 0, i32 19, !dbg !4735
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @vmk80xx_cnt_insn_write, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_write45, align 8, !dbg !4736
  br label %if.end46, !dbg !4737

if.end46:                                         ; preds = %if.then42, %if.end17
  %78 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !4738
  %model47 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %78, i32 0, i32 5, !dbg !4740
  %79 = load i32, i32* %model47, align 8, !dbg !4740
  %cmp48 = icmp eq i32 %79, 1, !dbg !4741
  br i1 %cmp48, label %if.then49, label %if.end58, !dbg !4742

if.then49:                                        ; preds = %if.end46
  %80 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4743
  %subdevices50 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %80, i32 0, i32 16, !dbg !4745
  %81 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices50, align 8, !dbg !4745
  %arrayidx51 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %81, i64 5, !dbg !4743
  store %struct.comedi_subdevice* %arrayidx51, %struct.comedi_subdevice** %s, align 8, !dbg !4746
  %82 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4747
  %type52 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %82, i32 0, i32 2, !dbg !4748
  store i32 12, i32* %type52, align 4, !dbg !4749
  %83 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4750
  %subdev_flags53 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %83, i32 0, i32 4, !dbg !4751
  store i32 196608, i32* %subdev_flags53, align 4, !dbg !4752
  %84 = load %struct.vmk80xx_board*, %struct.vmk80xx_board** %board, align 8, !dbg !4753
  %pwm_nchans = getelementptr inbounds %struct.vmk80xx_board, %struct.vmk80xx_board* %84, i32 0, i32 8, !dbg !4754
  %85 = load i32, i32* %pwm_nchans, align 4, !dbg !4754
  %86 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4755
  %n_chan54 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %86, i32 0, i32 3, !dbg !4756
  store i32 %85, i32* %n_chan54, align 8, !dbg !4757
  %87 = load %struct.vmk80xx_board*, %struct.vmk80xx_board** %board, align 8, !dbg !4758
  %pwm_maxdata = getelementptr inbounds %struct.vmk80xx_board, %struct.vmk80xx_board* %87, i32 0, i32 9, !dbg !4759
  %88 = load i32, i32* %pwm_maxdata, align 8, !dbg !4759
  %89 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4760
  %maxdata55 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %89, i32 0, i32 13, !dbg !4761
  store i32 %88, i32* %maxdata55, align 8, !dbg !4762
  %90 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4763
  %insn_read56 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %90, i32 0, i32 18, !dbg !4764
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @vmk80xx_pwm_insn_read, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_read56, align 8, !dbg !4765
  %91 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4766
  %insn_write57 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %91, i32 0, i32 19, !dbg !4767
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @vmk80xx_pwm_insn_write, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_write57, align 8, !dbg !4768
  br label %if.end58, !dbg !4769

if.end58:                                         ; preds = %if.then49, %if.end46
  %92 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !4770
  %limit_sem59 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %92, i32 0, i32 2, !dbg !4771
  call void @up(%struct.semaphore* %limit_sem59) #8, !dbg !4772
  store i32 0, i32* %retval, align 4, !dbg !4773
  br label %return, !dbg !4773

return:                                           ; preds = %if.end58, %if.then1
  %93 = load i32, i32* %retval, align 4, !dbg !4774
  ret i32 %93, !dbg !4774
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !4775 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !4780, metadata !DIExpression()), !dbg !4781
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !4782
  %call = call i32 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor* %0) #8, !dbg !4783
  %tobool = icmp ne i32 %call, 0, !dbg !4783
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !4784

land.rhs:                                         ; preds = %entry
  %1 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !4785
  %call1 = call i32 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %1) #8, !dbg !4786
  %tobool2 = icmp ne i32 %call1, 0, !dbg !4784
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ], !dbg !4787
  %land.ext = zext i1 %2 to i32, !dbg !4784
  ret i32 %land.ext, !dbg !4788
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !4789 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !4790, metadata !DIExpression()), !dbg !4791
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !4792
  %call = call i32 @usb_endpoint_xfer_bulk(%struct.usb_endpoint_descriptor* %0) #8, !dbg !4793
  %tobool = icmp ne i32 %call, 0, !dbg !4793
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !4794

land.rhs:                                         ; preds = %entry
  %1 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !4795
  %call1 = call i32 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %1) #8, !dbg !4796
  %tobool2 = icmp ne i32 %call1, 0, !dbg !4794
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ], !dbg !4797
  %land.ext = zext i1 %2 to i32, !dbg !4794
  ret i32 %land.ext, !dbg !4798
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_is_int_out(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !4799 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !4800, metadata !DIExpression()), !dbg !4801
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !4802
  %call = call i32 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor* %0) #8, !dbg !4803
  %tobool = icmp ne i32 %call, 0, !dbg !4803
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !4804

land.rhs:                                         ; preds = %entry
  %1 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !4805
  %call1 = call i32 @usb_endpoint_dir_out(%struct.usb_endpoint_descriptor* %1) #8, !dbg !4806
  %tobool2 = icmp ne i32 %call1, 0, !dbg !4804
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ], !dbg !4807
  %land.ext = zext i1 %2 to i32, !dbg !4804
  ret i32 %land.ext, !dbg !4808
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !4809 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !4810, metadata !DIExpression()), !dbg !4811
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !4812
  %call = call i32 @usb_endpoint_xfer_bulk(%struct.usb_endpoint_descriptor* %0) #8, !dbg !4813
  %tobool = icmp ne i32 %call, 0, !dbg !4813
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !4814

land.rhs:                                         ; preds = %entry
  %1 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !4815
  %call1 = call i32 @usb_endpoint_dir_out(%struct.usb_endpoint_descriptor* %1) #8, !dbg !4816
  %tobool2 = icmp ne i32 %call1, 0, !dbg !4814
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ], !dbg !4817
  %land.ext = zext i1 %2 to i32, !dbg !4814
  ret i32 %land.ext, !dbg !4818
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !4819 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !4820, metadata !DIExpression()), !dbg !4821
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !4822
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %0, i32 0, i32 4, !dbg !4822
  %1 = load i16, i16* %wMaxPacketSize, align 1, !dbg !4822
  %conv = zext i16 %1 to i32, !dbg !4822
  %and = and i32 %conv, 2047, !dbg !4823
  ret i32 %and, !dbg !4824
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !4825 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !4826, metadata !DIExpression()), !dbg !4827
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !4828
  %bmAttributes = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %0, i32 0, i32 3, !dbg !4829
  %1 = load i8, i8* %bmAttributes, align 1, !dbg !4829
  %conv = zext i8 %1 to i32, !dbg !4828
  %and = and i32 %conv, 3, !dbg !4830
  %cmp = icmp eq i32 %and, 3, !dbg !4831
  %conv1 = zext i1 %cmp to i32, !dbg !4831
  ret i32 %conv1, !dbg !4832
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !4833 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !4834, metadata !DIExpression()), !dbg !4835
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !4836
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %0, i32 0, i32 2, !dbg !4837
  %1 = load i8, i8* %bEndpointAddress, align 1, !dbg !4837
  %conv = zext i8 %1 to i32, !dbg !4836
  %and = and i32 %conv, 128, !dbg !4838
  %cmp = icmp eq i32 %and, 128, !dbg !4839
  %conv1 = zext i1 %cmp to i32, !dbg !4839
  ret i32 %conv1, !dbg !4840
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_xfer_bulk(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !4841 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !4842, metadata !DIExpression()), !dbg !4843
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !4844
  %bmAttributes = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %0, i32 0, i32 3, !dbg !4845
  %1 = load i8, i8* %bmAttributes, align 1, !dbg !4845
  %conv = zext i8 %1 to i32, !dbg !4844
  %and = and i32 %conv, 3, !dbg !4846
  %cmp = icmp eq i32 %and, 2, !dbg !4847
  %conv1 = zext i1 %cmp to i32, !dbg !4847
  ret i32 %conv1, !dbg !4848
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_dir_out(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !4849 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !4850, metadata !DIExpression()), !dbg !4851
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !4852
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %0, i32 0, i32 2, !dbg !4853
  %1 = load i8, i8* %bEndpointAddress, align 1, !dbg !4853
  %conv = zext i8 %1 to i32, !dbg !4852
  %and = and i32 %conv, 128, !dbg !4854
  %cmp = icmp eq i32 %and, 0, !dbg !4855
  %conv1 = zext i1 %cmp to i32, !dbg !4855
  ret i32 %conv1, !dbg !4856
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #2 !dbg !4857 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4860, metadata !DIExpression()), !dbg !4864
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4870, metadata !DIExpression()), !dbg !4871
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4872, metadata !DIExpression()), !dbg !4873
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4874, metadata !DIExpression()), !dbg !4875
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4876, metadata !DIExpression()), !dbg !4880
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4882, metadata !DIExpression()), !dbg !4886
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4888, metadata !DIExpression()), !dbg !4892
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4897, metadata !DIExpression()), !dbg !4898
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4899, metadata !DIExpression()), !dbg !4900
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4901, metadata !DIExpression()), !dbg !4902
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4903, metadata !DIExpression()), !dbg !4904
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4905, metadata !DIExpression()), !dbg !4906
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4907, metadata !DIExpression()), !dbg !4908
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4909, metadata !DIExpression()), !dbg !4910
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4911, metadata !DIExpression()), !dbg !4912
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4913, metadata !DIExpression()), !dbg !4914
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4915, metadata !DIExpression()), !dbg !4916
  %0 = load i64, i64* %size.addr, align 8, !dbg !4917
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4918
  %or = or i32 %1, 256, !dbg !4919
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4920
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !4921
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4922

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4923
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4924
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4925

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4926
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4927
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4928
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !4929
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4906
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4930
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4931
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4932
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4933
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4934
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4935
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !4936
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4936
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4936
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4936
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !4936
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4937
  br label %kmalloc.exit, !dbg !4937

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4938
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4939
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4939
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4941

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4942
  br label %kmalloc_index.exit.i, !dbg !4942

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4943
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4945
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4946

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4947
  br label %kmalloc_index.exit.i, !dbg !4947

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4948
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4950
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4951

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4952
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4953
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4954

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4955
  br label %kmalloc_index.exit.i, !dbg !4955

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4956
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4958
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4959

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4960
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4961
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4962

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4963
  br label %kmalloc_index.exit.i, !dbg !4963

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4964
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4966
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4967

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4968
  br label %kmalloc_index.exit.i, !dbg !4968

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4969
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4971
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4972

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4973
  br label %kmalloc_index.exit.i, !dbg !4973

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4974
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4976
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4977

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4978
  br label %kmalloc_index.exit.i, !dbg !4978

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4979
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4981
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4982

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4983
  br label %kmalloc_index.exit.i, !dbg !4983

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4984
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4986
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4987

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4988
  br label %kmalloc_index.exit.i, !dbg !4988

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4989
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4991
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4992

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4993
  br label %kmalloc_index.exit.i, !dbg !4993

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4994
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4996
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4997

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4998
  br label %kmalloc_index.exit.i, !dbg !4998

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4999
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !5001
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5002

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5003
  br label %kmalloc_index.exit.i, !dbg !5003

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5004
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !5006
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5007

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5008
  br label %kmalloc_index.exit.i, !dbg !5008

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5009
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !5011
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5012

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5013
  br label %kmalloc_index.exit.i, !dbg !5013

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5014
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !5016
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5017

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5018
  br label %kmalloc_index.exit.i, !dbg !5018

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5019
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !5021
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5022

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5023
  br label %kmalloc_index.exit.i, !dbg !5023

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5024
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !5026
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5027

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5028
  br label %kmalloc_index.exit.i, !dbg !5028

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5029
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !5031
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5032

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5033
  br label %kmalloc_index.exit.i, !dbg !5033

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5034
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !5036
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5037

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5038
  br label %kmalloc_index.exit.i, !dbg !5038

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5039
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !5041
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5042

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5043
  br label %kmalloc_index.exit.i, !dbg !5043

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5044
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !5046
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5047

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5048
  br label %kmalloc_index.exit.i, !dbg !5048

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5049
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !5051
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5052

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5053
  br label %kmalloc_index.exit.i, !dbg !5053

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5054
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !5056
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5057

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5058
  br label %kmalloc_index.exit.i, !dbg !5058

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5059
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !5061
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5062

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5063
  br label %kmalloc_index.exit.i, !dbg !5063

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5064
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !5066
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5067

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5068
  br label %kmalloc_index.exit.i, !dbg !5068

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5069
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !5071
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5072

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5073
  br label %kmalloc_index.exit.i, !dbg !5073

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5074
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !5076
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5077

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5078
  br label %kmalloc_index.exit.i, !dbg !5078

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5079
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !5081
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5082

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5083
  br label %kmalloc_index.exit.i, !dbg !5083

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !5084, !srcloc !5087
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 203) #9, !dbg !5088, !srcloc !5091
  unreachable, !dbg !5092

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !5093
  store i32 %45, i32* %index.i, align 4, !dbg !5094
  %46 = load i32, i32* %index.i, align 4, !dbg !5095
  %tobool.i = icmp ne i32 %46, 0, !dbg !5095
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5097

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5098
  br label %kmalloc.exit, !dbg !5098

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !5099
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5100
  %and.i.i = and i32 %48, 17, !dbg !5100
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5100
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5100
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5100
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5100
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5102

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5103
  br label %kmalloc_type.exit.i, !dbg !5103

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5104
  %and2.i.i = and i32 %49, 1, !dbg !5105
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5104
  %50 = zext i1 %tobool3.i.i to i64, !dbg !5104
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5104
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5106
  br label %kmalloc_type.exit.i, !dbg !5106

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !5107
  %idxprom.i = zext i32 %51 to i64, !dbg !5108
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5108
  %52 = load i32, i32* %index.i, align 4, !dbg !5109
  %idxprom6.i = zext i32 %52 to i64, !dbg !5108
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5108
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5108
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !5110
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !5111
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5112
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5113
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !5114
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5114
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5114
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5114
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !5114
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4875
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5115
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !5116
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5117
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5118
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !5119
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5120
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !5121
  store i8* %62, i8** %retval.i, align 8, !dbg !5122
  br label %kmalloc.exit, !dbg !5122

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !5123
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !5124
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !5125
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5125
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5125
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5125
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !5125
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5126
  br label %kmalloc.exit, !dbg !5126

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !5127
  ret i8* %65, !dbg !5128
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !5129 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5133, metadata !DIExpression()), !dbg !5138
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5140, metadata !DIExpression()), !dbg !5141
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5142, metadata !DIExpression()), !dbg !5143
  %0 = load i64, i64* %size.addr, align 8, !dbg !5144
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5146
  br i1 %1, label %if.then, label %if.end447, !dbg !5147

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5148
  %tobool = icmp ne i64 %2, 0, !dbg !5148
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5151

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5152
  br label %return, !dbg !5152

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5153
  %cmp = icmp ult i64 %3, 4096, !dbg !5155
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5156

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5157
  br label %return, !dbg !5157

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub = sub i64 %4, 1, !dbg !5158
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5158
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5158

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub4 = sub i64 %6, 1, !dbg !5158
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5158
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5158

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub6 = sub i64 %8, 1, !dbg !5158
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5158
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5158

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5158

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub9 = sub i64 %9, 1, !dbg !5158
  %and = and i64 %sub9, -9223372036854775808, !dbg !5158
  %tobool10 = icmp ne i64 %and, 0, !dbg !5158
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5158

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5158

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub13 = sub i64 %10, 1, !dbg !5158
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5158
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5158
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5158

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5158

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub18 = sub i64 %11, 1, !dbg !5158
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5158
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5158
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5158

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5158

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub23 = sub i64 %12, 1, !dbg !5158
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5158
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5158
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5158

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5158

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub28 = sub i64 %13, 1, !dbg !5158
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5158
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5158
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5158

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5158

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub33 = sub i64 %14, 1, !dbg !5158
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5158
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5158
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5158

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5158

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub38 = sub i64 %15, 1, !dbg !5158
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5158
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5158
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5158

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5158

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub43 = sub i64 %16, 1, !dbg !5158
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5158
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5158
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5158

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5158

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub48 = sub i64 %17, 1, !dbg !5158
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5158
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5158
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5158

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5158

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub53 = sub i64 %18, 1, !dbg !5158
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5158
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5158
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5158

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5158

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub58 = sub i64 %19, 1, !dbg !5158
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5158
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5158
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5158

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5158

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub63 = sub i64 %20, 1, !dbg !5158
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5158
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5158
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5158

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5158

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub68 = sub i64 %21, 1, !dbg !5158
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5158
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5158
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5158

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5158

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub73 = sub i64 %22, 1, !dbg !5158
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5158
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5158
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5158

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5158

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub78 = sub i64 %23, 1, !dbg !5158
  %and79 = and i64 %sub78, 562949953421312, !dbg !5158
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5158
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5158

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5158

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub83 = sub i64 %24, 1, !dbg !5158
  %and84 = and i64 %sub83, 281474976710656, !dbg !5158
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5158
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5158

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5158

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub88 = sub i64 %25, 1, !dbg !5158
  %and89 = and i64 %sub88, 140737488355328, !dbg !5158
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5158
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5158

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5158

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub93 = sub i64 %26, 1, !dbg !5158
  %and94 = and i64 %sub93, 70368744177664, !dbg !5158
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5158
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5158

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5158

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub98 = sub i64 %27, 1, !dbg !5158
  %and99 = and i64 %sub98, 35184372088832, !dbg !5158
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5158
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5158

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5158

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub103 = sub i64 %28, 1, !dbg !5158
  %and104 = and i64 %sub103, 17592186044416, !dbg !5158
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5158
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5158

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5158

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub108 = sub i64 %29, 1, !dbg !5158
  %and109 = and i64 %sub108, 8796093022208, !dbg !5158
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5158
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5158

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5158

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub113 = sub i64 %30, 1, !dbg !5158
  %and114 = and i64 %sub113, 4398046511104, !dbg !5158
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5158
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5158

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5158

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub118 = sub i64 %31, 1, !dbg !5158
  %and119 = and i64 %sub118, 2199023255552, !dbg !5158
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5158
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5158

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5158

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub123 = sub i64 %32, 1, !dbg !5158
  %and124 = and i64 %sub123, 1099511627776, !dbg !5158
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5158
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5158

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5158

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub128 = sub i64 %33, 1, !dbg !5158
  %and129 = and i64 %sub128, 549755813888, !dbg !5158
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5158
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5158

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5158

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub133 = sub i64 %34, 1, !dbg !5158
  %and134 = and i64 %sub133, 274877906944, !dbg !5158
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5158
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5158

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5158

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub138 = sub i64 %35, 1, !dbg !5158
  %and139 = and i64 %sub138, 137438953472, !dbg !5158
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5158
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5158

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5158

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub143 = sub i64 %36, 1, !dbg !5158
  %and144 = and i64 %sub143, 68719476736, !dbg !5158
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5158
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5158

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5158

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub148 = sub i64 %37, 1, !dbg !5158
  %and149 = and i64 %sub148, 34359738368, !dbg !5158
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5158
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5158

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5158

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub153 = sub i64 %38, 1, !dbg !5158
  %and154 = and i64 %sub153, 17179869184, !dbg !5158
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5158
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5158

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5158

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub158 = sub i64 %39, 1, !dbg !5158
  %and159 = and i64 %sub158, 8589934592, !dbg !5158
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5158
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5158

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5158

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub163 = sub i64 %40, 1, !dbg !5158
  %and164 = and i64 %sub163, 4294967296, !dbg !5158
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5158
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5158

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5158

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub168 = sub i64 %41, 1, !dbg !5158
  %and169 = and i64 %sub168, 2147483648, !dbg !5158
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5158
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5158

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5158

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub173 = sub i64 %42, 1, !dbg !5158
  %and174 = and i64 %sub173, 1073741824, !dbg !5158
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5158
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5158

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5158

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub178 = sub i64 %43, 1, !dbg !5158
  %and179 = and i64 %sub178, 536870912, !dbg !5158
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5158
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5158

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5158

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub183 = sub i64 %44, 1, !dbg !5158
  %and184 = and i64 %sub183, 268435456, !dbg !5158
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5158
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5158

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5158

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub188 = sub i64 %45, 1, !dbg !5158
  %and189 = and i64 %sub188, 134217728, !dbg !5158
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5158
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5158

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5158

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub193 = sub i64 %46, 1, !dbg !5158
  %and194 = and i64 %sub193, 67108864, !dbg !5158
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5158
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5158

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5158

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub198 = sub i64 %47, 1, !dbg !5158
  %and199 = and i64 %sub198, 33554432, !dbg !5158
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5158
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5158

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5158

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub203 = sub i64 %48, 1, !dbg !5158
  %and204 = and i64 %sub203, 16777216, !dbg !5158
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5158
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5158

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5158

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub208 = sub i64 %49, 1, !dbg !5158
  %and209 = and i64 %sub208, 8388608, !dbg !5158
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5158
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5158

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5158

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub213 = sub i64 %50, 1, !dbg !5158
  %and214 = and i64 %sub213, 4194304, !dbg !5158
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5158
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5158

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5158

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub218 = sub i64 %51, 1, !dbg !5158
  %and219 = and i64 %sub218, 2097152, !dbg !5158
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5158
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5158

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5158

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub223 = sub i64 %52, 1, !dbg !5158
  %and224 = and i64 %sub223, 1048576, !dbg !5158
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5158
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5158

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5158

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub228 = sub i64 %53, 1, !dbg !5158
  %and229 = and i64 %sub228, 524288, !dbg !5158
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5158
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5158

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5158

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub233 = sub i64 %54, 1, !dbg !5158
  %and234 = and i64 %sub233, 262144, !dbg !5158
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5158
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5158

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5158

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub238 = sub i64 %55, 1, !dbg !5158
  %and239 = and i64 %sub238, 131072, !dbg !5158
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5158
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5158

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5158

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub243 = sub i64 %56, 1, !dbg !5158
  %and244 = and i64 %sub243, 65536, !dbg !5158
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5158
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5158

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5158

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub248 = sub i64 %57, 1, !dbg !5158
  %and249 = and i64 %sub248, 32768, !dbg !5158
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5158
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5158

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5158

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub253 = sub i64 %58, 1, !dbg !5158
  %and254 = and i64 %sub253, 16384, !dbg !5158
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5158
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5158

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5158

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub258 = sub i64 %59, 1, !dbg !5158
  %and259 = and i64 %sub258, 8192, !dbg !5158
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5158
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5158

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5158

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub263 = sub i64 %60, 1, !dbg !5158
  %and264 = and i64 %sub263, 4096, !dbg !5158
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5158
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5158

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5158

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub268 = sub i64 %61, 1, !dbg !5158
  %and269 = and i64 %sub268, 2048, !dbg !5158
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5158
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5158

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5158

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub273 = sub i64 %62, 1, !dbg !5158
  %and274 = and i64 %sub273, 1024, !dbg !5158
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5158
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5158

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5158

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub278 = sub i64 %63, 1, !dbg !5158
  %and279 = and i64 %sub278, 512, !dbg !5158
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5158
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5158

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5158

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub283 = sub i64 %64, 1, !dbg !5158
  %and284 = and i64 %sub283, 256, !dbg !5158
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5158
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5158

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5158

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub288 = sub i64 %65, 1, !dbg !5158
  %and289 = and i64 %sub288, 128, !dbg !5158
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5158
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5158

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5158

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub293 = sub i64 %66, 1, !dbg !5158
  %and294 = and i64 %sub293, 64, !dbg !5158
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5158
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5158

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5158

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub298 = sub i64 %67, 1, !dbg !5158
  %and299 = and i64 %sub298, 32, !dbg !5158
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5158
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5158

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5158

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub303 = sub i64 %68, 1, !dbg !5158
  %and304 = and i64 %sub303, 16, !dbg !5158
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5158
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5158

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5158

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub308 = sub i64 %69, 1, !dbg !5158
  %and309 = and i64 %sub308, 8, !dbg !5158
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5158
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5158

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5158

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub313 = sub i64 %70, 1, !dbg !5158
  %and314 = and i64 %sub313, 4, !dbg !5158
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5158
  %71 = zext i1 %tobool315 to i64, !dbg !5158
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5158
  br label %cond.end, !dbg !5158

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5158
  br label %cond.end317, !dbg !5158

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5158
  br label %cond.end319, !dbg !5158

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5158
  br label %cond.end321, !dbg !5158

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5158
  br label %cond.end323, !dbg !5158

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5158
  br label %cond.end325, !dbg !5158

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5158
  br label %cond.end327, !dbg !5158

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5158
  br label %cond.end329, !dbg !5158

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5158
  br label %cond.end331, !dbg !5158

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5158
  br label %cond.end333, !dbg !5158

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5158
  br label %cond.end335, !dbg !5158

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5158
  br label %cond.end337, !dbg !5158

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5158
  br label %cond.end339, !dbg !5158

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5158
  br label %cond.end341, !dbg !5158

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5158
  br label %cond.end343, !dbg !5158

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5158
  br label %cond.end345, !dbg !5158

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5158
  br label %cond.end347, !dbg !5158

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5158
  br label %cond.end349, !dbg !5158

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5158
  br label %cond.end351, !dbg !5158

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5158
  br label %cond.end353, !dbg !5158

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5158
  br label %cond.end355, !dbg !5158

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5158
  br label %cond.end357, !dbg !5158

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5158
  br label %cond.end359, !dbg !5158

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5158
  br label %cond.end361, !dbg !5158

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5158
  br label %cond.end363, !dbg !5158

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5158
  br label %cond.end365, !dbg !5158

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5158
  br label %cond.end367, !dbg !5158

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5158
  br label %cond.end369, !dbg !5158

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5158
  br label %cond.end371, !dbg !5158

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5158
  br label %cond.end373, !dbg !5158

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5158
  br label %cond.end375, !dbg !5158

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5158
  br label %cond.end377, !dbg !5158

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5158
  br label %cond.end379, !dbg !5158

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5158
  br label %cond.end381, !dbg !5158

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5158
  br label %cond.end383, !dbg !5158

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5158
  br label %cond.end385, !dbg !5158

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5158
  br label %cond.end387, !dbg !5158

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5158
  br label %cond.end389, !dbg !5158

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5158
  br label %cond.end391, !dbg !5158

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5158
  br label %cond.end393, !dbg !5158

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5158
  br label %cond.end395, !dbg !5158

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5158
  br label %cond.end397, !dbg !5158

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5158
  br label %cond.end399, !dbg !5158

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5158
  br label %cond.end401, !dbg !5158

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5158
  br label %cond.end403, !dbg !5158

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5158
  br label %cond.end405, !dbg !5158

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5158
  br label %cond.end407, !dbg !5158

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5158
  br label %cond.end409, !dbg !5158

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5158
  br label %cond.end411, !dbg !5158

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5158
  br label %cond.end413, !dbg !5158

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5158
  br label %cond.end415, !dbg !5158

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5158
  br label %cond.end417, !dbg !5158

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5158
  br label %cond.end419, !dbg !5158

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5158
  br label %cond.end421, !dbg !5158

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5158
  br label %cond.end423, !dbg !5158

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5158
  br label %cond.end425, !dbg !5158

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5158
  br label %cond.end427, !dbg !5158

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5158
  br label %cond.end429, !dbg !5158

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5158
  br label %cond.end431, !dbg !5158

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5158
  br label %cond.end433, !dbg !5158

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5158
  br label %cond.end435, !dbg !5158

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5158
  br label %cond.end437, !dbg !5158

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5158
  br label %cond.end440, !dbg !5158

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5158

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5158
  br label %cond.end444, !dbg !5158

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5158
  %sub443 = sub i64 %72, 1, !dbg !5158
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !5158
  br label %cond.end444, !dbg !5158

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5158
  %sub446 = sub i32 %cond445, 12, !dbg !5159
  %add = add i32 %sub446, 1, !dbg !5160
  store i32 %add, i32* %retval, align 4, !dbg !5161
  br label %return, !dbg !5161

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5162
  %dec = add i64 %73, -1, !dbg !5162
  store i64 %dec, i64* %size.addr, align 8, !dbg !5162
  %74 = load i64, i64* %size.addr, align 8, !dbg !5163
  %shr = lshr i64 %74, 12, !dbg !5163
  store i64 %shr, i64* %size.addr, align 8, !dbg !5163
  %75 = load i64, i64* %size.addr, align 8, !dbg !5164
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5141
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5165
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5166
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #12, !dbg !5165, !srcloc !5167
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5165
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5168
  %add.i = add i32 %79, 1, !dbg !5169
  store i32 %add.i, i32* %retval, align 4, !dbg !5170
  br label %return, !dbg !5170

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5171
  ret i32 %80, !dbg !5171
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !5172 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5133, metadata !DIExpression()), !dbg !5176
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5140, metadata !DIExpression()), !dbg !5178
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5179, metadata !DIExpression()), !dbg !5180
  %0 = load i64, i64* %n.addr, align 8, !dbg !5181
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5178
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5182
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5183
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #12, !dbg !5182, !srcloc !5167
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5182
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5184
  %add.i = add i32 %4, 1, !dbg !5185
  %sub = sub i32 %add.i, 1, !dbg !5186
  ret i32 %sub, !dbg !5187
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #2 !dbg !5188 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5192, metadata !DIExpression()), !dbg !5193
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5194, metadata !DIExpression()), !dbg !5195
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5196, metadata !DIExpression()), !dbg !5197
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5198, metadata !DIExpression()), !dbg !5199
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5200
  ret i8* %0, !dbg !5201
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vmk80xx_write_packet(%struct.comedi_device* %dev, i32 %cmd) #2 !dbg !5202 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %cmd.addr = alloca i32, align 4
  %devpriv = alloca %struct.vmk80xx_private*, align 8
  %usb = alloca %struct.usb_device*, align 8
  %ep = alloca %struct.usb_endpoint_descriptor*, align 8
  %pipe = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5205, metadata !DIExpression()), !dbg !5206
  store i32 %cmd, i32* %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cmd.addr, metadata !5207, metadata !DIExpression()), !dbg !5208
  call void @llvm.dbg.declare(metadata %struct.vmk80xx_private** %devpriv, metadata !5209, metadata !DIExpression()), !dbg !5210
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5211
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5212
  %1 = load i8*, i8** %private, align 8, !dbg !5212
  %2 = bitcast i8* %1 to %struct.vmk80xx_private*, !dbg !5211
  store %struct.vmk80xx_private* %2, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5210
  call void @llvm.dbg.declare(metadata %struct.usb_device** %usb, metadata !5213, metadata !DIExpression()), !dbg !5427
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5428
  %call = call %struct.usb_device* @comedi_to_usb_dev(%struct.comedi_device* %3) #8, !dbg !5429
  store %struct.usb_device* %call, %struct.usb_device** %usb, align 8, !dbg !5427
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %ep, metadata !5430, metadata !DIExpression()), !dbg !5431
  call void @llvm.dbg.declare(metadata i32* %pipe, metadata !5432, metadata !DIExpression()), !dbg !5433
  %4 = load i32, i32* %cmd.addr, align 4, !dbg !5434
  %conv = trunc i32 %4 to i8, !dbg !5434
  %5 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5435
  %usb_tx_buf = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %5, i32 0, i32 4, !dbg !5436
  %6 = load i8*, i8** %usb_tx_buf, align 8, !dbg !5436
  %arrayidx = getelementptr i8, i8* %6, i64 0, !dbg !5435
  store i8 %conv, i8* %arrayidx, align 1, !dbg !5437
  %7 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5438
  %model = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %7, i32 0, i32 5, !dbg !5440
  %8 = load i32, i32* %model, align 8, !dbg !5440
  %cmp = icmp eq i32 %8, 1, !dbg !5441
  br i1 %cmp, label %if.then, label %if.end, !dbg !5442

if.then:                                          ; preds = %entry
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5443
  call void @vmk80xx_do_bulk_msg(%struct.comedi_device* %9) #8, !dbg !5445
  store i32 0, i32* %retval, align 4, !dbg !5446
  br label %return, !dbg !5446

if.end:                                           ; preds = %entry
  %10 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5447
  %ep_tx = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %10, i32 0, i32 1, !dbg !5448
  %11 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep_tx, align 8, !dbg !5448
  store %struct.usb_endpoint_descriptor* %11, %struct.usb_endpoint_descriptor** %ep, align 8, !dbg !5449
  %12 = load %struct.usb_device*, %struct.usb_device** %usb, align 8, !dbg !5450
  %13 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep, align 8, !dbg !5450
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %13, i32 0, i32 2, !dbg !5450
  %14 = load i8, i8* %bEndpointAddress, align 1, !dbg !5450
  %conv2 = zext i8 %14 to i32, !dbg !5450
  %call3 = call i32 @__create_pipe(%struct.usb_device* %12, i32 %conv2) #8, !dbg !5450
  %or = or i32 1073741824, %call3, !dbg !5450
  store i32 %or, i32* %pipe, align 4, !dbg !5451
  %15 = load %struct.usb_device*, %struct.usb_device** %usb, align 8, !dbg !5452
  %16 = load i32, i32* %pipe, align 4, !dbg !5453
  %17 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5454
  %usb_tx_buf4 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %17, i32 0, i32 4, !dbg !5455
  %18 = load i8*, i8** %usb_tx_buf4, align 8, !dbg !5455
  %19 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep, align 8, !dbg !5456
  %call5 = call i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %19) #8, !dbg !5457
  %call6 = call i32 @usb_interrupt_msg(%struct.usb_device* %15, i32 %16, i8* %18, i32 %call5, i32* null, i32 2500) #8, !dbg !5458
  store i32 %call6, i32* %retval, align 4, !dbg !5459
  br label %return, !dbg !5459

return:                                           ; preds = %if.end, %if.then
  %20 = load i32, i32* %retval, align 4, !dbg !5460
  ret i32 %20, !dbg !5460
}

; Function Attrs: noredzone
declare dso_local %struct.usb_device* @comedi_to_usb_dev(%struct.comedi_device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vmk80xx_do_bulk_msg(%struct.comedi_device* %dev) #2 !dbg !5461 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %devpriv = alloca %struct.vmk80xx_private*, align 8
  %usb = alloca %struct.usb_device*, align 8
  %tx_addr = alloca i8, align 1
  %rx_addr = alloca i8, align 1
  %tx_pipe = alloca i32, align 4
  %rx_pipe = alloca i32, align 4
  %size = alloca i64, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5462, metadata !DIExpression()), !dbg !5463
  call void @llvm.dbg.declare(metadata %struct.vmk80xx_private** %devpriv, metadata !5464, metadata !DIExpression()), !dbg !5465
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5466
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5467
  %1 = load i8*, i8** %private, align 8, !dbg !5467
  %2 = bitcast i8* %1 to %struct.vmk80xx_private*, !dbg !5466
  store %struct.vmk80xx_private* %2, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5465
  call void @llvm.dbg.declare(metadata %struct.usb_device** %usb, metadata !5468, metadata !DIExpression()), !dbg !5469
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5470
  %call = call %struct.usb_device* @comedi_to_usb_dev(%struct.comedi_device* %3) #8, !dbg !5471
  store %struct.usb_device* %call, %struct.usb_device** %usb, align 8, !dbg !5469
  call void @llvm.dbg.declare(metadata i8* %tx_addr, metadata !5472, metadata !DIExpression()), !dbg !5473
  call void @llvm.dbg.declare(metadata i8* %rx_addr, metadata !5474, metadata !DIExpression()), !dbg !5475
  call void @llvm.dbg.declare(metadata i32* %tx_pipe, metadata !5476, metadata !DIExpression()), !dbg !5477
  call void @llvm.dbg.declare(metadata i32* %rx_pipe, metadata !5478, metadata !DIExpression()), !dbg !5479
  call void @llvm.dbg.declare(metadata i64* %size, metadata !5480, metadata !DIExpression()), !dbg !5481
  %4 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5482
  %ep_tx = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %4, i32 0, i32 1, !dbg !5483
  %5 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep_tx, align 8, !dbg !5483
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %5, i32 0, i32 2, !dbg !5484
  %6 = load i8, i8* %bEndpointAddress, align 1, !dbg !5484
  store i8 %6, i8* %tx_addr, align 1, !dbg !5485
  %7 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5486
  %ep_rx = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %7, i32 0, i32 0, !dbg !5487
  %8 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep_rx, align 8, !dbg !5487
  %bEndpointAddress1 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %8, i32 0, i32 2, !dbg !5488
  %9 = load i8, i8* %bEndpointAddress1, align 1, !dbg !5488
  store i8 %9, i8* %rx_addr, align 1, !dbg !5489
  %10 = load %struct.usb_device*, %struct.usb_device** %usb, align 8, !dbg !5490
  %11 = load i8, i8* %tx_addr, align 1, !dbg !5490
  %conv = zext i8 %11 to i32, !dbg !5490
  %call2 = call i32 @__create_pipe(%struct.usb_device* %10, i32 %conv) #8, !dbg !5490
  %or = or i32 -1073741824, %call2, !dbg !5490
  store i32 %or, i32* %tx_pipe, align 4, !dbg !5491
  %12 = load %struct.usb_device*, %struct.usb_device** %usb, align 8, !dbg !5492
  %13 = load i8, i8* %rx_addr, align 1, !dbg !5492
  %conv3 = zext i8 %13 to i32, !dbg !5492
  %call4 = call i32 @__create_pipe(%struct.usb_device* %12, i32 %conv3) #8, !dbg !5492
  %or5 = or i32 -1073741824, %call4, !dbg !5492
  %or6 = or i32 %or5, 128, !dbg !5492
  store i32 %or6, i32* %rx_pipe, align 4, !dbg !5493
  %14 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5494
  %ep_tx7 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %14, i32 0, i32 1, !dbg !5495
  %15 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep_tx7, align 8, !dbg !5495
  %call8 = call i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %15) #8, !dbg !5496
  %conv9 = sext i32 %call8 to i64, !dbg !5496
  store i64 %conv9, i64* %size, align 8, !dbg !5497
  %16 = load %struct.usb_device*, %struct.usb_device** %usb, align 8, !dbg !5498
  %17 = load i32, i32* %tx_pipe, align 4, !dbg !5499
  %18 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5500
  %usb_tx_buf = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %18, i32 0, i32 4, !dbg !5501
  %19 = load i8*, i8** %usb_tx_buf, align 8, !dbg !5501
  %20 = load i64, i64* %size, align 8, !dbg !5502
  %conv10 = trunc i64 %20 to i32, !dbg !5502
  %21 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5503
  %ep_tx11 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %21, i32 0, i32 1, !dbg !5504
  %22 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep_tx11, align 8, !dbg !5504
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %22, i32 0, i32 5, !dbg !5505
  %23 = load i8, i8* %bInterval, align 1, !dbg !5505
  %conv12 = zext i8 %23 to i32, !dbg !5503
  %call13 = call i32 @usb_bulk_msg(%struct.usb_device* %16, i32 %17, i8* %19, i32 %conv10, i32* null, i32 %conv12) #8, !dbg !5506
  %24 = load %struct.usb_device*, %struct.usb_device** %usb, align 8, !dbg !5507
  %25 = load i32, i32* %rx_pipe, align 4, !dbg !5508
  %26 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5509
  %usb_rx_buf = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %26, i32 0, i32 3, !dbg !5510
  %27 = load i8*, i8** %usb_rx_buf, align 8, !dbg !5510
  %28 = load i64, i64* %size, align 8, !dbg !5511
  %conv14 = trunc i64 %28 to i32, !dbg !5511
  %call15 = call i32 @usb_bulk_msg(%struct.usb_device* %24, i32 %25, i8* %27, i32 %conv14, i32* null, i32 2500) #8, !dbg !5512
  ret void, !dbg !5513
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__create_pipe(%struct.usb_device* %dev, i32 %endpoint) #2 !dbg !5514 {
entry:
  %dev.addr = alloca %struct.usb_device*, align 8
  %endpoint.addr = alloca i32, align 4
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5517, metadata !DIExpression()), !dbg !5518
  store i32 %endpoint, i32* %endpoint.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %endpoint.addr, metadata !5519, metadata !DIExpression()), !dbg !5520
  %0 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5521
  %devnum = getelementptr inbounds %struct.usb_device, %struct.usb_device* %0, i32 0, i32 0, !dbg !5522
  %1 = load i32, i32* %devnum, align 8, !dbg !5522
  %shl = shl i32 %1, 8, !dbg !5523
  %2 = load i32, i32* %endpoint.addr, align 4, !dbg !5524
  %shl1 = shl i32 %2, 15, !dbg !5525
  %or = or i32 %shl, %shl1, !dbg !5526
  ret i32 %or, !dbg !5527
}

; Function Attrs: noredzone
declare dso_local i32 @usb_interrupt_msg(%struct.usb_device*, i32, i8*, i32, i32*, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_bulk_msg(%struct.usb_device*, i32, i8*, i32, i32*, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vmk80xx_ai_insn_read(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !5528 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %devpriv = alloca %struct.vmk80xx_private*, align 8
  %chan = alloca i32, align 4
  %reg = alloca [2 x i32], align 4
  %n = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5529, metadata !DIExpression()), !dbg !5530
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5531, metadata !DIExpression()), !dbg !5532
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5533, metadata !DIExpression()), !dbg !5534
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !5535, metadata !DIExpression()), !dbg !5536
  call void @llvm.dbg.declare(metadata %struct.vmk80xx_private** %devpriv, metadata !5537, metadata !DIExpression()), !dbg !5538
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5539
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5540
  %1 = load i8*, i8** %private, align 8, !dbg !5540
  %2 = bitcast i8* %1 to %struct.vmk80xx_private*, !dbg !5539
  store %struct.vmk80xx_private* %2, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5538
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !5541, metadata !DIExpression()), !dbg !5542
  call void @llvm.dbg.declare(metadata [2 x i32]* %reg, metadata !5543, metadata !DIExpression()), !dbg !5545
  call void @llvm.dbg.declare(metadata i32* %n, metadata !5546, metadata !DIExpression()), !dbg !5547
  %3 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5548
  %limit_sem = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %3, i32 0, i32 2, !dbg !5549
  call void @down(%struct.semaphore* %limit_sem) #8, !dbg !5550
  %4 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5551
  %chanspec = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %4, i32 0, i32 4, !dbg !5551
  %5 = load i32, i32* %chanspec, align 4, !dbg !5551
  %and = and i32 %5, 65535, !dbg !5551
  store i32 %and, i32* %chan, align 4, !dbg !5552
  %6 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5553
  %model = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %6, i32 0, i32 5, !dbg !5554
  %7 = load i32, i32* %model, align 8, !dbg !5554
  switch i32 %7, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ], !dbg !5555

sw.bb:                                            ; preds = %entry
  %8 = load i32, i32* %chan, align 4, !dbg !5556
  %tobool = icmp ne i32 %8, 0, !dbg !5556
  br i1 %tobool, label %if.else, label %if.then, !dbg !5559

if.then:                                          ; preds = %sw.bb
  %arrayidx = getelementptr [2 x i32], [2 x i32]* %reg, i64 0, i64 0, !dbg !5560
  store i32 2, i32* %arrayidx, align 4, !dbg !5561
  br label %if.end, !dbg !5560

if.else:                                          ; preds = %sw.bb
  %arrayidx1 = getelementptr [2 x i32], [2 x i32]* %reg, i64 0, i64 0, !dbg !5562
  store i32 3, i32* %arrayidx1, align 4, !dbg !5563
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog, !dbg !5564

sw.bb2:                                           ; preds = %entry
  br label %sw.default, !dbg !5564

sw.default:                                       ; preds = %entry, %sw.bb2
  %arrayidx3 = getelementptr [2 x i32], [2 x i32]* %reg, i64 0, i64 0, !dbg !5565
  store i32 2, i32* %arrayidx3, align 4, !dbg !5566
  %arrayidx4 = getelementptr [2 x i32], [2 x i32]* %reg, i64 0, i64 1, !dbg !5567
  store i32 3, i32* %arrayidx4, align 4, !dbg !5568
  %9 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5569
  %usb_tx_buf = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %9, i32 0, i32 4, !dbg !5570
  %10 = load i8*, i8** %usb_tx_buf, align 8, !dbg !5570
  %arrayidx5 = getelementptr i8, i8* %10, i64 0, !dbg !5569
  store i8 0, i8* %arrayidx5, align 1, !dbg !5571
  %11 = load i32, i32* %chan, align 4, !dbg !5572
  %conv = trunc i32 %11 to i8, !dbg !5572
  %12 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5573
  %usb_tx_buf6 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %12, i32 0, i32 4, !dbg !5574
  %13 = load i8*, i8** %usb_tx_buf6, align 8, !dbg !5574
  %arrayidx7 = getelementptr i8, i8* %13, i64 1, !dbg !5573
  store i8 %conv, i8* %arrayidx7, align 1, !dbg !5575
  br label %sw.epilog, !dbg !5576

sw.epilog:                                        ; preds = %sw.default, %if.end
  store i32 0, i32* %n, align 4, !dbg !5577
  br label %for.cond, !dbg !5579

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %14 = load i32, i32* %n, align 4, !dbg !5580
  %15 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5582
  %n8 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %15, i32 0, i32 1, !dbg !5583
  %16 = load i32, i32* %n8, align 4, !dbg !5583
  %cmp = icmp ult i32 %14, %16, !dbg !5584
  br i1 %cmp, label %for.body, label %for.end, !dbg !5585

for.body:                                         ; preds = %for.cond
  %17 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5586
  %call = call i32 @vmk80xx_read_packet(%struct.comedi_device* %17) #8, !dbg !5589
  %tobool10 = icmp ne i32 %call, 0, !dbg !5589
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !5590

if.then11:                                        ; preds = %for.body
  br label %for.end, !dbg !5591

if.end12:                                         ; preds = %for.body
  %18 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5592
  %model13 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %18, i32 0, i32 5, !dbg !5594
  %19 = load i32, i32* %model13, align 8, !dbg !5594
  %cmp14 = icmp eq i32 %19, 0, !dbg !5595
  br i1 %cmp14, label %if.then16, label %if.end22, !dbg !5596

if.then16:                                        ; preds = %if.end12
  %20 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5597
  %usb_rx_buf = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %20, i32 0, i32 3, !dbg !5599
  %21 = load i8*, i8** %usb_rx_buf, align 8, !dbg !5599
  %arrayidx17 = getelementptr [2 x i32], [2 x i32]* %reg, i64 0, i64 0, !dbg !5600
  %22 = load i32, i32* %arrayidx17, align 4, !dbg !5600
  %idxprom = sext i32 %22 to i64, !dbg !5597
  %arrayidx18 = getelementptr i8, i8* %21, i64 %idxprom, !dbg !5597
  %23 = load i8, i8* %arrayidx18, align 1, !dbg !5597
  %conv19 = zext i8 %23 to i32, !dbg !5597
  %24 = load i32*, i32** %data.addr, align 8, !dbg !5601
  %25 = load i32, i32* %n, align 4, !dbg !5602
  %idxprom20 = sext i32 %25 to i64, !dbg !5601
  %arrayidx21 = getelementptr i32, i32* %24, i64 %idxprom20, !dbg !5601
  store i32 %conv19, i32* %arrayidx21, align 4, !dbg !5603
  br label %for.inc, !dbg !5604

if.end22:                                         ; preds = %if.end12
  %26 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5605
  %usb_rx_buf23 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %26, i32 0, i32 3, !dbg !5606
  %27 = load i8*, i8** %usb_rx_buf23, align 8, !dbg !5606
  %arrayidx24 = getelementptr [2 x i32], [2 x i32]* %reg, i64 0, i64 0, !dbg !5607
  %28 = load i32, i32* %arrayidx24, align 4, !dbg !5607
  %idxprom25 = sext i32 %28 to i64, !dbg !5605
  %arrayidx26 = getelementptr i8, i8* %27, i64 %idxprom25, !dbg !5605
  %29 = load i8, i8* %arrayidx26, align 1, !dbg !5605
  %conv27 = zext i8 %29 to i32, !dbg !5605
  %30 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5608
  %usb_rx_buf28 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %30, i32 0, i32 3, !dbg !5609
  %31 = load i8*, i8** %usb_rx_buf28, align 8, !dbg !5609
  %arrayidx29 = getelementptr [2 x i32], [2 x i32]* %reg, i64 0, i64 1, !dbg !5610
  %32 = load i32, i32* %arrayidx29, align 4, !dbg !5610
  %idxprom30 = sext i32 %32 to i64, !dbg !5608
  %arrayidx31 = getelementptr i8, i8* %31, i64 %idxprom30, !dbg !5608
  %33 = load i8, i8* %arrayidx31, align 1, !dbg !5608
  %conv32 = zext i8 %33 to i32, !dbg !5608
  %mul = mul i32 256, %conv32, !dbg !5611
  %add = add i32 %conv27, %mul, !dbg !5612
  %34 = load i32*, i32** %data.addr, align 8, !dbg !5613
  %35 = load i32, i32* %n, align 4, !dbg !5614
  %idxprom33 = sext i32 %35 to i64, !dbg !5613
  %arrayidx34 = getelementptr i32, i32* %34, i64 %idxprom33, !dbg !5613
  store i32 %add, i32* %arrayidx34, align 4, !dbg !5615
  br label %for.inc, !dbg !5616

for.inc:                                          ; preds = %if.end22, %if.then16
  %36 = load i32, i32* %n, align 4, !dbg !5617
  %inc = add i32 %36, 1, !dbg !5617
  store i32 %inc, i32* %n, align 4, !dbg !5617
  br label %for.cond, !dbg !5618, !llvm.loop !5619

for.end:                                          ; preds = %if.then11, %for.cond
  %37 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5621
  %limit_sem35 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %37, i32 0, i32 2, !dbg !5622
  call void @up(%struct.semaphore* %limit_sem35) #8, !dbg !5623
  %38 = load i32, i32* %n, align 4, !dbg !5624
  ret i32 %38, !dbg !5625
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vmk80xx_ao_insn_write(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !5626 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %devpriv = alloca %struct.vmk80xx_private*, align 8
  %chan = alloca i32, align 4
  %cmd = alloca i32, align 4
  %reg = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5627, metadata !DIExpression()), !dbg !5628
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5629, metadata !DIExpression()), !dbg !5630
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5631, metadata !DIExpression()), !dbg !5632
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !5633, metadata !DIExpression()), !dbg !5634
  call void @llvm.dbg.declare(metadata %struct.vmk80xx_private** %devpriv, metadata !5635, metadata !DIExpression()), !dbg !5636
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5637
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5638
  %1 = load i8*, i8** %private, align 8, !dbg !5638
  %2 = bitcast i8* %1 to %struct.vmk80xx_private*, !dbg !5637
  store %struct.vmk80xx_private* %2, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5636
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !5639, metadata !DIExpression()), !dbg !5640
  call void @llvm.dbg.declare(metadata i32* %cmd, metadata !5641, metadata !DIExpression()), !dbg !5642
  call void @llvm.dbg.declare(metadata i32* %reg, metadata !5643, metadata !DIExpression()), !dbg !5644
  call void @llvm.dbg.declare(metadata i32* %n, metadata !5645, metadata !DIExpression()), !dbg !5646
  %3 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5647
  %limit_sem = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %3, i32 0, i32 2, !dbg !5648
  call void @down(%struct.semaphore* %limit_sem) #8, !dbg !5649
  %4 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5650
  %chanspec = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %4, i32 0, i32 4, !dbg !5650
  %5 = load i32, i32* %chanspec, align 4, !dbg !5650
  %and = and i32 %5, 65535, !dbg !5650
  store i32 %and, i32* %chan, align 4, !dbg !5651
  %6 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5652
  %model = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %6, i32 0, i32 5, !dbg !5653
  %7 = load i32, i32* %model, align 8, !dbg !5653
  switch i32 %7, label %sw.default [
    i32 0, label %sw.bb
  ], !dbg !5654

sw.bb:                                            ; preds = %entry
  store i32 5, i32* %cmd, align 4, !dbg !5655
  %8 = load i32, i32* %chan, align 4, !dbg !5657
  %tobool = icmp ne i32 %8, 0, !dbg !5657
  br i1 %tobool, label %if.else, label %if.then, !dbg !5659

if.then:                                          ; preds = %sw.bb
  store i32 2, i32* %reg, align 4, !dbg !5660
  br label %if.end, !dbg !5661

if.else:                                          ; preds = %sw.bb
  store i32 3, i32* %reg, align 4, !dbg !5662
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog, !dbg !5663

sw.default:                                       ; preds = %entry
  store i32 2, i32* %cmd, align 4, !dbg !5664
  store i32 2, i32* %reg, align 4, !dbg !5665
  %9 = load i32, i32* %chan, align 4, !dbg !5666
  %conv = trunc i32 %9 to i8, !dbg !5666
  %10 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5667
  %usb_tx_buf = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %10, i32 0, i32 4, !dbg !5668
  %11 = load i8*, i8** %usb_tx_buf, align 8, !dbg !5668
  %arrayidx = getelementptr i8, i8* %11, i64 1, !dbg !5667
  store i8 %conv, i8* %arrayidx, align 1, !dbg !5669
  br label %sw.epilog, !dbg !5670

sw.epilog:                                        ; preds = %sw.default, %if.end
  store i32 0, i32* %n, align 4, !dbg !5671
  br label %for.cond, !dbg !5673

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %12 = load i32, i32* %n, align 4, !dbg !5674
  %13 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5676
  %n1 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %13, i32 0, i32 1, !dbg !5677
  %14 = load i32, i32* %n1, align 4, !dbg !5677
  %cmp = icmp ult i32 %12, %14, !dbg !5678
  br i1 %cmp, label %for.body, label %for.end, !dbg !5679

for.body:                                         ; preds = %for.cond
  %15 = load i32*, i32** %data.addr, align 8, !dbg !5680
  %16 = load i32, i32* %n, align 4, !dbg !5682
  %idxprom = sext i32 %16 to i64, !dbg !5680
  %arrayidx3 = getelementptr i32, i32* %15, i64 %idxprom, !dbg !5680
  %17 = load i32, i32* %arrayidx3, align 4, !dbg !5680
  %conv4 = trunc i32 %17 to i8, !dbg !5680
  %18 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5683
  %usb_tx_buf5 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %18, i32 0, i32 4, !dbg !5684
  %19 = load i8*, i8** %usb_tx_buf5, align 8, !dbg !5684
  %20 = load i32, i32* %reg, align 4, !dbg !5685
  %idxprom6 = sext i32 %20 to i64, !dbg !5683
  %arrayidx7 = getelementptr i8, i8* %19, i64 %idxprom6, !dbg !5683
  store i8 %conv4, i8* %arrayidx7, align 1, !dbg !5686
  %21 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5687
  %22 = load i32, i32* %cmd, align 4, !dbg !5689
  %call = call i32 @vmk80xx_write_packet(%struct.comedi_device* %21, i32 %22) #8, !dbg !5690
  %tobool8 = icmp ne i32 %call, 0, !dbg !5690
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !5691

if.then9:                                         ; preds = %for.body
  br label %for.end, !dbg !5692

if.end10:                                         ; preds = %for.body
  br label %for.inc, !dbg !5693

for.inc:                                          ; preds = %if.end10
  %23 = load i32, i32* %n, align 4, !dbg !5694
  %inc = add i32 %23, 1, !dbg !5694
  store i32 %inc, i32* %n, align 4, !dbg !5694
  br label %for.cond, !dbg !5695, !llvm.loop !5696

for.end:                                          ; preds = %if.then9, %for.cond
  %24 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5698
  %limit_sem11 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %24, i32 0, i32 2, !dbg !5699
  call void @up(%struct.semaphore* %limit_sem11) #8, !dbg !5700
  %25 = load i32, i32* %n, align 4, !dbg !5701
  ret i32 %25, !dbg !5702
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vmk80xx_ao_insn_read(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !5703 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %devpriv = alloca %struct.vmk80xx_private*, align 8
  %chan = alloca i32, align 4
  %reg = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5704, metadata !DIExpression()), !dbg !5705
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5706, metadata !DIExpression()), !dbg !5707
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5708, metadata !DIExpression()), !dbg !5709
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !5710, metadata !DIExpression()), !dbg !5711
  call void @llvm.dbg.declare(metadata %struct.vmk80xx_private** %devpriv, metadata !5712, metadata !DIExpression()), !dbg !5713
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5714
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5715
  %1 = load i8*, i8** %private, align 8, !dbg !5715
  %2 = bitcast i8* %1 to %struct.vmk80xx_private*, !dbg !5714
  store %struct.vmk80xx_private* %2, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5713
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !5716, metadata !DIExpression()), !dbg !5717
  call void @llvm.dbg.declare(metadata i32* %reg, metadata !5718, metadata !DIExpression()), !dbg !5719
  call void @llvm.dbg.declare(metadata i32* %n, metadata !5720, metadata !DIExpression()), !dbg !5721
  %3 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5722
  %limit_sem = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %3, i32 0, i32 2, !dbg !5723
  call void @down(%struct.semaphore* %limit_sem) #8, !dbg !5724
  %4 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5725
  %chanspec = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %4, i32 0, i32 4, !dbg !5725
  %5 = load i32, i32* %chanspec, align 4, !dbg !5725
  %and = and i32 %5, 65535, !dbg !5725
  store i32 %and, i32* %chan, align 4, !dbg !5726
  store i32 1, i32* %reg, align 4, !dbg !5727
  %6 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5728
  %usb_tx_buf = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %6, i32 0, i32 4, !dbg !5729
  %7 = load i8*, i8** %usb_tx_buf, align 8, !dbg !5729
  %arrayidx = getelementptr i8, i8* %7, i64 0, !dbg !5728
  store i8 15, i8* %arrayidx, align 1, !dbg !5730
  store i32 0, i32* %n, align 4, !dbg !5731
  br label %for.cond, !dbg !5733

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %n, align 4, !dbg !5734
  %9 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5736
  %n1 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %9, i32 0, i32 1, !dbg !5737
  %10 = load i32, i32* %n1, align 4, !dbg !5737
  %cmp = icmp ult i32 %8, %10, !dbg !5738
  br i1 %cmp, label %for.body, label %for.end, !dbg !5739

for.body:                                         ; preds = %for.cond
  %11 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5740
  %call = call i32 @vmk80xx_read_packet(%struct.comedi_device* %11) #8, !dbg !5743
  %tobool = icmp ne i32 %call, 0, !dbg !5743
  br i1 %tobool, label %if.then, label %if.end, !dbg !5744

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !5745

if.end:                                           ; preds = %for.body
  %12 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5746
  %usb_rx_buf = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %12, i32 0, i32 3, !dbg !5747
  %13 = load i8*, i8** %usb_rx_buf, align 8, !dbg !5747
  %14 = load i32, i32* %reg, align 4, !dbg !5748
  %15 = load i32, i32* %chan, align 4, !dbg !5749
  %add = add i32 %14, %15, !dbg !5750
  %idxprom = sext i32 %add to i64, !dbg !5746
  %arrayidx2 = getelementptr i8, i8* %13, i64 %idxprom, !dbg !5746
  %16 = load i8, i8* %arrayidx2, align 1, !dbg !5746
  %conv = zext i8 %16 to i32, !dbg !5746
  %17 = load i32*, i32** %data.addr, align 8, !dbg !5751
  %18 = load i32, i32* %n, align 4, !dbg !5752
  %idxprom3 = sext i32 %18 to i64, !dbg !5751
  %arrayidx4 = getelementptr i32, i32* %17, i64 %idxprom3, !dbg !5751
  store i32 %conv, i32* %arrayidx4, align 4, !dbg !5753
  br label %for.inc, !dbg !5754

for.inc:                                          ; preds = %if.end
  %19 = load i32, i32* %n, align 4, !dbg !5755
  %inc = add i32 %19, 1, !dbg !5755
  store i32 %inc, i32* %n, align 4, !dbg !5755
  br label %for.cond, !dbg !5756, !llvm.loop !5757

for.end:                                          ; preds = %if.then, %for.cond
  %20 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5759
  %limit_sem5 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %20, i32 0, i32 2, !dbg !5760
  call void @up(%struct.semaphore* %limit_sem5) #8, !dbg !5761
  %21 = load i32, i32* %n, align 4, !dbg !5762
  ret i32 %21, !dbg !5763
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vmk80xx_di_insn_bits(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !5764 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %devpriv = alloca %struct.vmk80xx_private*, align 8
  %rx_buf = alloca i8*, align 8
  %reg = alloca i32, align 4
  %retval1 = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5765, metadata !DIExpression()), !dbg !5766
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5767, metadata !DIExpression()), !dbg !5768
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5769, metadata !DIExpression()), !dbg !5770
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !5771, metadata !DIExpression()), !dbg !5772
  call void @llvm.dbg.declare(metadata %struct.vmk80xx_private** %devpriv, metadata !5773, metadata !DIExpression()), !dbg !5774
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5775
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5776
  %1 = load i8*, i8** %private, align 8, !dbg !5776
  %2 = bitcast i8* %1 to %struct.vmk80xx_private*, !dbg !5775
  store %struct.vmk80xx_private* %2, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5774
  call void @llvm.dbg.declare(metadata i8** %rx_buf, metadata !5777, metadata !DIExpression()), !dbg !5778
  call void @llvm.dbg.declare(metadata i32* %reg, metadata !5779, metadata !DIExpression()), !dbg !5780
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !5781, metadata !DIExpression()), !dbg !5782
  %3 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5783
  %limit_sem = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %3, i32 0, i32 2, !dbg !5784
  call void @down(%struct.semaphore* %limit_sem) #8, !dbg !5785
  %4 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5786
  %usb_rx_buf = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %4, i32 0, i32 3, !dbg !5787
  %5 = load i8*, i8** %usb_rx_buf, align 8, !dbg !5787
  store i8* %5, i8** %rx_buf, align 8, !dbg !5788
  %6 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5789
  %model = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %6, i32 0, i32 5, !dbg !5791
  %7 = load i32, i32* %model, align 8, !dbg !5791
  %cmp = icmp eq i32 %7, 1, !dbg !5792
  br i1 %cmp, label %if.then, label %if.else, !dbg !5793

if.then:                                          ; preds = %entry
  store i32 1, i32* %reg, align 4, !dbg !5794
  %8 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5796
  %usb_tx_buf = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %8, i32 0, i32 4, !dbg !5797
  %9 = load i8*, i8** %usb_tx_buf, align 8, !dbg !5797
  %arrayidx = getelementptr i8, i8* %9, i64 0, !dbg !5796
  store i8 5, i8* %arrayidx, align 1, !dbg !5798
  br label %if.end, !dbg !5799

if.else:                                          ; preds = %entry
  store i32 0, i32* %reg, align 4, !dbg !5800
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5802
  %call = call i32 @vmk80xx_read_packet(%struct.comedi_device* %10) #8, !dbg !5803
  store i32 %call, i32* %retval1, align 4, !dbg !5804
  %11 = load i32, i32* %retval1, align 4, !dbg !5805
  %tobool = icmp ne i32 %11, 0, !dbg !5805
  br i1 %tobool, label %if.end24, label %if.then2, !dbg !5807

if.then2:                                         ; preds = %if.end
  %12 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5808
  %model3 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %12, i32 0, i32 5, !dbg !5811
  %13 = load i32, i32* %model3, align 8, !dbg !5811
  %cmp4 = icmp eq i32 %13, 0, !dbg !5812
  br i1 %cmp4, label %if.then5, label %if.else18, !dbg !5813

if.then5:                                         ; preds = %if.then2
  %14 = load i8*, i8** %rx_buf, align 8, !dbg !5814
  %15 = load i32, i32* %reg, align 4, !dbg !5815
  %idxprom = sext i32 %15 to i64, !dbg !5814
  %arrayidx6 = getelementptr i8, i8* %14, i64 %idxprom, !dbg !5814
  %16 = load i8, i8* %arrayidx6, align 1, !dbg !5814
  %conv = zext i8 %16 to i32, !dbg !5814
  %shr = ashr i32 %conv, 4, !dbg !5816
  %and = and i32 %shr, 3, !dbg !5817
  %17 = load i8*, i8** %rx_buf, align 8, !dbg !5818
  %18 = load i32, i32* %reg, align 4, !dbg !5819
  %idxprom7 = sext i32 %18 to i64, !dbg !5818
  %arrayidx8 = getelementptr i8, i8* %17, i64 %idxprom7, !dbg !5818
  %19 = load i8, i8* %arrayidx8, align 1, !dbg !5818
  %conv9 = zext i8 %19 to i32, !dbg !5818
  %shl = shl i32 %conv9, 2, !dbg !5820
  %and10 = and i32 %shl, 4, !dbg !5821
  %or = or i32 %and, %and10, !dbg !5822
  %20 = load i8*, i8** %rx_buf, align 8, !dbg !5823
  %21 = load i32, i32* %reg, align 4, !dbg !5824
  %idxprom11 = sext i32 %21 to i64, !dbg !5823
  %arrayidx12 = getelementptr i8, i8* %20, i64 %idxprom11, !dbg !5823
  %22 = load i8, i8* %arrayidx12, align 1, !dbg !5823
  %conv13 = zext i8 %22 to i32, !dbg !5823
  %shr14 = ashr i32 %conv13, 3, !dbg !5825
  %and15 = and i32 %shr14, 24, !dbg !5826
  %or16 = or i32 %or, %and15, !dbg !5827
  %23 = load i32*, i32** %data.addr, align 8, !dbg !5828
  %arrayidx17 = getelementptr i32, i32* %23, i64 1, !dbg !5828
  store i32 %or16, i32* %arrayidx17, align 4, !dbg !5829
  br label %if.end23, !dbg !5828

if.else18:                                        ; preds = %if.then2
  %24 = load i8*, i8** %rx_buf, align 8, !dbg !5830
  %25 = load i32, i32* %reg, align 4, !dbg !5831
  %idxprom19 = sext i32 %25 to i64, !dbg !5830
  %arrayidx20 = getelementptr i8, i8* %24, i64 %idxprom19, !dbg !5830
  %26 = load i8, i8* %arrayidx20, align 1, !dbg !5830
  %conv21 = zext i8 %26 to i32, !dbg !5830
  %27 = load i32*, i32** %data.addr, align 8, !dbg !5832
  %arrayidx22 = getelementptr i32, i32* %27, i64 1, !dbg !5832
  store i32 %conv21, i32* %arrayidx22, align 4, !dbg !5833
  br label %if.end23

if.end23:                                         ; preds = %if.else18, %if.then5
  store i32 2, i32* %retval1, align 4, !dbg !5834
  br label %if.end24, !dbg !5835

if.end24:                                         ; preds = %if.end23, %if.end
  %28 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5836
  %limit_sem25 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %28, i32 0, i32 2, !dbg !5837
  call void @up(%struct.semaphore* %limit_sem25) #8, !dbg !5838
  %29 = load i32, i32* %retval1, align 4, !dbg !5839
  ret i32 %29, !dbg !5840
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vmk80xx_do_insn_bits(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !5841 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %devpriv = alloca %struct.vmk80xx_private*, align 8
  %rx_buf = alloca i8*, align 8
  %tx_buf = alloca i8*, align 8
  %reg = alloca i32, align 4
  %cmd = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5842, metadata !DIExpression()), !dbg !5843
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5844, metadata !DIExpression()), !dbg !5845
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5846, metadata !DIExpression()), !dbg !5847
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !5848, metadata !DIExpression()), !dbg !5849
  call void @llvm.dbg.declare(metadata %struct.vmk80xx_private** %devpriv, metadata !5850, metadata !DIExpression()), !dbg !5851
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5852
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5853
  %1 = load i8*, i8** %private, align 8, !dbg !5853
  %2 = bitcast i8* %1 to %struct.vmk80xx_private*, !dbg !5852
  store %struct.vmk80xx_private* %2, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5851
  call void @llvm.dbg.declare(metadata i8** %rx_buf, metadata !5854, metadata !DIExpression()), !dbg !5855
  %3 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5856
  %usb_rx_buf = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %3, i32 0, i32 3, !dbg !5857
  %4 = load i8*, i8** %usb_rx_buf, align 8, !dbg !5857
  store i8* %4, i8** %rx_buf, align 8, !dbg !5855
  call void @llvm.dbg.declare(metadata i8** %tx_buf, metadata !5858, metadata !DIExpression()), !dbg !5859
  %5 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5860
  %usb_tx_buf = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %5, i32 0, i32 4, !dbg !5861
  %6 = load i8*, i8** %usb_tx_buf, align 8, !dbg !5861
  store i8* %6, i8** %tx_buf, align 8, !dbg !5859
  call void @llvm.dbg.declare(metadata i32* %reg, metadata !5862, metadata !DIExpression()), !dbg !5863
  call void @llvm.dbg.declare(metadata i32* %cmd, metadata !5864, metadata !DIExpression()), !dbg !5865
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5866, metadata !DIExpression()), !dbg !5867
  store i32 0, i32* %ret, align 4, !dbg !5867
  %7 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5868
  %model = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %7, i32 0, i32 5, !dbg !5870
  %8 = load i32, i32* %model, align 8, !dbg !5870
  %cmp = icmp eq i32 %8, 1, !dbg !5871
  br i1 %cmp, label %if.then, label %if.else, !dbg !5872

if.then:                                          ; preds = %entry
  store i32 1, i32* %reg, align 4, !dbg !5873
  store i32 6, i32* %cmd, align 4, !dbg !5875
  br label %if.end, !dbg !5876

if.else:                                          ; preds = %entry
  store i32 1, i32* %reg, align 4, !dbg !5877
  store i32 5, i32* %cmd, align 4, !dbg !5879
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5880
  %limit_sem = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %9, i32 0, i32 2, !dbg !5881
  call void @down(%struct.semaphore* %limit_sem) #8, !dbg !5882
  %10 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5883
  %11 = load i32*, i32** %data.addr, align 8, !dbg !5885
  %call = call i32 @comedi_dio_update_state(%struct.comedi_subdevice* %10, i32* %11) #8, !dbg !5886
  %tobool = icmp ne i32 %call, 0, !dbg !5886
  br i1 %tobool, label %if.then1, label %if.end6, !dbg !5887

if.then1:                                         ; preds = %if.end
  %12 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5888
  %state = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %12, i32 0, i32 29, !dbg !5890
  %13 = load i32, i32* %state, align 4, !dbg !5890
  %conv = trunc i32 %13 to i8, !dbg !5888
  %14 = load i8*, i8** %tx_buf, align 8, !dbg !5891
  %15 = load i32, i32* %reg, align 4, !dbg !5892
  %idxprom = sext i32 %15 to i64, !dbg !5891
  %arrayidx = getelementptr i8, i8* %14, i64 %idxprom, !dbg !5891
  store i8 %conv, i8* %arrayidx, align 1, !dbg !5893
  %16 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5894
  %17 = load i32, i32* %cmd, align 4, !dbg !5895
  %call2 = call i32 @vmk80xx_write_packet(%struct.comedi_device* %16, i32 %17) #8, !dbg !5896
  store i32 %call2, i32* %ret, align 4, !dbg !5897
  %18 = load i32, i32* %ret, align 4, !dbg !5898
  %tobool3 = icmp ne i32 %18, 0, !dbg !5898
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5900

if.then4:                                         ; preds = %if.then1
  br label %out, !dbg !5901

if.end5:                                          ; preds = %if.then1
  br label %if.end6, !dbg !5902

if.end6:                                          ; preds = %if.end5, %if.end
  %19 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5903
  %model7 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %19, i32 0, i32 5, !dbg !5905
  %20 = load i32, i32* %model7, align 8, !dbg !5905
  %cmp8 = icmp eq i32 %20, 1, !dbg !5906
  br i1 %cmp8, label %if.then10, label %if.else20, !dbg !5907

if.then10:                                        ; preds = %if.end6
  %21 = load i8*, i8** %tx_buf, align 8, !dbg !5908
  %arrayidx11 = getelementptr i8, i8* %21, i64 0, !dbg !5908
  store i8 14, i8* %arrayidx11, align 1, !dbg !5910
  %22 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5911
  %call12 = call i32 @vmk80xx_read_packet(%struct.comedi_device* %22) #8, !dbg !5912
  store i32 %call12, i32* %ret, align 4, !dbg !5913
  %23 = load i32, i32* %ret, align 4, !dbg !5914
  %tobool13 = icmp ne i32 %23, 0, !dbg !5914
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !5916

if.then14:                                        ; preds = %if.then10
  br label %out, !dbg !5917

if.end15:                                         ; preds = %if.then10
  %24 = load i8*, i8** %rx_buf, align 8, !dbg !5918
  %25 = load i32, i32* %reg, align 4, !dbg !5919
  %idxprom16 = sext i32 %25 to i64, !dbg !5918
  %arrayidx17 = getelementptr i8, i8* %24, i64 %idxprom16, !dbg !5918
  %26 = load i8, i8* %arrayidx17, align 1, !dbg !5918
  %conv18 = zext i8 %26 to i32, !dbg !5918
  %27 = load i32*, i32** %data.addr, align 8, !dbg !5920
  %arrayidx19 = getelementptr i32, i32* %27, i64 1, !dbg !5920
  store i32 %conv18, i32* %arrayidx19, align 4, !dbg !5921
  br label %if.end23, !dbg !5922

if.else20:                                        ; preds = %if.end6
  %28 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5923
  %state21 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %28, i32 0, i32 29, !dbg !5925
  %29 = load i32, i32* %state21, align 4, !dbg !5925
  %30 = load i32*, i32** %data.addr, align 8, !dbg !5926
  %arrayidx22 = getelementptr i32, i32* %30, i64 1, !dbg !5926
  store i32 %29, i32* %arrayidx22, align 4, !dbg !5927
  br label %if.end23

if.end23:                                         ; preds = %if.else20, %if.end15
  br label %out, !dbg !5928

out:                                              ; preds = %if.end23, %if.then14, %if.then4
  call void @llvm.dbg.label(metadata !5929), !dbg !5930
  %31 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5931
  %limit_sem24 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %31, i32 0, i32 2, !dbg !5932
  call void @up(%struct.semaphore* %limit_sem24) #8, !dbg !5933
  %32 = load i32, i32* %ret, align 4, !dbg !5934
  %tobool25 = icmp ne i32 %32, 0, !dbg !5934
  br i1 %tobool25, label %cond.true, label %cond.false, !dbg !5934

cond.true:                                        ; preds = %out
  %33 = load i32, i32* %ret, align 4, !dbg !5935
  br label %cond.end, !dbg !5934

cond.false:                                       ; preds = %out
  %34 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5936
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %34, i32 0, i32 1, !dbg !5937
  %35 = load i32, i32* %n, align 4, !dbg !5937
  br label %cond.end, !dbg !5934

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %33, %cond.true ], [ %35, %cond.false ], !dbg !5934
  ret i32 %cond, !dbg !5938
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vmk80xx_cnt_insn_read(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !5939 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %devpriv = alloca %struct.vmk80xx_private*, align 8
  %chan = alloca i32, align 4
  %reg = alloca [2 x i32], align 4
  %n = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5940, metadata !DIExpression()), !dbg !5941
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5942, metadata !DIExpression()), !dbg !5943
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5944, metadata !DIExpression()), !dbg !5945
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !5946, metadata !DIExpression()), !dbg !5947
  call void @llvm.dbg.declare(metadata %struct.vmk80xx_private** %devpriv, metadata !5948, metadata !DIExpression()), !dbg !5949
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5950
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5951
  %1 = load i8*, i8** %private, align 8, !dbg !5951
  %2 = bitcast i8* %1 to %struct.vmk80xx_private*, !dbg !5950
  store %struct.vmk80xx_private* %2, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5949
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !5952, metadata !DIExpression()), !dbg !5953
  call void @llvm.dbg.declare(metadata [2 x i32]* %reg, metadata !5954, metadata !DIExpression()), !dbg !5955
  call void @llvm.dbg.declare(metadata i32* %n, metadata !5956, metadata !DIExpression()), !dbg !5957
  %3 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5958
  %limit_sem = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %3, i32 0, i32 2, !dbg !5959
  call void @down(%struct.semaphore* %limit_sem) #8, !dbg !5960
  %4 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5961
  %chanspec = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %4, i32 0, i32 4, !dbg !5961
  %5 = load i32, i32* %chanspec, align 4, !dbg !5961
  %and = and i32 %5, 65535, !dbg !5961
  store i32 %and, i32* %chan, align 4, !dbg !5962
  %6 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5963
  %model = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %6, i32 0, i32 5, !dbg !5964
  %7 = load i32, i32* %model, align 8, !dbg !5964
  switch i32 %7, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ], !dbg !5965

sw.bb:                                            ; preds = %entry
  %8 = load i32, i32* %chan, align 4, !dbg !5966
  %tobool = icmp ne i32 %8, 0, !dbg !5966
  br i1 %tobool, label %if.else, label %if.then, !dbg !5969

if.then:                                          ; preds = %sw.bb
  %arrayidx = getelementptr [2 x i32], [2 x i32]* %reg, i64 0, i64 0, !dbg !5970
  store i32 4, i32* %arrayidx, align 4, !dbg !5971
  br label %if.end, !dbg !5970

if.else:                                          ; preds = %sw.bb
  %arrayidx1 = getelementptr [2 x i32], [2 x i32]* %reg, i64 0, i64 0, !dbg !5972
  store i32 6, i32* %arrayidx1, align 4, !dbg !5973
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog, !dbg !5974

sw.bb2:                                           ; preds = %entry
  br label %sw.default, !dbg !5974

sw.default:                                       ; preds = %entry, %sw.bb2
  %arrayidx3 = getelementptr [2 x i32], [2 x i32]* %reg, i64 0, i64 0, !dbg !5975
  store i32 2, i32* %arrayidx3, align 4, !dbg !5976
  %arrayidx4 = getelementptr [2 x i32], [2 x i32]* %reg, i64 0, i64 1, !dbg !5977
  store i32 2, i32* %arrayidx4, align 4, !dbg !5978
  %9 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5979
  %usb_tx_buf = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %9, i32 0, i32 4, !dbg !5980
  %10 = load i8*, i8** %usb_tx_buf, align 8, !dbg !5980
  %arrayidx5 = getelementptr i8, i8* %10, i64 0, !dbg !5979
  store i8 9, i8* %arrayidx5, align 1, !dbg !5981
  br label %sw.epilog, !dbg !5982

sw.epilog:                                        ; preds = %sw.default, %if.end
  store i32 0, i32* %n, align 4, !dbg !5983
  br label %for.cond, !dbg !5985

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %11 = load i32, i32* %n, align 4, !dbg !5986
  %12 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5988
  %n6 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %12, i32 0, i32 1, !dbg !5989
  %13 = load i32, i32* %n6, align 4, !dbg !5989
  %cmp = icmp ult i32 %11, %13, !dbg !5990
  br i1 %cmp, label %for.body, label %for.end, !dbg !5991

for.body:                                         ; preds = %for.cond
  %14 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5992
  %call = call i32 @vmk80xx_read_packet(%struct.comedi_device* %14) #8, !dbg !5995
  %tobool7 = icmp ne i32 %call, 0, !dbg !5995
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !5996

if.then8:                                         ; preds = %for.body
  br label %for.end, !dbg !5997

if.end9:                                          ; preds = %for.body
  %15 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !5998
  %model10 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %15, i32 0, i32 5, !dbg !6000
  %16 = load i32, i32* %model10, align 8, !dbg !6000
  %cmp11 = icmp eq i32 %16, 0, !dbg !6001
  br i1 %cmp11, label %if.then12, label %if.else17, !dbg !6002

if.then12:                                        ; preds = %if.end9
  %17 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !6003
  %usb_rx_buf = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %17, i32 0, i32 3, !dbg !6004
  %18 = load i8*, i8** %usb_rx_buf, align 8, !dbg !6004
  %arrayidx13 = getelementptr [2 x i32], [2 x i32]* %reg, i64 0, i64 0, !dbg !6005
  %19 = load i32, i32* %arrayidx13, align 4, !dbg !6005
  %idxprom = sext i32 %19 to i64, !dbg !6003
  %arrayidx14 = getelementptr i8, i8* %18, i64 %idxprom, !dbg !6003
  %20 = load i8, i8* %arrayidx14, align 1, !dbg !6003
  %conv = zext i8 %20 to i32, !dbg !6003
  %21 = load i32*, i32** %data.addr, align 8, !dbg !6006
  %22 = load i32, i32* %n, align 4, !dbg !6007
  %idxprom15 = sext i32 %22 to i64, !dbg !6006
  %arrayidx16 = getelementptr i32, i32* %21, i64 %idxprom15, !dbg !6006
  store i32 %conv, i32* %arrayidx16, align 4, !dbg !6008
  br label %if.end35, !dbg !6006

if.else17:                                        ; preds = %if.end9
  %23 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !6009
  %usb_rx_buf18 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %23, i32 0, i32 3, !dbg !6010
  %24 = load i8*, i8** %usb_rx_buf18, align 8, !dbg !6010
  %arrayidx19 = getelementptr [2 x i32], [2 x i32]* %reg, i64 0, i64 0, !dbg !6011
  %25 = load i32, i32* %arrayidx19, align 4, !dbg !6011
  %26 = load i32, i32* %chan, align 4, !dbg !6012
  %add = add i32 %26, 1, !dbg !6013
  %mul = mul i32 %25, %add, !dbg !6014
  %add20 = add i32 %mul, 1, !dbg !6015
  %idxprom21 = sext i32 %add20 to i64, !dbg !6009
  %arrayidx22 = getelementptr i8, i8* %24, i64 %idxprom21, !dbg !6009
  %27 = load i8, i8* %arrayidx22, align 1, !dbg !6009
  %conv23 = zext i8 %27 to i32, !dbg !6009
  %28 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !6016
  %usb_rx_buf24 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %28, i32 0, i32 3, !dbg !6017
  %29 = load i8*, i8** %usb_rx_buf24, align 8, !dbg !6017
  %arrayidx25 = getelementptr [2 x i32], [2 x i32]* %reg, i64 0, i64 1, !dbg !6018
  %30 = load i32, i32* %arrayidx25, align 4, !dbg !6018
  %mul26 = mul i32 %30, 2, !dbg !6019
  %add27 = add i32 %mul26, 2, !dbg !6020
  %idxprom28 = sext i32 %add27 to i64, !dbg !6016
  %arrayidx29 = getelementptr i8, i8* %29, i64 %idxprom28, !dbg !6016
  %31 = load i8, i8* %arrayidx29, align 1, !dbg !6016
  %conv30 = zext i8 %31 to i32, !dbg !6016
  %mul31 = mul i32 256, %conv30, !dbg !6021
  %add32 = add i32 %conv23, %mul31, !dbg !6022
  %32 = load i32*, i32** %data.addr, align 8, !dbg !6023
  %33 = load i32, i32* %n, align 4, !dbg !6024
  %idxprom33 = sext i32 %33 to i64, !dbg !6023
  %arrayidx34 = getelementptr i32, i32* %32, i64 %idxprom33, !dbg !6023
  store i32 %add32, i32* %arrayidx34, align 4, !dbg !6025
  br label %if.end35

if.end35:                                         ; preds = %if.else17, %if.then12
  br label %for.inc, !dbg !6026

for.inc:                                          ; preds = %if.end35
  %34 = load i32, i32* %n, align 4, !dbg !6027
  %inc = add i32 %34, 1, !dbg !6027
  store i32 %inc, i32* %n, align 4, !dbg !6027
  br label %for.cond, !dbg !6028, !llvm.loop !6029

for.end:                                          ; preds = %if.then8, %for.cond
  %35 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !6031
  %limit_sem36 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %35, i32 0, i32 2, !dbg !6032
  call void @up(%struct.semaphore* %limit_sem36) #8, !dbg !6033
  %36 = load i32, i32* %n, align 4, !dbg !6034
  ret i32 %36, !dbg !6035
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vmk80xx_cnt_insn_config(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !6036 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %devpriv = alloca %struct.vmk80xx_private*, align 8
  %chan = alloca i32, align 4
  %cmd = alloca i32, align 4
  %reg = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !6037, metadata !DIExpression()), !dbg !6038
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !6039, metadata !DIExpression()), !dbg !6040
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !6041, metadata !DIExpression()), !dbg !6042
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !6043, metadata !DIExpression()), !dbg !6044
  call void @llvm.dbg.declare(metadata %struct.vmk80xx_private** %devpriv, metadata !6045, metadata !DIExpression()), !dbg !6046
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6047
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !6048
  %1 = load i8*, i8** %private, align 8, !dbg !6048
  %2 = bitcast i8* %1 to %struct.vmk80xx_private*, !dbg !6047
  store %struct.vmk80xx_private* %2, %struct.vmk80xx_private** %devpriv, align 8, !dbg !6046
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !6049, metadata !DIExpression()), !dbg !6050
  %3 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !6051
  %chanspec = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %3, i32 0, i32 4, !dbg !6051
  %4 = load i32, i32* %chanspec, align 4, !dbg !6051
  %and = and i32 %4, 65535, !dbg !6051
  store i32 %and, i32* %chan, align 4, !dbg !6050
  call void @llvm.dbg.declare(metadata i32* %cmd, metadata !6052, metadata !DIExpression()), !dbg !6053
  call void @llvm.dbg.declare(metadata i32* %reg, metadata !6054, metadata !DIExpression()), !dbg !6055
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6056, metadata !DIExpression()), !dbg !6057
  %5 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !6058
  %limit_sem = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %5, i32 0, i32 2, !dbg !6059
  call void @down(%struct.semaphore* %limit_sem) #8, !dbg !6060
  %6 = load i32*, i32** %data.addr, align 8, !dbg !6061
  %arrayidx = getelementptr i32, i32* %6, i64 0, !dbg !6061
  %7 = load i32, i32* %arrayidx, align 4, !dbg !6061
  switch i32 %7, label %sw.default [
    i32 34, label %sw.bb
  ], !dbg !6062

sw.bb:                                            ; preds = %entry
  %8 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !6063
  %model = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %8, i32 0, i32 5, !dbg !6066
  %9 = load i32, i32* %model, align 8, !dbg !6066
  %cmp = icmp eq i32 %9, 0, !dbg !6067
  br i1 %cmp, label %if.then, label %if.else3, !dbg !6068

if.then:                                          ; preds = %sw.bb
  %10 = load i32, i32* %chan, align 4, !dbg !6069
  %tobool = icmp ne i32 %10, 0, !dbg !6069
  br i1 %tobool, label %if.else, label %if.then1, !dbg !6072

if.then1:                                         ; preds = %if.then
  store i32 3, i32* %cmd, align 4, !dbg !6073
  store i32 4, i32* %reg, align 4, !dbg !6075
  br label %if.end, !dbg !6076

if.else:                                          ; preds = %if.then
  store i32 4, i32* %cmd, align 4, !dbg !6077
  store i32 6, i32* %reg, align 4, !dbg !6079
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  %11 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !6080
  %usb_tx_buf = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %11, i32 0, i32 4, !dbg !6081
  %12 = load i8*, i8** %usb_tx_buf, align 8, !dbg !6081
  %13 = load i32, i32* %reg, align 4, !dbg !6082
  %idxprom = sext i32 %13 to i64, !dbg !6080
  %arrayidx2 = getelementptr i8, i8* %12, i64 %idxprom, !dbg !6080
  store i8 0, i8* %arrayidx2, align 1, !dbg !6083
  br label %if.end4, !dbg !6084

if.else3:                                         ; preds = %sw.bb
  store i32 10, i32* %cmd, align 4, !dbg !6085
  br label %if.end4

if.end4:                                          ; preds = %if.else3, %if.end
  %14 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6087
  %15 = load i32, i32* %cmd, align 4, !dbg !6088
  %call = call i32 @vmk80xx_write_packet(%struct.comedi_device* %14, i32 %15) #8, !dbg !6089
  store i32 %call, i32* %ret, align 4, !dbg !6090
  br label %sw.epilog, !dbg !6091

sw.default:                                       ; preds = %entry
  store i32 -22, i32* %ret, align 4, !dbg !6092
  br label %sw.epilog, !dbg !6093

sw.epilog:                                        ; preds = %sw.default, %if.end4
  %16 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !6094
  %limit_sem5 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %16, i32 0, i32 2, !dbg !6095
  call void @up(%struct.semaphore* %limit_sem5) #8, !dbg !6096
  %17 = load i32, i32* %ret, align 4, !dbg !6097
  %tobool6 = icmp ne i32 %17, 0, !dbg !6097
  br i1 %tobool6, label %cond.true, label %cond.false, !dbg !6097

cond.true:                                        ; preds = %sw.epilog
  %18 = load i32, i32* %ret, align 4, !dbg !6098
  br label %cond.end, !dbg !6097

cond.false:                                       ; preds = %sw.epilog
  %19 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !6099
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %19, i32 0, i32 1, !dbg !6100
  %20 = load i32, i32* %n, align 4, !dbg !6100
  br label %cond.end, !dbg !6097

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %18, %cond.true ], [ %20, %cond.false ], !dbg !6097
  ret i32 %cond, !dbg !6101
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vmk80xx_cnt_insn_write(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !6102 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %devpriv = alloca %struct.vmk80xx_private*, align 8
  %debtime = alloca i64, align 8
  %val = alloca i64, align 8
  %chan = alloca i32, align 4
  %cmd = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !6103, metadata !DIExpression()), !dbg !6104
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !6105, metadata !DIExpression()), !dbg !6106
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !6107, metadata !DIExpression()), !dbg !6108
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !6109, metadata !DIExpression()), !dbg !6110
  call void @llvm.dbg.declare(metadata %struct.vmk80xx_private** %devpriv, metadata !6111, metadata !DIExpression()), !dbg !6112
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6113
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !6114
  %1 = load i8*, i8** %private, align 8, !dbg !6114
  %2 = bitcast i8* %1 to %struct.vmk80xx_private*, !dbg !6113
  store %struct.vmk80xx_private* %2, %struct.vmk80xx_private** %devpriv, align 8, !dbg !6112
  call void @llvm.dbg.declare(metadata i64* %debtime, metadata !6115, metadata !DIExpression()), !dbg !6116
  call void @llvm.dbg.declare(metadata i64* %val, metadata !6117, metadata !DIExpression()), !dbg !6118
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !6119, metadata !DIExpression()), !dbg !6120
  call void @llvm.dbg.declare(metadata i32* %cmd, metadata !6121, metadata !DIExpression()), !dbg !6122
  call void @llvm.dbg.declare(metadata i32* %n, metadata !6123, metadata !DIExpression()), !dbg !6124
  %3 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !6125
  %limit_sem = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %3, i32 0, i32 2, !dbg !6126
  call void @down(%struct.semaphore* %limit_sem) #8, !dbg !6127
  %4 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !6128
  %chanspec = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %4, i32 0, i32 4, !dbg !6128
  %5 = load i32, i32* %chanspec, align 4, !dbg !6128
  %and = and i32 %5, 65535, !dbg !6128
  store i32 %and, i32* %chan, align 4, !dbg !6129
  %6 = load i32, i32* %chan, align 4, !dbg !6130
  %tobool = icmp ne i32 %6, 0, !dbg !6130
  br i1 %tobool, label %if.else, label %if.then, !dbg !6132

if.then:                                          ; preds = %entry
  store i32 1, i32* %cmd, align 4, !dbg !6133
  br label %if.end, !dbg !6134

if.else:                                          ; preds = %entry
  store i32 2, i32* %cmd, align 4, !dbg !6135
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %n, align 4, !dbg !6136
  br label %for.cond, !dbg !6138

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %n, align 4, !dbg !6139
  %8 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !6141
  %n1 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %8, i32 0, i32 1, !dbg !6142
  %9 = load i32, i32* %n1, align 4, !dbg !6142
  %cmp = icmp ult i32 %7, %9, !dbg !6143
  br i1 %cmp, label %for.body, label %for.end, !dbg !6144

for.body:                                         ; preds = %for.cond
  %10 = load i32*, i32** %data.addr, align 8, !dbg !6145
  %11 = load i32, i32* %n, align 4, !dbg !6147
  %idxprom = sext i32 %11 to i64, !dbg !6145
  %arrayidx = getelementptr i32, i32* %10, i64 %idxprom, !dbg !6145
  %12 = load i32, i32* %arrayidx, align 4, !dbg !6145
  %conv = zext i32 %12 to i64, !dbg !6145
  store i64 %conv, i64* %debtime, align 8, !dbg !6148
  %13 = load i64, i64* %debtime, align 8, !dbg !6149
  %cmp2 = icmp eq i64 %13, 0, !dbg !6151
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !6152

if.then4:                                         ; preds = %for.body
  store i64 1, i64* %debtime, align 8, !dbg !6153
  br label %if.end5, !dbg !6154

if.end5:                                          ; preds = %if.then4, %for.body
  %14 = load i64, i64* %debtime, align 8, !dbg !6155
  %cmp6 = icmp ugt i64 %14, 7450, !dbg !6157
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !6158

if.then8:                                         ; preds = %if.end5
  store i64 7450, i64* %debtime, align 8, !dbg !6159
  br label %if.end9, !dbg !6160

if.end9:                                          ; preds = %if.then8, %if.end5
  %15 = load i64, i64* %debtime, align 8, !dbg !6161
  %mul = mul i64 %15, 1000, !dbg !6162
  %div = udiv i64 %mul, 115, !dbg !6163
  %call = call i64 @int_sqrt(i64 %div) #8, !dbg !6164
  store i64 %call, i64* %val, align 8, !dbg !6165
  %16 = load i64, i64* %val, align 8, !dbg !6166
  %add = add i64 %16, 1, !dbg !6168
  %17 = load i64, i64* %val, align 8, !dbg !6169
  %mul10 = mul i64 %add, %17, !dbg !6170
  %18 = load i64, i64* %debtime, align 8, !dbg !6171
  %mul11 = mul i64 %18, 1000, !dbg !6172
  %div12 = udiv i64 %mul11, 115, !dbg !6173
  %cmp13 = icmp ult i64 %mul10, %div12, !dbg !6174
  br i1 %cmp13, label %if.then15, label %if.end17, !dbg !6175

if.then15:                                        ; preds = %if.end9
  %19 = load i64, i64* %val, align 8, !dbg !6176
  %add16 = add i64 %19, 1, !dbg !6176
  store i64 %add16, i64* %val, align 8, !dbg !6176
  br label %if.end17, !dbg !6177

if.end17:                                         ; preds = %if.then15, %if.end9
  %20 = load i64, i64* %val, align 8, !dbg !6178
  %conv18 = trunc i64 %20 to i8, !dbg !6178
  %21 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !6179
  %usb_tx_buf = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %21, i32 0, i32 4, !dbg !6180
  %22 = load i8*, i8** %usb_tx_buf, align 8, !dbg !6180
  %23 = load i32, i32* %chan, align 4, !dbg !6181
  %add19 = add i32 6, %23, !dbg !6182
  %idxprom20 = sext i32 %add19 to i64, !dbg !6179
  %arrayidx21 = getelementptr i8, i8* %22, i64 %idxprom20, !dbg !6179
  store i8 %conv18, i8* %arrayidx21, align 1, !dbg !6183
  %24 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6184
  %25 = load i32, i32* %cmd, align 4, !dbg !6186
  %call22 = call i32 @vmk80xx_write_packet(%struct.comedi_device* %24, i32 %25) #8, !dbg !6187
  %tobool23 = icmp ne i32 %call22, 0, !dbg !6187
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !6188

if.then24:                                        ; preds = %if.end17
  br label %for.end, !dbg !6189

if.end25:                                         ; preds = %if.end17
  br label %for.inc, !dbg !6190

for.inc:                                          ; preds = %if.end25
  %26 = load i32, i32* %n, align 4, !dbg !6191
  %inc = add i32 %26, 1, !dbg !6191
  store i32 %inc, i32* %n, align 4, !dbg !6191
  br label %for.cond, !dbg !6192, !llvm.loop !6193

for.end:                                          ; preds = %if.then24, %for.cond
  %27 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !6195
  %limit_sem26 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %27, i32 0, i32 2, !dbg !6196
  call void @up(%struct.semaphore* %limit_sem26) #8, !dbg !6197
  %28 = load i32, i32* %n, align 4, !dbg !6198
  ret i32 %28, !dbg !6199
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vmk80xx_pwm_insn_read(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !6200 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %devpriv = alloca %struct.vmk80xx_private*, align 8
  %tx_buf = alloca i8*, align 8
  %rx_buf = alloca i8*, align 8
  %reg = alloca [2 x i32], align 4
  %n = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !6201, metadata !DIExpression()), !dbg !6202
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !6203, metadata !DIExpression()), !dbg !6204
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !6205, metadata !DIExpression()), !dbg !6206
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !6207, metadata !DIExpression()), !dbg !6208
  call void @llvm.dbg.declare(metadata %struct.vmk80xx_private** %devpriv, metadata !6209, metadata !DIExpression()), !dbg !6210
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6211
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !6212
  %1 = load i8*, i8** %private, align 8, !dbg !6212
  %2 = bitcast i8* %1 to %struct.vmk80xx_private*, !dbg !6211
  store %struct.vmk80xx_private* %2, %struct.vmk80xx_private** %devpriv, align 8, !dbg !6210
  call void @llvm.dbg.declare(metadata i8** %tx_buf, metadata !6213, metadata !DIExpression()), !dbg !6214
  call void @llvm.dbg.declare(metadata i8** %rx_buf, metadata !6215, metadata !DIExpression()), !dbg !6216
  call void @llvm.dbg.declare(metadata [2 x i32]* %reg, metadata !6217, metadata !DIExpression()), !dbg !6218
  call void @llvm.dbg.declare(metadata i32* %n, metadata !6219, metadata !DIExpression()), !dbg !6220
  %3 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !6221
  %limit_sem = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %3, i32 0, i32 2, !dbg !6222
  call void @down(%struct.semaphore* %limit_sem) #8, !dbg !6223
  %4 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !6224
  %usb_tx_buf = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %4, i32 0, i32 4, !dbg !6225
  %5 = load i8*, i8** %usb_tx_buf, align 8, !dbg !6225
  store i8* %5, i8** %tx_buf, align 8, !dbg !6226
  %6 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !6227
  %usb_rx_buf = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %6, i32 0, i32 3, !dbg !6228
  %7 = load i8*, i8** %usb_rx_buf, align 8, !dbg !6228
  store i8* %7, i8** %rx_buf, align 8, !dbg !6229
  %arrayidx = getelementptr [2 x i32], [2 x i32]* %reg, i64 0, i64 0, !dbg !6230
  store i32 1, i32* %arrayidx, align 4, !dbg !6231
  %arrayidx1 = getelementptr [2 x i32], [2 x i32]* %reg, i64 0, i64 1, !dbg !6232
  store i32 2, i32* %arrayidx1, align 4, !dbg !6233
  %8 = load i8*, i8** %tx_buf, align 8, !dbg !6234
  %arrayidx2 = getelementptr i8, i8* %8, i64 0, !dbg !6234
  store i8 16, i8* %arrayidx2, align 1, !dbg !6235
  store i32 0, i32* %n, align 4, !dbg !6236
  br label %for.cond, !dbg !6238

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %n, align 4, !dbg !6239
  %10 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !6241
  %n3 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %10, i32 0, i32 1, !dbg !6242
  %11 = load i32, i32* %n3, align 4, !dbg !6242
  %cmp = icmp ult i32 %9, %11, !dbg !6243
  br i1 %cmp, label %for.body, label %for.end, !dbg !6244

for.body:                                         ; preds = %for.cond
  %12 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6245
  %call = call i32 @vmk80xx_read_packet(%struct.comedi_device* %12) #8, !dbg !6248
  %tobool = icmp ne i32 %call, 0, !dbg !6248
  br i1 %tobool, label %if.then, label %if.end, !dbg !6249

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !6250

if.end:                                           ; preds = %for.body
  %13 = load i8*, i8** %rx_buf, align 8, !dbg !6251
  %arrayidx4 = getelementptr [2 x i32], [2 x i32]* %reg, i64 0, i64 0, !dbg !6252
  %14 = load i32, i32* %arrayidx4, align 4, !dbg !6252
  %idxprom = sext i32 %14 to i64, !dbg !6251
  %arrayidx5 = getelementptr i8, i8* %13, i64 %idxprom, !dbg !6251
  %15 = load i8, i8* %arrayidx5, align 1, !dbg !6251
  %conv = zext i8 %15 to i32, !dbg !6251
  %16 = load i8*, i8** %rx_buf, align 8, !dbg !6253
  %arrayidx6 = getelementptr [2 x i32], [2 x i32]* %reg, i64 0, i64 1, !dbg !6254
  %17 = load i32, i32* %arrayidx6, align 4, !dbg !6254
  %idxprom7 = sext i32 %17 to i64, !dbg !6253
  %arrayidx8 = getelementptr i8, i8* %16, i64 %idxprom7, !dbg !6253
  %18 = load i8, i8* %arrayidx8, align 1, !dbg !6253
  %conv9 = zext i8 %18 to i32, !dbg !6253
  %mul = mul i32 4, %conv9, !dbg !6255
  %add = add i32 %conv, %mul, !dbg !6256
  %19 = load i32*, i32** %data.addr, align 8, !dbg !6257
  %20 = load i32, i32* %n, align 4, !dbg !6258
  %idxprom10 = sext i32 %20 to i64, !dbg !6257
  %arrayidx11 = getelementptr i32, i32* %19, i64 %idxprom10, !dbg !6257
  store i32 %add, i32* %arrayidx11, align 4, !dbg !6259
  br label %for.inc, !dbg !6260

for.inc:                                          ; preds = %if.end
  %21 = load i32, i32* %n, align 4, !dbg !6261
  %inc = add i32 %21, 1, !dbg !6261
  store i32 %inc, i32* %n, align 4, !dbg !6261
  br label %for.cond, !dbg !6262, !llvm.loop !6263

for.end:                                          ; preds = %if.then, %for.cond
  %22 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !6265
  %limit_sem12 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %22, i32 0, i32 2, !dbg !6266
  call void @up(%struct.semaphore* %limit_sem12) #8, !dbg !6267
  %23 = load i32, i32* %n, align 4, !dbg !6268
  ret i32 %23, !dbg !6269
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vmk80xx_pwm_insn_write(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !6270 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %devpriv = alloca %struct.vmk80xx_private*, align 8
  %tx_buf = alloca i8*, align 8
  %reg = alloca [2 x i32], align 4
  %cmd = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !6271, metadata !DIExpression()), !dbg !6272
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !6273, metadata !DIExpression()), !dbg !6274
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !6275, metadata !DIExpression()), !dbg !6276
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !6277, metadata !DIExpression()), !dbg !6278
  call void @llvm.dbg.declare(metadata %struct.vmk80xx_private** %devpriv, metadata !6279, metadata !DIExpression()), !dbg !6280
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6281
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !6282
  %1 = load i8*, i8** %private, align 8, !dbg !6282
  %2 = bitcast i8* %1 to %struct.vmk80xx_private*, !dbg !6281
  store %struct.vmk80xx_private* %2, %struct.vmk80xx_private** %devpriv, align 8, !dbg !6280
  call void @llvm.dbg.declare(metadata i8** %tx_buf, metadata !6283, metadata !DIExpression()), !dbg !6284
  call void @llvm.dbg.declare(metadata [2 x i32]* %reg, metadata !6285, metadata !DIExpression()), !dbg !6286
  call void @llvm.dbg.declare(metadata i32* %cmd, metadata !6287, metadata !DIExpression()), !dbg !6288
  call void @llvm.dbg.declare(metadata i32* %n, metadata !6289, metadata !DIExpression()), !dbg !6290
  %3 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !6291
  %limit_sem = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %3, i32 0, i32 2, !dbg !6292
  call void @down(%struct.semaphore* %limit_sem) #8, !dbg !6293
  %4 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !6294
  %usb_tx_buf = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %4, i32 0, i32 4, !dbg !6295
  %5 = load i8*, i8** %usb_tx_buf, align 8, !dbg !6295
  store i8* %5, i8** %tx_buf, align 8, !dbg !6296
  %arrayidx = getelementptr [2 x i32], [2 x i32]* %reg, i64 0, i64 0, !dbg !6297
  store i32 1, i32* %arrayidx, align 4, !dbg !6298
  %arrayidx1 = getelementptr [2 x i32], [2 x i32]* %reg, i64 0, i64 1, !dbg !6299
  store i32 2, i32* %arrayidx1, align 4, !dbg !6300
  store i32 4, i32* %cmd, align 4, !dbg !6301
  store i32 0, i32* %n, align 4, !dbg !6302
  br label %for.cond, !dbg !6304

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %n, align 4, !dbg !6305
  %7 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !6307
  %n2 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %7, i32 0, i32 1, !dbg !6308
  %8 = load i32, i32* %n2, align 4, !dbg !6308
  %cmp = icmp ult i32 %6, %8, !dbg !6309
  br i1 %cmp, label %for.body, label %for.end, !dbg !6310

for.body:                                         ; preds = %for.cond
  %9 = load i32*, i32** %data.addr, align 8, !dbg !6311
  %10 = load i32, i32* %n, align 4, !dbg !6313
  %idxprom = sext i32 %10 to i64, !dbg !6311
  %arrayidx3 = getelementptr i32, i32* %9, i64 %idxprom, !dbg !6311
  %11 = load i32, i32* %arrayidx3, align 4, !dbg !6311
  %and = and i32 %11, 3, !dbg !6314
  %conv = trunc i32 %and to i8, !dbg !6315
  %12 = load i8*, i8** %tx_buf, align 8, !dbg !6316
  %arrayidx4 = getelementptr [2 x i32], [2 x i32]* %reg, i64 0, i64 0, !dbg !6317
  %13 = load i32, i32* %arrayidx4, align 4, !dbg !6317
  %idxprom5 = sext i32 %13 to i64, !dbg !6316
  %arrayidx6 = getelementptr i8, i8* %12, i64 %idxprom5, !dbg !6316
  store i8 %conv, i8* %arrayidx6, align 1, !dbg !6318
  %14 = load i32*, i32** %data.addr, align 8, !dbg !6319
  %15 = load i32, i32* %n, align 4, !dbg !6320
  %idxprom7 = sext i32 %15 to i64, !dbg !6319
  %arrayidx8 = getelementptr i32, i32* %14, i64 %idxprom7, !dbg !6319
  %16 = load i32, i32* %arrayidx8, align 4, !dbg !6319
  %shr = lshr i32 %16, 2, !dbg !6321
  %conv9 = trunc i32 %shr to i8, !dbg !6322
  %conv10 = zext i8 %conv9 to i32, !dbg !6322
  %and11 = and i32 %conv10, 255, !dbg !6323
  %conv12 = trunc i32 %and11 to i8, !dbg !6322
  %17 = load i8*, i8** %tx_buf, align 8, !dbg !6324
  %arrayidx13 = getelementptr [2 x i32], [2 x i32]* %reg, i64 0, i64 1, !dbg !6325
  %18 = load i32, i32* %arrayidx13, align 4, !dbg !6325
  %idxprom14 = sext i32 %18 to i64, !dbg !6324
  %arrayidx15 = getelementptr i8, i8* %17, i64 %idxprom14, !dbg !6324
  store i8 %conv12, i8* %arrayidx15, align 1, !dbg !6326
  %19 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6327
  %20 = load i32, i32* %cmd, align 4, !dbg !6329
  %call = call i32 @vmk80xx_write_packet(%struct.comedi_device* %19, i32 %20) #8, !dbg !6330
  %tobool = icmp ne i32 %call, 0, !dbg !6330
  br i1 %tobool, label %if.then, label %if.end, !dbg !6331

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !6332

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !6333

for.inc:                                          ; preds = %if.end
  %21 = load i32, i32* %n, align 4, !dbg !6334
  %inc = add i32 %21, 1, !dbg !6334
  store i32 %inc, i32* %n, align 4, !dbg !6334
  br label %for.cond, !dbg !6335, !llvm.loop !6336

for.end:                                          ; preds = %if.then, %for.cond
  %22 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !6338
  %limit_sem16 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %22, i32 0, i32 2, !dbg !6339
  call void @up(%struct.semaphore* %limit_sem16) #8, !dbg !6340
  %23 = load i32, i32* %n, align 4, !dbg !6341
  ret i32 %23, !dbg !6342
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vmk80xx_read_packet(%struct.comedi_device* %dev) #2 !dbg !6343 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %devpriv = alloca %struct.vmk80xx_private*, align 8
  %usb = alloca %struct.usb_device*, align 8
  %ep = alloca %struct.usb_endpoint_descriptor*, align 8
  %pipe = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !6344, metadata !DIExpression()), !dbg !6345
  call void @llvm.dbg.declare(metadata %struct.vmk80xx_private** %devpriv, metadata !6346, metadata !DIExpression()), !dbg !6347
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6348
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !6349
  %1 = load i8*, i8** %private, align 8, !dbg !6349
  %2 = bitcast i8* %1 to %struct.vmk80xx_private*, !dbg !6348
  store %struct.vmk80xx_private* %2, %struct.vmk80xx_private** %devpriv, align 8, !dbg !6347
  call void @llvm.dbg.declare(metadata %struct.usb_device** %usb, metadata !6350, metadata !DIExpression()), !dbg !6351
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6352
  %call = call %struct.usb_device* @comedi_to_usb_dev(%struct.comedi_device* %3) #8, !dbg !6353
  store %struct.usb_device* %call, %struct.usb_device** %usb, align 8, !dbg !6351
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %ep, metadata !6354, metadata !DIExpression()), !dbg !6355
  call void @llvm.dbg.declare(metadata i32* %pipe, metadata !6356, metadata !DIExpression()), !dbg !6357
  %4 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !6358
  %model = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %4, i32 0, i32 5, !dbg !6360
  %5 = load i32, i32* %model, align 8, !dbg !6360
  %cmp = icmp eq i32 %5, 1, !dbg !6361
  br i1 %cmp, label %if.then, label %if.end, !dbg !6362

if.then:                                          ; preds = %entry
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6363
  call void @vmk80xx_do_bulk_msg(%struct.comedi_device* %6) #8, !dbg !6365
  store i32 0, i32* %retval, align 4, !dbg !6366
  br label %return, !dbg !6366

if.end:                                           ; preds = %entry
  %7 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !6367
  %ep_rx = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %7, i32 0, i32 0, !dbg !6368
  %8 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep_rx, align 8, !dbg !6368
  store %struct.usb_endpoint_descriptor* %8, %struct.usb_endpoint_descriptor** %ep, align 8, !dbg !6369
  %9 = load %struct.usb_device*, %struct.usb_device** %usb, align 8, !dbg !6370
  %10 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep, align 8, !dbg !6370
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %10, i32 0, i32 2, !dbg !6370
  %11 = load i8, i8* %bEndpointAddress, align 1, !dbg !6370
  %conv = zext i8 %11 to i32, !dbg !6370
  %call1 = call i32 @__create_pipe(%struct.usb_device* %9, i32 %conv) #8, !dbg !6370
  %or = or i32 1073741824, %call1, !dbg !6370
  %or2 = or i32 %or, 128, !dbg !6370
  store i32 %or2, i32* %pipe, align 4, !dbg !6371
  %12 = load %struct.usb_device*, %struct.usb_device** %usb, align 8, !dbg !6372
  %13 = load i32, i32* %pipe, align 4, !dbg !6373
  %14 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %devpriv, align 8, !dbg !6374
  %usb_rx_buf = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %14, i32 0, i32 3, !dbg !6375
  %15 = load i8*, i8** %usb_rx_buf, align 8, !dbg !6375
  %16 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep, align 8, !dbg !6376
  %call3 = call i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %16) #8, !dbg !6377
  %call4 = call i32 @usb_interrupt_msg(%struct.usb_device* %12, i32 %13, i8* %15, i32 %call3, i32* null, i32 2500) #8, !dbg !6378
  store i32 %call4, i32* %retval, align 4, !dbg !6379
  br label %return, !dbg !6379

return:                                           ; preds = %if.end, %if.then
  %17 = load i32, i32* %retval, align 4, !dbg !6380
  ret i32 %17, !dbg !6380
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_dio_update_state(%struct.comedi_subdevice*, i32*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone
declare dso_local i64 @int_sqrt(i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vmk80xx_usb_probe(%struct.usb_interface* %intf, %struct.usb_device_id* %id) #2 !dbg !6381 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %id.addr = alloca %struct.usb_device_id*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !6382, metadata !DIExpression()), !dbg !6383
  store %struct.usb_device_id* %id, %struct.usb_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device_id** %id.addr, metadata !6384, metadata !DIExpression()), !dbg !6385
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !6386
  %1 = load %struct.usb_device_id*, %struct.usb_device_id** %id.addr, align 8, !dbg !6387
  %driver_info = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %1, i32 0, i32 12, !dbg !6388
  %2 = load i64, i64* %driver_info, align 8, !dbg !6388
  %call = call i32 @comedi_usb_auto_config(%struct.usb_interface* %0, %struct.comedi_driver* @vmk80xx_driver, i64 %2) #8, !dbg !6389
  ret i32 %call, !dbg !6390
}

; Function Attrs: noredzone
declare dso_local void @comedi_usb_auto_unconfig(%struct.usb_interface*) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_usb_auto_config(%struct.usb_interface*, %struct.comedi_driver*, i64) #1

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noredzone }
attributes #9 = { nounwind }
attributes #10 = { noredzone nounwind readnone }
attributes #11 = { noredzone nounwind }
attributes #12 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4213, !4214, !4215, !4216}
!llvm.ident = !{!4217}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_vmk80xx_driver_init240", scope: !2, file: !3, line: 876, type: !161, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !160, globals: !171, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/staging/comedi/drivers/vmk80xx.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !100, !107, !111, !118, !130, !139, !144}
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
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "vmk80xx_model", file: !3, line: 93, baseType: !7, size: 32, elements: !108)
!108 = !{!109, !110}
!109 = !DIEnumerator(name: "VMK8055_MODEL", value: 0, isUnsigned: true)
!110 = !DIEnumerator(name: "VMK8061_MODEL", value: 1, isUnsigned: true)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !112, line: 305, baseType: !7, size: 32, elements: !113)
!112 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!113 = !{!114, !115, !116, !117}
!114 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!115 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!116 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!117 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_state", file: !119, line: 1156, baseType: !7, size: 32, elements: !120)
!119 = !DIFile(filename: "./include/uapi/linux/usb/ch9.h", directory: "/home/lizy2001/genbc/linux")
!120 = !{!121, !122, !123, !124, !125, !126, !127, !128, !129}
!121 = !DIEnumerator(name: "USB_STATE_NOTATTACHED", value: 0, isUnsigned: true)
!122 = !DIEnumerator(name: "USB_STATE_ATTACHED", value: 1, isUnsigned: true)
!123 = !DIEnumerator(name: "USB_STATE_POWERED", value: 2, isUnsigned: true)
!124 = !DIEnumerator(name: "USB_STATE_RECONNECTING", value: 3, isUnsigned: true)
!125 = !DIEnumerator(name: "USB_STATE_UNAUTHENTICATED", value: 4, isUnsigned: true)
!126 = !DIEnumerator(name: "USB_STATE_DEFAULT", value: 5, isUnsigned: true)
!127 = !DIEnumerator(name: "USB_STATE_ADDRESS", value: 6, isUnsigned: true)
!128 = !DIEnumerator(name: "USB_STATE_CONFIGURED", value: 7, isUnsigned: true)
!129 = !DIEnumerator(name: "USB_STATE_SUSPENDED", value: 8, isUnsigned: true)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_speed", file: !119, line: 1146, baseType: !7, size: 32, elements: !131)
!131 = !{!132, !133, !134, !135, !136, !137, !138}
!132 = !DIEnumerator(name: "USB_SPEED_UNKNOWN", value: 0, isUnsigned: true)
!133 = !DIEnumerator(name: "USB_SPEED_LOW", value: 1, isUnsigned: true)
!134 = !DIEnumerator(name: "USB_SPEED_FULL", value: 2, isUnsigned: true)
!135 = !DIEnumerator(name: "USB_SPEED_HIGH", value: 3, isUnsigned: true)
!136 = !DIEnumerator(name: "USB_SPEED_WIRELESS", value: 4, isUnsigned: true)
!137 = !DIEnumerator(name: "USB_SPEED_SUPER", value: 5, isUnsigned: true)
!138 = !DIEnumerator(name: "USB_SPEED_SUPER_PLUS", value: 6, isUnsigned: true)
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_removable", file: !101, line: 476, baseType: !7, size: 32, elements: !140)
!140 = !{!141, !142, !143}
!141 = !DIEnumerator(name: "USB_DEVICE_REMOVABLE_UNKNOWN", value: 0, isUnsigned: true)
!142 = !DIEnumerator(name: "USB_DEVICE_REMOVABLE", value: 1, isUnsigned: true)
!143 = !DIEnumerator(name: "USB_DEVICE_FIXED", value: 2, isUnsigned: true)
!144 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "comedi_subdevice_type", file: !145, line: 221, baseType: !7, size: 32, elements: !146)
!145 = !DIFile(filename: "drivers/staging/comedi/drivers/../comedi.h", directory: "/home/lizy2001/genbc/linux")
!146 = !{!147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159}
!147 = !DIEnumerator(name: "COMEDI_SUBD_UNUSED", value: 0, isUnsigned: true)
!148 = !DIEnumerator(name: "COMEDI_SUBD_AI", value: 1, isUnsigned: true)
!149 = !DIEnumerator(name: "COMEDI_SUBD_AO", value: 2, isUnsigned: true)
!150 = !DIEnumerator(name: "COMEDI_SUBD_DI", value: 3, isUnsigned: true)
!151 = !DIEnumerator(name: "COMEDI_SUBD_DO", value: 4, isUnsigned: true)
!152 = !DIEnumerator(name: "COMEDI_SUBD_DIO", value: 5, isUnsigned: true)
!153 = !DIEnumerator(name: "COMEDI_SUBD_COUNTER", value: 6, isUnsigned: true)
!154 = !DIEnumerator(name: "COMEDI_SUBD_TIMER", value: 7, isUnsigned: true)
!155 = !DIEnumerator(name: "COMEDI_SUBD_MEMORY", value: 8, isUnsigned: true)
!156 = !DIEnumerator(name: "COMEDI_SUBD_CALIB", value: 9, isUnsigned: true)
!157 = !DIEnumerator(name: "COMEDI_SUBD_PROC", value: 10, isUnsigned: true)
!158 = !DIEnumerator(name: "COMEDI_SUBD_SERIAL", value: 11, isUnsigned: true)
!159 = !DIEnumerator(name: "COMEDI_SUBD_PWM", value: 12, isUnsigned: true)
!160 = !{!161, !162, !163, !166, !168, !170}
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!162 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !164, line: 24, baseType: !165)
!164 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!165 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !167, line: 29, baseType: !163)
!167 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !169, line: 148, baseType: !7)
!169 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!170 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!171 = !{!0, !172, !179, !186, !191, !196, !201, !4027, !4043, !4045, !4057, !4208}
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(name: "__exitcall_vmk80xx_driver_exit", scope: !2, file: !3, line: 876, type: !174, isLocal: true, isDefinition: true)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !175, line: 117, baseType: !176)
!175 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DISubroutineType(types: !178)
!178 = !{null}
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author241", scope: !2, file: !3, line: 878, type: !181, isLocal: true, isDefinition: true, align: 8)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 384, elements: !184)
!182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!183 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!184 = !{!185}
!185 = !DISubrange(count: 48)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description242", scope: !2, file: !3, line: 879, type: !188, isLocal: true, isDefinition: true, align: 8)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 448, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 56)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file243", scope: !2, file: !3, line: 881, type: !193, isLocal: true, isDefinition: true, align: 8)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 416, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 52)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license244", scope: !2, file: !3, line: 881, type: !198, isLocal: true, isDefinition: true, align: 8)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 160, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 20)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(name: "vmk80xx_driver", scope: !2, file: !3, line: 840, type: !203, isLocal: true, isDefinition: true)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_driver", file: !204, line: 437, size: 576, elements: !205)
!204 = !DIFile(filename: "drivers/staging/comedi/drivers/../comedidev.h", directory: "/home/lizy2001/genbc/linux")
!205 = !{!206, !208, !210, !214, !4017, !4018, !4022, !4023, !4026}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !203, file: !204, line: 439, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !203, file: !204, line: 441, baseType: !209, size: 64, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !203, file: !204, line: 442, baseType: !211, size: 64, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !213, line: 76, flags: DIFlagFwdDecl)
!213 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!214 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !203, file: !204, line: 443, baseType: !215, size: 64, offset: 192)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!162, !218, !4010}
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_device", file: !204, line: 541, size: 1920, elements: !220)
!220 = !{!221, !222, !223, !226, !227, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3998, !4002, !4006}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !219, file: !204, line: 542, baseType: !162, size: 32)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !219, file: !204, line: 543, baseType: !207, size: 64, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "pacer", scope: !219, file: !204, line: 544, baseType: !224, size: 64, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_8254", file: !204, line: 544, flags: DIFlagFwdDecl)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !219, file: !204, line: 545, baseType: !161, size: 64, offset: 192)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !219, file: !204, line: 547, baseType: !228, size: 64, offset: 256)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !230)
!230 = !{!231, !3395, !3396, !3399, !3400, !3451, !3542, !3543, !3544, !3545, !3546, !3555, !3660, !3673, !3676, !3677, !3681, !3683, !3684, !3685, !3689, !3695, !3696, !3699, !3703, !3793, !3794, !3795, !3796, !3797, !3829, !3830, !3831, !3834, !3837, !3838, !3839, !3840}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !229, file: !73, line: 462, baseType: !232, size: 512)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !233, line: 64, size: 512, elements: !234)
!233 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!234 = !{!235, !236, !242, !244, !304, !3246, !3385, !3390, !3391, !3392, !3393, !3394}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !232, file: !233, line: 65, baseType: !209, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !232, file: !233, line: 66, baseType: !237, size: 128, offset: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !169, line: 178, size: 128, elements: !238)
!238 = !{!239, !241}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !237, file: !169, line: 179, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !237, file: !169, line: 179, baseType: !240, size: 64, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !232, file: !233, line: 67, baseType: !243, size: 64, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !232, file: !233, line: 68, baseType: !245, size: 64, offset: 256)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !233, line: 192, size: 704, elements: !247)
!247 = !{!248, !249, !265, !266}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !246, file: !233, line: 193, baseType: !237, size: 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !246, file: !233, line: 194, baseType: !250, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !251, line: 83, baseType: !252)
!251 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !251, line: 71, elements: !253)
!253 = !{!254}
!254 = !DIDerivedType(tag: DW_TAG_member, scope: !252, file: !251, line: 72, baseType: !255)
!255 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !252, file: !251, line: 72, elements: !256)
!256 = !{!257}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !255, file: !251, line: 73, baseType: !258)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !251, line: 20, elements: !259)
!259 = !{!260}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !258, file: !251, line: 21, baseType: !261)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !262, line: 25, baseType: !263)
!262 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !262, line: 25, elements: !264)
!264 = !{}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !246, file: !233, line: 195, baseType: !232, size: 512, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !246, file: !233, line: 196, baseType: !267, size: 64, offset: 640)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !269)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !233, line: 156, size: 192, elements: !270)
!270 = !{!271, !276, !281}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !269, file: !233, line: 157, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !273)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{!162, !245, !243}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !269, file: !233, line: 158, baseType: !277, size: 64, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !278)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!209, !245, !243}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !269, file: !233, line: 159, baseType: !282, size: 64, offset: 128)
!282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{!162, !245, !243, !286}
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !233, line: 148, size: 20736, elements: !288)
!288 = !{!289, !294, !298, !299, !303}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !287, file: !233, line: 149, baseType: !290, size: 192)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 192, elements: !292)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!292 = !{!293}
!293 = !DISubrange(count: 3)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !287, file: !233, line: 150, baseType: !295, size: 4096, offset: 192)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 4096, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !287, file: !233, line: 151, baseType: !162, size: 32, offset: 4288)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !287, file: !233, line: 152, baseType: !300, size: 16384, offset: 4320)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 16384, elements: !301)
!301 = !{!302}
!302 = !DISubrange(count: 2048)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !287, file: !233, line: 153, baseType: !162, size: 32, offset: 20704)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !232, file: !233, line: 69, baseType: !305, size: 64, offset: 320)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !233, line: 138, size: 448, elements: !307)
!307 = !{!308, !312, !341, !343, !3208, !3236, !3240}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !306, file: !233, line: 139, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{null, !243}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !306, file: !233, line: 140, baseType: !313, size: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !315)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !316, line: 230, size: 128, elements: !317)
!316 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!317 = !{!318, !333}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !315, file: !316, line: 231, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{!322, !243, !327, !291}
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !169, line: 60, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !324, line: 73, baseType: !325)
!324 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !324, line: 15, baseType: !326)
!326 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !316, line: 30, size: 128, elements: !329)
!329 = !{!330, !331}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !328, file: !316, line: 31, baseType: !209, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !328, file: !316, line: 32, baseType: !332, size: 16, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !169, line: 19, baseType: !165)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !315, file: !316, line: 232, baseType: !334, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{!322, !243, !327, !209, !337}
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !169, line: 55, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !324, line: 72, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !324, line: 16, baseType: !340)
!340 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !306, file: !233, line: 141, baseType: !342, size: 64, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !306, file: !233, line: 142, baseType: !344, size: 64, offset: 192)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !347)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !316, line: 84, size: 320, elements: !348)
!348 = !{!349, !350, !354, !3205, !3206}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !347, file: !316, line: 85, baseType: !209, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !347, file: !316, line: 86, baseType: !351, size: 64, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{!332, !243, !327, !162}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !347, file: !316, line: 88, baseType: !355, size: 64, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!332, !243, !358, !162}
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !316, line: 168, size: 448, elements: !360)
!360 = !{!361, !362, !363, !364, !3200, !3201}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !359, file: !316, line: 169, baseType: !328, size: 128)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !359, file: !316, line: 170, baseType: !337, size: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !359, file: !316, line: 171, baseType: !161, size: 64, offset: 192)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !359, file: !316, line: 172, baseType: !365, size: 64, offset: 256)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{!322, !368, !243, !358, !291, !545, !337}
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !370)
!370 = !{!371, !389, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3183, !3184, !3193, !3194, !3195, !3196, !3197, !3198, !3199}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !369, file: !44, line: 920, baseType: !372, size: 128)
!372 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !369, file: !44, line: 917, size: 128, elements: !373)
!373 = !{!374, !380}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !372, file: !44, line: 918, baseType: !375, size: 64)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !376, line: 58, size: 64, elements: !377)
!376 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!377 = !{!378}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !375, file: !376, line: 59, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !372, file: !44, line: 919, baseType: !381, size: 128, align: 64)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !169, line: 216, size: 128, align: 64, elements: !382)
!382 = !{!383, !385}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !381, file: !169, line: 217, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !381, file: !169, line: 218, baseType: !386, size: 64, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DISubroutineType(types: !388)
!388 = !{null, !384}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !369, file: !44, line: 921, baseType: !390, size: 128, offset: 128)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !391, line: 8, size: 128, elements: !392)
!391 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!392 = !{!393, !397}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !390, file: !391, line: 9, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !396, line: 18, flags: DIFlagFwdDecl)
!396 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!397 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !390, file: !391, line: 10, baseType: !398, size: 64, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !396, line: 89, size: 1536, elements: !400)
!400 = !{!401, !402, !412, !420, !421, !442, !3134, !3136, !3148, !3149, !3150, !3151, !3152, !3157, !3158, !3159}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !399, file: !396, line: 91, baseType: !7, size: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !399, file: !396, line: 92, baseType: !403, size: 32, offset: 32)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !404, line: 277, baseType: !405)
!404 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !404, line: 277, size: 32, elements: !406)
!406 = !{!407}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !405, file: !404, line: 277, baseType: !408, size: 32)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !404, line: 70, baseType: !409)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !404, line: 65, size: 32, elements: !410)
!410 = !{!411}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !409, file: !404, line: 66, baseType: !7, size: 32)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !399, file: !396, line: 93, baseType: !413, size: 128, offset: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !414, line: 38, size: 128, elements: !415)
!414 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!415 = !{!416, !418}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !413, file: !414, line: 39, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !413, file: !414, line: 39, baseType: !419, size: 64, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !399, file: !396, line: 94, baseType: !398, size: 64, offset: 192)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !399, file: !396, line: 95, baseType: !422, size: 128, offset: 256)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !396, line: 47, size: 128, elements: !423)
!423 = !{!424, !439}
!424 = !DIDerivedType(tag: DW_TAG_member, scope: !422, file: !396, line: 48, baseType: !425, size: 64)
!425 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !422, file: !396, line: 48, size: 64, elements: !426)
!426 = !{!427, !435}
!427 = !DIDerivedType(tag: DW_TAG_member, scope: !425, file: !396, line: 49, baseType: !428, size: 64)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !425, file: !396, line: 49, size: 64, elements: !429)
!429 = !{!430, !434}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !428, file: !396, line: 50, baseType: !431, size: 32)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !432, line: 21, baseType: !433)
!432 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !164, line: 27, baseType: !7)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !428, file: !396, line: 50, baseType: !431, size: 32, offset: 32)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !425, file: !396, line: 52, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !432, line: 23, baseType: !437)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !164, line: 31, baseType: !438)
!438 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !422, file: !396, line: 54, baseType: !440, size: 64, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !399, file: !396, line: 96, baseType: !443, size: 64, offset: 384)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !445)
!445 = !{!446, !447, !448, !456, !463, !464, !612, !2837, !2838, !2839, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !3110, !3118, !3119, !3120, !3130, !3131, !3132, !3133}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !444, file: !44, line: 611, baseType: !332, size: 16)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !444, file: !44, line: 612, baseType: !165, size: 16, offset: 16)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !444, file: !44, line: 613, baseType: !449, size: 32, offset: 32)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !450, line: 23, baseType: !451)
!450 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !450, line: 21, size: 32, elements: !452)
!452 = !{!453}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !451, file: !450, line: 22, baseType: !454, size: 32)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !169, line: 32, baseType: !455)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !324, line: 49, baseType: !7)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !444, file: !44, line: 614, baseType: !457, size: 32, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !450, line: 28, baseType: !458)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !450, line: 26, size: 32, elements: !459)
!459 = !{!460}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !458, file: !450, line: 27, baseType: !461, size: 32)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !169, line: 33, baseType: !462)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !324, line: 50, baseType: !7)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !444, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !444, file: !44, line: 622, baseType: !465, size: 64, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !467)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !468)
!468 = !{!469, !473, !486, !490, !496, !500, !506, !510, !514, !518, !522, !523, !529, !533, !559, !588, !592, !598, !603, !607, !608}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !467, file: !44, line: 1865, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!398, !443, !398, !7}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !467, file: !44, line: 1866, baseType: !474, size: 64, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{!209, !398, !443, !477}
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !479, line: 10, size: 128, elements: !480)
!479 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!480 = !{!481, !485}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !478, file: !479, line: 11, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{null, !161}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !478, file: !479, line: 12, baseType: !161, size: 64, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !467, file: !44, line: 1867, baseType: !487, size: 64, offset: 128)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!162, !443, !162}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !467, file: !44, line: 1868, baseType: !491, size: 64, offset: 192)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!494, !443, !162}
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !467, file: !44, line: 1870, baseType: !497, size: 64, offset: 256)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{!162, !398, !291, !162}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !467, file: !44, line: 1872, baseType: !501, size: 64, offset: 320)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{!162, !443, !398, !332, !504}
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !169, line: 30, baseType: !505)
!505 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !467, file: !44, line: 1873, baseType: !507, size: 64, offset: 384)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{!162, !398, !443, !398}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !467, file: !44, line: 1874, baseType: !511, size: 64, offset: 448)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DISubroutineType(types: !513)
!513 = !{!162, !443, !398}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !467, file: !44, line: 1875, baseType: !515, size: 64, offset: 512)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{!162, !443, !398, !209}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !467, file: !44, line: 1876, baseType: !519, size: 64, offset: 576)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{!162, !443, !398, !332}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !467, file: !44, line: 1877, baseType: !511, size: 64, offset: 640)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !467, file: !44, line: 1878, baseType: !524, size: 64, offset: 704)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{!162, !443, !398, !332, !527}
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !169, line: 16, baseType: !528)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !169, line: 13, baseType: !431)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !467, file: !44, line: 1879, baseType: !530, size: 64, offset: 768)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DISubroutineType(types: !532)
!532 = !{!162, !443, !398, !443, !398, !7}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !467, file: !44, line: 1881, baseType: !534, size: 64, offset: 832)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{!162, !398, !537}
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !539)
!539 = !{!540, !541, !542, !543, !544, !548, !556, !557, !558}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !538, file: !44, line: 220, baseType: !7, size: 32)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !538, file: !44, line: 221, baseType: !332, size: 16, offset: 32)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !538, file: !44, line: 222, baseType: !449, size: 32, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !538, file: !44, line: 223, baseType: !457, size: 32, offset: 96)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !538, file: !44, line: 224, baseType: !545, size: 64, offset: 128)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !169, line: 46, baseType: !546)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !324, line: 88, baseType: !547)
!547 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !538, file: !44, line: 225, baseType: !549, size: 128, offset: 192)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !550, line: 13, size: 128, elements: !551)
!550 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!551 = !{!552, !555}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !549, file: !550, line: 14, baseType: !553, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !550, line: 8, baseType: !554)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !164, line: 30, baseType: !547)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !549, file: !550, line: 15, baseType: !326, size: 64, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !538, file: !44, line: 226, baseType: !549, size: 128, offset: 320)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !538, file: !44, line: 227, baseType: !549, size: 128, offset: 448)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !538, file: !44, line: 234, baseType: !368, size: 64, offset: 576)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !467, file: !44, line: 1882, baseType: !560, size: 64, offset: 896)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{!162, !563, !565, !431, !7}
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !390)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !567, line: 22, size: 1152, elements: !568)
!567 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!568 = !{!569, !570, !571, !572, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !566, file: !567, line: 23, baseType: !431, size: 32)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !566, file: !567, line: 24, baseType: !332, size: 16, offset: 32)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !566, file: !567, line: 25, baseType: !7, size: 32, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !566, file: !567, line: 26, baseType: !573, size: 32, offset: 96)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !169, line: 104, baseType: !431)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !566, file: !567, line: 27, baseType: !436, size: 64, offset: 128)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !566, file: !567, line: 28, baseType: !436, size: 64, offset: 192)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !566, file: !567, line: 37, baseType: !436, size: 64, offset: 256)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !566, file: !567, line: 38, baseType: !527, size: 32, offset: 320)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !566, file: !567, line: 39, baseType: !527, size: 32, offset: 352)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !566, file: !567, line: 40, baseType: !449, size: 32, offset: 384)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !566, file: !567, line: 41, baseType: !457, size: 32, offset: 416)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !566, file: !567, line: 42, baseType: !545, size: 64, offset: 448)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !566, file: !567, line: 43, baseType: !549, size: 128, offset: 512)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !566, file: !567, line: 44, baseType: !549, size: 128, offset: 640)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !566, file: !567, line: 45, baseType: !549, size: 128, offset: 768)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !566, file: !567, line: 46, baseType: !549, size: 128, offset: 896)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !566, file: !567, line: 47, baseType: !436, size: 64, offset: 1024)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !566, file: !567, line: 48, baseType: !436, size: 64, offset: 1088)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !467, file: !44, line: 1883, baseType: !589, size: 64, offset: 960)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!322, !398, !291, !337}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !467, file: !44, line: 1884, baseType: !593, size: 64, offset: 1024)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DISubroutineType(types: !595)
!595 = !{!162, !443, !596, !436, !436}
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !467, file: !44, line: 1886, baseType: !599, size: 64, offset: 1088)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DISubroutineType(types: !601)
!601 = !{!162, !443, !602, !162}
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !467, file: !44, line: 1887, baseType: !604, size: 64, offset: 1152)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DISubroutineType(types: !606)
!606 = !{!162, !443, !398, !368, !7, !332}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !467, file: !44, line: 1890, baseType: !519, size: 64, offset: 1216)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !467, file: !44, line: 1891, baseType: !609, size: 64, offset: 1280)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{!162, !443, !494, !162}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !444, file: !44, line: 623, baseType: !613, size: 64, offset: 192)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !615)
!615 = !{!616, !617, !618, !619, !620, !621, !668, !2444, !2526, !2609, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2625, !2629, !2630, !2633, !2634, !2637, !2638, !2639, !2680, !2707, !2708, !2709, !2710, !2711, !2712, !2715, !2717, !2724, !2725, !2727, !2728, !2729, !2788, !2789, !2804, !2805, !2806, !2807, !2808, !2811, !2812, !2813, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !614, file: !44, line: 1417, baseType: !237, size: 128)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !614, file: !44, line: 1418, baseType: !527, size: 32, offset: 128)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !614, file: !44, line: 1419, baseType: !170, size: 8, offset: 160)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !614, file: !44, line: 1420, baseType: !340, size: 64, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !614, file: !44, line: 1421, baseType: !545, size: 64, offset: 256)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !614, file: !44, line: 1422, baseType: !622, size: 64, offset: 320)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !624)
!624 = !{!625, !626, !627, !634, !638, !642, !646, !647, !648, !658, !661, !662, !663, !665, !666, !667}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !623, file: !44, line: 2229, baseType: !209, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !623, file: !44, line: 2230, baseType: !162, size: 32, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !623, file: !44, line: 2238, baseType: !628, size: 64, offset: 128)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{!162, !631}
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !633, line: 28, flags: DIFlagFwdDecl)
!633 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!634 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !623, file: !44, line: 2239, baseType: !635, size: 64, offset: 192)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !637)
!637 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !623, file: !44, line: 2240, baseType: !639, size: 64, offset: 256)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!398, !622, !162, !209, !161}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !623, file: !44, line: 2242, baseType: !643, size: 64, offset: 320)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{null, !613}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !623, file: !44, line: 2243, baseType: !211, size: 64, offset: 384)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !623, file: !44, line: 2244, baseType: !622, size: 64, offset: 448)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !623, file: !44, line: 2245, baseType: !649, size: 64, offset: 512)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !169, line: 182, size: 64, elements: !650)
!650 = !{!651}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !649, file: !169, line: 183, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !169, line: 186, size: 128, elements: !654)
!654 = !{!655, !656}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !653, file: !169, line: 187, baseType: !652, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !653, file: !169, line: 187, baseType: !657, size: 64, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !623, file: !44, line: 2247, baseType: !659, offset: 576)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !660, line: 187, elements: !264)
!660 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!661 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !623, file: !44, line: 2248, baseType: !659, offset: 576)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !623, file: !44, line: 2249, baseType: !659, offset: 576)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !623, file: !44, line: 2250, baseType: !664, offset: 576)
!664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !659, elements: !292)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !623, file: !44, line: 2252, baseType: !659, offset: 576)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !623, file: !44, line: 2253, baseType: !659, offset: 576)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !623, file: !44, line: 2254, baseType: !659, offset: 576)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !614, file: !44, line: 1423, baseType: !669, size: 64, offset: 384)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !671)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !672)
!672 = !{!673, !677, !681, !682, !686, !692, !696, !697, !698, !702, !706, !707, !708, !709, !715, !720, !721, !728, !729, !730, !731, !2428, !2443}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !671, file: !44, line: 1936, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{!443, !613}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !671, file: !44, line: 1937, baseType: !678, size: 64, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{null, !443}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !671, file: !44, line: 1938, baseType: !678, size: 64, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !671, file: !44, line: 1940, baseType: !683, size: 64, offset: 192)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{null, !443, !162}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !671, file: !44, line: 1941, baseType: !687, size: 64, offset: 256)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DISubroutineType(types: !689)
!689 = !{!162, !443, !690}
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !44, line: 289, flags: DIFlagFwdDecl)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !671, file: !44, line: 1942, baseType: !693, size: 64, offset: 320)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DISubroutineType(types: !695)
!695 = !{!162, !443}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !671, file: !44, line: 1943, baseType: !678, size: 64, offset: 384)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !671, file: !44, line: 1944, baseType: !643, size: 64, offset: 448)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !671, file: !44, line: 1945, baseType: !699, size: 64, offset: 512)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{!162, !613, !162}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !671, file: !44, line: 1946, baseType: !703, size: 64, offset: 576)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DISubroutineType(types: !705)
!705 = !{!162, !613}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !671, file: !44, line: 1947, baseType: !703, size: 64, offset: 640)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !671, file: !44, line: 1948, baseType: !703, size: 64, offset: 704)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !671, file: !44, line: 1949, baseType: !703, size: 64, offset: 768)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !671, file: !44, line: 1950, baseType: !710, size: 64, offset: 832)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{!162, !398, !713}
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !671, file: !44, line: 1951, baseType: !716, size: 64, offset: 896)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DISubroutineType(types: !718)
!718 = !{!162, !613, !719, !291}
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !671, file: !44, line: 1952, baseType: !643, size: 64, offset: 960)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !671, file: !44, line: 1954, baseType: !722, size: 64, offset: 1024)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{!162, !725, !398}
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !727, line: 539, flags: DIFlagFwdDecl)
!727 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!728 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !671, file: !44, line: 1955, baseType: !722, size: 64, offset: 1088)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !671, file: !44, line: 1956, baseType: !722, size: 64, offset: 1152)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !671, file: !44, line: 1957, baseType: !722, size: 64, offset: 1216)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !671, file: !44, line: 1963, baseType: !732, size: 64, offset: 1280)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{!162, !613, !735, !168}
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !737, line: 68, size: 512, align: 128, elements: !738)
!737 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!738 = !{!739, !740, !2420, !2427}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !736, file: !737, line: 69, baseType: !340, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, scope: !736, file: !737, line: 77, baseType: !741, size: 320, offset: 64)
!741 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !736, file: !737, line: 77, size: 320, elements: !742)
!742 = !{!743, !929, !934, !962, !970, !976, !2351, !2419}
!743 = !DIDerivedType(tag: DW_TAG_member, scope: !741, file: !737, line: 78, baseType: !744, size: 320)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !741, file: !737, line: 78, size: 320, elements: !745)
!745 = !{!746, !747, !927, !928}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !744, file: !737, line: 84, baseType: !237, size: 128)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !744, file: !737, line: 86, baseType: !748, size: 64, offset: 128)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !750)
!750 = !{!751, !752, !759, !760, !765, !780, !796, !797, !798, !799, !920, !921, !924, !925, !926}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !749, file: !44, line: 452, baseType: !443, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !749, file: !44, line: 453, baseType: !753, size: 128, offset: 64)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !754, line: 292, size: 128, elements: !755)
!754 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!755 = !{!756, !757, !758}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !753, file: !754, line: 293, baseType: !250)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !753, file: !754, line: 295, baseType: !168, size: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !753, file: !754, line: 296, baseType: !161, size: 64, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !749, file: !44, line: 454, baseType: !168, size: 32, offset: 192)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !749, file: !44, line: 455, baseType: !761, size: 32, offset: 224)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !169, line: 168, baseType: !762)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !169, line: 166, size: 32, elements: !763)
!763 = !{!764}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !762, file: !169, line: 167, baseType: !162, size: 32)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !749, file: !44, line: 460, baseType: !766, size: 128, offset: 256)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !767, line: 125, size: 128, elements: !768)
!767 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!768 = !{!769, !779}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !766, file: !767, line: 126, baseType: !770, size: 64)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !767, line: 31, size: 64, elements: !771)
!771 = !{!772}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !770, file: !767, line: 32, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !767, line: 24, size: 192, align: 64, elements: !775)
!775 = !{!776, !777, !778}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !774, file: !767, line: 25, baseType: !340, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !774, file: !767, line: 26, baseType: !773, size: 64, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !774, file: !767, line: 27, baseType: !773, size: 64, offset: 128)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !766, file: !767, line: 127, baseType: !773, size: 64, offset: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !749, file: !44, line: 461, baseType: !781, size: 256, offset: 384)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !782, line: 35, size: 256, elements: !783)
!782 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!783 = !{!784, !792, !793, !795}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !781, file: !782, line: 36, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !786, line: 13, baseType: !787)
!786 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !169, line: 175, baseType: !788)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !169, line: 173, size: 64, elements: !789)
!789 = !{!790}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !788, file: !169, line: 174, baseType: !791, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !432, line: 22, baseType: !554)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !781, file: !782, line: 42, baseType: !785, size: 64, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !781, file: !782, line: 46, baseType: !794, offset: 128)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !251, line: 29, baseType: !258)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !781, file: !782, line: 47, baseType: !237, size: 128, offset: 128)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !749, file: !44, line: 462, baseType: !340, size: 64, offset: 640)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !749, file: !44, line: 463, baseType: !340, size: 64, offset: 704)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !749, file: !44, line: 464, baseType: !340, size: 64, offset: 768)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !749, file: !44, line: 465, baseType: !800, size: 64, offset: 832)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !802)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !803)
!803 = !{!804, !808, !812, !816, !820, !824, !830, !836, !840, !845, !849, !853, !857, !884, !888, !894, !895, !896, !900, !905, !909, !916}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !802, file: !44, line: 368, baseType: !805, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DISubroutineType(types: !807)
!807 = !{!162, !735, !690}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !802, file: !44, line: 369, baseType: !809, size: 64, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{!162, !368, !735}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !802, file: !44, line: 372, baseType: !813, size: 64, offset: 128)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{!162, !748, !690}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !802, file: !44, line: 375, baseType: !817, size: 64, offset: 192)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DISubroutineType(types: !819)
!819 = !{!162, !735}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !802, file: !44, line: 381, baseType: !821, size: 64, offset: 256)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DISubroutineType(types: !823)
!823 = !{!162, !368, !748, !240, !7}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !802, file: !44, line: 383, baseType: !825, size: 64, offset: 320)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{null, !828}
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !802, file: !44, line: 385, baseType: !831, size: 64, offset: 384)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DISubroutineType(types: !833)
!833 = !{!162, !368, !748, !545, !7, !7, !834, !835}
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !802, file: !44, line: 388, baseType: !837, size: 64, offset: 448)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{!162, !368, !748, !545, !7, !7, !735, !161}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !802, file: !44, line: 393, baseType: !841, size: 64, offset: 512)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{!844, !748, !844}
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !169, line: 125, baseType: !436)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !802, file: !44, line: 394, baseType: !846, size: 64, offset: 576)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{null, !735, !7, !7}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !802, file: !44, line: 395, baseType: !850, size: 64, offset: 640)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{!162, !735, !168}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !802, file: !44, line: 396, baseType: !854, size: 64, offset: 704)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{null, !735}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !802, file: !44, line: 397, baseType: !858, size: 64, offset: 768)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DISubroutineType(types: !860)
!860 = !{!322, !861, !882}
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !863)
!863 = !{!864, !865, !866, !870, !871, !872, !874, !875}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !862, file: !44, line: 321, baseType: !368, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !862, file: !44, line: 326, baseType: !545, size: 64, offset: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !862, file: !44, line: 327, baseType: !867, size: 64, offset: 128)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DISubroutineType(types: !869)
!869 = !{null, !861, !326, !326}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !862, file: !44, line: 328, baseType: !161, size: 64, offset: 192)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !862, file: !44, line: 329, baseType: !162, size: 32, offset: 256)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !862, file: !44, line: 330, baseType: !873, size: 16, offset: 288)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !432, line: 19, baseType: !163)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !862, file: !44, line: 331, baseType: !873, size: 16, offset: 304)
!875 = !DIDerivedType(tag: DW_TAG_member, scope: !862, file: !44, line: 332, baseType: !876, size: 64, offset: 320)
!876 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !862, file: !44, line: 332, size: 64, elements: !877)
!877 = !{!878, !879}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !876, file: !44, line: 333, baseType: !7, size: 32)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !876, file: !44, line: 334, baseType: !880, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !802, file: !44, line: 402, baseType: !885, size: 64, offset: 832)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DISubroutineType(types: !887)
!887 = !{!162, !748, !735, !735, !5}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !802, file: !44, line: 404, baseType: !889, size: 64, offset: 896)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DISubroutineType(types: !891)
!891 = !{!504, !735, !892}
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !893, line: 305, baseType: !7)
!893 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!894 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !802, file: !44, line: 405, baseType: !854, size: 64, offset: 960)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !802, file: !44, line: 406, baseType: !817, size: 64, offset: 1024)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !802, file: !44, line: 407, baseType: !897, size: 64, offset: 1088)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DISubroutineType(types: !899)
!899 = !{!162, !735, !340, !340}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !802, file: !44, line: 409, baseType: !901, size: 64, offset: 1152)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DISubroutineType(types: !903)
!903 = !{null, !735, !904, !904}
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !802, file: !44, line: 410, baseType: !906, size: 64, offset: 1216)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DISubroutineType(types: !908)
!908 = !{!162, !748, !735}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !802, file: !44, line: 413, baseType: !910, size: 64, offset: 1280)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DISubroutineType(types: !912)
!912 = !{!162, !913, !368, !915}
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !802, file: !44, line: 415, baseType: !917, size: 64, offset: 1344)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DISubroutineType(types: !919)
!919 = !{null, !368}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !749, file: !44, line: 466, baseType: !340, size: 64, offset: 896)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !749, file: !44, line: 467, baseType: !922, size: 32, offset: 960)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !923, line: 8, baseType: !431)
!923 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!924 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !749, file: !44, line: 468, baseType: !250, offset: 992)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !749, file: !44, line: 469, baseType: !237, size: 128, offset: 1024)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !749, file: !44, line: 470, baseType: !161, size: 64, offset: 1152)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !744, file: !737, line: 87, baseType: !340, size: 64, offset: 192)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !744, file: !737, line: 94, baseType: !340, size: 64, offset: 256)
!929 = !DIDerivedType(tag: DW_TAG_member, scope: !741, file: !737, line: 96, baseType: !930, size: 64)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !741, file: !737, line: 96, size: 64, elements: !931)
!931 = !{!932}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !930, file: !737, line: 101, baseType: !933, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !169, line: 143, baseType: !436)
!934 = !DIDerivedType(tag: DW_TAG_member, scope: !741, file: !737, line: 103, baseType: !935, size: 320)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !741, file: !737, line: 103, size: 320, elements: !936)
!936 = !{!937, !947, !950, !951}
!937 = !DIDerivedType(tag: DW_TAG_member, scope: !935, file: !737, line: 104, baseType: !938, size: 128)
!938 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !935, file: !737, line: 104, size: 128, elements: !939)
!939 = !{!940, !941}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !938, file: !737, line: 105, baseType: !237, size: 128)
!941 = !DIDerivedType(tag: DW_TAG_member, scope: !938, file: !737, line: 106, baseType: !942, size: 128)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !938, file: !737, line: 106, size: 128, elements: !943)
!943 = !{!944, !945, !946}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !942, file: !737, line: 107, baseType: !735, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !942, file: !737, line: 109, baseType: !162, size: 32, offset: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !942, file: !737, line: 110, baseType: !162, size: 32, offset: 96)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !935, file: !737, line: 117, baseType: !948, size: 64, offset: 128)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !737, line: 117, flags: DIFlagFwdDecl)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !935, file: !737, line: 119, baseType: !161, size: 64, offset: 192)
!951 = !DIDerivedType(tag: DW_TAG_member, scope: !935, file: !737, line: 120, baseType: !952, size: 64, offset: 256)
!952 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !935, file: !737, line: 120, size: 64, elements: !953)
!953 = !{!954, !955, !956}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !952, file: !737, line: 121, baseType: !161, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !952, file: !737, line: 122, baseType: !340, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, scope: !952, file: !737, line: 123, baseType: !957, size: 32)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !952, file: !737, line: 123, size: 32, elements: !958)
!958 = !{!959, !960, !961}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !957, file: !737, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !957, file: !737, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !957, file: !737, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!962 = !DIDerivedType(tag: DW_TAG_member, scope: !741, file: !737, line: 130, baseType: !963, size: 192)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !741, file: !737, line: 130, size: 192, elements: !964)
!964 = !{!965, !966, !967, !968, !969}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !963, file: !737, line: 131, baseType: !340, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !963, file: !737, line: 134, baseType: !170, size: 8, offset: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !963, file: !737, line: 135, baseType: !170, size: 8, offset: 72)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !963, file: !737, line: 136, baseType: !761, size: 32, offset: 96)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !963, file: !737, line: 137, baseType: !7, size: 32, offset: 128)
!970 = !DIDerivedType(tag: DW_TAG_member, scope: !741, file: !737, line: 139, baseType: !971, size: 256)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !741, file: !737, line: 139, size: 256, elements: !972)
!972 = !{!973, !974, !975}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !971, file: !737, line: 140, baseType: !340, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !971, file: !737, line: 141, baseType: !761, size: 32, offset: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !971, file: !737, line: 143, baseType: !237, size: 128, offset: 128)
!976 = !DIDerivedType(tag: DW_TAG_member, scope: !741, file: !737, line: 145, baseType: !977, size: 256)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !741, file: !737, line: 145, size: 256, elements: !978)
!978 = !{!979, !980, !982, !983, !2350}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !977, file: !737, line: 146, baseType: !340, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !977, file: !737, line: 147, baseType: !981, size: 64, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !727, line: 509, baseType: !735)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !977, file: !737, line: 148, baseType: !340, size: 64, offset: 128)
!983 = !DIDerivedType(tag: DW_TAG_member, scope: !977, file: !737, line: 149, baseType: !984, size: 64, offset: 192)
!984 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !977, file: !737, line: 149, size: 64, elements: !985)
!985 = !{!986, !2349}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !984, file: !737, line: 150, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !737, line: 388, size: 7296, elements: !989)
!989 = !{!990, !2345}
!990 = !DIDerivedType(tag: DW_TAG_member, scope: !988, file: !737, line: 389, baseType: !991, size: 7296)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !988, file: !737, line: 389, size: 7296, elements: !992)
!992 = !{!993, !1111, !1112, !1113, !1117, !1118, !1119, !1120, !1121, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1162, !1170, !1173, !1219, !1220, !2329, !2330, !2333, !2334, !2335, !2338, !2339, !2340, !2343, !2344}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !991, file: !737, line: 390, baseType: !994, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !737, line: 305, size: 1472, elements: !996)
!996 = !{!997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1011, !1012, !1017, !1018, !1021, !1105, !1106, !1107, !1108, !1109}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !995, file: !737, line: 308, baseType: !340, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !995, file: !737, line: 309, baseType: !340, size: 64, offset: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !995, file: !737, line: 313, baseType: !994, size: 64, offset: 128)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !995, file: !737, line: 313, baseType: !994, size: 64, offset: 192)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !995, file: !737, line: 315, baseType: !774, size: 192, align: 64, offset: 256)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !995, file: !737, line: 323, baseType: !340, size: 64, offset: 448)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !995, file: !737, line: 327, baseType: !987, size: 64, offset: 512)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !995, file: !737, line: 333, baseType: !1005, size: 64, offset: 576)
!1005 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !727, line: 284, baseType: !1006)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !727, line: 284, size: 64, elements: !1007)
!1007 = !{!1008}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1006, file: !727, line: 284, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1010, line: 19, baseType: !340)
!1010 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !995, file: !737, line: 334, baseType: !340, size: 64, offset: 640)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !995, file: !737, line: 343, baseType: !1013, size: 256, offset: 704)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !995, file: !737, line: 340, size: 256, elements: !1014)
!1014 = !{!1015, !1016}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1013, file: !737, line: 341, baseType: !774, size: 192, align: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1013, file: !737, line: 342, baseType: !340, size: 64, offset: 192)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !995, file: !737, line: 351, baseType: !237, size: 128, offset: 960)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !995, file: !737, line: 353, baseType: !1019, size: 64, offset: 1088)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !737, line: 353, flags: DIFlagFwdDecl)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !995, file: !737, line: 356, baseType: !1022, size: 64, offset: 1152)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1024)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1025)
!1025 = !{!1026, !1030, !1031, !1035, !1039, !1079, !1083, !1087, !1091, !1092, !1093, !1097, !1101}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1024, file: !14, line: 558, baseType: !1027, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{null, !994}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1024, file: !14, line: 559, baseType: !1027, size: 64, offset: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1024, file: !14, line: 560, baseType: !1032, size: 64, offset: 128)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!162, !994, !340}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1024, file: !14, line: 561, baseType: !1036, size: 64, offset: 192)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!162, !994}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1024, file: !14, line: 562, baseType: !1040, size: 64, offset: 256)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!1043, !1044}
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !737, line: 682, baseType: !7)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1046)
!1046 = !{!1047, !1048, !1049, !1050, !1051, !1052, !1059, !1066, !1072, !1073, !1074, !1076, !1078}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1045, file: !14, line: 509, baseType: !994, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1045, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1045, file: !14, line: 511, baseType: !168, size: 32, offset: 96)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1045, file: !14, line: 512, baseType: !340, size: 64, offset: 128)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1045, file: !14, line: 513, baseType: !340, size: 64, offset: 192)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1045, file: !14, line: 514, baseType: !1053, size: 64, offset: 256)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !727, line: 385, baseType: !1055)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !727, line: 385, size: 64, elements: !1056)
!1056 = !{!1057}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1055, file: !727, line: 385, baseType: !1058, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1010, line: 15, baseType: !340)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1045, file: !14, line: 516, baseType: !1060, size: 64, offset: 320)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !727, line: 359, baseType: !1062)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !727, line: 359, size: 64, elements: !1063)
!1063 = !{!1064}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1062, file: !727, line: 359, baseType: !1065, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1010, line: 16, baseType: !340)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1045, file: !14, line: 519, baseType: !1067, size: 64, offset: 384)
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1010, line: 21, baseType: !1068)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1010, line: 21, size: 64, elements: !1069)
!1069 = !{!1070}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1068, file: !1010, line: 21, baseType: !1071, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1010, line: 14, baseType: !340)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1045, file: !14, line: 521, baseType: !735, size: 64, offset: 448)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1045, file: !14, line: 522, baseType: !735, size: 64, offset: 512)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1045, file: !14, line: 528, baseType: !1075, size: 64, offset: 576)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1045, file: !14, line: 532, baseType: !1077, size: 64, offset: 640)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1045, file: !14, line: 536, baseType: !981, size: 64, offset: 704)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1024, file: !14, line: 563, baseType: !1080, size: 64, offset: 320)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!1043, !1044, !13}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1024, file: !14, line: 565, baseType: !1084, size: 64, offset: 384)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{null, !1044, !340, !340}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1024, file: !14, line: 567, baseType: !1088, size: 64, offset: 448)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!340, !994}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1024, file: !14, line: 571, baseType: !1040, size: 64, offset: 512)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1024, file: !14, line: 574, baseType: !1040, size: 64, offset: 576)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1024, file: !14, line: 579, baseType: !1094, size: 64, offset: 640)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!162, !994, !340, !161, !162, !162}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1024, file: !14, line: 585, baseType: !1098, size: 64, offset: 704)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!209, !994}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1024, file: !14, line: 615, baseType: !1102, size: 64, offset: 768)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!735, !994, !340}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !995, file: !737, line: 359, baseType: !340, size: 64, offset: 1216)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !995, file: !737, line: 361, baseType: !368, size: 64, offset: 1280)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !995, file: !737, line: 362, baseType: !161, size: 64, offset: 1344)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !995, file: !737, line: 365, baseType: !785, size: 64, offset: 1408)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !995, file: !737, line: 373, baseType: !1110, offset: 1472)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !737, line: 296, elements: !264)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !991, file: !737, line: 391, baseType: !770, size: 64, offset: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !991, file: !737, line: 392, baseType: !436, size: 64, offset: 128)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !991, file: !737, line: 394, baseType: !1114, size: 64, offset: 192)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!340, !368, !340, !340, !340, !340}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !991, file: !737, line: 398, baseType: !340, size: 64, offset: 256)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !991, file: !737, line: 399, baseType: !340, size: 64, offset: 320)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !991, file: !737, line: 405, baseType: !340, size: 64, offset: 384)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !991, file: !737, line: 406, baseType: !340, size: 64, offset: 448)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !991, file: !737, line: 407, baseType: !1122, size: 64, offset: 512)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !727, line: 286, baseType: !1124)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !727, line: 286, size: 64, elements: !1125)
!1125 = !{!1126}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1124, file: !727, line: 286, baseType: !1127, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1010, line: 18, baseType: !340)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !991, file: !737, line: 416, baseType: !761, size: 32, offset: 576)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !991, file: !737, line: 428, baseType: !761, size: 32, offset: 608)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !991, file: !737, line: 437, baseType: !761, size: 32, offset: 640)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !991, file: !737, line: 447, baseType: !761, size: 32, offset: 672)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !991, file: !737, line: 450, baseType: !785, size: 64, offset: 704)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !991, file: !737, line: 452, baseType: !162, size: 32, offset: 768)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !991, file: !737, line: 454, baseType: !250, offset: 800)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !991, file: !737, line: 457, baseType: !781, size: 256, offset: 832)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !991, file: !737, line: 459, baseType: !237, size: 128, offset: 1088)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !991, file: !737, line: 466, baseType: !340, size: 64, offset: 1216)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !991, file: !737, line: 467, baseType: !340, size: 64, offset: 1280)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !991, file: !737, line: 469, baseType: !340, size: 64, offset: 1344)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !991, file: !737, line: 470, baseType: !340, size: 64, offset: 1408)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !991, file: !737, line: 471, baseType: !787, size: 64, offset: 1472)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !991, file: !737, line: 472, baseType: !340, size: 64, offset: 1536)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !991, file: !737, line: 473, baseType: !340, size: 64, offset: 1600)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !991, file: !737, line: 474, baseType: !340, size: 64, offset: 1664)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !991, file: !737, line: 475, baseType: !340, size: 64, offset: 1728)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !991, file: !737, line: 477, baseType: !250, offset: 1792)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !991, file: !737, line: 478, baseType: !340, size: 64, offset: 1792)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !991, file: !737, line: 478, baseType: !340, size: 64, offset: 1856)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !991, file: !737, line: 478, baseType: !340, size: 64, offset: 1920)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !991, file: !737, line: 478, baseType: !340, size: 64, offset: 1984)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !991, file: !737, line: 479, baseType: !340, size: 64, offset: 2048)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !991, file: !737, line: 479, baseType: !340, size: 64, offset: 2112)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !991, file: !737, line: 479, baseType: !340, size: 64, offset: 2176)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !991, file: !737, line: 480, baseType: !340, size: 64, offset: 2240)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !991, file: !737, line: 480, baseType: !340, size: 64, offset: 2304)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !991, file: !737, line: 480, baseType: !340, size: 64, offset: 2368)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !991, file: !737, line: 480, baseType: !340, size: 64, offset: 2432)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !991, file: !737, line: 482, baseType: !1159, size: 2816, offset: 2496)
!1159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 2816, elements: !1160)
!1160 = !{!1161}
!1161 = !DISubrange(count: 44)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !991, file: !737, line: 488, baseType: !1163, size: 256, offset: 5312)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1164, line: 60, size: 256, elements: !1165)
!1164 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1165 = !{!1166}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1163, file: !1164, line: 61, baseType: !1167, size: 256)
!1167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !785, size: 256, elements: !1168)
!1168 = !{!1169}
!1169 = !DISubrange(count: 4)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !991, file: !737, line: 490, baseType: !1171, size: 64, offset: 5568)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !737, line: 490, flags: DIFlagFwdDecl)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !991, file: !737, line: 493, baseType: !1174, size: 896, offset: 5632)
!1174 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1175, line: 53, baseType: !1176)
!1175 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1175, line: 13, size: 896, elements: !1177)
!1177 = !{!1178, !1179, !1180, !1181, !1184, !1185, !1192, !1193, !1213, !1214, !1215}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1176, file: !1175, line: 18, baseType: !436, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1176, file: !1175, line: 28, baseType: !787, size: 64, offset: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1176, file: !1175, line: 31, baseType: !781, size: 256, offset: 128)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1176, file: !1175, line: 32, baseType: !1182, size: 64, offset: 384)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1175, line: 32, flags: DIFlagFwdDecl)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1176, file: !1175, line: 37, baseType: !165, size: 16, offset: 448)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1176, file: !1175, line: 40, baseType: !1186, size: 192, offset: 512)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1187, line: 53, size: 192, elements: !1188)
!1187 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1188 = !{!1189, !1190, !1191}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1186, file: !1187, line: 54, baseType: !785, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1186, file: !1187, line: 55, baseType: !250, offset: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1186, file: !1187, line: 59, baseType: !237, size: 128, offset: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1176, file: !1175, line: 41, baseType: !161, size: 64, offset: 704)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1176, file: !1175, line: 42, baseType: !1194, size: 64, offset: 768)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1196)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1197, line: 13, size: 896, elements: !1198)
!1197 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1198 = !{!1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1196, file: !1197, line: 14, baseType: !161, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1196, file: !1197, line: 15, baseType: !340, size: 64, offset: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1196, file: !1197, line: 17, baseType: !340, size: 64, offset: 128)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1196, file: !1197, line: 17, baseType: !340, size: 64, offset: 192)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1196, file: !1197, line: 19, baseType: !326, size: 64, offset: 256)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1196, file: !1197, line: 21, baseType: !326, size: 64, offset: 320)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1196, file: !1197, line: 22, baseType: !326, size: 64, offset: 384)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1196, file: !1197, line: 23, baseType: !326, size: 64, offset: 448)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1196, file: !1197, line: 24, baseType: !326, size: 64, offset: 512)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1196, file: !1197, line: 25, baseType: !326, size: 64, offset: 576)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1196, file: !1197, line: 26, baseType: !326, size: 64, offset: 640)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1196, file: !1197, line: 27, baseType: !326, size: 64, offset: 704)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1196, file: !1197, line: 28, baseType: !326, size: 64, offset: 768)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1196, file: !1197, line: 29, baseType: !326, size: 64, offset: 832)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1176, file: !1175, line: 44, baseType: !761, size: 32, offset: 832)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1176, file: !1175, line: 50, baseType: !873, size: 16, offset: 864)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1176, file: !1175, line: 51, baseType: !1216, size: 16, offset: 880)
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !432, line: 18, baseType: !1217)
!1217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !164, line: 23, baseType: !1218)
!1218 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !991, file: !737, line: 495, baseType: !340, size: 64, offset: 6528)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !991, file: !737, line: 497, baseType: !1221, size: 64, offset: 6592)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !737, line: 381, size: 384, elements: !1223)
!1223 = !{!1224, !1225, !2328}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1222, file: !737, line: 382, baseType: !761, size: 32)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1222, file: !737, line: 383, baseType: !1226, size: 128, offset: 64)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !737, line: 376, size: 128, elements: !1227)
!1227 = !{!1228, !2326}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1226, file: !737, line: 377, baseType: !1229, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1231, line: 640, size: 48640, elements: !1232)
!1231 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1232 = !{!1233, !1239, !1241, !1242, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1259, !1277, !1288, !1373, !1374, !1375, !1386, !1387, !1389, !1390, !1391, !1392, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1476, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1514, !1516, !1517, !1518, !1530, !1531, !1532, !1533, !1534, !1535, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1559, !1564, !1748, !1749, !1750, !1751, !1755, !1758, !1761, !1764, !1767, !1771, !1872, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1916, !1917, !1918, !1919, !1920, !1925, !1926, !1927, !1930, !1931, !1934, !1937, !1940, !1943, !1986, !1989, !1990, !2069, !2070, !2073, !2074, !2077, !2078, !2079, !2083, !2084, !2085, !2098, !2099, !2100, !2110, !2115, !2118, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1230, file: !1231, line: 646, baseType: !1234, size: 128)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1235, line: 56, size: 128, elements: !1236)
!1235 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1236 = !{!1237, !1238}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1234, file: !1235, line: 57, baseType: !340, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1234, file: !1235, line: 58, baseType: !431, size: 32, offset: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1230, file: !1231, line: 649, baseType: !1240, size: 64, offset: 128)
!1240 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !326)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1230, file: !1231, line: 657, baseType: !161, size: 64, offset: 192)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1230, file: !1231, line: 658, baseType: !1243, size: 32, offset: 256)
!1243 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1244, line: 113, baseType: !1245)
!1244 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1244, line: 111, size: 32, elements: !1246)
!1246 = !{!1247}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1245, file: !1244, line: 112, baseType: !761, size: 32)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1230, file: !1231, line: 660, baseType: !7, size: 32, offset: 288)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1230, file: !1231, line: 661, baseType: !7, size: 32, offset: 320)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1230, file: !1231, line: 684, baseType: !162, size: 32, offset: 352)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1230, file: !1231, line: 686, baseType: !162, size: 32, offset: 384)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1230, file: !1231, line: 687, baseType: !162, size: 32, offset: 416)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1230, file: !1231, line: 688, baseType: !162, size: 32, offset: 448)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1230, file: !1231, line: 689, baseType: !7, size: 32, offset: 480)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1230, file: !1231, line: 691, baseType: !1256, size: 64, offset: 512)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1258)
!1258 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1231, line: 691, flags: DIFlagFwdDecl)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1230, file: !1231, line: 692, baseType: !1260, size: 832, offset: 576)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1231, line: 451, size: 832, elements: !1261)
!1261 = !{!1262, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1260, file: !1231, line: 453, baseType: !1263, size: 128)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1231, line: 325, size: 128, elements: !1264)
!1264 = !{!1265, !1266}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1263, file: !1231, line: 326, baseType: !340, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1263, file: !1231, line: 327, baseType: !431, size: 32, offset: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1260, file: !1231, line: 454, baseType: !774, size: 192, align: 64, offset: 128)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1260, file: !1231, line: 455, baseType: !237, size: 128, offset: 320)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1260, file: !1231, line: 456, baseType: !7, size: 32, offset: 448)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1260, file: !1231, line: 458, baseType: !436, size: 64, offset: 512)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1260, file: !1231, line: 459, baseType: !436, size: 64, offset: 576)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1260, file: !1231, line: 460, baseType: !436, size: 64, offset: 640)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1260, file: !1231, line: 461, baseType: !436, size: 64, offset: 704)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1260, file: !1231, line: 463, baseType: !436, size: 64, offset: 768)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1260, file: !1231, line: 465, baseType: !1276, offset: 832)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1231, line: 415, elements: !264)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1230, file: !1231, line: 693, baseType: !1278, size: 384, offset: 1408)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1231, line: 489, size: 384, elements: !1279)
!1279 = !{!1280, !1281, !1282, !1283, !1284, !1285, !1286}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1278, file: !1231, line: 490, baseType: !237, size: 128)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1278, file: !1231, line: 491, baseType: !340, size: 64, offset: 128)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1278, file: !1231, line: 492, baseType: !340, size: 64, offset: 192)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1278, file: !1231, line: 493, baseType: !7, size: 32, offset: 256)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1278, file: !1231, line: 494, baseType: !165, size: 16, offset: 288)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1278, file: !1231, line: 495, baseType: !165, size: 16, offset: 304)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1278, file: !1231, line: 497, baseType: !1287, size: 64, offset: 320)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1230, file: !1231, line: 697, baseType: !1289, size: 1792, offset: 1792)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1231, line: 507, size: 1792, elements: !1290)
!1290 = !{!1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1370, !1371}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1289, file: !1231, line: 508, baseType: !774, size: 192, align: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1289, file: !1231, line: 515, baseType: !436, size: 64, offset: 192)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1289, file: !1231, line: 516, baseType: !436, size: 64, offset: 256)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1289, file: !1231, line: 517, baseType: !436, size: 64, offset: 320)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1289, file: !1231, line: 518, baseType: !436, size: 64, offset: 384)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1289, file: !1231, line: 519, baseType: !436, size: 64, offset: 448)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1289, file: !1231, line: 526, baseType: !791, size: 64, offset: 512)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1289, file: !1231, line: 527, baseType: !436, size: 64, offset: 576)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1289, file: !1231, line: 528, baseType: !7, size: 32, offset: 640)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1289, file: !1231, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1289, file: !1231, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1289, file: !1231, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1289, file: !1231, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1289, file: !1231, line: 563, baseType: !1305, size: 512, offset: 704)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1306)
!1306 = !{!1307, !1315, !1316, !1321, !1364, !1367, !1368, !1369}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1305, file: !20, line: 119, baseType: !1308, size: 256)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1309, line: 9, size: 256, elements: !1310)
!1309 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1310 = !{!1311, !1312}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1308, file: !1309, line: 10, baseType: !774, size: 192, align: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1308, file: !1309, line: 11, baseType: !1313, size: 64, offset: 192)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1314, line: 29, baseType: !791)
!1314 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1305, file: !20, line: 120, baseType: !1313, size: 64, offset: 256)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1305, file: !20, line: 121, baseType: !1317, size: 64, offset: 320)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{!19, !1320}
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1305, file: !20, line: 122, baseType: !1322, size: 64, offset: 384)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1324)
!1324 = !{!1325, !1345, !1346, !1349, !1354, !1355, !1359, !1363}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1323, file: !20, line: 160, baseType: !1326, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1328)
!1328 = !{!1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1327, file: !20, line: 215, baseType: !794)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1327, file: !20, line: 216, baseType: !7, size: 32)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1327, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1327, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1327, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1327, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1327, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1327, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1327, file: !20, line: 233, baseType: !1313, size: 64, offset: 128)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1327, file: !20, line: 234, baseType: !1320, size: 64, offset: 192)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1327, file: !20, line: 235, baseType: !1313, size: 64, offset: 256)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1327, file: !20, line: 236, baseType: !1320, size: 64, offset: 320)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1327, file: !20, line: 237, baseType: !1342, size: 4096, offset: 512)
!1342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1323, size: 4096, elements: !1343)
!1343 = !{!1344}
!1344 = !DISubrange(count: 8)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1323, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1323, file: !20, line: 162, baseType: !1347, size: 32, offset: 96)
!1347 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !169, line: 27, baseType: !1348)
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !324, line: 96, baseType: !162)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1323, file: !20, line: 163, baseType: !1350, size: 32, offset: 128)
!1350 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !404, line: 276, baseType: !1351)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !404, line: 276, size: 32, elements: !1352)
!1352 = !{!1353}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1351, file: !404, line: 276, baseType: !408, size: 32)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1323, file: !20, line: 164, baseType: !1320, size: 64, offset: 192)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1323, file: !20, line: 165, baseType: !1356, size: 128, offset: 256)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1309, line: 14, size: 128, elements: !1357)
!1357 = !{!1358}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1356, file: !1309, line: 15, baseType: !766, size: 128)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1323, file: !20, line: 166, baseType: !1360, size: 64, offset: 384)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!1313}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1323, file: !20, line: 167, baseType: !1313, size: 64, offset: 448)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1305, file: !20, line: 123, baseType: !1365, size: 8, offset: 448)
!1365 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !432, line: 17, baseType: !1366)
!1366 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !164, line: 21, baseType: !170)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1305, file: !20, line: 124, baseType: !1365, size: 8, offset: 456)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1305, file: !20, line: 125, baseType: !1365, size: 8, offset: 464)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1305, file: !20, line: 126, baseType: !1365, size: 8, offset: 472)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1289, file: !1231, line: 572, baseType: !1305, size: 512, offset: 1216)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1289, file: !1231, line: 580, baseType: !1372, size: 64, offset: 1728)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1230, file: !1231, line: 721, baseType: !7, size: 32, offset: 3584)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1230, file: !1231, line: 722, baseType: !162, size: 32, offset: 3616)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1230, file: !1231, line: 723, baseType: !1376, size: 64, offset: 3648)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1378)
!1378 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1379, line: 17, baseType: !1380)
!1379 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1379, line: 17, size: 64, elements: !1381)
!1381 = !{!1382}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1380, file: !1379, line: 17, baseType: !1383, size: 64)
!1383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 64, elements: !1384)
!1384 = !{!1385}
!1385 = !DISubrange(count: 1)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1230, file: !1231, line: 724, baseType: !1378, size: 64, offset: 3712)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1230, file: !1231, line: 749, baseType: !1388, offset: 3776)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1231, line: 290, elements: !264)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1230, file: !1231, line: 751, baseType: !237, size: 128, offset: 3776)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1230, file: !1231, line: 757, baseType: !987, size: 64, offset: 3904)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1230, file: !1231, line: 758, baseType: !987, size: 64, offset: 3968)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1230, file: !1231, line: 761, baseType: !1393, size: 320, offset: 4032)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1164, line: 34, size: 320, elements: !1394)
!1394 = !{!1395, !1396}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1393, file: !1164, line: 35, baseType: !436, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1393, file: !1164, line: 36, baseType: !1397, size: 256, offset: 64)
!1397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !994, size: 256, elements: !1168)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1230, file: !1231, line: 766, baseType: !162, size: 32, offset: 4352)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1230, file: !1231, line: 767, baseType: !162, size: 32, offset: 4384)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1230, file: !1231, line: 768, baseType: !162, size: 32, offset: 4416)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1230, file: !1231, line: 770, baseType: !162, size: 32, offset: 4448)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1230, file: !1231, line: 772, baseType: !340, size: 64, offset: 4480)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1230, file: !1231, line: 775, baseType: !7, size: 32, offset: 4544)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1230, file: !1231, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1230, file: !1231, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1230, file: !1231, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1230, file: !1231, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1230, file: !1231, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1230, file: !1231, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1230, file: !1231, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1230, file: !1231, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1230, file: !1231, line: 831, baseType: !340, size: 64, offset: 4672)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1230, file: !1231, line: 833, baseType: !1414, size: 384, offset: 4736)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1415)
!1415 = !{!1416, !1421}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1414, file: !25, line: 26, baseType: !1417, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{!326, !1420}
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, scope: !1414, file: !25, line: 27, baseType: !1422, size: 320, offset: 64)
!1422 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1414, file: !25, line: 27, size: 320, elements: !1423)
!1423 = !{!1424, !1434, !1461}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1422, file: !25, line: 36, baseType: !1425, size: 320)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1422, file: !25, line: 29, size: 320, elements: !1426)
!1426 = !{!1427, !1429, !1430, !1431, !1432, !1433}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1425, file: !25, line: 30, baseType: !1428, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1425, file: !25, line: 31, baseType: !431, size: 32, offset: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1425, file: !25, line: 32, baseType: !431, size: 32, offset: 96)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1425, file: !25, line: 33, baseType: !431, size: 32, offset: 128)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1425, file: !25, line: 34, baseType: !436, size: 64, offset: 192)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1425, file: !25, line: 35, baseType: !1428, size: 64, offset: 256)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1422, file: !25, line: 46, baseType: !1435, size: 192)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1422, file: !25, line: 38, size: 192, elements: !1436)
!1436 = !{!1437, !1438, !1439, !1460}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1435, file: !25, line: 39, baseType: !1347, size: 32)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1435, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1439 = !DIDerivedType(tag: DW_TAG_member, scope: !1435, file: !25, line: 41, baseType: !1440, size: 64, offset: 64)
!1440 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1435, file: !25, line: 41, size: 64, elements: !1441)
!1441 = !{!1442, !1450}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1440, file: !25, line: 42, baseType: !1443, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1445, line: 7, size: 128, elements: !1446)
!1445 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1446 = !{!1447, !1449}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1444, file: !1445, line: 8, baseType: !1448, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !324, line: 93, baseType: !547)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1444, file: !1445, line: 9, baseType: !547, size: 64, offset: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1440, file: !25, line: 43, baseType: !1451, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1453, line: 7, size: 64, elements: !1454)
!1453 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1454 = !{!1455, !1459}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1452, file: !1453, line: 8, baseType: !1456, size: 32)
!1456 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1453, line: 5, baseType: !1457)
!1457 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !432, line: 20, baseType: !1458)
!1458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !164, line: 26, baseType: !162)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1452, file: !1453, line: 9, baseType: !1457, size: 32, offset: 32)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1435, file: !25, line: 45, baseType: !436, size: 64, offset: 128)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1422, file: !25, line: 54, baseType: !1462, size: 256)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1422, file: !25, line: 48, size: 256, elements: !1463)
!1463 = !{!1464, !1472, !1473, !1474, !1475}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1462, file: !25, line: 49, baseType: !1465, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1467, line: 36, size: 64, elements: !1468)
!1467 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!1468 = !{!1469, !1470, !1471}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1466, file: !1467, line: 37, baseType: !162, size: 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1466, file: !1467, line: 38, baseType: !1218, size: 16, offset: 32)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1466, file: !1467, line: 39, baseType: !1218, size: 16, offset: 48)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1462, file: !25, line: 50, baseType: !162, size: 32, offset: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1462, file: !25, line: 51, baseType: !162, size: 32, offset: 96)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1462, file: !25, line: 52, baseType: !340, size: 64, offset: 128)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1462, file: !25, line: 53, baseType: !340, size: 64, offset: 192)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1230, file: !1231, line: 835, baseType: !1477, size: 32, offset: 5120)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !169, line: 22, baseType: !1478)
!1478 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !324, line: 28, baseType: !162)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1230, file: !1231, line: 836, baseType: !1477, size: 32, offset: 5152)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1230, file: !1231, line: 840, baseType: !340, size: 64, offset: 5184)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1230, file: !1231, line: 849, baseType: !1229, size: 64, offset: 5248)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1230, file: !1231, line: 852, baseType: !1229, size: 64, offset: 5312)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1230, file: !1231, line: 857, baseType: !237, size: 128, offset: 5376)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1230, file: !1231, line: 858, baseType: !237, size: 128, offset: 5504)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1230, file: !1231, line: 859, baseType: !1229, size: 64, offset: 5632)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1230, file: !1231, line: 867, baseType: !237, size: 128, offset: 5696)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1230, file: !1231, line: 868, baseType: !237, size: 128, offset: 5824)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1230, file: !1231, line: 871, baseType: !1489, size: 64, offset: 5952)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1491)
!1491 = !{!1492, !1493, !1494, !1495, !1497, !1498, !1505, !1506}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1490, file: !53, line: 61, baseType: !1243, size: 32)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1490, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1490, file: !53, line: 63, baseType: !250, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1490, file: !53, line: 65, baseType: !1496, size: 256, offset: 64)
!1496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !649, size: 256, elements: !1168)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1490, file: !53, line: 66, baseType: !649, size: 64, offset: 320)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1490, file: !53, line: 68, baseType: !1499, size: 128, offset: 384)
!1499 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1500, line: 40, baseType: !1501)
!1500 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1500, line: 36, size: 128, elements: !1502)
!1502 = !{!1503, !1504}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1501, file: !1500, line: 37, baseType: !250)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1501, file: !1500, line: 38, baseType: !237, size: 128)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1490, file: !53, line: 69, baseType: !381, size: 128, align: 64, offset: 512)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1490, file: !53, line: 70, baseType: !1507, size: 128, offset: 640)
!1507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1508, size: 128, elements: !1384)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1509)
!1509 = !{!1510, !1511}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1508, file: !53, line: 55, baseType: !162, size: 32)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1508, file: !53, line: 56, baseType: !1512, size: 64, offset: 64)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1230, file: !1231, line: 872, baseType: !1515, size: 512, offset: 6016)
!1515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !653, size: 512, elements: !1168)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1230, file: !1231, line: 873, baseType: !237, size: 128, offset: 6528)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1230, file: !1231, line: 874, baseType: !237, size: 128, offset: 6656)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1230, file: !1231, line: 876, baseType: !1519, size: 64, offset: 6784)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1521, line: 26, size: 192, elements: !1522)
!1521 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1522 = !{!1523, !1524}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1520, file: !1521, line: 27, baseType: !7, size: 32)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1520, file: !1521, line: 28, baseType: !1525, size: 128, offset: 64)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1526, line: 43, size: 128, elements: !1527)
!1526 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1527 = !{!1528, !1529}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1525, file: !1526, line: 44, baseType: !794)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1525, file: !1526, line: 45, baseType: !237, size: 128)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1230, file: !1231, line: 879, baseType: !719, size: 64, offset: 6848)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1230, file: !1231, line: 882, baseType: !719, size: 64, offset: 6912)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1230, file: !1231, line: 884, baseType: !436, size: 64, offset: 6976)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1230, file: !1231, line: 885, baseType: !436, size: 64, offset: 7040)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1230, file: !1231, line: 890, baseType: !436, size: 64, offset: 7104)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1230, file: !1231, line: 891, baseType: !1536, size: 128, offset: 7168)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1231, line: 242, size: 128, elements: !1537)
!1537 = !{!1538, !1539, !1540}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1536, file: !1231, line: 244, baseType: !436, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1536, file: !1231, line: 245, baseType: !436, size: 64, offset: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1536, file: !1231, line: 246, baseType: !794, offset: 128)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1230, file: !1231, line: 900, baseType: !340, size: 64, offset: 7296)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1230, file: !1231, line: 901, baseType: !340, size: 64, offset: 7360)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1230, file: !1231, line: 904, baseType: !436, size: 64, offset: 7424)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1230, file: !1231, line: 907, baseType: !436, size: 64, offset: 7488)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1230, file: !1231, line: 910, baseType: !340, size: 64, offset: 7552)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1230, file: !1231, line: 911, baseType: !340, size: 64, offset: 7616)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1230, file: !1231, line: 914, baseType: !1548, size: 640, offset: 7680)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1549, line: 123, size: 640, elements: !1550)
!1549 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1550 = !{!1551, !1557, !1558}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1548, file: !1549, line: 124, baseType: !1552, size: 576)
!1552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1553, size: 576, elements: !292)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1549, line: 108, size: 192, elements: !1554)
!1554 = !{!1555, !1556}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1553, file: !1549, line: 109, baseType: !436, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1553, file: !1549, line: 110, baseType: !1356, size: 128, offset: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1548, file: !1549, line: 125, baseType: !7, size: 32, offset: 576)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1548, file: !1549, line: 126, baseType: !7, size: 32, offset: 608)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1230, file: !1231, line: 917, baseType: !1560, size: 192, offset: 8320)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1549, line: 134, size: 192, elements: !1561)
!1561 = !{!1562, !1563}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1560, file: !1549, line: 135, baseType: !381, size: 128, align: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1560, file: !1549, line: 136, baseType: !7, size: 32, offset: 128)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1230, file: !1231, line: 923, baseType: !1565, size: 64, offset: 8512)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1567)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1568, line: 111, size: 1280, elements: !1569)
!1568 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1569 = !{!1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1589, !1590, !1591, !1592, !1593, !1594, !1701, !1702, !1703, !1704, !1730, !1733, !1743}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1567, file: !1568, line: 112, baseType: !761, size: 32)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1567, file: !1568, line: 120, baseType: !449, size: 32, offset: 32)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1567, file: !1568, line: 121, baseType: !457, size: 32, offset: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1567, file: !1568, line: 122, baseType: !449, size: 32, offset: 96)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1567, file: !1568, line: 123, baseType: !457, size: 32, offset: 128)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1567, file: !1568, line: 124, baseType: !449, size: 32, offset: 160)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1567, file: !1568, line: 125, baseType: !457, size: 32, offset: 192)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1567, file: !1568, line: 126, baseType: !449, size: 32, offset: 224)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1567, file: !1568, line: 127, baseType: !457, size: 32, offset: 256)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1567, file: !1568, line: 128, baseType: !7, size: 32, offset: 288)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1567, file: !1568, line: 129, baseType: !1581, size: 64, offset: 320)
!1581 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1582, line: 26, baseType: !1583)
!1582 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1582, line: 24, size: 64, elements: !1584)
!1584 = !{!1585}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1583, file: !1582, line: 25, baseType: !1586, size: 64)
!1586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, size: 64, elements: !1587)
!1587 = !{!1588}
!1588 = !DISubrange(count: 2)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1567, file: !1568, line: 130, baseType: !1581, size: 64, offset: 384)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1567, file: !1568, line: 131, baseType: !1581, size: 64, offset: 448)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1567, file: !1568, line: 132, baseType: !1581, size: 64, offset: 512)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1567, file: !1568, line: 133, baseType: !1581, size: 64, offset: 576)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1567, file: !1568, line: 135, baseType: !170, size: 8, offset: 640)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1567, file: !1568, line: 137, baseType: !1595, size: 64, offset: 704)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1597, line: 189, size: 1664, elements: !1598)
!1597 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1598 = !{!1599, !1600, !1603, !1608, !1609, !1612, !1613, !1618, !1619, !1620, !1621, !1623, !1624, !1625, !1626, !1627, !1665, !1686}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1596, file: !1597, line: 190, baseType: !1243, size: 32)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1596, file: !1597, line: 191, baseType: !1601, size: 32, offset: 32)
!1601 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1597, line: 28, baseType: !1602)
!1602 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !169, line: 98, baseType: !1457)
!1603 = !DIDerivedType(tag: DW_TAG_member, scope: !1596, file: !1597, line: 192, baseType: !1604, size: 192, offset: 64)
!1604 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1596, file: !1597, line: 192, size: 192, elements: !1605)
!1605 = !{!1606, !1607}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1604, file: !1597, line: 193, baseType: !237, size: 128)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1604, file: !1597, line: 194, baseType: !774, size: 192, align: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1596, file: !1597, line: 199, baseType: !781, size: 256, offset: 256)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1596, file: !1597, line: 200, baseType: !1610, size: 64, offset: 512)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1597, line: 200, flags: DIFlagFwdDecl)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1596, file: !1597, line: 201, baseType: !161, size: 64, offset: 576)
!1613 = !DIDerivedType(tag: DW_TAG_member, scope: !1596, file: !1597, line: 202, baseType: !1614, size: 64, offset: 640)
!1614 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1596, file: !1597, line: 202, size: 64, elements: !1615)
!1615 = !{!1616, !1617}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1614, file: !1597, line: 203, baseType: !553, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1614, file: !1597, line: 204, baseType: !553, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1596, file: !1597, line: 206, baseType: !553, size: 64, offset: 704)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1596, file: !1597, line: 207, baseType: !449, size: 32, offset: 768)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1596, file: !1597, line: 208, baseType: !457, size: 32, offset: 800)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1596, file: !1597, line: 209, baseType: !1622, size: 32, offset: 832)
!1622 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1597, line: 31, baseType: !573)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1596, file: !1597, line: 210, baseType: !165, size: 16, offset: 864)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1596, file: !1597, line: 211, baseType: !165, size: 16, offset: 880)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1596, file: !1597, line: 215, baseType: !1218, size: 16, offset: 896)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1596, file: !1597, line: 222, baseType: !340, size: 64, offset: 960)
!1627 = !DIDerivedType(tag: DW_TAG_member, scope: !1596, file: !1597, line: 239, baseType: !1628, size: 320, offset: 1024)
!1628 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1596, file: !1597, line: 239, size: 320, elements: !1629)
!1629 = !{!1630, !1657}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1628, file: !1597, line: 240, baseType: !1631, size: 320)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1597, line: 108, size: 320, elements: !1632)
!1632 = !{!1633, !1634, !1646, !1649, !1656}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1631, file: !1597, line: 110, baseType: !340, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, scope: !1631, file: !1597, line: 111, baseType: !1635, size: 64, offset: 64)
!1635 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1631, file: !1597, line: 111, size: 64, elements: !1636)
!1636 = !{!1637, !1645}
!1637 = !DIDerivedType(tag: DW_TAG_member, scope: !1635, file: !1597, line: 112, baseType: !1638, size: 64)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1635, file: !1597, line: 112, size: 64, elements: !1639)
!1639 = !{!1640, !1641}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1638, file: !1597, line: 114, baseType: !873, size: 16)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1638, file: !1597, line: 115, baseType: !1642, size: 48, offset: 16)
!1642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 48, elements: !1643)
!1643 = !{!1644}
!1644 = !DISubrange(count: 6)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1635, file: !1597, line: 121, baseType: !340, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1631, file: !1597, line: 123, baseType: !1647, size: 64, offset: 128)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1597, line: 96, flags: DIFlagFwdDecl)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1631, file: !1597, line: 124, baseType: !1650, size: 64, offset: 192)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1597, line: 102, size: 192, elements: !1652)
!1652 = !{!1653, !1654, !1655}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1651, file: !1597, line: 103, baseType: !381, size: 128, align: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1651, file: !1597, line: 104, baseType: !1243, size: 32, offset: 128)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1651, file: !1597, line: 105, baseType: !504, size: 8, offset: 160)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1631, file: !1597, line: 125, baseType: !209, size: 64, offset: 256)
!1657 = !DIDerivedType(tag: DW_TAG_member, scope: !1628, file: !1597, line: 241, baseType: !1658, size: 320)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1628, file: !1597, line: 241, size: 320, elements: !1659)
!1659 = !{!1660, !1661, !1662, !1663, !1664}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1658, file: !1597, line: 242, baseType: !340, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1658, file: !1597, line: 243, baseType: !340, size: 64, offset: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1658, file: !1597, line: 244, baseType: !1647, size: 64, offset: 128)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1658, file: !1597, line: 245, baseType: !1650, size: 64, offset: 192)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1658, file: !1597, line: 246, baseType: !291, size: 64, offset: 256)
!1665 = !DIDerivedType(tag: DW_TAG_member, scope: !1596, file: !1597, line: 254, baseType: !1666, size: 256, offset: 1344)
!1666 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1596, file: !1597, line: 254, size: 256, elements: !1667)
!1667 = !{!1668, !1674}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1666, file: !1597, line: 255, baseType: !1669, size: 256)
!1669 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1597, line: 128, size: 256, elements: !1670)
!1670 = !{!1671, !1672}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1669, file: !1597, line: 129, baseType: !161, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1669, file: !1597, line: 130, baseType: !1673, size: 256)
!1673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 256, elements: !1168)
!1674 = !DIDerivedType(tag: DW_TAG_member, scope: !1666, file: !1597, line: 256, baseType: !1675, size: 256)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1666, file: !1597, line: 256, size: 256, elements: !1676)
!1676 = !{!1677, !1678}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1675, file: !1597, line: 258, baseType: !237, size: 128)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1675, file: !1597, line: 259, baseType: !1679, size: 128, offset: 128)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1680, line: 22, size: 128, elements: !1681)
!1680 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1681 = !{!1682, !1685}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1679, file: !1680, line: 23, baseType: !1683, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1680, line: 23, flags: DIFlagFwdDecl)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1679, file: !1680, line: 24, baseType: !340, size: 64, offset: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1596, file: !1597, line: 274, baseType: !1687, size: 64, offset: 1600)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1597, line: 170, size: 192, elements: !1689)
!1689 = !{!1690, !1699, !1700}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1688, file: !1597, line: 171, baseType: !1691, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1597, line: 165, baseType: !1692)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{!162, !1595, !1695, !1697, !1595}
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1648)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1669)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1688, file: !1597, line: 172, baseType: !1595, size: 64, offset: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1688, file: !1597, line: 173, baseType: !1647, size: 64, offset: 128)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1567, file: !1568, line: 138, baseType: !1595, size: 64, offset: 768)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1567, file: !1568, line: 139, baseType: !1595, size: 64, offset: 832)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1567, file: !1568, line: 140, baseType: !1595, size: 64, offset: 896)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1567, file: !1568, line: 145, baseType: !1705, size: 64, offset: 960)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1707, line: 13, size: 896, elements: !1708)
!1707 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1708 = !{!1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1706, file: !1707, line: 14, baseType: !1243, size: 32)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1706, file: !1707, line: 15, baseType: !761, size: 32, offset: 32)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1706, file: !1707, line: 16, baseType: !761, size: 32, offset: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1706, file: !1707, line: 21, baseType: !785, size: 64, offset: 128)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1706, file: !1707, line: 27, baseType: !340, size: 64, offset: 192)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1706, file: !1707, line: 28, baseType: !340, size: 64, offset: 256)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1706, file: !1707, line: 29, baseType: !785, size: 64, offset: 320)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1706, file: !1707, line: 32, baseType: !653, size: 128, offset: 384)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1706, file: !1707, line: 33, baseType: !449, size: 32, offset: 512)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1706, file: !1707, line: 37, baseType: !785, size: 64, offset: 576)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1706, file: !1707, line: 44, baseType: !1720, size: 256, offset: 640)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1721, line: 15, size: 256, elements: !1722)
!1721 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1722 = !{!1723, !1724, !1725, !1726, !1727, !1728, !1729}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1720, file: !1721, line: 16, baseType: !794)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1720, file: !1721, line: 18, baseType: !162, size: 32)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1720, file: !1721, line: 19, baseType: !162, size: 32, offset: 32)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1720, file: !1721, line: 20, baseType: !162, size: 32, offset: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1720, file: !1721, line: 21, baseType: !162, size: 32, offset: 96)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1720, file: !1721, line: 22, baseType: !340, size: 64, offset: 128)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1720, file: !1721, line: 23, baseType: !340, size: 64, offset: 192)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1567, file: !1568, line: 146, baseType: !1731, size: 64, offset: 1024)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !450, line: 18, flags: DIFlagFwdDecl)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1567, file: !1568, line: 147, baseType: !1734, size: 64, offset: 1088)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1568, line: 25, size: 64, elements: !1736)
!1736 = !{!1737, !1738, !1739}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1735, file: !1568, line: 26, baseType: !761, size: 32)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1735, file: !1568, line: 27, baseType: !162, size: 32, offset: 32)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1735, file: !1568, line: 28, baseType: !1740, offset: 64)
!1740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !457, elements: !1741)
!1741 = !{!1742}
!1742 = !DISubrange(count: 0)
!1743 = !DIDerivedType(tag: DW_TAG_member, scope: !1567, file: !1568, line: 149, baseType: !1744, size: 128, offset: 1152)
!1744 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1567, file: !1568, line: 149, size: 128, elements: !1745)
!1745 = !{!1746, !1747}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1744, file: !1568, line: 150, baseType: !162, size: 32)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1744, file: !1568, line: 151, baseType: !381, size: 128, align: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1230, file: !1231, line: 926, baseType: !1565, size: 64, offset: 8576)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1230, file: !1231, line: 929, baseType: !1565, size: 64, offset: 8640)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1230, file: !1231, line: 933, baseType: !1595, size: 64, offset: 8704)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1230, file: !1231, line: 943, baseType: !1752, size: 128, offset: 8768)
!1752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 128, elements: !1753)
!1753 = !{!1754}
!1754 = !DISubrange(count: 16)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1230, file: !1231, line: 945, baseType: !1756, size: 64, offset: 8896)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1231, line: 49, flags: DIFlagFwdDecl)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1230, file: !1231, line: 956, baseType: !1759, size: 64, offset: 8960)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1231, line: 45, flags: DIFlagFwdDecl)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1230, file: !1231, line: 959, baseType: !1762, size: 64, offset: 9024)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1231, line: 959, flags: DIFlagFwdDecl)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1230, file: !1231, line: 962, baseType: !1765, size: 64, offset: 9088)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1231, line: 66, flags: DIFlagFwdDecl)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1230, file: !1231, line: 966, baseType: !1768, size: 64, offset: 9152)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1770, line: 35, flags: DIFlagFwdDecl)
!1770 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1230, file: !1231, line: 969, baseType: !1772, size: 64, offset: 9216)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1774, line: 82, size: 7296, elements: !1775)
!1774 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1775 = !{!1776, !1777, !1778, !1779, !1780, !1781, !1782, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1811, !1820, !1821, !1823, !1824, !1825, !1828, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1858, !1859, !1866, !1867, !1868, !1869, !1870, !1871}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1773, file: !1774, line: 83, baseType: !1243, size: 32)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1773, file: !1774, line: 84, baseType: !761, size: 32, offset: 32)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1773, file: !1774, line: 85, baseType: !162, size: 32, offset: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1773, file: !1774, line: 86, baseType: !237, size: 128, offset: 128)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1773, file: !1774, line: 88, baseType: !1499, size: 128, offset: 256)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1773, file: !1774, line: 91, baseType: !1229, size: 64, offset: 384)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1773, file: !1774, line: 94, baseType: !1783, size: 192, offset: 448)
!1783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1784, line: 30, size: 192, elements: !1785)
!1784 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1785 = !{!1786, !1787}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1783, file: !1784, line: 31, baseType: !237, size: 128)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1783, file: !1784, line: 32, baseType: !1788, size: 64, offset: 128)
!1788 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1789, line: 25, baseType: !1790)
!1789 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1789, line: 23, size: 64, elements: !1791)
!1791 = !{!1792}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1790, file: !1789, line: 24, baseType: !1383, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1773, file: !1774, line: 97, baseType: !649, size: 64, offset: 640)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1773, file: !1774, line: 100, baseType: !162, size: 32, offset: 704)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1773, file: !1774, line: 106, baseType: !162, size: 32, offset: 736)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1773, file: !1774, line: 107, baseType: !1229, size: 64, offset: 768)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1773, file: !1774, line: 110, baseType: !162, size: 32, offset: 832)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1773, file: !1774, line: 111, baseType: !7, size: 32, offset: 864)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1773, file: !1774, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1773, file: !1774, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1773, file: !1774, line: 128, baseType: !162, size: 32, offset: 928)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1773, file: !1774, line: 129, baseType: !237, size: 128, offset: 960)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1773, file: !1774, line: 132, baseType: !1305, size: 512, offset: 1088)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1773, file: !1774, line: 133, baseType: !1313, size: 64, offset: 1600)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1773, file: !1774, line: 140, baseType: !1806, size: 256, offset: 1664)
!1806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1807, size: 256, elements: !1587)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1774, line: 38, size: 128, elements: !1808)
!1808 = !{!1809, !1810}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1807, file: !1774, line: 39, baseType: !436, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1807, file: !1774, line: 40, baseType: !436, size: 64, offset: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1773, file: !1774, line: 146, baseType: !1812, size: 192, offset: 1920)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1774, line: 66, size: 192, elements: !1813)
!1813 = !{!1814}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1812, file: !1774, line: 67, baseType: !1815, size: 192)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1774, line: 47, size: 192, elements: !1816)
!1816 = !{!1817, !1818, !1819}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1815, file: !1774, line: 48, baseType: !787, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1815, file: !1774, line: 49, baseType: !787, size: 64, offset: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1815, file: !1774, line: 50, baseType: !787, size: 64, offset: 128)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1773, file: !1774, line: 150, baseType: !1548, size: 640, offset: 2112)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1773, file: !1774, line: 153, baseType: !1822, size: 256, offset: 2752)
!1822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1489, size: 256, elements: !1168)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1773, file: !1774, line: 159, baseType: !1489, size: 64, offset: 3008)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1773, file: !1774, line: 162, baseType: !162, size: 32, offset: 3072)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1773, file: !1774, line: 164, baseType: !1826, size: 64, offset: 3136)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1774, line: 164, flags: DIFlagFwdDecl)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1773, file: !1774, line: 175, baseType: !1829, size: 32, offset: 3200)
!1829 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !404, line: 805, baseType: !1830)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !404, line: 798, size: 32, elements: !1831)
!1831 = !{!1832, !1833}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1830, file: !404, line: 803, baseType: !403, size: 32)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1830, file: !404, line: 804, baseType: !250, offset: 32)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1773, file: !1774, line: 176, baseType: !436, size: 64, offset: 3264)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1773, file: !1774, line: 176, baseType: !436, size: 64, offset: 3328)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1773, file: !1774, line: 176, baseType: !436, size: 64, offset: 3392)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1773, file: !1774, line: 176, baseType: !436, size: 64, offset: 3456)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1773, file: !1774, line: 177, baseType: !436, size: 64, offset: 3520)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1773, file: !1774, line: 178, baseType: !436, size: 64, offset: 3584)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1773, file: !1774, line: 179, baseType: !1536, size: 128, offset: 3648)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1773, file: !1774, line: 180, baseType: !340, size: 64, offset: 3776)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1773, file: !1774, line: 180, baseType: !340, size: 64, offset: 3840)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1773, file: !1774, line: 180, baseType: !340, size: 64, offset: 3904)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1773, file: !1774, line: 180, baseType: !340, size: 64, offset: 3968)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1773, file: !1774, line: 181, baseType: !340, size: 64, offset: 4032)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1773, file: !1774, line: 181, baseType: !340, size: 64, offset: 4096)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1773, file: !1774, line: 181, baseType: !340, size: 64, offset: 4160)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1773, file: !1774, line: 181, baseType: !340, size: 64, offset: 4224)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1773, file: !1774, line: 182, baseType: !340, size: 64, offset: 4288)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1773, file: !1774, line: 182, baseType: !340, size: 64, offset: 4352)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1773, file: !1774, line: 182, baseType: !340, size: 64, offset: 4416)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1773, file: !1774, line: 182, baseType: !340, size: 64, offset: 4480)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1773, file: !1774, line: 183, baseType: !340, size: 64, offset: 4544)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1773, file: !1774, line: 183, baseType: !340, size: 64, offset: 4608)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1773, file: !1774, line: 184, baseType: !1856, offset: 4672)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1857, line: 12, elements: !264)
!1857 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1773, file: !1774, line: 192, baseType: !438, size: 64, offset: 4672)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1773, file: !1774, line: 203, baseType: !1860, size: 2048, offset: 4736)
!1860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1861, size: 2048, elements: !1753)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1862, line: 43, size: 128, elements: !1863)
!1862 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1863 = !{!1864, !1865}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1861, file: !1862, line: 44, baseType: !339, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1861, file: !1862, line: 45, baseType: !339, size: 64, offset: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1773, file: !1774, line: 220, baseType: !504, size: 8, offset: 6784)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1773, file: !1774, line: 221, baseType: !1218, size: 16, offset: 6800)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1773, file: !1774, line: 222, baseType: !1218, size: 16, offset: 6816)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1773, file: !1774, line: 224, baseType: !987, size: 64, offset: 6848)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1773, file: !1774, line: 227, baseType: !1186, size: 192, offset: 6912)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1773, file: !1774, line: 233, baseType: !1186, size: 192, offset: 7104)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1230, file: !1231, line: 970, baseType: !1873, size: 64, offset: 9280)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1774, line: 20, size: 16576, elements: !1875)
!1875 = !{!1876, !1877, !1878, !1879}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1874, file: !1774, line: 21, baseType: !250)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1874, file: !1774, line: 22, baseType: !1243, size: 32)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1874, file: !1774, line: 23, baseType: !1499, size: 128, offset: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1874, file: !1774, line: 24, baseType: !1880, size: 16384, offset: 192)
!1880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1881, size: 16384, elements: !296)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1784, line: 49, size: 256, elements: !1882)
!1882 = !{!1883}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1881, file: !1784, line: 50, baseType: !1884, size: 256)
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1784, line: 35, size: 256, elements: !1885)
!1885 = !{!1886, !1893, !1894, !1898}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1884, file: !1784, line: 37, baseType: !1887, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1888, line: 19, baseType: !1889)
!1888 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1888, line: 18, baseType: !1891)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{null, !162}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1884, file: !1784, line: 38, baseType: !340, size: 64, offset: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1884, file: !1784, line: 44, baseType: !1895, size: 64, offset: 128)
!1895 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1888, line: 22, baseType: !1896)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1888, line: 21, baseType: !177)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1884, file: !1784, line: 46, baseType: !1788, size: 64, offset: 192)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1230, file: !1231, line: 971, baseType: !1788, size: 64, offset: 9344)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1230, file: !1231, line: 972, baseType: !1788, size: 64, offset: 9408)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1230, file: !1231, line: 974, baseType: !1788, size: 64, offset: 9472)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1230, file: !1231, line: 975, baseType: !1783, size: 192, offset: 9536)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1230, file: !1231, line: 976, baseType: !340, size: 64, offset: 9728)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1230, file: !1231, line: 977, baseType: !337, size: 64, offset: 9792)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1230, file: !1231, line: 978, baseType: !7, size: 32, offset: 9856)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1230, file: !1231, line: 980, baseType: !384, size: 64, offset: 9920)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1230, file: !1231, line: 989, baseType: !1908, size: 128, offset: 9984)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1909, line: 35, size: 128, elements: !1910)
!1909 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1910 = !{!1911, !1912, !1913}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1908, file: !1909, line: 36, baseType: !162, size: 32)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1908, file: !1909, line: 37, baseType: !761, size: 32, offset: 32)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1908, file: !1909, line: 38, baseType: !1914, size: 64, offset: 64)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1909, line: 23, flags: DIFlagFwdDecl)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1230, file: !1231, line: 992, baseType: !436, size: 64, offset: 10112)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1230, file: !1231, line: 993, baseType: !436, size: 64, offset: 10176)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1230, file: !1231, line: 996, baseType: !250, offset: 10240)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1230, file: !1231, line: 999, baseType: !794, offset: 10240)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1230, file: !1231, line: 1001, baseType: !1921, size: 64, offset: 10240)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1231, line: 636, size: 64, elements: !1922)
!1922 = !{!1923}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1921, file: !1231, line: 637, baseType: !1924, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1230, file: !1231, line: 1005, baseType: !766, size: 128, offset: 10304)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1230, file: !1231, line: 1007, baseType: !1229, size: 64, offset: 10432)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1230, file: !1231, line: 1009, baseType: !1928, size: 64, offset: 10496)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1231, line: 1009, flags: DIFlagFwdDecl)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1230, file: !1231, line: 1043, baseType: !161, size: 64, offset: 10560)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1230, file: !1231, line: 1046, baseType: !1932, size: 64, offset: 10624)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1231, line: 41, flags: DIFlagFwdDecl)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1230, file: !1231, line: 1050, baseType: !1935, size: 64, offset: 10688)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1231, line: 42, flags: DIFlagFwdDecl)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1230, file: !1231, line: 1054, baseType: !1938, size: 64, offset: 10752)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1231, line: 55, flags: DIFlagFwdDecl)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1230, file: !1231, line: 1056, baseType: !1941, size: 64, offset: 10816)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1231, line: 40, flags: DIFlagFwdDecl)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1230, file: !1231, line: 1058, baseType: !1944, size: 64, offset: 10880)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1946, line: 99, size: 704, elements: !1947)
!1946 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1947 = !{!1948, !1949, !1950, !1951, !1952, !1953, !1954, !1973, !1974}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1945, file: !1946, line: 100, baseType: !785, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1945, file: !1946, line: 101, baseType: !761, size: 32, offset: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1945, file: !1946, line: 102, baseType: !761, size: 32, offset: 96)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1945, file: !1946, line: 105, baseType: !250, offset: 128)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1945, file: !1946, line: 107, baseType: !165, size: 16, offset: 128)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1945, file: !1946, line: 109, baseType: !753, size: 128, offset: 192)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1945, file: !1946, line: 110, baseType: !1955, size: 64, offset: 320)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1946, line: 73, size: 448, elements: !1957)
!1957 = !{!1958, !1961, !1962, !1967, !1972}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1956, file: !1946, line: 74, baseType: !1959, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1946, line: 74, flags: DIFlagFwdDecl)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1956, file: !1946, line: 75, baseType: !1944, size: 64, offset: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, scope: !1956, file: !1946, line: 83, baseType: !1963, size: 128, offset: 128)
!1963 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1956, file: !1946, line: 83, size: 128, elements: !1964)
!1964 = !{!1965, !1966}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1963, file: !1946, line: 84, baseType: !237, size: 128)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1963, file: !1946, line: 85, baseType: !948, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, scope: !1956, file: !1946, line: 87, baseType: !1968, size: 128, offset: 256)
!1968 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1956, file: !1946, line: 87, size: 128, elements: !1969)
!1969 = !{!1970, !1971}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1968, file: !1946, line: 88, baseType: !653, size: 128)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1968, file: !1946, line: 89, baseType: !381, size: 128, align: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1956, file: !1946, line: 92, baseType: !7, size: 32, offset: 384)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1945, file: !1946, line: 111, baseType: !649, size: 64, offset: 384)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1945, file: !1946, line: 113, baseType: !1975, size: 256, offset: 448)
!1975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1976, line: 102, size: 256, elements: !1977)
!1976 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1977 = !{!1978, !1979, !1980}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1975, file: !1976, line: 103, baseType: !785, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1975, file: !1976, line: 104, baseType: !237, size: 128, offset: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1975, file: !1976, line: 105, baseType: !1981, size: 64, offset: 192)
!1981 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1976, line: 21, baseType: !1982)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{null, !1985}
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1230, file: !1231, line: 1061, baseType: !1987, size: 64, offset: 10944)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1231, line: 43, flags: DIFlagFwdDecl)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1230, file: !1231, line: 1064, baseType: !340, size: 64, offset: 11008)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1230, file: !1231, line: 1065, baseType: !1991, size: 64, offset: 11072)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1784, line: 14, baseType: !1993)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1784, line: 12, size: 384, elements: !1994)
!1994 = !{!1995}
!1995 = !DIDerivedType(tag: DW_TAG_member, scope: !1993, file: !1784, line: 13, baseType: !1996, size: 384)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1993, file: !1784, line: 13, size: 384, elements: !1997)
!1997 = !{!1998, !1999, !2000, !2001}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1996, file: !1784, line: 13, baseType: !162, size: 32)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1996, file: !1784, line: 13, baseType: !162, size: 32, offset: 32)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1996, file: !1784, line: 13, baseType: !162, size: 32, offset: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1996, file: !1784, line: 13, baseType: !2002, size: 256, offset: 128)
!2002 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2003, line: 32, size: 256, elements: !2004)
!2003 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2004 = !{!2005, !2010, !2023, !2029, !2038, !2058, !2063}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2002, file: !2003, line: 37, baseType: !2006, size: 64)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2002, file: !2003, line: 34, size: 64, elements: !2007)
!2007 = !{!2008, !2009}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2006, file: !2003, line: 35, baseType: !1478, size: 32)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2006, file: !2003, line: 36, baseType: !455, size: 32, offset: 32)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2002, file: !2003, line: 45, baseType: !2011, size: 192)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2002, file: !2003, line: 40, size: 192, elements: !2012)
!2012 = !{!2013, !2015, !2016, !2022}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2011, file: !2003, line: 41, baseType: !2014, size: 32)
!2014 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !324, line: 95, baseType: !162)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2011, file: !2003, line: 42, baseType: !162, size: 32, offset: 32)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2011, file: !2003, line: 43, baseType: !2017, size: 64, offset: 64)
!2017 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2003, line: 11, baseType: !2018)
!2018 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2003, line: 8, size: 64, elements: !2019)
!2019 = !{!2020, !2021}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2018, file: !2003, line: 9, baseType: !162, size: 32)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2018, file: !2003, line: 10, baseType: !161, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2011, file: !2003, line: 44, baseType: !162, size: 32, offset: 128)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2002, file: !2003, line: 52, baseType: !2024, size: 128)
!2024 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2002, file: !2003, line: 48, size: 128, elements: !2025)
!2025 = !{!2026, !2027, !2028}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2024, file: !2003, line: 49, baseType: !1478, size: 32)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2024, file: !2003, line: 50, baseType: !455, size: 32, offset: 32)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2024, file: !2003, line: 51, baseType: !2017, size: 64, offset: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2002, file: !2003, line: 61, baseType: !2030, size: 256)
!2030 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2002, file: !2003, line: 55, size: 256, elements: !2031)
!2031 = !{!2032, !2033, !2034, !2035, !2037}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2030, file: !2003, line: 56, baseType: !1478, size: 32)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2030, file: !2003, line: 57, baseType: !455, size: 32, offset: 32)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2030, file: !2003, line: 58, baseType: !162, size: 32, offset: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2030, file: !2003, line: 59, baseType: !2036, size: 64, offset: 128)
!2036 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !324, line: 94, baseType: !325)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2030, file: !2003, line: 60, baseType: !2036, size: 64, offset: 192)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2002, file: !2003, line: 95, baseType: !2039, size: 256)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2002, file: !2003, line: 64, size: 256, elements: !2040)
!2040 = !{!2041, !2042}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2039, file: !2003, line: 65, baseType: !161, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, scope: !2039, file: !2003, line: 77, baseType: !2043, size: 192, offset: 64)
!2043 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2039, file: !2003, line: 77, size: 192, elements: !2044)
!2044 = !{!2045, !2046, !2053}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2043, file: !2003, line: 82, baseType: !1218, size: 16)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2043, file: !2003, line: 88, baseType: !2047, size: 192)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2043, file: !2003, line: 84, size: 192, elements: !2048)
!2048 = !{!2049, !2051, !2052}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2047, file: !2003, line: 85, baseType: !2050, size: 64)
!2050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 64, elements: !1343)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2047, file: !2003, line: 86, baseType: !161, size: 64, offset: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2047, file: !2003, line: 87, baseType: !161, size: 64, offset: 128)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2043, file: !2003, line: 93, baseType: !2054, size: 96)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2043, file: !2003, line: 90, size: 96, elements: !2055)
!2055 = !{!2056, !2057}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2054, file: !2003, line: 91, baseType: !2050, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2054, file: !2003, line: 92, baseType: !433, size: 32, offset: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2002, file: !2003, line: 101, baseType: !2059, size: 128)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2002, file: !2003, line: 98, size: 128, elements: !2060)
!2060 = !{!2061, !2062}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2059, file: !2003, line: 99, baseType: !326, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2059, file: !2003, line: 100, baseType: !162, size: 32, offset: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2002, file: !2003, line: 108, baseType: !2064, size: 128)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2002, file: !2003, line: 104, size: 128, elements: !2065)
!2065 = !{!2066, !2067, !2068}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2064, file: !2003, line: 105, baseType: !161, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2064, file: !2003, line: 106, baseType: !162, size: 32, offset: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2064, file: !2003, line: 107, baseType: !7, size: 32, offset: 96)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1230, file: !1231, line: 1067, baseType: !1856, offset: 11136)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1230, file: !1231, line: 1099, baseType: !2071, size: 64, offset: 11136)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1231, line: 56, flags: DIFlagFwdDecl)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1230, file: !1231, line: 1103, baseType: !237, size: 128, offset: 11200)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1230, file: !1231, line: 1104, baseType: !2075, size: 64, offset: 11328)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1231, line: 46, flags: DIFlagFwdDecl)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1230, file: !1231, line: 1105, baseType: !1186, size: 192, offset: 11392)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1230, file: !1231, line: 1106, baseType: !7, size: 32, offset: 11584)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1230, file: !1231, line: 1109, baseType: !2080, size: 128, offset: 11648)
!2080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2081, size: 128, elements: !1587)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1231, line: 51, flags: DIFlagFwdDecl)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1230, file: !1231, line: 1110, baseType: !1186, size: 192, offset: 11776)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1230, file: !1231, line: 1111, baseType: !237, size: 128, offset: 11968)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1230, file: !1231, line: 1173, baseType: !2086, size: 64, offset: 12096)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2088, line: 62, size: 256, align: 256, elements: !2089)
!2088 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2089 = !{!2090, !2091, !2092, !2097}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2087, file: !2088, line: 75, baseType: !433, size: 32)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2087, file: !2088, line: 90, baseType: !433, size: 32, offset: 32)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2087, file: !2088, line: 124, baseType: !2093, size: 64, offset: 64)
!2093 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2087, file: !2088, line: 109, size: 64, elements: !2094)
!2094 = !{!2095, !2096}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2093, file: !2088, line: 110, baseType: !437, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2093, file: !2088, line: 112, baseType: !437, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2087, file: !2088, line: 144, baseType: !433, size: 32, offset: 128)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1230, file: !1231, line: 1174, baseType: !431, size: 32, offset: 12160)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1230, file: !1231, line: 1179, baseType: !340, size: 64, offset: 12224)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1230, file: !1231, line: 1182, baseType: !2101, size: 128, offset: 12288)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1164, line: 76, size: 128, elements: !2102)
!2102 = !{!2103, !2108, !2109}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2101, file: !1164, line: 85, baseType: !2104, size: 64)
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2105, line: 7, size: 64, elements: !2106)
!2105 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2106 = !{!2107}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2104, file: !2105, line: 12, baseType: !1380, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2101, file: !1164, line: 88, baseType: !504, size: 8, offset: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2101, file: !1164, line: 95, baseType: !504, size: 8, offset: 72)
!2110 = !DIDerivedType(tag: DW_TAG_member, scope: !1230, file: !1231, line: 1184, baseType: !2111, size: 128, offset: 12416)
!2111 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1230, file: !1231, line: 1184, size: 128, elements: !2112)
!2112 = !{!2113, !2114}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2111, file: !1231, line: 1185, baseType: !1243, size: 32)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2111, file: !1231, line: 1186, baseType: !381, size: 128, align: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1230, file: !1231, line: 1190, baseType: !2116, size: 64, offset: 12544)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1231, line: 53, flags: DIFlagFwdDecl)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1230, file: !1231, line: 1192, baseType: !2119, size: 128, offset: 12608)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1164, line: 64, size: 128, elements: !2120)
!2120 = !{!2121, !2122, !2123}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2119, file: !1164, line: 65, baseType: !735, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2119, file: !1164, line: 67, baseType: !433, size: 32, offset: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2119, file: !1164, line: 68, baseType: !433, size: 32, offset: 96)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1230, file: !1231, line: 1206, baseType: !162, size: 32, offset: 12736)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1230, file: !1231, line: 1207, baseType: !162, size: 32, offset: 12768)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1230, file: !1231, line: 1209, baseType: !340, size: 64, offset: 12800)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1230, file: !1231, line: 1219, baseType: !436, size: 64, offset: 12864)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1230, file: !1231, line: 1220, baseType: !436, size: 64, offset: 12928)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1230, file: !1231, line: 1317, baseType: !162, size: 32, offset: 12992)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1230, file: !1231, line: 1319, baseType: !1229, size: 64, offset: 13056)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1230, file: !1231, line: 1322, baseType: !2132, size: 64, offset: 13120)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2134, line: 56, size: 512, elements: !2135)
!2134 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2135 = !{!2136, !2137, !2138, !2139, !2140, !2141, !2142, !2144}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2133, file: !2134, line: 57, baseType: !2132, size: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2133, file: !2134, line: 58, baseType: !161, size: 64, offset: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2133, file: !2134, line: 59, baseType: !340, size: 64, offset: 128)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2133, file: !2134, line: 60, baseType: !340, size: 64, offset: 192)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2133, file: !2134, line: 61, baseType: !834, size: 64, offset: 256)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2133, file: !2134, line: 62, baseType: !7, size: 32, offset: 320)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2133, file: !2134, line: 63, baseType: !2143, size: 64, offset: 384)
!2143 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !169, line: 153, baseType: !436)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2133, file: !2134, line: 64, baseType: !2145, size: 64, offset: 448)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1230, file: !1231, line: 1326, baseType: !1243, size: 32, offset: 13184)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1230, file: !1231, line: 1342, baseType: !161, size: 64, offset: 13248)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1230, file: !1231, line: 1343, baseType: !437, size: 64, offset: 13312)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1230, file: !1231, line: 1344, baseType: !436, size: 64, offset: 13376)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1230, file: !1231, line: 1345, baseType: !437, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1230, file: !1231, line: 1346, baseType: !437, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1230, file: !1231, line: 1347, baseType: !437, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1230, file: !1231, line: 1348, baseType: !381, size: 128, align: 64, offset: 13504)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1230, file: !1231, line: 1358, baseType: !2156, size: 34816, offset: 13824)
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2157, line: 485, size: 34816, elements: !2158)
!2157 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2158 = !{!2159, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2188, !2189, !2190, !2191, !2192, !2193, !2196, !2197, !2198}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2156, file: !2157, line: 487, baseType: !2160, size: 192)
!2160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2161, size: 192, elements: !292)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2162, line: 16, size: 64, elements: !2163)
!2162 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2163 = !{!2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2161, file: !2162, line: 17, baseType: !873, size: 16)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2161, file: !2162, line: 18, baseType: !873, size: 16, offset: 16)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2161, file: !2162, line: 19, baseType: !873, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2161, file: !2162, line: 19, baseType: !873, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2161, file: !2162, line: 19, baseType: !873, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2161, file: !2162, line: 19, baseType: !873, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2161, file: !2162, line: 19, baseType: !873, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2161, file: !2162, line: 20, baseType: !873, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2161, file: !2162, line: 20, baseType: !873, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2161, file: !2162, line: 20, baseType: !873, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2161, file: !2162, line: 20, baseType: !873, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2161, file: !2162, line: 20, baseType: !873, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2161, file: !2162, line: 20, baseType: !873, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2156, file: !2157, line: 491, baseType: !340, size: 64, offset: 192)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2156, file: !2157, line: 495, baseType: !165, size: 16, offset: 256)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2156, file: !2157, line: 496, baseType: !165, size: 16, offset: 272)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2156, file: !2157, line: 497, baseType: !165, size: 16, offset: 288)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2156, file: !2157, line: 498, baseType: !165, size: 16, offset: 304)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2156, file: !2157, line: 502, baseType: !340, size: 64, offset: 320)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2156, file: !2157, line: 503, baseType: !340, size: 64, offset: 384)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2156, file: !2157, line: 514, baseType: !2185, size: 256, offset: 448)
!2185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2186, size: 256, elements: !1168)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2157, line: 483, flags: DIFlagFwdDecl)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2156, file: !2157, line: 516, baseType: !340, size: 64, offset: 704)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2156, file: !2157, line: 518, baseType: !340, size: 64, offset: 768)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2156, file: !2157, line: 520, baseType: !340, size: 64, offset: 832)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2156, file: !2157, line: 521, baseType: !340, size: 64, offset: 896)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2156, file: !2157, line: 522, baseType: !340, size: 64, offset: 960)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2156, file: !2157, line: 528, baseType: !2194, size: 64, offset: 1024)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2157, line: 10, flags: DIFlagFwdDecl)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2156, file: !2157, line: 535, baseType: !340, size: 64, offset: 1088)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2156, file: !2157, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2156, file: !2157, line: 540, baseType: !2199, size: 33280, offset: 1536)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2200, line: 317, size: 33280, elements: !2201)
!2200 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2201 = !{!2202, !2203, !2204}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2199, file: !2200, line: 330, baseType: !7, size: 32)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2199, file: !2200, line: 337, baseType: !340, size: 64, offset: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2199, file: !2200, line: 348, baseType: !2205, size: 32768, offset: 512)
!2205 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2200, line: 304, size: 32768, elements: !2206)
!2206 = !{!2207, !2220, !2259, !2309, !2322}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2205, file: !2200, line: 305, baseType: !2208, size: 896)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2200, line: 12, size: 896, elements: !2209)
!2209 = !{!2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2219}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2208, file: !2200, line: 13, baseType: !431, size: 32)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2208, file: !2200, line: 14, baseType: !431, size: 32, offset: 32)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2208, file: !2200, line: 15, baseType: !431, size: 32, offset: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2208, file: !2200, line: 16, baseType: !431, size: 32, offset: 96)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2208, file: !2200, line: 17, baseType: !431, size: 32, offset: 128)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2208, file: !2200, line: 18, baseType: !431, size: 32, offset: 160)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2208, file: !2200, line: 19, baseType: !431, size: 32, offset: 192)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2208, file: !2200, line: 22, baseType: !2218, size: 640, offset: 224)
!2218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 640, elements: !199)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2208, file: !2200, line: 25, baseType: !431, size: 32, offset: 864)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2205, file: !2200, line: 306, baseType: !2221, size: 4096, align: 128)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2200, line: 34, size: 4096, align: 128, elements: !2222)
!2222 = !{!2223, !2224, !2225, !2226, !2227, !2242, !2243, !2244, !2248, !2250, !2254}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2221, file: !2200, line: 35, baseType: !873, size: 16)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2221, file: !2200, line: 36, baseType: !873, size: 16, offset: 16)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2221, file: !2200, line: 37, baseType: !873, size: 16, offset: 32)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2221, file: !2200, line: 38, baseType: !873, size: 16, offset: 48)
!2227 = !DIDerivedType(tag: DW_TAG_member, scope: !2221, file: !2200, line: 39, baseType: !2228, size: 128, offset: 64)
!2228 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2221, file: !2200, line: 39, size: 128, elements: !2229)
!2229 = !{!2230, !2235}
!2230 = !DIDerivedType(tag: DW_TAG_member, scope: !2228, file: !2200, line: 40, baseType: !2231, size: 128)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2228, file: !2200, line: 40, size: 128, elements: !2232)
!2232 = !{!2233, !2234}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2231, file: !2200, line: 41, baseType: !436, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2231, file: !2200, line: 42, baseType: !436, size: 64, offset: 64)
!2235 = !DIDerivedType(tag: DW_TAG_member, scope: !2228, file: !2200, line: 44, baseType: !2236, size: 128)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2228, file: !2200, line: 44, size: 128, elements: !2237)
!2237 = !{!2238, !2239, !2240, !2241}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2236, file: !2200, line: 45, baseType: !431, size: 32)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2236, file: !2200, line: 46, baseType: !431, size: 32, offset: 32)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2236, file: !2200, line: 47, baseType: !431, size: 32, offset: 64)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2236, file: !2200, line: 48, baseType: !431, size: 32, offset: 96)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2221, file: !2200, line: 51, baseType: !431, size: 32, offset: 192)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2221, file: !2200, line: 52, baseType: !431, size: 32, offset: 224)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2221, file: !2200, line: 55, baseType: !2245, size: 1024, offset: 256)
!2245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 1024, elements: !2246)
!2246 = !{!2247}
!2247 = !DISubrange(count: 32)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2221, file: !2200, line: 58, baseType: !2249, size: 2048, offset: 1280)
!2249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 2048, elements: !296)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2221, file: !2200, line: 60, baseType: !2251, size: 384, offset: 3328)
!2251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 384, elements: !2252)
!2252 = !{!2253}
!2253 = !DISubrange(count: 12)
!2254 = !DIDerivedType(tag: DW_TAG_member, scope: !2221, file: !2200, line: 62, baseType: !2255, size: 384, offset: 3712)
!2255 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2221, file: !2200, line: 62, size: 384, elements: !2256)
!2256 = !{!2257, !2258}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2255, file: !2200, line: 63, baseType: !2251, size: 384)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2255, file: !2200, line: 64, baseType: !2251, size: 384)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2205, file: !2200, line: 307, baseType: !2260, size: 1088)
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2200, line: 79, size: 1088, elements: !2261)
!2261 = !{!2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2308}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2260, file: !2200, line: 80, baseType: !431, size: 32)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2260, file: !2200, line: 81, baseType: !431, size: 32, offset: 32)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2260, file: !2200, line: 82, baseType: !431, size: 32, offset: 64)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2260, file: !2200, line: 83, baseType: !431, size: 32, offset: 96)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2260, file: !2200, line: 84, baseType: !431, size: 32, offset: 128)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2260, file: !2200, line: 85, baseType: !431, size: 32, offset: 160)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2260, file: !2200, line: 86, baseType: !431, size: 32, offset: 192)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2260, file: !2200, line: 88, baseType: !2218, size: 640, offset: 224)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2260, file: !2200, line: 89, baseType: !1365, size: 8, offset: 864)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2260, file: !2200, line: 90, baseType: !1365, size: 8, offset: 872)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2260, file: !2200, line: 91, baseType: !1365, size: 8, offset: 880)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2260, file: !2200, line: 92, baseType: !1365, size: 8, offset: 888)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2260, file: !2200, line: 93, baseType: !1365, size: 8, offset: 896)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2260, file: !2200, line: 94, baseType: !1365, size: 8, offset: 904)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2260, file: !2200, line: 95, baseType: !2277, size: 64, offset: 960)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2279, line: 11, size: 128, elements: !2280)
!2279 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2280 = !{!2281, !2282}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2278, file: !2279, line: 12, baseType: !326, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2278, file: !2279, line: 13, baseType: !2283, size: 64, offset: 64)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2285, line: 56, size: 1344, elements: !2286)
!2285 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2286 = !{!2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2284, file: !2285, line: 61, baseType: !340, size: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2284, file: !2285, line: 62, baseType: !340, size: 64, offset: 64)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2284, file: !2285, line: 63, baseType: !340, size: 64, offset: 128)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2284, file: !2285, line: 64, baseType: !340, size: 64, offset: 192)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2284, file: !2285, line: 65, baseType: !340, size: 64, offset: 256)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2284, file: !2285, line: 66, baseType: !340, size: 64, offset: 320)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2284, file: !2285, line: 68, baseType: !340, size: 64, offset: 384)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2284, file: !2285, line: 69, baseType: !340, size: 64, offset: 448)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2284, file: !2285, line: 70, baseType: !340, size: 64, offset: 512)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2284, file: !2285, line: 71, baseType: !340, size: 64, offset: 576)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2284, file: !2285, line: 72, baseType: !340, size: 64, offset: 640)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2284, file: !2285, line: 73, baseType: !340, size: 64, offset: 704)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2284, file: !2285, line: 74, baseType: !340, size: 64, offset: 768)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2284, file: !2285, line: 75, baseType: !340, size: 64, offset: 832)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2284, file: !2285, line: 76, baseType: !340, size: 64, offset: 896)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2284, file: !2285, line: 81, baseType: !340, size: 64, offset: 960)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2284, file: !2285, line: 83, baseType: !340, size: 64, offset: 1024)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2284, file: !2285, line: 84, baseType: !340, size: 64, offset: 1088)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2284, file: !2285, line: 85, baseType: !340, size: 64, offset: 1152)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2284, file: !2285, line: 86, baseType: !340, size: 64, offset: 1216)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2284, file: !2285, line: 87, baseType: !340, size: 64, offset: 1280)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2260, file: !2200, line: 96, baseType: !431, size: 32, offset: 1024)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2205, file: !2200, line: 308, baseType: !2310, size: 4608, align: 512)
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2200, line: 289, size: 4608, align: 512, elements: !2311)
!2311 = !{!2312, !2313, !2320}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2310, file: !2200, line: 290, baseType: !2221, size: 4096, align: 128)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2310, file: !2200, line: 291, baseType: !2314, size: 512, offset: 4096)
!2314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2200, line: 268, size: 512, elements: !2315)
!2315 = !{!2316, !2317, !2318}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2314, file: !2200, line: 269, baseType: !436, size: 64)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2314, file: !2200, line: 270, baseType: !436, size: 64, offset: 64)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2314, file: !2200, line: 271, baseType: !2319, size: 384, offset: 128)
!2319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !436, size: 384, elements: !1643)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2310, file: !2200, line: 292, baseType: !2321, offset: 4608)
!2321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1365, elements: !1741)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2205, file: !2200, line: 309, baseType: !2323, size: 32768)
!2323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1365, size: 32768, elements: !2324)
!2324 = !{!2325}
!2325 = !DISubrange(count: 4096)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1226, file: !737, line: 378, baseType: !2327, size: 64, offset: 64)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1222, file: !737, line: 384, baseType: !1520, size: 192, offset: 192)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !991, file: !737, line: 500, baseType: !250, offset: 6656)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !991, file: !737, line: 501, baseType: !2331, size: 64, offset: 6656)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !737, line: 387, flags: DIFlagFwdDecl)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !991, file: !737, line: 516, baseType: !1731, size: 64, offset: 6720)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !991, file: !737, line: 519, baseType: !368, size: 64, offset: 6784)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !991, file: !737, line: 521, baseType: !2336, size: 64, offset: 6848)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !737, line: 521, flags: DIFlagFwdDecl)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !991, file: !737, line: 545, baseType: !761, size: 32, offset: 6912)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !991, file: !737, line: 548, baseType: !504, size: 8, offset: 6944)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !991, file: !737, line: 550, baseType: !2341, offset: 6952)
!2341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2342, line: 142, elements: !264)
!2342 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !991, file: !737, line: 554, baseType: !1975, size: 256, offset: 6976)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !991, file: !737, line: 557, baseType: !431, size: 32, offset: 7232)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !988, file: !737, line: 565, baseType: !2346, offset: 7296)
!2346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, elements: !2347)
!2347 = !{!2348}
!2348 = !DISubrange(count: -1)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !984, file: !737, line: 151, baseType: !761, size: 32)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !977, file: !737, line: 156, baseType: !250, offset: 256)
!2351 = !DIDerivedType(tag: DW_TAG_member, scope: !741, file: !737, line: 159, baseType: !2352, size: 128)
!2352 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !741, file: !737, line: 159, size: 128, elements: !2353)
!2353 = !{!2354, !2418}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2352, file: !737, line: 161, baseType: !2355, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2357)
!2357 = !{!2358, !2368, !2389, !2390, !2391, !2392, !2393, !2405, !2406, !2407}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2356, file: !31, line: 111, baseType: !2359, size: 384)
!2359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2360)
!2360 = !{!2361, !2363, !2364, !2365, !2366, !2367}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2359, file: !31, line: 20, baseType: !2362, size: 64)
!2362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2359, file: !31, line: 21, baseType: !2362, size: 64, offset: 64)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2359, file: !31, line: 22, baseType: !2362, size: 64, offset: 128)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2359, file: !31, line: 23, baseType: !340, size: 64, offset: 192)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2359, file: !31, line: 24, baseType: !340, size: 64, offset: 256)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2359, file: !31, line: 25, baseType: !340, size: 64, offset: 320)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2356, file: !31, line: 112, baseType: !2369, size: 64, offset: 384)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2371, line: 105, size: 128, elements: !2372)
!2371 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2372 = !{!2373, !2374}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2370, file: !2371, line: 110, baseType: !340, size: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2370, file: !2371, line: 118, baseType: !2375, size: 64, offset: 64)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2371, line: 95, size: 448, elements: !2377)
!2377 = !{!2378, !2379, !2384, !2385, !2386, !2387, !2388}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2376, file: !2371, line: 96, baseType: !785, size: 64)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2376, file: !2371, line: 97, baseType: !2380, size: 64, offset: 64)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2371, line: 60, baseType: !2382)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{null, !2369}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2376, file: !2371, line: 98, baseType: !2380, size: 64, offset: 128)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2376, file: !2371, line: 99, baseType: !504, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2376, file: !2371, line: 100, baseType: !504, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2376, file: !2371, line: 101, baseType: !381, size: 128, align: 64, offset: 256)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2376, file: !2371, line: 102, baseType: !2369, size: 64, offset: 384)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2356, file: !31, line: 113, baseType: !2370, size: 128, offset: 448)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2356, file: !31, line: 114, baseType: !1520, size: 192, offset: 576)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2356, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2356, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2356, file: !31, line: 117, baseType: !2394, size: 64, offset: 832)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2396)
!2396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2397)
!2397 = !{!2398, !2399, !2403, !2404}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2396, file: !31, line: 73, baseType: !854, size: 64)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2396, file: !31, line: 78, baseType: !2400, size: 64, offset: 64)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{null, !2355}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2396, file: !31, line: 83, baseType: !2400, size: 64, offset: 128)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2396, file: !31, line: 89, baseType: !1040, size: 64, offset: 192)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2356, file: !31, line: 118, baseType: !161, size: 64, offset: 896)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2356, file: !31, line: 119, baseType: !162, size: 32, offset: 960)
!2407 = !DIDerivedType(tag: DW_TAG_member, scope: !2356, file: !31, line: 120, baseType: !2408, size: 128, offset: 1024)
!2408 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2356, file: !31, line: 120, size: 128, elements: !2409)
!2409 = !{!2410, !2416}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2408, file: !31, line: 121, baseType: !2411, size: 128)
!2411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2412, line: 6, size: 128, elements: !2413)
!2412 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2413 = !{!2414, !2415}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2411, file: !2412, line: 7, baseType: !436, size: 64)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2411, file: !2412, line: 8, baseType: !436, size: 64, offset: 64)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2408, file: !31, line: 122, baseType: !2417)
!2417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2411, elements: !1741)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2352, file: !737, line: 162, baseType: !161, size: 64, offset: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !741, file: !737, line: 176, baseType: !381, size: 128, align: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, scope: !736, file: !737, line: 179, baseType: !2421, size: 32, offset: 384)
!2421 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !736, file: !737, line: 179, size: 32, elements: !2422)
!2422 = !{!2423, !2424, !2425, !2426}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2421, file: !737, line: 184, baseType: !761, size: 32)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2421, file: !737, line: 192, baseType: !7, size: 32)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2421, file: !737, line: 194, baseType: !7, size: 32)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2421, file: !737, line: 195, baseType: !162, size: 32)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !736, file: !737, line: 199, baseType: !761, size: 32, offset: 416)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !671, file: !44, line: 1964, baseType: !2429, size: 64, offset: 1344)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = !DISubroutineType(types: !2431)
!2431 = !{!326, !613, !2432}
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2434, line: 12, size: 256, elements: !2435)
!2434 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2435 = !{!2436, !2437, !2438, !2439, !2440}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2433, file: !2434, line: 13, baseType: !168, size: 32)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2433, file: !2434, line: 16, baseType: !162, size: 32, offset: 32)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2433, file: !2434, line: 23, baseType: !340, size: 64, offset: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2433, file: !2434, line: 30, baseType: !340, size: 64, offset: 128)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2433, file: !2434, line: 33, baseType: !2441, size: 64, offset: 192)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !737, line: 27, flags: DIFlagFwdDecl)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !671, file: !44, line: 1966, baseType: !2429, size: 64, offset: 1408)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !614, file: !44, line: 1424, baseType: !2445, size: 64, offset: 448)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2447)
!2447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2448)
!2448 = !{!2449, !2495, !2499, !2503, !2504, !2505, !2506, !2507, !2512, !2517, !2521}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2447, file: !38, line: 323, baseType: !2450, size: 64)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!162, !2453}
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2455)
!2455 = !{!2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2480, !2481, !2482}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2454, file: !38, line: 295, baseType: !653, size: 128)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2454, file: !38, line: 296, baseType: !237, size: 128, offset: 128)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2454, file: !38, line: 297, baseType: !237, size: 128, offset: 256)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2454, file: !38, line: 298, baseType: !237, size: 128, offset: 384)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2454, file: !38, line: 299, baseType: !1186, size: 192, offset: 512)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2454, file: !38, line: 300, baseType: !250, offset: 704)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2454, file: !38, line: 301, baseType: !761, size: 32, offset: 704)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2454, file: !38, line: 302, baseType: !613, size: 64, offset: 768)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2454, file: !38, line: 303, baseType: !2465, size: 64, offset: 832)
!2465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2466)
!2466 = !{!2467, !2479}
!2467 = !DIDerivedType(tag: DW_TAG_member, scope: !2465, file: !38, line: 69, baseType: !2468, size: 32)
!2468 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2465, file: !38, line: 69, size: 32, elements: !2469)
!2469 = !{!2470, !2471, !2472}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2468, file: !38, line: 70, baseType: !449, size: 32)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2468, file: !38, line: 71, baseType: !457, size: 32)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2468, file: !38, line: 72, baseType: !2473, size: 32)
!2473 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2474, line: 24, baseType: !2475)
!2474 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2475 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2474, line: 22, size: 32, elements: !2476)
!2476 = !{!2477}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2475, file: !2474, line: 23, baseType: !2478, size: 32)
!2478 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2474, line: 20, baseType: !455)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2465, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2454, file: !38, line: 304, baseType: !545, size: 64, offset: 896)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2454, file: !38, line: 305, baseType: !340, size: 64, offset: 960)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2454, file: !38, line: 306, baseType: !2483, size: 576, offset: 1024)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2484)
!2484 = !{!2485, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2483, file: !38, line: 206, baseType: !2486, size: 64)
!2486 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !547)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2483, file: !38, line: 207, baseType: !2486, size: 64, offset: 64)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2483, file: !38, line: 208, baseType: !2486, size: 64, offset: 128)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2483, file: !38, line: 209, baseType: !2486, size: 64, offset: 192)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2483, file: !38, line: 210, baseType: !2486, size: 64, offset: 256)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2483, file: !38, line: 211, baseType: !2486, size: 64, offset: 320)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2483, file: !38, line: 212, baseType: !2486, size: 64, offset: 384)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2483, file: !38, line: 213, baseType: !553, size: 64, offset: 448)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2483, file: !38, line: 214, baseType: !553, size: 64, offset: 512)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2447, file: !38, line: 324, baseType: !2496, size: 64, offset: 64)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!2453, !613, !162}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2447, file: !38, line: 325, baseType: !2500, size: 64, offset: 128)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{null, !2453}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2447, file: !38, line: 326, baseType: !2450, size: 64, offset: 192)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2447, file: !38, line: 327, baseType: !2450, size: 64, offset: 256)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2447, file: !38, line: 328, baseType: !2450, size: 64, offset: 320)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2447, file: !38, line: 329, baseType: !699, size: 64, offset: 384)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2447, file: !38, line: 332, baseType: !2508, size: 64, offset: 448)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{!2511, !443}
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2447, file: !38, line: 333, baseType: !2513, size: 64, offset: 512)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!162, !443, !2516}
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2447, file: !38, line: 335, baseType: !2518, size: 64, offset: 576)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{!162, !443, !2511}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2447, file: !38, line: 337, baseType: !2522, size: 64, offset: 640)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{!162, !613, !2525}
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !614, file: !44, line: 1425, baseType: !2527, size: 64, offset: 512)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2529)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2530)
!2530 = !{!2531, !2535, !2536, !2540, !2541, !2542, !2557, !2580, !2584, !2585, !2608}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2529, file: !38, line: 429, baseType: !2532, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{!162, !613, !162, !162, !563}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2529, file: !38, line: 430, baseType: !699, size: 64, offset: 64)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2529, file: !38, line: 431, baseType: !2537, size: 64, offset: 128)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!162, !613, !7}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2529, file: !38, line: 432, baseType: !2537, size: 64, offset: 192)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2529, file: !38, line: 433, baseType: !699, size: 64, offset: 256)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2529, file: !38, line: 434, baseType: !2543, size: 64, offset: 320)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{!162, !613, !162, !2546}
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2548)
!2548 = !{!2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2547, file: !38, line: 416, baseType: !162, size: 32)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2547, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2547, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2547, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2547, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2547, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2547, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2547, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2529, file: !38, line: 435, baseType: !2558, size: 64, offset: 384)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!162, !613, !2465, !2561}
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2563)
!2563 = !{!2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2562, file: !38, line: 344, baseType: !162, size: 32)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2562, file: !38, line: 345, baseType: !436, size: 64, offset: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2562, file: !38, line: 346, baseType: !436, size: 64, offset: 128)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2562, file: !38, line: 347, baseType: !436, size: 64, offset: 192)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2562, file: !38, line: 348, baseType: !436, size: 64, offset: 256)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2562, file: !38, line: 349, baseType: !436, size: 64, offset: 320)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2562, file: !38, line: 350, baseType: !436, size: 64, offset: 384)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2562, file: !38, line: 351, baseType: !791, size: 64, offset: 448)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2562, file: !38, line: 353, baseType: !791, size: 64, offset: 512)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2562, file: !38, line: 354, baseType: !162, size: 32, offset: 576)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2562, file: !38, line: 355, baseType: !162, size: 32, offset: 608)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2562, file: !38, line: 356, baseType: !436, size: 64, offset: 640)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2562, file: !38, line: 357, baseType: !436, size: 64, offset: 704)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2562, file: !38, line: 358, baseType: !436, size: 64, offset: 768)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2562, file: !38, line: 359, baseType: !791, size: 64, offset: 832)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2562, file: !38, line: 360, baseType: !162, size: 32, offset: 896)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2529, file: !38, line: 436, baseType: !2581, size: 64, offset: 448)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DISubroutineType(types: !2583)
!2583 = !{!162, !613, !2525, !2561}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2529, file: !38, line: 438, baseType: !2558, size: 64, offset: 512)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2529, file: !38, line: 439, baseType: !2586, size: 64, offset: 576)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!162, !613, !2589}
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2591)
!2591 = !{!2592, !2593}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2590, file: !38, line: 410, baseType: !7, size: 32)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2590, file: !38, line: 411, baseType: !2594, size: 1344, offset: 64)
!2594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2595, size: 1344, elements: !292)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2596)
!2596 = !{!2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2607}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2595, file: !38, line: 396, baseType: !7, size: 32)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2595, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2595, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2595, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2595, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2595, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2595, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2595, file: !38, line: 404, baseType: !438, size: 64, offset: 256)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2595, file: !38, line: 405, baseType: !2606, size: 64, offset: 320)
!2606 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !169, line: 126, baseType: !436)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2595, file: !38, line: 406, baseType: !2606, size: 64, offset: 384)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2529, file: !38, line: 440, baseType: !2537, size: 64, offset: 640)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !614, file: !44, line: 1426, baseType: !2610, size: 64, offset: 576)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2612)
!2612 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !614, file: !44, line: 1427, baseType: !340, size: 64, offset: 640)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !614, file: !44, line: 1428, baseType: !340, size: 64, offset: 704)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !614, file: !44, line: 1429, baseType: !340, size: 64, offset: 768)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !614, file: !44, line: 1430, baseType: !398, size: 64, offset: 832)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !614, file: !44, line: 1431, baseType: !781, size: 256, offset: 896)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !614, file: !44, line: 1432, baseType: !162, size: 32, offset: 1152)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !614, file: !44, line: 1433, baseType: !761, size: 32, offset: 1184)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !614, file: !44, line: 1437, baseType: !2621, size: 64, offset: 1216)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2624)
!2624 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !614, file: !44, line: 1449, baseType: !2626, size: 64, offset: 1280)
!2626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !414, line: 34, size: 64, elements: !2627)
!2627 = !{!2628}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2626, file: !414, line: 35, baseType: !417, size: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !614, file: !44, line: 1450, baseType: !237, size: 128, offset: 1344)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !614, file: !44, line: 1451, baseType: !2631, size: 64, offset: 1472)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !614, file: !44, line: 1452, baseType: !1941, size: 64, offset: 1536)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !614, file: !44, line: 1453, baseType: !2635, size: 64, offset: 1600)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !614, file: !44, line: 1454, baseType: !653, size: 128, offset: 1664)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !614, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !614, file: !44, line: 1456, baseType: !2640, size: 2432, offset: 1856)
!2640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2641)
!2641 = !{!2642, !2643, !2644, !2646, !2678}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2640, file: !38, line: 519, baseType: !7, size: 32)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2640, file: !38, line: 520, baseType: !781, size: 256, offset: 64)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2640, file: !38, line: 521, baseType: !2645, size: 192, offset: 320)
!2645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 192, elements: !292)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2640, file: !38, line: 522, baseType: !2647, size: 1728, offset: 512)
!2647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2648, size: 1728, elements: !292)
!2648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2649)
!2649 = !{!2650, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2648, file: !38, line: 223, baseType: !2651, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2653)
!2653 = !{!2654, !2655, !2668, !2669}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2652, file: !38, line: 444, baseType: !162, size: 32)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2652, file: !38, line: 445, baseType: !2656, size: 64, offset: 64)
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2658)
!2658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2659)
!2659 = !{!2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2658, file: !38, line: 311, baseType: !699, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2658, file: !38, line: 312, baseType: !699, size: 64, offset: 64)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2658, file: !38, line: 313, baseType: !699, size: 64, offset: 128)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2658, file: !38, line: 314, baseType: !699, size: 64, offset: 192)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2658, file: !38, line: 315, baseType: !2450, size: 64, offset: 256)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2658, file: !38, line: 316, baseType: !2450, size: 64, offset: 320)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2658, file: !38, line: 317, baseType: !2450, size: 64, offset: 384)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2658, file: !38, line: 318, baseType: !2522, size: 64, offset: 448)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2652, file: !38, line: 446, baseType: !211, size: 64, offset: 128)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2652, file: !38, line: 447, baseType: !2651, size: 64, offset: 192)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2648, file: !38, line: 224, baseType: !162, size: 32, offset: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2648, file: !38, line: 226, baseType: !237, size: 128, offset: 128)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2648, file: !38, line: 227, baseType: !340, size: 64, offset: 256)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2648, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2648, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2648, file: !38, line: 230, baseType: !2486, size: 64, offset: 384)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2648, file: !38, line: 231, baseType: !2486, size: 64, offset: 448)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2648, file: !38, line: 232, baseType: !161, size: 64, offset: 512)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2640, file: !38, line: 523, baseType: !2679, size: 192, offset: 2240)
!2679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2656, size: 192, elements: !292)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !614, file: !44, line: 1458, baseType: !2681, size: 2112, offset: 4288)
!2681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2682)
!2682 = !{!2683, !2684, !2685}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2681, file: !44, line: 1411, baseType: !162, size: 32)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2681, file: !44, line: 1412, baseType: !1499, size: 128, offset: 64)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2681, file: !44, line: 1413, baseType: !2686, size: 1920, offset: 192)
!2686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2687, size: 1920, elements: !292)
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2688, line: 12, size: 640, elements: !2689)
!2688 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2689 = !{!2690, !2698, !2700, !2705, !2706}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2687, file: !2688, line: 13, baseType: !2691, size: 320)
!2691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2692, line: 17, size: 320, elements: !2693)
!2692 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2693 = !{!2694, !2695, !2696, !2697}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2691, file: !2692, line: 18, baseType: !162, size: 32)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2691, file: !2692, line: 19, baseType: !162, size: 32, offset: 32)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2691, file: !2692, line: 20, baseType: !1499, size: 128, offset: 64)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2691, file: !2692, line: 22, baseType: !381, size: 128, align: 64, offset: 192)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2687, file: !2688, line: 14, baseType: !2699, size: 64, offset: 320)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2687, file: !2688, line: 15, baseType: !2701, size: 64, offset: 384)
!2701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2702, line: 16, size: 64, elements: !2703)
!2702 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2703 = !{!2704}
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2701, file: !2702, line: 17, baseType: !1229, size: 64)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2687, file: !2688, line: 16, baseType: !1499, size: 128, offset: 448)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2687, file: !2688, line: 17, baseType: !761, size: 32, offset: 576)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !614, file: !44, line: 1465, baseType: !161, size: 64, offset: 6400)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !614, file: !44, line: 1468, baseType: !431, size: 32, offset: 6464)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !614, file: !44, line: 1470, baseType: !553, size: 64, offset: 6528)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !614, file: !44, line: 1471, baseType: !553, size: 64, offset: 6592)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !614, file: !44, line: 1473, baseType: !433, size: 32, offset: 6656)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !614, file: !44, line: 1474, baseType: !2713, size: 64, offset: 6720)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !614, file: !44, line: 1477, baseType: !2716, size: 256, offset: 6784)
!2716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 256, elements: !2246)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !614, file: !44, line: 1478, baseType: !2718, size: 128, offset: 7040)
!2718 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2719, line: 18, baseType: !2720)
!2719 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2720 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2719, line: 16, size: 128, elements: !2721)
!2721 = !{!2722}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2720, file: !2719, line: 17, baseType: !2723, size: 128)
!2723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1366, size: 128, elements: !1753)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !614, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !614, file: !44, line: 1481, baseType: !2726, size: 32, offset: 7200)
!2726 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !169, line: 150, baseType: !7)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !614, file: !44, line: 1487, baseType: !1186, size: 192, offset: 7232)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !614, file: !44, line: 1493, baseType: !209, size: 64, offset: 7424)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !614, file: !44, line: 1495, baseType: !2730, size: 64, offset: 7488)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2732)
!2732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !396, line: 135, size: 1024, align: 512, elements: !2733)
!2733 = !{!2734, !2738, !2739, !2746, !2752, !2756, !2760, !2764, !2765, !2769, !2773, !2778, !2782}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2732, file: !396, line: 136, baseType: !2735, size: 64)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!162, !398, !7}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2732, file: !396, line: 137, baseType: !2735, size: 64, offset: 64)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2732, file: !396, line: 138, baseType: !2740, size: 64, offset: 128)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = !DISubroutineType(types: !2742)
!2742 = !{!162, !2743, !2745}
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !399)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2732, file: !396, line: 139, baseType: !2747, size: 64, offset: 192)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{!162, !2743, !7, !209, !2750}
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !422)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2732, file: !396, line: 141, baseType: !2753, size: 64, offset: 256)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{!162, !2743}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2732, file: !396, line: 142, baseType: !2757, size: 64, offset: 320)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{!162, !398}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2732, file: !396, line: 143, baseType: !2761, size: 64, offset: 384)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{null, !398}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2732, file: !396, line: 144, baseType: !2761, size: 64, offset: 448)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2732, file: !396, line: 145, baseType: !2766, size: 64, offset: 512)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{null, !398, !443}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2732, file: !396, line: 146, baseType: !2770, size: 64, offset: 576)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{!291, !398, !291, !162}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2732, file: !396, line: 147, baseType: !2774, size: 64, offset: 640)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{!394, !2777}
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2732, file: !396, line: 148, baseType: !2779, size: 64, offset: 704)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{!162, !563, !504}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2732, file: !396, line: 149, baseType: !2783, size: 64, offset: 768)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{!398, !398, !2786}
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !444)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !614, file: !44, line: 1500, baseType: !162, size: 32, offset: 7552)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !614, file: !44, line: 1502, baseType: !2790, size: 448, offset: 7616)
!2790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2434, line: 60, size: 448, elements: !2791)
!2791 = !{!2792, !2797, !2798, !2799, !2800, !2801, !2802}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2790, file: !2434, line: 61, baseType: !2793, size: 64)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{!340, !2796, !2432}
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2790, file: !2434, line: 63, baseType: !2793, size: 64, offset: 64)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2790, file: !2434, line: 66, baseType: !326, size: 64, offset: 128)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2790, file: !2434, line: 67, baseType: !162, size: 32, offset: 192)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2790, file: !2434, line: 68, baseType: !7, size: 32, offset: 224)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2790, file: !2434, line: 71, baseType: !237, size: 128, offset: 256)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2790, file: !2434, line: 77, baseType: !2803, size: 64, offset: 384)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !614, file: !44, line: 1505, baseType: !785, size: 64, offset: 8064)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !614, file: !44, line: 1508, baseType: !785, size: 64, offset: 8128)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !614, file: !44, line: 1511, baseType: !162, size: 32, offset: 8192)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !614, file: !44, line: 1514, baseType: !922, size: 32, offset: 8224)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !614, file: !44, line: 1517, baseType: !2809, size: 64, offset: 8256)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1976, line: 18, flags: DIFlagFwdDecl)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !614, file: !44, line: 1518, baseType: !649, size: 64, offset: 8320)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !614, file: !44, line: 1525, baseType: !1731, size: 64, offset: 8384)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !614, file: !44, line: 1532, baseType: !2814, size: 64, offset: 8448)
!2814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2815, line: 52, size: 64, elements: !2816)
!2815 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2816 = !{!2817}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2814, file: !2815, line: 53, baseType: !2818, size: 64)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2815, line: 40, size: 256, elements: !2820)
!2820 = !{!2821, !2822, !2827}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2819, file: !2815, line: 42, baseType: !250)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2819, file: !2815, line: 44, baseType: !2823, size: 192)
!2823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2815, line: 28, size: 192, elements: !2824)
!2824 = !{!2825, !2826}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2823, file: !2815, line: 29, baseType: !237, size: 128)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2823, file: !2815, line: 31, baseType: !326, size: 64, offset: 128)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2819, file: !2815, line: 49, baseType: !326, size: 64, offset: 192)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !614, file: !44, line: 1533, baseType: !2814, size: 64, offset: 8512)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !614, file: !44, line: 1534, baseType: !381, size: 128, align: 64, offset: 8576)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !614, file: !44, line: 1535, baseType: !1975, size: 256, offset: 8704)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !614, file: !44, line: 1537, baseType: !1186, size: 192, offset: 8960)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !614, file: !44, line: 1542, baseType: !162, size: 32, offset: 9152)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !614, file: !44, line: 1545, baseType: !250, offset: 9184)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !614, file: !44, line: 1546, baseType: !237, size: 128, offset: 9216)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !614, file: !44, line: 1548, baseType: !250, offset: 9344)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !614, file: !44, line: 1549, baseType: !237, size: 128, offset: 9344)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !444, file: !44, line: 624, baseType: !748, size: 64, offset: 256)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !444, file: !44, line: 631, baseType: !340, size: 64, offset: 320)
!2839 = !DIDerivedType(tag: DW_TAG_member, scope: !444, file: !44, line: 639, baseType: !2840, size: 32, offset: 384)
!2840 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !444, file: !44, line: 639, size: 32, elements: !2841)
!2841 = !{!2842, !2844}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2840, file: !44, line: 640, baseType: !2843, size: 32)
!2843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2840, file: !44, line: 641, baseType: !7, size: 32)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !444, file: !44, line: 643, baseType: !527, size: 32, offset: 416)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !444, file: !44, line: 644, baseType: !545, size: 64, offset: 448)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !444, file: !44, line: 645, baseType: !549, size: 128, offset: 512)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !444, file: !44, line: 646, baseType: !549, size: 128, offset: 640)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !444, file: !44, line: 647, baseType: !549, size: 128, offset: 768)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !444, file: !44, line: 648, baseType: !250, offset: 896)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !444, file: !44, line: 649, baseType: !165, size: 16, offset: 896)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !444, file: !44, line: 650, baseType: !1365, size: 8, offset: 912)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !444, file: !44, line: 651, baseType: !1365, size: 8, offset: 920)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !444, file: !44, line: 652, baseType: !2606, size: 64, offset: 960)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !444, file: !44, line: 659, baseType: !340, size: 64, offset: 1024)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !444, file: !44, line: 660, baseType: !781, size: 256, offset: 1088)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !444, file: !44, line: 662, baseType: !340, size: 64, offset: 1344)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !444, file: !44, line: 663, baseType: !340, size: 64, offset: 1408)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !444, file: !44, line: 665, baseType: !653, size: 128, offset: 1472)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !444, file: !44, line: 666, baseType: !237, size: 128, offset: 1600)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !444, file: !44, line: 675, baseType: !237, size: 128, offset: 1728)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !444, file: !44, line: 676, baseType: !237, size: 128, offset: 1856)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !444, file: !44, line: 677, baseType: !237, size: 128, offset: 1984)
!2864 = !DIDerivedType(tag: DW_TAG_member, scope: !444, file: !44, line: 678, baseType: !2865, size: 128, offset: 2112)
!2865 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !444, file: !44, line: 678, size: 128, elements: !2866)
!2866 = !{!2867, !2868}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2865, file: !44, line: 679, baseType: !649, size: 64)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2865, file: !44, line: 680, baseType: !381, size: 128, align: 64)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !444, file: !44, line: 682, baseType: !787, size: 64, offset: 2240)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !444, file: !44, line: 683, baseType: !787, size: 64, offset: 2304)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !444, file: !44, line: 684, baseType: !761, size: 32, offset: 2368)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !444, file: !44, line: 685, baseType: !761, size: 32, offset: 2400)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !444, file: !44, line: 686, baseType: !761, size: 32, offset: 2432)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !444, file: !44, line: 688, baseType: !761, size: 32, offset: 2464)
!2875 = !DIDerivedType(tag: DW_TAG_member, scope: !444, file: !44, line: 690, baseType: !2876, size: 64, offset: 2496)
!2876 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !444, file: !44, line: 690, size: 64, elements: !2877)
!2877 = !{!2878, !3109}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2876, file: !44, line: 691, baseType: !2879, size: 64)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2881)
!2881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2882)
!2882 = !{!2883, !2884, !2888, !2893, !2897, !2898, !2899, !2903, !2916, !2917, !2933, !2937, !2938, !2942, !2943, !2947, !2952, !2953, !2957, !2961, !3069, !3073, !3074, !3078, !3079, !3083, !3087, !3092, !3096, !3100, !3104, !3108}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2881, file: !44, line: 1823, baseType: !211, size: 64)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2881, file: !44, line: 1824, baseType: !2885, size: 64, offset: 64)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!545, !368, !545, !162}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2881, file: !44, line: 1825, baseType: !2889, size: 64, offset: 128)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!322, !368, !291, !337, !2892}
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2881, file: !44, line: 1826, baseType: !2894, size: 64, offset: 192)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!322, !368, !209, !337, !2892}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2881, file: !44, line: 1827, baseType: !858, size: 64, offset: 256)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2881, file: !44, line: 1828, baseType: !858, size: 64, offset: 320)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2881, file: !44, line: 1829, baseType: !2900, size: 64, offset: 384)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{!162, !861, !504}
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2881, file: !44, line: 1830, baseType: !2904, size: 64, offset: 448)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!162, !368, !2907}
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2909)
!2909 = !{!2910, !2915}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2908, file: !44, line: 1777, baseType: !2911, size: 64)
!2911 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2912)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!162, !2907, !209, !162, !545, !436, !7}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2908, file: !44, line: 1778, baseType: !545, size: 64, offset: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2881, file: !44, line: 1831, baseType: !2904, size: 64, offset: 512)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2881, file: !44, line: 1832, baseType: !2918, size: 64, offset: 576)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{!2921, !368, !2922}
!2921 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !167, line: 52, baseType: !7)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2924, line: 43, size: 128, elements: !2925)
!2924 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!2925 = !{!2926, !2932}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2923, file: !2924, line: 44, baseType: !2927, size: 64)
!2927 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2924, line: 37, baseType: !2928)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{null, !368, !2931, !2922}
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2923, file: !2924, line: 45, baseType: !2921, size: 32, offset: 64)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2881, file: !44, line: 1833, baseType: !2934, size: 64, offset: 640)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{!326, !368, !7, !340}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2881, file: !44, line: 1834, baseType: !2934, size: 64, offset: 704)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2881, file: !44, line: 1835, baseType: !2939, size: 64, offset: 768)
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!162, !368, !994}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2881, file: !44, line: 1836, baseType: !340, size: 64, offset: 832)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2881, file: !44, line: 1837, baseType: !2944, size: 64, offset: 896)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{!162, !443, !368}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2881, file: !44, line: 1838, baseType: !2948, size: 64, offset: 960)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{!162, !368, !2951}
!2951 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !161)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2881, file: !44, line: 1839, baseType: !2944, size: 64, offset: 1024)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2881, file: !44, line: 1840, baseType: !2954, size: 64, offset: 1088)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{!162, !368, !545, !545, !162}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2881, file: !44, line: 1841, baseType: !2958, size: 64, offset: 1152)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!162, !162, !368, !162}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2881, file: !44, line: 1842, baseType: !2962, size: 64, offset: 1216)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!162, !368, !162, !2965}
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2967)
!2967 = !{!2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2999, !3000, !3001, !3014, !3045}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2966, file: !44, line: 1063, baseType: !2965, size: 64)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2966, file: !44, line: 1064, baseType: !237, size: 128, offset: 64)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2966, file: !44, line: 1065, baseType: !653, size: 128, offset: 192)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2966, file: !44, line: 1066, baseType: !237, size: 128, offset: 320)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2966, file: !44, line: 1069, baseType: !237, size: 128, offset: 448)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2966, file: !44, line: 1072, baseType: !2951, size: 64, offset: 576)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2966, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2966, file: !44, line: 1074, baseType: !170, size: 8, offset: 672)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2966, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2966, file: !44, line: 1076, baseType: !162, size: 32, offset: 736)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2966, file: !44, line: 1077, baseType: !1499, size: 128, offset: 768)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2966, file: !44, line: 1078, baseType: !368, size: 64, offset: 896)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2966, file: !44, line: 1079, baseType: !545, size: 64, offset: 960)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2966, file: !44, line: 1080, baseType: !545, size: 64, offset: 1024)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2966, file: !44, line: 1082, baseType: !2983, size: 64, offset: 1088)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2985)
!2985 = !{!2986, !2994, !2995, !2996, !2997, !2998}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2984, file: !44, line: 1315, baseType: !2987)
!2987 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2988, line: 20, baseType: !2989)
!2988 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2989 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2988, line: 11, elements: !2990)
!2990 = !{!2991}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2989, file: !2988, line: 12, baseType: !2992)
!2992 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !262, line: 33, baseType: !2993)
!2993 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !262, line: 31, elements: !264)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2984, file: !44, line: 1316, baseType: !162, size: 32)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2984, file: !44, line: 1317, baseType: !162, size: 32, offset: 32)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2984, file: !44, line: 1318, baseType: !2983, size: 64, offset: 64)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2984, file: !44, line: 1319, baseType: !368, size: 64, offset: 128)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2984, file: !44, line: 1320, baseType: !381, size: 128, align: 64, offset: 192)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2966, file: !44, line: 1084, baseType: !340, size: 64, offset: 1152)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2966, file: !44, line: 1085, baseType: !340, size: 64, offset: 1216)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2966, file: !44, line: 1087, baseType: !3002, size: 64, offset: 1280)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3004)
!3004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !3005)
!3005 = !{!3006, !3010}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3004, file: !44, line: 1012, baseType: !3007, size: 64)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{null, !2965, !2965}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3004, file: !44, line: 1013, baseType: !3011, size: 64, offset: 64)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{null, !2965}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2966, file: !44, line: 1088, baseType: !3015, size: 64, offset: 1344)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3017)
!3017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !3018)
!3018 = !{!3019, !3023, !3027, !3028, !3032, !3036, !3040, !3044}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3017, file: !44, line: 1017, baseType: !3020, size: 64)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{!2951, !2951}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3017, file: !44, line: 1018, baseType: !3024, size: 64, offset: 64)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{null, !2951}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3017, file: !44, line: 1019, baseType: !3011, size: 64, offset: 128)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3017, file: !44, line: 1020, baseType: !3029, size: 64, offset: 192)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{!162, !2965, !162}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3017, file: !44, line: 1021, baseType: !3033, size: 64, offset: 256)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{!504, !2965}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3017, file: !44, line: 1022, baseType: !3037, size: 64, offset: 320)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DISubroutineType(types: !3039)
!3039 = !{!162, !2965, !162, !240}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3017, file: !44, line: 1023, baseType: !3041, size: 64, offset: 384)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{null, !2965, !835}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3017, file: !44, line: 1024, baseType: !3033, size: 64, offset: 448)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2966, file: !44, line: 1097, baseType: !3046, size: 256, offset: 1408)
!3046 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2966, file: !44, line: 1089, size: 256, elements: !3047)
!3047 = !{!3048, !3057, !3063}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3046, file: !44, line: 1090, baseType: !3049, size: 256)
!3049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3050, line: 10, size: 256, elements: !3051)
!3050 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3051 = !{!3052, !3053, !3056}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3049, file: !3050, line: 11, baseType: !431, size: 32)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3049, file: !3050, line: 12, baseType: !3054, size: 64, offset: 64)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3050, line: 5, flags: DIFlagFwdDecl)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3049, file: !3050, line: 13, baseType: !237, size: 128, offset: 128)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3046, file: !44, line: 1091, baseType: !3058, size: 64)
!3058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3050, line: 17, size: 64, elements: !3059)
!3059 = !{!3060}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3058, file: !3050, line: 18, baseType: !3061, size: 64)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3050, line: 16, flags: DIFlagFwdDecl)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3046, file: !44, line: 1096, baseType: !3064, size: 192)
!3064 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3046, file: !44, line: 1092, size: 192, elements: !3065)
!3065 = !{!3066, !3067, !3068}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3064, file: !44, line: 1093, baseType: !237, size: 128)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3064, file: !44, line: 1094, baseType: !162, size: 32, offset: 128)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3064, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2881, file: !44, line: 1843, baseType: !3070, size: 64, offset: 1280)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{!322, !368, !735, !162, !337, !2892, !162}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2881, file: !44, line: 1844, baseType: !1114, size: 64, offset: 1344)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2881, file: !44, line: 1845, baseType: !3075, size: 64, offset: 1408)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!162, !162}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2881, file: !44, line: 1846, baseType: !2962, size: 64, offset: 1472)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2881, file: !44, line: 1847, baseType: !3080, size: 64, offset: 1536)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{!322, !2116, !368, !2892, !337, !7}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2881, file: !44, line: 1848, baseType: !3084, size: 64, offset: 1600)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{!322, !368, !2892, !2116, !337, !7}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2881, file: !44, line: 1849, baseType: !3088, size: 64, offset: 1664)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{!162, !368, !326, !3091, !835}
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2881, file: !44, line: 1850, baseType: !3093, size: 64, offset: 1728)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!326, !368, !162, !545, !545}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2881, file: !44, line: 1852, baseType: !3097, size: 64, offset: 1792)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{null, !725, !368}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2881, file: !44, line: 1856, baseType: !3101, size: 64, offset: 1856)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!322, !368, !545, !368, !545, !337, !7}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2881, file: !44, line: 1858, baseType: !3105, size: 64, offset: 1920)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!545, !368, !545, !368, !545, !545, !7}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2881, file: !44, line: 1861, baseType: !2954, size: 64, offset: 1984)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2876, file: !44, line: 692, baseType: !678, size: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !444, file: !44, line: 694, baseType: !3111, size: 64, offset: 2560)
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3112, size: 64)
!3112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3113)
!3113 = !{!3114, !3115, !3116, !3117}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3112, file: !44, line: 1101, baseType: !250)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3112, file: !44, line: 1102, baseType: !237, size: 128)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3112, file: !44, line: 1103, baseType: !237, size: 128, offset: 128)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3112, file: !44, line: 1104, baseType: !237, size: 128, offset: 256)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !444, file: !44, line: 695, baseType: !749, size: 1216, align: 64, offset: 2624)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !444, file: !44, line: 696, baseType: !237, size: 128, offset: 3840)
!3120 = !DIDerivedType(tag: DW_TAG_member, scope: !444, file: !44, line: 697, baseType: !3121, size: 64, offset: 3968)
!3121 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !444, file: !44, line: 697, size: 64, elements: !3122)
!3122 = !{!3123, !3124, !3125, !3128, !3129}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3121, file: !44, line: 698, baseType: !2116, size: 64)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3121, file: !44, line: 699, baseType: !2631, size: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3121, file: !44, line: 700, baseType: !3126, size: 64)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3121, file: !44, line: 701, baseType: !291, size: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3121, file: !44, line: 702, baseType: !7, size: 32)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !444, file: !44, line: 705, baseType: !433, size: 32, offset: 4032)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !444, file: !44, line: 708, baseType: !433, size: 32, offset: 4064)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !444, file: !44, line: 709, baseType: !2713, size: 64, offset: 4096)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !444, file: !44, line: 720, baseType: !161, size: 64, offset: 4160)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !399, file: !396, line: 98, baseType: !3135, size: 256, offset: 448)
!3135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 256, elements: !2246)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !399, file: !396, line: 101, baseType: !3137, size: 32, offset: 704)
!3137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3138, line: 25, size: 32, elements: !3139)
!3138 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3139 = !{!3140}
!3140 = !DIDerivedType(tag: DW_TAG_member, scope: !3137, file: !3138, line: 26, baseType: !3141, size: 32)
!3141 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3137, file: !3138, line: 26, size: 32, elements: !3142)
!3142 = !{!3143}
!3143 = !DIDerivedType(tag: DW_TAG_member, scope: !3141, file: !3138, line: 30, baseType: !3144, size: 32)
!3144 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3141, file: !3138, line: 30, size: 32, elements: !3145)
!3145 = !{!3146, !3147}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3144, file: !3138, line: 31, baseType: !250)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3144, file: !3138, line: 32, baseType: !162, size: 32)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !399, file: !396, line: 102, baseType: !2730, size: 64, offset: 768)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !399, file: !396, line: 103, baseType: !613, size: 64, offset: 832)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !399, file: !396, line: 104, baseType: !340, size: 64, offset: 896)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !399, file: !396, line: 105, baseType: !161, size: 64, offset: 960)
!3152 = !DIDerivedType(tag: DW_TAG_member, scope: !399, file: !396, line: 107, baseType: !3153, size: 128, offset: 1024)
!3153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !399, file: !396, line: 107, size: 128, elements: !3154)
!3154 = !{!3155, !3156}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3153, file: !396, line: 108, baseType: !237, size: 128)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3153, file: !396, line: 109, baseType: !2931, size: 64)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !399, file: !396, line: 111, baseType: !237, size: 128, offset: 1152)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !399, file: !396, line: 112, baseType: !237, size: 128, offset: 1280)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !399, file: !396, line: 120, baseType: !3160, size: 128, offset: 1408)
!3160 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !399, file: !396, line: 116, size: 128, elements: !3161)
!3161 = !{!3162, !3163, !3164}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3160, file: !396, line: 117, baseType: !653, size: 128)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3160, file: !396, line: 118, baseType: !413, size: 128)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3160, file: !396, line: 119, baseType: !381, size: 128, align: 64)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !369, file: !44, line: 922, baseType: !443, size: 64, offset: 256)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !369, file: !44, line: 923, baseType: !2879, size: 64, offset: 320)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !369, file: !44, line: 929, baseType: !250, offset: 384)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !369, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !369, file: !44, line: 931, baseType: !785, size: 64, offset: 448)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !369, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !369, file: !44, line: 933, baseType: !2726, size: 32, offset: 544)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !369, file: !44, line: 934, baseType: !1186, size: 192, offset: 576)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !369, file: !44, line: 935, baseType: !545, size: 64, offset: 768)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !369, file: !44, line: 936, baseType: !3175, size: 192, offset: 832)
!3175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3176)
!3176 = !{!3177, !3178, !3179, !3180, !3181, !3182}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3175, file: !44, line: 886, baseType: !2987)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3175, file: !44, line: 887, baseType: !1489, size: 64)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3175, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3175, file: !44, line: 889, baseType: !449, size: 32, offset: 96)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3175, file: !44, line: 889, baseType: !449, size: 32, offset: 128)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3175, file: !44, line: 890, baseType: !162, size: 32, offset: 160)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !369, file: !44, line: 937, baseType: !1565, size: 64, offset: 1024)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !369, file: !44, line: 938, baseType: !3185, size: 256, offset: 1088)
!3185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3186)
!3186 = !{!3187, !3188, !3189, !3190, !3191, !3192}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3185, file: !44, line: 897, baseType: !340, size: 64)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3185, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3185, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3185, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3185, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3185, file: !44, line: 904, baseType: !545, size: 64, offset: 192)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !369, file: !44, line: 940, baseType: !436, size: 64, offset: 1344)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !369, file: !44, line: 945, baseType: !161, size: 64, offset: 1408)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !369, file: !44, line: 949, baseType: !237, size: 128, offset: 1472)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !369, file: !44, line: 950, baseType: !237, size: 128, offset: 1600)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !369, file: !44, line: 952, baseType: !748, size: 64, offset: 1728)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !369, file: !44, line: 953, baseType: !922, size: 32, offset: 1792)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !369, file: !44, line: 954, baseType: !922, size: 32, offset: 1824)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !359, file: !316, line: 174, baseType: !365, size: 64, offset: 320)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !359, file: !316, line: 176, baseType: !3202, size: 64, offset: 384)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = !DISubroutineType(types: !3204)
!3204 = !{!162, !368, !243, !358, !994}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !347, file: !316, line: 90, baseType: !342, size: 64, offset: 192)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !347, file: !316, line: 91, baseType: !3207, size: 64, offset: 256)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !306, file: !233, line: 143, baseType: !3209, size: 64, offset: 256)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!3212, !243}
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3214)
!3214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3215)
!3215 = !{!3216, !3217, !3221, !3225, !3231, !3235}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3214, file: !61, line: 40, baseType: !60, size: 32)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3214, file: !61, line: 41, baseType: !3218, size: 64, offset: 64)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{!504}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3214, file: !61, line: 42, baseType: !3222, size: 64, offset: 128)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{!161}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3214, file: !61, line: 43, baseType: !3226, size: 64, offset: 192)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!2145, !3229}
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3214, file: !61, line: 44, baseType: !3232, size: 64, offset: 256)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!2145}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3214, file: !61, line: 45, baseType: !482, size: 64, offset: 320)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !306, file: !233, line: 144, baseType: !3237, size: 64, offset: 320)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!2145, !243}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !306, file: !233, line: 145, baseType: !3241, size: 64, offset: 384)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{null, !243, !3244, !3245}
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !232, file: !233, line: 70, baseType: !3247, size: 64, offset: 384)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !633, line: 123, size: 1024, elements: !3249)
!3249 = !{!3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3378, !3379, !3380, !3381, !3382}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3248, file: !633, line: 124, baseType: !761, size: 32)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3248, file: !633, line: 125, baseType: !761, size: 32, offset: 32)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3248, file: !633, line: 135, baseType: !3247, size: 64, offset: 64)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3248, file: !633, line: 136, baseType: !209, size: 64, offset: 128)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3248, file: !633, line: 138, baseType: !774, size: 192, align: 64, offset: 192)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3248, file: !633, line: 140, baseType: !2145, size: 64, offset: 384)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3248, file: !633, line: 141, baseType: !7, size: 32, offset: 448)
!3257 = !DIDerivedType(tag: DW_TAG_member, scope: !3248, file: !633, line: 142, baseType: !3258, size: 256, offset: 512)
!3258 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3248, file: !633, line: 142, size: 256, elements: !3259)
!3259 = !{!3260, !3306, !3310}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3258, file: !633, line: 143, baseType: !3261, size: 192)
!3261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !633, line: 91, size: 192, elements: !3262)
!3262 = !{!3263, !3264, !3265}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3261, file: !633, line: 92, baseType: !340, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3261, file: !633, line: 94, baseType: !770, size: 64, offset: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3261, file: !633, line: 100, baseType: !3266, size: 64, offset: 128)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !633, line: 180, size: 704, elements: !3268)
!3268 = !{!3269, !3270, !3271, !3278, !3279, !3280, !3304, !3305}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3267, file: !633, line: 182, baseType: !3247, size: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3267, file: !633, line: 183, baseType: !7, size: 32, offset: 64)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3267, file: !633, line: 186, baseType: !3272, size: 192, offset: 128)
!3272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3273, line: 19, size: 192, elements: !3274)
!3273 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3274 = !{!3275, !3276, !3277}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3272, file: !3273, line: 20, baseType: !753, size: 128)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3272, file: !3273, line: 21, baseType: !7, size: 32, offset: 128)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3272, file: !3273, line: 22, baseType: !7, size: 32, offset: 160)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3267, file: !633, line: 187, baseType: !431, size: 32, offset: 320)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3267, file: !633, line: 188, baseType: !431, size: 32, offset: 352)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3267, file: !633, line: 189, baseType: !3281, size: 64, offset: 384)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !633, line: 168, size: 320, elements: !3283)
!3283 = !{!3284, !3288, !3292, !3296, !3300}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3282, file: !633, line: 169, baseType: !3285, size: 64)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!162, !725, !3266}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3282, file: !633, line: 171, baseType: !3289, size: 64, offset: 64)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DISubroutineType(types: !3291)
!3291 = !{!162, !3247, !209, !332}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3282, file: !633, line: 173, baseType: !3293, size: 64, offset: 128)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!162, !3247}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3282, file: !633, line: 174, baseType: !3297, size: 64, offset: 192)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{!162, !3247, !3247, !209}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3282, file: !633, line: 176, baseType: !3301, size: 64, offset: 256)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!162, !725, !3247, !3266}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3267, file: !633, line: 192, baseType: !237, size: 128, offset: 448)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3267, file: !633, line: 194, baseType: !1499, size: 128, offset: 576)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3258, file: !633, line: 144, baseType: !3307, size: 64)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !633, line: 103, size: 64, elements: !3308)
!3308 = !{!3309}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3307, file: !633, line: 104, baseType: !3247, size: 64)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3258, file: !633, line: 145, baseType: !3311, size: 256)
!3311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !633, line: 107, size: 256, elements: !3312)
!3312 = !{!3313, !3373, !3376, !3377}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3311, file: !633, line: 108, baseType: !3314, size: 64)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3316)
!3316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !633, line: 217, size: 768, elements: !3317)
!3317 = !{!3318, !3338, !3342, !3346, !3350, !3354, !3358, !3362, !3363, !3364, !3365, !3369}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3316, file: !633, line: 222, baseType: !3319, size: 64)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{!162, !3322}
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !633, line: 197, size: 1088, elements: !3324)
!3324 = !{!3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3323, file: !633, line: 199, baseType: !3247, size: 64)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3323, file: !633, line: 200, baseType: !368, size: 64, offset: 64)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3323, file: !633, line: 201, baseType: !725, size: 64, offset: 128)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3323, file: !633, line: 202, baseType: !161, size: 64, offset: 192)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3323, file: !633, line: 205, baseType: !1186, size: 192, offset: 256)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3323, file: !633, line: 206, baseType: !1186, size: 192, offset: 448)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3323, file: !633, line: 207, baseType: !162, size: 32, offset: 640)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3323, file: !633, line: 208, baseType: !237, size: 128, offset: 704)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3323, file: !633, line: 209, baseType: !291, size: 64, offset: 832)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3323, file: !633, line: 211, baseType: !337, size: 64, offset: 896)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3323, file: !633, line: 212, baseType: !504, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3323, file: !633, line: 213, baseType: !504, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3323, file: !633, line: 214, baseType: !1022, size: 64, offset: 1024)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3316, file: !633, line: 223, baseType: !3339, size: 64, offset: 64)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{null, !3322}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3316, file: !633, line: 236, baseType: !3343, size: 64, offset: 128)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!162, !725, !161}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3316, file: !633, line: 238, baseType: !3347, size: 64, offset: 192)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{!161, !725, !2892}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3316, file: !633, line: 239, baseType: !3351, size: 64, offset: 256)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{!161, !725, !161, !2892}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3316, file: !633, line: 240, baseType: !3355, size: 64, offset: 320)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{null, !725, !161}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3316, file: !633, line: 242, baseType: !3359, size: 64, offset: 384)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!322, !3322, !291, !337, !545}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3316, file: !633, line: 252, baseType: !337, size: 64, offset: 448)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3316, file: !633, line: 259, baseType: !504, size: 8, offset: 512)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3316, file: !633, line: 260, baseType: !3359, size: 64, offset: 576)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3316, file: !633, line: 263, baseType: !3366, size: 64, offset: 640)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!2921, !3322, !2922}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3316, file: !633, line: 266, baseType: !3370, size: 64, offset: 704)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{!162, !3322, !994}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3311, file: !633, line: 109, baseType: !3374, size: 64, offset: 64)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !633, line: 31, flags: DIFlagFwdDecl)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3311, file: !633, line: 110, baseType: !545, size: 64, offset: 128)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3311, file: !633, line: 111, baseType: !3247, size: 64, offset: 192)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3248, file: !633, line: 148, baseType: !161, size: 64, offset: 768)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3248, file: !633, line: 154, baseType: !436, size: 64, offset: 832)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3248, file: !633, line: 156, baseType: !165, size: 16, offset: 896)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3248, file: !633, line: 157, baseType: !332, size: 16, offset: 912)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3248, file: !633, line: 158, baseType: !3383, size: 64, offset: 960)
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3384, size: 64)
!3384 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !633, line: 32, flags: DIFlagFwdDecl)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !232, file: !233, line: 71, baseType: !3386, size: 32, offset: 448)
!3386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3387, line: 19, size: 32, elements: !3388)
!3387 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3388 = !{!3389}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3386, file: !3387, line: 20, baseType: !1243, size: 32)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !232, file: !233, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !232, file: !233, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !232, file: !233, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !232, file: !233, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !232, file: !233, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !229, file: !73, line: 463, baseType: !228, size: 64, offset: 512)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !229, file: !73, line: 465, baseType: !3397, size: 64, offset: 576)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !229, file: !73, line: 467, baseType: !209, size: 64, offset: 640)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !229, file: !73, line: 468, baseType: !3401, size: 64, offset: 704)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3403)
!3403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3404)
!3404 = !{!3405, !3406, !3407, !3411, !3416, !3420}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3403, file: !73, line: 88, baseType: !209, size: 64)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3403, file: !73, line: 89, baseType: !344, size: 64, offset: 64)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3403, file: !73, line: 90, baseType: !3408, size: 64, offset: 128)
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = !DISubroutineType(types: !3410)
!3410 = !{!162, !228, !286}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3403, file: !73, line: 91, baseType: !3412, size: 64, offset: 192)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = !DISubroutineType(types: !3414)
!3414 = !{!291, !228, !3415, !3244, !3245}
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3403, file: !73, line: 93, baseType: !3417, size: 64, offset: 256)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = !DISubroutineType(types: !3419)
!3419 = !{null, !228}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3403, file: !73, line: 95, baseType: !3421, size: 64, offset: 320)
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3422, size: 64)
!3422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3423)
!3423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3424)
!3424 = !{!3425, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3423, file: !80, line: 279, baseType: !3426, size: 64)
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{!162, !228}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3423, file: !80, line: 280, baseType: !3417, size: 64, offset: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3423, file: !80, line: 281, baseType: !3426, size: 64, offset: 128)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3423, file: !80, line: 282, baseType: !3426, size: 64, offset: 192)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3423, file: !80, line: 283, baseType: !3426, size: 64, offset: 256)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3423, file: !80, line: 284, baseType: !3426, size: 64, offset: 320)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3423, file: !80, line: 285, baseType: !3426, size: 64, offset: 384)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3423, file: !80, line: 286, baseType: !3426, size: 64, offset: 448)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3423, file: !80, line: 287, baseType: !3426, size: 64, offset: 512)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3423, file: !80, line: 288, baseType: !3426, size: 64, offset: 576)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3423, file: !80, line: 289, baseType: !3426, size: 64, offset: 640)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3423, file: !80, line: 290, baseType: !3426, size: 64, offset: 704)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3423, file: !80, line: 291, baseType: !3426, size: 64, offset: 768)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3423, file: !80, line: 292, baseType: !3426, size: 64, offset: 832)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3423, file: !80, line: 293, baseType: !3426, size: 64, offset: 896)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3423, file: !80, line: 294, baseType: !3426, size: 64, offset: 960)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3423, file: !80, line: 295, baseType: !3426, size: 64, offset: 1024)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3423, file: !80, line: 296, baseType: !3426, size: 64, offset: 1088)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3423, file: !80, line: 297, baseType: !3426, size: 64, offset: 1152)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3423, file: !80, line: 298, baseType: !3426, size: 64, offset: 1216)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3423, file: !80, line: 299, baseType: !3426, size: 64, offset: 1280)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3423, file: !80, line: 300, baseType: !3426, size: 64, offset: 1344)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3423, file: !80, line: 301, baseType: !3426, size: 64, offset: 1408)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !229, file: !73, line: 470, baseType: !3452, size: 64, offset: 768)
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3454, line: 82, size: 1408, elements: !3455)
!3454 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3455 = !{!3456, !3457, !3458, !3459, !3460, !3461, !3462, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3537, !3540, !3541}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3453, file: !3454, line: 83, baseType: !209, size: 64)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3453, file: !3454, line: 84, baseType: !209, size: 64, offset: 64)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3453, file: !3454, line: 85, baseType: !228, size: 64, offset: 128)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3453, file: !3454, line: 86, baseType: !344, size: 64, offset: 192)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3453, file: !3454, line: 87, baseType: !344, size: 64, offset: 256)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3453, file: !3454, line: 88, baseType: !344, size: 64, offset: 320)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3453, file: !3454, line: 90, baseType: !3463, size: 64, offset: 384)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = !DISubroutineType(types: !3465)
!3465 = !{!162, !228, !3466}
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3468)
!3468 = !{!3469, !3470, !3471, !3472, !3473, !3474, !3475, !3488, !3501, !3502, !3503, !3504, !3505, !3513, !3514, !3515, !3516, !3517, !3518}
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3467, file: !67, line: 96, baseType: !209, size: 64)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3467, file: !67, line: 97, baseType: !3452, size: 64, offset: 64)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3467, file: !67, line: 99, baseType: !211, size: 64, offset: 128)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3467, file: !67, line: 100, baseType: !209, size: 64, offset: 192)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3467, file: !67, line: 102, baseType: !504, size: 8, offset: 256)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3467, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3467, file: !67, line: 105, baseType: !3476, size: 64, offset: 320)
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3478)
!3478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3479, line: 262, size: 1600, elements: !3480)
!3479 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3480 = !{!3481, !3482, !3483, !3487}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3478, file: !3479, line: 263, baseType: !2716, size: 256)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3478, file: !3479, line: 264, baseType: !2716, size: 256, offset: 256)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3478, file: !3479, line: 265, baseType: !3484, size: 1024, offset: 512)
!3484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 1024, elements: !3485)
!3485 = !{!3486}
!3486 = !DISubrange(count: 128)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3478, file: !3479, line: 266, baseType: !2145, size: 64, offset: 1536)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3467, file: !67, line: 106, baseType: !3489, size: 64, offset: 384)
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3491)
!3491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3479, line: 210, size: 256, elements: !3492)
!3492 = !{!3493, !3497, !3499, !3500}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3491, file: !3479, line: 211, baseType: !3494, size: 72)
!3494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1366, size: 72, elements: !3495)
!3495 = !{!3496}
!3496 = !DISubrange(count: 9)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3491, file: !3479, line: 212, baseType: !3498, size: 64, offset: 128)
!3498 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3479, line: 14, baseType: !340)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3491, file: !3479, line: 213, baseType: !433, size: 32, offset: 192)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3491, file: !3479, line: 214, baseType: !433, size: 32, offset: 224)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3467, file: !67, line: 108, baseType: !3426, size: 64, offset: 448)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3467, file: !67, line: 109, baseType: !3417, size: 64, offset: 512)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3467, file: !67, line: 110, baseType: !3426, size: 64, offset: 576)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3467, file: !67, line: 111, baseType: !3417, size: 64, offset: 640)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3467, file: !67, line: 112, baseType: !3506, size: 64, offset: 704)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!162, !228, !3509}
!3509 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3510)
!3510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3511)
!3511 = !{!3512}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3510, file: !80, line: 51, baseType: !162, size: 32)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3467, file: !67, line: 113, baseType: !3426, size: 64, offset: 768)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3467, file: !67, line: 114, baseType: !344, size: 64, offset: 832)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3467, file: !67, line: 115, baseType: !344, size: 64, offset: 896)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3467, file: !67, line: 117, baseType: !3421, size: 64, offset: 960)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3467, file: !67, line: 118, baseType: !3417, size: 64, offset: 1024)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3467, file: !67, line: 120, baseType: !3519, size: 64, offset: 1088)
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3520 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3453, file: !3454, line: 91, baseType: !3408, size: 64, offset: 448)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3453, file: !3454, line: 92, baseType: !3426, size: 64, offset: 512)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3453, file: !3454, line: 93, baseType: !3417, size: 64, offset: 576)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3453, file: !3454, line: 94, baseType: !3426, size: 64, offset: 640)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3453, file: !3454, line: 95, baseType: !3417, size: 64, offset: 704)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3453, file: !3454, line: 97, baseType: !3426, size: 64, offset: 768)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3453, file: !3454, line: 98, baseType: !3426, size: 64, offset: 832)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3453, file: !3454, line: 100, baseType: !3506, size: 64, offset: 896)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3453, file: !3454, line: 101, baseType: !3426, size: 64, offset: 960)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3453, file: !3454, line: 103, baseType: !3426, size: 64, offset: 1024)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3453, file: !3454, line: 105, baseType: !3426, size: 64, offset: 1088)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3453, file: !3454, line: 107, baseType: !3421, size: 64, offset: 1152)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3453, file: !3454, line: 109, baseType: !3534, size: 64, offset: 1216)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3536)
!3536 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3454, line: 109, flags: DIFlagFwdDecl)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3453, file: !3454, line: 111, baseType: !3538, size: 64, offset: 1280)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3454, line: 111, flags: DIFlagFwdDecl)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3453, file: !3454, line: 112, baseType: !659, offset: 1344)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3453, file: !3454, line: 114, baseType: !504, size: 8, offset: 1344)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !229, file: !73, line: 471, baseType: !3466, size: 64, offset: 832)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !229, file: !73, line: 473, baseType: !161, size: 64, offset: 896)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !229, file: !73, line: 475, baseType: !161, size: 64, offset: 960)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !229, file: !73, line: 480, baseType: !1186, size: 192, offset: 1024)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !229, file: !73, line: 484, baseType: !3547, size: 576, offset: 1216)
!3547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3548)
!3548 = !{!3549, !3550, !3551, !3552, !3553, !3554}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3547, file: !73, line: 362, baseType: !237, size: 128)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3547, file: !73, line: 363, baseType: !237, size: 128, offset: 128)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3547, file: !73, line: 364, baseType: !237, size: 128, offset: 256)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3547, file: !73, line: 365, baseType: !237, size: 128, offset: 384)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3547, file: !73, line: 366, baseType: !504, size: 8, offset: 512)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3547, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !229, file: !73, line: 485, baseType: !3556, size: 2304, offset: 1792)
!3556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3557)
!3557 = !{!3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3653, !3657}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3556, file: !80, line: 566, baseType: !3509, size: 32)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3556, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3556, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3556, file: !80, line: 569, baseType: !504, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3556, file: !80, line: 570, baseType: !504, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3556, file: !80, line: 571, baseType: !504, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3556, file: !80, line: 572, baseType: !504, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3556, file: !80, line: 573, baseType: !504, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3556, file: !80, line: 574, baseType: !504, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3556, file: !80, line: 575, baseType: !504, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3556, file: !80, line: 576, baseType: !504, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3556, file: !80, line: 577, baseType: !431, size: 32, offset: 64)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3556, file: !80, line: 578, baseType: !250, offset: 96)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3556, file: !80, line: 580, baseType: !237, size: 128, offset: 128)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3556, file: !80, line: 581, baseType: !1520, size: 192, offset: 256)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3556, file: !80, line: 582, baseType: !3574, size: 64, offset: 448)
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3576, line: 43, size: 1472, elements: !3577)
!3576 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3577 = !{!3578, !3579, !3580, !3581, !3582, !3585, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610}
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3575, file: !3576, line: 44, baseType: !209, size: 64)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3575, file: !3576, line: 45, baseType: !162, size: 32, offset: 64)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3575, file: !3576, line: 46, baseType: !237, size: 128, offset: 128)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3575, file: !3576, line: 47, baseType: !250, offset: 256)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3575, file: !3576, line: 48, baseType: !3583, size: 64, offset: 256)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3575, file: !3576, line: 49, baseType: !3586, size: 320, offset: 320)
!3586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3587, line: 11, size: 320, elements: !3588)
!3587 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3588 = !{!3589, !3590, !3591, !3596}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3586, file: !3587, line: 16, baseType: !653, size: 128)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3586, file: !3587, line: 17, baseType: !340, size: 64, offset: 128)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3586, file: !3587, line: 18, baseType: !3592, size: 64, offset: 192)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = !DISubroutineType(types: !3594)
!3594 = !{null, !3595}
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3586, file: !3587, line: 19, baseType: !431, size: 32, offset: 256)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3575, file: !3576, line: 50, baseType: !340, size: 64, offset: 640)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3575, file: !3576, line: 51, baseType: !1313, size: 64, offset: 704)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3575, file: !3576, line: 52, baseType: !1313, size: 64, offset: 768)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3575, file: !3576, line: 53, baseType: !1313, size: 64, offset: 832)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3575, file: !3576, line: 54, baseType: !1313, size: 64, offset: 896)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3575, file: !3576, line: 55, baseType: !1313, size: 64, offset: 960)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3575, file: !3576, line: 56, baseType: !340, size: 64, offset: 1024)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3575, file: !3576, line: 57, baseType: !340, size: 64, offset: 1088)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3575, file: !3576, line: 58, baseType: !340, size: 64, offset: 1152)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3575, file: !3576, line: 59, baseType: !340, size: 64, offset: 1216)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3575, file: !3576, line: 60, baseType: !340, size: 64, offset: 1280)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3575, file: !3576, line: 61, baseType: !228, size: 64, offset: 1344)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3575, file: !3576, line: 62, baseType: !504, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3575, file: !3576, line: 63, baseType: !504, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3556, file: !80, line: 583, baseType: !504, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3556, file: !80, line: 584, baseType: !504, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3556, file: !80, line: 585, baseType: !504, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3556, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3556, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3556, file: !80, line: 592, baseType: !1305, size: 512, offset: 576)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3556, file: !80, line: 593, baseType: !436, size: 64, offset: 1088)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3556, file: !80, line: 594, baseType: !1975, size: 256, offset: 1152)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3556, file: !80, line: 595, baseType: !1499, size: 128, offset: 1408)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3556, file: !80, line: 596, baseType: !3583, size: 64, offset: 1536)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3556, file: !80, line: 597, baseType: !761, size: 32, offset: 1600)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3556, file: !80, line: 598, baseType: !761, size: 32, offset: 1632)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3556, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3556, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3556, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3556, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3556, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3556, file: !80, line: 604, baseType: !504, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3556, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3556, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3556, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3556, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3556, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3556, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3556, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3556, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3556, file: !80, line: 613, baseType: !162, size: 32, offset: 1792)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3556, file: !80, line: 614, baseType: !162, size: 32, offset: 1824)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3556, file: !80, line: 615, baseType: !436, size: 64, offset: 1856)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3556, file: !80, line: 616, baseType: !436, size: 64, offset: 1920)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3556, file: !80, line: 617, baseType: !436, size: 64, offset: 1984)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3556, file: !80, line: 618, baseType: !436, size: 64, offset: 2048)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3556, file: !80, line: 620, baseType: !3644, size: 64, offset: 2112)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3646)
!3646 = !{!3647, !3648, !3649, !3650}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3645, file: !80, line: 537, baseType: !250)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3645, file: !80, line: 538, baseType: !7, size: 32)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3645, file: !80, line: 540, baseType: !237, size: 128, offset: 64)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3645, file: !80, line: 543, baseType: !3651, size: 64, offset: 192)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3556, file: !80, line: 621, baseType: !3654, size: 64, offset: 2176)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = !DISubroutineType(types: !3656)
!3656 = !{null, !228, !1457}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3556, file: !80, line: 622, baseType: !3658, size: 64, offset: 2240)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !229, file: !73, line: 486, baseType: !3661, size: 64, offset: 4096)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3663)
!3663 = !{!3664, !3665, !3666, !3670, !3671, !3672}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3662, file: !80, line: 643, baseType: !3423, size: 1472)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3662, file: !80, line: 644, baseType: !3426, size: 64, offset: 1472)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3662, file: !80, line: 645, baseType: !3667, size: 64, offset: 1536)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{null, !228, !504}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3662, file: !80, line: 646, baseType: !3426, size: 64, offset: 1600)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3662, file: !80, line: 647, baseType: !3417, size: 64, offset: 1664)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3662, file: !80, line: 648, baseType: !3417, size: 64, offset: 1728)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !229, file: !73, line: 493, baseType: !3674, size: 64, offset: 4160)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !73, line: 493, flags: DIFlagFwdDecl)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !229, file: !73, line: 499, baseType: !237, size: 128, offset: 4224)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !229, file: !73, line: 502, baseType: !3678, size: 64, offset: 4352)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3680)
!3680 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !229, file: !73, line: 504, baseType: !3682, size: 64, offset: 4416)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !229, file: !73, line: 505, baseType: !436, size: 64, offset: 4480)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !229, file: !73, line: 510, baseType: !436, size: 64, offset: 4544)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !229, file: !73, line: 511, baseType: !3686, size: 64, offset: 4608)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3688)
!3688 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !229, file: !73, line: 513, baseType: !3690, size: 64, offset: 4672)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3692)
!3692 = !{!3693, !3694}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3691, file: !73, line: 293, baseType: !7, size: 32)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3691, file: !73, line: 294, baseType: !340, size: 64, offset: 64)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !229, file: !73, line: 515, baseType: !237, size: 128, offset: 4736)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !229, file: !73, line: 526, baseType: !3697, offset: 4864)
!3697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3698, line: 5, elements: !264)
!3698 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !229, file: !73, line: 528, baseType: !3700, size: 64, offset: 4864)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3702, line: 14, flags: DIFlagFwdDecl)
!3702 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !229, file: !73, line: 529, baseType: !3704, size: 64, offset: 4928)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3706, line: 17, size: 192, elements: !3707)
!3706 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3707 = !{!3708, !3709, !3792}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3705, file: !3706, line: 18, baseType: !3704, size: 64)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3705, file: !3706, line: 19, baseType: !3710, size: 64, offset: 64)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3712)
!3712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3706, line: 110, size: 1152, elements: !3713)
!3713 = !{!3714, !3718, !3722, !3728, !3734, !3738, !3742, !3747, !3751, !3752, !3756, !3760, !3764, !3775, !3776, !3777, !3778, !3788}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3712, file: !3706, line: 111, baseType: !3715, size: 64)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!3704, !3704}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3712, file: !3706, line: 112, baseType: !3719, size: 64, offset: 64)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{null, !3704}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3712, file: !3706, line: 113, baseType: !3723, size: 64, offset: 128)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!504, !3726}
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3705)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3712, file: !3706, line: 114, baseType: !3729, size: 64, offset: 192)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!2145, !3726, !3732}
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !229)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3712, file: !3706, line: 116, baseType: !3735, size: 64, offset: 256)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!504, !3726, !209}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3712, file: !3706, line: 118, baseType: !3739, size: 64, offset: 320)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!162, !3726, !209, !7, !161, !337}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3712, file: !3706, line: 123, baseType: !3743, size: 64, offset: 384)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{!162, !3726, !209, !3746, !337}
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3712, file: !3706, line: 126, baseType: !3748, size: 64, offset: 448)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = !DISubroutineType(types: !3750)
!3750 = !{!209, !3726}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3712, file: !3706, line: 127, baseType: !3748, size: 64, offset: 512)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3712, file: !3706, line: 128, baseType: !3753, size: 64, offset: 576)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{!3704, !3726}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3712, file: !3706, line: 130, baseType: !3757, size: 64, offset: 640)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!3704, !3726, !3704}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3712, file: !3706, line: 133, baseType: !3761, size: 64, offset: 704)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = !DISubroutineType(types: !3763)
!3763 = !{!3704, !3726, !209}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3712, file: !3706, line: 135, baseType: !3765, size: 64, offset: 768)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DISubroutineType(types: !3767)
!3767 = !{!162, !3726, !209, !209, !7, !7, !3768}
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3706, line: 43, size: 640, elements: !3770)
!3770 = !{!3771, !3772, !3773}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3769, file: !3706, line: 44, baseType: !3704, size: 64)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3769, file: !3706, line: 45, baseType: !7, size: 32, offset: 64)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3769, file: !3706, line: 46, baseType: !3774, size: 512, offset: 128)
!3774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !436, size: 512, elements: !1343)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3712, file: !3706, line: 140, baseType: !3757, size: 64, offset: 832)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3712, file: !3706, line: 143, baseType: !3753, size: 64, offset: 896)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3712, file: !3706, line: 145, baseType: !3715, size: 64, offset: 960)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3712, file: !3706, line: 146, baseType: !3779, size: 64, offset: 1024)
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = !DISubroutineType(types: !3781)
!3781 = !{!162, !3726, !3782}
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3706, line: 29, size: 128, elements: !3784)
!3784 = !{!3785, !3786, !3787}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3783, file: !3706, line: 30, baseType: !7, size: 32)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3783, file: !3706, line: 31, baseType: !7, size: 32, offset: 32)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3783, file: !3706, line: 32, baseType: !3726, size: 64, offset: 64)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3712, file: !3706, line: 148, baseType: !3789, size: 64, offset: 1088)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{!162, !3726, !228}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3705, file: !3706, line: 20, baseType: !228, size: 64, offset: 128)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !229, file: !73, line: 534, baseType: !527, size: 32, offset: 4992)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !229, file: !73, line: 535, baseType: !431, size: 32, offset: 5024)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !229, file: !73, line: 537, baseType: !250, offset: 5056)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !229, file: !73, line: 538, baseType: !237, size: 128, offset: 5056)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !229, file: !73, line: 540, baseType: !3798, size: 64, offset: 5184)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3800, line: 54, size: 960, elements: !3801)
!3800 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3801 = !{!3802, !3803, !3804, !3805, !3806, !3807, !3808, !3812, !3816, !3817, !3818, !3819, !3823, !3827, !3828}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3799, file: !3800, line: 55, baseType: !209, size: 64)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3799, file: !3800, line: 56, baseType: !211, size: 64, offset: 64)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3799, file: !3800, line: 58, baseType: !344, size: 64, offset: 128)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3799, file: !3800, line: 59, baseType: !344, size: 64, offset: 192)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3799, file: !3800, line: 60, baseType: !243, size: 64, offset: 256)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3799, file: !3800, line: 62, baseType: !3408, size: 64, offset: 320)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3799, file: !3800, line: 63, baseType: !3809, size: 64, offset: 384)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{!291, !228, !3415}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3799, file: !3800, line: 65, baseType: !3813, size: 64, offset: 448)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{null, !3798}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3799, file: !3800, line: 66, baseType: !3417, size: 64, offset: 512)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3799, file: !3800, line: 68, baseType: !3426, size: 64, offset: 576)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3799, file: !3800, line: 70, baseType: !3212, size: 64, offset: 640)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3799, file: !3800, line: 71, baseType: !3820, size: 64, offset: 704)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{!2145, !228}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3799, file: !3800, line: 73, baseType: !3824, size: 64, offset: 768)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{null, !228, !3244, !3245}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3799, file: !3800, line: 75, baseType: !3421, size: 64, offset: 832)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3799, file: !3800, line: 77, baseType: !3538, size: 64, offset: 896)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !229, file: !73, line: 541, baseType: !344, size: 64, offset: 5248)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !229, file: !73, line: 543, baseType: !3417, size: 64, offset: 5312)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !229, file: !73, line: 544, baseType: !3832, size: 64, offset: 5376)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !229, file: !73, line: 545, baseType: !3835, size: 64, offset: 5440)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !229, file: !73, line: 547, baseType: !504, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !229, file: !73, line: 548, baseType: !504, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !229, file: !73, line: 549, baseType: !504, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !229, file: !73, line: 550, baseType: !504, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !219, file: !204, line: 548, baseType: !162, size: 32, offset: 320)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "detach_count", scope: !219, file: !204, line: 549, baseType: !7, size: 32, offset: 352)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "hw_dev", scope: !219, file: !204, line: 550, baseType: !228, size: 64, offset: 384)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !219, file: !204, line: 552, baseType: !209, size: 64, offset: 448)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "board_ptr", scope: !219, file: !204, line: 553, baseType: !2145, size: 64, offset: 512)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "attached", scope: !219, file: !204, line: 554, baseType: !7, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "ioenabled", scope: !219, file: !204, line: 555, baseType: !7, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "spinlock", scope: !219, file: !204, line: 556, baseType: !250, offset: 584)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !219, file: !204, line: 557, baseType: !1186, size: 192, offset: 640)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "attach_lock", scope: !219, file: !204, line: 558, baseType: !781, size: 256, offset: 832)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !219, file: !204, line: 559, baseType: !3386, size: 32, offset: 1088)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "n_subdevices", scope: !219, file: !204, line: 561, baseType: !162, size: 32, offset: 1120)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "subdevices", scope: !219, file: !204, line: 562, baseType: !3854, size: 64, offset: 1152)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_subdevice", file: !204, line: 153, size: 1792, elements: !3856)
!3856 = !{!3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3932, !3945, !3948, !3949, !3963, !3964, !3965, !3966, !3970, !3975, !3976, !3977, !3978, !3982, !3983, !3984, !3985, !3986}
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3855, file: !204, line: 154, baseType: !218, size: 64)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3855, file: !204, line: 155, baseType: !162, size: 32, offset: 64)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3855, file: !204, line: 156, baseType: !162, size: 32, offset: 96)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "n_chan", scope: !3855, file: !204, line: 157, baseType: !162, size: 32, offset: 128)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "subdev_flags", scope: !3855, file: !204, line: 158, baseType: !162, size: 32, offset: 160)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "len_chanlist", scope: !3855, file: !204, line: 159, baseType: !162, size: 32, offset: 192)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3855, file: !204, line: 161, baseType: !161, size: 64, offset: 256)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "async", scope: !3855, file: !204, line: 163, baseType: !3865, size: 64, offset: 320)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_async", file: !204, line: 347, size: 1536, elements: !3867)
!3867 = !{!3868, !3869, !3870, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3918, !3919, !3920}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3866, file: !204, line: 348, baseType: !161, size: 64)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_bufsz", scope: !3866, file: !204, line: 349, baseType: !7, size: 32, offset: 64)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "buf_map", scope: !3866, file: !204, line: 350, baseType: !3871, size: 64, offset: 128)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_buf_map", file: !204, line: 249, size: 256, elements: !3873)
!3873 = !{!3874, !3875, !3881, !3882, !3883}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "dma_hw_dev", scope: !3872, file: !204, line: 250, baseType: !228, size: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "page_list", scope: !3872, file: !204, line: 251, baseType: !3876, size: 64, offset: 64)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_buf_page", file: !204, line: 220, size: 128, elements: !3878)
!3878 = !{!3879, !3880}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "virt_addr", scope: !3877, file: !204, line: 221, baseType: !161, size: 64)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3877, file: !204, line: 222, baseType: !933, size: 64, offset: 64)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "n_pages", scope: !3872, file: !204, line: 252, baseType: !7, size: 32, offset: 128)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "dma_dir", scope: !3872, file: !204, line: 253, baseType: !93, size: 32, offset: 160)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3872, file: !204, line: 254, baseType: !3386, size: 32, offset: 192)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "max_bufsize", scope: !3866, file: !204, line: 351, baseType: !7, size: 32, offset: 192)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_count", scope: !3866, file: !204, line: 352, baseType: !7, size: 32, offset: 224)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_alloc_count", scope: !3866, file: !204, line: 353, baseType: !7, size: 32, offset: 256)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_count", scope: !3866, file: !204, line: 354, baseType: !7, size: 32, offset: 288)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_alloc_count", scope: !3866, file: !204, line: 355, baseType: !7, size: 32, offset: 320)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_ptr", scope: !3866, file: !204, line: 356, baseType: !7, size: 32, offset: 352)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_ptr", scope: !3866, file: !204, line: 357, baseType: !7, size: 32, offset: 384)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "cur_chan", scope: !3866, file: !204, line: 358, baseType: !7, size: 32, offset: 416)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "scans_done", scope: !3866, file: !204, line: 359, baseType: !7, size: 32, offset: 448)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "scan_progress", scope: !3866, file: !204, line: 360, baseType: !7, size: 32, offset: 480)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "munge_chan", scope: !3866, file: !204, line: 361, baseType: !7, size: 32, offset: 512)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "munge_count", scope: !3866, file: !204, line: 362, baseType: !7, size: 32, offset: 544)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "munge_ptr", scope: !3866, file: !204, line: 363, baseType: !7, size: 32, offset: 576)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3866, file: !204, line: 364, baseType: !7, size: 32, offset: 608)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !3866, file: !204, line: 365, baseType: !3899, size: 640, offset: 640)
!3899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_cmd", file: !145, line: 589, size: 640, elements: !3900)
!3900 = !{!3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3917}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "subdev", scope: !3899, file: !145, line: 590, baseType: !7, size: 32)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3899, file: !145, line: 591, baseType: !7, size: 32, offset: 32)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "start_src", scope: !3899, file: !145, line: 593, baseType: !7, size: 32, offset: 64)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "start_arg", scope: !3899, file: !145, line: 594, baseType: !7, size: 32, offset: 96)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "scan_begin_src", scope: !3899, file: !145, line: 596, baseType: !7, size: 32, offset: 128)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "scan_begin_arg", scope: !3899, file: !145, line: 597, baseType: !7, size: 32, offset: 160)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "convert_src", scope: !3899, file: !145, line: 599, baseType: !7, size: 32, offset: 192)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "convert_arg", scope: !3899, file: !145, line: 600, baseType: !7, size: 32, offset: 224)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "scan_end_src", scope: !3899, file: !145, line: 602, baseType: !7, size: 32, offset: 256)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "scan_end_arg", scope: !3899, file: !145, line: 603, baseType: !7, size: 32, offset: 288)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "stop_src", scope: !3899, file: !145, line: 605, baseType: !7, size: 32, offset: 320)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "stop_arg", scope: !3899, file: !145, line: 606, baseType: !7, size: 32, offset: 352)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist", scope: !3899, file: !145, line: 608, baseType: !2699, size: 64, offset: 384)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist_len", scope: !3899, file: !145, line: 609, baseType: !7, size: 32, offset: 448)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3899, file: !145, line: 611, baseType: !3916, size: 64, offset: 512)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !3899, file: !145, line: 612, baseType: !7, size: 32, offset: 576)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "wait_head", scope: !3866, file: !204, line: 366, baseType: !1499, size: 128, offset: 1280)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "cb_mask", scope: !3866, file: !204, line: 367, baseType: !7, size: 32, offset: 1408)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "inttrig", scope: !3866, file: !204, line: 368, baseType: !3921, size: 64, offset: 1472)
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3922, size: 64)
!3922 = !DISubroutineType(types: !3923)
!3923 = !{!162, !218, !3854, !7}
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3855, file: !204, line: 165, baseType: !161, size: 64, offset: 384)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !3855, file: !204, line: 166, baseType: !161, size: 64, offset: 448)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "runflags", scope: !3855, file: !204, line: 167, baseType: !7, size: 32, offset: 512)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "spin_lock", scope: !3855, file: !204, line: 168, baseType: !250, offset: 544)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "io_bits", scope: !3855, file: !204, line: 170, baseType: !7, size: 32, offset: 544)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata", scope: !3855, file: !204, line: 172, baseType: !7, size: 32, offset: 576)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata_list", scope: !3855, file: !204, line: 173, baseType: !3931, size: 64, offset: 640)
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "range_table", scope: !3855, file: !204, line: 175, baseType: !3933, size: 64, offset: 704)
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3934, size: 64)
!3934 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3935)
!3935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_lrange", file: !204, line: 635, size: 32, elements: !3936)
!3936 = !{!3937, !3938}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3935, file: !204, line: 636, baseType: !162, size: 32)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3935, file: !204, line: 637, baseType: !3939, offset: 32)
!3939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3940, elements: !2347)
!3940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_krange", file: !145, line: 685, size: 96, elements: !3941)
!3941 = !{!3942, !3943, !3944}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !3940, file: !145, line: 686, baseType: !162, size: 32)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3940, file: !145, line: 687, baseType: !162, size: 32, offset: 32)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3940, file: !145, line: 688, baseType: !7, size: 32, offset: 64)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "range_table_list", scope: !3855, file: !204, line: 176, baseType: !3946, size: 64, offset: 768)
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3947, size: 64)
!3947 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3933)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist", scope: !3855, file: !204, line: 178, baseType: !2699, size: 64, offset: 832)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "insn_read", scope: !3855, file: !204, line: 180, baseType: !3950, size: 64, offset: 896)
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3951 = !DISubroutineType(types: !3952)
!3952 = !{!162, !218, !3854, !3953, !2699}
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_insn", file: !145, line: 491, size: 320, elements: !3955)
!3955 = !{!3956, !3957, !3958, !3959, !3960, !3961}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3954, file: !145, line: 492, baseType: !7, size: 32)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !3954, file: !145, line: 493, baseType: !7, size: 32, offset: 32)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3954, file: !145, line: 494, baseType: !2699, size: 64, offset: 64)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "subdev", scope: !3954, file: !145, line: 495, baseType: !7, size: 32, offset: 128)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "chanspec", scope: !3954, file: !145, line: 496, baseType: !7, size: 32, offset: 160)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !3954, file: !145, line: 497, baseType: !3962, size: 96, offset: 192)
!3962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 96, elements: !292)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "insn_write", scope: !3855, file: !204, line: 182, baseType: !3950, size: 64, offset: 960)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "insn_bits", scope: !3855, file: !204, line: 184, baseType: !3950, size: 64, offset: 1024)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "insn_config", scope: !3855, file: !204, line: 186, baseType: !3950, size: 64, offset: 1088)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "do_cmd", scope: !3855, file: !204, line: 191, baseType: !3967, size: 64, offset: 1152)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = !DISubroutineType(types: !3969)
!3969 = !{!162, !218, !3854}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "do_cmdtest", scope: !3855, file: !204, line: 192, baseType: !3971, size: 64, offset: 1216)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = !DISubroutineType(types: !3973)
!3973 = !{!162, !218, !3854, !3974}
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3855, file: !204, line: 195, baseType: !3967, size: 64, offset: 1280)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "cancel", scope: !3855, file: !204, line: 196, baseType: !3967, size: 64, offset: 1344)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "buf_change", scope: !3855, file: !204, line: 199, baseType: !3967, size: 64, offset: 1408)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "munge", scope: !3855, file: !204, line: 202, baseType: !3979, size: 64, offset: 1472)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = !DISubroutineType(types: !3981)
!3981 = !{null, !218, !3854, !161, !7, !7}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "async_dma_dir", scope: !3855, file: !204, line: 205, baseType: !93, size: 32, offset: 1536)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3855, file: !204, line: 207, baseType: !7, size: 32, offset: 1568)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !3855, file: !204, line: 209, baseType: !228, size: 64, offset: 1600)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3855, file: !204, line: 210, baseType: !162, size: 32, offset: 1664)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "readback", scope: !3855, file: !204, line: 212, baseType: !2699, size: 64, offset: 1728)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "mmio", scope: !219, file: !204, line: 565, baseType: !161, size: 64, offset: 1216)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "iobase", scope: !219, file: !204, line: 566, baseType: !340, size: 64, offset: 1280)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "iolen", scope: !219, file: !204, line: 567, baseType: !340, size: 64, offset: 1344)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !219, file: !204, line: 568, baseType: !7, size: 32, offset: 1408)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "read_subdev", scope: !219, file: !204, line: 570, baseType: !3854, size: 64, offset: 1472)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "write_subdev", scope: !219, file: !204, line: 571, baseType: !3854, size: 64, offset: 1536)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "async_queue", scope: !219, file: !204, line: 573, baseType: !2983, size: 64, offset: 1600)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !219, file: !204, line: 575, baseType: !3995, size: 64, offset: 1664)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = !DISubroutineType(types: !3997)
!3997 = !{!162, !218}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !219, file: !204, line: 576, baseType: !3999, size: 64, offset: 1728)
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4000 = !DISubroutineType(types: !4001)
!4001 = !{null, !218}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "insn_device_config", scope: !219, file: !204, line: 577, baseType: !4003, size: 64, offset: 1792)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = !DISubroutineType(types: !4005)
!4005 = !{!162, !218, !3953, !2699}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "get_valid_routes", scope: !219, file: !204, line: 579, baseType: !4007, size: 64, offset: 1856)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = !DISubroutineType(types: !4009)
!4009 = !{!7, !218, !7, !2699}
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_devconfig", file: !145, line: 834, size: 1184, elements: !4012)
!4012 = !{!4013, !4015}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !4011, file: !145, line: 835, baseType: !4014, size: 160)
!4014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 160, elements: !199)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !4011, file: !145, line: 836, baseType: !4016, size: 1024, offset: 160)
!4016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 1024, elements: !2246)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !203, file: !204, line: 444, baseType: !3999, size: 64, offset: 256)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "auto_attach", scope: !203, file: !204, line: 445, baseType: !4019, size: 64, offset: 320)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DISubroutineType(types: !4021)
!4021 = !{!162, !218, !340}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "num_names", scope: !203, file: !204, line: 446, baseType: !7, size: 32, offset: 384)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !203, file: !204, line: 447, baseType: !4024, size: 64, offset: 448)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !203, file: !204, line: 448, baseType: !162, size: 32, offset: 512)
!4027 = !DIGlobalVariableExpression(var: !4028, expr: !DIExpression())
!4028 = distinct !DIGlobalVariable(name: "vmk80xx_boardinfo", scope: !2, file: !3, line: 118, type: !4029, isLocal: true, isDefinition: true)
!4029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4030, size: 896, elements: !1587)
!4030 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4031)
!4031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmk80xx_board", file: !3, line: 105, size: 448, elements: !4032)
!4032 = !{!4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4031, file: !3, line: 106, baseType: !209, size: 64)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !4031, file: !3, line: 107, baseType: !107, size: 32, offset: 64)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !4031, file: !3, line: 108, baseType: !3933, size: 64, offset: 128)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "ai_nchans", scope: !4031, file: !3, line: 109, baseType: !162, size: 32, offset: 192)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "ai_maxdata", scope: !4031, file: !3, line: 110, baseType: !7, size: 32, offset: 224)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "ao_nchans", scope: !4031, file: !3, line: 111, baseType: !162, size: 32, offset: 256)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "di_nchans", scope: !4031, file: !3, line: 112, baseType: !162, size: 32, offset: 288)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "cnt_maxdata", scope: !4031, file: !3, line: 113, baseType: !7, size: 32, offset: 320)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "pwm_nchans", scope: !4031, file: !3, line: 114, baseType: !162, size: 32, offset: 352)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "pwm_maxdata", scope: !4031, file: !3, line: 115, baseType: !7, size: 32, offset: 384)
!4043 = !DIGlobalVariableExpression(var: !4044, expr: !DIExpression())
!4044 = distinct !DIGlobalVariable(name: "vmk8061_range", scope: !2, file: !3, line: 98, type: !3934, isLocal: true, isDefinition: true)
!4045 = !DIGlobalVariableExpression(var: !4046, expr: !DIExpression())
!4046 = distinct !DIGlobalVariable(name: "__key", scope: !4047, file: !4048, line: 33, type: !659, isLocal: true, isDefinition: true)
!4047 = distinct !DISubprogram(name: "sema_init", scope: !4048, file: !4048, line: 31, type: !4049, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4048 = !DIFile(filename: "./include/linux/semaphore.h", directory: "/home/lizy2001/genbc/linux")
!4049 = !DISubroutineType(types: !4050)
!4050 = !{null, !4051, !162}
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "semaphore", file: !4048, line: 15, size: 192, elements: !4053)
!4053 = !{!4054, !4055, !4056}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4052, file: !4048, line: 16, baseType: !794)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4052, file: !4048, line: 17, baseType: !7, size: 32)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !4052, file: !4048, line: 18, baseType: !237, size: 128, offset: 64)
!4057 = !DIGlobalVariableExpression(var: !4058, expr: !DIExpression())
!4058 = distinct !DIGlobalVariable(name: "vmk80xx_usb_driver", scope: !2, file: !3, line: 870, type: !4059, isLocal: true, isDefinition: true)
!4059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_driver", file: !101, line: 1184, size: 2112, elements: !4060)
!4060 = !{!4061, !4062, !4173, !4177, !4181, !4185, !4189, !4190, !4191, !4192, !4193, !4194, !4199, !4204, !4205, !4206, !4207}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4059, file: !101, line: 1185, baseType: !209, size: 64)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4059, file: !101, line: 1187, baseType: !4063, size: 64, offset: 64)
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = !DISubroutineType(types: !4065)
!4065 = !{!162, !4066, !4156}
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4067, size: 64)
!4067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface", file: !101, line: 232, size: 6272, elements: !4068)
!4068 = !{!4069, !4129, !4130, !4131, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !4067, file: !101, line: 235, baseType: !4070, size: 64)
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4071, size: 64)
!4071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_interface", file: !101, line: 82, size: 320, elements: !4072)
!4072 = !{!4073, !4085, !4086, !4088, !4128}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4071, file: !101, line: 83, baseType: !4074, size: 72)
!4074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_descriptor", file: !119, line: 389, size: 72, elements: !4075)
!4075 = !{!4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4074, file: !119, line: 390, baseType: !1366, size: 8)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4074, file: !119, line: 391, baseType: !1366, size: 8, offset: 8)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !4074, file: !119, line: 393, baseType: !1366, size: 8, offset: 16)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "bAlternateSetting", scope: !4074, file: !119, line: 394, baseType: !1366, size: 8, offset: 24)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "bNumEndpoints", scope: !4074, file: !119, line: 395, baseType: !1366, size: 8, offset: 32)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !4074, file: !119, line: 396, baseType: !1366, size: 8, offset: 40)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !4074, file: !119, line: 397, baseType: !1366, size: 8, offset: 48)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !4074, file: !119, line: 398, baseType: !1366, size: 8, offset: 56)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "iInterface", scope: !4074, file: !119, line: 399, baseType: !1366, size: 8, offset: 64)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !4071, file: !101, line: 85, baseType: !162, size: 32, offset: 96)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4071, file: !101, line: 86, baseType: !4087, size: 64, offset: 128)
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint", scope: !4071, file: !101, line: 91, baseType: !4089, size: 64, offset: 192)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_endpoint", file: !101, line: 67, size: 640, elements: !4091)
!4091 = !{!4092, !4103, !4111, !4119, !4120, !4121, !4124, !4125, !4126, !4127}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4090, file: !101, line: 68, baseType: !4093, size: 72)
!4093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_endpoint_descriptor", file: !119, line: 407, size: 72, elements: !4094)
!4094 = !{!4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102}
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4093, file: !119, line: 408, baseType: !1366, size: 8)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4093, file: !119, line: 409, baseType: !1366, size: 8, offset: 8)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "bEndpointAddress", scope: !4093, file: !119, line: 411, baseType: !1366, size: 8, offset: 16)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4093, file: !119, line: 412, baseType: !1366, size: 8, offset: 24)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "wMaxPacketSize", scope: !4093, file: !119, line: 413, baseType: !166, size: 16, offset: 32)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "bInterval", scope: !4093, file: !119, line: 414, baseType: !1366, size: 8, offset: 48)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "bRefresh", scope: !4093, file: !119, line: 418, baseType: !1366, size: 8, offset: 56)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "bSynchAddress", scope: !4093, file: !119, line: 419, baseType: !1366, size: 8, offset: 64)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "ss_ep_comp", scope: !4090, file: !101, line: 69, baseType: !4104, size: 48, offset: 72)
!4104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_ep_comp_descriptor", file: !119, line: 689, size: 48, elements: !4105)
!4105 = !{!4106, !4107, !4108, !4109, !4110}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4104, file: !119, line: 690, baseType: !1366, size: 8)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4104, file: !119, line: 691, baseType: !1366, size: 8, offset: 8)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxBurst", scope: !4104, file: !119, line: 693, baseType: !1366, size: 8, offset: 16)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4104, file: !119, line: 694, baseType: !1366, size: 8, offset: 24)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "wBytesPerInterval", scope: !4104, file: !119, line: 695, baseType: !166, size: 16, offset: 32)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_isoc_ep_comp", scope: !4090, file: !101, line: 70, baseType: !4112, size: 64, offset: 120)
!4112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_isoc_ep_comp_descriptor", file: !119, line: 677, size: 64, elements: !4113)
!4113 = !{!4114, !4115, !4116, !4117}
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4112, file: !119, line: 678, baseType: !1366, size: 8)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4112, file: !119, line: 679, baseType: !1366, size: 8, offset: 8)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "wReseved", scope: !4112, file: !119, line: 680, baseType: !166, size: 16, offset: 16)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "dwBytesPerInterval", scope: !4112, file: !119, line: 681, baseType: !4118, size: 32, offset: 32)
!4118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !167, line: 31, baseType: !433)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !4090, file: !101, line: 71, baseType: !237, size: 128, offset: 192)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !4090, file: !101, line: 72, baseType: !161, size: 64, offset: 320)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "ep_dev", scope: !4090, file: !101, line: 73, baseType: !4122, size: 64, offset: 384)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = !DICompositeType(tag: DW_TAG_structure_type, name: "ep_device", file: !101, line: 48, flags: DIFlagFwdDecl)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4090, file: !101, line: 75, baseType: !4087, size: 64, offset: 448)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !4090, file: !101, line: 76, baseType: !162, size: 32, offset: 512)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4090, file: !101, line: 77, baseType: !162, size: 32, offset: 544)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !4090, file: !101, line: 78, baseType: !162, size: 32, offset: 576)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4071, file: !101, line: 93, baseType: !291, size: 64, offset: 256)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "cur_altsetting", scope: !4067, file: !101, line: 237, baseType: !4070, size: 64, offset: 64)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !4067, file: !101, line: 239, baseType: !7, size: 32, offset: 128)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !4067, file: !101, line: 243, baseType: !4132, size: 64, offset: 192)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_assoc_descriptor", file: !119, line: 783, size: 64, elements: !4134)
!4134 = !{!4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4133, file: !119, line: 784, baseType: !1366, size: 8)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4133, file: !119, line: 785, baseType: !1366, size: 8, offset: 8)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "bFirstInterface", scope: !4133, file: !119, line: 787, baseType: !1366, size: 8, offset: 16)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceCount", scope: !4133, file: !119, line: 788, baseType: !1366, size: 8, offset: 24)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionClass", scope: !4133, file: !119, line: 789, baseType: !1366, size: 8, offset: 32)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionSubClass", scope: !4133, file: !119, line: 790, baseType: !1366, size: 8, offset: 40)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionProtocol", scope: !4133, file: !119, line: 791, baseType: !1366, size: 8, offset: 48)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "iFunction", scope: !4133, file: !119, line: 792, baseType: !1366, size: 8, offset: 56)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4067, file: !101, line: 245, baseType: !162, size: 32, offset: 256)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !4067, file: !101, line: 247, baseType: !100, size: 32, offset: 288)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_files_created", scope: !4067, file: !101, line: 248, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "ep_devs_created", scope: !4067, file: !101, line: 249, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !4067, file: !101, line: 250, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "needs_remote_wakeup", scope: !4067, file: !101, line: 251, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "needs_altsetting0", scope: !4067, file: !101, line: 252, baseType: !7, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "needs_binding", scope: !4067, file: !101, line: 253, baseType: !7, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "resetting_device", scope: !4067, file: !101, line: 254, baseType: !7, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !4067, file: !101, line: 255, baseType: !7, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4067, file: !101, line: 257, baseType: !229, size: 5568, offset: 384)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "usb_dev", scope: !4067, file: !101, line: 258, baseType: !228, size: 64, offset: 5952)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "reset_ws", scope: !4067, file: !101, line: 259, baseType: !1975, size: 256, offset: 6016)
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4158)
!4158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_id", file: !3479, line: 121, size: 256, elements: !4159)
!4159 = !{!4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172}
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "match_flags", scope: !4158, file: !3479, line: 123, baseType: !163, size: 16)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !4158, file: !3479, line: 126, baseType: !163, size: 16, offset: 16)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !4158, file: !3479, line: 127, baseType: !163, size: 16, offset: 32)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_lo", scope: !4158, file: !3479, line: 128, baseType: !163, size: 16, offset: 48)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_hi", scope: !4158, file: !3479, line: 129, baseType: !163, size: 16, offset: 64)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !4158, file: !3479, line: 132, baseType: !1366, size: 8, offset: 80)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !4158, file: !3479, line: 133, baseType: !1366, size: 8, offset: 88)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !4158, file: !3479, line: 134, baseType: !1366, size: 8, offset: 96)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !4158, file: !3479, line: 137, baseType: !1366, size: 8, offset: 104)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !4158, file: !3479, line: 138, baseType: !1366, size: 8, offset: 112)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !4158, file: !3479, line: 139, baseType: !1366, size: 8, offset: 120)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !4158, file: !3479, line: 142, baseType: !1366, size: 8, offset: 128)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !4158, file: !3479, line: 145, baseType: !3498, size: 64, align: 64, offset: 192)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4059, file: !101, line: 1190, baseType: !4174, size: 64, offset: 128)
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = !DISubroutineType(types: !4176)
!4176 = !{null, !4066}
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4059, file: !101, line: 1192, baseType: !4178, size: 64, offset: 192)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{!162, !4066, !7, !161}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4059, file: !101, line: 1195, baseType: !4182, size: 64, offset: 256)
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4183, size: 64)
!4183 = !DISubroutineType(types: !4184)
!4184 = !{!162, !4066, !3509}
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4059, file: !101, line: 1196, baseType: !4186, size: 64, offset: 320)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4187 = !DISubroutineType(types: !4188)
!4188 = !{!162, !4066}
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !4059, file: !101, line: 1197, baseType: !4186, size: 64, offset: 384)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "pre_reset", scope: !4059, file: !101, line: 1199, baseType: !4186, size: 64, offset: 448)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "post_reset", scope: !4059, file: !101, line: 1200, baseType: !4186, size: 64, offset: 512)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4059, file: !101, line: 1202, baseType: !4156, size: 64, offset: 576)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4059, file: !101, line: 1203, baseType: !344, size: 64, offset: 640)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4059, file: !101, line: 1205, baseType: !4195, size: 128, offset: 704)
!4195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_dynids", file: !101, line: 1091, size: 128, elements: !4196)
!4196 = !{!4197, !4198}
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4195, file: !101, line: 1092, baseType: !250)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4195, file: !101, line: 1093, baseType: !237, size: 128)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "drvwrap", scope: !4059, file: !101, line: 1206, baseType: !4200, size: 1216, offset: 832)
!4200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usbdrv_wrap", file: !101, line: 1113, size: 1216, elements: !4201)
!4201 = !{!4202, !4203}
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4200, file: !101, line: 1114, baseType: !3467, size: 1152)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "for_devices", scope: !4200, file: !101, line: 1115, baseType: !162, size: 32, offset: 1152)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "no_dynamic_id", scope: !4059, file: !101, line: 1207, baseType: !7, size: 1, offset: 2048, flags: DIFlagBitField, extraData: i64 2048)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "supports_autosuspend", scope: !4059, file: !101, line: 1208, baseType: !7, size: 1, offset: 2049, flags: DIFlagBitField, extraData: i64 2048)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "disable_hub_initiated_lpm", scope: !4059, file: !101, line: 1209, baseType: !7, size: 1, offset: 2050, flags: DIFlagBitField, extraData: i64 2048)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "soft_unbind", scope: !4059, file: !101, line: 1210, baseType: !7, size: 1, offset: 2051, flags: DIFlagBitField, extraData: i64 2048)
!4208 = !DIGlobalVariableExpression(var: !4209, expr: !DIExpression())
!4209 = distinct !DIGlobalVariable(name: "vmk80xx_usb_id_table", scope: !2, file: !3, line: 853, type: !4210, isLocal: true, isDefinition: true)
!4210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4157, size: 3328, elements: !4211)
!4211 = !{!4212}
!4212 = !DISubrange(count: 13)
!4213 = !{i32 7, !"Dwarf Version", i32 4}
!4214 = !{i32 2, !"Debug Info Version", i32 3}
!4215 = !{i32 1, !"wchar_size", i32 2}
!4216 = !{i32 1, !"Code Model", i32 2}
!4217 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4218 = distinct !DISubprogram(name: "vmk80xx_driver_init", scope: !3, file: !3, line: 876, type: !4219, scopeLine: 876, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4219 = !DISubroutineType(types: !4220)
!4220 = !{!162}
!4221 = !DILocation(line: 876, column: 1, scope: !4218)
!4222 = distinct !DISubprogram(name: "vmk80xx_driver_exit", scope: !3, file: !3, line: 876, type: !177, scopeLine: 876, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4223 = !DILocation(line: 876, column: 1, scope: !4222)
!4224 = distinct !DISubprogram(name: "vmk80xx_detach", scope: !3, file: !3, line: 822, type: !4000, scopeLine: 823, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4225 = !DILocalVariable(name: "dev", arg: 1, scope: !4224, file: !3, line: 822, type: !218)
!4226 = !DILocation(line: 822, column: 50, scope: !4224)
!4227 = !DILocalVariable(name: "intf", scope: !4224, file: !3, line: 824, type: !4066)
!4228 = !DILocation(line: 824, column: 24, scope: !4224)
!4229 = !DILocation(line: 824, column: 55, scope: !4224)
!4230 = !DILocation(line: 824, column: 31, scope: !4224)
!4231 = !DILocalVariable(name: "devpriv", scope: !4224, file: !3, line: 825, type: !4232)
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4233, size: 64)
!4233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmk80xx_private", file: !3, line: 143, size: 512, elements: !4234)
!4234 = !{!4235, !4237, !4238, !4239, !4240, !4241}
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "ep_rx", scope: !4233, file: !3, line: 144, baseType: !4236, size: 64)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4093, size: 64)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "ep_tx", scope: !4233, file: !3, line: 145, baseType: !4236, size: 64, offset: 64)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "limit_sem", scope: !4233, file: !3, line: 146, baseType: !4052, size: 192, offset: 128)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "usb_rx_buf", scope: !4233, file: !3, line: 147, baseType: !4087, size: 64, offset: 320)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "usb_tx_buf", scope: !4233, file: !3, line: 148, baseType: !4087, size: 64, offset: 384)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !4233, file: !3, line: 149, baseType: !107, size: 32, offset: 448)
!4242 = !DILocation(line: 825, column: 26, scope: !4224)
!4243 = !DILocation(line: 825, column: 36, scope: !4224)
!4244 = !DILocation(line: 825, column: 41, scope: !4224)
!4245 = !DILocation(line: 827, column: 7, scope: !4246)
!4246 = distinct !DILexicalBlock(scope: !4224, file: !3, line: 827, column: 6)
!4247 = !DILocation(line: 827, column: 6, scope: !4224)
!4248 = !DILocation(line: 828, column: 3, scope: !4246)
!4249 = !DILocation(line: 830, column: 8, scope: !4224)
!4250 = !DILocation(line: 830, column: 17, scope: !4224)
!4251 = !DILocation(line: 830, column: 2, scope: !4224)
!4252 = !DILocation(line: 832, column: 19, scope: !4224)
!4253 = !DILocation(line: 832, column: 2, scope: !4224)
!4254 = !DILocation(line: 834, column: 8, scope: !4224)
!4255 = !DILocation(line: 834, column: 17, scope: !4224)
!4256 = !DILocation(line: 834, column: 2, scope: !4224)
!4257 = !DILocation(line: 835, column: 8, scope: !4224)
!4258 = !DILocation(line: 835, column: 17, scope: !4224)
!4259 = !DILocation(line: 835, column: 2, scope: !4224)
!4260 = !DILocation(line: 837, column: 6, scope: !4224)
!4261 = !DILocation(line: 837, column: 15, scope: !4224)
!4262 = !DILocation(line: 837, column: 2, scope: !4224)
!4263 = !DILocation(line: 838, column: 1, scope: !4224)
!4264 = distinct !DISubprogram(name: "vmk80xx_auto_attach", scope: !3, file: !3, line: 783, type: !4020, scopeLine: 785, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4265 = !DILocalVariable(name: "dev", arg: 1, scope: !4264, file: !3, line: 783, type: !218)
!4266 = !DILocation(line: 783, column: 54, scope: !4264)
!4267 = !DILocalVariable(name: "context", arg: 2, scope: !4264, file: !3, line: 784, type: !340)
!4268 = !DILocation(line: 784, column: 25, scope: !4264)
!4269 = !DILocalVariable(name: "intf", scope: !4264, file: !3, line: 786, type: !4066)
!4270 = !DILocation(line: 786, column: 24, scope: !4264)
!4271 = !DILocation(line: 786, column: 55, scope: !4264)
!4272 = !DILocation(line: 786, column: 31, scope: !4264)
!4273 = !DILocalVariable(name: "board", scope: !4264, file: !3, line: 787, type: !4274)
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4030, size: 64)
!4275 = !DILocation(line: 787, column: 30, scope: !4264)
!4276 = !DILocalVariable(name: "devpriv", scope: !4264, file: !3, line: 788, type: !4232)
!4277 = !DILocation(line: 788, column: 26, scope: !4264)
!4278 = !DILocalVariable(name: "ret", scope: !4264, file: !3, line: 789, type: !162)
!4279 = !DILocation(line: 789, column: 6, scope: !4264)
!4280 = !DILocation(line: 791, column: 6, scope: !4281)
!4281 = distinct !DILexicalBlock(scope: !4264, file: !3, line: 791, column: 6)
!4282 = !DILocation(line: 791, column: 14, scope: !4281)
!4283 = !DILocation(line: 791, column: 6, scope: !4264)
!4284 = !DILocation(line: 792, column: 30, scope: !4281)
!4285 = !DILocation(line: 792, column: 12, scope: !4281)
!4286 = !DILocation(line: 792, column: 9, scope: !4281)
!4287 = !DILocation(line: 792, column: 3, scope: !4281)
!4288 = !DILocation(line: 793, column: 7, scope: !4289)
!4289 = distinct !DILexicalBlock(scope: !4264, file: !3, line: 793, column: 6)
!4290 = !DILocation(line: 793, column: 6, scope: !4264)
!4291 = !DILocation(line: 794, column: 3, scope: !4289)
!4292 = !DILocation(line: 795, column: 19, scope: !4264)
!4293 = !DILocation(line: 795, column: 2, scope: !4264)
!4294 = !DILocation(line: 795, column: 7, scope: !4264)
!4295 = !DILocation(line: 795, column: 17, scope: !4264)
!4296 = !DILocation(line: 796, column: 20, scope: !4264)
!4297 = !DILocation(line: 796, column: 27, scope: !4264)
!4298 = !DILocation(line: 796, column: 2, scope: !4264)
!4299 = !DILocation(line: 796, column: 7, scope: !4264)
!4300 = !DILocation(line: 796, column: 18, scope: !4264)
!4301 = !DILocation(line: 798, column: 33, scope: !4264)
!4302 = !DILocation(line: 798, column: 12, scope: !4264)
!4303 = !DILocation(line: 798, column: 10, scope: !4264)
!4304 = !DILocation(line: 799, column: 7, scope: !4305)
!4305 = distinct !DILexicalBlock(scope: !4264, file: !3, line: 799, column: 6)
!4306 = !DILocation(line: 799, column: 6, scope: !4264)
!4307 = !DILocation(line: 800, column: 3, scope: !4305)
!4308 = !DILocation(line: 802, column: 19, scope: !4264)
!4309 = !DILocation(line: 802, column: 26, scope: !4264)
!4310 = !DILocation(line: 802, column: 2, scope: !4264)
!4311 = !DILocation(line: 802, column: 11, scope: !4264)
!4312 = !DILocation(line: 802, column: 17, scope: !4264)
!4313 = !DILocation(line: 804, column: 13, scope: !4264)
!4314 = !DILocation(line: 804, column: 22, scope: !4264)
!4315 = !DILocation(line: 804, column: 2, scope: !4264)
!4316 = !DILocation(line: 806, column: 35, scope: !4264)
!4317 = !DILocation(line: 806, column: 8, scope: !4264)
!4318 = !DILocation(line: 806, column: 6, scope: !4264)
!4319 = !DILocation(line: 807, column: 6, scope: !4320)
!4320 = distinct !DILexicalBlock(scope: !4264, file: !3, line: 807, column: 6)
!4321 = !DILocation(line: 807, column: 6, scope: !4264)
!4322 = !DILocation(line: 808, column: 10, scope: !4320)
!4323 = !DILocation(line: 808, column: 3, scope: !4320)
!4324 = !DILocation(line: 810, column: 34, scope: !4264)
!4325 = !DILocation(line: 810, column: 8, scope: !4264)
!4326 = !DILocation(line: 810, column: 6, scope: !4264)
!4327 = !DILocation(line: 811, column: 6, scope: !4328)
!4328 = distinct !DILexicalBlock(scope: !4264, file: !3, line: 811, column: 6)
!4329 = !DILocation(line: 811, column: 6, scope: !4264)
!4330 = !DILocation(line: 812, column: 10, scope: !4328)
!4331 = !DILocation(line: 812, column: 3, scope: !4328)
!4332 = !DILocation(line: 814, column: 19, scope: !4264)
!4333 = !DILocation(line: 814, column: 25, scope: !4264)
!4334 = !DILocation(line: 814, column: 2, scope: !4264)
!4335 = !DILocation(line: 816, column: 6, scope: !4336)
!4336 = distinct !DILexicalBlock(scope: !4264, file: !3, line: 816, column: 6)
!4337 = !DILocation(line: 816, column: 15, scope: !4336)
!4338 = !DILocation(line: 816, column: 21, scope: !4336)
!4339 = !DILocation(line: 816, column: 6, scope: !4264)
!4340 = !DILocation(line: 817, column: 24, scope: !4336)
!4341 = !DILocation(line: 817, column: 3, scope: !4336)
!4342 = !DILocation(line: 819, column: 33, scope: !4264)
!4343 = !DILocation(line: 819, column: 9, scope: !4264)
!4344 = !DILocation(line: 819, column: 2, scope: !4264)
!4345 = !DILocation(line: 820, column: 1, scope: !4264)
!4346 = distinct !DISubprogram(name: "usb_set_intfdata", scope: !101, file: !101, line: 268, type: !4347, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4347 = !DISubroutineType(types: !4348)
!4348 = !{null, !4066, !161}
!4349 = !DILocalVariable(name: "intf", arg: 1, scope: !4346, file: !101, line: 268, type: !4066)
!4350 = !DILocation(line: 268, column: 59, scope: !4346)
!4351 = !DILocalVariable(name: "data", arg: 2, scope: !4346, file: !101, line: 268, type: !161)
!4352 = !DILocation(line: 268, column: 71, scope: !4346)
!4353 = !DILocation(line: 270, column: 19, scope: !4346)
!4354 = !DILocation(line: 270, column: 25, scope: !4346)
!4355 = !DILocation(line: 270, column: 30, scope: !4346)
!4356 = !DILocation(line: 270, column: 2, scope: !4346)
!4357 = !DILocation(line: 271, column: 1, scope: !4346)
!4358 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !73, file: !73, line: 660, type: !4359, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4359 = !DISubroutineType(types: !4360)
!4360 = !{null, !228, !161}
!4361 = !DILocalVariable(name: "dev", arg: 1, scope: !4358, file: !73, line: 660, type: !228)
!4362 = !DILocation(line: 660, column: 51, scope: !4358)
!4363 = !DILocalVariable(name: "data", arg: 2, scope: !4358, file: !73, line: 660, type: !161)
!4364 = !DILocation(line: 660, column: 62, scope: !4358)
!4365 = !DILocation(line: 662, column: 21, scope: !4358)
!4366 = !DILocation(line: 662, column: 2, scope: !4358)
!4367 = !DILocation(line: 662, column: 7, scope: !4358)
!4368 = !DILocation(line: 662, column: 19, scope: !4358)
!4369 = !DILocation(line: 663, column: 1, scope: !4358)
!4370 = !DILocalVariable(name: "sem", arg: 1, scope: !4047, file: !4048, line: 31, type: !4051)
!4371 = !DILocation(line: 31, column: 48, scope: !4047)
!4372 = !DILocalVariable(name: "val", arg: 2, scope: !4047, file: !4048, line: 31, type: !162)
!4373 = !DILocation(line: 31, column: 57, scope: !4047)
!4374 = !DILocation(line: 34, column: 3, scope: !4047)
!4375 = !DILocation(line: 34, column: 28, scope: !4047)
!4376 = !DILocation(line: 34, column: 9, scope: !4047)
!4377 = !DILocation(line: 35, column: 2, scope: !4047)
!4378 = !DILocation(line: 35, column: 2, scope: !4379)
!4379 = distinct !DILexicalBlock(scope: !4047, file: !4048, line: 35, column: 2)
!4380 = !DILocation(line: 36, column: 1, scope: !4047)
!4381 = distinct !DISubprogram(name: "vmk80xx_find_usb_endpoints", scope: !3, file: !3, line: 638, type: !3996, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4382 = !DILocalVariable(name: "dev", arg: 1, scope: !4381, file: !3, line: 638, type: !218)
!4383 = !DILocation(line: 638, column: 61, scope: !4381)
!4384 = !DILocalVariable(name: "devpriv", scope: !4381, file: !3, line: 640, type: !4232)
!4385 = !DILocation(line: 640, column: 26, scope: !4381)
!4386 = !DILocation(line: 640, column: 36, scope: !4381)
!4387 = !DILocation(line: 640, column: 41, scope: !4381)
!4388 = !DILocalVariable(name: "intf", scope: !4381, file: !3, line: 641, type: !4066)
!4389 = !DILocation(line: 641, column: 24, scope: !4381)
!4390 = !DILocation(line: 641, column: 55, scope: !4381)
!4391 = !DILocation(line: 641, column: 31, scope: !4381)
!4392 = !DILocalVariable(name: "iface_desc", scope: !4381, file: !3, line: 642, type: !4070)
!4393 = !DILocation(line: 642, column: 29, scope: !4381)
!4394 = !DILocation(line: 642, column: 42, scope: !4381)
!4395 = !DILocation(line: 642, column: 48, scope: !4381)
!4396 = !DILocalVariable(name: "ep_desc", scope: !4381, file: !3, line: 643, type: !4236)
!4397 = !DILocation(line: 643, column: 34, scope: !4381)
!4398 = !DILocalVariable(name: "i", scope: !4381, file: !3, line: 644, type: !162)
!4399 = !DILocation(line: 644, column: 6, scope: !4381)
!4400 = !DILocation(line: 646, column: 6, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4381, file: !3, line: 646, column: 6)
!4402 = !DILocation(line: 646, column: 18, scope: !4401)
!4403 = !DILocation(line: 646, column: 23, scope: !4401)
!4404 = !DILocation(line: 646, column: 37, scope: !4401)
!4405 = !DILocation(line: 646, column: 6, scope: !4381)
!4406 = !DILocation(line: 647, column: 3, scope: !4401)
!4407 = !DILocation(line: 649, column: 9, scope: !4408)
!4408 = distinct !DILexicalBlock(scope: !4381, file: !3, line: 649, column: 2)
!4409 = !DILocation(line: 649, column: 7, scope: !4408)
!4410 = !DILocation(line: 649, column: 14, scope: !4411)
!4411 = distinct !DILexicalBlock(scope: !4408, file: !3, line: 649, column: 2)
!4412 = !DILocation(line: 649, column: 18, scope: !4411)
!4413 = !DILocation(line: 649, column: 30, scope: !4411)
!4414 = !DILocation(line: 649, column: 35, scope: !4411)
!4415 = !DILocation(line: 649, column: 16, scope: !4411)
!4416 = !DILocation(line: 649, column: 2, scope: !4408)
!4417 = !DILocation(line: 650, column: 14, scope: !4418)
!4418 = distinct !DILexicalBlock(scope: !4411, file: !3, line: 649, column: 55)
!4419 = !DILocation(line: 650, column: 26, scope: !4418)
!4420 = !DILocation(line: 650, column: 35, scope: !4418)
!4421 = !DILocation(line: 650, column: 38, scope: !4418)
!4422 = !DILocation(line: 650, column: 11, scope: !4418)
!4423 = !DILocation(line: 652, column: 30, scope: !4424)
!4424 = distinct !DILexicalBlock(scope: !4418, file: !3, line: 652, column: 7)
!4425 = !DILocation(line: 652, column: 7, scope: !4424)
!4426 = !DILocation(line: 652, column: 39, scope: !4424)
!4427 = !DILocation(line: 653, column: 31, scope: !4424)
!4428 = !DILocation(line: 653, column: 7, scope: !4424)
!4429 = !DILocation(line: 652, column: 7, scope: !4418)
!4430 = !DILocation(line: 654, column: 9, scope: !4431)
!4431 = distinct !DILexicalBlock(scope: !4432, file: !3, line: 654, column: 8)
!4432 = distinct !DILexicalBlock(scope: !4424, file: !3, line: 653, column: 41)
!4433 = !DILocation(line: 654, column: 18, scope: !4431)
!4434 = !DILocation(line: 654, column: 8, scope: !4432)
!4435 = !DILocation(line: 655, column: 22, scope: !4431)
!4436 = !DILocation(line: 655, column: 5, scope: !4431)
!4437 = !DILocation(line: 655, column: 14, scope: !4431)
!4438 = !DILocation(line: 655, column: 20, scope: !4431)
!4439 = !DILocation(line: 656, column: 4, scope: !4432)
!4440 = !DILocation(line: 659, column: 31, scope: !4441)
!4441 = distinct !DILexicalBlock(scope: !4418, file: !3, line: 659, column: 7)
!4442 = !DILocation(line: 659, column: 7, scope: !4441)
!4443 = !DILocation(line: 659, column: 40, scope: !4441)
!4444 = !DILocation(line: 660, column: 32, scope: !4441)
!4445 = !DILocation(line: 660, column: 7, scope: !4441)
!4446 = !DILocation(line: 659, column: 7, scope: !4418)
!4447 = !DILocation(line: 661, column: 9, scope: !4448)
!4448 = distinct !DILexicalBlock(scope: !4449, file: !3, line: 661, column: 8)
!4449 = distinct !DILexicalBlock(scope: !4441, file: !3, line: 660, column: 42)
!4450 = !DILocation(line: 661, column: 18, scope: !4448)
!4451 = !DILocation(line: 661, column: 8, scope: !4449)
!4452 = !DILocation(line: 662, column: 22, scope: !4448)
!4453 = !DILocation(line: 662, column: 5, scope: !4448)
!4454 = !DILocation(line: 662, column: 14, scope: !4448)
!4455 = !DILocation(line: 662, column: 20, scope: !4448)
!4456 = !DILocation(line: 663, column: 4, scope: !4449)
!4457 = !DILocation(line: 665, column: 2, scope: !4418)
!4458 = !DILocation(line: 649, column: 51, scope: !4411)
!4459 = !DILocation(line: 649, column: 2, scope: !4411)
!4460 = distinct !{!4460, !4416, !4461}
!4461 = !DILocation(line: 665, column: 2, scope: !4408)
!4462 = !DILocation(line: 667, column: 7, scope: !4463)
!4463 = distinct !DILexicalBlock(scope: !4381, file: !3, line: 667, column: 6)
!4464 = !DILocation(line: 667, column: 16, scope: !4463)
!4465 = !DILocation(line: 667, column: 22, scope: !4463)
!4466 = !DILocation(line: 667, column: 26, scope: !4463)
!4467 = !DILocation(line: 667, column: 35, scope: !4463)
!4468 = !DILocation(line: 667, column: 6, scope: !4381)
!4469 = !DILocation(line: 668, column: 3, scope: !4463)
!4470 = !DILocation(line: 670, column: 25, scope: !4471)
!4471 = distinct !DILexicalBlock(scope: !4381, file: !3, line: 670, column: 6)
!4472 = !DILocation(line: 670, column: 34, scope: !4471)
!4473 = !DILocation(line: 670, column: 7, scope: !4471)
!4474 = !DILocation(line: 670, column: 41, scope: !4471)
!4475 = !DILocation(line: 670, column: 63, scope: !4471)
!4476 = !DILocation(line: 670, column: 72, scope: !4471)
!4477 = !DILocation(line: 670, column: 45, scope: !4471)
!4478 = !DILocation(line: 670, column: 6, scope: !4381)
!4479 = !DILocation(line: 671, column: 3, scope: !4471)
!4480 = !DILocation(line: 673, column: 2, scope: !4381)
!4481 = !DILocation(line: 674, column: 1, scope: !4381)
!4482 = distinct !DISubprogram(name: "vmk80xx_alloc_usb_buffers", scope: !3, file: !3, line: 676, type: !3996, scopeLine: 677, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4483 = !DILocalVariable(name: "dev", arg: 1, scope: !4482, file: !3, line: 676, type: !218)
!4484 = !DILocation(line: 676, column: 60, scope: !4482)
!4485 = !DILocalVariable(name: "devpriv", scope: !4482, file: !3, line: 678, type: !4232)
!4486 = !DILocation(line: 678, column: 26, scope: !4482)
!4487 = !DILocation(line: 678, column: 36, scope: !4482)
!4488 = !DILocation(line: 678, column: 41, scope: !4482)
!4489 = !DILocalVariable(name: "size", scope: !4482, file: !3, line: 679, type: !337)
!4490 = !DILocation(line: 679, column: 9, scope: !4482)
!4491 = !DILocation(line: 681, column: 27, scope: !4482)
!4492 = !DILocation(line: 681, column: 36, scope: !4482)
!4493 = !DILocation(line: 681, column: 9, scope: !4482)
!4494 = !DILocation(line: 681, column: 7, scope: !4482)
!4495 = !DILocation(line: 682, column: 32, scope: !4482)
!4496 = !DILocation(line: 682, column: 24, scope: !4482)
!4497 = !DILocation(line: 682, column: 2, scope: !4482)
!4498 = !DILocation(line: 682, column: 11, scope: !4482)
!4499 = !DILocation(line: 682, column: 22, scope: !4482)
!4500 = !DILocation(line: 683, column: 7, scope: !4501)
!4501 = distinct !DILexicalBlock(scope: !4482, file: !3, line: 683, column: 6)
!4502 = !DILocation(line: 683, column: 16, scope: !4501)
!4503 = !DILocation(line: 683, column: 6, scope: !4482)
!4504 = !DILocation(line: 684, column: 3, scope: !4501)
!4505 = !DILocation(line: 686, column: 27, scope: !4482)
!4506 = !DILocation(line: 686, column: 36, scope: !4482)
!4507 = !DILocation(line: 686, column: 9, scope: !4482)
!4508 = !DILocation(line: 686, column: 7, scope: !4482)
!4509 = !DILocation(line: 687, column: 32, scope: !4482)
!4510 = !DILocation(line: 687, column: 24, scope: !4482)
!4511 = !DILocation(line: 687, column: 2, scope: !4482)
!4512 = !DILocation(line: 687, column: 11, scope: !4482)
!4513 = !DILocation(line: 687, column: 22, scope: !4482)
!4514 = !DILocation(line: 688, column: 7, scope: !4515)
!4515 = distinct !DILexicalBlock(scope: !4482, file: !3, line: 688, column: 6)
!4516 = !DILocation(line: 688, column: 16, scope: !4515)
!4517 = !DILocation(line: 688, column: 6, scope: !4482)
!4518 = !DILocation(line: 689, column: 3, scope: !4515)
!4519 = !DILocation(line: 691, column: 2, scope: !4482)
!4520 = !DILocation(line: 692, column: 1, scope: !4482)
!4521 = distinct !DISubprogram(name: "vmk80xx_reset_device", scope: !3, file: !3, line: 218, type: !3996, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4522 = !DILocalVariable(name: "dev", arg: 1, scope: !4521, file: !3, line: 218, type: !218)
!4523 = !DILocation(line: 218, column: 55, scope: !4521)
!4524 = !DILocalVariable(name: "devpriv", scope: !4521, file: !3, line: 220, type: !4232)
!4525 = !DILocation(line: 220, column: 26, scope: !4521)
!4526 = !DILocation(line: 220, column: 36, scope: !4521)
!4527 = !DILocation(line: 220, column: 41, scope: !4521)
!4528 = !DILocalVariable(name: "size", scope: !4521, file: !3, line: 221, type: !337)
!4529 = !DILocation(line: 221, column: 9, scope: !4521)
!4530 = !DILocalVariable(name: "retval", scope: !4521, file: !3, line: 222, type: !162)
!4531 = !DILocation(line: 222, column: 6, scope: !4521)
!4532 = !DILocation(line: 224, column: 27, scope: !4521)
!4533 = !DILocation(line: 224, column: 36, scope: !4521)
!4534 = !DILocation(line: 224, column: 9, scope: !4521)
!4535 = !DILocation(line: 224, column: 7, scope: !4521)
!4536 = !DILocation(line: 225, column: 9, scope: !4521)
!4537 = !DILocation(line: 225, column: 18, scope: !4521)
!4538 = !DILocation(line: 225, column: 33, scope: !4521)
!4539 = !DILocation(line: 225, column: 2, scope: !4521)
!4540 = !DILocation(line: 226, column: 32, scope: !4521)
!4541 = !DILocation(line: 226, column: 11, scope: !4521)
!4542 = !DILocation(line: 226, column: 9, scope: !4521)
!4543 = !DILocation(line: 227, column: 6, scope: !4544)
!4544 = distinct !DILexicalBlock(scope: !4521, file: !3, line: 227, column: 6)
!4545 = !DILocation(line: 227, column: 6, scope: !4521)
!4546 = !DILocation(line: 228, column: 10, scope: !4544)
!4547 = !DILocation(line: 228, column: 3, scope: !4544)
!4548 = !DILocation(line: 230, column: 30, scope: !4521)
!4549 = !DILocation(line: 230, column: 9, scope: !4521)
!4550 = !DILocation(line: 230, column: 2, scope: !4521)
!4551 = !DILocation(line: 231, column: 1, scope: !4521)
!4552 = distinct !DISubprogram(name: "vmk80xx_init_subdevices", scope: !3, file: !3, line: 694, type: !3996, scopeLine: 695, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4553 = !DILocalVariable(name: "dev", arg: 1, scope: !4552, file: !3, line: 694, type: !218)
!4554 = !DILocation(line: 694, column: 58, scope: !4552)
!4555 = !DILocalVariable(name: "board", scope: !4552, file: !3, line: 696, type: !4274)
!4556 = !DILocation(line: 696, column: 30, scope: !4552)
!4557 = !DILocation(line: 696, column: 38, scope: !4552)
!4558 = !DILocation(line: 696, column: 43, scope: !4552)
!4559 = !DILocalVariable(name: "devpriv", scope: !4552, file: !3, line: 697, type: !4232)
!4560 = !DILocation(line: 697, column: 26, scope: !4552)
!4561 = !DILocation(line: 697, column: 36, scope: !4552)
!4562 = !DILocation(line: 697, column: 41, scope: !4552)
!4563 = !DILocalVariable(name: "s", scope: !4552, file: !3, line: 698, type: !3854)
!4564 = !DILocation(line: 698, column: 27, scope: !4552)
!4565 = !DILocalVariable(name: "n_subd", scope: !4552, file: !3, line: 699, type: !162)
!4566 = !DILocation(line: 699, column: 6, scope: !4552)
!4567 = !DILocalVariable(name: "ret", scope: !4552, file: !3, line: 700, type: !162)
!4568 = !DILocation(line: 700, column: 6, scope: !4552)
!4569 = !DILocation(line: 702, column: 8, scope: !4552)
!4570 = !DILocation(line: 702, column: 17, scope: !4552)
!4571 = !DILocation(line: 702, column: 2, scope: !4552)
!4572 = !DILocation(line: 704, column: 6, scope: !4573)
!4573 = distinct !DILexicalBlock(scope: !4552, file: !3, line: 704, column: 6)
!4574 = !DILocation(line: 704, column: 15, scope: !4573)
!4575 = !DILocation(line: 704, column: 21, scope: !4573)
!4576 = !DILocation(line: 704, column: 6, scope: !4552)
!4577 = !DILocation(line: 705, column: 10, scope: !4573)
!4578 = !DILocation(line: 705, column: 3, scope: !4573)
!4579 = !DILocation(line: 707, column: 10, scope: !4573)
!4580 = !DILocation(line: 708, column: 32, scope: !4552)
!4581 = !DILocation(line: 708, column: 37, scope: !4552)
!4582 = !DILocation(line: 708, column: 8, scope: !4552)
!4583 = !DILocation(line: 708, column: 6, scope: !4552)
!4584 = !DILocation(line: 709, column: 6, scope: !4585)
!4585 = distinct !DILexicalBlock(scope: !4552, file: !3, line: 709, column: 6)
!4586 = !DILocation(line: 709, column: 6, scope: !4552)
!4587 = !DILocation(line: 710, column: 7, scope: !4588)
!4588 = distinct !DILexicalBlock(scope: !4585, file: !3, line: 709, column: 11)
!4589 = !DILocation(line: 710, column: 16, scope: !4588)
!4590 = !DILocation(line: 710, column: 3, scope: !4588)
!4591 = !DILocation(line: 711, column: 10, scope: !4588)
!4592 = !DILocation(line: 711, column: 3, scope: !4588)
!4593 = !DILocation(line: 715, column: 7, scope: !4552)
!4594 = !DILocation(line: 715, column: 12, scope: !4552)
!4595 = !DILocation(line: 715, column: 4, scope: !4552)
!4596 = !DILocation(line: 716, column: 2, scope: !4552)
!4597 = !DILocation(line: 716, column: 5, scope: !4552)
!4598 = !DILocation(line: 716, column: 11, scope: !4552)
!4599 = !DILocation(line: 717, column: 2, scope: !4552)
!4600 = !DILocation(line: 717, column: 5, scope: !4552)
!4601 = !DILocation(line: 717, column: 18, scope: !4552)
!4602 = !DILocation(line: 718, column: 14, scope: !4552)
!4603 = !DILocation(line: 718, column: 21, scope: !4552)
!4604 = !DILocation(line: 718, column: 2, scope: !4552)
!4605 = !DILocation(line: 718, column: 5, scope: !4552)
!4606 = !DILocation(line: 718, column: 12, scope: !4552)
!4607 = !DILocation(line: 719, column: 15, scope: !4552)
!4608 = !DILocation(line: 719, column: 22, scope: !4552)
!4609 = !DILocation(line: 719, column: 2, scope: !4552)
!4610 = !DILocation(line: 719, column: 5, scope: !4552)
!4611 = !DILocation(line: 719, column: 13, scope: !4552)
!4612 = !DILocation(line: 720, column: 19, scope: !4552)
!4613 = !DILocation(line: 720, column: 26, scope: !4552)
!4614 = !DILocation(line: 720, column: 2, scope: !4552)
!4615 = !DILocation(line: 720, column: 5, scope: !4552)
!4616 = !DILocation(line: 720, column: 17, scope: !4552)
!4617 = !DILocation(line: 721, column: 2, scope: !4552)
!4618 = !DILocation(line: 721, column: 5, scope: !4552)
!4619 = !DILocation(line: 721, column: 15, scope: !4552)
!4620 = !DILocation(line: 724, column: 7, scope: !4552)
!4621 = !DILocation(line: 724, column: 12, scope: !4552)
!4622 = !DILocation(line: 724, column: 4, scope: !4552)
!4623 = !DILocation(line: 725, column: 2, scope: !4552)
!4624 = !DILocation(line: 725, column: 5, scope: !4552)
!4625 = !DILocation(line: 725, column: 11, scope: !4552)
!4626 = !DILocation(line: 726, column: 2, scope: !4552)
!4627 = !DILocation(line: 726, column: 5, scope: !4552)
!4628 = !DILocation(line: 726, column: 18, scope: !4552)
!4629 = !DILocation(line: 727, column: 14, scope: !4552)
!4630 = !DILocation(line: 727, column: 21, scope: !4552)
!4631 = !DILocation(line: 727, column: 2, scope: !4552)
!4632 = !DILocation(line: 727, column: 5, scope: !4552)
!4633 = !DILocation(line: 727, column: 12, scope: !4552)
!4634 = !DILocation(line: 728, column: 2, scope: !4552)
!4635 = !DILocation(line: 728, column: 5, scope: !4552)
!4636 = !DILocation(line: 728, column: 13, scope: !4552)
!4637 = !DILocation(line: 729, column: 19, scope: !4552)
!4638 = !DILocation(line: 729, column: 26, scope: !4552)
!4639 = !DILocation(line: 729, column: 2, scope: !4552)
!4640 = !DILocation(line: 729, column: 5, scope: !4552)
!4641 = !DILocation(line: 729, column: 17, scope: !4552)
!4642 = !DILocation(line: 730, column: 2, scope: !4552)
!4643 = !DILocation(line: 730, column: 5, scope: !4552)
!4644 = !DILocation(line: 730, column: 16, scope: !4552)
!4645 = !DILocation(line: 731, column: 6, scope: !4646)
!4646 = distinct !DILexicalBlock(scope: !4552, file: !3, line: 731, column: 6)
!4647 = !DILocation(line: 731, column: 15, scope: !4646)
!4648 = !DILocation(line: 731, column: 21, scope: !4646)
!4649 = !DILocation(line: 731, column: 6, scope: !4552)
!4650 = !DILocation(line: 732, column: 3, scope: !4651)
!4651 = distinct !DILexicalBlock(scope: !4646, file: !3, line: 731, column: 39)
!4652 = !DILocation(line: 732, column: 6, scope: !4651)
!4653 = !DILocation(line: 732, column: 19, scope: !4651)
!4654 = !DILocation(line: 733, column: 3, scope: !4651)
!4655 = !DILocation(line: 733, column: 6, scope: !4651)
!4656 = !DILocation(line: 733, column: 16, scope: !4651)
!4657 = !DILocation(line: 734, column: 2, scope: !4651)
!4658 = !DILocation(line: 737, column: 7, scope: !4552)
!4659 = !DILocation(line: 737, column: 12, scope: !4552)
!4660 = !DILocation(line: 737, column: 4, scope: !4552)
!4661 = !DILocation(line: 738, column: 2, scope: !4552)
!4662 = !DILocation(line: 738, column: 5, scope: !4552)
!4663 = !DILocation(line: 738, column: 11, scope: !4552)
!4664 = !DILocation(line: 739, column: 2, scope: !4552)
!4665 = !DILocation(line: 739, column: 5, scope: !4552)
!4666 = !DILocation(line: 739, column: 18, scope: !4552)
!4667 = !DILocation(line: 740, column: 14, scope: !4552)
!4668 = !DILocation(line: 740, column: 21, scope: !4552)
!4669 = !DILocation(line: 740, column: 2, scope: !4552)
!4670 = !DILocation(line: 740, column: 5, scope: !4552)
!4671 = !DILocation(line: 740, column: 12, scope: !4552)
!4672 = !DILocation(line: 741, column: 2, scope: !4552)
!4673 = !DILocation(line: 741, column: 5, scope: !4552)
!4674 = !DILocation(line: 741, column: 13, scope: !4552)
!4675 = !DILocation(line: 742, column: 2, scope: !4552)
!4676 = !DILocation(line: 742, column: 5, scope: !4552)
!4677 = !DILocation(line: 742, column: 17, scope: !4552)
!4678 = !DILocation(line: 743, column: 2, scope: !4552)
!4679 = !DILocation(line: 743, column: 5, scope: !4552)
!4680 = !DILocation(line: 743, column: 15, scope: !4552)
!4681 = !DILocation(line: 746, column: 7, scope: !4552)
!4682 = !DILocation(line: 746, column: 12, scope: !4552)
!4683 = !DILocation(line: 746, column: 4, scope: !4552)
!4684 = !DILocation(line: 747, column: 2, scope: !4552)
!4685 = !DILocation(line: 747, column: 5, scope: !4552)
!4686 = !DILocation(line: 747, column: 11, scope: !4552)
!4687 = !DILocation(line: 748, column: 2, scope: !4552)
!4688 = !DILocation(line: 748, column: 5, scope: !4552)
!4689 = !DILocation(line: 748, column: 18, scope: !4552)
!4690 = !DILocation(line: 749, column: 2, scope: !4552)
!4691 = !DILocation(line: 749, column: 5, scope: !4552)
!4692 = !DILocation(line: 749, column: 12, scope: !4552)
!4693 = !DILocation(line: 750, column: 2, scope: !4552)
!4694 = !DILocation(line: 750, column: 5, scope: !4552)
!4695 = !DILocation(line: 750, column: 13, scope: !4552)
!4696 = !DILocation(line: 751, column: 2, scope: !4552)
!4697 = !DILocation(line: 751, column: 5, scope: !4552)
!4698 = !DILocation(line: 751, column: 17, scope: !4552)
!4699 = !DILocation(line: 752, column: 2, scope: !4552)
!4700 = !DILocation(line: 752, column: 5, scope: !4552)
!4701 = !DILocation(line: 752, column: 15, scope: !4552)
!4702 = !DILocation(line: 755, column: 7, scope: !4552)
!4703 = !DILocation(line: 755, column: 12, scope: !4552)
!4704 = !DILocation(line: 755, column: 4, scope: !4552)
!4705 = !DILocation(line: 756, column: 2, scope: !4552)
!4706 = !DILocation(line: 756, column: 5, scope: !4552)
!4707 = !DILocation(line: 756, column: 11, scope: !4552)
!4708 = !DILocation(line: 757, column: 2, scope: !4552)
!4709 = !DILocation(line: 757, column: 5, scope: !4552)
!4710 = !DILocation(line: 757, column: 18, scope: !4552)
!4711 = !DILocation(line: 758, column: 2, scope: !4552)
!4712 = !DILocation(line: 758, column: 5, scope: !4552)
!4713 = !DILocation(line: 758, column: 12, scope: !4552)
!4714 = !DILocation(line: 759, column: 15, scope: !4552)
!4715 = !DILocation(line: 759, column: 22, scope: !4552)
!4716 = !DILocation(line: 759, column: 2, scope: !4552)
!4717 = !DILocation(line: 759, column: 5, scope: !4552)
!4718 = !DILocation(line: 759, column: 13, scope: !4552)
!4719 = !DILocation(line: 760, column: 2, scope: !4552)
!4720 = !DILocation(line: 760, column: 5, scope: !4552)
!4721 = !DILocation(line: 760, column: 15, scope: !4552)
!4722 = !DILocation(line: 761, column: 2, scope: !4552)
!4723 = !DILocation(line: 761, column: 5, scope: !4552)
!4724 = !DILocation(line: 761, column: 17, scope: !4552)
!4725 = !DILocation(line: 762, column: 6, scope: !4726)
!4726 = distinct !DILexicalBlock(scope: !4552, file: !3, line: 762, column: 6)
!4727 = !DILocation(line: 762, column: 15, scope: !4726)
!4728 = !DILocation(line: 762, column: 21, scope: !4726)
!4729 = !DILocation(line: 762, column: 6, scope: !4552)
!4730 = !DILocation(line: 763, column: 3, scope: !4731)
!4731 = distinct !DILexicalBlock(scope: !4726, file: !3, line: 762, column: 39)
!4732 = !DILocation(line: 763, column: 6, scope: !4731)
!4733 = !DILocation(line: 763, column: 19, scope: !4731)
!4734 = !DILocation(line: 764, column: 3, scope: !4731)
!4735 = !DILocation(line: 764, column: 6, scope: !4731)
!4736 = !DILocation(line: 764, column: 17, scope: !4731)
!4737 = !DILocation(line: 765, column: 2, scope: !4731)
!4738 = !DILocation(line: 768, column: 6, scope: !4739)
!4739 = distinct !DILexicalBlock(scope: !4552, file: !3, line: 768, column: 6)
!4740 = !DILocation(line: 768, column: 15, scope: !4739)
!4741 = !DILocation(line: 768, column: 21, scope: !4739)
!4742 = !DILocation(line: 768, column: 6, scope: !4552)
!4743 = !DILocation(line: 769, column: 8, scope: !4744)
!4744 = distinct !DILexicalBlock(scope: !4739, file: !3, line: 768, column: 39)
!4745 = !DILocation(line: 769, column: 13, scope: !4744)
!4746 = !DILocation(line: 769, column: 5, scope: !4744)
!4747 = !DILocation(line: 770, column: 3, scope: !4744)
!4748 = !DILocation(line: 770, column: 6, scope: !4744)
!4749 = !DILocation(line: 770, column: 12, scope: !4744)
!4750 = !DILocation(line: 771, column: 3, scope: !4744)
!4751 = !DILocation(line: 771, column: 6, scope: !4744)
!4752 = !DILocation(line: 771, column: 19, scope: !4744)
!4753 = !DILocation(line: 772, column: 15, scope: !4744)
!4754 = !DILocation(line: 772, column: 22, scope: !4744)
!4755 = !DILocation(line: 772, column: 3, scope: !4744)
!4756 = !DILocation(line: 772, column: 6, scope: !4744)
!4757 = !DILocation(line: 772, column: 13, scope: !4744)
!4758 = !DILocation(line: 773, column: 16, scope: !4744)
!4759 = !DILocation(line: 773, column: 23, scope: !4744)
!4760 = !DILocation(line: 773, column: 3, scope: !4744)
!4761 = !DILocation(line: 773, column: 6, scope: !4744)
!4762 = !DILocation(line: 773, column: 14, scope: !4744)
!4763 = !DILocation(line: 774, column: 3, scope: !4744)
!4764 = !DILocation(line: 774, column: 6, scope: !4744)
!4765 = !DILocation(line: 774, column: 16, scope: !4744)
!4766 = !DILocation(line: 775, column: 3, scope: !4744)
!4767 = !DILocation(line: 775, column: 6, scope: !4744)
!4768 = !DILocation(line: 775, column: 17, scope: !4744)
!4769 = !DILocation(line: 776, column: 2, scope: !4744)
!4770 = !DILocation(line: 778, column: 6, scope: !4552)
!4771 = !DILocation(line: 778, column: 15, scope: !4552)
!4772 = !DILocation(line: 778, column: 2, scope: !4552)
!4773 = !DILocation(line: 780, column: 2, scope: !4552)
!4774 = !DILocation(line: 781, column: 1, scope: !4552)
!4775 = distinct !DISubprogram(name: "usb_endpoint_is_int_in", scope: !119, file: !119, line: 596, type: !4776, scopeLine: 598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4776 = !DISubroutineType(types: !4777)
!4777 = !{!162, !4778}
!4778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4779, size: 64)
!4779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4093)
!4780 = !DILocalVariable(name: "epd", arg: 1, scope: !4775, file: !119, line: 597, type: !4778)
!4781 = !DILocation(line: 597, column: 43, scope: !4775)
!4782 = !DILocation(line: 599, column: 31, scope: !4775)
!4783 = !DILocation(line: 599, column: 9, scope: !4775)
!4784 = !DILocation(line: 599, column: 36, scope: !4775)
!4785 = !DILocation(line: 599, column: 59, scope: !4775)
!4786 = !DILocation(line: 599, column: 39, scope: !4775)
!4787 = !DILocation(line: 0, scope: !4775)
!4788 = !DILocation(line: 599, column: 2, scope: !4775)
!4789 = distinct !DISubprogram(name: "usb_endpoint_is_bulk_in", scope: !119, file: !119, line: 570, type: !4776, scopeLine: 572, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4790 = !DILocalVariable(name: "epd", arg: 1, scope: !4789, file: !119, line: 571, type: !4778)
!4791 = !DILocation(line: 571, column: 43, scope: !4789)
!4792 = !DILocation(line: 573, column: 32, scope: !4789)
!4793 = !DILocation(line: 573, column: 9, scope: !4789)
!4794 = !DILocation(line: 573, column: 37, scope: !4789)
!4795 = !DILocation(line: 573, column: 60, scope: !4789)
!4796 = !DILocation(line: 573, column: 40, scope: !4789)
!4797 = !DILocation(line: 0, scope: !4789)
!4798 = !DILocation(line: 573, column: 2, scope: !4789)
!4799 = distinct !DISubprogram(name: "usb_endpoint_is_int_out", scope: !119, file: !119, line: 609, type: !4776, scopeLine: 611, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4800 = !DILocalVariable(name: "epd", arg: 1, scope: !4799, file: !119, line: 610, type: !4778)
!4801 = !DILocation(line: 610, column: 43, scope: !4799)
!4802 = !DILocation(line: 612, column: 31, scope: !4799)
!4803 = !DILocation(line: 612, column: 9, scope: !4799)
!4804 = !DILocation(line: 612, column: 36, scope: !4799)
!4805 = !DILocation(line: 612, column: 60, scope: !4799)
!4806 = !DILocation(line: 612, column: 39, scope: !4799)
!4807 = !DILocation(line: 0, scope: !4799)
!4808 = !DILocation(line: 612, column: 2, scope: !4799)
!4809 = distinct !DISubprogram(name: "usb_endpoint_is_bulk_out", scope: !119, file: !119, line: 583, type: !4776, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4810 = !DILocalVariable(name: "epd", arg: 1, scope: !4809, file: !119, line: 584, type: !4778)
!4811 = !DILocation(line: 584, column: 43, scope: !4809)
!4812 = !DILocation(line: 586, column: 32, scope: !4809)
!4813 = !DILocation(line: 586, column: 9, scope: !4809)
!4814 = !DILocation(line: 586, column: 37, scope: !4809)
!4815 = !DILocation(line: 586, column: 61, scope: !4809)
!4816 = !DILocation(line: 586, column: 40, scope: !4809)
!4817 = !DILocation(line: 0, scope: !4809)
!4818 = !DILocation(line: 586, column: 2, scope: !4809)
!4819 = distinct !DISubprogram(name: "usb_endpoint_maxp", scope: !119, file: !119, line: 647, type: !4776, scopeLine: 648, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4820 = !DILocalVariable(name: "epd", arg: 1, scope: !4819, file: !119, line: 647, type: !4778)
!4821 = !DILocation(line: 647, column: 75, scope: !4819)
!4822 = !DILocation(line: 649, column: 9, scope: !4819)
!4823 = !DILocation(line: 649, column: 44, scope: !4819)
!4824 = !DILocation(line: 649, column: 2, scope: !4819)
!4825 = distinct !DISubprogram(name: "usb_endpoint_xfer_int", scope: !119, file: !119, line: 542, type: !4776, scopeLine: 544, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4826 = !DILocalVariable(name: "epd", arg: 1, scope: !4825, file: !119, line: 543, type: !4778)
!4827 = !DILocation(line: 543, column: 43, scope: !4825)
!4828 = !DILocation(line: 545, column: 11, scope: !4825)
!4829 = !DILocation(line: 545, column: 16, scope: !4825)
!4830 = !DILocation(line: 545, column: 29, scope: !4825)
!4831 = !DILocation(line: 545, column: 59, scope: !4825)
!4832 = !DILocation(line: 545, column: 2, scope: !4825)
!4833 = distinct !DISubprogram(name: "usb_endpoint_dir_in", scope: !119, file: !119, line: 492, type: !4776, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4834 = !DILocalVariable(name: "epd", arg: 1, scope: !4833, file: !119, line: 492, type: !4778)
!4835 = !DILocation(line: 492, column: 77, scope: !4833)
!4836 = !DILocation(line: 494, column: 11, scope: !4833)
!4837 = !DILocation(line: 494, column: 16, scope: !4833)
!4838 = !DILocation(line: 494, column: 33, scope: !4833)
!4839 = !DILocation(line: 494, column: 58, scope: !4833)
!4840 = !DILocation(line: 494, column: 2, scope: !4833)
!4841 = distinct !DISubprogram(name: "usb_endpoint_xfer_bulk", scope: !119, file: !119, line: 515, type: !4776, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4842 = !DILocalVariable(name: "epd", arg: 1, scope: !4841, file: !119, line: 516, type: !4778)
!4843 = !DILocation(line: 516, column: 43, scope: !4841)
!4844 = !DILocation(line: 518, column: 11, scope: !4841)
!4845 = !DILocation(line: 518, column: 16, scope: !4841)
!4846 = !DILocation(line: 518, column: 29, scope: !4841)
!4847 = !DILocation(line: 518, column: 59, scope: !4841)
!4848 = !DILocation(line: 518, column: 2, scope: !4841)
!4849 = distinct !DISubprogram(name: "usb_endpoint_dir_out", scope: !119, file: !119, line: 503, type: !4776, scopeLine: 505, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4850 = !DILocalVariable(name: "epd", arg: 1, scope: !4849, file: !119, line: 504, type: !4778)
!4851 = !DILocation(line: 504, column: 43, scope: !4849)
!4852 = !DILocation(line: 506, column: 11, scope: !4849)
!4853 = !DILocation(line: 506, column: 16, scope: !4849)
!4854 = !DILocation(line: 506, column: 33, scope: !4849)
!4855 = !DILocation(line: 506, column: 58, scope: !4849)
!4856 = !DILocation(line: 506, column: 2, scope: !4849)
!4857 = distinct !DISubprogram(name: "kzalloc", scope: !112, file: !112, line: 662, type: !4858, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4858 = !DISubroutineType(types: !4859)
!4859 = !{!161, !337, !168}
!4860 = !DILocalVariable(name: "s", arg: 1, scope: !4861, file: !112, line: 445, type: !948)
!4861 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !112, file: !112, line: 445, type: !4862, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4862 = !DISubroutineType(types: !4863)
!4863 = !{!161, !948, !168, !337}
!4864 = !DILocation(line: 445, column: 72, scope: !4861, inlinedAt: !4865)
!4865 = distinct !DILocation(line: 552, column: 10, scope: !4866, inlinedAt: !4869)
!4866 = distinct !DILexicalBlock(scope: !4867, file: !112, line: 540, column: 34)
!4867 = distinct !DILexicalBlock(scope: !4868, file: !112, line: 540, column: 6)
!4868 = distinct !DISubprogram(name: "kmalloc", scope: !112, file: !112, line: 538, type: !4858, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4869 = distinct !DILocation(line: 664, column: 9, scope: !4857)
!4870 = !DILocalVariable(name: "flags", arg: 2, scope: !4861, file: !112, line: 446, type: !168)
!4871 = !DILocation(line: 446, column: 9, scope: !4861, inlinedAt: !4865)
!4872 = !DILocalVariable(name: "size", arg: 3, scope: !4861, file: !112, line: 446, type: !337)
!4873 = !DILocation(line: 446, column: 23, scope: !4861, inlinedAt: !4865)
!4874 = !DILocalVariable(name: "ret", scope: !4861, file: !112, line: 448, type: !161)
!4875 = !DILocation(line: 448, column: 8, scope: !4861, inlinedAt: !4865)
!4876 = !DILocalVariable(name: "flags", arg: 1, scope: !4877, file: !112, line: 318, type: !168)
!4877 = distinct !DISubprogram(name: "kmalloc_type", scope: !112, file: !112, line: 318, type: !4878, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4878 = !DISubroutineType(types: !4879)
!4879 = !{!111, !168}
!4880 = !DILocation(line: 318, column: 67, scope: !4877, inlinedAt: !4881)
!4881 = distinct !DILocation(line: 553, column: 20, scope: !4866, inlinedAt: !4869)
!4882 = !DILocalVariable(name: "size", arg: 1, scope: !4883, file: !112, line: 346, type: !337)
!4883 = distinct !DISubprogram(name: "kmalloc_index", scope: !112, file: !112, line: 346, type: !4884, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4884 = !DISubroutineType(types: !4885)
!4885 = !{!7, !337}
!4886 = !DILocation(line: 346, column: 58, scope: !4883, inlinedAt: !4887)
!4887 = distinct !DILocation(line: 547, column: 11, scope: !4866, inlinedAt: !4869)
!4888 = !DILocalVariable(name: "size", arg: 1, scope: !4889, file: !112, line: 472, type: !337)
!4889 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !112, file: !112, line: 472, type: !4890, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4890 = !DISubroutineType(types: !4891)
!4891 = !{!161, !337, !168, !7}
!4892 = !DILocation(line: 472, column: 28, scope: !4889, inlinedAt: !4893)
!4893 = distinct !DILocation(line: 481, column: 9, scope: !4894, inlinedAt: !4895)
!4894 = distinct !DISubprogram(name: "kmalloc_large", scope: !112, file: !112, line: 478, type: !4858, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4895 = distinct !DILocation(line: 545, column: 11, scope: !4896, inlinedAt: !4869)
!4896 = distinct !DILexicalBlock(scope: !4866, file: !112, line: 544, column: 7)
!4897 = !DILocalVariable(name: "flags", arg: 2, scope: !4889, file: !112, line: 472, type: !168)
!4898 = !DILocation(line: 472, column: 40, scope: !4889, inlinedAt: !4893)
!4899 = !DILocalVariable(name: "order", arg: 3, scope: !4889, file: !112, line: 472, type: !7)
!4900 = !DILocation(line: 472, column: 60, scope: !4889, inlinedAt: !4893)
!4901 = !DILocalVariable(name: "size", arg: 1, scope: !4894, file: !112, line: 478, type: !337)
!4902 = !DILocation(line: 478, column: 51, scope: !4894, inlinedAt: !4895)
!4903 = !DILocalVariable(name: "flags", arg: 2, scope: !4894, file: !112, line: 478, type: !168)
!4904 = !DILocation(line: 478, column: 63, scope: !4894, inlinedAt: !4895)
!4905 = !DILocalVariable(name: "order", scope: !4894, file: !112, line: 480, type: !7)
!4906 = !DILocation(line: 480, column: 15, scope: !4894, inlinedAt: !4895)
!4907 = !DILocalVariable(name: "size", arg: 1, scope: !4868, file: !112, line: 538, type: !337)
!4908 = !DILocation(line: 538, column: 45, scope: !4868, inlinedAt: !4869)
!4909 = !DILocalVariable(name: "flags", arg: 2, scope: !4868, file: !112, line: 538, type: !168)
!4910 = !DILocation(line: 538, column: 57, scope: !4868, inlinedAt: !4869)
!4911 = !DILocalVariable(name: "index", scope: !4866, file: !112, line: 542, type: !7)
!4912 = !DILocation(line: 542, column: 16, scope: !4866, inlinedAt: !4869)
!4913 = !DILocalVariable(name: "size", arg: 1, scope: !4857, file: !112, line: 662, type: !337)
!4914 = !DILocation(line: 662, column: 36, scope: !4857)
!4915 = !DILocalVariable(name: "flags", arg: 2, scope: !4857, file: !112, line: 662, type: !168)
!4916 = !DILocation(line: 662, column: 48, scope: !4857)
!4917 = !DILocation(line: 664, column: 17, scope: !4857)
!4918 = !DILocation(line: 664, column: 23, scope: !4857)
!4919 = !DILocation(line: 664, column: 29, scope: !4857)
!4920 = !DILocation(line: 540, column: 27, scope: !4867, inlinedAt: !4869)
!4921 = !DILocation(line: 540, column: 6, scope: !4867, inlinedAt: !4869)
!4922 = !DILocation(line: 540, column: 6, scope: !4868, inlinedAt: !4869)
!4923 = !DILocation(line: 544, column: 7, scope: !4896, inlinedAt: !4869)
!4924 = !DILocation(line: 544, column: 12, scope: !4896, inlinedAt: !4869)
!4925 = !DILocation(line: 544, column: 7, scope: !4866, inlinedAt: !4869)
!4926 = !DILocation(line: 545, column: 25, scope: !4896, inlinedAt: !4869)
!4927 = !DILocation(line: 545, column: 31, scope: !4896, inlinedAt: !4869)
!4928 = !DILocation(line: 480, column: 33, scope: !4894, inlinedAt: !4895)
!4929 = !DILocation(line: 480, column: 23, scope: !4894, inlinedAt: !4895)
!4930 = !DILocation(line: 481, column: 29, scope: !4894, inlinedAt: !4895)
!4931 = !DILocation(line: 481, column: 35, scope: !4894, inlinedAt: !4895)
!4932 = !DILocation(line: 481, column: 42, scope: !4894, inlinedAt: !4895)
!4933 = !DILocation(line: 474, column: 23, scope: !4889, inlinedAt: !4893)
!4934 = !DILocation(line: 474, column: 29, scope: !4889, inlinedAt: !4893)
!4935 = !DILocation(line: 474, column: 36, scope: !4889, inlinedAt: !4893)
!4936 = !DILocation(line: 474, column: 9, scope: !4889, inlinedAt: !4893)
!4937 = !DILocation(line: 545, column: 4, scope: !4896, inlinedAt: !4869)
!4938 = !DILocation(line: 547, column: 25, scope: !4866, inlinedAt: !4869)
!4939 = !DILocation(line: 348, column: 7, scope: !4940, inlinedAt: !4887)
!4940 = distinct !DILexicalBlock(scope: !4883, file: !112, line: 348, column: 6)
!4941 = !DILocation(line: 348, column: 6, scope: !4883, inlinedAt: !4887)
!4942 = !DILocation(line: 349, column: 3, scope: !4940, inlinedAt: !4887)
!4943 = !DILocation(line: 351, column: 6, scope: !4944, inlinedAt: !4887)
!4944 = distinct !DILexicalBlock(scope: !4883, file: !112, line: 351, column: 6)
!4945 = !DILocation(line: 351, column: 11, scope: !4944, inlinedAt: !4887)
!4946 = !DILocation(line: 351, column: 6, scope: !4883, inlinedAt: !4887)
!4947 = !DILocation(line: 352, column: 3, scope: !4944, inlinedAt: !4887)
!4948 = !DILocation(line: 354, column: 32, scope: !4949, inlinedAt: !4887)
!4949 = distinct !DILexicalBlock(scope: !4883, file: !112, line: 354, column: 6)
!4950 = !DILocation(line: 354, column: 37, scope: !4949, inlinedAt: !4887)
!4951 = !DILocation(line: 354, column: 42, scope: !4949, inlinedAt: !4887)
!4952 = !DILocation(line: 354, column: 45, scope: !4949, inlinedAt: !4887)
!4953 = !DILocation(line: 354, column: 50, scope: !4949, inlinedAt: !4887)
!4954 = !DILocation(line: 354, column: 6, scope: !4883, inlinedAt: !4887)
!4955 = !DILocation(line: 355, column: 3, scope: !4949, inlinedAt: !4887)
!4956 = !DILocation(line: 356, column: 32, scope: !4957, inlinedAt: !4887)
!4957 = distinct !DILexicalBlock(scope: !4883, file: !112, line: 356, column: 6)
!4958 = !DILocation(line: 356, column: 37, scope: !4957, inlinedAt: !4887)
!4959 = !DILocation(line: 356, column: 43, scope: !4957, inlinedAt: !4887)
!4960 = !DILocation(line: 356, column: 46, scope: !4957, inlinedAt: !4887)
!4961 = !DILocation(line: 356, column: 51, scope: !4957, inlinedAt: !4887)
!4962 = !DILocation(line: 356, column: 6, scope: !4883, inlinedAt: !4887)
!4963 = !DILocation(line: 357, column: 3, scope: !4957, inlinedAt: !4887)
!4964 = !DILocation(line: 358, column: 6, scope: !4965, inlinedAt: !4887)
!4965 = distinct !DILexicalBlock(scope: !4883, file: !112, line: 358, column: 6)
!4966 = !DILocation(line: 358, column: 11, scope: !4965, inlinedAt: !4887)
!4967 = !DILocation(line: 358, column: 6, scope: !4883, inlinedAt: !4887)
!4968 = !DILocation(line: 358, column: 26, scope: !4965, inlinedAt: !4887)
!4969 = !DILocation(line: 359, column: 6, scope: !4970, inlinedAt: !4887)
!4970 = distinct !DILexicalBlock(scope: !4883, file: !112, line: 359, column: 6)
!4971 = !DILocation(line: 359, column: 11, scope: !4970, inlinedAt: !4887)
!4972 = !DILocation(line: 359, column: 6, scope: !4883, inlinedAt: !4887)
!4973 = !DILocation(line: 359, column: 26, scope: !4970, inlinedAt: !4887)
!4974 = !DILocation(line: 360, column: 6, scope: !4975, inlinedAt: !4887)
!4975 = distinct !DILexicalBlock(scope: !4883, file: !112, line: 360, column: 6)
!4976 = !DILocation(line: 360, column: 11, scope: !4975, inlinedAt: !4887)
!4977 = !DILocation(line: 360, column: 6, scope: !4883, inlinedAt: !4887)
!4978 = !DILocation(line: 360, column: 26, scope: !4975, inlinedAt: !4887)
!4979 = !DILocation(line: 361, column: 6, scope: !4980, inlinedAt: !4887)
!4980 = distinct !DILexicalBlock(scope: !4883, file: !112, line: 361, column: 6)
!4981 = !DILocation(line: 361, column: 11, scope: !4980, inlinedAt: !4887)
!4982 = !DILocation(line: 361, column: 6, scope: !4883, inlinedAt: !4887)
!4983 = !DILocation(line: 361, column: 26, scope: !4980, inlinedAt: !4887)
!4984 = !DILocation(line: 362, column: 6, scope: !4985, inlinedAt: !4887)
!4985 = distinct !DILexicalBlock(scope: !4883, file: !112, line: 362, column: 6)
!4986 = !DILocation(line: 362, column: 11, scope: !4985, inlinedAt: !4887)
!4987 = !DILocation(line: 362, column: 6, scope: !4883, inlinedAt: !4887)
!4988 = !DILocation(line: 362, column: 26, scope: !4985, inlinedAt: !4887)
!4989 = !DILocation(line: 363, column: 6, scope: !4990, inlinedAt: !4887)
!4990 = distinct !DILexicalBlock(scope: !4883, file: !112, line: 363, column: 6)
!4991 = !DILocation(line: 363, column: 11, scope: !4990, inlinedAt: !4887)
!4992 = !DILocation(line: 363, column: 6, scope: !4883, inlinedAt: !4887)
!4993 = !DILocation(line: 363, column: 26, scope: !4990, inlinedAt: !4887)
!4994 = !DILocation(line: 364, column: 6, scope: !4995, inlinedAt: !4887)
!4995 = distinct !DILexicalBlock(scope: !4883, file: !112, line: 364, column: 6)
!4996 = !DILocation(line: 364, column: 11, scope: !4995, inlinedAt: !4887)
!4997 = !DILocation(line: 364, column: 6, scope: !4883, inlinedAt: !4887)
!4998 = !DILocation(line: 364, column: 26, scope: !4995, inlinedAt: !4887)
!4999 = !DILocation(line: 365, column: 6, scope: !5000, inlinedAt: !4887)
!5000 = distinct !DILexicalBlock(scope: !4883, file: !112, line: 365, column: 6)
!5001 = !DILocation(line: 365, column: 11, scope: !5000, inlinedAt: !4887)
!5002 = !DILocation(line: 365, column: 6, scope: !4883, inlinedAt: !4887)
!5003 = !DILocation(line: 365, column: 26, scope: !5000, inlinedAt: !4887)
!5004 = !DILocation(line: 366, column: 6, scope: !5005, inlinedAt: !4887)
!5005 = distinct !DILexicalBlock(scope: !4883, file: !112, line: 366, column: 6)
!5006 = !DILocation(line: 366, column: 11, scope: !5005, inlinedAt: !4887)
!5007 = !DILocation(line: 366, column: 6, scope: !4883, inlinedAt: !4887)
!5008 = !DILocation(line: 366, column: 26, scope: !5005, inlinedAt: !4887)
!5009 = !DILocation(line: 367, column: 6, scope: !5010, inlinedAt: !4887)
!5010 = distinct !DILexicalBlock(scope: !4883, file: !112, line: 367, column: 6)
!5011 = !DILocation(line: 367, column: 11, scope: !5010, inlinedAt: !4887)
!5012 = !DILocation(line: 367, column: 6, scope: !4883, inlinedAt: !4887)
!5013 = !DILocation(line: 367, column: 26, scope: !5010, inlinedAt: !4887)
!5014 = !DILocation(line: 368, column: 6, scope: !5015, inlinedAt: !4887)
!5015 = distinct !DILexicalBlock(scope: !4883, file: !112, line: 368, column: 6)
!5016 = !DILocation(line: 368, column: 11, scope: !5015, inlinedAt: !4887)
!5017 = !DILocation(line: 368, column: 6, scope: !4883, inlinedAt: !4887)
!5018 = !DILocation(line: 368, column: 26, scope: !5015, inlinedAt: !4887)
!5019 = !DILocation(line: 369, column: 6, scope: !5020, inlinedAt: !4887)
!5020 = distinct !DILexicalBlock(scope: !4883, file: !112, line: 369, column: 6)
!5021 = !DILocation(line: 369, column: 11, scope: !5020, inlinedAt: !4887)
!5022 = !DILocation(line: 369, column: 6, scope: !4883, inlinedAt: !4887)
!5023 = !DILocation(line: 369, column: 26, scope: !5020, inlinedAt: !4887)
!5024 = !DILocation(line: 370, column: 6, scope: !5025, inlinedAt: !4887)
!5025 = distinct !DILexicalBlock(scope: !4883, file: !112, line: 370, column: 6)
!5026 = !DILocation(line: 370, column: 11, scope: !5025, inlinedAt: !4887)
!5027 = !DILocation(line: 370, column: 6, scope: !4883, inlinedAt: !4887)
!5028 = !DILocation(line: 370, column: 26, scope: !5025, inlinedAt: !4887)
!5029 = !DILocation(line: 371, column: 6, scope: !5030, inlinedAt: !4887)
!5030 = distinct !DILexicalBlock(scope: !4883, file: !112, line: 371, column: 6)
!5031 = !DILocation(line: 371, column: 11, scope: !5030, inlinedAt: !4887)
!5032 = !DILocation(line: 371, column: 6, scope: !4883, inlinedAt: !4887)
!5033 = !DILocation(line: 371, column: 26, scope: !5030, inlinedAt: !4887)
!5034 = !DILocation(line: 372, column: 6, scope: !5035, inlinedAt: !4887)
!5035 = distinct !DILexicalBlock(scope: !4883, file: !112, line: 372, column: 6)
!5036 = !DILocation(line: 372, column: 11, scope: !5035, inlinedAt: !4887)
!5037 = !DILocation(line: 372, column: 6, scope: !4883, inlinedAt: !4887)
!5038 = !DILocation(line: 372, column: 26, scope: !5035, inlinedAt: !4887)
!5039 = !DILocation(line: 373, column: 6, scope: !5040, inlinedAt: !4887)
!5040 = distinct !DILexicalBlock(scope: !4883, file: !112, line: 373, column: 6)
!5041 = !DILocation(line: 373, column: 11, scope: !5040, inlinedAt: !4887)
!5042 = !DILocation(line: 373, column: 6, scope: !4883, inlinedAt: !4887)
!5043 = !DILocation(line: 373, column: 26, scope: !5040, inlinedAt: !4887)
!5044 = !DILocation(line: 374, column: 6, scope: !5045, inlinedAt: !4887)
!5045 = distinct !DILexicalBlock(scope: !4883, file: !112, line: 374, column: 6)
!5046 = !DILocation(line: 374, column: 11, scope: !5045, inlinedAt: !4887)
!5047 = !DILocation(line: 374, column: 6, scope: !4883, inlinedAt: !4887)
!5048 = !DILocation(line: 374, column: 26, scope: !5045, inlinedAt: !4887)
!5049 = !DILocation(line: 375, column: 6, scope: !5050, inlinedAt: !4887)
!5050 = distinct !DILexicalBlock(scope: !4883, file: !112, line: 375, column: 6)
!5051 = !DILocation(line: 375, column: 11, scope: !5050, inlinedAt: !4887)
!5052 = !DILocation(line: 375, column: 6, scope: !4883, inlinedAt: !4887)
!5053 = !DILocation(line: 375, column: 27, scope: !5050, inlinedAt: !4887)
!5054 = !DILocation(line: 376, column: 6, scope: !5055, inlinedAt: !4887)
!5055 = distinct !DILexicalBlock(scope: !4883, file: !112, line: 376, column: 6)
!5056 = !DILocation(line: 376, column: 11, scope: !5055, inlinedAt: !4887)
!5057 = !DILocation(line: 376, column: 6, scope: !4883, inlinedAt: !4887)
!5058 = !DILocation(line: 376, column: 32, scope: !5055, inlinedAt: !4887)
!5059 = !DILocation(line: 377, column: 6, scope: !5060, inlinedAt: !4887)
!5060 = distinct !DILexicalBlock(scope: !4883, file: !112, line: 377, column: 6)
!5061 = !DILocation(line: 377, column: 11, scope: !5060, inlinedAt: !4887)
!5062 = !DILocation(line: 377, column: 6, scope: !4883, inlinedAt: !4887)
!5063 = !DILocation(line: 377, column: 32, scope: !5060, inlinedAt: !4887)
!5064 = !DILocation(line: 378, column: 6, scope: !5065, inlinedAt: !4887)
!5065 = distinct !DILexicalBlock(scope: !4883, file: !112, line: 378, column: 6)
!5066 = !DILocation(line: 378, column: 11, scope: !5065, inlinedAt: !4887)
!5067 = !DILocation(line: 378, column: 6, scope: !4883, inlinedAt: !4887)
!5068 = !DILocation(line: 378, column: 32, scope: !5065, inlinedAt: !4887)
!5069 = !DILocation(line: 379, column: 6, scope: !5070, inlinedAt: !4887)
!5070 = distinct !DILexicalBlock(scope: !4883, file: !112, line: 379, column: 6)
!5071 = !DILocation(line: 379, column: 11, scope: !5070, inlinedAt: !4887)
!5072 = !DILocation(line: 379, column: 6, scope: !4883, inlinedAt: !4887)
!5073 = !DILocation(line: 379, column: 33, scope: !5070, inlinedAt: !4887)
!5074 = !DILocation(line: 380, column: 6, scope: !5075, inlinedAt: !4887)
!5075 = distinct !DILexicalBlock(scope: !4883, file: !112, line: 380, column: 6)
!5076 = !DILocation(line: 380, column: 11, scope: !5075, inlinedAt: !4887)
!5077 = !DILocation(line: 380, column: 6, scope: !4883, inlinedAt: !4887)
!5078 = !DILocation(line: 380, column: 33, scope: !5075, inlinedAt: !4887)
!5079 = !DILocation(line: 381, column: 6, scope: !5080, inlinedAt: !4887)
!5080 = distinct !DILexicalBlock(scope: !4883, file: !112, line: 381, column: 6)
!5081 = !DILocation(line: 381, column: 11, scope: !5080, inlinedAt: !4887)
!5082 = !DILocation(line: 381, column: 6, scope: !4883, inlinedAt: !4887)
!5083 = !DILocation(line: 381, column: 33, scope: !5080, inlinedAt: !4887)
!5084 = !DILocation(line: 382, column: 2, scope: !5085, inlinedAt: !4887)
!5085 = distinct !DILexicalBlock(scope: !5086, file: !112, line: 382, column: 2)
!5086 = distinct !DILexicalBlock(scope: !4883, file: !112, line: 382, column: 2)
!5087 = !{i32 -2142802213, i32 -2142802184, i32 -2142802138, i32 -2142802080, i32 -2142802026, i32 -2142801972, i32 -2142801917, i32 -2142801886}
!5088 = !DILocation(line: 382, column: 2, scope: !5089, inlinedAt: !4887)
!5089 = distinct !DILexicalBlock(scope: !5090, file: !112, line: 382, column: 2)
!5090 = distinct !DILexicalBlock(scope: !5086, file: !112, line: 382, column: 2)
!5091 = !{i32 -2142801443, i32 -2142801436, i32 -2142801382, i32 -2142801351, i32 -2142801321}
!5092 = !DILocation(line: 382, column: 2, scope: !5090, inlinedAt: !4887)
!5093 = !DILocation(line: 386, column: 1, scope: !4883, inlinedAt: !4887)
!5094 = !DILocation(line: 547, column: 9, scope: !4866, inlinedAt: !4869)
!5095 = !DILocation(line: 549, column: 8, scope: !5096, inlinedAt: !4869)
!5096 = distinct !DILexicalBlock(scope: !4866, file: !112, line: 549, column: 7)
!5097 = !DILocation(line: 549, column: 7, scope: !4866, inlinedAt: !4869)
!5098 = !DILocation(line: 550, column: 4, scope: !5096, inlinedAt: !4869)
!5099 = !DILocation(line: 553, column: 33, scope: !4866, inlinedAt: !4869)
!5100 = !DILocation(line: 325, column: 6, scope: !5101, inlinedAt: !4881)
!5101 = distinct !DILexicalBlock(scope: !4877, file: !112, line: 325, column: 6)
!5102 = !DILocation(line: 325, column: 6, scope: !4877, inlinedAt: !4881)
!5103 = !DILocation(line: 326, column: 3, scope: !5101, inlinedAt: !4881)
!5104 = !DILocation(line: 332, column: 9, scope: !4877, inlinedAt: !4881)
!5105 = !DILocation(line: 332, column: 15, scope: !4877, inlinedAt: !4881)
!5106 = !DILocation(line: 332, column: 2, scope: !4877, inlinedAt: !4881)
!5107 = !DILocation(line: 336, column: 1, scope: !4877, inlinedAt: !4881)
!5108 = !DILocation(line: 553, column: 5, scope: !4866, inlinedAt: !4869)
!5109 = !DILocation(line: 553, column: 41, scope: !4866, inlinedAt: !4869)
!5110 = !DILocation(line: 554, column: 5, scope: !4866, inlinedAt: !4869)
!5111 = !DILocation(line: 554, column: 12, scope: !4866, inlinedAt: !4869)
!5112 = !DILocation(line: 448, column: 31, scope: !4861, inlinedAt: !4865)
!5113 = !DILocation(line: 448, column: 34, scope: !4861, inlinedAt: !4865)
!5114 = !DILocation(line: 448, column: 14, scope: !4861, inlinedAt: !4865)
!5115 = !DILocation(line: 450, column: 22, scope: !4861, inlinedAt: !4865)
!5116 = !DILocation(line: 450, column: 25, scope: !4861, inlinedAt: !4865)
!5117 = !DILocation(line: 450, column: 30, scope: !4861, inlinedAt: !4865)
!5118 = !DILocation(line: 450, column: 36, scope: !4861, inlinedAt: !4865)
!5119 = !DILocation(line: 450, column: 8, scope: !4861, inlinedAt: !4865)
!5120 = !DILocation(line: 450, column: 6, scope: !4861, inlinedAt: !4865)
!5121 = !DILocation(line: 451, column: 9, scope: !4861, inlinedAt: !4865)
!5122 = !DILocation(line: 552, column: 3, scope: !4866, inlinedAt: !4869)
!5123 = !DILocation(line: 557, column: 19, scope: !4868, inlinedAt: !4869)
!5124 = !DILocation(line: 557, column: 25, scope: !4868, inlinedAt: !4869)
!5125 = !DILocation(line: 557, column: 9, scope: !4868, inlinedAt: !4869)
!5126 = !DILocation(line: 557, column: 2, scope: !4868, inlinedAt: !4869)
!5127 = !DILocation(line: 558, column: 1, scope: !4868, inlinedAt: !4869)
!5128 = !DILocation(line: 664, column: 2, scope: !4857)
!5129 = distinct !DISubprogram(name: "get_order", scope: !5130, file: !5130, line: 29, type: !5131, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5130 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5131 = !DISubroutineType(types: !5132)
!5132 = !{!162, !340}
!5133 = !DILocalVariable(name: "x", arg: 1, scope: !5134, file: !5135, line: 366, type: !437)
!5134 = distinct !DISubprogram(name: "fls64", scope: !5135, file: !5135, line: 366, type: !5136, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5135 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5136 = !DISubroutineType(types: !5137)
!5137 = !{!162, !437}
!5138 = !DILocation(line: 366, column: 40, scope: !5134, inlinedAt: !5139)
!5139 = distinct !DILocation(line: 46, column: 9, scope: !5129)
!5140 = !DILocalVariable(name: "bitpos", scope: !5134, file: !5135, line: 368, type: !162)
!5141 = !DILocation(line: 368, column: 6, scope: !5134, inlinedAt: !5139)
!5142 = !DILocalVariable(name: "size", arg: 1, scope: !5129, file: !5130, line: 29, type: !340)
!5143 = !DILocation(line: 29, column: 63, scope: !5129)
!5144 = !DILocation(line: 31, column: 27, scope: !5145)
!5145 = distinct !DILexicalBlock(scope: !5129, file: !5130, line: 31, column: 6)
!5146 = !DILocation(line: 31, column: 6, scope: !5145)
!5147 = !DILocation(line: 31, column: 6, scope: !5129)
!5148 = !DILocation(line: 32, column: 8, scope: !5149)
!5149 = distinct !DILexicalBlock(scope: !5150, file: !5130, line: 32, column: 7)
!5150 = distinct !DILexicalBlock(scope: !5145, file: !5130, line: 31, column: 34)
!5151 = !DILocation(line: 32, column: 7, scope: !5150)
!5152 = !DILocation(line: 33, column: 4, scope: !5149)
!5153 = !DILocation(line: 35, column: 7, scope: !5154)
!5154 = distinct !DILexicalBlock(scope: !5150, file: !5130, line: 35, column: 7)
!5155 = !DILocation(line: 35, column: 12, scope: !5154)
!5156 = !DILocation(line: 35, column: 7, scope: !5150)
!5157 = !DILocation(line: 36, column: 4, scope: !5154)
!5158 = !DILocation(line: 38, column: 10, scope: !5150)
!5159 = !DILocation(line: 38, column: 28, scope: !5150)
!5160 = !DILocation(line: 38, column: 41, scope: !5150)
!5161 = !DILocation(line: 38, column: 3, scope: !5150)
!5162 = !DILocation(line: 41, column: 6, scope: !5129)
!5163 = !DILocation(line: 42, column: 7, scope: !5129)
!5164 = !DILocation(line: 46, column: 15, scope: !5129)
!5165 = !DILocation(line: 374, column: 2, scope: !5134, inlinedAt: !5139)
!5166 = !DILocation(line: 376, column: 14, scope: !5134, inlinedAt: !5139)
!5167 = !{i32 259459}
!5168 = !DILocation(line: 377, column: 9, scope: !5134, inlinedAt: !5139)
!5169 = !DILocation(line: 377, column: 16, scope: !5134, inlinedAt: !5139)
!5170 = !DILocation(line: 46, column: 2, scope: !5129)
!5171 = !DILocation(line: 48, column: 1, scope: !5129)
!5172 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5173, file: !5173, line: 30, type: !5174, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5173 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5174 = !DISubroutineType(types: !5175)
!5175 = !{!162, !436}
!5176 = !DILocation(line: 366, column: 40, scope: !5134, inlinedAt: !5177)
!5177 = distinct !DILocation(line: 32, column: 9, scope: !5172)
!5178 = !DILocation(line: 368, column: 6, scope: !5134, inlinedAt: !5177)
!5179 = !DILocalVariable(name: "n", arg: 1, scope: !5172, file: !5173, line: 30, type: !436)
!5180 = !DILocation(line: 30, column: 21, scope: !5172)
!5181 = !DILocation(line: 32, column: 15, scope: !5172)
!5182 = !DILocation(line: 374, column: 2, scope: !5134, inlinedAt: !5177)
!5183 = !DILocation(line: 376, column: 14, scope: !5134, inlinedAt: !5177)
!5184 = !DILocation(line: 377, column: 9, scope: !5134, inlinedAt: !5177)
!5185 = !DILocation(line: 377, column: 16, scope: !5134, inlinedAt: !5177)
!5186 = !DILocation(line: 32, column: 18, scope: !5172)
!5187 = !DILocation(line: 32, column: 2, scope: !5172)
!5188 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5189, file: !5189, line: 137, type: !5190, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5189 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5190 = !DISubroutineType(types: !5191)
!5191 = !{!161, !948, !2145, !337, !168}
!5192 = !DILocalVariable(name: "s", arg: 1, scope: !5188, file: !5189, line: 137, type: !948)
!5193 = !DILocation(line: 137, column: 54, scope: !5188)
!5194 = !DILocalVariable(name: "object", arg: 2, scope: !5188, file: !5189, line: 137, type: !2145)
!5195 = !DILocation(line: 137, column: 69, scope: !5188)
!5196 = !DILocalVariable(name: "size", arg: 3, scope: !5188, file: !5189, line: 138, type: !337)
!5197 = !DILocation(line: 138, column: 12, scope: !5188)
!5198 = !DILocalVariable(name: "flags", arg: 4, scope: !5188, file: !5189, line: 138, type: !168)
!5199 = !DILocation(line: 138, column: 24, scope: !5188)
!5200 = !DILocation(line: 140, column: 17, scope: !5188)
!5201 = !DILocation(line: 140, column: 2, scope: !5188)
!5202 = distinct !DISubprogram(name: "vmk80xx_write_packet", scope: !3, file: !3, line: 197, type: !5203, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5203 = !DISubroutineType(types: !5204)
!5204 = !{!162, !218, !162}
!5205 = !DILocalVariable(name: "dev", arg: 1, scope: !5202, file: !3, line: 197, type: !218)
!5206 = !DILocation(line: 197, column: 55, scope: !5202)
!5207 = !DILocalVariable(name: "cmd", arg: 2, scope: !5202, file: !3, line: 197, type: !162)
!5208 = !DILocation(line: 197, column: 64, scope: !5202)
!5209 = !DILocalVariable(name: "devpriv", scope: !5202, file: !3, line: 199, type: !4232)
!5210 = !DILocation(line: 199, column: 26, scope: !5202)
!5211 = !DILocation(line: 199, column: 36, scope: !5202)
!5212 = !DILocation(line: 199, column: 41, scope: !5202)
!5213 = !DILocalVariable(name: "usb", scope: !5202, file: !3, line: 200, type: !5214)
!5214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5215, size: 64)
!5215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device", file: !101, line: 631, size: 10624, elements: !5216)
!5216 = !{!5217, !5218, !5219, !5220, !5221, !5222, !5223, !5224, !5227, !5228, !5230, !5231, !5259, !5260, !5261, !5278, !5339, !5370, !5371, !5373, !5374, !5376, !5377, !5378, !5379, !5380, !5381, !5382, !5383, !5384, !5385, !5386, !5387, !5388, !5389, !5390, !5391, !5392, !5393, !5394, !5395, !5396, !5397, !5398, !5399, !5400, !5401, !5402, !5403, !5404, !5405, !5406, !5409, !5410, !5411, !5416, !5423, !5424, !5425, !5426}
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "devnum", scope: !5215, file: !101, line: 632, baseType: !162, size: 32)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "devpath", scope: !5215, file: !101, line: 633, baseType: !1752, size: 128, offset: 32)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "route", scope: !5215, file: !101, line: 634, baseType: !431, size: 32, offset: 160)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5215, file: !101, line: 635, baseType: !118, size: 32, offset: 192)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !5215, file: !101, line: 636, baseType: !130, size: 32, offset: 224)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "rx_lanes", scope: !5215, file: !101, line: 637, baseType: !7, size: 32, offset: 256)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "tx_lanes", scope: !5215, file: !101, line: 638, baseType: !7, size: 32, offset: 288)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !5215, file: !101, line: 640, baseType: !5225, size: 64, offset: 320)
!5225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5226, size: 64)
!5226 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_tt", file: !101, line: 474, flags: DIFlagFwdDecl)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "ttport", scope: !5215, file: !101, line: 641, baseType: !162, size: 32, offset: 384)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "toggle", scope: !5215, file: !101, line: 643, baseType: !5229, size: 64, offset: 416)
!5229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !1587)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5215, file: !101, line: 645, baseType: !5214, size: 64, offset: 512)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !5215, file: !101, line: 646, baseType: !5232, size: 64, offset: 576)
!5232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5233, size: 64)
!5233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bus", file: !101, line: 424, size: 960, elements: !5234)
!5234 = !{!5235, !5236, !5237, !5238, !5239, !5240, !5241, !5242, !5243, !5244, !5245, !5246, !5247, !5248, !5253, !5254, !5255, !5256, !5257, !5258}
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !5233, file: !101, line: 425, baseType: !228, size: 64)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "sysdev", scope: !5233, file: !101, line: 426, baseType: !228, size: 64, offset: 64)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "busnum", scope: !5233, file: !101, line: 427, baseType: !162, size: 32, offset: 128)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "bus_name", scope: !5233, file: !101, line: 428, baseType: !209, size: 64, offset: 192)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "uses_pio_for_control", scope: !5233, file: !101, line: 429, baseType: !1365, size: 8, offset: 256)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "otg_port", scope: !5233, file: !101, line: 433, baseType: !1365, size: 8, offset: 264)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "is_b_host", scope: !5233, file: !101, line: 434, baseType: !7, size: 1, offset: 272, flags: DIFlagBitField, extraData: i64 272)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "b_hnp_enable", scope: !5233, file: !101, line: 435, baseType: !7, size: 1, offset: 273, flags: DIFlagBitField, extraData: i64 272)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "no_stop_on_short", scope: !5233, file: !101, line: 436, baseType: !7, size: 1, offset: 274, flags: DIFlagBitField, extraData: i64 272)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "no_sg_constraint", scope: !5233, file: !101, line: 441, baseType: !7, size: 1, offset: 275, flags: DIFlagBitField, extraData: i64 272)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "sg_tablesize", scope: !5233, file: !101, line: 442, baseType: !7, size: 32, offset: 288)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next", scope: !5233, file: !101, line: 444, baseType: !162, size: 32, offset: 320)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next_mutex", scope: !5233, file: !101, line: 446, baseType: !1186, size: 192, offset: 384)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "devmap", scope: !5233, file: !101, line: 448, baseType: !5249, size: 128, offset: 576)
!5249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_devmap", file: !101, line: 417, size: 128, elements: !5250)
!5250 = !{!5251}
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "devicemap", scope: !5249, file: !101, line: 418, baseType: !5252, size: 128)
!5252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 128, elements: !1587)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "root_hub", scope: !5233, file: !101, line: 449, baseType: !5214, size: 64, offset: 704)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "hs_companion", scope: !5233, file: !101, line: 450, baseType: !5232, size: 64, offset: 768)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_allocated", scope: !5233, file: !101, line: 452, baseType: !162, size: 32, offset: 832)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_int_reqs", scope: !5233, file: !101, line: 459, baseType: !162, size: 32, offset: 864)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_isoc_reqs", scope: !5233, file: !101, line: 460, baseType: !162, size: 32, offset: 896)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "resuming_ports", scope: !5233, file: !101, line: 462, baseType: !7, size: 32, offset: 928)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "ep0", scope: !5215, file: !101, line: 647, baseType: !4090, size: 640, offset: 640)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5215, file: !101, line: 649, baseType: !229, size: 5568, offset: 1280)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !5215, file: !101, line: 651, baseType: !5262, size: 144, offset: 6848)
!5262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_descriptor", file: !119, line: 289, size: 144, elements: !5263)
!5263 = !{!5264, !5265, !5266, !5267, !5268, !5269, !5270, !5271, !5272, !5273, !5274, !5275, !5276, !5277}
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5262, file: !119, line: 290, baseType: !1366, size: 8)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5262, file: !119, line: 291, baseType: !1366, size: 8, offset: 8)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "bcdUSB", scope: !5262, file: !119, line: 293, baseType: !166, size: 16, offset: 16)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !5262, file: !119, line: 294, baseType: !1366, size: 8, offset: 32)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !5262, file: !119, line: 295, baseType: !1366, size: 8, offset: 40)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !5262, file: !119, line: 296, baseType: !1366, size: 8, offset: 48)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPacketSize0", scope: !5262, file: !119, line: 297, baseType: !1366, size: 8, offset: 56)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !5262, file: !119, line: 298, baseType: !166, size: 16, offset: 64)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !5262, file: !119, line: 299, baseType: !166, size: 16, offset: 80)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice", scope: !5262, file: !119, line: 300, baseType: !166, size: 16, offset: 96)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "iManufacturer", scope: !5262, file: !119, line: 301, baseType: !1366, size: 8, offset: 112)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "iProduct", scope: !5262, file: !119, line: 302, baseType: !1366, size: 8, offset: 120)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "iSerialNumber", scope: !5262, file: !119, line: 303, baseType: !1366, size: 8, offset: 128)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "bNumConfigurations", scope: !5262, file: !119, line: 304, baseType: !1366, size: 8, offset: 136)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "bos", scope: !5215, file: !101, line: 652, baseType: !5279, size: 64, offset: 7040)
!5279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5280, size: 64)
!5280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_bos", file: !101, line: 396, size: 384, elements: !5281)
!5281 = !{!5282, !5290, !5298, !5310, !5323, !5332}
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !5280, file: !101, line: 397, baseType: !5283, size: 64)
!5283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5284, size: 64)
!5284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bos_descriptor", file: !119, line: 844, size: 40, elements: !5285)
!5285 = !{!5286, !5287, !5288, !5289}
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5284, file: !119, line: 845, baseType: !1366, size: 8)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5284, file: !119, line: 846, baseType: !1366, size: 8, offset: 8)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !5284, file: !119, line: 848, baseType: !166, size: 16, offset: 16)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "bNumDeviceCaps", scope: !5284, file: !119, line: 849, baseType: !1366, size: 8, offset: 32)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "ext_cap", scope: !5280, file: !101, line: 400, baseType: !5291, size: 64, offset: 64)
!5291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5292, size: 64)
!5292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ext_cap_descriptor", file: !119, line: 895, size: 56, elements: !5293)
!5293 = !{!5294, !5295, !5296, !5297}
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5292, file: !119, line: 896, baseType: !1366, size: 8)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5292, file: !119, line: 897, baseType: !1366, size: 8, offset: 8)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !5292, file: !119, line: 898, baseType: !1366, size: 8, offset: 16)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !5292, file: !119, line: 899, baseType: !4118, size: 32, offset: 24)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "ss_cap", scope: !5280, file: !101, line: 401, baseType: !5299, size: 64, offset: 128)
!5299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5300, size: 64)
!5300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_cap_descriptor", file: !119, line: 917, size: 80, elements: !5301)
!5301 = !{!5302, !5303, !5304, !5305, !5306, !5307, !5308, !5309}
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5300, file: !119, line: 918, baseType: !1366, size: 8)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5300, file: !119, line: 919, baseType: !1366, size: 8, offset: 8)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !5300, file: !119, line: 920, baseType: !1366, size: 8, offset: 16)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !5300, file: !119, line: 921, baseType: !1366, size: 8, offset: 24)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "wSpeedSupported", scope: !5300, file: !119, line: 923, baseType: !166, size: 16, offset: 32)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionalitySupport", scope: !5300, file: !119, line: 928, baseType: !1366, size: 8, offset: 48)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "bU1devExitLat", scope: !5300, file: !119, line: 929, baseType: !1366, size: 8, offset: 56)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "bU2DevExitLat", scope: !5300, file: !119, line: 930, baseType: !166, size: 16, offset: 64)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_cap", scope: !5280, file: !101, line: 402, baseType: !5311, size: 64, offset: 192)
!5311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5312, size: 64)
!5312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_cap_descriptor", file: !119, line: 955, size: 128, elements: !5313)
!5313 = !{!5314, !5315, !5316, !5317, !5318, !5319, !5320, !5321}
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5312, file: !119, line: 956, baseType: !1366, size: 8)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5312, file: !119, line: 957, baseType: !1366, size: 8, offset: 8)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !5312, file: !119, line: 958, baseType: !1366, size: 8, offset: 16)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !5312, file: !119, line: 959, baseType: !1366, size: 8, offset: 24)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !5312, file: !119, line: 960, baseType: !4118, size: 32, offset: 32)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "wFunctionalitySupport", scope: !5312, file: !119, line: 963, baseType: !166, size: 16, offset: 64)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "wReserved", scope: !5312, file: !119, line: 967, baseType: !166, size: 16, offset: 80)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "bmSublinkSpeedAttr", scope: !5312, file: !119, line: 968, baseType: !5322, size: 32, offset: 96)
!5322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4118, size: 32, elements: !1384)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "ss_id", scope: !5280, file: !101, line: 403, baseType: !5324, size: 64, offset: 256)
!5324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5325, size: 64)
!5325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_container_id_descriptor", file: !119, line: 940, size: 160, elements: !5326)
!5326 = !{!5327, !5328, !5329, !5330, !5331}
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5325, file: !119, line: 941, baseType: !1366, size: 8)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5325, file: !119, line: 942, baseType: !1366, size: 8, offset: 8)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !5325, file: !119, line: 943, baseType: !1366, size: 8, offset: 16)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !5325, file: !119, line: 944, baseType: !1366, size: 8, offset: 24)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "ContainerID", scope: !5325, file: !119, line: 945, baseType: !2723, size: 128, offset: 32)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "ptm_cap", scope: !5280, file: !101, line: 404, baseType: !5333, size: 64, offset: 320)
!5333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5334, size: 64)
!5334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ptm_cap_descriptor", file: !119, line: 1080, size: 24, elements: !5335)
!5335 = !{!5336, !5337, !5338}
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5334, file: !119, line: 1081, baseType: !1366, size: 8)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5334, file: !119, line: 1082, baseType: !1366, size: 8, offset: 8)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !5334, file: !119, line: 1083, baseType: !1366, size: 8, offset: 16)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !5215, file: !101, line: 653, baseType: !5340, size: 64, offset: 7104)
!5340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5341, size: 64)
!5341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_config", file: !101, line: 374, size: 5440, elements: !5342)
!5342 = !{!5343, !5354, !5355, !5357, !5359, !5368, !5369}
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !5341, file: !101, line: 375, baseType: !5344, size: 72)
!5344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_config_descriptor", file: !119, line: 349, size: 72, elements: !5345)
!5345 = !{!5346, !5347, !5348, !5349, !5350, !5351, !5352, !5353}
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5344, file: !119, line: 350, baseType: !1366, size: 8)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5344, file: !119, line: 351, baseType: !1366, size: 8, offset: 8)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !5344, file: !119, line: 353, baseType: !166, size: 16, offset: 16)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "bNumInterfaces", scope: !5344, file: !119, line: 354, baseType: !1366, size: 8, offset: 32)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "bConfigurationValue", scope: !5344, file: !119, line: 355, baseType: !1366, size: 8, offset: 40)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "iConfiguration", scope: !5344, file: !119, line: 356, baseType: !1366, size: 8, offset: 48)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !5344, file: !119, line: 357, baseType: !1366, size: 8, offset: 56)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPower", scope: !5344, file: !119, line: 358, baseType: !1366, size: 8, offset: 64)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !5341, file: !101, line: 377, baseType: !291, size: 64, offset: 128)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !5341, file: !101, line: 381, baseType: !5356, size: 1024, offset: 192)
!5356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4132, size: 1024, elements: !1753)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "interface", scope: !5341, file: !101, line: 385, baseType: !5358, size: 2048, offset: 1216)
!5358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4066, size: 2048, elements: !2246)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "intf_cache", scope: !5341, file: !101, line: 389, baseType: !5360, size: 2048, offset: 3264)
!5360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5361, size: 2048, elements: !2246)
!5361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5362, size: 64)
!5362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_cache", file: !101, line: 322, size: 64, elements: !5363)
!5363 = !{!5364, !5365, !5366}
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !5362, file: !101, line: 323, baseType: !7, size: 32)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5362, file: !101, line: 324, baseType: !3386, size: 32, offset: 32)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !5362, file: !101, line: 328, baseType: !5367, offset: 64)
!5367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4071, elements: !2347)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !5341, file: !101, line: 391, baseType: !4087, size: 64, offset: 5312)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !5341, file: !101, line: 392, baseType: !162, size: 32, offset: 5376)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "actconfig", scope: !5215, file: !101, line: 655, baseType: !5340, size: 64, offset: 7168)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "ep_in", scope: !5215, file: !101, line: 656, baseType: !5372, size: 1024, offset: 7232)
!5372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4089, size: 1024, elements: !1753)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "ep_out", scope: !5215, file: !101, line: 657, baseType: !5372, size: 1024, offset: 8256)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "rawdescriptors", scope: !5215, file: !101, line: 659, baseType: !5375, size: 64, offset: 9280)
!5375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "bus_mA", scope: !5215, file: !101, line: 661, baseType: !165, size: 16, offset: 9344)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "portnum", scope: !5215, file: !101, line: 662, baseType: !1365, size: 8, offset: 9360)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !5215, file: !101, line: 663, baseType: !1365, size: 8, offset: 9368)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "devaddr", scope: !5215, file: !101, line: 664, baseType: !1365, size: 8, offset: 9376)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "can_submit", scope: !5215, file: !101, line: 666, baseType: !7, size: 1, offset: 9384, flags: DIFlagBitField, extraData: i64 9384)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "persist_enabled", scope: !5215, file: !101, line: 667, baseType: !7, size: 1, offset: 9385, flags: DIFlagBitField, extraData: i64 9384)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "have_langid", scope: !5215, file: !101, line: 668, baseType: !7, size: 1, offset: 9386, flags: DIFlagBitField, extraData: i64 9384)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !5215, file: !101, line: 669, baseType: !7, size: 1, offset: 9387, flags: DIFlagBitField, extraData: i64 9384)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !5215, file: !101, line: 670, baseType: !7, size: 1, offset: 9388, flags: DIFlagBitField, extraData: i64 9384)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "wusb", scope: !5215, file: !101, line: 671, baseType: !7, size: 1, offset: 9389, flags: DIFlagBitField, extraData: i64 9384)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_capable", scope: !5215, file: !101, line: 672, baseType: !7, size: 1, offset: 9390, flags: DIFlagBitField, extraData: i64 9384)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_capable", scope: !5215, file: !101, line: 673, baseType: !7, size: 1, offset: 9391, flags: DIFlagBitField, extraData: i64 9384)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_besl_capable", scope: !5215, file: !101, line: 674, baseType: !7, size: 1, offset: 9392, flags: DIFlagBitField, extraData: i64 9384)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_enabled", scope: !5215, file: !101, line: 675, baseType: !7, size: 1, offset: 9393, flags: DIFlagBitField, extraData: i64 9384)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_allowed", scope: !5215, file: !101, line: 676, baseType: !7, size: 1, offset: 9394, flags: DIFlagBitField, extraData: i64 9384)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u1_enabled", scope: !5215, file: !101, line: 677, baseType: !7, size: 1, offset: 9395, flags: DIFlagBitField, extraData: i64 9384)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u2_enabled", scope: !5215, file: !101, line: 678, baseType: !7, size: 1, offset: 9396, flags: DIFlagBitField, extraData: i64 9384)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "string_langid", scope: !5215, file: !101, line: 679, baseType: !162, size: 32, offset: 9408)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !5215, file: !101, line: 682, baseType: !291, size: 64, offset: 9472)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !5215, file: !101, line: 683, baseType: !291, size: 64, offset: 9536)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !5215, file: !101, line: 684, baseType: !291, size: 64, offset: 9600)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !5215, file: !101, line: 686, baseType: !237, size: 128, offset: 9664)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "maxchild", scope: !5215, file: !101, line: 688, baseType: !162, size: 32, offset: 9792)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !5215, file: !101, line: 690, baseType: !431, size: 32, offset: 9824)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "urbnum", scope: !5215, file: !101, line: 691, baseType: !761, size: 32, offset: 9856)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "active_duration", scope: !5215, file: !101, line: 693, baseType: !340, size: 64, offset: 9920)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !5215, file: !101, line: 696, baseType: !340, size: 64, offset: 9984)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "do_remote_wakeup", scope: !5215, file: !101, line: 698, baseType: !7, size: 1, offset: 10048, flags: DIFlagBitField, extraData: i64 10048)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !5215, file: !101, line: 699, baseType: !7, size: 1, offset: 10049, flags: DIFlagBitField, extraData: i64 10048)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "port_is_suspended", scope: !5215, file: !101, line: 700, baseType: !7, size: 1, offset: 10050, flags: DIFlagBitField, extraData: i64 10048)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "wusb_dev", scope: !5215, file: !101, line: 702, baseType: !5407, size: 64, offset: 10112)
!5407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5408, size: 64)
!5408 = !DICompositeType(tag: DW_TAG_structure_type, name: "wusb_dev", file: !101, line: 28, flags: DIFlagFwdDecl)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "slot_id", scope: !5215, file: !101, line: 703, baseType: !162, size: 32, offset: 10176)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !5215, file: !101, line: 704, baseType: !139, size: 32, offset: 10208)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "l1_params", scope: !5215, file: !101, line: 705, baseType: !5412, size: 64, offset: 10240)
!5412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb2_lpm_parameters", file: !101, line: 502, size: 64, elements: !5413)
!5413 = !{!5414, !5415}
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "besl", scope: !5412, file: !101, line: 506, baseType: !7, size: 32)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !5412, file: !101, line: 512, baseType: !162, size: 32, offset: 32)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "u1_params", scope: !5215, file: !101, line: 706, baseType: !5417, size: 128, offset: 10304)
!5417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb3_lpm_parameters", file: !101, line: 522, size: 128, elements: !5418)
!5418 = !{!5419, !5420, !5421, !5422}
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "mel", scope: !5417, file: !101, line: 529, baseType: !7, size: 32)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !5417, file: !101, line: 535, baseType: !7, size: 32, offset: 32)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "sel", scope: !5417, file: !101, line: 545, baseType: !7, size: 32, offset: 64)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !5417, file: !101, line: 551, baseType: !162, size: 32, offset: 96)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "u2_params", scope: !5215, file: !101, line: 707, baseType: !5417, size: 128, offset: 10432)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_disable_count", scope: !5215, file: !101, line: 708, baseType: !7, size: 32, offset: 10560)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "hub_delay", scope: !5215, file: !101, line: 710, baseType: !873, size: 16, offset: 10592)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "use_generic_driver", scope: !5215, file: !101, line: 711, baseType: !7, size: 1, offset: 10608, flags: DIFlagBitField, extraData: i64 10608)
!5427 = !DILocation(line: 200, column: 21, scope: !5202)
!5428 = !DILocation(line: 200, column: 45, scope: !5202)
!5429 = !DILocation(line: 200, column: 27, scope: !5202)
!5430 = !DILocalVariable(name: "ep", scope: !5202, file: !3, line: 201, type: !4236)
!5431 = !DILocation(line: 201, column: 34, scope: !5202)
!5432 = !DILocalVariable(name: "pipe", scope: !5202, file: !3, line: 202, type: !7)
!5433 = !DILocation(line: 202, column: 15, scope: !5202)
!5434 = !DILocation(line: 204, column: 27, scope: !5202)
!5435 = !DILocation(line: 204, column: 2, scope: !5202)
!5436 = !DILocation(line: 204, column: 11, scope: !5202)
!5437 = !DILocation(line: 204, column: 25, scope: !5202)
!5438 = !DILocation(line: 206, column: 6, scope: !5439)
!5439 = distinct !DILexicalBlock(scope: !5202, file: !3, line: 206, column: 6)
!5440 = !DILocation(line: 206, column: 15, scope: !5439)
!5441 = !DILocation(line: 206, column: 21, scope: !5439)
!5442 = !DILocation(line: 206, column: 6, scope: !5202)
!5443 = !DILocation(line: 207, column: 23, scope: !5444)
!5444 = distinct !DILexicalBlock(scope: !5439, file: !3, line: 206, column: 39)
!5445 = !DILocation(line: 207, column: 3, scope: !5444)
!5446 = !DILocation(line: 208, column: 3, scope: !5444)
!5447 = !DILocation(line: 211, column: 7, scope: !5202)
!5448 = !DILocation(line: 211, column: 16, scope: !5202)
!5449 = !DILocation(line: 211, column: 5, scope: !5202)
!5450 = !DILocation(line: 212, column: 9, scope: !5202)
!5451 = !DILocation(line: 212, column: 7, scope: !5202)
!5452 = !DILocation(line: 213, column: 27, scope: !5202)
!5453 = !DILocation(line: 213, column: 32, scope: !5202)
!5454 = !DILocation(line: 213, column: 38, scope: !5202)
!5455 = !DILocation(line: 213, column: 47, scope: !5202)
!5456 = !DILocation(line: 214, column: 24, scope: !5202)
!5457 = !DILocation(line: 214, column: 6, scope: !5202)
!5458 = !DILocation(line: 213, column: 9, scope: !5202)
!5459 = !DILocation(line: 213, column: 2, scope: !5202)
!5460 = !DILocation(line: 216, column: 1, scope: !5202)
!5461 = distinct !DISubprogram(name: "vmk80xx_do_bulk_msg", scope: !3, file: !3, line: 152, type: !4000, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5462 = !DILocalVariable(name: "dev", arg: 1, scope: !5461, file: !3, line: 152, type: !218)
!5463 = !DILocation(line: 152, column: 55, scope: !5461)
!5464 = !DILocalVariable(name: "devpriv", scope: !5461, file: !3, line: 154, type: !4232)
!5465 = !DILocation(line: 154, column: 26, scope: !5461)
!5466 = !DILocation(line: 154, column: 36, scope: !5461)
!5467 = !DILocation(line: 154, column: 41, scope: !5461)
!5468 = !DILocalVariable(name: "usb", scope: !5461, file: !3, line: 155, type: !5214)
!5469 = !DILocation(line: 155, column: 21, scope: !5461)
!5470 = !DILocation(line: 155, column: 45, scope: !5461)
!5471 = !DILocation(line: 155, column: 27, scope: !5461)
!5472 = !DILocalVariable(name: "tx_addr", scope: !5461, file: !3, line: 156, type: !1366)
!5473 = !DILocation(line: 156, column: 7, scope: !5461)
!5474 = !DILocalVariable(name: "rx_addr", scope: !5461, file: !3, line: 157, type: !1366)
!5475 = !DILocation(line: 157, column: 7, scope: !5461)
!5476 = !DILocalVariable(name: "tx_pipe", scope: !5461, file: !3, line: 158, type: !7)
!5477 = !DILocation(line: 158, column: 15, scope: !5461)
!5478 = !DILocalVariable(name: "rx_pipe", scope: !5461, file: !3, line: 159, type: !7)
!5479 = !DILocation(line: 159, column: 15, scope: !5461)
!5480 = !DILocalVariable(name: "size", scope: !5461, file: !3, line: 160, type: !337)
!5481 = !DILocation(line: 160, column: 9, scope: !5461)
!5482 = !DILocation(line: 162, column: 12, scope: !5461)
!5483 = !DILocation(line: 162, column: 21, scope: !5461)
!5484 = !DILocation(line: 162, column: 28, scope: !5461)
!5485 = !DILocation(line: 162, column: 10, scope: !5461)
!5486 = !DILocation(line: 163, column: 12, scope: !5461)
!5487 = !DILocation(line: 163, column: 21, scope: !5461)
!5488 = !DILocation(line: 163, column: 28, scope: !5461)
!5489 = !DILocation(line: 163, column: 10, scope: !5461)
!5490 = !DILocation(line: 164, column: 12, scope: !5461)
!5491 = !DILocation(line: 164, column: 10, scope: !5461)
!5492 = !DILocation(line: 165, column: 12, scope: !5461)
!5493 = !DILocation(line: 165, column: 10, scope: !5461)
!5494 = !DILocation(line: 171, column: 27, scope: !5461)
!5495 = !DILocation(line: 171, column: 36, scope: !5461)
!5496 = !DILocation(line: 171, column: 9, scope: !5461)
!5497 = !DILocation(line: 171, column: 7, scope: !5461)
!5498 = !DILocation(line: 173, column: 15, scope: !5461)
!5499 = !DILocation(line: 173, column: 20, scope: !5461)
!5500 = !DILocation(line: 173, column: 29, scope: !5461)
!5501 = !DILocation(line: 173, column: 38, scope: !5461)
!5502 = !DILocation(line: 174, column: 8, scope: !5461)
!5503 = !DILocation(line: 174, column: 20, scope: !5461)
!5504 = !DILocation(line: 174, column: 29, scope: !5461)
!5505 = !DILocation(line: 174, column: 36, scope: !5461)
!5506 = !DILocation(line: 173, column: 2, scope: !5461)
!5507 = !DILocation(line: 175, column: 15, scope: !5461)
!5508 = !DILocation(line: 175, column: 20, scope: !5461)
!5509 = !DILocation(line: 175, column: 29, scope: !5461)
!5510 = !DILocation(line: 175, column: 38, scope: !5461)
!5511 = !DILocation(line: 175, column: 50, scope: !5461)
!5512 = !DILocation(line: 175, column: 2, scope: !5461)
!5513 = !DILocation(line: 176, column: 1, scope: !5461)
!5514 = distinct !DISubprogram(name: "__create_pipe", scope: !101, file: !101, line: 1945, type: !5515, scopeLine: 1947, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5515 = !DISubroutineType(types: !5516)
!5516 = !{!7, !5214, !7}
!5517 = !DILocalVariable(name: "dev", arg: 1, scope: !5514, file: !101, line: 1945, type: !5214)
!5518 = !DILocation(line: 1945, column: 61, scope: !5514)
!5519 = !DILocalVariable(name: "endpoint", arg: 2, scope: !5514, file: !101, line: 1946, type: !7)
!5520 = !DILocation(line: 1946, column: 16, scope: !5514)
!5521 = !DILocation(line: 1948, column: 10, scope: !5514)
!5522 = !DILocation(line: 1948, column: 15, scope: !5514)
!5523 = !DILocation(line: 1948, column: 22, scope: !5514)
!5524 = !DILocation(line: 1948, column: 31, scope: !5514)
!5525 = !DILocation(line: 1948, column: 40, scope: !5514)
!5526 = !DILocation(line: 1948, column: 28, scope: !5514)
!5527 = !DILocation(line: 1948, column: 2, scope: !5514)
!5528 = distinct !DISubprogram(name: "vmk80xx_ai_insn_read", scope: !3, file: !3, line: 233, type: !3951, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5529 = !DILocalVariable(name: "dev", arg: 1, scope: !5528, file: !3, line: 233, type: !218)
!5530 = !DILocation(line: 233, column: 55, scope: !5528)
!5531 = !DILocalVariable(name: "s", arg: 2, scope: !5528, file: !3, line: 234, type: !3854)
!5532 = !DILocation(line: 234, column: 30, scope: !5528)
!5533 = !DILocalVariable(name: "insn", arg: 3, scope: !5528, file: !3, line: 235, type: !3953)
!5534 = !DILocation(line: 235, column: 25, scope: !5528)
!5535 = !DILocalVariable(name: "data", arg: 4, scope: !5528, file: !3, line: 236, type: !2699)
!5536 = !DILocation(line: 236, column: 19, scope: !5528)
!5537 = !DILocalVariable(name: "devpriv", scope: !5528, file: !3, line: 238, type: !4232)
!5538 = !DILocation(line: 238, column: 26, scope: !5528)
!5539 = !DILocation(line: 238, column: 36, scope: !5528)
!5540 = !DILocation(line: 238, column: 41, scope: !5528)
!5541 = !DILocalVariable(name: "chan", scope: !5528, file: !3, line: 239, type: !162)
!5542 = !DILocation(line: 239, column: 6, scope: !5528)
!5543 = !DILocalVariable(name: "reg", scope: !5528, file: !3, line: 240, type: !5544)
!5544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 64, elements: !1587)
!5545 = !DILocation(line: 240, column: 6, scope: !5528)
!5546 = !DILocalVariable(name: "n", scope: !5528, file: !3, line: 241, type: !162)
!5547 = !DILocation(line: 241, column: 6, scope: !5528)
!5548 = !DILocation(line: 243, column: 8, scope: !5528)
!5549 = !DILocation(line: 243, column: 17, scope: !5528)
!5550 = !DILocation(line: 243, column: 2, scope: !5528)
!5551 = !DILocation(line: 244, column: 9, scope: !5528)
!5552 = !DILocation(line: 244, column: 7, scope: !5528)
!5553 = !DILocation(line: 246, column: 10, scope: !5528)
!5554 = !DILocation(line: 246, column: 19, scope: !5528)
!5555 = !DILocation(line: 246, column: 2, scope: !5528)
!5556 = !DILocation(line: 248, column: 8, scope: !5557)
!5557 = distinct !DILexicalBlock(scope: !5558, file: !3, line: 248, column: 7)
!5558 = distinct !DILexicalBlock(scope: !5528, file: !3, line: 246, column: 26)
!5559 = !DILocation(line: 248, column: 7, scope: !5558)
!5560 = !DILocation(line: 249, column: 4, scope: !5557)
!5561 = !DILocation(line: 249, column: 11, scope: !5557)
!5562 = !DILocation(line: 251, column: 4, scope: !5557)
!5563 = !DILocation(line: 251, column: 11, scope: !5557)
!5564 = !DILocation(line: 252, column: 3, scope: !5558)
!5565 = !DILocation(line: 255, column: 3, scope: !5558)
!5566 = !DILocation(line: 255, column: 10, scope: !5558)
!5567 = !DILocation(line: 256, column: 3, scope: !5558)
!5568 = !DILocation(line: 256, column: 10, scope: !5558)
!5569 = !DILocation(line: 257, column: 3, scope: !5558)
!5570 = !DILocation(line: 257, column: 12, scope: !5558)
!5571 = !DILocation(line: 257, column: 26, scope: !5558)
!5572 = !DILocation(line: 258, column: 41, scope: !5558)
!5573 = !DILocation(line: 258, column: 3, scope: !5558)
!5574 = !DILocation(line: 258, column: 12, scope: !5558)
!5575 = !DILocation(line: 258, column: 39, scope: !5558)
!5576 = !DILocation(line: 259, column: 3, scope: !5558)
!5577 = !DILocation(line: 262, column: 9, scope: !5578)
!5578 = distinct !DILexicalBlock(scope: !5528, file: !3, line: 262, column: 2)
!5579 = !DILocation(line: 262, column: 7, scope: !5578)
!5580 = !DILocation(line: 262, column: 14, scope: !5581)
!5581 = distinct !DILexicalBlock(scope: !5578, file: !3, line: 262, column: 2)
!5582 = !DILocation(line: 262, column: 18, scope: !5581)
!5583 = !DILocation(line: 262, column: 24, scope: !5581)
!5584 = !DILocation(line: 262, column: 16, scope: !5581)
!5585 = !DILocation(line: 262, column: 2, scope: !5578)
!5586 = !DILocation(line: 263, column: 27, scope: !5587)
!5587 = distinct !DILexicalBlock(scope: !5588, file: !3, line: 263, column: 7)
!5588 = distinct !DILexicalBlock(scope: !5581, file: !3, line: 262, column: 32)
!5589 = !DILocation(line: 263, column: 7, scope: !5587)
!5590 = !DILocation(line: 263, column: 7, scope: !5588)
!5591 = !DILocation(line: 264, column: 4, scope: !5587)
!5592 = !DILocation(line: 266, column: 7, scope: !5593)
!5593 = distinct !DILexicalBlock(scope: !5588, file: !3, line: 266, column: 7)
!5594 = !DILocation(line: 266, column: 16, scope: !5593)
!5595 = !DILocation(line: 266, column: 22, scope: !5593)
!5596 = !DILocation(line: 266, column: 7, scope: !5588)
!5597 = !DILocation(line: 267, column: 14, scope: !5598)
!5598 = distinct !DILexicalBlock(scope: !5593, file: !3, line: 266, column: 40)
!5599 = !DILocation(line: 267, column: 23, scope: !5598)
!5600 = !DILocation(line: 267, column: 34, scope: !5598)
!5601 = !DILocation(line: 267, column: 4, scope: !5598)
!5602 = !DILocation(line: 267, column: 9, scope: !5598)
!5603 = !DILocation(line: 267, column: 12, scope: !5598)
!5604 = !DILocation(line: 268, column: 4, scope: !5598)
!5605 = !DILocation(line: 272, column: 13, scope: !5588)
!5606 = !DILocation(line: 272, column: 22, scope: !5588)
!5607 = !DILocation(line: 272, column: 33, scope: !5588)
!5608 = !DILocation(line: 273, column: 7, scope: !5588)
!5609 = !DILocation(line: 273, column: 16, scope: !5588)
!5610 = !DILocation(line: 273, column: 27, scope: !5588)
!5611 = !DILocation(line: 272, column: 47, scope: !5588)
!5612 = !DILocation(line: 272, column: 41, scope: !5588)
!5613 = !DILocation(line: 272, column: 3, scope: !5588)
!5614 = !DILocation(line: 272, column: 8, scope: !5588)
!5615 = !DILocation(line: 272, column: 11, scope: !5588)
!5616 = !DILocation(line: 274, column: 2, scope: !5588)
!5617 = !DILocation(line: 262, column: 28, scope: !5581)
!5618 = !DILocation(line: 262, column: 2, scope: !5581)
!5619 = distinct !{!5619, !5585, !5620}
!5620 = !DILocation(line: 274, column: 2, scope: !5578)
!5621 = !DILocation(line: 276, column: 6, scope: !5528)
!5622 = !DILocation(line: 276, column: 15, scope: !5528)
!5623 = !DILocation(line: 276, column: 2, scope: !5528)
!5624 = !DILocation(line: 278, column: 9, scope: !5528)
!5625 = !DILocation(line: 278, column: 2, scope: !5528)
!5626 = distinct !DISubprogram(name: "vmk80xx_ao_insn_write", scope: !3, file: !3, line: 281, type: !3951, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5627 = !DILocalVariable(name: "dev", arg: 1, scope: !5626, file: !3, line: 281, type: !218)
!5628 = !DILocation(line: 281, column: 56, scope: !5626)
!5629 = !DILocalVariable(name: "s", arg: 2, scope: !5626, file: !3, line: 282, type: !3854)
!5630 = !DILocation(line: 282, column: 31, scope: !5626)
!5631 = !DILocalVariable(name: "insn", arg: 3, scope: !5626, file: !3, line: 283, type: !3953)
!5632 = !DILocation(line: 283, column: 26, scope: !5626)
!5633 = !DILocalVariable(name: "data", arg: 4, scope: !5626, file: !3, line: 284, type: !2699)
!5634 = !DILocation(line: 284, column: 20, scope: !5626)
!5635 = !DILocalVariable(name: "devpriv", scope: !5626, file: !3, line: 286, type: !4232)
!5636 = !DILocation(line: 286, column: 26, scope: !5626)
!5637 = !DILocation(line: 286, column: 36, scope: !5626)
!5638 = !DILocation(line: 286, column: 41, scope: !5626)
!5639 = !DILocalVariable(name: "chan", scope: !5626, file: !3, line: 287, type: !162)
!5640 = !DILocation(line: 287, column: 6, scope: !5626)
!5641 = !DILocalVariable(name: "cmd", scope: !5626, file: !3, line: 288, type: !162)
!5642 = !DILocation(line: 288, column: 6, scope: !5626)
!5643 = !DILocalVariable(name: "reg", scope: !5626, file: !3, line: 289, type: !162)
!5644 = !DILocation(line: 289, column: 6, scope: !5626)
!5645 = !DILocalVariable(name: "n", scope: !5626, file: !3, line: 290, type: !162)
!5646 = !DILocation(line: 290, column: 6, scope: !5626)
!5647 = !DILocation(line: 292, column: 8, scope: !5626)
!5648 = !DILocation(line: 292, column: 17, scope: !5626)
!5649 = !DILocation(line: 292, column: 2, scope: !5626)
!5650 = !DILocation(line: 293, column: 9, scope: !5626)
!5651 = !DILocation(line: 293, column: 7, scope: !5626)
!5652 = !DILocation(line: 295, column: 10, scope: !5626)
!5653 = !DILocation(line: 295, column: 19, scope: !5626)
!5654 = !DILocation(line: 295, column: 2, scope: !5626)
!5655 = !DILocation(line: 297, column: 7, scope: !5656)
!5656 = distinct !DILexicalBlock(scope: !5626, file: !3, line: 295, column: 26)
!5657 = !DILocation(line: 298, column: 8, scope: !5658)
!5658 = distinct !DILexicalBlock(scope: !5656, file: !3, line: 298, column: 7)
!5659 = !DILocation(line: 298, column: 7, scope: !5656)
!5660 = !DILocation(line: 299, column: 8, scope: !5658)
!5661 = !DILocation(line: 299, column: 4, scope: !5658)
!5662 = !DILocation(line: 301, column: 8, scope: !5658)
!5663 = !DILocation(line: 302, column: 3, scope: !5656)
!5664 = !DILocation(line: 304, column: 7, scope: !5656)
!5665 = !DILocation(line: 305, column: 7, scope: !5656)
!5666 = !DILocation(line: 306, column: 41, scope: !5656)
!5667 = !DILocation(line: 306, column: 3, scope: !5656)
!5668 = !DILocation(line: 306, column: 12, scope: !5656)
!5669 = !DILocation(line: 306, column: 39, scope: !5656)
!5670 = !DILocation(line: 307, column: 3, scope: !5656)
!5671 = !DILocation(line: 310, column: 9, scope: !5672)
!5672 = distinct !DILexicalBlock(scope: !5626, file: !3, line: 310, column: 2)
!5673 = !DILocation(line: 310, column: 7, scope: !5672)
!5674 = !DILocation(line: 310, column: 14, scope: !5675)
!5675 = distinct !DILexicalBlock(scope: !5672, file: !3, line: 310, column: 2)
!5676 = !DILocation(line: 310, column: 18, scope: !5675)
!5677 = !DILocation(line: 310, column: 24, scope: !5675)
!5678 = !DILocation(line: 310, column: 16, scope: !5675)
!5679 = !DILocation(line: 310, column: 2, scope: !5672)
!5680 = !DILocation(line: 311, column: 30, scope: !5681)
!5681 = distinct !DILexicalBlock(scope: !5675, file: !3, line: 310, column: 32)
!5682 = !DILocation(line: 311, column: 35, scope: !5681)
!5683 = !DILocation(line: 311, column: 3, scope: !5681)
!5684 = !DILocation(line: 311, column: 12, scope: !5681)
!5685 = !DILocation(line: 311, column: 23, scope: !5681)
!5686 = !DILocation(line: 311, column: 28, scope: !5681)
!5687 = !DILocation(line: 313, column: 28, scope: !5688)
!5688 = distinct !DILexicalBlock(scope: !5681, file: !3, line: 313, column: 7)
!5689 = !DILocation(line: 313, column: 33, scope: !5688)
!5690 = !DILocation(line: 313, column: 7, scope: !5688)
!5691 = !DILocation(line: 313, column: 7, scope: !5681)
!5692 = !DILocation(line: 314, column: 4, scope: !5688)
!5693 = !DILocation(line: 315, column: 2, scope: !5681)
!5694 = !DILocation(line: 310, column: 28, scope: !5675)
!5695 = !DILocation(line: 310, column: 2, scope: !5675)
!5696 = distinct !{!5696, !5679, !5697}
!5697 = !DILocation(line: 315, column: 2, scope: !5672)
!5698 = !DILocation(line: 317, column: 6, scope: !5626)
!5699 = !DILocation(line: 317, column: 15, scope: !5626)
!5700 = !DILocation(line: 317, column: 2, scope: !5626)
!5701 = !DILocation(line: 319, column: 9, scope: !5626)
!5702 = !DILocation(line: 319, column: 2, scope: !5626)
!5703 = distinct !DISubprogram(name: "vmk80xx_ao_insn_read", scope: !3, file: !3, line: 322, type: !3951, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5704 = !DILocalVariable(name: "dev", arg: 1, scope: !5703, file: !3, line: 322, type: !218)
!5705 = !DILocation(line: 322, column: 55, scope: !5703)
!5706 = !DILocalVariable(name: "s", arg: 2, scope: !5703, file: !3, line: 323, type: !3854)
!5707 = !DILocation(line: 323, column: 30, scope: !5703)
!5708 = !DILocalVariable(name: "insn", arg: 3, scope: !5703, file: !3, line: 324, type: !3953)
!5709 = !DILocation(line: 324, column: 25, scope: !5703)
!5710 = !DILocalVariable(name: "data", arg: 4, scope: !5703, file: !3, line: 325, type: !2699)
!5711 = !DILocation(line: 325, column: 19, scope: !5703)
!5712 = !DILocalVariable(name: "devpriv", scope: !5703, file: !3, line: 327, type: !4232)
!5713 = !DILocation(line: 327, column: 26, scope: !5703)
!5714 = !DILocation(line: 327, column: 36, scope: !5703)
!5715 = !DILocation(line: 327, column: 41, scope: !5703)
!5716 = !DILocalVariable(name: "chan", scope: !5703, file: !3, line: 328, type: !162)
!5717 = !DILocation(line: 328, column: 6, scope: !5703)
!5718 = !DILocalVariable(name: "reg", scope: !5703, file: !3, line: 329, type: !162)
!5719 = !DILocation(line: 329, column: 6, scope: !5703)
!5720 = !DILocalVariable(name: "n", scope: !5703, file: !3, line: 330, type: !162)
!5721 = !DILocation(line: 330, column: 6, scope: !5703)
!5722 = !DILocation(line: 332, column: 8, scope: !5703)
!5723 = !DILocation(line: 332, column: 17, scope: !5703)
!5724 = !DILocation(line: 332, column: 2, scope: !5703)
!5725 = !DILocation(line: 333, column: 9, scope: !5703)
!5726 = !DILocation(line: 333, column: 7, scope: !5703)
!5727 = !DILocation(line: 335, column: 6, scope: !5703)
!5728 = !DILocation(line: 337, column: 2, scope: !5703)
!5729 = !DILocation(line: 337, column: 11, scope: !5703)
!5730 = !DILocation(line: 337, column: 25, scope: !5703)
!5731 = !DILocation(line: 339, column: 9, scope: !5732)
!5732 = distinct !DILexicalBlock(scope: !5703, file: !3, line: 339, column: 2)
!5733 = !DILocation(line: 339, column: 7, scope: !5732)
!5734 = !DILocation(line: 339, column: 14, scope: !5735)
!5735 = distinct !DILexicalBlock(scope: !5732, file: !3, line: 339, column: 2)
!5736 = !DILocation(line: 339, column: 18, scope: !5735)
!5737 = !DILocation(line: 339, column: 24, scope: !5735)
!5738 = !DILocation(line: 339, column: 16, scope: !5735)
!5739 = !DILocation(line: 339, column: 2, scope: !5732)
!5740 = !DILocation(line: 340, column: 27, scope: !5741)
!5741 = distinct !DILexicalBlock(scope: !5742, file: !3, line: 340, column: 7)
!5742 = distinct !DILexicalBlock(scope: !5735, file: !3, line: 339, column: 32)
!5743 = !DILocation(line: 340, column: 7, scope: !5741)
!5744 = !DILocation(line: 340, column: 7, scope: !5742)
!5745 = !DILocation(line: 341, column: 4, scope: !5741)
!5746 = !DILocation(line: 343, column: 13, scope: !5742)
!5747 = !DILocation(line: 343, column: 22, scope: !5742)
!5748 = !DILocation(line: 343, column: 33, scope: !5742)
!5749 = !DILocation(line: 343, column: 39, scope: !5742)
!5750 = !DILocation(line: 343, column: 37, scope: !5742)
!5751 = !DILocation(line: 343, column: 3, scope: !5742)
!5752 = !DILocation(line: 343, column: 8, scope: !5742)
!5753 = !DILocation(line: 343, column: 11, scope: !5742)
!5754 = !DILocation(line: 344, column: 2, scope: !5742)
!5755 = !DILocation(line: 339, column: 28, scope: !5735)
!5756 = !DILocation(line: 339, column: 2, scope: !5735)
!5757 = distinct !{!5757, !5739, !5758}
!5758 = !DILocation(line: 344, column: 2, scope: !5732)
!5759 = !DILocation(line: 346, column: 6, scope: !5703)
!5760 = !DILocation(line: 346, column: 15, scope: !5703)
!5761 = !DILocation(line: 346, column: 2, scope: !5703)
!5762 = !DILocation(line: 348, column: 9, scope: !5703)
!5763 = !DILocation(line: 348, column: 2, scope: !5703)
!5764 = distinct !DISubprogram(name: "vmk80xx_di_insn_bits", scope: !3, file: !3, line: 351, type: !3951, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5765 = !DILocalVariable(name: "dev", arg: 1, scope: !5764, file: !3, line: 351, type: !218)
!5766 = !DILocation(line: 351, column: 55, scope: !5764)
!5767 = !DILocalVariable(name: "s", arg: 2, scope: !5764, file: !3, line: 352, type: !3854)
!5768 = !DILocation(line: 352, column: 30, scope: !5764)
!5769 = !DILocalVariable(name: "insn", arg: 3, scope: !5764, file: !3, line: 353, type: !3953)
!5770 = !DILocation(line: 353, column: 25, scope: !5764)
!5771 = !DILocalVariable(name: "data", arg: 4, scope: !5764, file: !3, line: 354, type: !2699)
!5772 = !DILocation(line: 354, column: 19, scope: !5764)
!5773 = !DILocalVariable(name: "devpriv", scope: !5764, file: !3, line: 356, type: !4232)
!5774 = !DILocation(line: 356, column: 26, scope: !5764)
!5775 = !DILocation(line: 356, column: 36, scope: !5764)
!5776 = !DILocation(line: 356, column: 41, scope: !5764)
!5777 = !DILocalVariable(name: "rx_buf", scope: !5764, file: !3, line: 357, type: !4087)
!5778 = !DILocation(line: 357, column: 17, scope: !5764)
!5779 = !DILocalVariable(name: "reg", scope: !5764, file: !3, line: 358, type: !162)
!5780 = !DILocation(line: 358, column: 6, scope: !5764)
!5781 = !DILocalVariable(name: "retval", scope: !5764, file: !3, line: 359, type: !162)
!5782 = !DILocation(line: 359, column: 6, scope: !5764)
!5783 = !DILocation(line: 361, column: 8, scope: !5764)
!5784 = !DILocation(line: 361, column: 17, scope: !5764)
!5785 = !DILocation(line: 361, column: 2, scope: !5764)
!5786 = !DILocation(line: 363, column: 11, scope: !5764)
!5787 = !DILocation(line: 363, column: 20, scope: !5764)
!5788 = !DILocation(line: 363, column: 9, scope: !5764)
!5789 = !DILocation(line: 365, column: 6, scope: !5790)
!5790 = distinct !DILexicalBlock(scope: !5764, file: !3, line: 365, column: 6)
!5791 = !DILocation(line: 365, column: 15, scope: !5790)
!5792 = !DILocation(line: 365, column: 21, scope: !5790)
!5793 = !DILocation(line: 365, column: 6, scope: !5764)
!5794 = !DILocation(line: 366, column: 7, scope: !5795)
!5795 = distinct !DILexicalBlock(scope: !5790, file: !3, line: 365, column: 39)
!5796 = !DILocation(line: 367, column: 3, scope: !5795)
!5797 = !DILocation(line: 367, column: 12, scope: !5795)
!5798 = !DILocation(line: 367, column: 26, scope: !5795)
!5799 = !DILocation(line: 368, column: 2, scope: !5795)
!5800 = !DILocation(line: 369, column: 7, scope: !5801)
!5801 = distinct !DILexicalBlock(scope: !5790, file: !3, line: 368, column: 9)
!5802 = !DILocation(line: 372, column: 31, scope: !5764)
!5803 = !DILocation(line: 372, column: 11, scope: !5764)
!5804 = !DILocation(line: 372, column: 9, scope: !5764)
!5805 = !DILocation(line: 374, column: 7, scope: !5806)
!5806 = distinct !DILexicalBlock(scope: !5764, file: !3, line: 374, column: 6)
!5807 = !DILocation(line: 374, column: 6, scope: !5764)
!5808 = !DILocation(line: 375, column: 7, scope: !5809)
!5809 = distinct !DILexicalBlock(scope: !5810, file: !3, line: 375, column: 7)
!5810 = distinct !DILexicalBlock(scope: !5806, file: !3, line: 374, column: 15)
!5811 = !DILocation(line: 375, column: 16, scope: !5809)
!5812 = !DILocation(line: 375, column: 22, scope: !5809)
!5813 = !DILocation(line: 375, column: 7, scope: !5810)
!5814 = !DILocation(line: 376, column: 17, scope: !5809)
!5815 = !DILocation(line: 376, column: 24, scope: !5809)
!5816 = !DILocation(line: 376, column: 29, scope: !5809)
!5817 = !DILocation(line: 376, column: 35, scope: !5809)
!5818 = !DILocation(line: 377, column: 9, scope: !5809)
!5819 = !DILocation(line: 377, column: 16, scope: !5809)
!5820 = !DILocation(line: 377, column: 21, scope: !5809)
!5821 = !DILocation(line: 377, column: 27, scope: !5809)
!5822 = !DILocation(line: 376, column: 43, scope: !5809)
!5823 = !DILocation(line: 378, column: 9, scope: !5809)
!5824 = !DILocation(line: 378, column: 16, scope: !5809)
!5825 = !DILocation(line: 378, column: 21, scope: !5809)
!5826 = !DILocation(line: 378, column: 27, scope: !5809)
!5827 = !DILocation(line: 377, column: 35, scope: !5809)
!5828 = !DILocation(line: 376, column: 4, scope: !5809)
!5829 = !DILocation(line: 376, column: 12, scope: !5809)
!5830 = !DILocation(line: 380, column: 14, scope: !5809)
!5831 = !DILocation(line: 380, column: 21, scope: !5809)
!5832 = !DILocation(line: 380, column: 4, scope: !5809)
!5833 = !DILocation(line: 380, column: 12, scope: !5809)
!5834 = !DILocation(line: 382, column: 10, scope: !5810)
!5835 = !DILocation(line: 383, column: 2, scope: !5810)
!5836 = !DILocation(line: 385, column: 6, scope: !5764)
!5837 = !DILocation(line: 385, column: 15, scope: !5764)
!5838 = !DILocation(line: 385, column: 2, scope: !5764)
!5839 = !DILocation(line: 387, column: 9, scope: !5764)
!5840 = !DILocation(line: 387, column: 2, scope: !5764)
!5841 = distinct !DISubprogram(name: "vmk80xx_do_insn_bits", scope: !3, file: !3, line: 390, type: !3951, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5842 = !DILocalVariable(name: "dev", arg: 1, scope: !5841, file: !3, line: 390, type: !218)
!5843 = !DILocation(line: 390, column: 55, scope: !5841)
!5844 = !DILocalVariable(name: "s", arg: 2, scope: !5841, file: !3, line: 391, type: !3854)
!5845 = !DILocation(line: 391, column: 30, scope: !5841)
!5846 = !DILocalVariable(name: "insn", arg: 3, scope: !5841, file: !3, line: 392, type: !3953)
!5847 = !DILocation(line: 392, column: 25, scope: !5841)
!5848 = !DILocalVariable(name: "data", arg: 4, scope: !5841, file: !3, line: 393, type: !2699)
!5849 = !DILocation(line: 393, column: 19, scope: !5841)
!5850 = !DILocalVariable(name: "devpriv", scope: !5841, file: !3, line: 395, type: !4232)
!5851 = !DILocation(line: 395, column: 26, scope: !5841)
!5852 = !DILocation(line: 395, column: 36, scope: !5841)
!5853 = !DILocation(line: 395, column: 41, scope: !5841)
!5854 = !DILocalVariable(name: "rx_buf", scope: !5841, file: !3, line: 396, type: !4087)
!5855 = !DILocation(line: 396, column: 17, scope: !5841)
!5856 = !DILocation(line: 396, column: 26, scope: !5841)
!5857 = !DILocation(line: 396, column: 35, scope: !5841)
!5858 = !DILocalVariable(name: "tx_buf", scope: !5841, file: !3, line: 397, type: !4087)
!5859 = !DILocation(line: 397, column: 17, scope: !5841)
!5860 = !DILocation(line: 397, column: 26, scope: !5841)
!5861 = !DILocation(line: 397, column: 35, scope: !5841)
!5862 = !DILocalVariable(name: "reg", scope: !5841, file: !3, line: 398, type: !162)
!5863 = !DILocation(line: 398, column: 6, scope: !5841)
!5864 = !DILocalVariable(name: "cmd", scope: !5841, file: !3, line: 398, type: !162)
!5865 = !DILocation(line: 398, column: 11, scope: !5841)
!5866 = !DILocalVariable(name: "ret", scope: !5841, file: !3, line: 399, type: !162)
!5867 = !DILocation(line: 399, column: 6, scope: !5841)
!5868 = !DILocation(line: 401, column: 6, scope: !5869)
!5869 = distinct !DILexicalBlock(scope: !5841, file: !3, line: 401, column: 6)
!5870 = !DILocation(line: 401, column: 15, scope: !5869)
!5871 = !DILocation(line: 401, column: 21, scope: !5869)
!5872 = !DILocation(line: 401, column: 6, scope: !5841)
!5873 = !DILocation(line: 402, column: 7, scope: !5874)
!5874 = distinct !DILexicalBlock(scope: !5869, file: !3, line: 401, column: 39)
!5875 = !DILocation(line: 403, column: 7, scope: !5874)
!5876 = !DILocation(line: 404, column: 2, scope: !5874)
!5877 = !DILocation(line: 405, column: 7, scope: !5878)
!5878 = distinct !DILexicalBlock(scope: !5869, file: !3, line: 404, column: 9)
!5879 = !DILocation(line: 406, column: 7, scope: !5878)
!5880 = !DILocation(line: 409, column: 8, scope: !5841)
!5881 = !DILocation(line: 409, column: 17, scope: !5841)
!5882 = !DILocation(line: 409, column: 2, scope: !5841)
!5883 = !DILocation(line: 411, column: 30, scope: !5884)
!5884 = distinct !DILexicalBlock(scope: !5841, file: !3, line: 411, column: 6)
!5885 = !DILocation(line: 411, column: 33, scope: !5884)
!5886 = !DILocation(line: 411, column: 6, scope: !5884)
!5887 = !DILocation(line: 411, column: 6, scope: !5841)
!5888 = !DILocation(line: 412, column: 17, scope: !5889)
!5889 = distinct !DILexicalBlock(scope: !5884, file: !3, line: 411, column: 40)
!5890 = !DILocation(line: 412, column: 20, scope: !5889)
!5891 = !DILocation(line: 412, column: 3, scope: !5889)
!5892 = !DILocation(line: 412, column: 10, scope: !5889)
!5893 = !DILocation(line: 412, column: 15, scope: !5889)
!5894 = !DILocation(line: 413, column: 30, scope: !5889)
!5895 = !DILocation(line: 413, column: 35, scope: !5889)
!5896 = !DILocation(line: 413, column: 9, scope: !5889)
!5897 = !DILocation(line: 413, column: 7, scope: !5889)
!5898 = !DILocation(line: 414, column: 7, scope: !5899)
!5899 = distinct !DILexicalBlock(scope: !5889, file: !3, line: 414, column: 7)
!5900 = !DILocation(line: 414, column: 7, scope: !5889)
!5901 = !DILocation(line: 415, column: 4, scope: !5899)
!5902 = !DILocation(line: 416, column: 2, scope: !5889)
!5903 = !DILocation(line: 418, column: 6, scope: !5904)
!5904 = distinct !DILexicalBlock(scope: !5841, file: !3, line: 418, column: 6)
!5905 = !DILocation(line: 418, column: 15, scope: !5904)
!5906 = !DILocation(line: 418, column: 21, scope: !5904)
!5907 = !DILocation(line: 418, column: 6, scope: !5841)
!5908 = !DILocation(line: 419, column: 3, scope: !5909)
!5909 = distinct !DILexicalBlock(scope: !5904, file: !3, line: 418, column: 39)
!5910 = !DILocation(line: 419, column: 13, scope: !5909)
!5911 = !DILocation(line: 420, column: 29, scope: !5909)
!5912 = !DILocation(line: 420, column: 9, scope: !5909)
!5913 = !DILocation(line: 420, column: 7, scope: !5909)
!5914 = !DILocation(line: 421, column: 7, scope: !5915)
!5915 = distinct !DILexicalBlock(scope: !5909, file: !3, line: 421, column: 7)
!5916 = !DILocation(line: 421, column: 7, scope: !5909)
!5917 = !DILocation(line: 422, column: 4, scope: !5915)
!5918 = !DILocation(line: 423, column: 13, scope: !5909)
!5919 = !DILocation(line: 423, column: 20, scope: !5909)
!5920 = !DILocation(line: 423, column: 3, scope: !5909)
!5921 = !DILocation(line: 423, column: 11, scope: !5909)
!5922 = !DILocation(line: 424, column: 2, scope: !5909)
!5923 = !DILocation(line: 425, column: 13, scope: !5924)
!5924 = distinct !DILexicalBlock(scope: !5904, file: !3, line: 424, column: 9)
!5925 = !DILocation(line: 425, column: 16, scope: !5924)
!5926 = !DILocation(line: 425, column: 3, scope: !5924)
!5927 = !DILocation(line: 425, column: 11, scope: !5924)
!5928 = !DILocation(line: 418, column: 24, scope: !5904)
!5929 = !DILabel(scope: !5841, name: "out", file: !3, line: 428)
!5930 = !DILocation(line: 428, column: 1, scope: !5841)
!5931 = !DILocation(line: 429, column: 6, scope: !5841)
!5932 = !DILocation(line: 429, column: 15, scope: !5841)
!5933 = !DILocation(line: 429, column: 2, scope: !5841)
!5934 = !DILocation(line: 431, column: 9, scope: !5841)
!5935 = !DILocation(line: 431, column: 15, scope: !5841)
!5936 = !DILocation(line: 431, column: 21, scope: !5841)
!5937 = !DILocation(line: 431, column: 27, scope: !5841)
!5938 = !DILocation(line: 431, column: 2, scope: !5841)
!5939 = distinct !DISubprogram(name: "vmk80xx_cnt_insn_read", scope: !3, file: !3, line: 434, type: !3951, scopeLine: 438, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5940 = !DILocalVariable(name: "dev", arg: 1, scope: !5939, file: !3, line: 434, type: !218)
!5941 = !DILocation(line: 434, column: 56, scope: !5939)
!5942 = !DILocalVariable(name: "s", arg: 2, scope: !5939, file: !3, line: 435, type: !3854)
!5943 = !DILocation(line: 435, column: 31, scope: !5939)
!5944 = !DILocalVariable(name: "insn", arg: 3, scope: !5939, file: !3, line: 436, type: !3953)
!5945 = !DILocation(line: 436, column: 26, scope: !5939)
!5946 = !DILocalVariable(name: "data", arg: 4, scope: !5939, file: !3, line: 437, type: !2699)
!5947 = !DILocation(line: 437, column: 20, scope: !5939)
!5948 = !DILocalVariable(name: "devpriv", scope: !5939, file: !3, line: 439, type: !4232)
!5949 = !DILocation(line: 439, column: 26, scope: !5939)
!5950 = !DILocation(line: 439, column: 36, scope: !5939)
!5951 = !DILocation(line: 439, column: 41, scope: !5939)
!5952 = !DILocalVariable(name: "chan", scope: !5939, file: !3, line: 440, type: !162)
!5953 = !DILocation(line: 440, column: 6, scope: !5939)
!5954 = !DILocalVariable(name: "reg", scope: !5939, file: !3, line: 441, type: !5544)
!5955 = !DILocation(line: 441, column: 6, scope: !5939)
!5956 = !DILocalVariable(name: "n", scope: !5939, file: !3, line: 442, type: !162)
!5957 = !DILocation(line: 442, column: 6, scope: !5939)
!5958 = !DILocation(line: 444, column: 8, scope: !5939)
!5959 = !DILocation(line: 444, column: 17, scope: !5939)
!5960 = !DILocation(line: 444, column: 2, scope: !5939)
!5961 = !DILocation(line: 445, column: 9, scope: !5939)
!5962 = !DILocation(line: 445, column: 7, scope: !5939)
!5963 = !DILocation(line: 447, column: 10, scope: !5939)
!5964 = !DILocation(line: 447, column: 19, scope: !5939)
!5965 = !DILocation(line: 447, column: 2, scope: !5939)
!5966 = !DILocation(line: 449, column: 8, scope: !5967)
!5967 = distinct !DILexicalBlock(scope: !5968, file: !3, line: 449, column: 7)
!5968 = distinct !DILexicalBlock(scope: !5939, file: !3, line: 447, column: 26)
!5969 = !DILocation(line: 449, column: 7, scope: !5968)
!5970 = !DILocation(line: 450, column: 4, scope: !5967)
!5971 = !DILocation(line: 450, column: 11, scope: !5967)
!5972 = !DILocation(line: 452, column: 4, scope: !5967)
!5973 = !DILocation(line: 452, column: 11, scope: !5967)
!5974 = !DILocation(line: 453, column: 3, scope: !5968)
!5975 = !DILocation(line: 456, column: 3, scope: !5968)
!5976 = !DILocation(line: 456, column: 10, scope: !5968)
!5977 = !DILocation(line: 457, column: 3, scope: !5968)
!5978 = !DILocation(line: 457, column: 10, scope: !5968)
!5979 = !DILocation(line: 458, column: 3, scope: !5968)
!5980 = !DILocation(line: 458, column: 12, scope: !5968)
!5981 = !DILocation(line: 458, column: 26, scope: !5968)
!5982 = !DILocation(line: 459, column: 3, scope: !5968)
!5983 = !DILocation(line: 462, column: 9, scope: !5984)
!5984 = distinct !DILexicalBlock(scope: !5939, file: !3, line: 462, column: 2)
!5985 = !DILocation(line: 462, column: 7, scope: !5984)
!5986 = !DILocation(line: 462, column: 14, scope: !5987)
!5987 = distinct !DILexicalBlock(scope: !5984, file: !3, line: 462, column: 2)
!5988 = !DILocation(line: 462, column: 18, scope: !5987)
!5989 = !DILocation(line: 462, column: 24, scope: !5987)
!5990 = !DILocation(line: 462, column: 16, scope: !5987)
!5991 = !DILocation(line: 462, column: 2, scope: !5984)
!5992 = !DILocation(line: 463, column: 27, scope: !5993)
!5993 = distinct !DILexicalBlock(scope: !5994, file: !3, line: 463, column: 7)
!5994 = distinct !DILexicalBlock(scope: !5987, file: !3, line: 462, column: 32)
!5995 = !DILocation(line: 463, column: 7, scope: !5993)
!5996 = !DILocation(line: 463, column: 7, scope: !5994)
!5997 = !DILocation(line: 464, column: 4, scope: !5993)
!5998 = !DILocation(line: 466, column: 7, scope: !5999)
!5999 = distinct !DILexicalBlock(scope: !5994, file: !3, line: 466, column: 7)
!6000 = !DILocation(line: 466, column: 16, scope: !5999)
!6001 = !DILocation(line: 466, column: 22, scope: !5999)
!6002 = !DILocation(line: 466, column: 7, scope: !5994)
!6003 = !DILocation(line: 467, column: 14, scope: !5999)
!6004 = !DILocation(line: 467, column: 23, scope: !5999)
!6005 = !DILocation(line: 467, column: 34, scope: !5999)
!6006 = !DILocation(line: 467, column: 4, scope: !5999)
!6007 = !DILocation(line: 467, column: 9, scope: !5999)
!6008 = !DILocation(line: 467, column: 12, scope: !5999)
!6009 = !DILocation(line: 469, column: 14, scope: !5999)
!6010 = !DILocation(line: 469, column: 23, scope: !5999)
!6011 = !DILocation(line: 469, column: 34, scope: !5999)
!6012 = !DILocation(line: 469, column: 44, scope: !5999)
!6013 = !DILocation(line: 469, column: 49, scope: !5999)
!6014 = !DILocation(line: 469, column: 41, scope: !5999)
!6015 = !DILocation(line: 469, column: 54, scope: !5999)
!6016 = !DILocation(line: 470, column: 16, scope: !5999)
!6017 = !DILocation(line: 470, column: 25, scope: !5999)
!6018 = !DILocation(line: 470, column: 36, scope: !5999)
!6019 = !DILocation(line: 470, column: 43, scope: !5999)
!6020 = !DILocation(line: 470, column: 47, scope: !5999)
!6021 = !DILocation(line: 470, column: 14, scope: !5999)
!6022 = !DILocation(line: 470, column: 8, scope: !5999)
!6023 = !DILocation(line: 469, column: 4, scope: !5999)
!6024 = !DILocation(line: 469, column: 9, scope: !5999)
!6025 = !DILocation(line: 469, column: 12, scope: !5999)
!6026 = !DILocation(line: 471, column: 2, scope: !5994)
!6027 = !DILocation(line: 462, column: 28, scope: !5987)
!6028 = !DILocation(line: 462, column: 2, scope: !5987)
!6029 = distinct !{!6029, !5991, !6030}
!6030 = !DILocation(line: 471, column: 2, scope: !5984)
!6031 = !DILocation(line: 473, column: 6, scope: !5939)
!6032 = !DILocation(line: 473, column: 15, scope: !5939)
!6033 = !DILocation(line: 473, column: 2, scope: !5939)
!6034 = !DILocation(line: 475, column: 9, scope: !5939)
!6035 = !DILocation(line: 475, column: 2, scope: !5939)
!6036 = distinct !DISubprogram(name: "vmk80xx_cnt_insn_config", scope: !3, file: !3, line: 478, type: !3951, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!6037 = !DILocalVariable(name: "dev", arg: 1, scope: !6036, file: !3, line: 478, type: !218)
!6038 = !DILocation(line: 478, column: 58, scope: !6036)
!6039 = !DILocalVariable(name: "s", arg: 2, scope: !6036, file: !3, line: 479, type: !3854)
!6040 = !DILocation(line: 479, column: 33, scope: !6036)
!6041 = !DILocalVariable(name: "insn", arg: 3, scope: !6036, file: !3, line: 480, type: !3953)
!6042 = !DILocation(line: 480, column: 28, scope: !6036)
!6043 = !DILocalVariable(name: "data", arg: 4, scope: !6036, file: !3, line: 481, type: !2699)
!6044 = !DILocation(line: 481, column: 22, scope: !6036)
!6045 = !DILocalVariable(name: "devpriv", scope: !6036, file: !3, line: 483, type: !4232)
!6046 = !DILocation(line: 483, column: 26, scope: !6036)
!6047 = !DILocation(line: 483, column: 36, scope: !6036)
!6048 = !DILocation(line: 483, column: 41, scope: !6036)
!6049 = !DILocalVariable(name: "chan", scope: !6036, file: !3, line: 484, type: !7)
!6050 = !DILocation(line: 484, column: 15, scope: !6036)
!6051 = !DILocation(line: 484, column: 22, scope: !6036)
!6052 = !DILocalVariable(name: "cmd", scope: !6036, file: !3, line: 485, type: !162)
!6053 = !DILocation(line: 485, column: 6, scope: !6036)
!6054 = !DILocalVariable(name: "reg", scope: !6036, file: !3, line: 486, type: !162)
!6055 = !DILocation(line: 486, column: 6, scope: !6036)
!6056 = !DILocalVariable(name: "ret", scope: !6036, file: !3, line: 487, type: !162)
!6057 = !DILocation(line: 487, column: 6, scope: !6036)
!6058 = !DILocation(line: 489, column: 8, scope: !6036)
!6059 = !DILocation(line: 489, column: 17, scope: !6036)
!6060 = !DILocation(line: 489, column: 2, scope: !6036)
!6061 = !DILocation(line: 490, column: 10, scope: !6036)
!6062 = !DILocation(line: 490, column: 2, scope: !6036)
!6063 = !DILocation(line: 492, column: 7, scope: !6064)
!6064 = distinct !DILexicalBlock(scope: !6065, file: !3, line: 492, column: 7)
!6065 = distinct !DILexicalBlock(scope: !6036, file: !3, line: 490, column: 19)
!6066 = !DILocation(line: 492, column: 16, scope: !6064)
!6067 = !DILocation(line: 492, column: 22, scope: !6064)
!6068 = !DILocation(line: 492, column: 7, scope: !6065)
!6069 = !DILocation(line: 493, column: 9, scope: !6070)
!6070 = distinct !DILexicalBlock(scope: !6071, file: !3, line: 493, column: 8)
!6071 = distinct !DILexicalBlock(scope: !6064, file: !3, line: 492, column: 40)
!6072 = !DILocation(line: 493, column: 8, scope: !6071)
!6073 = !DILocation(line: 494, column: 9, scope: !6074)
!6074 = distinct !DILexicalBlock(scope: !6070, file: !3, line: 493, column: 15)
!6075 = !DILocation(line: 495, column: 9, scope: !6074)
!6076 = !DILocation(line: 496, column: 4, scope: !6074)
!6077 = !DILocation(line: 497, column: 9, scope: !6078)
!6078 = distinct !DILexicalBlock(scope: !6070, file: !3, line: 496, column: 11)
!6079 = !DILocation(line: 498, column: 9, scope: !6078)
!6080 = !DILocation(line: 500, column: 4, scope: !6071)
!6081 = !DILocation(line: 500, column: 13, scope: !6071)
!6082 = !DILocation(line: 500, column: 24, scope: !6071)
!6083 = !DILocation(line: 500, column: 29, scope: !6071)
!6084 = !DILocation(line: 501, column: 3, scope: !6071)
!6085 = !DILocation(line: 502, column: 8, scope: !6086)
!6086 = distinct !DILexicalBlock(scope: !6064, file: !3, line: 501, column: 10)
!6087 = !DILocation(line: 504, column: 30, scope: !6065)
!6088 = !DILocation(line: 504, column: 35, scope: !6065)
!6089 = !DILocation(line: 504, column: 9, scope: !6065)
!6090 = !DILocation(line: 504, column: 7, scope: !6065)
!6091 = !DILocation(line: 505, column: 3, scope: !6065)
!6092 = !DILocation(line: 507, column: 7, scope: !6065)
!6093 = !DILocation(line: 508, column: 3, scope: !6065)
!6094 = !DILocation(line: 510, column: 6, scope: !6036)
!6095 = !DILocation(line: 510, column: 15, scope: !6036)
!6096 = !DILocation(line: 510, column: 2, scope: !6036)
!6097 = !DILocation(line: 512, column: 9, scope: !6036)
!6098 = !DILocation(line: 512, column: 15, scope: !6036)
!6099 = !DILocation(line: 512, column: 21, scope: !6036)
!6100 = !DILocation(line: 512, column: 27, scope: !6036)
!6101 = !DILocation(line: 512, column: 2, scope: !6036)
!6102 = distinct !DISubprogram(name: "vmk80xx_cnt_insn_write", scope: !3, file: !3, line: 515, type: !3951, scopeLine: 519, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!6103 = !DILocalVariable(name: "dev", arg: 1, scope: !6102, file: !3, line: 515, type: !218)
!6104 = !DILocation(line: 515, column: 57, scope: !6102)
!6105 = !DILocalVariable(name: "s", arg: 2, scope: !6102, file: !3, line: 516, type: !3854)
!6106 = !DILocation(line: 516, column: 32, scope: !6102)
!6107 = !DILocalVariable(name: "insn", arg: 3, scope: !6102, file: !3, line: 517, type: !3953)
!6108 = !DILocation(line: 517, column: 27, scope: !6102)
!6109 = !DILocalVariable(name: "data", arg: 4, scope: !6102, file: !3, line: 518, type: !2699)
!6110 = !DILocation(line: 518, column: 21, scope: !6102)
!6111 = !DILocalVariable(name: "devpriv", scope: !6102, file: !3, line: 520, type: !4232)
!6112 = !DILocation(line: 520, column: 26, scope: !6102)
!6113 = !DILocation(line: 520, column: 36, scope: !6102)
!6114 = !DILocation(line: 520, column: 41, scope: !6102)
!6115 = !DILocalVariable(name: "debtime", scope: !6102, file: !3, line: 521, type: !340)
!6116 = !DILocation(line: 521, column: 16, scope: !6102)
!6117 = !DILocalVariable(name: "val", scope: !6102, file: !3, line: 522, type: !340)
!6118 = !DILocation(line: 522, column: 16, scope: !6102)
!6119 = !DILocalVariable(name: "chan", scope: !6102, file: !3, line: 523, type: !162)
!6120 = !DILocation(line: 523, column: 6, scope: !6102)
!6121 = !DILocalVariable(name: "cmd", scope: !6102, file: !3, line: 524, type: !162)
!6122 = !DILocation(line: 524, column: 6, scope: !6102)
!6123 = !DILocalVariable(name: "n", scope: !6102, file: !3, line: 525, type: !162)
!6124 = !DILocation(line: 525, column: 6, scope: !6102)
!6125 = !DILocation(line: 527, column: 8, scope: !6102)
!6126 = !DILocation(line: 527, column: 17, scope: !6102)
!6127 = !DILocation(line: 527, column: 2, scope: !6102)
!6128 = !DILocation(line: 528, column: 9, scope: !6102)
!6129 = !DILocation(line: 528, column: 7, scope: !6102)
!6130 = !DILocation(line: 530, column: 7, scope: !6131)
!6131 = distinct !DILexicalBlock(scope: !6102, file: !3, line: 530, column: 6)
!6132 = !DILocation(line: 530, column: 6, scope: !6102)
!6133 = !DILocation(line: 531, column: 7, scope: !6131)
!6134 = !DILocation(line: 531, column: 3, scope: !6131)
!6135 = !DILocation(line: 533, column: 7, scope: !6131)
!6136 = !DILocation(line: 535, column: 9, scope: !6137)
!6137 = distinct !DILexicalBlock(scope: !6102, file: !3, line: 535, column: 2)
!6138 = !DILocation(line: 535, column: 7, scope: !6137)
!6139 = !DILocation(line: 535, column: 14, scope: !6140)
!6140 = distinct !DILexicalBlock(scope: !6137, file: !3, line: 535, column: 2)
!6141 = !DILocation(line: 535, column: 18, scope: !6140)
!6142 = !DILocation(line: 535, column: 24, scope: !6140)
!6143 = !DILocation(line: 535, column: 16, scope: !6140)
!6144 = !DILocation(line: 535, column: 2, scope: !6137)
!6145 = !DILocation(line: 536, column: 13, scope: !6146)
!6146 = distinct !DILexicalBlock(scope: !6140, file: !3, line: 535, column: 32)
!6147 = !DILocation(line: 536, column: 18, scope: !6146)
!6148 = !DILocation(line: 536, column: 11, scope: !6146)
!6149 = !DILocation(line: 537, column: 7, scope: !6150)
!6150 = distinct !DILexicalBlock(scope: !6146, file: !3, line: 537, column: 7)
!6151 = !DILocation(line: 537, column: 15, scope: !6150)
!6152 = !DILocation(line: 537, column: 7, scope: !6146)
!6153 = !DILocation(line: 538, column: 12, scope: !6150)
!6154 = !DILocation(line: 538, column: 4, scope: !6150)
!6155 = !DILocation(line: 541, column: 7, scope: !6156)
!6156 = distinct !DILexicalBlock(scope: !6146, file: !3, line: 541, column: 7)
!6157 = !DILocation(line: 541, column: 15, scope: !6156)
!6158 = !DILocation(line: 541, column: 7, scope: !6146)
!6159 = !DILocation(line: 542, column: 12, scope: !6156)
!6160 = !DILocation(line: 542, column: 4, scope: !6156)
!6161 = !DILocation(line: 544, column: 18, scope: !6146)
!6162 = !DILocation(line: 544, column: 26, scope: !6146)
!6163 = !DILocation(line: 544, column: 33, scope: !6146)
!6164 = !DILocation(line: 544, column: 9, scope: !6146)
!6165 = !DILocation(line: 544, column: 7, scope: !6146)
!6166 = !DILocation(line: 545, column: 9, scope: !6167)
!6167 = distinct !DILexicalBlock(scope: !6146, file: !3, line: 545, column: 7)
!6168 = !DILocation(line: 545, column: 13, scope: !6167)
!6169 = !DILocation(line: 545, column: 20, scope: !6167)
!6170 = !DILocation(line: 545, column: 18, scope: !6167)
!6171 = !DILocation(line: 545, column: 27, scope: !6167)
!6172 = !DILocation(line: 545, column: 35, scope: !6167)
!6173 = !DILocation(line: 545, column: 42, scope: !6167)
!6174 = !DILocation(line: 545, column: 25, scope: !6167)
!6175 = !DILocation(line: 545, column: 7, scope: !6146)
!6176 = !DILocation(line: 546, column: 8, scope: !6167)
!6177 = !DILocation(line: 546, column: 4, scope: !6167)
!6178 = !DILocation(line: 548, column: 35, scope: !6146)
!6179 = !DILocation(line: 548, column: 3, scope: !6146)
!6180 = !DILocation(line: 548, column: 12, scope: !6146)
!6181 = !DILocation(line: 548, column: 27, scope: !6146)
!6182 = !DILocation(line: 548, column: 25, scope: !6146)
!6183 = !DILocation(line: 548, column: 33, scope: !6146)
!6184 = !DILocation(line: 550, column: 28, scope: !6185)
!6185 = distinct !DILexicalBlock(scope: !6146, file: !3, line: 550, column: 7)
!6186 = !DILocation(line: 550, column: 33, scope: !6185)
!6187 = !DILocation(line: 550, column: 7, scope: !6185)
!6188 = !DILocation(line: 550, column: 7, scope: !6146)
!6189 = !DILocation(line: 551, column: 4, scope: !6185)
!6190 = !DILocation(line: 552, column: 2, scope: !6146)
!6191 = !DILocation(line: 535, column: 28, scope: !6140)
!6192 = !DILocation(line: 535, column: 2, scope: !6140)
!6193 = distinct !{!6193, !6144, !6194}
!6194 = !DILocation(line: 552, column: 2, scope: !6137)
!6195 = !DILocation(line: 554, column: 6, scope: !6102)
!6196 = !DILocation(line: 554, column: 15, scope: !6102)
!6197 = !DILocation(line: 554, column: 2, scope: !6102)
!6198 = !DILocation(line: 556, column: 9, scope: !6102)
!6199 = !DILocation(line: 556, column: 2, scope: !6102)
!6200 = distinct !DISubprogram(name: "vmk80xx_pwm_insn_read", scope: !3, file: !3, line: 559, type: !3951, scopeLine: 563, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!6201 = !DILocalVariable(name: "dev", arg: 1, scope: !6200, file: !3, line: 559, type: !218)
!6202 = !DILocation(line: 559, column: 56, scope: !6200)
!6203 = !DILocalVariable(name: "s", arg: 2, scope: !6200, file: !3, line: 560, type: !3854)
!6204 = !DILocation(line: 560, column: 31, scope: !6200)
!6205 = !DILocalVariable(name: "insn", arg: 3, scope: !6200, file: !3, line: 561, type: !3953)
!6206 = !DILocation(line: 561, column: 26, scope: !6200)
!6207 = !DILocalVariable(name: "data", arg: 4, scope: !6200, file: !3, line: 562, type: !2699)
!6208 = !DILocation(line: 562, column: 20, scope: !6200)
!6209 = !DILocalVariable(name: "devpriv", scope: !6200, file: !3, line: 564, type: !4232)
!6210 = !DILocation(line: 564, column: 26, scope: !6200)
!6211 = !DILocation(line: 564, column: 36, scope: !6200)
!6212 = !DILocation(line: 564, column: 41, scope: !6200)
!6213 = !DILocalVariable(name: "tx_buf", scope: !6200, file: !3, line: 565, type: !4087)
!6214 = !DILocation(line: 565, column: 17, scope: !6200)
!6215 = !DILocalVariable(name: "rx_buf", scope: !6200, file: !3, line: 566, type: !4087)
!6216 = !DILocation(line: 566, column: 17, scope: !6200)
!6217 = !DILocalVariable(name: "reg", scope: !6200, file: !3, line: 567, type: !5544)
!6218 = !DILocation(line: 567, column: 6, scope: !6200)
!6219 = !DILocalVariable(name: "n", scope: !6200, file: !3, line: 568, type: !162)
!6220 = !DILocation(line: 568, column: 6, scope: !6200)
!6221 = !DILocation(line: 570, column: 8, scope: !6200)
!6222 = !DILocation(line: 570, column: 17, scope: !6200)
!6223 = !DILocation(line: 570, column: 2, scope: !6200)
!6224 = !DILocation(line: 572, column: 11, scope: !6200)
!6225 = !DILocation(line: 572, column: 20, scope: !6200)
!6226 = !DILocation(line: 572, column: 9, scope: !6200)
!6227 = !DILocation(line: 573, column: 11, scope: !6200)
!6228 = !DILocation(line: 573, column: 20, scope: !6200)
!6229 = !DILocation(line: 573, column: 9, scope: !6200)
!6230 = !DILocation(line: 575, column: 2, scope: !6200)
!6231 = !DILocation(line: 575, column: 9, scope: !6200)
!6232 = !DILocation(line: 576, column: 2, scope: !6200)
!6233 = !DILocation(line: 576, column: 9, scope: !6200)
!6234 = !DILocation(line: 578, column: 2, scope: !6200)
!6235 = !DILocation(line: 578, column: 12, scope: !6200)
!6236 = !DILocation(line: 580, column: 9, scope: !6237)
!6237 = distinct !DILexicalBlock(scope: !6200, file: !3, line: 580, column: 2)
!6238 = !DILocation(line: 580, column: 7, scope: !6237)
!6239 = !DILocation(line: 580, column: 14, scope: !6240)
!6240 = distinct !DILexicalBlock(scope: !6237, file: !3, line: 580, column: 2)
!6241 = !DILocation(line: 580, column: 18, scope: !6240)
!6242 = !DILocation(line: 580, column: 24, scope: !6240)
!6243 = !DILocation(line: 580, column: 16, scope: !6240)
!6244 = !DILocation(line: 580, column: 2, scope: !6237)
!6245 = !DILocation(line: 581, column: 27, scope: !6246)
!6246 = distinct !DILexicalBlock(scope: !6247, file: !3, line: 581, column: 7)
!6247 = distinct !DILexicalBlock(scope: !6240, file: !3, line: 580, column: 32)
!6248 = !DILocation(line: 581, column: 7, scope: !6246)
!6249 = !DILocation(line: 581, column: 7, scope: !6247)
!6250 = !DILocation(line: 582, column: 4, scope: !6246)
!6251 = !DILocation(line: 584, column: 13, scope: !6247)
!6252 = !DILocation(line: 584, column: 20, scope: !6247)
!6253 = !DILocation(line: 584, column: 34, scope: !6247)
!6254 = !DILocation(line: 584, column: 41, scope: !6247)
!6255 = !DILocation(line: 584, column: 32, scope: !6247)
!6256 = !DILocation(line: 584, column: 28, scope: !6247)
!6257 = !DILocation(line: 584, column: 3, scope: !6247)
!6258 = !DILocation(line: 584, column: 8, scope: !6247)
!6259 = !DILocation(line: 584, column: 11, scope: !6247)
!6260 = !DILocation(line: 585, column: 2, scope: !6247)
!6261 = !DILocation(line: 580, column: 28, scope: !6240)
!6262 = !DILocation(line: 580, column: 2, scope: !6240)
!6263 = distinct !{!6263, !6244, !6264}
!6264 = !DILocation(line: 585, column: 2, scope: !6237)
!6265 = !DILocation(line: 587, column: 6, scope: !6200)
!6266 = !DILocation(line: 587, column: 15, scope: !6200)
!6267 = !DILocation(line: 587, column: 2, scope: !6200)
!6268 = !DILocation(line: 589, column: 9, scope: !6200)
!6269 = !DILocation(line: 589, column: 2, scope: !6200)
!6270 = distinct !DISubprogram(name: "vmk80xx_pwm_insn_write", scope: !3, file: !3, line: 592, type: !3951, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!6271 = !DILocalVariable(name: "dev", arg: 1, scope: !6270, file: !3, line: 592, type: !218)
!6272 = !DILocation(line: 592, column: 57, scope: !6270)
!6273 = !DILocalVariable(name: "s", arg: 2, scope: !6270, file: !3, line: 593, type: !3854)
!6274 = !DILocation(line: 593, column: 32, scope: !6270)
!6275 = !DILocalVariable(name: "insn", arg: 3, scope: !6270, file: !3, line: 594, type: !3953)
!6276 = !DILocation(line: 594, column: 27, scope: !6270)
!6277 = !DILocalVariable(name: "data", arg: 4, scope: !6270, file: !3, line: 595, type: !2699)
!6278 = !DILocation(line: 595, column: 21, scope: !6270)
!6279 = !DILocalVariable(name: "devpriv", scope: !6270, file: !3, line: 597, type: !4232)
!6280 = !DILocation(line: 597, column: 26, scope: !6270)
!6281 = !DILocation(line: 597, column: 36, scope: !6270)
!6282 = !DILocation(line: 597, column: 41, scope: !6270)
!6283 = !DILocalVariable(name: "tx_buf", scope: !6270, file: !3, line: 598, type: !4087)
!6284 = !DILocation(line: 598, column: 17, scope: !6270)
!6285 = !DILocalVariable(name: "reg", scope: !6270, file: !3, line: 599, type: !5544)
!6286 = !DILocation(line: 599, column: 6, scope: !6270)
!6287 = !DILocalVariable(name: "cmd", scope: !6270, file: !3, line: 600, type: !162)
!6288 = !DILocation(line: 600, column: 6, scope: !6270)
!6289 = !DILocalVariable(name: "n", scope: !6270, file: !3, line: 601, type: !162)
!6290 = !DILocation(line: 601, column: 6, scope: !6270)
!6291 = !DILocation(line: 603, column: 8, scope: !6270)
!6292 = !DILocation(line: 603, column: 17, scope: !6270)
!6293 = !DILocation(line: 603, column: 2, scope: !6270)
!6294 = !DILocation(line: 605, column: 11, scope: !6270)
!6295 = !DILocation(line: 605, column: 20, scope: !6270)
!6296 = !DILocation(line: 605, column: 9, scope: !6270)
!6297 = !DILocation(line: 607, column: 2, scope: !6270)
!6298 = !DILocation(line: 607, column: 9, scope: !6270)
!6299 = !DILocation(line: 608, column: 2, scope: !6270)
!6300 = !DILocation(line: 608, column: 9, scope: !6270)
!6301 = !DILocation(line: 610, column: 6, scope: !6270)
!6302 = !DILocation(line: 625, column: 9, scope: !6303)
!6303 = distinct !DILexicalBlock(scope: !6270, file: !3, line: 625, column: 2)
!6304 = !DILocation(line: 625, column: 7, scope: !6303)
!6305 = !DILocation(line: 625, column: 14, scope: !6306)
!6306 = distinct !DILexicalBlock(scope: !6303, file: !3, line: 625, column: 2)
!6307 = !DILocation(line: 625, column: 18, scope: !6306)
!6308 = !DILocation(line: 625, column: 24, scope: !6306)
!6309 = !DILocation(line: 625, column: 16, scope: !6306)
!6310 = !DILocation(line: 625, column: 2, scope: !6303)
!6311 = !DILocation(line: 626, column: 36, scope: !6312)
!6312 = distinct !DILexicalBlock(scope: !6306, file: !3, line: 625, column: 32)
!6313 = !DILocation(line: 626, column: 41, scope: !6312)
!6314 = !DILocation(line: 626, column: 44, scope: !6312)
!6315 = !DILocation(line: 626, column: 20, scope: !6312)
!6316 = !DILocation(line: 626, column: 3, scope: !6312)
!6317 = !DILocation(line: 626, column: 10, scope: !6312)
!6318 = !DILocation(line: 626, column: 18, scope: !6312)
!6319 = !DILocation(line: 627, column: 36, scope: !6312)
!6320 = !DILocation(line: 627, column: 41, scope: !6312)
!6321 = !DILocation(line: 627, column: 44, scope: !6312)
!6322 = !DILocation(line: 627, column: 20, scope: !6312)
!6323 = !DILocation(line: 627, column: 50, scope: !6312)
!6324 = !DILocation(line: 627, column: 3, scope: !6312)
!6325 = !DILocation(line: 627, column: 10, scope: !6312)
!6326 = !DILocation(line: 627, column: 18, scope: !6312)
!6327 = !DILocation(line: 629, column: 28, scope: !6328)
!6328 = distinct !DILexicalBlock(scope: !6312, file: !3, line: 629, column: 7)
!6329 = !DILocation(line: 629, column: 33, scope: !6328)
!6330 = !DILocation(line: 629, column: 7, scope: !6328)
!6331 = !DILocation(line: 629, column: 7, scope: !6312)
!6332 = !DILocation(line: 630, column: 4, scope: !6328)
!6333 = !DILocation(line: 631, column: 2, scope: !6312)
!6334 = !DILocation(line: 625, column: 28, scope: !6306)
!6335 = !DILocation(line: 625, column: 2, scope: !6306)
!6336 = distinct !{!6336, !6310, !6337}
!6337 = !DILocation(line: 631, column: 2, scope: !6303)
!6338 = !DILocation(line: 633, column: 6, scope: !6270)
!6339 = !DILocation(line: 633, column: 15, scope: !6270)
!6340 = !DILocation(line: 633, column: 2, scope: !6270)
!6341 = !DILocation(line: 635, column: 9, scope: !6270)
!6342 = !DILocation(line: 635, column: 2, scope: !6270)
!6343 = distinct !DISubprogram(name: "vmk80xx_read_packet", scope: !3, file: !3, line: 178, type: !3996, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!6344 = !DILocalVariable(name: "dev", arg: 1, scope: !6343, file: !3, line: 178, type: !218)
!6345 = !DILocation(line: 178, column: 54, scope: !6343)
!6346 = !DILocalVariable(name: "devpriv", scope: !6343, file: !3, line: 180, type: !4232)
!6347 = !DILocation(line: 180, column: 26, scope: !6343)
!6348 = !DILocation(line: 180, column: 36, scope: !6343)
!6349 = !DILocation(line: 180, column: 41, scope: !6343)
!6350 = !DILocalVariable(name: "usb", scope: !6343, file: !3, line: 181, type: !5214)
!6351 = !DILocation(line: 181, column: 21, scope: !6343)
!6352 = !DILocation(line: 181, column: 45, scope: !6343)
!6353 = !DILocation(line: 181, column: 27, scope: !6343)
!6354 = !DILocalVariable(name: "ep", scope: !6343, file: !3, line: 182, type: !4236)
!6355 = !DILocation(line: 182, column: 34, scope: !6343)
!6356 = !DILocalVariable(name: "pipe", scope: !6343, file: !3, line: 183, type: !7)
!6357 = !DILocation(line: 183, column: 15, scope: !6343)
!6358 = !DILocation(line: 185, column: 6, scope: !6359)
!6359 = distinct !DILexicalBlock(scope: !6343, file: !3, line: 185, column: 6)
!6360 = !DILocation(line: 185, column: 15, scope: !6359)
!6361 = !DILocation(line: 185, column: 21, scope: !6359)
!6362 = !DILocation(line: 185, column: 6, scope: !6343)
!6363 = !DILocation(line: 186, column: 23, scope: !6364)
!6364 = distinct !DILexicalBlock(scope: !6359, file: !3, line: 185, column: 39)
!6365 = !DILocation(line: 186, column: 3, scope: !6364)
!6366 = !DILocation(line: 187, column: 3, scope: !6364)
!6367 = !DILocation(line: 190, column: 7, scope: !6343)
!6368 = !DILocation(line: 190, column: 16, scope: !6343)
!6369 = !DILocation(line: 190, column: 5, scope: !6343)
!6370 = !DILocation(line: 191, column: 9, scope: !6343)
!6371 = !DILocation(line: 191, column: 7, scope: !6343)
!6372 = !DILocation(line: 192, column: 27, scope: !6343)
!6373 = !DILocation(line: 192, column: 32, scope: !6343)
!6374 = !DILocation(line: 192, column: 38, scope: !6343)
!6375 = !DILocation(line: 192, column: 47, scope: !6343)
!6376 = !DILocation(line: 193, column: 24, scope: !6343)
!6377 = !DILocation(line: 193, column: 6, scope: !6343)
!6378 = !DILocation(line: 192, column: 9, scope: !6343)
!6379 = !DILocation(line: 192, column: 2, scope: !6343)
!6380 = !DILocation(line: 195, column: 1, scope: !6343)
!6381 = distinct !DISubprogram(name: "vmk80xx_usb_probe", scope: !3, file: !3, line: 847, type: !4064, scopeLine: 849, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!6382 = !DILocalVariable(name: "intf", arg: 1, scope: !6381, file: !3, line: 847, type: !4066)
!6383 = !DILocation(line: 847, column: 52, scope: !6381)
!6384 = !DILocalVariable(name: "id", arg: 2, scope: !6381, file: !3, line: 848, type: !4156)
!6385 = !DILocation(line: 848, column: 37, scope: !6381)
!6386 = !DILocation(line: 850, column: 32, scope: !6381)
!6387 = !DILocation(line: 850, column: 55, scope: !6381)
!6388 = !DILocation(line: 850, column: 59, scope: !6381)
!6389 = !DILocation(line: 850, column: 9, scope: !6381)
!6390 = !DILocation(line: 850, column: 2, scope: !6381)
