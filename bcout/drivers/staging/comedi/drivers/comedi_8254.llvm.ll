; ModuleID = '../bcout/drivers/staging/comedi/drivers/comedi_8254.llvm.bc'
source_filename = "drivers/staging/comedi/drivers/comedi_8254.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_comedi_8254_module_init6:\09\09\09"
module asm ".long\09comedi_8254_module_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.kmem_cache = type opaque
%struct.comedi_8254 = type { i64, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x i8], i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* }
%struct.comedi_device = type { i32, %struct.comedi_driver*, %struct.comedi_8254*, i8*, %struct.device*, i32, i32, %struct.device*, i8*, i8*, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, %struct.comedi_subdevice*, i8*, i64, i64, i32, %struct.comedi_subdevice*, %struct.comedi_subdevice*, %struct.fasync_struct*, i32 (%struct.comedi_device*)*, void (%struct.comedi_device*)*, i32 (%struct.comedi_device*, %struct.comedi_insn*, i32*)*, i32 (%struct.comedi_device*, i32, i32*)* }
%struct.comedi_driver = type { %struct.comedi_driver*, i8*, %struct.module*, i32 (%struct.comedi_device*, %struct.comedi_devconfig*)*, void (%struct.comedi_device*)*, i32 (%struct.comedi_device*, i64)*, i32, i8**, i32 }
%struct.module = type opaque
%struct.comedi_devconfig = type { [20 x i8], [32 x i32] }
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
%struct.of_device_id = type opaque
%struct.acpi_device_id = type opaque
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
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.comedi_subdevice = type { %struct.comedi_device*, i32, i32, i32, i32, i32, i8*, %struct.comedi_async*, i8*, i8*, i32, %struct.spinlock, i32, i32, i32*, %struct.comedi_lrange*, %struct.comedi_lrange**, i32*, {}*, {}*, {}*, {}*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)*, void (%struct.comedi_device*, %struct.comedi_subdevice*, i8*, i32, i32)*, i32, i32, %struct.device*, i32, i32* }
%struct.comedi_async = type { i8*, i32, %struct.comedi_buf_map*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.comedi_cmd, %struct.wait_queue_head, i32, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* }
%struct.comedi_buf_map = type { %struct.device*, %struct.comedi_buf_page*, i32, i32, %struct.kref }
%struct.comedi_buf_page = type { i8*, i64 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i16*, i32 }
%struct.comedi_insn = type { i32, i32, i32*, i32, i32, [3 x i32] }

@range_unknown = external dso_local constant %struct.comedi_lrange, align 4
@__UNIQUE_ID___addressable_comedi_8254_module_init231 = internal global i8* bitcast (i32 ()* @comedi_8254_module_init to i8*), section ".discard.addressable", align 8, !dbg !0
@__exitcall_comedi_8254_module_exit = internal global void ()* @comedi_8254_module_exit, section ".exitcall.exit", align 8, !dbg !146
@__UNIQUE_ID_author232 = internal constant [68 x i8] c"comedi_8254.author=H Hartley Sweeten <hsweeten@visionengravers.com>\00", section ".modinfo", align 1, !dbg !153
@__UNIQUE_ID_description233 = internal constant [67 x i8] c"comedi_8254.description=Comedi: Generic 8254 timer/counter support\00", section ".modinfo", align 1, !dbg !160
@__UNIQUE_ID_file234 = internal constant [60 x i8] c"comedi_8254.file=drivers/staging/comedi/drivers/comedi_8254\00", section ".modinfo", align 1, !dbg !165
@__UNIQUE_ID_license235 = internal constant [24 x i8] c"comedi_8254.license=GPL\00", section ".modinfo", align 1, !dbg !170
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_comedi_8254_module_init231 to i8*), i8* bitcast (void ()* @comedi_8254_module_exit to i8*), i8* bitcast (void ()** @__exitcall_comedi_8254_module_exit to i8*), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__UNIQUE_ID_author232, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @__UNIQUE_ID_description233, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__UNIQUE_ID_file234, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__UNIQUE_ID_license235, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @comedi_8254_status(%struct.comedi_8254* %i8254, i32 %counter) #0 !dbg !180 {
entry:
  %retval = alloca i32, align 4
  %i8254.addr = alloca %struct.comedi_8254*, align 8
  %counter.addr = alloca i32, align 4
  %cmd = alloca i32, align 4
  store %struct.comedi_8254* %i8254, %struct.comedi_8254** %i8254.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_8254** %i8254.addr, metadata !4000, metadata !DIExpression()), !dbg !4001
  store i32 %counter, i32* %counter.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %counter.addr, metadata !4002, metadata !DIExpression()), !dbg !4003
  call void @llvm.dbg.declare(metadata i32* %cmd, metadata !4004, metadata !DIExpression()), !dbg !4005
  %0 = load i32, i32* %counter.addr, align 4, !dbg !4006
  %cmp = icmp ugt i32 %0, 2, !dbg !4008
  br i1 %cmp, label %if.then, label %if.end, !dbg !4009

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4010
  br label %return, !dbg !4010

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %counter.addr, align 4, !dbg !4011
  %shl = shl i32 2, %1, !dbg !4011
  %conv = sext i32 %shl to i64, !dbg !4011
  %or = or i64 224, %conv, !dbg !4012
  %conv1 = trunc i64 %or to i32, !dbg !4013
  store i32 %conv1, i32* %cmd, align 4, !dbg !4014
  %2 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4015
  %3 = load i32, i32* %cmd, align 4, !dbg !4016
  call void @__i8254_write(%struct.comedi_8254* %2, i32 %3, i32 3) #7, !dbg !4017
  %4 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4018
  %5 = load i32, i32* %counter.addr, align 4, !dbg !4019
  %call = call i32 @__i8254_read(%struct.comedi_8254* %4, i32 %5) #7, !dbg !4020
  store i32 %call, i32* %retval, align 4, !dbg !4021
  br label %return, !dbg !4021

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !4022
  ret i32 %6, !dbg !4022
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__i8254_write(%struct.comedi_8254* %i8254, i32 %val, i32 %reg) #0 !dbg !4023 {
entry:
  %i8254.addr = alloca %struct.comedi_8254*, align 8
  %val.addr = alloca i32, align 4
  %reg.addr = alloca i32, align 4
  %reg_offset = alloca i32, align 4
  store %struct.comedi_8254* %i8254, %struct.comedi_8254** %i8254.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_8254** %i8254.addr, metadata !4026, metadata !DIExpression()), !dbg !4027
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !4028, metadata !DIExpression()), !dbg !4029
  store i32 %reg, i32* %reg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reg.addr, metadata !4030, metadata !DIExpression()), !dbg !4031
  call void @llvm.dbg.declare(metadata i32* %reg_offset, metadata !4032, metadata !DIExpression()), !dbg !4033
  %0 = load i32, i32* %reg.addr, align 4, !dbg !4034
  %1 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4035
  %iosize = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %1, i32 0, i32 2, !dbg !4036
  %2 = load i32, i32* %iosize, align 8, !dbg !4036
  %mul = mul i32 %0, %2, !dbg !4037
  %3 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4038
  %regshift = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %3, i32 0, i32 3, !dbg !4039
  %4 = load i32, i32* %regshift, align 4, !dbg !4039
  %shl = shl i32 %mul, %4, !dbg !4040
  store i32 %shl, i32* %reg_offset, align 4, !dbg !4033
  %5 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4041
  %iosize1 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %5, i32 0, i32 2, !dbg !4042
  %6 = load i32, i32* %iosize1, align 8, !dbg !4042
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb6
    i32 4, label %sw.bb21
  ], !dbg !4043

sw.default:                                       ; preds = %entry
  br label %sw.bb, !dbg !4044

sw.bb:                                            ; preds = %entry, %sw.default
  %7 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4045
  %mmio = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %7, i32 0, i32 1, !dbg !4048
  %8 = load i8*, i8** %mmio, align 8, !dbg !4048
  %tobool = icmp ne i8* %8, null, !dbg !4045
  br i1 %tobool, label %if.then, label %if.else, !dbg !4049

if.then:                                          ; preds = %sw.bb
  %9 = load i32, i32* %val.addr, align 4, !dbg !4050
  %conv = trunc i32 %9 to i8, !dbg !4050
  %10 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4051
  %mmio2 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %10, i32 0, i32 1, !dbg !4052
  %11 = load i8*, i8** %mmio2, align 8, !dbg !4052
  %12 = load i32, i32* %reg_offset, align 4, !dbg !4053
  %idx.ext = zext i32 %12 to i64, !dbg !4054
  %add.ptr = getelementptr i8, i8* %11, i64 %idx.ext, !dbg !4054
  call void @writeb(i8 zeroext %conv, i8* %add.ptr) #7, !dbg !4055
  br label %if.end, !dbg !4055

if.else:                                          ; preds = %sw.bb
  %13 = load i32, i32* %val.addr, align 4, !dbg !4056
  %conv3 = trunc i32 %13 to i8, !dbg !4056
  %14 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4057
  %iobase = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %14, i32 0, i32 0, !dbg !4058
  %15 = load i64, i64* %iobase, align 8, !dbg !4058
  %16 = load i32, i32* %reg_offset, align 4, !dbg !4059
  %conv4 = zext i32 %16 to i64, !dbg !4059
  %add = add i64 %15, %conv4, !dbg !4060
  %conv5 = trunc i64 %add to i32, !dbg !4057
  call void @outb(i8 zeroext %conv3, i32 %conv5) #7, !dbg !4061
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog, !dbg !4062

sw.bb6:                                           ; preds = %entry
  %17 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4063
  %mmio7 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %17, i32 0, i32 1, !dbg !4065
  %18 = load i8*, i8** %mmio7, align 8, !dbg !4065
  %tobool8 = icmp ne i8* %18, null, !dbg !4063
  br i1 %tobool8, label %if.then9, label %if.else14, !dbg !4066

if.then9:                                         ; preds = %sw.bb6
  %19 = load i32, i32* %val.addr, align 4, !dbg !4067
  %conv10 = trunc i32 %19 to i16, !dbg !4067
  %20 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4068
  %mmio11 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %20, i32 0, i32 1, !dbg !4069
  %21 = load i8*, i8** %mmio11, align 8, !dbg !4069
  %22 = load i32, i32* %reg_offset, align 4, !dbg !4070
  %idx.ext12 = zext i32 %22 to i64, !dbg !4071
  %add.ptr13 = getelementptr i8, i8* %21, i64 %idx.ext12, !dbg !4071
  call void @writew(i16 zeroext %conv10, i8* %add.ptr13) #7, !dbg !4072
  br label %if.end20, !dbg !4072

if.else14:                                        ; preds = %sw.bb6
  %23 = load i32, i32* %val.addr, align 4, !dbg !4073
  %conv15 = trunc i32 %23 to i16, !dbg !4073
  %24 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4074
  %iobase16 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %24, i32 0, i32 0, !dbg !4075
  %25 = load i64, i64* %iobase16, align 8, !dbg !4075
  %26 = load i32, i32* %reg_offset, align 4, !dbg !4076
  %conv17 = zext i32 %26 to i64, !dbg !4076
  %add18 = add i64 %25, %conv17, !dbg !4077
  %conv19 = trunc i64 %add18 to i32, !dbg !4074
  call void @outw(i16 zeroext %conv15, i32 %conv19) #7, !dbg !4078
  br label %if.end20

if.end20:                                         ; preds = %if.else14, %if.then9
  br label %sw.epilog, !dbg !4079

sw.bb21:                                          ; preds = %entry
  %27 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4080
  %mmio22 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %27, i32 0, i32 1, !dbg !4082
  %28 = load i8*, i8** %mmio22, align 8, !dbg !4082
  %tobool23 = icmp ne i8* %28, null, !dbg !4080
  br i1 %tobool23, label %if.then24, label %if.else28, !dbg !4083

if.then24:                                        ; preds = %sw.bb21
  %29 = load i32, i32* %val.addr, align 4, !dbg !4084
  %30 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4085
  %mmio25 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %30, i32 0, i32 1, !dbg !4086
  %31 = load i8*, i8** %mmio25, align 8, !dbg !4086
  %32 = load i32, i32* %reg_offset, align 4, !dbg !4087
  %idx.ext26 = zext i32 %32 to i64, !dbg !4088
  %add.ptr27 = getelementptr i8, i8* %31, i64 %idx.ext26, !dbg !4088
  call void @writel(i32 %29, i8* %add.ptr27) #7, !dbg !4089
  br label %if.end33, !dbg !4089

if.else28:                                        ; preds = %sw.bb21
  %33 = load i32, i32* %val.addr, align 4, !dbg !4090
  %34 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4091
  %iobase29 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %34, i32 0, i32 0, !dbg !4092
  %35 = load i64, i64* %iobase29, align 8, !dbg !4092
  %36 = load i32, i32* %reg_offset, align 4, !dbg !4093
  %conv30 = zext i32 %36 to i64, !dbg !4093
  %add31 = add i64 %35, %conv30, !dbg !4094
  %conv32 = trunc i64 %add31 to i32, !dbg !4091
  call void @outl(i32 %33, i32 %conv32) #7, !dbg !4095
  br label %if.end33

if.end33:                                         ; preds = %if.else28, %if.then24
  br label %sw.epilog, !dbg !4096

sw.epilog:                                        ; preds = %if.end33, %if.end20, %if.end
  ret void, !dbg !4097
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__i8254_read(%struct.comedi_8254* %i8254, i32 %reg) #0 !dbg !4098 {
entry:
  %i8254.addr = alloca %struct.comedi_8254*, align 8
  %reg.addr = alloca i32, align 4
  %reg_offset = alloca i32, align 4
  %val = alloca i32, align 4
  store %struct.comedi_8254* %i8254, %struct.comedi_8254** %i8254.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_8254** %i8254.addr, metadata !4099, metadata !DIExpression()), !dbg !4100
  store i32 %reg, i32* %reg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reg.addr, metadata !4101, metadata !DIExpression()), !dbg !4102
  call void @llvm.dbg.declare(metadata i32* %reg_offset, metadata !4103, metadata !DIExpression()), !dbg !4104
  %0 = load i32, i32* %reg.addr, align 4, !dbg !4105
  %1 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4106
  %iosize = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %1, i32 0, i32 2, !dbg !4107
  %2 = load i32, i32* %iosize, align 8, !dbg !4107
  %mul = mul i32 %0, %2, !dbg !4108
  %3 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4109
  %regshift = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %3, i32 0, i32 3, !dbg !4110
  %4 = load i32, i32* %regshift, align 4, !dbg !4110
  %shl = shl i32 %mul, %4, !dbg !4111
  store i32 %shl, i32* %reg_offset, align 4, !dbg !4104
  call void @llvm.dbg.declare(metadata i32* %val, metadata !4112, metadata !DIExpression()), !dbg !4113
  %5 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4114
  %iosize1 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %5, i32 0, i32 2, !dbg !4115
  %6 = load i32, i32* %iosize1, align 8, !dbg !4115
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb7
    i32 4, label %sw.bb24
  ], !dbg !4116

sw.default:                                       ; preds = %entry
  br label %sw.bb, !dbg !4117

sw.bb:                                            ; preds = %entry, %sw.default
  %7 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4118
  %mmio = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %7, i32 0, i32 1, !dbg !4121
  %8 = load i8*, i8** %mmio, align 8, !dbg !4121
  %tobool = icmp ne i8* %8, null, !dbg !4118
  br i1 %tobool, label %if.then, label %if.else, !dbg !4122

if.then:                                          ; preds = %sw.bb
  %9 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4123
  %mmio2 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %9, i32 0, i32 1, !dbg !4124
  %10 = load i8*, i8** %mmio2, align 8, !dbg !4124
  %11 = load i32, i32* %reg_offset, align 4, !dbg !4125
  %idx.ext = zext i32 %11 to i64, !dbg !4126
  %add.ptr = getelementptr i8, i8* %10, i64 %idx.ext, !dbg !4126
  %call = call zeroext i8 @readb(i8* %add.ptr) #7, !dbg !4127
  %conv = zext i8 %call to i32, !dbg !4127
  store i32 %conv, i32* %val, align 4, !dbg !4128
  br label %if.end, !dbg !4129

if.else:                                          ; preds = %sw.bb
  %12 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4130
  %iobase = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %12, i32 0, i32 0, !dbg !4131
  %13 = load i64, i64* %iobase, align 8, !dbg !4131
  %14 = load i32, i32* %reg_offset, align 4, !dbg !4132
  %conv3 = zext i32 %14 to i64, !dbg !4132
  %add = add i64 %13, %conv3, !dbg !4133
  %conv4 = trunc i64 %add to i32, !dbg !4130
  %call5 = call zeroext i8 @inb(i32 %conv4) #7, !dbg !4134
  %conv6 = zext i8 %call5 to i32, !dbg !4134
  store i32 %conv6, i32* %val, align 4, !dbg !4135
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog, !dbg !4136

sw.bb7:                                           ; preds = %entry
  %15 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4137
  %mmio8 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %15, i32 0, i32 1, !dbg !4139
  %16 = load i8*, i8** %mmio8, align 8, !dbg !4139
  %tobool9 = icmp ne i8* %16, null, !dbg !4137
  br i1 %tobool9, label %if.then10, label %if.else16, !dbg !4140

if.then10:                                        ; preds = %sw.bb7
  %17 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4141
  %mmio11 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %17, i32 0, i32 1, !dbg !4142
  %18 = load i8*, i8** %mmio11, align 8, !dbg !4142
  %19 = load i32, i32* %reg_offset, align 4, !dbg !4143
  %idx.ext12 = zext i32 %19 to i64, !dbg !4144
  %add.ptr13 = getelementptr i8, i8* %18, i64 %idx.ext12, !dbg !4144
  %call14 = call zeroext i16 @readw(i8* %add.ptr13) #7, !dbg !4145
  %conv15 = zext i16 %call14 to i32, !dbg !4145
  store i32 %conv15, i32* %val, align 4, !dbg !4146
  br label %if.end23, !dbg !4147

if.else16:                                        ; preds = %sw.bb7
  %20 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4148
  %iobase17 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %20, i32 0, i32 0, !dbg !4149
  %21 = load i64, i64* %iobase17, align 8, !dbg !4149
  %22 = load i32, i32* %reg_offset, align 4, !dbg !4150
  %conv18 = zext i32 %22 to i64, !dbg !4150
  %add19 = add i64 %21, %conv18, !dbg !4151
  %conv20 = trunc i64 %add19 to i32, !dbg !4148
  %call21 = call zeroext i16 @inw(i32 %conv20) #7, !dbg !4152
  %conv22 = zext i16 %call21 to i32, !dbg !4152
  store i32 %conv22, i32* %val, align 4, !dbg !4153
  br label %if.end23

if.end23:                                         ; preds = %if.else16, %if.then10
  br label %sw.epilog, !dbg !4154

sw.bb24:                                          ; preds = %entry
  %23 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4155
  %mmio25 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %23, i32 0, i32 1, !dbg !4157
  %24 = load i8*, i8** %mmio25, align 8, !dbg !4157
  %tobool26 = icmp ne i8* %24, null, !dbg !4155
  br i1 %tobool26, label %if.then27, label %if.else32, !dbg !4158

if.then27:                                        ; preds = %sw.bb24
  %25 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4159
  %mmio28 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %25, i32 0, i32 1, !dbg !4160
  %26 = load i8*, i8** %mmio28, align 8, !dbg !4160
  %27 = load i32, i32* %reg_offset, align 4, !dbg !4161
  %idx.ext29 = zext i32 %27 to i64, !dbg !4162
  %add.ptr30 = getelementptr i8, i8* %26, i64 %idx.ext29, !dbg !4162
  %call31 = call i32 @readl(i8* %add.ptr30) #7, !dbg !4163
  store i32 %call31, i32* %val, align 4, !dbg !4164
  br label %if.end38, !dbg !4165

if.else32:                                        ; preds = %sw.bb24
  %28 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4166
  %iobase33 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %28, i32 0, i32 0, !dbg !4167
  %29 = load i64, i64* %iobase33, align 8, !dbg !4167
  %30 = load i32, i32* %reg_offset, align 4, !dbg !4168
  %conv34 = zext i32 %30 to i64, !dbg !4168
  %add35 = add i64 %29, %conv34, !dbg !4169
  %conv36 = trunc i64 %add35 to i32, !dbg !4166
  %call37 = call i32 @inl(i32 %conv36) #7, !dbg !4170
  store i32 %call37, i32* %val, align 4, !dbg !4171
  br label %if.end38

if.end38:                                         ; preds = %if.else32, %if.then27
  br label %sw.epilog, !dbg !4172

sw.epilog:                                        ; preds = %if.end38, %if.end23, %if.end
  %31 = load i32, i32* %val, align 4, !dbg !4173
  %and = and i32 %31, 255, !dbg !4174
  ret i32 %and, !dbg !4175
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @comedi_8254_read(%struct.comedi_8254* %i8254, i32 %counter) #0 !dbg !4176 {
entry:
  %retval = alloca i32, align 4
  %i8254.addr = alloca %struct.comedi_8254*, align 8
  %counter.addr = alloca i32, align 4
  %val = alloca i32, align 4
  store %struct.comedi_8254* %i8254, %struct.comedi_8254** %i8254.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_8254** %i8254.addr, metadata !4177, metadata !DIExpression()), !dbg !4178
  store i32 %counter, i32* %counter.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %counter.addr, metadata !4179, metadata !DIExpression()), !dbg !4180
  call void @llvm.dbg.declare(metadata i32* %val, metadata !4181, metadata !DIExpression()), !dbg !4182
  %0 = load i32, i32* %counter.addr, align 4, !dbg !4183
  %cmp = icmp ugt i32 %0, 2, !dbg !4185
  br i1 %cmp, label %if.then, label %if.end, !dbg !4186

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4187
  br label %return, !dbg !4187

if.end:                                           ; preds = %entry
  %1 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4188
  %2 = load i32, i32* %counter.addr, align 4, !dbg !4189
  %shl = shl i32 %2, 6, !dbg !4189
  call void @__i8254_write(%struct.comedi_8254* %1, i32 %shl, i32 3) #7, !dbg !4190
  %3 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4191
  %4 = load i32, i32* %counter.addr, align 4, !dbg !4192
  %call = call i32 @__i8254_read(%struct.comedi_8254* %3, i32 %4) #7, !dbg !4193
  store i32 %call, i32* %val, align 4, !dbg !4194
  %5 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4195
  %6 = load i32, i32* %counter.addr, align 4, !dbg !4196
  %call1 = call i32 @__i8254_read(%struct.comedi_8254* %5, i32 %6) #7, !dbg !4197
  %shl2 = shl i32 %call1, 8, !dbg !4198
  %7 = load i32, i32* %val, align 4, !dbg !4199
  %or = or i32 %7, %shl2, !dbg !4199
  store i32 %or, i32* %val, align 4, !dbg !4199
  %8 = load i32, i32* %val, align 4, !dbg !4200
  store i32 %8, i32* %retval, align 4, !dbg !4201
  br label %return, !dbg !4201

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !4202
  ret i32 %9, !dbg !4202
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @comedi_8254_write(%struct.comedi_8254* %i8254, i32 %counter, i32 %val) #0 !dbg !4203 {
entry:
  %i8254.addr = alloca %struct.comedi_8254*, align 8
  %counter.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %byte = alloca i32, align 4
  store %struct.comedi_8254* %i8254, %struct.comedi_8254** %i8254.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_8254** %i8254.addr, metadata !4204, metadata !DIExpression()), !dbg !4205
  store i32 %counter, i32* %counter.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %counter.addr, metadata !4206, metadata !DIExpression()), !dbg !4207
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !4208, metadata !DIExpression()), !dbg !4209
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !4210, metadata !DIExpression()), !dbg !4211
  %0 = load i32, i32* %counter.addr, align 4, !dbg !4212
  %cmp = icmp ugt i32 %0, 2, !dbg !4214
  br i1 %cmp, label %if.then, label %if.end, !dbg !4215

if.then:                                          ; preds = %entry
  br label %return, !dbg !4216

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %val.addr, align 4, !dbg !4217
  %cmp1 = icmp ugt i32 %1, 65535, !dbg !4219
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !4220

if.then2:                                         ; preds = %if.end
  br label %return, !dbg !4221

if.end3:                                          ; preds = %if.end
  %2 = load i32, i32* %val.addr, align 4, !dbg !4222
  %and = and i32 %2, 255, !dbg !4223
  store i32 %and, i32* %byte, align 4, !dbg !4224
  %3 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4225
  %4 = load i32, i32* %byte, align 4, !dbg !4226
  %5 = load i32, i32* %counter.addr, align 4, !dbg !4227
  call void @__i8254_write(%struct.comedi_8254* %3, i32 %4, i32 %5) #7, !dbg !4228
  %6 = load i32, i32* %val.addr, align 4, !dbg !4229
  %shr = lshr i32 %6, 8, !dbg !4230
  %and4 = and i32 %shr, 255, !dbg !4231
  store i32 %and4, i32* %byte, align 4, !dbg !4232
  %7 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4233
  %8 = load i32, i32* %byte, align 4, !dbg !4234
  %9 = load i32, i32* %counter.addr, align 4, !dbg !4235
  call void @__i8254_write(%struct.comedi_8254* %7, i32 %8, i32 %9) #7, !dbg !4236
  br label %return, !dbg !4237

return:                                           ; preds = %if.end3, %if.then2, %if.then
  ret void, !dbg !4237
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @comedi_8254_set_mode(%struct.comedi_8254* %i8254, i32 %counter, i32 %mode) #0 !dbg !4238 {
entry:
  %retval = alloca i32, align 4
  %i8254.addr = alloca %struct.comedi_8254*, align 8
  %counter.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %byte = alloca i32, align 4
  store %struct.comedi_8254* %i8254, %struct.comedi_8254** %i8254.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_8254** %i8254.addr, metadata !4241, metadata !DIExpression()), !dbg !4242
  store i32 %counter, i32* %counter.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %counter.addr, metadata !4243, metadata !DIExpression()), !dbg !4244
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !4245, metadata !DIExpression()), !dbg !4246
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !4247, metadata !DIExpression()), !dbg !4248
  %0 = load i32, i32* %counter.addr, align 4, !dbg !4249
  %cmp = icmp ugt i32 %0, 2, !dbg !4251
  br i1 %cmp, label %if.then, label %if.end, !dbg !4252

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4253
  br label %return, !dbg !4253

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %mode.addr, align 4, !dbg !4254
  %cmp1 = icmp ugt i32 %1, 11, !dbg !4256
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !4257

if.then2:                                         ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !4258
  br label %return, !dbg !4258

if.end3:                                          ; preds = %if.end
  %2 = load i32, i32* %counter.addr, align 4, !dbg !4259
  %shl = shl i32 %2, 6, !dbg !4259
  %or = or i32 %shl, 48, !dbg !4260
  %3 = load i32, i32* %mode.addr, align 4, !dbg !4261
  %or4 = or i32 %or, %3, !dbg !4262
  store i32 %or4, i32* %byte, align 4, !dbg !4263
  %4 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4264
  %5 = load i32, i32* %byte, align 4, !dbg !4265
  call void @__i8254_write(%struct.comedi_8254* %4, i32 %5, i32 3) #7, !dbg !4266
  store i32 0, i32* %retval, align 4, !dbg !4267
  br label %return, !dbg !4267

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !4268
  ret i32 %6, !dbg !4268
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @comedi_8254_load(%struct.comedi_8254* %i8254, i32 %counter, i32 %val, i32 %mode) #0 !dbg !4269 {
entry:
  %retval = alloca i32, align 4
  %i8254.addr = alloca %struct.comedi_8254*, align 8
  %counter.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  store %struct.comedi_8254* %i8254, %struct.comedi_8254** %i8254.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_8254** %i8254.addr, metadata !4272, metadata !DIExpression()), !dbg !4273
  store i32 %counter, i32* %counter.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %counter.addr, metadata !4274, metadata !DIExpression()), !dbg !4275
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !4276, metadata !DIExpression()), !dbg !4277
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !4278, metadata !DIExpression()), !dbg !4279
  %0 = load i32, i32* %counter.addr, align 4, !dbg !4280
  %cmp = icmp ugt i32 %0, 2, !dbg !4282
  br i1 %cmp, label %if.then, label %if.end, !dbg !4283

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4284
  br label %return, !dbg !4284

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %val.addr, align 4, !dbg !4285
  %cmp1 = icmp ugt i32 %1, 65535, !dbg !4287
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !4288

if.then2:                                         ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !4289
  br label %return, !dbg !4289

if.end3:                                          ; preds = %if.end
  %2 = load i32, i32* %mode.addr, align 4, !dbg !4290
  %cmp4 = icmp ugt i32 %2, 11, !dbg !4292
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !4293

if.then5:                                         ; preds = %if.end3
  store i32 -22, i32* %retval, align 4, !dbg !4294
  br label %return, !dbg !4294

if.end6:                                          ; preds = %if.end3
  %3 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4295
  %4 = load i32, i32* %counter.addr, align 4, !dbg !4296
  %5 = load i32, i32* %mode.addr, align 4, !dbg !4297
  %call = call i32 @comedi_8254_set_mode(%struct.comedi_8254* %3, i32 %4, i32 %5) #7, !dbg !4298
  %6 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4299
  %7 = load i32, i32* %counter.addr, align 4, !dbg !4300
  %8 = load i32, i32* %val.addr, align 4, !dbg !4301
  call void @comedi_8254_write(%struct.comedi_8254* %6, i32 %7, i32 %8) #7, !dbg !4302
  store i32 0, i32* %retval, align 4, !dbg !4303
  br label %return, !dbg !4303

return:                                           ; preds = %if.end6, %if.then5, %if.then2, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !4304
  ret i32 %9, !dbg !4304
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @comedi_8254_pacer_enable(%struct.comedi_8254* %i8254, i32 %counter1, i32 %counter2, i1 zeroext %enable) #0 !dbg !4305 {
entry:
  %i8254.addr = alloca %struct.comedi_8254*, align 8
  %counter1.addr = alloca i32, align 4
  %counter2.addr = alloca i32, align 4
  %enable.addr = alloca i8, align 1
  %mode = alloca i32, align 4
  store %struct.comedi_8254* %i8254, %struct.comedi_8254** %i8254.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_8254** %i8254.addr, metadata !4308, metadata !DIExpression()), !dbg !4309
  store i32 %counter1, i32* %counter1.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %counter1.addr, metadata !4310, metadata !DIExpression()), !dbg !4311
  store i32 %counter2, i32* %counter2.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %counter2.addr, metadata !4312, metadata !DIExpression()), !dbg !4313
  %frombool = zext i1 %enable to i8
  store i8 %frombool, i8* %enable.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %enable.addr, metadata !4314, metadata !DIExpression()), !dbg !4315
  call void @llvm.dbg.declare(metadata i32* %mode, metadata !4316, metadata !DIExpression()), !dbg !4317
  %0 = load i32, i32* %counter1.addr, align 4, !dbg !4318
  %cmp = icmp ugt i32 %0, 2, !dbg !4320
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4321

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %counter2.addr, align 4, !dbg !4322
  %cmp1 = icmp ugt i32 %1, 2, !dbg !4323
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !4324

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i32, i32* %counter1.addr, align 4, !dbg !4325
  %3 = load i32, i32* %counter2.addr, align 4, !dbg !4326
  %cmp3 = icmp eq i32 %2, %3, !dbg !4327
  br i1 %cmp3, label %if.then, label %if.end, !dbg !4328

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  br label %if.end9, !dbg !4329

if.end:                                           ; preds = %lor.lhs.false2
  %4 = load i8, i8* %enable.addr, align 1, !dbg !4330
  %tobool = trunc i8 %4 to i1, !dbg !4330
  br i1 %tobool, label %if.then4, label %if.else, !dbg !4332

if.then4:                                         ; preds = %if.end
  store i32 4, i32* %mode, align 4, !dbg !4333
  br label %if.end5, !dbg !4334

if.else:                                          ; preds = %if.end
  store i32 0, i32* %mode, align 4, !dbg !4335
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then4
  %5 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4336
  %6 = load i32, i32* %counter1.addr, align 4, !dbg !4337
  %7 = load i32, i32* %mode, align 4, !dbg !4338
  %call = call i32 @comedi_8254_set_mode(%struct.comedi_8254* %5, i32 %6, i32 %7) #7, !dbg !4339
  %8 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4340
  %9 = load i32, i32* %counter2.addr, align 4, !dbg !4341
  %10 = load i32, i32* %mode, align 4, !dbg !4342
  %call6 = call i32 @comedi_8254_set_mode(%struct.comedi_8254* %8, i32 %9, i32 %10) #7, !dbg !4343
  %11 = load i8, i8* %enable.addr, align 1, !dbg !4344
  %tobool7 = trunc i8 %11 to i1, !dbg !4344
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !4346

if.then8:                                         ; preds = %if.end5
  %12 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4347
  %13 = load i32, i32* %counter2.addr, align 4, !dbg !4349
  %14 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4350
  %divisor2 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %14, i32 0, i32 7, !dbg !4351
  %15 = load i32, i32* %divisor2, align 4, !dbg !4351
  call void @comedi_8254_write(%struct.comedi_8254* %12, i32 %13, i32 %15) #7, !dbg !4352
  %16 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4353
  %17 = load i32, i32* %counter1.addr, align 4, !dbg !4354
  %18 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4355
  %divisor1 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %18, i32 0, i32 6, !dbg !4356
  %19 = load i32, i32* %divisor1, align 8, !dbg !4356
  call void @comedi_8254_write(%struct.comedi_8254* %16, i32 %17, i32 %19) #7, !dbg !4357
  br label %if.end9, !dbg !4358

if.end9:                                          ; preds = %if.then, %if.then8, %if.end5
  ret void, !dbg !4359
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @comedi_8254_update_divisors(%struct.comedi_8254* %i8254) #0 !dbg !4360 {
entry:
  %i8254.addr = alloca %struct.comedi_8254*, align 8
  store %struct.comedi_8254* %i8254, %struct.comedi_8254** %i8254.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_8254** %i8254.addr, metadata !4363, metadata !DIExpression()), !dbg !4364
  %0 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4365
  %next_div = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %0, i32 0, i32 8, !dbg !4366
  %1 = load i32, i32* %next_div, align 8, !dbg !4366
  %and = and i32 %1, 65535, !dbg !4367
  %2 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4368
  %divisor = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %2, i32 0, i32 5, !dbg !4369
  store i32 %and, i32* %divisor, align 4, !dbg !4370
  %3 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4371
  %next_div1 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %3, i32 0, i32 9, !dbg !4372
  %4 = load i32, i32* %next_div1, align 4, !dbg !4372
  %and1 = and i32 %4, 65535, !dbg !4373
  %5 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4374
  %divisor1 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %5, i32 0, i32 6, !dbg !4375
  store i32 %and1, i32* %divisor1, align 8, !dbg !4376
  %6 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4377
  %next_div2 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %6, i32 0, i32 10, !dbg !4378
  %7 = load i32, i32* %next_div2, align 8, !dbg !4378
  %and2 = and i32 %7, 65535, !dbg !4379
  %8 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4380
  %divisor2 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %8, i32 0, i32 7, !dbg !4381
  store i32 %and2, i32* %divisor2, align 4, !dbg !4382
  ret void, !dbg !4383
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @comedi_8254_cascade_ns_to_timer(%struct.comedi_8254* %i8254, i32* %nanosec, i32 %flags) #0 !dbg !4384 {
entry:
  %i8254.addr = alloca %struct.comedi_8254*, align 8
  %nanosec.addr = alloca i32*, align 8
  %flags.addr = alloca i32, align 4
  %d1 = alloca i32, align 4
  %d2 = alloca i32, align 4
  %div = alloca i32, align 4
  %ns_lub = alloca i32, align 4
  %ns_glb = alloca i32, align 4
  %d1_lub = alloca i32, align 4
  %d1_glb = alloca i32, align 4
  %d2_lub = alloca i32, align 4
  %d2_glb = alloca i32, align 4
  %start = alloca i32, align 4
  %ns = alloca i32, align 4
  %ns_low = alloca i32, align 4
  %ns_high = alloca i32, align 4
  store %struct.comedi_8254* %i8254, %struct.comedi_8254** %i8254.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_8254** %i8254.addr, metadata !4387, metadata !DIExpression()), !dbg !4388
  store i32* %nanosec, i32** %nanosec.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %nanosec.addr, metadata !4389, metadata !DIExpression()), !dbg !4390
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4391, metadata !DIExpression()), !dbg !4392
  call void @llvm.dbg.declare(metadata i32* %d1, metadata !4393, metadata !DIExpression()), !dbg !4394
  %0 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4395
  %next_div1 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %0, i32 0, i32 9, !dbg !4396
  %1 = load i32, i32* %next_div1, align 4, !dbg !4396
  %tobool = icmp ne i32 %1, 0, !dbg !4395
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4395

cond.true:                                        ; preds = %entry
  %2 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4397
  %next_div11 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %2, i32 0, i32 9, !dbg !4398
  %3 = load i32, i32* %next_div11, align 4, !dbg !4398
  br label %cond.end, !dbg !4395

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4395

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ 65536, %cond.false ], !dbg !4395
  store i32 %cond, i32* %d1, align 4, !dbg !4394
  call void @llvm.dbg.declare(metadata i32* %d2, metadata !4399, metadata !DIExpression()), !dbg !4400
  %4 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4401
  %next_div2 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %4, i32 0, i32 10, !dbg !4402
  %5 = load i32, i32* %next_div2, align 8, !dbg !4402
  %tobool2 = icmp ne i32 %5, 0, !dbg !4401
  br i1 %tobool2, label %cond.true3, label %cond.false5, !dbg !4401

cond.true3:                                       ; preds = %cond.end
  %6 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4403
  %next_div24 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %6, i32 0, i32 10, !dbg !4404
  %7 = load i32, i32* %next_div24, align 8, !dbg !4404
  br label %cond.end6, !dbg !4401

cond.false5:                                      ; preds = %cond.end
  br label %cond.end6, !dbg !4401

cond.end6:                                        ; preds = %cond.false5, %cond.true3
  %cond7 = phi i32 [ %7, %cond.true3 ], [ 65536, %cond.false5 ], !dbg !4401
  store i32 %cond7, i32* %d2, align 4, !dbg !4400
  call void @llvm.dbg.declare(metadata i32* %div, metadata !4405, metadata !DIExpression()), !dbg !4406
  %8 = load i32, i32* %d1, align 4, !dbg !4407
  %9 = load i32, i32* %d2, align 4, !dbg !4408
  %mul = mul i32 %8, %9, !dbg !4409
  store i32 %mul, i32* %div, align 4, !dbg !4406
  call void @llvm.dbg.declare(metadata i32* %ns_lub, metadata !4410, metadata !DIExpression()), !dbg !4411
  store i32 -1, i32* %ns_lub, align 4, !dbg !4411
  call void @llvm.dbg.declare(metadata i32* %ns_glb, metadata !4412, metadata !DIExpression()), !dbg !4413
  store i32 0, i32* %ns_glb, align 4, !dbg !4413
  call void @llvm.dbg.declare(metadata i32* %d1_lub, metadata !4414, metadata !DIExpression()), !dbg !4415
  store i32 0, i32* %d1_lub, align 4, !dbg !4415
  call void @llvm.dbg.declare(metadata i32* %d1_glb, metadata !4416, metadata !DIExpression()), !dbg !4417
  store i32 0, i32* %d1_glb, align 4, !dbg !4417
  call void @llvm.dbg.declare(metadata i32* %d2_lub, metadata !4418, metadata !DIExpression()), !dbg !4419
  store i32 0, i32* %d2_lub, align 4, !dbg !4419
  call void @llvm.dbg.declare(metadata i32* %d2_glb, metadata !4420, metadata !DIExpression()), !dbg !4421
  store i32 0, i32* %d2_glb, align 4, !dbg !4421
  call void @llvm.dbg.declare(metadata i32* %start, metadata !4422, metadata !DIExpression()), !dbg !4423
  call void @llvm.dbg.declare(metadata i32* %ns, metadata !4424, metadata !DIExpression()), !dbg !4425
  call void @llvm.dbg.declare(metadata i32* %ns_low, metadata !4426, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.declare(metadata i32* %ns_high, metadata !4428, metadata !DIExpression()), !dbg !4429
  %10 = load i32, i32* %div, align 4, !dbg !4430
  %11 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4432
  %osc_base = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %11, i32 0, i32 4, !dbg !4433
  %12 = load i32, i32* %osc_base, align 8, !dbg !4433
  %mul8 = mul i32 %10, %12, !dbg !4434
  %13 = load i32*, i32** %nanosec.addr, align 8, !dbg !4435
  %14 = load i32, i32* %13, align 4, !dbg !4436
  %cmp = icmp eq i32 %mul8, %14, !dbg !4437
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !4438

land.lhs.true:                                    ; preds = %cond.end6
  %15 = load i32, i32* %d1, align 4, !dbg !4439
  %cmp9 = icmp ugt i32 %15, 1, !dbg !4440
  br i1 %cmp9, label %land.lhs.true10, label %if.end, !dbg !4441

land.lhs.true10:                                  ; preds = %land.lhs.true
  %16 = load i32, i32* %d1, align 4, !dbg !4442
  %cmp11 = icmp ule i32 %16, 65536, !dbg !4443
  br i1 %cmp11, label %land.lhs.true12, label %if.end, !dbg !4444

land.lhs.true12:                                  ; preds = %land.lhs.true10
  %17 = load i32, i32* %d2, align 4, !dbg !4445
  %cmp13 = icmp ugt i32 %17, 1, !dbg !4446
  br i1 %cmp13, label %land.lhs.true14, label %if.end, !dbg !4447

land.lhs.true14:                                  ; preds = %land.lhs.true12
  %18 = load i32, i32* %d2, align 4, !dbg !4448
  %cmp15 = icmp ule i32 %18, 65536, !dbg !4449
  br i1 %cmp15, label %land.lhs.true16, label %if.end, !dbg !4450

land.lhs.true16:                                  ; preds = %land.lhs.true14
  %19 = load i32, i32* %div, align 4, !dbg !4451
  %20 = load i32, i32* %d1, align 4, !dbg !4452
  %cmp17 = icmp ugt i32 %19, %20, !dbg !4453
  br i1 %cmp17, label %land.lhs.true18, label %if.end, !dbg !4454

land.lhs.true18:                                  ; preds = %land.lhs.true16
  %21 = load i32, i32* %div, align 4, !dbg !4455
  %22 = load i32, i32* %d2, align 4, !dbg !4456
  %cmp19 = icmp ugt i32 %21, %22, !dbg !4457
  br i1 %cmp19, label %land.lhs.true20, label %if.end, !dbg !4458

land.lhs.true20:                                  ; preds = %land.lhs.true18
  %23 = load i32, i32* %div, align 4, !dbg !4459
  %24 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4460
  %osc_base21 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %24, i32 0, i32 4, !dbg !4461
  %25 = load i32, i32* %osc_base21, align 8, !dbg !4461
  %mul22 = mul i32 %23, %25, !dbg !4462
  %26 = load i32, i32* %div, align 4, !dbg !4463
  %cmp23 = icmp ugt i32 %mul22, %26, !dbg !4464
  br i1 %cmp23, label %land.lhs.true24, label %if.end, !dbg !4465

land.lhs.true24:                                  ; preds = %land.lhs.true20
  %27 = load i32, i32* %div, align 4, !dbg !4466
  %28 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4467
  %osc_base25 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %28, i32 0, i32 4, !dbg !4468
  %29 = load i32, i32* %osc_base25, align 8, !dbg !4468
  %mul26 = mul i32 %27, %29, !dbg !4469
  %30 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4470
  %osc_base27 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %30, i32 0, i32 4, !dbg !4471
  %31 = load i32, i32* %osc_base27, align 8, !dbg !4471
  %cmp28 = icmp ugt i32 %mul26, %31, !dbg !4472
  br i1 %cmp28, label %if.then, label %if.end, !dbg !4473

if.then:                                          ; preds = %land.lhs.true24
  br label %return, !dbg !4474

if.end:                                           ; preds = %land.lhs.true24, %land.lhs.true20, %land.lhs.true18, %land.lhs.true16, %land.lhs.true14, %land.lhs.true12, %land.lhs.true10, %land.lhs.true, %cond.end6
  %32 = load i32*, i32** %nanosec.addr, align 8, !dbg !4475
  %33 = load i32, i32* %32, align 4, !dbg !4476
  %34 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4477
  %osc_base29 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %34, i32 0, i32 4, !dbg !4478
  %35 = load i32, i32* %osc_base29, align 8, !dbg !4478
  %div30 = udiv i32 %33, %35, !dbg !4479
  store i32 %div30, i32* %div, align 4, !dbg !4480
  store i32 65536, i32* %d2, align 4, !dbg !4481
  %36 = load i32, i32* %div, align 4, !dbg !4482
  %37 = load i32, i32* %d2, align 4, !dbg !4483
  %div31 = udiv i32 %36, %37, !dbg !4484
  store i32 %div31, i32* %start, align 4, !dbg !4485
  %38 = load i32, i32* %start, align 4, !dbg !4486
  %cmp32 = icmp ult i32 %38, 2, !dbg !4488
  br i1 %cmp32, label %if.then33, label %if.end34, !dbg !4489

if.then33:                                        ; preds = %if.end
  store i32 2, i32* %start, align 4, !dbg !4490
  br label %if.end34, !dbg !4491

if.end34:                                         ; preds = %if.then33, %if.end
  %39 = load i32, i32* %start, align 4, !dbg !4492
  store i32 %39, i32* %d1, align 4, !dbg !4494
  br label %for.cond, !dbg !4495

for.cond:                                         ; preds = %for.inc61, %if.end34
  %40 = load i32, i32* %d1, align 4, !dbg !4496
  %41 = load i32, i32* %div, align 4, !dbg !4498
  %42 = load i32, i32* %d1, align 4, !dbg !4499
  %div35 = udiv i32 %41, %42, !dbg !4500
  %add = add i32 %div35, 1, !dbg !4501
  %cmp36 = icmp ule i32 %40, %add, !dbg !4502
  br i1 %cmp36, label %land.rhs, label %land.end, !dbg !4503

land.rhs:                                         ; preds = %for.cond
  %43 = load i32, i32* %d1, align 4, !dbg !4504
  %cmp37 = icmp ule i32 %43, 65536, !dbg !4505
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %44 = phi i1 [ false, %for.cond ], [ %cmp37, %land.rhs ], !dbg !4506
  br i1 %44, label %for.body, label %for.end63, !dbg !4507

for.body:                                         ; preds = %land.end
  %45 = load i32, i32* %div, align 4, !dbg !4508
  %46 = load i32, i32* %d1, align 4, !dbg !4511
  %div38 = udiv i32 %45, %46, !dbg !4512
  store i32 %div38, i32* %d2, align 4, !dbg !4513
  br label %for.cond39, !dbg !4514

for.cond39:                                       ; preds = %for.inc, %for.body
  %47 = load i32, i32* %d1, align 4, !dbg !4515
  %48 = load i32, i32* %d2, align 4, !dbg !4517
  %mul40 = mul i32 %47, %48, !dbg !4518
  %49 = load i32, i32* %div, align 4, !dbg !4519
  %50 = load i32, i32* %d1, align 4, !dbg !4520
  %add41 = add i32 %49, %50, !dbg !4521
  %add42 = add i32 %add41, 1, !dbg !4522
  %cmp43 = icmp ule i32 %mul40, %add42, !dbg !4523
  br i1 %cmp43, label %land.rhs44, label %land.end46, !dbg !4524

land.rhs44:                                       ; preds = %for.cond39
  %51 = load i32, i32* %d2, align 4, !dbg !4525
  %cmp45 = icmp ule i32 %51, 65536, !dbg !4526
  br label %land.end46

land.end46:                                       ; preds = %land.rhs44, %for.cond39
  %52 = phi i1 [ false, %for.cond39 ], [ %cmp45, %land.rhs44 ], !dbg !4527
  br i1 %52, label %for.body47, label %for.end, !dbg !4528

for.body47:                                       ; preds = %land.end46
  %53 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4529
  %osc_base48 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %53, i32 0, i32 4, !dbg !4531
  %54 = load i32, i32* %osc_base48, align 8, !dbg !4531
  %55 = load i32, i32* %d1, align 4, !dbg !4532
  %mul49 = mul i32 %54, %55, !dbg !4533
  %56 = load i32, i32* %d2, align 4, !dbg !4534
  %mul50 = mul i32 %mul49, %56, !dbg !4535
  store i32 %mul50, i32* %ns, align 4, !dbg !4536
  %57 = load i32, i32* %ns, align 4, !dbg !4537
  %58 = load i32*, i32** %nanosec.addr, align 8, !dbg !4539
  %59 = load i32, i32* %58, align 4, !dbg !4540
  %cmp51 = icmp ule i32 %57, %59, !dbg !4541
  br i1 %cmp51, label %land.lhs.true52, label %if.end55, !dbg !4542

land.lhs.true52:                                  ; preds = %for.body47
  %60 = load i32, i32* %ns, align 4, !dbg !4543
  %61 = load i32, i32* %ns_glb, align 4, !dbg !4544
  %cmp53 = icmp ugt i32 %60, %61, !dbg !4545
  br i1 %cmp53, label %if.then54, label %if.end55, !dbg !4546

if.then54:                                        ; preds = %land.lhs.true52
  %62 = load i32, i32* %ns, align 4, !dbg !4547
  store i32 %62, i32* %ns_glb, align 4, !dbg !4549
  %63 = load i32, i32* %d1, align 4, !dbg !4550
  store i32 %63, i32* %d1_glb, align 4, !dbg !4551
  %64 = load i32, i32* %d2, align 4, !dbg !4552
  store i32 %64, i32* %d2_glb, align 4, !dbg !4553
  br label %if.end55, !dbg !4554

if.end55:                                         ; preds = %if.then54, %land.lhs.true52, %for.body47
  %65 = load i32, i32* %ns, align 4, !dbg !4555
  %66 = load i32*, i32** %nanosec.addr, align 8, !dbg !4557
  %67 = load i32, i32* %66, align 4, !dbg !4558
  %cmp56 = icmp uge i32 %65, %67, !dbg !4559
  br i1 %cmp56, label %land.lhs.true57, label %if.end60, !dbg !4560

land.lhs.true57:                                  ; preds = %if.end55
  %68 = load i32, i32* %ns, align 4, !dbg !4561
  %69 = load i32, i32* %ns_lub, align 4, !dbg !4562
  %cmp58 = icmp ult i32 %68, %69, !dbg !4563
  br i1 %cmp58, label %if.then59, label %if.end60, !dbg !4564

if.then59:                                        ; preds = %land.lhs.true57
  %70 = load i32, i32* %ns, align 4, !dbg !4565
  store i32 %70, i32* %ns_lub, align 4, !dbg !4567
  %71 = load i32, i32* %d1, align 4, !dbg !4568
  store i32 %71, i32* %d1_lub, align 4, !dbg !4569
  %72 = load i32, i32* %d2, align 4, !dbg !4570
  store i32 %72, i32* %d2_lub, align 4, !dbg !4571
  br label %if.end60, !dbg !4572

if.end60:                                         ; preds = %if.then59, %land.lhs.true57, %if.end55
  br label %for.inc, !dbg !4573

for.inc:                                          ; preds = %if.end60
  %73 = load i32, i32* %d2, align 4, !dbg !4574
  %inc = add i32 %73, 1, !dbg !4574
  store i32 %inc, i32* %d2, align 4, !dbg !4574
  br label %for.cond39, !dbg !4575, !llvm.loop !4576

for.end:                                          ; preds = %land.end46
  br label %for.inc61, !dbg !4578

for.inc61:                                        ; preds = %for.end
  %74 = load i32, i32* %d1, align 4, !dbg !4579
  %inc62 = add i32 %74, 1, !dbg !4579
  store i32 %inc62, i32* %d1, align 4, !dbg !4579
  br label %for.cond, !dbg !4580, !llvm.loop !4581

for.end63:                                        ; preds = %land.end
  %75 = load i32, i32* %flags.addr, align 4, !dbg !4583
  %and = and i32 %75, 196608, !dbg !4584
  switch i32 %and, label %sw.default [
    i32 0, label %sw.bb
    i32 131072, label %sw.bb74
    i32 65536, label %sw.bb75
  ], !dbg !4585

sw.bb:                                            ; preds = %for.end63
  br label %sw.default, !dbg !4586

sw.default:                                       ; preds = %for.end63, %sw.bb
  %76 = load i32, i32* %d1_lub, align 4, !dbg !4587
  %77 = load i32, i32* %d2_lub, align 4, !dbg !4589
  %mul64 = mul i32 %76, %77, !dbg !4590
  %78 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4591
  %osc_base65 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %78, i32 0, i32 4, !dbg !4592
  %79 = load i32, i32* %osc_base65, align 8, !dbg !4592
  %mul66 = mul i32 %mul64, %79, !dbg !4593
  store i32 %mul66, i32* %ns_high, align 4, !dbg !4594
  %80 = load i32, i32* %d1_glb, align 4, !dbg !4595
  %81 = load i32, i32* %d2_glb, align 4, !dbg !4596
  %mul67 = mul i32 %80, %81, !dbg !4597
  %82 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4598
  %osc_base68 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %82, i32 0, i32 4, !dbg !4599
  %83 = load i32, i32* %osc_base68, align 8, !dbg !4599
  %mul69 = mul i32 %mul67, %83, !dbg !4600
  store i32 %mul69, i32* %ns_low, align 4, !dbg !4601
  %84 = load i32, i32* %ns_high, align 4, !dbg !4602
  %85 = load i32*, i32** %nanosec.addr, align 8, !dbg !4604
  %86 = load i32, i32* %85, align 4, !dbg !4605
  %sub = sub i32 %84, %86, !dbg !4606
  %87 = load i32*, i32** %nanosec.addr, align 8, !dbg !4607
  %88 = load i32, i32* %87, align 4, !dbg !4608
  %89 = load i32, i32* %ns_low, align 4, !dbg !4609
  %sub70 = sub i32 %88, %89, !dbg !4610
  %cmp71 = icmp ult i32 %sub, %sub70, !dbg !4611
  br i1 %cmp71, label %if.then72, label %if.else, !dbg !4612

if.then72:                                        ; preds = %sw.default
  %90 = load i32, i32* %d1_lub, align 4, !dbg !4613
  store i32 %90, i32* %d1, align 4, !dbg !4615
  %91 = load i32, i32* %d2_lub, align 4, !dbg !4616
  store i32 %91, i32* %d2, align 4, !dbg !4617
  br label %if.end73, !dbg !4618

if.else:                                          ; preds = %sw.default
  %92 = load i32, i32* %d1_glb, align 4, !dbg !4619
  store i32 %92, i32* %d1, align 4, !dbg !4621
  %93 = load i32, i32* %d2_glb, align 4, !dbg !4622
  store i32 %93, i32* %d2, align 4, !dbg !4623
  br label %if.end73

if.end73:                                         ; preds = %if.else, %if.then72
  br label %sw.epilog, !dbg !4624

sw.bb74:                                          ; preds = %for.end63
  %94 = load i32, i32* %d1_lub, align 4, !dbg !4625
  store i32 %94, i32* %d1, align 4, !dbg !4626
  %95 = load i32, i32* %d2_lub, align 4, !dbg !4627
  store i32 %95, i32* %d2, align 4, !dbg !4628
  br label %sw.epilog, !dbg !4629

sw.bb75:                                          ; preds = %for.end63
  %96 = load i32, i32* %d1_glb, align 4, !dbg !4630
  store i32 %96, i32* %d1, align 4, !dbg !4631
  %97 = load i32, i32* %d2_glb, align 4, !dbg !4632
  store i32 %97, i32* %d2, align 4, !dbg !4633
  br label %sw.epilog, !dbg !4634

sw.epilog:                                        ; preds = %sw.bb75, %sw.bb74, %if.end73
  %98 = load i32, i32* %d1, align 4, !dbg !4635
  %99 = load i32, i32* %d2, align 4, !dbg !4636
  %mul76 = mul i32 %98, %99, !dbg !4637
  %100 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4638
  %osc_base77 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %100, i32 0, i32 4, !dbg !4639
  %101 = load i32, i32* %osc_base77, align 8, !dbg !4639
  %mul78 = mul i32 %mul76, %101, !dbg !4640
  %102 = load i32*, i32** %nanosec.addr, align 8, !dbg !4641
  store i32 %mul78, i32* %102, align 4, !dbg !4642
  %103 = load i32, i32* %d1, align 4, !dbg !4643
  %104 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4644
  %next_div179 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %104, i32 0, i32 9, !dbg !4645
  store i32 %103, i32* %next_div179, align 4, !dbg !4646
  %105 = load i32, i32* %d2, align 4, !dbg !4647
  %106 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4648
  %next_div280 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %106, i32 0, i32 10, !dbg !4649
  store i32 %105, i32* %next_div280, align 8, !dbg !4650
  br label %return, !dbg !4651

return:                                           ; preds = %sw.epilog, %if.then
  ret void, !dbg !4651
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @comedi_8254_ns_to_timer(%struct.comedi_8254* %i8254, i32* %nanosec, i32 %flags) #0 !dbg !4652 {
entry:
  %i8254.addr = alloca %struct.comedi_8254*, align 8
  %nanosec.addr = alloca i32*, align 8
  %flags.addr = alloca i32, align 4
  %divisor = alloca i32, align 4
  %__x = alloca i32, align 4
  %__d = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.comedi_8254* %i8254, %struct.comedi_8254** %i8254.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_8254** %i8254.addr, metadata !4653, metadata !DIExpression()), !dbg !4654
  store i32* %nanosec, i32** %nanosec.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %nanosec.addr, metadata !4655, metadata !DIExpression()), !dbg !4656
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4657, metadata !DIExpression()), !dbg !4658
  call void @llvm.dbg.declare(metadata i32* %divisor, metadata !4659, metadata !DIExpression()), !dbg !4660
  %0 = load i32, i32* %flags.addr, align 4, !dbg !4661
  %and = and i32 %0, 196608, !dbg !4662
  switch i32 %and, label %sw.default [
    i32 0, label %sw.bb
    i32 131072, label %sw.bb2
    i32 65536, label %sw.bb7
  ], !dbg !4663

sw.default:                                       ; preds = %entry
  br label %sw.bb, !dbg !4664

sw.bb:                                            ; preds = %entry, %sw.default
  call void @llvm.dbg.declare(metadata i32* %__x, metadata !4665, metadata !DIExpression()), !dbg !4668
  %1 = load i32*, i32** %nanosec.addr, align 8, !dbg !4668
  %2 = load i32, i32* %1, align 4, !dbg !4668
  store i32 %2, i32* %__x, align 4, !dbg !4668
  call void @llvm.dbg.declare(metadata i32* %__d, metadata !4669, metadata !DIExpression()), !dbg !4668
  %3 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4668
  %osc_base = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %3, i32 0, i32 4, !dbg !4668
  %4 = load i32, i32* %osc_base, align 8, !dbg !4668
  store i32 %4, i32* %__d, align 4, !dbg !4668
  %5 = load i32, i32* %__x, align 4, !dbg !4668
  %6 = load i32, i32* %__d, align 4, !dbg !4668
  %div = udiv i32 %6, 2, !dbg !4668
  %add = add i32 %5, %div, !dbg !4668
  %7 = load i32, i32* %__d, align 4, !dbg !4668
  %div1 = udiv i32 %add, %7, !dbg !4668
  store i32 %div1, i32* %tmp, align 4, !dbg !4668
  %8 = load i32, i32* %tmp, align 4, !dbg !4668
  store i32 %8, i32* %divisor, align 4, !dbg !4670
  br label %sw.epilog, !dbg !4671

sw.bb2:                                           ; preds = %entry
  %9 = load i32*, i32** %nanosec.addr, align 8, !dbg !4672
  %10 = load i32, i32* %9, align 4, !dbg !4672
  %11 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4672
  %osc_base3 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %11, i32 0, i32 4, !dbg !4672
  %12 = load i32, i32* %osc_base3, align 8, !dbg !4672
  %add4 = add i32 %10, %12, !dbg !4672
  %sub = sub i32 %add4, 1, !dbg !4672
  %13 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4672
  %osc_base5 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %13, i32 0, i32 4, !dbg !4672
  %14 = load i32, i32* %osc_base5, align 8, !dbg !4672
  %div6 = udiv i32 %sub, %14, !dbg !4672
  store i32 %div6, i32* %divisor, align 4, !dbg !4673
  br label %sw.epilog, !dbg !4674

sw.bb7:                                           ; preds = %entry
  %15 = load i32*, i32** %nanosec.addr, align 8, !dbg !4675
  %16 = load i32, i32* %15, align 4, !dbg !4676
  %17 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4677
  %osc_base8 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %17, i32 0, i32 4, !dbg !4678
  %18 = load i32, i32* %osc_base8, align 8, !dbg !4678
  %div9 = udiv i32 %16, %18, !dbg !4679
  store i32 %div9, i32* %divisor, align 4, !dbg !4680
  br label %sw.epilog, !dbg !4681

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb2, %sw.bb
  %19 = load i32, i32* %divisor, align 4, !dbg !4682
  %cmp = icmp ult i32 %19, 2, !dbg !4684
  br i1 %cmp, label %if.then, label %if.end, !dbg !4685

if.then:                                          ; preds = %sw.epilog
  store i32 2, i32* %divisor, align 4, !dbg !4686
  br label %if.end, !dbg !4687

if.end:                                           ; preds = %if.then, %sw.epilog
  %20 = load i32, i32* %divisor, align 4, !dbg !4688
  %cmp10 = icmp ugt i32 %20, 65536, !dbg !4690
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !4691

if.then11:                                        ; preds = %if.end
  store i32 65536, i32* %divisor, align 4, !dbg !4692
  br label %if.end12, !dbg !4693

if.end12:                                         ; preds = %if.then11, %if.end
  %21 = load i32, i32* %divisor, align 4, !dbg !4694
  %22 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4695
  %osc_base13 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %22, i32 0, i32 4, !dbg !4696
  %23 = load i32, i32* %osc_base13, align 8, !dbg !4696
  %mul = mul i32 %21, %23, !dbg !4697
  %24 = load i32*, i32** %nanosec.addr, align 8, !dbg !4698
  store i32 %mul, i32* %24, align 4, !dbg !4699
  %25 = load i32, i32* %divisor, align 4, !dbg !4700
  %26 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4701
  %next_div = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %26, i32 0, i32 8, !dbg !4702
  store i32 %25, i32* %next_div, align 8, !dbg !4703
  ret void, !dbg !4704
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @comedi_8254_set_busy(%struct.comedi_8254* %i8254, i32 %counter, i1 zeroext %busy) #0 !dbg !4705 {
entry:
  %i8254.addr = alloca %struct.comedi_8254*, align 8
  %counter.addr = alloca i32, align 4
  %busy.addr = alloca i8, align 1
  store %struct.comedi_8254* %i8254, %struct.comedi_8254** %i8254.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_8254** %i8254.addr, metadata !4708, metadata !DIExpression()), !dbg !4709
  store i32 %counter, i32* %counter.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %counter.addr, metadata !4710, metadata !DIExpression()), !dbg !4711
  %frombool = zext i1 %busy to i8
  store i8 %frombool, i8* %busy.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %busy.addr, metadata !4712, metadata !DIExpression()), !dbg !4713
  %0 = load i32, i32* %counter.addr, align 4, !dbg !4714
  %cmp = icmp ult i32 %0, 3, !dbg !4716
  br i1 %cmp, label %if.then, label %if.end, !dbg !4717

if.then:                                          ; preds = %entry
  %1 = load i8, i8* %busy.addr, align 1, !dbg !4718
  %tobool = trunc i8 %1 to i1, !dbg !4718
  %2 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4719
  %busy1 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %2, i32 0, i32 13, !dbg !4720
  %3 = load i32, i32* %counter.addr, align 4, !dbg !4721
  %idxprom = zext i32 %3 to i64, !dbg !4719
  %arrayidx = getelementptr [3 x i8], [3 x i8]* %busy1, i64 0, i64 %idxprom, !dbg !4719
  %frombool2 = zext i1 %tobool to i8, !dbg !4722
  store i8 %frombool2, i8* %arrayidx, align 1, !dbg !4722
  br label %if.end, !dbg !4719

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4723
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @comedi_8254_subdevice_init(%struct.comedi_subdevice* %s, %struct.comedi_8254* %i8254) #0 !dbg !4724 {
entry:
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %i8254.addr = alloca %struct.comedi_8254*, align 8
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4727, metadata !DIExpression()), !dbg !4728
  store %struct.comedi_8254* %i8254, %struct.comedi_8254** %i8254.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_8254** %i8254.addr, metadata !4729, metadata !DIExpression()), !dbg !4730
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4731
  %type = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 2, !dbg !4732
  store i32 6, i32* %type, align 4, !dbg !4733
  %1 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4734
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %1, i32 0, i32 4, !dbg !4735
  store i32 196608, i32* %subdev_flags, align 4, !dbg !4736
  %2 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4737
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %2, i32 0, i32 3, !dbg !4738
  store i32 3, i32* %n_chan, align 8, !dbg !4739
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4740
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %3, i32 0, i32 13, !dbg !4741
  store i32 65535, i32* %maxdata, align 8, !dbg !4742
  %4 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4743
  %range_table = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %4, i32 0, i32 15, !dbg !4744
  store %struct.comedi_lrange* @range_unknown, %struct.comedi_lrange** %range_table, align 8, !dbg !4745
  %5 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4746
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %5, i32 0, i32 18, !dbg !4747
  %insn_read1 = bitcast {}** %insn_read to i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)**, !dbg !4747
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @comedi_8254_insn_read, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_read1, align 8, !dbg !4748
  %6 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4749
  %insn_write = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %6, i32 0, i32 19, !dbg !4750
  %insn_write2 = bitcast {}** %insn_write to i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)**, !dbg !4750
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @comedi_8254_insn_write, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_write2, align 8, !dbg !4751
  %7 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4752
  %insn_config = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %7, i32 0, i32 21, !dbg !4753
  %insn_config3 = bitcast {}** %insn_config to i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)**, !dbg !4753
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @comedi_8254_insn_config, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_config3, align 8, !dbg !4754
  %8 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254.addr, align 8, !dbg !4755
  %9 = bitcast %struct.comedi_8254* %8 to i8*, !dbg !4755
  %10 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4756
  %private = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %10, i32 0, i32 6, !dbg !4757
  store i8* %9, i8** %private, align 8, !dbg !4758
  ret void, !dbg !4759
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_8254_insn_read(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #0 !dbg !4760 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %i8254 = alloca %struct.comedi_8254*, align 8
  %chan = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4761, metadata !DIExpression()), !dbg !4762
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4763, metadata !DIExpression()), !dbg !4764
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !4765, metadata !DIExpression()), !dbg !4766
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !4767, metadata !DIExpression()), !dbg !4768
  call void @llvm.dbg.declare(metadata %struct.comedi_8254** %i8254, metadata !4769, metadata !DIExpression()), !dbg !4770
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4771
  %private = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 6, !dbg !4772
  %1 = load i8*, i8** %private, align 8, !dbg !4772
  %2 = bitcast i8* %1 to %struct.comedi_8254*, !dbg !4771
  store %struct.comedi_8254* %2, %struct.comedi_8254** %i8254, align 8, !dbg !4770
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !4773, metadata !DIExpression()), !dbg !4774
  %3 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4775
  %chanspec = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %3, i32 0, i32 4, !dbg !4775
  %4 = load i32, i32* %chanspec, align 4, !dbg !4775
  %and = and i32 %4, 65535, !dbg !4775
  store i32 %and, i32* %chan, align 4, !dbg !4774
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4776, metadata !DIExpression()), !dbg !4777
  %5 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254, align 8, !dbg !4778
  %busy = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %5, i32 0, i32 13, !dbg !4780
  %6 = load i32, i32* %chan, align 4, !dbg !4781
  %idxprom = zext i32 %6 to i64, !dbg !4778
  %arrayidx = getelementptr [3 x i8], [3 x i8]* %busy, i64 0, i64 %idxprom, !dbg !4778
  %7 = load i8, i8* %arrayidx, align 1, !dbg !4778
  %tobool = trunc i8 %7 to i1, !dbg !4778
  br i1 %tobool, label %if.then, label %if.end, !dbg !4782

if.then:                                          ; preds = %entry
  store i32 -16, i32* %retval, align 4, !dbg !4783
  br label %return, !dbg !4783

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !4784
  br label %for.cond, !dbg !4786

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4, !dbg !4787
  %9 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4789
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %9, i32 0, i32 1, !dbg !4790
  %10 = load i32, i32* %n, align 4, !dbg !4790
  %cmp = icmp ult i32 %8, %10, !dbg !4791
  br i1 %cmp, label %for.body, label %for.end, !dbg !4792

for.body:                                         ; preds = %for.cond
  %11 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254, align 8, !dbg !4793
  %12 = load i32, i32* %chan, align 4, !dbg !4794
  %call = call i32 @comedi_8254_read(%struct.comedi_8254* %11, i32 %12) #7, !dbg !4795
  %13 = load i32*, i32** %data.addr, align 8, !dbg !4796
  %14 = load i32, i32* %i, align 4, !dbg !4797
  %idxprom1 = sext i32 %14 to i64, !dbg !4796
  %arrayidx2 = getelementptr i32, i32* %13, i64 %idxprom1, !dbg !4796
  store i32 %call, i32* %arrayidx2, align 4, !dbg !4798
  br label %for.inc, !dbg !4796

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !dbg !4799
  %inc = add i32 %15, 1, !dbg !4799
  store i32 %inc, i32* %i, align 4, !dbg !4799
  br label %for.cond, !dbg !4800, !llvm.loop !4801

for.end:                                          ; preds = %for.cond
  %16 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4803
  %n3 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %16, i32 0, i32 1, !dbg !4804
  %17 = load i32, i32* %n3, align 4, !dbg !4804
  store i32 %17, i32* %retval, align 4, !dbg !4805
  br label %return, !dbg !4805

return:                                           ; preds = %for.end, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !4806
  ret i32 %18, !dbg !4806
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_8254_insn_write(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #0 !dbg !4807 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %i8254 = alloca %struct.comedi_8254*, align 8
  %chan = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4808, metadata !DIExpression()), !dbg !4809
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4810, metadata !DIExpression()), !dbg !4811
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !4812, metadata !DIExpression()), !dbg !4813
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !4814, metadata !DIExpression()), !dbg !4815
  call void @llvm.dbg.declare(metadata %struct.comedi_8254** %i8254, metadata !4816, metadata !DIExpression()), !dbg !4817
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4818
  %private = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 6, !dbg !4819
  %1 = load i8*, i8** %private, align 8, !dbg !4819
  %2 = bitcast i8* %1 to %struct.comedi_8254*, !dbg !4818
  store %struct.comedi_8254* %2, %struct.comedi_8254** %i8254, align 8, !dbg !4817
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !4820, metadata !DIExpression()), !dbg !4821
  %3 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4822
  %chanspec = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %3, i32 0, i32 4, !dbg !4822
  %4 = load i32, i32* %chanspec, align 4, !dbg !4822
  %and = and i32 %4, 65535, !dbg !4822
  store i32 %and, i32* %chan, align 4, !dbg !4821
  %5 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254, align 8, !dbg !4823
  %busy = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %5, i32 0, i32 13, !dbg !4825
  %6 = load i32, i32* %chan, align 4, !dbg !4826
  %idxprom = zext i32 %6 to i64, !dbg !4823
  %arrayidx = getelementptr [3 x i8], [3 x i8]* %busy, i64 0, i64 %idxprom, !dbg !4823
  %7 = load i8, i8* %arrayidx, align 1, !dbg !4823
  %tobool = trunc i8 %7 to i1, !dbg !4823
  br i1 %tobool, label %if.then, label %if.end, !dbg !4827

if.then:                                          ; preds = %entry
  store i32 -16, i32* %retval, align 4, !dbg !4828
  br label %return, !dbg !4828

if.end:                                           ; preds = %entry
  %8 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4829
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %8, i32 0, i32 1, !dbg !4831
  %9 = load i32, i32* %n, align 4, !dbg !4831
  %tobool1 = icmp ne i32 %9, 0, !dbg !4829
  br i1 %tobool1, label %if.then2, label %if.end6, !dbg !4832

if.then2:                                         ; preds = %if.end
  %10 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254, align 8, !dbg !4833
  %11 = load i32, i32* %chan, align 4, !dbg !4834
  %12 = load i32*, i32** %data.addr, align 8, !dbg !4835
  %13 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4836
  %n3 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %13, i32 0, i32 1, !dbg !4837
  %14 = load i32, i32* %n3, align 4, !dbg !4837
  %sub = sub i32 %14, 1, !dbg !4838
  %idxprom4 = zext i32 %sub to i64, !dbg !4835
  %arrayidx5 = getelementptr i32, i32* %12, i64 %idxprom4, !dbg !4835
  %15 = load i32, i32* %arrayidx5, align 4, !dbg !4835
  call void @comedi_8254_write(%struct.comedi_8254* %10, i32 %11, i32 %15) #7, !dbg !4839
  br label %if.end6, !dbg !4839

if.end6:                                          ; preds = %if.then2, %if.end
  %16 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4840
  %n7 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %16, i32 0, i32 1, !dbg !4841
  %17 = load i32, i32* %n7, align 4, !dbg !4841
  store i32 %17, i32* %retval, align 4, !dbg !4842
  br label %return, !dbg !4842

return:                                           ; preds = %if.end6, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !4843
  ret i32 %18, !dbg !4843
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_8254_insn_config(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #0 !dbg !4844 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %i8254 = alloca %struct.comedi_8254*, align 8
  %chan = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4845, metadata !DIExpression()), !dbg !4846
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4847, metadata !DIExpression()), !dbg !4848
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !4849, metadata !DIExpression()), !dbg !4850
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !4851, metadata !DIExpression()), !dbg !4852
  call void @llvm.dbg.declare(metadata %struct.comedi_8254** %i8254, metadata !4853, metadata !DIExpression()), !dbg !4854
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4855
  %private = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 6, !dbg !4856
  %1 = load i8*, i8** %private, align 8, !dbg !4856
  %2 = bitcast i8* %1 to %struct.comedi_8254*, !dbg !4855
  store %struct.comedi_8254* %2, %struct.comedi_8254** %i8254, align 8, !dbg !4854
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !4857, metadata !DIExpression()), !dbg !4858
  %3 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4859
  %chanspec = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %3, i32 0, i32 4, !dbg !4859
  %4 = load i32, i32* %chanspec, align 4, !dbg !4859
  %and = and i32 %4, 65535, !dbg !4859
  store i32 %and, i32* %chan, align 4, !dbg !4858
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4860, metadata !DIExpression()), !dbg !4861
  %5 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254, align 8, !dbg !4862
  %busy = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %5, i32 0, i32 13, !dbg !4864
  %6 = load i32, i32* %chan, align 4, !dbg !4865
  %idxprom = zext i32 %6 to i64, !dbg !4862
  %arrayidx = getelementptr [3 x i8], [3 x i8]* %busy, i64 0, i64 %idxprom, !dbg !4862
  %7 = load i8, i8* %arrayidx, align 1, !dbg !4862
  %tobool = trunc i8 %7 to i1, !dbg !4862
  br i1 %tobool, label %if.then, label %if.end, !dbg !4866

if.then:                                          ; preds = %entry
  store i32 -16, i32* %retval, align 4, !dbg !4867
  br label %return, !dbg !4867

if.end:                                           ; preds = %entry
  %8 = load i32*, i32** %data.addr, align 8, !dbg !4868
  %arrayidx1 = getelementptr i32, i32* %8, i64 0, !dbg !4868
  %9 = load i32, i32* %arrayidx1, align 4, !dbg !4868
  switch i32 %9, label %sw.default [
    i32 34, label %sw.bb
    i32 4097, label %sw.bb5
    i32 4098, label %sw.bb11
  ], !dbg !4869

sw.bb:                                            ; preds = %if.end
  %10 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254, align 8, !dbg !4870
  %11 = load i32, i32* %chan, align 4, !dbg !4872
  %call = call i32 @comedi_8254_set_mode(%struct.comedi_8254* %10, i32 %11, i32 0) #7, !dbg !4873
  store i32 %call, i32* %ret, align 4, !dbg !4874
  %12 = load i32, i32* %ret, align 4, !dbg !4875
  %tobool2 = icmp ne i32 %12, 0, !dbg !4875
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !4877

if.then3:                                         ; preds = %sw.bb
  %13 = load i32, i32* %ret, align 4, !dbg !4878
  store i32 %13, i32* %retval, align 4, !dbg !4879
  br label %return, !dbg !4879

if.end4:                                          ; preds = %sw.bb
  br label %sw.epilog, !dbg !4880

sw.bb5:                                           ; preds = %if.end
  %14 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254, align 8, !dbg !4881
  %15 = load i32, i32* %chan, align 4, !dbg !4882
  %16 = load i32*, i32** %data.addr, align 8, !dbg !4883
  %arrayidx6 = getelementptr i32, i32* %16, i64 1, !dbg !4883
  %17 = load i32, i32* %arrayidx6, align 4, !dbg !4883
  %call7 = call i32 @comedi_8254_set_mode(%struct.comedi_8254* %14, i32 %15, i32 %17) #7, !dbg !4884
  store i32 %call7, i32* %ret, align 4, !dbg !4885
  %18 = load i32, i32* %ret, align 4, !dbg !4886
  %tobool8 = icmp ne i32 %18, 0, !dbg !4886
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !4888

if.then9:                                         ; preds = %sw.bb5
  %19 = load i32, i32* %ret, align 4, !dbg !4889
  store i32 %19, i32* %retval, align 4, !dbg !4890
  br label %return, !dbg !4890

if.end10:                                         ; preds = %sw.bb5
  br label %sw.epilog, !dbg !4891

sw.bb11:                                          ; preds = %if.end
  %20 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254, align 8, !dbg !4892
  %21 = load i32, i32* %chan, align 4, !dbg !4893
  %call12 = call i32 @comedi_8254_status(%struct.comedi_8254* %20, i32 %21) #7, !dbg !4894
  %22 = load i32*, i32** %data.addr, align 8, !dbg !4895
  %arrayidx13 = getelementptr i32, i32* %22, i64 1, !dbg !4895
  store i32 %call12, i32* %arrayidx13, align 4, !dbg !4896
  br label %sw.epilog, !dbg !4897

sw.default:                                       ; preds = %if.end
  %23 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254, align 8, !dbg !4898
  %insn_config = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %23, i32 0, i32 14, !dbg !4900
  %24 = load i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_config, align 8, !dbg !4900
  %tobool14 = icmp ne i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* %24, null, !dbg !4898
  br i1 %tobool14, label %if.then15, label %if.end18, !dbg !4901

if.then15:                                        ; preds = %sw.default
  %25 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254, align 8, !dbg !4902
  %insn_config16 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %25, i32 0, i32 14, !dbg !4903
  %26 = load i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_config16, align 8, !dbg !4903
  %27 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4904
  %28 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4905
  %29 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4906
  %30 = load i32*, i32** %data.addr, align 8, !dbg !4907
  %call17 = call i32 %26(%struct.comedi_device* %27, %struct.comedi_subdevice* %28, %struct.comedi_insn* %29, i32* %30) #7, !dbg !4902
  store i32 %call17, i32* %retval, align 4, !dbg !4908
  br label %return, !dbg !4908

if.end18:                                         ; preds = %sw.default
  store i32 -22, i32* %retval, align 4, !dbg !4909
  br label %return, !dbg !4909

sw.epilog:                                        ; preds = %sw.bb11, %if.end10, %if.end4
  %31 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4910
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %31, i32 0, i32 1, !dbg !4911
  %32 = load i32, i32* %n, align 4, !dbg !4911
  store i32 %32, i32* %retval, align 4, !dbg !4912
  br label %return, !dbg !4912

return:                                           ; preds = %sw.epilog, %if.end18, %if.then15, %if.then9, %if.then3, %if.then
  %33 = load i32, i32* %retval, align 4, !dbg !4913
  ret i32 %33, !dbg !4913
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.comedi_8254* @comedi_8254_init(i64 %iobase, i32 %osc_base, i32 %iosize, i32 %regshift) #0 !dbg !4914 {
entry:
  %iobase.addr = alloca i64, align 8
  %osc_base.addr = alloca i32, align 4
  %iosize.addr = alloca i32, align 4
  %regshift.addr = alloca i32, align 4
  store i64 %iobase, i64* %iobase.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %iobase.addr, metadata !4917, metadata !DIExpression()), !dbg !4918
  store i32 %osc_base, i32* %osc_base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %osc_base.addr, metadata !4919, metadata !DIExpression()), !dbg !4920
  store i32 %iosize, i32* %iosize.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %iosize.addr, metadata !4921, metadata !DIExpression()), !dbg !4922
  store i32 %regshift, i32* %regshift.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %regshift.addr, metadata !4923, metadata !DIExpression()), !dbg !4924
  %0 = load i64, i64* %iobase.addr, align 8, !dbg !4925
  %1 = load i32, i32* %osc_base.addr, align 4, !dbg !4926
  %2 = load i32, i32* %iosize.addr, align 4, !dbg !4927
  %3 = load i32, i32* %regshift.addr, align 4, !dbg !4928
  %call = call %struct.comedi_8254* @__i8254_init(i64 %0, i8* null, i32 %1, i32 %2, i32 %3) #7, !dbg !4929
  ret %struct.comedi_8254* %call, !dbg !4930
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.comedi_8254* @__i8254_init(i64 %iobase, i8* %mmio, i32 %osc_base, i32 %iosize, i32 %regshift) #0 !dbg !4931 {
entry:
  %retval = alloca %struct.comedi_8254*, align 8
  %iobase.addr = alloca i64, align 8
  %mmio.addr = alloca i8*, align 8
  %osc_base.addr = alloca i32, align 4
  %iosize.addr = alloca i32, align 4
  %regshift.addr = alloca i32, align 4
  %i8254 = alloca %struct.comedi_8254*, align 8
  %i = alloca i32, align 4
  store i64 %iobase, i64* %iobase.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %iobase.addr, metadata !4934, metadata !DIExpression()), !dbg !4935
  store i8* %mmio, i8** %mmio.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %mmio.addr, metadata !4936, metadata !DIExpression()), !dbg !4937
  store i32 %osc_base, i32* %osc_base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %osc_base.addr, metadata !4938, metadata !DIExpression()), !dbg !4939
  store i32 %iosize, i32* %iosize.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %iosize.addr, metadata !4940, metadata !DIExpression()), !dbg !4941
  store i32 %regshift, i32* %regshift.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %regshift.addr, metadata !4942, metadata !DIExpression()), !dbg !4943
  call void @llvm.dbg.declare(metadata %struct.comedi_8254** %i8254, metadata !4944, metadata !DIExpression()), !dbg !4945
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4946, metadata !DIExpression()), !dbg !4947
  %0 = load i32, i32* %iosize.addr, align 4, !dbg !4948
  %cmp = icmp eq i32 %0, 1, !dbg !4950
  br i1 %cmp, label %if.end, label %lor.lhs.false, !dbg !4951

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %iosize.addr, align 4, !dbg !4952
  %cmp1 = icmp eq i32 %1, 2, !dbg !4953
  br i1 %cmp1, label %if.end, label %lor.lhs.false2, !dbg !4954

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i32, i32* %iosize.addr, align 4, !dbg !4955
  %cmp3 = icmp eq i32 %2, 4, !dbg !4956
  br i1 %cmp3, label %if.end, label %if.then, !dbg !4957

if.then:                                          ; preds = %lor.lhs.false2
  store %struct.comedi_8254* null, %struct.comedi_8254** %retval, align 8, !dbg !4958
  br label %return, !dbg !4958

if.end:                                           ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  %call = call i8* @kzalloc(i64 88, i32 3264) #7, !dbg !4959
  %3 = bitcast i8* %call to %struct.comedi_8254*, !dbg !4959
  store %struct.comedi_8254* %3, %struct.comedi_8254** %i8254, align 8, !dbg !4960
  %4 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254, align 8, !dbg !4961
  %tobool = icmp ne %struct.comedi_8254* %4, null, !dbg !4961
  br i1 %tobool, label %if.end5, label %if.then4, !dbg !4963

if.then4:                                         ; preds = %if.end
  store %struct.comedi_8254* null, %struct.comedi_8254** %retval, align 8, !dbg !4964
  br label %return, !dbg !4964

if.end5:                                          ; preds = %if.end
  %5 = load i64, i64* %iobase.addr, align 8, !dbg !4965
  %6 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254, align 8, !dbg !4966
  %iobase6 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %6, i32 0, i32 0, !dbg !4967
  store i64 %5, i64* %iobase6, align 8, !dbg !4968
  %7 = load i8*, i8** %mmio.addr, align 8, !dbg !4969
  %8 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254, align 8, !dbg !4970
  %mmio7 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %8, i32 0, i32 1, !dbg !4971
  store i8* %7, i8** %mmio7, align 8, !dbg !4972
  %9 = load i32, i32* %iosize.addr, align 4, !dbg !4973
  %10 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254, align 8, !dbg !4974
  %iosize8 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %10, i32 0, i32 2, !dbg !4975
  store i32 %9, i32* %iosize8, align 8, !dbg !4976
  %11 = load i32, i32* %regshift.addr, align 4, !dbg !4977
  %12 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254, align 8, !dbg !4978
  %regshift9 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %12, i32 0, i32 3, !dbg !4979
  store i32 %11, i32* %regshift9, align 4, !dbg !4980
  %13 = load i32, i32* %osc_base.addr, align 4, !dbg !4981
  %tobool10 = icmp ne i32 %13, 0, !dbg !4981
  br i1 %tobool10, label %cond.true, label %cond.false, !dbg !4981

cond.true:                                        ; preds = %if.end5
  %14 = load i32, i32* %osc_base.addr, align 4, !dbg !4982
  br label %cond.end, !dbg !4981

cond.false:                                       ; preds = %if.end5
  br label %cond.end, !dbg !4981

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %14, %cond.true ], [ 100, %cond.false ], !dbg !4981
  %15 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254, align 8, !dbg !4983
  %osc_base11 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %15, i32 0, i32 4, !dbg !4984
  store i32 %cond, i32* %osc_base11, align 8, !dbg !4985
  store i32 0, i32* %i, align 4, !dbg !4986
  br label %for.cond, !dbg !4988

for.cond:                                         ; preds = %for.inc, %cond.end
  %16 = load i32, i32* %i, align 4, !dbg !4989
  %cmp12 = icmp slt i32 %16, 3, !dbg !4991
  br i1 %cmp12, label %for.body, label %for.end, !dbg !4992

for.body:                                         ; preds = %for.cond
  %17 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254, align 8, !dbg !4993
  %18 = load i32, i32* %i, align 4, !dbg !4994
  %call13 = call i32 @comedi_8254_set_mode(%struct.comedi_8254* %17, i32 %18, i32 0) #7, !dbg !4995
  br label %for.inc, !dbg !4995

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4, !dbg !4996
  %inc = add i32 %19, 1, !dbg !4996
  store i32 %inc, i32* %i, align 4, !dbg !4996
  br label %for.cond, !dbg !4997, !llvm.loop !4998

for.end:                                          ; preds = %for.cond
  %20 = load %struct.comedi_8254*, %struct.comedi_8254** %i8254, align 8, !dbg !5000
  store %struct.comedi_8254* %20, %struct.comedi_8254** %retval, align 8, !dbg !5001
  br label %return, !dbg !5001

return:                                           ; preds = %for.end, %if.then4, %if.then
  %21 = load %struct.comedi_8254*, %struct.comedi_8254** %retval, align 8, !dbg !5002
  ret %struct.comedi_8254* %21, !dbg !5002
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.comedi_8254* @comedi_8254_mm_init(i8* %mmio, i32 %osc_base, i32 %iosize, i32 %regshift) #0 !dbg !5003 {
entry:
  %mmio.addr = alloca i8*, align 8
  %osc_base.addr = alloca i32, align 4
  %iosize.addr = alloca i32, align 4
  %regshift.addr = alloca i32, align 4
  store i8* %mmio, i8** %mmio.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %mmio.addr, metadata !5006, metadata !DIExpression()), !dbg !5007
  store i32 %osc_base, i32* %osc_base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %osc_base.addr, metadata !5008, metadata !DIExpression()), !dbg !5009
  store i32 %iosize, i32* %iosize.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %iosize.addr, metadata !5010, metadata !DIExpression()), !dbg !5011
  store i32 %regshift, i32* %regshift.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %regshift.addr, metadata !5012, metadata !DIExpression()), !dbg !5013
  %0 = load i8*, i8** %mmio.addr, align 8, !dbg !5014
  %1 = load i32, i32* %osc_base.addr, align 4, !dbg !5015
  %2 = load i32, i32* %iosize.addr, align 4, !dbg !5016
  %3 = load i32, i32* %regshift.addr, align 4, !dbg !5017
  %call = call %struct.comedi_8254* @__i8254_init(i64 0, i8* %0, i32 %1, i32 %2, i32 %3) #7, !dbg !5018
  ret %struct.comedi_8254* %call, !dbg !5019
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_8254_module_init() #2 section ".init.text" !dbg !5020 {
entry:
  ret i32 0, !dbg !5023
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @comedi_8254_module_exit() #2 section ".exit.text" !dbg !5024 {
entry:
  ret void, !dbg !5025
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writeb(i8 zeroext %val, i8* %addr) #0 !dbg !5026 {
entry:
  %val.addr = alloca i8, align 1
  %addr.addr = alloca i8*, align 8
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !5032, metadata !DIExpression()), !dbg !5033
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5034, metadata !DIExpression()), !dbg !5033
  %0 = load i8, i8* %val.addr, align 1, !dbg !5033
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !5033
  call void asm sideeffect "movb $0,$1", "q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 %0, i8* %1) #8, !dbg !5033, !srcloc !5035
  ret void, !dbg !5033
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outb(i8 zeroext %value, i32 %port) #0 !dbg !5036 {
entry:
  %value.addr = alloca i8, align 1
  %port.addr = alloca i32, align 4
  store i8 %value, i8* %value.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %value.addr, metadata !5039, metadata !DIExpression()), !dbg !5040
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5041, metadata !DIExpression()), !dbg !5040
  %0 = load i8, i8* %value.addr, align 1, !dbg !5040
  %1 = load i32, i32* %port.addr, align 4, !dbg !5040
  call void asm sideeffect "outb ${0:b}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i8 %0, i32 %1) #8, !dbg !5040, !srcloc !5042
  ret void, !dbg !5040
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writew(i16 zeroext %val, i8* %addr) #0 !dbg !5043 {
entry:
  %val.addr = alloca i16, align 2
  %addr.addr = alloca i8*, align 8
  store i16 %val, i16* %val.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %val.addr, metadata !5046, metadata !DIExpression()), !dbg !5047
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5048, metadata !DIExpression()), !dbg !5047
  %0 = load i16, i16* %val.addr, align 2, !dbg !5047
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !5047
  %2 = bitcast i8* %1 to i16*, !dbg !5047
  call void asm sideeffect "movw $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i16 %0, i16* %2) #8, !dbg !5047, !srcloc !5049
  ret void, !dbg !5047
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outw(i16 zeroext %value, i32 %port) #0 !dbg !5050 {
entry:
  %value.addr = alloca i16, align 2
  %port.addr = alloca i32, align 4
  store i16 %value, i16* %value.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %value.addr, metadata !5053, metadata !DIExpression()), !dbg !5054
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5055, metadata !DIExpression()), !dbg !5054
  %0 = load i16, i16* %value.addr, align 2, !dbg !5054
  %1 = load i32, i32* %port.addr, align 4, !dbg !5054
  call void asm sideeffect "outw ${0:w}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %1) #8, !dbg !5054, !srcloc !5056
  ret void, !dbg !5054
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writel(i32 %val, i8* %addr) #0 !dbg !5057 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5060, metadata !DIExpression()), !dbg !5061
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5062, metadata !DIExpression()), !dbg !5061
  %0 = load i32, i32* %val.addr, align 4, !dbg !5061
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !5061
  %2 = bitcast i8* %1 to i32*, !dbg !5061
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #8, !dbg !5061, !srcloc !5063
  ret void, !dbg !5061
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outl(i32 %value, i32 %port) #0 !dbg !5064 {
entry:
  %value.addr = alloca i32, align 4
  %port.addr = alloca i32, align 4
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !5067, metadata !DIExpression()), !dbg !5068
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5069, metadata !DIExpression()), !dbg !5068
  %0 = load i32, i32* %value.addr, align 4, !dbg !5068
  %1 = load i32, i32* %port.addr, align 4, !dbg !5068
  call void asm sideeffect "outl $0, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 %1) #8, !dbg !5068, !srcloc !5070
  ret void, !dbg !5068
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @readb(i8* %addr) #0 !dbg !5071 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i8, align 1
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5076, metadata !DIExpression()), !dbg !5077
  call void @llvm.dbg.declare(metadata i8* %ret, metadata !5078, metadata !DIExpression()), !dbg !5077
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !5077
  %1 = call i8 asm sideeffect "movb $1,$0", "=q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %0) #8, !dbg !5077, !srcloc !5079
  store i8 %1, i8* %ret, align 1, !dbg !5077
  %2 = load i8, i8* %ret, align 1, !dbg !5077
  ret i8 %2, !dbg !5077
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @inb(i32 %port) #0 !dbg !5080 {
entry:
  %port.addr = alloca i32, align 4
  %value = alloca i8, align 1
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5083, metadata !DIExpression()), !dbg !5084
  call void @llvm.dbg.declare(metadata i8* %value, metadata !5085, metadata !DIExpression()), !dbg !5084
  %0 = load i32, i32* %port.addr, align 4, !dbg !5084
  %1 = call i8 asm sideeffect "inb ${1:w}, ${0:b}", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #8, !dbg !5084, !srcloc !5086
  store i8 %1, i8* %value, align 1, !dbg !5084
  %2 = load i8, i8* %value, align 1, !dbg !5084
  ret i8 %2, !dbg !5084
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i16 @readw(i8* %addr) #0 !dbg !5087 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i16, align 2
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5090, metadata !DIExpression()), !dbg !5091
  call void @llvm.dbg.declare(metadata i16* %ret, metadata !5092, metadata !DIExpression()), !dbg !5091
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !5091
  %1 = bitcast i8* %0 to i16*, !dbg !5091
  %2 = call i16 asm sideeffect "movw $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i16* %1) #8, !dbg !5091, !srcloc !5093
  store i16 %2, i16* %ret, align 2, !dbg !5091
  %3 = load i16, i16* %ret, align 2, !dbg !5091
  ret i16 %3, !dbg !5091
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i16 @inw(i32 %port) #0 !dbg !5094 {
entry:
  %port.addr = alloca i32, align 4
  %value = alloca i16, align 2
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5097, metadata !DIExpression()), !dbg !5098
  call void @llvm.dbg.declare(metadata i16* %value, metadata !5099, metadata !DIExpression()), !dbg !5098
  %0 = load i32, i32* %port.addr, align 4, !dbg !5098
  %1 = call i16 asm sideeffect "inw ${1:w}, ${0:w}", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #8, !dbg !5098, !srcloc !5100
  store i16 %1, i16* %value, align 2, !dbg !5098
  %2 = load i16, i16* %value, align 2, !dbg !5098
  ret i16 %2, !dbg !5098
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @readl(i8* %addr) #0 !dbg !5101 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5104, metadata !DIExpression()), !dbg !5105
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5106, metadata !DIExpression()), !dbg !5105
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !5105
  %1 = bitcast i8* %0 to i32*, !dbg !5105
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %1) #8, !dbg !5105, !srcloc !5107
  store i32 %2, i32* %ret, align 4, !dbg !5105
  %3 = load i32, i32* %ret, align 4, !dbg !5105
  ret i32 %3, !dbg !5105
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @inl(i32 %port) #0 !dbg !5108 {
entry:
  %port.addr = alloca i32, align 4
  %value = alloca i32, align 4
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5111, metadata !DIExpression()), !dbg !5112
  call void @llvm.dbg.declare(metadata i32* %value, metadata !5113, metadata !DIExpression()), !dbg !5112
  %0 = load i32, i32* %port.addr, align 4, !dbg !5112
  %1 = call i32 asm sideeffect "inl ${1:w}, $0", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #8, !dbg !5112, !srcloc !5114
  store i32 %1, i32* %value, align 4, !dbg !5112
  %2 = load i32, i32* %value, align 4, !dbg !5112
  ret i32 %2, !dbg !5112
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !5115 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !5118, metadata !DIExpression()), !dbg !5122
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !5128, metadata !DIExpression()), !dbg !5129
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !5130, metadata !DIExpression()), !dbg !5131
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !5132, metadata !DIExpression()), !dbg !5133
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !5134, metadata !DIExpression()), !dbg !5138
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !5140, metadata !DIExpression()), !dbg !5144
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !5146, metadata !DIExpression()), !dbg !5150
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !5155, metadata !DIExpression()), !dbg !5156
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !5157, metadata !DIExpression()), !dbg !5158
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5159, metadata !DIExpression()), !dbg !5160
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !5161, metadata !DIExpression()), !dbg !5162
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !5163, metadata !DIExpression()), !dbg !5164
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5165, metadata !DIExpression()), !dbg !5166
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !5167, metadata !DIExpression()), !dbg !5168
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !5169, metadata !DIExpression()), !dbg !5170
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5171, metadata !DIExpression()), !dbg !5172
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5173, metadata !DIExpression()), !dbg !5174
  %0 = load i64, i64* %size.addr, align 8, !dbg !5175
  %1 = load i32, i32* %flags.addr, align 4, !dbg !5176
  %or = or i32 %1, 256, !dbg !5177
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !5178
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #8, !dbg !5179
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !5180

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5181
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !5182
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5183

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !5184
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !5185
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5186
  %call.i.i = call i32 @get_order(i64 %7) #9, !dbg !5187
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5164
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !5188
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5189
  %10 = load i32, i32* %order.i.i, align 4, !dbg !5190
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5191
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5192
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5193
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #10, !dbg !5194
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5194
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5194
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5194
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !5194
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5195
  br label %kmalloc.exit, !dbg !5195

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !5196
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5197
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !5197
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5199

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5200
  br label %kmalloc_index.exit.i, !dbg !5200

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5201
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !5203
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5204

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5205
  br label %kmalloc_index.exit.i, !dbg !5205

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5206
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !5208
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5209

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5210
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !5211
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5212

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5213
  br label %kmalloc_index.exit.i, !dbg !5213

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5214
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !5216
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5217

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5218
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !5219
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5220

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5221
  br label %kmalloc_index.exit.i, !dbg !5221

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5222
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !5224
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5225

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5226
  br label %kmalloc_index.exit.i, !dbg !5226

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5227
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !5229
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5230

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5231
  br label %kmalloc_index.exit.i, !dbg !5231

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5232
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !5234
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5235

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5236
  br label %kmalloc_index.exit.i, !dbg !5236

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5237
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !5239
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5240

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5241
  br label %kmalloc_index.exit.i, !dbg !5241

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5242
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !5244
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5245

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5246
  br label %kmalloc_index.exit.i, !dbg !5246

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5247
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !5249
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5250

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5251
  br label %kmalloc_index.exit.i, !dbg !5251

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5252
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !5254
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5255

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5256
  br label %kmalloc_index.exit.i, !dbg !5256

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5257
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !5259
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5260

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5261
  br label %kmalloc_index.exit.i, !dbg !5261

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5262
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !5264
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5265

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5266
  br label %kmalloc_index.exit.i, !dbg !5266

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5267
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !5269
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5270

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5271
  br label %kmalloc_index.exit.i, !dbg !5271

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5272
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !5274
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5275

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5276
  br label %kmalloc_index.exit.i, !dbg !5276

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5277
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !5279
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5280

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5281
  br label %kmalloc_index.exit.i, !dbg !5281

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5282
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !5284
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5285

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5286
  br label %kmalloc_index.exit.i, !dbg !5286

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5287
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !5289
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5290

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5291
  br label %kmalloc_index.exit.i, !dbg !5291

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5292
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !5294
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5295

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5296
  br label %kmalloc_index.exit.i, !dbg !5296

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5297
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !5299
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5300

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5301
  br label %kmalloc_index.exit.i, !dbg !5301

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5302
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !5304
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5305

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5306
  br label %kmalloc_index.exit.i, !dbg !5306

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5307
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !5309
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5310

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5311
  br label %kmalloc_index.exit.i, !dbg !5311

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5312
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !5314
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5315

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5316
  br label %kmalloc_index.exit.i, !dbg !5316

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5317
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !5319
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5320

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5321
  br label %kmalloc_index.exit.i, !dbg !5321

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5322
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !5324
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5325

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5326
  br label %kmalloc_index.exit.i, !dbg !5326

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5327
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !5329
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5330

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5331
  br label %kmalloc_index.exit.i, !dbg !5331

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5332
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !5334
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5335

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5336
  br label %kmalloc_index.exit.i, !dbg !5336

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5337
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !5339
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5340

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5341
  br label %kmalloc_index.exit.i, !dbg !5341

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !5342, !srcloc !5345
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #8, !dbg !5346, !srcloc !5349
  unreachable, !dbg !5350

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !5351
  store i32 %45, i32* %index.i, align 4, !dbg !5352
  %46 = load i32, i32* %index.i, align 4, !dbg !5353
  %tobool.i = icmp ne i32 %46, 0, !dbg !5353
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5355

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5356
  br label %kmalloc.exit, !dbg !5356

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !5357
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5358
  %and.i.i = and i32 %48, 17, !dbg !5358
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5358
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5358
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5358
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5358
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5360

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5361
  br label %kmalloc_type.exit.i, !dbg !5361

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5362
  %and2.i.i = and i32 %49, 1, !dbg !5363
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5362
  %50 = zext i1 %tobool3.i.i to i64, !dbg !5362
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5362
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5364
  br label %kmalloc_type.exit.i, !dbg !5364

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !5365
  %idxprom.i = zext i32 %51 to i64, !dbg !5366
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5366
  %52 = load i32, i32* %index.i, align 4, !dbg !5367
  %idxprom6.i = zext i32 %52 to i64, !dbg !5366
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5366
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5366
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !5368
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !5369
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5370
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5371
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #10, !dbg !5372
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5372
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5372
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5372
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !5372
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5133
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5373
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !5374
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5375
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5376
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #10, !dbg !5377
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5378
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !5379
  store i8* %62, i8** %retval.i, align 8, !dbg !5380
  br label %kmalloc.exit, !dbg !5380

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !5381
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !5382
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #10, !dbg !5383
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5383
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5383
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5383
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !5383
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5384
  br label %kmalloc.exit, !dbg !5384

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !5385
  ret i8* %65, !dbg !5386
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #4

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !5387 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5391, metadata !DIExpression()), !dbg !5396
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5398, metadata !DIExpression()), !dbg !5399
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5400, metadata !DIExpression()), !dbg !5401
  %0 = load i64, i64* %size.addr, align 8, !dbg !5402
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5404
  br i1 %1, label %if.then, label %if.end447, !dbg !5405

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5406
  %tobool = icmp ne i64 %2, 0, !dbg !5406
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5409

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5410
  br label %return, !dbg !5410

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5411
  %cmp = icmp ult i64 %3, 4096, !dbg !5413
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5414

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5415
  br label %return, !dbg !5415

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub = sub i64 %4, 1, !dbg !5416
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5416
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5416

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub4 = sub i64 %6, 1, !dbg !5416
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5416
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5416

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub6 = sub i64 %8, 1, !dbg !5416
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5416
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5416

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5416

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub9 = sub i64 %9, 1, !dbg !5416
  %and = and i64 %sub9, -9223372036854775808, !dbg !5416
  %tobool10 = icmp ne i64 %and, 0, !dbg !5416
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5416

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5416

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub13 = sub i64 %10, 1, !dbg !5416
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5416
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5416
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5416

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5416

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub18 = sub i64 %11, 1, !dbg !5416
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5416
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5416
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5416

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5416

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub23 = sub i64 %12, 1, !dbg !5416
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5416
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5416
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5416

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5416

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub28 = sub i64 %13, 1, !dbg !5416
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5416
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5416
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5416

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5416

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub33 = sub i64 %14, 1, !dbg !5416
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5416
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5416
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5416

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5416

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub38 = sub i64 %15, 1, !dbg !5416
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5416
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5416
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5416

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5416

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub43 = sub i64 %16, 1, !dbg !5416
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5416
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5416
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5416

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5416

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub48 = sub i64 %17, 1, !dbg !5416
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5416
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5416
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5416

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5416

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub53 = sub i64 %18, 1, !dbg !5416
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5416
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5416
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5416

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5416

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub58 = sub i64 %19, 1, !dbg !5416
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5416
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5416
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5416

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5416

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub63 = sub i64 %20, 1, !dbg !5416
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5416
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5416
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5416

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5416

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub68 = sub i64 %21, 1, !dbg !5416
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5416
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5416
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5416

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5416

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub73 = sub i64 %22, 1, !dbg !5416
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5416
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5416
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5416

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5416

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub78 = sub i64 %23, 1, !dbg !5416
  %and79 = and i64 %sub78, 562949953421312, !dbg !5416
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5416
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5416

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5416

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub83 = sub i64 %24, 1, !dbg !5416
  %and84 = and i64 %sub83, 281474976710656, !dbg !5416
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5416
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5416

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5416

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub88 = sub i64 %25, 1, !dbg !5416
  %and89 = and i64 %sub88, 140737488355328, !dbg !5416
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5416
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5416

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5416

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub93 = sub i64 %26, 1, !dbg !5416
  %and94 = and i64 %sub93, 70368744177664, !dbg !5416
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5416
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5416

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5416

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub98 = sub i64 %27, 1, !dbg !5416
  %and99 = and i64 %sub98, 35184372088832, !dbg !5416
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5416
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5416

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5416

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub103 = sub i64 %28, 1, !dbg !5416
  %and104 = and i64 %sub103, 17592186044416, !dbg !5416
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5416
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5416

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5416

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub108 = sub i64 %29, 1, !dbg !5416
  %and109 = and i64 %sub108, 8796093022208, !dbg !5416
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5416
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5416

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5416

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub113 = sub i64 %30, 1, !dbg !5416
  %and114 = and i64 %sub113, 4398046511104, !dbg !5416
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5416
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5416

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5416

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub118 = sub i64 %31, 1, !dbg !5416
  %and119 = and i64 %sub118, 2199023255552, !dbg !5416
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5416
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5416

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5416

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub123 = sub i64 %32, 1, !dbg !5416
  %and124 = and i64 %sub123, 1099511627776, !dbg !5416
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5416
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5416

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5416

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub128 = sub i64 %33, 1, !dbg !5416
  %and129 = and i64 %sub128, 549755813888, !dbg !5416
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5416
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5416

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5416

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub133 = sub i64 %34, 1, !dbg !5416
  %and134 = and i64 %sub133, 274877906944, !dbg !5416
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5416
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5416

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5416

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub138 = sub i64 %35, 1, !dbg !5416
  %and139 = and i64 %sub138, 137438953472, !dbg !5416
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5416
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5416

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5416

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub143 = sub i64 %36, 1, !dbg !5416
  %and144 = and i64 %sub143, 68719476736, !dbg !5416
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5416
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5416

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5416

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub148 = sub i64 %37, 1, !dbg !5416
  %and149 = and i64 %sub148, 34359738368, !dbg !5416
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5416
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5416

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5416

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub153 = sub i64 %38, 1, !dbg !5416
  %and154 = and i64 %sub153, 17179869184, !dbg !5416
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5416
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5416

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5416

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub158 = sub i64 %39, 1, !dbg !5416
  %and159 = and i64 %sub158, 8589934592, !dbg !5416
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5416
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5416

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5416

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub163 = sub i64 %40, 1, !dbg !5416
  %and164 = and i64 %sub163, 4294967296, !dbg !5416
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5416
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5416

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5416

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub168 = sub i64 %41, 1, !dbg !5416
  %and169 = and i64 %sub168, 2147483648, !dbg !5416
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5416
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5416

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5416

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub173 = sub i64 %42, 1, !dbg !5416
  %and174 = and i64 %sub173, 1073741824, !dbg !5416
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5416
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5416

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5416

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub178 = sub i64 %43, 1, !dbg !5416
  %and179 = and i64 %sub178, 536870912, !dbg !5416
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5416
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5416

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5416

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub183 = sub i64 %44, 1, !dbg !5416
  %and184 = and i64 %sub183, 268435456, !dbg !5416
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5416
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5416

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5416

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub188 = sub i64 %45, 1, !dbg !5416
  %and189 = and i64 %sub188, 134217728, !dbg !5416
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5416
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5416

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5416

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub193 = sub i64 %46, 1, !dbg !5416
  %and194 = and i64 %sub193, 67108864, !dbg !5416
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5416
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5416

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5416

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub198 = sub i64 %47, 1, !dbg !5416
  %and199 = and i64 %sub198, 33554432, !dbg !5416
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5416
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5416

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5416

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub203 = sub i64 %48, 1, !dbg !5416
  %and204 = and i64 %sub203, 16777216, !dbg !5416
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5416
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5416

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5416

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub208 = sub i64 %49, 1, !dbg !5416
  %and209 = and i64 %sub208, 8388608, !dbg !5416
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5416
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5416

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5416

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub213 = sub i64 %50, 1, !dbg !5416
  %and214 = and i64 %sub213, 4194304, !dbg !5416
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5416
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5416

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5416

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub218 = sub i64 %51, 1, !dbg !5416
  %and219 = and i64 %sub218, 2097152, !dbg !5416
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5416
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5416

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5416

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub223 = sub i64 %52, 1, !dbg !5416
  %and224 = and i64 %sub223, 1048576, !dbg !5416
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5416
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5416

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5416

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub228 = sub i64 %53, 1, !dbg !5416
  %and229 = and i64 %sub228, 524288, !dbg !5416
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5416
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5416

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5416

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub233 = sub i64 %54, 1, !dbg !5416
  %and234 = and i64 %sub233, 262144, !dbg !5416
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5416
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5416

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5416

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub238 = sub i64 %55, 1, !dbg !5416
  %and239 = and i64 %sub238, 131072, !dbg !5416
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5416
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5416

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5416

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub243 = sub i64 %56, 1, !dbg !5416
  %and244 = and i64 %sub243, 65536, !dbg !5416
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5416
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5416

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5416

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub248 = sub i64 %57, 1, !dbg !5416
  %and249 = and i64 %sub248, 32768, !dbg !5416
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5416
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5416

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5416

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub253 = sub i64 %58, 1, !dbg !5416
  %and254 = and i64 %sub253, 16384, !dbg !5416
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5416
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5416

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5416

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub258 = sub i64 %59, 1, !dbg !5416
  %and259 = and i64 %sub258, 8192, !dbg !5416
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5416
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5416

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5416

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub263 = sub i64 %60, 1, !dbg !5416
  %and264 = and i64 %sub263, 4096, !dbg !5416
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5416
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5416

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5416

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub268 = sub i64 %61, 1, !dbg !5416
  %and269 = and i64 %sub268, 2048, !dbg !5416
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5416
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5416

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5416

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub273 = sub i64 %62, 1, !dbg !5416
  %and274 = and i64 %sub273, 1024, !dbg !5416
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5416
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5416

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5416

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub278 = sub i64 %63, 1, !dbg !5416
  %and279 = and i64 %sub278, 512, !dbg !5416
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5416
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5416

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5416

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub283 = sub i64 %64, 1, !dbg !5416
  %and284 = and i64 %sub283, 256, !dbg !5416
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5416
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5416

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5416

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub288 = sub i64 %65, 1, !dbg !5416
  %and289 = and i64 %sub288, 128, !dbg !5416
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5416
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5416

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5416

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub293 = sub i64 %66, 1, !dbg !5416
  %and294 = and i64 %sub293, 64, !dbg !5416
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5416
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5416

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5416

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub298 = sub i64 %67, 1, !dbg !5416
  %and299 = and i64 %sub298, 32, !dbg !5416
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5416
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5416

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5416

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub303 = sub i64 %68, 1, !dbg !5416
  %and304 = and i64 %sub303, 16, !dbg !5416
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5416
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5416

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5416

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub308 = sub i64 %69, 1, !dbg !5416
  %and309 = and i64 %sub308, 8, !dbg !5416
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5416
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5416

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5416

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub313 = sub i64 %70, 1, !dbg !5416
  %and314 = and i64 %sub313, 4, !dbg !5416
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5416
  %71 = zext i1 %tobool315 to i64, !dbg !5416
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5416
  br label %cond.end, !dbg !5416

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5416
  br label %cond.end317, !dbg !5416

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5416
  br label %cond.end319, !dbg !5416

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5416
  br label %cond.end321, !dbg !5416

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5416
  br label %cond.end323, !dbg !5416

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5416
  br label %cond.end325, !dbg !5416

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5416
  br label %cond.end327, !dbg !5416

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5416
  br label %cond.end329, !dbg !5416

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5416
  br label %cond.end331, !dbg !5416

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5416
  br label %cond.end333, !dbg !5416

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5416
  br label %cond.end335, !dbg !5416

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5416
  br label %cond.end337, !dbg !5416

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5416
  br label %cond.end339, !dbg !5416

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5416
  br label %cond.end341, !dbg !5416

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5416
  br label %cond.end343, !dbg !5416

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5416
  br label %cond.end345, !dbg !5416

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5416
  br label %cond.end347, !dbg !5416

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5416
  br label %cond.end349, !dbg !5416

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5416
  br label %cond.end351, !dbg !5416

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5416
  br label %cond.end353, !dbg !5416

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5416
  br label %cond.end355, !dbg !5416

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5416
  br label %cond.end357, !dbg !5416

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5416
  br label %cond.end359, !dbg !5416

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5416
  br label %cond.end361, !dbg !5416

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5416
  br label %cond.end363, !dbg !5416

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5416
  br label %cond.end365, !dbg !5416

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5416
  br label %cond.end367, !dbg !5416

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5416
  br label %cond.end369, !dbg !5416

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5416
  br label %cond.end371, !dbg !5416

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5416
  br label %cond.end373, !dbg !5416

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5416
  br label %cond.end375, !dbg !5416

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5416
  br label %cond.end377, !dbg !5416

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5416
  br label %cond.end379, !dbg !5416

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5416
  br label %cond.end381, !dbg !5416

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5416
  br label %cond.end383, !dbg !5416

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5416
  br label %cond.end385, !dbg !5416

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5416
  br label %cond.end387, !dbg !5416

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5416
  br label %cond.end389, !dbg !5416

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5416
  br label %cond.end391, !dbg !5416

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5416
  br label %cond.end393, !dbg !5416

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5416
  br label %cond.end395, !dbg !5416

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5416
  br label %cond.end397, !dbg !5416

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5416
  br label %cond.end399, !dbg !5416

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5416
  br label %cond.end401, !dbg !5416

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5416
  br label %cond.end403, !dbg !5416

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5416
  br label %cond.end405, !dbg !5416

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5416
  br label %cond.end407, !dbg !5416

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5416
  br label %cond.end409, !dbg !5416

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5416
  br label %cond.end411, !dbg !5416

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5416
  br label %cond.end413, !dbg !5416

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5416
  br label %cond.end415, !dbg !5416

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5416
  br label %cond.end417, !dbg !5416

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5416
  br label %cond.end419, !dbg !5416

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5416
  br label %cond.end421, !dbg !5416

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5416
  br label %cond.end423, !dbg !5416

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5416
  br label %cond.end425, !dbg !5416

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5416
  br label %cond.end427, !dbg !5416

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5416
  br label %cond.end429, !dbg !5416

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5416
  br label %cond.end431, !dbg !5416

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5416
  br label %cond.end433, !dbg !5416

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5416
  br label %cond.end435, !dbg !5416

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5416
  br label %cond.end437, !dbg !5416

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5416
  br label %cond.end440, !dbg !5416

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5416

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5416
  br label %cond.end444, !dbg !5416

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5416
  %sub443 = sub i64 %72, 1, !dbg !5416
  %call = call i32 @__ilog2_u64(i64 %sub443) #9, !dbg !5416
  br label %cond.end444, !dbg !5416

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5416
  %sub446 = sub i32 %cond445, 12, !dbg !5417
  %add = add i32 %sub446, 1, !dbg !5418
  store i32 %add, i32* %retval, align 4, !dbg !5419
  br label %return, !dbg !5419

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5420
  %dec = add i64 %73, -1, !dbg !5420
  store i64 %dec, i64* %size.addr, align 8, !dbg !5420
  %74 = load i64, i64* %size.addr, align 8, !dbg !5421
  %shr = lshr i64 %74, 12, !dbg !5421
  store i64 %shr, i64* %size.addr, align 8, !dbg !5421
  %75 = load i64, i64* %size.addr, align 8, !dbg !5422
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5399
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5423
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5424
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #11, !dbg !5423, !srcloc !5425
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5423
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5426
  %add.i = add i32 %79, 1, !dbg !5427
  store i32 %add.i, i32* %retval, align 4, !dbg !5428
  br label %return, !dbg !5428

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5429
  ret i32 %80, !dbg !5429
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !5430 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5391, metadata !DIExpression()), !dbg !5434
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5398, metadata !DIExpression()), !dbg !5436
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5437, metadata !DIExpression()), !dbg !5438
  %0 = load i64, i64* %n.addr, align 8, !dbg !5439
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5436
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5440
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5441
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #11, !dbg !5440, !srcloc !5425
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5440
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5442
  %add.i = add i32 %4, 1, !dbg !5443
  %sub = sub i32 %add.i, 1, !dbg !5444
  ret i32 %sub, !dbg !5445
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5446 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5450, metadata !DIExpression()), !dbg !5451
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5452, metadata !DIExpression()), !dbg !5453
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5454, metadata !DIExpression()), !dbg !5455
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5456, metadata !DIExpression()), !dbg !5457
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5458
  ret i8* %0, !dbg !5459
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone willreturn }
attributes #4 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noredzone }
attributes #8 = { nounwind }
attributes #9 = { noredzone nounwind readnone }
attributes #10 = { noredzone nounwind }
attributes #11 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!175, !176, !177, !178}
!llvm.ident = !{!179}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_comedi_8254_module_init231", scope: !2, file: !3, line: 646, type: !134, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !133, globals: !145, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/staging/comedi/drivers/comedi_8254.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !100, !111, !126}
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
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "i8254_mode", file: !101, line: 939, baseType: !7, size: 32, elements: !102)
!101 = !DIFile(filename: "drivers/staging/comedi/drivers/../comedi.h", directory: "/home/lizy2001/genbc/linux")
!102 = !{!103, !104, !105, !106, !107, !108, !109, !110}
!103 = !DIEnumerator(name: "I8254_MODE0", value: 0, isUnsigned: true)
!104 = !DIEnumerator(name: "I8254_MODE1", value: 2, isUnsigned: true)
!105 = !DIEnumerator(name: "I8254_MODE2", value: 4, isUnsigned: true)
!106 = !DIEnumerator(name: "I8254_MODE3", value: 6, isUnsigned: true)
!107 = !DIEnumerator(name: "I8254_MODE4", value: 8, isUnsigned: true)
!108 = !DIEnumerator(name: "I8254_MODE5", value: 10, isUnsigned: true)
!109 = !DIEnumerator(name: "I8254_BCD", value: 1, isUnsigned: true)
!110 = !DIEnumerator(name: "I8254_BINARY", value: 0, isUnsigned: true)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "comedi_subdevice_type", file: !101, line: 221, baseType: !7, size: 32, elements: !112)
!112 = !{!113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125}
!113 = !DIEnumerator(name: "COMEDI_SUBD_UNUSED", value: 0, isUnsigned: true)
!114 = !DIEnumerator(name: "COMEDI_SUBD_AI", value: 1, isUnsigned: true)
!115 = !DIEnumerator(name: "COMEDI_SUBD_AO", value: 2, isUnsigned: true)
!116 = !DIEnumerator(name: "COMEDI_SUBD_DI", value: 3, isUnsigned: true)
!117 = !DIEnumerator(name: "COMEDI_SUBD_DO", value: 4, isUnsigned: true)
!118 = !DIEnumerator(name: "COMEDI_SUBD_DIO", value: 5, isUnsigned: true)
!119 = !DIEnumerator(name: "COMEDI_SUBD_COUNTER", value: 6, isUnsigned: true)
!120 = !DIEnumerator(name: "COMEDI_SUBD_TIMER", value: 7, isUnsigned: true)
!121 = !DIEnumerator(name: "COMEDI_SUBD_MEMORY", value: 8, isUnsigned: true)
!122 = !DIEnumerator(name: "COMEDI_SUBD_CALIB", value: 9, isUnsigned: true)
!123 = !DIEnumerator(name: "COMEDI_SUBD_PROC", value: 10, isUnsigned: true)
!124 = !DIEnumerator(name: "COMEDI_SUBD_SERIAL", value: 11, isUnsigned: true)
!125 = !DIEnumerator(name: "COMEDI_SUBD_PWM", value: 12, isUnsigned: true)
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !127, line: 305, baseType: !7, size: 32, elements: !128)
!127 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!128 = !{!129, !130, !131, !132}
!129 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!130 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!131 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!132 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!133 = !{!134, !135, !138, !141, !143}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !137)
!137 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !140)
!140 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !144, line: 148, baseType: !7)
!144 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!145 = !{!0, !146, !153, !160, !165, !170}
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(name: "__exitcall_comedi_8254_module_exit", scope: !2, file: !3, line: 651, type: !148, isLocal: true, isDefinition: true)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !149, line: 117, baseType: !150)
!149 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DISubroutineType(types: !152)
!152 = !{null}
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author232", scope: !2, file: !3, line: 653, type: !155, isLocal: true, isDefinition: true, align: 8)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 544, elements: !158)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!157 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!158 = !{!159}
!159 = !DISubrange(count: 68)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description233", scope: !2, file: !3, line: 654, type: !162, isLocal: true, isDefinition: true, align: 8)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 536, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 67)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file234", scope: !2, file: !3, line: 655, type: !167, isLocal: true, isDefinition: true, align: 8)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 480, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 60)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license235", scope: !2, file: !3, line: 655, type: !172, isLocal: true, isDefinition: true, align: 8)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 192, elements: !173)
!173 = !{!174}
!174 = !DISubrange(count: 24)
!175 = !{i32 7, !"Dwarf Version", i32 4}
!176 = !{i32 2, !"Debug Info Version", i32 3}
!177 = !{i32 1, !"wchar_size", i32 2}
!178 = !{i32 1, !"Code Model", i32 2}
!179 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!180 = distinct !DISubprogram(name: "comedi_8254_status", scope: !3, file: !3, line: 186, type: !181, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !296)
!181 = !DISubroutineType(types: !182)
!182 = !{!7, !183, !7}
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_8254", file: !185, line: 78, size: 704, elements: !186)
!185 = !DIFile(filename: "drivers/staging/comedi/drivers/comedi_8254.h", directory: "/home/lizy2001/genbc/linux")
!186 = !{!187, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !203, !204, !208}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "iobase", scope: !184, file: !185, line: 79, baseType: !188, size: 64)
!188 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "mmio", scope: !184, file: !185, line: 80, baseType: !134, size: 64, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "iosize", scope: !184, file: !185, line: 81, baseType: !7, size: 32, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "regshift", scope: !184, file: !185, line: 82, baseType: !7, size: 32, offset: 160)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "osc_base", scope: !184, file: !185, line: 83, baseType: !7, size: 32, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "divisor", scope: !184, file: !185, line: 84, baseType: !7, size: 32, offset: 224)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "divisor1", scope: !184, file: !185, line: 85, baseType: !7, size: 32, offset: 256)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "divisor2", scope: !184, file: !185, line: 86, baseType: !7, size: 32, offset: 288)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "next_div", scope: !184, file: !185, line: 87, baseType: !7, size: 32, offset: 320)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "next_div1", scope: !184, file: !185, line: 88, baseType: !7, size: 32, offset: 352)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "next_div2", scope: !184, file: !185, line: 89, baseType: !7, size: 32, offset: 384)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "clock_src", scope: !184, file: !185, line: 90, baseType: !200, size: 96, offset: 416)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 96, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 3)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "gate_src", scope: !184, file: !185, line: 91, baseType: !200, size: 96, offset: 512)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !184, file: !185, line: 92, baseType: !205, size: 24, offset: 608)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 24, elements: !201)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !144, line: 30, baseType: !207)
!207 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "insn_config", scope: !184, file: !185, line: 94, baseType: !209, size: 64, offset: 640)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{!212, !213, !3851, !3987, !2721}
!212 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_device", file: !215, line: 541, size: 1920, elements: !216)
!215 = !DIFile(filename: "drivers/staging/comedi/drivers/../comedidev.h", directory: "/home/lizy2001/genbc/linux")
!216 = !{!217, !218, !257, !258, !259, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3982, !3983, !3996}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !214, file: !215, line: 542, baseType: !212, size: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !214, file: !215, line: 543, baseType: !219, size: 64, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_driver", file: !215, line: 437, size: 576, elements: !221)
!221 = !{!222, !223, !225, !229, !244, !248, !252, !253, !256}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !220, file: !215, line: 439, baseType: !219, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !220, file: !215, line: 441, baseType: !224, size: 64, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !220, file: !215, line: 442, baseType: !226, size: 64, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !228, line: 76, flags: DIFlagFwdDecl)
!228 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!229 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !220, file: !215, line: 443, baseType: !230, size: 64, offset: 192)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{!212, !213, !233}
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_devconfig", file: !101, line: 834, size: 1184, elements: !235)
!235 = !{!236, !240}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !234, file: !101, line: 835, baseType: !237, size: 160)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 160, elements: !238)
!238 = !{!239}
!239 = !DISubrange(count: 20)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !234, file: !101, line: 836, baseType: !241, size: 1024, offset: 160)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 1024, elements: !242)
!242 = !{!243}
!243 = !DISubrange(count: 32)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !220, file: !215, line: 444, baseType: !245, size: 64, offset: 256)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{null, !213}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "auto_attach", scope: !220, file: !215, line: 445, baseType: !249, size: 64, offset: 320)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{!212, !213, !188}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "num_names", scope: !220, file: !215, line: 446, baseType: !7, size: 32, offset: 384)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !220, file: !215, line: 447, baseType: !254, size: 64, offset: 448)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !224)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !220, file: !215, line: 448, baseType: !212, size: 32, offset: 512)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "pacer", scope: !214, file: !215, line: 544, baseType: !183, size: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !214, file: !215, line: 545, baseType: !134, size: 64, offset: 192)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !214, file: !215, line: 547, baseType: !260, size: 64, offset: 256)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !262)
!262 = !{!263, !3410, !3411, !3414, !3415, !3466, !3539, !3540, !3541, !3542, !3543, !3552, !3657, !3670, !3673, !3674, !3678, !3680, !3681, !3682, !3686, !3692, !3693, !3696, !3700, !3790, !3791, !3792, !3793, !3794, !3826, !3827, !3828, !3831, !3834, !3835, !3836, !3837}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !261, file: !73, line: 462, baseType: !264, size: 512)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !265, line: 64, size: 512, elements: !266)
!265 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!266 = !{!267, !268, !274, !276, !334, !3261, !3400, !3405, !3406, !3407, !3408, !3409}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !264, file: !265, line: 65, baseType: !224, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !264, file: !265, line: 66, baseType: !269, size: 128, offset: 64)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !144, line: 178, size: 128, elements: !270)
!270 = !{!271, !273}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !269, file: !144, line: 179, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !269, file: !144, line: 179, baseType: !272, size: 64, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !264, file: !265, line: 67, baseType: !275, size: 64, offset: 192)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !264, file: !265, line: 68, baseType: !277, size: 64, offset: 256)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !265, line: 192, size: 704, elements: !279)
!279 = !{!280, !281, !297, !298}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !278, file: !265, line: 193, baseType: !269, size: 128)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !278, file: !265, line: 194, baseType: !282, offset: 128)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !283, line: 83, baseType: !284)
!283 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !283, line: 71, elements: !285)
!285 = !{!286}
!286 = !DIDerivedType(tag: DW_TAG_member, scope: !284, file: !283, line: 72, baseType: !287)
!287 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !284, file: !283, line: 72, elements: !288)
!288 = !{!289}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !287, file: !283, line: 73, baseType: !290)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !283, line: 20, elements: !291)
!291 = !{!292}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !290, file: !283, line: 21, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !294, line: 25, baseType: !295)
!294 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !294, line: 25, elements: !296)
!296 = !{}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !278, file: !265, line: 195, baseType: !264, size: 512, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !278, file: !265, line: 196, baseType: !299, size: 64, offset: 640)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !301)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !265, line: 156, size: 192, elements: !302)
!302 = !{!303, !308, !313}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !301, file: !265, line: 157, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !305)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{!212, !277, !275}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !301, file: !265, line: 158, baseType: !309, size: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!224, !277, !275}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !301, file: !265, line: 159, baseType: !314, size: 64, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !315)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DISubroutineType(types: !317)
!317 = !{!212, !277, !275, !318}
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !265, line: 148, size: 20736, elements: !320)
!320 = !{!321, !324, !328, !329, !333}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !319, file: !265, line: 149, baseType: !322, size: 192)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 192, elements: !201)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !319, file: !265, line: 150, baseType: !325, size: 4096, offset: 192)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 4096, elements: !326)
!326 = !{!327}
!327 = !DISubrange(count: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !319, file: !265, line: 151, baseType: !212, size: 32, offset: 4288)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !319, file: !265, line: 152, baseType: !330, size: 16384, offset: 4320)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 16384, elements: !331)
!331 = !{!332}
!332 = !DISubrange(count: 2048)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !319, file: !265, line: 153, baseType: !212, size: 32, offset: 20704)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !264, file: !265, line: 69, baseType: !335, size: 64, offset: 320)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !265, line: 138, size: 448, elements: !337)
!337 = !{!338, !342, !370, !372, !3223, !3251, !3255}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !336, file: !265, line: 139, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{null, !275}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !336, file: !265, line: 140, baseType: !343, size: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !345)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !346, line: 230, size: 128, elements: !347)
!346 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!347 = !{!348, !363}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !345, file: !346, line: 231, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DISubroutineType(types: !351)
!351 = !{!352, !275, !357, !323}
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !144, line: 60, baseType: !353)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !354, line: 73, baseType: !355)
!354 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !354, line: 15, baseType: !356)
!356 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !346, line: 30, size: 128, elements: !359)
!359 = !{!360, !361}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !358, file: !346, line: 31, baseType: !224, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !358, file: !346, line: 32, baseType: !362, size: 16, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !144, line: 19, baseType: !140)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !345, file: !346, line: 232, baseType: !364, size: 64, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{!352, !275, !357, !224, !367}
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !144, line: 55, baseType: !368)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !354, line: 72, baseType: !369)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !354, line: 16, baseType: !188)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !336, file: !265, line: 141, baseType: !371, size: 64, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !336, file: !265, line: 142, baseType: !373, size: 64, offset: 192)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !376)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !346, line: 84, size: 320, elements: !377)
!377 = !{!378, !379, !383, !3220, !3221}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !376, file: !346, line: 85, baseType: !224, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !376, file: !346, line: 86, baseType: !380, size: 64, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DISubroutineType(types: !382)
!382 = !{!362, !275, !357, !212}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !376, file: !346, line: 88, baseType: !384, size: 64, offset: 128)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{!362, !275, !387, !212}
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !346, line: 168, size: 448, elements: !389)
!389 = !{!390, !391, !392, !393, !3215, !3216}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !388, file: !346, line: 169, baseType: !358, size: 128)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !388, file: !346, line: 170, baseType: !367, size: 64, offset: 128)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !388, file: !346, line: 171, baseType: !134, size: 64, offset: 192)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !388, file: !346, line: 172, baseType: !394, size: 64, offset: 256)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{!352, !397, !275, !387, !323, !573, !367}
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !399)
!399 = !{!400, !418, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3198, !3199, !3208, !3209, !3210, !3211, !3212, !3213, !3214}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !398, file: !44, line: 920, baseType: !401, size: 128)
!401 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !398, file: !44, line: 917, size: 128, elements: !402)
!402 = !{!403, !409}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !401, file: !44, line: 918, baseType: !404, size: 64)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !405, line: 58, size: 64, elements: !406)
!405 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!406 = !{!407}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !404, file: !405, line: 59, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !401, file: !44, line: 919, baseType: !410, size: 128, align: 64)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !144, line: 216, size: 128, align: 64, elements: !411)
!411 = !{!412, !414}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !410, file: !144, line: 217, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !410, file: !144, line: 218, baseType: !415, size: 64, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DISubroutineType(types: !417)
!417 = !{null, !413}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !398, file: !44, line: 921, baseType: !419, size: 128, offset: 128)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !420, line: 8, size: 128, elements: !421)
!420 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!421 = !{!422, !426}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !419, file: !420, line: 9, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !425, line: 18, flags: DIFlagFwdDecl)
!425 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!426 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !419, file: !420, line: 10, baseType: !427, size: 64, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !425, line: 89, size: 1536, elements: !429)
!429 = !{!430, !431, !441, !449, !450, !472, !3148, !3150, !3162, !3163, !3164, !3165, !3166, !3172, !3173, !3174}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !428, file: !425, line: 91, baseType: !7, size: 32)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !428, file: !425, line: 92, baseType: !432, size: 32, offset: 32)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !433, line: 277, baseType: !434)
!433 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !433, line: 277, size: 32, elements: !435)
!435 = !{!436}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !434, file: !433, line: 277, baseType: !437, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !433, line: 70, baseType: !438)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !433, line: 65, size: 32, elements: !439)
!439 = !{!440}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !438, file: !433, line: 66, baseType: !7, size: 32)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !428, file: !425, line: 93, baseType: !442, size: 128, offset: 64)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !443, line: 38, size: 128, elements: !444)
!443 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!444 = !{!445, !447}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !442, file: !443, line: 39, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !442, file: !443, line: 39, baseType: !448, size: 64, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !428, file: !425, line: 94, baseType: !427, size: 64, offset: 192)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !428, file: !425, line: 95, baseType: !451, size: 128, offset: 256)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !425, line: 47, size: 128, elements: !452)
!452 = !{!453, !469}
!453 = !DIDerivedType(tag: DW_TAG_member, scope: !451, file: !425, line: 48, baseType: !454, size: 64)
!454 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !451, file: !425, line: 48, size: 64, elements: !455)
!455 = !{!456, !465}
!456 = !DIDerivedType(tag: DW_TAG_member, scope: !454, file: !425, line: 49, baseType: !457, size: 64)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !454, file: !425, line: 49, size: 64, elements: !458)
!458 = !{!459, !464}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !457, file: !425, line: 50, baseType: !460, size: 32)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !461, line: 21, baseType: !462)
!461 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !463, line: 27, baseType: !7)
!463 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!464 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !457, file: !425, line: 50, baseType: !460, size: 32, offset: 32)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !454, file: !425, line: 52, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !461, line: 23, baseType: !467)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !463, line: 31, baseType: !468)
!468 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !451, file: !425, line: 54, baseType: !470, size: 64, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !428, file: !425, line: 96, baseType: !473, size: 64, offset: 384)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !475)
!475 = !{!476, !477, !478, !486, !493, !494, !640, !2859, !2860, !2861, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !3124, !3132, !3133, !3134, !3144, !3145, !3146, !3147}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !474, file: !44, line: 611, baseType: !362, size: 16)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !474, file: !44, line: 612, baseType: !140, size: 16, offset: 16)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !474, file: !44, line: 613, baseType: !479, size: 32, offset: 32)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !480, line: 23, baseType: !481)
!480 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !480, line: 21, size: 32, elements: !482)
!482 = !{!483}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !481, file: !480, line: 22, baseType: !484, size: 32)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !144, line: 32, baseType: !485)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !354, line: 49, baseType: !7)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !474, file: !44, line: 614, baseType: !487, size: 32, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !480, line: 28, baseType: !488)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !480, line: 26, size: 32, elements: !489)
!489 = !{!490}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !488, file: !480, line: 27, baseType: !491, size: 32)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !144, line: 33, baseType: !492)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !354, line: 50, baseType: !7)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !474, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !474, file: !44, line: 622, baseType: !495, size: 64, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !497)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !498)
!498 = !{!499, !503, !516, !520, !526, !530, !534, !538, !542, !546, !550, !551, !557, !561, !587, !616, !620, !626, !631, !635, !636}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !497, file: !44, line: 1865, baseType: !500, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!427, !473, !427, !7}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !497, file: !44, line: 1866, baseType: !504, size: 64, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!224, !427, !473, !507}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !509, line: 10, size: 128, elements: !510)
!509 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!510 = !{!511, !515}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !508, file: !509, line: 11, baseType: !512, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{null, !134}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !508, file: !509, line: 12, baseType: !134, size: 64, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !497, file: !44, line: 1867, baseType: !517, size: 64, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!212, !473, !212}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !497, file: !44, line: 1868, baseType: !521, size: 64, offset: 192)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{!524, !473, !212}
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !497, file: !44, line: 1870, baseType: !527, size: 64, offset: 256)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!212, !427, !323, !212}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !497, file: !44, line: 1872, baseType: !531, size: 64, offset: 320)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!212, !473, !427, !362, !206}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !497, file: !44, line: 1873, baseType: !535, size: 64, offset: 384)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!212, !427, !473, !427}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !497, file: !44, line: 1874, baseType: !539, size: 64, offset: 448)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{!212, !473, !427}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !497, file: !44, line: 1875, baseType: !543, size: 64, offset: 512)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{!212, !473, !427, !224}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !497, file: !44, line: 1876, baseType: !547, size: 64, offset: 576)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{!212, !473, !427, !362}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !497, file: !44, line: 1877, baseType: !539, size: 64, offset: 640)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !497, file: !44, line: 1878, baseType: !552, size: 64, offset: 704)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DISubroutineType(types: !554)
!554 = !{!212, !473, !427, !362, !555}
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !144, line: 16, baseType: !556)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !144, line: 13, baseType: !460)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !497, file: !44, line: 1879, baseType: !558, size: 64, offset: 768)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{!212, !473, !427, !473, !427, !7}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !497, file: !44, line: 1881, baseType: !562, size: 64, offset: 832)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{!212, !427, !565}
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !567)
!567 = !{!568, !569, !570, !571, !572, !576, !584, !585, !586}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !566, file: !44, line: 220, baseType: !7, size: 32)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !566, file: !44, line: 221, baseType: !362, size: 16, offset: 32)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !566, file: !44, line: 222, baseType: !479, size: 32, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !566, file: !44, line: 223, baseType: !487, size: 32, offset: 96)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !566, file: !44, line: 224, baseType: !573, size: 64, offset: 128)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !144, line: 46, baseType: !574)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !354, line: 88, baseType: !575)
!575 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !566, file: !44, line: 225, baseType: !577, size: 128, offset: 192)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !578, line: 13, size: 128, elements: !579)
!578 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!579 = !{!580, !583}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !577, file: !578, line: 14, baseType: !581, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !578, line: 8, baseType: !582)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !463, line: 30, baseType: !575)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !577, file: !578, line: 15, baseType: !356, size: 64, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !566, file: !44, line: 226, baseType: !577, size: 128, offset: 320)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !566, file: !44, line: 227, baseType: !577, size: 128, offset: 448)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !566, file: !44, line: 234, baseType: !397, size: 64, offset: 576)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !497, file: !44, line: 1882, baseType: !588, size: 64, offset: 896)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DISubroutineType(types: !590)
!590 = !{!212, !591, !593, !460, !7}
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !419)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !595, line: 22, size: 1152, elements: !596)
!595 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!596 = !{!597, !598, !599, !600, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !594, file: !595, line: 23, baseType: !460, size: 32)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !594, file: !595, line: 24, baseType: !362, size: 16, offset: 32)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !594, file: !595, line: 25, baseType: !7, size: 32, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !594, file: !595, line: 26, baseType: !601, size: 32, offset: 96)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !144, line: 104, baseType: !460)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !594, file: !595, line: 27, baseType: !466, size: 64, offset: 128)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !594, file: !595, line: 28, baseType: !466, size: 64, offset: 192)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !594, file: !595, line: 37, baseType: !466, size: 64, offset: 256)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !594, file: !595, line: 38, baseType: !555, size: 32, offset: 320)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !594, file: !595, line: 39, baseType: !555, size: 32, offset: 352)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !594, file: !595, line: 40, baseType: !479, size: 32, offset: 384)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !594, file: !595, line: 41, baseType: !487, size: 32, offset: 416)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !594, file: !595, line: 42, baseType: !573, size: 64, offset: 448)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !594, file: !595, line: 43, baseType: !577, size: 128, offset: 512)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !594, file: !595, line: 44, baseType: !577, size: 128, offset: 640)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !594, file: !595, line: 45, baseType: !577, size: 128, offset: 768)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !594, file: !595, line: 46, baseType: !577, size: 128, offset: 896)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !594, file: !595, line: 47, baseType: !466, size: 64, offset: 1024)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !594, file: !595, line: 48, baseType: !466, size: 64, offset: 1088)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !497, file: !44, line: 1883, baseType: !617, size: 64, offset: 960)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{!352, !427, !323, !367}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !497, file: !44, line: 1884, baseType: !621, size: 64, offset: 1024)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{!212, !473, !624, !466, !466}
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !497, file: !44, line: 1886, baseType: !627, size: 64, offset: 1088)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!212, !473, !630, !212}
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !497, file: !44, line: 1887, baseType: !632, size: 64, offset: 1152)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{!212, !473, !427, !397, !7, !362}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !497, file: !44, line: 1890, baseType: !547, size: 64, offset: 1216)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !497, file: !44, line: 1891, baseType: !637, size: 64, offset: 1280)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!212, !473, !524, !212}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !474, file: !44, line: 623, baseType: !641, size: 64, offset: 192)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !643)
!643 = !{!644, !645, !646, !647, !648, !649, !696, !2466, !2548, !2631, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2647, !2651, !2652, !2655, !2656, !2659, !2660, !2661, !2702, !2729, !2730, !2731, !2732, !2733, !2734, !2737, !2739, !2746, !2747, !2749, !2750, !2751, !2810, !2811, !2826, !2827, !2828, !2829, !2830, !2833, !2834, !2835, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !642, file: !44, line: 1417, baseType: !269, size: 128)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !642, file: !44, line: 1418, baseType: !555, size: 32, offset: 128)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !642, file: !44, line: 1419, baseType: !137, size: 8, offset: 160)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !642, file: !44, line: 1420, baseType: !188, size: 64, offset: 192)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !642, file: !44, line: 1421, baseType: !573, size: 64, offset: 256)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !642, file: !44, line: 1422, baseType: !650, size: 64, offset: 320)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !652)
!652 = !{!653, !654, !655, !662, !666, !670, !674, !675, !676, !686, !689, !690, !691, !693, !694, !695}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !651, file: !44, line: 2229, baseType: !224, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !651, file: !44, line: 2230, baseType: !212, size: 32, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !651, file: !44, line: 2238, baseType: !656, size: 64, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{!212, !659}
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !661, line: 28, flags: DIFlagFwdDecl)
!661 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!662 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !651, file: !44, line: 2239, baseType: !663, size: 64, offset: 192)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !665)
!665 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !651, file: !44, line: 2240, baseType: !667, size: 64, offset: 256)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{!427, !650, !212, !224, !134}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !651, file: !44, line: 2242, baseType: !671, size: 64, offset: 320)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{null, !641}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !651, file: !44, line: 2243, baseType: !226, size: 64, offset: 384)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !651, file: !44, line: 2244, baseType: !650, size: 64, offset: 448)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !651, file: !44, line: 2245, baseType: !677, size: 64, offset: 512)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !144, line: 182, size: 64, elements: !678)
!678 = !{!679}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !677, file: !144, line: 183, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !144, line: 186, size: 128, elements: !682)
!682 = !{!683, !684}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !681, file: !144, line: 187, baseType: !680, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !681, file: !144, line: 187, baseType: !685, size: 64, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !651, file: !44, line: 2247, baseType: !687, offset: 576)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !688, line: 187, elements: !296)
!688 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!689 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !651, file: !44, line: 2248, baseType: !687, offset: 576)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !651, file: !44, line: 2249, baseType: !687, offset: 576)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !651, file: !44, line: 2250, baseType: !692, offset: 576)
!692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !687, elements: !201)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !651, file: !44, line: 2252, baseType: !687, offset: 576)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !651, file: !44, line: 2253, baseType: !687, offset: 576)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !651, file: !44, line: 2254, baseType: !687, offset: 576)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !642, file: !44, line: 1423, baseType: !697, size: 64, offset: 384)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !699)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !700)
!700 = !{!701, !705, !709, !710, !714, !720, !724, !725, !726, !730, !734, !735, !736, !737, !743, !748, !749, !756, !757, !758, !759, !2450, !2465}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !699, file: !44, line: 1936, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DISubroutineType(types: !704)
!704 = !{!473, !641}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !699, file: !44, line: 1937, baseType: !706, size: 64, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DISubroutineType(types: !708)
!708 = !{null, !473}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !699, file: !44, line: 1938, baseType: !706, size: 64, offset: 128)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !699, file: !44, line: 1940, baseType: !711, size: 64, offset: 192)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DISubroutineType(types: !713)
!713 = !{null, !473, !212}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !699, file: !44, line: 1941, baseType: !715, size: 64, offset: 256)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DISubroutineType(types: !717)
!717 = !{!212, !473, !718}
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !699, file: !44, line: 1942, baseType: !721, size: 64, offset: 320)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{!212, !473}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !699, file: !44, line: 1943, baseType: !706, size: 64, offset: 384)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !699, file: !44, line: 1944, baseType: !671, size: 64, offset: 448)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !699, file: !44, line: 1945, baseType: !727, size: 64, offset: 512)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DISubroutineType(types: !729)
!729 = !{!212, !641, !212}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !699, file: !44, line: 1946, baseType: !731, size: 64, offset: 576)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{!212, !641}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !699, file: !44, line: 1947, baseType: !731, size: 64, offset: 640)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !699, file: !44, line: 1948, baseType: !731, size: 64, offset: 704)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !699, file: !44, line: 1949, baseType: !731, size: 64, offset: 768)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !699, file: !44, line: 1950, baseType: !738, size: 64, offset: 832)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{!212, !427, !741}
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !699, file: !44, line: 1951, baseType: !744, size: 64, offset: 896)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DISubroutineType(types: !746)
!746 = !{!212, !641, !747, !323}
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !699, file: !44, line: 1952, baseType: !671, size: 64, offset: 960)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !699, file: !44, line: 1954, baseType: !750, size: 64, offset: 1024)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{!212, !753, !427}
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !755, line: 539, flags: DIFlagFwdDecl)
!755 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!756 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !699, file: !44, line: 1955, baseType: !750, size: 64, offset: 1088)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !699, file: !44, line: 1956, baseType: !750, size: 64, offset: 1152)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !699, file: !44, line: 1957, baseType: !750, size: 64, offset: 1216)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !699, file: !44, line: 1963, baseType: !760, size: 64, offset: 1280)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DISubroutineType(types: !762)
!762 = !{!212, !641, !763, !143}
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !765, line: 68, size: 512, align: 128, elements: !766)
!765 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!766 = !{!767, !768, !2442, !2449}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !764, file: !765, line: 69, baseType: !188, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, scope: !764, file: !765, line: 77, baseType: !769, size: 320, offset: 64)
!769 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !764, file: !765, line: 77, size: 320, elements: !770)
!770 = !{!771, !958, !963, !991, !999, !1005, !2373, !2441}
!771 = !DIDerivedType(tag: DW_TAG_member, scope: !769, file: !765, line: 78, baseType: !772, size: 320)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !769, file: !765, line: 78, size: 320, elements: !773)
!773 = !{!774, !775, !956, !957}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !772, file: !765, line: 84, baseType: !269, size: 128)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !772, file: !765, line: 86, baseType: !776, size: 64, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !778)
!778 = !{!779, !780, !787, !788, !793, !808, !824, !825, !826, !827, !949, !950, !953, !954, !955}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !777, file: !44, line: 452, baseType: !473, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !777, file: !44, line: 453, baseType: !781, size: 128, offset: 64)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !782, line: 292, size: 128, elements: !783)
!782 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!783 = !{!784, !785, !786}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !781, file: !782, line: 293, baseType: !282)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !781, file: !782, line: 295, baseType: !143, size: 32)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !781, file: !782, line: 296, baseType: !134, size: 64, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !777, file: !44, line: 454, baseType: !143, size: 32, offset: 192)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !777, file: !44, line: 455, baseType: !789, size: 32, offset: 224)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !144, line: 168, baseType: !790)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !144, line: 166, size: 32, elements: !791)
!791 = !{!792}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !790, file: !144, line: 167, baseType: !212, size: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !777, file: !44, line: 460, baseType: !794, size: 128, offset: 256)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !795, line: 125, size: 128, elements: !796)
!795 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!796 = !{!797, !807}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !794, file: !795, line: 126, baseType: !798, size: 64)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !795, line: 31, size: 64, elements: !799)
!799 = !{!800}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !798, file: !795, line: 32, baseType: !801, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !795, line: 24, size: 192, align: 64, elements: !803)
!803 = !{!804, !805, !806}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !802, file: !795, line: 25, baseType: !188, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !802, file: !795, line: 26, baseType: !801, size: 64, offset: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !802, file: !795, line: 27, baseType: !801, size: 64, offset: 128)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !794, file: !795, line: 127, baseType: !801, size: 64, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !777, file: !44, line: 461, baseType: !809, size: 256, offset: 384)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !810, line: 35, size: 256, elements: !811)
!810 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!811 = !{!812, !820, !821, !823}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !809, file: !810, line: 36, baseType: !813, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !814, line: 13, baseType: !815)
!814 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !144, line: 175, baseType: !816)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !144, line: 173, size: 64, elements: !817)
!817 = !{!818}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !816, file: !144, line: 174, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !461, line: 22, baseType: !582)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !809, file: !810, line: 42, baseType: !813, size: 64, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !809, file: !810, line: 46, baseType: !822, offset: 128)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !283, line: 29, baseType: !290)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !809, file: !810, line: 47, baseType: !269, size: 128, offset: 128)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !777, file: !44, line: 462, baseType: !188, size: 64, offset: 640)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !777, file: !44, line: 463, baseType: !188, size: 64, offset: 704)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !777, file: !44, line: 464, baseType: !188, size: 64, offset: 768)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !777, file: !44, line: 465, baseType: !828, size: 64, offset: 832)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !830)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !831)
!831 = !{!832, !836, !840, !844, !848, !852, !858, !864, !868, !873, !877, !881, !885, !913, !917, !923, !924, !925, !929, !934, !938, !945}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !830, file: !44, line: 368, baseType: !833, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{!212, !763, !718}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !830, file: !44, line: 369, baseType: !837, size: 64, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{!212, !397, !763}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !830, file: !44, line: 372, baseType: !841, size: 64, offset: 128)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{!212, !776, !718}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !830, file: !44, line: 375, baseType: !845, size: 64, offset: 192)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{!212, !763}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !830, file: !44, line: 381, baseType: !849, size: 64, offset: 256)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{!212, !397, !776, !272, !7}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !830, file: !44, line: 383, baseType: !853, size: 64, offset: 320)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{null, !856}
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !830, file: !44, line: 385, baseType: !859, size: 64, offset: 384)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DISubroutineType(types: !861)
!861 = !{!212, !397, !776, !573, !7, !7, !862, !863}
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !830, file: !44, line: 388, baseType: !865, size: 64, offset: 448)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{!212, !397, !776, !573, !7, !7, !763, !134}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !830, file: !44, line: 393, baseType: !869, size: 64, offset: 512)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{!872, !776, !872}
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !144, line: 125, baseType: !466)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !830, file: !44, line: 394, baseType: !874, size: 64, offset: 576)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DISubroutineType(types: !876)
!876 = !{null, !763, !7, !7}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !830, file: !44, line: 395, baseType: !878, size: 64, offset: 640)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{!212, !763, !143}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !830, file: !44, line: 396, baseType: !882, size: 64, offset: 704)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DISubroutineType(types: !884)
!884 = !{null, !763}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !830, file: !44, line: 397, baseType: !886, size: 64, offset: 768)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DISubroutineType(types: !888)
!888 = !{!352, !889, !911}
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !891)
!891 = !{!892, !893, !894, !898, !899, !900, !903, !904}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !890, file: !44, line: 321, baseType: !397, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !890, file: !44, line: 326, baseType: !573, size: 64, offset: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !890, file: !44, line: 327, baseType: !895, size: 64, offset: 128)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DISubroutineType(types: !897)
!897 = !{null, !889, !356, !356}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !890, file: !44, line: 328, baseType: !134, size: 64, offset: 192)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !890, file: !44, line: 329, baseType: !212, size: 32, offset: 256)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !890, file: !44, line: 330, baseType: !901, size: 16, offset: 288)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !461, line: 19, baseType: !902)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !463, line: 24, baseType: !140)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !890, file: !44, line: 331, baseType: !901, size: 16, offset: 304)
!904 = !DIDerivedType(tag: DW_TAG_member, scope: !890, file: !44, line: 332, baseType: !905, size: 64, offset: 320)
!905 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !890, file: !44, line: 332, size: 64, elements: !906)
!906 = !{!907, !908}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !905, file: !44, line: 333, baseType: !7, size: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !905, file: !44, line: 334, baseType: !909, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !830, file: !44, line: 402, baseType: !914, size: 64, offset: 832)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DISubroutineType(types: !916)
!916 = !{!212, !776, !763, !763, !5}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !830, file: !44, line: 404, baseType: !918, size: 64, offset: 896)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DISubroutineType(types: !920)
!920 = !{!206, !763, !921}
!921 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !922, line: 305, baseType: !7)
!922 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!923 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !830, file: !44, line: 405, baseType: !882, size: 64, offset: 960)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !830, file: !44, line: 406, baseType: !845, size: 64, offset: 1024)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !830, file: !44, line: 407, baseType: !926, size: 64, offset: 1088)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DISubroutineType(types: !928)
!928 = !{!212, !763, !188, !188}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !830, file: !44, line: 409, baseType: !930, size: 64, offset: 1152)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DISubroutineType(types: !932)
!932 = !{null, !763, !933, !933}
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !830, file: !44, line: 410, baseType: !935, size: 64, offset: 1216)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DISubroutineType(types: !937)
!937 = !{!212, !776, !763}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !830, file: !44, line: 413, baseType: !939, size: 64, offset: 1280)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DISubroutineType(types: !941)
!941 = !{!212, !942, !397, !944}
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !830, file: !44, line: 415, baseType: !946, size: 64, offset: 1344)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DISubroutineType(types: !948)
!948 = !{null, !397}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !777, file: !44, line: 466, baseType: !188, size: 64, offset: 896)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !777, file: !44, line: 467, baseType: !951, size: 32, offset: 960)
!951 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !952, line: 8, baseType: !460)
!952 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!953 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !777, file: !44, line: 468, baseType: !282, offset: 992)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !777, file: !44, line: 469, baseType: !269, size: 128, offset: 1024)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !777, file: !44, line: 470, baseType: !134, size: 64, offset: 1152)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !772, file: !765, line: 87, baseType: !188, size: 64, offset: 192)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !772, file: !765, line: 94, baseType: !188, size: 64, offset: 256)
!958 = !DIDerivedType(tag: DW_TAG_member, scope: !769, file: !765, line: 96, baseType: !959, size: 64)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !769, file: !765, line: 96, size: 64, elements: !960)
!960 = !{!961}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !959, file: !765, line: 101, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !144, line: 143, baseType: !466)
!963 = !DIDerivedType(tag: DW_TAG_member, scope: !769, file: !765, line: 103, baseType: !964, size: 320)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !769, file: !765, line: 103, size: 320, elements: !965)
!965 = !{!966, !976, !979, !980}
!966 = !DIDerivedType(tag: DW_TAG_member, scope: !964, file: !765, line: 104, baseType: !967, size: 128)
!967 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !964, file: !765, line: 104, size: 128, elements: !968)
!968 = !{!969, !970}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !967, file: !765, line: 105, baseType: !269, size: 128)
!970 = !DIDerivedType(tag: DW_TAG_member, scope: !967, file: !765, line: 106, baseType: !971, size: 128)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !967, file: !765, line: 106, size: 128, elements: !972)
!972 = !{!973, !974, !975}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !971, file: !765, line: 107, baseType: !763, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !971, file: !765, line: 109, baseType: !212, size: 32, offset: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !971, file: !765, line: 110, baseType: !212, size: 32, offset: 96)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !964, file: !765, line: 117, baseType: !977, size: 64, offset: 128)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !765, line: 117, flags: DIFlagFwdDecl)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !964, file: !765, line: 119, baseType: !134, size: 64, offset: 192)
!980 = !DIDerivedType(tag: DW_TAG_member, scope: !964, file: !765, line: 120, baseType: !981, size: 64, offset: 256)
!981 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !964, file: !765, line: 120, size: 64, elements: !982)
!982 = !{!983, !984, !985}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !981, file: !765, line: 121, baseType: !134, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !981, file: !765, line: 122, baseType: !188, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, scope: !981, file: !765, line: 123, baseType: !986, size: 32)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !981, file: !765, line: 123, size: 32, elements: !987)
!987 = !{!988, !989, !990}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !986, file: !765, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !986, file: !765, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !986, file: !765, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!991 = !DIDerivedType(tag: DW_TAG_member, scope: !769, file: !765, line: 130, baseType: !992, size: 192)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !769, file: !765, line: 130, size: 192, elements: !993)
!993 = !{!994, !995, !996, !997, !998}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !992, file: !765, line: 131, baseType: !188, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !992, file: !765, line: 134, baseType: !137, size: 8, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !992, file: !765, line: 135, baseType: !137, size: 8, offset: 72)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !992, file: !765, line: 136, baseType: !789, size: 32, offset: 96)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !992, file: !765, line: 137, baseType: !7, size: 32, offset: 128)
!999 = !DIDerivedType(tag: DW_TAG_member, scope: !769, file: !765, line: 139, baseType: !1000, size: 256)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !769, file: !765, line: 139, size: 256, elements: !1001)
!1001 = !{!1002, !1003, !1004}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1000, file: !765, line: 140, baseType: !188, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1000, file: !765, line: 141, baseType: !789, size: 32, offset: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1000, file: !765, line: 143, baseType: !269, size: 128, offset: 128)
!1005 = !DIDerivedType(tag: DW_TAG_member, scope: !769, file: !765, line: 145, baseType: !1006, size: 256)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !769, file: !765, line: 145, size: 256, elements: !1007)
!1007 = !{!1008, !1009, !1011, !1012, !2372}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1006, file: !765, line: 146, baseType: !188, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1006, file: !765, line: 147, baseType: !1010, size: 64, offset: 64)
!1010 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !755, line: 509, baseType: !763)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1006, file: !765, line: 148, baseType: !188, size: 64, offset: 128)
!1012 = !DIDerivedType(tag: DW_TAG_member, scope: !1006, file: !765, line: 149, baseType: !1013, size: 64, offset: 192)
!1013 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1006, file: !765, line: 149, size: 64, elements: !1014)
!1014 = !{!1015, !2371}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1013, file: !765, line: 150, baseType: !1016, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !765, line: 388, size: 7296, elements: !1018)
!1018 = !{!1019, !2367}
!1019 = !DIDerivedType(tag: DW_TAG_member, scope: !1017, file: !765, line: 389, baseType: !1020, size: 7296)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1017, file: !765, line: 389, size: 7296, elements: !1021)
!1021 = !{!1022, !1140, !1141, !1142, !1146, !1147, !1148, !1149, !1150, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1191, !1199, !1202, !1248, !1249, !2351, !2352, !2355, !2356, !2357, !2360, !2361, !2362, !2365, !2366}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1020, file: !765, line: 390, baseType: !1023, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !765, line: 305, size: 1472, elements: !1025)
!1025 = !{!1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1040, !1041, !1046, !1047, !1050, !1134, !1135, !1136, !1137, !1138}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1024, file: !765, line: 308, baseType: !188, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1024, file: !765, line: 309, baseType: !188, size: 64, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1024, file: !765, line: 313, baseType: !1023, size: 64, offset: 128)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1024, file: !765, line: 313, baseType: !1023, size: 64, offset: 192)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1024, file: !765, line: 315, baseType: !802, size: 192, align: 64, offset: 256)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1024, file: !765, line: 323, baseType: !188, size: 64, offset: 448)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1024, file: !765, line: 327, baseType: !1016, size: 64, offset: 512)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1024, file: !765, line: 333, baseType: !1034, size: 64, offset: 576)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !755, line: 284, baseType: !1035)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !755, line: 284, size: 64, elements: !1036)
!1036 = !{!1037}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1035, file: !755, line: 284, baseType: !1038, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1039, line: 19, baseType: !188)
!1039 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1024, file: !765, line: 334, baseType: !188, size: 64, offset: 640)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1024, file: !765, line: 343, baseType: !1042, size: 256, offset: 704)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1024, file: !765, line: 340, size: 256, elements: !1043)
!1043 = !{!1044, !1045}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1042, file: !765, line: 341, baseType: !802, size: 192, align: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1042, file: !765, line: 342, baseType: !188, size: 64, offset: 192)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1024, file: !765, line: 351, baseType: !269, size: 128, offset: 960)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1024, file: !765, line: 353, baseType: !1048, size: 64, offset: 1088)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !765, line: 353, flags: DIFlagFwdDecl)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1024, file: !765, line: 356, baseType: !1051, size: 64, offset: 1152)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1053)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1054)
!1054 = !{!1055, !1059, !1060, !1064, !1068, !1108, !1112, !1116, !1120, !1121, !1122, !1126, !1130}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1053, file: !14, line: 558, baseType: !1056, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{null, !1023}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1053, file: !14, line: 559, baseType: !1056, size: 64, offset: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1053, file: !14, line: 560, baseType: !1061, size: 64, offset: 128)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!212, !1023, !188}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1053, file: !14, line: 561, baseType: !1065, size: 64, offset: 192)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!212, !1023}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1053, file: !14, line: 562, baseType: !1069, size: 64, offset: 256)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!1072, !1073}
!1072 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !765, line: 682, baseType: !7)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1075)
!1075 = !{!1076, !1077, !1078, !1079, !1080, !1081, !1088, !1095, !1101, !1102, !1103, !1105, !1107}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1074, file: !14, line: 509, baseType: !1023, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1074, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1074, file: !14, line: 511, baseType: !143, size: 32, offset: 96)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1074, file: !14, line: 512, baseType: !188, size: 64, offset: 128)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1074, file: !14, line: 513, baseType: !188, size: 64, offset: 192)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1074, file: !14, line: 514, baseType: !1082, size: 64, offset: 256)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !755, line: 385, baseType: !1084)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !755, line: 385, size: 64, elements: !1085)
!1085 = !{!1086}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1084, file: !755, line: 385, baseType: !1087, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1039, line: 15, baseType: !188)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1074, file: !14, line: 516, baseType: !1089, size: 64, offset: 320)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !755, line: 359, baseType: !1091)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !755, line: 359, size: 64, elements: !1092)
!1092 = !{!1093}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1091, file: !755, line: 359, baseType: !1094, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1039, line: 16, baseType: !188)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1074, file: !14, line: 519, baseType: !1096, size: 64, offset: 384)
!1096 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1039, line: 21, baseType: !1097)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1039, line: 21, size: 64, elements: !1098)
!1098 = !{!1099}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1097, file: !1039, line: 21, baseType: !1100, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1039, line: 14, baseType: !188)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1074, file: !14, line: 521, baseType: !763, size: 64, offset: 448)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1074, file: !14, line: 522, baseType: !763, size: 64, offset: 512)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1074, file: !14, line: 528, baseType: !1104, size: 64, offset: 576)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1074, file: !14, line: 532, baseType: !1106, size: 64, offset: 640)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1074, file: !14, line: 536, baseType: !1010, size: 64, offset: 704)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1053, file: !14, line: 563, baseType: !1109, size: 64, offset: 320)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!1072, !1073, !13}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1053, file: !14, line: 565, baseType: !1113, size: 64, offset: 384)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{null, !1073, !188, !188}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1053, file: !14, line: 567, baseType: !1117, size: 64, offset: 448)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!188, !1023}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1053, file: !14, line: 571, baseType: !1069, size: 64, offset: 512)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1053, file: !14, line: 574, baseType: !1069, size: 64, offset: 576)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1053, file: !14, line: 579, baseType: !1123, size: 64, offset: 640)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!212, !1023, !188, !134, !212, !212}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1053, file: !14, line: 585, baseType: !1127, size: 64, offset: 704)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!224, !1023}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1053, file: !14, line: 615, baseType: !1131, size: 64, offset: 768)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!763, !1023, !188}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1024, file: !765, line: 359, baseType: !188, size: 64, offset: 1216)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1024, file: !765, line: 361, baseType: !397, size: 64, offset: 1280)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1024, file: !765, line: 362, baseType: !134, size: 64, offset: 1344)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1024, file: !765, line: 365, baseType: !813, size: 64, offset: 1408)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1024, file: !765, line: 373, baseType: !1139, offset: 1472)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !765, line: 296, elements: !296)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1020, file: !765, line: 391, baseType: !798, size: 64, offset: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1020, file: !765, line: 392, baseType: !466, size: 64, offset: 128)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1020, file: !765, line: 394, baseType: !1143, size: 64, offset: 192)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!188, !397, !188, !188, !188, !188}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1020, file: !765, line: 398, baseType: !188, size: 64, offset: 256)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1020, file: !765, line: 399, baseType: !188, size: 64, offset: 320)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1020, file: !765, line: 405, baseType: !188, size: 64, offset: 384)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1020, file: !765, line: 406, baseType: !188, size: 64, offset: 448)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1020, file: !765, line: 407, baseType: !1151, size: 64, offset: 512)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !755, line: 286, baseType: !1153)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !755, line: 286, size: 64, elements: !1154)
!1154 = !{!1155}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1153, file: !755, line: 286, baseType: !1156, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1039, line: 18, baseType: !188)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1020, file: !765, line: 416, baseType: !789, size: 32, offset: 576)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1020, file: !765, line: 428, baseType: !789, size: 32, offset: 608)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1020, file: !765, line: 437, baseType: !789, size: 32, offset: 640)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1020, file: !765, line: 447, baseType: !789, size: 32, offset: 672)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1020, file: !765, line: 450, baseType: !813, size: 64, offset: 704)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1020, file: !765, line: 452, baseType: !212, size: 32, offset: 768)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1020, file: !765, line: 454, baseType: !282, offset: 800)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1020, file: !765, line: 457, baseType: !809, size: 256, offset: 832)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1020, file: !765, line: 459, baseType: !269, size: 128, offset: 1088)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1020, file: !765, line: 466, baseType: !188, size: 64, offset: 1216)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1020, file: !765, line: 467, baseType: !188, size: 64, offset: 1280)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1020, file: !765, line: 469, baseType: !188, size: 64, offset: 1344)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1020, file: !765, line: 470, baseType: !188, size: 64, offset: 1408)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1020, file: !765, line: 471, baseType: !815, size: 64, offset: 1472)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1020, file: !765, line: 472, baseType: !188, size: 64, offset: 1536)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1020, file: !765, line: 473, baseType: !188, size: 64, offset: 1600)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1020, file: !765, line: 474, baseType: !188, size: 64, offset: 1664)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1020, file: !765, line: 475, baseType: !188, size: 64, offset: 1728)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1020, file: !765, line: 477, baseType: !282, offset: 1792)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1020, file: !765, line: 478, baseType: !188, size: 64, offset: 1792)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1020, file: !765, line: 478, baseType: !188, size: 64, offset: 1856)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1020, file: !765, line: 478, baseType: !188, size: 64, offset: 1920)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1020, file: !765, line: 478, baseType: !188, size: 64, offset: 1984)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1020, file: !765, line: 479, baseType: !188, size: 64, offset: 2048)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1020, file: !765, line: 479, baseType: !188, size: 64, offset: 2112)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1020, file: !765, line: 479, baseType: !188, size: 64, offset: 2176)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1020, file: !765, line: 480, baseType: !188, size: 64, offset: 2240)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1020, file: !765, line: 480, baseType: !188, size: 64, offset: 2304)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1020, file: !765, line: 480, baseType: !188, size: 64, offset: 2368)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1020, file: !765, line: 480, baseType: !188, size: 64, offset: 2432)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1020, file: !765, line: 482, baseType: !1188, size: 2816, offset: 2496)
!1188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 2816, elements: !1189)
!1189 = !{!1190}
!1190 = !DISubrange(count: 44)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1020, file: !765, line: 488, baseType: !1192, size: 256, offset: 5312)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1193, line: 60, size: 256, elements: !1194)
!1193 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1194 = !{!1195}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1192, file: !1193, line: 61, baseType: !1196, size: 256)
!1196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !813, size: 256, elements: !1197)
!1197 = !{!1198}
!1198 = !DISubrange(count: 4)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1020, file: !765, line: 490, baseType: !1200, size: 64, offset: 5568)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !765, line: 490, flags: DIFlagFwdDecl)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1020, file: !765, line: 493, baseType: !1203, size: 896, offset: 5632)
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1204, line: 53, baseType: !1205)
!1204 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1204, line: 13, size: 896, elements: !1206)
!1206 = !{!1207, !1208, !1209, !1210, !1213, !1214, !1221, !1222, !1242, !1243, !1244}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1205, file: !1204, line: 18, baseType: !466, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1205, file: !1204, line: 28, baseType: !815, size: 64, offset: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1205, file: !1204, line: 31, baseType: !809, size: 256, offset: 128)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1205, file: !1204, line: 32, baseType: !1211, size: 64, offset: 384)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1204, line: 32, flags: DIFlagFwdDecl)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1205, file: !1204, line: 37, baseType: !140, size: 16, offset: 448)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1205, file: !1204, line: 40, baseType: !1215, size: 192, offset: 512)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1216, line: 53, size: 192, elements: !1217)
!1216 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1217 = !{!1218, !1219, !1220}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1215, file: !1216, line: 54, baseType: !813, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1215, file: !1216, line: 55, baseType: !282, offset: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1215, file: !1216, line: 59, baseType: !269, size: 128, offset: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1205, file: !1204, line: 41, baseType: !134, size: 64, offset: 704)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1205, file: !1204, line: 42, baseType: !1223, size: 64, offset: 768)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1225)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1226, line: 13, size: 896, elements: !1227)
!1226 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1227 = !{!1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1225, file: !1226, line: 14, baseType: !134, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1225, file: !1226, line: 15, baseType: !188, size: 64, offset: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1225, file: !1226, line: 17, baseType: !188, size: 64, offset: 128)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1225, file: !1226, line: 17, baseType: !188, size: 64, offset: 192)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1225, file: !1226, line: 19, baseType: !356, size: 64, offset: 256)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1225, file: !1226, line: 21, baseType: !356, size: 64, offset: 320)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1225, file: !1226, line: 22, baseType: !356, size: 64, offset: 384)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1225, file: !1226, line: 23, baseType: !356, size: 64, offset: 448)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1225, file: !1226, line: 24, baseType: !356, size: 64, offset: 512)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1225, file: !1226, line: 25, baseType: !356, size: 64, offset: 576)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1225, file: !1226, line: 26, baseType: !356, size: 64, offset: 640)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1225, file: !1226, line: 27, baseType: !356, size: 64, offset: 704)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1225, file: !1226, line: 28, baseType: !356, size: 64, offset: 768)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1225, file: !1226, line: 29, baseType: !356, size: 64, offset: 832)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1205, file: !1204, line: 44, baseType: !789, size: 32, offset: 832)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1205, file: !1204, line: 50, baseType: !901, size: 16, offset: 864)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1205, file: !1204, line: 51, baseType: !1245, size: 16, offset: 880)
!1245 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !461, line: 18, baseType: !1246)
!1246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !463, line: 23, baseType: !1247)
!1247 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1020, file: !765, line: 495, baseType: !188, size: 64, offset: 6528)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1020, file: !765, line: 497, baseType: !1250, size: 64, offset: 6592)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !765, line: 381, size: 384, elements: !1252)
!1252 = !{!1253, !1254, !2350}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1251, file: !765, line: 382, baseType: !789, size: 32)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1251, file: !765, line: 383, baseType: !1255, size: 128, offset: 64)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !765, line: 376, size: 128, elements: !1256)
!1256 = !{!1257, !2348}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1255, file: !765, line: 377, baseType: !1258, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1260, line: 640, size: 48640, elements: !1261)
!1260 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1261 = !{!1262, !1268, !1270, !1271, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1288, !1306, !1317, !1402, !1403, !1404, !1415, !1416, !1418, !1419, !1420, !1421, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1500, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1538, !1540, !1541, !1542, !1554, !1555, !1556, !1557, !1558, !1559, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1583, !1588, !1772, !1773, !1774, !1775, !1779, !1782, !1785, !1788, !1791, !1795, !1896, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1940, !1941, !1942, !1943, !1944, !1949, !1950, !1951, !1954, !1955, !1958, !1961, !1964, !1967, !2010, !2013, !2014, !2093, !2094, !2097, !2098, !2101, !2102, !2103, !2107, !2108, !2109, !2122, !2123, !2124, !2134, !2139, !2142, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1259, file: !1260, line: 646, baseType: !1263, size: 128)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1264, line: 56, size: 128, elements: !1265)
!1264 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1265 = !{!1266, !1267}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1263, file: !1264, line: 57, baseType: !188, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1263, file: !1264, line: 58, baseType: !460, size: 32, offset: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1259, file: !1260, line: 649, baseType: !1269, size: 64, offset: 128)
!1269 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !356)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1259, file: !1260, line: 657, baseType: !134, size: 64, offset: 192)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1259, file: !1260, line: 658, baseType: !1272, size: 32, offset: 256)
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1273, line: 113, baseType: !1274)
!1273 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1273, line: 111, size: 32, elements: !1275)
!1275 = !{!1276}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1274, file: !1273, line: 112, baseType: !789, size: 32)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1259, file: !1260, line: 660, baseType: !7, size: 32, offset: 288)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1259, file: !1260, line: 661, baseType: !7, size: 32, offset: 320)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1259, file: !1260, line: 684, baseType: !212, size: 32, offset: 352)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1259, file: !1260, line: 686, baseType: !212, size: 32, offset: 384)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1259, file: !1260, line: 687, baseType: !212, size: 32, offset: 416)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1259, file: !1260, line: 688, baseType: !212, size: 32, offset: 448)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1259, file: !1260, line: 689, baseType: !7, size: 32, offset: 480)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1259, file: !1260, line: 691, baseType: !1285, size: 64, offset: 512)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1287)
!1287 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1260, line: 691, flags: DIFlagFwdDecl)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1259, file: !1260, line: 692, baseType: !1289, size: 832, offset: 576)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1260, line: 451, size: 832, elements: !1290)
!1290 = !{!1291, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1289, file: !1260, line: 453, baseType: !1292, size: 128)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1260, line: 325, size: 128, elements: !1293)
!1293 = !{!1294, !1295}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1292, file: !1260, line: 326, baseType: !188, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1292, file: !1260, line: 327, baseType: !460, size: 32, offset: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1289, file: !1260, line: 454, baseType: !802, size: 192, align: 64, offset: 128)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1289, file: !1260, line: 455, baseType: !269, size: 128, offset: 320)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1289, file: !1260, line: 456, baseType: !7, size: 32, offset: 448)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1289, file: !1260, line: 458, baseType: !466, size: 64, offset: 512)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1289, file: !1260, line: 459, baseType: !466, size: 64, offset: 576)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1289, file: !1260, line: 460, baseType: !466, size: 64, offset: 640)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1289, file: !1260, line: 461, baseType: !466, size: 64, offset: 704)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1289, file: !1260, line: 463, baseType: !466, size: 64, offset: 768)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1289, file: !1260, line: 465, baseType: !1305, offset: 832)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1260, line: 415, elements: !296)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1259, file: !1260, line: 693, baseType: !1307, size: 384, offset: 1408)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1260, line: 489, size: 384, elements: !1308)
!1308 = !{!1309, !1310, !1311, !1312, !1313, !1314, !1315}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1307, file: !1260, line: 490, baseType: !269, size: 128)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1307, file: !1260, line: 491, baseType: !188, size: 64, offset: 128)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1307, file: !1260, line: 492, baseType: !188, size: 64, offset: 192)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1307, file: !1260, line: 493, baseType: !7, size: 32, offset: 256)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1307, file: !1260, line: 494, baseType: !140, size: 16, offset: 288)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1307, file: !1260, line: 495, baseType: !140, size: 16, offset: 304)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1307, file: !1260, line: 497, baseType: !1316, size: 64, offset: 320)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1259, file: !1260, line: 697, baseType: !1318, size: 1792, offset: 1792)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1260, line: 507, size: 1792, elements: !1319)
!1319 = !{!1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1399, !1400}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1318, file: !1260, line: 508, baseType: !802, size: 192, align: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1318, file: !1260, line: 515, baseType: !466, size: 64, offset: 192)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1318, file: !1260, line: 516, baseType: !466, size: 64, offset: 256)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1318, file: !1260, line: 517, baseType: !466, size: 64, offset: 320)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1318, file: !1260, line: 518, baseType: !466, size: 64, offset: 384)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1318, file: !1260, line: 519, baseType: !466, size: 64, offset: 448)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1318, file: !1260, line: 526, baseType: !819, size: 64, offset: 512)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1318, file: !1260, line: 527, baseType: !466, size: 64, offset: 576)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1318, file: !1260, line: 528, baseType: !7, size: 32, offset: 640)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1318, file: !1260, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1318, file: !1260, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1318, file: !1260, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1318, file: !1260, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1318, file: !1260, line: 563, baseType: !1334, size: 512, offset: 704)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1335)
!1335 = !{!1336, !1344, !1345, !1350, !1393, !1396, !1397, !1398}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1334, file: !20, line: 119, baseType: !1337, size: 256)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1338, line: 9, size: 256, elements: !1339)
!1338 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1339 = !{!1340, !1341}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1337, file: !1338, line: 10, baseType: !802, size: 192, align: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1337, file: !1338, line: 11, baseType: !1342, size: 64, offset: 192)
!1342 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1343, line: 29, baseType: !819)
!1343 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1334, file: !20, line: 120, baseType: !1342, size: 64, offset: 256)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1334, file: !20, line: 121, baseType: !1346, size: 64, offset: 320)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!19, !1349}
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1334, file: !20, line: 122, baseType: !1351, size: 64, offset: 384)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1353)
!1353 = !{!1354, !1374, !1375, !1378, !1383, !1384, !1388, !1392}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1352, file: !20, line: 160, baseType: !1355, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1357)
!1357 = !{!1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1356, file: !20, line: 215, baseType: !822)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1356, file: !20, line: 216, baseType: !7, size: 32)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1356, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1356, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1356, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1356, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1356, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1356, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1356, file: !20, line: 233, baseType: !1342, size: 64, offset: 128)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1356, file: !20, line: 234, baseType: !1349, size: 64, offset: 192)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1356, file: !20, line: 235, baseType: !1342, size: 64, offset: 256)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1356, file: !20, line: 236, baseType: !1349, size: 64, offset: 320)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1356, file: !20, line: 237, baseType: !1371, size: 4096, offset: 512)
!1371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1352, size: 4096, elements: !1372)
!1372 = !{!1373}
!1373 = !DISubrange(count: 8)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1352, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1352, file: !20, line: 162, baseType: !1376, size: 32, offset: 96)
!1376 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !144, line: 27, baseType: !1377)
!1377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !354, line: 96, baseType: !212)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1352, file: !20, line: 163, baseType: !1379, size: 32, offset: 128)
!1379 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !433, line: 276, baseType: !1380)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !433, line: 276, size: 32, elements: !1381)
!1381 = !{!1382}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1380, file: !433, line: 276, baseType: !437, size: 32)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1352, file: !20, line: 164, baseType: !1349, size: 64, offset: 192)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1352, file: !20, line: 165, baseType: !1385, size: 128, offset: 256)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1338, line: 14, size: 128, elements: !1386)
!1386 = !{!1387}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1385, file: !1338, line: 15, baseType: !794, size: 128)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1352, file: !20, line: 166, baseType: !1389, size: 64, offset: 384)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!1342}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1352, file: !20, line: 167, baseType: !1342, size: 64, offset: 448)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1334, file: !20, line: 123, baseType: !1394, size: 8, offset: 448)
!1394 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !461, line: 17, baseType: !1395)
!1395 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !463, line: 21, baseType: !137)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1334, file: !20, line: 124, baseType: !1394, size: 8, offset: 456)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1334, file: !20, line: 125, baseType: !1394, size: 8, offset: 464)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1334, file: !20, line: 126, baseType: !1394, size: 8, offset: 472)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1318, file: !1260, line: 572, baseType: !1334, size: 512, offset: 1216)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1318, file: !1260, line: 580, baseType: !1401, size: 64, offset: 1728)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1259, file: !1260, line: 721, baseType: !7, size: 32, offset: 3584)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1259, file: !1260, line: 722, baseType: !212, size: 32, offset: 3616)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1259, file: !1260, line: 723, baseType: !1405, size: 64, offset: 3648)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1407)
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1408, line: 17, baseType: !1409)
!1408 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1408, line: 17, size: 64, elements: !1410)
!1410 = !{!1411}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1409, file: !1408, line: 17, baseType: !1412, size: 64)
!1412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 64, elements: !1413)
!1413 = !{!1414}
!1414 = !DISubrange(count: 1)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1259, file: !1260, line: 724, baseType: !1407, size: 64, offset: 3712)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1259, file: !1260, line: 749, baseType: !1417, offset: 3776)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1260, line: 290, elements: !296)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1259, file: !1260, line: 751, baseType: !269, size: 128, offset: 3776)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1259, file: !1260, line: 757, baseType: !1016, size: 64, offset: 3904)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1259, file: !1260, line: 758, baseType: !1016, size: 64, offset: 3968)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1259, file: !1260, line: 761, baseType: !1422, size: 320, offset: 4032)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1193, line: 34, size: 320, elements: !1423)
!1423 = !{!1424, !1425}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1422, file: !1193, line: 35, baseType: !466, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1422, file: !1193, line: 36, baseType: !1426, size: 256, offset: 64)
!1426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1023, size: 256, elements: !1197)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1259, file: !1260, line: 766, baseType: !212, size: 32, offset: 4352)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1259, file: !1260, line: 767, baseType: !212, size: 32, offset: 4384)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1259, file: !1260, line: 768, baseType: !212, size: 32, offset: 4416)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1259, file: !1260, line: 770, baseType: !212, size: 32, offset: 4448)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1259, file: !1260, line: 772, baseType: !188, size: 64, offset: 4480)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1259, file: !1260, line: 775, baseType: !7, size: 32, offset: 4544)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1259, file: !1260, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1259, file: !1260, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1259, file: !1260, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1259, file: !1260, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1259, file: !1260, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1259, file: !1260, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1259, file: !1260, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1259, file: !1260, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1259, file: !1260, line: 831, baseType: !188, size: 64, offset: 4672)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1259, file: !1260, line: 833, baseType: !1443, size: 384, offset: 4736)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1444)
!1444 = !{!1445, !1450}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1443, file: !25, line: 26, baseType: !1446, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{!356, !1449}
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, scope: !1443, file: !25, line: 27, baseType: !1451, size: 320, offset: 64)
!1451 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1443, file: !25, line: 27, size: 320, elements: !1452)
!1452 = !{!1453, !1463, !1490}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1451, file: !25, line: 36, baseType: !1454, size: 320)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1451, file: !25, line: 29, size: 320, elements: !1455)
!1455 = !{!1456, !1458, !1459, !1460, !1461, !1462}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1454, file: !25, line: 30, baseType: !1457, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1454, file: !25, line: 31, baseType: !460, size: 32, offset: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1454, file: !25, line: 32, baseType: !460, size: 32, offset: 96)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1454, file: !25, line: 33, baseType: !460, size: 32, offset: 128)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1454, file: !25, line: 34, baseType: !466, size: 64, offset: 192)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1454, file: !25, line: 35, baseType: !1457, size: 64, offset: 256)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1451, file: !25, line: 46, baseType: !1464, size: 192)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1451, file: !25, line: 38, size: 192, elements: !1465)
!1465 = !{!1466, !1467, !1468, !1489}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1464, file: !25, line: 39, baseType: !1376, size: 32)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1464, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1468 = !DIDerivedType(tag: DW_TAG_member, scope: !1464, file: !25, line: 41, baseType: !1469, size: 64, offset: 64)
!1469 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1464, file: !25, line: 41, size: 64, elements: !1470)
!1470 = !{!1471, !1479}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1469, file: !25, line: 42, baseType: !1472, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1474, line: 7, size: 128, elements: !1475)
!1474 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1475 = !{!1476, !1478}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1473, file: !1474, line: 8, baseType: !1477, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !354, line: 93, baseType: !575)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1473, file: !1474, line: 9, baseType: !575, size: 64, offset: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1469, file: !25, line: 43, baseType: !1480, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1482, line: 7, size: 64, elements: !1483)
!1482 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1483 = !{!1484, !1488}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1481, file: !1482, line: 8, baseType: !1485, size: 32)
!1485 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1482, line: 5, baseType: !1486)
!1486 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !461, line: 20, baseType: !1487)
!1487 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !463, line: 26, baseType: !212)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1481, file: !1482, line: 9, baseType: !1486, size: 32, offset: 32)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1464, file: !25, line: 45, baseType: !466, size: 64, offset: 128)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1451, file: !25, line: 54, baseType: !1491, size: 256)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1451, file: !25, line: 48, size: 256, elements: !1492)
!1492 = !{!1493, !1496, !1497, !1498, !1499}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1491, file: !25, line: 49, baseType: !1494, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1491, file: !25, line: 50, baseType: !212, size: 32, offset: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1491, file: !25, line: 51, baseType: !212, size: 32, offset: 96)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1491, file: !25, line: 52, baseType: !188, size: 64, offset: 128)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1491, file: !25, line: 53, baseType: !188, size: 64, offset: 192)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1259, file: !1260, line: 835, baseType: !1501, size: 32, offset: 5120)
!1501 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !144, line: 22, baseType: !1502)
!1502 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !354, line: 28, baseType: !212)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1259, file: !1260, line: 836, baseType: !1501, size: 32, offset: 5152)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1259, file: !1260, line: 840, baseType: !188, size: 64, offset: 5184)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1259, file: !1260, line: 849, baseType: !1258, size: 64, offset: 5248)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1259, file: !1260, line: 852, baseType: !1258, size: 64, offset: 5312)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1259, file: !1260, line: 857, baseType: !269, size: 128, offset: 5376)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1259, file: !1260, line: 858, baseType: !269, size: 128, offset: 5504)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1259, file: !1260, line: 859, baseType: !1258, size: 64, offset: 5632)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1259, file: !1260, line: 867, baseType: !269, size: 128, offset: 5696)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1259, file: !1260, line: 868, baseType: !269, size: 128, offset: 5824)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1259, file: !1260, line: 871, baseType: !1513, size: 64, offset: 5952)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1515)
!1515 = !{!1516, !1517, !1518, !1519, !1521, !1522, !1529, !1530}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1514, file: !53, line: 61, baseType: !1272, size: 32)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1514, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1514, file: !53, line: 63, baseType: !282, offset: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1514, file: !53, line: 65, baseType: !1520, size: 256, offset: 64)
!1520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !677, size: 256, elements: !1197)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1514, file: !53, line: 66, baseType: !677, size: 64, offset: 320)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1514, file: !53, line: 68, baseType: !1523, size: 128, offset: 384)
!1523 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1524, line: 40, baseType: !1525)
!1524 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1524, line: 36, size: 128, elements: !1526)
!1526 = !{!1527, !1528}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1525, file: !1524, line: 37, baseType: !282)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1525, file: !1524, line: 38, baseType: !269, size: 128)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1514, file: !53, line: 69, baseType: !410, size: 128, align: 64, offset: 512)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1514, file: !53, line: 70, baseType: !1531, size: 128, offset: 640)
!1531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1532, size: 128, elements: !1413)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1533)
!1533 = !{!1534, !1535}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1532, file: !53, line: 55, baseType: !212, size: 32)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1532, file: !53, line: 56, baseType: !1536, size: 64, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1259, file: !1260, line: 872, baseType: !1539, size: 512, offset: 6016)
!1539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !681, size: 512, elements: !1197)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1259, file: !1260, line: 873, baseType: !269, size: 128, offset: 6528)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1259, file: !1260, line: 874, baseType: !269, size: 128, offset: 6656)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1259, file: !1260, line: 876, baseType: !1543, size: 64, offset: 6784)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1545, line: 26, size: 192, elements: !1546)
!1545 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1546 = !{!1547, !1548}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1544, file: !1545, line: 27, baseType: !7, size: 32)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1544, file: !1545, line: 28, baseType: !1549, size: 128, offset: 64)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1550, line: 43, size: 128, elements: !1551)
!1550 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1551 = !{!1552, !1553}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1549, file: !1550, line: 44, baseType: !822)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1549, file: !1550, line: 45, baseType: !269, size: 128)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1259, file: !1260, line: 879, baseType: !747, size: 64, offset: 6848)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1259, file: !1260, line: 882, baseType: !747, size: 64, offset: 6912)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1259, file: !1260, line: 884, baseType: !466, size: 64, offset: 6976)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1259, file: !1260, line: 885, baseType: !466, size: 64, offset: 7040)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1259, file: !1260, line: 890, baseType: !466, size: 64, offset: 7104)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1259, file: !1260, line: 891, baseType: !1560, size: 128, offset: 7168)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1260, line: 242, size: 128, elements: !1561)
!1561 = !{!1562, !1563, !1564}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1560, file: !1260, line: 244, baseType: !466, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1560, file: !1260, line: 245, baseType: !466, size: 64, offset: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1560, file: !1260, line: 246, baseType: !822, offset: 128)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1259, file: !1260, line: 900, baseType: !188, size: 64, offset: 7296)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1259, file: !1260, line: 901, baseType: !188, size: 64, offset: 7360)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1259, file: !1260, line: 904, baseType: !466, size: 64, offset: 7424)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1259, file: !1260, line: 907, baseType: !466, size: 64, offset: 7488)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1259, file: !1260, line: 910, baseType: !188, size: 64, offset: 7552)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1259, file: !1260, line: 911, baseType: !188, size: 64, offset: 7616)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1259, file: !1260, line: 914, baseType: !1572, size: 640, offset: 7680)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1573, line: 123, size: 640, elements: !1574)
!1573 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1574 = !{!1575, !1581, !1582}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1572, file: !1573, line: 124, baseType: !1576, size: 576)
!1576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1577, size: 576, elements: !201)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1573, line: 108, size: 192, elements: !1578)
!1578 = !{!1579, !1580}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1577, file: !1573, line: 109, baseType: !466, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1577, file: !1573, line: 110, baseType: !1385, size: 128, offset: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1572, file: !1573, line: 125, baseType: !7, size: 32, offset: 576)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1572, file: !1573, line: 126, baseType: !7, size: 32, offset: 608)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1259, file: !1260, line: 917, baseType: !1584, size: 192, offset: 8320)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1573, line: 134, size: 192, elements: !1585)
!1585 = !{!1586, !1587}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1584, file: !1573, line: 135, baseType: !410, size: 128, align: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1584, file: !1573, line: 136, baseType: !7, size: 32, offset: 128)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1259, file: !1260, line: 923, baseType: !1589, size: 64, offset: 8512)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1591)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1592, line: 111, size: 1280, elements: !1593)
!1592 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1593 = !{!1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1613, !1614, !1615, !1616, !1617, !1618, !1725, !1726, !1727, !1728, !1754, !1757, !1767}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1591, file: !1592, line: 112, baseType: !789, size: 32)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1591, file: !1592, line: 120, baseType: !479, size: 32, offset: 32)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1591, file: !1592, line: 121, baseType: !487, size: 32, offset: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1591, file: !1592, line: 122, baseType: !479, size: 32, offset: 96)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1591, file: !1592, line: 123, baseType: !487, size: 32, offset: 128)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1591, file: !1592, line: 124, baseType: !479, size: 32, offset: 160)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1591, file: !1592, line: 125, baseType: !487, size: 32, offset: 192)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1591, file: !1592, line: 126, baseType: !479, size: 32, offset: 224)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1591, file: !1592, line: 127, baseType: !487, size: 32, offset: 256)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1591, file: !1592, line: 128, baseType: !7, size: 32, offset: 288)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1591, file: !1592, line: 129, baseType: !1605, size: 64, offset: 320)
!1605 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1606, line: 26, baseType: !1607)
!1606 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1606, line: 24, size: 64, elements: !1608)
!1608 = !{!1609}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1607, file: !1606, line: 25, baseType: !1610, size: 64)
!1610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 64, elements: !1611)
!1611 = !{!1612}
!1612 = !DISubrange(count: 2)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1591, file: !1592, line: 130, baseType: !1605, size: 64, offset: 384)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1591, file: !1592, line: 131, baseType: !1605, size: 64, offset: 448)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1591, file: !1592, line: 132, baseType: !1605, size: 64, offset: 512)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1591, file: !1592, line: 133, baseType: !1605, size: 64, offset: 576)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1591, file: !1592, line: 135, baseType: !137, size: 8, offset: 640)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1591, file: !1592, line: 137, baseType: !1619, size: 64, offset: 704)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1621, line: 189, size: 1664, elements: !1622)
!1621 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1622 = !{!1623, !1624, !1627, !1632, !1633, !1636, !1637, !1642, !1643, !1644, !1645, !1647, !1648, !1649, !1650, !1651, !1689, !1710}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1620, file: !1621, line: 190, baseType: !1272, size: 32)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1620, file: !1621, line: 191, baseType: !1625, size: 32, offset: 32)
!1625 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1621, line: 28, baseType: !1626)
!1626 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !144, line: 98, baseType: !1486)
!1627 = !DIDerivedType(tag: DW_TAG_member, scope: !1620, file: !1621, line: 192, baseType: !1628, size: 192, offset: 64)
!1628 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1620, file: !1621, line: 192, size: 192, elements: !1629)
!1629 = !{!1630, !1631}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1628, file: !1621, line: 193, baseType: !269, size: 128)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1628, file: !1621, line: 194, baseType: !802, size: 192, align: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1620, file: !1621, line: 199, baseType: !809, size: 256, offset: 256)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1620, file: !1621, line: 200, baseType: !1634, size: 64, offset: 512)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1621, line: 200, flags: DIFlagFwdDecl)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1620, file: !1621, line: 201, baseType: !134, size: 64, offset: 576)
!1637 = !DIDerivedType(tag: DW_TAG_member, scope: !1620, file: !1621, line: 202, baseType: !1638, size: 64, offset: 640)
!1638 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1620, file: !1621, line: 202, size: 64, elements: !1639)
!1639 = !{!1640, !1641}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1638, file: !1621, line: 203, baseType: !581, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1638, file: !1621, line: 204, baseType: !581, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1620, file: !1621, line: 206, baseType: !581, size: 64, offset: 704)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1620, file: !1621, line: 207, baseType: !479, size: 32, offset: 768)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1620, file: !1621, line: 208, baseType: !487, size: 32, offset: 800)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1620, file: !1621, line: 209, baseType: !1646, size: 32, offset: 832)
!1646 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1621, line: 31, baseType: !601)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1620, file: !1621, line: 210, baseType: !140, size: 16, offset: 864)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1620, file: !1621, line: 211, baseType: !140, size: 16, offset: 880)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1620, file: !1621, line: 215, baseType: !1247, size: 16, offset: 896)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1620, file: !1621, line: 222, baseType: !188, size: 64, offset: 960)
!1651 = !DIDerivedType(tag: DW_TAG_member, scope: !1620, file: !1621, line: 239, baseType: !1652, size: 320, offset: 1024)
!1652 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1620, file: !1621, line: 239, size: 320, elements: !1653)
!1653 = !{!1654, !1681}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1652, file: !1621, line: 240, baseType: !1655, size: 320)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1621, line: 108, size: 320, elements: !1656)
!1656 = !{!1657, !1658, !1670, !1673, !1680}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1655, file: !1621, line: 110, baseType: !188, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, scope: !1655, file: !1621, line: 111, baseType: !1659, size: 64, offset: 64)
!1659 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1655, file: !1621, line: 111, size: 64, elements: !1660)
!1660 = !{!1661, !1669}
!1661 = !DIDerivedType(tag: DW_TAG_member, scope: !1659, file: !1621, line: 112, baseType: !1662, size: 64)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1659, file: !1621, line: 112, size: 64, elements: !1663)
!1663 = !{!1664, !1665}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1662, file: !1621, line: 114, baseType: !901, size: 16)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1662, file: !1621, line: 115, baseType: !1666, size: 48, offset: 16)
!1666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 48, elements: !1667)
!1667 = !{!1668}
!1668 = !DISubrange(count: 6)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1659, file: !1621, line: 121, baseType: !188, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1655, file: !1621, line: 123, baseType: !1671, size: 64, offset: 128)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1621, line: 96, flags: DIFlagFwdDecl)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1655, file: !1621, line: 124, baseType: !1674, size: 64, offset: 192)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1621, line: 102, size: 192, elements: !1676)
!1676 = !{!1677, !1678, !1679}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1675, file: !1621, line: 103, baseType: !410, size: 128, align: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1675, file: !1621, line: 104, baseType: !1272, size: 32, offset: 128)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1675, file: !1621, line: 105, baseType: !206, size: 8, offset: 160)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1655, file: !1621, line: 125, baseType: !224, size: 64, offset: 256)
!1681 = !DIDerivedType(tag: DW_TAG_member, scope: !1652, file: !1621, line: 241, baseType: !1682, size: 320)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1652, file: !1621, line: 241, size: 320, elements: !1683)
!1683 = !{!1684, !1685, !1686, !1687, !1688}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1682, file: !1621, line: 242, baseType: !188, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1682, file: !1621, line: 243, baseType: !188, size: 64, offset: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1682, file: !1621, line: 244, baseType: !1671, size: 64, offset: 128)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1682, file: !1621, line: 245, baseType: !1674, size: 64, offset: 192)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1682, file: !1621, line: 246, baseType: !323, size: 64, offset: 256)
!1689 = !DIDerivedType(tag: DW_TAG_member, scope: !1620, file: !1621, line: 254, baseType: !1690, size: 256, offset: 1344)
!1690 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1620, file: !1621, line: 254, size: 256, elements: !1691)
!1691 = !{!1692, !1698}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1690, file: !1621, line: 255, baseType: !1693, size: 256)
!1693 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1621, line: 128, size: 256, elements: !1694)
!1694 = !{!1695, !1696}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1693, file: !1621, line: 129, baseType: !134, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1693, file: !1621, line: 130, baseType: !1697, size: 256)
!1697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 256, elements: !1197)
!1698 = !DIDerivedType(tag: DW_TAG_member, scope: !1690, file: !1621, line: 256, baseType: !1699, size: 256)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1690, file: !1621, line: 256, size: 256, elements: !1700)
!1700 = !{!1701, !1702}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1699, file: !1621, line: 258, baseType: !269, size: 128)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1699, file: !1621, line: 259, baseType: !1703, size: 128, offset: 128)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1704, line: 22, size: 128, elements: !1705)
!1704 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1705 = !{!1706, !1709}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1703, file: !1704, line: 23, baseType: !1707, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1704, line: 23, flags: DIFlagFwdDecl)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1703, file: !1704, line: 24, baseType: !188, size: 64, offset: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1620, file: !1621, line: 274, baseType: !1711, size: 64, offset: 1600)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1621, line: 170, size: 192, elements: !1713)
!1713 = !{!1714, !1723, !1724}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1712, file: !1621, line: 171, baseType: !1715, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1621, line: 165, baseType: !1716)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!212, !1619, !1719, !1721, !1619}
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1672)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1693)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1712, file: !1621, line: 172, baseType: !1619, size: 64, offset: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1712, file: !1621, line: 173, baseType: !1671, size: 64, offset: 128)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1591, file: !1592, line: 138, baseType: !1619, size: 64, offset: 768)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1591, file: !1592, line: 139, baseType: !1619, size: 64, offset: 832)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1591, file: !1592, line: 140, baseType: !1619, size: 64, offset: 896)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1591, file: !1592, line: 145, baseType: !1729, size: 64, offset: 960)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1731, line: 13, size: 896, elements: !1732)
!1731 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1732 = !{!1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1730, file: !1731, line: 14, baseType: !1272, size: 32)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1730, file: !1731, line: 15, baseType: !789, size: 32, offset: 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1730, file: !1731, line: 16, baseType: !789, size: 32, offset: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1730, file: !1731, line: 21, baseType: !813, size: 64, offset: 128)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1730, file: !1731, line: 27, baseType: !188, size: 64, offset: 192)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1730, file: !1731, line: 28, baseType: !188, size: 64, offset: 256)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1730, file: !1731, line: 29, baseType: !813, size: 64, offset: 320)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1730, file: !1731, line: 32, baseType: !681, size: 128, offset: 384)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1730, file: !1731, line: 33, baseType: !479, size: 32, offset: 512)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1730, file: !1731, line: 37, baseType: !813, size: 64, offset: 576)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1730, file: !1731, line: 44, baseType: !1744, size: 256, offset: 640)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1745, line: 15, size: 256, elements: !1746)
!1745 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1746 = !{!1747, !1748, !1749, !1750, !1751, !1752, !1753}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1744, file: !1745, line: 16, baseType: !822)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1744, file: !1745, line: 18, baseType: !212, size: 32)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1744, file: !1745, line: 19, baseType: !212, size: 32, offset: 32)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1744, file: !1745, line: 20, baseType: !212, size: 32, offset: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1744, file: !1745, line: 21, baseType: !212, size: 32, offset: 96)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1744, file: !1745, line: 22, baseType: !188, size: 64, offset: 128)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1744, file: !1745, line: 23, baseType: !188, size: 64, offset: 192)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1591, file: !1592, line: 146, baseType: !1755, size: 64, offset: 1024)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !480, line: 18, flags: DIFlagFwdDecl)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1591, file: !1592, line: 147, baseType: !1758, size: 64, offset: 1088)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1592, line: 25, size: 64, elements: !1760)
!1760 = !{!1761, !1762, !1763}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1759, file: !1592, line: 26, baseType: !789, size: 32)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1759, file: !1592, line: 27, baseType: !212, size: 32, offset: 32)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1759, file: !1592, line: 28, baseType: !1764, offset: 64)
!1764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !487, elements: !1765)
!1765 = !{!1766}
!1766 = !DISubrange(count: 0)
!1767 = !DIDerivedType(tag: DW_TAG_member, scope: !1591, file: !1592, line: 149, baseType: !1768, size: 128, offset: 1152)
!1768 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1591, file: !1592, line: 149, size: 128, elements: !1769)
!1769 = !{!1770, !1771}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1768, file: !1592, line: 150, baseType: !212, size: 32)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1768, file: !1592, line: 151, baseType: !410, size: 128, align: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1259, file: !1260, line: 926, baseType: !1589, size: 64, offset: 8576)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1259, file: !1260, line: 929, baseType: !1589, size: 64, offset: 8640)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1259, file: !1260, line: 933, baseType: !1619, size: 64, offset: 8704)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1259, file: !1260, line: 943, baseType: !1776, size: 128, offset: 8768)
!1776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 128, elements: !1777)
!1777 = !{!1778}
!1778 = !DISubrange(count: 16)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1259, file: !1260, line: 945, baseType: !1780, size: 64, offset: 8896)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1260, line: 49, flags: DIFlagFwdDecl)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1259, file: !1260, line: 956, baseType: !1783, size: 64, offset: 8960)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1260, line: 45, flags: DIFlagFwdDecl)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1259, file: !1260, line: 959, baseType: !1786, size: 64, offset: 9024)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1260, line: 959, flags: DIFlagFwdDecl)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1259, file: !1260, line: 962, baseType: !1789, size: 64, offset: 9088)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1260, line: 66, flags: DIFlagFwdDecl)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1259, file: !1260, line: 966, baseType: !1792, size: 64, offset: 9152)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1794, line: 35, flags: DIFlagFwdDecl)
!1794 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1259, file: !1260, line: 969, baseType: !1796, size: 64, offset: 9216)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1798, line: 82, size: 7296, elements: !1799)
!1798 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1799 = !{!1800, !1801, !1802, !1803, !1804, !1805, !1806, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1835, !1844, !1845, !1847, !1848, !1849, !1852, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1882, !1883, !1890, !1891, !1892, !1893, !1894, !1895}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1797, file: !1798, line: 83, baseType: !1272, size: 32)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1797, file: !1798, line: 84, baseType: !789, size: 32, offset: 32)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1797, file: !1798, line: 85, baseType: !212, size: 32, offset: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1797, file: !1798, line: 86, baseType: !269, size: 128, offset: 128)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1797, file: !1798, line: 88, baseType: !1523, size: 128, offset: 256)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1797, file: !1798, line: 91, baseType: !1258, size: 64, offset: 384)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1797, file: !1798, line: 94, baseType: !1807, size: 192, offset: 448)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1808, line: 30, size: 192, elements: !1809)
!1808 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1809 = !{!1810, !1811}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1807, file: !1808, line: 31, baseType: !269, size: 128)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1807, file: !1808, line: 32, baseType: !1812, size: 64, offset: 128)
!1812 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1813, line: 25, baseType: !1814)
!1813 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1813, line: 23, size: 64, elements: !1815)
!1815 = !{!1816}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1814, file: !1813, line: 24, baseType: !1412, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1797, file: !1798, line: 97, baseType: !677, size: 64, offset: 640)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1797, file: !1798, line: 100, baseType: !212, size: 32, offset: 704)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1797, file: !1798, line: 106, baseType: !212, size: 32, offset: 736)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1797, file: !1798, line: 107, baseType: !1258, size: 64, offset: 768)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1797, file: !1798, line: 110, baseType: !212, size: 32, offset: 832)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1797, file: !1798, line: 111, baseType: !7, size: 32, offset: 864)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1797, file: !1798, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1797, file: !1798, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1797, file: !1798, line: 128, baseType: !212, size: 32, offset: 928)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1797, file: !1798, line: 129, baseType: !269, size: 128, offset: 960)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1797, file: !1798, line: 132, baseType: !1334, size: 512, offset: 1088)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1797, file: !1798, line: 133, baseType: !1342, size: 64, offset: 1600)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1797, file: !1798, line: 140, baseType: !1830, size: 256, offset: 1664)
!1830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1831, size: 256, elements: !1611)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1798, line: 38, size: 128, elements: !1832)
!1832 = !{!1833, !1834}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1831, file: !1798, line: 39, baseType: !466, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1831, file: !1798, line: 40, baseType: !466, size: 64, offset: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1797, file: !1798, line: 146, baseType: !1836, size: 192, offset: 1920)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1798, line: 66, size: 192, elements: !1837)
!1837 = !{!1838}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1836, file: !1798, line: 67, baseType: !1839, size: 192)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1798, line: 47, size: 192, elements: !1840)
!1840 = !{!1841, !1842, !1843}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1839, file: !1798, line: 48, baseType: !815, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1839, file: !1798, line: 49, baseType: !815, size: 64, offset: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1839, file: !1798, line: 50, baseType: !815, size: 64, offset: 128)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1797, file: !1798, line: 150, baseType: !1572, size: 640, offset: 2112)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1797, file: !1798, line: 153, baseType: !1846, size: 256, offset: 2752)
!1846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1513, size: 256, elements: !1197)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1797, file: !1798, line: 159, baseType: !1513, size: 64, offset: 3008)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1797, file: !1798, line: 162, baseType: !212, size: 32, offset: 3072)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1797, file: !1798, line: 164, baseType: !1850, size: 64, offset: 3136)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1798, line: 164, flags: DIFlagFwdDecl)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1797, file: !1798, line: 175, baseType: !1853, size: 32, offset: 3200)
!1853 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !433, line: 805, baseType: !1854)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !433, line: 798, size: 32, elements: !1855)
!1855 = !{!1856, !1857}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1854, file: !433, line: 803, baseType: !432, size: 32)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1854, file: !433, line: 804, baseType: !282, offset: 32)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1797, file: !1798, line: 176, baseType: !466, size: 64, offset: 3264)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1797, file: !1798, line: 176, baseType: !466, size: 64, offset: 3328)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1797, file: !1798, line: 176, baseType: !466, size: 64, offset: 3392)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1797, file: !1798, line: 176, baseType: !466, size: 64, offset: 3456)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1797, file: !1798, line: 177, baseType: !466, size: 64, offset: 3520)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1797, file: !1798, line: 178, baseType: !466, size: 64, offset: 3584)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1797, file: !1798, line: 179, baseType: !1560, size: 128, offset: 3648)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1797, file: !1798, line: 180, baseType: !188, size: 64, offset: 3776)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1797, file: !1798, line: 180, baseType: !188, size: 64, offset: 3840)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1797, file: !1798, line: 180, baseType: !188, size: 64, offset: 3904)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1797, file: !1798, line: 180, baseType: !188, size: 64, offset: 3968)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1797, file: !1798, line: 181, baseType: !188, size: 64, offset: 4032)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1797, file: !1798, line: 181, baseType: !188, size: 64, offset: 4096)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1797, file: !1798, line: 181, baseType: !188, size: 64, offset: 4160)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1797, file: !1798, line: 181, baseType: !188, size: 64, offset: 4224)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1797, file: !1798, line: 182, baseType: !188, size: 64, offset: 4288)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1797, file: !1798, line: 182, baseType: !188, size: 64, offset: 4352)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1797, file: !1798, line: 182, baseType: !188, size: 64, offset: 4416)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1797, file: !1798, line: 182, baseType: !188, size: 64, offset: 4480)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1797, file: !1798, line: 183, baseType: !188, size: 64, offset: 4544)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1797, file: !1798, line: 183, baseType: !188, size: 64, offset: 4608)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1797, file: !1798, line: 184, baseType: !1880, offset: 4672)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1881, line: 12, elements: !296)
!1881 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1797, file: !1798, line: 192, baseType: !468, size: 64, offset: 4672)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1797, file: !1798, line: 203, baseType: !1884, size: 2048, offset: 4736)
!1884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1885, size: 2048, elements: !1777)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1886, line: 43, size: 128, elements: !1887)
!1886 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1887 = !{!1888, !1889}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1885, file: !1886, line: 44, baseType: !369, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1885, file: !1886, line: 45, baseType: !369, size: 64, offset: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1797, file: !1798, line: 220, baseType: !206, size: 8, offset: 6784)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1797, file: !1798, line: 221, baseType: !1247, size: 16, offset: 6800)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1797, file: !1798, line: 222, baseType: !1247, size: 16, offset: 6816)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1797, file: !1798, line: 224, baseType: !1016, size: 64, offset: 6848)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1797, file: !1798, line: 227, baseType: !1215, size: 192, offset: 6912)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1797, file: !1798, line: 233, baseType: !1215, size: 192, offset: 7104)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1259, file: !1260, line: 970, baseType: !1897, size: 64, offset: 9280)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1798, line: 20, size: 16576, elements: !1899)
!1899 = !{!1900, !1901, !1902, !1903}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1898, file: !1798, line: 21, baseType: !282)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1898, file: !1798, line: 22, baseType: !1272, size: 32)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1898, file: !1798, line: 23, baseType: !1523, size: 128, offset: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1898, file: !1798, line: 24, baseType: !1904, size: 16384, offset: 192)
!1904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1905, size: 16384, elements: !326)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1808, line: 49, size: 256, elements: !1906)
!1906 = !{!1907}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1905, file: !1808, line: 50, baseType: !1908, size: 256)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1808, line: 35, size: 256, elements: !1909)
!1909 = !{!1910, !1917, !1918, !1922}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1908, file: !1808, line: 37, baseType: !1911, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1912, line: 19, baseType: !1913)
!1912 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1912, line: 18, baseType: !1915)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{null, !212}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1908, file: !1808, line: 38, baseType: !188, size: 64, offset: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1908, file: !1808, line: 44, baseType: !1919, size: 64, offset: 128)
!1919 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1912, line: 22, baseType: !1920)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1912, line: 21, baseType: !151)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1908, file: !1808, line: 46, baseType: !1812, size: 64, offset: 192)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1259, file: !1260, line: 971, baseType: !1812, size: 64, offset: 9344)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1259, file: !1260, line: 972, baseType: !1812, size: 64, offset: 9408)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1259, file: !1260, line: 974, baseType: !1812, size: 64, offset: 9472)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1259, file: !1260, line: 975, baseType: !1807, size: 192, offset: 9536)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1259, file: !1260, line: 976, baseType: !188, size: 64, offset: 9728)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1259, file: !1260, line: 977, baseType: !367, size: 64, offset: 9792)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1259, file: !1260, line: 978, baseType: !7, size: 32, offset: 9856)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1259, file: !1260, line: 980, baseType: !413, size: 64, offset: 9920)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1259, file: !1260, line: 989, baseType: !1932, size: 128, offset: 9984)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1933, line: 35, size: 128, elements: !1934)
!1933 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1934 = !{!1935, !1936, !1937}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1932, file: !1933, line: 36, baseType: !212, size: 32)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1932, file: !1933, line: 37, baseType: !789, size: 32, offset: 32)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1932, file: !1933, line: 38, baseType: !1938, size: 64, offset: 64)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1933, line: 23, flags: DIFlagFwdDecl)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1259, file: !1260, line: 992, baseType: !466, size: 64, offset: 10112)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1259, file: !1260, line: 993, baseType: !466, size: 64, offset: 10176)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1259, file: !1260, line: 996, baseType: !282, offset: 10240)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1259, file: !1260, line: 999, baseType: !822, offset: 10240)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1259, file: !1260, line: 1001, baseType: !1945, size: 64, offset: 10240)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1260, line: 636, size: 64, elements: !1946)
!1946 = !{!1947}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1945, file: !1260, line: 637, baseType: !1948, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1259, file: !1260, line: 1005, baseType: !794, size: 128, offset: 10304)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1259, file: !1260, line: 1007, baseType: !1258, size: 64, offset: 10432)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1259, file: !1260, line: 1009, baseType: !1952, size: 64, offset: 10496)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1260, line: 1009, flags: DIFlagFwdDecl)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1259, file: !1260, line: 1043, baseType: !134, size: 64, offset: 10560)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1259, file: !1260, line: 1046, baseType: !1956, size: 64, offset: 10624)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1260, line: 41, flags: DIFlagFwdDecl)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1259, file: !1260, line: 1050, baseType: !1959, size: 64, offset: 10688)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1260, line: 42, flags: DIFlagFwdDecl)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1259, file: !1260, line: 1054, baseType: !1962, size: 64, offset: 10752)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1260, line: 55, flags: DIFlagFwdDecl)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1259, file: !1260, line: 1056, baseType: !1965, size: 64, offset: 10816)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1260, line: 40, flags: DIFlagFwdDecl)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1259, file: !1260, line: 1058, baseType: !1968, size: 64, offset: 10880)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1970, line: 99, size: 704, elements: !1971)
!1970 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1971 = !{!1972, !1973, !1974, !1975, !1976, !1977, !1978, !1997, !1998}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1969, file: !1970, line: 100, baseType: !813, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1969, file: !1970, line: 101, baseType: !789, size: 32, offset: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1969, file: !1970, line: 102, baseType: !789, size: 32, offset: 96)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1969, file: !1970, line: 105, baseType: !282, offset: 128)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1969, file: !1970, line: 107, baseType: !140, size: 16, offset: 128)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1969, file: !1970, line: 109, baseType: !781, size: 128, offset: 192)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1969, file: !1970, line: 110, baseType: !1979, size: 64, offset: 320)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1970, line: 73, size: 448, elements: !1981)
!1981 = !{!1982, !1985, !1986, !1991, !1996}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1980, file: !1970, line: 74, baseType: !1983, size: 64)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1970, line: 74, flags: DIFlagFwdDecl)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1980, file: !1970, line: 75, baseType: !1968, size: 64, offset: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, scope: !1980, file: !1970, line: 83, baseType: !1987, size: 128, offset: 128)
!1987 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1980, file: !1970, line: 83, size: 128, elements: !1988)
!1988 = !{!1989, !1990}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1987, file: !1970, line: 84, baseType: !269, size: 128)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1987, file: !1970, line: 85, baseType: !977, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, scope: !1980, file: !1970, line: 87, baseType: !1992, size: 128, offset: 256)
!1992 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1980, file: !1970, line: 87, size: 128, elements: !1993)
!1993 = !{!1994, !1995}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1992, file: !1970, line: 88, baseType: !681, size: 128)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1992, file: !1970, line: 89, baseType: !410, size: 128, align: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1980, file: !1970, line: 92, baseType: !7, size: 32, offset: 384)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1969, file: !1970, line: 111, baseType: !677, size: 64, offset: 384)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1969, file: !1970, line: 113, baseType: !1999, size: 256, offset: 448)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2000, line: 102, size: 256, elements: !2001)
!2000 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2001 = !{!2002, !2003, !2004}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1999, file: !2000, line: 103, baseType: !813, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1999, file: !2000, line: 104, baseType: !269, size: 128, offset: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1999, file: !2000, line: 105, baseType: !2005, size: 64, offset: 192)
!2005 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2000, line: 21, baseType: !2006)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DISubroutineType(types: !2008)
!2008 = !{null, !2009}
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1259, file: !1260, line: 1061, baseType: !2011, size: 64, offset: 10944)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1260, line: 43, flags: DIFlagFwdDecl)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1259, file: !1260, line: 1064, baseType: !188, size: 64, offset: 11008)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1259, file: !1260, line: 1065, baseType: !2015, size: 64, offset: 11072)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1808, line: 14, baseType: !2017)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1808, line: 12, size: 384, elements: !2018)
!2018 = !{!2019}
!2019 = !DIDerivedType(tag: DW_TAG_member, scope: !2017, file: !1808, line: 13, baseType: !2020, size: 384)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2017, file: !1808, line: 13, size: 384, elements: !2021)
!2021 = !{!2022, !2023, !2024, !2025}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2020, file: !1808, line: 13, baseType: !212, size: 32)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2020, file: !1808, line: 13, baseType: !212, size: 32, offset: 32)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2020, file: !1808, line: 13, baseType: !212, size: 32, offset: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2020, file: !1808, line: 13, baseType: !2026, size: 256, offset: 128)
!2026 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2027, line: 32, size: 256, elements: !2028)
!2027 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2028 = !{!2029, !2034, !2047, !2053, !2062, !2082, !2087}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2026, file: !2027, line: 37, baseType: !2030, size: 64)
!2030 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2026, file: !2027, line: 34, size: 64, elements: !2031)
!2031 = !{!2032, !2033}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2030, file: !2027, line: 35, baseType: !1502, size: 32)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2030, file: !2027, line: 36, baseType: !485, size: 32, offset: 32)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2026, file: !2027, line: 45, baseType: !2035, size: 192)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2026, file: !2027, line: 40, size: 192, elements: !2036)
!2036 = !{!2037, !2039, !2040, !2046}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2035, file: !2027, line: 41, baseType: !2038, size: 32)
!2038 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !354, line: 95, baseType: !212)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2035, file: !2027, line: 42, baseType: !212, size: 32, offset: 32)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2035, file: !2027, line: 43, baseType: !2041, size: 64, offset: 64)
!2041 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2027, line: 11, baseType: !2042)
!2042 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2027, line: 8, size: 64, elements: !2043)
!2043 = !{!2044, !2045}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2042, file: !2027, line: 9, baseType: !212, size: 32)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2042, file: !2027, line: 10, baseType: !134, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2035, file: !2027, line: 44, baseType: !212, size: 32, offset: 128)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2026, file: !2027, line: 52, baseType: !2048, size: 128)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2026, file: !2027, line: 48, size: 128, elements: !2049)
!2049 = !{!2050, !2051, !2052}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2048, file: !2027, line: 49, baseType: !1502, size: 32)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2048, file: !2027, line: 50, baseType: !485, size: 32, offset: 32)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2048, file: !2027, line: 51, baseType: !2041, size: 64, offset: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2026, file: !2027, line: 61, baseType: !2054, size: 256)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2026, file: !2027, line: 55, size: 256, elements: !2055)
!2055 = !{!2056, !2057, !2058, !2059, !2061}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2054, file: !2027, line: 56, baseType: !1502, size: 32)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2054, file: !2027, line: 57, baseType: !485, size: 32, offset: 32)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2054, file: !2027, line: 58, baseType: !212, size: 32, offset: 64)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2054, file: !2027, line: 59, baseType: !2060, size: 64, offset: 128)
!2060 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !354, line: 94, baseType: !355)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2054, file: !2027, line: 60, baseType: !2060, size: 64, offset: 192)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2026, file: !2027, line: 95, baseType: !2063, size: 256)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2026, file: !2027, line: 64, size: 256, elements: !2064)
!2064 = !{!2065, !2066}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2063, file: !2027, line: 65, baseType: !134, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, scope: !2063, file: !2027, line: 77, baseType: !2067, size: 192, offset: 64)
!2067 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2063, file: !2027, line: 77, size: 192, elements: !2068)
!2068 = !{!2069, !2070, !2077}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2067, file: !2027, line: 82, baseType: !1247, size: 16)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2067, file: !2027, line: 88, baseType: !2071, size: 192)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2067, file: !2027, line: 84, size: 192, elements: !2072)
!2072 = !{!2073, !2075, !2076}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2071, file: !2027, line: 85, baseType: !2074, size: 64)
!2074 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 64, elements: !1372)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2071, file: !2027, line: 86, baseType: !134, size: 64, offset: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2071, file: !2027, line: 87, baseType: !134, size: 64, offset: 128)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2067, file: !2027, line: 93, baseType: !2078, size: 96)
!2078 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2067, file: !2027, line: 90, size: 96, elements: !2079)
!2079 = !{!2080, !2081}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2078, file: !2027, line: 91, baseType: !2074, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2078, file: !2027, line: 92, baseType: !462, size: 32, offset: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2026, file: !2027, line: 101, baseType: !2083, size: 128)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2026, file: !2027, line: 98, size: 128, elements: !2084)
!2084 = !{!2085, !2086}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2083, file: !2027, line: 99, baseType: !356, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2083, file: !2027, line: 100, baseType: !212, size: 32, offset: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2026, file: !2027, line: 108, baseType: !2088, size: 128)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2026, file: !2027, line: 104, size: 128, elements: !2089)
!2089 = !{!2090, !2091, !2092}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2088, file: !2027, line: 105, baseType: !134, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2088, file: !2027, line: 106, baseType: !212, size: 32, offset: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2088, file: !2027, line: 107, baseType: !7, size: 32, offset: 96)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1259, file: !1260, line: 1067, baseType: !1880, offset: 11136)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1259, file: !1260, line: 1099, baseType: !2095, size: 64, offset: 11136)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1260, line: 56, flags: DIFlagFwdDecl)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1259, file: !1260, line: 1103, baseType: !269, size: 128, offset: 11200)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1259, file: !1260, line: 1104, baseType: !2099, size: 64, offset: 11328)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1260, line: 46, flags: DIFlagFwdDecl)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1259, file: !1260, line: 1105, baseType: !1215, size: 192, offset: 11392)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1259, file: !1260, line: 1106, baseType: !7, size: 32, offset: 11584)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1259, file: !1260, line: 1109, baseType: !2104, size: 128, offset: 11648)
!2104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2105, size: 128, elements: !1611)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1260, line: 51, flags: DIFlagFwdDecl)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1259, file: !1260, line: 1110, baseType: !1215, size: 192, offset: 11776)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1259, file: !1260, line: 1111, baseType: !269, size: 128, offset: 11968)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1259, file: !1260, line: 1173, baseType: !2110, size: 64, offset: 12096)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2112, line: 62, size: 256, align: 256, elements: !2113)
!2112 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2113 = !{!2114, !2115, !2116, !2121}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2111, file: !2112, line: 75, baseType: !462, size: 32)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2111, file: !2112, line: 90, baseType: !462, size: 32, offset: 32)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2111, file: !2112, line: 124, baseType: !2117, size: 64, offset: 64)
!2117 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2111, file: !2112, line: 109, size: 64, elements: !2118)
!2118 = !{!2119, !2120}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2117, file: !2112, line: 110, baseType: !467, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2117, file: !2112, line: 112, baseType: !467, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2111, file: !2112, line: 144, baseType: !462, size: 32, offset: 128)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1259, file: !1260, line: 1174, baseType: !460, size: 32, offset: 12160)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1259, file: !1260, line: 1179, baseType: !188, size: 64, offset: 12224)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1259, file: !1260, line: 1182, baseType: !2125, size: 128, offset: 12288)
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1193, line: 76, size: 128, elements: !2126)
!2126 = !{!2127, !2132, !2133}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2125, file: !1193, line: 85, baseType: !2128, size: 64)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2129, line: 7, size: 64, elements: !2130)
!2129 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2130 = !{!2131}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2128, file: !2129, line: 12, baseType: !1409, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2125, file: !1193, line: 88, baseType: !206, size: 8, offset: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2125, file: !1193, line: 95, baseType: !206, size: 8, offset: 72)
!2134 = !DIDerivedType(tag: DW_TAG_member, scope: !1259, file: !1260, line: 1184, baseType: !2135, size: 128, offset: 12416)
!2135 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1259, file: !1260, line: 1184, size: 128, elements: !2136)
!2136 = !{!2137, !2138}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2135, file: !1260, line: 1185, baseType: !1272, size: 32)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2135, file: !1260, line: 1186, baseType: !410, size: 128, align: 64)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1259, file: !1260, line: 1190, baseType: !2140, size: 64, offset: 12544)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1260, line: 53, flags: DIFlagFwdDecl)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1259, file: !1260, line: 1192, baseType: !2143, size: 128, offset: 12608)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1193, line: 64, size: 128, elements: !2144)
!2144 = !{!2145, !2146, !2147}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2143, file: !1193, line: 65, baseType: !763, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2143, file: !1193, line: 67, baseType: !462, size: 32, offset: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2143, file: !1193, line: 68, baseType: !462, size: 32, offset: 96)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1259, file: !1260, line: 1206, baseType: !212, size: 32, offset: 12736)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1259, file: !1260, line: 1207, baseType: !212, size: 32, offset: 12768)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1259, file: !1260, line: 1209, baseType: !188, size: 64, offset: 12800)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1259, file: !1260, line: 1219, baseType: !466, size: 64, offset: 12864)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1259, file: !1260, line: 1220, baseType: !466, size: 64, offset: 12928)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1259, file: !1260, line: 1317, baseType: !212, size: 32, offset: 12992)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1259, file: !1260, line: 1319, baseType: !1258, size: 64, offset: 13056)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1259, file: !1260, line: 1322, baseType: !2156, size: 64, offset: 13120)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2158, line: 56, size: 512, elements: !2159)
!2158 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2159 = !{!2160, !2161, !2162, !2163, !2164, !2165, !2166, !2168}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2157, file: !2158, line: 57, baseType: !2156, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2157, file: !2158, line: 58, baseType: !134, size: 64, offset: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2157, file: !2158, line: 59, baseType: !188, size: 64, offset: 128)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2157, file: !2158, line: 60, baseType: !188, size: 64, offset: 192)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2157, file: !2158, line: 61, baseType: !862, size: 64, offset: 256)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2157, file: !2158, line: 62, baseType: !7, size: 32, offset: 320)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2157, file: !2158, line: 63, baseType: !2167, size: 64, offset: 384)
!2167 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !144, line: 153, baseType: !466)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2157, file: !2158, line: 64, baseType: !2169, size: 64, offset: 448)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1259, file: !1260, line: 1326, baseType: !1272, size: 32, offset: 13184)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1259, file: !1260, line: 1342, baseType: !134, size: 64, offset: 13248)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1259, file: !1260, line: 1343, baseType: !467, size: 64, offset: 13312)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1259, file: !1260, line: 1344, baseType: !466, size: 64, offset: 13376)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1259, file: !1260, line: 1345, baseType: !467, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1259, file: !1260, line: 1346, baseType: !467, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1259, file: !1260, line: 1347, baseType: !467, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1259, file: !1260, line: 1348, baseType: !410, size: 128, align: 64, offset: 13504)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1259, file: !1260, line: 1358, baseType: !2180, size: 34816, offset: 13824)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2181, line: 485, size: 34816, elements: !2182)
!2181 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2182 = !{!2183, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2212, !2213, !2214, !2215, !2216, !2217, !2220, !2221, !2222}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2180, file: !2181, line: 487, baseType: !2184, size: 192)
!2184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2185, size: 192, elements: !201)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2186, line: 16, size: 64, elements: !2187)
!2186 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2187 = !{!2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2185, file: !2186, line: 17, baseType: !901, size: 16)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2185, file: !2186, line: 18, baseType: !901, size: 16, offset: 16)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2185, file: !2186, line: 19, baseType: !901, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2185, file: !2186, line: 19, baseType: !901, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2185, file: !2186, line: 19, baseType: !901, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2185, file: !2186, line: 19, baseType: !901, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2185, file: !2186, line: 19, baseType: !901, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2185, file: !2186, line: 20, baseType: !901, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2185, file: !2186, line: 20, baseType: !901, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2185, file: !2186, line: 20, baseType: !901, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2185, file: !2186, line: 20, baseType: !901, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2185, file: !2186, line: 20, baseType: !901, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2185, file: !2186, line: 20, baseType: !901, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2180, file: !2181, line: 491, baseType: !188, size: 64, offset: 192)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2180, file: !2181, line: 495, baseType: !140, size: 16, offset: 256)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2180, file: !2181, line: 496, baseType: !140, size: 16, offset: 272)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2180, file: !2181, line: 497, baseType: !140, size: 16, offset: 288)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2180, file: !2181, line: 498, baseType: !140, size: 16, offset: 304)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2180, file: !2181, line: 502, baseType: !188, size: 64, offset: 320)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2180, file: !2181, line: 503, baseType: !188, size: 64, offset: 384)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2180, file: !2181, line: 514, baseType: !2209, size: 256, offset: 448)
!2209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2210, size: 256, elements: !1197)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2181, line: 483, flags: DIFlagFwdDecl)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2180, file: !2181, line: 516, baseType: !188, size: 64, offset: 704)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2180, file: !2181, line: 518, baseType: !188, size: 64, offset: 768)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2180, file: !2181, line: 520, baseType: !188, size: 64, offset: 832)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2180, file: !2181, line: 521, baseType: !188, size: 64, offset: 896)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2180, file: !2181, line: 522, baseType: !188, size: 64, offset: 960)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2180, file: !2181, line: 528, baseType: !2218, size: 64, offset: 1024)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2181, line: 10, flags: DIFlagFwdDecl)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2180, file: !2181, line: 535, baseType: !188, size: 64, offset: 1088)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2180, file: !2181, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2180, file: !2181, line: 540, baseType: !2223, size: 33280, offset: 1536)
!2223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2224, line: 317, size: 33280, elements: !2225)
!2224 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2225 = !{!2226, !2227, !2228}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2223, file: !2224, line: 330, baseType: !7, size: 32)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2223, file: !2224, line: 337, baseType: !188, size: 64, offset: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2223, file: !2224, line: 348, baseType: !2229, size: 32768, offset: 512)
!2229 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2224, line: 304, size: 32768, elements: !2230)
!2230 = !{!2231, !2244, !2281, !2331, !2344}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2229, file: !2224, line: 305, baseType: !2232, size: 896)
!2232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2224, line: 12, size: 896, elements: !2233)
!2233 = !{!2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2243}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2232, file: !2224, line: 13, baseType: !460, size: 32)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2232, file: !2224, line: 14, baseType: !460, size: 32, offset: 32)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2232, file: !2224, line: 15, baseType: !460, size: 32, offset: 64)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2232, file: !2224, line: 16, baseType: !460, size: 32, offset: 96)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2232, file: !2224, line: 17, baseType: !460, size: 32, offset: 128)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2232, file: !2224, line: 18, baseType: !460, size: 32, offset: 160)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2232, file: !2224, line: 19, baseType: !460, size: 32, offset: 192)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2232, file: !2224, line: 22, baseType: !2242, size: 640, offset: 224)
!2242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 640, elements: !238)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2232, file: !2224, line: 25, baseType: !460, size: 32, offset: 864)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2229, file: !2224, line: 306, baseType: !2245, size: 4096, align: 128)
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2224, line: 34, size: 4096, align: 128, elements: !2246)
!2246 = !{!2247, !2248, !2249, !2250, !2251, !2266, !2267, !2268, !2270, !2272, !2276}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2245, file: !2224, line: 35, baseType: !901, size: 16)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2245, file: !2224, line: 36, baseType: !901, size: 16, offset: 16)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2245, file: !2224, line: 37, baseType: !901, size: 16, offset: 32)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2245, file: !2224, line: 38, baseType: !901, size: 16, offset: 48)
!2251 = !DIDerivedType(tag: DW_TAG_member, scope: !2245, file: !2224, line: 39, baseType: !2252, size: 128, offset: 64)
!2252 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2245, file: !2224, line: 39, size: 128, elements: !2253)
!2253 = !{!2254, !2259}
!2254 = !DIDerivedType(tag: DW_TAG_member, scope: !2252, file: !2224, line: 40, baseType: !2255, size: 128)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2252, file: !2224, line: 40, size: 128, elements: !2256)
!2256 = !{!2257, !2258}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2255, file: !2224, line: 41, baseType: !466, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2255, file: !2224, line: 42, baseType: !466, size: 64, offset: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, scope: !2252, file: !2224, line: 44, baseType: !2260, size: 128)
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2252, file: !2224, line: 44, size: 128, elements: !2261)
!2261 = !{!2262, !2263, !2264, !2265}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2260, file: !2224, line: 45, baseType: !460, size: 32)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2260, file: !2224, line: 46, baseType: !460, size: 32, offset: 32)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2260, file: !2224, line: 47, baseType: !460, size: 32, offset: 64)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2260, file: !2224, line: 48, baseType: !460, size: 32, offset: 96)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2245, file: !2224, line: 51, baseType: !460, size: 32, offset: 192)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2245, file: !2224, line: 52, baseType: !460, size: 32, offset: 224)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2245, file: !2224, line: 55, baseType: !2269, size: 1024, offset: 256)
!2269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 1024, elements: !242)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2245, file: !2224, line: 58, baseType: !2271, size: 2048, offset: 1280)
!2271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 2048, elements: !326)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2245, file: !2224, line: 60, baseType: !2273, size: 384, offset: 3328)
!2273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 384, elements: !2274)
!2274 = !{!2275}
!2275 = !DISubrange(count: 12)
!2276 = !DIDerivedType(tag: DW_TAG_member, scope: !2245, file: !2224, line: 62, baseType: !2277, size: 384, offset: 3712)
!2277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2245, file: !2224, line: 62, size: 384, elements: !2278)
!2278 = !{!2279, !2280}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2277, file: !2224, line: 63, baseType: !2273, size: 384)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2277, file: !2224, line: 64, baseType: !2273, size: 384)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2229, file: !2224, line: 307, baseType: !2282, size: 1088)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2224, line: 79, size: 1088, elements: !2283)
!2283 = !{!2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2330}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2282, file: !2224, line: 80, baseType: !460, size: 32)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2282, file: !2224, line: 81, baseType: !460, size: 32, offset: 32)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2282, file: !2224, line: 82, baseType: !460, size: 32, offset: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2282, file: !2224, line: 83, baseType: !460, size: 32, offset: 96)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2282, file: !2224, line: 84, baseType: !460, size: 32, offset: 128)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2282, file: !2224, line: 85, baseType: !460, size: 32, offset: 160)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2282, file: !2224, line: 86, baseType: !460, size: 32, offset: 192)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2282, file: !2224, line: 88, baseType: !2242, size: 640, offset: 224)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2282, file: !2224, line: 89, baseType: !1394, size: 8, offset: 864)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2282, file: !2224, line: 90, baseType: !1394, size: 8, offset: 872)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2282, file: !2224, line: 91, baseType: !1394, size: 8, offset: 880)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2282, file: !2224, line: 92, baseType: !1394, size: 8, offset: 888)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2282, file: !2224, line: 93, baseType: !1394, size: 8, offset: 896)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2282, file: !2224, line: 94, baseType: !1394, size: 8, offset: 904)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2282, file: !2224, line: 95, baseType: !2299, size: 64, offset: 960)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2301, line: 11, size: 128, elements: !2302)
!2301 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2302 = !{!2303, !2304}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2300, file: !2301, line: 12, baseType: !356, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2300, file: !2301, line: 13, baseType: !2305, size: 64, offset: 64)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2307, line: 56, size: 1344, elements: !2308)
!2307 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2308 = !{!2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2306, file: !2307, line: 61, baseType: !188, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2306, file: !2307, line: 62, baseType: !188, size: 64, offset: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2306, file: !2307, line: 63, baseType: !188, size: 64, offset: 128)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2306, file: !2307, line: 64, baseType: !188, size: 64, offset: 192)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2306, file: !2307, line: 65, baseType: !188, size: 64, offset: 256)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2306, file: !2307, line: 66, baseType: !188, size: 64, offset: 320)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2306, file: !2307, line: 68, baseType: !188, size: 64, offset: 384)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2306, file: !2307, line: 69, baseType: !188, size: 64, offset: 448)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2306, file: !2307, line: 70, baseType: !188, size: 64, offset: 512)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2306, file: !2307, line: 71, baseType: !188, size: 64, offset: 576)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2306, file: !2307, line: 72, baseType: !188, size: 64, offset: 640)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2306, file: !2307, line: 73, baseType: !188, size: 64, offset: 704)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2306, file: !2307, line: 74, baseType: !188, size: 64, offset: 768)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2306, file: !2307, line: 75, baseType: !188, size: 64, offset: 832)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2306, file: !2307, line: 76, baseType: !188, size: 64, offset: 896)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2306, file: !2307, line: 81, baseType: !188, size: 64, offset: 960)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2306, file: !2307, line: 83, baseType: !188, size: 64, offset: 1024)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2306, file: !2307, line: 84, baseType: !188, size: 64, offset: 1088)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2306, file: !2307, line: 85, baseType: !188, size: 64, offset: 1152)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2306, file: !2307, line: 86, baseType: !188, size: 64, offset: 1216)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2306, file: !2307, line: 87, baseType: !188, size: 64, offset: 1280)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2282, file: !2224, line: 96, baseType: !460, size: 32, offset: 1024)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2229, file: !2224, line: 308, baseType: !2332, size: 4608, align: 512)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2224, line: 289, size: 4608, align: 512, elements: !2333)
!2333 = !{!2334, !2335, !2342}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2332, file: !2224, line: 290, baseType: !2245, size: 4096, align: 128)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2332, file: !2224, line: 291, baseType: !2336, size: 512, offset: 4096)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2224, line: 268, size: 512, elements: !2337)
!2337 = !{!2338, !2339, !2340}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2336, file: !2224, line: 269, baseType: !466, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2336, file: !2224, line: 270, baseType: !466, size: 64, offset: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2336, file: !2224, line: 271, baseType: !2341, size: 384, offset: 128)
!2341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !466, size: 384, elements: !1667)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2332, file: !2224, line: 292, baseType: !2343, offset: 4608)
!2343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1394, elements: !1765)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2229, file: !2224, line: 309, baseType: !2345, size: 32768)
!2345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1394, size: 32768, elements: !2346)
!2346 = !{!2347}
!2347 = !DISubrange(count: 4096)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1255, file: !765, line: 378, baseType: !2349, size: 64, offset: 64)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1251, file: !765, line: 384, baseType: !1544, size: 192, offset: 192)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1020, file: !765, line: 500, baseType: !282, offset: 6656)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1020, file: !765, line: 501, baseType: !2353, size: 64, offset: 6656)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !765, line: 387, flags: DIFlagFwdDecl)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1020, file: !765, line: 516, baseType: !1755, size: 64, offset: 6720)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1020, file: !765, line: 519, baseType: !397, size: 64, offset: 6784)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1020, file: !765, line: 521, baseType: !2358, size: 64, offset: 6848)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !765, line: 521, flags: DIFlagFwdDecl)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1020, file: !765, line: 545, baseType: !789, size: 32, offset: 6912)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1020, file: !765, line: 548, baseType: !206, size: 8, offset: 6944)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1020, file: !765, line: 550, baseType: !2363, offset: 6952)
!2363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2364, line: 142, elements: !296)
!2364 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1020, file: !765, line: 554, baseType: !1999, size: 256, offset: 6976)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1020, file: !765, line: 557, baseType: !460, size: 32, offset: 7232)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1017, file: !765, line: 565, baseType: !2368, offset: 7296)
!2368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, elements: !2369)
!2369 = !{!2370}
!2370 = !DISubrange(count: -1)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1013, file: !765, line: 151, baseType: !789, size: 32)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1006, file: !765, line: 156, baseType: !282, offset: 256)
!2373 = !DIDerivedType(tag: DW_TAG_member, scope: !769, file: !765, line: 159, baseType: !2374, size: 128)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !769, file: !765, line: 159, size: 128, elements: !2375)
!2375 = !{!2376, !2440}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2374, file: !765, line: 161, baseType: !2377, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2379)
!2379 = !{!2380, !2390, !2411, !2412, !2413, !2414, !2415, !2427, !2428, !2429}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2378, file: !31, line: 111, baseType: !2381, size: 384)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2382)
!2382 = !{!2383, !2385, !2386, !2387, !2388, !2389}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2381, file: !31, line: 20, baseType: !2384, size: 64)
!2384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2381, file: !31, line: 21, baseType: !2384, size: 64, offset: 64)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2381, file: !31, line: 22, baseType: !2384, size: 64, offset: 128)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2381, file: !31, line: 23, baseType: !188, size: 64, offset: 192)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2381, file: !31, line: 24, baseType: !188, size: 64, offset: 256)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2381, file: !31, line: 25, baseType: !188, size: 64, offset: 320)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2378, file: !31, line: 112, baseType: !2391, size: 64, offset: 384)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2393, line: 105, size: 128, elements: !2394)
!2393 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2394 = !{!2395, !2396}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2392, file: !2393, line: 110, baseType: !188, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2392, file: !2393, line: 118, baseType: !2397, size: 64, offset: 64)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2393, line: 95, size: 448, elements: !2399)
!2399 = !{!2400, !2401, !2406, !2407, !2408, !2409, !2410}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2398, file: !2393, line: 96, baseType: !813, size: 64)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2398, file: !2393, line: 97, baseType: !2402, size: 64, offset: 64)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2393, line: 60, baseType: !2404)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{null, !2391}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2398, file: !2393, line: 98, baseType: !2402, size: 64, offset: 128)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2398, file: !2393, line: 99, baseType: !206, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2398, file: !2393, line: 100, baseType: !206, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2398, file: !2393, line: 101, baseType: !410, size: 128, align: 64, offset: 256)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2398, file: !2393, line: 102, baseType: !2391, size: 64, offset: 384)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2378, file: !31, line: 113, baseType: !2392, size: 128, offset: 448)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2378, file: !31, line: 114, baseType: !1544, size: 192, offset: 576)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2378, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2378, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2378, file: !31, line: 117, baseType: !2416, size: 64, offset: 832)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2418)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2419)
!2419 = !{!2420, !2421, !2425, !2426}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2418, file: !31, line: 73, baseType: !882, size: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2418, file: !31, line: 78, baseType: !2422, size: 64, offset: 64)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{null, !2377}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2418, file: !31, line: 83, baseType: !2422, size: 64, offset: 128)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2418, file: !31, line: 89, baseType: !1069, size: 64, offset: 192)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2378, file: !31, line: 118, baseType: !134, size: 64, offset: 896)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2378, file: !31, line: 119, baseType: !212, size: 32, offset: 960)
!2429 = !DIDerivedType(tag: DW_TAG_member, scope: !2378, file: !31, line: 120, baseType: !2430, size: 128, offset: 1024)
!2430 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2378, file: !31, line: 120, size: 128, elements: !2431)
!2431 = !{!2432, !2438}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2430, file: !31, line: 121, baseType: !2433, size: 128)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2434, line: 6, size: 128, elements: !2435)
!2434 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2435 = !{!2436, !2437}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2433, file: !2434, line: 7, baseType: !466, size: 64)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2433, file: !2434, line: 8, baseType: !466, size: 64, offset: 64)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2430, file: !31, line: 122, baseType: !2439)
!2439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2433, elements: !1765)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2374, file: !765, line: 162, baseType: !134, size: 64, offset: 64)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !769, file: !765, line: 176, baseType: !410, size: 128, align: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, scope: !764, file: !765, line: 179, baseType: !2443, size: 32, offset: 384)
!2443 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !764, file: !765, line: 179, size: 32, elements: !2444)
!2444 = !{!2445, !2446, !2447, !2448}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2443, file: !765, line: 184, baseType: !789, size: 32)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2443, file: !765, line: 192, baseType: !7, size: 32)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2443, file: !765, line: 194, baseType: !7, size: 32)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2443, file: !765, line: 195, baseType: !212, size: 32)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !764, file: !765, line: 199, baseType: !789, size: 32, offset: 416)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !699, file: !44, line: 1964, baseType: !2451, size: 64, offset: 1344)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!356, !641, !2454}
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2456, line: 12, size: 256, elements: !2457)
!2456 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2457 = !{!2458, !2459, !2460, !2461, !2462}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2455, file: !2456, line: 13, baseType: !143, size: 32)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2455, file: !2456, line: 16, baseType: !212, size: 32, offset: 32)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2455, file: !2456, line: 23, baseType: !188, size: 64, offset: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2455, file: !2456, line: 30, baseType: !188, size: 64, offset: 128)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2455, file: !2456, line: 33, baseType: !2463, size: 64, offset: 192)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !765, line: 27, flags: DIFlagFwdDecl)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !699, file: !44, line: 1966, baseType: !2451, size: 64, offset: 1408)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !642, file: !44, line: 1424, baseType: !2467, size: 64, offset: 448)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2469)
!2469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2470)
!2470 = !{!2471, !2517, !2521, !2525, !2526, !2527, !2528, !2529, !2534, !2539, !2543}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2469, file: !38, line: 323, baseType: !2472, size: 64)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!212, !2475}
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2477)
!2477 = !{!2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2502, !2503, !2504}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2476, file: !38, line: 295, baseType: !681, size: 128)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2476, file: !38, line: 296, baseType: !269, size: 128, offset: 128)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2476, file: !38, line: 297, baseType: !269, size: 128, offset: 256)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2476, file: !38, line: 298, baseType: !269, size: 128, offset: 384)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2476, file: !38, line: 299, baseType: !1215, size: 192, offset: 512)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2476, file: !38, line: 300, baseType: !282, offset: 704)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2476, file: !38, line: 301, baseType: !789, size: 32, offset: 704)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2476, file: !38, line: 302, baseType: !641, size: 64, offset: 768)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2476, file: !38, line: 303, baseType: !2487, size: 64, offset: 832)
!2487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2488)
!2488 = !{!2489, !2501}
!2489 = !DIDerivedType(tag: DW_TAG_member, scope: !2487, file: !38, line: 69, baseType: !2490, size: 32)
!2490 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2487, file: !38, line: 69, size: 32, elements: !2491)
!2491 = !{!2492, !2493, !2494}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2490, file: !38, line: 70, baseType: !479, size: 32)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2490, file: !38, line: 71, baseType: !487, size: 32)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2490, file: !38, line: 72, baseType: !2495, size: 32)
!2495 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2496, line: 24, baseType: !2497)
!2496 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2497 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2496, line: 22, size: 32, elements: !2498)
!2498 = !{!2499}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2497, file: !2496, line: 23, baseType: !2500, size: 32)
!2500 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2496, line: 20, baseType: !485)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2487, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2476, file: !38, line: 304, baseType: !573, size: 64, offset: 896)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2476, file: !38, line: 305, baseType: !188, size: 64, offset: 960)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2476, file: !38, line: 306, baseType: !2505, size: 576, offset: 1024)
!2505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2506)
!2506 = !{!2507, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2505, file: !38, line: 206, baseType: !2508, size: 64)
!2508 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !575)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2505, file: !38, line: 207, baseType: !2508, size: 64, offset: 64)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2505, file: !38, line: 208, baseType: !2508, size: 64, offset: 128)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2505, file: !38, line: 209, baseType: !2508, size: 64, offset: 192)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2505, file: !38, line: 210, baseType: !2508, size: 64, offset: 256)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2505, file: !38, line: 211, baseType: !2508, size: 64, offset: 320)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2505, file: !38, line: 212, baseType: !2508, size: 64, offset: 384)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2505, file: !38, line: 213, baseType: !581, size: 64, offset: 448)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2505, file: !38, line: 214, baseType: !581, size: 64, offset: 512)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2469, file: !38, line: 324, baseType: !2518, size: 64, offset: 64)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{!2475, !641, !212}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2469, file: !38, line: 325, baseType: !2522, size: 64, offset: 128)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{null, !2475}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2469, file: !38, line: 326, baseType: !2472, size: 64, offset: 192)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2469, file: !38, line: 327, baseType: !2472, size: 64, offset: 256)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2469, file: !38, line: 328, baseType: !2472, size: 64, offset: 320)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2469, file: !38, line: 329, baseType: !727, size: 64, offset: 384)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2469, file: !38, line: 332, baseType: !2530, size: 64, offset: 448)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!2533, !473}
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2469, file: !38, line: 333, baseType: !2535, size: 64, offset: 512)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!212, !473, !2538}
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2469, file: !38, line: 335, baseType: !2540, size: 64, offset: 576)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!212, !473, !2533}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2469, file: !38, line: 337, baseType: !2544, size: 64, offset: 640)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!212, !641, !2547}
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !642, file: !44, line: 1425, baseType: !2549, size: 64, offset: 512)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2551)
!2551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2552)
!2552 = !{!2553, !2557, !2558, !2562, !2563, !2564, !2579, !2602, !2606, !2607, !2630}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2551, file: !38, line: 429, baseType: !2554, size: 64)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{!212, !641, !212, !212, !591}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2551, file: !38, line: 430, baseType: !727, size: 64, offset: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2551, file: !38, line: 431, baseType: !2559, size: 64, offset: 128)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!212, !641, !7}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2551, file: !38, line: 432, baseType: !2559, size: 64, offset: 192)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2551, file: !38, line: 433, baseType: !727, size: 64, offset: 256)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2551, file: !38, line: 434, baseType: !2565, size: 64, offset: 320)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!212, !641, !212, !2568}
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2570)
!2570 = !{!2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2569, file: !38, line: 416, baseType: !212, size: 32)
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
!2582 = !{!212, !641, !2487, !2583}
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2585)
!2585 = !{!2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2584, file: !38, line: 344, baseType: !212, size: 32)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2584, file: !38, line: 345, baseType: !466, size: 64, offset: 64)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2584, file: !38, line: 346, baseType: !466, size: 64, offset: 128)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2584, file: !38, line: 347, baseType: !466, size: 64, offset: 192)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2584, file: !38, line: 348, baseType: !466, size: 64, offset: 256)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2584, file: !38, line: 349, baseType: !466, size: 64, offset: 320)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2584, file: !38, line: 350, baseType: !466, size: 64, offset: 384)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2584, file: !38, line: 351, baseType: !819, size: 64, offset: 448)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2584, file: !38, line: 353, baseType: !819, size: 64, offset: 512)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2584, file: !38, line: 354, baseType: !212, size: 32, offset: 576)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2584, file: !38, line: 355, baseType: !212, size: 32, offset: 608)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2584, file: !38, line: 356, baseType: !466, size: 64, offset: 640)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2584, file: !38, line: 357, baseType: !466, size: 64, offset: 704)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2584, file: !38, line: 358, baseType: !466, size: 64, offset: 768)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2584, file: !38, line: 359, baseType: !819, size: 64, offset: 832)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2584, file: !38, line: 360, baseType: !212, size: 32, offset: 896)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2551, file: !38, line: 436, baseType: !2603, size: 64, offset: 448)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{!212, !641, !2547, !2583}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2551, file: !38, line: 438, baseType: !2580, size: 64, offset: 512)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2551, file: !38, line: 439, baseType: !2608, size: 64, offset: 576)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DISubroutineType(types: !2610)
!2610 = !{!212, !641, !2611}
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2613)
!2613 = !{!2614, !2615}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2612, file: !38, line: 410, baseType: !7, size: 32)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2612, file: !38, line: 411, baseType: !2616, size: 1344, offset: 64)
!2616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2617, size: 1344, elements: !201)
!2617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2618)
!2618 = !{!2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2629}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2617, file: !38, line: 396, baseType: !7, size: 32)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2617, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2617, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2617, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2617, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2617, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2617, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2617, file: !38, line: 404, baseType: !468, size: 64, offset: 256)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2617, file: !38, line: 405, baseType: !2628, size: 64, offset: 320)
!2628 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !144, line: 126, baseType: !466)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2617, file: !38, line: 406, baseType: !2628, size: 64, offset: 384)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2551, file: !38, line: 440, baseType: !2559, size: 64, offset: 640)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !642, file: !44, line: 1426, baseType: !2632, size: 64, offset: 576)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2634)
!2634 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !642, file: !44, line: 1427, baseType: !188, size: 64, offset: 640)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !642, file: !44, line: 1428, baseType: !188, size: 64, offset: 704)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !642, file: !44, line: 1429, baseType: !188, size: 64, offset: 768)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !642, file: !44, line: 1430, baseType: !427, size: 64, offset: 832)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !642, file: !44, line: 1431, baseType: !809, size: 256, offset: 896)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !642, file: !44, line: 1432, baseType: !212, size: 32, offset: 1152)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !642, file: !44, line: 1433, baseType: !789, size: 32, offset: 1184)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !642, file: !44, line: 1437, baseType: !2643, size: 64, offset: 1216)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2646)
!2646 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !642, file: !44, line: 1449, baseType: !2648, size: 64, offset: 1280)
!2648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !443, line: 34, size: 64, elements: !2649)
!2649 = !{!2650}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2648, file: !443, line: 35, baseType: !446, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !642, file: !44, line: 1450, baseType: !269, size: 128, offset: 1344)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !642, file: !44, line: 1451, baseType: !2653, size: 64, offset: 1472)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !642, file: !44, line: 1452, baseType: !1965, size: 64, offset: 1536)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !642, file: !44, line: 1453, baseType: !2657, size: 64, offset: 1600)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !642, file: !44, line: 1454, baseType: !681, size: 128, offset: 1664)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !642, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !642, file: !44, line: 1456, baseType: !2662, size: 2432, offset: 1856)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2663)
!2663 = !{!2664, !2665, !2666, !2668, !2700}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2662, file: !38, line: 519, baseType: !7, size: 32)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2662, file: !38, line: 520, baseType: !809, size: 256, offset: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2662, file: !38, line: 521, baseType: !2667, size: 192, offset: 320)
!2667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !473, size: 192, elements: !201)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2662, file: !38, line: 522, baseType: !2669, size: 1728, offset: 512)
!2669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2670, size: 1728, elements: !201)
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2671)
!2671 = !{!2672, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2670, file: !38, line: 223, baseType: !2673, size: 64)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2675)
!2675 = !{!2676, !2677, !2690, !2691}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2674, file: !38, line: 444, baseType: !212, size: 32)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2674, file: !38, line: 445, baseType: !2678, size: 64, offset: 64)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2680)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2681)
!2681 = !{!2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2680, file: !38, line: 311, baseType: !727, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2680, file: !38, line: 312, baseType: !727, size: 64, offset: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2680, file: !38, line: 313, baseType: !727, size: 64, offset: 128)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2680, file: !38, line: 314, baseType: !727, size: 64, offset: 192)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2680, file: !38, line: 315, baseType: !2472, size: 64, offset: 256)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2680, file: !38, line: 316, baseType: !2472, size: 64, offset: 320)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2680, file: !38, line: 317, baseType: !2472, size: 64, offset: 384)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2680, file: !38, line: 318, baseType: !2544, size: 64, offset: 448)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2674, file: !38, line: 446, baseType: !226, size: 64, offset: 128)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2674, file: !38, line: 447, baseType: !2673, size: 64, offset: 192)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2670, file: !38, line: 224, baseType: !212, size: 32, offset: 64)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2670, file: !38, line: 226, baseType: !269, size: 128, offset: 128)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2670, file: !38, line: 227, baseType: !188, size: 64, offset: 256)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2670, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2670, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2670, file: !38, line: 230, baseType: !2508, size: 64, offset: 384)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2670, file: !38, line: 231, baseType: !2508, size: 64, offset: 448)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2670, file: !38, line: 232, baseType: !134, size: 64, offset: 512)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2662, file: !38, line: 523, baseType: !2701, size: 192, offset: 2240)
!2701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2678, size: 192, elements: !201)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !642, file: !44, line: 1458, baseType: !2703, size: 2112, offset: 4288)
!2703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2704)
!2704 = !{!2705, !2706, !2707}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2703, file: !44, line: 1411, baseType: !212, size: 32)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2703, file: !44, line: 1412, baseType: !1523, size: 128, offset: 64)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2703, file: !44, line: 1413, baseType: !2708, size: 1920, offset: 192)
!2708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2709, size: 1920, elements: !201)
!2709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2710, line: 12, size: 640, elements: !2711)
!2710 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2711 = !{!2712, !2720, !2722, !2727, !2728}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2709, file: !2710, line: 13, baseType: !2713, size: 320)
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2714, line: 17, size: 320, elements: !2715)
!2714 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2715 = !{!2716, !2717, !2718, !2719}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2713, file: !2714, line: 18, baseType: !212, size: 32)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2713, file: !2714, line: 19, baseType: !212, size: 32, offset: 32)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2713, file: !2714, line: 20, baseType: !1523, size: 128, offset: 64)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2713, file: !2714, line: 22, baseType: !410, size: 128, align: 64, offset: 192)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2709, file: !2710, line: 14, baseType: !2721, size: 64, offset: 320)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2709, file: !2710, line: 15, baseType: !2723, size: 64, offset: 384)
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2724, line: 16, size: 64, elements: !2725)
!2724 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2725 = !{!2726}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2723, file: !2724, line: 17, baseType: !1258, size: 64)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2709, file: !2710, line: 16, baseType: !1523, size: 128, offset: 448)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2709, file: !2710, line: 17, baseType: !789, size: 32, offset: 576)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !642, file: !44, line: 1465, baseType: !134, size: 64, offset: 6400)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !642, file: !44, line: 1468, baseType: !460, size: 32, offset: 6464)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !642, file: !44, line: 1470, baseType: !581, size: 64, offset: 6528)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !642, file: !44, line: 1471, baseType: !581, size: 64, offset: 6592)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !642, file: !44, line: 1473, baseType: !462, size: 32, offset: 6656)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !642, file: !44, line: 1474, baseType: !2735, size: 64, offset: 6720)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !642, file: !44, line: 1477, baseType: !2738, size: 256, offset: 6784)
!2738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 256, elements: !242)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !642, file: !44, line: 1478, baseType: !2740, size: 128, offset: 7040)
!2740 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2741, line: 18, baseType: !2742)
!2741 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2741, line: 16, size: 128, elements: !2743)
!2743 = !{!2744}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2742, file: !2741, line: 17, baseType: !2745, size: 128)
!2745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1395, size: 128, elements: !1777)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !642, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !642, file: !44, line: 1481, baseType: !2748, size: 32, offset: 7200)
!2748 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !144, line: 150, baseType: !7)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !642, file: !44, line: 1487, baseType: !1215, size: 192, offset: 7232)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !642, file: !44, line: 1493, baseType: !224, size: 64, offset: 7424)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !642, file: !44, line: 1495, baseType: !2752, size: 64, offset: 7488)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2754)
!2754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !425, line: 135, size: 1024, align: 512, elements: !2755)
!2755 = !{!2756, !2760, !2761, !2768, !2774, !2778, !2782, !2786, !2787, !2791, !2795, !2800, !2804}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2754, file: !425, line: 136, baseType: !2757, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{!212, !427, !7}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2754, file: !425, line: 137, baseType: !2757, size: 64, offset: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2754, file: !425, line: 138, baseType: !2762, size: 64, offset: 128)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!212, !2765, !2767}
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !428)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2754, file: !425, line: 139, baseType: !2769, size: 64, offset: 192)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{!212, !2765, !7, !224, !2772}
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !451)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2754, file: !425, line: 141, baseType: !2775, size: 64, offset: 256)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!212, !2765}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2754, file: !425, line: 142, baseType: !2779, size: 64, offset: 320)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{!212, !427}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2754, file: !425, line: 143, baseType: !2783, size: 64, offset: 384)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{null, !427}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2754, file: !425, line: 144, baseType: !2783, size: 64, offset: 448)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2754, file: !425, line: 145, baseType: !2788, size: 64, offset: 512)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{null, !427, !473}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2754, file: !425, line: 146, baseType: !2792, size: 64, offset: 576)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!323, !427, !323, !212}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2754, file: !425, line: 147, baseType: !2796, size: 64, offset: 640)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!423, !2799}
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2754, file: !425, line: 148, baseType: !2801, size: 64, offset: 704)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{!212, !591, !206}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2754, file: !425, line: 149, baseType: !2805, size: 64, offset: 768)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{!427, !427, !2808}
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !474)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !642, file: !44, line: 1500, baseType: !212, size: 32, offset: 7552)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !642, file: !44, line: 1502, baseType: !2812, size: 448, offset: 7616)
!2812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2456, line: 60, size: 448, elements: !2813)
!2813 = !{!2814, !2819, !2820, !2821, !2822, !2823, !2824}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2812, file: !2456, line: 61, baseType: !2815, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{!188, !2818, !2454}
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2812, file: !2456, line: 63, baseType: !2815, size: 64, offset: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2812, file: !2456, line: 66, baseType: !356, size: 64, offset: 128)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2812, file: !2456, line: 67, baseType: !212, size: 32, offset: 192)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2812, file: !2456, line: 68, baseType: !7, size: 32, offset: 224)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2812, file: !2456, line: 71, baseType: !269, size: 128, offset: 256)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2812, file: !2456, line: 77, baseType: !2825, size: 64, offset: 384)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !642, file: !44, line: 1505, baseType: !813, size: 64, offset: 8064)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !642, file: !44, line: 1508, baseType: !813, size: 64, offset: 8128)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !642, file: !44, line: 1511, baseType: !212, size: 32, offset: 8192)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !642, file: !44, line: 1514, baseType: !951, size: 32, offset: 8224)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !642, file: !44, line: 1517, baseType: !2831, size: 64, offset: 8256)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2000, line: 18, flags: DIFlagFwdDecl)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !642, file: !44, line: 1518, baseType: !677, size: 64, offset: 8320)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !642, file: !44, line: 1525, baseType: !1755, size: 64, offset: 8384)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !642, file: !44, line: 1532, baseType: !2836, size: 64, offset: 8448)
!2836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2837, line: 52, size: 64, elements: !2838)
!2837 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2838 = !{!2839}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2836, file: !2837, line: 53, baseType: !2840, size: 64)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2837, line: 40, size: 256, elements: !2842)
!2842 = !{!2843, !2844, !2849}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2841, file: !2837, line: 42, baseType: !282)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2841, file: !2837, line: 44, baseType: !2845, size: 192)
!2845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2837, line: 28, size: 192, elements: !2846)
!2846 = !{!2847, !2848}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2845, file: !2837, line: 29, baseType: !269, size: 128)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2845, file: !2837, line: 31, baseType: !356, size: 64, offset: 128)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2841, file: !2837, line: 49, baseType: !356, size: 64, offset: 192)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !642, file: !44, line: 1533, baseType: !2836, size: 64, offset: 8512)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !642, file: !44, line: 1534, baseType: !410, size: 128, align: 64, offset: 8576)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !642, file: !44, line: 1535, baseType: !1999, size: 256, offset: 8704)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !642, file: !44, line: 1537, baseType: !1215, size: 192, offset: 8960)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !642, file: !44, line: 1542, baseType: !212, size: 32, offset: 9152)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !642, file: !44, line: 1545, baseType: !282, offset: 9184)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !642, file: !44, line: 1546, baseType: !269, size: 128, offset: 9216)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !642, file: !44, line: 1548, baseType: !282, offset: 9344)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !642, file: !44, line: 1549, baseType: !269, size: 128, offset: 9344)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !474, file: !44, line: 624, baseType: !776, size: 64, offset: 256)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !474, file: !44, line: 631, baseType: !188, size: 64, offset: 320)
!2861 = !DIDerivedType(tag: DW_TAG_member, scope: !474, file: !44, line: 639, baseType: !2862, size: 32, offset: 384)
!2862 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !474, file: !44, line: 639, size: 32, elements: !2863)
!2863 = !{!2864, !2866}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2862, file: !44, line: 640, baseType: !2865, size: 32)
!2865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2862, file: !44, line: 641, baseType: !7, size: 32)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !474, file: !44, line: 643, baseType: !555, size: 32, offset: 416)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !474, file: !44, line: 644, baseType: !573, size: 64, offset: 448)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !474, file: !44, line: 645, baseType: !577, size: 128, offset: 512)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !474, file: !44, line: 646, baseType: !577, size: 128, offset: 640)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !474, file: !44, line: 647, baseType: !577, size: 128, offset: 768)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !474, file: !44, line: 648, baseType: !282, offset: 896)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !474, file: !44, line: 649, baseType: !140, size: 16, offset: 896)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !474, file: !44, line: 650, baseType: !1394, size: 8, offset: 912)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !474, file: !44, line: 651, baseType: !1394, size: 8, offset: 920)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !474, file: !44, line: 652, baseType: !2628, size: 64, offset: 960)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !474, file: !44, line: 659, baseType: !188, size: 64, offset: 1024)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !474, file: !44, line: 660, baseType: !809, size: 256, offset: 1088)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !474, file: !44, line: 662, baseType: !188, size: 64, offset: 1344)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !474, file: !44, line: 663, baseType: !188, size: 64, offset: 1408)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !474, file: !44, line: 665, baseType: !681, size: 128, offset: 1472)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !474, file: !44, line: 666, baseType: !269, size: 128, offset: 1600)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !474, file: !44, line: 675, baseType: !269, size: 128, offset: 1728)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !474, file: !44, line: 676, baseType: !269, size: 128, offset: 1856)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !474, file: !44, line: 677, baseType: !269, size: 128, offset: 1984)
!2886 = !DIDerivedType(tag: DW_TAG_member, scope: !474, file: !44, line: 678, baseType: !2887, size: 128, offset: 2112)
!2887 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !474, file: !44, line: 678, size: 128, elements: !2888)
!2888 = !{!2889, !2890}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2887, file: !44, line: 679, baseType: !677, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2887, file: !44, line: 680, baseType: !410, size: 128, align: 64)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !474, file: !44, line: 682, baseType: !815, size: 64, offset: 2240)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !474, file: !44, line: 683, baseType: !815, size: 64, offset: 2304)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !474, file: !44, line: 684, baseType: !789, size: 32, offset: 2368)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !474, file: !44, line: 685, baseType: !789, size: 32, offset: 2400)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !474, file: !44, line: 686, baseType: !789, size: 32, offset: 2432)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !474, file: !44, line: 688, baseType: !789, size: 32, offset: 2464)
!2897 = !DIDerivedType(tag: DW_TAG_member, scope: !474, file: !44, line: 690, baseType: !2898, size: 64, offset: 2496)
!2898 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !474, file: !44, line: 690, size: 64, elements: !2899)
!2899 = !{!2900, !3123}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2898, file: !44, line: 691, baseType: !2901, size: 64)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2903)
!2903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2904)
!2904 = !{!2905, !2906, !2910, !2915, !2919, !2920, !2921, !2925, !2938, !2939, !2947, !2951, !2952, !2956, !2957, !2961, !2966, !2967, !2971, !2975, !3083, !3087, !3088, !3092, !3093, !3097, !3101, !3106, !3110, !3114, !3118, !3122}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2903, file: !44, line: 1823, baseType: !226, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2903, file: !44, line: 1824, baseType: !2907, size: 64, offset: 64)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!573, !397, !573, !212}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2903, file: !44, line: 1825, baseType: !2911, size: 64, offset: 128)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{!352, !397, !323, !367, !2914}
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2903, file: !44, line: 1826, baseType: !2916, size: 64, offset: 192)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!352, !397, !224, !367, !2914}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2903, file: !44, line: 1827, baseType: !886, size: 64, offset: 256)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2903, file: !44, line: 1828, baseType: !886, size: 64, offset: 320)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2903, file: !44, line: 1829, baseType: !2922, size: 64, offset: 384)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!212, !889, !206}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2903, file: !44, line: 1830, baseType: !2926, size: 64, offset: 448)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{!212, !397, !2929}
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2931)
!2931 = !{!2932, !2937}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2930, file: !44, line: 1777, baseType: !2933, size: 64)
!2933 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2934)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{!212, !2929, !224, !212, !573, !466, !7}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2930, file: !44, line: 1778, baseType: !573, size: 64, offset: 64)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2903, file: !44, line: 1831, baseType: !2926, size: 64, offset: 512)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2903, file: !44, line: 1832, baseType: !2940, size: 64, offset: 576)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!2943, !397, !2945}
!2943 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2944, line: 52, baseType: !7)
!2944 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !661, line: 27, flags: DIFlagFwdDecl)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2903, file: !44, line: 1833, baseType: !2948, size: 64, offset: 640)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{!356, !397, !7, !188}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2903, file: !44, line: 1834, baseType: !2948, size: 64, offset: 704)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2903, file: !44, line: 1835, baseType: !2953, size: 64, offset: 768)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DISubroutineType(types: !2955)
!2955 = !{!212, !397, !1023}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2903, file: !44, line: 1836, baseType: !188, size: 64, offset: 832)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2903, file: !44, line: 1837, baseType: !2958, size: 64, offset: 896)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!212, !473, !397}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2903, file: !44, line: 1838, baseType: !2962, size: 64, offset: 960)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!212, !397, !2965}
!2965 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !134)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2903, file: !44, line: 1839, baseType: !2958, size: 64, offset: 1024)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2903, file: !44, line: 1840, baseType: !2968, size: 64, offset: 1088)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = !DISubroutineType(types: !2970)
!2970 = !{!212, !397, !573, !573, !212}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2903, file: !44, line: 1841, baseType: !2972, size: 64, offset: 1152)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = !DISubroutineType(types: !2974)
!2974 = !{!212, !212, !397, !212}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2903, file: !44, line: 1842, baseType: !2976, size: 64, offset: 1216)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{!212, !397, !212, !2979}
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2981)
!2981 = !{!2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !3013, !3014, !3015, !3028, !3059}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2980, file: !44, line: 1063, baseType: !2979, size: 64)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2980, file: !44, line: 1064, baseType: !269, size: 128, offset: 64)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2980, file: !44, line: 1065, baseType: !681, size: 128, offset: 192)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2980, file: !44, line: 1066, baseType: !269, size: 128, offset: 320)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2980, file: !44, line: 1069, baseType: !269, size: 128, offset: 448)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2980, file: !44, line: 1072, baseType: !2965, size: 64, offset: 576)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2980, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2980, file: !44, line: 1074, baseType: !137, size: 8, offset: 672)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2980, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2980, file: !44, line: 1076, baseType: !212, size: 32, offset: 736)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2980, file: !44, line: 1077, baseType: !1523, size: 128, offset: 768)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2980, file: !44, line: 1078, baseType: !397, size: 64, offset: 896)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2980, file: !44, line: 1079, baseType: !573, size: 64, offset: 960)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2980, file: !44, line: 1080, baseType: !573, size: 64, offset: 1024)
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
!3006 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !294, line: 33, baseType: !3007)
!3007 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !294, line: 31, elements: !296)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2998, file: !44, line: 1316, baseType: !212, size: 32)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2998, file: !44, line: 1317, baseType: !212, size: 32, offset: 32)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2998, file: !44, line: 1318, baseType: !2997, size: 64, offset: 64)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2998, file: !44, line: 1319, baseType: !397, size: 64, offset: 128)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2998, file: !44, line: 1320, baseType: !410, size: 128, align: 64, offset: 192)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2980, file: !44, line: 1084, baseType: !188, size: 64, offset: 1152)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2980, file: !44, line: 1085, baseType: !188, size: 64, offset: 1216)
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
!3045 = !{!212, !2979, !212}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3031, file: !44, line: 1021, baseType: !3047, size: 64, offset: 256)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{!206, !2979}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3031, file: !44, line: 1022, baseType: !3051, size: 64, offset: 320)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{!212, !2979, !212, !272}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3031, file: !44, line: 1023, baseType: !3055, size: 64, offset: 384)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{null, !2979, !863}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3031, file: !44, line: 1024, baseType: !3047, size: 64, offset: 448)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2980, file: !44, line: 1097, baseType: !3060, size: 256, offset: 1408)
!3060 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2980, file: !44, line: 1089, size: 256, elements: !3061)
!3061 = !{!3062, !3071, !3077}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3060, file: !44, line: 1090, baseType: !3063, size: 256)
!3063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3064, line: 10, size: 256, elements: !3065)
!3064 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3065 = !{!3066, !3067, !3070}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3063, file: !3064, line: 11, baseType: !460, size: 32)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3063, file: !3064, line: 12, baseType: !3068, size: 64, offset: 64)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3064, line: 5, flags: DIFlagFwdDecl)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3063, file: !3064, line: 13, baseType: !269, size: 128, offset: 128)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3060, file: !44, line: 1091, baseType: !3072, size: 64)
!3072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3064, line: 17, size: 64, elements: !3073)
!3073 = !{!3074}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3072, file: !3064, line: 18, baseType: !3075, size: 64)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3064, line: 16, flags: DIFlagFwdDecl)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3060, file: !44, line: 1096, baseType: !3078, size: 192)
!3078 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3060, file: !44, line: 1092, size: 192, elements: !3079)
!3079 = !{!3080, !3081, !3082}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3078, file: !44, line: 1093, baseType: !269, size: 128)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3078, file: !44, line: 1094, baseType: !212, size: 32, offset: 128)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3078, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2903, file: !44, line: 1843, baseType: !3084, size: 64, offset: 1280)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{!352, !397, !763, !212, !367, !2914, !212}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2903, file: !44, line: 1844, baseType: !1143, size: 64, offset: 1344)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2903, file: !44, line: 1845, baseType: !3089, size: 64, offset: 1408)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!212, !212}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2903, file: !44, line: 1846, baseType: !2976, size: 64, offset: 1472)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2903, file: !44, line: 1847, baseType: !3094, size: 64, offset: 1536)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = !DISubroutineType(types: !3096)
!3096 = !{!352, !2140, !397, !2914, !367, !7}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2903, file: !44, line: 1848, baseType: !3098, size: 64, offset: 1600)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!352, !397, !2914, !2140, !367, !7}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2903, file: !44, line: 1849, baseType: !3102, size: 64, offset: 1664)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{!212, !397, !356, !3105, !863}
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2903, file: !44, line: 1850, baseType: !3107, size: 64, offset: 1728)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!356, !397, !212, !573, !573}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2903, file: !44, line: 1852, baseType: !3111, size: 64, offset: 1792)
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3112, size: 64)
!3112 = !DISubroutineType(types: !3113)
!3113 = !{null, !753, !397}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2903, file: !44, line: 1856, baseType: !3115, size: 64, offset: 1856)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{!352, !397, !573, !397, !573, !367, !7}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2903, file: !44, line: 1858, baseType: !3119, size: 64, offset: 1920)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!573, !397, !573, !397, !573, !573, !7}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2903, file: !44, line: 1861, baseType: !2968, size: 64, offset: 1984)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2898, file: !44, line: 692, baseType: !706, size: 64)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !474, file: !44, line: 694, baseType: !3125, size: 64, offset: 2560)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3127)
!3127 = !{!3128, !3129, !3130, !3131}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3126, file: !44, line: 1101, baseType: !282)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3126, file: !44, line: 1102, baseType: !269, size: 128)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3126, file: !44, line: 1103, baseType: !269, size: 128, offset: 128)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3126, file: !44, line: 1104, baseType: !269, size: 128, offset: 256)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !474, file: !44, line: 695, baseType: !777, size: 1216, align: 64, offset: 2624)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !474, file: !44, line: 696, baseType: !269, size: 128, offset: 3840)
!3134 = !DIDerivedType(tag: DW_TAG_member, scope: !474, file: !44, line: 697, baseType: !3135, size: 64, offset: 3968)
!3135 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !474, file: !44, line: 697, size: 64, elements: !3136)
!3136 = !{!3137, !3138, !3139, !3142, !3143}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3135, file: !44, line: 698, baseType: !2140, size: 64)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3135, file: !44, line: 699, baseType: !2653, size: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3135, file: !44, line: 700, baseType: !3140, size: 64)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3135, file: !44, line: 701, baseType: !323, size: 64)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3135, file: !44, line: 702, baseType: !7, size: 32)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !474, file: !44, line: 705, baseType: !462, size: 32, offset: 4032)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !474, file: !44, line: 708, baseType: !462, size: 32, offset: 4064)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !474, file: !44, line: 709, baseType: !2735, size: 64, offset: 4096)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !474, file: !44, line: 720, baseType: !134, size: 64, offset: 4160)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !428, file: !425, line: 98, baseType: !3149, size: 256, offset: 448)
!3149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 256, elements: !242)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !428, file: !425, line: 101, baseType: !3151, size: 32, offset: 704)
!3151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3152, line: 25, size: 32, elements: !3153)
!3152 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3153 = !{!3154}
!3154 = !DIDerivedType(tag: DW_TAG_member, scope: !3151, file: !3152, line: 26, baseType: !3155, size: 32)
!3155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3151, file: !3152, line: 26, size: 32, elements: !3156)
!3156 = !{!3157}
!3157 = !DIDerivedType(tag: DW_TAG_member, scope: !3155, file: !3152, line: 30, baseType: !3158, size: 32)
!3158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3155, file: !3152, line: 30, size: 32, elements: !3159)
!3159 = !{!3160, !3161}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3158, file: !3152, line: 31, baseType: !282)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3158, file: !3152, line: 32, baseType: !212, size: 32)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !428, file: !425, line: 102, baseType: !2752, size: 64, offset: 768)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !428, file: !425, line: 103, baseType: !641, size: 64, offset: 832)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !428, file: !425, line: 104, baseType: !188, size: 64, offset: 896)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !428, file: !425, line: 105, baseType: !134, size: 64, offset: 960)
!3166 = !DIDerivedType(tag: DW_TAG_member, scope: !428, file: !425, line: 107, baseType: !3167, size: 128, offset: 1024)
!3167 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !428, file: !425, line: 107, size: 128, elements: !3168)
!3168 = !{!3169, !3170}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3167, file: !425, line: 108, baseType: !269, size: 128)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3167, file: !425, line: 109, baseType: !3171, size: 64)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !428, file: !425, line: 111, baseType: !269, size: 128, offset: 1152)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !428, file: !425, line: 112, baseType: !269, size: 128, offset: 1280)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !428, file: !425, line: 120, baseType: !3175, size: 128, offset: 1408)
!3175 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !428, file: !425, line: 116, size: 128, elements: !3176)
!3176 = !{!3177, !3178, !3179}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3175, file: !425, line: 117, baseType: !681, size: 128)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3175, file: !425, line: 118, baseType: !442, size: 128)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3175, file: !425, line: 119, baseType: !410, size: 128, align: 64)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !398, file: !44, line: 922, baseType: !473, size: 64, offset: 256)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !398, file: !44, line: 923, baseType: !2901, size: 64, offset: 320)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !398, file: !44, line: 929, baseType: !282, offset: 384)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !398, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !398, file: !44, line: 931, baseType: !813, size: 64, offset: 448)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !398, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !398, file: !44, line: 933, baseType: !2748, size: 32, offset: 544)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !398, file: !44, line: 934, baseType: !1215, size: 192, offset: 576)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !398, file: !44, line: 935, baseType: !573, size: 64, offset: 768)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !398, file: !44, line: 936, baseType: !3190, size: 192, offset: 832)
!3190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3191)
!3191 = !{!3192, !3193, !3194, !3195, !3196, !3197}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3190, file: !44, line: 886, baseType: !3001)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3190, file: !44, line: 887, baseType: !1513, size: 64)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3190, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3190, file: !44, line: 889, baseType: !479, size: 32, offset: 96)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3190, file: !44, line: 889, baseType: !479, size: 32, offset: 128)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3190, file: !44, line: 890, baseType: !212, size: 32, offset: 160)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !398, file: !44, line: 937, baseType: !1589, size: 64, offset: 1024)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !398, file: !44, line: 938, baseType: !3200, size: 256, offset: 1088)
!3200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3201)
!3201 = !{!3202, !3203, !3204, !3205, !3206, !3207}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3200, file: !44, line: 897, baseType: !188, size: 64)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3200, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3200, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3200, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3200, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3200, file: !44, line: 904, baseType: !573, size: 64, offset: 192)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !398, file: !44, line: 940, baseType: !466, size: 64, offset: 1344)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !398, file: !44, line: 945, baseType: !134, size: 64, offset: 1408)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !398, file: !44, line: 949, baseType: !269, size: 128, offset: 1472)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !398, file: !44, line: 950, baseType: !269, size: 128, offset: 1600)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !398, file: !44, line: 952, baseType: !776, size: 64, offset: 1728)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !398, file: !44, line: 953, baseType: !951, size: 32, offset: 1792)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !398, file: !44, line: 954, baseType: !951, size: 32, offset: 1824)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !388, file: !346, line: 174, baseType: !394, size: 64, offset: 320)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !388, file: !346, line: 176, baseType: !3217, size: 64, offset: 384)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DISubroutineType(types: !3219)
!3219 = !{!212, !397, !275, !387, !1023}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !376, file: !346, line: 90, baseType: !371, size: 64, offset: 192)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !376, file: !346, line: 91, baseType: !3222, size: 64, offset: 256)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !336, file: !265, line: 143, baseType: !3224, size: 64, offset: 256)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!3227, !275}
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3229)
!3229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3230)
!3230 = !{!3231, !3232, !3236, !3240, !3246, !3250}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3229, file: !61, line: 40, baseType: !60, size: 32)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3229, file: !61, line: 41, baseType: !3233, size: 64, offset: 64)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!206}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3229, file: !61, line: 42, baseType: !3237, size: 64, offset: 128)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!134}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3229, file: !61, line: 43, baseType: !3241, size: 64, offset: 192)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!2169, !3244}
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3229, file: !61, line: 44, baseType: !3247, size: 64, offset: 256)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{!2169}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3229, file: !61, line: 45, baseType: !512, size: 64, offset: 320)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !336, file: !265, line: 144, baseType: !3252, size: 64, offset: 320)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!2169, !275}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !336, file: !265, line: 145, baseType: !3256, size: 64, offset: 384)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{null, !275, !3259, !3260}
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !264, file: !265, line: 70, baseType: !3262, size: 64, offset: 384)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !661, line: 123, size: 1024, elements: !3264)
!3264 = !{!3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3393, !3394, !3395, !3396, !3397}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3263, file: !661, line: 124, baseType: !789, size: 32)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3263, file: !661, line: 125, baseType: !789, size: 32, offset: 32)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3263, file: !661, line: 135, baseType: !3262, size: 64, offset: 64)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3263, file: !661, line: 136, baseType: !224, size: 64, offset: 128)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3263, file: !661, line: 138, baseType: !802, size: 192, align: 64, offset: 192)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3263, file: !661, line: 140, baseType: !2169, size: 64, offset: 384)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3263, file: !661, line: 141, baseType: !7, size: 32, offset: 448)
!3272 = !DIDerivedType(tag: DW_TAG_member, scope: !3263, file: !661, line: 142, baseType: !3273, size: 256, offset: 512)
!3273 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3263, file: !661, line: 142, size: 256, elements: !3274)
!3274 = !{!3275, !3321, !3325}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3273, file: !661, line: 143, baseType: !3276, size: 192)
!3276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !661, line: 91, size: 192, elements: !3277)
!3277 = !{!3278, !3279, !3280}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3276, file: !661, line: 92, baseType: !188, size: 64)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3276, file: !661, line: 94, baseType: !798, size: 64, offset: 64)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3276, file: !661, line: 100, baseType: !3281, size: 64, offset: 128)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !661, line: 180, size: 704, elements: !3283)
!3283 = !{!3284, !3285, !3286, !3293, !3294, !3295, !3319, !3320}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3282, file: !661, line: 182, baseType: !3262, size: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3282, file: !661, line: 183, baseType: !7, size: 32, offset: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3282, file: !661, line: 186, baseType: !3287, size: 192, offset: 128)
!3287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3288, line: 19, size: 192, elements: !3289)
!3288 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3289 = !{!3290, !3291, !3292}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3287, file: !3288, line: 20, baseType: !781, size: 128)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3287, file: !3288, line: 21, baseType: !7, size: 32, offset: 128)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3287, file: !3288, line: 22, baseType: !7, size: 32, offset: 160)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3282, file: !661, line: 187, baseType: !460, size: 32, offset: 320)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3282, file: !661, line: 188, baseType: !460, size: 32, offset: 352)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3282, file: !661, line: 189, baseType: !3296, size: 64, offset: 384)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !661, line: 168, size: 320, elements: !3298)
!3298 = !{!3299, !3303, !3307, !3311, !3315}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3297, file: !661, line: 169, baseType: !3300, size: 64)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{!212, !753, !3281}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3297, file: !661, line: 171, baseType: !3304, size: 64, offset: 64)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DISubroutineType(types: !3306)
!3306 = !{!212, !3262, !224, !362}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3297, file: !661, line: 173, baseType: !3308, size: 64, offset: 128)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{!212, !3262}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3297, file: !661, line: 174, baseType: !3312, size: 64, offset: 192)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DISubroutineType(types: !3314)
!3314 = !{!212, !3262, !3262, !224}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3297, file: !661, line: 176, baseType: !3316, size: 64, offset: 256)
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = !DISubroutineType(types: !3318)
!3318 = !{!212, !753, !3262, !3281}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3282, file: !661, line: 192, baseType: !269, size: 128, offset: 448)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3282, file: !661, line: 194, baseType: !1523, size: 128, offset: 576)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3273, file: !661, line: 144, baseType: !3322, size: 64)
!3322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !661, line: 103, size: 64, elements: !3323)
!3323 = !{!3324}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3322, file: !661, line: 104, baseType: !3262, size: 64)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3273, file: !661, line: 145, baseType: !3326, size: 256)
!3326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !661, line: 107, size: 256, elements: !3327)
!3327 = !{!3328, !3388, !3391, !3392}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3326, file: !661, line: 108, baseType: !3329, size: 64)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3331)
!3331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !661, line: 217, size: 768, elements: !3332)
!3332 = !{!3333, !3353, !3357, !3361, !3365, !3369, !3373, !3377, !3378, !3379, !3380, !3384}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3331, file: !661, line: 222, baseType: !3334, size: 64)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{!212, !3337}
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !661, line: 197, size: 1088, elements: !3339)
!3339 = !{!3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3338, file: !661, line: 199, baseType: !3262, size: 64)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3338, file: !661, line: 200, baseType: !397, size: 64, offset: 64)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3338, file: !661, line: 201, baseType: !753, size: 64, offset: 128)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3338, file: !661, line: 202, baseType: !134, size: 64, offset: 192)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3338, file: !661, line: 205, baseType: !1215, size: 192, offset: 256)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3338, file: !661, line: 206, baseType: !1215, size: 192, offset: 448)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3338, file: !661, line: 207, baseType: !212, size: 32, offset: 640)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3338, file: !661, line: 208, baseType: !269, size: 128, offset: 704)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3338, file: !661, line: 209, baseType: !323, size: 64, offset: 832)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3338, file: !661, line: 211, baseType: !367, size: 64, offset: 896)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3338, file: !661, line: 212, baseType: !206, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3338, file: !661, line: 213, baseType: !206, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3338, file: !661, line: 214, baseType: !1051, size: 64, offset: 1024)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3331, file: !661, line: 223, baseType: !3354, size: 64, offset: 64)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{null, !3337}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3331, file: !661, line: 236, baseType: !3358, size: 64, offset: 128)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!212, !753, !134}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3331, file: !661, line: 238, baseType: !3362, size: 64, offset: 192)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{!134, !753, !2914}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3331, file: !661, line: 239, baseType: !3366, size: 64, offset: 256)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!134, !753, !134, !2914}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3331, file: !661, line: 240, baseType: !3370, size: 64, offset: 320)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{null, !753, !134}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3331, file: !661, line: 242, baseType: !3374, size: 64, offset: 384)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{!352, !3337, !323, !367, !573}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3331, file: !661, line: 252, baseType: !367, size: 64, offset: 448)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3331, file: !661, line: 259, baseType: !206, size: 8, offset: 512)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3331, file: !661, line: 260, baseType: !3374, size: 64, offset: 576)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3331, file: !661, line: 263, baseType: !3381, size: 64, offset: 640)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = !DISubroutineType(types: !3383)
!3383 = !{!2943, !3337, !2945}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3331, file: !661, line: 266, baseType: !3385, size: 64, offset: 704)
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = !DISubroutineType(types: !3387)
!3387 = !{!212, !3337, !1023}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3326, file: !661, line: 109, baseType: !3389, size: 64, offset: 64)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !661, line: 31, flags: DIFlagFwdDecl)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3326, file: !661, line: 110, baseType: !573, size: 64, offset: 128)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3326, file: !661, line: 111, baseType: !3262, size: 64, offset: 192)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3263, file: !661, line: 148, baseType: !134, size: 64, offset: 768)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3263, file: !661, line: 154, baseType: !466, size: 64, offset: 832)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3263, file: !661, line: 156, baseType: !140, size: 16, offset: 896)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3263, file: !661, line: 157, baseType: !362, size: 16, offset: 912)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3263, file: !661, line: 158, baseType: !3398, size: 64, offset: 960)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !661, line: 32, flags: DIFlagFwdDecl)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !264, file: !265, line: 71, baseType: !3401, size: 32, offset: 448)
!3401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3402, line: 19, size: 32, elements: !3403)
!3402 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3403 = !{!3404}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3401, file: !3402, line: 20, baseType: !1272, size: 32)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !264, file: !265, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !264, file: !265, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !264, file: !265, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !264, file: !265, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !264, file: !265, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !261, file: !73, line: 463, baseType: !260, size: 64, offset: 512)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !261, file: !73, line: 465, baseType: !3412, size: 64, offset: 576)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !261, file: !73, line: 467, baseType: !224, size: 64, offset: 640)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !261, file: !73, line: 468, baseType: !3416, size: 64, offset: 704)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3418)
!3418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3419)
!3419 = !{!3420, !3421, !3422, !3426, !3431, !3435}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3418, file: !73, line: 88, baseType: !224, size: 64)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3418, file: !73, line: 89, baseType: !373, size: 64, offset: 64)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3418, file: !73, line: 90, baseType: !3423, size: 64, offset: 128)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{!212, !260, !318}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3418, file: !73, line: 91, baseType: !3427, size: 64, offset: 192)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DISubroutineType(types: !3429)
!3429 = !{!323, !260, !3430, !3259, !3260}
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3418, file: !73, line: 93, baseType: !3432, size: 64, offset: 256)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{null, !260}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3418, file: !73, line: 95, baseType: !3436, size: 64, offset: 320)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3438)
!3438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3439)
!3439 = !{!3440, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3438, file: !80, line: 279, baseType: !3441, size: 64)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!212, !260}
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
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !261, file: !73, line: 470, baseType: !3467, size: 64, offset: 768)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3469, line: 82, size: 1408, elements: !3470)
!3469 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3470 = !{!3471, !3472, !3473, !3474, !3475, !3476, !3477, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3534, !3537, !3538}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3468, file: !3469, line: 83, baseType: !224, size: 64)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3468, file: !3469, line: 84, baseType: !224, size: 64, offset: 64)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3468, file: !3469, line: 85, baseType: !260, size: 64, offset: 128)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3468, file: !3469, line: 86, baseType: !373, size: 64, offset: 192)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3468, file: !3469, line: 87, baseType: !373, size: 64, offset: 256)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3468, file: !3469, line: 88, baseType: !373, size: 64, offset: 320)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3468, file: !3469, line: 90, baseType: !3478, size: 64, offset: 384)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DISubroutineType(types: !3480)
!3480 = !{!212, !260, !3481}
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3483)
!3483 = !{!3484, !3485, !3486, !3487, !3488, !3489, !3490, !3494, !3498, !3499, !3500, !3501, !3502, !3510, !3511, !3512, !3513, !3514, !3515}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3482, file: !67, line: 96, baseType: !224, size: 64)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3482, file: !67, line: 97, baseType: !3467, size: 64, offset: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3482, file: !67, line: 99, baseType: !226, size: 64, offset: 128)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3482, file: !67, line: 100, baseType: !224, size: 64, offset: 192)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3482, file: !67, line: 102, baseType: !206, size: 8, offset: 256)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3482, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3482, file: !67, line: 105, baseType: !3491, size: 64, offset: 320)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3493)
!3493 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !67, line: 105, flags: DIFlagFwdDecl)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3482, file: !67, line: 106, baseType: !3495, size: 64, offset: 384)
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3497)
!3497 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !67, line: 106, flags: DIFlagFwdDecl)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3482, file: !67, line: 108, baseType: !3441, size: 64, offset: 448)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3482, file: !67, line: 109, baseType: !3432, size: 64, offset: 512)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3482, file: !67, line: 110, baseType: !3441, size: 64, offset: 576)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3482, file: !67, line: 111, baseType: !3432, size: 64, offset: 640)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3482, file: !67, line: 112, baseType: !3503, size: 64, offset: 704)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{!212, !260, !3506}
!3506 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3507)
!3507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3508)
!3508 = !{!3509}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3507, file: !80, line: 51, baseType: !212, size: 32)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3482, file: !67, line: 113, baseType: !3441, size: 64, offset: 768)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3482, file: !67, line: 114, baseType: !373, size: 64, offset: 832)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3482, file: !67, line: 115, baseType: !373, size: 64, offset: 896)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3482, file: !67, line: 117, baseType: !3436, size: 64, offset: 960)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3482, file: !67, line: 118, baseType: !3432, size: 64, offset: 1024)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3482, file: !67, line: 120, baseType: !3516, size: 64, offset: 1088)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3468, file: !3469, line: 91, baseType: !3423, size: 64, offset: 448)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3468, file: !3469, line: 92, baseType: !3441, size: 64, offset: 512)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3468, file: !3469, line: 93, baseType: !3432, size: 64, offset: 576)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3468, file: !3469, line: 94, baseType: !3441, size: 64, offset: 640)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3468, file: !3469, line: 95, baseType: !3432, size: 64, offset: 704)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3468, file: !3469, line: 97, baseType: !3441, size: 64, offset: 768)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3468, file: !3469, line: 98, baseType: !3441, size: 64, offset: 832)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3468, file: !3469, line: 100, baseType: !3503, size: 64, offset: 896)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3468, file: !3469, line: 101, baseType: !3441, size: 64, offset: 960)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3468, file: !3469, line: 103, baseType: !3441, size: 64, offset: 1024)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3468, file: !3469, line: 105, baseType: !3441, size: 64, offset: 1088)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3468, file: !3469, line: 107, baseType: !3436, size: 64, offset: 1152)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3468, file: !3469, line: 109, baseType: !3531, size: 64, offset: 1216)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3533)
!3533 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3469, line: 109, flags: DIFlagFwdDecl)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3468, file: !3469, line: 111, baseType: !3535, size: 64, offset: 1280)
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3536, size: 64)
!3536 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3469, line: 111, flags: DIFlagFwdDecl)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3468, file: !3469, line: 112, baseType: !687, offset: 1344)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3468, file: !3469, line: 114, baseType: !206, size: 8, offset: 1344)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !261, file: !73, line: 471, baseType: !3481, size: 64, offset: 832)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !261, file: !73, line: 473, baseType: !134, size: 64, offset: 896)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !261, file: !73, line: 475, baseType: !134, size: 64, offset: 960)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !261, file: !73, line: 480, baseType: !1215, size: 192, offset: 1024)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !261, file: !73, line: 484, baseType: !3544, size: 576, offset: 1216)
!3544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3545)
!3545 = !{!3546, !3547, !3548, !3549, !3550, !3551}
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3544, file: !73, line: 362, baseType: !269, size: 128)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3544, file: !73, line: 363, baseType: !269, size: 128, offset: 128)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3544, file: !73, line: 364, baseType: !269, size: 128, offset: 256)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3544, file: !73, line: 365, baseType: !269, size: 128, offset: 384)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3544, file: !73, line: 366, baseType: !206, size: 8, offset: 512)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3544, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !261, file: !73, line: 485, baseType: !3553, size: 2304, offset: 1792)
!3553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3554)
!3554 = !{!3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3650, !3654}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3553, file: !80, line: 566, baseType: !3506, size: 32)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3553, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3553, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3553, file: !80, line: 569, baseType: !206, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3553, file: !80, line: 570, baseType: !206, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3553, file: !80, line: 571, baseType: !206, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3553, file: !80, line: 572, baseType: !206, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3553, file: !80, line: 573, baseType: !206, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3553, file: !80, line: 574, baseType: !206, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3553, file: !80, line: 575, baseType: !206, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3553, file: !80, line: 576, baseType: !206, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3553, file: !80, line: 577, baseType: !460, size: 32, offset: 64)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3553, file: !80, line: 578, baseType: !282, offset: 96)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3553, file: !80, line: 580, baseType: !269, size: 128, offset: 128)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3553, file: !80, line: 581, baseType: !1544, size: 192, offset: 256)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3553, file: !80, line: 582, baseType: !3571, size: 64, offset: 448)
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3573, line: 43, size: 1472, elements: !3574)
!3573 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3574 = !{!3575, !3576, !3577, !3578, !3579, !3582, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3572, file: !3573, line: 44, baseType: !224, size: 64)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3572, file: !3573, line: 45, baseType: !212, size: 32, offset: 64)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3572, file: !3573, line: 46, baseType: !269, size: 128, offset: 128)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3572, file: !3573, line: 47, baseType: !282, offset: 256)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3572, file: !3573, line: 48, baseType: !3580, size: 64, offset: 256)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3572, file: !3573, line: 49, baseType: !3583, size: 320, offset: 320)
!3583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3584, line: 11, size: 320, elements: !3585)
!3584 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3585 = !{!3586, !3587, !3588, !3593}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3583, file: !3584, line: 16, baseType: !681, size: 128)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3583, file: !3584, line: 17, baseType: !188, size: 64, offset: 128)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3583, file: !3584, line: 18, baseType: !3589, size: 64, offset: 192)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{null, !3592}
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3583, file: !3584, line: 19, baseType: !460, size: 32, offset: 256)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3572, file: !3573, line: 50, baseType: !188, size: 64, offset: 640)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3572, file: !3573, line: 51, baseType: !1342, size: 64, offset: 704)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3572, file: !3573, line: 52, baseType: !1342, size: 64, offset: 768)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3572, file: !3573, line: 53, baseType: !1342, size: 64, offset: 832)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3572, file: !3573, line: 54, baseType: !1342, size: 64, offset: 896)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3572, file: !3573, line: 55, baseType: !1342, size: 64, offset: 960)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3572, file: !3573, line: 56, baseType: !188, size: 64, offset: 1024)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3572, file: !3573, line: 57, baseType: !188, size: 64, offset: 1088)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3572, file: !3573, line: 58, baseType: !188, size: 64, offset: 1152)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3572, file: !3573, line: 59, baseType: !188, size: 64, offset: 1216)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3572, file: !3573, line: 60, baseType: !188, size: 64, offset: 1280)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3572, file: !3573, line: 61, baseType: !260, size: 64, offset: 1344)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3572, file: !3573, line: 62, baseType: !206, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3572, file: !3573, line: 63, baseType: !206, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3553, file: !80, line: 583, baseType: !206, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3553, file: !80, line: 584, baseType: !206, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3553, file: !80, line: 585, baseType: !206, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3553, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3553, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3553, file: !80, line: 592, baseType: !1334, size: 512, offset: 576)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3553, file: !80, line: 593, baseType: !466, size: 64, offset: 1088)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3553, file: !80, line: 594, baseType: !1999, size: 256, offset: 1152)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3553, file: !80, line: 595, baseType: !1523, size: 128, offset: 1408)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3553, file: !80, line: 596, baseType: !3580, size: 64, offset: 1536)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3553, file: !80, line: 597, baseType: !789, size: 32, offset: 1600)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3553, file: !80, line: 598, baseType: !789, size: 32, offset: 1632)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3553, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3553, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3553, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3553, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3553, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3553, file: !80, line: 604, baseType: !206, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3553, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3553, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3553, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3553, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3553, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3553, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3553, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3553, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3553, file: !80, line: 613, baseType: !212, size: 32, offset: 1792)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3553, file: !80, line: 614, baseType: !212, size: 32, offset: 1824)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3553, file: !80, line: 615, baseType: !466, size: 64, offset: 1856)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3553, file: !80, line: 616, baseType: !466, size: 64, offset: 1920)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3553, file: !80, line: 617, baseType: !466, size: 64, offset: 1984)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3553, file: !80, line: 618, baseType: !466, size: 64, offset: 2048)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3553, file: !80, line: 620, baseType: !3641, size: 64, offset: 2112)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3643)
!3643 = !{!3644, !3645, !3646, !3647}
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3642, file: !80, line: 537, baseType: !282)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3642, file: !80, line: 538, baseType: !7, size: 32)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3642, file: !80, line: 540, baseType: !269, size: 128, offset: 64)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3642, file: !80, line: 543, baseType: !3648, size: 64, offset: 192)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3553, file: !80, line: 621, baseType: !3651, size: 64, offset: 2176)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{null, !260, !1486}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3553, file: !80, line: 622, baseType: !3655, size: 64, offset: 2240)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !261, file: !73, line: 486, baseType: !3658, size: 64, offset: 4096)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3660)
!3660 = !{!3661, !3662, !3663, !3667, !3668, !3669}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3659, file: !80, line: 643, baseType: !3438, size: 1472)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3659, file: !80, line: 644, baseType: !3441, size: 64, offset: 1472)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3659, file: !80, line: 645, baseType: !3664, size: 64, offset: 1536)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = !DISubroutineType(types: !3666)
!3666 = !{null, !260, !206}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3659, file: !80, line: 646, baseType: !3441, size: 64, offset: 1600)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3659, file: !80, line: 647, baseType: !3432, size: 64, offset: 1664)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3659, file: !80, line: 648, baseType: !3432, size: 64, offset: 1728)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !261, file: !73, line: 493, baseType: !3671, size: 64, offset: 4160)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !73, line: 493, flags: DIFlagFwdDecl)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !261, file: !73, line: 499, baseType: !269, size: 128, offset: 4224)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !261, file: !73, line: 502, baseType: !3675, size: 64, offset: 4352)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3677)
!3677 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !261, file: !73, line: 504, baseType: !3679, size: 64, offset: 4416)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !261, file: !73, line: 505, baseType: !466, size: 64, offset: 4480)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !261, file: !73, line: 510, baseType: !466, size: 64, offset: 4544)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !261, file: !73, line: 511, baseType: !3683, size: 64, offset: 4608)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3685)
!3685 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !261, file: !73, line: 513, baseType: !3687, size: 64, offset: 4672)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3689)
!3689 = !{!3690, !3691}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3688, file: !73, line: 293, baseType: !7, size: 32)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3688, file: !73, line: 294, baseType: !188, size: 64, offset: 64)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !261, file: !73, line: 515, baseType: !269, size: 128, offset: 4736)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !261, file: !73, line: 526, baseType: !3694, offset: 4864)
!3694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3695, line: 5, elements: !296)
!3695 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !261, file: !73, line: 528, baseType: !3697, size: 64, offset: 4864)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3699, line: 14, flags: DIFlagFwdDecl)
!3699 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !261, file: !73, line: 529, baseType: !3701, size: 64, offset: 4928)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3703, line: 17, size: 192, elements: !3704)
!3703 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3704 = !{!3705, !3706, !3789}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3702, file: !3703, line: 18, baseType: !3701, size: 64)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3702, file: !3703, line: 19, baseType: !3707, size: 64, offset: 64)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3709)
!3709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3703, line: 110, size: 1152, elements: !3710)
!3710 = !{!3711, !3715, !3719, !3725, !3731, !3735, !3739, !3744, !3748, !3749, !3753, !3757, !3761, !3772, !3773, !3774, !3775, !3785}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3709, file: !3703, line: 111, baseType: !3712, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = !DISubroutineType(types: !3714)
!3714 = !{!3701, !3701}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3709, file: !3703, line: 112, baseType: !3716, size: 64, offset: 64)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = !DISubroutineType(types: !3718)
!3718 = !{null, !3701}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3709, file: !3703, line: 113, baseType: !3720, size: 64, offset: 128)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!206, !3723}
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3702)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3709, file: !3703, line: 114, baseType: !3726, size: 64, offset: 192)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{!2169, !3723, !3729}
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3709, file: !3703, line: 116, baseType: !3732, size: 64, offset: 256)
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DISubroutineType(types: !3734)
!3734 = !{!206, !3723, !224}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3709, file: !3703, line: 118, baseType: !3736, size: 64, offset: 320)
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = !DISubroutineType(types: !3738)
!3738 = !{!212, !3723, !224, !7, !134, !367}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3709, file: !3703, line: 123, baseType: !3740, size: 64, offset: 384)
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3741, size: 64)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{!212, !3723, !224, !3743, !367}
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3709, file: !3703, line: 126, baseType: !3745, size: 64, offset: 448)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{!224, !3723}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3709, file: !3703, line: 127, baseType: !3745, size: 64, offset: 512)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3709, file: !3703, line: 128, baseType: !3750, size: 64, offset: 576)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DISubroutineType(types: !3752)
!3752 = !{!3701, !3723}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3709, file: !3703, line: 130, baseType: !3754, size: 64, offset: 640)
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = !DISubroutineType(types: !3756)
!3756 = !{!3701, !3723, !3701}
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3709, file: !3703, line: 133, baseType: !3758, size: 64, offset: 704)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = !DISubroutineType(types: !3760)
!3760 = !{!3701, !3723, !224}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3709, file: !3703, line: 135, baseType: !3762, size: 64, offset: 768)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DISubroutineType(types: !3764)
!3764 = !{!212, !3723, !224, !224, !7, !7, !3765}
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3703, line: 43, size: 640, elements: !3767)
!3767 = !{!3768, !3769, !3770}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3766, file: !3703, line: 44, baseType: !3701, size: 64)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3766, file: !3703, line: 45, baseType: !7, size: 32, offset: 64)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3766, file: !3703, line: 46, baseType: !3771, size: 512, offset: 128)
!3771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !466, size: 512, elements: !1372)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3709, file: !3703, line: 140, baseType: !3754, size: 64, offset: 832)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3709, file: !3703, line: 143, baseType: !3750, size: 64, offset: 896)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3709, file: !3703, line: 145, baseType: !3712, size: 64, offset: 960)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3709, file: !3703, line: 146, baseType: !3776, size: 64, offset: 1024)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DISubroutineType(types: !3778)
!3778 = !{!212, !3723, !3779}
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3703, line: 29, size: 128, elements: !3781)
!3781 = !{!3782, !3783, !3784}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3780, file: !3703, line: 30, baseType: !7, size: 32)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3780, file: !3703, line: 31, baseType: !7, size: 32, offset: 32)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3780, file: !3703, line: 32, baseType: !3723, size: 64, offset: 64)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3709, file: !3703, line: 148, baseType: !3786, size: 64, offset: 1088)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{!212, !3723, !260}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3702, file: !3703, line: 20, baseType: !260, size: 64, offset: 128)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !261, file: !73, line: 534, baseType: !555, size: 32, offset: 4992)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !261, file: !73, line: 535, baseType: !460, size: 32, offset: 5024)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !261, file: !73, line: 537, baseType: !282, offset: 5056)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !261, file: !73, line: 538, baseType: !269, size: 128, offset: 5056)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !261, file: !73, line: 540, baseType: !3795, size: 64, offset: 5184)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3797, line: 54, size: 960, elements: !3798)
!3797 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3798 = !{!3799, !3800, !3801, !3802, !3803, !3804, !3805, !3809, !3813, !3814, !3815, !3816, !3820, !3824, !3825}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3796, file: !3797, line: 55, baseType: !224, size: 64)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3796, file: !3797, line: 56, baseType: !226, size: 64, offset: 64)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3796, file: !3797, line: 58, baseType: !373, size: 64, offset: 128)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3796, file: !3797, line: 59, baseType: !373, size: 64, offset: 192)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3796, file: !3797, line: 60, baseType: !275, size: 64, offset: 256)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3796, file: !3797, line: 62, baseType: !3423, size: 64, offset: 320)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3796, file: !3797, line: 63, baseType: !3806, size: 64, offset: 384)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!323, !260, !3430}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3796, file: !3797, line: 65, baseType: !3810, size: 64, offset: 448)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{null, !3795}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3796, file: !3797, line: 66, baseType: !3432, size: 64, offset: 512)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3796, file: !3797, line: 68, baseType: !3441, size: 64, offset: 576)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3796, file: !3797, line: 70, baseType: !3227, size: 64, offset: 640)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3796, file: !3797, line: 71, baseType: !3817, size: 64, offset: 704)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!2169, !260}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3796, file: !3797, line: 73, baseType: !3821, size: 64, offset: 768)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DISubroutineType(types: !3823)
!3823 = !{null, !260, !3259, !3260}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3796, file: !3797, line: 75, baseType: !3436, size: 64, offset: 832)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3796, file: !3797, line: 77, baseType: !3535, size: 64, offset: 896)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !261, file: !73, line: 541, baseType: !373, size: 64, offset: 5248)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !261, file: !73, line: 543, baseType: !3432, size: 64, offset: 5312)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !261, file: !73, line: 544, baseType: !3829, size: 64, offset: 5376)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !261, file: !73, line: 545, baseType: !3832, size: 64, offset: 5440)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !261, file: !73, line: 547, baseType: !206, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !261, file: !73, line: 548, baseType: !206, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !261, file: !73, line: 549, baseType: !206, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !261, file: !73, line: 550, baseType: !206, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !214, file: !215, line: 548, baseType: !212, size: 32, offset: 320)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "detach_count", scope: !214, file: !215, line: 549, baseType: !7, size: 32, offset: 352)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "hw_dev", scope: !214, file: !215, line: 550, baseType: !260, size: 64, offset: 384)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !214, file: !215, line: 552, baseType: !224, size: 64, offset: 448)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "board_ptr", scope: !214, file: !215, line: 553, baseType: !2169, size: 64, offset: 512)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "attached", scope: !214, file: !215, line: 554, baseType: !7, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "ioenabled", scope: !214, file: !215, line: 555, baseType: !7, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "spinlock", scope: !214, file: !215, line: 556, baseType: !282, offset: 584)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !214, file: !215, line: 557, baseType: !1215, size: 192, offset: 640)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "attach_lock", scope: !214, file: !215, line: 558, baseType: !809, size: 256, offset: 832)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !214, file: !215, line: 559, baseType: !3401, size: 32, offset: 1088)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "n_subdevices", scope: !214, file: !215, line: 561, baseType: !212, size: 32, offset: 1120)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "subdevices", scope: !214, file: !215, line: 562, baseType: !3851, size: 64, offset: 1152)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_subdevice", file: !215, line: 153, size: 1792, elements: !3853)
!3853 = !{!3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3929, !3942, !3945, !3946, !3947, !3948, !3949, !3950, !3954, !3959, !3960, !3961, !3962, !3966, !3967, !3968, !3969, !3970}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3852, file: !215, line: 154, baseType: !213, size: 64)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3852, file: !215, line: 155, baseType: !212, size: 32, offset: 64)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3852, file: !215, line: 156, baseType: !212, size: 32, offset: 96)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "n_chan", scope: !3852, file: !215, line: 157, baseType: !212, size: 32, offset: 128)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "subdev_flags", scope: !3852, file: !215, line: 158, baseType: !212, size: 32, offset: 160)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "len_chanlist", scope: !3852, file: !215, line: 159, baseType: !212, size: 32, offset: 192)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3852, file: !215, line: 161, baseType: !134, size: 64, offset: 256)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "async", scope: !3852, file: !215, line: 163, baseType: !3862, size: 64, offset: 320)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_async", file: !215, line: 347, size: 1536, elements: !3864)
!3864 = !{!3865, !3866, !3867, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3915, !3916, !3917}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3863, file: !215, line: 348, baseType: !134, size: 64)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_bufsz", scope: !3863, file: !215, line: 349, baseType: !7, size: 32, offset: 64)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "buf_map", scope: !3863, file: !215, line: 350, baseType: !3868, size: 64, offset: 128)
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_buf_map", file: !215, line: 249, size: 256, elements: !3870)
!3870 = !{!3871, !3872, !3878, !3879, !3880}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "dma_hw_dev", scope: !3869, file: !215, line: 250, baseType: !260, size: 64)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "page_list", scope: !3869, file: !215, line: 251, baseType: !3873, size: 64, offset: 64)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_buf_page", file: !215, line: 220, size: 128, elements: !3875)
!3875 = !{!3876, !3877}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "virt_addr", scope: !3874, file: !215, line: 221, baseType: !134, size: 64)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3874, file: !215, line: 222, baseType: !962, size: 64, offset: 64)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "n_pages", scope: !3869, file: !215, line: 252, baseType: !7, size: 32, offset: 128)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "dma_dir", scope: !3869, file: !215, line: 253, baseType: !93, size: 32, offset: 160)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3869, file: !215, line: 254, baseType: !3401, size: 32, offset: 192)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "max_bufsize", scope: !3863, file: !215, line: 351, baseType: !7, size: 32, offset: 192)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_count", scope: !3863, file: !215, line: 352, baseType: !7, size: 32, offset: 224)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_alloc_count", scope: !3863, file: !215, line: 353, baseType: !7, size: 32, offset: 256)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_count", scope: !3863, file: !215, line: 354, baseType: !7, size: 32, offset: 288)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_alloc_count", scope: !3863, file: !215, line: 355, baseType: !7, size: 32, offset: 320)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_ptr", scope: !3863, file: !215, line: 356, baseType: !7, size: 32, offset: 352)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_ptr", scope: !3863, file: !215, line: 357, baseType: !7, size: 32, offset: 384)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "cur_chan", scope: !3863, file: !215, line: 358, baseType: !7, size: 32, offset: 416)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "scans_done", scope: !3863, file: !215, line: 359, baseType: !7, size: 32, offset: 448)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "scan_progress", scope: !3863, file: !215, line: 360, baseType: !7, size: 32, offset: 480)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "munge_chan", scope: !3863, file: !215, line: 361, baseType: !7, size: 32, offset: 512)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "munge_count", scope: !3863, file: !215, line: 362, baseType: !7, size: 32, offset: 544)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "munge_ptr", scope: !3863, file: !215, line: 363, baseType: !7, size: 32, offset: 576)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3863, file: !215, line: 364, baseType: !7, size: 32, offset: 608)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !3863, file: !215, line: 365, baseType: !3896, size: 640, offset: 640)
!3896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_cmd", file: !101, line: 589, size: 640, elements: !3897)
!3897 = !{!3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3914}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "subdev", scope: !3896, file: !101, line: 590, baseType: !7, size: 32)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3896, file: !101, line: 591, baseType: !7, size: 32, offset: 32)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "start_src", scope: !3896, file: !101, line: 593, baseType: !7, size: 32, offset: 64)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "start_arg", scope: !3896, file: !101, line: 594, baseType: !7, size: 32, offset: 96)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "scan_begin_src", scope: !3896, file: !101, line: 596, baseType: !7, size: 32, offset: 128)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "scan_begin_arg", scope: !3896, file: !101, line: 597, baseType: !7, size: 32, offset: 160)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "convert_src", scope: !3896, file: !101, line: 599, baseType: !7, size: 32, offset: 192)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "convert_arg", scope: !3896, file: !101, line: 600, baseType: !7, size: 32, offset: 224)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "scan_end_src", scope: !3896, file: !101, line: 602, baseType: !7, size: 32, offset: 256)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "scan_end_arg", scope: !3896, file: !101, line: 603, baseType: !7, size: 32, offset: 288)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "stop_src", scope: !3896, file: !101, line: 605, baseType: !7, size: 32, offset: 320)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "stop_arg", scope: !3896, file: !101, line: 606, baseType: !7, size: 32, offset: 352)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist", scope: !3896, file: !101, line: 608, baseType: !2721, size: 64, offset: 384)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist_len", scope: !3896, file: !101, line: 609, baseType: !7, size: 32, offset: 448)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3896, file: !101, line: 611, baseType: !3913, size: 64, offset: 512)
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !3896, file: !101, line: 612, baseType: !7, size: 32, offset: 576)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "wait_head", scope: !3863, file: !215, line: 366, baseType: !1523, size: 128, offset: 1280)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "cb_mask", scope: !3863, file: !215, line: 367, baseType: !7, size: 32, offset: 1408)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "inttrig", scope: !3863, file: !215, line: 368, baseType: !3918, size: 64, offset: 1472)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{!212, !213, !3851, !7}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3852, file: !215, line: 165, baseType: !134, size: 64, offset: 384)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !3852, file: !215, line: 166, baseType: !134, size: 64, offset: 448)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "runflags", scope: !3852, file: !215, line: 167, baseType: !7, size: 32, offset: 512)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "spin_lock", scope: !3852, file: !215, line: 168, baseType: !282, offset: 544)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "io_bits", scope: !3852, file: !215, line: 170, baseType: !7, size: 32, offset: 544)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata", scope: !3852, file: !215, line: 172, baseType: !7, size: 32, offset: 576)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata_list", scope: !3852, file: !215, line: 173, baseType: !3928, size: 64, offset: 640)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "range_table", scope: !3852, file: !215, line: 175, baseType: !3930, size: 64, offset: 704)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3932)
!3932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_lrange", file: !215, line: 635, size: 32, elements: !3933)
!3933 = !{!3934, !3935}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3932, file: !215, line: 636, baseType: !212, size: 32)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3932, file: !215, line: 637, baseType: !3936, offset: 32)
!3936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3937, elements: !2369)
!3937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_krange", file: !101, line: 685, size: 96, elements: !3938)
!3938 = !{!3939, !3940, !3941}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !3937, file: !101, line: 686, baseType: !212, size: 32)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3937, file: !101, line: 687, baseType: !212, size: 32, offset: 32)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3937, file: !101, line: 688, baseType: !7, size: 32, offset: 64)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "range_table_list", scope: !3852, file: !215, line: 176, baseType: !3943, size: 64, offset: 768)
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3944 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3930)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist", scope: !3852, file: !215, line: 178, baseType: !2721, size: 64, offset: 832)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "insn_read", scope: !3852, file: !215, line: 180, baseType: !209, size: 64, offset: 896)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "insn_write", scope: !3852, file: !215, line: 182, baseType: !209, size: 64, offset: 960)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "insn_bits", scope: !3852, file: !215, line: 184, baseType: !209, size: 64, offset: 1024)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "insn_config", scope: !3852, file: !215, line: 186, baseType: !209, size: 64, offset: 1088)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "do_cmd", scope: !3852, file: !215, line: 191, baseType: !3951, size: 64, offset: 1152)
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3952 = !DISubroutineType(types: !3953)
!3953 = !{!212, !213, !3851}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "do_cmdtest", scope: !3852, file: !215, line: 192, baseType: !3955, size: 64, offset: 1216)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = !DISubroutineType(types: !3957)
!3957 = !{!212, !213, !3851, !3958}
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3852, file: !215, line: 195, baseType: !3951, size: 64, offset: 1280)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "cancel", scope: !3852, file: !215, line: 196, baseType: !3951, size: 64, offset: 1344)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "buf_change", scope: !3852, file: !215, line: 199, baseType: !3951, size: 64, offset: 1408)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "munge", scope: !3852, file: !215, line: 202, baseType: !3963, size: 64, offset: 1472)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{null, !213, !3851, !134, !7, !7}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "async_dma_dir", scope: !3852, file: !215, line: 205, baseType: !93, size: 32, offset: 1536)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3852, file: !215, line: 207, baseType: !7, size: 32, offset: 1568)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !3852, file: !215, line: 209, baseType: !260, size: 64, offset: 1600)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3852, file: !215, line: 210, baseType: !212, size: 32, offset: 1664)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "readback", scope: !3852, file: !215, line: 212, baseType: !2721, size: 64, offset: 1728)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "mmio", scope: !214, file: !215, line: 565, baseType: !134, size: 64, offset: 1216)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "iobase", scope: !214, file: !215, line: 566, baseType: !188, size: 64, offset: 1280)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "iolen", scope: !214, file: !215, line: 567, baseType: !188, size: 64, offset: 1344)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !214, file: !215, line: 568, baseType: !7, size: 32, offset: 1408)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "read_subdev", scope: !214, file: !215, line: 570, baseType: !3851, size: 64, offset: 1472)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "write_subdev", scope: !214, file: !215, line: 571, baseType: !3851, size: 64, offset: 1536)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "async_queue", scope: !214, file: !215, line: 573, baseType: !2997, size: 64, offset: 1600)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !214, file: !215, line: 575, baseType: !3979, size: 64, offset: 1664)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = !DISubroutineType(types: !3981)
!3981 = !{!212, !213}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !214, file: !215, line: 576, baseType: !245, size: 64, offset: 1728)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "insn_device_config", scope: !214, file: !215, line: 577, baseType: !3984, size: 64, offset: 1792)
!3984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3985, size: 64)
!3985 = !DISubroutineType(types: !3986)
!3986 = !{!212, !213, !3987, !2721}
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3988, size: 64)
!3988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_insn", file: !101, line: 491, size: 320, elements: !3989)
!3989 = !{!3990, !3991, !3992, !3993, !3994, !3995}
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3988, file: !101, line: 492, baseType: !7, size: 32)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !3988, file: !101, line: 493, baseType: !7, size: 32, offset: 32)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3988, file: !101, line: 494, baseType: !2721, size: 64, offset: 64)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "subdev", scope: !3988, file: !101, line: 495, baseType: !7, size: 32, offset: 128)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "chanspec", scope: !3988, file: !101, line: 496, baseType: !7, size: 32, offset: 160)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !3988, file: !101, line: 497, baseType: !200, size: 96, offset: 192)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "get_valid_routes", scope: !214, file: !215, line: 579, baseType: !3997, size: 64, offset: 1856)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DISubroutineType(types: !3999)
!3999 = !{!7, !213, !7, !2721}
!4000 = !DILocalVariable(name: "i8254", arg: 1, scope: !180, file: !3, line: 186, type: !183)
!4001 = !DILocation(line: 186, column: 53, scope: !180)
!4002 = !DILocalVariable(name: "counter", arg: 2, scope: !180, file: !3, line: 186, type: !7)
!4003 = !DILocation(line: 186, column: 73, scope: !180)
!4004 = !DILocalVariable(name: "cmd", scope: !180, file: !3, line: 188, type: !7)
!4005 = !DILocation(line: 188, column: 15, scope: !180)
!4006 = !DILocation(line: 190, column: 6, scope: !4007)
!4007 = distinct !DILexicalBlock(scope: !180, file: !3, line: 190, column: 6)
!4008 = !DILocation(line: 190, column: 14, scope: !4007)
!4009 = !DILocation(line: 190, column: 6, scope: !180)
!4010 = !DILocation(line: 191, column: 3, scope: !4007)
!4011 = !DILocation(line: 193, column: 37, scope: !180)
!4012 = !DILocation(line: 193, column: 35, scope: !180)
!4013 = !DILocation(line: 193, column: 8, scope: !180)
!4014 = !DILocation(line: 193, column: 6, scope: !180)
!4015 = !DILocation(line: 194, column: 16, scope: !180)
!4016 = !DILocation(line: 194, column: 23, scope: !180)
!4017 = !DILocation(line: 194, column: 2, scope: !180)
!4018 = !DILocation(line: 196, column: 22, scope: !180)
!4019 = !DILocation(line: 196, column: 29, scope: !180)
!4020 = !DILocation(line: 196, column: 9, scope: !180)
!4021 = !DILocation(line: 196, column: 2, scope: !180)
!4022 = !DILocation(line: 197, column: 1, scope: !180)
!4023 = distinct !DISubprogram(name: "__i8254_write", scope: !3, file: !3, line: 153, type: !4024, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !296)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{null, !183, !7, !7}
!4026 = !DILocalVariable(name: "i8254", arg: 1, scope: !4023, file: !3, line: 153, type: !183)
!4027 = !DILocation(line: 153, column: 47, scope: !4023)
!4028 = !DILocalVariable(name: "val", arg: 2, scope: !4023, file: !3, line: 154, type: !7)
!4029 = !DILocation(line: 154, column: 19, scope: !4023)
!4030 = !DILocalVariable(name: "reg", arg: 3, scope: !4023, file: !3, line: 154, type: !7)
!4031 = !DILocation(line: 154, column: 37, scope: !4023)
!4032 = !DILocalVariable(name: "reg_offset", scope: !4023, file: !3, line: 156, type: !7)
!4033 = !DILocation(line: 156, column: 15, scope: !4023)
!4034 = !DILocation(line: 156, column: 29, scope: !4023)
!4035 = !DILocation(line: 156, column: 35, scope: !4023)
!4036 = !DILocation(line: 156, column: 42, scope: !4023)
!4037 = !DILocation(line: 156, column: 33, scope: !4023)
!4038 = !DILocation(line: 156, column: 53, scope: !4023)
!4039 = !DILocation(line: 156, column: 60, scope: !4023)
!4040 = !DILocation(line: 156, column: 50, scope: !4023)
!4041 = !DILocation(line: 158, column: 10, scope: !4023)
!4042 = !DILocation(line: 158, column: 17, scope: !4023)
!4043 = !DILocation(line: 158, column: 2, scope: !4023)
!4044 = !DILocation(line: 158, column: 25, scope: !4023)
!4045 = !DILocation(line: 161, column: 7, scope: !4046)
!4046 = distinct !DILexicalBlock(scope: !4047, file: !3, line: 161, column: 7)
!4047 = distinct !DILexicalBlock(scope: !4023, file: !3, line: 158, column: 25)
!4048 = !DILocation(line: 161, column: 14, scope: !4046)
!4049 = !DILocation(line: 161, column: 7, scope: !4047)
!4050 = !DILocation(line: 162, column: 11, scope: !4046)
!4051 = !DILocation(line: 162, column: 16, scope: !4046)
!4052 = !DILocation(line: 162, column: 23, scope: !4046)
!4053 = !DILocation(line: 162, column: 30, scope: !4046)
!4054 = !DILocation(line: 162, column: 28, scope: !4046)
!4055 = !DILocation(line: 162, column: 4, scope: !4046)
!4056 = !DILocation(line: 164, column: 9, scope: !4046)
!4057 = !DILocation(line: 164, column: 14, scope: !4046)
!4058 = !DILocation(line: 164, column: 21, scope: !4046)
!4059 = !DILocation(line: 164, column: 30, scope: !4046)
!4060 = !DILocation(line: 164, column: 28, scope: !4046)
!4061 = !DILocation(line: 164, column: 4, scope: !4046)
!4062 = !DILocation(line: 165, column: 3, scope: !4047)
!4063 = !DILocation(line: 167, column: 7, scope: !4064)
!4064 = distinct !DILexicalBlock(scope: !4047, file: !3, line: 167, column: 7)
!4065 = !DILocation(line: 167, column: 14, scope: !4064)
!4066 = !DILocation(line: 167, column: 7, scope: !4047)
!4067 = !DILocation(line: 168, column: 11, scope: !4064)
!4068 = !DILocation(line: 168, column: 16, scope: !4064)
!4069 = !DILocation(line: 168, column: 23, scope: !4064)
!4070 = !DILocation(line: 168, column: 30, scope: !4064)
!4071 = !DILocation(line: 168, column: 28, scope: !4064)
!4072 = !DILocation(line: 168, column: 4, scope: !4064)
!4073 = !DILocation(line: 170, column: 9, scope: !4064)
!4074 = !DILocation(line: 170, column: 14, scope: !4064)
!4075 = !DILocation(line: 170, column: 21, scope: !4064)
!4076 = !DILocation(line: 170, column: 30, scope: !4064)
!4077 = !DILocation(line: 170, column: 28, scope: !4064)
!4078 = !DILocation(line: 170, column: 4, scope: !4064)
!4079 = !DILocation(line: 171, column: 3, scope: !4047)
!4080 = !DILocation(line: 173, column: 7, scope: !4081)
!4081 = distinct !DILexicalBlock(scope: !4047, file: !3, line: 173, column: 7)
!4082 = !DILocation(line: 173, column: 14, scope: !4081)
!4083 = !DILocation(line: 173, column: 7, scope: !4047)
!4084 = !DILocation(line: 174, column: 11, scope: !4081)
!4085 = !DILocation(line: 174, column: 16, scope: !4081)
!4086 = !DILocation(line: 174, column: 23, scope: !4081)
!4087 = !DILocation(line: 174, column: 30, scope: !4081)
!4088 = !DILocation(line: 174, column: 28, scope: !4081)
!4089 = !DILocation(line: 174, column: 4, scope: !4081)
!4090 = !DILocation(line: 176, column: 9, scope: !4081)
!4091 = !DILocation(line: 176, column: 14, scope: !4081)
!4092 = !DILocation(line: 176, column: 21, scope: !4081)
!4093 = !DILocation(line: 176, column: 30, scope: !4081)
!4094 = !DILocation(line: 176, column: 28, scope: !4081)
!4095 = !DILocation(line: 176, column: 4, scope: !4081)
!4096 = !DILocation(line: 177, column: 3, scope: !4047)
!4097 = !DILocation(line: 179, column: 1, scope: !4023)
!4098 = distinct !DISubprogram(name: "__i8254_read", scope: !3, file: !3, line: 124, type: !181, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !296)
!4099 = !DILocalVariable(name: "i8254", arg: 1, scope: !4098, file: !3, line: 124, type: !183)
!4100 = !DILocation(line: 124, column: 54, scope: !4098)
!4101 = !DILocalVariable(name: "reg", arg: 2, scope: !4098, file: !3, line: 124, type: !7)
!4102 = !DILocation(line: 124, column: 74, scope: !4098)
!4103 = !DILocalVariable(name: "reg_offset", scope: !4098, file: !3, line: 126, type: !7)
!4104 = !DILocation(line: 126, column: 15, scope: !4098)
!4105 = !DILocation(line: 126, column: 29, scope: !4098)
!4106 = !DILocation(line: 126, column: 35, scope: !4098)
!4107 = !DILocation(line: 126, column: 42, scope: !4098)
!4108 = !DILocation(line: 126, column: 33, scope: !4098)
!4109 = !DILocation(line: 126, column: 53, scope: !4098)
!4110 = !DILocation(line: 126, column: 60, scope: !4098)
!4111 = !DILocation(line: 126, column: 50, scope: !4098)
!4112 = !DILocalVariable(name: "val", scope: !4098, file: !3, line: 127, type: !7)
!4113 = !DILocation(line: 127, column: 15, scope: !4098)
!4114 = !DILocation(line: 129, column: 10, scope: !4098)
!4115 = !DILocation(line: 129, column: 17, scope: !4098)
!4116 = !DILocation(line: 129, column: 2, scope: !4098)
!4117 = !DILocation(line: 129, column: 25, scope: !4098)
!4118 = !DILocation(line: 132, column: 7, scope: !4119)
!4119 = distinct !DILexicalBlock(scope: !4120, file: !3, line: 132, column: 7)
!4120 = distinct !DILexicalBlock(scope: !4098, file: !3, line: 129, column: 25)
!4121 = !DILocation(line: 132, column: 14, scope: !4119)
!4122 = !DILocation(line: 132, column: 7, scope: !4120)
!4123 = !DILocation(line: 133, column: 16, scope: !4119)
!4124 = !DILocation(line: 133, column: 23, scope: !4119)
!4125 = !DILocation(line: 133, column: 30, scope: !4119)
!4126 = !DILocation(line: 133, column: 28, scope: !4119)
!4127 = !DILocation(line: 133, column: 10, scope: !4119)
!4128 = !DILocation(line: 133, column: 8, scope: !4119)
!4129 = !DILocation(line: 133, column: 4, scope: !4119)
!4130 = !DILocation(line: 135, column: 14, scope: !4119)
!4131 = !DILocation(line: 135, column: 21, scope: !4119)
!4132 = !DILocation(line: 135, column: 30, scope: !4119)
!4133 = !DILocation(line: 135, column: 28, scope: !4119)
!4134 = !DILocation(line: 135, column: 10, scope: !4119)
!4135 = !DILocation(line: 135, column: 8, scope: !4119)
!4136 = !DILocation(line: 136, column: 3, scope: !4120)
!4137 = !DILocation(line: 138, column: 7, scope: !4138)
!4138 = distinct !DILexicalBlock(scope: !4120, file: !3, line: 138, column: 7)
!4139 = !DILocation(line: 138, column: 14, scope: !4138)
!4140 = !DILocation(line: 138, column: 7, scope: !4120)
!4141 = !DILocation(line: 139, column: 16, scope: !4138)
!4142 = !DILocation(line: 139, column: 23, scope: !4138)
!4143 = !DILocation(line: 139, column: 30, scope: !4138)
!4144 = !DILocation(line: 139, column: 28, scope: !4138)
!4145 = !DILocation(line: 139, column: 10, scope: !4138)
!4146 = !DILocation(line: 139, column: 8, scope: !4138)
!4147 = !DILocation(line: 139, column: 4, scope: !4138)
!4148 = !DILocation(line: 141, column: 14, scope: !4138)
!4149 = !DILocation(line: 141, column: 21, scope: !4138)
!4150 = !DILocation(line: 141, column: 30, scope: !4138)
!4151 = !DILocation(line: 141, column: 28, scope: !4138)
!4152 = !DILocation(line: 141, column: 10, scope: !4138)
!4153 = !DILocation(line: 141, column: 8, scope: !4138)
!4154 = !DILocation(line: 142, column: 3, scope: !4120)
!4155 = !DILocation(line: 144, column: 7, scope: !4156)
!4156 = distinct !DILexicalBlock(scope: !4120, file: !3, line: 144, column: 7)
!4157 = !DILocation(line: 144, column: 14, scope: !4156)
!4158 = !DILocation(line: 144, column: 7, scope: !4120)
!4159 = !DILocation(line: 145, column: 16, scope: !4156)
!4160 = !DILocation(line: 145, column: 23, scope: !4156)
!4161 = !DILocation(line: 145, column: 30, scope: !4156)
!4162 = !DILocation(line: 145, column: 28, scope: !4156)
!4163 = !DILocation(line: 145, column: 10, scope: !4156)
!4164 = !DILocation(line: 145, column: 8, scope: !4156)
!4165 = !DILocation(line: 145, column: 4, scope: !4156)
!4166 = !DILocation(line: 147, column: 14, scope: !4156)
!4167 = !DILocation(line: 147, column: 21, scope: !4156)
!4168 = !DILocation(line: 147, column: 30, scope: !4156)
!4169 = !DILocation(line: 147, column: 28, scope: !4156)
!4170 = !DILocation(line: 147, column: 10, scope: !4156)
!4171 = !DILocation(line: 147, column: 8, scope: !4156)
!4172 = !DILocation(line: 148, column: 3, scope: !4120)
!4173 = !DILocation(line: 150, column: 9, scope: !4098)
!4174 = !DILocation(line: 150, column: 13, scope: !4098)
!4175 = !DILocation(line: 150, column: 2, scope: !4098)
!4176 = distinct !DISubprogram(name: "comedi_8254_read", scope: !3, file: !3, line: 205, type: !181, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !296)
!4177 = !DILocalVariable(name: "i8254", arg: 1, scope: !4176, file: !3, line: 205, type: !183)
!4178 = !DILocation(line: 205, column: 51, scope: !4176)
!4179 = !DILocalVariable(name: "counter", arg: 2, scope: !4176, file: !3, line: 205, type: !7)
!4180 = !DILocation(line: 205, column: 71, scope: !4176)
!4181 = !DILocalVariable(name: "val", scope: !4176, file: !3, line: 207, type: !7)
!4182 = !DILocation(line: 207, column: 15, scope: !4176)
!4183 = !DILocation(line: 209, column: 6, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !4176, file: !3, line: 209, column: 6)
!4185 = !DILocation(line: 209, column: 14, scope: !4184)
!4186 = !DILocation(line: 209, column: 6, scope: !4176)
!4187 = !DILocation(line: 210, column: 3, scope: !4184)
!4188 = !DILocation(line: 213, column: 16, scope: !4176)
!4189 = !DILocation(line: 213, column: 23, scope: !4176)
!4190 = !DILocation(line: 213, column: 2, scope: !4176)
!4191 = !DILocation(line: 217, column: 21, scope: !4176)
!4192 = !DILocation(line: 217, column: 28, scope: !4176)
!4193 = !DILocation(line: 217, column: 8, scope: !4176)
!4194 = !DILocation(line: 217, column: 6, scope: !4176)
!4195 = !DILocation(line: 218, column: 23, scope: !4176)
!4196 = !DILocation(line: 218, column: 30, scope: !4176)
!4197 = !DILocation(line: 218, column: 10, scope: !4176)
!4198 = !DILocation(line: 218, column: 39, scope: !4176)
!4199 = !DILocation(line: 218, column: 6, scope: !4176)
!4200 = !DILocation(line: 220, column: 9, scope: !4176)
!4201 = !DILocation(line: 220, column: 2, scope: !4176)
!4202 = !DILocation(line: 221, column: 1, scope: !4176)
!4203 = distinct !DISubprogram(name: "comedi_8254_write", scope: !3, file: !3, line: 230, type: !4024, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !296)
!4204 = !DILocalVariable(name: "i8254", arg: 1, scope: !4203, file: !3, line: 230, type: !183)
!4205 = !DILocation(line: 230, column: 44, scope: !4203)
!4206 = !DILocalVariable(name: "counter", arg: 2, scope: !4203, file: !3, line: 231, type: !7)
!4207 = !DILocation(line: 231, column: 23, scope: !4203)
!4208 = !DILocalVariable(name: "val", arg: 3, scope: !4203, file: !3, line: 231, type: !7)
!4209 = !DILocation(line: 231, column: 45, scope: !4203)
!4210 = !DILocalVariable(name: "byte", scope: !4203, file: !3, line: 233, type: !7)
!4211 = !DILocation(line: 233, column: 15, scope: !4203)
!4212 = !DILocation(line: 235, column: 6, scope: !4213)
!4213 = distinct !DILexicalBlock(scope: !4203, file: !3, line: 235, column: 6)
!4214 = !DILocation(line: 235, column: 14, scope: !4213)
!4215 = !DILocation(line: 235, column: 6, scope: !4203)
!4216 = !DILocation(line: 236, column: 3, scope: !4213)
!4217 = !DILocation(line: 237, column: 6, scope: !4218)
!4218 = distinct !DILexicalBlock(scope: !4203, file: !3, line: 237, column: 6)
!4219 = !DILocation(line: 237, column: 10, scope: !4218)
!4220 = !DILocation(line: 237, column: 6, scope: !4203)
!4221 = !DILocation(line: 238, column: 3, scope: !4218)
!4222 = !DILocation(line: 241, column: 9, scope: !4203)
!4223 = !DILocation(line: 241, column: 13, scope: !4203)
!4224 = !DILocation(line: 241, column: 7, scope: !4203)
!4225 = !DILocation(line: 242, column: 16, scope: !4203)
!4226 = !DILocation(line: 242, column: 23, scope: !4203)
!4227 = !DILocation(line: 242, column: 29, scope: !4203)
!4228 = !DILocation(line: 242, column: 2, scope: !4203)
!4229 = !DILocation(line: 243, column: 10, scope: !4203)
!4230 = !DILocation(line: 243, column: 14, scope: !4203)
!4231 = !DILocation(line: 243, column: 20, scope: !4203)
!4232 = !DILocation(line: 243, column: 7, scope: !4203)
!4233 = !DILocation(line: 244, column: 16, scope: !4203)
!4234 = !DILocation(line: 244, column: 23, scope: !4203)
!4235 = !DILocation(line: 244, column: 29, scope: !4203)
!4236 = !DILocation(line: 244, column: 2, scope: !4203)
!4237 = !DILocation(line: 245, column: 1, scope: !4203)
!4238 = distinct !DISubprogram(name: "comedi_8254_set_mode", scope: !3, file: !3, line: 254, type: !4239, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !296)
!4239 = !DISubroutineType(types: !4240)
!4240 = !{!212, !183, !7, !7}
!4241 = !DILocalVariable(name: "i8254", arg: 1, scope: !4238, file: !3, line: 254, type: !183)
!4242 = !DILocation(line: 254, column: 46, scope: !4238)
!4243 = !DILocalVariable(name: "counter", arg: 2, scope: !4238, file: !3, line: 254, type: !7)
!4244 = !DILocation(line: 254, column: 66, scope: !4238)
!4245 = !DILocalVariable(name: "mode", arg: 3, scope: !4238, file: !3, line: 255, type: !7)
!4246 = !DILocation(line: 255, column: 18, scope: !4238)
!4247 = !DILocalVariable(name: "byte", scope: !4238, file: !3, line: 257, type: !7)
!4248 = !DILocation(line: 257, column: 15, scope: !4238)
!4249 = !DILocation(line: 259, column: 6, scope: !4250)
!4250 = distinct !DILexicalBlock(scope: !4238, file: !3, line: 259, column: 6)
!4251 = !DILocation(line: 259, column: 14, scope: !4250)
!4252 = !DILocation(line: 259, column: 6, scope: !4238)
!4253 = !DILocation(line: 260, column: 3, scope: !4250)
!4254 = !DILocation(line: 261, column: 6, scope: !4255)
!4255 = distinct !DILexicalBlock(scope: !4238, file: !3, line: 261, column: 6)
!4256 = !DILocation(line: 261, column: 11, scope: !4255)
!4257 = !DILocation(line: 261, column: 6, scope: !4238)
!4258 = !DILocation(line: 262, column: 3, scope: !4255)
!4259 = !DILocation(line: 264, column: 9, scope: !4238)
!4260 = !DILocation(line: 264, column: 37, scope: !4238)
!4261 = !DILocation(line: 266, column: 9, scope: !4238)
!4262 = !DILocation(line: 265, column: 28, scope: !4238)
!4263 = !DILocation(line: 264, column: 7, scope: !4238)
!4264 = !DILocation(line: 267, column: 16, scope: !4238)
!4265 = !DILocation(line: 267, column: 23, scope: !4238)
!4266 = !DILocation(line: 267, column: 2, scope: !4238)
!4267 = !DILocation(line: 269, column: 2, scope: !4238)
!4268 = !DILocation(line: 270, column: 1, scope: !4238)
!4269 = distinct !DISubprogram(name: "comedi_8254_load", scope: !3, file: !3, line: 280, type: !4270, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !296)
!4270 = !DISubroutineType(types: !4271)
!4271 = !{!212, !183, !7, !7, !7}
!4272 = !DILocalVariable(name: "i8254", arg: 1, scope: !4269, file: !3, line: 280, type: !183)
!4273 = !DILocation(line: 280, column: 42, scope: !4269)
!4274 = !DILocalVariable(name: "counter", arg: 2, scope: !4269, file: !3, line: 280, type: !7)
!4275 = !DILocation(line: 280, column: 62, scope: !4269)
!4276 = !DILocalVariable(name: "val", arg: 3, scope: !4269, file: !3, line: 281, type: !7)
!4277 = !DILocation(line: 281, column: 21, scope: !4269)
!4278 = !DILocalVariable(name: "mode", arg: 4, scope: !4269, file: !3, line: 281, type: !7)
!4279 = !DILocation(line: 281, column: 39, scope: !4269)
!4280 = !DILocation(line: 283, column: 6, scope: !4281)
!4281 = distinct !DILexicalBlock(scope: !4269, file: !3, line: 283, column: 6)
!4282 = !DILocation(line: 283, column: 14, scope: !4281)
!4283 = !DILocation(line: 283, column: 6, scope: !4269)
!4284 = !DILocation(line: 284, column: 3, scope: !4281)
!4285 = !DILocation(line: 285, column: 6, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !4269, file: !3, line: 285, column: 6)
!4287 = !DILocation(line: 285, column: 10, scope: !4286)
!4288 = !DILocation(line: 285, column: 6, scope: !4269)
!4289 = !DILocation(line: 286, column: 3, scope: !4286)
!4290 = !DILocation(line: 287, column: 6, scope: !4291)
!4291 = distinct !DILexicalBlock(scope: !4269, file: !3, line: 287, column: 6)
!4292 = !DILocation(line: 287, column: 11, scope: !4291)
!4293 = !DILocation(line: 287, column: 6, scope: !4269)
!4294 = !DILocation(line: 288, column: 3, scope: !4291)
!4295 = !DILocation(line: 290, column: 23, scope: !4269)
!4296 = !DILocation(line: 290, column: 30, scope: !4269)
!4297 = !DILocation(line: 290, column: 39, scope: !4269)
!4298 = !DILocation(line: 290, column: 2, scope: !4269)
!4299 = !DILocation(line: 291, column: 20, scope: !4269)
!4300 = !DILocation(line: 291, column: 27, scope: !4269)
!4301 = !DILocation(line: 291, column: 36, scope: !4269)
!4302 = !DILocation(line: 291, column: 2, scope: !4269)
!4303 = !DILocation(line: 293, column: 2, scope: !4269)
!4304 = !DILocation(line: 294, column: 1, scope: !4269)
!4305 = distinct !DISubprogram(name: "comedi_8254_pacer_enable", scope: !3, file: !3, line: 304, type: !4306, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !296)
!4306 = !DISubroutineType(types: !4307)
!4307 = !{null, !183, !7, !7, !206}
!4308 = !DILocalVariable(name: "i8254", arg: 1, scope: !4305, file: !3, line: 304, type: !183)
!4309 = !DILocation(line: 304, column: 51, scope: !4305)
!4310 = !DILocalVariable(name: "counter1", arg: 2, scope: !4305, file: !3, line: 305, type: !7)
!4311 = !DILocation(line: 305, column: 23, scope: !4305)
!4312 = !DILocalVariable(name: "counter2", arg: 3, scope: !4305, file: !3, line: 306, type: !7)
!4313 = !DILocation(line: 306, column: 23, scope: !4305)
!4314 = !DILocalVariable(name: "enable", arg: 4, scope: !4305, file: !3, line: 307, type: !206)
!4315 = !DILocation(line: 307, column: 15, scope: !4305)
!4316 = !DILocalVariable(name: "mode", scope: !4305, file: !3, line: 309, type: !7)
!4317 = !DILocation(line: 309, column: 15, scope: !4305)
!4318 = !DILocation(line: 311, column: 6, scope: !4319)
!4319 = distinct !DILexicalBlock(scope: !4305, file: !3, line: 311, column: 6)
!4320 = !DILocation(line: 311, column: 15, scope: !4319)
!4321 = !DILocation(line: 311, column: 19, scope: !4319)
!4322 = !DILocation(line: 311, column: 22, scope: !4319)
!4323 = !DILocation(line: 311, column: 31, scope: !4319)
!4324 = !DILocation(line: 311, column: 35, scope: !4319)
!4325 = !DILocation(line: 311, column: 38, scope: !4319)
!4326 = !DILocation(line: 311, column: 50, scope: !4319)
!4327 = !DILocation(line: 311, column: 47, scope: !4319)
!4328 = !DILocation(line: 311, column: 6, scope: !4305)
!4329 = !DILocation(line: 312, column: 3, scope: !4319)
!4330 = !DILocation(line: 314, column: 6, scope: !4331)
!4331 = distinct !DILexicalBlock(scope: !4305, file: !3, line: 314, column: 6)
!4332 = !DILocation(line: 314, column: 6, scope: !4305)
!4333 = !DILocation(line: 315, column: 8, scope: !4331)
!4334 = !DILocation(line: 315, column: 3, scope: !4331)
!4335 = !DILocation(line: 317, column: 8, scope: !4331)
!4336 = !DILocation(line: 319, column: 23, scope: !4305)
!4337 = !DILocation(line: 319, column: 30, scope: !4305)
!4338 = !DILocation(line: 319, column: 40, scope: !4305)
!4339 = !DILocation(line: 319, column: 2, scope: !4305)
!4340 = !DILocation(line: 320, column: 23, scope: !4305)
!4341 = !DILocation(line: 320, column: 30, scope: !4305)
!4342 = !DILocation(line: 320, column: 40, scope: !4305)
!4343 = !DILocation(line: 320, column: 2, scope: !4305)
!4344 = !DILocation(line: 322, column: 6, scope: !4345)
!4345 = distinct !DILexicalBlock(scope: !4305, file: !3, line: 322, column: 6)
!4346 = !DILocation(line: 322, column: 6, scope: !4305)
!4347 = !DILocation(line: 328, column: 21, scope: !4348)
!4348 = distinct !DILexicalBlock(scope: !4345, file: !3, line: 322, column: 14)
!4349 = !DILocation(line: 328, column: 28, scope: !4348)
!4350 = !DILocation(line: 328, column: 38, scope: !4348)
!4351 = !DILocation(line: 328, column: 45, scope: !4348)
!4352 = !DILocation(line: 328, column: 3, scope: !4348)
!4353 = !DILocation(line: 329, column: 21, scope: !4348)
!4354 = !DILocation(line: 329, column: 28, scope: !4348)
!4355 = !DILocation(line: 329, column: 38, scope: !4348)
!4356 = !DILocation(line: 329, column: 45, scope: !4348)
!4357 = !DILocation(line: 329, column: 3, scope: !4348)
!4358 = !DILocation(line: 330, column: 2, scope: !4348)
!4359 = !DILocation(line: 331, column: 1, scope: !4305)
!4360 = distinct !DISubprogram(name: "comedi_8254_update_divisors", scope: !3, file: !3, line: 338, type: !4361, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !296)
!4361 = !DISubroutineType(types: !4362)
!4362 = !{null, !183}
!4363 = !DILocalVariable(name: "i8254", arg: 1, scope: !4360, file: !3, line: 338, type: !183)
!4364 = !DILocation(line: 338, column: 54, scope: !4360)
!4365 = !DILocation(line: 341, column: 19, scope: !4360)
!4366 = !DILocation(line: 341, column: 26, scope: !4360)
!4367 = !DILocation(line: 341, column: 35, scope: !4360)
!4368 = !DILocation(line: 341, column: 2, scope: !4360)
!4369 = !DILocation(line: 341, column: 9, scope: !4360)
!4370 = !DILocation(line: 341, column: 17, scope: !4360)
!4371 = !DILocation(line: 342, column: 20, scope: !4360)
!4372 = !DILocation(line: 342, column: 27, scope: !4360)
!4373 = !DILocation(line: 342, column: 37, scope: !4360)
!4374 = !DILocation(line: 342, column: 2, scope: !4360)
!4375 = !DILocation(line: 342, column: 9, scope: !4360)
!4376 = !DILocation(line: 342, column: 18, scope: !4360)
!4377 = !DILocation(line: 343, column: 20, scope: !4360)
!4378 = !DILocation(line: 343, column: 27, scope: !4360)
!4379 = !DILocation(line: 343, column: 37, scope: !4360)
!4380 = !DILocation(line: 343, column: 2, scope: !4360)
!4381 = !DILocation(line: 343, column: 9, scope: !4360)
!4382 = !DILocation(line: 343, column: 18, scope: !4360)
!4383 = !DILocation(line: 344, column: 1, scope: !4360)
!4384 = distinct !DISubprogram(name: "comedi_8254_cascade_ns_to_timer", scope: !3, file: !3, line: 353, type: !4385, scopeLine: 356, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !296)
!4385 = !DISubroutineType(types: !4386)
!4386 = !{null, !183, !2721, !7}
!4387 = !DILocalVariable(name: "i8254", arg: 1, scope: !4384, file: !3, line: 353, type: !183)
!4388 = !DILocation(line: 353, column: 58, scope: !4384)
!4389 = !DILocalVariable(name: "nanosec", arg: 2, scope: !4384, file: !3, line: 354, type: !2721)
!4390 = !DILocation(line: 354, column: 24, scope: !4384)
!4391 = !DILocalVariable(name: "flags", arg: 3, scope: !4384, file: !3, line: 355, type: !7)
!4392 = !DILocation(line: 355, column: 23, scope: !4384)
!4393 = !DILocalVariable(name: "d1", scope: !4384, file: !3, line: 357, type: !7)
!4394 = !DILocation(line: 357, column: 15, scope: !4384)
!4395 = !DILocation(line: 357, column: 20, scope: !4384)
!4396 = !DILocation(line: 357, column: 27, scope: !4384)
!4397 = !DILocation(line: 357, column: 39, scope: !4384)
!4398 = !DILocation(line: 357, column: 46, scope: !4384)
!4399 = !DILocalVariable(name: "d2", scope: !4384, file: !3, line: 358, type: !7)
!4400 = !DILocation(line: 358, column: 15, scope: !4384)
!4401 = !DILocation(line: 358, column: 20, scope: !4384)
!4402 = !DILocation(line: 358, column: 27, scope: !4384)
!4403 = !DILocation(line: 358, column: 39, scope: !4384)
!4404 = !DILocation(line: 358, column: 46, scope: !4384)
!4405 = !DILocalVariable(name: "div", scope: !4384, file: !3, line: 359, type: !7)
!4406 = !DILocation(line: 359, column: 15, scope: !4384)
!4407 = !DILocation(line: 359, column: 21, scope: !4384)
!4408 = !DILocation(line: 359, column: 26, scope: !4384)
!4409 = !DILocation(line: 359, column: 24, scope: !4384)
!4410 = !DILocalVariable(name: "ns_lub", scope: !4384, file: !3, line: 360, type: !7)
!4411 = !DILocation(line: 360, column: 15, scope: !4384)
!4412 = !DILocalVariable(name: "ns_glb", scope: !4384, file: !3, line: 361, type: !7)
!4413 = !DILocation(line: 361, column: 15, scope: !4384)
!4414 = !DILocalVariable(name: "d1_lub", scope: !4384, file: !3, line: 362, type: !7)
!4415 = !DILocation(line: 362, column: 15, scope: !4384)
!4416 = !DILocalVariable(name: "d1_glb", scope: !4384, file: !3, line: 363, type: !7)
!4417 = !DILocation(line: 363, column: 15, scope: !4384)
!4418 = !DILocalVariable(name: "d2_lub", scope: !4384, file: !3, line: 364, type: !7)
!4419 = !DILocation(line: 364, column: 15, scope: !4384)
!4420 = !DILocalVariable(name: "d2_glb", scope: !4384, file: !3, line: 365, type: !7)
!4421 = !DILocation(line: 365, column: 15, scope: !4384)
!4422 = !DILocalVariable(name: "start", scope: !4384, file: !3, line: 366, type: !7)
!4423 = !DILocation(line: 366, column: 15, scope: !4384)
!4424 = !DILocalVariable(name: "ns", scope: !4384, file: !3, line: 367, type: !7)
!4425 = !DILocation(line: 367, column: 15, scope: !4384)
!4426 = !DILocalVariable(name: "ns_low", scope: !4384, file: !3, line: 368, type: !7)
!4427 = !DILocation(line: 368, column: 15, scope: !4384)
!4428 = !DILocalVariable(name: "ns_high", scope: !4384, file: !3, line: 369, type: !7)
!4429 = !DILocation(line: 369, column: 15, scope: !4384)
!4430 = !DILocation(line: 372, column: 6, scope: !4431)
!4431 = distinct !DILexicalBlock(scope: !4384, file: !3, line: 372, column: 6)
!4432 = !DILocation(line: 372, column: 12, scope: !4431)
!4433 = !DILocation(line: 372, column: 19, scope: !4431)
!4434 = !DILocation(line: 372, column: 10, scope: !4431)
!4435 = !DILocation(line: 372, column: 32, scope: !4431)
!4436 = !DILocation(line: 372, column: 31, scope: !4431)
!4437 = !DILocation(line: 372, column: 28, scope: !4431)
!4438 = !DILocation(line: 372, column: 40, scope: !4431)
!4439 = !DILocation(line: 373, column: 6, scope: !4431)
!4440 = !DILocation(line: 373, column: 9, scope: !4431)
!4441 = !DILocation(line: 373, column: 13, scope: !4431)
!4442 = !DILocation(line: 373, column: 16, scope: !4431)
!4443 = !DILocation(line: 373, column: 19, scope: !4431)
!4444 = !DILocation(line: 373, column: 38, scope: !4431)
!4445 = !DILocation(line: 374, column: 6, scope: !4431)
!4446 = !DILocation(line: 374, column: 9, scope: !4431)
!4447 = !DILocation(line: 374, column: 13, scope: !4431)
!4448 = !DILocation(line: 374, column: 16, scope: !4431)
!4449 = !DILocation(line: 374, column: 19, scope: !4431)
!4450 = !DILocation(line: 374, column: 38, scope: !4431)
!4451 = !DILocation(line: 376, column: 6, scope: !4431)
!4452 = !DILocation(line: 376, column: 12, scope: !4431)
!4453 = !DILocation(line: 376, column: 10, scope: !4431)
!4454 = !DILocation(line: 376, column: 15, scope: !4431)
!4455 = !DILocation(line: 376, column: 18, scope: !4431)
!4456 = !DILocation(line: 376, column: 24, scope: !4431)
!4457 = !DILocation(line: 376, column: 22, scope: !4431)
!4458 = !DILocation(line: 376, column: 27, scope: !4431)
!4459 = !DILocation(line: 377, column: 6, scope: !4431)
!4460 = !DILocation(line: 377, column: 12, scope: !4431)
!4461 = !DILocation(line: 377, column: 19, scope: !4431)
!4462 = !DILocation(line: 377, column: 10, scope: !4431)
!4463 = !DILocation(line: 377, column: 30, scope: !4431)
!4464 = !DILocation(line: 377, column: 28, scope: !4431)
!4465 = !DILocation(line: 377, column: 34, scope: !4431)
!4466 = !DILocation(line: 378, column: 6, scope: !4431)
!4467 = !DILocation(line: 378, column: 12, scope: !4431)
!4468 = !DILocation(line: 378, column: 19, scope: !4431)
!4469 = !DILocation(line: 378, column: 10, scope: !4431)
!4470 = !DILocation(line: 378, column: 30, scope: !4431)
!4471 = !DILocation(line: 378, column: 37, scope: !4431)
!4472 = !DILocation(line: 378, column: 28, scope: !4431)
!4473 = !DILocation(line: 372, column: 6, scope: !4384)
!4474 = !DILocation(line: 379, column: 3, scope: !4431)
!4475 = !DILocation(line: 381, column: 9, scope: !4384)
!4476 = !DILocation(line: 381, column: 8, scope: !4384)
!4477 = !DILocation(line: 381, column: 19, scope: !4384)
!4478 = !DILocation(line: 381, column: 26, scope: !4384)
!4479 = !DILocation(line: 381, column: 17, scope: !4384)
!4480 = !DILocation(line: 381, column: 6, scope: !4384)
!4481 = !DILocation(line: 382, column: 5, scope: !4384)
!4482 = !DILocation(line: 383, column: 10, scope: !4384)
!4483 = !DILocation(line: 383, column: 16, scope: !4384)
!4484 = !DILocation(line: 383, column: 14, scope: !4384)
!4485 = !DILocation(line: 383, column: 8, scope: !4384)
!4486 = !DILocation(line: 384, column: 6, scope: !4487)
!4487 = distinct !DILexicalBlock(scope: !4384, file: !3, line: 384, column: 6)
!4488 = !DILocation(line: 384, column: 12, scope: !4487)
!4489 = !DILocation(line: 384, column: 6, scope: !4384)
!4490 = !DILocation(line: 385, column: 9, scope: !4487)
!4491 = !DILocation(line: 385, column: 3, scope: !4487)
!4492 = !DILocation(line: 386, column: 12, scope: !4493)
!4493 = distinct !DILexicalBlock(scope: !4384, file: !3, line: 386, column: 2)
!4494 = !DILocation(line: 386, column: 10, scope: !4493)
!4495 = !DILocation(line: 386, column: 7, scope: !4493)
!4496 = !DILocation(line: 386, column: 19, scope: !4497)
!4497 = distinct !DILexicalBlock(scope: !4493, file: !3, line: 386, column: 2)
!4498 = !DILocation(line: 386, column: 25, scope: !4497)
!4499 = !DILocation(line: 386, column: 31, scope: !4497)
!4500 = !DILocation(line: 386, column: 29, scope: !4497)
!4501 = !DILocation(line: 386, column: 34, scope: !4497)
!4502 = !DILocation(line: 386, column: 22, scope: !4497)
!4503 = !DILocation(line: 386, column: 38, scope: !4497)
!4504 = !DILocation(line: 386, column: 41, scope: !4497)
!4505 = !DILocation(line: 386, column: 44, scope: !4497)
!4506 = !DILocation(line: 0, scope: !4497)
!4507 = !DILocation(line: 386, column: 2, scope: !4493)
!4508 = !DILocation(line: 387, column: 13, scope: !4509)
!4509 = distinct !DILexicalBlock(scope: !4510, file: !3, line: 387, column: 3)
!4510 = distinct !DILexicalBlock(scope: !4497, file: !3, line: 386, column: 70)
!4511 = !DILocation(line: 387, column: 19, scope: !4509)
!4512 = !DILocation(line: 387, column: 17, scope: !4509)
!4513 = !DILocation(line: 387, column: 11, scope: !4509)
!4514 = !DILocation(line: 387, column: 8, scope: !4509)
!4515 = !DILocation(line: 388, column: 8, scope: !4516)
!4516 = distinct !DILexicalBlock(scope: !4509, file: !3, line: 387, column: 3)
!4517 = !DILocation(line: 388, column: 13, scope: !4516)
!4518 = !DILocation(line: 388, column: 11, scope: !4516)
!4519 = !DILocation(line: 388, column: 19, scope: !4516)
!4520 = !DILocation(line: 388, column: 25, scope: !4516)
!4521 = !DILocation(line: 388, column: 23, scope: !4516)
!4522 = !DILocation(line: 388, column: 28, scope: !4516)
!4523 = !DILocation(line: 388, column: 16, scope: !4516)
!4524 = !DILocation(line: 388, column: 32, scope: !4516)
!4525 = !DILocation(line: 388, column: 35, scope: !4516)
!4526 = !DILocation(line: 388, column: 38, scope: !4516)
!4527 = !DILocation(line: 0, scope: !4516)
!4528 = !DILocation(line: 387, column: 3, scope: !4509)
!4529 = !DILocation(line: 389, column: 9, scope: !4530)
!4530 = distinct !DILexicalBlock(scope: !4516, file: !3, line: 388, column: 64)
!4531 = !DILocation(line: 389, column: 16, scope: !4530)
!4532 = !DILocation(line: 389, column: 27, scope: !4530)
!4533 = !DILocation(line: 389, column: 25, scope: !4530)
!4534 = !DILocation(line: 389, column: 32, scope: !4530)
!4535 = !DILocation(line: 389, column: 30, scope: !4530)
!4536 = !DILocation(line: 389, column: 7, scope: !4530)
!4537 = !DILocation(line: 390, column: 8, scope: !4538)
!4538 = distinct !DILexicalBlock(scope: !4530, file: !3, line: 390, column: 8)
!4539 = !DILocation(line: 390, column: 15, scope: !4538)
!4540 = !DILocation(line: 390, column: 14, scope: !4538)
!4541 = !DILocation(line: 390, column: 11, scope: !4538)
!4542 = !DILocation(line: 390, column: 23, scope: !4538)
!4543 = !DILocation(line: 390, column: 26, scope: !4538)
!4544 = !DILocation(line: 390, column: 31, scope: !4538)
!4545 = !DILocation(line: 390, column: 29, scope: !4538)
!4546 = !DILocation(line: 390, column: 8, scope: !4530)
!4547 = !DILocation(line: 391, column: 14, scope: !4548)
!4548 = distinct !DILexicalBlock(scope: !4538, file: !3, line: 390, column: 39)
!4549 = !DILocation(line: 391, column: 12, scope: !4548)
!4550 = !DILocation(line: 392, column: 14, scope: !4548)
!4551 = !DILocation(line: 392, column: 12, scope: !4548)
!4552 = !DILocation(line: 393, column: 14, scope: !4548)
!4553 = !DILocation(line: 393, column: 12, scope: !4548)
!4554 = !DILocation(line: 394, column: 4, scope: !4548)
!4555 = !DILocation(line: 395, column: 8, scope: !4556)
!4556 = distinct !DILexicalBlock(scope: !4530, file: !3, line: 395, column: 8)
!4557 = !DILocation(line: 395, column: 15, scope: !4556)
!4558 = !DILocation(line: 395, column: 14, scope: !4556)
!4559 = !DILocation(line: 395, column: 11, scope: !4556)
!4560 = !DILocation(line: 395, column: 23, scope: !4556)
!4561 = !DILocation(line: 395, column: 26, scope: !4556)
!4562 = !DILocation(line: 395, column: 31, scope: !4556)
!4563 = !DILocation(line: 395, column: 29, scope: !4556)
!4564 = !DILocation(line: 395, column: 8, scope: !4530)
!4565 = !DILocation(line: 396, column: 14, scope: !4566)
!4566 = distinct !DILexicalBlock(scope: !4556, file: !3, line: 395, column: 39)
!4567 = !DILocation(line: 396, column: 12, scope: !4566)
!4568 = !DILocation(line: 397, column: 14, scope: !4566)
!4569 = !DILocation(line: 397, column: 12, scope: !4566)
!4570 = !DILocation(line: 398, column: 14, scope: !4566)
!4571 = !DILocation(line: 398, column: 12, scope: !4566)
!4572 = !DILocation(line: 399, column: 4, scope: !4566)
!4573 = !DILocation(line: 400, column: 3, scope: !4530)
!4574 = !DILocation(line: 388, column: 60, scope: !4516)
!4575 = !DILocation(line: 387, column: 3, scope: !4516)
!4576 = distinct !{!4576, !4528, !4577}
!4577 = !DILocation(line: 400, column: 3, scope: !4509)
!4578 = !DILocation(line: 401, column: 2, scope: !4510)
!4579 = !DILocation(line: 386, column: 66, scope: !4497)
!4580 = !DILocation(line: 386, column: 2, scope: !4497)
!4581 = distinct !{!4581, !4507, !4582}
!4582 = !DILocation(line: 401, column: 2, scope: !4493)
!4583 = !DILocation(line: 403, column: 10, scope: !4384)
!4584 = !DILocation(line: 403, column: 16, scope: !4384)
!4585 = !DILocation(line: 403, column: 2, scope: !4384)
!4586 = !DILocation(line: 403, column: 35, scope: !4384)
!4587 = !DILocation(line: 406, column: 13, scope: !4588)
!4588 = distinct !DILexicalBlock(scope: !4384, file: !3, line: 403, column: 35)
!4589 = !DILocation(line: 406, column: 22, scope: !4588)
!4590 = !DILocation(line: 406, column: 20, scope: !4588)
!4591 = !DILocation(line: 406, column: 31, scope: !4588)
!4592 = !DILocation(line: 406, column: 38, scope: !4588)
!4593 = !DILocation(line: 406, column: 29, scope: !4588)
!4594 = !DILocation(line: 406, column: 11, scope: !4588)
!4595 = !DILocation(line: 407, column: 12, scope: !4588)
!4596 = !DILocation(line: 407, column: 21, scope: !4588)
!4597 = !DILocation(line: 407, column: 19, scope: !4588)
!4598 = !DILocation(line: 407, column: 30, scope: !4588)
!4599 = !DILocation(line: 407, column: 37, scope: !4588)
!4600 = !DILocation(line: 407, column: 28, scope: !4588)
!4601 = !DILocation(line: 407, column: 10, scope: !4588)
!4602 = !DILocation(line: 408, column: 7, scope: !4603)
!4603 = distinct !DILexicalBlock(scope: !4588, file: !3, line: 408, column: 7)
!4604 = !DILocation(line: 408, column: 18, scope: !4603)
!4605 = !DILocation(line: 408, column: 17, scope: !4603)
!4606 = !DILocation(line: 408, column: 15, scope: !4603)
!4607 = !DILocation(line: 408, column: 29, scope: !4603)
!4608 = !DILocation(line: 408, column: 28, scope: !4603)
!4609 = !DILocation(line: 408, column: 39, scope: !4603)
!4610 = !DILocation(line: 408, column: 37, scope: !4603)
!4611 = !DILocation(line: 408, column: 26, scope: !4603)
!4612 = !DILocation(line: 408, column: 7, scope: !4588)
!4613 = !DILocation(line: 409, column: 9, scope: !4614)
!4614 = distinct !DILexicalBlock(scope: !4603, file: !3, line: 408, column: 47)
!4615 = !DILocation(line: 409, column: 7, scope: !4614)
!4616 = !DILocation(line: 410, column: 9, scope: !4614)
!4617 = !DILocation(line: 410, column: 7, scope: !4614)
!4618 = !DILocation(line: 411, column: 3, scope: !4614)
!4619 = !DILocation(line: 412, column: 9, scope: !4620)
!4620 = distinct !DILexicalBlock(scope: !4603, file: !3, line: 411, column: 10)
!4621 = !DILocation(line: 412, column: 7, scope: !4620)
!4622 = !DILocation(line: 413, column: 9, scope: !4620)
!4623 = !DILocation(line: 413, column: 7, scope: !4620)
!4624 = !DILocation(line: 415, column: 3, scope: !4588)
!4625 = !DILocation(line: 417, column: 8, scope: !4588)
!4626 = !DILocation(line: 417, column: 6, scope: !4588)
!4627 = !DILocation(line: 418, column: 8, scope: !4588)
!4628 = !DILocation(line: 418, column: 6, scope: !4588)
!4629 = !DILocation(line: 419, column: 3, scope: !4588)
!4630 = !DILocation(line: 421, column: 8, scope: !4588)
!4631 = !DILocation(line: 421, column: 6, scope: !4588)
!4632 = !DILocation(line: 422, column: 8, scope: !4588)
!4633 = !DILocation(line: 422, column: 6, scope: !4588)
!4634 = !DILocation(line: 423, column: 3, scope: !4588)
!4635 = !DILocation(line: 426, column: 13, scope: !4384)
!4636 = !DILocation(line: 426, column: 18, scope: !4384)
!4637 = !DILocation(line: 426, column: 16, scope: !4384)
!4638 = !DILocation(line: 426, column: 23, scope: !4384)
!4639 = !DILocation(line: 426, column: 30, scope: !4384)
!4640 = !DILocation(line: 426, column: 21, scope: !4384)
!4641 = !DILocation(line: 426, column: 3, scope: !4384)
!4642 = !DILocation(line: 426, column: 11, scope: !4384)
!4643 = !DILocation(line: 427, column: 21, scope: !4384)
!4644 = !DILocation(line: 427, column: 2, scope: !4384)
!4645 = !DILocation(line: 427, column: 9, scope: !4384)
!4646 = !DILocation(line: 427, column: 19, scope: !4384)
!4647 = !DILocation(line: 428, column: 21, scope: !4384)
!4648 = !DILocation(line: 428, column: 2, scope: !4384)
!4649 = !DILocation(line: 428, column: 9, scope: !4384)
!4650 = !DILocation(line: 428, column: 19, scope: !4384)
!4651 = !DILocation(line: 429, column: 1, scope: !4384)
!4652 = distinct !DISubprogram(name: "comedi_8254_ns_to_timer", scope: !3, file: !3, line: 438, type: !4385, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !296)
!4653 = !DILocalVariable(name: "i8254", arg: 1, scope: !4652, file: !3, line: 438, type: !183)
!4654 = !DILocation(line: 438, column: 50, scope: !4652)
!4655 = !DILocalVariable(name: "nanosec", arg: 2, scope: !4652, file: !3, line: 439, type: !2721)
!4656 = !DILocation(line: 439, column: 23, scope: !4652)
!4657 = !DILocalVariable(name: "flags", arg: 3, scope: !4652, file: !3, line: 439, type: !7)
!4658 = !DILocation(line: 439, column: 45, scope: !4652)
!4659 = !DILocalVariable(name: "divisor", scope: !4652, file: !3, line: 441, type: !7)
!4660 = !DILocation(line: 441, column: 15, scope: !4652)
!4661 = !DILocation(line: 443, column: 10, scope: !4652)
!4662 = !DILocation(line: 443, column: 16, scope: !4652)
!4663 = !DILocation(line: 443, column: 2, scope: !4652)
!4664 = !DILocation(line: 443, column: 35, scope: !4652)
!4665 = !DILocalVariable(name: "__x", scope: !4666, file: !3, line: 446, type: !7)
!4666 = distinct !DILexicalBlock(scope: !4667, file: !3, line: 446, column: 13)
!4667 = distinct !DILexicalBlock(scope: !4652, file: !3, line: 443, column: 35)
!4668 = !DILocation(line: 446, column: 13, scope: !4666)
!4669 = !DILocalVariable(name: "__d", scope: !4666, file: !3, line: 446, type: !7)
!4670 = !DILocation(line: 446, column: 11, scope: !4667)
!4671 = !DILocation(line: 447, column: 3, scope: !4667)
!4672 = !DILocation(line: 449, column: 13, scope: !4667)
!4673 = !DILocation(line: 449, column: 11, scope: !4667)
!4674 = !DILocation(line: 450, column: 3, scope: !4667)
!4675 = !DILocation(line: 452, column: 14, scope: !4667)
!4676 = !DILocation(line: 452, column: 13, scope: !4667)
!4677 = !DILocation(line: 452, column: 24, scope: !4667)
!4678 = !DILocation(line: 452, column: 31, scope: !4667)
!4679 = !DILocation(line: 452, column: 22, scope: !4667)
!4680 = !DILocation(line: 452, column: 11, scope: !4667)
!4681 = !DILocation(line: 453, column: 3, scope: !4667)
!4682 = !DILocation(line: 455, column: 6, scope: !4683)
!4683 = distinct !DILexicalBlock(scope: !4652, file: !3, line: 455, column: 6)
!4684 = !DILocation(line: 455, column: 14, scope: !4683)
!4685 = !DILocation(line: 455, column: 6, scope: !4652)
!4686 = !DILocation(line: 456, column: 11, scope: !4683)
!4687 = !DILocation(line: 456, column: 3, scope: !4683)
!4688 = !DILocation(line: 457, column: 6, scope: !4689)
!4689 = distinct !DILexicalBlock(scope: !4652, file: !3, line: 457, column: 6)
!4690 = !DILocation(line: 457, column: 14, scope: !4689)
!4691 = !DILocation(line: 457, column: 6, scope: !4652)
!4692 = !DILocation(line: 458, column: 11, scope: !4689)
!4693 = !DILocation(line: 458, column: 3, scope: !4689)
!4694 = !DILocation(line: 460, column: 13, scope: !4652)
!4695 = !DILocation(line: 460, column: 23, scope: !4652)
!4696 = !DILocation(line: 460, column: 30, scope: !4652)
!4697 = !DILocation(line: 460, column: 21, scope: !4652)
!4698 = !DILocation(line: 460, column: 3, scope: !4652)
!4699 = !DILocation(line: 460, column: 11, scope: !4652)
!4700 = !DILocation(line: 461, column: 20, scope: !4652)
!4701 = !DILocation(line: 461, column: 2, scope: !4652)
!4702 = !DILocation(line: 461, column: 9, scope: !4652)
!4703 = !DILocation(line: 461, column: 18, scope: !4652)
!4704 = !DILocation(line: 462, column: 1, scope: !4652)
!4705 = distinct !DISubprogram(name: "comedi_8254_set_busy", scope: !3, file: !3, line: 471, type: !4706, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !296)
!4706 = !DISubroutineType(types: !4707)
!4707 = !{null, !183, !7, !206}
!4708 = !DILocalVariable(name: "i8254", arg: 1, scope: !4705, file: !3, line: 471, type: !183)
!4709 = !DILocation(line: 471, column: 47, scope: !4705)
!4710 = !DILocalVariable(name: "counter", arg: 2, scope: !4705, file: !3, line: 472, type: !7)
!4711 = !DILocation(line: 472, column: 19, scope: !4705)
!4712 = !DILocalVariable(name: "busy", arg: 3, scope: !4705, file: !3, line: 472, type: !206)
!4713 = !DILocation(line: 472, column: 33, scope: !4705)
!4714 = !DILocation(line: 474, column: 6, scope: !4715)
!4715 = distinct !DILexicalBlock(scope: !4705, file: !3, line: 474, column: 6)
!4716 = !DILocation(line: 474, column: 14, scope: !4715)
!4717 = !DILocation(line: 474, column: 6, scope: !4705)
!4718 = !DILocation(line: 475, column: 26, scope: !4715)
!4719 = !DILocation(line: 475, column: 3, scope: !4715)
!4720 = !DILocation(line: 475, column: 10, scope: !4715)
!4721 = !DILocation(line: 475, column: 15, scope: !4715)
!4722 = !DILocation(line: 475, column: 24, scope: !4715)
!4723 = !DILocation(line: 476, column: 1, scope: !4705)
!4724 = distinct !DISubprogram(name: "comedi_8254_subdevice_init", scope: !3, file: !3, line: 559, type: !4725, scopeLine: 561, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !296)
!4725 = !DISubroutineType(types: !4726)
!4726 = !{null, !3851, !183}
!4727 = !DILocalVariable(name: "s", arg: 1, scope: !4724, file: !3, line: 559, type: !3851)
!4728 = !DILocation(line: 559, column: 58, scope: !4724)
!4729 = !DILocalVariable(name: "i8254", arg: 2, scope: !4724, file: !3, line: 560, type: !183)
!4730 = !DILocation(line: 560, column: 25, scope: !4724)
!4731 = !DILocation(line: 562, column: 2, scope: !4724)
!4732 = !DILocation(line: 562, column: 5, scope: !4724)
!4733 = !DILocation(line: 562, column: 11, scope: !4724)
!4734 = !DILocation(line: 563, column: 2, scope: !4724)
!4735 = !DILocation(line: 563, column: 5, scope: !4724)
!4736 = !DILocation(line: 563, column: 18, scope: !4724)
!4737 = !DILocation(line: 564, column: 2, scope: !4724)
!4738 = !DILocation(line: 564, column: 5, scope: !4724)
!4739 = !DILocation(line: 564, column: 12, scope: !4724)
!4740 = !DILocation(line: 565, column: 2, scope: !4724)
!4741 = !DILocation(line: 565, column: 5, scope: !4724)
!4742 = !DILocation(line: 565, column: 13, scope: !4724)
!4743 = !DILocation(line: 566, column: 2, scope: !4724)
!4744 = !DILocation(line: 566, column: 5, scope: !4724)
!4745 = !DILocation(line: 566, column: 17, scope: !4724)
!4746 = !DILocation(line: 567, column: 2, scope: !4724)
!4747 = !DILocation(line: 567, column: 5, scope: !4724)
!4748 = !DILocation(line: 567, column: 15, scope: !4724)
!4749 = !DILocation(line: 568, column: 2, scope: !4724)
!4750 = !DILocation(line: 568, column: 5, scope: !4724)
!4751 = !DILocation(line: 568, column: 16, scope: !4724)
!4752 = !DILocation(line: 569, column: 2, scope: !4724)
!4753 = !DILocation(line: 569, column: 5, scope: !4724)
!4754 = !DILocation(line: 569, column: 17, scope: !4724)
!4755 = !DILocation(line: 571, column: 15, scope: !4724)
!4756 = !DILocation(line: 571, column: 2, scope: !4724)
!4757 = !DILocation(line: 571, column: 5, scope: !4724)
!4758 = !DILocation(line: 571, column: 13, scope: !4724)
!4759 = !DILocation(line: 572, column: 1, scope: !4724)
!4760 = distinct !DISubprogram(name: "comedi_8254_insn_read", scope: !3, file: !3, line: 479, type: !210, scopeLine: 483, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !296)
!4761 = !DILocalVariable(name: "dev", arg: 1, scope: !4760, file: !3, line: 479, type: !213)
!4762 = !DILocation(line: 479, column: 56, scope: !4760)
!4763 = !DILocalVariable(name: "s", arg: 2, scope: !4760, file: !3, line: 480, type: !3851)
!4764 = !DILocation(line: 480, column: 31, scope: !4760)
!4765 = !DILocalVariable(name: "insn", arg: 3, scope: !4760, file: !3, line: 481, type: !3987)
!4766 = !DILocation(line: 481, column: 26, scope: !4760)
!4767 = !DILocalVariable(name: "data", arg: 4, scope: !4760, file: !3, line: 482, type: !2721)
!4768 = !DILocation(line: 482, column: 20, scope: !4760)
!4769 = !DILocalVariable(name: "i8254", scope: !4760, file: !3, line: 484, type: !183)
!4770 = !DILocation(line: 484, column: 22, scope: !4760)
!4771 = !DILocation(line: 484, column: 30, scope: !4760)
!4772 = !DILocation(line: 484, column: 33, scope: !4760)
!4773 = !DILocalVariable(name: "chan", scope: !4760, file: !3, line: 485, type: !7)
!4774 = !DILocation(line: 485, column: 15, scope: !4760)
!4775 = !DILocation(line: 485, column: 22, scope: !4760)
!4776 = !DILocalVariable(name: "i", scope: !4760, file: !3, line: 486, type: !212)
!4777 = !DILocation(line: 486, column: 6, scope: !4760)
!4778 = !DILocation(line: 488, column: 6, scope: !4779)
!4779 = distinct !DILexicalBlock(scope: !4760, file: !3, line: 488, column: 6)
!4780 = !DILocation(line: 488, column: 13, scope: !4779)
!4781 = !DILocation(line: 488, column: 18, scope: !4779)
!4782 = !DILocation(line: 488, column: 6, scope: !4760)
!4783 = !DILocation(line: 489, column: 3, scope: !4779)
!4784 = !DILocation(line: 491, column: 9, scope: !4785)
!4785 = distinct !DILexicalBlock(scope: !4760, file: !3, line: 491, column: 2)
!4786 = !DILocation(line: 491, column: 7, scope: !4785)
!4787 = !DILocation(line: 491, column: 14, scope: !4788)
!4788 = distinct !DILexicalBlock(scope: !4785, file: !3, line: 491, column: 2)
!4789 = !DILocation(line: 491, column: 18, scope: !4788)
!4790 = !DILocation(line: 491, column: 24, scope: !4788)
!4791 = !DILocation(line: 491, column: 16, scope: !4788)
!4792 = !DILocation(line: 491, column: 2, scope: !4785)
!4793 = !DILocation(line: 492, column: 30, scope: !4788)
!4794 = !DILocation(line: 492, column: 37, scope: !4788)
!4795 = !DILocation(line: 492, column: 13, scope: !4788)
!4796 = !DILocation(line: 492, column: 3, scope: !4788)
!4797 = !DILocation(line: 492, column: 8, scope: !4788)
!4798 = !DILocation(line: 492, column: 11, scope: !4788)
!4799 = !DILocation(line: 491, column: 28, scope: !4788)
!4800 = !DILocation(line: 491, column: 2, scope: !4788)
!4801 = distinct !{!4801, !4792, !4802}
!4802 = !DILocation(line: 492, column: 41, scope: !4785)
!4803 = !DILocation(line: 494, column: 9, scope: !4760)
!4804 = !DILocation(line: 494, column: 15, scope: !4760)
!4805 = !DILocation(line: 494, column: 2, scope: !4760)
!4806 = !DILocation(line: 495, column: 1, scope: !4760)
!4807 = distinct !DISubprogram(name: "comedi_8254_insn_write", scope: !3, file: !3, line: 497, type: !210, scopeLine: 501, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !296)
!4808 = !DILocalVariable(name: "dev", arg: 1, scope: !4807, file: !3, line: 497, type: !213)
!4809 = !DILocation(line: 497, column: 57, scope: !4807)
!4810 = !DILocalVariable(name: "s", arg: 2, scope: !4807, file: !3, line: 498, type: !3851)
!4811 = !DILocation(line: 498, column: 32, scope: !4807)
!4812 = !DILocalVariable(name: "insn", arg: 3, scope: !4807, file: !3, line: 499, type: !3987)
!4813 = !DILocation(line: 499, column: 27, scope: !4807)
!4814 = !DILocalVariable(name: "data", arg: 4, scope: !4807, file: !3, line: 500, type: !2721)
!4815 = !DILocation(line: 500, column: 21, scope: !4807)
!4816 = !DILocalVariable(name: "i8254", scope: !4807, file: !3, line: 502, type: !183)
!4817 = !DILocation(line: 502, column: 22, scope: !4807)
!4818 = !DILocation(line: 502, column: 30, scope: !4807)
!4819 = !DILocation(line: 502, column: 33, scope: !4807)
!4820 = !DILocalVariable(name: "chan", scope: !4807, file: !3, line: 503, type: !7)
!4821 = !DILocation(line: 503, column: 15, scope: !4807)
!4822 = !DILocation(line: 503, column: 22, scope: !4807)
!4823 = !DILocation(line: 505, column: 6, scope: !4824)
!4824 = distinct !DILexicalBlock(scope: !4807, file: !3, line: 505, column: 6)
!4825 = !DILocation(line: 505, column: 13, scope: !4824)
!4826 = !DILocation(line: 505, column: 18, scope: !4824)
!4827 = !DILocation(line: 505, column: 6, scope: !4807)
!4828 = !DILocation(line: 506, column: 3, scope: !4824)
!4829 = !DILocation(line: 508, column: 6, scope: !4830)
!4830 = distinct !DILexicalBlock(scope: !4807, file: !3, line: 508, column: 6)
!4831 = !DILocation(line: 508, column: 12, scope: !4830)
!4832 = !DILocation(line: 508, column: 6, scope: !4807)
!4833 = !DILocation(line: 509, column: 21, scope: !4830)
!4834 = !DILocation(line: 509, column: 28, scope: !4830)
!4835 = !DILocation(line: 509, column: 34, scope: !4830)
!4836 = !DILocation(line: 509, column: 39, scope: !4830)
!4837 = !DILocation(line: 509, column: 45, scope: !4830)
!4838 = !DILocation(line: 509, column: 47, scope: !4830)
!4839 = !DILocation(line: 509, column: 3, scope: !4830)
!4840 = !DILocation(line: 511, column: 9, scope: !4807)
!4841 = !DILocation(line: 511, column: 15, scope: !4807)
!4842 = !DILocation(line: 511, column: 2, scope: !4807)
!4843 = !DILocation(line: 512, column: 1, scope: !4807)
!4844 = distinct !DISubprogram(name: "comedi_8254_insn_config", scope: !3, file: !3, line: 514, type: !210, scopeLine: 518, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !296)
!4845 = !DILocalVariable(name: "dev", arg: 1, scope: !4844, file: !3, line: 514, type: !213)
!4846 = !DILocation(line: 514, column: 58, scope: !4844)
!4847 = !DILocalVariable(name: "s", arg: 2, scope: !4844, file: !3, line: 515, type: !3851)
!4848 = !DILocation(line: 515, column: 33, scope: !4844)
!4849 = !DILocalVariable(name: "insn", arg: 3, scope: !4844, file: !3, line: 516, type: !3987)
!4850 = !DILocation(line: 516, column: 28, scope: !4844)
!4851 = !DILocalVariable(name: "data", arg: 4, scope: !4844, file: !3, line: 517, type: !2721)
!4852 = !DILocation(line: 517, column: 22, scope: !4844)
!4853 = !DILocalVariable(name: "i8254", scope: !4844, file: !3, line: 519, type: !183)
!4854 = !DILocation(line: 519, column: 22, scope: !4844)
!4855 = !DILocation(line: 519, column: 30, scope: !4844)
!4856 = !DILocation(line: 519, column: 33, scope: !4844)
!4857 = !DILocalVariable(name: "chan", scope: !4844, file: !3, line: 520, type: !7)
!4858 = !DILocation(line: 520, column: 15, scope: !4844)
!4859 = !DILocation(line: 520, column: 22, scope: !4844)
!4860 = !DILocalVariable(name: "ret", scope: !4844, file: !3, line: 521, type: !212)
!4861 = !DILocation(line: 521, column: 6, scope: !4844)
!4862 = !DILocation(line: 523, column: 6, scope: !4863)
!4863 = distinct !DILexicalBlock(scope: !4844, file: !3, line: 523, column: 6)
!4864 = !DILocation(line: 523, column: 13, scope: !4863)
!4865 = !DILocation(line: 523, column: 18, scope: !4863)
!4866 = !DILocation(line: 523, column: 6, scope: !4844)
!4867 = !DILocation(line: 524, column: 3, scope: !4863)
!4868 = !DILocation(line: 526, column: 10, scope: !4844)
!4869 = !DILocation(line: 526, column: 2, scope: !4844)
!4870 = !DILocation(line: 528, column: 30, scope: !4871)
!4871 = distinct !DILexicalBlock(scope: !4844, file: !3, line: 526, column: 19)
!4872 = !DILocation(line: 528, column: 37, scope: !4871)
!4873 = !DILocation(line: 528, column: 9, scope: !4871)
!4874 = !DILocation(line: 528, column: 7, scope: !4871)
!4875 = !DILocation(line: 530, column: 7, scope: !4876)
!4876 = distinct !DILexicalBlock(scope: !4871, file: !3, line: 530, column: 7)
!4877 = !DILocation(line: 530, column: 7, scope: !4871)
!4878 = !DILocation(line: 531, column: 11, scope: !4876)
!4879 = !DILocation(line: 531, column: 4, scope: !4876)
!4880 = !DILocation(line: 532, column: 3, scope: !4871)
!4881 = !DILocation(line: 534, column: 30, scope: !4871)
!4882 = !DILocation(line: 534, column: 37, scope: !4871)
!4883 = !DILocation(line: 534, column: 43, scope: !4871)
!4884 = !DILocation(line: 534, column: 9, scope: !4871)
!4885 = !DILocation(line: 534, column: 7, scope: !4871)
!4886 = !DILocation(line: 535, column: 7, scope: !4887)
!4887 = distinct !DILexicalBlock(scope: !4871, file: !3, line: 535, column: 7)
!4888 = !DILocation(line: 535, column: 7, scope: !4871)
!4889 = !DILocation(line: 536, column: 11, scope: !4887)
!4890 = !DILocation(line: 536, column: 4, scope: !4887)
!4891 = !DILocation(line: 537, column: 3, scope: !4871)
!4892 = !DILocation(line: 539, column: 32, scope: !4871)
!4893 = !DILocation(line: 539, column: 39, scope: !4871)
!4894 = !DILocation(line: 539, column: 13, scope: !4871)
!4895 = !DILocation(line: 539, column: 3, scope: !4871)
!4896 = !DILocation(line: 539, column: 11, scope: !4871)
!4897 = !DILocation(line: 540, column: 3, scope: !4871)
!4898 = !DILocation(line: 546, column: 7, scope: !4899)
!4899 = distinct !DILexicalBlock(scope: !4871, file: !3, line: 546, column: 7)
!4900 = !DILocation(line: 546, column: 14, scope: !4899)
!4901 = !DILocation(line: 546, column: 7, scope: !4871)
!4902 = !DILocation(line: 547, column: 11, scope: !4899)
!4903 = !DILocation(line: 547, column: 18, scope: !4899)
!4904 = !DILocation(line: 547, column: 30, scope: !4899)
!4905 = !DILocation(line: 547, column: 35, scope: !4899)
!4906 = !DILocation(line: 547, column: 38, scope: !4899)
!4907 = !DILocation(line: 547, column: 44, scope: !4899)
!4908 = !DILocation(line: 547, column: 4, scope: !4899)
!4909 = !DILocation(line: 549, column: 3, scope: !4871)
!4910 = !DILocation(line: 552, column: 9, scope: !4844)
!4911 = !DILocation(line: 552, column: 15, scope: !4844)
!4912 = !DILocation(line: 552, column: 2, scope: !4844)
!4913 = !DILocation(line: 553, column: 1, scope: !4844)
!4914 = distinct !DISubprogram(name: "comedi_8254_init", scope: !3, file: !3, line: 616, type: !4915, scopeLine: 620, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !296)
!4915 = !DISubroutineType(types: !4916)
!4916 = !{!183, !188, !7, !7, !7}
!4917 = !DILocalVariable(name: "iobase", arg: 1, scope: !4914, file: !3, line: 616, type: !188)
!4918 = !DILocation(line: 616, column: 52, scope: !4914)
!4919 = !DILocalVariable(name: "osc_base", arg: 2, scope: !4914, file: !3, line: 617, type: !7)
!4920 = !DILocation(line: 617, column: 23, scope: !4914)
!4921 = !DILocalVariable(name: "iosize", arg: 3, scope: !4914, file: !3, line: 618, type: !7)
!4922 = !DILocation(line: 618, column: 23, scope: !4914)
!4923 = !DILocalVariable(name: "regshift", arg: 4, scope: !4914, file: !3, line: 619, type: !7)
!4924 = !DILocation(line: 619, column: 23, scope: !4914)
!4925 = !DILocation(line: 621, column: 22, scope: !4914)
!4926 = !DILocation(line: 621, column: 36, scope: !4914)
!4927 = !DILocation(line: 621, column: 46, scope: !4914)
!4928 = !DILocation(line: 621, column: 54, scope: !4914)
!4929 = !DILocation(line: 621, column: 9, scope: !4914)
!4930 = !DILocation(line: 621, column: 2, scope: !4914)
!4931 = distinct !DISubprogram(name: "__i8254_init", scope: !3, file: !3, line: 575, type: !4932, scopeLine: 580, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !296)
!4932 = !DISubroutineType(types: !4933)
!4933 = !{!183, !188, !134, !7, !7, !7}
!4934 = !DILocalVariable(name: "iobase", arg: 1, scope: !4931, file: !3, line: 575, type: !188)
!4935 = !DILocation(line: 575, column: 55, scope: !4931)
!4936 = !DILocalVariable(name: "mmio", arg: 2, scope: !4931, file: !3, line: 576, type: !134)
!4937 = !DILocation(line: 576, column: 20, scope: !4931)
!4938 = !DILocalVariable(name: "osc_base", arg: 3, scope: !4931, file: !3, line: 577, type: !7)
!4939 = !DILocation(line: 577, column: 19, scope: !4931)
!4940 = !DILocalVariable(name: "iosize", arg: 4, scope: !4931, file: !3, line: 578, type: !7)
!4941 = !DILocation(line: 578, column: 19, scope: !4931)
!4942 = !DILocalVariable(name: "regshift", arg: 5, scope: !4931, file: !3, line: 579, type: !7)
!4943 = !DILocation(line: 579, column: 19, scope: !4931)
!4944 = !DILocalVariable(name: "i8254", scope: !4931, file: !3, line: 581, type: !183)
!4945 = !DILocation(line: 581, column: 22, scope: !4931)
!4946 = !DILocalVariable(name: "i", scope: !4931, file: !3, line: 582, type: !212)
!4947 = !DILocation(line: 582, column: 6, scope: !4931)
!4948 = !DILocation(line: 585, column: 8, scope: !4949)
!4949 = distinct !DILexicalBlock(scope: !4931, file: !3, line: 585, column: 6)
!4950 = !DILocation(line: 585, column: 15, scope: !4949)
!4951 = !DILocation(line: 585, column: 28, scope: !4949)
!4952 = !DILocation(line: 585, column: 31, scope: !4949)
!4953 = !DILocation(line: 585, column: 38, scope: !4949)
!4954 = !DILocation(line: 585, column: 52, scope: !4949)
!4955 = !DILocation(line: 586, column: 8, scope: !4949)
!4956 = !DILocation(line: 586, column: 15, scope: !4949)
!4957 = !DILocation(line: 585, column: 6, scope: !4931)
!4958 = !DILocation(line: 587, column: 3, scope: !4949)
!4959 = !DILocation(line: 589, column: 10, scope: !4931)
!4960 = !DILocation(line: 589, column: 8, scope: !4931)
!4961 = !DILocation(line: 590, column: 7, scope: !4962)
!4962 = distinct !DILexicalBlock(scope: !4931, file: !3, line: 590, column: 6)
!4963 = !DILocation(line: 590, column: 6, scope: !4931)
!4964 = !DILocation(line: 591, column: 3, scope: !4962)
!4965 = !DILocation(line: 593, column: 18, scope: !4931)
!4966 = !DILocation(line: 593, column: 2, scope: !4931)
!4967 = !DILocation(line: 593, column: 9, scope: !4931)
!4968 = !DILocation(line: 593, column: 16, scope: !4931)
!4969 = !DILocation(line: 594, column: 16, scope: !4931)
!4970 = !DILocation(line: 594, column: 2, scope: !4931)
!4971 = !DILocation(line: 594, column: 9, scope: !4931)
!4972 = !DILocation(line: 594, column: 14, scope: !4931)
!4973 = !DILocation(line: 595, column: 18, scope: !4931)
!4974 = !DILocation(line: 595, column: 2, scope: !4931)
!4975 = !DILocation(line: 595, column: 9, scope: !4931)
!4976 = !DILocation(line: 595, column: 16, scope: !4931)
!4977 = !DILocation(line: 596, column: 20, scope: !4931)
!4978 = !DILocation(line: 596, column: 2, scope: !4931)
!4979 = !DILocation(line: 596, column: 9, scope: !4931)
!4980 = !DILocation(line: 596, column: 18, scope: !4931)
!4981 = !DILocation(line: 599, column: 20, scope: !4931)
!4982 = !DILocation(line: 599, column: 31, scope: !4931)
!4983 = !DILocation(line: 599, column: 2, scope: !4931)
!4984 = !DILocation(line: 599, column: 9, scope: !4931)
!4985 = !DILocation(line: 599, column: 18, scope: !4931)
!4986 = !DILocation(line: 602, column: 9, scope: !4987)
!4987 = distinct !DILexicalBlock(scope: !4931, file: !3, line: 602, column: 2)
!4988 = !DILocation(line: 602, column: 7, scope: !4987)
!4989 = !DILocation(line: 602, column: 14, scope: !4990)
!4990 = distinct !DILexicalBlock(scope: !4987, file: !3, line: 602, column: 2)
!4991 = !DILocation(line: 602, column: 16, scope: !4990)
!4992 = !DILocation(line: 602, column: 2, scope: !4987)
!4993 = !DILocation(line: 603, column: 24, scope: !4990)
!4994 = !DILocation(line: 603, column: 31, scope: !4990)
!4995 = !DILocation(line: 603, column: 3, scope: !4990)
!4996 = !DILocation(line: 602, column: 22, scope: !4990)
!4997 = !DILocation(line: 602, column: 2, scope: !4990)
!4998 = distinct !{!4998, !4992, !4999}
!4999 = !DILocation(line: 603, column: 60, scope: !4987)
!5000 = !DILocation(line: 605, column: 9, scope: !4931)
!5001 = !DILocation(line: 605, column: 2, scope: !4931)
!5002 = !DILocation(line: 606, column: 1, scope: !4931)
!5003 = distinct !DISubprogram(name: "comedi_8254_mm_init", scope: !3, file: !3, line: 633, type: !5004, scopeLine: 637, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !296)
!5004 = !DISubroutineType(types: !5005)
!5005 = !{!183, !134, !7, !7, !7}
!5006 = !DILocalVariable(name: "mmio", arg: 1, scope: !5003, file: !3, line: 633, type: !134)
!5007 = !DILocation(line: 633, column: 55, scope: !5003)
!5008 = !DILocalVariable(name: "osc_base", arg: 2, scope: !5003, file: !3, line: 634, type: !7)
!5009 = !DILocation(line: 634, column: 19, scope: !5003)
!5010 = !DILocalVariable(name: "iosize", arg: 3, scope: !5003, file: !3, line: 635, type: !7)
!5011 = !DILocation(line: 635, column: 19, scope: !5003)
!5012 = !DILocalVariable(name: "regshift", arg: 4, scope: !5003, file: !3, line: 636, type: !7)
!5013 = !DILocation(line: 636, column: 19, scope: !5003)
!5014 = !DILocation(line: 638, column: 25, scope: !5003)
!5015 = !DILocation(line: 638, column: 31, scope: !5003)
!5016 = !DILocation(line: 638, column: 41, scope: !5003)
!5017 = !DILocation(line: 638, column: 49, scope: !5003)
!5018 = !DILocation(line: 638, column: 9, scope: !5003)
!5019 = !DILocation(line: 638, column: 2, scope: !5003)
!5020 = distinct !DISubprogram(name: "comedi_8254_module_init", scope: !3, file: !3, line: 642, type: !5021, scopeLine: 643, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !296)
!5021 = !DISubroutineType(types: !5022)
!5022 = !{!212}
!5023 = !DILocation(line: 644, column: 2, scope: !5020)
!5024 = distinct !DISubprogram(name: "comedi_8254_module_exit", scope: !3, file: !3, line: 648, type: !151, scopeLine: 649, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !296)
!5025 = !DILocation(line: 650, column: 1, scope: !5024)
!5026 = distinct !DISubprogram(name: "writeb", scope: !5027, file: !5027, line: 65, type: !5028, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !296)
!5027 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!5028 = !DISubroutineType(types: !5029)
!5029 = !{null, !137, !5030}
!5030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5031, size: 64)
!5031 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5032 = !DILocalVariable(name: "val", arg: 1, scope: !5026, file: !5027, line: 65, type: !137)
!5033 = !DILocation(line: 65, column: 1, scope: !5026)
!5034 = !DILocalVariable(name: "addr", arg: 2, scope: !5026, file: !5027, line: 65, type: !5030)
!5035 = !{i32 -2144201581}
!5036 = distinct !DISubprogram(name: "outb", scope: !5027, file: !5027, line: 334, type: !5037, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !296)
!5037 = !DISubroutineType(types: !5038)
!5038 = !{null, !137, !212}
!5039 = !DILocalVariable(name: "value", arg: 1, scope: !5036, file: !5027, line: 334, type: !137)
!5040 = !DILocation(line: 334, column: 1, scope: !5036)
!5041 = !DILocalVariable(name: "port", arg: 2, scope: !5036, file: !5027, line: 334, type: !212)
!5042 = !{i32 -2144190941}
!5043 = distinct !DISubprogram(name: "writew", scope: !5027, file: !5027, line: 66, type: !5044, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !296)
!5044 = !DISubroutineType(types: !5045)
!5045 = !{null, !140, !5030}
!5046 = !DILocalVariable(name: "val", arg: 1, scope: !5043, file: !5027, line: 66, type: !140)
!5047 = !DILocation(line: 66, column: 1, scope: !5043)
!5048 = !DILocalVariable(name: "addr", arg: 2, scope: !5043, file: !5027, line: 66, type: !5030)
!5049 = !{i32 -2144201197}
!5050 = distinct !DISubprogram(name: "outw", scope: !5027, file: !5027, line: 335, type: !5051, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !296)
!5051 = !DISubroutineType(types: !5052)
!5052 = !{null, !140, !212}
!5053 = !DILocalVariable(name: "value", arg: 1, scope: !5050, file: !5027, line: 335, type: !140)
!5054 = !DILocation(line: 335, column: 1, scope: !5050)
!5055 = !DILocalVariable(name: "port", arg: 2, scope: !5050, file: !5027, line: 335, type: !212)
!5056 = !{i32 -2144188198}
!5057 = distinct !DISubprogram(name: "writel", scope: !5027, file: !5027, line: 67, type: !5058, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !296)
!5058 = !DISubroutineType(types: !5059)
!5059 = !{null, !7, !5030}
!5060 = !DILocalVariable(name: "val", arg: 1, scope: !5057, file: !5027, line: 67, type: !7)
!5061 = !DILocation(line: 67, column: 1, scope: !5057)
!5062 = !DILocalVariable(name: "addr", arg: 2, scope: !5057, file: !5027, line: 67, type: !5030)
!5063 = !{i32 -2144200811}
!5064 = distinct !DISubprogram(name: "outl", scope: !5027, file: !5027, line: 336, type: !5065, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !296)
!5065 = !DISubroutineType(types: !5066)
!5066 = !{null, !7, !212}
!5067 = !DILocalVariable(name: "value", arg: 1, scope: !5064, file: !5027, line: 336, type: !7)
!5068 = !DILocation(line: 336, column: 1, scope: !5064)
!5069 = !DILocalVariable(name: "port", arg: 2, scope: !5064, file: !5027, line: 336, type: !212)
!5070 = !{i32 -2144185445}
!5071 = distinct !DISubprogram(name: "readb", scope: !5027, file: !5027, line: 57, type: !5072, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !296)
!5072 = !DISubroutineType(types: !5073)
!5073 = !{!137, !5074}
!5074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5075, size: 64)
!5075 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5031)
!5076 = !DILocalVariable(name: "addr", arg: 1, scope: !5071, file: !5027, line: 57, type: !5074)
!5077 = !DILocation(line: 57, column: 1, scope: !5071)
!5078 = !DILocalVariable(name: "ret", scope: !5071, file: !5027, line: 57, type: !137)
!5079 = !{i32 -2144204035}
!5080 = distinct !DISubprogram(name: "inb", scope: !5027, file: !5027, line: 334, type: !5081, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !296)
!5081 = !DISubroutineType(types: !5082)
!5082 = !{!137, !212}
!5083 = !DILocalVariable(name: "port", arg: 1, scope: !5080, file: !5027, line: 334, type: !212)
!5084 = !DILocation(line: 334, column: 1, scope: !5080)
!5085 = !DILocalVariable(name: "value", scope: !5080, file: !5027, line: 334, type: !137)
!5086 = !{i32 -2144190739}
!5087 = distinct !DISubprogram(name: "readw", scope: !5027, file: !5027, line: 58, type: !5088, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !296)
!5088 = !DISubroutineType(types: !5089)
!5089 = !{!140, !5074}
!5090 = !DILocalVariable(name: "addr", arg: 1, scope: !5087, file: !5027, line: 58, type: !5074)
!5091 = !DILocation(line: 58, column: 1, scope: !5087)
!5092 = !DILocalVariable(name: "ret", scope: !5087, file: !5027, line: 58, type: !140)
!5093 = !{i32 -2144203621}
!5094 = distinct !DISubprogram(name: "inw", scope: !5027, file: !5027, line: 335, type: !5095, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !296)
!5095 = !DISubroutineType(types: !5096)
!5096 = !{!140, !212}
!5097 = !DILocalVariable(name: "port", arg: 1, scope: !5094, file: !5027, line: 335, type: !212)
!5098 = !DILocation(line: 335, column: 1, scope: !5094)
!5099 = !DILocalVariable(name: "value", scope: !5094, file: !5027, line: 335, type: !140)
!5100 = !{i32 -2144187996}
!5101 = distinct !DISubprogram(name: "readl", scope: !5027, file: !5027, line: 59, type: !5102, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !296)
!5102 = !DISubroutineType(types: !5103)
!5103 = !{!7, !5074}
!5104 = !DILocalVariable(name: "addr", arg: 1, scope: !5101, file: !5027, line: 59, type: !5074)
!5105 = !DILocation(line: 59, column: 1, scope: !5101)
!5106 = !DILocalVariable(name: "ret", scope: !5101, file: !5027, line: 59, type: !7)
!5107 = !{i32 -2144203204}
!5108 = distinct !DISubprogram(name: "inl", scope: !5027, file: !5027, line: 336, type: !5109, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !296)
!5109 = !DISubroutineType(types: !5110)
!5110 = !{!7, !212}
!5111 = !DILocalVariable(name: "port", arg: 1, scope: !5108, file: !5027, line: 336, type: !212)
!5112 = !DILocation(line: 336, column: 1, scope: !5108)
!5113 = !DILocalVariable(name: "value", scope: !5108, file: !5027, line: 336, type: !7)
!5114 = !{i32 -2144185243}
!5115 = distinct !DISubprogram(name: "kzalloc", scope: !127, file: !127, line: 662, type: !5116, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !296)
!5116 = !DISubroutineType(types: !5117)
!5117 = !{!134, !367, !143}
!5118 = !DILocalVariable(name: "s", arg: 1, scope: !5119, file: !127, line: 445, type: !977)
!5119 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !127, file: !127, line: 445, type: !5120, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !296)
!5120 = !DISubroutineType(types: !5121)
!5121 = !{!134, !977, !143, !367}
!5122 = !DILocation(line: 445, column: 72, scope: !5119, inlinedAt: !5123)
!5123 = distinct !DILocation(line: 552, column: 10, scope: !5124, inlinedAt: !5127)
!5124 = distinct !DILexicalBlock(scope: !5125, file: !127, line: 540, column: 34)
!5125 = distinct !DILexicalBlock(scope: !5126, file: !127, line: 540, column: 6)
!5126 = distinct !DISubprogram(name: "kmalloc", scope: !127, file: !127, line: 538, type: !5116, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !296)
!5127 = distinct !DILocation(line: 664, column: 9, scope: !5115)
!5128 = !DILocalVariable(name: "flags", arg: 2, scope: !5119, file: !127, line: 446, type: !143)
!5129 = !DILocation(line: 446, column: 9, scope: !5119, inlinedAt: !5123)
!5130 = !DILocalVariable(name: "size", arg: 3, scope: !5119, file: !127, line: 446, type: !367)
!5131 = !DILocation(line: 446, column: 23, scope: !5119, inlinedAt: !5123)
!5132 = !DILocalVariable(name: "ret", scope: !5119, file: !127, line: 448, type: !134)
!5133 = !DILocation(line: 448, column: 8, scope: !5119, inlinedAt: !5123)
!5134 = !DILocalVariable(name: "flags", arg: 1, scope: !5135, file: !127, line: 318, type: !143)
!5135 = distinct !DISubprogram(name: "kmalloc_type", scope: !127, file: !127, line: 318, type: !5136, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !296)
!5136 = !DISubroutineType(types: !5137)
!5137 = !{!126, !143}
!5138 = !DILocation(line: 318, column: 67, scope: !5135, inlinedAt: !5139)
!5139 = distinct !DILocation(line: 553, column: 20, scope: !5124, inlinedAt: !5127)
!5140 = !DILocalVariable(name: "size", arg: 1, scope: !5141, file: !127, line: 346, type: !367)
!5141 = distinct !DISubprogram(name: "kmalloc_index", scope: !127, file: !127, line: 346, type: !5142, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !296)
!5142 = !DISubroutineType(types: !5143)
!5143 = !{!7, !367}
!5144 = !DILocation(line: 346, column: 58, scope: !5141, inlinedAt: !5145)
!5145 = distinct !DILocation(line: 547, column: 11, scope: !5124, inlinedAt: !5127)
!5146 = !DILocalVariable(name: "size", arg: 1, scope: !5147, file: !127, line: 472, type: !367)
!5147 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !127, file: !127, line: 472, type: !5148, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !296)
!5148 = !DISubroutineType(types: !5149)
!5149 = !{!134, !367, !143, !7}
!5150 = !DILocation(line: 472, column: 28, scope: !5147, inlinedAt: !5151)
!5151 = distinct !DILocation(line: 481, column: 9, scope: !5152, inlinedAt: !5153)
!5152 = distinct !DISubprogram(name: "kmalloc_large", scope: !127, file: !127, line: 478, type: !5116, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !296)
!5153 = distinct !DILocation(line: 545, column: 11, scope: !5154, inlinedAt: !5127)
!5154 = distinct !DILexicalBlock(scope: !5124, file: !127, line: 544, column: 7)
!5155 = !DILocalVariable(name: "flags", arg: 2, scope: !5147, file: !127, line: 472, type: !143)
!5156 = !DILocation(line: 472, column: 40, scope: !5147, inlinedAt: !5151)
!5157 = !DILocalVariable(name: "order", arg: 3, scope: !5147, file: !127, line: 472, type: !7)
!5158 = !DILocation(line: 472, column: 60, scope: !5147, inlinedAt: !5151)
!5159 = !DILocalVariable(name: "size", arg: 1, scope: !5152, file: !127, line: 478, type: !367)
!5160 = !DILocation(line: 478, column: 51, scope: !5152, inlinedAt: !5153)
!5161 = !DILocalVariable(name: "flags", arg: 2, scope: !5152, file: !127, line: 478, type: !143)
!5162 = !DILocation(line: 478, column: 63, scope: !5152, inlinedAt: !5153)
!5163 = !DILocalVariable(name: "order", scope: !5152, file: !127, line: 480, type: !7)
!5164 = !DILocation(line: 480, column: 15, scope: !5152, inlinedAt: !5153)
!5165 = !DILocalVariable(name: "size", arg: 1, scope: !5126, file: !127, line: 538, type: !367)
!5166 = !DILocation(line: 538, column: 45, scope: !5126, inlinedAt: !5127)
!5167 = !DILocalVariable(name: "flags", arg: 2, scope: !5126, file: !127, line: 538, type: !143)
!5168 = !DILocation(line: 538, column: 57, scope: !5126, inlinedAt: !5127)
!5169 = !DILocalVariable(name: "index", scope: !5124, file: !127, line: 542, type: !7)
!5170 = !DILocation(line: 542, column: 16, scope: !5124, inlinedAt: !5127)
!5171 = !DILocalVariable(name: "size", arg: 1, scope: !5115, file: !127, line: 662, type: !367)
!5172 = !DILocation(line: 662, column: 36, scope: !5115)
!5173 = !DILocalVariable(name: "flags", arg: 2, scope: !5115, file: !127, line: 662, type: !143)
!5174 = !DILocation(line: 662, column: 48, scope: !5115)
!5175 = !DILocation(line: 664, column: 17, scope: !5115)
!5176 = !DILocation(line: 664, column: 23, scope: !5115)
!5177 = !DILocation(line: 664, column: 29, scope: !5115)
!5178 = !DILocation(line: 540, column: 27, scope: !5125, inlinedAt: !5127)
!5179 = !DILocation(line: 540, column: 6, scope: !5125, inlinedAt: !5127)
!5180 = !DILocation(line: 540, column: 6, scope: !5126, inlinedAt: !5127)
!5181 = !DILocation(line: 544, column: 7, scope: !5154, inlinedAt: !5127)
!5182 = !DILocation(line: 544, column: 12, scope: !5154, inlinedAt: !5127)
!5183 = !DILocation(line: 544, column: 7, scope: !5124, inlinedAt: !5127)
!5184 = !DILocation(line: 545, column: 25, scope: !5154, inlinedAt: !5127)
!5185 = !DILocation(line: 545, column: 31, scope: !5154, inlinedAt: !5127)
!5186 = !DILocation(line: 480, column: 33, scope: !5152, inlinedAt: !5153)
!5187 = !DILocation(line: 480, column: 23, scope: !5152, inlinedAt: !5153)
!5188 = !DILocation(line: 481, column: 29, scope: !5152, inlinedAt: !5153)
!5189 = !DILocation(line: 481, column: 35, scope: !5152, inlinedAt: !5153)
!5190 = !DILocation(line: 481, column: 42, scope: !5152, inlinedAt: !5153)
!5191 = !DILocation(line: 474, column: 23, scope: !5147, inlinedAt: !5151)
!5192 = !DILocation(line: 474, column: 29, scope: !5147, inlinedAt: !5151)
!5193 = !DILocation(line: 474, column: 36, scope: !5147, inlinedAt: !5151)
!5194 = !DILocation(line: 474, column: 9, scope: !5147, inlinedAt: !5151)
!5195 = !DILocation(line: 545, column: 4, scope: !5154, inlinedAt: !5127)
!5196 = !DILocation(line: 547, column: 25, scope: !5124, inlinedAt: !5127)
!5197 = !DILocation(line: 348, column: 7, scope: !5198, inlinedAt: !5145)
!5198 = distinct !DILexicalBlock(scope: !5141, file: !127, line: 348, column: 6)
!5199 = !DILocation(line: 348, column: 6, scope: !5141, inlinedAt: !5145)
!5200 = !DILocation(line: 349, column: 3, scope: !5198, inlinedAt: !5145)
!5201 = !DILocation(line: 351, column: 6, scope: !5202, inlinedAt: !5145)
!5202 = distinct !DILexicalBlock(scope: !5141, file: !127, line: 351, column: 6)
!5203 = !DILocation(line: 351, column: 11, scope: !5202, inlinedAt: !5145)
!5204 = !DILocation(line: 351, column: 6, scope: !5141, inlinedAt: !5145)
!5205 = !DILocation(line: 352, column: 3, scope: !5202, inlinedAt: !5145)
!5206 = !DILocation(line: 354, column: 32, scope: !5207, inlinedAt: !5145)
!5207 = distinct !DILexicalBlock(scope: !5141, file: !127, line: 354, column: 6)
!5208 = !DILocation(line: 354, column: 37, scope: !5207, inlinedAt: !5145)
!5209 = !DILocation(line: 354, column: 42, scope: !5207, inlinedAt: !5145)
!5210 = !DILocation(line: 354, column: 45, scope: !5207, inlinedAt: !5145)
!5211 = !DILocation(line: 354, column: 50, scope: !5207, inlinedAt: !5145)
!5212 = !DILocation(line: 354, column: 6, scope: !5141, inlinedAt: !5145)
!5213 = !DILocation(line: 355, column: 3, scope: !5207, inlinedAt: !5145)
!5214 = !DILocation(line: 356, column: 32, scope: !5215, inlinedAt: !5145)
!5215 = distinct !DILexicalBlock(scope: !5141, file: !127, line: 356, column: 6)
!5216 = !DILocation(line: 356, column: 37, scope: !5215, inlinedAt: !5145)
!5217 = !DILocation(line: 356, column: 43, scope: !5215, inlinedAt: !5145)
!5218 = !DILocation(line: 356, column: 46, scope: !5215, inlinedAt: !5145)
!5219 = !DILocation(line: 356, column: 51, scope: !5215, inlinedAt: !5145)
!5220 = !DILocation(line: 356, column: 6, scope: !5141, inlinedAt: !5145)
!5221 = !DILocation(line: 357, column: 3, scope: !5215, inlinedAt: !5145)
!5222 = !DILocation(line: 358, column: 6, scope: !5223, inlinedAt: !5145)
!5223 = distinct !DILexicalBlock(scope: !5141, file: !127, line: 358, column: 6)
!5224 = !DILocation(line: 358, column: 11, scope: !5223, inlinedAt: !5145)
!5225 = !DILocation(line: 358, column: 6, scope: !5141, inlinedAt: !5145)
!5226 = !DILocation(line: 358, column: 26, scope: !5223, inlinedAt: !5145)
!5227 = !DILocation(line: 359, column: 6, scope: !5228, inlinedAt: !5145)
!5228 = distinct !DILexicalBlock(scope: !5141, file: !127, line: 359, column: 6)
!5229 = !DILocation(line: 359, column: 11, scope: !5228, inlinedAt: !5145)
!5230 = !DILocation(line: 359, column: 6, scope: !5141, inlinedAt: !5145)
!5231 = !DILocation(line: 359, column: 26, scope: !5228, inlinedAt: !5145)
!5232 = !DILocation(line: 360, column: 6, scope: !5233, inlinedAt: !5145)
!5233 = distinct !DILexicalBlock(scope: !5141, file: !127, line: 360, column: 6)
!5234 = !DILocation(line: 360, column: 11, scope: !5233, inlinedAt: !5145)
!5235 = !DILocation(line: 360, column: 6, scope: !5141, inlinedAt: !5145)
!5236 = !DILocation(line: 360, column: 26, scope: !5233, inlinedAt: !5145)
!5237 = !DILocation(line: 361, column: 6, scope: !5238, inlinedAt: !5145)
!5238 = distinct !DILexicalBlock(scope: !5141, file: !127, line: 361, column: 6)
!5239 = !DILocation(line: 361, column: 11, scope: !5238, inlinedAt: !5145)
!5240 = !DILocation(line: 361, column: 6, scope: !5141, inlinedAt: !5145)
!5241 = !DILocation(line: 361, column: 26, scope: !5238, inlinedAt: !5145)
!5242 = !DILocation(line: 362, column: 6, scope: !5243, inlinedAt: !5145)
!5243 = distinct !DILexicalBlock(scope: !5141, file: !127, line: 362, column: 6)
!5244 = !DILocation(line: 362, column: 11, scope: !5243, inlinedAt: !5145)
!5245 = !DILocation(line: 362, column: 6, scope: !5141, inlinedAt: !5145)
!5246 = !DILocation(line: 362, column: 26, scope: !5243, inlinedAt: !5145)
!5247 = !DILocation(line: 363, column: 6, scope: !5248, inlinedAt: !5145)
!5248 = distinct !DILexicalBlock(scope: !5141, file: !127, line: 363, column: 6)
!5249 = !DILocation(line: 363, column: 11, scope: !5248, inlinedAt: !5145)
!5250 = !DILocation(line: 363, column: 6, scope: !5141, inlinedAt: !5145)
!5251 = !DILocation(line: 363, column: 26, scope: !5248, inlinedAt: !5145)
!5252 = !DILocation(line: 364, column: 6, scope: !5253, inlinedAt: !5145)
!5253 = distinct !DILexicalBlock(scope: !5141, file: !127, line: 364, column: 6)
!5254 = !DILocation(line: 364, column: 11, scope: !5253, inlinedAt: !5145)
!5255 = !DILocation(line: 364, column: 6, scope: !5141, inlinedAt: !5145)
!5256 = !DILocation(line: 364, column: 26, scope: !5253, inlinedAt: !5145)
!5257 = !DILocation(line: 365, column: 6, scope: !5258, inlinedAt: !5145)
!5258 = distinct !DILexicalBlock(scope: !5141, file: !127, line: 365, column: 6)
!5259 = !DILocation(line: 365, column: 11, scope: !5258, inlinedAt: !5145)
!5260 = !DILocation(line: 365, column: 6, scope: !5141, inlinedAt: !5145)
!5261 = !DILocation(line: 365, column: 26, scope: !5258, inlinedAt: !5145)
!5262 = !DILocation(line: 366, column: 6, scope: !5263, inlinedAt: !5145)
!5263 = distinct !DILexicalBlock(scope: !5141, file: !127, line: 366, column: 6)
!5264 = !DILocation(line: 366, column: 11, scope: !5263, inlinedAt: !5145)
!5265 = !DILocation(line: 366, column: 6, scope: !5141, inlinedAt: !5145)
!5266 = !DILocation(line: 366, column: 26, scope: !5263, inlinedAt: !5145)
!5267 = !DILocation(line: 367, column: 6, scope: !5268, inlinedAt: !5145)
!5268 = distinct !DILexicalBlock(scope: !5141, file: !127, line: 367, column: 6)
!5269 = !DILocation(line: 367, column: 11, scope: !5268, inlinedAt: !5145)
!5270 = !DILocation(line: 367, column: 6, scope: !5141, inlinedAt: !5145)
!5271 = !DILocation(line: 367, column: 26, scope: !5268, inlinedAt: !5145)
!5272 = !DILocation(line: 368, column: 6, scope: !5273, inlinedAt: !5145)
!5273 = distinct !DILexicalBlock(scope: !5141, file: !127, line: 368, column: 6)
!5274 = !DILocation(line: 368, column: 11, scope: !5273, inlinedAt: !5145)
!5275 = !DILocation(line: 368, column: 6, scope: !5141, inlinedAt: !5145)
!5276 = !DILocation(line: 368, column: 26, scope: !5273, inlinedAt: !5145)
!5277 = !DILocation(line: 369, column: 6, scope: !5278, inlinedAt: !5145)
!5278 = distinct !DILexicalBlock(scope: !5141, file: !127, line: 369, column: 6)
!5279 = !DILocation(line: 369, column: 11, scope: !5278, inlinedAt: !5145)
!5280 = !DILocation(line: 369, column: 6, scope: !5141, inlinedAt: !5145)
!5281 = !DILocation(line: 369, column: 26, scope: !5278, inlinedAt: !5145)
!5282 = !DILocation(line: 370, column: 6, scope: !5283, inlinedAt: !5145)
!5283 = distinct !DILexicalBlock(scope: !5141, file: !127, line: 370, column: 6)
!5284 = !DILocation(line: 370, column: 11, scope: !5283, inlinedAt: !5145)
!5285 = !DILocation(line: 370, column: 6, scope: !5141, inlinedAt: !5145)
!5286 = !DILocation(line: 370, column: 26, scope: !5283, inlinedAt: !5145)
!5287 = !DILocation(line: 371, column: 6, scope: !5288, inlinedAt: !5145)
!5288 = distinct !DILexicalBlock(scope: !5141, file: !127, line: 371, column: 6)
!5289 = !DILocation(line: 371, column: 11, scope: !5288, inlinedAt: !5145)
!5290 = !DILocation(line: 371, column: 6, scope: !5141, inlinedAt: !5145)
!5291 = !DILocation(line: 371, column: 26, scope: !5288, inlinedAt: !5145)
!5292 = !DILocation(line: 372, column: 6, scope: !5293, inlinedAt: !5145)
!5293 = distinct !DILexicalBlock(scope: !5141, file: !127, line: 372, column: 6)
!5294 = !DILocation(line: 372, column: 11, scope: !5293, inlinedAt: !5145)
!5295 = !DILocation(line: 372, column: 6, scope: !5141, inlinedAt: !5145)
!5296 = !DILocation(line: 372, column: 26, scope: !5293, inlinedAt: !5145)
!5297 = !DILocation(line: 373, column: 6, scope: !5298, inlinedAt: !5145)
!5298 = distinct !DILexicalBlock(scope: !5141, file: !127, line: 373, column: 6)
!5299 = !DILocation(line: 373, column: 11, scope: !5298, inlinedAt: !5145)
!5300 = !DILocation(line: 373, column: 6, scope: !5141, inlinedAt: !5145)
!5301 = !DILocation(line: 373, column: 26, scope: !5298, inlinedAt: !5145)
!5302 = !DILocation(line: 374, column: 6, scope: !5303, inlinedAt: !5145)
!5303 = distinct !DILexicalBlock(scope: !5141, file: !127, line: 374, column: 6)
!5304 = !DILocation(line: 374, column: 11, scope: !5303, inlinedAt: !5145)
!5305 = !DILocation(line: 374, column: 6, scope: !5141, inlinedAt: !5145)
!5306 = !DILocation(line: 374, column: 26, scope: !5303, inlinedAt: !5145)
!5307 = !DILocation(line: 375, column: 6, scope: !5308, inlinedAt: !5145)
!5308 = distinct !DILexicalBlock(scope: !5141, file: !127, line: 375, column: 6)
!5309 = !DILocation(line: 375, column: 11, scope: !5308, inlinedAt: !5145)
!5310 = !DILocation(line: 375, column: 6, scope: !5141, inlinedAt: !5145)
!5311 = !DILocation(line: 375, column: 27, scope: !5308, inlinedAt: !5145)
!5312 = !DILocation(line: 376, column: 6, scope: !5313, inlinedAt: !5145)
!5313 = distinct !DILexicalBlock(scope: !5141, file: !127, line: 376, column: 6)
!5314 = !DILocation(line: 376, column: 11, scope: !5313, inlinedAt: !5145)
!5315 = !DILocation(line: 376, column: 6, scope: !5141, inlinedAt: !5145)
!5316 = !DILocation(line: 376, column: 32, scope: !5313, inlinedAt: !5145)
!5317 = !DILocation(line: 377, column: 6, scope: !5318, inlinedAt: !5145)
!5318 = distinct !DILexicalBlock(scope: !5141, file: !127, line: 377, column: 6)
!5319 = !DILocation(line: 377, column: 11, scope: !5318, inlinedAt: !5145)
!5320 = !DILocation(line: 377, column: 6, scope: !5141, inlinedAt: !5145)
!5321 = !DILocation(line: 377, column: 32, scope: !5318, inlinedAt: !5145)
!5322 = !DILocation(line: 378, column: 6, scope: !5323, inlinedAt: !5145)
!5323 = distinct !DILexicalBlock(scope: !5141, file: !127, line: 378, column: 6)
!5324 = !DILocation(line: 378, column: 11, scope: !5323, inlinedAt: !5145)
!5325 = !DILocation(line: 378, column: 6, scope: !5141, inlinedAt: !5145)
!5326 = !DILocation(line: 378, column: 32, scope: !5323, inlinedAt: !5145)
!5327 = !DILocation(line: 379, column: 6, scope: !5328, inlinedAt: !5145)
!5328 = distinct !DILexicalBlock(scope: !5141, file: !127, line: 379, column: 6)
!5329 = !DILocation(line: 379, column: 11, scope: !5328, inlinedAt: !5145)
!5330 = !DILocation(line: 379, column: 6, scope: !5141, inlinedAt: !5145)
!5331 = !DILocation(line: 379, column: 33, scope: !5328, inlinedAt: !5145)
!5332 = !DILocation(line: 380, column: 6, scope: !5333, inlinedAt: !5145)
!5333 = distinct !DILexicalBlock(scope: !5141, file: !127, line: 380, column: 6)
!5334 = !DILocation(line: 380, column: 11, scope: !5333, inlinedAt: !5145)
!5335 = !DILocation(line: 380, column: 6, scope: !5141, inlinedAt: !5145)
!5336 = !DILocation(line: 380, column: 33, scope: !5333, inlinedAt: !5145)
!5337 = !DILocation(line: 381, column: 6, scope: !5338, inlinedAt: !5145)
!5338 = distinct !DILexicalBlock(scope: !5141, file: !127, line: 381, column: 6)
!5339 = !DILocation(line: 381, column: 11, scope: !5338, inlinedAt: !5145)
!5340 = !DILocation(line: 381, column: 6, scope: !5141, inlinedAt: !5145)
!5341 = !DILocation(line: 381, column: 33, scope: !5338, inlinedAt: !5145)
!5342 = !DILocation(line: 382, column: 2, scope: !5343, inlinedAt: !5145)
!5343 = distinct !DILexicalBlock(scope: !5344, file: !127, line: 382, column: 2)
!5344 = distinct !DILexicalBlock(scope: !5141, file: !127, line: 382, column: 2)
!5345 = !{i32 -2144229767, i32 -2144229738, i32 -2144229692, i32 -2144229634, i32 -2144229580, i32 -2144229526, i32 -2144229471, i32 -2144229440}
!5346 = !DILocation(line: 382, column: 2, scope: !5347, inlinedAt: !5145)
!5347 = distinct !DILexicalBlock(scope: !5348, file: !127, line: 382, column: 2)
!5348 = distinct !DILexicalBlock(scope: !5344, file: !127, line: 382, column: 2)
!5349 = !{i32 -2144228997, i32 -2144228990, i32 -2144228936, i32 -2144228905, i32 -2144228875}
!5350 = !DILocation(line: 382, column: 2, scope: !5348, inlinedAt: !5145)
!5351 = !DILocation(line: 386, column: 1, scope: !5141, inlinedAt: !5145)
!5352 = !DILocation(line: 547, column: 9, scope: !5124, inlinedAt: !5127)
!5353 = !DILocation(line: 549, column: 8, scope: !5354, inlinedAt: !5127)
!5354 = distinct !DILexicalBlock(scope: !5124, file: !127, line: 549, column: 7)
!5355 = !DILocation(line: 549, column: 7, scope: !5124, inlinedAt: !5127)
!5356 = !DILocation(line: 550, column: 4, scope: !5354, inlinedAt: !5127)
!5357 = !DILocation(line: 553, column: 33, scope: !5124, inlinedAt: !5127)
!5358 = !DILocation(line: 325, column: 6, scope: !5359, inlinedAt: !5139)
!5359 = distinct !DILexicalBlock(scope: !5135, file: !127, line: 325, column: 6)
!5360 = !DILocation(line: 325, column: 6, scope: !5135, inlinedAt: !5139)
!5361 = !DILocation(line: 326, column: 3, scope: !5359, inlinedAt: !5139)
!5362 = !DILocation(line: 332, column: 9, scope: !5135, inlinedAt: !5139)
!5363 = !DILocation(line: 332, column: 15, scope: !5135, inlinedAt: !5139)
!5364 = !DILocation(line: 332, column: 2, scope: !5135, inlinedAt: !5139)
!5365 = !DILocation(line: 336, column: 1, scope: !5135, inlinedAt: !5139)
!5366 = !DILocation(line: 553, column: 5, scope: !5124, inlinedAt: !5127)
!5367 = !DILocation(line: 553, column: 41, scope: !5124, inlinedAt: !5127)
!5368 = !DILocation(line: 554, column: 5, scope: !5124, inlinedAt: !5127)
!5369 = !DILocation(line: 554, column: 12, scope: !5124, inlinedAt: !5127)
!5370 = !DILocation(line: 448, column: 31, scope: !5119, inlinedAt: !5123)
!5371 = !DILocation(line: 448, column: 34, scope: !5119, inlinedAt: !5123)
!5372 = !DILocation(line: 448, column: 14, scope: !5119, inlinedAt: !5123)
!5373 = !DILocation(line: 450, column: 22, scope: !5119, inlinedAt: !5123)
!5374 = !DILocation(line: 450, column: 25, scope: !5119, inlinedAt: !5123)
!5375 = !DILocation(line: 450, column: 30, scope: !5119, inlinedAt: !5123)
!5376 = !DILocation(line: 450, column: 36, scope: !5119, inlinedAt: !5123)
!5377 = !DILocation(line: 450, column: 8, scope: !5119, inlinedAt: !5123)
!5378 = !DILocation(line: 450, column: 6, scope: !5119, inlinedAt: !5123)
!5379 = !DILocation(line: 451, column: 9, scope: !5119, inlinedAt: !5123)
!5380 = !DILocation(line: 552, column: 3, scope: !5124, inlinedAt: !5127)
!5381 = !DILocation(line: 557, column: 19, scope: !5126, inlinedAt: !5127)
!5382 = !DILocation(line: 557, column: 25, scope: !5126, inlinedAt: !5127)
!5383 = !DILocation(line: 557, column: 9, scope: !5126, inlinedAt: !5127)
!5384 = !DILocation(line: 557, column: 2, scope: !5126, inlinedAt: !5127)
!5385 = !DILocation(line: 558, column: 1, scope: !5126, inlinedAt: !5127)
!5386 = !DILocation(line: 664, column: 2, scope: !5115)
!5387 = distinct !DISubprogram(name: "get_order", scope: !5388, file: !5388, line: 29, type: !5389, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !296)
!5388 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5389 = !DISubroutineType(types: !5390)
!5390 = !{!212, !188}
!5391 = !DILocalVariable(name: "x", arg: 1, scope: !5392, file: !5393, line: 366, type: !467)
!5392 = distinct !DISubprogram(name: "fls64", scope: !5393, file: !5393, line: 366, type: !5394, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !296)
!5393 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5394 = !DISubroutineType(types: !5395)
!5395 = !{!212, !467}
!5396 = !DILocation(line: 366, column: 40, scope: !5392, inlinedAt: !5397)
!5397 = distinct !DILocation(line: 46, column: 9, scope: !5387)
!5398 = !DILocalVariable(name: "bitpos", scope: !5392, file: !5393, line: 368, type: !212)
!5399 = !DILocation(line: 368, column: 6, scope: !5392, inlinedAt: !5397)
!5400 = !DILocalVariable(name: "size", arg: 1, scope: !5387, file: !5388, line: 29, type: !188)
!5401 = !DILocation(line: 29, column: 63, scope: !5387)
!5402 = !DILocation(line: 31, column: 27, scope: !5403)
!5403 = distinct !DILexicalBlock(scope: !5387, file: !5388, line: 31, column: 6)
!5404 = !DILocation(line: 31, column: 6, scope: !5403)
!5405 = !DILocation(line: 31, column: 6, scope: !5387)
!5406 = !DILocation(line: 32, column: 8, scope: !5407)
!5407 = distinct !DILexicalBlock(scope: !5408, file: !5388, line: 32, column: 7)
!5408 = distinct !DILexicalBlock(scope: !5403, file: !5388, line: 31, column: 34)
!5409 = !DILocation(line: 32, column: 7, scope: !5408)
!5410 = !DILocation(line: 33, column: 4, scope: !5407)
!5411 = !DILocation(line: 35, column: 7, scope: !5412)
!5412 = distinct !DILexicalBlock(scope: !5408, file: !5388, line: 35, column: 7)
!5413 = !DILocation(line: 35, column: 12, scope: !5412)
!5414 = !DILocation(line: 35, column: 7, scope: !5408)
!5415 = !DILocation(line: 36, column: 4, scope: !5412)
!5416 = !DILocation(line: 38, column: 10, scope: !5408)
!5417 = !DILocation(line: 38, column: 28, scope: !5408)
!5418 = !DILocation(line: 38, column: 41, scope: !5408)
!5419 = !DILocation(line: 38, column: 3, scope: !5408)
!5420 = !DILocation(line: 41, column: 6, scope: !5387)
!5421 = !DILocation(line: 42, column: 7, scope: !5387)
!5422 = !DILocation(line: 46, column: 15, scope: !5387)
!5423 = !DILocation(line: 374, column: 2, scope: !5392, inlinedAt: !5397)
!5424 = !DILocation(line: 376, column: 14, scope: !5392, inlinedAt: !5397)
!5425 = !{i32 314558}
!5426 = !DILocation(line: 377, column: 9, scope: !5392, inlinedAt: !5397)
!5427 = !DILocation(line: 377, column: 16, scope: !5392, inlinedAt: !5397)
!5428 = !DILocation(line: 46, column: 2, scope: !5387)
!5429 = !DILocation(line: 48, column: 1, scope: !5387)
!5430 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5431, file: !5431, line: 30, type: !5432, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !296)
!5431 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5432 = !DISubroutineType(types: !5433)
!5433 = !{!212, !466}
!5434 = !DILocation(line: 366, column: 40, scope: !5392, inlinedAt: !5435)
!5435 = distinct !DILocation(line: 32, column: 9, scope: !5430)
!5436 = !DILocation(line: 368, column: 6, scope: !5392, inlinedAt: !5435)
!5437 = !DILocalVariable(name: "n", arg: 1, scope: !5430, file: !5431, line: 30, type: !466)
!5438 = !DILocation(line: 30, column: 21, scope: !5430)
!5439 = !DILocation(line: 32, column: 15, scope: !5430)
!5440 = !DILocation(line: 374, column: 2, scope: !5392, inlinedAt: !5435)
!5441 = !DILocation(line: 376, column: 14, scope: !5392, inlinedAt: !5435)
!5442 = !DILocation(line: 377, column: 9, scope: !5392, inlinedAt: !5435)
!5443 = !DILocation(line: 377, column: 16, scope: !5392, inlinedAt: !5435)
!5444 = !DILocation(line: 32, column: 18, scope: !5430)
!5445 = !DILocation(line: 32, column: 2, scope: !5430)
!5446 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5447, file: !5447, line: 137, type: !5448, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !296)
!5447 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5448 = !DISubroutineType(types: !5449)
!5449 = !{!134, !977, !2169, !367, !143}
!5450 = !DILocalVariable(name: "s", arg: 1, scope: !5446, file: !5447, line: 137, type: !977)
!5451 = !DILocation(line: 137, column: 54, scope: !5446)
!5452 = !DILocalVariable(name: "object", arg: 2, scope: !5446, file: !5447, line: 137, type: !2169)
!5453 = !DILocation(line: 137, column: 69, scope: !5446)
!5454 = !DILocalVariable(name: "size", arg: 3, scope: !5446, file: !5447, line: 138, type: !367)
!5455 = !DILocation(line: 138, column: 12, scope: !5446)
!5456 = !DILocalVariable(name: "flags", arg: 4, scope: !5446, file: !5447, line: 138, type: !143)
!5457 = !DILocation(line: 138, column: 24, scope: !5446)
!5458 = !DILocation(line: 140, column: 17, scope: !5446)
!5459 = !DILocation(line: 140, column: 2, scope: !5446)
