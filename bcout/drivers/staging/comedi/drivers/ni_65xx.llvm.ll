; ModuleID = '../bcout/drivers/staging/comedi/drivers/ni_65xx.llvm.bc'
source_filename = "drivers/staging/comedi/drivers/ni_65xx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_ni_65xx_driver_init6:\09\09\09"
module asm ".long\09ni_65xx_driver_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon }
%struct.module = type opaque
%union.anon = type { i8* }
%struct.comedi_driver = type { %struct.comedi_driver*, i8*, %struct.module*, i32 (%struct.comedi_device*, %struct.comedi_devconfig*)*, void (%struct.comedi_device*)*, i32 (%struct.comedi_device*, i64)*, i32, i8**, i32 }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.65, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.65 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type { %union.anon.0, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.63, %struct.list_head, %struct.list_head, %union.anon.64 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.1, i8* }
%union.anon.1 = type { i64 }
%struct.lockref = type { %union.anon.61 }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, i32, %struct.fsnotify_mark_connector*, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.super_block*, %struct.page*, i32)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.page = type { i64, %union.anon.2, %union.anon.53, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.53 = type { %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.54, i32 }
%union.anon.54 = type { %struct.kuid_t }
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
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.46, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.mm_struct = type { %struct.anon.16, [0 x i64] }
%struct.anon.16 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.17, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.17 = type { %struct.rb_node, i64 }
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
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.23, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.24, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.25, %union.anon.29, %struct.key_restriction* }
%union.anon.23 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.24 = type { i64 }
%union.anon.25 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.26, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.26 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.29 = type { %union.key_payload }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.32, %union.anon.33, i32 }
%struct.request_queue = type opaque
%union.anon.32 = type { %struct.list_head }
%union.anon.33 = type { %struct.hlist_node }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.34 }
%struct.anon.34 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.38 }
%struct.anon.38 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.45, i32, [12 x i8] }
%union.anon.45 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.46 = type { %struct.callback_head }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.47, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.50 }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { i64, i64 }
%union.anon.50 = type { [12 x i32] }
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
%union.anon.63 = type { %struct.list_head }
%union.anon.64 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.55, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.56, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.57, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.60, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%union.anon.55 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.56 = type { %struct.callback_head }
%union.anon.57 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.5 }
%union.anon.5 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.60 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.58 }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.58 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.atomic64_t = type { i64 }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.31 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.31 = type { %struct.callback_head }
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
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
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
%struct.pci_dev = type <{ %struct.list_head, %struct.pci_bus*, %struct.pci_bus*, i8*, %struct.proc_dir_entry*, %struct.pci_slot*, i32, i16, i16, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, [6 x i8], i64*, %struct.pci_driver*, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, [4 x i8], %struct.pcie_link_state*, i8, [3 x i8], i32, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], [4 x i8], %struct.hlist_head, %struct.bin_attribute*, i32, [4 x i8], [17 x %struct.bin_attribute*], [17 x %struct.bin_attribute*], %struct.attribute_group**, %struct.pci_vpd*, %union.anon.66, i16, i8, i8, i16, [2 x i8], i64, i64, i8*, i64 }>
%struct.pci_bus = type { %struct.list_head, %struct.pci_bus*, %struct.list_head, %struct.list_head, %struct.pci_dev*, %struct.list_head, [4 x %struct.resource*], %struct.list_head, %struct.resource, %struct.pci_ops*, %struct.msi_controller*, i8*, %struct.proc_dir_entry*, i8, i8, i8, i8, [48 x i8], i16, i16, %struct.device*, %struct.device, %struct.bin_attribute*, %struct.bin_attribute*, i8 }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.pci_ops = type { i32 (%struct.pci_bus*)*, void (%struct.pci_bus*)*, i8* (%struct.pci_bus*, i32, i32)*, i32 (%struct.pci_bus*, i32, i32, i32, i32*)*, i32 (%struct.pci_bus*, i32, i32, i32, i32)* }
%struct.msi_controller = type opaque
%struct.proc_dir_entry = type opaque
%struct.pci_slot = type { %struct.pci_bus*, %struct.list_head, %struct.hotplug_slot*, i8, %struct.kobject }
%struct.hotplug_slot = type opaque
%struct.pcie_link_state = type opaque
%struct.pci_vpd = type opaque
%union.anon.66 = type { %struct.pci_sriov* }
%struct.pci_sriov = type opaque
%struct.pci_error_handlers = type { i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)* }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.ni_65xx_board = type { i8*, i32, i32, i32, i8 }

@__param_str_legacy_invert_outputs = internal constant [30 x i8] c"ni_65xx.legacy_invert_outputs\00", align 16, !dbg !0
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 8
@ni_65xx_legacy_invert_outputs = internal global i8 0, align 1, !dbg !246
@__param_legacy_invert_outputs = internal constant %struct.kernel_param { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__param_str_legacy_invert_outputs, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon { i8* @ni_65xx_legacy_invert_outputs } }, section "__param", align 8, !dbg !137
@__UNIQUE_ID_legacy_invert_outputstype234 = internal constant [44 x i8] c"ni_65xx.parmtype=legacy_invert_outputs:bool\00", section ".modinfo", align 1, !dbg !207
@__UNIQUE_ID_legacy_invert_outputs235 = internal constant [133 x i8] c"ni_65xx.parm=legacy_invert_outputs:invert outputs of PCI/PXI-6513/6514/6515/6516/6517/6518/6519 for compatibility with old user code\00", section ".modinfo", align 1, !dbg !212
@__UNIQUE_ID___addressable_ni_65xx_driver_init236 = internal global i8* bitcast (i32 ()* @ni_65xx_driver_init to i8*), section ".discard.addressable", align 8, !dbg !217
@ni_65xx_driver = internal global %struct.comedi_driver { %struct.comedi_driver* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct.module* null, i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* null, void (%struct.comedi_device*)* @ni_65xx_detach, i32 (%struct.comedi_device*, i64)* @ni_65xx_auto_attach, i32 0, i8** null, i32 0 }, align 8, !dbg !251
@ni_65xx_pci_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct.pci_device_id* getelementptr inbounds ([23 x %struct.pci_device_id], [23 x %struct.pci_device_id]* @ni_65xx_pci_table, i32 0, i32 0), i32 (%struct.pci_dev*, %struct.pci_device_id*)* @ni_65xx_pci_probe, void (%struct.pci_dev*)* @comedi_pci_auto_unconfig, i32 (%struct.pci_dev*, i32)* null, i32 (%struct.pci_dev*)* null, void (%struct.pci_dev*)* null, i32 (%struct.pci_dev*, i32)* null, %struct.pci_error_handlers* null, %struct.attribute_group** null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, align 8, !dbg !4061
@__exitcall_ni_65xx_driver_exit = internal global void ()* @ni_65xx_driver_exit, section ".exitcall.exit", align 8, !dbg !219
@__UNIQUE_ID_author237 = internal constant [45 x i8] c"ni_65xx.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1, !dbg !226
@__UNIQUE_ID_description238 = internal constant [68 x i8] c"ni_65xx.description=Comedi driver for NI PCI-65xx static dio boards\00", section ".modinfo", align 1, !dbg !231
@__UNIQUE_ID_file239 = internal constant [52 x i8] c"ni_65xx.file=drivers/staging/comedi/drivers/ni_65xx\00", section ".modinfo", align 1, !dbg !236
@__UNIQUE_ID_license240 = internal constant [20 x i8] c"ni_65xx.license=GPL\00", section ".modinfo", align 1, !dbg !241
@.str = private unnamed_addr constant [8 x i8] c"ni_65xx\00", align 1
@ni_65xx_boards = internal constant [22 x %struct.ni_65xx_board] [%struct.ni_65xx_board { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 12, i32 0, i32 0, i8 0 }, %struct.ni_65xx_board { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 12, i32 0, i32 0, i8 0 }, %struct.ni_65xx_board { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 0, i32 4, i32 0, i8 0 }, %struct.ni_65xx_board { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i32 0, i32 8, i32 0, i8 0 }, %struct.ni_65xx_board { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 0, i32 8, i32 0, i8 0 }, %struct.ni_65xx_board { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 0, i32 0, i32 8, i8 0 }, %struct.ni_65xx_board { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32 0, i32 0, i32 8, i8 0 }, %struct.ni_65xx_board { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 0, i32 0, i32 8, i8 1 }, %struct.ni_65xx_board { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 0, i32 0, i32 8, i8 1 }, %struct.ni_65xx_board { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32 0, i32 4, i32 4, i8 1 }, %struct.ni_65xx_board { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 0, i32 4, i32 4, i8 1 }, %struct.ni_65xx_board { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 0, i32 4, i32 4, i8 1 }, %struct.ni_65xx_board { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 4, i32 4, i8 1 }, %struct.ni_65xx_board { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 0, i32 0, i32 4, i8 1 }, %struct.ni_65xx_board { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 0, i32 0, i32 4, i8 1 }, %struct.ni_65xx_board { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 0, i32 2, i32 2, i8 1 }, %struct.ni_65xx_board { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i32 0, i32 2, i32 2, i8 1 }, %struct.ni_65xx_board { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 0, i32 1, i32 1, i8 0 }, %struct.ni_65xx_board { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i32 0, i32 1, i32 1, i8 0 }, %struct.ni_65xx_board { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i32 0, i32 1, i32 1, i8 0 }, %struct.ni_65xx_board { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i32 0, i32 3, i32 3, i8 0 }, %struct.ni_65xx_board { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 0, i32 3, i32 3, i8 0 }], align 16, !dbg !4048
@.str.1 = private unnamed_addr constant [21 x i8] c"board: %s, ID=0x%02x\00", align 1
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"pci-6509\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"pxi-6509\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"pci-6510\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"pci-6511\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"pxi-6511\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"pci-6512\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"pxi-6512\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"pci-6513\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"pxi-6513\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"pci-6514\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"pxi-6514\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"pci-6515\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"pxi-6515\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"pci-6516\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"pci-6517\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"pci-6518\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"pci-6519\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"pci-6520\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"pci-6521\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"pxi-6521\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"pci-6528\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"pxi-6528\00", align 1
@ni_65xx_pci_table = internal constant [23 x %struct.pci_device_id] [%struct.pci_device_id { i32 4243, i32 5904, i32 -1, i32 -1, i32 0, i32 0, i64 1 }, %struct.pci_device_id { i32 4243, i32 28805, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 4243, i32 28806, i32 -1, i32 -1, i32 0, i32 0, i64 21 }, %struct.pci_device_id { i32 4243, i32 28807, i32 -1, i32 -1, i32 0, i32 0, i64 11 }, %struct.pci_device_id { i32 4243, i32 28808, i32 -1, i32 -1, i32 0, i32 0, i64 9 }, %struct.pci_device_id { i32 4243, i32 28841, i32 -1, i32 -1, i32 0, i32 0, i64 20 }, %struct.pci_device_id { i32 4243, i32 28867, i32 -1, i32 -1, i32 0, i32 0, i64 3 }, %struct.pci_device_id { i32 4243, i32 28872, i32 -1, i32 -1, i32 0, i32 0, i64 7 }, %struct.pci_device_id { i32 4243, i32 28873, i32 -1, i32 -1, i32 0, i32 0, i64 12 }, %struct.pci_device_id { i32 4243, i32 28876, i32 -1, i32 -1, i32 0, i32 0, i64 5 }, %struct.pci_device_id { i32 4243, i32 28877, i32 -1, i32 -1, i32 0, i32 0, i64 10 }, %struct.pci_device_id { i32 4243, i32 28881, i32 -1, i32 -1, i32 0, i32 0, i64 8 }, %struct.pci_device_id { i32 4243, i32 28882, i32 -1, i32 -1, i32 0, i32 0, i64 6 }, %struct.pci_device_id { i32 4243, i32 28883, i32 -1, i32 -1, i32 0, i32 0, i64 4 }, %struct.pci_device_id { i32 4243, i32 28964, i32 -1, i32 -1, i32 0, i32 0, i64 2 }, %struct.pci_device_id { i32 4243, i32 28965, i32 -1, i32 -1, i32 0, i32 0, i64 13 }, %struct.pci_device_id { i32 4243, i32 28966, i32 -1, i32 -1, i32 0, i32 0, i64 14 }, %struct.pci_device_id { i32 4243, i32 28967, i32 -1, i32 -1, i32 0, i32 0, i64 15 }, %struct.pci_device_id { i32 4243, i32 28968, i32 -1, i32 -1, i32 0, i32 0, i64 16 }, %struct.pci_device_id { i32 4243, i32 29067, i32 -1, i32 -1, i32 0, i32 0, i64 18 }, %struct.pci_device_id { i32 4243, i32 29068, i32 -1, i32 -1, i32 0, i32 0, i64 19 }, %struct.pci_device_id { i32 4243, i32 29125, i32 -1, i32 -1, i32 0, i32 0, i64 17 }, %struct.pci_device_id zeroinitializer], align 16, !dbg !4342
@llvm.used = appending global [10 x i8*] [i8* bitcast (%struct.kernel_param* @__param_legacy_invert_outputs to i8*), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__UNIQUE_ID_legacy_invert_outputstype234, i32 0, i32 0), i8* getelementptr inbounds ([133 x i8], [133 x i8]* @__UNIQUE_ID_legacy_invert_outputs235, i32 0, i32 0), i8* bitcast (i8** @__UNIQUE_ID___addressable_ni_65xx_driver_init236 to i8*), i8* bitcast (void ()* @ni_65xx_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_ni_65xx_driver_exit to i8*), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__UNIQUE_ID_author237, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__UNIQUE_ID_description238, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__UNIQUE_ID_file239, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__UNIQUE_ID_license240, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @ni_65xx_driver_init() #0 section ".init.text" !dbg !4355 {
entry:
  %call = call i32 @comedi_pci_driver_register(%struct.comedi_driver* @ni_65xx_driver, %struct.pci_driver* @ni_65xx_pci_driver) #5, !dbg !4358
  ret i32 %call, !dbg !4358
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @ni_65xx_driver_exit() #0 section ".exit.text" !dbg !4359 {
entry:
  call void @comedi_pci_driver_unregister(%struct.comedi_driver* @ni_65xx_driver, %struct.pci_driver* @ni_65xx_pci_driver) #5, !dbg !4360
  ret void, !dbg !4360
}

; Function Attrs: noredzone
declare dso_local void @comedi_pci_driver_unregister(%struct.comedi_driver*, %struct.pci_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_pci_driver_register(%struct.comedi_driver*, %struct.pci_driver*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ni_65xx_detach(%struct.comedi_device* %dev) #2 !dbg !4361 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4362, metadata !DIExpression()), !dbg !4363
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4364
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 17, !dbg !4366
  %1 = load i8*, i8** %mmio, align 8, !dbg !4366
  %tobool = icmp ne i8* %1, null, !dbg !4364
  br i1 %tobool, label %if.then, label %if.end, !dbg !4367

if.then:                                          ; preds = %entry
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4368
  %mmio1 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %2, i32 0, i32 17, !dbg !4369
  %3 = load i8*, i8** %mmio1, align 8, !dbg !4369
  %add.ptr = getelementptr i8, i8* %3, i64 3, !dbg !4370
  call void @writeb(i8 zeroext 0, i8* %add.ptr) #5, !dbg !4371
  br label %if.end, !dbg !4371

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4372
  call void @comedi_pci_detach(%struct.comedi_device* %4) #5, !dbg !4373
  ret void, !dbg !4374
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ni_65xx_auto_attach(%struct.comedi_device* %dev, i64 %context) #2 !dbg !4375 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %context.addr = alloca i64, align 8
  %pcidev = alloca %struct.pci_dev*, align 8
  %board = alloca %struct.ni_65xx_board*, align 8
  %s = alloca %struct.comedi_subdevice*, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4376, metadata !DIExpression()), !dbg !4377
  store i64 %context, i64* %context.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %context.addr, metadata !4378, metadata !DIExpression()), !dbg !4379
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pcidev, metadata !4380, metadata !DIExpression()), !dbg !4381
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4382
  %call = call %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device* %0) #5, !dbg !4383
  store %struct.pci_dev* %call, %struct.pci_dev** %pcidev, align 8, !dbg !4381
  call void @llvm.dbg.declare(metadata %struct.ni_65xx_board** %board, metadata !4384, metadata !DIExpression()), !dbg !4386
  store %struct.ni_65xx_board* null, %struct.ni_65xx_board** %board, align 8, !dbg !4386
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s, metadata !4387, metadata !DIExpression()), !dbg !4388
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4389, metadata !DIExpression()), !dbg !4390
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4391, metadata !DIExpression()), !dbg !4392
  %1 = load i64, i64* %context.addr, align 8, !dbg !4393
  %cmp = icmp ult i64 %1, 22, !dbg !4395
  br i1 %cmp, label %if.then, label %if.end, !dbg !4396

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %context.addr, align 8, !dbg !4397
  %arrayidx = getelementptr [22 x %struct.ni_65xx_board], [22 x %struct.ni_65xx_board]* @ni_65xx_boards, i64 0, i64 %2, !dbg !4398
  store %struct.ni_65xx_board* %arrayidx, %struct.ni_65xx_board** %board, align 8, !dbg !4399
  br label %if.end, !dbg !4400

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.ni_65xx_board*, %struct.ni_65xx_board** %board, align 8, !dbg !4401
  %tobool = icmp ne %struct.ni_65xx_board* %3, null, !dbg !4401
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !4403

if.then1:                                         ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !4404
  br label %return, !dbg !4404

if.end2:                                          ; preds = %if.end
  %4 = load %struct.ni_65xx_board*, %struct.ni_65xx_board** %board, align 8, !dbg !4405
  %5 = bitcast %struct.ni_65xx_board* %4 to i8*, !dbg !4405
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4406
  %board_ptr = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 9, !dbg !4407
  store i8* %5, i8** %board_ptr, align 8, !dbg !4408
  %7 = load %struct.ni_65xx_board*, %struct.ni_65xx_board** %board, align 8, !dbg !4409
  %name = getelementptr inbounds %struct.ni_65xx_board, %struct.ni_65xx_board* %7, i32 0, i32 0, !dbg !4410
  %8 = load i8*, i8** %name, align 8, !dbg !4410
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4411
  %board_name = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 8, !dbg !4412
  store i8* %8, i8** %board_name, align 8, !dbg !4413
  %10 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4414
  %call3 = call i32 @comedi_pci_enable(%struct.comedi_device* %10) #5, !dbg !4415
  store i32 %call3, i32* %ret, align 4, !dbg !4416
  %11 = load i32, i32* %ret, align 4, !dbg !4417
  %tobool4 = icmp ne i32 %11, 0, !dbg !4417
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !4419

if.then5:                                         ; preds = %if.end2
  %12 = load i32, i32* %ret, align 4, !dbg !4420
  store i32 %12, i32* %retval, align 4, !dbg !4421
  br label %return, !dbg !4421

if.end6:                                          ; preds = %if.end2
  %13 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4422
  %call7 = call i32 @ni_65xx_mite_init(%struct.pci_dev* %13) #5, !dbg !4423
  store i32 %call7, i32* %ret, align 4, !dbg !4424
  %14 = load i32, i32* %ret, align 4, !dbg !4425
  %tobool8 = icmp ne i32 %14, 0, !dbg !4425
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !4427

if.then9:                                         ; preds = %if.end6
  %15 = load i32, i32* %ret, align 4, !dbg !4428
  store i32 %15, i32* %retval, align 4, !dbg !4429
  br label %return, !dbg !4429

if.end10:                                         ; preds = %if.end6
  %16 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4430
  %call11 = call i8* @pci_ioremap_bar(%struct.pci_dev* %16, i32 1) #5, !dbg !4431
  %17 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4432
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 17, !dbg !4433
  store i8* %call11, i8** %mmio, align 8, !dbg !4434
  %18 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4435
  %mmio12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 17, !dbg !4437
  %19 = load i8*, i8** %mmio12, align 8, !dbg !4437
  %tobool13 = icmp ne i8* %19, null, !dbg !4435
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !4438

if.then14:                                        ; preds = %if.end10
  store i32 -12, i32* %retval, align 4, !dbg !4439
  br label %return, !dbg !4439

if.end15:                                         ; preds = %if.end10
  %20 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4440
  %mmio16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 17, !dbg !4441
  %21 = load i8*, i8** %mmio16, align 8, !dbg !4441
  %add.ptr = getelementptr i8, i8* %21, i64 1, !dbg !4442
  call void @writeb(i8 zeroext 12, i8* %add.ptr) #5, !dbg !4443
  %22 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4444
  %mmio17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %22, i32 0, i32 17, !dbg !4445
  %23 = load i8*, i8** %mmio17, align 8, !dbg !4445
  %add.ptr18 = getelementptr i8, i8* %23, i64 3, !dbg !4446
  call void @writeb(i8 zeroext 0, i8* %add.ptr18) #5, !dbg !4447
  %24 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4448
  %irq = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 43, !dbg !4450
  %25 = load i32, i32* %irq, align 4, !dbg !4450
  %tobool19 = icmp ne i32 %25, 0, !dbg !4448
  br i1 %tobool19, label %if.then20, label %if.end29, !dbg !4451

if.then20:                                        ; preds = %if.end15
  %26 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4452
  %irq21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 43, !dbg !4454
  %27 = load i32, i32* %irq21, align 4, !dbg !4454
  %28 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4455
  %board_name22 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %28, i32 0, i32 8, !dbg !4456
  %29 = load i8*, i8** %board_name22, align 8, !dbg !4456
  %30 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4457
  %31 = bitcast %struct.comedi_device* %30 to i8*, !dbg !4457
  %call23 = call i32 @request_irq(i32 %27, i32 (i32, i8*)* @ni_65xx_interrupt, i64 128, i8* %29, i8* %31) #5, !dbg !4458
  store i32 %call23, i32* %ret, align 4, !dbg !4459
  %32 = load i32, i32* %ret, align 4, !dbg !4460
  %cmp24 = icmp eq i32 %32, 0, !dbg !4462
  br i1 %cmp24, label %if.then25, label %if.end28, !dbg !4463

if.then25:                                        ; preds = %if.then20
  %33 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4464
  %irq26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 43, !dbg !4465
  %34 = load i32, i32* %irq26, align 4, !dbg !4465
  %35 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4466
  %irq27 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %35, i32 0, i32 20, !dbg !4467
  store i32 %34, i32* %irq27, align 8, !dbg !4468
  br label %if.end28, !dbg !4466

if.end28:                                         ; preds = %if.then25, %if.then20
  br label %if.end29, !dbg !4469

if.end29:                                         ; preds = %if.end28, %if.end15
  %36 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4470
  %class_dev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %36, i32 0, i32 4, !dbg !4470
  %37 = load %struct.device*, %struct.device** %class_dev, align 8, !dbg !4470
  %38 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4470
  %board_name30 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %38, i32 0, i32 8, !dbg !4470
  %39 = load i8*, i8** %board_name30, align 8, !dbg !4470
  %40 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4470
  %mmio31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %40, i32 0, i32 17, !dbg !4470
  %41 = load i8*, i8** %mmio31, align 8, !dbg !4470
  %add.ptr32 = getelementptr i8, i8* %41, i64 0, !dbg !4470
  %call33 = call zeroext i8 @readb(i8* %add.ptr32) #5, !dbg !4470
  %conv = zext i8 %call33 to i32, !dbg !4470
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %39, i32 %conv) #6, !dbg !4470
  %42 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4471
  %call34 = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %42, i32 4) #5, !dbg !4472
  store i32 %call34, i32* %ret, align 4, !dbg !4473
  %43 = load i32, i32* %ret, align 4, !dbg !4474
  %tobool35 = icmp ne i32 %43, 0, !dbg !4474
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !4476

if.then36:                                        ; preds = %if.end29
  %44 = load i32, i32* %ret, align 4, !dbg !4477
  store i32 %44, i32* %retval, align 4, !dbg !4478
  br label %return, !dbg !4478

if.end37:                                         ; preds = %if.end29
  %45 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4479
  %subdevices = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %45, i32 0, i32 16, !dbg !4480
  %46 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices, align 8, !dbg !4480
  %arrayidx38 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %46, i64 0, !dbg !4479
  store %struct.comedi_subdevice* %arrayidx38, %struct.comedi_subdevice** %s, align 8, !dbg !4481
  %47 = load %struct.ni_65xx_board*, %struct.ni_65xx_board** %board, align 8, !dbg !4482
  %num_di_ports = getelementptr inbounds %struct.ni_65xx_board, %struct.ni_65xx_board* %47, i32 0, i32 2, !dbg !4484
  %48 = load i32, i32* %num_di_ports, align 4, !dbg !4484
  %tobool39 = icmp ne i32 %48, 0, !dbg !4482
  br i1 %tobool39, label %if.then40, label %if.else, !dbg !4485

if.then40:                                        ; preds = %if.end37
  %49 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4486
  %type = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %49, i32 0, i32 2, !dbg !4488
  store i32 3, i32* %type, align 4, !dbg !4489
  %50 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4490
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %50, i32 0, i32 4, !dbg !4491
  store i32 65536, i32* %subdev_flags, align 4, !dbg !4492
  %51 = load %struct.ni_65xx_board*, %struct.ni_65xx_board** %board, align 8, !dbg !4493
  %num_di_ports41 = getelementptr inbounds %struct.ni_65xx_board, %struct.ni_65xx_board* %51, i32 0, i32 2, !dbg !4493
  %52 = load i32, i32* %num_di_ports41, align 4, !dbg !4493
  %mul = mul i32 %52, 8, !dbg !4493
  %53 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4494
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %53, i32 0, i32 3, !dbg !4495
  store i32 %mul, i32* %n_chan, align 8, !dbg !4496
  %54 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4497
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %54, i32 0, i32 13, !dbg !4498
  store i32 1, i32* %maxdata, align 8, !dbg !4499
  %55 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4500
  %range_table = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %55, i32 0, i32 15, !dbg !4501
  store %struct.comedi_lrange* @range_unipolar5, %struct.comedi_lrange** %range_table, align 8, !dbg !4502
  %56 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4503
  %insn_bits = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %56, i32 0, i32 20, !dbg !4504
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @ni_65xx_dio_insn_bits, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_bits, align 8, !dbg !4505
  %57 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4506
  %insn_config = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %57, i32 0, i32 21, !dbg !4507
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @ni_65xx_dio_insn_config, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_config, align 8, !dbg !4508
  %58 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4509
  %private = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %58, i32 0, i32 6, !dbg !4510
  store i8* null, i8** %private, align 8, !dbg !4511
  br label %if.end43, !dbg !4512

if.else:                                          ; preds = %if.end37
  %59 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4513
  %type42 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %59, i32 0, i32 2, !dbg !4515
  store i32 0, i32* %type42, align 4, !dbg !4516
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then40
  %60 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4517
  %subdevices44 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %60, i32 0, i32 16, !dbg !4518
  %61 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices44, align 8, !dbg !4518
  %arrayidx45 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %61, i64 1, !dbg !4517
  store %struct.comedi_subdevice* %arrayidx45, %struct.comedi_subdevice** %s, align 8, !dbg !4519
  %62 = load %struct.ni_65xx_board*, %struct.ni_65xx_board** %board, align 8, !dbg !4520
  %num_do_ports = getelementptr inbounds %struct.ni_65xx_board, %struct.ni_65xx_board* %62, i32 0, i32 3, !dbg !4522
  %63 = load i32, i32* %num_do_ports, align 8, !dbg !4522
  %tobool46 = icmp ne i32 %63, 0, !dbg !4520
  br i1 %tobool46, label %if.then47, label %if.else74, !dbg !4523

if.then47:                                        ; preds = %if.end43
  %64 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4524
  %type48 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %64, i32 0, i32 2, !dbg !4526
  store i32 4, i32* %type48, align 4, !dbg !4527
  %65 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4528
  %subdev_flags49 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %65, i32 0, i32 4, !dbg !4529
  store i32 131072, i32* %subdev_flags49, align 4, !dbg !4530
  %66 = load %struct.ni_65xx_board*, %struct.ni_65xx_board** %board, align 8, !dbg !4531
  %num_do_ports50 = getelementptr inbounds %struct.ni_65xx_board, %struct.ni_65xx_board* %66, i32 0, i32 3, !dbg !4531
  %67 = load i32, i32* %num_do_ports50, align 8, !dbg !4531
  %mul51 = mul i32 %67, 8, !dbg !4531
  %68 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4532
  %n_chan52 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %68, i32 0, i32 3, !dbg !4533
  store i32 %mul51, i32* %n_chan52, align 8, !dbg !4534
  %69 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4535
  %maxdata53 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %69, i32 0, i32 13, !dbg !4536
  store i32 1, i32* %maxdata53, align 8, !dbg !4537
  %70 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4538
  %range_table54 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %70, i32 0, i32 15, !dbg !4539
  store %struct.comedi_lrange* @range_unipolar5, %struct.comedi_lrange** %range_table54, align 8, !dbg !4540
  %71 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4541
  %insn_bits55 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %71, i32 0, i32 20, !dbg !4542
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @ni_65xx_dio_insn_bits, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_bits55, align 8, !dbg !4543
  %72 = load %struct.ni_65xx_board*, %struct.ni_65xx_board** %board, align 8, !dbg !4544
  %num_di_ports56 = getelementptr inbounds %struct.ni_65xx_board, %struct.ni_65xx_board* %72, i32 0, i32 2, !dbg !4545
  %73 = load i32, i32* %num_di_ports56, align 4, !dbg !4545
  %conv57 = zext i32 %73 to i64, !dbg !4546
  %74 = inttoptr i64 %conv57 to i8*, !dbg !4547
  %75 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4548
  %private58 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %75, i32 0, i32 6, !dbg !4549
  store i8* %74, i8** %private58, align 8, !dbg !4550
  %76 = load i8, i8* @ni_65xx_legacy_invert_outputs, align 1, !dbg !4551
  %tobool59 = trunc i8 %76 to i1, !dbg !4551
  br i1 %tobool59, label %land.lhs.true, label %if.end63, !dbg !4553

land.lhs.true:                                    ; preds = %if.then47
  %77 = load %struct.ni_65xx_board*, %struct.ni_65xx_board** %board, align 8, !dbg !4554
  %legacy_invert = getelementptr inbounds %struct.ni_65xx_board, %struct.ni_65xx_board* %77, i32 0, i32 4, !dbg !4555
  %bf.load = load i8, i8* %legacy_invert, align 4, !dbg !4555
  %bf.clear = and i8 %bf.load, 1, !dbg !4555
  %bf.cast = zext i8 %bf.clear to i32, !dbg !4555
  %tobool61 = icmp ne i32 %bf.cast, 0, !dbg !4554
  br i1 %tobool61, label %if.then62, label %if.end63, !dbg !4556

if.then62:                                        ; preds = %land.lhs.true
  %78 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4557
  %io_bits = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %78, i32 0, i32 12, !dbg !4558
  store i32 255, i32* %io_bits, align 4, !dbg !4559
  br label %if.end63, !dbg !4557

if.end63:                                         ; preds = %if.then62, %land.lhs.true, %if.then47
  store i32 0, i32* %i, align 4, !dbg !4560
  br label %for.cond, !dbg !4562

for.cond:                                         ; preds = %for.inc, %if.end63
  %79 = load i32, i32* %i, align 4, !dbg !4563
  %80 = load %struct.ni_65xx_board*, %struct.ni_65xx_board** %board, align 8, !dbg !4565
  %num_do_ports64 = getelementptr inbounds %struct.ni_65xx_board, %struct.ni_65xx_board* %80, i32 0, i32 3, !dbg !4566
  %81 = load i32, i32* %num_do_ports64, align 8, !dbg !4566
  %cmp65 = icmp ult i32 %79, %81, !dbg !4567
  br i1 %cmp65, label %for.body, label %for.end, !dbg !4568

for.body:                                         ; preds = %for.cond
  %82 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4569
  %io_bits67 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %82, i32 0, i32 12, !dbg !4571
  %83 = load i32, i32* %io_bits67, align 4, !dbg !4571
  %conv68 = trunc i32 %83 to i8, !dbg !4569
  %84 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4572
  %mmio69 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %84, i32 0, i32 17, !dbg !4573
  %85 = load i8*, i8** %mmio69, align 8, !dbg !4573
  %86 = load %struct.ni_65xx_board*, %struct.ni_65xx_board** %board, align 8, !dbg !4574
  %num_di_ports70 = getelementptr inbounds %struct.ni_65xx_board, %struct.ni_65xx_board* %86, i32 0, i32 2, !dbg !4574
  %87 = load i32, i32* %num_di_ports70, align 4, !dbg !4574
  %88 = load i32, i32* %i, align 4, !dbg !4574
  %add = add i32 %87, %88, !dbg !4574
  %mul71 = mul i32 %add, 16, !dbg !4574
  %add72 = add i32 64, %mul71, !dbg !4574
  %idx.ext = zext i32 %add72 to i64, !dbg !4575
  %add.ptr73 = getelementptr i8, i8* %85, i64 %idx.ext, !dbg !4575
  call void @writeb(i8 zeroext %conv68, i8* %add.ptr73) #5, !dbg !4576
  br label %for.inc, !dbg !4577

for.inc:                                          ; preds = %for.body
  %89 = load i32, i32* %i, align 4, !dbg !4578
  %inc = add i32 %89, 1, !dbg !4578
  store i32 %inc, i32* %i, align 4, !dbg !4578
  br label %for.cond, !dbg !4579, !llvm.loop !4580

for.end:                                          ; preds = %for.cond
  br label %if.end76, !dbg !4582

if.else74:                                        ; preds = %if.end43
  %90 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4583
  %type75 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %90, i32 0, i32 2, !dbg !4585
  store i32 0, i32* %type75, align 4, !dbg !4586
  br label %if.end76

if.end76:                                         ; preds = %if.else74, %for.end
  %91 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4587
  %subdevices77 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %91, i32 0, i32 16, !dbg !4588
  %92 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices77, align 8, !dbg !4588
  %arrayidx78 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %92, i64 2, !dbg !4587
  store %struct.comedi_subdevice* %arrayidx78, %struct.comedi_subdevice** %s, align 8, !dbg !4589
  %93 = load %struct.ni_65xx_board*, %struct.ni_65xx_board** %board, align 8, !dbg !4590
  %num_dio_ports = getelementptr inbounds %struct.ni_65xx_board, %struct.ni_65xx_board* %93, i32 0, i32 1, !dbg !4592
  %94 = load i32, i32* %num_dio_ports, align 8, !dbg !4592
  %tobool79 = icmp ne i32 %94, 0, !dbg !4590
  br i1 %tobool79, label %if.then80, label %if.else104, !dbg !4593

if.then80:                                        ; preds = %if.end76
  %95 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4594
  %type81 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %95, i32 0, i32 2, !dbg !4596
  store i32 5, i32* %type81, align 4, !dbg !4597
  %96 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4598
  %subdev_flags82 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %96, i32 0, i32 4, !dbg !4599
  store i32 196608, i32* %subdev_flags82, align 4, !dbg !4600
  %97 = load %struct.ni_65xx_board*, %struct.ni_65xx_board** %board, align 8, !dbg !4601
  %num_dio_ports83 = getelementptr inbounds %struct.ni_65xx_board, %struct.ni_65xx_board* %97, i32 0, i32 1, !dbg !4601
  %98 = load i32, i32* %num_dio_ports83, align 8, !dbg !4601
  %mul84 = mul i32 %98, 8, !dbg !4601
  %99 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4602
  %n_chan85 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %99, i32 0, i32 3, !dbg !4603
  store i32 %mul84, i32* %n_chan85, align 8, !dbg !4604
  %100 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4605
  %maxdata86 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %100, i32 0, i32 13, !dbg !4606
  store i32 1, i32* %maxdata86, align 8, !dbg !4607
  %101 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4608
  %range_table87 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %101, i32 0, i32 15, !dbg !4609
  store %struct.comedi_lrange* @range_unipolar5, %struct.comedi_lrange** %range_table87, align 8, !dbg !4610
  %102 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4611
  %insn_bits88 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %102, i32 0, i32 20, !dbg !4612
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @ni_65xx_dio_insn_bits, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_bits88, align 8, !dbg !4613
  %103 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4614
  %insn_config89 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %103, i32 0, i32 21, !dbg !4615
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @ni_65xx_dio_insn_config, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_config89, align 8, !dbg !4616
  %104 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4617
  %private90 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %104, i32 0, i32 6, !dbg !4618
  store i8* null, i8** %private90, align 8, !dbg !4619
  store i32 0, i32* %i, align 4, !dbg !4620
  br label %for.cond91, !dbg !4622

for.cond91:                                       ; preds = %for.inc101, %if.then80
  %105 = load i32, i32* %i, align 4, !dbg !4623
  %106 = load %struct.ni_65xx_board*, %struct.ni_65xx_board** %board, align 8, !dbg !4625
  %num_dio_ports92 = getelementptr inbounds %struct.ni_65xx_board, %struct.ni_65xx_board* %106, i32 0, i32 1, !dbg !4626
  %107 = load i32, i32* %num_dio_ports92, align 8, !dbg !4626
  %cmp93 = icmp ult i32 %105, %107, !dbg !4627
  br i1 %cmp93, label %for.body95, label %for.end103, !dbg !4628

for.body95:                                       ; preds = %for.cond91
  %108 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4629
  %mmio96 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %108, i32 0, i32 17, !dbg !4631
  %109 = load i8*, i8** %mmio96, align 8, !dbg !4631
  %110 = load i32, i32* %i, align 4, !dbg !4632
  %mul97 = mul i32 %110, 16, !dbg !4632
  %add98 = add i32 65, %mul97, !dbg !4632
  %idx.ext99 = zext i32 %add98 to i64, !dbg !4633
  %add.ptr100 = getelementptr i8, i8* %109, i64 %idx.ext99, !dbg !4633
  call void @writeb(i8 zeroext 1, i8* %add.ptr100) #5, !dbg !4634
  br label %for.inc101, !dbg !4635

for.inc101:                                       ; preds = %for.body95
  %111 = load i32, i32* %i, align 4, !dbg !4636
  %inc102 = add i32 %111, 1, !dbg !4636
  store i32 %inc102, i32* %i, align 4, !dbg !4636
  br label %for.cond91, !dbg !4637, !llvm.loop !4638

for.end103:                                       ; preds = %for.cond91
  br label %if.end106, !dbg !4640

if.else104:                                       ; preds = %if.end76
  %112 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4641
  %type105 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %112, i32 0, i32 2, !dbg !4643
  store i32 0, i32* %type105, align 4, !dbg !4644
  br label %if.end106

if.end106:                                        ; preds = %if.else104, %for.end103
  %113 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4645
  %subdevices107 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %113, i32 0, i32 16, !dbg !4646
  %114 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices107, align 8, !dbg !4646
  %arrayidx108 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %114, i64 3, !dbg !4645
  store %struct.comedi_subdevice* %arrayidx108, %struct.comedi_subdevice** %s, align 8, !dbg !4647
  %115 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4648
  %type109 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %115, i32 0, i32 2, !dbg !4649
  store i32 3, i32* %type109, align 4, !dbg !4650
  %116 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4651
  %subdev_flags110 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %116, i32 0, i32 4, !dbg !4652
  store i32 65536, i32* %subdev_flags110, align 4, !dbg !4653
  %117 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4654
  %n_chan111 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %117, i32 0, i32 3, !dbg !4655
  store i32 1, i32* %n_chan111, align 8, !dbg !4656
  %118 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4657
  %maxdata112 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %118, i32 0, i32 13, !dbg !4658
  store i32 1, i32* %maxdata112, align 8, !dbg !4659
  %119 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4660
  %range_table113 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %119, i32 0, i32 15, !dbg !4661
  store %struct.comedi_lrange* @range_unipolar5, %struct.comedi_lrange** %range_table113, align 8, !dbg !4662
  %120 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4663
  %insn_bits114 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %120, i32 0, i32 20, !dbg !4664
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @ni_65xx_intr_insn_bits, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_bits114, align 8, !dbg !4665
  %121 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4666
  %irq115 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %121, i32 0, i32 20, !dbg !4668
  %122 = load i32, i32* %irq115, align 8, !dbg !4668
  %tobool116 = icmp ne i32 %122, 0, !dbg !4666
  br i1 %tobool116, label %if.then117, label %if.end120, !dbg !4669

if.then117:                                       ; preds = %if.end106
  %123 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4670
  %124 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4672
  %read_subdev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %124, i32 0, i32 21, !dbg !4673
  store %struct.comedi_subdevice* %123, %struct.comedi_subdevice** %read_subdev, align 8, !dbg !4674
  %125 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4675
  %subdev_flags118 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %125, i32 0, i32 4, !dbg !4676
  %126 = load i32, i32* %subdev_flags118, align 4, !dbg !4677
  %or = or i32 %126, 32768, !dbg !4677
  store i32 %or, i32* %subdev_flags118, align 4, !dbg !4677
  %127 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4678
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %127, i32 0, i32 5, !dbg !4679
  store i32 1, i32* %len_chanlist, align 8, !dbg !4680
  %128 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4681
  %insn_config119 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %128, i32 0, i32 21, !dbg !4682
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @ni_65xx_intr_insn_config, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_config119, align 8, !dbg !4683
  %129 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4684
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %129, i32 0, i32 23, !dbg !4685
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @ni_65xx_intr_cmdtest, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)** %do_cmdtest, align 8, !dbg !4686
  %130 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4687
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %130, i32 0, i32 22, !dbg !4688
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @ni_65xx_intr_cmd, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)** %do_cmd, align 8, !dbg !4689
  %131 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4690
  %cancel = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %131, i32 0, i32 25, !dbg !4691
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @ni_65xx_intr_cancel, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)** %cancel, align 8, !dbg !4692
  br label %if.end120, !dbg !4693

if.end120:                                        ; preds = %if.then117, %if.end106
  %132 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4694
  call void @ni_65xx_disable_input_filters(%struct.comedi_device* %132) #5, !dbg !4695
  %133 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4696
  call void @ni_65xx_disable_edge_detection(%struct.comedi_device* %133) #5, !dbg !4697
  store i32 0, i32* %retval, align 4, !dbg !4698
  br label %return, !dbg !4698

return:                                           ; preds = %if.end120, %if.then36, %if.then14, %if.then9, %if.then5, %if.then1
  %134 = load i32, i32* %retval, align 4, !dbg !4699
  ret i32 %134, !dbg !4699
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writeb(i8 zeroext %val, i8* %addr) #2 !dbg !4700 {
entry:
  %val.addr = alloca i8, align 1
  %addr.addr = alloca i8*, align 8
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !4706, metadata !DIExpression()), !dbg !4707
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !4708, metadata !DIExpression()), !dbg !4707
  %0 = load i8, i8* %val.addr, align 1, !dbg !4707
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !4707
  call void asm sideeffect "movb $0,$1", "q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 %0, i8* %1) #7, !dbg !4707, !srcloc !4709
  ret void, !dbg !4707
}

; Function Attrs: noredzone
declare dso_local void @comedi_pci_detach(%struct.comedi_device*) #1

; Function Attrs: noredzone
declare dso_local %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device*) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_pci_enable(%struct.comedi_device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ni_65xx_mite_init(%struct.pci_dev* %pcidev) #2 !dbg !4710 {
entry:
  %retval = alloca i32, align 4
  %pcidev.addr = alloca %struct.pci_dev*, align 8
  %mite_base = alloca i8*, align 8
  %main_phys_addr = alloca i32, align 4
  store %struct.pci_dev* %pcidev, %struct.pci_dev** %pcidev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pcidev.addr, metadata !4711, metadata !DIExpression()), !dbg !4712
  call void @llvm.dbg.declare(metadata i8** %mite_base, metadata !4713, metadata !DIExpression()), !dbg !4714
  call void @llvm.dbg.declare(metadata i32* %main_phys_addr, metadata !4715, metadata !DIExpression()), !dbg !4716
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pcidev.addr, align 8, !dbg !4717
  %call = call i8* @pci_ioremap_bar(%struct.pci_dev* %0, i32 0) #5, !dbg !4718
  store i8* %call, i8** %mite_base, align 8, !dbg !4719
  %1 = load i8*, i8** %mite_base, align 8, !dbg !4720
  %tobool = icmp ne i8* %1, null, !dbg !4720
  br i1 %tobool, label %if.end, label %if.then, !dbg !4722

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !4723
  br label %return, !dbg !4723

if.end:                                           ; preds = %entry
  %2 = load %struct.pci_dev*, %struct.pci_dev** %pcidev.addr, align 8, !dbg !4724
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 44, !dbg !4724
  %arrayidx = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 1, !dbg !4724
  %start = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx, i32 0, i32 0, !dbg !4724
  %3 = load i64, i64* %start, align 8, !dbg !4724
  %conv = trunc i64 %3 to i32, !dbg !4724
  store i32 %conv, i32* %main_phys_addr, align 4, !dbg !4725
  %4 = load i32, i32* %main_phys_addr, align 4, !dbg !4726
  %conv1 = zext i32 %4 to i64, !dbg !4726
  %or = or i64 %conv1, 128, !dbg !4727
  %conv2 = trunc i64 %or to i32, !dbg !4726
  %5 = load i8*, i8** %mite_base, align 8, !dbg !4728
  %add.ptr = getelementptr i8, i8* %5, i64 192, !dbg !4729
  call void @writel(i32 %conv2, i8* %add.ptr) #5, !dbg !4730
  %6 = load i8*, i8** %mite_base, align 8, !dbg !4731
  call void @iounmap(i8* %6) #5, !dbg !4732
  store i32 0, i32* %retval, align 4, !dbg !4733
  br label %return, !dbg !4733

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !4734
  ret i32 %7, !dbg !4734
}

; Function Attrs: noredzone
declare dso_local i8* @pci_ioremap_bar(%struct.pci_dev*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @request_irq(i32 %irq, i32 (i32, i8*)* %handler, i64 %flags, i8* %name, i8* %dev) #2 !dbg !4735 {
entry:
  %irq.addr = alloca i32, align 4
  %handler.addr = alloca i32 (i32, i8*)*, align 8
  %flags.addr = alloca i64, align 8
  %name.addr = alloca i8*, align 8
  %dev.addr = alloca i8*, align 8
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !4743, metadata !DIExpression()), !dbg !4744
  store i32 (i32, i8*)* %handler, i32 (i32, i8*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i32, i8*)** %handler.addr, metadata !4745, metadata !DIExpression()), !dbg !4746
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !4747, metadata !DIExpression()), !dbg !4748
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !4749, metadata !DIExpression()), !dbg !4750
  store i8* %dev, i8** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev.addr, metadata !4751, metadata !DIExpression()), !dbg !4752
  %0 = load i32, i32* %irq.addr, align 4, !dbg !4753
  %1 = load i32 (i32, i8*)*, i32 (i32, i8*)** %handler.addr, align 8, !dbg !4754
  %2 = load i64, i64* %flags.addr, align 8, !dbg !4755
  %3 = load i8*, i8** %name.addr, align 8, !dbg !4756
  %4 = load i8*, i8** %dev.addr, align 8, !dbg !4757
  %call = call i32 @request_threaded_irq(i32 %0, i32 (i32, i8*)* %1, i32 (i32, i8*)* null, i64 %2, i8* %3, i8* %4) #5, !dbg !4758
  ret i32 %call, !dbg !4759
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ni_65xx_interrupt(i32 %irq, i8* %d) #2 !dbg !4760 {
entry:
  %retval = alloca i32, align 4
  %irq.addr = alloca i32, align 4
  %d.addr = alloca i8*, align 8
  %dev = alloca %struct.comedi_device*, align 8
  %s = alloca %struct.comedi_subdevice*, align 8
  %status = alloca i32, align 4
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !4761, metadata !DIExpression()), !dbg !4762
  store i8* %d, i8** %d.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %d.addr, metadata !4763, metadata !DIExpression()), !dbg !4764
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev, metadata !4765, metadata !DIExpression()), !dbg !4766
  %0 = load i8*, i8** %d.addr, align 8, !dbg !4767
  %1 = bitcast i8* %0 to %struct.comedi_device*, !dbg !4767
  store %struct.comedi_device* %1, %struct.comedi_device** %dev, align 8, !dbg !4766
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s, metadata !4768, metadata !DIExpression()), !dbg !4769
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4770
  %read_subdev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %2, i32 0, i32 21, !dbg !4771
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %read_subdev, align 8, !dbg !4771
  store %struct.comedi_subdevice* %3, %struct.comedi_subdevice** %s, align 8, !dbg !4769
  call void @llvm.dbg.declare(metadata i32* %status, metadata !4772, metadata !DIExpression()), !dbg !4773
  %4 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4774
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 17, !dbg !4775
  %5 = load i8*, i8** %mmio, align 8, !dbg !4775
  %add.ptr = getelementptr i8, i8* %5, i64 2, !dbg !4776
  %call = call zeroext i8 @readb(i8* %add.ptr) #5, !dbg !4777
  %conv = zext i8 %call to i32, !dbg !4777
  store i32 %conv, i32* %status, align 4, !dbg !4778
  %6 = load i32, i32* %status, align 4, !dbg !4779
  %conv1 = zext i32 %6 to i64, !dbg !4779
  %and = and i64 %conv1, 4, !dbg !4781
  %cmp = icmp eq i64 %and, 0, !dbg !4782
  br i1 %cmp, label %if.then, label %if.end, !dbg !4783

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4784
  br label %return, !dbg !4784

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %status, align 4, !dbg !4785
  %conv3 = zext i32 %7 to i64, !dbg !4785
  %and4 = and i64 %conv3, 1, !dbg !4787
  %cmp5 = icmp eq i64 %and4, 0, !dbg !4788
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !4789

if.then7:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4790
  br label %return, !dbg !4790

if.end8:                                          ; preds = %if.end
  %8 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4791
  %mmio9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 17, !dbg !4792
  %9 = load i8*, i8** %mmio9, align 8, !dbg !4792
  %add.ptr10 = getelementptr i8, i8* %9, i64 1, !dbg !4793
  call void @writeb(i8 zeroext 12, i8* %add.ptr10) #5, !dbg !4794
  %10 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4795
  %11 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4796
  %state = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %11, i32 0, i32 29, !dbg !4797
  %12 = bitcast i32* %state to i8*, !dbg !4798
  %call11 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %10, i8* %12, i32 1) #5, !dbg !4799
  %13 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4800
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4801
  %call12 = call i32 @comedi_handle_events(%struct.comedi_device* %13, %struct.comedi_subdevice* %14) #5, !dbg !4802
  store i32 1, i32* %retval, align 4, !dbg !4803
  br label %return, !dbg !4803

return:                                           ; preds = %if.end8, %if.then7, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !4804
  ret i32 %15, !dbg !4804
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @readb(i8* %addr) #2 !dbg !4805 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i8, align 1
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !4810, metadata !DIExpression()), !dbg !4811
  call void @llvm.dbg.declare(metadata i8* %ret, metadata !4812, metadata !DIExpression()), !dbg !4811
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !4811
  %1 = call i8 asm sideeffect "movb $1,$0", "=q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %0) #7, !dbg !4811, !srcloc !4813
  store i8 %1, i8* %ret, align 1, !dbg !4811
  %2 = load i8, i8* %ret, align 1, !dbg !4811
  ret i8 %2, !dbg !4811
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ni_65xx_dio_insn_bits(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !4814 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %base_port = alloca i64, align 8
  %base_chan = alloca i32, align 4
  %last_port_offset = alloca i32, align 4
  %read_bits = alloca i32, align 4
  %port_offset = alloca i32, align 4
  %port = alloca i32, align 4
  %base_port_channel = alloca i32, align 4
  %port_mask = alloca i32, align 4
  %port_data = alloca i32, align 4
  %bits = alloca i32, align 4
  %bitshift = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4815, metadata !DIExpression()), !dbg !4816
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4817, metadata !DIExpression()), !dbg !4818
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !4819, metadata !DIExpression()), !dbg !4820
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !4821, metadata !DIExpression()), !dbg !4822
  call void @llvm.dbg.declare(metadata i64* %base_port, metadata !4823, metadata !DIExpression()), !dbg !4824
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4825
  %private = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 6, !dbg !4826
  %1 = load i8*, i8** %private, align 8, !dbg !4826
  %2 = ptrtoint i8* %1 to i64, !dbg !4827
  store i64 %2, i64* %base_port, align 8, !dbg !4824
  call void @llvm.dbg.declare(metadata i32* %base_chan, metadata !4828, metadata !DIExpression()), !dbg !4829
  %3 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4830
  %chanspec = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %3, i32 0, i32 4, !dbg !4830
  %4 = load i32, i32* %chanspec, align 4, !dbg !4830
  %and = and i32 %4, 65535, !dbg !4830
  store i32 %and, i32* %base_chan, align 4, !dbg !4829
  call void @llvm.dbg.declare(metadata i32* %last_port_offset, metadata !4831, metadata !DIExpression()), !dbg !4832
  %5 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4833
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %5, i32 0, i32 3, !dbg !4833
  %6 = load i32, i32* %n_chan, align 8, !dbg !4833
  %sub = sub i32 %6, 1, !dbg !4833
  %div = sdiv i32 %sub, 8, !dbg !4833
  store i32 %div, i32* %last_port_offset, align 4, !dbg !4832
  call void @llvm.dbg.declare(metadata i32* %read_bits, metadata !4834, metadata !DIExpression()), !dbg !4835
  store i32 0, i32* %read_bits, align 4, !dbg !4835
  call void @llvm.dbg.declare(metadata i32* %port_offset, metadata !4836, metadata !DIExpression()), !dbg !4837
  %7 = load i32, i32* %base_chan, align 4, !dbg !4838
  %div1 = udiv i32 %7, 8, !dbg !4838
  store i32 %div1, i32* %port_offset, align 4, !dbg !4840
  br label %for.cond, !dbg !4841

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %port_offset, align 4, !dbg !4842
  %9 = load i32, i32* %last_port_offset, align 4, !dbg !4844
  %cmp = icmp sle i32 %8, %9, !dbg !4845
  br i1 %cmp, label %for.body, label %for.end, !dbg !4846

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %port, metadata !4847, metadata !DIExpression()), !dbg !4849
  %10 = load i64, i64* %base_port, align 8, !dbg !4850
  %11 = load i32, i32* %port_offset, align 4, !dbg !4851
  %conv = sext i32 %11 to i64, !dbg !4851
  %add = add i64 %10, %conv, !dbg !4852
  %conv2 = trunc i64 %add to i32, !dbg !4850
  store i32 %conv2, i32* %port, align 4, !dbg !4849
  call void @llvm.dbg.declare(metadata i32* %base_port_channel, metadata !4853, metadata !DIExpression()), !dbg !4854
  %12 = load i32, i32* %port_offset, align 4, !dbg !4855
  %mul = mul i32 %12, 8, !dbg !4855
  store i32 %mul, i32* %base_port_channel, align 4, !dbg !4854
  call void @llvm.dbg.declare(metadata i32* %port_mask, metadata !4856, metadata !DIExpression()), !dbg !4857
  call void @llvm.dbg.declare(metadata i32* %port_data, metadata !4858, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.declare(metadata i32* %bits, metadata !4860, metadata !DIExpression()), !dbg !4861
  call void @llvm.dbg.declare(metadata i32* %bitshift, metadata !4862, metadata !DIExpression()), !dbg !4863
  %13 = load i32, i32* %base_port_channel, align 4, !dbg !4864
  %14 = load i32, i32* %base_chan, align 4, !dbg !4865
  %sub3 = sub i32 %13, %14, !dbg !4866
  store i32 %sub3, i32* %bitshift, align 4, !dbg !4863
  %15 = load i32, i32* %bitshift, align 4, !dbg !4867
  %cmp4 = icmp sge i32 %15, 32, !dbg !4869
  br i1 %cmp4, label %if.then, label %if.end, !dbg !4870

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !4871

if.end:                                           ; preds = %for.body
  %16 = load i32*, i32** %data.addr, align 8, !dbg !4872
  %arrayidx = getelementptr i32, i32* %16, i64 0, !dbg !4872
  %17 = load i32, i32* %arrayidx, align 4, !dbg !4872
  store i32 %17, i32* %port_mask, align 4, !dbg !4873
  %18 = load i32*, i32** %data.addr, align 8, !dbg !4874
  %arrayidx6 = getelementptr i32, i32* %18, i64 1, !dbg !4874
  %19 = load i32, i32* %arrayidx6, align 4, !dbg !4874
  store i32 %19, i32* %port_data, align 4, !dbg !4875
  %20 = load i32, i32* %bitshift, align 4, !dbg !4876
  %cmp7 = icmp sgt i32 %20, 0, !dbg !4878
  br i1 %cmp7, label %if.then9, label %if.else, !dbg !4879

if.then9:                                         ; preds = %if.end
  %21 = load i32, i32* %bitshift, align 4, !dbg !4880
  %22 = load i32, i32* %port_mask, align 4, !dbg !4882
  %shr = lshr i32 %22, %21, !dbg !4882
  store i32 %shr, i32* %port_mask, align 4, !dbg !4882
  %23 = load i32, i32* %bitshift, align 4, !dbg !4883
  %24 = load i32, i32* %port_data, align 4, !dbg !4884
  %shr10 = lshr i32 %24, %23, !dbg !4884
  store i32 %shr10, i32* %port_data, align 4, !dbg !4884
  br label %if.end14, !dbg !4885

if.else:                                          ; preds = %if.end
  %25 = load i32, i32* %bitshift, align 4, !dbg !4886
  %sub11 = sub i32 0, %25, !dbg !4888
  %26 = load i32, i32* %port_mask, align 4, !dbg !4889
  %shl = shl i32 %26, %sub11, !dbg !4889
  store i32 %shl, i32* %port_mask, align 4, !dbg !4889
  %27 = load i32, i32* %bitshift, align 4, !dbg !4890
  %sub12 = sub i32 0, %27, !dbg !4891
  %28 = load i32, i32* %port_data, align 4, !dbg !4892
  %shl13 = shl i32 %28, %sub12, !dbg !4892
  store i32 %shl13, i32* %port_data, align 4, !dbg !4892
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then9
  %29 = load i32, i32* %port_mask, align 4, !dbg !4893
  %and15 = and i32 %29, 255, !dbg !4893
  store i32 %and15, i32* %port_mask, align 4, !dbg !4893
  %30 = load i32, i32* %port_data, align 4, !dbg !4894
  %and16 = and i32 %30, 255, !dbg !4894
  store i32 %and16, i32* %port_data, align 4, !dbg !4894
  %31 = load i32, i32* %port_mask, align 4, !dbg !4895
  %tobool = icmp ne i32 %31, 0, !dbg !4895
  br i1 %tobool, label %if.then17, label %if.end31, !dbg !4897

if.then17:                                        ; preds = %if.end14
  %32 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4898
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %32, i32 0, i32 17, !dbg !4900
  %33 = load i8*, i8** %mmio, align 8, !dbg !4900
  %34 = load i32, i32* %port, align 4, !dbg !4901
  %mul18 = mul i32 %34, 16, !dbg !4901
  %add19 = add i32 64, %mul18, !dbg !4901
  %idx.ext = zext i32 %add19 to i64, !dbg !4902
  %add.ptr = getelementptr i8, i8* %33, i64 %idx.ext, !dbg !4902
  %call = call zeroext i8 @readb(i8* %add.ptr) #5, !dbg !4903
  %conv20 = zext i8 %call to i32, !dbg !4903
  store i32 %conv20, i32* %bits, align 4, !dbg !4904
  %35 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4905
  %io_bits = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %35, i32 0, i32 12, !dbg !4906
  %36 = load i32, i32* %io_bits, align 4, !dbg !4906
  %37 = load i32, i32* %bits, align 4, !dbg !4907
  %xor = xor i32 %37, %36, !dbg !4907
  store i32 %xor, i32* %bits, align 4, !dbg !4907
  %38 = load i32, i32* %port_mask, align 4, !dbg !4908
  %neg = xor i32 %38, -1, !dbg !4909
  %39 = load i32, i32* %bits, align 4, !dbg !4910
  %and21 = and i32 %39, %neg, !dbg !4910
  store i32 %and21, i32* %bits, align 4, !dbg !4910
  %40 = load i32, i32* %port_data, align 4, !dbg !4911
  %41 = load i32, i32* %port_mask, align 4, !dbg !4912
  %and22 = and i32 %40, %41, !dbg !4913
  %42 = load i32, i32* %bits, align 4, !dbg !4914
  %or = or i32 %42, %and22, !dbg !4914
  store i32 %or, i32* %bits, align 4, !dbg !4914
  %43 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4915
  %io_bits23 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %43, i32 0, i32 12, !dbg !4916
  %44 = load i32, i32* %io_bits23, align 4, !dbg !4916
  %45 = load i32, i32* %bits, align 4, !dbg !4917
  %xor24 = xor i32 %45, %44, !dbg !4917
  store i32 %xor24, i32* %bits, align 4, !dbg !4917
  %46 = load i32, i32* %bits, align 4, !dbg !4918
  %conv25 = trunc i32 %46 to i8, !dbg !4918
  %47 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4919
  %mmio26 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %47, i32 0, i32 17, !dbg !4920
  %48 = load i8*, i8** %mmio26, align 8, !dbg !4920
  %49 = load i32, i32* %port, align 4, !dbg !4921
  %mul27 = mul i32 %49, 16, !dbg !4921
  %add28 = add i32 64, %mul27, !dbg !4921
  %idx.ext29 = zext i32 %add28 to i64, !dbg !4922
  %add.ptr30 = getelementptr i8, i8* %48, i64 %idx.ext29, !dbg !4922
  call void @writeb(i8 zeroext %conv25, i8* %add.ptr30) #5, !dbg !4923
  br label %if.end31, !dbg !4924

if.end31:                                         ; preds = %if.then17, %if.end14
  %50 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4925
  %mmio32 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %50, i32 0, i32 17, !dbg !4926
  %51 = load i8*, i8** %mmio32, align 8, !dbg !4926
  %52 = load i32, i32* %port, align 4, !dbg !4927
  %mul33 = mul i32 %52, 16, !dbg !4927
  %add34 = add i32 64, %mul33, !dbg !4927
  %idx.ext35 = zext i32 %add34 to i64, !dbg !4928
  %add.ptr36 = getelementptr i8, i8* %51, i64 %idx.ext35, !dbg !4928
  %call37 = call zeroext i8 @readb(i8* %add.ptr36) #5, !dbg !4929
  %conv38 = zext i8 %call37 to i32, !dbg !4929
  store i32 %conv38, i32* %bits, align 4, !dbg !4930
  %53 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4931
  %io_bits39 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %53, i32 0, i32 12, !dbg !4932
  %54 = load i32, i32* %io_bits39, align 4, !dbg !4932
  %55 = load i32, i32* %bits, align 4, !dbg !4933
  %xor40 = xor i32 %55, %54, !dbg !4933
  store i32 %xor40, i32* %bits, align 4, !dbg !4933
  %56 = load i32, i32* %bitshift, align 4, !dbg !4934
  %cmp41 = icmp sgt i32 %56, 0, !dbg !4936
  br i1 %cmp41, label %if.then43, label %if.else45, !dbg !4937

if.then43:                                        ; preds = %if.end31
  %57 = load i32, i32* %bitshift, align 4, !dbg !4938
  %58 = load i32, i32* %bits, align 4, !dbg !4939
  %shl44 = shl i32 %58, %57, !dbg !4939
  store i32 %shl44, i32* %bits, align 4, !dbg !4939
  br label %if.end48, !dbg !4940

if.else45:                                        ; preds = %if.end31
  %59 = load i32, i32* %bitshift, align 4, !dbg !4941
  %sub46 = sub i32 0, %59, !dbg !4942
  %60 = load i32, i32* %bits, align 4, !dbg !4943
  %shr47 = lshr i32 %60, %sub46, !dbg !4943
  store i32 %shr47, i32* %bits, align 4, !dbg !4943
  br label %if.end48

if.end48:                                         ; preds = %if.else45, %if.then43
  %61 = load i32, i32* %bits, align 4, !dbg !4944
  %62 = load i32, i32* %read_bits, align 4, !dbg !4945
  %or49 = or i32 %62, %61, !dbg !4945
  store i32 %or49, i32* %read_bits, align 4, !dbg !4945
  br label %for.inc, !dbg !4946

for.inc:                                          ; preds = %if.end48
  %63 = load i32, i32* %port_offset, align 4, !dbg !4947
  %inc = add i32 %63, 1, !dbg !4947
  store i32 %inc, i32* %port_offset, align 4, !dbg !4947
  br label %for.cond, !dbg !4948, !llvm.loop !4949

for.end:                                          ; preds = %if.then, %for.cond
  %64 = load i32, i32* %read_bits, align 4, !dbg !4951
  %65 = load i32*, i32** %data.addr, align 8, !dbg !4952
  %arrayidx50 = getelementptr i32, i32* %65, i64 1, !dbg !4952
  store i32 %64, i32* %arrayidx50, align 4, !dbg !4953
  %66 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4954
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %66, i32 0, i32 1, !dbg !4955
  %67 = load i32, i32* %n, align 4, !dbg !4955
  ret i32 %67, !dbg !4956
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ni_65xx_dio_insn_config(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !4957 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %base_port = alloca i64, align 8
  %chan = alloca i32, align 4
  %chan_mask = alloca i32, align 4
  %port = alloca i32, align 4
  %interval = alloca i32, align 4
  %val = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4958, metadata !DIExpression()), !dbg !4959
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4960, metadata !DIExpression()), !dbg !4961
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !4962, metadata !DIExpression()), !dbg !4963
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !4964, metadata !DIExpression()), !dbg !4965
  call void @llvm.dbg.declare(metadata i64* %base_port, metadata !4966, metadata !DIExpression()), !dbg !4967
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4968
  %private = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 6, !dbg !4969
  %1 = load i8*, i8** %private, align 8, !dbg !4969
  %2 = ptrtoint i8* %1 to i64, !dbg !4970
  store i64 %2, i64* %base_port, align 8, !dbg !4967
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !4971, metadata !DIExpression()), !dbg !4972
  %3 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4973
  %chanspec = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %3, i32 0, i32 4, !dbg !4973
  %4 = load i32, i32* %chanspec, align 4, !dbg !4973
  %and = and i32 %4, 65535, !dbg !4973
  store i32 %and, i32* %chan, align 4, !dbg !4972
  call void @llvm.dbg.declare(metadata i32* %chan_mask, metadata !4974, metadata !DIExpression()), !dbg !4975
  %5 = load i32, i32* %chan, align 4, !dbg !4976
  %rem = urem i32 %5, 8, !dbg !4976
  %shl = shl i32 1, %rem, !dbg !4976
  store i32 %shl, i32* %chan_mask, align 4, !dbg !4975
  call void @llvm.dbg.declare(metadata i32* %port, metadata !4977, metadata !DIExpression()), !dbg !4978
  %6 = load i64, i64* %base_port, align 8, !dbg !4979
  %7 = load i32, i32* %chan, align 4, !dbg !4980
  %div = udiv i32 %7, 8, !dbg !4980
  %conv = zext i32 %div to i64, !dbg !4980
  %add = add i64 %6, %conv, !dbg !4981
  %conv1 = trunc i64 %add to i32, !dbg !4979
  store i32 %conv1, i32* %port, align 4, !dbg !4978
  call void @llvm.dbg.declare(metadata i32* %interval, metadata !4982, metadata !DIExpression()), !dbg !4983
  call void @llvm.dbg.declare(metadata i32* %val, metadata !4984, metadata !DIExpression()), !dbg !4985
  %8 = load i32*, i32** %data.addr, align 8, !dbg !4986
  %arrayidx = getelementptr i32, i32* %8, i64 0, !dbg !4986
  %9 = load i32, i32* %arrayidx, align 4, !dbg !4986
  switch i32 %9, label %sw.default [
    i32 24, label %sw.bb
    i32 1, label %sw.bb21
    i32 0, label %sw.bb31
    i32 28, label %sw.bb42
  ], !dbg !4987

sw.bb:                                            ; preds = %entry
  %10 = load i32*, i32** %data.addr, align 8, !dbg !4988
  %arrayidx2 = getelementptr i32, i32* %10, i64 1, !dbg !4988
  %11 = load i32, i32* %arrayidx2, align 4, !dbg !4988
  %add3 = add i32 %11, 100, !dbg !4990
  %div4 = udiv i32 %add3, 200, !dbg !4991
  store i32 %div4, i32* %interval, align 4, !dbg !4992
  %12 = load i32, i32* %interval, align 4, !dbg !4993
  %cmp = icmp ugt i32 %12, 1048575, !dbg !4995
  br i1 %cmp, label %if.then, label %if.end, !dbg !4996

if.then:                                          ; preds = %sw.bb
  store i32 1048575, i32* %interval, align 4, !dbg !4997
  br label %if.end, !dbg !4998

if.end:                                           ; preds = %if.then, %sw.bb
  %13 = load i32, i32* %interval, align 4, !dbg !4999
  %mul = mul i32 %13, 200, !dbg !5000
  %14 = load i32*, i32** %data.addr, align 8, !dbg !5001
  %arrayidx6 = getelementptr i32, i32* %14, i64 1, !dbg !5001
  store i32 %mul, i32* %arrayidx6, align 4, !dbg !5002
  %15 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5003
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 17, !dbg !5004
  %16 = load i8*, i8** %mmio, align 8, !dbg !5004
  %17 = load i32, i32* %port, align 4, !dbg !5005
  %mul7 = mul i32 %17, 16, !dbg !5005
  %add8 = add i32 68, %mul7, !dbg !5005
  %idx.ext = zext i32 %add8 to i64, !dbg !5006
  %add.ptr = getelementptr i8, i8* %16, i64 %idx.ext, !dbg !5006
  %call = call zeroext i8 @readb(i8* %add.ptr) #5, !dbg !5007
  %conv9 = zext i8 %call to i32, !dbg !5007
  store i32 %conv9, i32* %val, align 4, !dbg !5008
  %18 = load i32, i32* %interval, align 4, !dbg !5009
  %tobool = icmp ne i32 %18, 0, !dbg !5009
  br i1 %tobool, label %if.then10, label %if.else, !dbg !5011

if.then10:                                        ; preds = %if.end
  %19 = load i32, i32* %interval, align 4, !dbg !5012
  %20 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5014
  %mmio11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 17, !dbg !5015
  %21 = load i8*, i8** %mmio11, align 8, !dbg !5015
  %add.ptr12 = getelementptr i8, i8* %21, i64 8, !dbg !5016
  call void @writel(i32 %19, i8* %add.ptr12) #5, !dbg !5017
  %22 = load i32, i32* %chan_mask, align 4, !dbg !5018
  %23 = load i32, i32* %val, align 4, !dbg !5019
  %or = or i32 %23, %22, !dbg !5019
  store i32 %or, i32* %val, align 4, !dbg !5019
  br label %if.end14, !dbg !5020

if.else:                                          ; preds = %if.end
  %24 = load i32, i32* %chan_mask, align 4, !dbg !5021
  %neg = xor i32 %24, -1, !dbg !5023
  %25 = load i32, i32* %val, align 4, !dbg !5024
  %and13 = and i32 %25, %neg, !dbg !5024
  store i32 %and13, i32* %val, align 4, !dbg !5024
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then10
  %26 = load i32, i32* %val, align 4, !dbg !5025
  %conv15 = trunc i32 %26 to i8, !dbg !5025
  %27 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5026
  %mmio16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %27, i32 0, i32 17, !dbg !5027
  %28 = load i8*, i8** %mmio16, align 8, !dbg !5027
  %29 = load i32, i32* %port, align 4, !dbg !5028
  %mul17 = mul i32 %29, 16, !dbg !5028
  %add18 = add i32 68, %mul17, !dbg !5028
  %idx.ext19 = zext i32 %add18 to i64, !dbg !5029
  %add.ptr20 = getelementptr i8, i8* %28, i64 %idx.ext19, !dbg !5029
  call void @writeb(i8 zeroext %conv15, i8* %add.ptr20) #5, !dbg !5030
  br label %sw.epilog, !dbg !5031

sw.bb21:                                          ; preds = %entry
  %30 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5032
  %type = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %30, i32 0, i32 2, !dbg !5034
  %31 = load i32, i32* %type, align 4, !dbg !5034
  %cmp22 = icmp ne i32 %31, 5, !dbg !5035
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !5036

if.then24:                                        ; preds = %sw.bb21
  store i32 -22, i32* %retval, align 4, !dbg !5037
  br label %return, !dbg !5037

if.end25:                                         ; preds = %sw.bb21
  %32 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5038
  %mmio26 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %32, i32 0, i32 17, !dbg !5039
  %33 = load i8*, i8** %mmio26, align 8, !dbg !5039
  %34 = load i32, i32* %port, align 4, !dbg !5040
  %mul27 = mul i32 %34, 16, !dbg !5040
  %add28 = add i32 65, %mul27, !dbg !5040
  %idx.ext29 = zext i32 %add28 to i64, !dbg !5041
  %add.ptr30 = getelementptr i8, i8* %33, i64 %idx.ext29, !dbg !5041
  call void @writeb(i8 zeroext 0, i8* %add.ptr30) #5, !dbg !5042
  br label %sw.epilog, !dbg !5043

sw.bb31:                                          ; preds = %entry
  %35 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5044
  %type32 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %35, i32 0, i32 2, !dbg !5046
  %36 = load i32, i32* %type32, align 4, !dbg !5046
  %cmp33 = icmp ne i32 %36, 5, !dbg !5047
  br i1 %cmp33, label %if.then35, label %if.end36, !dbg !5048

if.then35:                                        ; preds = %sw.bb31
  store i32 -22, i32* %retval, align 4, !dbg !5049
  br label %return, !dbg !5049

if.end36:                                         ; preds = %sw.bb31
  %37 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5050
  %mmio37 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %37, i32 0, i32 17, !dbg !5051
  %38 = load i8*, i8** %mmio37, align 8, !dbg !5051
  %39 = load i32, i32* %port, align 4, !dbg !5052
  %mul38 = mul i32 %39, 16, !dbg !5052
  %add39 = add i32 65, %mul38, !dbg !5052
  %idx.ext40 = zext i32 %add39 to i64, !dbg !5053
  %add.ptr41 = getelementptr i8, i8* %38, i64 %idx.ext40, !dbg !5053
  call void @writeb(i8 zeroext 1, i8* %add.ptr41) #5, !dbg !5054
  br label %sw.epilog, !dbg !5055

sw.bb42:                                          ; preds = %entry
  %40 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5056
  %type43 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %40, i32 0, i32 2, !dbg !5058
  %41 = load i32, i32* %type43, align 4, !dbg !5058
  %cmp44 = icmp ne i32 %41, 5, !dbg !5059
  br i1 %cmp44, label %if.then46, label %if.end47, !dbg !5060

if.then46:                                        ; preds = %sw.bb42
  store i32 -22, i32* %retval, align 4, !dbg !5061
  br label %return, !dbg !5061

if.end47:                                         ; preds = %sw.bb42
  %42 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5062
  %mmio48 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %42, i32 0, i32 17, !dbg !5063
  %43 = load i8*, i8** %mmio48, align 8, !dbg !5063
  %44 = load i32, i32* %port, align 4, !dbg !5064
  %mul49 = mul i32 %44, 16, !dbg !5064
  %add50 = add i32 65, %mul49, !dbg !5064
  %idx.ext51 = zext i32 %add50 to i64, !dbg !5065
  %add.ptr52 = getelementptr i8, i8* %43, i64 %idx.ext51, !dbg !5065
  %call53 = call zeroext i8 @readb(i8* %add.ptr52) #5, !dbg !5066
  %conv54 = zext i8 %call53 to i32, !dbg !5066
  store i32 %conv54, i32* %val, align 4, !dbg !5067
  %45 = load i32, i32* %val, align 4, !dbg !5068
  %conv55 = zext i32 %45 to i64, !dbg !5068
  %cmp56 = icmp eq i64 %conv55, 1, !dbg !5069
  %46 = zext i1 %cmp56 to i64, !dbg !5070
  %cond = select i1 %cmp56, i32 0, i32 1, !dbg !5070
  %47 = load i32*, i32** %data.addr, align 8, !dbg !5071
  %arrayidx58 = getelementptr i32, i32* %47, i64 1, !dbg !5071
  store i32 %cond, i32* %arrayidx58, align 4, !dbg !5072
  br label %sw.epilog, !dbg !5073

sw.default:                                       ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5074
  br label %return, !dbg !5074

sw.epilog:                                        ; preds = %if.end47, %if.end36, %if.end25, %if.end14
  %48 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5075
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %48, i32 0, i32 1, !dbg !5076
  %49 = load i32, i32* %n, align 4, !dbg !5076
  store i32 %49, i32* %retval, align 4, !dbg !5077
  br label %return, !dbg !5077

return:                                           ; preds = %sw.epilog, %sw.default, %if.then46, %if.then35, %if.then24
  %50 = load i32, i32* %retval, align 4, !dbg !5078
  ret i32 %50, !dbg !5078
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ni_65xx_intr_insn_bits(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !5079 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5080, metadata !DIExpression()), !dbg !5081
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5082, metadata !DIExpression()), !dbg !5083
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5084, metadata !DIExpression()), !dbg !5085
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !5086, metadata !DIExpression()), !dbg !5087
  %0 = load i32*, i32** %data.addr, align 8, !dbg !5088
  %arrayidx = getelementptr i32, i32* %0, i64 1, !dbg !5088
  store i32 0, i32* %arrayidx, align 4, !dbg !5089
  %1 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5090
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %1, i32 0, i32 1, !dbg !5091
  %2 = load i32, i32* %n, align 4, !dbg !5091
  ret i32 %2, !dbg !5092
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ni_65xx_intr_insn_config(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !5093 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5094, metadata !DIExpression()), !dbg !5095
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5096, metadata !DIExpression()), !dbg !5097
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5098, metadata !DIExpression()), !dbg !5099
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !5100, metadata !DIExpression()), !dbg !5101
  %0 = load i32*, i32** %data.addr, align 8, !dbg !5102
  %arrayidx = getelementptr i32, i32* %0, i64 0, !dbg !5102
  %1 = load i32, i32* %arrayidx, align 4, !dbg !5102
  switch i32 %1, label %sw.default14 [
    i32 25, label %sw.bb
    i32 21, label %sw.bb3
  ], !dbg !5103

sw.bb:                                            ; preds = %entry
  %2 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5104
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %2, i32 0, i32 1, !dbg !5107
  %3 = load i32, i32* %n, align 4, !dbg !5107
  %cmp = icmp ne i32 %3, 3, !dbg !5108
  br i1 %cmp, label %if.then, label %if.end, !dbg !5109

if.then:                                          ; preds = %sw.bb
  store i32 -22, i32* %retval, align 4, !dbg !5110
  br label %return, !dbg !5110

if.end:                                           ; preds = %sw.bb
  %4 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5111
  %5 = load i32*, i32** %data.addr, align 8, !dbg !5112
  %arrayidx1 = getelementptr i32, i32* %5, i64 1, !dbg !5112
  %6 = load i32, i32* %arrayidx1, align 4, !dbg !5112
  %7 = load i32*, i32** %data.addr, align 8, !dbg !5113
  %arrayidx2 = getelementptr i32, i32* %7, i64 2, !dbg !5113
  %8 = load i32, i32* %arrayidx2, align 4, !dbg !5113
  call void @ni_65xx_update_edge_detection(%struct.comedi_device* %4, i32 0, i32 %6, i32 %8) #5, !dbg !5114
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5115
  call void @ni_65xx_update_edge_detection(%struct.comedi_device* %9, i32 32, i32 0, i32 0) #5, !dbg !5116
  %10 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5117
  call void @ni_65xx_update_edge_detection(%struct.comedi_device* %10, i32 64, i32 0, i32 0) #5, !dbg !5118
  br label %sw.epilog15, !dbg !5119

sw.bb3:                                           ; preds = %entry
  %11 = load i32*, i32** %data.addr, align 8, !dbg !5120
  %arrayidx4 = getelementptr i32, i32* %11, i64 1, !dbg !5120
  %12 = load i32, i32* %arrayidx4, align 4, !dbg !5120
  %cmp5 = icmp ne i32 %12, 0, !dbg !5122
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !5123

if.then6:                                         ; preds = %sw.bb3
  store i32 -22, i32* %retval, align 4, !dbg !5124
  br label %return, !dbg !5124

if.end7:                                          ; preds = %sw.bb3
  %13 = load i32*, i32** %data.addr, align 8, !dbg !5125
  %arrayidx8 = getelementptr i32, i32* %13, i64 2, !dbg !5125
  %14 = load i32, i32* %arrayidx8, align 4, !dbg !5125
  switch i32 %14, label %sw.default [
    i32 0, label %sw.bb9
    i32 1, label %sw.bb10
  ], !dbg !5126

sw.bb9:                                           ; preds = %if.end7
  %15 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5127
  call void @ni_65xx_disable_edge_detection(%struct.comedi_device* %15) #5, !dbg !5129
  br label %sw.epilog, !dbg !5130

sw.bb10:                                          ; preds = %if.end7
  %16 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5131
  %17 = load i32*, i32** %data.addr, align 8, !dbg !5132
  %arrayidx11 = getelementptr i32, i32* %17, i64 3, !dbg !5132
  %18 = load i32, i32* %arrayidx11, align 4, !dbg !5132
  %19 = load i32*, i32** %data.addr, align 8, !dbg !5133
  %arrayidx12 = getelementptr i32, i32* %19, i64 4, !dbg !5133
  %20 = load i32, i32* %arrayidx12, align 4, !dbg !5133
  %21 = load i32*, i32** %data.addr, align 8, !dbg !5134
  %arrayidx13 = getelementptr i32, i32* %21, i64 5, !dbg !5134
  %22 = load i32, i32* %arrayidx13, align 4, !dbg !5134
  call void @ni_65xx_update_edge_detection(%struct.comedi_device* %16, i32 %18, i32 %20, i32 %22) #5, !dbg !5135
  br label %sw.epilog, !dbg !5136

sw.default:                                       ; preds = %if.end7
  store i32 -22, i32* %retval, align 4, !dbg !5137
  br label %return, !dbg !5137

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb9
  br label %sw.epilog15, !dbg !5138

sw.default14:                                     ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5139
  br label %return, !dbg !5139

sw.epilog15:                                      ; preds = %sw.epilog, %if.end
  %23 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5140
  %n16 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %23, i32 0, i32 1, !dbg !5141
  %24 = load i32, i32* %n16, align 4, !dbg !5141
  store i32 %24, i32* %retval, align 4, !dbg !5142
  br label %return, !dbg !5142

return:                                           ; preds = %sw.epilog15, %sw.default14, %sw.default, %if.then6, %if.then
  %25 = load i32, i32* %retval, align 4, !dbg !5143
  ret i32 %25, !dbg !5143
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ni_65xx_intr_cmdtest(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_cmd* %cmd) #2 !dbg !5144 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %cmd.addr = alloca %struct.comedi_cmd*, align 8
  %err = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5145, metadata !DIExpression()), !dbg !5146
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5147, metadata !DIExpression()), !dbg !5148
  store %struct.comedi_cmd* %cmd, %struct.comedi_cmd** %cmd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd.addr, metadata !5149, metadata !DIExpression()), !dbg !5150
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5151, metadata !DIExpression()), !dbg !5152
  store i32 0, i32* %err, align 4, !dbg !5152
  %0 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5153
  %start_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %0, i32 0, i32 2, !dbg !5154
  %call = call i32 @comedi_check_trigger_src(i32* %start_src, i32 2) #5, !dbg !5155
  %1 = load i32, i32* %err, align 4, !dbg !5156
  %or = or i32 %1, %call, !dbg !5156
  store i32 %or, i32* %err, align 4, !dbg !5156
  %2 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5157
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %2, i32 0, i32 4, !dbg !5158
  %call1 = call i32 @comedi_check_trigger_src(i32* %scan_begin_src, i32 256) #5, !dbg !5159
  %3 = load i32, i32* %err, align 4, !dbg !5160
  %or2 = or i32 %3, %call1, !dbg !5160
  store i32 %or2, i32* %err, align 4, !dbg !5160
  %4 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5161
  %convert_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %4, i32 0, i32 6, !dbg !5162
  %call3 = call i32 @comedi_check_trigger_src(i32* %convert_src, i32 4) #5, !dbg !5163
  %5 = load i32, i32* %err, align 4, !dbg !5164
  %or4 = or i32 %5, %call3, !dbg !5164
  store i32 %or4, i32* %err, align 4, !dbg !5164
  %6 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5165
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %6, i32 0, i32 8, !dbg !5166
  %call5 = call i32 @comedi_check_trigger_src(i32* %scan_end_src, i32 32) #5, !dbg !5167
  %7 = load i32, i32* %err, align 4, !dbg !5168
  %or6 = or i32 %7, %call5, !dbg !5168
  store i32 %or6, i32* %err, align 4, !dbg !5168
  %8 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5169
  %stop_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %8, i32 0, i32 10, !dbg !5170
  %call7 = call i32 @comedi_check_trigger_src(i32* %stop_src, i32 32) #5, !dbg !5171
  %9 = load i32, i32* %err, align 4, !dbg !5172
  %or8 = or i32 %9, %call7, !dbg !5172
  store i32 %or8, i32* %err, align 4, !dbg !5172
  %10 = load i32, i32* %err, align 4, !dbg !5173
  %tobool = icmp ne i32 %10, 0, !dbg !5173
  br i1 %tobool, label %if.then, label %if.end, !dbg !5175

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !5176
  br label %return, !dbg !5176

if.end:                                           ; preds = %entry
  %11 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5177
  %start_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %11, i32 0, i32 3, !dbg !5178
  %call9 = call i32 @comedi_check_trigger_arg_is(i32* %start_arg, i32 0) #5, !dbg !5179
  %12 = load i32, i32* %err, align 4, !dbg !5180
  %or10 = or i32 %12, %call9, !dbg !5180
  store i32 %or10, i32* %err, align 4, !dbg !5180
  %13 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5181
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %13, i32 0, i32 5, !dbg !5182
  %call11 = call i32 @comedi_check_trigger_arg_is(i32* %scan_begin_arg, i32 0) #5, !dbg !5183
  %14 = load i32, i32* %err, align 4, !dbg !5184
  %or12 = or i32 %14, %call11, !dbg !5184
  store i32 %or12, i32* %err, align 4, !dbg !5184
  %15 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5185
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %15, i32 0, i32 7, !dbg !5186
  %call13 = call i32 @comedi_check_trigger_arg_is(i32* %convert_arg, i32 0) #5, !dbg !5187
  %16 = load i32, i32* %err, align 4, !dbg !5188
  %or14 = or i32 %16, %call13, !dbg !5188
  store i32 %or14, i32* %err, align 4, !dbg !5188
  %17 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5189
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %17, i32 0, i32 9, !dbg !5190
  %18 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5191
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %18, i32 0, i32 13, !dbg !5192
  %19 = load i32, i32* %chanlist_len, align 8, !dbg !5192
  %call15 = call i32 @comedi_check_trigger_arg_is(i32* %scan_end_arg, i32 %19) #5, !dbg !5193
  %20 = load i32, i32* %err, align 4, !dbg !5194
  %or16 = or i32 %20, %call15, !dbg !5194
  store i32 %or16, i32* %err, align 4, !dbg !5194
  %21 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5195
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %21, i32 0, i32 11, !dbg !5196
  %call17 = call i32 @comedi_check_trigger_arg_is(i32* %stop_arg, i32 0) #5, !dbg !5197
  %22 = load i32, i32* %err, align 4, !dbg !5198
  %or18 = or i32 %22, %call17, !dbg !5198
  store i32 %or18, i32* %err, align 4, !dbg !5198
  %23 = load i32, i32* %err, align 4, !dbg !5199
  %tobool19 = icmp ne i32 %23, 0, !dbg !5199
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !5201

if.then20:                                        ; preds = %if.end
  store i32 3, i32* %retval, align 4, !dbg !5202
  br label %return, !dbg !5202

if.end21:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5203
  br label %return, !dbg !5203

return:                                           ; preds = %if.end21, %if.then20, %if.then
  %24 = load i32, i32* %retval, align 4, !dbg !5204
  ret i32 %24, !dbg !5204
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ni_65xx_intr_cmd(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #2 !dbg !5205 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5206, metadata !DIExpression()), !dbg !5207
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5208, metadata !DIExpression()), !dbg !5209
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5210
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 17, !dbg !5211
  %1 = load i8*, i8** %mmio, align 8, !dbg !5211
  %add.ptr = getelementptr i8, i8* %1, i64 1, !dbg !5212
  call void @writeb(i8 zeroext 12, i8* %add.ptr) #5, !dbg !5213
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5214
  %mmio1 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %2, i32 0, i32 17, !dbg !5215
  %3 = load i8*, i8** %mmio1, align 8, !dbg !5215
  %add.ptr2 = getelementptr i8, i8* %3, i64 3, !dbg !5216
  call void @writeb(i8 zeroext 29, i8* %add.ptr2) #5, !dbg !5217
  ret i32 0, !dbg !5218
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ni_65xx_intr_cancel(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #2 !dbg !5219 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5220, metadata !DIExpression()), !dbg !5221
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5222, metadata !DIExpression()), !dbg !5223
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5224
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 17, !dbg !5225
  %1 = load i8*, i8** %mmio, align 8, !dbg !5225
  %add.ptr = getelementptr i8, i8* %1, i64 3, !dbg !5226
  call void @writeb(i8 zeroext 0, i8* %add.ptr) #5, !dbg !5227
  ret i32 0, !dbg !5228
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ni_65xx_disable_input_filters(%struct.comedi_device* %dev) #2 !dbg !5229 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %num_ports = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5230, metadata !DIExpression()), !dbg !5231
  call void @llvm.dbg.declare(metadata i32* %num_ports, metadata !5232, metadata !DIExpression()), !dbg !5233
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5234
  %call = call i32 @ni_65xx_num_ports(%struct.comedi_device* %0) #5, !dbg !5235
  store i32 %call, i32* %num_ports, align 4, !dbg !5233
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5236, metadata !DIExpression()), !dbg !5237
  store i32 0, i32* %i, align 4, !dbg !5238
  br label %for.cond, !dbg !5240

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !5241
  %2 = load i32, i32* %num_ports, align 4, !dbg !5243
  %cmp = icmp ult i32 %1, %2, !dbg !5244
  br i1 %cmp, label %for.body, label %for.end, !dbg !5245

for.body:                                         ; preds = %for.cond
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5246
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %3, i32 0, i32 17, !dbg !5247
  %4 = load i8*, i8** %mmio, align 8, !dbg !5247
  %5 = load i32, i32* %i, align 4, !dbg !5248
  %mul = mul i32 %5, 16, !dbg !5248
  %add = add i32 68, %mul, !dbg !5248
  %idx.ext = sext i32 %add to i64, !dbg !5249
  %add.ptr = getelementptr i8, i8* %4, i64 %idx.ext, !dbg !5249
  call void @writeb(i8 zeroext 0, i8* %add.ptr) #5, !dbg !5250
  br label %for.inc, !dbg !5250

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !5251
  %inc = add i32 %6, 1, !dbg !5251
  store i32 %inc, i32* %i, align 4, !dbg !5251
  br label %for.cond, !dbg !5252, !llvm.loop !5253

for.end:                                          ; preds = %for.cond
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5255
  %mmio1 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 17, !dbg !5256
  %8 = load i8*, i8** %mmio1, align 8, !dbg !5256
  %add.ptr2 = getelementptr i8, i8* %8, i64 8, !dbg !5257
  call void @writel(i32 0, i8* %add.ptr2) #5, !dbg !5258
  ret void, !dbg !5259
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ni_65xx_disable_edge_detection(%struct.comedi_device* %dev) #2 !dbg !5260 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5261, metadata !DIExpression()), !dbg !5262
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5263
  call void @ni_65xx_update_edge_detection(%struct.comedi_device* %0, i32 0, i32 0, i32 0) #5, !dbg !5264
  %1 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5265
  call void @ni_65xx_update_edge_detection(%struct.comedi_device* %1, i32 32, i32 0, i32 0) #5, !dbg !5266
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5267
  call void @ni_65xx_update_edge_detection(%struct.comedi_device* %2, i32 64, i32 0, i32 0) #5, !dbg !5268
  ret void, !dbg !5269
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writel(i32 %val, i8* %addr) #2 !dbg !5270 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5273, metadata !DIExpression()), !dbg !5274
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5275, metadata !DIExpression()), !dbg !5274
  %0 = load i32, i32* %val.addr, align 4, !dbg !5274
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !5274
  %2 = bitcast i8* %1 to i32*, !dbg !5274
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #7, !dbg !5274, !srcloc !5276
  ret void, !dbg !5274
}

; Function Attrs: noredzone
declare dso_local void @iounmap(i8*) #1

; Function Attrs: noredzone
declare dso_local i32 @request_threaded_irq(i32, i32 (i32, i8*)*, i32 (i32, i8*)*, i64, i8*, i8*) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice*, i8*, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ni_65xx_update_edge_detection(%struct.comedi_device* %dev, i32 %base_chan, i32 %rising, i32 %falling) #2 !dbg !5277 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %base_chan.addr = alloca i32, align 4
  %rising.addr = alloca i32, align 4
  %falling.addr = alloca i32, align 4
  %num_ports = alloca i32, align 4
  %port = alloca i32, align 4
  %bitshift = alloca i32, align 4
  %port_mask = alloca i32, align 4
  %port_rising = alloca i32, align 4
  %port_falling = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5280, metadata !DIExpression()), !dbg !5281
  store i32 %base_chan, i32* %base_chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base_chan.addr, metadata !5282, metadata !DIExpression()), !dbg !5283
  store i32 %rising, i32* %rising.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %rising.addr, metadata !5284, metadata !DIExpression()), !dbg !5285
  store i32 %falling, i32* %falling.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %falling.addr, metadata !5286, metadata !DIExpression()), !dbg !5287
  call void @llvm.dbg.declare(metadata i32* %num_ports, metadata !5288, metadata !DIExpression()), !dbg !5289
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5290
  %call = call i32 @ni_65xx_num_ports(%struct.comedi_device* %0) #5, !dbg !5291
  store i32 %call, i32* %num_ports, align 4, !dbg !5289
  call void @llvm.dbg.declare(metadata i32* %port, metadata !5292, metadata !DIExpression()), !dbg !5293
  %1 = load i32, i32* %base_chan.addr, align 4, !dbg !5294
  %2 = load i32, i32* %num_ports, align 4, !dbg !5296
  %mul = mul i32 %2, 8, !dbg !5296
  %cmp = icmp uge i32 %1, %mul, !dbg !5297
  br i1 %cmp, label %if.then, label %if.end, !dbg !5298

if.then:                                          ; preds = %entry
  br label %for.end, !dbg !5299

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %base_chan.addr, align 4, !dbg !5300
  %div = udiv i32 %3, 8, !dbg !5300
  store i32 %div, i32* %port, align 4, !dbg !5302
  br label %for.cond, !dbg !5303

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %port, align 4, !dbg !5304
  %5 = load i32, i32* %num_ports, align 4, !dbg !5306
  %cmp1 = icmp ult i32 %4, %5, !dbg !5307
  br i1 %cmp1, label %for.body, label %for.end, !dbg !5308

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %bitshift, metadata !5309, metadata !DIExpression()), !dbg !5311
  %6 = load i32, i32* %port, align 4, !dbg !5312
  %mul2 = mul i32 %6, 8, !dbg !5312
  %7 = load i32, i32* %base_chan.addr, align 4, !dbg !5313
  %sub = sub i32 %mul2, %7, !dbg !5314
  store i32 %sub, i32* %bitshift, align 4, !dbg !5311
  call void @llvm.dbg.declare(metadata i32* %port_mask, metadata !5315, metadata !DIExpression()), !dbg !5316
  call void @llvm.dbg.declare(metadata i32* %port_rising, metadata !5317, metadata !DIExpression()), !dbg !5318
  call void @llvm.dbg.declare(metadata i32* %port_falling, metadata !5319, metadata !DIExpression()), !dbg !5320
  %8 = load i32, i32* %bitshift, align 4, !dbg !5321
  %cmp3 = icmp sge i32 %8, 32, !dbg !5323
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !5324

if.then4:                                         ; preds = %for.body
  br label %for.end, !dbg !5325

if.end5:                                          ; preds = %for.body
  %9 = load i32, i32* %bitshift, align 4, !dbg !5326
  %cmp6 = icmp sge i32 %9, 0, !dbg !5328
  br i1 %cmp6, label %if.then7, label %if.else, !dbg !5329

if.then7:                                         ; preds = %if.end5
  %10 = load i32, i32* %bitshift, align 4, !dbg !5330
  %shr = lshr i32 -1, %10, !dbg !5332
  store i32 %shr, i32* %port_mask, align 4, !dbg !5333
  %11 = load i32, i32* %rising.addr, align 4, !dbg !5334
  %12 = load i32, i32* %bitshift, align 4, !dbg !5335
  %shr8 = lshr i32 %11, %12, !dbg !5336
  store i32 %shr8, i32* %port_rising, align 4, !dbg !5337
  %13 = load i32, i32* %falling.addr, align 4, !dbg !5338
  %14 = load i32, i32* %bitshift, align 4, !dbg !5339
  %shr9 = lshr i32 %13, %14, !dbg !5340
  store i32 %shr9, i32* %port_falling, align 4, !dbg !5341
  br label %if.end15, !dbg !5342

if.else:                                          ; preds = %if.end5
  %15 = load i32, i32* %bitshift, align 4, !dbg !5343
  %sub10 = sub i32 0, %15, !dbg !5345
  %shl = shl i32 -1, %sub10, !dbg !5346
  store i32 %shl, i32* %port_mask, align 4, !dbg !5347
  %16 = load i32, i32* %rising.addr, align 4, !dbg !5348
  %17 = load i32, i32* %bitshift, align 4, !dbg !5349
  %sub11 = sub i32 0, %17, !dbg !5350
  %shl12 = shl i32 %16, %sub11, !dbg !5351
  store i32 %shl12, i32* %port_rising, align 4, !dbg !5352
  %18 = load i32, i32* %falling.addr, align 4, !dbg !5353
  %19 = load i32, i32* %bitshift, align 4, !dbg !5354
  %sub13 = sub i32 0, %19, !dbg !5355
  %shl14 = shl i32 %18, %sub13, !dbg !5356
  store i32 %shl14, i32* %port_falling, align 4, !dbg !5357
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then7
  %20 = load i32, i32* %port_mask, align 4, !dbg !5358
  %and = and i32 %20, 255, !dbg !5360
  %tobool = icmp ne i32 %and, 0, !dbg !5360
  br i1 %tobool, label %if.then16, label %if.end49, !dbg !5361

if.then16:                                        ; preds = %if.end15
  %21 = load i32, i32* %port_mask, align 4, !dbg !5362
  %neg = xor i32 %21, -1, !dbg !5365
  %and17 = and i32 %neg, 255, !dbg !5366
  %tobool18 = icmp ne i32 %and17, 0, !dbg !5366
  br i1 %tobool18, label %if.then19, label %if.end34, !dbg !5367

if.then19:                                        ; preds = %if.then16
  %22 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5368
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %22, i32 0, i32 17, !dbg !5370
  %23 = load i8*, i8** %mmio, align 8, !dbg !5370
  %24 = load i32, i32* %port, align 4, !dbg !5371
  %mul20 = mul i32 %24, 16, !dbg !5371
  %add = add i32 66, %mul20, !dbg !5371
  %idx.ext = zext i32 %add to i64, !dbg !5372
  %add.ptr = getelementptr i8, i8* %23, i64 %idx.ext, !dbg !5372
  %call21 = call zeroext i8 @readb(i8* %add.ptr) #5, !dbg !5373
  %conv = zext i8 %call21 to i32, !dbg !5373
  %25 = load i32, i32* %port_mask, align 4, !dbg !5374
  %neg22 = xor i32 %25, -1, !dbg !5375
  %and23 = and i32 %conv, %neg22, !dbg !5376
  %26 = load i32, i32* %port_rising, align 4, !dbg !5377
  %or = or i32 %26, %and23, !dbg !5377
  store i32 %or, i32* %port_rising, align 4, !dbg !5377
  %27 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5378
  %mmio24 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %27, i32 0, i32 17, !dbg !5379
  %28 = load i8*, i8** %mmio24, align 8, !dbg !5379
  %29 = load i32, i32* %port, align 4, !dbg !5380
  %mul25 = mul i32 %29, 16, !dbg !5380
  %add26 = add i32 67, %mul25, !dbg !5380
  %idx.ext27 = zext i32 %add26 to i64, !dbg !5381
  %add.ptr28 = getelementptr i8, i8* %28, i64 %idx.ext27, !dbg !5381
  %call29 = call zeroext i8 @readb(i8* %add.ptr28) #5, !dbg !5382
  %conv30 = zext i8 %call29 to i32, !dbg !5382
  %30 = load i32, i32* %port_mask, align 4, !dbg !5383
  %neg31 = xor i32 %30, -1, !dbg !5384
  %and32 = and i32 %conv30, %neg31, !dbg !5385
  %31 = load i32, i32* %port_falling, align 4, !dbg !5386
  %or33 = or i32 %31, %and32, !dbg !5386
  store i32 %or33, i32* %port_falling, align 4, !dbg !5386
  br label %if.end34, !dbg !5387

if.end34:                                         ; preds = %if.then19, %if.then16
  %32 = load i32, i32* %port_rising, align 4, !dbg !5388
  %and35 = and i32 %32, 255, !dbg !5389
  %conv36 = trunc i32 %and35 to i8, !dbg !5388
  %33 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5390
  %mmio37 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %33, i32 0, i32 17, !dbg !5391
  %34 = load i8*, i8** %mmio37, align 8, !dbg !5391
  %35 = load i32, i32* %port, align 4, !dbg !5392
  %mul38 = mul i32 %35, 16, !dbg !5392
  %add39 = add i32 66, %mul38, !dbg !5392
  %idx.ext40 = zext i32 %add39 to i64, !dbg !5393
  %add.ptr41 = getelementptr i8, i8* %34, i64 %idx.ext40, !dbg !5393
  call void @writeb(i8 zeroext %conv36, i8* %add.ptr41) #5, !dbg !5394
  %36 = load i32, i32* %port_falling, align 4, !dbg !5395
  %and42 = and i32 %36, 255, !dbg !5396
  %conv43 = trunc i32 %and42 to i8, !dbg !5395
  %37 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5397
  %mmio44 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %37, i32 0, i32 17, !dbg !5398
  %38 = load i8*, i8** %mmio44, align 8, !dbg !5398
  %39 = load i32, i32* %port, align 4, !dbg !5399
  %mul45 = mul i32 %39, 16, !dbg !5399
  %add46 = add i32 67, %mul45, !dbg !5399
  %idx.ext47 = zext i32 %add46 to i64, !dbg !5400
  %add.ptr48 = getelementptr i8, i8* %38, i64 %idx.ext47, !dbg !5400
  call void @writeb(i8 zeroext %conv43, i8* %add.ptr48) #5, !dbg !5401
  br label %if.end49, !dbg !5402

if.end49:                                         ; preds = %if.end34, %if.end15
  br label %for.inc, !dbg !5403

for.inc:                                          ; preds = %if.end49
  %40 = load i32, i32* %port, align 4, !dbg !5404
  %inc = add i32 %40, 1, !dbg !5404
  store i32 %inc, i32* %port, align 4, !dbg !5404
  br label %for.cond, !dbg !5405, !llvm.loop !5406

for.end:                                          ; preds = %if.then, %if.then4, %for.cond
  ret void, !dbg !5408
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ni_65xx_num_ports(%struct.comedi_device* %dev) #2 !dbg !5409 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %board = alloca %struct.ni_65xx_board*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5412, metadata !DIExpression()), !dbg !5413
  call void @llvm.dbg.declare(metadata %struct.ni_65xx_board** %board, metadata !5414, metadata !DIExpression()), !dbg !5415
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5416
  %board_ptr = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 9, !dbg !5417
  %1 = load i8*, i8** %board_ptr, align 8, !dbg !5417
  %2 = bitcast i8* %1 to %struct.ni_65xx_board*, !dbg !5416
  store %struct.ni_65xx_board* %2, %struct.ni_65xx_board** %board, align 8, !dbg !5415
  %3 = load %struct.ni_65xx_board*, %struct.ni_65xx_board** %board, align 8, !dbg !5418
  %num_dio_ports = getelementptr inbounds %struct.ni_65xx_board, %struct.ni_65xx_board* %3, i32 0, i32 1, !dbg !5419
  %4 = load i32, i32* %num_dio_ports, align 8, !dbg !5419
  %5 = load %struct.ni_65xx_board*, %struct.ni_65xx_board** %board, align 8, !dbg !5420
  %num_di_ports = getelementptr inbounds %struct.ni_65xx_board, %struct.ni_65xx_board* %5, i32 0, i32 2, !dbg !5421
  %6 = load i32, i32* %num_di_ports, align 4, !dbg !5421
  %add = add i32 %4, %6, !dbg !5422
  %7 = load %struct.ni_65xx_board*, %struct.ni_65xx_board** %board, align 8, !dbg !5423
  %num_do_ports = getelementptr inbounds %struct.ni_65xx_board, %struct.ni_65xx_board* %7, i32 0, i32 3, !dbg !5424
  %8 = load i32, i32* %num_do_ports, align 8, !dbg !5424
  %add1 = add i32 %add, %8, !dbg !5425
  ret i32 %add1, !dbg !5426
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_src(i32* %src, i32 %flags) #2 !dbg !5427 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i32*, align 8
  %flags.addr = alloca i32, align 4
  %orig_src = alloca i32, align 4
  store i32* %src, i32** %src.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %src.addr, metadata !5430, metadata !DIExpression()), !dbg !5431
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5432, metadata !DIExpression()), !dbg !5433
  call void @llvm.dbg.declare(metadata i32* %orig_src, metadata !5434, metadata !DIExpression()), !dbg !5435
  %0 = load i32*, i32** %src.addr, align 8, !dbg !5436
  %1 = load i32, i32* %0, align 4, !dbg !5437
  store i32 %1, i32* %orig_src, align 4, !dbg !5435
  %2 = load i32, i32* %orig_src, align 4, !dbg !5438
  %3 = load i32, i32* %flags.addr, align 4, !dbg !5439
  %and = and i32 %2, %3, !dbg !5440
  %4 = load i32*, i32** %src.addr, align 8, !dbg !5441
  store i32 %and, i32* %4, align 4, !dbg !5442
  %5 = load i32*, i32** %src.addr, align 8, !dbg !5443
  %6 = load i32, i32* %5, align 4, !dbg !5445
  %cmp = icmp eq i32 %6, 0, !dbg !5446
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5447

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32*, i32** %src.addr, align 8, !dbg !5448
  %8 = load i32, i32* %7, align 4, !dbg !5449
  %9 = load i32, i32* %orig_src, align 4, !dbg !5450
  %cmp1 = icmp ne i32 %8, %9, !dbg !5451
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5452

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !5453
  br label %return, !dbg !5453

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %retval, align 4, !dbg !5454
  br label %return, !dbg !5454

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !5455
  ret i32 %10, !dbg !5455
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_arg_is(i32* %arg, i32 %val) #2 !dbg !5456 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca i32*, align 8
  %val.addr = alloca i32, align 4
  store i32* %arg, i32** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %arg.addr, metadata !5457, metadata !DIExpression()), !dbg !5458
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5459, metadata !DIExpression()), !dbg !5460
  %0 = load i32*, i32** %arg.addr, align 8, !dbg !5461
  %1 = load i32, i32* %0, align 4, !dbg !5463
  %2 = load i32, i32* %val.addr, align 4, !dbg !5464
  %cmp = icmp ne i32 %1, %2, !dbg !5465
  br i1 %cmp, label %if.then, label %if.end, !dbg !5466

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %val.addr, align 4, !dbg !5467
  %4 = load i32*, i32** %arg.addr, align 8, !dbg !5469
  store i32 %3, i32* %4, align 4, !dbg !5470
  store i32 -22, i32* %retval, align 4, !dbg !5471
  br label %return, !dbg !5471

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5472
  br label %return, !dbg !5472

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !5473
  ret i32 %5, !dbg !5473
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ni_65xx_pci_probe(%struct.pci_dev* %dev, %struct.pci_device_id* %id) #2 !dbg !5474 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %id.addr = alloca %struct.pci_device_id*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5475, metadata !DIExpression()), !dbg !5476
  store %struct.pci_device_id* %id, %struct.pci_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_device_id** %id.addr, metadata !5477, metadata !DIExpression()), !dbg !5478
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5479
  %1 = load %struct.pci_device_id*, %struct.pci_device_id** %id.addr, align 8, !dbg !5480
  %driver_data = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %1, i32 0, i32 6, !dbg !5481
  %2 = load i64, i64* %driver_data, align 8, !dbg !5481
  %call = call i32 @comedi_pci_auto_config(%struct.pci_dev* %0, %struct.comedi_driver* @ni_65xx_driver, i64 %2) #5, !dbg !5482
  ret i32 %call, !dbg !5483
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
attributes #6 = { cold noredzone }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4350, !4351, !4352, !4353}
!llvm.ident = !{!4354}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_legacy_invert_outputs", scope: !2, file: !3, line: 264, type: !4347, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !127, globals: !136, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/staging/comedi/drivers/ni_65xx.c", directory: "/home/lizy2001/genbc/linux")
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
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "comedi_io_direction", file: !101, line: 249, baseType: !7, size: 32, elements: !123)
!123 = !{!124, !125, !126}
!124 = !DIEnumerator(name: "COMEDI_INPUT", value: 0, isUnsigned: true)
!125 = !DIEnumerator(name: "COMEDI_OUTPUT", value: 1, isUnsigned: true)
!126 = !DIEnumerator(name: "COMEDI_OPENDRAIN", value: 2, isUnsigned: true)
!127 = !{!128, !131, !132, !133, !134}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !130)
!130 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!131 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!133 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!136 = !{!137, !207, !212, !217, !219, !226, !231, !236, !241, !246, !0, !251, !4048, !4061, !4342}
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(name: "__param_legacy_invert_outputs", scope: !2, file: !3, line: 264, type: !139, isLocal: true, isDefinition: true, align: 64)
!139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !141, line: 69, size: 320, elements: !142)
!141 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!142 = !{!143, !147, !151, !171, !178, !182, !185}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !140, file: !141, line: 70, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!146 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !140, file: !141, line: 71, baseType: !148, size: 64, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !150, line: 76, flags: DIFlagFwdDecl)
!150 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!151 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !140, file: !141, line: 72, baseType: !152, size: 64, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !141, line: 47, size: 256, elements: !155)
!155 = !{!156, !157, !162, !167}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !154, file: !141, line: 49, baseType: !7, size: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !154, file: !141, line: 51, baseType: !158, size: 64, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DISubroutineType(types: !160)
!160 = !{!131, !144, !161}
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !154, file: !141, line: 53, baseType: !163, size: 64, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DISubroutineType(types: !165)
!165 = !{!131, !166, !161}
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !154, file: !141, line: 55, baseType: !168, size: 64, offset: 192)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DISubroutineType(types: !170)
!170 = !{null, !132}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !140, file: !141, line: 73, baseType: !172, size: 16, offset: 192)
!172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !174, line: 19, baseType: !175)
!174 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !176, line: 24, baseType: !177)
!176 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!177 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !140, file: !141, line: 74, baseType: !179, size: 8, offset: 208)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !174, line: 16, baseType: !180)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !176, line: 20, baseType: !181)
!181 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !140, file: !141, line: 75, baseType: !183, size: 8, offset: 216)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !174, line: 17, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !176, line: 21, baseType: !130)
!185 = !DIDerivedType(tag: DW_TAG_member, scope: !140, file: !141, line: 76, baseType: !186, size: 64, offset: 256)
!186 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !140, file: !141, line: 76, size: 64, elements: !187)
!187 = !{!188, !189, !196}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !186, file: !141, line: 77, baseType: !132, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !186, file: !141, line: 78, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !141, line: 86, size: 128, elements: !193)
!193 = !{!194, !195}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !192, file: !141, line: 87, baseType: !7, size: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !192, file: !141, line: 88, baseType: !166, size: 64, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !186, file: !141, line: 79, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !199)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !141, line: 92, size: 256, elements: !200)
!200 = !{!201, !202, !203, !205, !206}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !199, file: !141, line: 94, baseType: !7, size: 32)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !199, file: !141, line: 95, baseType: !7, size: 32, offset: 32)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !199, file: !141, line: 96, baseType: !204, size: 64, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !199, file: !141, line: 97, baseType: !152, size: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !199, file: !141, line: 98, baseType: !132, size: 64, offset: 192)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_legacy_invert_outputstype234", scope: !2, file: !3, line: 264, type: !209, isLocal: true, isDefinition: true, align: 8)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 352, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 44)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_legacy_invert_outputs235", scope: !2, file: !3, line: 266, type: !214, isLocal: true, isDefinition: true, align: 8)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 1064, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 133)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ni_65xx_driver_init236", scope: !2, file: !3, line: 818, type: !132, isLocal: true, isDefinition: true)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(name: "__exitcall_ni_65xx_driver_exit", scope: !2, file: !3, line: 818, type: !221, isLocal: true, isDefinition: true)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !222, line: 117, baseType: !223)
!222 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{null}
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author237", scope: !2, file: !3, line: 820, type: !228, isLocal: true, isDefinition: true, align: 8)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 360, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 45)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description238", scope: !2, file: !3, line: 821, type: !233, isLocal: true, isDefinition: true, align: 8)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 544, elements: !234)
!234 = !{!235}
!235 = !DISubrange(count: 68)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file239", scope: !2, file: !3, line: 822, type: !238, isLocal: true, isDefinition: true, align: 8)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 416, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 52)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license240", scope: !2, file: !3, line: 822, type: !243, isLocal: true, isDefinition: true, align: 8)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 160, elements: !244)
!244 = !{!245}
!245 = !DISubrange(count: 20)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(name: "ni_65xx_legacy_invert_outputs", scope: !2, file: !3, line: 263, type: !248, isLocal: true, isDefinition: true)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !249, line: 30, baseType: !250)
!249 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!250 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(name: "ni_65xx_driver", scope: !2, file: !3, line: 772, type: !253, isLocal: true, isDefinition: true)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_driver", file: !254, line: 437, size: 576, elements: !255)
!254 = !DIFile(filename: "drivers/staging/comedi/drivers/../comedidev.h", directory: "/home/lizy2001/genbc/linux")
!255 = !{!256, !258, !259, !260, !4038, !4039, !4043, !4044, !4047}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !253, file: !254, line: 439, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !253, file: !254, line: 441, baseType: !144, size: 64, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !253, file: !254, line: 442, baseType: !148, size: 64, offset: 128)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !253, file: !254, line: 443, baseType: !261, size: 64, offset: 192)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{!131, !264, !4031}
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_device", file: !254, line: 541, size: 1920, elements: !266)
!266 = !{!267, !268, !269, !272, !273, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4019, !4023, !4027}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !265, file: !254, line: 542, baseType: !131, size: 32)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !265, file: !254, line: 543, baseType: !257, size: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "pacer", scope: !265, file: !254, line: 544, baseType: !270, size: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_8254", file: !254, line: 544, flags: DIFlagFwdDecl)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !265, file: !254, line: 545, baseType: !132, size: 64, offset: 192)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !265, file: !254, line: 547, baseType: !274, size: 64, offset: 256)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !276)
!276 = !{!277, !3416, !3417, !3420, !3421, !3472, !3563, !3564, !3565, !3566, !3567, !3576, !3681, !3694, !3697, !3698, !3702, !3704, !3705, !3706, !3710, !3716, !3717, !3720, !3724, !3814, !3815, !3816, !3817, !3818, !3850, !3851, !3852, !3855, !3858, !3859, !3860, !3861}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !275, file: !73, line: 462, baseType: !278, size: 512)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !279, line: 64, size: 512, elements: !280)
!279 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!280 = !{!281, !282, !288, !290, !349, !3267, !3406, !3411, !3412, !3413, !3414, !3415}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !278, file: !279, line: 65, baseType: !144, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !278, file: !279, line: 66, baseType: !283, size: 128, offset: 64)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !249, line: 178, size: 128, elements: !284)
!284 = !{!285, !287}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !283, file: !249, line: 179, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !283, file: !249, line: 179, baseType: !286, size: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !278, file: !279, line: 67, baseType: !289, size: 64, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !278, file: !279, line: 68, baseType: !291, size: 64, offset: 256)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !279, line: 192, size: 704, elements: !293)
!293 = !{!294, !295, !311, !312}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !292, file: !279, line: 193, baseType: !283, size: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !292, file: !279, line: 194, baseType: !296, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !297, line: 83, baseType: !298)
!297 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !297, line: 71, elements: !299)
!299 = !{!300}
!300 = !DIDerivedType(tag: DW_TAG_member, scope: !298, file: !297, line: 72, baseType: !301)
!301 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !298, file: !297, line: 72, elements: !302)
!302 = !{!303}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !301, file: !297, line: 73, baseType: !304)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !297, line: 20, elements: !305)
!305 = !{!306}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !304, file: !297, line: 21, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !308, line: 25, baseType: !309)
!308 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !308, line: 25, elements: !310)
!310 = !{}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !292, file: !279, line: 195, baseType: !278, size: 512, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !292, file: !279, line: 196, baseType: !313, size: 64, offset: 640)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !315)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !279, line: 156, size: 192, elements: !316)
!316 = !{!317, !322, !327}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !315, file: !279, line: 157, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !319)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{!131, !291, !289}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !315, file: !279, line: 158, baseType: !323, size: 64, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !324)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{!144, !291, !289}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !315, file: !279, line: 159, baseType: !328, size: 64, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{!131, !291, !289, !332}
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !279, line: 148, size: 20736, elements: !334)
!334 = !{!335, !339, !343, !344, !348}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !333, file: !279, line: 149, baseType: !336, size: 192)
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 192, elements: !337)
!337 = !{!338}
!338 = !DISubrange(count: 3)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !333, file: !279, line: 150, baseType: !340, size: 4096, offset: 192)
!340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 4096, elements: !341)
!341 = !{!342}
!342 = !DISubrange(count: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !333, file: !279, line: 151, baseType: !131, size: 32, offset: 4288)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !333, file: !279, line: 152, baseType: !345, size: 16384, offset: 4320)
!345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 16384, elements: !346)
!346 = !{!347}
!347 = !DISubrange(count: 2048)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !333, file: !279, line: 153, baseType: !131, size: 32, offset: 20704)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !278, file: !279, line: 69, baseType: !350, size: 64, offset: 320)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !279, line: 138, size: 448, elements: !352)
!352 = !{!353, !357, !385, !387, !3229, !3257, !3261}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !351, file: !279, line: 139, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DISubroutineType(types: !356)
!356 = !{null, !289}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !351, file: !279, line: 140, baseType: !358, size: 64, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !360)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !361, line: 230, size: 128, elements: !362)
!361 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!362 = !{!363, !378}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !360, file: !361, line: 231, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{!367, !289, !372, !166}
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !249, line: 60, baseType: !368)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !369, line: 73, baseType: !370)
!369 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !369, line: 15, baseType: !371)
!371 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !361, line: 30, size: 128, elements: !374)
!374 = !{!375, !376}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !373, file: !361, line: 31, baseType: !144, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !373, file: !361, line: 32, baseType: !377, size: 16, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !249, line: 19, baseType: !177)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !360, file: !361, line: 232, baseType: !379, size: 64, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DISubroutineType(types: !381)
!381 = !{!367, !289, !372, !144, !382}
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !249, line: 55, baseType: !383)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !369, line: 72, baseType: !384)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !369, line: 16, baseType: !133)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !351, file: !279, line: 141, baseType: !386, size: 64, offset: 128)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !351, file: !279, line: 142, baseType: !388, size: 64, offset: 192)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !391)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !361, line: 84, size: 320, elements: !392)
!392 = !{!393, !394, !398, !3226, !3227}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !391, file: !361, line: 85, baseType: !144, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !391, file: !361, line: 86, baseType: !395, size: 64, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{!377, !289, !372, !131}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !391, file: !361, line: 88, baseType: !399, size: 64, offset: 128)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DISubroutineType(types: !401)
!401 = !{!377, !289, !402, !131}
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !361, line: 168, size: 448, elements: !404)
!404 = !{!405, !406, !407, !408, !3221, !3222}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !403, file: !361, line: 169, baseType: !373, size: 128)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !403, file: !361, line: 170, baseType: !382, size: 64, offset: 128)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !403, file: !361, line: 171, baseType: !132, size: 64, offset: 192)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !403, file: !361, line: 172, baseType: !409, size: 64, offset: 256)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{!367, !412, !289, !402, !166, !583, !382}
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !414)
!414 = !{!415, !433, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3204, !3205, !3214, !3215, !3216, !3217, !3218, !3219, !3220}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !413, file: !44, line: 920, baseType: !416, size: 128)
!416 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !413, file: !44, line: 917, size: 128, elements: !417)
!417 = !{!418, !424}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !416, file: !44, line: 918, baseType: !419, size: 64)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !420, line: 58, size: 64, elements: !421)
!420 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!421 = !{!422}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !419, file: !420, line: 59, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !416, file: !44, line: 919, baseType: !425, size: 128, align: 64)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !249, line: 216, size: 128, align: 64, elements: !426)
!426 = !{!427, !429}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !425, file: !249, line: 217, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !425, file: !249, line: 218, baseType: !430, size: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{null, !428}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !413, file: !44, line: 921, baseType: !434, size: 128, offset: 128)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !435, line: 8, size: 128, elements: !436)
!435 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!436 = !{!437, !441}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !434, file: !435, line: 9, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !440, line: 18, flags: DIFlagFwdDecl)
!440 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!441 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !434, file: !435, line: 10, baseType: !442, size: 64, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !440, line: 89, size: 1536, elements: !444)
!444 = !{!445, !446, !456, !464, !465, !485, !3154, !3156, !3168, !3169, !3170, !3171, !3172, !3178, !3179, !3180}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !443, file: !440, line: 91, baseType: !7, size: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !443, file: !440, line: 92, baseType: !447, size: 32, offset: 32)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !448, line: 277, baseType: !449)
!448 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !448, line: 277, size: 32, elements: !450)
!450 = !{!451}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !449, file: !448, line: 277, baseType: !452, size: 32)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !448, line: 70, baseType: !453)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !448, line: 65, size: 32, elements: !454)
!454 = !{!455}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !453, file: !448, line: 66, baseType: !7, size: 32)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !443, file: !440, line: 93, baseType: !457, size: 128, offset: 64)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !458, line: 38, size: 128, elements: !459)
!458 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!459 = !{!460, !462}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !457, file: !458, line: 39, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !457, file: !458, line: 39, baseType: !463, size: 64, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !443, file: !440, line: 94, baseType: !442, size: 64, offset: 192)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !443, file: !440, line: 95, baseType: !466, size: 128, offset: 256)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !440, line: 47, size: 128, elements: !467)
!467 = !{!468, !482}
!468 = !DIDerivedType(tag: DW_TAG_member, scope: !466, file: !440, line: 48, baseType: !469, size: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !466, file: !440, line: 48, size: 64, elements: !470)
!470 = !{!471, !478}
!471 = !DIDerivedType(tag: DW_TAG_member, scope: !469, file: !440, line: 49, baseType: !472, size: 64)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !469, file: !440, line: 49, size: 64, elements: !473)
!473 = !{!474, !477}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !472, file: !440, line: 50, baseType: !475, size: 32)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !174, line: 21, baseType: !476)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !176, line: 27, baseType: !7)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !472, file: !440, line: 50, baseType: !475, size: 32, offset: 32)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !469, file: !440, line: 52, baseType: !479, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !174, line: 23, baseType: !480)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !176, line: 31, baseType: !481)
!481 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !466, file: !440, line: 54, baseType: !483, size: 64, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !443, file: !440, line: 96, baseType: !486, size: 64, offset: 384)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !488)
!488 = !{!489, !490, !491, !499, !506, !507, !650, !2865, !2866, !2867, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !3130, !3138, !3139, !3140, !3150, !3151, !3152, !3153}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !487, file: !44, line: 611, baseType: !377, size: 16)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !487, file: !44, line: 612, baseType: !177, size: 16, offset: 16)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !487, file: !44, line: 613, baseType: !492, size: 32, offset: 32)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !493, line: 23, baseType: !494)
!493 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !493, line: 21, size: 32, elements: !495)
!495 = !{!496}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !494, file: !493, line: 22, baseType: !497, size: 32)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !249, line: 32, baseType: !498)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !369, line: 49, baseType: !7)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !487, file: !44, line: 614, baseType: !500, size: 32, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !493, line: 28, baseType: !501)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !493, line: 26, size: 32, elements: !502)
!502 = !{!503}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !501, file: !493, line: 27, baseType: !504, size: 32)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !249, line: 33, baseType: !505)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !369, line: 50, baseType: !7)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !487, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !487, file: !44, line: 622, baseType: !508, size: 64, offset: 128)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !510)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !511)
!511 = !{!512, !516, !526, !530, !536, !540, !544, !548, !552, !556, !560, !561, !567, !571, !597, !626, !630, !636, !641, !645, !646}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !510, file: !44, line: 1865, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{!442, !486, !442, !7}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !510, file: !44, line: 1866, baseType: !517, size: 64, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!144, !442, !486, !520}
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !522, line: 10, size: 128, elements: !523)
!522 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!523 = !{!524, !525}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !521, file: !522, line: 11, baseType: !168, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !521, file: !522, line: 12, baseType: !132, size: 64, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !510, file: !44, line: 1867, baseType: !527, size: 64, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!131, !486, !131}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !510, file: !44, line: 1868, baseType: !531, size: 64, offset: 192)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!534, !486, !131}
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !510, file: !44, line: 1870, baseType: !537, size: 64, offset: 256)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{!131, !442, !166, !131}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !510, file: !44, line: 1872, baseType: !541, size: 64, offset: 320)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!131, !486, !442, !377, !248}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !510, file: !44, line: 1873, baseType: !545, size: 64, offset: 384)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!131, !442, !486, !442}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !510, file: !44, line: 1874, baseType: !549, size: 64, offset: 448)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{!131, !486, !442}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !510, file: !44, line: 1875, baseType: !553, size: 64, offset: 512)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{!131, !486, !442, !144}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !510, file: !44, line: 1876, baseType: !557, size: 64, offset: 576)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!131, !486, !442, !377}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !510, file: !44, line: 1877, baseType: !549, size: 64, offset: 640)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !510, file: !44, line: 1878, baseType: !562, size: 64, offset: 704)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{!131, !486, !442, !377, !565}
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !249, line: 16, baseType: !566)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !249, line: 13, baseType: !475)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !510, file: !44, line: 1879, baseType: !568, size: 64, offset: 768)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!131, !486, !442, !486, !442, !7}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !510, file: !44, line: 1881, baseType: !572, size: 64, offset: 832)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!131, !442, !575}
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !577)
!577 = !{!578, !579, !580, !581, !582, !586, !594, !595, !596}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !576, file: !44, line: 220, baseType: !7, size: 32)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !576, file: !44, line: 221, baseType: !377, size: 16, offset: 32)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !576, file: !44, line: 222, baseType: !492, size: 32, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !576, file: !44, line: 223, baseType: !500, size: 32, offset: 96)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !576, file: !44, line: 224, baseType: !583, size: 64, offset: 128)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !249, line: 46, baseType: !584)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !369, line: 88, baseType: !585)
!585 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !576, file: !44, line: 225, baseType: !587, size: 128, offset: 192)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !588, line: 13, size: 128, elements: !589)
!588 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!589 = !{!590, !593}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !587, file: !588, line: 14, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !588, line: 8, baseType: !592)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !176, line: 30, baseType: !585)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !587, file: !588, line: 15, baseType: !371, size: 64, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !576, file: !44, line: 226, baseType: !587, size: 128, offset: 320)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !576, file: !44, line: 227, baseType: !587, size: 128, offset: 448)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !576, file: !44, line: 234, baseType: !412, size: 64, offset: 576)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !510, file: !44, line: 1882, baseType: !598, size: 64, offset: 896)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{!131, !601, !603, !475, !7}
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !434)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !605, line: 22, size: 1152, elements: !606)
!605 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!606 = !{!607, !608, !609, !610, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !604, file: !605, line: 23, baseType: !475, size: 32)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !604, file: !605, line: 24, baseType: !377, size: 16, offset: 32)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !604, file: !605, line: 25, baseType: !7, size: 32, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !604, file: !605, line: 26, baseType: !611, size: 32, offset: 96)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !249, line: 104, baseType: !475)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !604, file: !605, line: 27, baseType: !479, size: 64, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !604, file: !605, line: 28, baseType: !479, size: 64, offset: 192)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !604, file: !605, line: 37, baseType: !479, size: 64, offset: 256)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !604, file: !605, line: 38, baseType: !565, size: 32, offset: 320)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !604, file: !605, line: 39, baseType: !565, size: 32, offset: 352)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !604, file: !605, line: 40, baseType: !492, size: 32, offset: 384)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !604, file: !605, line: 41, baseType: !500, size: 32, offset: 416)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !604, file: !605, line: 42, baseType: !583, size: 64, offset: 448)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !604, file: !605, line: 43, baseType: !587, size: 128, offset: 512)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !604, file: !605, line: 44, baseType: !587, size: 128, offset: 640)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !604, file: !605, line: 45, baseType: !587, size: 128, offset: 768)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !604, file: !605, line: 46, baseType: !587, size: 128, offset: 896)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !604, file: !605, line: 47, baseType: !479, size: 64, offset: 1024)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !604, file: !605, line: 48, baseType: !479, size: 64, offset: 1088)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !510, file: !44, line: 1883, baseType: !627, size: 64, offset: 960)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!367, !442, !166, !382}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !510, file: !44, line: 1884, baseType: !631, size: 64, offset: 1024)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{!131, !486, !634, !479, !479}
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !510, file: !44, line: 1886, baseType: !637, size: 64, offset: 1088)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!131, !486, !640, !131}
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !510, file: !44, line: 1887, baseType: !642, size: 64, offset: 1152)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{!131, !486, !442, !412, !7, !377}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !510, file: !44, line: 1890, baseType: !557, size: 64, offset: 1216)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !510, file: !44, line: 1891, baseType: !647, size: 64, offset: 1280)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{!131, !486, !534, !131}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !487, file: !44, line: 623, baseType: !651, size: 64, offset: 192)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !653)
!653 = !{!654, !655, !656, !657, !658, !659, !706, !2473, !2555, !2638, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2654, !2658, !2659, !2662, !2663, !2666, !2667, !2668, !2709, !2735, !2736, !2737, !2738, !2739, !2740, !2743, !2745, !2752, !2753, !2755, !2756, !2757, !2816, !2817, !2832, !2833, !2834, !2835, !2836, !2839, !2840, !2841, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !652, file: !44, line: 1417, baseType: !283, size: 128)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !652, file: !44, line: 1418, baseType: !565, size: 32, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !652, file: !44, line: 1419, baseType: !130, size: 8, offset: 160)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !652, file: !44, line: 1420, baseType: !133, size: 64, offset: 192)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !652, file: !44, line: 1421, baseType: !583, size: 64, offset: 256)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !652, file: !44, line: 1422, baseType: !660, size: 64, offset: 320)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !662)
!662 = !{!663, !664, !665, !672, !676, !680, !684, !685, !686, !696, !699, !700, !701, !703, !704, !705}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !661, file: !44, line: 2229, baseType: !144, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !661, file: !44, line: 2230, baseType: !131, size: 32, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !661, file: !44, line: 2238, baseType: !666, size: 64, offset: 128)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{!131, !669}
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !671, line: 28, flags: DIFlagFwdDecl)
!671 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!672 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !661, file: !44, line: 2239, baseType: !673, size: 64, offset: 192)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !675)
!675 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !661, file: !44, line: 2240, baseType: !677, size: 64, offset: 256)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{!442, !660, !131, !144, !132}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !661, file: !44, line: 2242, baseType: !681, size: 64, offset: 320)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DISubroutineType(types: !683)
!683 = !{null, !651}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !661, file: !44, line: 2243, baseType: !148, size: 64, offset: 384)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !661, file: !44, line: 2244, baseType: !660, size: 64, offset: 448)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !661, file: !44, line: 2245, baseType: !687, size: 64, offset: 512)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !249, line: 182, size: 64, elements: !688)
!688 = !{!689}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !687, file: !249, line: 183, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !249, line: 186, size: 128, elements: !692)
!692 = !{!693, !694}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !691, file: !249, line: 187, baseType: !690, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !691, file: !249, line: 187, baseType: !695, size: 64, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !661, file: !44, line: 2247, baseType: !697, offset: 576)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !698, line: 187, elements: !310)
!698 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!699 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !661, file: !44, line: 2248, baseType: !697, offset: 576)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !661, file: !44, line: 2249, baseType: !697, offset: 576)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !661, file: !44, line: 2250, baseType: !702, offset: 576)
!702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !697, elements: !337)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !661, file: !44, line: 2252, baseType: !697, offset: 576)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !661, file: !44, line: 2253, baseType: !697, offset: 576)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !661, file: !44, line: 2254, baseType: !697, offset: 576)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !652, file: !44, line: 1423, baseType: !707, size: 64, offset: 384)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !709)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !710)
!710 = !{!711, !715, !719, !720, !724, !730, !734, !735, !736, !740, !744, !745, !746, !747, !753, !758, !759, !766, !767, !768, !769, !2457, !2472}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !709, file: !44, line: 1936, baseType: !712, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DISubroutineType(types: !714)
!714 = !{!486, !651}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !709, file: !44, line: 1937, baseType: !716, size: 64, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DISubroutineType(types: !718)
!718 = !{null, !486}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !709, file: !44, line: 1938, baseType: !716, size: 64, offset: 128)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !709, file: !44, line: 1940, baseType: !721, size: 64, offset: 192)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{null, !486, !131}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !709, file: !44, line: 1941, baseType: !725, size: 64, offset: 256)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{!131, !486, !728}
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !709, file: !44, line: 1942, baseType: !731, size: 64, offset: 320)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{!131, !486}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !709, file: !44, line: 1943, baseType: !716, size: 64, offset: 384)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !709, file: !44, line: 1944, baseType: !681, size: 64, offset: 448)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !709, file: !44, line: 1945, baseType: !737, size: 64, offset: 512)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{!131, !651, !131}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !709, file: !44, line: 1946, baseType: !741, size: 64, offset: 576)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!131, !651}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !709, file: !44, line: 1947, baseType: !741, size: 64, offset: 640)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !709, file: !44, line: 1948, baseType: !741, size: 64, offset: 704)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !709, file: !44, line: 1949, baseType: !741, size: 64, offset: 768)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !709, file: !44, line: 1950, baseType: !748, size: 64, offset: 832)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DISubroutineType(types: !750)
!750 = !{!131, !442, !751}
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !709, file: !44, line: 1951, baseType: !754, size: 64, offset: 896)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DISubroutineType(types: !756)
!756 = !{!131, !651, !757, !166}
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !709, file: !44, line: 1952, baseType: !681, size: 64, offset: 960)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !709, file: !44, line: 1954, baseType: !760, size: 64, offset: 1024)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DISubroutineType(types: !762)
!762 = !{!131, !763, !442}
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !765, line: 539, flags: DIFlagFwdDecl)
!765 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!766 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !709, file: !44, line: 1955, baseType: !760, size: 64, offset: 1088)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !709, file: !44, line: 1956, baseType: !760, size: 64, offset: 1152)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !709, file: !44, line: 1957, baseType: !760, size: 64, offset: 1216)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !709, file: !44, line: 1963, baseType: !770, size: 64, offset: 1280)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!131, !651, !773, !796}
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !775, line: 68, size: 512, align: 128, elements: !776)
!775 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!776 = !{!777, !778, !2449, !2456}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !774, file: !775, line: 69, baseType: !133, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, scope: !774, file: !775, line: 77, baseType: !779, size: 320, offset: 64)
!779 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !774, file: !775, line: 77, size: 320, elements: !780)
!780 = !{!781, !967, !972, !1000, !1008, !1014, !2380, !2448}
!781 = !DIDerivedType(tag: DW_TAG_member, scope: !779, file: !775, line: 78, baseType: !782, size: 320)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !779, file: !775, line: 78, size: 320, elements: !783)
!783 = !{!784, !785, !965, !966}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !782, file: !775, line: 84, baseType: !283, size: 128)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !782, file: !775, line: 86, baseType: !786, size: 64, offset: 128)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !788)
!788 = !{!789, !790, !798, !799, !804, !819, !835, !836, !837, !838, !958, !959, !962, !963, !964}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !787, file: !44, line: 452, baseType: !486, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !787, file: !44, line: 453, baseType: !791, size: 128, offset: 64)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !792, line: 292, size: 128, elements: !793)
!792 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!793 = !{!794, !795, !797}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !791, file: !792, line: 293, baseType: !296)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !791, file: !792, line: 295, baseType: !796, size: 32)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !249, line: 148, baseType: !7)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !791, file: !792, line: 296, baseType: !132, size: 64, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !787, file: !44, line: 454, baseType: !796, size: 32, offset: 192)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !787, file: !44, line: 455, baseType: !800, size: 32, offset: 224)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !249, line: 168, baseType: !801)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !249, line: 166, size: 32, elements: !802)
!802 = !{!803}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !801, file: !249, line: 167, baseType: !131, size: 32)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !787, file: !44, line: 460, baseType: !805, size: 128, offset: 256)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !806, line: 125, size: 128, elements: !807)
!806 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!807 = !{!808, !818}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !805, file: !806, line: 126, baseType: !809, size: 64)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !806, line: 31, size: 64, elements: !810)
!810 = !{!811}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !809, file: !806, line: 32, baseType: !812, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !806, line: 24, size: 192, align: 64, elements: !814)
!814 = !{!815, !816, !817}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !813, file: !806, line: 25, baseType: !133, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !813, file: !806, line: 26, baseType: !812, size: 64, offset: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !813, file: !806, line: 27, baseType: !812, size: 64, offset: 128)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !805, file: !806, line: 127, baseType: !812, size: 64, offset: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !787, file: !44, line: 461, baseType: !820, size: 256, offset: 384)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !821, line: 35, size: 256, elements: !822)
!821 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!822 = !{!823, !831, !832, !834}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !820, file: !821, line: 36, baseType: !824, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !825, line: 13, baseType: !826)
!825 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !249, line: 175, baseType: !827)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !249, line: 173, size: 64, elements: !828)
!828 = !{!829}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !827, file: !249, line: 174, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !174, line: 22, baseType: !592)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !820, file: !821, line: 42, baseType: !824, size: 64, offset: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !820, file: !821, line: 46, baseType: !833, offset: 128)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !297, line: 29, baseType: !304)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !820, file: !821, line: 47, baseType: !283, size: 128, offset: 128)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !787, file: !44, line: 462, baseType: !133, size: 64, offset: 640)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !787, file: !44, line: 463, baseType: !133, size: 64, offset: 704)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !787, file: !44, line: 464, baseType: !133, size: 64, offset: 768)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !787, file: !44, line: 465, baseType: !839, size: 64, offset: 832)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !841)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !842)
!842 = !{!843, !847, !851, !855, !859, !863, !869, !875, !879, !884, !888, !892, !896, !922, !926, !932, !933, !934, !938, !943, !947, !954}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !841, file: !44, line: 368, baseType: !844, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DISubroutineType(types: !846)
!846 = !{!131, !773, !728}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !841, file: !44, line: 369, baseType: !848, size: 64, offset: 64)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DISubroutineType(types: !850)
!850 = !{!131, !412, !773}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !841, file: !44, line: 372, baseType: !852, size: 64, offset: 128)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{!131, !786, !728}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !841, file: !44, line: 375, baseType: !856, size: 64, offset: 192)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DISubroutineType(types: !858)
!858 = !{!131, !773}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !841, file: !44, line: 381, baseType: !860, size: 64, offset: 256)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{!131, !412, !786, !286, !7}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !841, file: !44, line: 383, baseType: !864, size: 64, offset: 320)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DISubroutineType(types: !866)
!866 = !{null, !867}
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !841, file: !44, line: 385, baseType: !870, size: 64, offset: 384)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{!131, !412, !786, !583, !7, !7, !873, !874}
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !841, file: !44, line: 388, baseType: !876, size: 64, offset: 448)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DISubroutineType(types: !878)
!878 = !{!131, !412, !786, !583, !7, !7, !773, !132}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !841, file: !44, line: 393, baseType: !880, size: 64, offset: 512)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DISubroutineType(types: !882)
!882 = !{!883, !786, !883}
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !249, line: 125, baseType: !479)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !841, file: !44, line: 394, baseType: !885, size: 64, offset: 576)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DISubroutineType(types: !887)
!887 = !{null, !773, !7, !7}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !841, file: !44, line: 395, baseType: !889, size: 64, offset: 640)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DISubroutineType(types: !891)
!891 = !{!131, !773, !796}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !841, file: !44, line: 396, baseType: !893, size: 64, offset: 704)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DISubroutineType(types: !895)
!895 = !{null, !773}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !841, file: !44, line: 397, baseType: !897, size: 64, offset: 768)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DISubroutineType(types: !899)
!899 = !{!367, !900, !920}
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !902)
!902 = !{!903, !904, !905, !909, !910, !911, !912, !913}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !901, file: !44, line: 321, baseType: !412, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !901, file: !44, line: 326, baseType: !583, size: 64, offset: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !901, file: !44, line: 327, baseType: !906, size: 64, offset: 128)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DISubroutineType(types: !908)
!908 = !{null, !900, !371, !371}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !901, file: !44, line: 328, baseType: !132, size: 64, offset: 192)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !901, file: !44, line: 329, baseType: !131, size: 32, offset: 256)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !901, file: !44, line: 330, baseType: !173, size: 16, offset: 288)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !901, file: !44, line: 331, baseType: !173, size: 16, offset: 304)
!913 = !DIDerivedType(tag: DW_TAG_member, scope: !901, file: !44, line: 332, baseType: !914, size: 64, offset: 320)
!914 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !901, file: !44, line: 332, size: 64, elements: !915)
!915 = !{!916, !917}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !914, file: !44, line: 333, baseType: !7, size: 32)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !914, file: !44, line: 334, baseType: !918, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !841, file: !44, line: 402, baseType: !923, size: 64, offset: 832)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{!131, !786, !773, !773, !5}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !841, file: !44, line: 404, baseType: !927, size: 64, offset: 896)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DISubroutineType(types: !929)
!929 = !{!248, !773, !930}
!930 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !931, line: 305, baseType: !7)
!931 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!932 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !841, file: !44, line: 405, baseType: !893, size: 64, offset: 960)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !841, file: !44, line: 406, baseType: !856, size: 64, offset: 1024)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !841, file: !44, line: 407, baseType: !935, size: 64, offset: 1088)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DISubroutineType(types: !937)
!937 = !{!131, !773, !133, !133}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !841, file: !44, line: 409, baseType: !939, size: 64, offset: 1152)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DISubroutineType(types: !941)
!941 = !{null, !773, !942, !942}
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !841, file: !44, line: 410, baseType: !944, size: 64, offset: 1216)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DISubroutineType(types: !946)
!946 = !{!131, !786, !773}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !841, file: !44, line: 413, baseType: !948, size: 64, offset: 1280)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DISubroutineType(types: !950)
!950 = !{!131, !951, !412, !953}
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !841, file: !44, line: 415, baseType: !955, size: 64, offset: 1344)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DISubroutineType(types: !957)
!957 = !{null, !412}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !787, file: !44, line: 466, baseType: !133, size: 64, offset: 896)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !787, file: !44, line: 467, baseType: !960, size: 32, offset: 960)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !961, line: 8, baseType: !475)
!961 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!962 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !787, file: !44, line: 468, baseType: !296, offset: 992)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !787, file: !44, line: 469, baseType: !283, size: 128, offset: 1024)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !787, file: !44, line: 470, baseType: !132, size: 64, offset: 1152)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !782, file: !775, line: 87, baseType: !133, size: 64, offset: 192)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !782, file: !775, line: 94, baseType: !133, size: 64, offset: 256)
!967 = !DIDerivedType(tag: DW_TAG_member, scope: !779, file: !775, line: 96, baseType: !968, size: 64)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !779, file: !775, line: 96, size: 64, elements: !969)
!969 = !{!970}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !968, file: !775, line: 101, baseType: !971, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !249, line: 143, baseType: !479)
!972 = !DIDerivedType(tag: DW_TAG_member, scope: !779, file: !775, line: 103, baseType: !973, size: 320)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !779, file: !775, line: 103, size: 320, elements: !974)
!974 = !{!975, !985, !988, !989}
!975 = !DIDerivedType(tag: DW_TAG_member, scope: !973, file: !775, line: 104, baseType: !976, size: 128)
!976 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !973, file: !775, line: 104, size: 128, elements: !977)
!977 = !{!978, !979}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !976, file: !775, line: 105, baseType: !283, size: 128)
!979 = !DIDerivedType(tag: DW_TAG_member, scope: !976, file: !775, line: 106, baseType: !980, size: 128)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !976, file: !775, line: 106, size: 128, elements: !981)
!981 = !{!982, !983, !984}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !980, file: !775, line: 107, baseType: !773, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !980, file: !775, line: 109, baseType: !131, size: 32, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !980, file: !775, line: 110, baseType: !131, size: 32, offset: 96)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !973, file: !775, line: 117, baseType: !986, size: 64, offset: 128)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !775, line: 117, flags: DIFlagFwdDecl)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !973, file: !775, line: 119, baseType: !132, size: 64, offset: 192)
!989 = !DIDerivedType(tag: DW_TAG_member, scope: !973, file: !775, line: 120, baseType: !990, size: 64, offset: 256)
!990 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !973, file: !775, line: 120, size: 64, elements: !991)
!991 = !{!992, !993, !994}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !990, file: !775, line: 121, baseType: !132, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !990, file: !775, line: 122, baseType: !133, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, scope: !990, file: !775, line: 123, baseType: !995, size: 32)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !990, file: !775, line: 123, size: 32, elements: !996)
!996 = !{!997, !998, !999}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !995, file: !775, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !995, file: !775, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !995, file: !775, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1000 = !DIDerivedType(tag: DW_TAG_member, scope: !779, file: !775, line: 130, baseType: !1001, size: 192)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !779, file: !775, line: 130, size: 192, elements: !1002)
!1002 = !{!1003, !1004, !1005, !1006, !1007}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1001, file: !775, line: 131, baseType: !133, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1001, file: !775, line: 134, baseType: !130, size: 8, offset: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1001, file: !775, line: 135, baseType: !130, size: 8, offset: 72)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1001, file: !775, line: 136, baseType: !800, size: 32, offset: 96)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1001, file: !775, line: 137, baseType: !7, size: 32, offset: 128)
!1008 = !DIDerivedType(tag: DW_TAG_member, scope: !779, file: !775, line: 139, baseType: !1009, size: 256)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !779, file: !775, line: 139, size: 256, elements: !1010)
!1010 = !{!1011, !1012, !1013}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1009, file: !775, line: 140, baseType: !133, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1009, file: !775, line: 141, baseType: !800, size: 32, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1009, file: !775, line: 143, baseType: !283, size: 128, offset: 128)
!1014 = !DIDerivedType(tag: DW_TAG_member, scope: !779, file: !775, line: 145, baseType: !1015, size: 256)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !779, file: !775, line: 145, size: 256, elements: !1016)
!1016 = !{!1017, !1018, !1020, !1021, !2379}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1015, file: !775, line: 146, baseType: !133, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1015, file: !775, line: 147, baseType: !1019, size: 64, offset: 64)
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !765, line: 509, baseType: !773)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1015, file: !775, line: 148, baseType: !133, size: 64, offset: 128)
!1021 = !DIDerivedType(tag: DW_TAG_member, scope: !1015, file: !775, line: 149, baseType: !1022, size: 64, offset: 192)
!1022 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1015, file: !775, line: 149, size: 64, elements: !1023)
!1023 = !{!1024, !2378}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1022, file: !775, line: 150, baseType: !1025, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !775, line: 388, size: 7296, elements: !1027)
!1027 = !{!1028, !2374}
!1028 = !DIDerivedType(tag: DW_TAG_member, scope: !1026, file: !775, line: 389, baseType: !1029, size: 7296)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1026, file: !775, line: 389, size: 7296, elements: !1030)
!1030 = !{!1031, !1149, !1150, !1151, !1155, !1156, !1157, !1158, !1159, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1198, !1206, !1209, !1255, !1256, !2358, !2359, !2362, !2363, !2364, !2367, !2368, !2369, !2372, !2373}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1029, file: !775, line: 390, baseType: !1032, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !775, line: 305, size: 1472, elements: !1034)
!1034 = !{!1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1049, !1050, !1055, !1056, !1059, !1143, !1144, !1145, !1146, !1147}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1033, file: !775, line: 308, baseType: !133, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1033, file: !775, line: 309, baseType: !133, size: 64, offset: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1033, file: !775, line: 313, baseType: !1032, size: 64, offset: 128)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1033, file: !775, line: 313, baseType: !1032, size: 64, offset: 192)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1033, file: !775, line: 315, baseType: !813, size: 192, align: 64, offset: 256)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1033, file: !775, line: 323, baseType: !133, size: 64, offset: 448)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1033, file: !775, line: 327, baseType: !1025, size: 64, offset: 512)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1033, file: !775, line: 333, baseType: !1043, size: 64, offset: 576)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !765, line: 284, baseType: !1044)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !765, line: 284, size: 64, elements: !1045)
!1045 = !{!1046}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1044, file: !765, line: 284, baseType: !1047, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1048, line: 19, baseType: !133)
!1048 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1033, file: !775, line: 334, baseType: !133, size: 64, offset: 640)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1033, file: !775, line: 343, baseType: !1051, size: 256, offset: 704)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1033, file: !775, line: 340, size: 256, elements: !1052)
!1052 = !{!1053, !1054}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1051, file: !775, line: 341, baseType: !813, size: 192, align: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1051, file: !775, line: 342, baseType: !133, size: 64, offset: 192)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1033, file: !775, line: 351, baseType: !283, size: 128, offset: 960)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1033, file: !775, line: 353, baseType: !1057, size: 64, offset: 1088)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !775, line: 353, flags: DIFlagFwdDecl)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1033, file: !775, line: 356, baseType: !1060, size: 64, offset: 1152)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1062)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1063)
!1063 = !{!1064, !1068, !1069, !1073, !1077, !1117, !1121, !1125, !1129, !1130, !1131, !1135, !1139}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1062, file: !14, line: 558, baseType: !1065, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{null, !1032}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1062, file: !14, line: 559, baseType: !1065, size: 64, offset: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1062, file: !14, line: 560, baseType: !1070, size: 64, offset: 128)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!131, !1032, !133}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1062, file: !14, line: 561, baseType: !1074, size: 64, offset: 192)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!131, !1032}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1062, file: !14, line: 562, baseType: !1078, size: 64, offset: 256)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!1081, !1082}
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !775, line: 682, baseType: !7)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1084)
!1084 = !{!1085, !1086, !1087, !1088, !1089, !1090, !1097, !1104, !1110, !1111, !1112, !1114, !1116}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1083, file: !14, line: 509, baseType: !1032, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1083, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1083, file: !14, line: 511, baseType: !796, size: 32, offset: 96)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1083, file: !14, line: 512, baseType: !133, size: 64, offset: 128)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1083, file: !14, line: 513, baseType: !133, size: 64, offset: 192)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1083, file: !14, line: 514, baseType: !1091, size: 64, offset: 256)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !765, line: 385, baseType: !1093)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !765, line: 385, size: 64, elements: !1094)
!1094 = !{!1095}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1093, file: !765, line: 385, baseType: !1096, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1048, line: 15, baseType: !133)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1083, file: !14, line: 516, baseType: !1098, size: 64, offset: 320)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !765, line: 359, baseType: !1100)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !765, line: 359, size: 64, elements: !1101)
!1101 = !{!1102}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1100, file: !765, line: 359, baseType: !1103, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1048, line: 16, baseType: !133)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1083, file: !14, line: 519, baseType: !1105, size: 64, offset: 384)
!1105 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1048, line: 21, baseType: !1106)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1048, line: 21, size: 64, elements: !1107)
!1107 = !{!1108}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1106, file: !1048, line: 21, baseType: !1109, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1048, line: 14, baseType: !133)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1083, file: !14, line: 521, baseType: !773, size: 64, offset: 448)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1083, file: !14, line: 522, baseType: !773, size: 64, offset: 512)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1083, file: !14, line: 528, baseType: !1113, size: 64, offset: 576)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1083, file: !14, line: 532, baseType: !1115, size: 64, offset: 640)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1083, file: !14, line: 536, baseType: !1019, size: 64, offset: 704)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1062, file: !14, line: 563, baseType: !1118, size: 64, offset: 320)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!1081, !1082, !13}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1062, file: !14, line: 565, baseType: !1122, size: 64, offset: 384)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{null, !1082, !133, !133}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1062, file: !14, line: 567, baseType: !1126, size: 64, offset: 448)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!133, !1032}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1062, file: !14, line: 571, baseType: !1078, size: 64, offset: 512)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1062, file: !14, line: 574, baseType: !1078, size: 64, offset: 576)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1062, file: !14, line: 579, baseType: !1132, size: 64, offset: 640)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!131, !1032, !133, !132, !131, !131}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1062, file: !14, line: 585, baseType: !1136, size: 64, offset: 704)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!144, !1032}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1062, file: !14, line: 615, baseType: !1140, size: 64, offset: 768)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!773, !1032, !133}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1033, file: !775, line: 359, baseType: !133, size: 64, offset: 1216)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1033, file: !775, line: 361, baseType: !412, size: 64, offset: 1280)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1033, file: !775, line: 362, baseType: !132, size: 64, offset: 1344)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1033, file: !775, line: 365, baseType: !824, size: 64, offset: 1408)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1033, file: !775, line: 373, baseType: !1148, offset: 1472)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !775, line: 296, elements: !310)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1029, file: !775, line: 391, baseType: !809, size: 64, offset: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1029, file: !775, line: 392, baseType: !479, size: 64, offset: 128)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1029, file: !775, line: 394, baseType: !1152, size: 64, offset: 192)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!133, !412, !133, !133, !133, !133}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1029, file: !775, line: 398, baseType: !133, size: 64, offset: 256)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1029, file: !775, line: 399, baseType: !133, size: 64, offset: 320)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1029, file: !775, line: 405, baseType: !133, size: 64, offset: 384)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1029, file: !775, line: 406, baseType: !133, size: 64, offset: 448)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1029, file: !775, line: 407, baseType: !1160, size: 64, offset: 512)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !765, line: 286, baseType: !1162)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !765, line: 286, size: 64, elements: !1163)
!1163 = !{!1164}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1162, file: !765, line: 286, baseType: !1165, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1048, line: 18, baseType: !133)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1029, file: !775, line: 416, baseType: !800, size: 32, offset: 576)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1029, file: !775, line: 428, baseType: !800, size: 32, offset: 608)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1029, file: !775, line: 437, baseType: !800, size: 32, offset: 640)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1029, file: !775, line: 447, baseType: !800, size: 32, offset: 672)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1029, file: !775, line: 450, baseType: !824, size: 64, offset: 704)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1029, file: !775, line: 452, baseType: !131, size: 32, offset: 768)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1029, file: !775, line: 454, baseType: !296, offset: 800)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1029, file: !775, line: 457, baseType: !820, size: 256, offset: 832)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1029, file: !775, line: 459, baseType: !283, size: 128, offset: 1088)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1029, file: !775, line: 466, baseType: !133, size: 64, offset: 1216)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1029, file: !775, line: 467, baseType: !133, size: 64, offset: 1280)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1029, file: !775, line: 469, baseType: !133, size: 64, offset: 1344)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1029, file: !775, line: 470, baseType: !133, size: 64, offset: 1408)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1029, file: !775, line: 471, baseType: !826, size: 64, offset: 1472)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1029, file: !775, line: 472, baseType: !133, size: 64, offset: 1536)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1029, file: !775, line: 473, baseType: !133, size: 64, offset: 1600)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1029, file: !775, line: 474, baseType: !133, size: 64, offset: 1664)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1029, file: !775, line: 475, baseType: !133, size: 64, offset: 1728)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1029, file: !775, line: 477, baseType: !296, offset: 1792)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1029, file: !775, line: 478, baseType: !133, size: 64, offset: 1792)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1029, file: !775, line: 478, baseType: !133, size: 64, offset: 1856)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1029, file: !775, line: 478, baseType: !133, size: 64, offset: 1920)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1029, file: !775, line: 478, baseType: !133, size: 64, offset: 1984)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1029, file: !775, line: 479, baseType: !133, size: 64, offset: 2048)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1029, file: !775, line: 479, baseType: !133, size: 64, offset: 2112)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1029, file: !775, line: 479, baseType: !133, size: 64, offset: 2176)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1029, file: !775, line: 480, baseType: !133, size: 64, offset: 2240)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1029, file: !775, line: 480, baseType: !133, size: 64, offset: 2304)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1029, file: !775, line: 480, baseType: !133, size: 64, offset: 2368)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1029, file: !775, line: 480, baseType: !133, size: 64, offset: 2432)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1029, file: !775, line: 482, baseType: !1197, size: 2816, offset: 2496)
!1197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 2816, elements: !210)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1029, file: !775, line: 488, baseType: !1199, size: 256, offset: 5312)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1200, line: 60, size: 256, elements: !1201)
!1200 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1201 = !{!1202}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1199, file: !1200, line: 61, baseType: !1203, size: 256)
!1203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !824, size: 256, elements: !1204)
!1204 = !{!1205}
!1205 = !DISubrange(count: 4)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1029, file: !775, line: 490, baseType: !1207, size: 64, offset: 5568)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !775, line: 490, flags: DIFlagFwdDecl)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1029, file: !775, line: 493, baseType: !1210, size: 896, offset: 5632)
!1210 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1211, line: 53, baseType: !1212)
!1211 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1211, line: 13, size: 896, elements: !1213)
!1213 = !{!1214, !1215, !1216, !1217, !1220, !1221, !1228, !1229, !1249, !1250, !1251}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1212, file: !1211, line: 18, baseType: !479, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1212, file: !1211, line: 28, baseType: !826, size: 64, offset: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1212, file: !1211, line: 31, baseType: !820, size: 256, offset: 128)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1212, file: !1211, line: 32, baseType: !1218, size: 64, offset: 384)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1211, line: 32, flags: DIFlagFwdDecl)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1212, file: !1211, line: 37, baseType: !177, size: 16, offset: 448)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1212, file: !1211, line: 40, baseType: !1222, size: 192, offset: 512)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1223, line: 53, size: 192, elements: !1224)
!1223 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1224 = !{!1225, !1226, !1227}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1222, file: !1223, line: 54, baseType: !824, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1222, file: !1223, line: 55, baseType: !296, offset: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1222, file: !1223, line: 59, baseType: !283, size: 128, offset: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1212, file: !1211, line: 41, baseType: !132, size: 64, offset: 704)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1212, file: !1211, line: 42, baseType: !1230, size: 64, offset: 768)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1232)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1233, line: 13, size: 896, elements: !1234)
!1233 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1234 = !{!1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1232, file: !1233, line: 14, baseType: !132, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1232, file: !1233, line: 15, baseType: !133, size: 64, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1232, file: !1233, line: 17, baseType: !133, size: 64, offset: 128)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1232, file: !1233, line: 17, baseType: !133, size: 64, offset: 192)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1232, file: !1233, line: 19, baseType: !371, size: 64, offset: 256)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1232, file: !1233, line: 21, baseType: !371, size: 64, offset: 320)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1232, file: !1233, line: 22, baseType: !371, size: 64, offset: 384)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1232, file: !1233, line: 23, baseType: !371, size: 64, offset: 448)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1232, file: !1233, line: 24, baseType: !371, size: 64, offset: 512)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1232, file: !1233, line: 25, baseType: !371, size: 64, offset: 576)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1232, file: !1233, line: 26, baseType: !371, size: 64, offset: 640)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1232, file: !1233, line: 27, baseType: !371, size: 64, offset: 704)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1232, file: !1233, line: 28, baseType: !371, size: 64, offset: 768)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1232, file: !1233, line: 29, baseType: !371, size: 64, offset: 832)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1212, file: !1211, line: 44, baseType: !800, size: 32, offset: 832)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1212, file: !1211, line: 50, baseType: !173, size: 16, offset: 864)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1212, file: !1211, line: 51, baseType: !1252, size: 16, offset: 880)
!1252 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !174, line: 18, baseType: !1253)
!1253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !176, line: 23, baseType: !1254)
!1254 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1029, file: !775, line: 495, baseType: !133, size: 64, offset: 6528)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1029, file: !775, line: 497, baseType: !1257, size: 64, offset: 6592)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !775, line: 381, size: 384, elements: !1259)
!1259 = !{!1260, !1261, !2357}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1258, file: !775, line: 382, baseType: !800, size: 32)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1258, file: !775, line: 383, baseType: !1262, size: 128, offset: 64)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !775, line: 376, size: 128, elements: !1263)
!1263 = !{!1264, !2355}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1262, file: !775, line: 377, baseType: !1265, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1267, line: 640, size: 48640, elements: !1268)
!1267 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1268 = !{!1269, !1275, !1277, !1278, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1295, !1313, !1324, !1407, !1408, !1409, !1420, !1421, !1423, !1424, !1425, !1426, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1505, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1543, !1545, !1546, !1547, !1559, !1560, !1561, !1562, !1563, !1564, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1588, !1593, !1777, !1778, !1779, !1780, !1784, !1787, !1790, !1793, !1796, !1800, !1901, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1945, !1946, !1947, !1948, !1949, !1954, !1955, !1956, !1959, !1960, !1963, !1966, !1969, !1972, !2015, !2018, !2019, !2098, !2099, !2102, !2103, !2106, !2107, !2108, !2112, !2113, !2114, !2127, !2128, !2129, !2139, !2144, !2147, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1266, file: !1267, line: 646, baseType: !1270, size: 128)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1271, line: 56, size: 128, elements: !1272)
!1271 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1272 = !{!1273, !1274}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1270, file: !1271, line: 57, baseType: !133, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1270, file: !1271, line: 58, baseType: !475, size: 32, offset: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1266, file: !1267, line: 649, baseType: !1276, size: 64, offset: 128)
!1276 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !371)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1266, file: !1267, line: 657, baseType: !132, size: 64, offset: 192)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1266, file: !1267, line: 658, baseType: !1279, size: 32, offset: 256)
!1279 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1280, line: 113, baseType: !1281)
!1280 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1280, line: 111, size: 32, elements: !1282)
!1282 = !{!1283}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1281, file: !1280, line: 112, baseType: !800, size: 32)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1266, file: !1267, line: 660, baseType: !7, size: 32, offset: 288)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1266, file: !1267, line: 661, baseType: !7, size: 32, offset: 320)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1266, file: !1267, line: 684, baseType: !131, size: 32, offset: 352)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1266, file: !1267, line: 686, baseType: !131, size: 32, offset: 384)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1266, file: !1267, line: 687, baseType: !131, size: 32, offset: 416)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1266, file: !1267, line: 688, baseType: !131, size: 32, offset: 448)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1266, file: !1267, line: 689, baseType: !7, size: 32, offset: 480)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1266, file: !1267, line: 691, baseType: !1292, size: 64, offset: 512)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1294)
!1294 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1267, line: 691, flags: DIFlagFwdDecl)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1266, file: !1267, line: 692, baseType: !1296, size: 832, offset: 576)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1267, line: 451, size: 832, elements: !1297)
!1297 = !{!1298, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1296, file: !1267, line: 453, baseType: !1299, size: 128)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1267, line: 325, size: 128, elements: !1300)
!1300 = !{!1301, !1302}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1299, file: !1267, line: 326, baseType: !133, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1299, file: !1267, line: 327, baseType: !475, size: 32, offset: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1296, file: !1267, line: 454, baseType: !813, size: 192, align: 64, offset: 128)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1296, file: !1267, line: 455, baseType: !283, size: 128, offset: 320)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1296, file: !1267, line: 456, baseType: !7, size: 32, offset: 448)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1296, file: !1267, line: 458, baseType: !479, size: 64, offset: 512)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1296, file: !1267, line: 459, baseType: !479, size: 64, offset: 576)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1296, file: !1267, line: 460, baseType: !479, size: 64, offset: 640)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1296, file: !1267, line: 461, baseType: !479, size: 64, offset: 704)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1296, file: !1267, line: 463, baseType: !479, size: 64, offset: 768)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1296, file: !1267, line: 465, baseType: !1312, offset: 832)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1267, line: 415, elements: !310)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1266, file: !1267, line: 693, baseType: !1314, size: 384, offset: 1408)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1267, line: 489, size: 384, elements: !1315)
!1315 = !{!1316, !1317, !1318, !1319, !1320, !1321, !1322}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1314, file: !1267, line: 490, baseType: !283, size: 128)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1314, file: !1267, line: 491, baseType: !133, size: 64, offset: 128)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1314, file: !1267, line: 492, baseType: !133, size: 64, offset: 192)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1314, file: !1267, line: 493, baseType: !7, size: 32, offset: 256)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1314, file: !1267, line: 494, baseType: !177, size: 16, offset: 288)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1314, file: !1267, line: 495, baseType: !177, size: 16, offset: 304)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1314, file: !1267, line: 497, baseType: !1323, size: 64, offset: 320)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1266, file: !1267, line: 697, baseType: !1325, size: 1792, offset: 1792)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1267, line: 507, size: 1792, elements: !1326)
!1326 = !{!1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1404, !1405}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1325, file: !1267, line: 508, baseType: !813, size: 192, align: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1325, file: !1267, line: 515, baseType: !479, size: 64, offset: 192)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1325, file: !1267, line: 516, baseType: !479, size: 64, offset: 256)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1325, file: !1267, line: 517, baseType: !479, size: 64, offset: 320)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1325, file: !1267, line: 518, baseType: !479, size: 64, offset: 384)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1325, file: !1267, line: 519, baseType: !479, size: 64, offset: 448)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1325, file: !1267, line: 526, baseType: !830, size: 64, offset: 512)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1325, file: !1267, line: 527, baseType: !479, size: 64, offset: 576)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1325, file: !1267, line: 528, baseType: !7, size: 32, offset: 640)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1325, file: !1267, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1325, file: !1267, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1325, file: !1267, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1325, file: !1267, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1325, file: !1267, line: 563, baseType: !1341, size: 512, offset: 704)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1342)
!1342 = !{!1343, !1351, !1352, !1357, !1400, !1401, !1402, !1403}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1341, file: !20, line: 119, baseType: !1344, size: 256)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1345, line: 9, size: 256, elements: !1346)
!1345 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1346 = !{!1347, !1348}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1344, file: !1345, line: 10, baseType: !813, size: 192, align: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1344, file: !1345, line: 11, baseType: !1349, size: 64, offset: 192)
!1349 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1350, line: 29, baseType: !830)
!1350 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1341, file: !20, line: 120, baseType: !1349, size: 64, offset: 256)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1341, file: !20, line: 121, baseType: !1353, size: 64, offset: 320)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!19, !1356}
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1341, file: !20, line: 122, baseType: !1358, size: 64, offset: 384)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1360)
!1360 = !{!1361, !1381, !1382, !1385, !1390, !1391, !1395, !1399}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1359, file: !20, line: 160, baseType: !1362, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1364)
!1364 = !{!1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1363, file: !20, line: 215, baseType: !833)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1363, file: !20, line: 216, baseType: !7, size: 32)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1363, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1363, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1363, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1363, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1363, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1363, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1363, file: !20, line: 233, baseType: !1349, size: 64, offset: 128)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1363, file: !20, line: 234, baseType: !1356, size: 64, offset: 192)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1363, file: !20, line: 235, baseType: !1349, size: 64, offset: 256)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1363, file: !20, line: 236, baseType: !1356, size: 64, offset: 320)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1363, file: !20, line: 237, baseType: !1378, size: 4096, offset: 512)
!1378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1359, size: 4096, elements: !1379)
!1379 = !{!1380}
!1380 = !DISubrange(count: 8)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1359, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1359, file: !20, line: 162, baseType: !1383, size: 32, offset: 96)
!1383 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !249, line: 27, baseType: !1384)
!1384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !369, line: 96, baseType: !131)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1359, file: !20, line: 163, baseType: !1386, size: 32, offset: 128)
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !448, line: 276, baseType: !1387)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !448, line: 276, size: 32, elements: !1388)
!1388 = !{!1389}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1387, file: !448, line: 276, baseType: !452, size: 32)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1359, file: !20, line: 164, baseType: !1356, size: 64, offset: 192)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1359, file: !20, line: 165, baseType: !1392, size: 128, offset: 256)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1345, line: 14, size: 128, elements: !1393)
!1393 = !{!1394}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1392, file: !1345, line: 15, baseType: !805, size: 128)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1359, file: !20, line: 166, baseType: !1396, size: 64, offset: 384)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{!1349}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1359, file: !20, line: 167, baseType: !1349, size: 64, offset: 448)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1341, file: !20, line: 123, baseType: !183, size: 8, offset: 448)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1341, file: !20, line: 124, baseType: !183, size: 8, offset: 456)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1341, file: !20, line: 125, baseType: !183, size: 8, offset: 464)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1341, file: !20, line: 126, baseType: !183, size: 8, offset: 472)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1325, file: !1267, line: 572, baseType: !1341, size: 512, offset: 1216)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1325, file: !1267, line: 580, baseType: !1406, size: 64, offset: 1728)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1266, file: !1267, line: 721, baseType: !7, size: 32, offset: 3584)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1266, file: !1267, line: 722, baseType: !131, size: 32, offset: 3616)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1266, file: !1267, line: 723, baseType: !1410, size: 64, offset: 3648)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1412)
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1413, line: 17, baseType: !1414)
!1413 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1413, line: 17, size: 64, elements: !1415)
!1415 = !{!1416}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1414, file: !1413, line: 17, baseType: !1417, size: 64)
!1417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 64, elements: !1418)
!1418 = !{!1419}
!1419 = !DISubrange(count: 1)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1266, file: !1267, line: 724, baseType: !1412, size: 64, offset: 3712)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1266, file: !1267, line: 749, baseType: !1422, offset: 3776)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1267, line: 290, elements: !310)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1266, file: !1267, line: 751, baseType: !283, size: 128, offset: 3776)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1266, file: !1267, line: 757, baseType: !1025, size: 64, offset: 3904)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1266, file: !1267, line: 758, baseType: !1025, size: 64, offset: 3968)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1266, file: !1267, line: 761, baseType: !1427, size: 320, offset: 4032)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1200, line: 34, size: 320, elements: !1428)
!1428 = !{!1429, !1430}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1427, file: !1200, line: 35, baseType: !479, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1427, file: !1200, line: 36, baseType: !1431, size: 256, offset: 64)
!1431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1032, size: 256, elements: !1204)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1266, file: !1267, line: 766, baseType: !131, size: 32, offset: 4352)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1266, file: !1267, line: 767, baseType: !131, size: 32, offset: 4384)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1266, file: !1267, line: 768, baseType: !131, size: 32, offset: 4416)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1266, file: !1267, line: 770, baseType: !131, size: 32, offset: 4448)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1266, file: !1267, line: 772, baseType: !133, size: 64, offset: 4480)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1266, file: !1267, line: 775, baseType: !7, size: 32, offset: 4544)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1266, file: !1267, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1266, file: !1267, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1266, file: !1267, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1266, file: !1267, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1266, file: !1267, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1266, file: !1267, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1266, file: !1267, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1266, file: !1267, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1266, file: !1267, line: 831, baseType: !133, size: 64, offset: 4672)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1266, file: !1267, line: 833, baseType: !1448, size: 384, offset: 4736)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1449)
!1449 = !{!1450, !1455}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1448, file: !25, line: 26, baseType: !1451, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!371, !1454}
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, scope: !1448, file: !25, line: 27, baseType: !1456, size: 320, offset: 64)
!1456 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1448, file: !25, line: 27, size: 320, elements: !1457)
!1457 = !{!1458, !1468, !1495}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1456, file: !25, line: 36, baseType: !1459, size: 320)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1456, file: !25, line: 29, size: 320, elements: !1460)
!1460 = !{!1461, !1463, !1464, !1465, !1466, !1467}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1459, file: !25, line: 30, baseType: !1462, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1459, file: !25, line: 31, baseType: !475, size: 32, offset: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1459, file: !25, line: 32, baseType: !475, size: 32, offset: 96)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1459, file: !25, line: 33, baseType: !475, size: 32, offset: 128)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1459, file: !25, line: 34, baseType: !479, size: 64, offset: 192)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1459, file: !25, line: 35, baseType: !1462, size: 64, offset: 256)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1456, file: !25, line: 46, baseType: !1469, size: 192)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1456, file: !25, line: 38, size: 192, elements: !1470)
!1470 = !{!1471, !1472, !1473, !1494}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1469, file: !25, line: 39, baseType: !1383, size: 32)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1469, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1473 = !DIDerivedType(tag: DW_TAG_member, scope: !1469, file: !25, line: 41, baseType: !1474, size: 64, offset: 64)
!1474 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1469, file: !25, line: 41, size: 64, elements: !1475)
!1475 = !{!1476, !1484}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1474, file: !25, line: 42, baseType: !1477, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1479, line: 7, size: 128, elements: !1480)
!1479 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1480 = !{!1481, !1483}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1478, file: !1479, line: 8, baseType: !1482, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !369, line: 93, baseType: !585)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1478, file: !1479, line: 9, baseType: !585, size: 64, offset: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1474, file: !25, line: 43, baseType: !1485, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1487, line: 7, size: 64, elements: !1488)
!1487 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1488 = !{!1489, !1493}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1486, file: !1487, line: 8, baseType: !1490, size: 32)
!1490 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1487, line: 5, baseType: !1491)
!1491 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !174, line: 20, baseType: !1492)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !176, line: 26, baseType: !131)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1486, file: !1487, line: 9, baseType: !1491, size: 32, offset: 32)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1469, file: !25, line: 45, baseType: !479, size: 64, offset: 128)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1456, file: !25, line: 54, baseType: !1496, size: 256)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1456, file: !25, line: 48, size: 256, elements: !1497)
!1497 = !{!1498, !1501, !1502, !1503, !1504}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1496, file: !25, line: 49, baseType: !1499, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1496, file: !25, line: 50, baseType: !131, size: 32, offset: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1496, file: !25, line: 51, baseType: !131, size: 32, offset: 96)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1496, file: !25, line: 52, baseType: !133, size: 64, offset: 128)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1496, file: !25, line: 53, baseType: !133, size: 64, offset: 192)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1266, file: !1267, line: 835, baseType: !1506, size: 32, offset: 5120)
!1506 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !249, line: 22, baseType: !1507)
!1507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !369, line: 28, baseType: !131)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1266, file: !1267, line: 836, baseType: !1506, size: 32, offset: 5152)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1266, file: !1267, line: 840, baseType: !133, size: 64, offset: 5184)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1266, file: !1267, line: 849, baseType: !1265, size: 64, offset: 5248)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1266, file: !1267, line: 852, baseType: !1265, size: 64, offset: 5312)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1266, file: !1267, line: 857, baseType: !283, size: 128, offset: 5376)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1266, file: !1267, line: 858, baseType: !283, size: 128, offset: 5504)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1266, file: !1267, line: 859, baseType: !1265, size: 64, offset: 5632)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1266, file: !1267, line: 867, baseType: !283, size: 128, offset: 5696)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1266, file: !1267, line: 868, baseType: !283, size: 128, offset: 5824)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1266, file: !1267, line: 871, baseType: !1518, size: 64, offset: 5952)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1520)
!1520 = !{!1521, !1522, !1523, !1524, !1526, !1527, !1534, !1535}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1519, file: !53, line: 61, baseType: !1279, size: 32)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1519, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1519, file: !53, line: 63, baseType: !296, offset: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1519, file: !53, line: 65, baseType: !1525, size: 256, offset: 64)
!1525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !687, size: 256, elements: !1204)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1519, file: !53, line: 66, baseType: !687, size: 64, offset: 320)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1519, file: !53, line: 68, baseType: !1528, size: 128, offset: 384)
!1528 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1529, line: 40, baseType: !1530)
!1529 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1529, line: 36, size: 128, elements: !1531)
!1531 = !{!1532, !1533}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1530, file: !1529, line: 37, baseType: !296)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1530, file: !1529, line: 38, baseType: !283, size: 128)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1519, file: !53, line: 69, baseType: !425, size: 128, align: 64, offset: 512)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1519, file: !53, line: 70, baseType: !1536, size: 128, offset: 640)
!1536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1537, size: 128, elements: !1418)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1538)
!1538 = !{!1539, !1540}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1537, file: !53, line: 55, baseType: !131, size: 32)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1537, file: !53, line: 56, baseType: !1541, size: 64, offset: 64)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1266, file: !1267, line: 872, baseType: !1544, size: 512, offset: 6016)
!1544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !691, size: 512, elements: !1204)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1266, file: !1267, line: 873, baseType: !283, size: 128, offset: 6528)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1266, file: !1267, line: 874, baseType: !283, size: 128, offset: 6656)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1266, file: !1267, line: 876, baseType: !1548, size: 64, offset: 6784)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1550, line: 26, size: 192, elements: !1551)
!1550 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1551 = !{!1552, !1553}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1549, file: !1550, line: 27, baseType: !7, size: 32)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1549, file: !1550, line: 28, baseType: !1554, size: 128, offset: 64)
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1555, line: 43, size: 128, elements: !1556)
!1555 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1556 = !{!1557, !1558}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1554, file: !1555, line: 44, baseType: !833)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1554, file: !1555, line: 45, baseType: !283, size: 128)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1266, file: !1267, line: 879, baseType: !757, size: 64, offset: 6848)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1266, file: !1267, line: 882, baseType: !757, size: 64, offset: 6912)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1266, file: !1267, line: 884, baseType: !479, size: 64, offset: 6976)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1266, file: !1267, line: 885, baseType: !479, size: 64, offset: 7040)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1266, file: !1267, line: 890, baseType: !479, size: 64, offset: 7104)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1266, file: !1267, line: 891, baseType: !1565, size: 128, offset: 7168)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1267, line: 242, size: 128, elements: !1566)
!1566 = !{!1567, !1568, !1569}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1565, file: !1267, line: 244, baseType: !479, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1565, file: !1267, line: 245, baseType: !479, size: 64, offset: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1565, file: !1267, line: 246, baseType: !833, offset: 128)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1266, file: !1267, line: 900, baseType: !133, size: 64, offset: 7296)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1266, file: !1267, line: 901, baseType: !133, size: 64, offset: 7360)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1266, file: !1267, line: 904, baseType: !479, size: 64, offset: 7424)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1266, file: !1267, line: 907, baseType: !479, size: 64, offset: 7488)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1266, file: !1267, line: 910, baseType: !133, size: 64, offset: 7552)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1266, file: !1267, line: 911, baseType: !133, size: 64, offset: 7616)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1266, file: !1267, line: 914, baseType: !1577, size: 640, offset: 7680)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1578, line: 123, size: 640, elements: !1579)
!1578 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1579 = !{!1580, !1586, !1587}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1577, file: !1578, line: 124, baseType: !1581, size: 576)
!1581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1582, size: 576, elements: !337)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1578, line: 108, size: 192, elements: !1583)
!1583 = !{!1584, !1585}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1582, file: !1578, line: 109, baseType: !479, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1582, file: !1578, line: 110, baseType: !1392, size: 128, offset: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1577, file: !1578, line: 125, baseType: !7, size: 32, offset: 576)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1577, file: !1578, line: 126, baseType: !7, size: 32, offset: 608)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1266, file: !1267, line: 917, baseType: !1589, size: 192, offset: 8320)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1578, line: 134, size: 192, elements: !1590)
!1590 = !{!1591, !1592}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1589, file: !1578, line: 135, baseType: !425, size: 128, align: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1589, file: !1578, line: 136, baseType: !7, size: 32, offset: 128)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1266, file: !1267, line: 923, baseType: !1594, size: 64, offset: 8512)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1596)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1597, line: 111, size: 1280, elements: !1598)
!1597 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1598 = !{!1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1618, !1619, !1620, !1621, !1622, !1623, !1730, !1731, !1732, !1733, !1759, !1762, !1772}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1596, file: !1597, line: 112, baseType: !800, size: 32)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1596, file: !1597, line: 120, baseType: !492, size: 32, offset: 32)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1596, file: !1597, line: 121, baseType: !500, size: 32, offset: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1596, file: !1597, line: 122, baseType: !492, size: 32, offset: 96)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1596, file: !1597, line: 123, baseType: !500, size: 32, offset: 128)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1596, file: !1597, line: 124, baseType: !492, size: 32, offset: 160)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1596, file: !1597, line: 125, baseType: !500, size: 32, offset: 192)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1596, file: !1597, line: 126, baseType: !492, size: 32, offset: 224)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1596, file: !1597, line: 127, baseType: !500, size: 32, offset: 256)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1596, file: !1597, line: 128, baseType: !7, size: 32, offset: 288)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1596, file: !1597, line: 129, baseType: !1610, size: 64, offset: 320)
!1610 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1611, line: 26, baseType: !1612)
!1611 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1611, line: 24, size: 64, elements: !1613)
!1613 = !{!1614}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1612, file: !1611, line: 25, baseType: !1615, size: 64)
!1615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, size: 64, elements: !1616)
!1616 = !{!1617}
!1617 = !DISubrange(count: 2)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1596, file: !1597, line: 130, baseType: !1610, size: 64, offset: 384)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1596, file: !1597, line: 131, baseType: !1610, size: 64, offset: 448)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1596, file: !1597, line: 132, baseType: !1610, size: 64, offset: 512)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1596, file: !1597, line: 133, baseType: !1610, size: 64, offset: 576)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1596, file: !1597, line: 135, baseType: !130, size: 8, offset: 640)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1596, file: !1597, line: 137, baseType: !1624, size: 64, offset: 704)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1626, line: 189, size: 1664, elements: !1627)
!1626 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1627 = !{!1628, !1629, !1632, !1637, !1638, !1641, !1642, !1647, !1648, !1649, !1650, !1652, !1653, !1654, !1655, !1656, !1694, !1715}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1625, file: !1626, line: 190, baseType: !1279, size: 32)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1625, file: !1626, line: 191, baseType: !1630, size: 32, offset: 32)
!1630 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1626, line: 28, baseType: !1631)
!1631 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !249, line: 98, baseType: !1491)
!1632 = !DIDerivedType(tag: DW_TAG_member, scope: !1625, file: !1626, line: 192, baseType: !1633, size: 192, offset: 64)
!1633 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1625, file: !1626, line: 192, size: 192, elements: !1634)
!1634 = !{!1635, !1636}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1633, file: !1626, line: 193, baseType: !283, size: 128)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1633, file: !1626, line: 194, baseType: !813, size: 192, align: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1625, file: !1626, line: 199, baseType: !820, size: 256, offset: 256)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1625, file: !1626, line: 200, baseType: !1639, size: 64, offset: 512)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1626, line: 200, flags: DIFlagFwdDecl)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1625, file: !1626, line: 201, baseType: !132, size: 64, offset: 576)
!1642 = !DIDerivedType(tag: DW_TAG_member, scope: !1625, file: !1626, line: 202, baseType: !1643, size: 64, offset: 640)
!1643 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1625, file: !1626, line: 202, size: 64, elements: !1644)
!1644 = !{!1645, !1646}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1643, file: !1626, line: 203, baseType: !591, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1643, file: !1626, line: 204, baseType: !591, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1625, file: !1626, line: 206, baseType: !591, size: 64, offset: 704)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1625, file: !1626, line: 207, baseType: !492, size: 32, offset: 768)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1625, file: !1626, line: 208, baseType: !500, size: 32, offset: 800)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1625, file: !1626, line: 209, baseType: !1651, size: 32, offset: 832)
!1651 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1626, line: 31, baseType: !611)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1625, file: !1626, line: 210, baseType: !177, size: 16, offset: 864)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1625, file: !1626, line: 211, baseType: !177, size: 16, offset: 880)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1625, file: !1626, line: 215, baseType: !1254, size: 16, offset: 896)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1625, file: !1626, line: 222, baseType: !133, size: 64, offset: 960)
!1656 = !DIDerivedType(tag: DW_TAG_member, scope: !1625, file: !1626, line: 239, baseType: !1657, size: 320, offset: 1024)
!1657 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1625, file: !1626, line: 239, size: 320, elements: !1658)
!1658 = !{!1659, !1686}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1657, file: !1626, line: 240, baseType: !1660, size: 320)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1626, line: 108, size: 320, elements: !1661)
!1661 = !{!1662, !1663, !1675, !1678, !1685}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1660, file: !1626, line: 110, baseType: !133, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, scope: !1660, file: !1626, line: 111, baseType: !1664, size: 64, offset: 64)
!1664 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1660, file: !1626, line: 111, size: 64, elements: !1665)
!1665 = !{!1666, !1674}
!1666 = !DIDerivedType(tag: DW_TAG_member, scope: !1664, file: !1626, line: 112, baseType: !1667, size: 64)
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1664, file: !1626, line: 112, size: 64, elements: !1668)
!1668 = !{!1669, !1670}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1667, file: !1626, line: 114, baseType: !173, size: 16)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1667, file: !1626, line: 115, baseType: !1671, size: 48, offset: 16)
!1671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 48, elements: !1672)
!1672 = !{!1673}
!1673 = !DISubrange(count: 6)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1664, file: !1626, line: 121, baseType: !133, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1660, file: !1626, line: 123, baseType: !1676, size: 64, offset: 128)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1626, line: 96, flags: DIFlagFwdDecl)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1660, file: !1626, line: 124, baseType: !1679, size: 64, offset: 192)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1626, line: 102, size: 192, elements: !1681)
!1681 = !{!1682, !1683, !1684}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1680, file: !1626, line: 103, baseType: !425, size: 128, align: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1680, file: !1626, line: 104, baseType: !1279, size: 32, offset: 128)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1680, file: !1626, line: 105, baseType: !248, size: 8, offset: 160)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1660, file: !1626, line: 125, baseType: !144, size: 64, offset: 256)
!1686 = !DIDerivedType(tag: DW_TAG_member, scope: !1657, file: !1626, line: 241, baseType: !1687, size: 320)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1657, file: !1626, line: 241, size: 320, elements: !1688)
!1688 = !{!1689, !1690, !1691, !1692, !1693}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1687, file: !1626, line: 242, baseType: !133, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1687, file: !1626, line: 243, baseType: !133, size: 64, offset: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1687, file: !1626, line: 244, baseType: !1676, size: 64, offset: 128)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1687, file: !1626, line: 245, baseType: !1679, size: 64, offset: 192)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1687, file: !1626, line: 246, baseType: !166, size: 64, offset: 256)
!1694 = !DIDerivedType(tag: DW_TAG_member, scope: !1625, file: !1626, line: 254, baseType: !1695, size: 256, offset: 1344)
!1695 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1625, file: !1626, line: 254, size: 256, elements: !1696)
!1696 = !{!1697, !1703}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1695, file: !1626, line: 255, baseType: !1698, size: 256)
!1698 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1626, line: 128, size: 256, elements: !1699)
!1699 = !{!1700, !1701}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1698, file: !1626, line: 129, baseType: !132, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1698, file: !1626, line: 130, baseType: !1702, size: 256)
!1702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 256, elements: !1204)
!1703 = !DIDerivedType(tag: DW_TAG_member, scope: !1695, file: !1626, line: 256, baseType: !1704, size: 256)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1695, file: !1626, line: 256, size: 256, elements: !1705)
!1705 = !{!1706, !1707}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1704, file: !1626, line: 258, baseType: !283, size: 128)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1704, file: !1626, line: 259, baseType: !1708, size: 128, offset: 128)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1709, line: 22, size: 128, elements: !1710)
!1709 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1710 = !{!1711, !1714}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1708, file: !1709, line: 23, baseType: !1712, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1709, line: 23, flags: DIFlagFwdDecl)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1708, file: !1709, line: 24, baseType: !133, size: 64, offset: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1625, file: !1626, line: 274, baseType: !1716, size: 64, offset: 1600)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1626, line: 170, size: 192, elements: !1718)
!1718 = !{!1719, !1728, !1729}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1717, file: !1626, line: 171, baseType: !1720, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1626, line: 165, baseType: !1721)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!131, !1624, !1724, !1726, !1624}
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1677)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1698)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1717, file: !1626, line: 172, baseType: !1624, size: 64, offset: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1717, file: !1626, line: 173, baseType: !1676, size: 64, offset: 128)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1596, file: !1597, line: 138, baseType: !1624, size: 64, offset: 768)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1596, file: !1597, line: 139, baseType: !1624, size: 64, offset: 832)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1596, file: !1597, line: 140, baseType: !1624, size: 64, offset: 896)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1596, file: !1597, line: 145, baseType: !1734, size: 64, offset: 960)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1736, line: 13, size: 896, elements: !1737)
!1736 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1737 = !{!1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1735, file: !1736, line: 14, baseType: !1279, size: 32)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1735, file: !1736, line: 15, baseType: !800, size: 32, offset: 32)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1735, file: !1736, line: 16, baseType: !800, size: 32, offset: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1735, file: !1736, line: 21, baseType: !824, size: 64, offset: 128)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1735, file: !1736, line: 27, baseType: !133, size: 64, offset: 192)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1735, file: !1736, line: 28, baseType: !133, size: 64, offset: 256)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1735, file: !1736, line: 29, baseType: !824, size: 64, offset: 320)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1735, file: !1736, line: 32, baseType: !691, size: 128, offset: 384)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1735, file: !1736, line: 33, baseType: !492, size: 32, offset: 512)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1735, file: !1736, line: 37, baseType: !824, size: 64, offset: 576)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1735, file: !1736, line: 44, baseType: !1749, size: 256, offset: 640)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1750, line: 15, size: 256, elements: !1751)
!1750 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1751 = !{!1752, !1753, !1754, !1755, !1756, !1757, !1758}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1749, file: !1750, line: 16, baseType: !833)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1749, file: !1750, line: 18, baseType: !131, size: 32)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1749, file: !1750, line: 19, baseType: !131, size: 32, offset: 32)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1749, file: !1750, line: 20, baseType: !131, size: 32, offset: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1749, file: !1750, line: 21, baseType: !131, size: 32, offset: 96)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1749, file: !1750, line: 22, baseType: !133, size: 64, offset: 128)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1749, file: !1750, line: 23, baseType: !133, size: 64, offset: 192)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1596, file: !1597, line: 146, baseType: !1760, size: 64, offset: 1024)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !493, line: 18, flags: DIFlagFwdDecl)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1596, file: !1597, line: 147, baseType: !1763, size: 64, offset: 1088)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1597, line: 25, size: 64, elements: !1765)
!1765 = !{!1766, !1767, !1768}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1764, file: !1597, line: 26, baseType: !800, size: 32)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1764, file: !1597, line: 27, baseType: !131, size: 32, offset: 32)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1764, file: !1597, line: 28, baseType: !1769, offset: 64)
!1769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !500, elements: !1770)
!1770 = !{!1771}
!1771 = !DISubrange(count: 0)
!1772 = !DIDerivedType(tag: DW_TAG_member, scope: !1596, file: !1597, line: 149, baseType: !1773, size: 128, offset: 1152)
!1773 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1596, file: !1597, line: 149, size: 128, elements: !1774)
!1774 = !{!1775, !1776}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1773, file: !1597, line: 150, baseType: !131, size: 32)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1773, file: !1597, line: 151, baseType: !425, size: 128, align: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1266, file: !1267, line: 926, baseType: !1594, size: 64, offset: 8576)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1266, file: !1267, line: 929, baseType: !1594, size: 64, offset: 8640)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1266, file: !1267, line: 933, baseType: !1624, size: 64, offset: 8704)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1266, file: !1267, line: 943, baseType: !1781, size: 128, offset: 8768)
!1781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 128, elements: !1782)
!1782 = !{!1783}
!1783 = !DISubrange(count: 16)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1266, file: !1267, line: 945, baseType: !1785, size: 64, offset: 8896)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1267, line: 49, flags: DIFlagFwdDecl)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1266, file: !1267, line: 956, baseType: !1788, size: 64, offset: 8960)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1267, line: 45, flags: DIFlagFwdDecl)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1266, file: !1267, line: 959, baseType: !1791, size: 64, offset: 9024)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1267, line: 959, flags: DIFlagFwdDecl)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1266, file: !1267, line: 962, baseType: !1794, size: 64, offset: 9088)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1267, line: 66, flags: DIFlagFwdDecl)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1266, file: !1267, line: 966, baseType: !1797, size: 64, offset: 9152)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1799, line: 35, flags: DIFlagFwdDecl)
!1799 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1266, file: !1267, line: 969, baseType: !1801, size: 64, offset: 9216)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1803, line: 82, size: 7296, elements: !1804)
!1803 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1804 = !{!1805, !1806, !1807, !1808, !1809, !1810, !1811, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1840, !1849, !1850, !1852, !1853, !1854, !1857, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1887, !1888, !1895, !1896, !1897, !1898, !1899, !1900}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1802, file: !1803, line: 83, baseType: !1279, size: 32)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1802, file: !1803, line: 84, baseType: !800, size: 32, offset: 32)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1802, file: !1803, line: 85, baseType: !131, size: 32, offset: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1802, file: !1803, line: 86, baseType: !283, size: 128, offset: 128)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1802, file: !1803, line: 88, baseType: !1528, size: 128, offset: 256)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1802, file: !1803, line: 91, baseType: !1265, size: 64, offset: 384)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1802, file: !1803, line: 94, baseType: !1812, size: 192, offset: 448)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1813, line: 30, size: 192, elements: !1814)
!1813 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1814 = !{!1815, !1816}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1812, file: !1813, line: 31, baseType: !283, size: 128)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1812, file: !1813, line: 32, baseType: !1817, size: 64, offset: 128)
!1817 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1818, line: 25, baseType: !1819)
!1818 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1818, line: 23, size: 64, elements: !1820)
!1820 = !{!1821}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1819, file: !1818, line: 24, baseType: !1417, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1802, file: !1803, line: 97, baseType: !687, size: 64, offset: 640)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1802, file: !1803, line: 100, baseType: !131, size: 32, offset: 704)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1802, file: !1803, line: 106, baseType: !131, size: 32, offset: 736)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1802, file: !1803, line: 107, baseType: !1265, size: 64, offset: 768)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1802, file: !1803, line: 110, baseType: !131, size: 32, offset: 832)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1802, file: !1803, line: 111, baseType: !7, size: 32, offset: 864)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1802, file: !1803, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1802, file: !1803, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1802, file: !1803, line: 128, baseType: !131, size: 32, offset: 928)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1802, file: !1803, line: 129, baseType: !283, size: 128, offset: 960)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1802, file: !1803, line: 132, baseType: !1341, size: 512, offset: 1088)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1802, file: !1803, line: 133, baseType: !1349, size: 64, offset: 1600)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1802, file: !1803, line: 140, baseType: !1835, size: 256, offset: 1664)
!1835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1836, size: 256, elements: !1616)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1803, line: 38, size: 128, elements: !1837)
!1837 = !{!1838, !1839}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1836, file: !1803, line: 39, baseType: !479, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1836, file: !1803, line: 40, baseType: !479, size: 64, offset: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1802, file: !1803, line: 146, baseType: !1841, size: 192, offset: 1920)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1803, line: 66, size: 192, elements: !1842)
!1842 = !{!1843}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1841, file: !1803, line: 67, baseType: !1844, size: 192)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1803, line: 47, size: 192, elements: !1845)
!1845 = !{!1846, !1847, !1848}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1844, file: !1803, line: 48, baseType: !826, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1844, file: !1803, line: 49, baseType: !826, size: 64, offset: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1844, file: !1803, line: 50, baseType: !826, size: 64, offset: 128)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1802, file: !1803, line: 150, baseType: !1577, size: 640, offset: 2112)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1802, file: !1803, line: 153, baseType: !1851, size: 256, offset: 2752)
!1851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1518, size: 256, elements: !1204)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1802, file: !1803, line: 159, baseType: !1518, size: 64, offset: 3008)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1802, file: !1803, line: 162, baseType: !131, size: 32, offset: 3072)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1802, file: !1803, line: 164, baseType: !1855, size: 64, offset: 3136)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1803, line: 164, flags: DIFlagFwdDecl)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1802, file: !1803, line: 175, baseType: !1858, size: 32, offset: 3200)
!1858 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !448, line: 805, baseType: !1859)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !448, line: 798, size: 32, elements: !1860)
!1860 = !{!1861, !1862}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1859, file: !448, line: 803, baseType: !447, size: 32)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1859, file: !448, line: 804, baseType: !296, offset: 32)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1802, file: !1803, line: 176, baseType: !479, size: 64, offset: 3264)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1802, file: !1803, line: 176, baseType: !479, size: 64, offset: 3328)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1802, file: !1803, line: 176, baseType: !479, size: 64, offset: 3392)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1802, file: !1803, line: 176, baseType: !479, size: 64, offset: 3456)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1802, file: !1803, line: 177, baseType: !479, size: 64, offset: 3520)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1802, file: !1803, line: 178, baseType: !479, size: 64, offset: 3584)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1802, file: !1803, line: 179, baseType: !1565, size: 128, offset: 3648)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1802, file: !1803, line: 180, baseType: !133, size: 64, offset: 3776)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1802, file: !1803, line: 180, baseType: !133, size: 64, offset: 3840)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1802, file: !1803, line: 180, baseType: !133, size: 64, offset: 3904)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1802, file: !1803, line: 180, baseType: !133, size: 64, offset: 3968)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1802, file: !1803, line: 181, baseType: !133, size: 64, offset: 4032)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1802, file: !1803, line: 181, baseType: !133, size: 64, offset: 4096)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1802, file: !1803, line: 181, baseType: !133, size: 64, offset: 4160)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1802, file: !1803, line: 181, baseType: !133, size: 64, offset: 4224)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1802, file: !1803, line: 182, baseType: !133, size: 64, offset: 4288)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1802, file: !1803, line: 182, baseType: !133, size: 64, offset: 4352)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1802, file: !1803, line: 182, baseType: !133, size: 64, offset: 4416)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1802, file: !1803, line: 182, baseType: !133, size: 64, offset: 4480)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1802, file: !1803, line: 183, baseType: !133, size: 64, offset: 4544)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1802, file: !1803, line: 183, baseType: !133, size: 64, offset: 4608)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1802, file: !1803, line: 184, baseType: !1885, offset: 4672)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1886, line: 12, elements: !310)
!1886 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1802, file: !1803, line: 192, baseType: !481, size: 64, offset: 4672)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1802, file: !1803, line: 203, baseType: !1889, size: 2048, offset: 4736)
!1889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1890, size: 2048, elements: !1782)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1891, line: 43, size: 128, elements: !1892)
!1891 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1892 = !{!1893, !1894}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1890, file: !1891, line: 44, baseType: !384, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1890, file: !1891, line: 45, baseType: !384, size: 64, offset: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1802, file: !1803, line: 220, baseType: !248, size: 8, offset: 6784)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1802, file: !1803, line: 221, baseType: !1254, size: 16, offset: 6800)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1802, file: !1803, line: 222, baseType: !1254, size: 16, offset: 6816)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1802, file: !1803, line: 224, baseType: !1025, size: 64, offset: 6848)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1802, file: !1803, line: 227, baseType: !1222, size: 192, offset: 6912)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1802, file: !1803, line: 233, baseType: !1222, size: 192, offset: 7104)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1266, file: !1267, line: 970, baseType: !1902, size: 64, offset: 9280)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1803, line: 20, size: 16576, elements: !1904)
!1904 = !{!1905, !1906, !1907, !1908}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1903, file: !1803, line: 21, baseType: !296)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1903, file: !1803, line: 22, baseType: !1279, size: 32)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1903, file: !1803, line: 23, baseType: !1528, size: 128, offset: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1903, file: !1803, line: 24, baseType: !1909, size: 16384, offset: 192)
!1909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1910, size: 16384, elements: !341)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1813, line: 49, size: 256, elements: !1911)
!1911 = !{!1912}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1910, file: !1813, line: 50, baseType: !1913, size: 256)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1813, line: 35, size: 256, elements: !1914)
!1914 = !{!1915, !1922, !1923, !1927}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1913, file: !1813, line: 37, baseType: !1916, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1917, line: 19, baseType: !1918)
!1917 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1917, line: 18, baseType: !1920)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{null, !131}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1913, file: !1813, line: 38, baseType: !133, size: 64, offset: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1913, file: !1813, line: 44, baseType: !1924, size: 64, offset: 128)
!1924 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1917, line: 22, baseType: !1925)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1917, line: 21, baseType: !224)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1913, file: !1813, line: 46, baseType: !1817, size: 64, offset: 192)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1266, file: !1267, line: 971, baseType: !1817, size: 64, offset: 9344)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1266, file: !1267, line: 972, baseType: !1817, size: 64, offset: 9408)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1266, file: !1267, line: 974, baseType: !1817, size: 64, offset: 9472)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1266, file: !1267, line: 975, baseType: !1812, size: 192, offset: 9536)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1266, file: !1267, line: 976, baseType: !133, size: 64, offset: 9728)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1266, file: !1267, line: 977, baseType: !382, size: 64, offset: 9792)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1266, file: !1267, line: 978, baseType: !7, size: 32, offset: 9856)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1266, file: !1267, line: 980, baseType: !428, size: 64, offset: 9920)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1266, file: !1267, line: 989, baseType: !1937, size: 128, offset: 9984)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1938, line: 35, size: 128, elements: !1939)
!1938 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1939 = !{!1940, !1941, !1942}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1937, file: !1938, line: 36, baseType: !131, size: 32)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1937, file: !1938, line: 37, baseType: !800, size: 32, offset: 32)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1937, file: !1938, line: 38, baseType: !1943, size: 64, offset: 64)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1938, line: 23, flags: DIFlagFwdDecl)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1266, file: !1267, line: 992, baseType: !479, size: 64, offset: 10112)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1266, file: !1267, line: 993, baseType: !479, size: 64, offset: 10176)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1266, file: !1267, line: 996, baseType: !296, offset: 10240)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1266, file: !1267, line: 999, baseType: !833, offset: 10240)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1266, file: !1267, line: 1001, baseType: !1950, size: 64, offset: 10240)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1267, line: 636, size: 64, elements: !1951)
!1951 = !{!1952}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1950, file: !1267, line: 637, baseType: !1953, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1266, file: !1267, line: 1005, baseType: !805, size: 128, offset: 10304)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1266, file: !1267, line: 1007, baseType: !1265, size: 64, offset: 10432)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1266, file: !1267, line: 1009, baseType: !1957, size: 64, offset: 10496)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1267, line: 1009, flags: DIFlagFwdDecl)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1266, file: !1267, line: 1043, baseType: !132, size: 64, offset: 10560)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1266, file: !1267, line: 1046, baseType: !1961, size: 64, offset: 10624)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1267, line: 41, flags: DIFlagFwdDecl)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1266, file: !1267, line: 1050, baseType: !1964, size: 64, offset: 10688)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1267, line: 42, flags: DIFlagFwdDecl)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1266, file: !1267, line: 1054, baseType: !1967, size: 64, offset: 10752)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1267, line: 55, flags: DIFlagFwdDecl)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1266, file: !1267, line: 1056, baseType: !1970, size: 64, offset: 10816)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1267, line: 40, flags: DIFlagFwdDecl)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1266, file: !1267, line: 1058, baseType: !1973, size: 64, offset: 10880)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1975, line: 99, size: 704, elements: !1976)
!1975 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1976 = !{!1977, !1978, !1979, !1980, !1981, !1982, !1983, !2002, !2003}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1974, file: !1975, line: 100, baseType: !824, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1974, file: !1975, line: 101, baseType: !800, size: 32, offset: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1974, file: !1975, line: 102, baseType: !800, size: 32, offset: 96)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1974, file: !1975, line: 105, baseType: !296, offset: 128)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1974, file: !1975, line: 107, baseType: !177, size: 16, offset: 128)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1974, file: !1975, line: 109, baseType: !791, size: 128, offset: 192)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1974, file: !1975, line: 110, baseType: !1984, size: 64, offset: 320)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1975, line: 73, size: 448, elements: !1986)
!1986 = !{!1987, !1990, !1991, !1996, !2001}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1985, file: !1975, line: 74, baseType: !1988, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1975, line: 74, flags: DIFlagFwdDecl)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1985, file: !1975, line: 75, baseType: !1973, size: 64, offset: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, scope: !1985, file: !1975, line: 83, baseType: !1992, size: 128, offset: 128)
!1992 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1985, file: !1975, line: 83, size: 128, elements: !1993)
!1993 = !{!1994, !1995}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1992, file: !1975, line: 84, baseType: !283, size: 128)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1992, file: !1975, line: 85, baseType: !986, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, scope: !1985, file: !1975, line: 87, baseType: !1997, size: 128, offset: 256)
!1997 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1985, file: !1975, line: 87, size: 128, elements: !1998)
!1998 = !{!1999, !2000}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1997, file: !1975, line: 88, baseType: !691, size: 128)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1997, file: !1975, line: 89, baseType: !425, size: 128, align: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1985, file: !1975, line: 92, baseType: !7, size: 32, offset: 384)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1974, file: !1975, line: 111, baseType: !687, size: 64, offset: 384)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1974, file: !1975, line: 113, baseType: !2004, size: 256, offset: 448)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2005, line: 102, size: 256, elements: !2006)
!2005 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2006 = !{!2007, !2008, !2009}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2004, file: !2005, line: 103, baseType: !824, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2004, file: !2005, line: 104, baseType: !283, size: 128, offset: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2004, file: !2005, line: 105, baseType: !2010, size: 64, offset: 192)
!2010 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2005, line: 21, baseType: !2011)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{null, !2014}
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1266, file: !1267, line: 1061, baseType: !2016, size: 64, offset: 10944)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1267, line: 43, flags: DIFlagFwdDecl)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1266, file: !1267, line: 1064, baseType: !133, size: 64, offset: 11008)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1266, file: !1267, line: 1065, baseType: !2020, size: 64, offset: 11072)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1813, line: 14, baseType: !2022)
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1813, line: 12, size: 384, elements: !2023)
!2023 = !{!2024}
!2024 = !DIDerivedType(tag: DW_TAG_member, scope: !2022, file: !1813, line: 13, baseType: !2025, size: 384)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2022, file: !1813, line: 13, size: 384, elements: !2026)
!2026 = !{!2027, !2028, !2029, !2030}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2025, file: !1813, line: 13, baseType: !131, size: 32)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2025, file: !1813, line: 13, baseType: !131, size: 32, offset: 32)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2025, file: !1813, line: 13, baseType: !131, size: 32, offset: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2025, file: !1813, line: 13, baseType: !2031, size: 256, offset: 128)
!2031 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2032, line: 32, size: 256, elements: !2033)
!2032 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2033 = !{!2034, !2039, !2052, !2058, !2067, !2087, !2092}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2031, file: !2032, line: 37, baseType: !2035, size: 64)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2031, file: !2032, line: 34, size: 64, elements: !2036)
!2036 = !{!2037, !2038}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2035, file: !2032, line: 35, baseType: !1507, size: 32)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2035, file: !2032, line: 36, baseType: !498, size: 32, offset: 32)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2031, file: !2032, line: 45, baseType: !2040, size: 192)
!2040 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2031, file: !2032, line: 40, size: 192, elements: !2041)
!2041 = !{!2042, !2044, !2045, !2051}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2040, file: !2032, line: 41, baseType: !2043, size: 32)
!2043 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !369, line: 95, baseType: !131)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2040, file: !2032, line: 42, baseType: !131, size: 32, offset: 32)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2040, file: !2032, line: 43, baseType: !2046, size: 64, offset: 64)
!2046 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2032, line: 11, baseType: !2047)
!2047 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2032, line: 8, size: 64, elements: !2048)
!2048 = !{!2049, !2050}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2047, file: !2032, line: 9, baseType: !131, size: 32)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2047, file: !2032, line: 10, baseType: !132, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2040, file: !2032, line: 44, baseType: !131, size: 32, offset: 128)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2031, file: !2032, line: 52, baseType: !2053, size: 128)
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2031, file: !2032, line: 48, size: 128, elements: !2054)
!2054 = !{!2055, !2056, !2057}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2053, file: !2032, line: 49, baseType: !1507, size: 32)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2053, file: !2032, line: 50, baseType: !498, size: 32, offset: 32)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2053, file: !2032, line: 51, baseType: !2046, size: 64, offset: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2031, file: !2032, line: 61, baseType: !2059, size: 256)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2031, file: !2032, line: 55, size: 256, elements: !2060)
!2060 = !{!2061, !2062, !2063, !2064, !2066}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2059, file: !2032, line: 56, baseType: !1507, size: 32)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2059, file: !2032, line: 57, baseType: !498, size: 32, offset: 32)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2059, file: !2032, line: 58, baseType: !131, size: 32, offset: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2059, file: !2032, line: 59, baseType: !2065, size: 64, offset: 128)
!2065 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !369, line: 94, baseType: !370)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2059, file: !2032, line: 60, baseType: !2065, size: 64, offset: 192)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2031, file: !2032, line: 95, baseType: !2068, size: 256)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2031, file: !2032, line: 64, size: 256, elements: !2069)
!2069 = !{!2070, !2071}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2068, file: !2032, line: 65, baseType: !132, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, scope: !2068, file: !2032, line: 77, baseType: !2072, size: 192, offset: 64)
!2072 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2068, file: !2032, line: 77, size: 192, elements: !2073)
!2073 = !{!2074, !2075, !2082}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2072, file: !2032, line: 82, baseType: !1254, size: 16)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2072, file: !2032, line: 88, baseType: !2076, size: 192)
!2076 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2072, file: !2032, line: 84, size: 192, elements: !2077)
!2077 = !{!2078, !2080, !2081}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2076, file: !2032, line: 85, baseType: !2079, size: 64)
!2079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 64, elements: !1379)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2076, file: !2032, line: 86, baseType: !132, size: 64, offset: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2076, file: !2032, line: 87, baseType: !132, size: 64, offset: 128)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2072, file: !2032, line: 93, baseType: !2083, size: 96)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2072, file: !2032, line: 90, size: 96, elements: !2084)
!2084 = !{!2085, !2086}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2083, file: !2032, line: 91, baseType: !2079, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2083, file: !2032, line: 92, baseType: !476, size: 32, offset: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2031, file: !2032, line: 101, baseType: !2088, size: 128)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2031, file: !2032, line: 98, size: 128, elements: !2089)
!2089 = !{!2090, !2091}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2088, file: !2032, line: 99, baseType: !371, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2088, file: !2032, line: 100, baseType: !131, size: 32, offset: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2031, file: !2032, line: 108, baseType: !2093, size: 128)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2031, file: !2032, line: 104, size: 128, elements: !2094)
!2094 = !{!2095, !2096, !2097}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2093, file: !2032, line: 105, baseType: !132, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2093, file: !2032, line: 106, baseType: !131, size: 32, offset: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2093, file: !2032, line: 107, baseType: !7, size: 32, offset: 96)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1266, file: !1267, line: 1067, baseType: !1885, offset: 11136)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1266, file: !1267, line: 1099, baseType: !2100, size: 64, offset: 11136)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1267, line: 56, flags: DIFlagFwdDecl)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1266, file: !1267, line: 1103, baseType: !283, size: 128, offset: 11200)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1266, file: !1267, line: 1104, baseType: !2104, size: 64, offset: 11328)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1267, line: 46, flags: DIFlagFwdDecl)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1266, file: !1267, line: 1105, baseType: !1222, size: 192, offset: 11392)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1266, file: !1267, line: 1106, baseType: !7, size: 32, offset: 11584)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1266, file: !1267, line: 1109, baseType: !2109, size: 128, offset: 11648)
!2109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2110, size: 128, elements: !1616)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1267, line: 51, flags: DIFlagFwdDecl)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1266, file: !1267, line: 1110, baseType: !1222, size: 192, offset: 11776)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1266, file: !1267, line: 1111, baseType: !283, size: 128, offset: 11968)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1266, file: !1267, line: 1173, baseType: !2115, size: 64, offset: 12096)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2117, line: 62, size: 256, align: 256, elements: !2118)
!2117 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2118 = !{!2119, !2120, !2121, !2126}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2116, file: !2117, line: 75, baseType: !476, size: 32)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2116, file: !2117, line: 90, baseType: !476, size: 32, offset: 32)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2116, file: !2117, line: 124, baseType: !2122, size: 64, offset: 64)
!2122 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2116, file: !2117, line: 109, size: 64, elements: !2123)
!2123 = !{!2124, !2125}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2122, file: !2117, line: 110, baseType: !480, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2122, file: !2117, line: 112, baseType: !480, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2116, file: !2117, line: 144, baseType: !476, size: 32, offset: 128)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1266, file: !1267, line: 1174, baseType: !475, size: 32, offset: 12160)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1266, file: !1267, line: 1179, baseType: !133, size: 64, offset: 12224)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1266, file: !1267, line: 1182, baseType: !2130, size: 128, offset: 12288)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1200, line: 76, size: 128, elements: !2131)
!2131 = !{!2132, !2137, !2138}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2130, file: !1200, line: 85, baseType: !2133, size: 64)
!2133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2134, line: 7, size: 64, elements: !2135)
!2134 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2135 = !{!2136}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2133, file: !2134, line: 12, baseType: !1414, size: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2130, file: !1200, line: 88, baseType: !248, size: 8, offset: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2130, file: !1200, line: 95, baseType: !248, size: 8, offset: 72)
!2139 = !DIDerivedType(tag: DW_TAG_member, scope: !1266, file: !1267, line: 1184, baseType: !2140, size: 128, offset: 12416)
!2140 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1266, file: !1267, line: 1184, size: 128, elements: !2141)
!2141 = !{!2142, !2143}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2140, file: !1267, line: 1185, baseType: !1279, size: 32)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2140, file: !1267, line: 1186, baseType: !425, size: 128, align: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1266, file: !1267, line: 1190, baseType: !2145, size: 64, offset: 12544)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1267, line: 53, flags: DIFlagFwdDecl)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1266, file: !1267, line: 1192, baseType: !2148, size: 128, offset: 12608)
!2148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1200, line: 64, size: 128, elements: !2149)
!2149 = !{!2150, !2151, !2152}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2148, file: !1200, line: 65, baseType: !773, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2148, file: !1200, line: 67, baseType: !476, size: 32, offset: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2148, file: !1200, line: 68, baseType: !476, size: 32, offset: 96)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1266, file: !1267, line: 1206, baseType: !131, size: 32, offset: 12736)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1266, file: !1267, line: 1207, baseType: !131, size: 32, offset: 12768)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1266, file: !1267, line: 1209, baseType: !133, size: 64, offset: 12800)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1266, file: !1267, line: 1219, baseType: !479, size: 64, offset: 12864)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1266, file: !1267, line: 1220, baseType: !479, size: 64, offset: 12928)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1266, file: !1267, line: 1317, baseType: !131, size: 32, offset: 12992)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1266, file: !1267, line: 1319, baseType: !1265, size: 64, offset: 13056)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1266, file: !1267, line: 1322, baseType: !2161, size: 64, offset: 13120)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2163, line: 56, size: 512, elements: !2164)
!2163 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2164 = !{!2165, !2166, !2167, !2168, !2169, !2170, !2171, !2173}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2162, file: !2163, line: 57, baseType: !2161, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2162, file: !2163, line: 58, baseType: !132, size: 64, offset: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2162, file: !2163, line: 59, baseType: !133, size: 64, offset: 128)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2162, file: !2163, line: 60, baseType: !133, size: 64, offset: 192)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2162, file: !2163, line: 61, baseType: !873, size: 64, offset: 256)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2162, file: !2163, line: 62, baseType: !7, size: 32, offset: 320)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2162, file: !2163, line: 63, baseType: !2172, size: 64, offset: 384)
!2172 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !249, line: 153, baseType: !479)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2162, file: !2163, line: 64, baseType: !2174, size: 64, offset: 448)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1266, file: !1267, line: 1326, baseType: !1279, size: 32, offset: 13184)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1266, file: !1267, line: 1342, baseType: !132, size: 64, offset: 13248)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1266, file: !1267, line: 1343, baseType: !480, size: 64, offset: 13312)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1266, file: !1267, line: 1344, baseType: !479, size: 64, offset: 13376)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1266, file: !1267, line: 1345, baseType: !480, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1266, file: !1267, line: 1346, baseType: !480, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1266, file: !1267, line: 1347, baseType: !480, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1266, file: !1267, line: 1348, baseType: !425, size: 128, align: 64, offset: 13504)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1266, file: !1267, line: 1358, baseType: !2185, size: 34816, offset: 13824)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2186, line: 485, size: 34816, elements: !2187)
!2186 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2187 = !{!2188, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2217, !2218, !2219, !2220, !2221, !2222, !2225, !2226, !2227}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2185, file: !2186, line: 487, baseType: !2189, size: 192)
!2189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2190, size: 192, elements: !337)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2191, line: 16, size: 64, elements: !2192)
!2191 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2192 = !{!2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2190, file: !2191, line: 17, baseType: !173, size: 16)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2190, file: !2191, line: 18, baseType: !173, size: 16, offset: 16)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2190, file: !2191, line: 19, baseType: !173, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2190, file: !2191, line: 19, baseType: !173, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2190, file: !2191, line: 19, baseType: !173, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2190, file: !2191, line: 19, baseType: !173, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2190, file: !2191, line: 19, baseType: !173, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2190, file: !2191, line: 20, baseType: !173, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2190, file: !2191, line: 20, baseType: !173, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2190, file: !2191, line: 20, baseType: !173, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2190, file: !2191, line: 20, baseType: !173, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2190, file: !2191, line: 20, baseType: !173, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2190, file: !2191, line: 20, baseType: !173, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2185, file: !2186, line: 491, baseType: !133, size: 64, offset: 192)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2185, file: !2186, line: 495, baseType: !177, size: 16, offset: 256)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2185, file: !2186, line: 496, baseType: !177, size: 16, offset: 272)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2185, file: !2186, line: 497, baseType: !177, size: 16, offset: 288)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2185, file: !2186, line: 498, baseType: !177, size: 16, offset: 304)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2185, file: !2186, line: 502, baseType: !133, size: 64, offset: 320)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2185, file: !2186, line: 503, baseType: !133, size: 64, offset: 384)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2185, file: !2186, line: 514, baseType: !2214, size: 256, offset: 448)
!2214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2215, size: 256, elements: !1204)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2186, line: 483, flags: DIFlagFwdDecl)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2185, file: !2186, line: 516, baseType: !133, size: 64, offset: 704)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2185, file: !2186, line: 518, baseType: !133, size: 64, offset: 768)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2185, file: !2186, line: 520, baseType: !133, size: 64, offset: 832)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2185, file: !2186, line: 521, baseType: !133, size: 64, offset: 896)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2185, file: !2186, line: 522, baseType: !133, size: 64, offset: 960)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2185, file: !2186, line: 528, baseType: !2223, size: 64, offset: 1024)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2186, line: 10, flags: DIFlagFwdDecl)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2185, file: !2186, line: 535, baseType: !133, size: 64, offset: 1088)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2185, file: !2186, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2185, file: !2186, line: 540, baseType: !2228, size: 33280, offset: 1536)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2229, line: 317, size: 33280, elements: !2230)
!2229 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2230 = !{!2231, !2232, !2233}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2228, file: !2229, line: 330, baseType: !7, size: 32)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2228, file: !2229, line: 337, baseType: !133, size: 64, offset: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2228, file: !2229, line: 348, baseType: !2234, size: 32768, offset: 512)
!2234 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2229, line: 304, size: 32768, elements: !2235)
!2235 = !{!2236, !2249, !2288, !2338, !2351}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2234, file: !2229, line: 305, baseType: !2237, size: 896)
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2229, line: 12, size: 896, elements: !2238)
!2238 = !{!2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2248}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2237, file: !2229, line: 13, baseType: !475, size: 32)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2237, file: !2229, line: 14, baseType: !475, size: 32, offset: 32)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2237, file: !2229, line: 15, baseType: !475, size: 32, offset: 64)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2237, file: !2229, line: 16, baseType: !475, size: 32, offset: 96)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2237, file: !2229, line: 17, baseType: !475, size: 32, offset: 128)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2237, file: !2229, line: 18, baseType: !475, size: 32, offset: 160)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2237, file: !2229, line: 19, baseType: !475, size: 32, offset: 192)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2237, file: !2229, line: 22, baseType: !2247, size: 640, offset: 224)
!2247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !475, size: 640, elements: !244)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2237, file: !2229, line: 25, baseType: !475, size: 32, offset: 864)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2234, file: !2229, line: 306, baseType: !2250, size: 4096, align: 128)
!2250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2229, line: 34, size: 4096, align: 128, elements: !2251)
!2251 = !{!2252, !2253, !2254, !2255, !2256, !2271, !2272, !2273, !2277, !2279, !2283}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2250, file: !2229, line: 35, baseType: !173, size: 16)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2250, file: !2229, line: 36, baseType: !173, size: 16, offset: 16)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2250, file: !2229, line: 37, baseType: !173, size: 16, offset: 32)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2250, file: !2229, line: 38, baseType: !173, size: 16, offset: 48)
!2256 = !DIDerivedType(tag: DW_TAG_member, scope: !2250, file: !2229, line: 39, baseType: !2257, size: 128, offset: 64)
!2257 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2250, file: !2229, line: 39, size: 128, elements: !2258)
!2258 = !{!2259, !2264}
!2259 = !DIDerivedType(tag: DW_TAG_member, scope: !2257, file: !2229, line: 40, baseType: !2260, size: 128)
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2257, file: !2229, line: 40, size: 128, elements: !2261)
!2261 = !{!2262, !2263}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2260, file: !2229, line: 41, baseType: !479, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2260, file: !2229, line: 42, baseType: !479, size: 64, offset: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, scope: !2257, file: !2229, line: 44, baseType: !2265, size: 128)
!2265 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2257, file: !2229, line: 44, size: 128, elements: !2266)
!2266 = !{!2267, !2268, !2269, !2270}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2265, file: !2229, line: 45, baseType: !475, size: 32)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2265, file: !2229, line: 46, baseType: !475, size: 32, offset: 32)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2265, file: !2229, line: 47, baseType: !475, size: 32, offset: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2265, file: !2229, line: 48, baseType: !475, size: 32, offset: 96)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2250, file: !2229, line: 51, baseType: !475, size: 32, offset: 192)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2250, file: !2229, line: 52, baseType: !475, size: 32, offset: 224)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2250, file: !2229, line: 55, baseType: !2274, size: 1024, offset: 256)
!2274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !475, size: 1024, elements: !2275)
!2275 = !{!2276}
!2276 = !DISubrange(count: 32)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2250, file: !2229, line: 58, baseType: !2278, size: 2048, offset: 1280)
!2278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !475, size: 2048, elements: !341)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2250, file: !2229, line: 60, baseType: !2280, size: 384, offset: 3328)
!2280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !475, size: 384, elements: !2281)
!2281 = !{!2282}
!2282 = !DISubrange(count: 12)
!2283 = !DIDerivedType(tag: DW_TAG_member, scope: !2250, file: !2229, line: 62, baseType: !2284, size: 384, offset: 3712)
!2284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2250, file: !2229, line: 62, size: 384, elements: !2285)
!2285 = !{!2286, !2287}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2284, file: !2229, line: 63, baseType: !2280, size: 384)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2284, file: !2229, line: 64, baseType: !2280, size: 384)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2234, file: !2229, line: 307, baseType: !2289, size: 1088)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2229, line: 79, size: 1088, elements: !2290)
!2290 = !{!2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2337}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2289, file: !2229, line: 80, baseType: !475, size: 32)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2289, file: !2229, line: 81, baseType: !475, size: 32, offset: 32)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2289, file: !2229, line: 82, baseType: !475, size: 32, offset: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2289, file: !2229, line: 83, baseType: !475, size: 32, offset: 96)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2289, file: !2229, line: 84, baseType: !475, size: 32, offset: 128)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2289, file: !2229, line: 85, baseType: !475, size: 32, offset: 160)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2289, file: !2229, line: 86, baseType: !475, size: 32, offset: 192)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2289, file: !2229, line: 88, baseType: !2247, size: 640, offset: 224)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2289, file: !2229, line: 89, baseType: !183, size: 8, offset: 864)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2289, file: !2229, line: 90, baseType: !183, size: 8, offset: 872)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2289, file: !2229, line: 91, baseType: !183, size: 8, offset: 880)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2289, file: !2229, line: 92, baseType: !183, size: 8, offset: 888)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2289, file: !2229, line: 93, baseType: !183, size: 8, offset: 896)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2289, file: !2229, line: 94, baseType: !183, size: 8, offset: 904)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2289, file: !2229, line: 95, baseType: !2306, size: 64, offset: 960)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2308, line: 11, size: 128, elements: !2309)
!2308 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2309 = !{!2310, !2311}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2307, file: !2308, line: 12, baseType: !371, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2307, file: !2308, line: 13, baseType: !2312, size: 64, offset: 64)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2314, line: 56, size: 1344, elements: !2315)
!2314 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2315 = !{!2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2313, file: !2314, line: 61, baseType: !133, size: 64)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2313, file: !2314, line: 62, baseType: !133, size: 64, offset: 64)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2313, file: !2314, line: 63, baseType: !133, size: 64, offset: 128)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2313, file: !2314, line: 64, baseType: !133, size: 64, offset: 192)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2313, file: !2314, line: 65, baseType: !133, size: 64, offset: 256)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2313, file: !2314, line: 66, baseType: !133, size: 64, offset: 320)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2313, file: !2314, line: 68, baseType: !133, size: 64, offset: 384)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2313, file: !2314, line: 69, baseType: !133, size: 64, offset: 448)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2313, file: !2314, line: 70, baseType: !133, size: 64, offset: 512)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2313, file: !2314, line: 71, baseType: !133, size: 64, offset: 576)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2313, file: !2314, line: 72, baseType: !133, size: 64, offset: 640)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2313, file: !2314, line: 73, baseType: !133, size: 64, offset: 704)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2313, file: !2314, line: 74, baseType: !133, size: 64, offset: 768)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2313, file: !2314, line: 75, baseType: !133, size: 64, offset: 832)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2313, file: !2314, line: 76, baseType: !133, size: 64, offset: 896)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2313, file: !2314, line: 81, baseType: !133, size: 64, offset: 960)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2313, file: !2314, line: 83, baseType: !133, size: 64, offset: 1024)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2313, file: !2314, line: 84, baseType: !133, size: 64, offset: 1088)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2313, file: !2314, line: 85, baseType: !133, size: 64, offset: 1152)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2313, file: !2314, line: 86, baseType: !133, size: 64, offset: 1216)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2313, file: !2314, line: 87, baseType: !133, size: 64, offset: 1280)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2289, file: !2229, line: 96, baseType: !475, size: 32, offset: 1024)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2234, file: !2229, line: 308, baseType: !2339, size: 4608, align: 512)
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2229, line: 289, size: 4608, align: 512, elements: !2340)
!2340 = !{!2341, !2342, !2349}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2339, file: !2229, line: 290, baseType: !2250, size: 4096, align: 128)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2339, file: !2229, line: 291, baseType: !2343, size: 512, offset: 4096)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2229, line: 268, size: 512, elements: !2344)
!2344 = !{!2345, !2346, !2347}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2343, file: !2229, line: 269, baseType: !479, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2343, file: !2229, line: 270, baseType: !479, size: 64, offset: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2343, file: !2229, line: 271, baseType: !2348, size: 384, offset: 128)
!2348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !479, size: 384, elements: !1672)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2339, file: !2229, line: 292, baseType: !2350, offset: 4608)
!2350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, elements: !1770)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2234, file: !2229, line: 309, baseType: !2352, size: 32768)
!2352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 32768, elements: !2353)
!2353 = !{!2354}
!2354 = !DISubrange(count: 4096)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1262, file: !775, line: 378, baseType: !2356, size: 64, offset: 64)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1258, file: !775, line: 384, baseType: !1549, size: 192, offset: 192)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1029, file: !775, line: 500, baseType: !296, offset: 6656)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1029, file: !775, line: 501, baseType: !2360, size: 64, offset: 6656)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !775, line: 387, flags: DIFlagFwdDecl)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1029, file: !775, line: 516, baseType: !1760, size: 64, offset: 6720)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1029, file: !775, line: 519, baseType: !412, size: 64, offset: 6784)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1029, file: !775, line: 521, baseType: !2365, size: 64, offset: 6848)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !775, line: 521, flags: DIFlagFwdDecl)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1029, file: !775, line: 545, baseType: !800, size: 32, offset: 6912)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1029, file: !775, line: 548, baseType: !248, size: 8, offset: 6944)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1029, file: !775, line: 550, baseType: !2370, offset: 6952)
!2370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2371, line: 142, elements: !310)
!2371 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1029, file: !775, line: 554, baseType: !2004, size: 256, offset: 6976)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1029, file: !775, line: 557, baseType: !475, size: 32, offset: 7232)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1026, file: !775, line: 565, baseType: !2375, offset: 7296)
!2375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, elements: !2376)
!2376 = !{!2377}
!2377 = !DISubrange(count: -1)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1022, file: !775, line: 151, baseType: !800, size: 32)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1015, file: !775, line: 156, baseType: !296, offset: 256)
!2380 = !DIDerivedType(tag: DW_TAG_member, scope: !779, file: !775, line: 159, baseType: !2381, size: 128)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !779, file: !775, line: 159, size: 128, elements: !2382)
!2382 = !{!2383, !2447}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2381, file: !775, line: 161, baseType: !2384, size: 64)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2386)
!2386 = !{!2387, !2397, !2418, !2419, !2420, !2421, !2422, !2434, !2435, !2436}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2385, file: !31, line: 111, baseType: !2388, size: 384)
!2388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2389)
!2389 = !{!2390, !2392, !2393, !2394, !2395, !2396}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2388, file: !31, line: 20, baseType: !2391, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2388, file: !31, line: 21, baseType: !2391, size: 64, offset: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2388, file: !31, line: 22, baseType: !2391, size: 64, offset: 128)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2388, file: !31, line: 23, baseType: !133, size: 64, offset: 192)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2388, file: !31, line: 24, baseType: !133, size: 64, offset: 256)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2388, file: !31, line: 25, baseType: !133, size: 64, offset: 320)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2385, file: !31, line: 112, baseType: !2398, size: 64, offset: 384)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2400, line: 105, size: 128, elements: !2401)
!2400 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2401 = !{!2402, !2403}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2399, file: !2400, line: 110, baseType: !133, size: 64)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2399, file: !2400, line: 118, baseType: !2404, size: 64, offset: 64)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2400, line: 95, size: 448, elements: !2406)
!2406 = !{!2407, !2408, !2413, !2414, !2415, !2416, !2417}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2405, file: !2400, line: 96, baseType: !824, size: 64)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2405, file: !2400, line: 97, baseType: !2409, size: 64, offset: 64)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2400, line: 60, baseType: !2411)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{null, !2398}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2405, file: !2400, line: 98, baseType: !2409, size: 64, offset: 128)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2405, file: !2400, line: 99, baseType: !248, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2405, file: !2400, line: 100, baseType: !248, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2405, file: !2400, line: 101, baseType: !425, size: 128, align: 64, offset: 256)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2405, file: !2400, line: 102, baseType: !2398, size: 64, offset: 384)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2385, file: !31, line: 113, baseType: !2399, size: 128, offset: 448)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2385, file: !31, line: 114, baseType: !1549, size: 192, offset: 576)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2385, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2385, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2385, file: !31, line: 117, baseType: !2423, size: 64, offset: 832)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2425)
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2426)
!2426 = !{!2427, !2428, !2432, !2433}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2425, file: !31, line: 73, baseType: !893, size: 64)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2425, file: !31, line: 78, baseType: !2429, size: 64, offset: 64)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = !DISubroutineType(types: !2431)
!2431 = !{null, !2384}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2425, file: !31, line: 83, baseType: !2429, size: 64, offset: 128)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2425, file: !31, line: 89, baseType: !1078, size: 64, offset: 192)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2385, file: !31, line: 118, baseType: !132, size: 64, offset: 896)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2385, file: !31, line: 119, baseType: !131, size: 32, offset: 960)
!2436 = !DIDerivedType(tag: DW_TAG_member, scope: !2385, file: !31, line: 120, baseType: !2437, size: 128, offset: 1024)
!2437 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2385, file: !31, line: 120, size: 128, elements: !2438)
!2438 = !{!2439, !2445}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2437, file: !31, line: 121, baseType: !2440, size: 128)
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2441, line: 6, size: 128, elements: !2442)
!2441 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2442 = !{!2443, !2444}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2440, file: !2441, line: 7, baseType: !479, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2440, file: !2441, line: 8, baseType: !479, size: 64, offset: 64)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2437, file: !31, line: 122, baseType: !2446)
!2446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2440, elements: !1770)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2381, file: !775, line: 162, baseType: !132, size: 64, offset: 64)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !779, file: !775, line: 176, baseType: !425, size: 128, align: 64)
!2449 = !DIDerivedType(tag: DW_TAG_member, scope: !774, file: !775, line: 179, baseType: !2450, size: 32, offset: 384)
!2450 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !774, file: !775, line: 179, size: 32, elements: !2451)
!2451 = !{!2452, !2453, !2454, !2455}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2450, file: !775, line: 184, baseType: !800, size: 32)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2450, file: !775, line: 192, baseType: !7, size: 32)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2450, file: !775, line: 194, baseType: !7, size: 32)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2450, file: !775, line: 195, baseType: !131, size: 32)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !774, file: !775, line: 199, baseType: !800, size: 32, offset: 416)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !709, file: !44, line: 1964, baseType: !2458, size: 64, offset: 1344)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!371, !651, !2461}
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2463, line: 12, size: 256, elements: !2464)
!2463 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2464 = !{!2465, !2466, !2467, !2468, !2469}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2462, file: !2463, line: 13, baseType: !796, size: 32)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2462, file: !2463, line: 16, baseType: !131, size: 32, offset: 32)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2462, file: !2463, line: 23, baseType: !133, size: 64, offset: 64)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2462, file: !2463, line: 30, baseType: !133, size: 64, offset: 128)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2462, file: !2463, line: 33, baseType: !2470, size: 64, offset: 192)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !775, line: 27, flags: DIFlagFwdDecl)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !709, file: !44, line: 1966, baseType: !2458, size: 64, offset: 1408)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !652, file: !44, line: 1424, baseType: !2474, size: 64, offset: 448)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2476)
!2476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2477)
!2477 = !{!2478, !2524, !2528, !2532, !2533, !2534, !2535, !2536, !2541, !2546, !2550}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2476, file: !38, line: 323, baseType: !2479, size: 64)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DISubroutineType(types: !2481)
!2481 = !{!131, !2482}
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2484)
!2484 = !{!2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2509, !2510, !2511}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2483, file: !38, line: 295, baseType: !691, size: 128)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2483, file: !38, line: 296, baseType: !283, size: 128, offset: 128)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2483, file: !38, line: 297, baseType: !283, size: 128, offset: 256)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2483, file: !38, line: 298, baseType: !283, size: 128, offset: 384)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2483, file: !38, line: 299, baseType: !1222, size: 192, offset: 512)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2483, file: !38, line: 300, baseType: !296, offset: 704)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2483, file: !38, line: 301, baseType: !800, size: 32, offset: 704)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2483, file: !38, line: 302, baseType: !651, size: 64, offset: 768)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2483, file: !38, line: 303, baseType: !2494, size: 64, offset: 832)
!2494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2495)
!2495 = !{!2496, !2508}
!2496 = !DIDerivedType(tag: DW_TAG_member, scope: !2494, file: !38, line: 69, baseType: !2497, size: 32)
!2497 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2494, file: !38, line: 69, size: 32, elements: !2498)
!2498 = !{!2499, !2500, !2501}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2497, file: !38, line: 70, baseType: !492, size: 32)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2497, file: !38, line: 71, baseType: !500, size: 32)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2497, file: !38, line: 72, baseType: !2502, size: 32)
!2502 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2503, line: 24, baseType: !2504)
!2503 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2504 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2503, line: 22, size: 32, elements: !2505)
!2505 = !{!2506}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2504, file: !2503, line: 23, baseType: !2507, size: 32)
!2507 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2503, line: 20, baseType: !498)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2494, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2483, file: !38, line: 304, baseType: !583, size: 64, offset: 896)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2483, file: !38, line: 305, baseType: !133, size: 64, offset: 960)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2483, file: !38, line: 306, baseType: !2512, size: 576, offset: 1024)
!2512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2513)
!2513 = !{!2514, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2512, file: !38, line: 206, baseType: !2515, size: 64)
!2515 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !585)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2512, file: !38, line: 207, baseType: !2515, size: 64, offset: 64)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2512, file: !38, line: 208, baseType: !2515, size: 64, offset: 128)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2512, file: !38, line: 209, baseType: !2515, size: 64, offset: 192)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2512, file: !38, line: 210, baseType: !2515, size: 64, offset: 256)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2512, file: !38, line: 211, baseType: !2515, size: 64, offset: 320)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2512, file: !38, line: 212, baseType: !2515, size: 64, offset: 384)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2512, file: !38, line: 213, baseType: !591, size: 64, offset: 448)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2512, file: !38, line: 214, baseType: !591, size: 64, offset: 512)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2476, file: !38, line: 324, baseType: !2525, size: 64, offset: 64)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{!2482, !651, !131}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2476, file: !38, line: 325, baseType: !2529, size: 64, offset: 128)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{null, !2482}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2476, file: !38, line: 326, baseType: !2479, size: 64, offset: 192)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2476, file: !38, line: 327, baseType: !2479, size: 64, offset: 256)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2476, file: !38, line: 328, baseType: !2479, size: 64, offset: 320)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2476, file: !38, line: 329, baseType: !737, size: 64, offset: 384)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2476, file: !38, line: 332, baseType: !2537, size: 64, offset: 448)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!2540, !486}
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2476, file: !38, line: 333, baseType: !2542, size: 64, offset: 512)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{!131, !486, !2545}
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2476, file: !38, line: 335, baseType: !2547, size: 64, offset: 576)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!131, !486, !2540}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2476, file: !38, line: 337, baseType: !2551, size: 64, offset: 640)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{!131, !651, !2554}
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !652, file: !44, line: 1425, baseType: !2556, size: 64, offset: 512)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2558)
!2558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2559)
!2559 = !{!2560, !2564, !2565, !2569, !2570, !2571, !2586, !2609, !2613, !2614, !2637}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2558, file: !38, line: 429, baseType: !2561, size: 64)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DISubroutineType(types: !2563)
!2563 = !{!131, !651, !131, !131, !601}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2558, file: !38, line: 430, baseType: !737, size: 64, offset: 64)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2558, file: !38, line: 431, baseType: !2566, size: 64, offset: 128)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!131, !651, !7}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2558, file: !38, line: 432, baseType: !2566, size: 64, offset: 192)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2558, file: !38, line: 433, baseType: !737, size: 64, offset: 256)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2558, file: !38, line: 434, baseType: !2572, size: 64, offset: 320)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!131, !651, !131, !2575}
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2577)
!2577 = !{!2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2576, file: !38, line: 416, baseType: !131, size: 32)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2576, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2576, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2576, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2576, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2576, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2576, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2576, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2558, file: !38, line: 435, baseType: !2587, size: 64, offset: 384)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{!131, !651, !2494, !2590}
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2592)
!2592 = !{!2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2591, file: !38, line: 344, baseType: !131, size: 32)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2591, file: !38, line: 345, baseType: !479, size: 64, offset: 64)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2591, file: !38, line: 346, baseType: !479, size: 64, offset: 128)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2591, file: !38, line: 347, baseType: !479, size: 64, offset: 192)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2591, file: !38, line: 348, baseType: !479, size: 64, offset: 256)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2591, file: !38, line: 349, baseType: !479, size: 64, offset: 320)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2591, file: !38, line: 350, baseType: !479, size: 64, offset: 384)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2591, file: !38, line: 351, baseType: !830, size: 64, offset: 448)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2591, file: !38, line: 353, baseType: !830, size: 64, offset: 512)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2591, file: !38, line: 354, baseType: !131, size: 32, offset: 576)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2591, file: !38, line: 355, baseType: !131, size: 32, offset: 608)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2591, file: !38, line: 356, baseType: !479, size: 64, offset: 640)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2591, file: !38, line: 357, baseType: !479, size: 64, offset: 704)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2591, file: !38, line: 358, baseType: !479, size: 64, offset: 768)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2591, file: !38, line: 359, baseType: !830, size: 64, offset: 832)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2591, file: !38, line: 360, baseType: !131, size: 32, offset: 896)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2558, file: !38, line: 436, baseType: !2610, size: 64, offset: 448)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{!131, !651, !2554, !2590}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2558, file: !38, line: 438, baseType: !2587, size: 64, offset: 512)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2558, file: !38, line: 439, baseType: !2615, size: 64, offset: 576)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!131, !651, !2618}
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2620)
!2620 = !{!2621, !2622}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2619, file: !38, line: 410, baseType: !7, size: 32)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2619, file: !38, line: 411, baseType: !2623, size: 1344, offset: 64)
!2623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2624, size: 1344, elements: !337)
!2624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2625)
!2625 = !{!2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2636}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2624, file: !38, line: 396, baseType: !7, size: 32)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2624, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2624, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2624, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2624, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2624, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2624, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2624, file: !38, line: 404, baseType: !481, size: 64, offset: 256)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2624, file: !38, line: 405, baseType: !2635, size: 64, offset: 320)
!2635 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !249, line: 126, baseType: !479)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2624, file: !38, line: 406, baseType: !2635, size: 64, offset: 384)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2558, file: !38, line: 440, baseType: !2566, size: 64, offset: 640)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !652, file: !44, line: 1426, baseType: !2639, size: 64, offset: 576)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2641)
!2641 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !652, file: !44, line: 1427, baseType: !133, size: 64, offset: 640)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !652, file: !44, line: 1428, baseType: !133, size: 64, offset: 704)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !652, file: !44, line: 1429, baseType: !133, size: 64, offset: 768)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !652, file: !44, line: 1430, baseType: !442, size: 64, offset: 832)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !652, file: !44, line: 1431, baseType: !820, size: 256, offset: 896)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !652, file: !44, line: 1432, baseType: !131, size: 32, offset: 1152)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !652, file: !44, line: 1433, baseType: !800, size: 32, offset: 1184)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !652, file: !44, line: 1437, baseType: !2650, size: 64, offset: 1216)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2653)
!2653 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !652, file: !44, line: 1449, baseType: !2655, size: 64, offset: 1280)
!2655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !458, line: 34, size: 64, elements: !2656)
!2656 = !{!2657}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2655, file: !458, line: 35, baseType: !461, size: 64)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !652, file: !44, line: 1450, baseType: !283, size: 128, offset: 1344)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !652, file: !44, line: 1451, baseType: !2660, size: 64, offset: 1472)
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !652, file: !44, line: 1452, baseType: !1970, size: 64, offset: 1536)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !652, file: !44, line: 1453, baseType: !2664, size: 64, offset: 1600)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !652, file: !44, line: 1454, baseType: !691, size: 128, offset: 1664)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !652, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !652, file: !44, line: 1456, baseType: !2669, size: 2432, offset: 1856)
!2669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2670)
!2670 = !{!2671, !2672, !2673, !2675, !2707}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2669, file: !38, line: 519, baseType: !7, size: 32)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2669, file: !38, line: 520, baseType: !820, size: 256, offset: 64)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2669, file: !38, line: 521, baseType: !2674, size: 192, offset: 320)
!2674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !486, size: 192, elements: !337)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2669, file: !38, line: 522, baseType: !2676, size: 1728, offset: 512)
!2676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2677, size: 1728, elements: !337)
!2677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2678)
!2678 = !{!2679, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2677, file: !38, line: 223, baseType: !2680, size: 64)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2682)
!2682 = !{!2683, !2684, !2697, !2698}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2681, file: !38, line: 444, baseType: !131, size: 32)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2681, file: !38, line: 445, baseType: !2685, size: 64, offset: 64)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2687)
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2688)
!2688 = !{!2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2687, file: !38, line: 311, baseType: !737, size: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2687, file: !38, line: 312, baseType: !737, size: 64, offset: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2687, file: !38, line: 313, baseType: !737, size: 64, offset: 128)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2687, file: !38, line: 314, baseType: !737, size: 64, offset: 192)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2687, file: !38, line: 315, baseType: !2479, size: 64, offset: 256)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2687, file: !38, line: 316, baseType: !2479, size: 64, offset: 320)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2687, file: !38, line: 317, baseType: !2479, size: 64, offset: 384)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2687, file: !38, line: 318, baseType: !2551, size: 64, offset: 448)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2681, file: !38, line: 446, baseType: !148, size: 64, offset: 128)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2681, file: !38, line: 447, baseType: !2680, size: 64, offset: 192)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2677, file: !38, line: 224, baseType: !131, size: 32, offset: 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2677, file: !38, line: 226, baseType: !283, size: 128, offset: 128)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2677, file: !38, line: 227, baseType: !133, size: 64, offset: 256)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2677, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2677, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2677, file: !38, line: 230, baseType: !2515, size: 64, offset: 384)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2677, file: !38, line: 231, baseType: !2515, size: 64, offset: 448)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2677, file: !38, line: 232, baseType: !132, size: 64, offset: 512)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2669, file: !38, line: 523, baseType: !2708, size: 192, offset: 2240)
!2708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2685, size: 192, elements: !337)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !652, file: !44, line: 1458, baseType: !2710, size: 2112, offset: 4288)
!2710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2711)
!2711 = !{!2712, !2713, !2714}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2710, file: !44, line: 1411, baseType: !131, size: 32)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2710, file: !44, line: 1412, baseType: !1528, size: 128, offset: 64)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2710, file: !44, line: 1413, baseType: !2715, size: 1920, offset: 192)
!2715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2716, size: 1920, elements: !337)
!2716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2717, line: 12, size: 640, elements: !2718)
!2717 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2718 = !{!2719, !2727, !2728, !2733, !2734}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2716, file: !2717, line: 13, baseType: !2720, size: 320)
!2720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2721, line: 17, size: 320, elements: !2722)
!2721 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2722 = !{!2723, !2724, !2725, !2726}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2720, file: !2721, line: 18, baseType: !131, size: 32)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2720, file: !2721, line: 19, baseType: !131, size: 32, offset: 32)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2720, file: !2721, line: 20, baseType: !1528, size: 128, offset: 64)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2720, file: !2721, line: 22, baseType: !425, size: 128, align: 64, offset: 192)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2716, file: !2717, line: 14, baseType: !204, size: 64, offset: 320)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2716, file: !2717, line: 15, baseType: !2729, size: 64, offset: 384)
!2729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2730, line: 16, size: 64, elements: !2731)
!2730 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2731 = !{!2732}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2729, file: !2730, line: 17, baseType: !1265, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2716, file: !2717, line: 16, baseType: !1528, size: 128, offset: 448)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2716, file: !2717, line: 17, baseType: !800, size: 32, offset: 576)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !652, file: !44, line: 1465, baseType: !132, size: 64, offset: 6400)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !652, file: !44, line: 1468, baseType: !475, size: 32, offset: 6464)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !652, file: !44, line: 1470, baseType: !591, size: 64, offset: 6528)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !652, file: !44, line: 1471, baseType: !591, size: 64, offset: 6592)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !652, file: !44, line: 1473, baseType: !476, size: 32, offset: 6656)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !652, file: !44, line: 1474, baseType: !2741, size: 64, offset: 6720)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !652, file: !44, line: 1477, baseType: !2744, size: 256, offset: 6784)
!2744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 256, elements: !2275)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !652, file: !44, line: 1478, baseType: !2746, size: 128, offset: 7040)
!2746 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2747, line: 18, baseType: !2748)
!2747 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2748 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2747, line: 16, size: 128, elements: !2749)
!2749 = !{!2750}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2748, file: !2747, line: 17, baseType: !2751, size: 128)
!2751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 128, elements: !1782)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !652, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !652, file: !44, line: 1481, baseType: !2754, size: 32, offset: 7200)
!2754 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !249, line: 150, baseType: !7)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !652, file: !44, line: 1487, baseType: !1222, size: 192, offset: 7232)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !652, file: !44, line: 1493, baseType: !144, size: 64, offset: 7424)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !652, file: !44, line: 1495, baseType: !2758, size: 64, offset: 7488)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2760)
!2760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !440, line: 135, size: 1024, align: 512, elements: !2761)
!2761 = !{!2762, !2766, !2767, !2774, !2780, !2784, !2788, !2792, !2793, !2797, !2801, !2806, !2810}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2760, file: !440, line: 136, baseType: !2763, size: 64)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!131, !442, !7}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2760, file: !440, line: 137, baseType: !2763, size: 64, offset: 64)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2760, file: !440, line: 138, baseType: !2768, size: 64, offset: 128)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = !DISubroutineType(types: !2770)
!2770 = !{!131, !2771, !2773}
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !443)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2760, file: !440, line: 139, baseType: !2775, size: 64, offset: 192)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!131, !2771, !7, !144, !2778}
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !466)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2760, file: !440, line: 141, baseType: !2781, size: 64, offset: 256)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!131, !2771}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2760, file: !440, line: 142, baseType: !2785, size: 64, offset: 320)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{!131, !442}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2760, file: !440, line: 143, baseType: !2789, size: 64, offset: 384)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{null, !442}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2760, file: !440, line: 144, baseType: !2789, size: 64, offset: 448)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2760, file: !440, line: 145, baseType: !2794, size: 64, offset: 512)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{null, !442, !486}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2760, file: !440, line: 146, baseType: !2798, size: 64, offset: 576)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!166, !442, !166, !131}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2760, file: !440, line: 147, baseType: !2802, size: 64, offset: 640)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!438, !2805}
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2760, file: !440, line: 148, baseType: !2807, size: 64, offset: 704)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{!131, !601, !248}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2760, file: !440, line: 149, baseType: !2811, size: 64, offset: 768)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!442, !442, !2814}
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !487)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !652, file: !44, line: 1500, baseType: !131, size: 32, offset: 7552)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !652, file: !44, line: 1502, baseType: !2818, size: 448, offset: 7616)
!2818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2463, line: 60, size: 448, elements: !2819)
!2819 = !{!2820, !2825, !2826, !2827, !2828, !2829, !2830}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2818, file: !2463, line: 61, baseType: !2821, size: 64)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{!133, !2824, !2461}
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2818, file: !2463, line: 63, baseType: !2821, size: 64, offset: 64)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2818, file: !2463, line: 66, baseType: !371, size: 64, offset: 128)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2818, file: !2463, line: 67, baseType: !131, size: 32, offset: 192)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2818, file: !2463, line: 68, baseType: !7, size: 32, offset: 224)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2818, file: !2463, line: 71, baseType: !283, size: 128, offset: 256)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2818, file: !2463, line: 77, baseType: !2831, size: 64, offset: 384)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !652, file: !44, line: 1505, baseType: !824, size: 64, offset: 8064)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !652, file: !44, line: 1508, baseType: !824, size: 64, offset: 8128)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !652, file: !44, line: 1511, baseType: !131, size: 32, offset: 8192)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !652, file: !44, line: 1514, baseType: !960, size: 32, offset: 8224)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !652, file: !44, line: 1517, baseType: !2837, size: 64, offset: 8256)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2005, line: 18, flags: DIFlagFwdDecl)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !652, file: !44, line: 1518, baseType: !687, size: 64, offset: 8320)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !652, file: !44, line: 1525, baseType: !1760, size: 64, offset: 8384)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !652, file: !44, line: 1532, baseType: !2842, size: 64, offset: 8448)
!2842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2843, line: 52, size: 64, elements: !2844)
!2843 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2844 = !{!2845}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2842, file: !2843, line: 53, baseType: !2846, size: 64)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2843, line: 40, size: 256, elements: !2848)
!2848 = !{!2849, !2850, !2855}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2847, file: !2843, line: 42, baseType: !296)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2847, file: !2843, line: 44, baseType: !2851, size: 192)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2843, line: 28, size: 192, elements: !2852)
!2852 = !{!2853, !2854}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2851, file: !2843, line: 29, baseType: !283, size: 128)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2851, file: !2843, line: 31, baseType: !371, size: 64, offset: 128)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2847, file: !2843, line: 49, baseType: !371, size: 64, offset: 192)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !652, file: !44, line: 1533, baseType: !2842, size: 64, offset: 8512)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !652, file: !44, line: 1534, baseType: !425, size: 128, align: 64, offset: 8576)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !652, file: !44, line: 1535, baseType: !2004, size: 256, offset: 8704)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !652, file: !44, line: 1537, baseType: !1222, size: 192, offset: 8960)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !652, file: !44, line: 1542, baseType: !131, size: 32, offset: 9152)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !652, file: !44, line: 1545, baseType: !296, offset: 9184)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !652, file: !44, line: 1546, baseType: !283, size: 128, offset: 9216)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !652, file: !44, line: 1548, baseType: !296, offset: 9344)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !652, file: !44, line: 1549, baseType: !283, size: 128, offset: 9344)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !487, file: !44, line: 624, baseType: !786, size: 64, offset: 256)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !487, file: !44, line: 631, baseType: !133, size: 64, offset: 320)
!2867 = !DIDerivedType(tag: DW_TAG_member, scope: !487, file: !44, line: 639, baseType: !2868, size: 32, offset: 384)
!2868 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !487, file: !44, line: 639, size: 32, elements: !2869)
!2869 = !{!2870, !2872}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2868, file: !44, line: 640, baseType: !2871, size: 32)
!2871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2868, file: !44, line: 641, baseType: !7, size: 32)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !487, file: !44, line: 643, baseType: !565, size: 32, offset: 416)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !487, file: !44, line: 644, baseType: !583, size: 64, offset: 448)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !487, file: !44, line: 645, baseType: !587, size: 128, offset: 512)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !487, file: !44, line: 646, baseType: !587, size: 128, offset: 640)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !487, file: !44, line: 647, baseType: !587, size: 128, offset: 768)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !487, file: !44, line: 648, baseType: !296, offset: 896)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !487, file: !44, line: 649, baseType: !177, size: 16, offset: 896)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !487, file: !44, line: 650, baseType: !183, size: 8, offset: 912)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !487, file: !44, line: 651, baseType: !183, size: 8, offset: 920)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !487, file: !44, line: 652, baseType: !2635, size: 64, offset: 960)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !487, file: !44, line: 659, baseType: !133, size: 64, offset: 1024)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !487, file: !44, line: 660, baseType: !820, size: 256, offset: 1088)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !487, file: !44, line: 662, baseType: !133, size: 64, offset: 1344)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !487, file: !44, line: 663, baseType: !133, size: 64, offset: 1408)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !487, file: !44, line: 665, baseType: !691, size: 128, offset: 1472)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !487, file: !44, line: 666, baseType: !283, size: 128, offset: 1600)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !487, file: !44, line: 675, baseType: !283, size: 128, offset: 1728)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !487, file: !44, line: 676, baseType: !283, size: 128, offset: 1856)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !487, file: !44, line: 677, baseType: !283, size: 128, offset: 1984)
!2892 = !DIDerivedType(tag: DW_TAG_member, scope: !487, file: !44, line: 678, baseType: !2893, size: 128, offset: 2112)
!2893 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !487, file: !44, line: 678, size: 128, elements: !2894)
!2894 = !{!2895, !2896}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2893, file: !44, line: 679, baseType: !687, size: 64)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2893, file: !44, line: 680, baseType: !425, size: 128, align: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !487, file: !44, line: 682, baseType: !826, size: 64, offset: 2240)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !487, file: !44, line: 683, baseType: !826, size: 64, offset: 2304)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !487, file: !44, line: 684, baseType: !800, size: 32, offset: 2368)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !487, file: !44, line: 685, baseType: !800, size: 32, offset: 2400)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !487, file: !44, line: 686, baseType: !800, size: 32, offset: 2432)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !487, file: !44, line: 688, baseType: !800, size: 32, offset: 2464)
!2903 = !DIDerivedType(tag: DW_TAG_member, scope: !487, file: !44, line: 690, baseType: !2904, size: 64, offset: 2496)
!2904 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !487, file: !44, line: 690, size: 64, elements: !2905)
!2905 = !{!2906, !3129}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2904, file: !44, line: 691, baseType: !2907, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2909)
!2909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2910)
!2910 = !{!2911, !2912, !2916, !2921, !2925, !2926, !2927, !2931, !2944, !2945, !2953, !2957, !2958, !2962, !2963, !2967, !2972, !2973, !2977, !2981, !3089, !3093, !3094, !3098, !3099, !3103, !3107, !3112, !3116, !3120, !3124, !3128}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2909, file: !44, line: 1823, baseType: !148, size: 64)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2909, file: !44, line: 1824, baseType: !2913, size: 64, offset: 64)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{!583, !412, !583, !131}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2909, file: !44, line: 1825, baseType: !2917, size: 64, offset: 128)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!367, !412, !166, !382, !2920}
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2909, file: !44, line: 1826, baseType: !2922, size: 64, offset: 192)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!367, !412, !144, !382, !2920}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2909, file: !44, line: 1827, baseType: !897, size: 64, offset: 256)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2909, file: !44, line: 1828, baseType: !897, size: 64, offset: 320)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2909, file: !44, line: 1829, baseType: !2928, size: 64, offset: 384)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!131, !900, !248}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2909, file: !44, line: 1830, baseType: !2932, size: 64, offset: 448)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{!131, !412, !2935}
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2937)
!2937 = !{!2938, !2943}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2936, file: !44, line: 1777, baseType: !2939, size: 64)
!2939 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2940)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!131, !2935, !144, !131, !583, !479, !7}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2936, file: !44, line: 1778, baseType: !583, size: 64, offset: 64)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2909, file: !44, line: 1831, baseType: !2932, size: 64, offset: 512)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2909, file: !44, line: 1832, baseType: !2946, size: 64, offset: 576)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{!2949, !412, !2951}
!2949 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2950, line: 52, baseType: !7)
!2950 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !671, line: 27, flags: DIFlagFwdDecl)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2909, file: !44, line: 1833, baseType: !2954, size: 64, offset: 640)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{!371, !412, !7, !133}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2909, file: !44, line: 1834, baseType: !2954, size: 64, offset: 704)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2909, file: !44, line: 1835, baseType: !2959, size: 64, offset: 768)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{!131, !412, !1032}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2909, file: !44, line: 1836, baseType: !133, size: 64, offset: 832)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2909, file: !44, line: 1837, baseType: !2964, size: 64, offset: 896)
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{!131, !486, !412}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2909, file: !44, line: 1838, baseType: !2968, size: 64, offset: 960)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = !DISubroutineType(types: !2970)
!2970 = !{!131, !412, !2971}
!2971 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !132)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2909, file: !44, line: 1839, baseType: !2964, size: 64, offset: 1024)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2909, file: !44, line: 1840, baseType: !2974, size: 64, offset: 1088)
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2975 = !DISubroutineType(types: !2976)
!2976 = !{!131, !412, !583, !583, !131}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2909, file: !44, line: 1841, baseType: !2978, size: 64, offset: 1152)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{!131, !131, !412, !131}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2909, file: !44, line: 1842, baseType: !2982, size: 64, offset: 1216)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{!131, !412, !131, !2985}
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2987)
!2987 = !{!2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3019, !3020, !3021, !3034, !3065}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2986, file: !44, line: 1063, baseType: !2985, size: 64)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2986, file: !44, line: 1064, baseType: !283, size: 128, offset: 64)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2986, file: !44, line: 1065, baseType: !691, size: 128, offset: 192)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2986, file: !44, line: 1066, baseType: !283, size: 128, offset: 320)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2986, file: !44, line: 1069, baseType: !283, size: 128, offset: 448)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2986, file: !44, line: 1072, baseType: !2971, size: 64, offset: 576)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2986, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2986, file: !44, line: 1074, baseType: !130, size: 8, offset: 672)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2986, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2986, file: !44, line: 1076, baseType: !131, size: 32, offset: 736)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2986, file: !44, line: 1077, baseType: !1528, size: 128, offset: 768)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2986, file: !44, line: 1078, baseType: !412, size: 64, offset: 896)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2986, file: !44, line: 1079, baseType: !583, size: 64, offset: 960)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2986, file: !44, line: 1080, baseType: !583, size: 64, offset: 1024)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2986, file: !44, line: 1082, baseType: !3003, size: 64, offset: 1088)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !3005)
!3005 = !{!3006, !3014, !3015, !3016, !3017, !3018}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3004, file: !44, line: 1315, baseType: !3007)
!3007 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3008, line: 20, baseType: !3009)
!3008 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3009 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3008, line: 11, elements: !3010)
!3010 = !{!3011}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3009, file: !3008, line: 12, baseType: !3012)
!3012 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !308, line: 33, baseType: !3013)
!3013 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !308, line: 31, elements: !310)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3004, file: !44, line: 1316, baseType: !131, size: 32)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3004, file: !44, line: 1317, baseType: !131, size: 32, offset: 32)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3004, file: !44, line: 1318, baseType: !3003, size: 64, offset: 64)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3004, file: !44, line: 1319, baseType: !412, size: 64, offset: 128)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3004, file: !44, line: 1320, baseType: !425, size: 128, align: 64, offset: 192)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2986, file: !44, line: 1084, baseType: !133, size: 64, offset: 1152)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2986, file: !44, line: 1085, baseType: !133, size: 64, offset: 1216)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2986, file: !44, line: 1087, baseType: !3022, size: 64, offset: 1280)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3024)
!3024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !3025)
!3025 = !{!3026, !3030}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3024, file: !44, line: 1012, baseType: !3027, size: 64)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{null, !2985, !2985}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3024, file: !44, line: 1013, baseType: !3031, size: 64, offset: 64)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{null, !2985}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2986, file: !44, line: 1088, baseType: !3035, size: 64, offset: 1344)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3037)
!3037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !3038)
!3038 = !{!3039, !3043, !3047, !3048, !3052, !3056, !3060, !3064}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3037, file: !44, line: 1017, baseType: !3040, size: 64)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{!2971, !2971}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3037, file: !44, line: 1018, baseType: !3044, size: 64, offset: 64)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{null, !2971}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3037, file: !44, line: 1019, baseType: !3031, size: 64, offset: 128)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3037, file: !44, line: 1020, baseType: !3049, size: 64, offset: 192)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{!131, !2985, !131}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3037, file: !44, line: 1021, baseType: !3053, size: 64, offset: 256)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = !DISubroutineType(types: !3055)
!3055 = !{!248, !2985}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3037, file: !44, line: 1022, baseType: !3057, size: 64, offset: 320)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{!131, !2985, !131, !286}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3037, file: !44, line: 1023, baseType: !3061, size: 64, offset: 384)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{null, !2985, !874}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3037, file: !44, line: 1024, baseType: !3053, size: 64, offset: 448)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2986, file: !44, line: 1097, baseType: !3066, size: 256, offset: 1408)
!3066 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2986, file: !44, line: 1089, size: 256, elements: !3067)
!3067 = !{!3068, !3077, !3083}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3066, file: !44, line: 1090, baseType: !3069, size: 256)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3070, line: 10, size: 256, elements: !3071)
!3070 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3071 = !{!3072, !3073, !3076}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3069, file: !3070, line: 11, baseType: !475, size: 32)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3069, file: !3070, line: 12, baseType: !3074, size: 64, offset: 64)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3070, line: 5, flags: DIFlagFwdDecl)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3069, file: !3070, line: 13, baseType: !283, size: 128, offset: 128)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3066, file: !44, line: 1091, baseType: !3078, size: 64)
!3078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3070, line: 17, size: 64, elements: !3079)
!3079 = !{!3080}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3078, file: !3070, line: 18, baseType: !3081, size: 64)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3070, line: 16, flags: DIFlagFwdDecl)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3066, file: !44, line: 1096, baseType: !3084, size: 192)
!3084 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3066, file: !44, line: 1092, size: 192, elements: !3085)
!3085 = !{!3086, !3087, !3088}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3084, file: !44, line: 1093, baseType: !283, size: 128)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3084, file: !44, line: 1094, baseType: !131, size: 32, offset: 128)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3084, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2909, file: !44, line: 1843, baseType: !3090, size: 64, offset: 1280)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{!367, !412, !773, !131, !382, !2920, !131}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2909, file: !44, line: 1844, baseType: !1152, size: 64, offset: 1344)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2909, file: !44, line: 1845, baseType: !3095, size: 64, offset: 1408)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{!131, !131}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2909, file: !44, line: 1846, baseType: !2982, size: 64, offset: 1472)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2909, file: !44, line: 1847, baseType: !3100, size: 64, offset: 1536)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!367, !2145, !412, !2920, !382, !7}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2909, file: !44, line: 1848, baseType: !3104, size: 64, offset: 1600)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{!367, !412, !2920, !2145, !382, !7}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2909, file: !44, line: 1849, baseType: !3108, size: 64, offset: 1664)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{!131, !412, !371, !3111, !874}
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2909, file: !44, line: 1850, baseType: !3113, size: 64, offset: 1728)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{!371, !412, !131, !583, !583}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2909, file: !44, line: 1852, baseType: !3117, size: 64, offset: 1792)
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{null, !763, !412}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2909, file: !44, line: 1856, baseType: !3121, size: 64, offset: 1856)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{!367, !412, !583, !412, !583, !382, !7}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2909, file: !44, line: 1858, baseType: !3125, size: 64, offset: 1920)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{!583, !412, !583, !412, !583, !583, !7}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2909, file: !44, line: 1861, baseType: !2974, size: 64, offset: 1984)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2904, file: !44, line: 692, baseType: !716, size: 64)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !487, file: !44, line: 694, baseType: !3131, size: 64, offset: 2560)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3133)
!3133 = !{!3134, !3135, !3136, !3137}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3132, file: !44, line: 1101, baseType: !296)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3132, file: !44, line: 1102, baseType: !283, size: 128)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3132, file: !44, line: 1103, baseType: !283, size: 128, offset: 128)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3132, file: !44, line: 1104, baseType: !283, size: 128, offset: 256)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !487, file: !44, line: 695, baseType: !787, size: 1216, align: 64, offset: 2624)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !487, file: !44, line: 696, baseType: !283, size: 128, offset: 3840)
!3140 = !DIDerivedType(tag: DW_TAG_member, scope: !487, file: !44, line: 697, baseType: !3141, size: 64, offset: 3968)
!3141 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !487, file: !44, line: 697, size: 64, elements: !3142)
!3142 = !{!3143, !3144, !3145, !3148, !3149}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3141, file: !44, line: 698, baseType: !2145, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3141, file: !44, line: 699, baseType: !2660, size: 64)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3141, file: !44, line: 700, baseType: !3146, size: 64)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3141, file: !44, line: 701, baseType: !166, size: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3141, file: !44, line: 702, baseType: !7, size: 32)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !487, file: !44, line: 705, baseType: !476, size: 32, offset: 4032)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !487, file: !44, line: 708, baseType: !476, size: 32, offset: 4064)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !487, file: !44, line: 709, baseType: !2741, size: 64, offset: 4096)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !487, file: !44, line: 720, baseType: !132, size: 64, offset: 4160)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !443, file: !440, line: 98, baseType: !3155, size: 256, offset: 448)
!3155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 256, elements: !2275)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !443, file: !440, line: 101, baseType: !3157, size: 32, offset: 704)
!3157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3158, line: 25, size: 32, elements: !3159)
!3158 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3159 = !{!3160}
!3160 = !DIDerivedType(tag: DW_TAG_member, scope: !3157, file: !3158, line: 26, baseType: !3161, size: 32)
!3161 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3157, file: !3158, line: 26, size: 32, elements: !3162)
!3162 = !{!3163}
!3163 = !DIDerivedType(tag: DW_TAG_member, scope: !3161, file: !3158, line: 30, baseType: !3164, size: 32)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3161, file: !3158, line: 30, size: 32, elements: !3165)
!3165 = !{!3166, !3167}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3164, file: !3158, line: 31, baseType: !296)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3164, file: !3158, line: 32, baseType: !131, size: 32)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !443, file: !440, line: 102, baseType: !2758, size: 64, offset: 768)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !443, file: !440, line: 103, baseType: !651, size: 64, offset: 832)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !443, file: !440, line: 104, baseType: !133, size: 64, offset: 896)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !443, file: !440, line: 105, baseType: !132, size: 64, offset: 960)
!3172 = !DIDerivedType(tag: DW_TAG_member, scope: !443, file: !440, line: 107, baseType: !3173, size: 128, offset: 1024)
!3173 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !443, file: !440, line: 107, size: 128, elements: !3174)
!3174 = !{!3175, !3176}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3173, file: !440, line: 108, baseType: !283, size: 128)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3173, file: !440, line: 109, baseType: !3177, size: 64)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !443, file: !440, line: 111, baseType: !283, size: 128, offset: 1152)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !443, file: !440, line: 112, baseType: !283, size: 128, offset: 1280)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !443, file: !440, line: 120, baseType: !3181, size: 128, offset: 1408)
!3181 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !443, file: !440, line: 116, size: 128, elements: !3182)
!3182 = !{!3183, !3184, !3185}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3181, file: !440, line: 117, baseType: !691, size: 128)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3181, file: !440, line: 118, baseType: !457, size: 128)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3181, file: !440, line: 119, baseType: !425, size: 128, align: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !413, file: !44, line: 922, baseType: !486, size: 64, offset: 256)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !413, file: !44, line: 923, baseType: !2907, size: 64, offset: 320)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !413, file: !44, line: 929, baseType: !296, offset: 384)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !413, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !413, file: !44, line: 931, baseType: !824, size: 64, offset: 448)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !413, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !413, file: !44, line: 933, baseType: !2754, size: 32, offset: 544)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !413, file: !44, line: 934, baseType: !1222, size: 192, offset: 576)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !413, file: !44, line: 935, baseType: !583, size: 64, offset: 768)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !413, file: !44, line: 936, baseType: !3196, size: 192, offset: 832)
!3196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3197)
!3197 = !{!3198, !3199, !3200, !3201, !3202, !3203}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3196, file: !44, line: 886, baseType: !3007)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3196, file: !44, line: 887, baseType: !1518, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3196, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3196, file: !44, line: 889, baseType: !492, size: 32, offset: 96)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3196, file: !44, line: 889, baseType: !492, size: 32, offset: 128)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3196, file: !44, line: 890, baseType: !131, size: 32, offset: 160)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !413, file: !44, line: 937, baseType: !1594, size: 64, offset: 1024)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !413, file: !44, line: 938, baseType: !3206, size: 256, offset: 1088)
!3206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3207)
!3207 = !{!3208, !3209, !3210, !3211, !3212, !3213}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3206, file: !44, line: 897, baseType: !133, size: 64)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3206, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3206, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3206, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3206, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3206, file: !44, line: 904, baseType: !583, size: 64, offset: 192)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !413, file: !44, line: 940, baseType: !479, size: 64, offset: 1344)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !413, file: !44, line: 945, baseType: !132, size: 64, offset: 1408)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !413, file: !44, line: 949, baseType: !283, size: 128, offset: 1472)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !413, file: !44, line: 950, baseType: !283, size: 128, offset: 1600)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !413, file: !44, line: 952, baseType: !786, size: 64, offset: 1728)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !413, file: !44, line: 953, baseType: !960, size: 32, offset: 1792)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !413, file: !44, line: 954, baseType: !960, size: 32, offset: 1824)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !403, file: !361, line: 174, baseType: !409, size: 64, offset: 320)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !403, file: !361, line: 176, baseType: !3223, size: 64, offset: 384)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DISubroutineType(types: !3225)
!3225 = !{!131, !412, !289, !402, !1032}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !391, file: !361, line: 90, baseType: !386, size: 64, offset: 192)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !391, file: !361, line: 91, baseType: !3228, size: 64, offset: 256)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !351, file: !279, line: 143, baseType: !3230, size: 64, offset: 256)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!3233, !289}
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3235)
!3235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3236)
!3236 = !{!3237, !3238, !3242, !3246, !3252, !3256}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3235, file: !61, line: 40, baseType: !60, size: 32)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3235, file: !61, line: 41, baseType: !3239, size: 64, offset: 64)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{!248}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3235, file: !61, line: 42, baseType: !3243, size: 64, offset: 128)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = !DISubroutineType(types: !3245)
!3245 = !{!132}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3235, file: !61, line: 43, baseType: !3247, size: 64, offset: 192)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{!2174, !3250}
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3235, file: !61, line: 44, baseType: !3253, size: 64, offset: 256)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{!2174}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3235, file: !61, line: 45, baseType: !168, size: 64, offset: 320)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !351, file: !279, line: 144, baseType: !3258, size: 64, offset: 320)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{!2174, !289}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !351, file: !279, line: 145, baseType: !3262, size: 64, offset: 384)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = !DISubroutineType(types: !3264)
!3264 = !{null, !289, !3265, !3266}
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !278, file: !279, line: 70, baseType: !3268, size: 64, offset: 384)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !671, line: 123, size: 1024, elements: !3270)
!3270 = !{!3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3399, !3400, !3401, !3402, !3403}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3269, file: !671, line: 124, baseType: !800, size: 32)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3269, file: !671, line: 125, baseType: !800, size: 32, offset: 32)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3269, file: !671, line: 135, baseType: !3268, size: 64, offset: 64)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3269, file: !671, line: 136, baseType: !144, size: 64, offset: 128)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3269, file: !671, line: 138, baseType: !813, size: 192, align: 64, offset: 192)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3269, file: !671, line: 140, baseType: !2174, size: 64, offset: 384)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3269, file: !671, line: 141, baseType: !7, size: 32, offset: 448)
!3278 = !DIDerivedType(tag: DW_TAG_member, scope: !3269, file: !671, line: 142, baseType: !3279, size: 256, offset: 512)
!3279 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3269, file: !671, line: 142, size: 256, elements: !3280)
!3280 = !{!3281, !3327, !3331}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3279, file: !671, line: 143, baseType: !3282, size: 192)
!3282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !671, line: 91, size: 192, elements: !3283)
!3283 = !{!3284, !3285, !3286}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3282, file: !671, line: 92, baseType: !133, size: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3282, file: !671, line: 94, baseType: !809, size: 64, offset: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3282, file: !671, line: 100, baseType: !3287, size: 64, offset: 128)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !671, line: 180, size: 704, elements: !3289)
!3289 = !{!3290, !3291, !3292, !3299, !3300, !3301, !3325, !3326}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3288, file: !671, line: 182, baseType: !3268, size: 64)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3288, file: !671, line: 183, baseType: !7, size: 32, offset: 64)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3288, file: !671, line: 186, baseType: !3293, size: 192, offset: 128)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3294, line: 19, size: 192, elements: !3295)
!3294 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3295 = !{!3296, !3297, !3298}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3293, file: !3294, line: 20, baseType: !791, size: 128)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3293, file: !3294, line: 21, baseType: !7, size: 32, offset: 128)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3293, file: !3294, line: 22, baseType: !7, size: 32, offset: 160)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3288, file: !671, line: 187, baseType: !475, size: 32, offset: 320)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3288, file: !671, line: 188, baseType: !475, size: 32, offset: 352)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3288, file: !671, line: 189, baseType: !3302, size: 64, offset: 384)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !671, line: 168, size: 320, elements: !3304)
!3304 = !{!3305, !3309, !3313, !3317, !3321}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3303, file: !671, line: 169, baseType: !3306, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!131, !763, !3287}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3303, file: !671, line: 171, baseType: !3310, size: 64, offset: 64)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{!131, !3268, !144, !377}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3303, file: !671, line: 173, baseType: !3314, size: 64, offset: 128)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{!131, !3268}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3303, file: !671, line: 174, baseType: !3318, size: 64, offset: 192)
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{!131, !3268, !3268, !144}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3303, file: !671, line: 176, baseType: !3322, size: 64, offset: 256)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{!131, !763, !3268, !3287}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3288, file: !671, line: 192, baseType: !283, size: 128, offset: 448)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3288, file: !671, line: 194, baseType: !1528, size: 128, offset: 576)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3279, file: !671, line: 144, baseType: !3328, size: 64)
!3328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !671, line: 103, size: 64, elements: !3329)
!3329 = !{!3330}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3328, file: !671, line: 104, baseType: !3268, size: 64)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3279, file: !671, line: 145, baseType: !3332, size: 256)
!3332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !671, line: 107, size: 256, elements: !3333)
!3333 = !{!3334, !3394, !3397, !3398}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3332, file: !671, line: 108, baseType: !3335, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3337)
!3337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !671, line: 217, size: 768, elements: !3338)
!3338 = !{!3339, !3359, !3363, !3367, !3371, !3375, !3379, !3383, !3384, !3385, !3386, !3390}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3337, file: !671, line: 222, baseType: !3340, size: 64)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = !DISubroutineType(types: !3342)
!3342 = !{!131, !3343}
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !671, line: 197, size: 1088, elements: !3345)
!3345 = !{!3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3344, file: !671, line: 199, baseType: !3268, size: 64)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3344, file: !671, line: 200, baseType: !412, size: 64, offset: 64)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3344, file: !671, line: 201, baseType: !763, size: 64, offset: 128)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3344, file: !671, line: 202, baseType: !132, size: 64, offset: 192)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3344, file: !671, line: 205, baseType: !1222, size: 192, offset: 256)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3344, file: !671, line: 206, baseType: !1222, size: 192, offset: 448)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3344, file: !671, line: 207, baseType: !131, size: 32, offset: 640)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3344, file: !671, line: 208, baseType: !283, size: 128, offset: 704)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3344, file: !671, line: 209, baseType: !166, size: 64, offset: 832)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3344, file: !671, line: 211, baseType: !382, size: 64, offset: 896)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3344, file: !671, line: 212, baseType: !248, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3344, file: !671, line: 213, baseType: !248, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3344, file: !671, line: 214, baseType: !1060, size: 64, offset: 1024)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3337, file: !671, line: 223, baseType: !3360, size: 64, offset: 64)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{null, !3343}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3337, file: !671, line: 236, baseType: !3364, size: 64, offset: 128)
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{!131, !763, !132}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3337, file: !671, line: 238, baseType: !3368, size: 64, offset: 192)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = !DISubroutineType(types: !3370)
!3370 = !{!132, !763, !2920}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3337, file: !671, line: 239, baseType: !3372, size: 64, offset: 256)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!132, !763, !132, !2920}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3337, file: !671, line: 240, baseType: !3376, size: 64, offset: 320)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{null, !763, !132}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3337, file: !671, line: 242, baseType: !3380, size: 64, offset: 384)
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = !DISubroutineType(types: !3382)
!3382 = !{!367, !3343, !166, !382, !583}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3337, file: !671, line: 252, baseType: !382, size: 64, offset: 448)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3337, file: !671, line: 259, baseType: !248, size: 8, offset: 512)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3337, file: !671, line: 260, baseType: !3380, size: 64, offset: 576)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3337, file: !671, line: 263, baseType: !3387, size: 64, offset: 640)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{!2949, !3343, !2951}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3337, file: !671, line: 266, baseType: !3391, size: 64, offset: 704)
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{!131, !3343, !1032}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3332, file: !671, line: 109, baseType: !3395, size: 64, offset: 64)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !671, line: 31, flags: DIFlagFwdDecl)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3332, file: !671, line: 110, baseType: !583, size: 64, offset: 128)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3332, file: !671, line: 111, baseType: !3268, size: 64, offset: 192)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3269, file: !671, line: 148, baseType: !132, size: 64, offset: 768)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3269, file: !671, line: 154, baseType: !479, size: 64, offset: 832)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3269, file: !671, line: 156, baseType: !177, size: 16, offset: 896)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3269, file: !671, line: 157, baseType: !377, size: 16, offset: 912)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3269, file: !671, line: 158, baseType: !3404, size: 64, offset: 960)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !671, line: 32, flags: DIFlagFwdDecl)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !278, file: !279, line: 71, baseType: !3407, size: 32, offset: 448)
!3407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3408, line: 19, size: 32, elements: !3409)
!3408 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3409 = !{!3410}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3407, file: !3408, line: 20, baseType: !1279, size: 32)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !278, file: !279, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !278, file: !279, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !278, file: !279, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !278, file: !279, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !278, file: !279, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !275, file: !73, line: 463, baseType: !274, size: 64, offset: 512)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !275, file: !73, line: 465, baseType: !3418, size: 64, offset: 576)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !275, file: !73, line: 467, baseType: !144, size: 64, offset: 640)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !275, file: !73, line: 468, baseType: !3422, size: 64, offset: 704)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3424)
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3425)
!3425 = !{!3426, !3427, !3428, !3432, !3437, !3441}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3424, file: !73, line: 88, baseType: !144, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3424, file: !73, line: 89, baseType: !388, size: 64, offset: 64)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3424, file: !73, line: 90, baseType: !3429, size: 64, offset: 128)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3430 = !DISubroutineType(types: !3431)
!3431 = !{!131, !274, !332}
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3424, file: !73, line: 91, baseType: !3433, size: 64, offset: 192)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{!166, !274, !3436, !3265, !3266}
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3424, file: !73, line: 93, baseType: !3438, size: 64, offset: 256)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = !DISubroutineType(types: !3440)
!3440 = !{null, !274}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3424, file: !73, line: 95, baseType: !3442, size: 64, offset: 320)
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3443, size: 64)
!3443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3444)
!3444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3445)
!3445 = !{!3446, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3444, file: !80, line: 279, baseType: !3447, size: 64)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{!131, !274}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3444, file: !80, line: 280, baseType: !3438, size: 64, offset: 64)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3444, file: !80, line: 281, baseType: !3447, size: 64, offset: 128)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3444, file: !80, line: 282, baseType: !3447, size: 64, offset: 192)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3444, file: !80, line: 283, baseType: !3447, size: 64, offset: 256)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3444, file: !80, line: 284, baseType: !3447, size: 64, offset: 320)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3444, file: !80, line: 285, baseType: !3447, size: 64, offset: 384)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3444, file: !80, line: 286, baseType: !3447, size: 64, offset: 448)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3444, file: !80, line: 287, baseType: !3447, size: 64, offset: 512)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3444, file: !80, line: 288, baseType: !3447, size: 64, offset: 576)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3444, file: !80, line: 289, baseType: !3447, size: 64, offset: 640)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3444, file: !80, line: 290, baseType: !3447, size: 64, offset: 704)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3444, file: !80, line: 291, baseType: !3447, size: 64, offset: 768)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3444, file: !80, line: 292, baseType: !3447, size: 64, offset: 832)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3444, file: !80, line: 293, baseType: !3447, size: 64, offset: 896)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3444, file: !80, line: 294, baseType: !3447, size: 64, offset: 960)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3444, file: !80, line: 295, baseType: !3447, size: 64, offset: 1024)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3444, file: !80, line: 296, baseType: !3447, size: 64, offset: 1088)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3444, file: !80, line: 297, baseType: !3447, size: 64, offset: 1152)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3444, file: !80, line: 298, baseType: !3447, size: 64, offset: 1216)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3444, file: !80, line: 299, baseType: !3447, size: 64, offset: 1280)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3444, file: !80, line: 300, baseType: !3447, size: 64, offset: 1344)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3444, file: !80, line: 301, baseType: !3447, size: 64, offset: 1408)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !275, file: !73, line: 470, baseType: !3473, size: 64, offset: 768)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3475, line: 82, size: 1408, elements: !3476)
!3475 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3476 = !{!3477, !3478, !3479, !3480, !3481, !3482, !3483, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3558, !3561, !3562}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3474, file: !3475, line: 83, baseType: !144, size: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3474, file: !3475, line: 84, baseType: !144, size: 64, offset: 64)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3474, file: !3475, line: 85, baseType: !274, size: 64, offset: 128)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3474, file: !3475, line: 86, baseType: !388, size: 64, offset: 192)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3474, file: !3475, line: 87, baseType: !388, size: 64, offset: 256)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3474, file: !3475, line: 88, baseType: !388, size: 64, offset: 320)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3474, file: !3475, line: 90, baseType: !3484, size: 64, offset: 384)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DISubroutineType(types: !3486)
!3486 = !{!131, !274, !3487}
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3489)
!3489 = !{!3490, !3491, !3492, !3493, !3494, !3495, !3496, !3509, !3522, !3523, !3524, !3525, !3526, !3534, !3535, !3536, !3537, !3538, !3539}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3488, file: !67, line: 96, baseType: !144, size: 64)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3488, file: !67, line: 97, baseType: !3473, size: 64, offset: 64)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3488, file: !67, line: 99, baseType: !148, size: 64, offset: 128)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3488, file: !67, line: 100, baseType: !144, size: 64, offset: 192)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3488, file: !67, line: 102, baseType: !248, size: 8, offset: 256)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3488, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3488, file: !67, line: 105, baseType: !3497, size: 64, offset: 320)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3499)
!3499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3500, line: 262, size: 1600, elements: !3501)
!3500 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3501 = !{!3502, !3503, !3504, !3508}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3499, file: !3500, line: 263, baseType: !2744, size: 256)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3499, file: !3500, line: 264, baseType: !2744, size: 256, offset: 256)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3499, file: !3500, line: 265, baseType: !3505, size: 1024, offset: 512)
!3505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 1024, elements: !3506)
!3506 = !{!3507}
!3507 = !DISubrange(count: 128)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3499, file: !3500, line: 266, baseType: !2174, size: 64, offset: 1536)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3488, file: !67, line: 106, baseType: !3510, size: 64, offset: 384)
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64)
!3511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3512)
!3512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3500, line: 210, size: 256, elements: !3513)
!3513 = !{!3514, !3518, !3520, !3521}
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3512, file: !3500, line: 211, baseType: !3515, size: 72)
!3515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 72, elements: !3516)
!3516 = !{!3517}
!3517 = !DISubrange(count: 9)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3512, file: !3500, line: 212, baseType: !3519, size: 64, offset: 128)
!3519 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3500, line: 14, baseType: !133)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3512, file: !3500, line: 213, baseType: !476, size: 32, offset: 192)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3512, file: !3500, line: 214, baseType: !476, size: 32, offset: 224)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3488, file: !67, line: 108, baseType: !3447, size: 64, offset: 448)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3488, file: !67, line: 109, baseType: !3438, size: 64, offset: 512)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3488, file: !67, line: 110, baseType: !3447, size: 64, offset: 576)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3488, file: !67, line: 111, baseType: !3438, size: 64, offset: 640)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3488, file: !67, line: 112, baseType: !3527, size: 64, offset: 704)
!3527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3528, size: 64)
!3528 = !DISubroutineType(types: !3529)
!3529 = !{!131, !274, !3530}
!3530 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3531)
!3531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3532)
!3532 = !{!3533}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3531, file: !80, line: 51, baseType: !131, size: 32)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3488, file: !67, line: 113, baseType: !3447, size: 64, offset: 768)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3488, file: !67, line: 114, baseType: !388, size: 64, offset: 832)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3488, file: !67, line: 115, baseType: !388, size: 64, offset: 896)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3488, file: !67, line: 117, baseType: !3442, size: 64, offset: 960)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3488, file: !67, line: 118, baseType: !3438, size: 64, offset: 1024)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3488, file: !67, line: 120, baseType: !3540, size: 64, offset: 1088)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3474, file: !3475, line: 91, baseType: !3429, size: 64, offset: 448)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3474, file: !3475, line: 92, baseType: !3447, size: 64, offset: 512)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3474, file: !3475, line: 93, baseType: !3438, size: 64, offset: 576)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3474, file: !3475, line: 94, baseType: !3447, size: 64, offset: 640)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3474, file: !3475, line: 95, baseType: !3438, size: 64, offset: 704)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3474, file: !3475, line: 97, baseType: !3447, size: 64, offset: 768)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3474, file: !3475, line: 98, baseType: !3447, size: 64, offset: 832)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3474, file: !3475, line: 100, baseType: !3527, size: 64, offset: 896)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3474, file: !3475, line: 101, baseType: !3447, size: 64, offset: 960)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3474, file: !3475, line: 103, baseType: !3447, size: 64, offset: 1024)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3474, file: !3475, line: 105, baseType: !3447, size: 64, offset: 1088)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3474, file: !3475, line: 107, baseType: !3442, size: 64, offset: 1152)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3474, file: !3475, line: 109, baseType: !3555, size: 64, offset: 1216)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3557)
!3557 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3475, line: 109, flags: DIFlagFwdDecl)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3474, file: !3475, line: 111, baseType: !3559, size: 64, offset: 1280)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3475, line: 111, flags: DIFlagFwdDecl)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3474, file: !3475, line: 112, baseType: !697, offset: 1344)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3474, file: !3475, line: 114, baseType: !248, size: 8, offset: 1344)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !275, file: !73, line: 471, baseType: !3487, size: 64, offset: 832)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !275, file: !73, line: 473, baseType: !132, size: 64, offset: 896)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !275, file: !73, line: 475, baseType: !132, size: 64, offset: 960)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !275, file: !73, line: 480, baseType: !1222, size: 192, offset: 1024)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !275, file: !73, line: 484, baseType: !3568, size: 576, offset: 1216)
!3568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3569)
!3569 = !{!3570, !3571, !3572, !3573, !3574, !3575}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3568, file: !73, line: 362, baseType: !283, size: 128)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3568, file: !73, line: 363, baseType: !283, size: 128, offset: 128)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3568, file: !73, line: 364, baseType: !283, size: 128, offset: 256)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3568, file: !73, line: 365, baseType: !283, size: 128, offset: 384)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3568, file: !73, line: 366, baseType: !248, size: 8, offset: 512)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3568, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !275, file: !73, line: 485, baseType: !3577, size: 2304, offset: 1792)
!3577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3578)
!3578 = !{!3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3674, !3678}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3577, file: !80, line: 566, baseType: !3530, size: 32)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3577, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3577, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3577, file: !80, line: 569, baseType: !248, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3577, file: !80, line: 570, baseType: !248, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3577, file: !80, line: 571, baseType: !248, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3577, file: !80, line: 572, baseType: !248, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3577, file: !80, line: 573, baseType: !248, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3577, file: !80, line: 574, baseType: !248, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3577, file: !80, line: 575, baseType: !248, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3577, file: !80, line: 576, baseType: !248, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3577, file: !80, line: 577, baseType: !475, size: 32, offset: 64)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3577, file: !80, line: 578, baseType: !296, offset: 96)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3577, file: !80, line: 580, baseType: !283, size: 128, offset: 128)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3577, file: !80, line: 581, baseType: !1549, size: 192, offset: 256)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3577, file: !80, line: 582, baseType: !3595, size: 64, offset: 448)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3597, line: 43, size: 1472, elements: !3598)
!3597 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3598 = !{!3599, !3600, !3601, !3602, !3603, !3606, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3596, file: !3597, line: 44, baseType: !144, size: 64)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3596, file: !3597, line: 45, baseType: !131, size: 32, offset: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3596, file: !3597, line: 46, baseType: !283, size: 128, offset: 128)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3596, file: !3597, line: 47, baseType: !296, offset: 256)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3596, file: !3597, line: 48, baseType: !3604, size: 64, offset: 256)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3596, file: !3597, line: 49, baseType: !3607, size: 320, offset: 320)
!3607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3608, line: 11, size: 320, elements: !3609)
!3608 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3609 = !{!3610, !3611, !3612, !3617}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3607, file: !3608, line: 16, baseType: !691, size: 128)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3607, file: !3608, line: 17, baseType: !133, size: 64, offset: 128)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3607, file: !3608, line: 18, baseType: !3613, size: 64, offset: 192)
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3614 = !DISubroutineType(types: !3615)
!3615 = !{null, !3616}
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3607, size: 64)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3607, file: !3608, line: 19, baseType: !475, size: 32, offset: 256)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3596, file: !3597, line: 50, baseType: !133, size: 64, offset: 640)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3596, file: !3597, line: 51, baseType: !1349, size: 64, offset: 704)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3596, file: !3597, line: 52, baseType: !1349, size: 64, offset: 768)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3596, file: !3597, line: 53, baseType: !1349, size: 64, offset: 832)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3596, file: !3597, line: 54, baseType: !1349, size: 64, offset: 896)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3596, file: !3597, line: 55, baseType: !1349, size: 64, offset: 960)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3596, file: !3597, line: 56, baseType: !133, size: 64, offset: 1024)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3596, file: !3597, line: 57, baseType: !133, size: 64, offset: 1088)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3596, file: !3597, line: 58, baseType: !133, size: 64, offset: 1152)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3596, file: !3597, line: 59, baseType: !133, size: 64, offset: 1216)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3596, file: !3597, line: 60, baseType: !133, size: 64, offset: 1280)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3596, file: !3597, line: 61, baseType: !274, size: 64, offset: 1344)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3596, file: !3597, line: 62, baseType: !248, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3596, file: !3597, line: 63, baseType: !248, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3577, file: !80, line: 583, baseType: !248, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3577, file: !80, line: 584, baseType: !248, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3577, file: !80, line: 585, baseType: !248, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3577, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3577, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3577, file: !80, line: 592, baseType: !1341, size: 512, offset: 576)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3577, file: !80, line: 593, baseType: !479, size: 64, offset: 1088)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3577, file: !80, line: 594, baseType: !2004, size: 256, offset: 1152)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3577, file: !80, line: 595, baseType: !1528, size: 128, offset: 1408)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3577, file: !80, line: 596, baseType: !3604, size: 64, offset: 1536)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3577, file: !80, line: 597, baseType: !800, size: 32, offset: 1600)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3577, file: !80, line: 598, baseType: !800, size: 32, offset: 1632)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3577, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3577, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3577, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3577, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3577, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3577, file: !80, line: 604, baseType: !248, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3577, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3577, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3577, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3577, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3577, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3577, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3577, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3577, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3577, file: !80, line: 613, baseType: !131, size: 32, offset: 1792)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3577, file: !80, line: 614, baseType: !131, size: 32, offset: 1824)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3577, file: !80, line: 615, baseType: !479, size: 64, offset: 1856)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3577, file: !80, line: 616, baseType: !479, size: 64, offset: 1920)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3577, file: !80, line: 617, baseType: !479, size: 64, offset: 1984)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3577, file: !80, line: 618, baseType: !479, size: 64, offset: 2048)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3577, file: !80, line: 620, baseType: !3665, size: 64, offset: 2112)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3667)
!3667 = !{!3668, !3669, !3670, !3671}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3666, file: !80, line: 537, baseType: !296)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3666, file: !80, line: 538, baseType: !7, size: 32)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3666, file: !80, line: 540, baseType: !283, size: 128, offset: 64)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3666, file: !80, line: 543, baseType: !3672, size: 64, offset: 192)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3577, file: !80, line: 621, baseType: !3675, size: 64, offset: 2176)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{null, !274, !1491}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3577, file: !80, line: 622, baseType: !3679, size: 64, offset: 2240)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !275, file: !73, line: 486, baseType: !3682, size: 64, offset: 4096)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3684)
!3684 = !{!3685, !3686, !3687, !3691, !3692, !3693}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3683, file: !80, line: 643, baseType: !3444, size: 1472)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3683, file: !80, line: 644, baseType: !3447, size: 64, offset: 1472)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3683, file: !80, line: 645, baseType: !3688, size: 64, offset: 1536)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{null, !274, !248}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3683, file: !80, line: 646, baseType: !3447, size: 64, offset: 1600)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3683, file: !80, line: 647, baseType: !3438, size: 64, offset: 1664)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3683, file: !80, line: 648, baseType: !3438, size: 64, offset: 1728)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !275, file: !73, line: 493, baseType: !3695, size: 64, offset: 4160)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !73, line: 493, flags: DIFlagFwdDecl)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !275, file: !73, line: 499, baseType: !283, size: 128, offset: 4224)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !275, file: !73, line: 502, baseType: !3699, size: 64, offset: 4352)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3701)
!3701 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !275, file: !73, line: 504, baseType: !3703, size: 64, offset: 4416)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !275, file: !73, line: 505, baseType: !479, size: 64, offset: 4480)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !275, file: !73, line: 510, baseType: !479, size: 64, offset: 4544)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !275, file: !73, line: 511, baseType: !3707, size: 64, offset: 4608)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3709)
!3709 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !275, file: !73, line: 513, baseType: !3711, size: 64, offset: 4672)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3713)
!3713 = !{!3714, !3715}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3712, file: !73, line: 293, baseType: !7, size: 32)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3712, file: !73, line: 294, baseType: !133, size: 64, offset: 64)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !275, file: !73, line: 515, baseType: !283, size: 128, offset: 4736)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !275, file: !73, line: 526, baseType: !3718, offset: 4864)
!3718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3719, line: 5, elements: !310)
!3719 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !275, file: !73, line: 528, baseType: !3721, size: 64, offset: 4864)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3723, line: 14, flags: DIFlagFwdDecl)
!3723 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !275, file: !73, line: 529, baseType: !3725, size: 64, offset: 4928)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3727, line: 17, size: 192, elements: !3728)
!3727 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3728 = !{!3729, !3730, !3813}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3726, file: !3727, line: 18, baseType: !3725, size: 64)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3726, file: !3727, line: 19, baseType: !3731, size: 64, offset: 64)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3733)
!3733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3727, line: 110, size: 1152, elements: !3734)
!3734 = !{!3735, !3739, !3743, !3749, !3755, !3759, !3763, !3768, !3772, !3773, !3777, !3781, !3785, !3796, !3797, !3798, !3799, !3809}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3733, file: !3727, line: 111, baseType: !3736, size: 64)
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = !DISubroutineType(types: !3738)
!3738 = !{!3725, !3725}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3733, file: !3727, line: 112, baseType: !3740, size: 64, offset: 64)
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3741, size: 64)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{null, !3725}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3733, file: !3727, line: 113, baseType: !3744, size: 64, offset: 128)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!248, !3747}
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3726)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3733, file: !3727, line: 114, baseType: !3750, size: 64, offset: 192)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DISubroutineType(types: !3752)
!3752 = !{!2174, !3747, !3753}
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3733, file: !3727, line: 116, baseType: !3756, size: 64, offset: 256)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{!248, !3747, !144}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3733, file: !3727, line: 118, baseType: !3760, size: 64, offset: 320)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = !DISubroutineType(types: !3762)
!3762 = !{!131, !3747, !144, !7, !132, !382}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3733, file: !3727, line: 123, baseType: !3764, size: 64, offset: 384)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!131, !3747, !144, !3767, !382}
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3733, file: !3727, line: 126, baseType: !3769, size: 64, offset: 448)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!144, !3747}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3733, file: !3727, line: 127, baseType: !3769, size: 64, offset: 512)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3733, file: !3727, line: 128, baseType: !3774, size: 64, offset: 576)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = !DISubroutineType(types: !3776)
!3776 = !{!3725, !3747}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3733, file: !3727, line: 130, baseType: !3778, size: 64, offset: 640)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = !DISubroutineType(types: !3780)
!3780 = !{!3725, !3747, !3725}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3733, file: !3727, line: 133, baseType: !3782, size: 64, offset: 704)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = !DISubroutineType(types: !3784)
!3784 = !{!3725, !3747, !144}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3733, file: !3727, line: 135, baseType: !3786, size: 64, offset: 768)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{!131, !3747, !144, !144, !7, !7, !3789}
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3727, line: 43, size: 640, elements: !3791)
!3791 = !{!3792, !3793, !3794}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3790, file: !3727, line: 44, baseType: !3725, size: 64)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3790, file: !3727, line: 45, baseType: !7, size: 32, offset: 64)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3790, file: !3727, line: 46, baseType: !3795, size: 512, offset: 128)
!3795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !479, size: 512, elements: !1379)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3733, file: !3727, line: 140, baseType: !3778, size: 64, offset: 832)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3733, file: !3727, line: 143, baseType: !3774, size: 64, offset: 896)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3733, file: !3727, line: 145, baseType: !3736, size: 64, offset: 960)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3733, file: !3727, line: 146, baseType: !3800, size: 64, offset: 1024)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DISubroutineType(types: !3802)
!3802 = !{!131, !3747, !3803}
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3727, line: 29, size: 128, elements: !3805)
!3805 = !{!3806, !3807, !3808}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3804, file: !3727, line: 30, baseType: !7, size: 32)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3804, file: !3727, line: 31, baseType: !7, size: 32, offset: 32)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3804, file: !3727, line: 32, baseType: !3747, size: 64, offset: 64)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3733, file: !3727, line: 148, baseType: !3810, size: 64, offset: 1088)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{!131, !3747, !274}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3726, file: !3727, line: 20, baseType: !274, size: 64, offset: 128)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !275, file: !73, line: 534, baseType: !565, size: 32, offset: 4992)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !275, file: !73, line: 535, baseType: !475, size: 32, offset: 5024)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !275, file: !73, line: 537, baseType: !296, offset: 5056)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !275, file: !73, line: 538, baseType: !283, size: 128, offset: 5056)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !275, file: !73, line: 540, baseType: !3819, size: 64, offset: 5184)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3821, line: 54, size: 960, elements: !3822)
!3821 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3822 = !{!3823, !3824, !3825, !3826, !3827, !3828, !3829, !3833, !3837, !3838, !3839, !3840, !3844, !3848, !3849}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3820, file: !3821, line: 55, baseType: !144, size: 64)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3820, file: !3821, line: 56, baseType: !148, size: 64, offset: 64)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3820, file: !3821, line: 58, baseType: !388, size: 64, offset: 128)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3820, file: !3821, line: 59, baseType: !388, size: 64, offset: 192)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3820, file: !3821, line: 60, baseType: !289, size: 64, offset: 256)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3820, file: !3821, line: 62, baseType: !3429, size: 64, offset: 320)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3820, file: !3821, line: 63, baseType: !3830, size: 64, offset: 384)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{!166, !274, !3436}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3820, file: !3821, line: 65, baseType: !3834, size: 64, offset: 448)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{null, !3819}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3820, file: !3821, line: 66, baseType: !3438, size: 64, offset: 512)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3820, file: !3821, line: 68, baseType: !3447, size: 64, offset: 576)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3820, file: !3821, line: 70, baseType: !3233, size: 64, offset: 640)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3820, file: !3821, line: 71, baseType: !3841, size: 64, offset: 704)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{!2174, !274}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3820, file: !3821, line: 73, baseType: !3845, size: 64, offset: 768)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DISubroutineType(types: !3847)
!3847 = !{null, !274, !3265, !3266}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3820, file: !3821, line: 75, baseType: !3442, size: 64, offset: 832)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3820, file: !3821, line: 77, baseType: !3559, size: 64, offset: 896)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !275, file: !73, line: 541, baseType: !388, size: 64, offset: 5248)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !275, file: !73, line: 543, baseType: !3438, size: 64, offset: 5312)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !275, file: !73, line: 544, baseType: !3853, size: 64, offset: 5376)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !275, file: !73, line: 545, baseType: !3856, size: 64, offset: 5440)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !275, file: !73, line: 547, baseType: !248, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !275, file: !73, line: 548, baseType: !248, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !275, file: !73, line: 549, baseType: !248, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !275, file: !73, line: 550, baseType: !248, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !265, file: !254, line: 548, baseType: !131, size: 32, offset: 320)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "detach_count", scope: !265, file: !254, line: 549, baseType: !7, size: 32, offset: 352)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "hw_dev", scope: !265, file: !254, line: 550, baseType: !274, size: 64, offset: 384)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !265, file: !254, line: 552, baseType: !144, size: 64, offset: 448)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "board_ptr", scope: !265, file: !254, line: 553, baseType: !2174, size: 64, offset: 512)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "attached", scope: !265, file: !254, line: 554, baseType: !7, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "ioenabled", scope: !265, file: !254, line: 555, baseType: !7, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "spinlock", scope: !265, file: !254, line: 556, baseType: !296, offset: 584)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !265, file: !254, line: 557, baseType: !1222, size: 192, offset: 640)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "attach_lock", scope: !265, file: !254, line: 558, baseType: !820, size: 256, offset: 832)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !265, file: !254, line: 559, baseType: !3407, size: 32, offset: 1088)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "n_subdevices", scope: !265, file: !254, line: 561, baseType: !131, size: 32, offset: 1120)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "subdevices", scope: !265, file: !254, line: 562, baseType: !3875, size: 64, offset: 1152)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_subdevice", file: !254, line: 153, size: 1792, elements: !3877)
!3877 = !{!3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3953, !3966, !3969, !3970, !3984, !3985, !3986, !3987, !3991, !3996, !3997, !3998, !3999, !4003, !4004, !4005, !4006, !4007}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3876, file: !254, line: 154, baseType: !264, size: 64)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3876, file: !254, line: 155, baseType: !131, size: 32, offset: 64)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3876, file: !254, line: 156, baseType: !131, size: 32, offset: 96)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "n_chan", scope: !3876, file: !254, line: 157, baseType: !131, size: 32, offset: 128)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "subdev_flags", scope: !3876, file: !254, line: 158, baseType: !131, size: 32, offset: 160)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "len_chanlist", scope: !3876, file: !254, line: 159, baseType: !131, size: 32, offset: 192)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3876, file: !254, line: 161, baseType: !132, size: 64, offset: 256)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "async", scope: !3876, file: !254, line: 163, baseType: !3886, size: 64, offset: 320)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_async", file: !254, line: 347, size: 1536, elements: !3888)
!3888 = !{!3889, !3890, !3891, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3939, !3940, !3941}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3887, file: !254, line: 348, baseType: !132, size: 64)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_bufsz", scope: !3887, file: !254, line: 349, baseType: !7, size: 32, offset: 64)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "buf_map", scope: !3887, file: !254, line: 350, baseType: !3892, size: 64, offset: 128)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_buf_map", file: !254, line: 249, size: 256, elements: !3894)
!3894 = !{!3895, !3896, !3902, !3903, !3904}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "dma_hw_dev", scope: !3893, file: !254, line: 250, baseType: !274, size: 64)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "page_list", scope: !3893, file: !254, line: 251, baseType: !3897, size: 64, offset: 64)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_buf_page", file: !254, line: 220, size: 128, elements: !3899)
!3899 = !{!3900, !3901}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "virt_addr", scope: !3898, file: !254, line: 221, baseType: !132, size: 64)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3898, file: !254, line: 222, baseType: !971, size: 64, offset: 64)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "n_pages", scope: !3893, file: !254, line: 252, baseType: !7, size: 32, offset: 128)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "dma_dir", scope: !3893, file: !254, line: 253, baseType: !93, size: 32, offset: 160)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3893, file: !254, line: 254, baseType: !3407, size: 32, offset: 192)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "max_bufsize", scope: !3887, file: !254, line: 351, baseType: !7, size: 32, offset: 192)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_count", scope: !3887, file: !254, line: 352, baseType: !7, size: 32, offset: 224)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_alloc_count", scope: !3887, file: !254, line: 353, baseType: !7, size: 32, offset: 256)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_count", scope: !3887, file: !254, line: 354, baseType: !7, size: 32, offset: 288)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_alloc_count", scope: !3887, file: !254, line: 355, baseType: !7, size: 32, offset: 320)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_ptr", scope: !3887, file: !254, line: 356, baseType: !7, size: 32, offset: 352)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_ptr", scope: !3887, file: !254, line: 357, baseType: !7, size: 32, offset: 384)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "cur_chan", scope: !3887, file: !254, line: 358, baseType: !7, size: 32, offset: 416)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "scans_done", scope: !3887, file: !254, line: 359, baseType: !7, size: 32, offset: 448)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "scan_progress", scope: !3887, file: !254, line: 360, baseType: !7, size: 32, offset: 480)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "munge_chan", scope: !3887, file: !254, line: 361, baseType: !7, size: 32, offset: 512)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "munge_count", scope: !3887, file: !254, line: 362, baseType: !7, size: 32, offset: 544)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "munge_ptr", scope: !3887, file: !254, line: 363, baseType: !7, size: 32, offset: 576)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3887, file: !254, line: 364, baseType: !7, size: 32, offset: 608)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !3887, file: !254, line: 365, baseType: !3920, size: 640, offset: 640)
!3920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_cmd", file: !101, line: 589, size: 640, elements: !3921)
!3921 = !{!3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3938}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "subdev", scope: !3920, file: !101, line: 590, baseType: !7, size: 32)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3920, file: !101, line: 591, baseType: !7, size: 32, offset: 32)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "start_src", scope: !3920, file: !101, line: 593, baseType: !7, size: 32, offset: 64)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "start_arg", scope: !3920, file: !101, line: 594, baseType: !7, size: 32, offset: 96)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "scan_begin_src", scope: !3920, file: !101, line: 596, baseType: !7, size: 32, offset: 128)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "scan_begin_arg", scope: !3920, file: !101, line: 597, baseType: !7, size: 32, offset: 160)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "convert_src", scope: !3920, file: !101, line: 599, baseType: !7, size: 32, offset: 192)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "convert_arg", scope: !3920, file: !101, line: 600, baseType: !7, size: 32, offset: 224)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "scan_end_src", scope: !3920, file: !101, line: 602, baseType: !7, size: 32, offset: 256)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "scan_end_arg", scope: !3920, file: !101, line: 603, baseType: !7, size: 32, offset: 288)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "stop_src", scope: !3920, file: !101, line: 605, baseType: !7, size: 32, offset: 320)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "stop_arg", scope: !3920, file: !101, line: 606, baseType: !7, size: 32, offset: 352)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist", scope: !3920, file: !101, line: 608, baseType: !204, size: 64, offset: 384)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist_len", scope: !3920, file: !101, line: 609, baseType: !7, size: 32, offset: 448)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3920, file: !101, line: 611, baseType: !3937, size: 64, offset: 512)
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !3920, file: !101, line: 612, baseType: !7, size: 32, offset: 576)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "wait_head", scope: !3887, file: !254, line: 366, baseType: !1528, size: 128, offset: 1280)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "cb_mask", scope: !3887, file: !254, line: 367, baseType: !7, size: 32, offset: 1408)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "inttrig", scope: !3887, file: !254, line: 368, baseType: !3942, size: 64, offset: 1472)
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3943, size: 64)
!3943 = !DISubroutineType(types: !3944)
!3944 = !{!131, !264, !3875, !7}
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3876, file: !254, line: 165, baseType: !132, size: 64, offset: 384)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !3876, file: !254, line: 166, baseType: !132, size: 64, offset: 448)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "runflags", scope: !3876, file: !254, line: 167, baseType: !7, size: 32, offset: 512)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "spin_lock", scope: !3876, file: !254, line: 168, baseType: !296, offset: 544)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "io_bits", scope: !3876, file: !254, line: 170, baseType: !7, size: 32, offset: 544)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata", scope: !3876, file: !254, line: 172, baseType: !7, size: 32, offset: 576)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata_list", scope: !3876, file: !254, line: 173, baseType: !3952, size: 64, offset: 640)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "range_table", scope: !3876, file: !254, line: 175, baseType: !3954, size: 64, offset: 704)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3956)
!3956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_lrange", file: !254, line: 635, size: 32, elements: !3957)
!3957 = !{!3958, !3959}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3956, file: !254, line: 636, baseType: !131, size: 32)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3956, file: !254, line: 637, baseType: !3960, offset: 32)
!3960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3961, elements: !2376)
!3961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_krange", file: !101, line: 685, size: 96, elements: !3962)
!3962 = !{!3963, !3964, !3965}
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !3961, file: !101, line: 686, baseType: !131, size: 32)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3961, file: !101, line: 687, baseType: !131, size: 32, offset: 32)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3961, file: !101, line: 688, baseType: !7, size: 32, offset: 64)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "range_table_list", scope: !3876, file: !254, line: 176, baseType: !3967, size: 64, offset: 768)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3954)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist", scope: !3876, file: !254, line: 178, baseType: !204, size: 64, offset: 832)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "insn_read", scope: !3876, file: !254, line: 180, baseType: !3971, size: 64, offset: 896)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = !DISubroutineType(types: !3973)
!3973 = !{!131, !264, !3875, !3974, !204}
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_insn", file: !101, line: 491, size: 320, elements: !3976)
!3976 = !{!3977, !3978, !3979, !3980, !3981, !3982}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3975, file: !101, line: 492, baseType: !7, size: 32)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !3975, file: !101, line: 493, baseType: !7, size: 32, offset: 32)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3975, file: !101, line: 494, baseType: !204, size: 64, offset: 64)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "subdev", scope: !3975, file: !101, line: 495, baseType: !7, size: 32, offset: 128)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "chanspec", scope: !3975, file: !101, line: 496, baseType: !7, size: 32, offset: 160)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !3975, file: !101, line: 497, baseType: !3983, size: 96, offset: 192)
!3983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 96, elements: !337)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "insn_write", scope: !3876, file: !254, line: 182, baseType: !3971, size: 64, offset: 960)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "insn_bits", scope: !3876, file: !254, line: 184, baseType: !3971, size: 64, offset: 1024)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "insn_config", scope: !3876, file: !254, line: 186, baseType: !3971, size: 64, offset: 1088)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "do_cmd", scope: !3876, file: !254, line: 191, baseType: !3988, size: 64, offset: 1152)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{!131, !264, !3875}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "do_cmdtest", scope: !3876, file: !254, line: 192, baseType: !3992, size: 64, offset: 1216)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!131, !264, !3875, !3995}
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3876, file: !254, line: 195, baseType: !3988, size: 64, offset: 1280)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "cancel", scope: !3876, file: !254, line: 196, baseType: !3988, size: 64, offset: 1344)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "buf_change", scope: !3876, file: !254, line: 199, baseType: !3988, size: 64, offset: 1408)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "munge", scope: !3876, file: !254, line: 202, baseType: !4000, size: 64, offset: 1472)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = !DISubroutineType(types: !4002)
!4002 = !{null, !264, !3875, !132, !7, !7}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "async_dma_dir", scope: !3876, file: !254, line: 205, baseType: !93, size: 32, offset: 1536)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3876, file: !254, line: 207, baseType: !7, size: 32, offset: 1568)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !3876, file: !254, line: 209, baseType: !274, size: 64, offset: 1600)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3876, file: !254, line: 210, baseType: !131, size: 32, offset: 1664)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "readback", scope: !3876, file: !254, line: 212, baseType: !204, size: 64, offset: 1728)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "mmio", scope: !265, file: !254, line: 565, baseType: !132, size: 64, offset: 1216)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "iobase", scope: !265, file: !254, line: 566, baseType: !133, size: 64, offset: 1280)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "iolen", scope: !265, file: !254, line: 567, baseType: !133, size: 64, offset: 1344)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !265, file: !254, line: 568, baseType: !7, size: 32, offset: 1408)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "read_subdev", scope: !265, file: !254, line: 570, baseType: !3875, size: 64, offset: 1472)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "write_subdev", scope: !265, file: !254, line: 571, baseType: !3875, size: 64, offset: 1536)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "async_queue", scope: !265, file: !254, line: 573, baseType: !3003, size: 64, offset: 1600)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !265, file: !254, line: 575, baseType: !4016, size: 64, offset: 1664)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4017, size: 64)
!4017 = !DISubroutineType(types: !4018)
!4018 = !{!131, !264}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !265, file: !254, line: 576, baseType: !4020, size: 64, offset: 1728)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = !DISubroutineType(types: !4022)
!4022 = !{null, !264}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "insn_device_config", scope: !265, file: !254, line: 577, baseType: !4024, size: 64, offset: 1792)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = !DISubroutineType(types: !4026)
!4026 = !{!131, !264, !3974, !204}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "get_valid_routes", scope: !265, file: !254, line: 579, baseType: !4028, size: 64, offset: 1856)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{!7, !264, !7, !204}
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_devconfig", file: !101, line: 834, size: 1184, elements: !4033)
!4033 = !{!4034, !4036}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !4032, file: !101, line: 835, baseType: !4035, size: 160)
!4035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 160, elements: !244)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !4032, file: !101, line: 836, baseType: !4037, size: 1024, offset: 160)
!4037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 1024, elements: !2275)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !253, file: !254, line: 444, baseType: !4020, size: 64, offset: 256)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "auto_attach", scope: !253, file: !254, line: 445, baseType: !4040, size: 64, offset: 320)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = !DISubroutineType(types: !4042)
!4042 = !{!131, !264, !133}
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "num_names", scope: !253, file: !254, line: 446, baseType: !7, size: 32, offset: 384)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !253, file: !254, line: 447, baseType: !4045, size: 64, offset: 448)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !253, file: !254, line: 448, baseType: !131, size: 32, offset: 512)
!4048 = !DIGlobalVariableExpression(var: !4049, expr: !DIExpression())
!4049 = distinct !DIGlobalVariable(name: "ni_65xx_boards", scope: !2, file: !3, line: 151, type: !4050, isLocal: true, isDefinition: true)
!4050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4051, size: 4224, elements: !4059)
!4051 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4052)
!4052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ni_65xx_board", file: !3, line: 143, size: 192, elements: !4053)
!4053 = !{!4054, !4055, !4056, !4057, !4058}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4052, file: !3, line: 144, baseType: !144, size: 64)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "num_dio_ports", scope: !4052, file: !3, line: 145, baseType: !7, size: 32, offset: 64)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "num_di_ports", scope: !4052, file: !3, line: 146, baseType: !7, size: 32, offset: 96)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "num_do_ports", scope: !4052, file: !3, line: 147, baseType: !7, size: 32, offset: 128)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_invert", scope: !4052, file: !3, line: 148, baseType: !7, size: 1, offset: 160, flags: DIFlagBitField, extraData: i64 160)
!4059 = !{!4060}
!4060 = !DISubrange(count: 22)
!4061 = !DIGlobalVariableExpression(var: !4062, expr: !DIExpression())
!4062 = distinct !DIGlobalVariable(name: "ni_65xx_pci_driver", scope: !2, file: !3, line: 812, type: !4063, isLocal: true, isDefinition: true)
!4063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !4064, line: 858, size: 2048, elements: !4065)
!4064 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!4065 = !{!4066, !4067, !4068, !4080, !4300, !4304, !4308, !4312, !4313, !4317, !4335, !4336, !4337}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4063, file: !4064, line: 859, baseType: !283, size: 128)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4063, file: !4064, line: 860, baseType: !144, size: 64, offset: 128)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4063, file: !4064, line: 861, baseType: !4069, size: 64, offset: 192)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4071)
!4071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3500, line: 38, size: 256, elements: !4072)
!4072 = !{!4073, !4074, !4075, !4076, !4077, !4078, !4079}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4071, file: !3500, line: 39, baseType: !476, size: 32)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4071, file: !3500, line: 39, baseType: !476, size: 32, offset: 32)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4071, file: !3500, line: 40, baseType: !476, size: 32, offset: 64)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4071, file: !3500, line: 40, baseType: !476, size: 32, offset: 96)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4071, file: !3500, line: 41, baseType: !476, size: 32, offset: 128)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4071, file: !3500, line: 41, baseType: !476, size: 32, offset: 160)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4071, file: !3500, line: 42, baseType: !3519, size: 64, offset: 192)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4063, file: !4064, line: 862, baseType: !4081, size: 64, offset: 256)
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{!131, !4084, !4069}
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !4064, line: 309, size: 19264, elements: !4086)
!4086 = !{!4087, !4088, !4163, !4164, !4165, !4166, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4194, !4196, !4197, !4198, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4222, !4223, !4224, !4225, !4227, !4228, !4229, !4230, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4273, !4274, !4276, !4277, !4278, !4279, !4281, !4282, !4283, !4286, !4293, !4294, !4295, !4296, !4297, !4298, !4299}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !4085, file: !4064, line: 310, baseType: !283, size: 128)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4085, file: !4064, line: 311, baseType: !4089, size: 64, offset: 128)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !4064, line: 605, size: 8064, elements: !4091)
!4091 = !{!4092, !4093, !4094, !4095, !4096, !4097, !4098, !4113, !4114, !4115, !4139, !4142, !4143, !4147, !4148, !4149, !4150, !4151, !4155, !4156, !4158, !4159, !4160, !4161, !4162}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4090, file: !4064, line: 606, baseType: !283, size: 128)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4090, file: !4064, line: 607, baseType: !4089, size: 64, offset: 128)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4090, file: !4064, line: 608, baseType: !283, size: 128, offset: 192)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4090, file: !4064, line: 609, baseType: !283, size: 128, offset: 320)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4090, file: !4064, line: 610, baseType: !4084, size: 64, offset: 448)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !4090, file: !4064, line: 611, baseType: !283, size: 128, offset: 512)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4090, file: !4064, line: 613, baseType: !4099, size: 256, offset: 640)
!4099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4100, size: 256, elements: !1204)
!4100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4101, size: 64)
!4101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4102, line: 20, size: 512, elements: !4103)
!4102 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!4103 = !{!4104, !4106, !4107, !4108, !4109, !4110, !4111, !4112}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4101, file: !4102, line: 21, baseType: !4105, size: 64)
!4105 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !249, line: 158, baseType: !2172)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4101, file: !4102, line: 22, baseType: !4105, size: 64, offset: 64)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4101, file: !4102, line: 23, baseType: !144, size: 64, offset: 128)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4101, file: !4102, line: 24, baseType: !133, size: 64, offset: 192)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4101, file: !4102, line: 25, baseType: !133, size: 64, offset: 256)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4101, file: !4102, line: 26, baseType: !4100, size: 64, offset: 320)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4101, file: !4102, line: 26, baseType: !4100, size: 64, offset: 384)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4101, file: !4102, line: 26, baseType: !4100, size: 64, offset: 448)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4090, file: !4064, line: 614, baseType: !283, size: 128, offset: 896)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !4090, file: !4064, line: 615, baseType: !4101, size: 512, offset: 1024)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4090, file: !4064, line: 617, baseType: !4116, size: 64, offset: 1536)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !4064, line: 731, size: 320, elements: !4118)
!4118 = !{!4119, !4123, !4127, !4131, !4135}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !4117, file: !4064, line: 732, baseType: !4120, size: 64)
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4121 = !DISubroutineType(types: !4122)
!4122 = !{!131, !4089}
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !4117, file: !4064, line: 733, baseType: !4124, size: 64, offset: 64)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 64)
!4125 = !DISubroutineType(types: !4126)
!4126 = !{null, !4089}
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !4117, file: !4064, line: 734, baseType: !4128, size: 64, offset: 128)
!4128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4129, size: 64)
!4129 = !DISubroutineType(types: !4130)
!4130 = !{!132, !4089, !7, !131}
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4117, file: !4064, line: 735, baseType: !4132, size: 64, offset: 192)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = !DISubroutineType(types: !4134)
!4134 = !{!131, !4089, !7, !131, !131, !1462}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4117, file: !4064, line: 736, baseType: !4136, size: 64, offset: 256)
!4136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4137, size: 64)
!4137 = !DISubroutineType(types: !4138)
!4138 = !{!131, !4089, !7, !131, !131, !475}
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4090, file: !4064, line: 618, baseType: !4140, size: 64, offset: 1600)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !4064, line: 537, flags: DIFlagFwdDecl)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4090, file: !4064, line: 619, baseType: !132, size: 64, offset: 1664)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !4090, file: !4064, line: 620, baseType: !4144, size: 64, offset: 1728)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4145 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4146, line: 123, flags: DIFlagFwdDecl)
!4146 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4090, file: !4064, line: 622, baseType: !130, size: 8, offset: 1792)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4090, file: !4064, line: 623, baseType: !130, size: 8, offset: 1800)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !4090, file: !4064, line: 624, baseType: !130, size: 8, offset: 1808)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !4090, file: !4064, line: 625, baseType: !130, size: 8, offset: 1816)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4090, file: !4064, line: 630, baseType: !4152, size: 384, offset: 1824)
!4152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 384, elements: !4153)
!4153 = !{!4154}
!4154 = !DISubrange(count: 48)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !4090, file: !4064, line: 632, baseType: !177, size: 16, offset: 2208)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !4090, file: !4064, line: 633, baseType: !4157, size: 16, offset: 2224)
!4157 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !4064, line: 237, baseType: !177)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !4090, file: !4064, line: 634, baseType: !274, size: 64, offset: 2240)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4090, file: !4064, line: 635, baseType: !275, size: 5568, offset: 2304)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !4090, file: !4064, line: 636, baseType: !402, size: 64, offset: 7872)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !4090, file: !4064, line: 637, baseType: !402, size: 64, offset: 7936)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !4090, file: !4064, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !4085, file: !4064, line: 312, baseType: !4089, size: 64, offset: 192)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4085, file: !4064, line: 314, baseType: !132, size: 64, offset: 256)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !4085, file: !4064, line: 315, baseType: !4144, size: 64, offset: 320)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4085, file: !4064, line: 316, baseType: !4167, size: 64, offset: 384)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !4064, line: 69, size: 832, elements: !4169)
!4169 = !{!4170, !4171, !4172, !4175, !4176}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4168, file: !4064, line: 70, baseType: !4089, size: 64)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4168, file: !4064, line: 71, baseType: !283, size: 128, offset: 64)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4168, file: !4064, line: 72, baseType: !4173, size: 64, offset: 192)
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4174 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !4064, line: 72, flags: DIFlagFwdDecl)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4168, file: !4064, line: 73, baseType: !130, size: 8, offset: 256)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4168, file: !4064, line: 74, baseType: !278, size: 512, offset: 320)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !4085, file: !4064, line: 318, baseType: !7, size: 32, offset: 448)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4085, file: !4064, line: 319, baseType: !177, size: 16, offset: 480)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4085, file: !4064, line: 320, baseType: !177, size: 16, offset: 496)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4085, file: !4064, line: 321, baseType: !177, size: 16, offset: 512)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4085, file: !4064, line: 322, baseType: !177, size: 16, offset: 528)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4085, file: !4064, line: 323, baseType: !7, size: 32, offset: 544)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4085, file: !4064, line: 324, baseType: !183, size: 8, offset: 576)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4085, file: !4064, line: 325, baseType: !183, size: 8, offset: 584)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !4085, file: !4064, line: 330, baseType: !183, size: 8, offset: 592)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !4085, file: !4064, line: 331, baseType: !183, size: 8, offset: 600)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !4085, file: !4064, line: 332, baseType: !183, size: 8, offset: 608)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !4085, file: !4064, line: 333, baseType: !183, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !4085, file: !4064, line: 334, baseType: !183, size: 8, offset: 624)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4085, file: !4064, line: 335, baseType: !183, size: 8, offset: 632)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !4085, file: !4064, line: 336, baseType: !173, size: 16, offset: 640)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !4085, file: !4064, line: 337, baseType: !4193, size: 64, offset: 704)
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4085, file: !4064, line: 339, baseType: !4195, size: 64, offset: 768)
!4195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4085, file: !4064, line: 340, baseType: !479, size: 64, offset: 832)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4085, file: !4064, line: 346, baseType: !3712, size: 128, offset: 896)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !4085, file: !4064, line: 348, baseType: !4199, size: 32, offset: 1024)
!4199 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !4064, line: 155, baseType: !131)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !4085, file: !4064, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !4085, file: !4064, line: 352, baseType: !183, size: 8, offset: 1064)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !4085, file: !4064, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !4085, file: !4064, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !4085, file: !4064, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !4085, file: !4064, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !4085, file: !4064, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !4085, file: !4064, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !4085, file: !4064, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !4085, file: !4064, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !4085, file: !4064, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !4085, file: !4064, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !4085, file: !4064, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !4085, file: !4064, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !4085, file: !4064, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !4085, file: !4064, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !4085, file: !4064, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !4085, file: !4064, line: 376, baseType: !7, size: 32, offset: 1120)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !4085, file: !4064, line: 377, baseType: !7, size: 32, offset: 1152)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !4085, file: !4064, line: 380, baseType: !4220, size: 64, offset: 1216)
!4220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4221, size: 64)
!4221 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !4064, line: 303, flags: DIFlagFwdDecl)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !4085, file: !4064, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !4085, file: !4064, line: 383, baseType: !131, size: 32, offset: 1312)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !4085, file: !4064, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !4085, file: !4064, line: 387, baseType: !4226, size: 32, offset: 1376)
!4226 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !4064, line: 180, baseType: !7)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4085, file: !4064, line: 388, baseType: !275, size: 5568, offset: 1408)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !4085, file: !4064, line: 390, baseType: !131, size: 32, offset: 6976)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4085, file: !4064, line: 396, baseType: !7, size: 32, offset: 7008)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4085, file: !4064, line: 397, baseType: !4231, size: 8704, offset: 7040)
!4231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4101, size: 8704, elements: !4232)
!4232 = !{!4233}
!4233 = !DISubrange(count: 17)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4085, file: !4064, line: 399, baseType: !248, size: 8, offset: 15744)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !4085, file: !4064, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !4085, file: !4064, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !4085, file: !4064, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !4085, file: !4064, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !4085, file: !4064, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !4085, file: !4064, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !4085, file: !4064, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !4085, file: !4064, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !4085, file: !4064, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !4085, file: !4064, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !4085, file: !4064, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !4085, file: !4064, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !4085, file: !4064, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !4085, file: !4064, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !4085, file: !4064, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !4085, file: !4064, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !4085, file: !4064, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !4085, file: !4064, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !4085, file: !4064, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !4085, file: !4064, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !4085, file: !4064, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !4085, file: !4064, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !4085, file: !4064, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !4085, file: !4064, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !4085, file: !4064, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !4085, file: !4064, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !4085, file: !4064, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !4085, file: !4064, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !4085, file: !4064, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !4085, file: !4064, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !4085, file: !4064, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !4085, file: !4064, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !4085, file: !4064, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !4085, file: !4064, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !4085, file: !4064, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !4085, file: !4064, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !4085, file: !4064, line: 450, baseType: !4272, size: 16, offset: 15792)
!4272 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !4064, line: 206, baseType: !177)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !4085, file: !4064, line: 451, baseType: !800, size: 32, offset: 15808)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !4085, file: !4064, line: 453, baseType: !4275, size: 512, offset: 15840)
!4275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !475, size: 512, elements: !1782)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !4085, file: !4064, line: 454, baseType: !687, size: 64, offset: 16384)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !4085, file: !4064, line: 455, baseType: !402, size: 64, offset: 16448)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !4085, file: !4064, line: 456, baseType: !131, size: 32, offset: 16512)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !4085, file: !4064, line: 457, baseType: !4280, size: 1088, offset: 16576)
!4280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 1088, elements: !4232)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !4085, file: !4064, line: 458, baseType: !4280, size: 1088, offset: 17664)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !4085, file: !4064, line: 469, baseType: !388, size: 64, offset: 18752)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !4085, file: !4064, line: 471, baseType: !4284, size: 64, offset: 18816)
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !4064, line: 304, flags: DIFlagFwdDecl)
!4286 = !DIDerivedType(tag: DW_TAG_member, scope: !4085, file: !4064, line: 478, baseType: !4287, size: 64, offset: 18880)
!4287 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4085, file: !4064, line: 478, size: 64, elements: !4288)
!4288 = !{!4289, !4292}
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4287, file: !4064, line: 479, baseType: !4290, size: 64)
!4290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4291, size: 64)
!4291 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !4064, line: 305, flags: DIFlagFwdDecl)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4287, file: !4064, line: 480, baseType: !4084, size: 64)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !4085, file: !4064, line: 482, baseType: !173, size: 16, offset: 18944)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !4085, file: !4064, line: 483, baseType: !183, size: 8, offset: 18960)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !4085, file: !4064, line: 497, baseType: !173, size: 16, offset: 18976)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !4085, file: !4064, line: 498, baseType: !2172, size: 64, offset: 19008)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !4085, file: !4064, line: 499, baseType: !382, size: 64, offset: 19072)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !4085, file: !4064, line: 500, baseType: !166, size: 64, offset: 19136)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !4085, file: !4064, line: 502, baseType: !133, size: 64, offset: 19200)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4063, file: !4064, line: 863, baseType: !4301, size: 64, offset: 320)
!4301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4302, size: 64)
!4302 = !DISubroutineType(types: !4303)
!4303 = !{null, !4084}
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4063, file: !4064, line: 864, baseType: !4305, size: 64, offset: 384)
!4305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4306, size: 64)
!4306 = !DISubroutineType(types: !4307)
!4307 = !{!131, !4084, !3530}
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4063, file: !4064, line: 865, baseType: !4309, size: 64, offset: 448)
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4310, size: 64)
!4310 = !DISubroutineType(types: !4311)
!4311 = !{!131, !4084}
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4063, file: !4064, line: 866, baseType: !4301, size: 64, offset: 512)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4063, file: !4064, line: 867, baseType: !4314, size: 64, offset: 576)
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4315 = !DISubroutineType(types: !4316)
!4316 = !{!131, !4084, !131}
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4063, file: !4064, line: 868, baseType: !4318, size: 64, offset: 640)
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4319, size: 64)
!4319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4320)
!4320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !4064, line: 795, size: 384, elements: !4321)
!4321 = !{!4322, !4327, !4331, !4332, !4333, !4334}
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4320, file: !4064, line: 797, baseType: !4323, size: 64)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = !DISubroutineType(types: !4325)
!4325 = !{!4326, !4084, !4226}
!4326 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !4064, line: 772, baseType: !7)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4320, file: !4064, line: 801, baseType: !4328, size: 64, offset: 64)
!4328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4329, size: 64)
!4329 = !DISubroutineType(types: !4330)
!4330 = !{!4326, !4084}
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4320, file: !4064, line: 804, baseType: !4328, size: 64, offset: 128)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4320, file: !4064, line: 807, baseType: !4301, size: 64, offset: 192)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4320, file: !4064, line: 808, baseType: !4301, size: 64, offset: 256)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4320, file: !4064, line: 811, baseType: !4301, size: 64, offset: 320)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4063, file: !4064, line: 869, baseType: !388, size: 64, offset: 704)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4063, file: !4064, line: 870, baseType: !3488, size: 1152, offset: 768)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4063, file: !4064, line: 871, baseType: !4338, size: 128, offset: 1920)
!4338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !4064, line: 759, size: 128, elements: !4339)
!4339 = !{!4340, !4341}
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4338, file: !4064, line: 760, baseType: !296)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4338, file: !4064, line: 761, baseType: !283, size: 128)
!4342 = !DIGlobalVariableExpression(var: !4343, expr: !DIExpression())
!4343 = distinct !DIGlobalVariable(name: "ni_65xx_pci_table", scope: !2, file: !3, line: 785, type: !4344, isLocal: true, isDefinition: true)
!4344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4070, size: 5888, elements: !4345)
!4345 = !{!4346}
!4346 = !DISubrange(count: 23)
!4347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 240, elements: !4348)
!4348 = !{!4349}
!4349 = !DISubrange(count: 30)
!4350 = !{i32 7, !"Dwarf Version", i32 4}
!4351 = !{i32 2, !"Debug Info Version", i32 3}
!4352 = !{i32 1, !"wchar_size", i32 2}
!4353 = !{i32 1, !"Code Model", i32 2}
!4354 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4355 = distinct !DISubprogram(name: "ni_65xx_driver_init", scope: !3, file: !3, line: 818, type: !4356, scopeLine: 818, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!4356 = !DISubroutineType(types: !4357)
!4357 = !{!131}
!4358 = !DILocation(line: 818, column: 1, scope: !4355)
!4359 = distinct !DISubprogram(name: "ni_65xx_driver_exit", scope: !3, file: !3, line: 818, type: !224, scopeLine: 818, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!4360 = !DILocation(line: 818, column: 1, scope: !4359)
!4361 = distinct !DISubprogram(name: "ni_65xx_detach", scope: !3, file: !3, line: 765, type: !4021, scopeLine: 766, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!4362 = !DILocalVariable(name: "dev", arg: 1, scope: !4361, file: !3, line: 765, type: !264)
!4363 = !DILocation(line: 765, column: 50, scope: !4361)
!4364 = !DILocation(line: 767, column: 6, scope: !4365)
!4365 = distinct !DILexicalBlock(scope: !4361, file: !3, line: 767, column: 6)
!4366 = !DILocation(line: 767, column: 11, scope: !4365)
!4367 = !DILocation(line: 767, column: 6, scope: !4361)
!4368 = !DILocation(line: 768, column: 16, scope: !4365)
!4369 = !DILocation(line: 768, column: 21, scope: !4365)
!4370 = !DILocation(line: 768, column: 26, scope: !4365)
!4371 = !DILocation(line: 768, column: 3, scope: !4365)
!4372 = !DILocation(line: 769, column: 20, scope: !4361)
!4373 = !DILocation(line: 769, column: 2, scope: !4361)
!4374 = !DILocation(line: 770, column: 1, scope: !4361)
!4375 = distinct !DISubprogram(name: "ni_65xx_auto_attach", scope: !3, file: !3, line: 628, type: !4041, scopeLine: 630, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!4376 = !DILocalVariable(name: "dev", arg: 1, scope: !4375, file: !3, line: 628, type: !264)
!4377 = !DILocation(line: 628, column: 54, scope: !4375)
!4378 = !DILocalVariable(name: "context", arg: 2, scope: !4375, file: !3, line: 629, type: !133)
!4379 = !DILocation(line: 629, column: 25, scope: !4375)
!4380 = !DILocalVariable(name: "pcidev", scope: !4375, file: !3, line: 631, type: !4084)
!4381 = !DILocation(line: 631, column: 18, scope: !4375)
!4382 = !DILocation(line: 631, column: 45, scope: !4375)
!4383 = !DILocation(line: 631, column: 27, scope: !4375)
!4384 = !DILocalVariable(name: "board", scope: !4375, file: !3, line: 632, type: !4385)
!4385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!4386 = !DILocation(line: 632, column: 30, scope: !4375)
!4387 = !DILocalVariable(name: "s", scope: !4375, file: !3, line: 633, type: !3875)
!4388 = !DILocation(line: 633, column: 27, scope: !4375)
!4389 = !DILocalVariable(name: "i", scope: !4375, file: !3, line: 634, type: !7)
!4390 = !DILocation(line: 634, column: 15, scope: !4375)
!4391 = !DILocalVariable(name: "ret", scope: !4375, file: !3, line: 635, type: !131)
!4392 = !DILocation(line: 635, column: 6, scope: !4375)
!4393 = !DILocation(line: 637, column: 6, scope: !4394)
!4394 = distinct !DILexicalBlock(scope: !4375, file: !3, line: 637, column: 6)
!4395 = !DILocation(line: 637, column: 14, scope: !4394)
!4396 = !DILocation(line: 637, column: 6, scope: !4375)
!4397 = !DILocation(line: 638, column: 27, scope: !4394)
!4398 = !DILocation(line: 638, column: 12, scope: !4394)
!4399 = !DILocation(line: 638, column: 9, scope: !4394)
!4400 = !DILocation(line: 638, column: 3, scope: !4394)
!4401 = !DILocation(line: 639, column: 7, scope: !4402)
!4402 = distinct !DILexicalBlock(scope: !4375, file: !3, line: 639, column: 6)
!4403 = !DILocation(line: 639, column: 6, scope: !4375)
!4404 = !DILocation(line: 640, column: 3, scope: !4402)
!4405 = !DILocation(line: 641, column: 19, scope: !4375)
!4406 = !DILocation(line: 641, column: 2, scope: !4375)
!4407 = !DILocation(line: 641, column: 7, scope: !4375)
!4408 = !DILocation(line: 641, column: 17, scope: !4375)
!4409 = !DILocation(line: 642, column: 20, scope: !4375)
!4410 = !DILocation(line: 642, column: 27, scope: !4375)
!4411 = !DILocation(line: 642, column: 2, scope: !4375)
!4412 = !DILocation(line: 642, column: 7, scope: !4375)
!4413 = !DILocation(line: 642, column: 18, scope: !4375)
!4414 = !DILocation(line: 644, column: 26, scope: !4375)
!4415 = !DILocation(line: 644, column: 8, scope: !4375)
!4416 = !DILocation(line: 644, column: 6, scope: !4375)
!4417 = !DILocation(line: 645, column: 6, scope: !4418)
!4418 = distinct !DILexicalBlock(scope: !4375, file: !3, line: 645, column: 6)
!4419 = !DILocation(line: 645, column: 6, scope: !4375)
!4420 = !DILocation(line: 646, column: 10, scope: !4418)
!4421 = !DILocation(line: 646, column: 3, scope: !4418)
!4422 = !DILocation(line: 648, column: 26, scope: !4375)
!4423 = !DILocation(line: 648, column: 8, scope: !4375)
!4424 = !DILocation(line: 648, column: 6, scope: !4375)
!4425 = !DILocation(line: 649, column: 6, scope: !4426)
!4426 = distinct !DILexicalBlock(scope: !4375, file: !3, line: 649, column: 6)
!4427 = !DILocation(line: 649, column: 6, scope: !4375)
!4428 = !DILocation(line: 650, column: 10, scope: !4426)
!4429 = !DILocation(line: 650, column: 3, scope: !4426)
!4430 = !DILocation(line: 652, column: 30, scope: !4375)
!4431 = !DILocation(line: 652, column: 14, scope: !4375)
!4432 = !DILocation(line: 652, column: 2, scope: !4375)
!4433 = !DILocation(line: 652, column: 7, scope: !4375)
!4434 = !DILocation(line: 652, column: 12, scope: !4375)
!4435 = !DILocation(line: 653, column: 7, scope: !4436)
!4436 = distinct !DILexicalBlock(scope: !4375, file: !3, line: 653, column: 6)
!4437 = !DILocation(line: 653, column: 12, scope: !4436)
!4438 = !DILocation(line: 653, column: 6, scope: !4375)
!4439 = !DILocation(line: 654, column: 3, scope: !4436)
!4440 = !DILocation(line: 657, column: 9, scope: !4375)
!4441 = !DILocation(line: 657, column: 14, scope: !4375)
!4442 = !DILocation(line: 657, column: 19, scope: !4375)
!4443 = !DILocation(line: 656, column: 2, scope: !4375)
!4444 = !DILocation(line: 658, column: 15, scope: !4375)
!4445 = !DILocation(line: 658, column: 20, scope: !4375)
!4446 = !DILocation(line: 658, column: 25, scope: !4375)
!4447 = !DILocation(line: 658, column: 2, scope: !4375)
!4448 = !DILocation(line: 660, column: 6, scope: !4449)
!4449 = distinct !DILexicalBlock(scope: !4375, file: !3, line: 660, column: 6)
!4450 = !DILocation(line: 660, column: 14, scope: !4449)
!4451 = !DILocation(line: 660, column: 6, scope: !4375)
!4452 = !DILocation(line: 661, column: 21, scope: !4453)
!4453 = distinct !DILexicalBlock(scope: !4449, file: !3, line: 660, column: 19)
!4454 = !DILocation(line: 661, column: 29, scope: !4453)
!4455 = !DILocation(line: 662, column: 7, scope: !4453)
!4456 = !DILocation(line: 662, column: 12, scope: !4453)
!4457 = !DILocation(line: 662, column: 24, scope: !4453)
!4458 = !DILocation(line: 661, column: 9, scope: !4453)
!4459 = !DILocation(line: 661, column: 7, scope: !4453)
!4460 = !DILocation(line: 663, column: 7, scope: !4461)
!4461 = distinct !DILexicalBlock(scope: !4453, file: !3, line: 663, column: 7)
!4462 = !DILocation(line: 663, column: 11, scope: !4461)
!4463 = !DILocation(line: 663, column: 7, scope: !4453)
!4464 = !DILocation(line: 664, column: 15, scope: !4461)
!4465 = !DILocation(line: 664, column: 23, scope: !4461)
!4466 = !DILocation(line: 664, column: 4, scope: !4461)
!4467 = !DILocation(line: 664, column: 9, scope: !4461)
!4468 = !DILocation(line: 664, column: 13, scope: !4461)
!4469 = !DILocation(line: 665, column: 2, scope: !4453)
!4470 = !DILocation(line: 667, column: 2, scope: !4375)
!4471 = !DILocation(line: 670, column: 32, scope: !4375)
!4472 = !DILocation(line: 670, column: 8, scope: !4375)
!4473 = !DILocation(line: 670, column: 6, scope: !4375)
!4474 = !DILocation(line: 671, column: 6, scope: !4475)
!4475 = distinct !DILexicalBlock(scope: !4375, file: !3, line: 671, column: 6)
!4476 = !DILocation(line: 671, column: 6, scope: !4375)
!4477 = !DILocation(line: 672, column: 10, scope: !4475)
!4478 = !DILocation(line: 672, column: 3, scope: !4475)
!4479 = !DILocation(line: 674, column: 7, scope: !4375)
!4480 = !DILocation(line: 674, column: 12, scope: !4375)
!4481 = !DILocation(line: 674, column: 4, scope: !4375)
!4482 = !DILocation(line: 675, column: 6, scope: !4483)
!4483 = distinct !DILexicalBlock(scope: !4375, file: !3, line: 675, column: 6)
!4484 = !DILocation(line: 675, column: 13, scope: !4483)
!4485 = !DILocation(line: 675, column: 6, scope: !4375)
!4486 = !DILocation(line: 676, column: 3, scope: !4487)
!4487 = distinct !DILexicalBlock(scope: !4483, file: !3, line: 675, column: 27)
!4488 = !DILocation(line: 676, column: 6, scope: !4487)
!4489 = !DILocation(line: 676, column: 12, scope: !4487)
!4490 = !DILocation(line: 677, column: 3, scope: !4487)
!4491 = !DILocation(line: 677, column: 6, scope: !4487)
!4492 = !DILocation(line: 677, column: 19, scope: !4487)
!4493 = !DILocation(line: 678, column: 15, scope: !4487)
!4494 = !DILocation(line: 678, column: 3, scope: !4487)
!4495 = !DILocation(line: 678, column: 6, scope: !4487)
!4496 = !DILocation(line: 678, column: 13, scope: !4487)
!4497 = !DILocation(line: 679, column: 3, scope: !4487)
!4498 = !DILocation(line: 679, column: 6, scope: !4487)
!4499 = !DILocation(line: 679, column: 14, scope: !4487)
!4500 = !DILocation(line: 680, column: 3, scope: !4487)
!4501 = !DILocation(line: 680, column: 6, scope: !4487)
!4502 = !DILocation(line: 680, column: 18, scope: !4487)
!4503 = !DILocation(line: 681, column: 3, scope: !4487)
!4504 = !DILocation(line: 681, column: 6, scope: !4487)
!4505 = !DILocation(line: 681, column: 16, scope: !4487)
!4506 = !DILocation(line: 682, column: 3, scope: !4487)
!4507 = !DILocation(line: 682, column: 6, scope: !4487)
!4508 = !DILocation(line: 682, column: 18, scope: !4487)
!4509 = !DILocation(line: 685, column: 3, scope: !4487)
!4510 = !DILocation(line: 685, column: 6, scope: !4487)
!4511 = !DILocation(line: 685, column: 14, scope: !4487)
!4512 = !DILocation(line: 686, column: 2, scope: !4487)
!4513 = !DILocation(line: 687, column: 3, scope: !4514)
!4514 = distinct !DILexicalBlock(scope: !4483, file: !3, line: 686, column: 9)
!4515 = !DILocation(line: 687, column: 6, scope: !4514)
!4516 = !DILocation(line: 687, column: 12, scope: !4514)
!4517 = !DILocation(line: 690, column: 7, scope: !4375)
!4518 = !DILocation(line: 690, column: 12, scope: !4375)
!4519 = !DILocation(line: 690, column: 4, scope: !4375)
!4520 = !DILocation(line: 691, column: 6, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !4375, file: !3, line: 691, column: 6)
!4522 = !DILocation(line: 691, column: 13, scope: !4521)
!4523 = !DILocation(line: 691, column: 6, scope: !4375)
!4524 = !DILocation(line: 692, column: 3, scope: !4525)
!4525 = distinct !DILexicalBlock(scope: !4521, file: !3, line: 691, column: 27)
!4526 = !DILocation(line: 692, column: 6, scope: !4525)
!4527 = !DILocation(line: 692, column: 12, scope: !4525)
!4528 = !DILocation(line: 693, column: 3, scope: !4525)
!4529 = !DILocation(line: 693, column: 6, scope: !4525)
!4530 = !DILocation(line: 693, column: 19, scope: !4525)
!4531 = !DILocation(line: 694, column: 15, scope: !4525)
!4532 = !DILocation(line: 694, column: 3, scope: !4525)
!4533 = !DILocation(line: 694, column: 6, scope: !4525)
!4534 = !DILocation(line: 694, column: 13, scope: !4525)
!4535 = !DILocation(line: 695, column: 3, scope: !4525)
!4536 = !DILocation(line: 695, column: 6, scope: !4525)
!4537 = !DILocation(line: 695, column: 14, scope: !4525)
!4538 = !DILocation(line: 696, column: 3, scope: !4525)
!4539 = !DILocation(line: 696, column: 6, scope: !4525)
!4540 = !DILocation(line: 696, column: 18, scope: !4525)
!4541 = !DILocation(line: 697, column: 3, scope: !4525)
!4542 = !DILocation(line: 697, column: 6, scope: !4525)
!4543 = !DILocation(line: 697, column: 16, scope: !4525)
!4544 = !DILocation(line: 700, column: 39, scope: !4525)
!4545 = !DILocation(line: 700, column: 46, scope: !4525)
!4546 = !DILocation(line: 700, column: 24, scope: !4525)
!4547 = !DILocation(line: 700, column: 16, scope: !4525)
!4548 = !DILocation(line: 700, column: 3, scope: !4525)
!4549 = !DILocation(line: 700, column: 6, scope: !4525)
!4550 = !DILocation(line: 700, column: 14, scope: !4525)
!4551 = !DILocation(line: 707, column: 7, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !4525, file: !3, line: 707, column: 7)
!4553 = !DILocation(line: 707, column: 37, scope: !4552)
!4554 = !DILocation(line: 707, column: 40, scope: !4552)
!4555 = !DILocation(line: 707, column: 47, scope: !4552)
!4556 = !DILocation(line: 707, column: 7, scope: !4525)
!4557 = !DILocation(line: 708, column: 4, scope: !4552)
!4558 = !DILocation(line: 708, column: 7, scope: !4552)
!4559 = !DILocation(line: 708, column: 15, scope: !4552)
!4560 = !DILocation(line: 711, column: 10, scope: !4561)
!4561 = distinct !DILexicalBlock(scope: !4525, file: !3, line: 711, column: 3)
!4562 = !DILocation(line: 711, column: 8, scope: !4561)
!4563 = !DILocation(line: 711, column: 15, scope: !4564)
!4564 = distinct !DILexicalBlock(scope: !4561, file: !3, line: 711, column: 3)
!4565 = !DILocation(line: 711, column: 19, scope: !4564)
!4566 = !DILocation(line: 711, column: 26, scope: !4564)
!4567 = !DILocation(line: 711, column: 17, scope: !4564)
!4568 = !DILocation(line: 711, column: 3, scope: !4561)
!4569 = !DILocation(line: 712, column: 11, scope: !4570)
!4570 = distinct !DILexicalBlock(scope: !4564, file: !3, line: 711, column: 45)
!4571 = !DILocation(line: 712, column: 14, scope: !4570)
!4572 = !DILocation(line: 713, column: 11, scope: !4570)
!4573 = !DILocation(line: 713, column: 16, scope: !4570)
!4574 = !DILocation(line: 714, column: 11, scope: !4570)
!4575 = !DILocation(line: 713, column: 21, scope: !4570)
!4576 = !DILocation(line: 712, column: 4, scope: !4570)
!4577 = !DILocation(line: 715, column: 3, scope: !4570)
!4578 = !DILocation(line: 711, column: 40, scope: !4564)
!4579 = !DILocation(line: 711, column: 3, scope: !4564)
!4580 = distinct !{!4580, !4568, !4581}
!4581 = !DILocation(line: 715, column: 3, scope: !4561)
!4582 = !DILocation(line: 716, column: 2, scope: !4525)
!4583 = !DILocation(line: 717, column: 3, scope: !4584)
!4584 = distinct !DILexicalBlock(scope: !4521, file: !3, line: 716, column: 9)
!4585 = !DILocation(line: 717, column: 6, scope: !4584)
!4586 = !DILocation(line: 717, column: 12, scope: !4584)
!4587 = !DILocation(line: 720, column: 7, scope: !4375)
!4588 = !DILocation(line: 720, column: 12, scope: !4375)
!4589 = !DILocation(line: 720, column: 4, scope: !4375)
!4590 = !DILocation(line: 721, column: 6, scope: !4591)
!4591 = distinct !DILexicalBlock(scope: !4375, file: !3, line: 721, column: 6)
!4592 = !DILocation(line: 721, column: 13, scope: !4591)
!4593 = !DILocation(line: 721, column: 6, scope: !4375)
!4594 = !DILocation(line: 722, column: 3, scope: !4595)
!4595 = distinct !DILexicalBlock(scope: !4591, file: !3, line: 721, column: 28)
!4596 = !DILocation(line: 722, column: 6, scope: !4595)
!4597 = !DILocation(line: 722, column: 12, scope: !4595)
!4598 = !DILocation(line: 723, column: 3, scope: !4595)
!4599 = !DILocation(line: 723, column: 6, scope: !4595)
!4600 = !DILocation(line: 723, column: 19, scope: !4595)
!4601 = !DILocation(line: 724, column: 15, scope: !4595)
!4602 = !DILocation(line: 724, column: 3, scope: !4595)
!4603 = !DILocation(line: 724, column: 6, scope: !4595)
!4604 = !DILocation(line: 724, column: 13, scope: !4595)
!4605 = !DILocation(line: 725, column: 3, scope: !4595)
!4606 = !DILocation(line: 725, column: 6, scope: !4595)
!4607 = !DILocation(line: 725, column: 14, scope: !4595)
!4608 = !DILocation(line: 726, column: 3, scope: !4595)
!4609 = !DILocation(line: 726, column: 6, scope: !4595)
!4610 = !DILocation(line: 726, column: 18, scope: !4595)
!4611 = !DILocation(line: 727, column: 3, scope: !4595)
!4612 = !DILocation(line: 727, column: 6, scope: !4595)
!4613 = !DILocation(line: 727, column: 16, scope: !4595)
!4614 = !DILocation(line: 728, column: 3, scope: !4595)
!4615 = !DILocation(line: 728, column: 6, scope: !4595)
!4616 = !DILocation(line: 728, column: 18, scope: !4595)
!4617 = !DILocation(line: 731, column: 3, scope: !4595)
!4618 = !DILocation(line: 731, column: 6, scope: !4595)
!4619 = !DILocation(line: 731, column: 14, scope: !4595)
!4620 = !DILocation(line: 734, column: 10, scope: !4621)
!4621 = distinct !DILexicalBlock(scope: !4595, file: !3, line: 734, column: 3)
!4622 = !DILocation(line: 734, column: 8, scope: !4621)
!4623 = !DILocation(line: 734, column: 15, scope: !4624)
!4624 = distinct !DILexicalBlock(scope: !4621, file: !3, line: 734, column: 3)
!4625 = !DILocation(line: 734, column: 19, scope: !4624)
!4626 = !DILocation(line: 734, column: 26, scope: !4624)
!4627 = !DILocation(line: 734, column: 17, scope: !4624)
!4628 = !DILocation(line: 734, column: 3, scope: !4621)
!4629 = !DILocation(line: 736, column: 11, scope: !4630)
!4630 = distinct !DILexicalBlock(scope: !4624, file: !3, line: 734, column: 46)
!4631 = !DILocation(line: 736, column: 16, scope: !4630)
!4632 = !DILocation(line: 736, column: 23, scope: !4630)
!4633 = !DILocation(line: 736, column: 21, scope: !4630)
!4634 = !DILocation(line: 735, column: 4, scope: !4630)
!4635 = !DILocation(line: 737, column: 3, scope: !4630)
!4636 = !DILocation(line: 734, column: 41, scope: !4624)
!4637 = !DILocation(line: 734, column: 3, scope: !4624)
!4638 = distinct !{!4638, !4628, !4639}
!4639 = !DILocation(line: 737, column: 3, scope: !4621)
!4640 = !DILocation(line: 738, column: 2, scope: !4595)
!4641 = !DILocation(line: 739, column: 3, scope: !4642)
!4642 = distinct !DILexicalBlock(scope: !4591, file: !3, line: 738, column: 9)
!4643 = !DILocation(line: 739, column: 6, scope: !4642)
!4644 = !DILocation(line: 739, column: 12, scope: !4642)
!4645 = !DILocation(line: 742, column: 7, scope: !4375)
!4646 = !DILocation(line: 742, column: 12, scope: !4375)
!4647 = !DILocation(line: 742, column: 4, scope: !4375)
!4648 = !DILocation(line: 743, column: 2, scope: !4375)
!4649 = !DILocation(line: 743, column: 5, scope: !4375)
!4650 = !DILocation(line: 743, column: 11, scope: !4375)
!4651 = !DILocation(line: 744, column: 2, scope: !4375)
!4652 = !DILocation(line: 744, column: 5, scope: !4375)
!4653 = !DILocation(line: 744, column: 18, scope: !4375)
!4654 = !DILocation(line: 745, column: 2, scope: !4375)
!4655 = !DILocation(line: 745, column: 5, scope: !4375)
!4656 = !DILocation(line: 745, column: 12, scope: !4375)
!4657 = !DILocation(line: 746, column: 2, scope: !4375)
!4658 = !DILocation(line: 746, column: 5, scope: !4375)
!4659 = !DILocation(line: 746, column: 13, scope: !4375)
!4660 = !DILocation(line: 747, column: 2, scope: !4375)
!4661 = !DILocation(line: 747, column: 5, scope: !4375)
!4662 = !DILocation(line: 747, column: 17, scope: !4375)
!4663 = !DILocation(line: 748, column: 2, scope: !4375)
!4664 = !DILocation(line: 748, column: 5, scope: !4375)
!4665 = !DILocation(line: 748, column: 15, scope: !4375)
!4666 = !DILocation(line: 749, column: 6, scope: !4667)
!4667 = distinct !DILexicalBlock(scope: !4375, file: !3, line: 749, column: 6)
!4668 = !DILocation(line: 749, column: 11, scope: !4667)
!4669 = !DILocation(line: 749, column: 6, scope: !4375)
!4670 = !DILocation(line: 750, column: 22, scope: !4671)
!4671 = distinct !DILexicalBlock(scope: !4667, file: !3, line: 749, column: 16)
!4672 = !DILocation(line: 750, column: 3, scope: !4671)
!4673 = !DILocation(line: 750, column: 8, scope: !4671)
!4674 = !DILocation(line: 750, column: 20, scope: !4671)
!4675 = !DILocation(line: 751, column: 3, scope: !4671)
!4676 = !DILocation(line: 751, column: 6, scope: !4671)
!4677 = !DILocation(line: 751, column: 19, scope: !4671)
!4678 = !DILocation(line: 752, column: 3, scope: !4671)
!4679 = !DILocation(line: 752, column: 6, scope: !4671)
!4680 = !DILocation(line: 752, column: 19, scope: !4671)
!4681 = !DILocation(line: 753, column: 3, scope: !4671)
!4682 = !DILocation(line: 753, column: 6, scope: !4671)
!4683 = !DILocation(line: 753, column: 18, scope: !4671)
!4684 = !DILocation(line: 754, column: 3, scope: !4671)
!4685 = !DILocation(line: 754, column: 6, scope: !4671)
!4686 = !DILocation(line: 754, column: 17, scope: !4671)
!4687 = !DILocation(line: 755, column: 3, scope: !4671)
!4688 = !DILocation(line: 755, column: 6, scope: !4671)
!4689 = !DILocation(line: 755, column: 13, scope: !4671)
!4690 = !DILocation(line: 756, column: 3, scope: !4671)
!4691 = !DILocation(line: 756, column: 6, scope: !4671)
!4692 = !DILocation(line: 756, column: 13, scope: !4671)
!4693 = !DILocation(line: 757, column: 2, scope: !4671)
!4694 = !DILocation(line: 759, column: 32, scope: !4375)
!4695 = !DILocation(line: 759, column: 2, scope: !4375)
!4696 = !DILocation(line: 760, column: 33, scope: !4375)
!4697 = !DILocation(line: 760, column: 2, scope: !4375)
!4698 = !DILocation(line: 762, column: 2, scope: !4375)
!4699 = !DILocation(line: 763, column: 1, scope: !4375)
!4700 = distinct !DISubprogram(name: "writeb", scope: !4701, file: !4701, line: 65, type: !4702, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!4701 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!4702 = !DISubroutineType(types: !4703)
!4703 = !{null, !130, !4704}
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4705 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4706 = !DILocalVariable(name: "val", arg: 1, scope: !4700, file: !4701, line: 65, type: !130)
!4707 = !DILocation(line: 65, column: 1, scope: !4700)
!4708 = !DILocalVariable(name: "addr", arg: 2, scope: !4700, file: !4701, line: 65, type: !4704)
!4709 = !{i32 -2143410419}
!4710 = distinct !DISubprogram(name: "ni_65xx_mite_init", scope: !3, file: !3, line: 609, type: !4310, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!4711 = !DILocalVariable(name: "pcidev", arg: 1, scope: !4710, file: !3, line: 609, type: !4084)
!4712 = !DILocation(line: 609, column: 46, scope: !4710)
!4713 = !DILocalVariable(name: "mite_base", scope: !4710, file: !3, line: 611, type: !132)
!4714 = !DILocation(line: 611, column: 16, scope: !4710)
!4715 = !DILocalVariable(name: "main_phys_addr", scope: !4710, file: !3, line: 612, type: !475)
!4716 = !DILocation(line: 612, column: 6, scope: !4710)
!4717 = !DILocation(line: 615, column: 30, scope: !4710)
!4718 = !DILocation(line: 615, column: 14, scope: !4710)
!4719 = !DILocation(line: 615, column: 12, scope: !4710)
!4720 = !DILocation(line: 616, column: 7, scope: !4721)
!4721 = distinct !DILexicalBlock(scope: !4710, file: !3, line: 616, column: 6)
!4722 = !DILocation(line: 616, column: 6, scope: !4710)
!4723 = !DILocation(line: 617, column: 3, scope: !4721)
!4724 = !DILocation(line: 620, column: 19, scope: !4710)
!4725 = !DILocation(line: 620, column: 17, scope: !4710)
!4726 = !DILocation(line: 621, column: 9, scope: !4710)
!4727 = !DILocation(line: 621, column: 24, scope: !4710)
!4728 = !DILocation(line: 621, column: 33, scope: !4710)
!4729 = !DILocation(line: 621, column: 43, scope: !4710)
!4730 = !DILocation(line: 621, column: 2, scope: !4710)
!4731 = !DILocation(line: 624, column: 10, scope: !4710)
!4732 = !DILocation(line: 624, column: 2, scope: !4710)
!4733 = !DILocation(line: 625, column: 2, scope: !4710)
!4734 = !DILocation(line: 626, column: 1, scope: !4710)
!4735 = distinct !DISubprogram(name: "request_irq", scope: !4146, file: !4146, line: 157, type: !4736, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!4736 = !DISubroutineType(types: !4737)
!4737 = !{!131, !7, !4738, !133, !144, !132}
!4738 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !4146, line: 92, baseType: !4739)
!4739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4740, size: 64)
!4740 = !DISubroutineType(types: !4741)
!4741 = !{!4742, !131, !132}
!4742 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !117, line: 17, baseType: !116)
!4743 = !DILocalVariable(name: "irq", arg: 1, scope: !4735, file: !4146, line: 157, type: !7)
!4744 = !DILocation(line: 157, column: 26, scope: !4735)
!4745 = !DILocalVariable(name: "handler", arg: 2, scope: !4735, file: !4146, line: 157, type: !4738)
!4746 = !DILocation(line: 157, column: 45, scope: !4735)
!4747 = !DILocalVariable(name: "flags", arg: 3, scope: !4735, file: !4146, line: 157, type: !133)
!4748 = !DILocation(line: 157, column: 68, scope: !4735)
!4749 = !DILocalVariable(name: "name", arg: 4, scope: !4735, file: !4146, line: 158, type: !144)
!4750 = !DILocation(line: 158, column: 18, scope: !4735)
!4751 = !DILocalVariable(name: "dev", arg: 5, scope: !4735, file: !4146, line: 158, type: !132)
!4752 = !DILocation(line: 158, column: 30, scope: !4735)
!4753 = !DILocation(line: 160, column: 30, scope: !4735)
!4754 = !DILocation(line: 160, column: 35, scope: !4735)
!4755 = !DILocation(line: 160, column: 50, scope: !4735)
!4756 = !DILocation(line: 160, column: 57, scope: !4735)
!4757 = !DILocation(line: 160, column: 63, scope: !4735)
!4758 = !DILocation(line: 160, column: 9, scope: !4735)
!4759 = !DILocation(line: 160, column: 2, scope: !4735)
!4760 = distinct !DISubprogram(name: "ni_65xx_interrupt", scope: !3, file: !3, line: 470, type: !4740, scopeLine: 471, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!4761 = !DILocalVariable(name: "irq", arg: 1, scope: !4760, file: !3, line: 470, type: !131)
!4762 = !DILocation(line: 470, column: 42, scope: !4760)
!4763 = !DILocalVariable(name: "d", arg: 2, scope: !4760, file: !3, line: 470, type: !132)
!4764 = !DILocation(line: 470, column: 53, scope: !4760)
!4765 = !DILocalVariable(name: "dev", scope: !4760, file: !3, line: 472, type: !264)
!4766 = !DILocation(line: 472, column: 24, scope: !4760)
!4767 = !DILocation(line: 472, column: 30, scope: !4760)
!4768 = !DILocalVariable(name: "s", scope: !4760, file: !3, line: 473, type: !3875)
!4769 = !DILocation(line: 473, column: 27, scope: !4760)
!4770 = !DILocation(line: 473, column: 31, scope: !4760)
!4771 = !DILocation(line: 473, column: 36, scope: !4760)
!4772 = !DILocalVariable(name: "status", scope: !4760, file: !3, line: 474, type: !7)
!4773 = !DILocation(line: 474, column: 15, scope: !4760)
!4774 = !DILocation(line: 476, column: 17, scope: !4760)
!4775 = !DILocation(line: 476, column: 22, scope: !4760)
!4776 = !DILocation(line: 476, column: 27, scope: !4760)
!4777 = !DILocation(line: 476, column: 11, scope: !4760)
!4778 = !DILocation(line: 476, column: 9, scope: !4760)
!4779 = !DILocation(line: 477, column: 7, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !4760, file: !3, line: 477, column: 6)
!4781 = !DILocation(line: 477, column: 14, scope: !4780)
!4782 = !DILocation(line: 477, column: 36, scope: !4780)
!4783 = !DILocation(line: 477, column: 6, scope: !4760)
!4784 = !DILocation(line: 478, column: 3, scope: !4780)
!4785 = !DILocation(line: 479, column: 7, scope: !4786)
!4786 = distinct !DILexicalBlock(scope: !4760, file: !3, line: 479, column: 6)
!4787 = !DILocation(line: 479, column: 14, scope: !4786)
!4788 = !DILocation(line: 479, column: 41, scope: !4786)
!4789 = !DILocation(line: 479, column: 6, scope: !4760)
!4790 = !DILocation(line: 480, column: 3, scope: !4786)
!4791 = !DILocation(line: 483, column: 9, scope: !4760)
!4792 = !DILocation(line: 483, column: 14, scope: !4760)
!4793 = !DILocation(line: 483, column: 19, scope: !4760)
!4794 = !DILocation(line: 482, column: 2, scope: !4760)
!4795 = !DILocation(line: 485, column: 27, scope: !4760)
!4796 = !DILocation(line: 485, column: 31, scope: !4760)
!4797 = !DILocation(line: 485, column: 34, scope: !4760)
!4798 = !DILocation(line: 485, column: 30, scope: !4760)
!4799 = !DILocation(line: 485, column: 2, scope: !4760)
!4800 = !DILocation(line: 486, column: 23, scope: !4760)
!4801 = !DILocation(line: 486, column: 28, scope: !4760)
!4802 = !DILocation(line: 486, column: 2, scope: !4760)
!4803 = !DILocation(line: 488, column: 2, scope: !4760)
!4804 = !DILocation(line: 489, column: 1, scope: !4760)
!4805 = distinct !DISubprogram(name: "readb", scope: !4701, file: !4701, line: 57, type: !4806, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!4806 = !DISubroutineType(types: !4807)
!4807 = !{!130, !4808}
!4808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4809, size: 64)
!4809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4705)
!4810 = !DILocalVariable(name: "addr", arg: 1, scope: !4805, file: !4701, line: 57, type: !4808)
!4811 = !DILocation(line: 57, column: 1, scope: !4805)
!4812 = !DILocalVariable(name: "ret", scope: !4805, file: !4701, line: 57, type: !130)
!4813 = !{i32 -2143412873}
!4814 = distinct !DISubprogram(name: "ni_65xx_dio_insn_bits", scope: !3, file: !3, line: 414, type: !3972, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!4815 = !DILocalVariable(name: "dev", arg: 1, scope: !4814, file: !3, line: 414, type: !264)
!4816 = !DILocation(line: 414, column: 56, scope: !4814)
!4817 = !DILocalVariable(name: "s", arg: 2, scope: !4814, file: !3, line: 415, type: !3875)
!4818 = !DILocation(line: 415, column: 31, scope: !4814)
!4819 = !DILocalVariable(name: "insn", arg: 3, scope: !4814, file: !3, line: 416, type: !3974)
!4820 = !DILocation(line: 416, column: 26, scope: !4814)
!4821 = !DILocalVariable(name: "data", arg: 4, scope: !4814, file: !3, line: 417, type: !204)
!4822 = !DILocation(line: 417, column: 20, scope: !4814)
!4823 = !DILocalVariable(name: "base_port", scope: !4814, file: !3, line: 419, type: !133)
!4824 = !DILocation(line: 419, column: 16, scope: !4814)
!4825 = !DILocation(line: 419, column: 43, scope: !4814)
!4826 = !DILocation(line: 419, column: 46, scope: !4814)
!4827 = !DILocation(line: 419, column: 28, scope: !4814)
!4828 = !DILocalVariable(name: "base_chan", scope: !4814, file: !3, line: 420, type: !7)
!4829 = !DILocation(line: 420, column: 15, scope: !4814)
!4830 = !DILocation(line: 420, column: 27, scope: !4814)
!4831 = !DILocalVariable(name: "last_port_offset", scope: !4814, file: !3, line: 421, type: !131)
!4832 = !DILocation(line: 421, column: 6, scope: !4814)
!4833 = !DILocation(line: 421, column: 25, scope: !4814)
!4834 = !DILocalVariable(name: "read_bits", scope: !4814, file: !3, line: 422, type: !7)
!4835 = !DILocation(line: 422, column: 15, scope: !4814)
!4836 = !DILocalVariable(name: "port_offset", scope: !4814, file: !3, line: 423, type: !131)
!4837 = !DILocation(line: 423, column: 6, scope: !4814)
!4838 = !DILocation(line: 425, column: 21, scope: !4839)
!4839 = distinct !DILexicalBlock(scope: !4814, file: !3, line: 425, column: 2)
!4840 = !DILocation(line: 425, column: 19, scope: !4839)
!4841 = !DILocation(line: 425, column: 7, scope: !4839)
!4842 = !DILocation(line: 426, column: 7, scope: !4843)
!4843 = distinct !DILexicalBlock(scope: !4839, file: !3, line: 425, column: 2)
!4844 = !DILocation(line: 426, column: 22, scope: !4843)
!4845 = !DILocation(line: 426, column: 19, scope: !4843)
!4846 = !DILocation(line: 425, column: 2, scope: !4839)
!4847 = !DILocalVariable(name: "port", scope: !4848, file: !3, line: 427, type: !7)
!4848 = distinct !DILexicalBlock(scope: !4843, file: !3, line: 426, column: 55)
!4849 = !DILocation(line: 427, column: 16, scope: !4848)
!4850 = !DILocation(line: 427, column: 23, scope: !4848)
!4851 = !DILocation(line: 427, column: 35, scope: !4848)
!4852 = !DILocation(line: 427, column: 33, scope: !4848)
!4853 = !DILocalVariable(name: "base_port_channel", scope: !4848, file: !3, line: 428, type: !131)
!4854 = !DILocation(line: 428, column: 7, scope: !4848)
!4855 = !DILocation(line: 428, column: 27, scope: !4848)
!4856 = !DILocalVariable(name: "port_mask", scope: !4848, file: !3, line: 429, type: !7)
!4857 = !DILocation(line: 429, column: 16, scope: !4848)
!4858 = !DILocalVariable(name: "port_data", scope: !4848, file: !3, line: 429, type: !7)
!4859 = !DILocation(line: 429, column: 27, scope: !4848)
!4860 = !DILocalVariable(name: "bits", scope: !4848, file: !3, line: 429, type: !7)
!4861 = !DILocation(line: 429, column: 38, scope: !4848)
!4862 = !DILocalVariable(name: "bitshift", scope: !4848, file: !3, line: 430, type: !131)
!4863 = !DILocation(line: 430, column: 7, scope: !4848)
!4864 = !DILocation(line: 430, column: 18, scope: !4848)
!4865 = !DILocation(line: 430, column: 38, scope: !4848)
!4866 = !DILocation(line: 430, column: 36, scope: !4848)
!4867 = !DILocation(line: 432, column: 7, scope: !4868)
!4868 = distinct !DILexicalBlock(scope: !4848, file: !3, line: 432, column: 7)
!4869 = !DILocation(line: 432, column: 16, scope: !4868)
!4870 = !DILocation(line: 432, column: 7, scope: !4848)
!4871 = !DILocation(line: 433, column: 4, scope: !4868)
!4872 = !DILocation(line: 434, column: 15, scope: !4848)
!4873 = !DILocation(line: 434, column: 13, scope: !4848)
!4874 = !DILocation(line: 435, column: 15, scope: !4848)
!4875 = !DILocation(line: 435, column: 13, scope: !4848)
!4876 = !DILocation(line: 436, column: 7, scope: !4877)
!4877 = distinct !DILexicalBlock(scope: !4848, file: !3, line: 436, column: 7)
!4878 = !DILocation(line: 436, column: 16, scope: !4877)
!4879 = !DILocation(line: 436, column: 7, scope: !4848)
!4880 = !DILocation(line: 437, column: 18, scope: !4881)
!4881 = distinct !DILexicalBlock(scope: !4877, file: !3, line: 436, column: 21)
!4882 = !DILocation(line: 437, column: 14, scope: !4881)
!4883 = !DILocation(line: 438, column: 18, scope: !4881)
!4884 = !DILocation(line: 438, column: 14, scope: !4881)
!4885 = !DILocation(line: 439, column: 3, scope: !4881)
!4886 = !DILocation(line: 440, column: 19, scope: !4887)
!4887 = distinct !DILexicalBlock(scope: !4877, file: !3, line: 439, column: 10)
!4888 = !DILocation(line: 440, column: 18, scope: !4887)
!4889 = !DILocation(line: 440, column: 14, scope: !4887)
!4890 = !DILocation(line: 441, column: 19, scope: !4887)
!4891 = !DILocation(line: 441, column: 18, scope: !4887)
!4892 = !DILocation(line: 441, column: 14, scope: !4887)
!4893 = !DILocation(line: 443, column: 13, scope: !4848)
!4894 = !DILocation(line: 444, column: 13, scope: !4848)
!4895 = !DILocation(line: 447, column: 7, scope: !4896)
!4896 = distinct !DILexicalBlock(scope: !4848, file: !3, line: 447, column: 7)
!4897 = !DILocation(line: 447, column: 7, scope: !4848)
!4898 = !DILocation(line: 448, column: 17, scope: !4899)
!4899 = distinct !DILexicalBlock(scope: !4896, file: !3, line: 447, column: 18)
!4900 = !DILocation(line: 448, column: 22, scope: !4899)
!4901 = !DILocation(line: 448, column: 29, scope: !4899)
!4902 = !DILocation(line: 448, column: 27, scope: !4899)
!4903 = !DILocation(line: 448, column: 11, scope: !4899)
!4904 = !DILocation(line: 448, column: 9, scope: !4899)
!4905 = !DILocation(line: 449, column: 12, scope: !4899)
!4906 = !DILocation(line: 449, column: 15, scope: !4899)
!4907 = !DILocation(line: 449, column: 9, scope: !4899)
!4908 = !DILocation(line: 450, column: 13, scope: !4899)
!4909 = !DILocation(line: 450, column: 12, scope: !4899)
!4910 = !DILocation(line: 450, column: 9, scope: !4899)
!4911 = !DILocation(line: 451, column: 13, scope: !4899)
!4912 = !DILocation(line: 451, column: 25, scope: !4899)
!4913 = !DILocation(line: 451, column: 23, scope: !4899)
!4914 = !DILocation(line: 451, column: 9, scope: !4899)
!4915 = !DILocation(line: 452, column: 12, scope: !4899)
!4916 = !DILocation(line: 452, column: 15, scope: !4899)
!4917 = !DILocation(line: 452, column: 9, scope: !4899)
!4918 = !DILocation(line: 453, column: 11, scope: !4899)
!4919 = !DILocation(line: 453, column: 17, scope: !4899)
!4920 = !DILocation(line: 453, column: 22, scope: !4899)
!4921 = !DILocation(line: 453, column: 29, scope: !4899)
!4922 = !DILocation(line: 453, column: 27, scope: !4899)
!4923 = !DILocation(line: 453, column: 4, scope: !4899)
!4924 = !DILocation(line: 454, column: 3, scope: !4899)
!4925 = !DILocation(line: 457, column: 16, scope: !4848)
!4926 = !DILocation(line: 457, column: 21, scope: !4848)
!4927 = !DILocation(line: 457, column: 28, scope: !4848)
!4928 = !DILocation(line: 457, column: 26, scope: !4848)
!4929 = !DILocation(line: 457, column: 10, scope: !4848)
!4930 = !DILocation(line: 457, column: 8, scope: !4848)
!4931 = !DILocation(line: 458, column: 11, scope: !4848)
!4932 = !DILocation(line: 458, column: 14, scope: !4848)
!4933 = !DILocation(line: 458, column: 8, scope: !4848)
!4934 = !DILocation(line: 459, column: 7, scope: !4935)
!4935 = distinct !DILexicalBlock(scope: !4848, file: !3, line: 459, column: 7)
!4936 = !DILocation(line: 459, column: 16, scope: !4935)
!4937 = !DILocation(line: 459, column: 7, scope: !4848)
!4938 = !DILocation(line: 460, column: 13, scope: !4935)
!4939 = !DILocation(line: 460, column: 9, scope: !4935)
!4940 = !DILocation(line: 460, column: 4, scope: !4935)
!4941 = !DILocation(line: 462, column: 14, scope: !4935)
!4942 = !DILocation(line: 462, column: 13, scope: !4935)
!4943 = !DILocation(line: 462, column: 9, scope: !4935)
!4944 = !DILocation(line: 464, column: 16, scope: !4848)
!4945 = !DILocation(line: 464, column: 13, scope: !4848)
!4946 = !DILocation(line: 465, column: 2, scope: !4848)
!4947 = !DILocation(line: 426, column: 51, scope: !4843)
!4948 = !DILocation(line: 425, column: 2, scope: !4843)
!4949 = distinct !{!4949, !4846, !4950}
!4950 = !DILocation(line: 465, column: 2, scope: !4839)
!4951 = !DILocation(line: 466, column: 12, scope: !4814)
!4952 = !DILocation(line: 466, column: 2, scope: !4814)
!4953 = !DILocation(line: 466, column: 10, scope: !4814)
!4954 = !DILocation(line: 467, column: 9, scope: !4814)
!4955 = !DILocation(line: 467, column: 15, scope: !4814)
!4956 = !DILocation(line: 467, column: 2, scope: !4814)
!4957 = distinct !DISubprogram(name: "ni_65xx_dio_insn_config", scope: !3, file: !3, line: 346, type: !3972, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!4958 = !DILocalVariable(name: "dev", arg: 1, scope: !4957, file: !3, line: 346, type: !264)
!4959 = !DILocation(line: 346, column: 58, scope: !4957)
!4960 = !DILocalVariable(name: "s", arg: 2, scope: !4957, file: !3, line: 347, type: !3875)
!4961 = !DILocation(line: 347, column: 33, scope: !4957)
!4962 = !DILocalVariable(name: "insn", arg: 3, scope: !4957, file: !3, line: 348, type: !3974)
!4963 = !DILocation(line: 348, column: 28, scope: !4957)
!4964 = !DILocalVariable(name: "data", arg: 4, scope: !4957, file: !3, line: 349, type: !204)
!4965 = !DILocation(line: 349, column: 22, scope: !4957)
!4966 = !DILocalVariable(name: "base_port", scope: !4957, file: !3, line: 351, type: !133)
!4967 = !DILocation(line: 351, column: 16, scope: !4957)
!4968 = !DILocation(line: 351, column: 43, scope: !4957)
!4969 = !DILocation(line: 351, column: 46, scope: !4957)
!4970 = !DILocation(line: 351, column: 28, scope: !4957)
!4971 = !DILocalVariable(name: "chan", scope: !4957, file: !3, line: 352, type: !7)
!4972 = !DILocation(line: 352, column: 15, scope: !4957)
!4973 = !DILocation(line: 352, column: 22, scope: !4957)
!4974 = !DILocalVariable(name: "chan_mask", scope: !4957, file: !3, line: 353, type: !7)
!4975 = !DILocation(line: 353, column: 15, scope: !4957)
!4976 = !DILocation(line: 353, column: 27, scope: !4957)
!4977 = !DILocalVariable(name: "port", scope: !4957, file: !3, line: 354, type: !7)
!4978 = !DILocation(line: 354, column: 15, scope: !4957)
!4979 = !DILocation(line: 354, column: 22, scope: !4957)
!4980 = !DILocation(line: 354, column: 34, scope: !4957)
!4981 = !DILocation(line: 354, column: 32, scope: !4957)
!4982 = !DILocalVariable(name: "interval", scope: !4957, file: !3, line: 355, type: !7)
!4983 = !DILocation(line: 355, column: 15, scope: !4957)
!4984 = !DILocalVariable(name: "val", scope: !4957, file: !3, line: 356, type: !7)
!4985 = !DILocation(line: 356, column: 15, scope: !4957)
!4986 = !DILocation(line: 358, column: 10, scope: !4957)
!4987 = !DILocation(line: 358, column: 2, scope: !4957)
!4988 = !DILocation(line: 365, column: 15, scope: !4989)
!4989 = distinct !DILexicalBlock(scope: !4957, file: !3, line: 358, column: 19)
!4990 = !DILocation(line: 365, column: 23, scope: !4989)
!4991 = !DILocation(line: 365, column: 30, scope: !4989)
!4992 = !DILocation(line: 365, column: 12, scope: !4989)
!4993 = !DILocation(line: 366, column: 7, scope: !4994)
!4994 = distinct !DILexicalBlock(scope: !4989, file: !3, line: 366, column: 7)
!4995 = !DILocation(line: 366, column: 16, scope: !4994)
!4996 = !DILocation(line: 366, column: 7, scope: !4989)
!4997 = !DILocation(line: 367, column: 13, scope: !4994)
!4998 = !DILocation(line: 367, column: 4, scope: !4994)
!4999 = !DILocation(line: 368, column: 13, scope: !4989)
!5000 = !DILocation(line: 368, column: 22, scope: !4989)
!5001 = !DILocation(line: 368, column: 3, scope: !4989)
!5002 = !DILocation(line: 368, column: 11, scope: !4989)
!5003 = !DILocation(line: 375, column: 15, scope: !4989)
!5004 = !DILocation(line: 375, column: 20, scope: !4989)
!5005 = !DILocation(line: 375, column: 27, scope: !4989)
!5006 = !DILocation(line: 375, column: 25, scope: !4989)
!5007 = !DILocation(line: 375, column: 9, scope: !4989)
!5008 = !DILocation(line: 375, column: 7, scope: !4989)
!5009 = !DILocation(line: 376, column: 7, scope: !5010)
!5010 = distinct !DILexicalBlock(scope: !4989, file: !3, line: 376, column: 7)
!5011 = !DILocation(line: 376, column: 7, scope: !4989)
!5012 = !DILocation(line: 377, column: 11, scope: !5013)
!5013 = distinct !DILexicalBlock(scope: !5010, file: !3, line: 376, column: 17)
!5014 = !DILocation(line: 377, column: 21, scope: !5013)
!5015 = !DILocation(line: 377, column: 26, scope: !5013)
!5016 = !DILocation(line: 377, column: 31, scope: !5013)
!5017 = !DILocation(line: 377, column: 4, scope: !5013)
!5018 = !DILocation(line: 378, column: 11, scope: !5013)
!5019 = !DILocation(line: 378, column: 8, scope: !5013)
!5020 = !DILocation(line: 379, column: 3, scope: !5013)
!5021 = !DILocation(line: 380, column: 12, scope: !5022)
!5022 = distinct !DILexicalBlock(scope: !5010, file: !3, line: 379, column: 10)
!5023 = !DILocation(line: 380, column: 11, scope: !5022)
!5024 = !DILocation(line: 380, column: 8, scope: !5022)
!5025 = !DILocation(line: 382, column: 10, scope: !4989)
!5026 = !DILocation(line: 382, column: 15, scope: !4989)
!5027 = !DILocation(line: 382, column: 20, scope: !4989)
!5028 = !DILocation(line: 382, column: 27, scope: !4989)
!5029 = !DILocation(line: 382, column: 25, scope: !4989)
!5030 = !DILocation(line: 382, column: 3, scope: !4989)
!5031 = !DILocation(line: 383, column: 3, scope: !4989)
!5032 = !DILocation(line: 386, column: 7, scope: !5033)
!5033 = distinct !DILexicalBlock(scope: !4989, file: !3, line: 386, column: 7)
!5034 = !DILocation(line: 386, column: 10, scope: !5033)
!5035 = !DILocation(line: 386, column: 15, scope: !5033)
!5036 = !DILocation(line: 386, column: 7, scope: !4989)
!5037 = !DILocation(line: 387, column: 4, scope: !5033)
!5038 = !DILocation(line: 389, column: 10, scope: !4989)
!5039 = !DILocation(line: 389, column: 15, scope: !4989)
!5040 = !DILocation(line: 389, column: 22, scope: !4989)
!5041 = !DILocation(line: 389, column: 20, scope: !4989)
!5042 = !DILocation(line: 388, column: 3, scope: !4989)
!5043 = !DILocation(line: 390, column: 3, scope: !4989)
!5044 = !DILocation(line: 393, column: 7, scope: !5045)
!5045 = distinct !DILexicalBlock(scope: !4989, file: !3, line: 393, column: 7)
!5046 = !DILocation(line: 393, column: 10, scope: !5045)
!5047 = !DILocation(line: 393, column: 15, scope: !5045)
!5048 = !DILocation(line: 393, column: 7, scope: !4989)
!5049 = !DILocation(line: 394, column: 4, scope: !5045)
!5050 = !DILocation(line: 396, column: 10, scope: !4989)
!5051 = !DILocation(line: 396, column: 15, scope: !4989)
!5052 = !DILocation(line: 396, column: 22, scope: !4989)
!5053 = !DILocation(line: 396, column: 20, scope: !4989)
!5054 = !DILocation(line: 395, column: 3, scope: !4989)
!5055 = !DILocation(line: 397, column: 3, scope: !4989)
!5056 = !DILocation(line: 400, column: 7, scope: !5057)
!5057 = distinct !DILexicalBlock(scope: !4989, file: !3, line: 400, column: 7)
!5058 = !DILocation(line: 400, column: 10, scope: !5057)
!5059 = !DILocation(line: 400, column: 15, scope: !5057)
!5060 = !DILocation(line: 400, column: 7, scope: !4989)
!5061 = !DILocation(line: 401, column: 4, scope: !5057)
!5062 = !DILocation(line: 402, column: 15, scope: !4989)
!5063 = !DILocation(line: 402, column: 20, scope: !4989)
!5064 = !DILocation(line: 402, column: 27, scope: !4989)
!5065 = !DILocation(line: 402, column: 25, scope: !4989)
!5066 = !DILocation(line: 402, column: 9, scope: !4989)
!5067 = !DILocation(line: 402, column: 7, scope: !4989)
!5068 = !DILocation(line: 403, column: 14, scope: !4989)
!5069 = !DILocation(line: 403, column: 18, scope: !4989)
!5070 = !DILocation(line: 403, column: 13, scope: !4989)
!5071 = !DILocation(line: 403, column: 3, scope: !4989)
!5072 = !DILocation(line: 403, column: 11, scope: !4989)
!5073 = !DILocation(line: 405, column: 3, scope: !4989)
!5074 = !DILocation(line: 408, column: 3, scope: !4989)
!5075 = !DILocation(line: 411, column: 9, scope: !4957)
!5076 = !DILocation(line: 411, column: 15, scope: !4957)
!5077 = !DILocation(line: 411, column: 2, scope: !4957)
!5078 = !DILocation(line: 412, column: 1, scope: !4957)
!5079 = distinct !DISubprogram(name: "ni_65xx_intr_insn_bits", scope: !3, file: !3, line: 550, type: !3972, scopeLine: 554, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!5080 = !DILocalVariable(name: "dev", arg: 1, scope: !5079, file: !3, line: 550, type: !264)
!5081 = !DILocation(line: 550, column: 57, scope: !5079)
!5082 = !DILocalVariable(name: "s", arg: 2, scope: !5079, file: !3, line: 551, type: !3875)
!5083 = !DILocation(line: 551, column: 32, scope: !5079)
!5084 = !DILocalVariable(name: "insn", arg: 3, scope: !5079, file: !3, line: 552, type: !3974)
!5085 = !DILocation(line: 552, column: 27, scope: !5079)
!5086 = !DILocalVariable(name: "data", arg: 4, scope: !5079, file: !3, line: 553, type: !204)
!5087 = !DILocation(line: 553, column: 21, scope: !5079)
!5088 = !DILocation(line: 555, column: 2, scope: !5079)
!5089 = !DILocation(line: 555, column: 10, scope: !5079)
!5090 = !DILocation(line: 556, column: 9, scope: !5079)
!5091 = !DILocation(line: 556, column: 15, scope: !5079)
!5092 = !DILocation(line: 556, column: 2, scope: !5079)
!5093 = distinct !DISubprogram(name: "ni_65xx_intr_insn_config", scope: !3, file: !3, line: 559, type: !3972, scopeLine: 563, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!5094 = !DILocalVariable(name: "dev", arg: 1, scope: !5093, file: !3, line: 559, type: !264)
!5095 = !DILocation(line: 559, column: 59, scope: !5093)
!5096 = !DILocalVariable(name: "s", arg: 2, scope: !5093, file: !3, line: 560, type: !3875)
!5097 = !DILocation(line: 560, column: 34, scope: !5093)
!5098 = !DILocalVariable(name: "insn", arg: 3, scope: !5093, file: !3, line: 561, type: !3974)
!5099 = !DILocation(line: 561, column: 29, scope: !5093)
!5100 = !DILocalVariable(name: "data", arg: 4, scope: !5093, file: !3, line: 562, type: !204)
!5101 = !DILocation(line: 562, column: 23, scope: !5093)
!5102 = !DILocation(line: 564, column: 10, scope: !5093)
!5103 = !DILocation(line: 564, column: 2, scope: !5093)
!5104 = !DILocation(line: 567, column: 7, scope: !5105)
!5105 = distinct !DILexicalBlock(scope: !5106, file: !3, line: 567, column: 7)
!5106 = distinct !DILexicalBlock(scope: !5093, file: !3, line: 564, column: 19)
!5107 = !DILocation(line: 567, column: 13, scope: !5105)
!5108 = !DILocation(line: 567, column: 15, scope: !5105)
!5109 = !DILocation(line: 567, column: 7, scope: !5106)
!5110 = !DILocation(line: 568, column: 4, scope: !5105)
!5111 = !DILocation(line: 571, column: 33, scope: !5106)
!5112 = !DILocation(line: 571, column: 41, scope: !5106)
!5113 = !DILocation(line: 571, column: 50, scope: !5106)
!5114 = !DILocation(line: 571, column: 3, scope: !5106)
!5115 = !DILocation(line: 573, column: 33, scope: !5106)
!5116 = !DILocation(line: 573, column: 3, scope: !5106)
!5117 = !DILocation(line: 575, column: 33, scope: !5106)
!5118 = !DILocation(line: 575, column: 3, scope: !5106)
!5119 = !DILocation(line: 576, column: 3, scope: !5106)
!5120 = !DILocation(line: 579, column: 7, scope: !5121)
!5121 = distinct !DILexicalBlock(scope: !5106, file: !3, line: 579, column: 7)
!5122 = !DILocation(line: 579, column: 15, scope: !5121)
!5123 = !DILocation(line: 579, column: 7, scope: !5106)
!5124 = !DILocation(line: 580, column: 4, scope: !5121)
!5125 = !DILocation(line: 582, column: 11, scope: !5106)
!5126 = !DILocation(line: 582, column: 3, scope: !5106)
!5127 = !DILocation(line: 584, column: 35, scope: !5128)
!5128 = distinct !DILexicalBlock(scope: !5106, file: !3, line: 582, column: 20)
!5129 = !DILocation(line: 584, column: 4, scope: !5128)
!5130 = !DILocation(line: 585, column: 4, scope: !5128)
!5131 = !DILocation(line: 591, column: 34, scope: !5128)
!5132 = !DILocation(line: 591, column: 39, scope: !5128)
!5133 = !DILocation(line: 592, column: 13, scope: !5128)
!5134 = !DILocation(line: 592, column: 22, scope: !5128)
!5135 = !DILocation(line: 591, column: 4, scope: !5128)
!5136 = !DILocation(line: 593, column: 4, scope: !5128)
!5137 = !DILocation(line: 595, column: 4, scope: !5128)
!5138 = !DILocation(line: 597, column: 3, scope: !5106)
!5139 = !DILocation(line: 599, column: 3, scope: !5106)
!5140 = !DILocation(line: 602, column: 9, scope: !5093)
!5141 = !DILocation(line: 602, column: 15, scope: !5093)
!5142 = !DILocation(line: 602, column: 2, scope: !5093)
!5143 = !DILocation(line: 603, column: 1, scope: !5093)
!5144 = distinct !DISubprogram(name: "ni_65xx_intr_cmdtest", scope: !3, file: !3, line: 491, type: !3993, scopeLine: 494, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!5145 = !DILocalVariable(name: "dev", arg: 1, scope: !5144, file: !3, line: 491, type: !264)
!5146 = !DILocation(line: 491, column: 55, scope: !5144)
!5147 = !DILocalVariable(name: "s", arg: 2, scope: !5144, file: !3, line: 492, type: !3875)
!5148 = !DILocation(line: 492, column: 30, scope: !5144)
!5149 = !DILocalVariable(name: "cmd", arg: 3, scope: !5144, file: !3, line: 493, type: !3995)
!5150 = !DILocation(line: 493, column: 24, scope: !5144)
!5151 = !DILocalVariable(name: "err", scope: !5144, file: !3, line: 495, type: !131)
!5152 = !DILocation(line: 495, column: 6, scope: !5144)
!5153 = !DILocation(line: 499, column: 35, scope: !5144)
!5154 = !DILocation(line: 499, column: 40, scope: !5144)
!5155 = !DILocation(line: 499, column: 9, scope: !5144)
!5156 = !DILocation(line: 499, column: 6, scope: !5144)
!5157 = !DILocation(line: 500, column: 35, scope: !5144)
!5158 = !DILocation(line: 500, column: 40, scope: !5144)
!5159 = !DILocation(line: 500, column: 9, scope: !5144)
!5160 = !DILocation(line: 500, column: 6, scope: !5144)
!5161 = !DILocation(line: 501, column: 35, scope: !5144)
!5162 = !DILocation(line: 501, column: 40, scope: !5144)
!5163 = !DILocation(line: 501, column: 9, scope: !5144)
!5164 = !DILocation(line: 501, column: 6, scope: !5144)
!5165 = !DILocation(line: 502, column: 35, scope: !5144)
!5166 = !DILocation(line: 502, column: 40, scope: !5144)
!5167 = !DILocation(line: 502, column: 9, scope: !5144)
!5168 = !DILocation(line: 502, column: 6, scope: !5144)
!5169 = !DILocation(line: 503, column: 35, scope: !5144)
!5170 = !DILocation(line: 503, column: 40, scope: !5144)
!5171 = !DILocation(line: 503, column: 9, scope: !5144)
!5172 = !DILocation(line: 503, column: 6, scope: !5144)
!5173 = !DILocation(line: 505, column: 6, scope: !5174)
!5174 = distinct !DILexicalBlock(scope: !5144, file: !3, line: 505, column: 6)
!5175 = !DILocation(line: 505, column: 6, scope: !5144)
!5176 = !DILocation(line: 506, column: 3, scope: !5174)
!5177 = !DILocation(line: 513, column: 38, scope: !5144)
!5178 = !DILocation(line: 513, column: 43, scope: !5144)
!5179 = !DILocation(line: 513, column: 9, scope: !5144)
!5180 = !DILocation(line: 513, column: 6, scope: !5144)
!5181 = !DILocation(line: 514, column: 38, scope: !5144)
!5182 = !DILocation(line: 514, column: 43, scope: !5144)
!5183 = !DILocation(line: 514, column: 9, scope: !5144)
!5184 = !DILocation(line: 514, column: 6, scope: !5144)
!5185 = !DILocation(line: 515, column: 38, scope: !5144)
!5186 = !DILocation(line: 515, column: 43, scope: !5144)
!5187 = !DILocation(line: 515, column: 9, scope: !5144)
!5188 = !DILocation(line: 515, column: 6, scope: !5144)
!5189 = !DILocation(line: 516, column: 38, scope: !5144)
!5190 = !DILocation(line: 516, column: 43, scope: !5144)
!5191 = !DILocation(line: 517, column: 9, scope: !5144)
!5192 = !DILocation(line: 517, column: 14, scope: !5144)
!5193 = !DILocation(line: 516, column: 9, scope: !5144)
!5194 = !DILocation(line: 516, column: 6, scope: !5144)
!5195 = !DILocation(line: 518, column: 38, scope: !5144)
!5196 = !DILocation(line: 518, column: 43, scope: !5144)
!5197 = !DILocation(line: 518, column: 9, scope: !5144)
!5198 = !DILocation(line: 518, column: 6, scope: !5144)
!5199 = !DILocation(line: 520, column: 6, scope: !5200)
!5200 = distinct !DILexicalBlock(scope: !5144, file: !3, line: 520, column: 6)
!5201 = !DILocation(line: 520, column: 6, scope: !5144)
!5202 = !DILocation(line: 521, column: 3, scope: !5200)
!5203 = !DILocation(line: 527, column: 2, scope: !5144)
!5204 = !DILocation(line: 528, column: 1, scope: !5144)
!5205 = distinct !DISubprogram(name: "ni_65xx_intr_cmd", scope: !3, file: !3, line: 530, type: !3989, scopeLine: 532, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!5206 = !DILocalVariable(name: "dev", arg: 1, scope: !5205, file: !3, line: 530, type: !264)
!5207 = !DILocation(line: 530, column: 51, scope: !5205)
!5208 = !DILocalVariable(name: "s", arg: 2, scope: !5205, file: !3, line: 531, type: !3875)
!5209 = !DILocation(line: 531, column: 33, scope: !5205)
!5210 = !DILocation(line: 534, column: 9, scope: !5205)
!5211 = !DILocation(line: 534, column: 14, scope: !5205)
!5212 = !DILocation(line: 534, column: 19, scope: !5205)
!5213 = !DILocation(line: 533, column: 2, scope: !5205)
!5214 = !DILocation(line: 537, column: 9, scope: !5205)
!5215 = !DILocation(line: 537, column: 14, scope: !5205)
!5216 = !DILocation(line: 537, column: 19, scope: !5205)
!5217 = !DILocation(line: 535, column: 2, scope: !5205)
!5218 = !DILocation(line: 539, column: 2, scope: !5205)
!5219 = distinct !DISubprogram(name: "ni_65xx_intr_cancel", scope: !3, file: !3, line: 542, type: !3989, scopeLine: 544, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!5220 = !DILocalVariable(name: "dev", arg: 1, scope: !5219, file: !3, line: 542, type: !264)
!5221 = !DILocation(line: 542, column: 54, scope: !5219)
!5222 = !DILocalVariable(name: "s", arg: 2, scope: !5219, file: !3, line: 543, type: !3875)
!5223 = !DILocation(line: 543, column: 36, scope: !5219)
!5224 = !DILocation(line: 545, column: 15, scope: !5219)
!5225 = !DILocation(line: 545, column: 20, scope: !5219)
!5226 = !DILocation(line: 545, column: 25, scope: !5219)
!5227 = !DILocation(line: 545, column: 2, scope: !5219)
!5228 = !DILocation(line: 547, column: 2, scope: !5219)
!5229 = distinct !DISubprogram(name: "ni_65xx_disable_input_filters", scope: !3, file: !3, line: 276, type: !4021, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!5230 = !DILocalVariable(name: "dev", arg: 1, scope: !5229, file: !3, line: 276, type: !264)
!5231 = !DILocation(line: 276, column: 65, scope: !5229)
!5232 = !DILocalVariable(name: "num_ports", scope: !5229, file: !3, line: 278, type: !7)
!5233 = !DILocation(line: 278, column: 15, scope: !5229)
!5234 = !DILocation(line: 278, column: 45, scope: !5229)
!5235 = !DILocation(line: 278, column: 27, scope: !5229)
!5236 = !DILocalVariable(name: "i", scope: !5229, file: !3, line: 279, type: !131)
!5237 = !DILocation(line: 279, column: 6, scope: !5229)
!5238 = !DILocation(line: 282, column: 9, scope: !5239)
!5239 = distinct !DILexicalBlock(scope: !5229, file: !3, line: 282, column: 2)
!5240 = !DILocation(line: 282, column: 7, scope: !5239)
!5241 = !DILocation(line: 282, column: 14, scope: !5242)
!5242 = distinct !DILexicalBlock(scope: !5239, file: !3, line: 282, column: 2)
!5243 = !DILocation(line: 282, column: 18, scope: !5242)
!5244 = !DILocation(line: 282, column: 16, scope: !5242)
!5245 = !DILocation(line: 282, column: 2, scope: !5239)
!5246 = !DILocation(line: 283, column: 16, scope: !5242)
!5247 = !DILocation(line: 283, column: 21, scope: !5242)
!5248 = !DILocation(line: 283, column: 28, scope: !5242)
!5249 = !DILocation(line: 283, column: 26, scope: !5242)
!5250 = !DILocation(line: 283, column: 3, scope: !5242)
!5251 = !DILocation(line: 282, column: 29, scope: !5242)
!5252 = !DILocation(line: 282, column: 2, scope: !5242)
!5253 = distinct !{!5253, !5245, !5254}
!5254 = !DILocation(line: 283, column: 49, scope: !5239)
!5255 = !DILocation(line: 286, column: 21, scope: !5229)
!5256 = !DILocation(line: 286, column: 26, scope: !5229)
!5257 = !DILocation(line: 286, column: 31, scope: !5229)
!5258 = !DILocation(line: 286, column: 2, scope: !5229)
!5259 = !DILocation(line: 287, column: 1, scope: !5229)
!5260 = distinct !DISubprogram(name: "ni_65xx_disable_edge_detection", scope: !3, file: !3, line: 336, type: !4021, scopeLine: 337, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!5261 = !DILocalVariable(name: "dev", arg: 1, scope: !5260, file: !3, line: 336, type: !264)
!5262 = !DILocation(line: 336, column: 66, scope: !5260)
!5263 = !DILocation(line: 339, column: 32, scope: !5260)
!5264 = !DILocation(line: 339, column: 2, scope: !5260)
!5265 = !DILocation(line: 341, column: 32, scope: !5260)
!5266 = !DILocation(line: 341, column: 2, scope: !5260)
!5267 = !DILocation(line: 343, column: 32, scope: !5260)
!5268 = !DILocation(line: 343, column: 2, scope: !5260)
!5269 = !DILocation(line: 344, column: 1, scope: !5260)
!5270 = distinct !DISubprogram(name: "writel", scope: !4701, file: !4701, line: 67, type: !5271, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!5271 = !DISubroutineType(types: !5272)
!5272 = !{null, !7, !4704}
!5273 = !DILocalVariable(name: "val", arg: 1, scope: !5270, file: !4701, line: 67, type: !7)
!5274 = !DILocation(line: 67, column: 1, scope: !5270)
!5275 = !DILocalVariable(name: "addr", arg: 2, scope: !5270, file: !4701, line: 67, type: !4704)
!5276 = !{i32 -2143409649}
!5277 = distinct !DISubprogram(name: "ni_65xx_update_edge_detection", scope: !3, file: !3, line: 290, type: !5278, scopeLine: 294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!5278 = !DISubroutineType(types: !5279)
!5279 = !{null, !264, !7, !7, !7}
!5280 = !DILocalVariable(name: "dev", arg: 1, scope: !5277, file: !3, line: 290, type: !264)
!5281 = !DILocation(line: 290, column: 65, scope: !5277)
!5282 = !DILocalVariable(name: "base_chan", arg: 2, scope: !5277, file: !3, line: 291, type: !7)
!5283 = !DILocation(line: 291, column: 21, scope: !5277)
!5284 = !DILocalVariable(name: "rising", arg: 3, scope: !5277, file: !3, line: 292, type: !7)
!5285 = !DILocation(line: 292, column: 21, scope: !5277)
!5286 = !DILocalVariable(name: "falling", arg: 4, scope: !5277, file: !3, line: 293, type: !7)
!5287 = !DILocation(line: 293, column: 21, scope: !5277)
!5288 = !DILocalVariable(name: "num_ports", scope: !5277, file: !3, line: 295, type: !7)
!5289 = !DILocation(line: 295, column: 15, scope: !5277)
!5290 = !DILocation(line: 295, column: 45, scope: !5277)
!5291 = !DILocation(line: 295, column: 27, scope: !5277)
!5292 = !DILocalVariable(name: "port", scope: !5277, file: !3, line: 296, type: !7)
!5293 = !DILocation(line: 296, column: 15, scope: !5277)
!5294 = !DILocation(line: 298, column: 6, scope: !5295)
!5295 = distinct !DILexicalBlock(scope: !5277, file: !3, line: 298, column: 6)
!5296 = !DILocation(line: 298, column: 19, scope: !5295)
!5297 = !DILocation(line: 298, column: 16, scope: !5295)
!5298 = !DILocation(line: 298, column: 6, scope: !5277)
!5299 = !DILocation(line: 299, column: 3, scope: !5295)
!5300 = !DILocation(line: 301, column: 14, scope: !5301)
!5301 = distinct !DILexicalBlock(scope: !5277, file: !3, line: 301, column: 2)
!5302 = !DILocation(line: 301, column: 12, scope: !5301)
!5303 = !DILocation(line: 301, column: 7, scope: !5301)
!5304 = !DILocation(line: 301, column: 47, scope: !5305)
!5305 = distinct !DILexicalBlock(scope: !5301, file: !3, line: 301, column: 2)
!5306 = !DILocation(line: 301, column: 54, scope: !5305)
!5307 = !DILocation(line: 301, column: 52, scope: !5305)
!5308 = !DILocation(line: 301, column: 2, scope: !5301)
!5309 = !DILocalVariable(name: "bitshift", scope: !5310, file: !3, line: 302, type: !131)
!5310 = distinct !DILexicalBlock(scope: !5305, file: !3, line: 301, column: 73)
!5311 = !DILocation(line: 302, column: 7, scope: !5310)
!5312 = !DILocation(line: 302, column: 24, scope: !5310)
!5313 = !DILocation(line: 302, column: 53, scope: !5310)
!5314 = !DILocation(line: 302, column: 51, scope: !5310)
!5315 = !DILocalVariable(name: "port_mask", scope: !5310, file: !3, line: 303, type: !7)
!5316 = !DILocation(line: 303, column: 16, scope: !5310)
!5317 = !DILocalVariable(name: "port_rising", scope: !5310, file: !3, line: 303, type: !7)
!5318 = !DILocation(line: 303, column: 27, scope: !5310)
!5319 = !DILocalVariable(name: "port_falling", scope: !5310, file: !3, line: 303, type: !7)
!5320 = !DILocation(line: 303, column: 40, scope: !5310)
!5321 = !DILocation(line: 305, column: 7, scope: !5322)
!5322 = distinct !DILexicalBlock(scope: !5310, file: !3, line: 305, column: 7)
!5323 = !DILocation(line: 305, column: 16, scope: !5322)
!5324 = !DILocation(line: 305, column: 7, scope: !5310)
!5325 = !DILocation(line: 306, column: 4, scope: !5322)
!5326 = !DILocation(line: 308, column: 7, scope: !5327)
!5327 = distinct !DILexicalBlock(scope: !5310, file: !3, line: 308, column: 7)
!5328 = !DILocation(line: 308, column: 16, scope: !5327)
!5329 = !DILocation(line: 308, column: 7, scope: !5310)
!5330 = !DILocation(line: 309, column: 23, scope: !5331)
!5331 = distinct !DILexicalBlock(scope: !5327, file: !3, line: 308, column: 22)
!5332 = !DILocation(line: 309, column: 20, scope: !5331)
!5333 = !DILocation(line: 309, column: 14, scope: !5331)
!5334 = !DILocation(line: 310, column: 18, scope: !5331)
!5335 = !DILocation(line: 310, column: 28, scope: !5331)
!5336 = !DILocation(line: 310, column: 25, scope: !5331)
!5337 = !DILocation(line: 310, column: 16, scope: !5331)
!5338 = !DILocation(line: 311, column: 19, scope: !5331)
!5339 = !DILocation(line: 311, column: 30, scope: !5331)
!5340 = !DILocation(line: 311, column: 27, scope: !5331)
!5341 = !DILocation(line: 311, column: 17, scope: !5331)
!5342 = !DILocation(line: 312, column: 3, scope: !5331)
!5343 = !DILocation(line: 313, column: 24, scope: !5344)
!5344 = distinct !DILexicalBlock(scope: !5327, file: !3, line: 312, column: 10)
!5345 = !DILocation(line: 313, column: 23, scope: !5344)
!5346 = !DILocation(line: 313, column: 20, scope: !5344)
!5347 = !DILocation(line: 313, column: 14, scope: !5344)
!5348 = !DILocation(line: 314, column: 18, scope: !5344)
!5349 = !DILocation(line: 314, column: 29, scope: !5344)
!5350 = !DILocation(line: 314, column: 28, scope: !5344)
!5351 = !DILocation(line: 314, column: 25, scope: !5344)
!5352 = !DILocation(line: 314, column: 16, scope: !5344)
!5353 = !DILocation(line: 315, column: 19, scope: !5344)
!5354 = !DILocation(line: 315, column: 31, scope: !5344)
!5355 = !DILocation(line: 315, column: 30, scope: !5344)
!5356 = !DILocation(line: 315, column: 27, scope: !5344)
!5357 = !DILocation(line: 315, column: 17, scope: !5344)
!5358 = !DILocation(line: 317, column: 7, scope: !5359)
!5359 = distinct !DILexicalBlock(scope: !5310, file: !3, line: 317, column: 7)
!5360 = !DILocation(line: 317, column: 17, scope: !5359)
!5361 = !DILocation(line: 317, column: 7, scope: !5310)
!5362 = !DILocation(line: 318, column: 9, scope: !5363)
!5363 = distinct !DILexicalBlock(scope: !5364, file: !3, line: 318, column: 8)
!5364 = distinct !DILexicalBlock(scope: !5359, file: !3, line: 317, column: 25)
!5365 = !DILocation(line: 318, column: 8, scope: !5363)
!5366 = !DILocation(line: 318, column: 19, scope: !5363)
!5367 = !DILocation(line: 318, column: 8, scope: !5364)
!5368 = !DILocation(line: 320, column: 15, scope: !5369)
!5369 = distinct !DILexicalBlock(scope: !5363, file: !3, line: 318, column: 27)
!5370 = !DILocation(line: 320, column: 20, scope: !5369)
!5371 = !DILocation(line: 321, column: 8, scope: !5369)
!5372 = !DILocation(line: 320, column: 25, scope: !5369)
!5373 = !DILocation(line: 320, column: 9, scope: !5369)
!5374 = !DILocation(line: 322, column: 10, scope: !5369)
!5375 = !DILocation(line: 322, column: 9, scope: !5369)
!5376 = !DILocation(line: 321, column: 41, scope: !5369)
!5377 = !DILocation(line: 319, column: 17, scope: !5369)
!5378 = !DILocation(line: 324, column: 15, scope: !5369)
!5379 = !DILocation(line: 324, column: 20, scope: !5369)
!5380 = !DILocation(line: 325, column: 8, scope: !5369)
!5381 = !DILocation(line: 324, column: 25, scope: !5369)
!5382 = !DILocation(line: 324, column: 9, scope: !5369)
!5383 = !DILocation(line: 326, column: 10, scope: !5369)
!5384 = !DILocation(line: 326, column: 9, scope: !5369)
!5385 = !DILocation(line: 325, column: 41, scope: !5369)
!5386 = !DILocation(line: 323, column: 18, scope: !5369)
!5387 = !DILocation(line: 327, column: 4, scope: !5369)
!5388 = !DILocation(line: 328, column: 11, scope: !5364)
!5389 = !DILocation(line: 328, column: 23, scope: !5364)
!5390 = !DILocation(line: 329, column: 11, scope: !5364)
!5391 = !DILocation(line: 329, column: 16, scope: !5364)
!5392 = !DILocation(line: 329, column: 23, scope: !5364)
!5393 = !DILocation(line: 329, column: 21, scope: !5364)
!5394 = !DILocation(line: 328, column: 4, scope: !5364)
!5395 = !DILocation(line: 330, column: 11, scope: !5364)
!5396 = !DILocation(line: 330, column: 24, scope: !5364)
!5397 = !DILocation(line: 331, column: 11, scope: !5364)
!5398 = !DILocation(line: 331, column: 16, scope: !5364)
!5399 = !DILocation(line: 331, column: 23, scope: !5364)
!5400 = !DILocation(line: 331, column: 21, scope: !5364)
!5401 = !DILocation(line: 330, column: 4, scope: !5364)
!5402 = !DILocation(line: 332, column: 3, scope: !5364)
!5403 = !DILocation(line: 333, column: 2, scope: !5310)
!5404 = !DILocation(line: 301, column: 69, scope: !5305)
!5405 = !DILocation(line: 301, column: 2, scope: !5305)
!5406 = distinct !{!5406, !5308, !5407}
!5407 = !DILocation(line: 333, column: 2, scope: !5301)
!5408 = !DILocation(line: 334, column: 1, scope: !5277)
!5409 = distinct !DISubprogram(name: "ni_65xx_num_ports", scope: !3, file: !3, line: 269, type: !5410, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!5410 = !DISubroutineType(types: !5411)
!5411 = !{!7, !264}
!5412 = !DILocalVariable(name: "dev", arg: 1, scope: !5409, file: !3, line: 269, type: !264)
!5413 = !DILocation(line: 269, column: 61, scope: !5409)
!5414 = !DILocalVariable(name: "board", scope: !5409, file: !3, line: 271, type: !4385)
!5415 = !DILocation(line: 271, column: 30, scope: !5409)
!5416 = !DILocation(line: 271, column: 38, scope: !5409)
!5417 = !DILocation(line: 271, column: 43, scope: !5409)
!5418 = !DILocation(line: 273, column: 9, scope: !5409)
!5419 = !DILocation(line: 273, column: 16, scope: !5409)
!5420 = !DILocation(line: 273, column: 32, scope: !5409)
!5421 = !DILocation(line: 273, column: 39, scope: !5409)
!5422 = !DILocation(line: 273, column: 30, scope: !5409)
!5423 = !DILocation(line: 273, column: 54, scope: !5409)
!5424 = !DILocation(line: 273, column: 61, scope: !5409)
!5425 = !DILocation(line: 273, column: 52, scope: !5409)
!5426 = !DILocation(line: 273, column: 2, scope: !5409)
!5427 = distinct !DISubprogram(name: "comedi_check_trigger_src", scope: !254, file: !254, line: 859, type: !5428, scopeLine: 861, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!5428 = !DISubroutineType(types: !5429)
!5429 = !{!131, !204, !7}
!5430 = !DILocalVariable(name: "src", arg: 1, scope: !5427, file: !254, line: 859, type: !204)
!5431 = !DILocation(line: 859, column: 58, scope: !5427)
!5432 = !DILocalVariable(name: "flags", arg: 2, scope: !5427, file: !254, line: 860, type: !7)
!5433 = !DILocation(line: 860, column: 22, scope: !5427)
!5434 = !DILocalVariable(name: "orig_src", scope: !5427, file: !254, line: 862, type: !7)
!5435 = !DILocation(line: 862, column: 15, scope: !5427)
!5436 = !DILocation(line: 862, column: 27, scope: !5427)
!5437 = !DILocation(line: 862, column: 26, scope: !5427)
!5438 = !DILocation(line: 864, column: 9, scope: !5427)
!5439 = !DILocation(line: 864, column: 20, scope: !5427)
!5440 = !DILocation(line: 864, column: 18, scope: !5427)
!5441 = !DILocation(line: 864, column: 3, scope: !5427)
!5442 = !DILocation(line: 864, column: 7, scope: !5427)
!5443 = !DILocation(line: 865, column: 7, scope: !5444)
!5444 = distinct !DILexicalBlock(scope: !5427, file: !254, line: 865, column: 6)
!5445 = !DILocation(line: 865, column: 6, scope: !5444)
!5446 = !DILocation(line: 865, column: 11, scope: !5444)
!5447 = !DILocation(line: 865, column: 27, scope: !5444)
!5448 = !DILocation(line: 865, column: 31, scope: !5444)
!5449 = !DILocation(line: 865, column: 30, scope: !5444)
!5450 = !DILocation(line: 865, column: 38, scope: !5444)
!5451 = !DILocation(line: 865, column: 35, scope: !5444)
!5452 = !DILocation(line: 865, column: 6, scope: !5427)
!5453 = !DILocation(line: 866, column: 3, scope: !5444)
!5454 = !DILocation(line: 867, column: 2, scope: !5427)
!5455 = !DILocation(line: 868, column: 1, scope: !5427)
!5456 = distinct !DISubprogram(name: "comedi_check_trigger_arg_is", scope: !254, file: !254, line: 897, type: !5428, scopeLine: 899, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!5457 = !DILocalVariable(name: "arg", arg: 1, scope: !5456, file: !254, line: 897, type: !204)
!5458 = !DILocation(line: 897, column: 61, scope: !5456)
!5459 = !DILocalVariable(name: "val", arg: 2, scope: !5456, file: !254, line: 898, type: !7)
!5460 = !DILocation(line: 898, column: 25, scope: !5456)
!5461 = !DILocation(line: 900, column: 7, scope: !5462)
!5462 = distinct !DILexicalBlock(scope: !5456, file: !254, line: 900, column: 6)
!5463 = !DILocation(line: 900, column: 6, scope: !5462)
!5464 = !DILocation(line: 900, column: 14, scope: !5462)
!5465 = !DILocation(line: 900, column: 11, scope: !5462)
!5466 = !DILocation(line: 900, column: 6, scope: !5456)
!5467 = !DILocation(line: 901, column: 10, scope: !5468)
!5468 = distinct !DILexicalBlock(scope: !5462, file: !254, line: 900, column: 19)
!5469 = !DILocation(line: 901, column: 4, scope: !5468)
!5470 = !DILocation(line: 901, column: 8, scope: !5468)
!5471 = !DILocation(line: 902, column: 3, scope: !5468)
!5472 = !DILocation(line: 904, column: 2, scope: !5456)
!5473 = !DILocation(line: 905, column: 1, scope: !5456)
!5474 = distinct !DISubprogram(name: "ni_65xx_pci_probe", scope: !3, file: !3, line: 779, type: !4082, scopeLine: 781, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!5475 = !DILocalVariable(name: "dev", arg: 1, scope: !5474, file: !3, line: 779, type: !4084)
!5476 = !DILocation(line: 779, column: 46, scope: !5474)
!5477 = !DILocalVariable(name: "id", arg: 2, scope: !5474, file: !3, line: 780, type: !4069)
!5478 = !DILocation(line: 780, column: 37, scope: !5474)
!5479 = !DILocation(line: 782, column: 32, scope: !5474)
!5480 = !DILocation(line: 782, column: 54, scope: !5474)
!5481 = !DILocation(line: 782, column: 58, scope: !5474)
!5482 = !DILocation(line: 782, column: 9, scope: !5474)
!5483 = !DILocation(line: 782, column: 2, scope: !5474)
