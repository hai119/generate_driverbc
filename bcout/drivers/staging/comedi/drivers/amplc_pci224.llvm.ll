; ModuleID = '../bcout/drivers/staging/comedi/drivers/amplc_pci224.llvm.bc'
source_filename = "drivers/staging/comedi/drivers/amplc_pci224.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_amplc_pci224_driver_init6:\09\09\09"
module asm ".long\09amplc_pci224_driver_init - .\09\09\09"
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
%struct.pci224_board = type { i8*, i32, i32, %struct.comedi_lrange*, i16*, i8* }
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
%struct.pci224_private = type { i64, i64, %struct.spinlock, i16*, i8*, i32, i16, i16, i16, i8 }

@__UNIQUE_ID___addressable_amplc_pci224_driver_init234 = internal global i8* bitcast (i32 ()* @amplc_pci224_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@amplc_pci224_driver = internal global %struct.comedi_driver { %struct.comedi_driver* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), %struct.module* null, i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* null, void (%struct.comedi_device*)* @pci224_detach, i32 (%struct.comedi_device*, i64)* @pci224_auto_attach, i32 2, i8** getelementptr inbounds ([2 x %struct.pci224_board], [2 x %struct.pci224_board]* @pci224_boards, i32 0, i32 0, i32 0), i32 40 }, align 8, !dbg !187
@amplc_pci224_pci_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), %struct.pci_device_id* getelementptr inbounds ([3 x %struct.pci_device_id], [3 x %struct.pci_device_id]* @amplc_pci224_pci_table, i32 0, i32 0), i32 (%struct.pci_dev*, %struct.pci_device_id*)* @amplc_pci224_pci_probe, void (%struct.pci_dev*)* @comedi_pci_auto_unconfig, i32 (%struct.pci_dev*, i32)* null, i32 (%struct.pci_dev*)* null, void (%struct.pci_dev*)* null, i32 (%struct.pci_dev*, i32)* null, %struct.pci_error_handlers* null, %struct.attribute_group** null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, align 8, !dbg !4052
@__exitcall_amplc_pci224_driver_exit = internal global void ()* @amplc_pci224_driver_exit, section ".exitcall.exit", align 8, !dbg !159
@__UNIQUE_ID_author235 = internal constant [50 x i8] c"amplc_pci224.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1, !dbg !166
@__UNIQUE_ID_description236 = internal constant [80 x i8] c"amplc_pci224.description=Comedi driver for Amplicon PCI224 and PCI234 AO boards\00", section ".modinfo", align 1, !dbg !172
@__UNIQUE_ID_file237 = internal constant [62 x i8] c"amplc_pci224.file=drivers/staging/comedi/drivers/amplc_pci224\00", section ".modinfo", align 1, !dbg !177
@__UNIQUE_ID_license238 = internal constant [25 x i8] c"amplc_pci224.license=GPL\00", section ".modinfo", align 1, !dbg !182
@.str = private unnamed_addr constant [13 x i8] c"amplc_pci224\00", align 1
@pci224_boards = internal constant [2 x %struct.pci224_board] [%struct.pci224_board { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 16, i32 12, %struct.comedi_lrange* bitcast ({ i32, [10 x %struct.comedi_krange] }* @range_pci224 to %struct.comedi_lrange*), i16* getelementptr inbounds ([10 x i16], [10 x i16]* @hwrange_pci224, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @range_check_pci224, i32 0, i32 0) }, %struct.pci224_board { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 4, i32 16, %struct.comedi_lrange* bitcast ({ i32, [4 x %struct.comedi_krange] }* @range_pci234 to %struct.comedi_lrange*), i16* getelementptr inbounds ([4 x i16], [4 x i16]* @hwrange_pci234, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @range_check_pci234, i32 0, i32 0) }], align 16, !dbg !4020
@.str.1 = private unnamed_addr constant [49 x i8] c"amplc_pci224: BUG! cannot determine board type!\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"amplc_pci224: attach pci %s - %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"error! unable to allocate irq %u\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"AO buffer underrun\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"pci224\00", align 1
@hwrange_pci224 = internal constant [10 x i16] [i16 56, i16 40, i16 24, i16 8, i16 48, i16 32, i16 16, i16 0, i16 8, i16 0], align 16, !dbg !4036
@range_check_pci224 = internal constant [10 x i8] c"\00\01\02\03\04\05\06\07\08\09", align 1, !dbg !4041
@.str.7 = private unnamed_addr constant [7 x i8] c"pci234\00", align 1
@hwrange_pci234 = internal constant [4 x i16] [i16 8, i16 8, i16 8, i16 8], align 2, !dbg !4046
@range_check_pci234 = internal constant [4 x i8] c"\00\00\01\01", align 1, !dbg !4049
@range_pci224 = internal constant { i32, [10 x %struct.comedi_krange] } { i32 10, [10 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 2500000, i32 0 }, %struct.comedi_krange { i32 0, i32 1250000, i32 0 }, %struct.comedi_krange { i32 -1000000, i32 1000000, i32 256 }, %struct.comedi_krange { i32 0, i32 1000000, i32 256 }] }, align 4, !dbg !4034
@range_pci234 = internal constant { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2000000, i32 2000000, i32 256 }, %struct.comedi_krange { i32 -1000000, i32 1000000, i32 256 }] }, align 4, !dbg !4044
@amplc_pci224_pci_table = internal constant [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 5340, i32 7, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 5340, i32 8, i32 -1, i32 -1, i32 0, i32 0, i64 1 }, %struct.pci_device_id zeroinitializer], align 16, !dbg !4333
@llvm.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_amplc_pci224_driver_init234 to i8*), i8* bitcast (void ()* @amplc_pci224_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_amplc_pci224_driver_exit to i8*), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__UNIQUE_ID_author235, i32 0, i32 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @__UNIQUE_ID_description236, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__UNIQUE_ID_file237, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__UNIQUE_ID_license238, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @amplc_pci224_driver_init() #0 section ".init.text" !dbg !4342 {
entry:
  %call = call i32 @comedi_pci_driver_register(%struct.comedi_driver* @amplc_pci224_driver, %struct.pci_driver* @amplc_pci224_pci_driver) #11, !dbg !4345
  ret i32 %call, !dbg !4345
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @amplc_pci224_driver_exit() #0 section ".exit.text" !dbg !4346 {
entry:
  call void @comedi_pci_driver_unregister(%struct.comedi_driver* @amplc_pci224_driver, %struct.pci_driver* @amplc_pci224_pci_driver) #11, !dbg !4347
  ret void, !dbg !4347
}

; Function Attrs: noredzone
declare dso_local void @comedi_pci_driver_unregister(%struct.comedi_driver*, %struct.pci_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_pci_driver_register(%struct.comedi_driver*, %struct.pci_driver*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pci224_detach(%struct.comedi_device* %dev) #2 !dbg !4348 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %devpriv = alloca %struct.pci224_private*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4349, metadata !DIExpression()), !dbg !4350
  call void @llvm.dbg.declare(metadata %struct.pci224_private** %devpriv, metadata !4351, metadata !DIExpression()), !dbg !4367
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4368
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !4369
  %1 = load i8*, i8** %private, align 8, !dbg !4369
  %2 = bitcast i8* %1 to %struct.pci224_private*, !dbg !4368
  store %struct.pci224_private* %2, %struct.pci224_private** %devpriv, align 8, !dbg !4367
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4370
  call void @comedi_pci_detach(%struct.comedi_device* %3) #11, !dbg !4371
  %4 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !4372
  %tobool = icmp ne %struct.pci224_private* %4, null, !dbg !4372
  br i1 %tobool, label %if.then, label %if.end, !dbg !4374

if.then:                                          ; preds = %entry
  %5 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !4375
  %ao_scan_vals = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %5, i32 0, i32 3, !dbg !4377
  %6 = load i16*, i16** %ao_scan_vals, align 8, !dbg !4377
  %7 = bitcast i16* %6 to i8*, !dbg !4375
  call void @kfree(i8* %7) #11, !dbg !4378
  %8 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !4379
  %ao_scan_order = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %8, i32 0, i32 4, !dbg !4380
  %9 = load i8*, i8** %ao_scan_order, align 8, !dbg !4380
  call void @kfree(i8* %9) #11, !dbg !4381
  br label %if.end, !dbg !4382

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4383
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci224_auto_attach(%struct.comedi_device* %dev, i64 %context_model) #2 !dbg !4384 {
entry:
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4385, metadata !DIExpression()), !dbg !4391
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %context_model.addr = alloca i64, align 8
  %pci_dev = alloca %struct.pci_dev*, align 8
  %board = alloca %struct.pci224_board*, align 8
  %devpriv = alloca %struct.pci224_private*, align 8
  %s = alloca %struct.comedi_subdevice*, align 8
  %irq = alloca i32, align 4
  %ret = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 1
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4394, metadata !DIExpression()), !dbg !4395
  store i64 %context_model, i64* %context_model.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %context_model.addr, metadata !4396, metadata !DIExpression()), !dbg !4397
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pci_dev, metadata !4398, metadata !DIExpression()), !dbg !4399
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4400
  %call = call %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device* %0) #11, !dbg !4401
  store %struct.pci_dev* %call, %struct.pci_dev** %pci_dev, align 8, !dbg !4399
  call void @llvm.dbg.declare(metadata %struct.pci224_board** %board, metadata !4402, metadata !DIExpression()), !dbg !4404
  store %struct.pci224_board* null, %struct.pci224_board** %board, align 8, !dbg !4404
  call void @llvm.dbg.declare(metadata %struct.pci224_private** %devpriv, metadata !4405, metadata !DIExpression()), !dbg !4406
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s, metadata !4407, metadata !DIExpression()), !dbg !4408
  call void @llvm.dbg.declare(metadata i32* %irq, metadata !4409, metadata !DIExpression()), !dbg !4410
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4411, metadata !DIExpression()), !dbg !4412
  %1 = load i64, i64* %context_model.addr, align 8, !dbg !4413
  %cmp = icmp ult i64 %1, 2, !dbg !4415
  br i1 %cmp, label %if.then, label %if.end, !dbg !4416

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %context_model.addr, align 8, !dbg !4417
  %arrayidx = getelementptr [2 x %struct.pci224_board], [2 x %struct.pci224_board]* @pci224_boards, i64 0, i64 %2, !dbg !4418
  store %struct.pci224_board* %arrayidx, %struct.pci224_board** %board, align 8, !dbg !4419
  br label %if.end, !dbg !4420

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.pci224_board*, %struct.pci224_board** %board, align 8, !dbg !4421
  %tobool = icmp ne %struct.pci224_board* %3, null, !dbg !4421
  br i1 %tobool, label %lor.lhs.false, label %if.then2, !dbg !4423

lor.lhs.false:                                    ; preds = %if.end
  %4 = load %struct.pci224_board*, %struct.pci224_board** %board, align 8, !dbg !4424
  %name = getelementptr inbounds %struct.pci224_board, %struct.pci224_board* %4, i32 0, i32 0, !dbg !4425
  %5 = load i8*, i8** %name, align 8, !dbg !4425
  %tobool1 = icmp ne i8* %5, null, !dbg !4424
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !4426

if.then2:                                         ; preds = %lor.lhs.false, %if.end
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4427
  %class_dev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 4, !dbg !4427
  %7 = load %struct.device*, %struct.device** %class_dev, align 8, !dbg !4427
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %7, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0)) #12, !dbg !4427
  store i32 -22, i32* %retval, align 4, !dbg !4429
  br label %return, !dbg !4429

if.end3:                                          ; preds = %lor.lhs.false
  %8 = load %struct.pci224_board*, %struct.pci224_board** %board, align 8, !dbg !4430
  %9 = bitcast %struct.pci224_board* %8 to i8*, !dbg !4430
  %10 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4431
  %board_ptr = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 9, !dbg !4432
  store i8* %9, i8** %board_ptr, align 8, !dbg !4433
  %11 = load %struct.pci224_board*, %struct.pci224_board** %board, align 8, !dbg !4434
  %name4 = getelementptr inbounds %struct.pci224_board, %struct.pci224_board* %11, i32 0, i32 0, !dbg !4435
  %12 = load i8*, i8** %name4, align 8, !dbg !4435
  %13 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4436
  %board_name = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 8, !dbg !4437
  store i8* %12, i8** %board_name, align 8, !dbg !4438
  %14 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4439
  %class_dev5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 4, !dbg !4439
  %15 = load %struct.device*, %struct.device** %class_dev5, align 8, !dbg !4439
  %16 = load %struct.pci_dev*, %struct.pci_dev** %pci_dev, align 8, !dbg !4439
  %call6 = call i8* @pci_name(%struct.pci_dev* %16) #11, !dbg !4439
  %17 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4439
  %board_name7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 8, !dbg !4439
  %18 = load i8*, i8** %board_name7, align 8, !dbg !4439
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %15, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %call6, i8* %18) #12, !dbg !4439
  %19 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4440
  %call8 = call i8* @comedi_alloc_devpriv(%struct.comedi_device* %19, i64 48) #11, !dbg !4441
  %20 = bitcast i8* %call8 to %struct.pci224_private*, !dbg !4441
  store %struct.pci224_private* %20, %struct.pci224_private** %devpriv, align 8, !dbg !4442
  %21 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !4443
  %tobool9 = icmp ne %struct.pci224_private* %21, null, !dbg !4443
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !4445

if.then10:                                        ; preds = %if.end3
  store i32 -12, i32* %retval, align 4, !dbg !4446
  br label %return, !dbg !4446

if.end11:                                         ; preds = %if.end3
  %22 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4447
  %call12 = call i32 @comedi_pci_enable(%struct.comedi_device* %22) #11, !dbg !4448
  store i32 %call12, i32* %ret, align 4, !dbg !4449
  %23 = load i32, i32* %ret, align 4, !dbg !4450
  %tobool13 = icmp ne i32 %23, 0, !dbg !4450
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !4452

if.then14:                                        ; preds = %if.end11
  %24 = load i32, i32* %ret, align 4, !dbg !4453
  store i32 %24, i32* %retval, align 4, !dbg !4454
  br label %return, !dbg !4454

if.end15:                                         ; preds = %if.end11
  br label %do.body, !dbg !4455

do.body:                                          ; preds = %if.end15
  %25 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !4456
  %ao_spinlock = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %25, i32 0, i32 2, !dbg !4456
  store %struct.spinlock* %ao_spinlock, %struct.spinlock** %lock.addr.i, align 8
  %26 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4457
  %27 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %26, i32 0, i32 0, !dbg !4458
  %rlock.i = bitcast %union.anon.3* %27 to %struct.raw_spinlock*, !dbg !4458
  %28 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !4456
  %ao_spinlock17 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %28, i32 0, i32 2, !dbg !4456
  %29 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %.compoundliteral, i32 0, i32 0, !dbg !4456
  %rlock = bitcast %union.anon.3* %29 to %struct.raw_spinlock*, !dbg !4456
  %30 = bitcast %struct.spinlock* %ao_spinlock17 to i8*, !dbg !4456
  %31 = bitcast %struct.spinlock* %.compoundliteral to i8*, !dbg !4456
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 1 %31, i64 0, i1 false), !dbg !4456
  br label %do.end, !dbg !4456

do.end:                                           ; preds = %do.body
  %32 = load %struct.pci_dev*, %struct.pci_dev** %pci_dev, align 8, !dbg !4459
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 44, !dbg !4459
  %arrayidx18 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 2, !dbg !4459
  %start = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx18, i32 0, i32 0, !dbg !4459
  %33 = load i64, i64* %start, align 8, !dbg !4459
  %34 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !4460
  %iobase1 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %34, i32 0, i32 0, !dbg !4461
  store i64 %33, i64* %iobase1, align 8, !dbg !4462
  %35 = load %struct.pci_dev*, %struct.pci_dev** %pci_dev, align 8, !dbg !4463
  %resource19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 44, !dbg !4463
  %arrayidx20 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource19, i64 0, i64 3, !dbg !4463
  %start21 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx20, i32 0, i32 0, !dbg !4463
  %36 = load i64, i64* %start21, align 8, !dbg !4463
  %37 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4464
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %37, i32 0, i32 18, !dbg !4465
  store i64 %36, i64* %iobase, align 8, !dbg !4466
  %38 = load %struct.pci_dev*, %struct.pci_dev** %pci_dev, align 8, !dbg !4467
  %irq22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 43, !dbg !4468
  %39 = load i32, i32* %irq22, align 4, !dbg !4468
  store i32 %39, i32* %irq, align 4, !dbg !4469
  %40 = load %struct.pci224_board*, %struct.pci224_board** %board, align 8, !dbg !4470
  %ao_chans = getelementptr inbounds %struct.pci224_board, %struct.pci224_board* %40, i32 0, i32 1, !dbg !4471
  %41 = load i32, i32* %ao_chans, align 8, !dbg !4471
  %conv = zext i32 %41 to i64, !dbg !4470
  %call23 = call i8* @kmalloc_array(i64 %conv, i64 2, i32 3264) #11, !dbg !4472
  %42 = bitcast i8* %call23 to i16*, !dbg !4472
  %43 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !4473
  %ao_scan_vals = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %43, i32 0, i32 3, !dbg !4474
  store i16* %42, i16** %ao_scan_vals, align 8, !dbg !4475
  %44 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !4476
  %ao_scan_vals24 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %44, i32 0, i32 3, !dbg !4478
  %45 = load i16*, i16** %ao_scan_vals24, align 8, !dbg !4478
  %tobool25 = icmp ne i16* %45, null, !dbg !4476
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !4479

if.then26:                                        ; preds = %do.end
  store i32 -12, i32* %retval, align 4, !dbg !4480
  br label %return, !dbg !4480

if.end27:                                         ; preds = %do.end
  %46 = load %struct.pci224_board*, %struct.pci224_board** %board, align 8, !dbg !4481
  %ao_chans28 = getelementptr inbounds %struct.pci224_board, %struct.pci224_board* %46, i32 0, i32 1, !dbg !4482
  %47 = load i32, i32* %ao_chans28, align 8, !dbg !4482
  %conv29 = zext i32 %47 to i64, !dbg !4481
  %call30 = call i8* @kmalloc_array(i64 %conv29, i64 1, i32 3264) #11, !dbg !4483
  %48 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !4484
  %ao_scan_order = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %48, i32 0, i32 4, !dbg !4485
  store i8* %call30, i8** %ao_scan_order, align 8, !dbg !4486
  %49 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !4487
  %ao_scan_order31 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %49, i32 0, i32 4, !dbg !4489
  %50 = load i8*, i8** %ao_scan_order31, align 8, !dbg !4489
  %tobool32 = icmp ne i8* %50, null, !dbg !4487
  br i1 %tobool32, label %if.end34, label %if.then33, !dbg !4490

if.then33:                                        ; preds = %if.end27
  store i32 -12, i32* %retval, align 4, !dbg !4491
  br label %return, !dbg !4491

if.end34:                                         ; preds = %if.end27
  %51 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !4492
  %intsce = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %51, i32 0, i32 9, !dbg !4493
  store i8 0, i8* %intsce, align 2, !dbg !4494
  %52 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !4495
  %iobase135 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %52, i32 0, i32 0, !dbg !4496
  %53 = load i64, i64* %iobase135, align 8, !dbg !4496
  %add = add i64 %53, 30, !dbg !4497
  %conv36 = trunc i64 %add to i32, !dbg !4495
  call void @outb(i8 zeroext 0, i32 %conv36) #11, !dbg !4498
  %54 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4499
  %iobase37 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %54, i32 0, i32 18, !dbg !4500
  %55 = load i64, i64* %iobase37, align 8, !dbg !4500
  %add38 = add i64 %55, 2, !dbg !4501
  %conv39 = trunc i64 %add38 to i32, !dbg !4499
  call void @outw(i16 zeroext 8192, i32 %conv39) #11, !dbg !4502
  %56 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4503
  %iobase40 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %56, i32 0, i32 18, !dbg !4504
  %57 = load i64, i64* %iobase40, align 8, !dbg !4504
  %add41 = add i64 %57, 6, !dbg !4505
  %conv42 = trunc i64 %add41 to i32, !dbg !4503
  call void @outw(i16 zeroext 0, i32 %conv42) #11, !dbg !4506
  %58 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4507
  %iobase43 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %58, i32 0, i32 18, !dbg !4508
  %59 = load i64, i64* %iobase43, align 8, !dbg !4508
  %add44 = add i64 %59, 4, !dbg !4509
  %conv45 = trunc i64 %add44 to i32, !dbg !4507
  call void @outw(i16 zeroext 0, i32 %conv45) #11, !dbg !4510
  %60 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !4511
  %daccon = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %60, i32 0, i32 7, !dbg !4512
  store i16 265, i16* %daccon, align 2, !dbg !4513
  %61 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !4514
  %daccon46 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %61, i32 0, i32 7, !dbg !4515
  %62 = load i16, i16* %daccon46, align 2, !dbg !4515
  %conv47 = zext i16 %62 to i64, !dbg !4514
  %or = or i64 %conv47, 4096, !dbg !4516
  %conv48 = trunc i64 %or to i16, !dbg !4514
  %63 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4517
  %iobase49 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %63, i32 0, i32 18, !dbg !4518
  %64 = load i64, i64* %iobase49, align 8, !dbg !4518
  %add50 = add i64 %64, 2, !dbg !4519
  %conv51 = trunc i64 %add50 to i32, !dbg !4517
  call void @outw(i16 zeroext %conv48, i32 %conv51) #11, !dbg !4520
  %65 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !4521
  %iobase152 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %65, i32 0, i32 0, !dbg !4522
  %66 = load i64, i64* %iobase152, align 8, !dbg !4522
  %add53 = add i64 %66, 20, !dbg !4523
  %call54 = call %struct.comedi_8254* @comedi_8254_init(i64 %add53, i32 100, i32 1, i32 0) #11, !dbg !4524
  %67 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4525
  %pacer = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %67, i32 0, i32 2, !dbg !4526
  store %struct.comedi_8254* %call54, %struct.comedi_8254** %pacer, align 8, !dbg !4527
  %68 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4528
  %pacer55 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %68, i32 0, i32 2, !dbg !4530
  %69 = load %struct.comedi_8254*, %struct.comedi_8254** %pacer55, align 8, !dbg !4530
  %tobool56 = icmp ne %struct.comedi_8254* %69, null, !dbg !4528
  br i1 %tobool56, label %if.end58, label %if.then57, !dbg !4531

if.then57:                                        ; preds = %if.end34
  store i32 -12, i32* %retval, align 4, !dbg !4532
  br label %return, !dbg !4532

if.end58:                                         ; preds = %if.end34
  %70 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4533
  %call59 = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %70, i32 1) #11, !dbg !4534
  store i32 %call59, i32* %ret, align 4, !dbg !4535
  %71 = load i32, i32* %ret, align 4, !dbg !4536
  %tobool60 = icmp ne i32 %71, 0, !dbg !4536
  br i1 %tobool60, label %if.then61, label %if.end62, !dbg !4538

if.then61:                                        ; preds = %if.end58
  %72 = load i32, i32* %ret, align 4, !dbg !4539
  store i32 %72, i32* %retval, align 4, !dbg !4540
  br label %return, !dbg !4540

if.end62:                                         ; preds = %if.end58
  %73 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4541
  %subdevices = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %73, i32 0, i32 16, !dbg !4542
  %74 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices, align 8, !dbg !4542
  %arrayidx63 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %74, i64 0, !dbg !4541
  store %struct.comedi_subdevice* %arrayidx63, %struct.comedi_subdevice** %s, align 8, !dbg !4543
  %75 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4544
  %type = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %75, i32 0, i32 2, !dbg !4545
  store i32 2, i32* %type, align 4, !dbg !4546
  %76 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4547
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %76, i32 0, i32 4, !dbg !4548
  store i32 1196032, i32* %subdev_flags, align 4, !dbg !4549
  %77 = load %struct.pci224_board*, %struct.pci224_board** %board, align 8, !dbg !4550
  %ao_chans64 = getelementptr inbounds %struct.pci224_board, %struct.pci224_board* %77, i32 0, i32 1, !dbg !4551
  %78 = load i32, i32* %ao_chans64, align 8, !dbg !4551
  %79 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4552
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %79, i32 0, i32 3, !dbg !4553
  store i32 %78, i32* %n_chan, align 8, !dbg !4554
  %80 = load %struct.pci224_board*, %struct.pci224_board** %board, align 8, !dbg !4555
  %ao_bits = getelementptr inbounds %struct.pci224_board, %struct.pci224_board* %80, i32 0, i32 2, !dbg !4556
  %81 = load i32, i32* %ao_bits, align 4, !dbg !4556
  %shl = shl i32 1, %81, !dbg !4557
  %sub = sub i32 %shl, 1, !dbg !4558
  %82 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4559
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %82, i32 0, i32 13, !dbg !4560
  store i32 %sub, i32* %maxdata, align 8, !dbg !4561
  %83 = load %struct.pci224_board*, %struct.pci224_board** %board, align 8, !dbg !4562
  %ao_range = getelementptr inbounds %struct.pci224_board, %struct.pci224_board* %83, i32 0, i32 3, !dbg !4563
  %84 = load %struct.comedi_lrange*, %struct.comedi_lrange** %ao_range, align 8, !dbg !4563
  %85 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4564
  %range_table = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %85, i32 0, i32 15, !dbg !4565
  store %struct.comedi_lrange* %84, %struct.comedi_lrange** %range_table, align 8, !dbg !4566
  %86 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4567
  %insn_write = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %86, i32 0, i32 19, !dbg !4568
  %insn_write65 = bitcast {}** %insn_write to i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)**, !dbg !4568
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @pci224_ao_insn_write, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_write65, align 8, !dbg !4569
  %87 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4570
  %n_chan66 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %87, i32 0, i32 3, !dbg !4571
  %88 = load i32, i32* %n_chan66, align 8, !dbg !4571
  %89 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4572
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %89, i32 0, i32 5, !dbg !4573
  store i32 %88, i32* %len_chanlist, align 8, !dbg !4574
  %90 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4575
  %91 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4576
  %write_subdev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %91, i32 0, i32 22, !dbg !4577
  store %struct.comedi_subdevice* %90, %struct.comedi_subdevice** %write_subdev, align 8, !dbg !4578
  %92 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4579
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %92, i32 0, i32 22, !dbg !4580
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @pci224_ao_cmd, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)** %do_cmd, align 8, !dbg !4581
  %93 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4582
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %93, i32 0, i32 23, !dbg !4583
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @pci224_ao_cmdtest, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)** %do_cmdtest, align 8, !dbg !4584
  %94 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4585
  %cancel = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %94, i32 0, i32 25, !dbg !4586
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @pci224_ao_cancel, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)** %cancel, align 8, !dbg !4587
  %95 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4588
  %munge = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %95, i32 0, i32 27, !dbg !4589
  store void (%struct.comedi_device*, %struct.comedi_subdevice*, i8*, i32, i32)* @pci224_ao_munge, void (%struct.comedi_device*, %struct.comedi_subdevice*, i8*, i32, i32)** %munge, align 8, !dbg !4590
  %96 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4591
  %call67 = call i32 @comedi_alloc_subdev_readback(%struct.comedi_subdevice* %96) #11, !dbg !4592
  store i32 %call67, i32* %ret, align 4, !dbg !4593
  %97 = load i32, i32* %ret, align 4, !dbg !4594
  %tobool68 = icmp ne i32 %97, 0, !dbg !4594
  br i1 %tobool68, label %if.then69, label %if.end70, !dbg !4596

if.then69:                                        ; preds = %if.end62
  %98 = load i32, i32* %ret, align 4, !dbg !4597
  store i32 %98, i32* %retval, align 4, !dbg !4598
  br label %return, !dbg !4598

if.end70:                                         ; preds = %if.end62
  %99 = load i32, i32* %irq, align 4, !dbg !4599
  %tobool71 = icmp ne i32 %99, 0, !dbg !4599
  br i1 %tobool71, label %if.then72, label %if.end81, !dbg !4601

if.then72:                                        ; preds = %if.end70
  %100 = load i32, i32* %irq, align 4, !dbg !4602
  %101 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4604
  %board_name73 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %101, i32 0, i32 8, !dbg !4605
  %102 = load i8*, i8** %board_name73, align 8, !dbg !4605
  %103 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4606
  %104 = bitcast %struct.comedi_device* %103 to i8*, !dbg !4606
  %call74 = call i32 @request_irq(i32 %100, i32 (i32, i8*)* @pci224_interrupt, i64 128, i8* %102, i8* %104) #11, !dbg !4607
  store i32 %call74, i32* %ret, align 4, !dbg !4608
  %105 = load i32, i32* %ret, align 4, !dbg !4609
  %cmp75 = icmp slt i32 %105, 0, !dbg !4611
  br i1 %cmp75, label %if.then77, label %if.end79, !dbg !4612

if.then77:                                        ; preds = %if.then72
  %106 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4613
  %class_dev78 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %106, i32 0, i32 4, !dbg !4613
  %107 = load %struct.device*, %struct.device** %class_dev78, align 8, !dbg !4613
  %108 = load i32, i32* %irq, align 4, !dbg !4613
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %107, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %108) #12, !dbg !4613
  %109 = load i32, i32* %ret, align 4, !dbg !4615
  store i32 %109, i32* %retval, align 4, !dbg !4616
  br label %return, !dbg !4616

if.end79:                                         ; preds = %if.then72
  %110 = load i32, i32* %irq, align 4, !dbg !4617
  %111 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4618
  %irq80 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %111, i32 0, i32 20, !dbg !4619
  store i32 %110, i32* %irq80, align 8, !dbg !4620
  br label %if.end81, !dbg !4621

if.end81:                                         ; preds = %if.end79, %if.end70
  store i32 0, i32* %retval, align 4, !dbg !4622
  br label %return, !dbg !4622

return:                                           ; preds = %if.end81, %if.then77, %if.then69, %if.then61, %if.then57, %if.then33, %if.then26, %if.then14, %if.then10, %if.then2
  %112 = load i32, i32* %retval, align 4, !dbg !4623
  ret i32 %112, !dbg !4623
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noredzone
declare dso_local void @comedi_pci_detach(%struct.comedi_device*) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: noredzone
declare dso_local %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device*) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @pci_name(%struct.pci_dev* %pdev) #2 !dbg !4624 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !4629, metadata !DIExpression()), !dbg !4630
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4631
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 41, !dbg !4632
  %call = call i8* @dev_name(%struct.device* %dev) #11, !dbg !4633
  ret i8* %call, !dbg !4634
}

; Function Attrs: noredzone
declare dso_local i8* @comedi_alloc_devpriv(%struct.comedi_device*, i64) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_pci_enable(%struct.comedi_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmalloc_array(i64 %n, i64 %size, i32 %flags) #2 !dbg !4635 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4638, metadata !DIExpression()), !dbg !4642
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4651, metadata !DIExpression()), !dbg !4652
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4653, metadata !DIExpression()), !dbg !4654
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4655, metadata !DIExpression()), !dbg !4656
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4657, metadata !DIExpression()), !dbg !4661
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4663, metadata !DIExpression()), !dbg !4667
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4669, metadata !DIExpression()), !dbg !4673
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4678, metadata !DIExpression()), !dbg !4679
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4680, metadata !DIExpression()), !dbg !4681
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4682, metadata !DIExpression()), !dbg !4683
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4684, metadata !DIExpression()), !dbg !4685
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4686, metadata !DIExpression()), !dbg !4687
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4688, metadata !DIExpression()), !dbg !4689
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4690, metadata !DIExpression()), !dbg !4691
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4692, metadata !DIExpression()), !dbg !4693
  %retval = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %__a = alloca i64, align 8
  %__b = alloca i64, align 8
  %__d = alloca i64*, align 8
  %tmp = alloca i8, align 1
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4694, metadata !DIExpression()), !dbg !4695
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4696, metadata !DIExpression()), !dbg !4697
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4698, metadata !DIExpression()), !dbg !4699
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !4700, metadata !DIExpression()), !dbg !4701
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !4702, metadata !DIExpression()), !dbg !4705
  %0 = load i64, i64* %n.addr, align 8, !dbg !4705
  store i64 %0, i64* %__a, align 8, !dbg !4705
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !4706, metadata !DIExpression()), !dbg !4705
  %1 = load i64, i64* %size.addr, align 8, !dbg !4705
  store i64 %1, i64* %__b, align 8, !dbg !4705
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !4707, metadata !DIExpression()), !dbg !4705
  store i64* %bytes, i64** %__d, align 8, !dbg !4705
  %cmp = icmp eq i64* %__a, %__b, !dbg !4705
  %conv = zext i1 %cmp to i32, !dbg !4705
  %2 = load i64*, i64** %__d, align 8, !dbg !4705
  %cmp1 = icmp eq i64* %__a, %2, !dbg !4705
  %conv2 = zext i1 %cmp1 to i32, !dbg !4705
  %3 = load i64, i64* %__a, align 8, !dbg !4705
  %4 = load i64, i64* %__b, align 8, !dbg !4705
  %5 = load i64*, i64** %__d, align 8, !dbg !4705
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !4705
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4705
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !4705
  store i64 %8, i64* %5, align 8, !dbg !4705
  %frombool = zext i1 %7 to i8, !dbg !4705
  store i8 %frombool, i8* %tmp, align 1, !dbg !4705
  %9 = load i8, i8* %tmp, align 1, !dbg !4705
  %tobool = trunc i8 %9 to i1, !dbg !4705
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #11, !dbg !4709
  %lnot = xor i1 %call, true, !dbg !4709
  %lnot3 = xor i1 %lnot, true, !dbg !4709
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4709
  %conv4 = sext i32 %lnot.ext to i64, !dbg !4709
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !4709
  br i1 %tobool5, label %if.then, label %if.end, !dbg !4710

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !4711
  br label %return, !dbg !4711

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %n.addr, align 8, !dbg !4712
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !4713
  br i1 %11, label %land.lhs.true, label %if.end8, !dbg !4714

land.lhs.true:                                    ; preds = %if.end
  %12 = load i64, i64* %size.addr, align 8, !dbg !4715
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !4716
  br i1 %13, label %if.then6, label %if.end8, !dbg !4717

if.then6:                                         ; preds = %land.lhs.true
  %14 = load i64, i64* %bytes, align 8, !dbg !4718
  %15 = load i32, i32* %flags.addr, align 4, !dbg !4719
  store i64 %14, i64* %size.addr.i, align 8
  store i32 %15, i32* %flags.addr.i, align 4
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !4720
  %17 = call i1 @llvm.is.constant.i64(i64 %16) #10, !dbg !4721
  br i1 %17, label %if.then.i, label %if.end9.i, !dbg !4722

if.then.i:                                        ; preds = %if.then6
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !4723
  %cmp.i = icmp ugt i64 %18, 8192, !dbg !4724
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4725

if.then1.i:                                       ; preds = %if.then.i
  %19 = load i64, i64* %size.addr.i, align 8, !dbg !4726
  %20 = load i32, i32* %flags.addr.i, align 4, !dbg !4727
  store i64 %19, i64* %size.addr.i.i, align 8
  store i32 %20, i32* %flags.addr.i.i, align 4
  %21 = load i64, i64* %size.addr.i.i, align 8, !dbg !4728
  %call.i.i = call i32 @get_order(i64 %21) #13, !dbg !4729
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4687
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !4730
  %23 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4731
  %24 = load i32, i32* %order.i.i, align 4, !dbg !4732
  store i64 %22, i64* %size.addr.i.i.i, align 8
  store i32 %23, i32* %flags.addr.i.i.i, align 4
  store i32 %24, i32* %order.addr.i.i.i, align 4
  %25 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4733
  %26 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4734
  %27 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4735
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %25, i32 %26, i32 %27) #14, !dbg !4736
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4736
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4736
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4736
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !4736
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4737
  br label %kmalloc.exit, !dbg !4737

if.end.i:                                         ; preds = %if.then.i
  %28 = load i64, i64* %size.addr.i, align 8, !dbg !4738
  store i64 %28, i64* %size.addr.i11.i, align 8
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4739
  %tobool.i.i = icmp ne i64 %29, 0, !dbg !4739
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4741

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4742
  br label %kmalloc_index.exit.i, !dbg !4742

if.end.i.i:                                       ; preds = %if.end.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4743
  %cmp.i.i = icmp ule i64 %30, 8, !dbg !4745
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4746

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4747
  br label %kmalloc_index.exit.i, !dbg !4747

if.end2.i.i:                                      ; preds = %if.end.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4748
  %cmp3.i.i = icmp ugt i64 %31, 64, !dbg !4750
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4751

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4752
  %cmp4.i.i = icmp ule i64 %32, 96, !dbg !4753
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4754

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4755
  br label %kmalloc_index.exit.i, !dbg !4755

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4756
  %cmp7.i.i = icmp ugt i64 %33, 128, !dbg !4758
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4759

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4760
  %cmp9.i.i = icmp ule i64 %34, 192, !dbg !4761
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4762

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4763
  br label %kmalloc_index.exit.i, !dbg !4763

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4764
  %cmp12.i.i = icmp ule i64 %35, 8, !dbg !4766
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4767

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4768
  br label %kmalloc_index.exit.i, !dbg !4768

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4769
  %cmp15.i.i = icmp ule i64 %36, 16, !dbg !4771
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4772

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4773
  br label %kmalloc_index.exit.i, !dbg !4773

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4774
  %cmp18.i.i = icmp ule i64 %37, 32, !dbg !4776
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4777

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4778
  br label %kmalloc_index.exit.i, !dbg !4778

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4779
  %cmp21.i.i = icmp ule i64 %38, 64, !dbg !4781
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4782

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4783
  br label %kmalloc_index.exit.i, !dbg !4783

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4784
  %cmp24.i.i = icmp ule i64 %39, 128, !dbg !4786
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4787

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4788
  br label %kmalloc_index.exit.i, !dbg !4788

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4789
  %cmp27.i.i = icmp ule i64 %40, 256, !dbg !4791
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4792

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4793
  br label %kmalloc_index.exit.i, !dbg !4793

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4794
  %cmp30.i.i = icmp ule i64 %41, 512, !dbg !4796
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4797

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4798
  br label %kmalloc_index.exit.i, !dbg !4798

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4799
  %cmp33.i.i = icmp ule i64 %42, 1024, !dbg !4801
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4802

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4803
  br label %kmalloc_index.exit.i, !dbg !4803

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4804
  %cmp36.i.i = icmp ule i64 %43, 2048, !dbg !4806
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4807

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4808
  br label %kmalloc_index.exit.i, !dbg !4808

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4809
  %cmp39.i.i = icmp ule i64 %44, 4096, !dbg !4811
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4812

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4813
  br label %kmalloc_index.exit.i, !dbg !4813

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4814
  %cmp42.i.i = icmp ule i64 %45, 8192, !dbg !4816
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4817

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4818
  br label %kmalloc_index.exit.i, !dbg !4818

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4819
  %cmp45.i.i = icmp ule i64 %46, 16384, !dbg !4821
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4822

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4823
  br label %kmalloc_index.exit.i, !dbg !4823

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4824
  %cmp48.i.i = icmp ule i64 %47, 32768, !dbg !4826
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4827

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4828
  br label %kmalloc_index.exit.i, !dbg !4828

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4829
  %cmp51.i.i = icmp ule i64 %48, 65536, !dbg !4831
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4832

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4833
  br label %kmalloc_index.exit.i, !dbg !4833

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4834
  %cmp54.i.i = icmp ule i64 %49, 131072, !dbg !4836
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4837

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4838
  br label %kmalloc_index.exit.i, !dbg !4838

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4839
  %cmp57.i.i = icmp ule i64 %50, 262144, !dbg !4841
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4842

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4843
  br label %kmalloc_index.exit.i, !dbg !4843

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4844
  %cmp60.i.i = icmp ule i64 %51, 524288, !dbg !4846
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4847

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4848
  br label %kmalloc_index.exit.i, !dbg !4848

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4849
  %cmp63.i.i = icmp ule i64 %52, 1048576, !dbg !4851
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4852

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4853
  br label %kmalloc_index.exit.i, !dbg !4853

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4854
  %cmp66.i.i = icmp ule i64 %53, 2097152, !dbg !4856
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4857

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4858
  br label %kmalloc_index.exit.i, !dbg !4858

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4859
  %cmp69.i.i = icmp ule i64 %54, 4194304, !dbg !4861
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4862

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4863
  br label %kmalloc_index.exit.i, !dbg !4863

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4864
  %cmp72.i.i = icmp ule i64 %55, 8388608, !dbg !4866
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4867

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4868
  br label %kmalloc_index.exit.i, !dbg !4868

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4869
  %cmp75.i.i = icmp ule i64 %56, 16777216, !dbg !4871
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4872

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4873
  br label %kmalloc_index.exit.i, !dbg !4873

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4874
  %cmp78.i.i = icmp ule i64 %57, 33554432, !dbg !4876
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4877

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4878
  br label %kmalloc_index.exit.i, !dbg !4878

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4879
  %cmp81.i.i = icmp ule i64 %58, 67108864, !dbg !4881
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4882

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4883
  br label %kmalloc_index.exit.i, !dbg !4883

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !4884, !srcloc !4887
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 107) #10, !dbg !4888, !srcloc !4891
  unreachable, !dbg !4892

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %59 = load i32, i32* %retval.i.i, align 4, !dbg !4893
  store i32 %59, i32* %index.i, align 4, !dbg !4894
  %60 = load i32, i32* %index.i, align 4, !dbg !4895
  %tobool.i = icmp ne i32 %60, 0, !dbg !4895
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4897

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4898
  br label %kmalloc.exit, !dbg !4898

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %61 = load i32, i32* %flags.addr.i, align 4, !dbg !4899
  store i32 %61, i32* %flags.addr.i13.i, align 4
  %62 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4900
  %and.i.i = and i32 %62, 17, !dbg !4900
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4900
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4900
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4900
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4900
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4902

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4903
  br label %kmalloc_type.exit.i, !dbg !4903

if.end.i16.i:                                     ; preds = %if.end4.i
  %63 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4904
  %and2.i.i = and i32 %63, 1, !dbg !4905
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4904
  %64 = zext i1 %tobool3.i.i to i64, !dbg !4904
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4904
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4906
  br label %kmalloc_type.exit.i, !dbg !4906

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %65 = load i32, i32* %retval.i12.i, align 4, !dbg !4907
  %idxprom.i = zext i32 %65 to i64, !dbg !4908
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4908
  %66 = load i32, i32* %index.i, align 4, !dbg !4909
  %idxprom6.i = zext i32 %66 to i64, !dbg !4908
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4908
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4908
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !4910
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !4911
  store %struct.kmem_cache* %67, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %68, i32* %flags.addr.i17.i, align 4
  store i64 %69, i64* %size.addr.i18.i, align 8
  %70 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4912
  %71 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4913
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %70, i32 %71) #14, !dbg !4914
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4914
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4914
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4914
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !4914
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4656
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4915
  %73 = load i8*, i8** %ret.i.i, align 8, !dbg !4916
  %74 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4917
  %75 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4918
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %72, i8* %73, i64 %74, i32 %75) #14, !dbg !4919
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4920
  %76 = load i8*, i8** %ret.i.i, align 8, !dbg !4921
  store i8* %76, i8** %retval.i, align 8, !dbg !4922
  br label %kmalloc.exit, !dbg !4922

if.end9.i:                                        ; preds = %if.then6
  %77 = load i64, i64* %size.addr.i, align 8, !dbg !4923
  %78 = load i32, i32* %flags.addr.i, align 4, !dbg !4924
  %call10.i = call noalias i8* @__kmalloc(i64 %77, i32 %78) #14, !dbg !4925
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4925
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4925
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4925
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !4925
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4926
  br label %kmalloc.exit, !dbg !4926

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %79 = load i8*, i8** %retval.i, align 8, !dbg !4927
  store i8* %79, i8** %retval, align 8, !dbg !4928
  br label %return, !dbg !4928

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %80 = load i64, i64* %bytes, align 8, !dbg !4929
  %81 = load i32, i32* %flags.addr, align 4, !dbg !4930
  %call9 = call noalias i8* @__kmalloc(i64 %80, i32 %81) #11, !dbg !4931
  %ptrint = ptrtoint i8* %call9 to i64, !dbg !4931
  %maskedptr = and i64 %ptrint, 7, !dbg !4931
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !4931
  call void @llvm.assume(i1 %maskcond), !dbg !4931
  store i8* %call9, i8** %retval, align 8, !dbg !4932
  br label %return, !dbg !4932

return:                                           ; preds = %if.end8, %kmalloc.exit, %if.then
  %82 = load i8*, i8** %retval, align 8, !dbg !4933
  ret i8* %82, !dbg !4933
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outb(i8 zeroext %value, i32 %port) #2 !dbg !4934 {
entry:
  %value.addr = alloca i8, align 1
  %port.addr = alloca i32, align 4
  store i8 %value, i8* %value.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %value.addr, metadata !4938, metadata !DIExpression()), !dbg !4939
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !4940, metadata !DIExpression()), !dbg !4939
  %0 = load i8, i8* %value.addr, align 1, !dbg !4939
  %1 = load i32, i32* %port.addr, align 4, !dbg !4939
  call void asm sideeffect "outb ${0:b}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i8 %0, i32 %1) #10, !dbg !4939, !srcloc !4941
  ret void, !dbg !4939
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outw(i16 zeroext %value, i32 %port) #2 !dbg !4942 {
entry:
  %value.addr = alloca i16, align 2
  %port.addr = alloca i32, align 4
  store i16 %value, i16* %value.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %value.addr, metadata !4945, metadata !DIExpression()), !dbg !4946
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !4947, metadata !DIExpression()), !dbg !4946
  %0 = load i16, i16* %value.addr, align 2, !dbg !4946
  %1 = load i32, i32* %port.addr, align 4, !dbg !4946
  call void asm sideeffect "outw ${0:w}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %1) #10, !dbg !4946, !srcloc !4948
  ret void, !dbg !4946
}

; Function Attrs: noredzone
declare dso_local %struct.comedi_8254* @comedi_8254_init(i64, i32, i32, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci224_ao_insn_write(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !4949 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %chan = alloca i32, align 4
  %range = alloca i32, align 4
  %val = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4950, metadata !DIExpression()), !dbg !4951
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4952, metadata !DIExpression()), !dbg !4953
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !4954, metadata !DIExpression()), !dbg !4955
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !4956, metadata !DIExpression()), !dbg !4957
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !4958, metadata !DIExpression()), !dbg !4959
  %0 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4960
  %chanspec = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %0, i32 0, i32 4, !dbg !4960
  %1 = load i32, i32* %chanspec, align 4, !dbg !4960
  %and = and i32 %1, 65535, !dbg !4960
  store i32 %and, i32* %chan, align 4, !dbg !4959
  call void @llvm.dbg.declare(metadata i32* %range, metadata !4961, metadata !DIExpression()), !dbg !4962
  %2 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4963
  %chanspec1 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %2, i32 0, i32 4, !dbg !4963
  %3 = load i32, i32* %chanspec1, align 4, !dbg !4963
  %shr = lshr i32 %3, 16, !dbg !4963
  %and2 = and i32 %shr, 255, !dbg !4963
  store i32 %and2, i32* %range, align 4, !dbg !4962
  call void @llvm.dbg.declare(metadata i32* %val, metadata !4964, metadata !DIExpression()), !dbg !4965
  %4 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4966
  %readback = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %4, i32 0, i32 32, !dbg !4967
  %5 = load i32*, i32** %readback, align 8, !dbg !4967
  %6 = load i32, i32* %chan, align 4, !dbg !4968
  %idxprom = zext i32 %6 to i64, !dbg !4966
  %arrayidx = getelementptr i32, i32* %5, i64 %idxprom, !dbg !4966
  %7 = load i32, i32* %arrayidx, align 4, !dbg !4966
  store i32 %7, i32* %val, align 4, !dbg !4965
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4969, metadata !DIExpression()), !dbg !4970
  store i32 0, i32* %i, align 4, !dbg !4971
  br label %for.cond, !dbg !4973

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4, !dbg !4974
  %9 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4976
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %9, i32 0, i32 1, !dbg !4977
  %10 = load i32, i32* %n, align 4, !dbg !4977
  %cmp = icmp ult i32 %8, %10, !dbg !4978
  br i1 %cmp, label %for.body, label %for.end, !dbg !4979

for.body:                                         ; preds = %for.cond
  %11 = load i32*, i32** %data.addr, align 8, !dbg !4980
  %12 = load i32, i32* %i, align 4, !dbg !4982
  %idxprom3 = sext i32 %12 to i64, !dbg !4980
  %arrayidx4 = getelementptr i32, i32* %11, i64 %idxprom3, !dbg !4980
  %13 = load i32, i32* %arrayidx4, align 4, !dbg !4980
  store i32 %13, i32* %val, align 4, !dbg !4983
  %14 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4984
  %15 = load i32, i32* %chan, align 4, !dbg !4985
  %16 = load i32, i32* %range, align 4, !dbg !4986
  %17 = load i32, i32* %val, align 4, !dbg !4987
  call void @pci224_ao_set_data(%struct.comedi_device* %14, i32 %15, i32 %16, i32 %17) #11, !dbg !4988
  br label %for.inc, !dbg !4989

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !4990
  %inc = add i32 %18, 1, !dbg !4990
  store i32 %inc, i32* %i, align 4, !dbg !4990
  br label %for.cond, !dbg !4991, !llvm.loop !4992

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %val, align 4, !dbg !4994
  %20 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4995
  %readback5 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %20, i32 0, i32 32, !dbg !4996
  %21 = load i32*, i32** %readback5, align 8, !dbg !4996
  %22 = load i32, i32* %chan, align 4, !dbg !4997
  %idxprom6 = zext i32 %22 to i64, !dbg !4995
  %arrayidx7 = getelementptr i32, i32* %21, i64 %idxprom6, !dbg !4995
  store i32 %19, i32* %arrayidx7, align 4, !dbg !4998
  %23 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4999
  %n8 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %23, i32 0, i32 1, !dbg !5000
  %24 = load i32, i32* %n8, align 4, !dbg !5000
  ret i32 %24, !dbg !5001
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci224_ao_cmd(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #2 !dbg !5002 {
entry:
  %lock.addr.i85 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i85, metadata !5003, metadata !DIExpression()), !dbg !5007
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !5009, metadata !DIExpression()), !dbg !5010
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4385, metadata !DIExpression()), !dbg !5011
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %board = alloca %struct.pci224_board*, align 8
  %devpriv = alloca %struct.pci224_private*, align 8
  %cmd = alloca %struct.comedi_cmd*, align 8
  %range = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ch = alloca i32, align 4
  %rank = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy59 = alloca i64, align 8
  %__dummy260 = alloca i64, align 8
  %tmp63 = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5018, metadata !DIExpression()), !dbg !5019
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5020, metadata !DIExpression()), !dbg !5021
  call void @llvm.dbg.declare(metadata %struct.pci224_board** %board, metadata !5022, metadata !DIExpression()), !dbg !5023
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5024
  %board_ptr = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 9, !dbg !5025
  %1 = load i8*, i8** %board_ptr, align 8, !dbg !5025
  %2 = bitcast i8* %1 to %struct.pci224_board*, !dbg !5024
  store %struct.pci224_board* %2, %struct.pci224_board** %board, align 8, !dbg !5023
  call void @llvm.dbg.declare(metadata %struct.pci224_private** %devpriv, metadata !5026, metadata !DIExpression()), !dbg !5027
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5028
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %3, i32 0, i32 3, !dbg !5029
  %4 = load i8*, i8** %private, align 8, !dbg !5029
  %5 = bitcast i8* %4 to %struct.pci224_private*, !dbg !5028
  store %struct.pci224_private* %5, %struct.pci224_private** %devpriv, align 8, !dbg !5027
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd, metadata !5030, metadata !DIExpression()), !dbg !5031
  %6 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5032
  %async = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %6, i32 0, i32 7, !dbg !5033
  %7 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5033
  %cmd1 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %7, i32 0, i32 17, !dbg !5034
  store %struct.comedi_cmd* %cmd1, %struct.comedi_cmd** %cmd, align 8, !dbg !5031
  call void @llvm.dbg.declare(metadata i32* %range, metadata !5035, metadata !DIExpression()), !dbg !5036
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5037, metadata !DIExpression()), !dbg !5038
  call void @llvm.dbg.declare(metadata i32* %j, metadata !5039, metadata !DIExpression()), !dbg !5040
  call void @llvm.dbg.declare(metadata i32* %ch, metadata !5041, metadata !DIExpression()), !dbg !5042
  call void @llvm.dbg.declare(metadata i32* %rank, metadata !5043, metadata !DIExpression()), !dbg !5044
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5045, metadata !DIExpression()), !dbg !5046
  %8 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5047
  %chanlist = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %8, i32 0, i32 12, !dbg !5049
  %9 = load i32*, i32** %chanlist, align 8, !dbg !5049
  %tobool = icmp ne i32* %9, null, !dbg !5047
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5050

lor.lhs.false:                                    ; preds = %entry
  %10 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5051
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %10, i32 0, i32 13, !dbg !5052
  %11 = load i32, i32* %chanlist_len, align 8, !dbg !5052
  %cmp = icmp eq i32 %11, 0, !dbg !5053
  br i1 %cmp, label %if.then, label %if.end, !dbg !5054

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !5055
  br label %return, !dbg !5055

if.end:                                           ; preds = %lor.lhs.false
  %12 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !5056
  %ao_enab = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %12, i32 0, i32 8, !dbg !5057
  store i16 0, i16* %ao_enab, align 8, !dbg !5058
  store i32 0, i32* %i, align 4, !dbg !5059
  br label %for.cond, !dbg !5061

for.cond:                                         ; preds = %for.inc24, %if.end
  %13 = load i32, i32* %i, align 4, !dbg !5062
  %14 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5064
  %chanlist_len2 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %14, i32 0, i32 13, !dbg !5065
  %15 = load i32, i32* %chanlist_len2, align 8, !dbg !5065
  %cmp3 = icmp ult i32 %13, %15, !dbg !5066
  br i1 %cmp3, label %for.body, label %for.end26, !dbg !5067

for.body:                                         ; preds = %for.cond
  %16 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5068
  %chanlist4 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %16, i32 0, i32 12, !dbg !5068
  %17 = load i32*, i32** %chanlist4, align 8, !dbg !5068
  %18 = load i32, i32* %i, align 4, !dbg !5068
  %idxprom = zext i32 %18 to i64, !dbg !5068
  %arrayidx = getelementptr i32, i32* %17, i64 %idxprom, !dbg !5068
  %19 = load i32, i32* %arrayidx, align 4, !dbg !5068
  %and = and i32 %19, 65535, !dbg !5068
  store i32 %and, i32* %ch, align 4, !dbg !5070
  %20 = load i32, i32* %ch, align 4, !dbg !5071
  %shl = shl i32 1, %20, !dbg !5072
  %21 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !5073
  %ao_enab5 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %21, i32 0, i32 8, !dbg !5074
  %22 = load i16, i16* %ao_enab5, align 8, !dbg !5075
  %conv = zext i16 %22 to i32, !dbg !5075
  %or = or i32 %conv, %shl, !dbg !5075
  %conv6 = trunc i32 %or to i16, !dbg !5075
  store i16 %conv6, i16* %ao_enab5, align 8, !dbg !5075
  store i32 0, i32* %rank, align 4, !dbg !5076
  store i32 0, i32* %j, align 4, !dbg !5077
  br label %for.cond7, !dbg !5079

for.cond7:                                        ; preds = %for.inc, %for.body
  %23 = load i32, i32* %j, align 4, !dbg !5080
  %24 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5082
  %chanlist_len8 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %24, i32 0, i32 13, !dbg !5083
  %25 = load i32, i32* %chanlist_len8, align 8, !dbg !5083
  %cmp9 = icmp ult i32 %23, %25, !dbg !5084
  br i1 %cmp9, label %for.body11, label %for.end, !dbg !5085

for.body11:                                       ; preds = %for.cond7
  %26 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5086
  %chanlist12 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %26, i32 0, i32 12, !dbg !5086
  %27 = load i32*, i32** %chanlist12, align 8, !dbg !5086
  %28 = load i32, i32* %j, align 4, !dbg !5086
  %idxprom13 = zext i32 %28 to i64, !dbg !5086
  %arrayidx14 = getelementptr i32, i32* %27, i64 %idxprom13, !dbg !5086
  %29 = load i32, i32* %arrayidx14, align 4, !dbg !5086
  %and15 = and i32 %29, 65535, !dbg !5086
  %30 = load i32, i32* %ch, align 4, !dbg !5089
  %cmp16 = icmp ult i32 %and15, %30, !dbg !5090
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !5091

if.then18:                                        ; preds = %for.body11
  %31 = load i32, i32* %rank, align 4, !dbg !5092
  %inc = add i32 %31, 1, !dbg !5092
  store i32 %inc, i32* %rank, align 4, !dbg !5092
  br label %if.end19, !dbg !5093

if.end19:                                         ; preds = %if.then18, %for.body11
  br label %for.inc, !dbg !5094

for.inc:                                          ; preds = %if.end19
  %32 = load i32, i32* %j, align 4, !dbg !5095
  %inc20 = add i32 %32, 1, !dbg !5095
  store i32 %inc20, i32* %j, align 4, !dbg !5095
  br label %for.cond7, !dbg !5096, !llvm.loop !5097

for.end:                                          ; preds = %for.cond7
  %33 = load i32, i32* %i, align 4, !dbg !5099
  %conv21 = trunc i32 %33 to i8, !dbg !5099
  %34 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !5100
  %ao_scan_order = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %34, i32 0, i32 4, !dbg !5101
  %35 = load i8*, i8** %ao_scan_order, align 8, !dbg !5101
  %36 = load i32, i32* %rank, align 4, !dbg !5102
  %idxprom22 = zext i32 %36 to i64, !dbg !5100
  %arrayidx23 = getelementptr i8, i8* %35, i64 %idxprom22, !dbg !5100
  store i8 %conv21, i8* %arrayidx23, align 1, !dbg !5103
  br label %for.inc24, !dbg !5104

for.inc24:                                        ; preds = %for.end
  %37 = load i32, i32* %i, align 4, !dbg !5105
  %inc25 = add i32 %37, 1, !dbg !5105
  store i32 %inc25, i32* %i, align 4, !dbg !5105
  br label %for.cond, !dbg !5106, !llvm.loop !5107

for.end26:                                        ; preds = %for.cond
  %38 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !5109
  %ao_enab27 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %38, i32 0, i32 8, !dbg !5110
  %39 = load i16, i16* %ao_enab27, align 8, !dbg !5110
  %40 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5111
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %40, i32 0, i32 18, !dbg !5112
  %41 = load i64, i64* %iobase, align 8, !dbg !5112
  %add = add i64 %41, 6, !dbg !5113
  %conv28 = trunc i64 %add to i32, !dbg !5111
  call void @outw(i16 zeroext %39, i32 %conv28) #11, !dbg !5114
  %42 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5115
  %chanlist29 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %42, i32 0, i32 12, !dbg !5115
  %43 = load i32*, i32** %chanlist29, align 8, !dbg !5115
  %arrayidx30 = getelementptr i32, i32* %43, i64 0, !dbg !5115
  %44 = load i32, i32* %arrayidx30, align 4, !dbg !5115
  %shr = lshr i32 %44, 16, !dbg !5115
  %and31 = and i32 %shr, 255, !dbg !5115
  store i32 %and31, i32* %range, align 4, !dbg !5116
  %45 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !5117
  %daccon = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %45, i32 0, i32 7, !dbg !5117
  %46 = load i16, i16* %daccon, align 2, !dbg !5117
  %conv32 = zext i16 %46 to i32, !dbg !5117
  %and33 = and i32 %conv32, -3648, !dbg !5117
  %47 = load %struct.pci224_board*, %struct.pci224_board** %board, align 8, !dbg !5117
  %ao_hwrange = getelementptr inbounds %struct.pci224_board, %struct.pci224_board* %47, i32 0, i32 4, !dbg !5117
  %48 = load i16*, i16** %ao_hwrange, align 8, !dbg !5117
  %49 = load i32, i32* %range, align 4, !dbg !5117
  %idxprom34 = sext i32 %49 to i64, !dbg !5117
  %arrayidx35 = getelementptr i16, i16* %48, i64 %idxprom34, !dbg !5117
  %50 = load i16, i16* %arrayidx35, align 2, !dbg !5117
  %conv36 = zext i16 %50 to i32, !dbg !5117
  %or37 = or i32 %conv36, 1024, !dbg !5117
  %and38 = and i32 %or37, 3647, !dbg !5117
  %or39 = or i32 %and33, %and38, !dbg !5117
  %conv40 = trunc i32 %or39 to i16, !dbg !5117
  %51 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !5118
  %daccon41 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %51, i32 0, i32 7, !dbg !5119
  store i16 %conv40, i16* %daccon41, align 2, !dbg !5120
  %52 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !5121
  %daccon42 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %52, i32 0, i32 7, !dbg !5122
  %53 = load i16, i16* %daccon42, align 2, !dbg !5122
  %conv43 = zext i16 %53 to i64, !dbg !5121
  %or44 = or i64 %conv43, 4096, !dbg !5123
  %conv45 = trunc i64 %or44 to i16, !dbg !5121
  %54 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5124
  %iobase46 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %54, i32 0, i32 18, !dbg !5125
  %55 = load i64, i64* %iobase46, align 8, !dbg !5125
  %add47 = add i64 %55, 2, !dbg !5126
  %conv48 = trunc i64 %add47 to i32, !dbg !5124
  call void @outw(i16 zeroext %conv45, i32 %conv48) #11, !dbg !5127
  %56 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5128
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %56, i32 0, i32 4, !dbg !5130
  %57 = load i32, i32* %scan_begin_src, align 8, !dbg !5130
  %cmp49 = icmp eq i32 %57, 16, !dbg !5131
  br i1 %cmp49, label %if.then51, label %if.end52, !dbg !5132

if.then51:                                        ; preds = %for.end26
  %58 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5133
  %pacer = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %58, i32 0, i32 2, !dbg !5135
  %59 = load %struct.comedi_8254*, %struct.comedi_8254** %pacer, align 8, !dbg !5135
  call void @comedi_8254_update_divisors(%struct.comedi_8254* %59) #11, !dbg !5136
  %60 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5137
  %61 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5138
  call void @pci224_ao_start_pacer(%struct.comedi_device* %60, %struct.comedi_subdevice* %61) #11, !dbg !5139
  br label %if.end52, !dbg !5140

if.end52:                                         ; preds = %if.then51, %for.end26
  br label %do.body, !dbg !5141

do.body:                                          ; preds = %if.end52
  br label %do.body53, !dbg !5142

do.body53:                                        ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5143, metadata !DIExpression()), !dbg !5145
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5146, metadata !DIExpression()), !dbg !5145
  %cmp54 = icmp eq i64* %__dummy, %__dummy2, !dbg !5145
  %conv55 = zext i1 %cmp54 to i32, !dbg !5145
  store i32 1, i32* %tmp, align 4, !dbg !5145
  %62 = load i32, i32* %tmp, align 4, !dbg !5145
  br label %do.body56, !dbg !5147

do.body56:                                        ; preds = %do.body53
  br label %do.body57, !dbg !5148

do.body57:                                        ; preds = %do.body56
  br label %do.body58, !dbg !5149

do.body58:                                        ; preds = %do.body57
  call void @llvm.dbg.declare(metadata i64* %__dummy59, metadata !5151, metadata !DIExpression()), !dbg !5154
  call void @llvm.dbg.declare(metadata i64* %__dummy260, metadata !5155, metadata !DIExpression()), !dbg !5154
  %cmp61 = icmp eq i64* %__dummy59, %__dummy260, !dbg !5154
  %conv62 = zext i1 %cmp61 to i32, !dbg !5154
  store i32 1, i32* %tmp63, align 4, !dbg !5154
  %63 = load i32, i32* %tmp63, align 4, !dbg !5154
  %call = call i64 @arch_local_irq_save() #11, !dbg !5156
  store i64 %call, i64* %flags, align 8, !dbg !5156
  br label %do.end, !dbg !5156

do.end:                                           ; preds = %do.body58
  br label %do.end64, !dbg !5149

do.end64:                                         ; preds = %do.end
  br label %do.body65, !dbg !5148

do.body65:                                        ; preds = %do.end64
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !5157, !srcloc !5158
  br label %do.body66, !dbg !5157

do.body66:                                        ; preds = %do.body65
  %64 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !5159
  %ao_spinlock = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %64, i32 0, i32 2, !dbg !5159
  store %struct.spinlock* %ao_spinlock, %struct.spinlock** %lock.addr.i, align 8
  %65 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5160
  %66 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %65, i32 0, i32 0, !dbg !5161
  %rlock.i = bitcast %union.anon.3* %66 to %struct.raw_spinlock*, !dbg !5161
  br label %do.end68, !dbg !5159

do.end68:                                         ; preds = %do.body66
  br label %do.end69, !dbg !5157

do.end69:                                         ; preds = %do.end68
  br label %do.end70, !dbg !5148

do.end70:                                         ; preds = %do.end69
  br label %do.end71, !dbg !5147

do.end71:                                         ; preds = %do.end70
  br label %do.end72, !dbg !5142

do.end72:                                         ; preds = %do.end71
  %67 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5162
  %start_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %67, i32 0, i32 2, !dbg !5164
  %68 = load i32, i32* %start_src, align 8, !dbg !5164
  %cmp73 = icmp eq i32 %68, 128, !dbg !5165
  br i1 %cmp73, label %if.then75, label %if.else, !dbg !5166

if.then75:                                        ; preds = %do.end72
  %69 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5167
  %async76 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %69, i32 0, i32 7, !dbg !5169
  %70 = load %struct.comedi_async*, %struct.comedi_async** %async76, align 8, !dbg !5169
  %inttrig = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %70, i32 0, i32 20, !dbg !5170
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* @pci224_ao_inttrig_start, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)** %inttrig, align 8, !dbg !5171
  br label %if.end83, !dbg !5172

if.else:                                          ; preds = %do.end72
  %71 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !5173
  %intsce = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %71, i32 0, i32 9, !dbg !5175
  %72 = load i8, i8* %intsce, align 2, !dbg !5176
  %conv77 = zext i8 %72 to i32, !dbg !5176
  %or78 = or i32 %conv77, 1, !dbg !5176
  %conv79 = trunc i32 %or78 to i8, !dbg !5176
  store i8 %conv79, i8* %intsce, align 2, !dbg !5176
  %73 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !5177
  %intsce80 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %73, i32 0, i32 9, !dbg !5178
  %74 = load i8, i8* %intsce80, align 2, !dbg !5178
  %75 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !5179
  %iobase1 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %75, i32 0, i32 0, !dbg !5180
  %76 = load i64, i64* %iobase1, align 8, !dbg !5180
  %add81 = add i64 %76, 30, !dbg !5181
  %conv82 = trunc i64 %add81 to i32, !dbg !5179
  call void @outb(i8 zeroext %74, i32 %conv82) #11, !dbg !5182
  br label %if.end83

if.end83:                                         ; preds = %if.else, %if.then75
  %77 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !5183
  %ao_spinlock84 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %77, i32 0, i32 2, !dbg !5184
  %78 = load i64, i64* %flags, align 8, !dbg !5185
  store %struct.spinlock* %ao_spinlock84, %struct.spinlock** %lock.addr.i85, align 8
  store i64 %78, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !294, metadata !5186, metadata !DIExpression()) #10, !dbg !5189
  call void @llvm.dbg.declare(metadata !294, metadata !5190, metadata !DIExpression()) #10, !dbg !5189
  store i32 1, i32* %tmp.i, align 4, !dbg !5189
  %79 = load i32, i32* %tmp.i, align 4, !dbg !5189
  call void @llvm.dbg.declare(metadata !294, metadata !5191, metadata !DIExpression()) #10, !dbg !5196
  call void @llvm.dbg.declare(metadata !294, metadata !5197, metadata !DIExpression()) #10, !dbg !5196
  store i32 1, i32* %tmp8.i, align 4, !dbg !5196
  %80 = load i32, i32* %tmp8.i, align 4, !dbg !5196
  %81 = load i64, i64* %flags.addr.i, align 8, !dbg !5198
  call void @arch_local_irq_restore(i64 %81) #14, !dbg !5198
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !5199, !srcloc !5201
  %82 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i85, align 8, !dbg !5202
  %83 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %82, i32 0, i32 0, !dbg !5202
  %rlock.i86 = bitcast %union.anon.3* %83 to %struct.raw_spinlock*, !dbg !5202
  store i32 0, i32* %retval, align 4, !dbg !5204
  br label %return, !dbg !5204

return:                                           ; preds = %if.end83, %if.then
  %84 = load i32, i32* %retval, align 4, !dbg !5205
  ret i32 %84, !dbg !5205
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci224_ao_cmdtest(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_cmd* %cmd) #2 !dbg !5206 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %cmd.addr = alloca %struct.comedi_cmd*, align 8
  %err = alloca i32, align 4
  %arg = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5207, metadata !DIExpression()), !dbg !5208
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5209, metadata !DIExpression()), !dbg !5210
  store %struct.comedi_cmd* %cmd, %struct.comedi_cmd** %cmd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd.addr, metadata !5211, metadata !DIExpression()), !dbg !5212
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5213, metadata !DIExpression()), !dbg !5214
  store i32 0, i32* %err, align 4, !dbg !5214
  call void @llvm.dbg.declare(metadata i32* %arg, metadata !5215, metadata !DIExpression()), !dbg !5216
  %0 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5217
  %start_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %0, i32 0, i32 2, !dbg !5218
  %call = call i32 @comedi_check_trigger_src(i32* %start_src, i32 192) #11, !dbg !5219
  %1 = load i32, i32* %err, align 4, !dbg !5220
  %or = or i32 %1, %call, !dbg !5220
  store i32 %or, i32* %err, align 4, !dbg !5220
  %2 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5221
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %2, i32 0, i32 4, !dbg !5222
  %call1 = call i32 @comedi_check_trigger_src(i32* %scan_begin_src, i32 80) #11, !dbg !5223
  %3 = load i32, i32* %err, align 4, !dbg !5224
  %or2 = or i32 %3, %call1, !dbg !5224
  store i32 %or2, i32* %err, align 4, !dbg !5224
  %4 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5225
  %convert_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %4, i32 0, i32 6, !dbg !5226
  %call3 = call i32 @comedi_check_trigger_src(i32* %convert_src, i32 2) #11, !dbg !5227
  %5 = load i32, i32* %err, align 4, !dbg !5228
  %or4 = or i32 %5, %call3, !dbg !5228
  store i32 %or4, i32* %err, align 4, !dbg !5228
  %6 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5229
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %6, i32 0, i32 8, !dbg !5230
  %call5 = call i32 @comedi_check_trigger_src(i32* %scan_end_src, i32 32) #11, !dbg !5231
  %7 = load i32, i32* %err, align 4, !dbg !5232
  %or6 = or i32 %7, %call5, !dbg !5232
  store i32 %or6, i32* %err, align 4, !dbg !5232
  %8 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5233
  %stop_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %8, i32 0, i32 10, !dbg !5234
  %call7 = call i32 @comedi_check_trigger_src(i32* %stop_src, i32 97) #11, !dbg !5235
  %9 = load i32, i32* %err, align 4, !dbg !5236
  %or8 = or i32 %9, %call7, !dbg !5236
  store i32 %or8, i32* %err, align 4, !dbg !5236
  %10 = load i32, i32* %err, align 4, !dbg !5237
  %tobool = icmp ne i32 %10, 0, !dbg !5237
  br i1 %tobool, label %if.then, label %if.end, !dbg !5239

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !5240
  br label %return, !dbg !5240

if.end:                                           ; preds = %entry
  %11 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5241
  %start_src9 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %11, i32 0, i32 2, !dbg !5242
  %12 = load i32, i32* %start_src9, align 8, !dbg !5242
  %call10 = call i32 @comedi_check_trigger_is_unique(i32 %12) #11, !dbg !5243
  %13 = load i32, i32* %err, align 4, !dbg !5244
  %or11 = or i32 %13, %call10, !dbg !5244
  store i32 %or11, i32* %err, align 4, !dbg !5244
  %14 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5245
  %scan_begin_src12 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %14, i32 0, i32 4, !dbg !5246
  %15 = load i32, i32* %scan_begin_src12, align 8, !dbg !5246
  %call13 = call i32 @comedi_check_trigger_is_unique(i32 %15) #11, !dbg !5247
  %16 = load i32, i32* %err, align 4, !dbg !5248
  %or14 = or i32 %16, %call13, !dbg !5248
  store i32 %or14, i32* %err, align 4, !dbg !5248
  %17 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5249
  %stop_src15 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %17, i32 0, i32 10, !dbg !5250
  %18 = load i32, i32* %stop_src15, align 8, !dbg !5250
  %call16 = call i32 @comedi_check_trigger_is_unique(i32 %18) #11, !dbg !5251
  %19 = load i32, i32* %err, align 4, !dbg !5252
  %or17 = or i32 %19, %call16, !dbg !5252
  store i32 %or17, i32* %err, align 4, !dbg !5252
  store i32 0, i32* %arg, align 4, !dbg !5253
  %20 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5254
  %start_src18 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %20, i32 0, i32 2, !dbg !5256
  %21 = load i32, i32* %start_src18, align 8, !dbg !5256
  %and = and i32 %21, 64, !dbg !5257
  %tobool19 = icmp ne i32 %and, 0, !dbg !5257
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !5258

if.then20:                                        ; preds = %if.end
  %22 = load i32, i32* %arg, align 4, !dbg !5259
  %inc = add i32 %22, 1, !dbg !5259
  store i32 %inc, i32* %arg, align 4, !dbg !5259
  br label %if.end21, !dbg !5260

if.end21:                                         ; preds = %if.then20, %if.end
  %23 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5261
  %scan_begin_src22 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %23, i32 0, i32 4, !dbg !5263
  %24 = load i32, i32* %scan_begin_src22, align 8, !dbg !5263
  %and23 = and i32 %24, 64, !dbg !5264
  %tobool24 = icmp ne i32 %and23, 0, !dbg !5264
  br i1 %tobool24, label %if.then25, label %if.end27, !dbg !5265

if.then25:                                        ; preds = %if.end21
  %25 = load i32, i32* %arg, align 4, !dbg !5266
  %inc26 = add i32 %25, 1, !dbg !5266
  store i32 %inc26, i32* %arg, align 4, !dbg !5266
  br label %if.end27, !dbg !5267

if.end27:                                         ; preds = %if.then25, %if.end21
  %26 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5268
  %stop_src28 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %26, i32 0, i32 10, !dbg !5270
  %27 = load i32, i32* %stop_src28, align 8, !dbg !5270
  %and29 = and i32 %27, 64, !dbg !5271
  %tobool30 = icmp ne i32 %and29, 0, !dbg !5271
  br i1 %tobool30, label %if.then31, label %if.end33, !dbg !5272

if.then31:                                        ; preds = %if.end27
  %28 = load i32, i32* %arg, align 4, !dbg !5273
  %inc32 = add i32 %28, 1, !dbg !5273
  store i32 %inc32, i32* %arg, align 4, !dbg !5273
  br label %if.end33, !dbg !5274

if.end33:                                         ; preds = %if.then31, %if.end27
  %29 = load i32, i32* %arg, align 4, !dbg !5275
  %cmp = icmp ugt i32 %29, 1, !dbg !5277
  br i1 %cmp, label %if.then34, label %if.end36, !dbg !5278

if.then34:                                        ; preds = %if.end33
  %30 = load i32, i32* %err, align 4, !dbg !5279
  %or35 = or i32 %30, -22, !dbg !5279
  store i32 %or35, i32* %err, align 4, !dbg !5279
  br label %if.end36, !dbg !5280

if.end36:                                         ; preds = %if.then34, %if.end33
  %31 = load i32, i32* %err, align 4, !dbg !5281
  %tobool37 = icmp ne i32 %31, 0, !dbg !5281
  br i1 %tobool37, label %if.then38, label %if.end39, !dbg !5283

if.then38:                                        ; preds = %if.end36
  store i32 2, i32* %retval, align 4, !dbg !5284
  br label %return, !dbg !5284

if.end39:                                         ; preds = %if.end36
  %32 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5285
  %start_src40 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %32, i32 0, i32 2, !dbg !5286
  %33 = load i32, i32* %start_src40, align 8, !dbg !5286
  switch i32 %33, label %sw.epilog [
    i32 128, label %sw.bb
    i32 64, label %sw.bb43
  ], !dbg !5287

sw.bb:                                            ; preds = %if.end39
  %34 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5288
  %start_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %34, i32 0, i32 3, !dbg !5290
  %call41 = call i32 @comedi_check_trigger_arg_is(i32* %start_arg, i32 0) #11, !dbg !5291
  %35 = load i32, i32* %err, align 4, !dbg !5292
  %or42 = or i32 %35, %call41, !dbg !5292
  store i32 %or42, i32* %err, align 4, !dbg !5292
  br label %sw.epilog, !dbg !5293

sw.bb43:                                          ; preds = %if.end39
  %36 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5294
  %start_arg44 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %36, i32 0, i32 3, !dbg !5296
  %37 = load i32, i32* %start_arg44, align 4, !dbg !5296
  %and45 = and i32 %37, 67108863, !dbg !5297
  %tobool46 = icmp ne i32 %and45, 0, !dbg !5297
  br i1 %tobool46, label %if.then47, label %if.end52, !dbg !5298

if.then47:                                        ; preds = %sw.bb43
  %38 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5299
  %start_arg48 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %38, i32 0, i32 3, !dbg !5299
  %39 = load i32, i32* %start_arg48, align 4, !dbg !5299
  %and49 = and i32 %39, -67108864, !dbg !5299
  %40 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5301
  %start_arg50 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %40, i32 0, i32 3, !dbg !5302
  store i32 %and49, i32* %start_arg50, align 4, !dbg !5303
  %41 = load i32, i32* %err, align 4, !dbg !5304
  %or51 = or i32 %41, -22, !dbg !5304
  store i32 %or51, i32* %err, align 4, !dbg !5304
  br label %if.end52, !dbg !5305

if.end52:                                         ; preds = %if.then47, %sw.bb43
  %42 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5306
  %start_arg53 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %42, i32 0, i32 3, !dbg !5308
  %43 = load i32, i32* %start_arg53, align 4, !dbg !5308
  %and54 = and i32 %43, -67108864, !dbg !5309
  %and55 = and i32 %and54, -1073741825, !dbg !5310
  %tobool56 = icmp ne i32 %and55, 0, !dbg !5310
  br i1 %tobool56, label %if.then57, label %if.end62, !dbg !5311

if.then57:                                        ; preds = %if.end52
  %44 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5312
  %start_arg58 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %44, i32 0, i32 3, !dbg !5312
  %45 = load i32, i32* %start_arg58, align 4, !dbg !5312
  %and59 = and i32 %45, 1140850687, !dbg !5312
  %46 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5314
  %start_arg60 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %46, i32 0, i32 3, !dbg !5315
  store i32 %and59, i32* %start_arg60, align 4, !dbg !5316
  %47 = load i32, i32* %err, align 4, !dbg !5317
  %or61 = or i32 %47, -22, !dbg !5317
  store i32 %or61, i32* %err, align 4, !dbg !5317
  br label %if.end62, !dbg !5318

if.end62:                                         ; preds = %if.then57, %if.end52
  br label %sw.epilog, !dbg !5319

sw.epilog:                                        ; preds = %if.end39, %if.end62, %sw.bb
  %48 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5320
  %scan_begin_src63 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %48, i32 0, i32 4, !dbg !5321
  %49 = load i32, i32* %scan_begin_src63, align 8, !dbg !5321
  switch i32 %49, label %sw.epilog93 [
    i32 16, label %sw.bb64
    i32 64, label %sw.bb73
  ], !dbg !5322

sw.bb64:                                          ; preds = %sw.epilog
  %50 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5323
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %50, i32 0, i32 5, !dbg !5325
  %call65 = call i32 @comedi_check_trigger_arg_max(i32* %scan_begin_arg, i32 -1) #11, !dbg !5326
  %51 = load i32, i32* %err, align 4, !dbg !5327
  %or66 = or i32 %51, %call65, !dbg !5327
  store i32 %or66, i32* %err, align 4, !dbg !5327
  %52 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5328
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %52, i32 0, i32 13, !dbg !5329
  %53 = load i32, i32* %chanlist_len, align 8, !dbg !5329
  %mul = mul i32 %53, 625, !dbg !5330
  store i32 %mul, i32* %arg, align 4, !dbg !5331
  %54 = load i32, i32* %arg, align 4, !dbg !5332
  %cmp67 = icmp ult i32 %54, 2500, !dbg !5334
  br i1 %cmp67, label %if.then68, label %if.end69, !dbg !5335

if.then68:                                        ; preds = %sw.bb64
  store i32 2500, i32* %arg, align 4, !dbg !5336
  br label %if.end69, !dbg !5337

if.end69:                                         ; preds = %if.then68, %sw.bb64
  %55 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5338
  %scan_begin_arg70 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %55, i32 0, i32 5, !dbg !5339
  %56 = load i32, i32* %arg, align 4, !dbg !5340
  %call71 = call i32 @comedi_check_trigger_arg_min(i32* %scan_begin_arg70, i32 %56) #11, !dbg !5341
  %57 = load i32, i32* %err, align 4, !dbg !5342
  %or72 = or i32 %57, %call71, !dbg !5342
  store i32 %or72, i32* %err, align 4, !dbg !5342
  br label %sw.epilog93, !dbg !5343

sw.bb73:                                          ; preds = %sw.epilog
  %58 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5344
  %scan_begin_arg74 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %58, i32 0, i32 5, !dbg !5346
  %59 = load i32, i32* %scan_begin_arg74, align 4, !dbg !5346
  %and75 = and i32 %59, 67108863, !dbg !5347
  %tobool76 = icmp ne i32 %and75, 0, !dbg !5347
  br i1 %tobool76, label %if.then77, label %if.end82, !dbg !5348

if.then77:                                        ; preds = %sw.bb73
  %60 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5349
  %scan_begin_arg78 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %60, i32 0, i32 5, !dbg !5349
  %61 = load i32, i32* %scan_begin_arg78, align 4, !dbg !5349
  %and79 = and i32 %61, -67108864, !dbg !5349
  %62 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5351
  %scan_begin_arg80 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %62, i32 0, i32 5, !dbg !5352
  store i32 %and79, i32* %scan_begin_arg80, align 4, !dbg !5353
  %63 = load i32, i32* %err, align 4, !dbg !5354
  %or81 = or i32 %63, -22, !dbg !5354
  store i32 %or81, i32* %err, align 4, !dbg !5354
  br label %if.end82, !dbg !5355

if.end82:                                         ; preds = %if.then77, %sw.bb73
  %64 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5356
  %scan_begin_arg83 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %64, i32 0, i32 5, !dbg !5358
  %65 = load i32, i32* %scan_begin_arg83, align 4, !dbg !5358
  %and84 = and i32 %65, -67108864, !dbg !5359
  %and85 = and i32 %and84, 1073741823, !dbg !5360
  %tobool86 = icmp ne i32 %and85, 0, !dbg !5360
  br i1 %tobool86, label %if.then87, label %if.end92, !dbg !5361

if.then87:                                        ; preds = %if.end82
  %66 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5362
  %scan_begin_arg88 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %66, i32 0, i32 5, !dbg !5362
  %67 = load i32, i32* %scan_begin_arg88, align 4, !dbg !5362
  %and89 = and i32 %67, -1006632961, !dbg !5362
  %68 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5364
  %scan_begin_arg90 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %68, i32 0, i32 5, !dbg !5365
  store i32 %and89, i32* %scan_begin_arg90, align 4, !dbg !5366
  %69 = load i32, i32* %err, align 4, !dbg !5367
  %or91 = or i32 %69, -22, !dbg !5367
  store i32 %or91, i32* %err, align 4, !dbg !5367
  br label %if.end92, !dbg !5368

if.end92:                                         ; preds = %if.then87, %if.end82
  br label %sw.epilog93, !dbg !5369

sw.epilog93:                                      ; preds = %sw.epilog, %if.end92, %if.end69
  %70 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5370
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %70, i32 0, i32 7, !dbg !5371
  %call94 = call i32 @comedi_check_trigger_arg_is(i32* %convert_arg, i32 0) #11, !dbg !5372
  %71 = load i32, i32* %err, align 4, !dbg !5373
  %or95 = or i32 %71, %call94, !dbg !5373
  store i32 %or95, i32* %err, align 4, !dbg !5373
  %72 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5374
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %72, i32 0, i32 9, !dbg !5375
  %73 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5376
  %chanlist_len96 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %73, i32 0, i32 13, !dbg !5377
  %74 = load i32, i32* %chanlist_len96, align 8, !dbg !5377
  %call97 = call i32 @comedi_check_trigger_arg_is(i32* %scan_end_arg, i32 %74) #11, !dbg !5378
  %75 = load i32, i32* %err, align 4, !dbg !5379
  %or98 = or i32 %75, %call97, !dbg !5379
  store i32 %or98, i32* %err, align 4, !dbg !5379
  %76 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5380
  %stop_src99 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %76, i32 0, i32 10, !dbg !5381
  %77 = load i32, i32* %stop_src99, align 8, !dbg !5381
  switch i32 %77, label %sw.epilog126 [
    i32 32, label %sw.bb100
    i32 64, label %sw.bb103
    i32 1, label %sw.bb122
  ], !dbg !5382

sw.bb100:                                         ; preds = %sw.epilog93
  %78 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5383
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %78, i32 0, i32 11, !dbg !5385
  %call101 = call i32 @comedi_check_trigger_arg_min(i32* %stop_arg, i32 1) #11, !dbg !5386
  %79 = load i32, i32* %err, align 4, !dbg !5387
  %or102 = or i32 %79, %call101, !dbg !5387
  store i32 %or102, i32* %err, align 4, !dbg !5387
  br label %sw.epilog126, !dbg !5388

sw.bb103:                                         ; preds = %sw.epilog93
  %80 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5389
  %stop_arg104 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %80, i32 0, i32 11, !dbg !5391
  %81 = load i32, i32* %stop_arg104, align 4, !dbg !5391
  %and105 = and i32 %81, 67108863, !dbg !5392
  %tobool106 = icmp ne i32 %and105, 0, !dbg !5392
  br i1 %tobool106, label %if.then107, label %if.end112, !dbg !5393

if.then107:                                       ; preds = %sw.bb103
  %82 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5394
  %stop_arg108 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %82, i32 0, i32 11, !dbg !5394
  %83 = load i32, i32* %stop_arg108, align 4, !dbg !5394
  %and109 = and i32 %83, -67108864, !dbg !5394
  %84 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5396
  %stop_arg110 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %84, i32 0, i32 11, !dbg !5397
  store i32 %and109, i32* %stop_arg110, align 4, !dbg !5398
  %85 = load i32, i32* %err, align 4, !dbg !5399
  %or111 = or i32 %85, -22, !dbg !5399
  store i32 %or111, i32* %err, align 4, !dbg !5399
  br label %if.end112, !dbg !5400

if.end112:                                        ; preds = %if.then107, %sw.bb103
  %86 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5401
  %stop_arg113 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %86, i32 0, i32 11, !dbg !5403
  %87 = load i32, i32* %stop_arg113, align 4, !dbg !5403
  %and114 = and i32 %87, -67108864, !dbg !5404
  %and115 = and i32 %and114, -1073741825, !dbg !5405
  %tobool116 = icmp ne i32 %and115, 0, !dbg !5405
  br i1 %tobool116, label %if.then117, label %if.end121, !dbg !5406

if.then117:                                       ; preds = %if.end112
  %88 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5407
  %stop_arg118 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %88, i32 0, i32 11, !dbg !5407
  %89 = load i32, i32* %stop_arg118, align 4, !dbg !5407
  %and119 = and i32 %89, 1140850687, !dbg !5407
  %90 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5409
  %stop_arg120 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %90, i32 0, i32 11, !dbg !5410
  store i32 %and119, i32* %stop_arg120, align 4, !dbg !5411
  br label %if.end121, !dbg !5412

if.end121:                                        ; preds = %if.then117, %if.end112
  br label %sw.epilog126, !dbg !5413

sw.bb122:                                         ; preds = %sw.epilog93
  %91 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5414
  %stop_arg123 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %91, i32 0, i32 11, !dbg !5415
  %call124 = call i32 @comedi_check_trigger_arg_is(i32* %stop_arg123, i32 0) #11, !dbg !5416
  %92 = load i32, i32* %err, align 4, !dbg !5417
  %or125 = or i32 %92, %call124, !dbg !5417
  store i32 %or125, i32* %err, align 4, !dbg !5417
  br label %sw.epilog126, !dbg !5418

sw.epilog126:                                     ; preds = %sw.epilog93, %sw.bb122, %if.end121, %sw.bb100
  %93 = load i32, i32* %err, align 4, !dbg !5419
  %tobool127 = icmp ne i32 %93, 0, !dbg !5419
  br i1 %tobool127, label %if.then128, label %if.end129, !dbg !5421

if.then128:                                       ; preds = %sw.epilog126
  store i32 3, i32* %retval, align 4, !dbg !5422
  br label %return, !dbg !5422

if.end129:                                        ; preds = %sw.epilog126
  %94 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5423
  %scan_begin_src130 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %94, i32 0, i32 4, !dbg !5425
  %95 = load i32, i32* %scan_begin_src130, align 8, !dbg !5425
  %cmp131 = icmp eq i32 %95, 16, !dbg !5426
  br i1 %cmp131, label %if.then132, label %if.end137, !dbg !5427

if.then132:                                       ; preds = %if.end129
  %96 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5428
  %scan_begin_arg133 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %96, i32 0, i32 5, !dbg !5430
  %97 = load i32, i32* %scan_begin_arg133, align 4, !dbg !5430
  store i32 %97, i32* %arg, align 4, !dbg !5431
  %98 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5432
  %pacer = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %98, i32 0, i32 2, !dbg !5433
  %99 = load %struct.comedi_8254*, %struct.comedi_8254** %pacer, align 8, !dbg !5433
  %100 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5434
  %flags = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %100, i32 0, i32 1, !dbg !5435
  %101 = load i32, i32* %flags, align 4, !dbg !5435
  call void @comedi_8254_cascade_ns_to_timer(%struct.comedi_8254* %99, i32* %arg, i32 %101) #11, !dbg !5436
  %102 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5437
  %scan_begin_arg134 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %102, i32 0, i32 5, !dbg !5438
  %103 = load i32, i32* %arg, align 4, !dbg !5439
  %call135 = call i32 @comedi_check_trigger_arg_is(i32* %scan_begin_arg134, i32 %103) #11, !dbg !5440
  %104 = load i32, i32* %err, align 4, !dbg !5441
  %or136 = or i32 %104, %call135, !dbg !5441
  store i32 %or136, i32* %err, align 4, !dbg !5441
  br label %if.end137, !dbg !5442

if.end137:                                        ; preds = %if.then132, %if.end129
  %105 = load i32, i32* %err, align 4, !dbg !5443
  %tobool138 = icmp ne i32 %105, 0, !dbg !5443
  br i1 %tobool138, label %if.then139, label %if.end140, !dbg !5445

if.then139:                                       ; preds = %if.end137
  store i32 4, i32* %retval, align 4, !dbg !5446
  br label %return, !dbg !5446

if.end140:                                        ; preds = %if.end137
  %106 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5447
  %chanlist = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %106, i32 0, i32 12, !dbg !5449
  %107 = load i32*, i32** %chanlist, align 8, !dbg !5449
  %tobool141 = icmp ne i32* %107, null, !dbg !5447
  br i1 %tobool141, label %land.lhs.true, label %if.end147, !dbg !5450

land.lhs.true:                                    ; preds = %if.end140
  %108 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5451
  %chanlist_len142 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %108, i32 0, i32 13, !dbg !5452
  %109 = load i32, i32* %chanlist_len142, align 8, !dbg !5452
  %cmp143 = icmp ugt i32 %109, 0, !dbg !5453
  br i1 %cmp143, label %if.then144, label %if.end147, !dbg !5454

if.then144:                                       ; preds = %land.lhs.true
  %110 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5455
  %111 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5456
  %112 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5457
  %call145 = call i32 @pci224_ao_check_chanlist(%struct.comedi_device* %110, %struct.comedi_subdevice* %111, %struct.comedi_cmd* %112) #11, !dbg !5458
  %113 = load i32, i32* %err, align 4, !dbg !5459
  %or146 = or i32 %113, %call145, !dbg !5459
  store i32 %or146, i32* %err, align 4, !dbg !5459
  br label %if.end147, !dbg !5460

if.end147:                                        ; preds = %if.then144, %land.lhs.true, %if.end140
  %114 = load i32, i32* %err, align 4, !dbg !5461
  %tobool148 = icmp ne i32 %114, 0, !dbg !5461
  br i1 %tobool148, label %if.then149, label %if.end150, !dbg !5463

if.then149:                                       ; preds = %if.end147
  store i32 5, i32* %retval, align 4, !dbg !5464
  br label %return, !dbg !5464

if.end150:                                        ; preds = %if.end147
  store i32 0, i32* %retval, align 4, !dbg !5465
  br label %return, !dbg !5465

return:                                           ; preds = %if.end150, %if.then149, %if.then139, %if.then128, %if.then38, %if.then
  %115 = load i32, i32* %retval, align 4, !dbg !5466
  ret i32 %115, !dbg !5466
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci224_ao_cancel(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #2 !dbg !5467 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5468, metadata !DIExpression()), !dbg !5469
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5470, metadata !DIExpression()), !dbg !5471
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5472
  %1 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5473
  call void @pci224_ao_stop(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #11, !dbg !5474
  ret i32 0, !dbg !5475
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pci224_ao_munge(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, i8* %data, i32 %num_bytes, i32 %chan_index) #2 !dbg !5476 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %data.addr = alloca i8*, align 8
  %num_bytes.addr = alloca i32, align 4
  %chan_index.addr = alloca i32, align 4
  %board = alloca %struct.pci224_board*, align 8
  %cmd = alloca %struct.comedi_cmd*, align 8
  %array = alloca i16*, align 8
  %length = alloca i32, align 4
  %offset = alloca i32, align 4
  %shift = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5477, metadata !DIExpression()), !dbg !5478
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5479, metadata !DIExpression()), !dbg !5480
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5481, metadata !DIExpression()), !dbg !5482
  store i32 %num_bytes, i32* %num_bytes.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_bytes.addr, metadata !5483, metadata !DIExpression()), !dbg !5484
  store i32 %chan_index, i32* %chan_index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan_index.addr, metadata !5485, metadata !DIExpression()), !dbg !5486
  call void @llvm.dbg.declare(metadata %struct.pci224_board** %board, metadata !5487, metadata !DIExpression()), !dbg !5488
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5489
  %board_ptr = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 9, !dbg !5490
  %1 = load i8*, i8** %board_ptr, align 8, !dbg !5490
  %2 = bitcast i8* %1 to %struct.pci224_board*, !dbg !5489
  store %struct.pci224_board* %2, %struct.pci224_board** %board, align 8, !dbg !5488
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd, metadata !5491, metadata !DIExpression()), !dbg !5492
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5493
  %async = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %3, i32 0, i32 7, !dbg !5494
  %4 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5494
  %cmd1 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %4, i32 0, i32 17, !dbg !5495
  store %struct.comedi_cmd* %cmd1, %struct.comedi_cmd** %cmd, align 8, !dbg !5492
  call void @llvm.dbg.declare(metadata i16** %array, metadata !5496, metadata !DIExpression()), !dbg !5497
  %5 = load i8*, i8** %data.addr, align 8, !dbg !5498
  %6 = bitcast i8* %5 to i16*, !dbg !5498
  store i16* %6, i16** %array, align 8, !dbg !5497
  call void @llvm.dbg.declare(metadata i32* %length, metadata !5499, metadata !DIExpression()), !dbg !5500
  %7 = load i32, i32* %num_bytes.addr, align 4, !dbg !5501
  %conv = zext i32 %7 to i64, !dbg !5501
  %div = udiv i64 %conv, 2, !dbg !5502
  %conv2 = trunc i64 %div to i32, !dbg !5501
  store i32 %conv2, i32* %length, align 4, !dbg !5500
  call void @llvm.dbg.declare(metadata i32* %offset, metadata !5503, metadata !DIExpression()), !dbg !5504
  call void @llvm.dbg.declare(metadata i32* %shift, metadata !5505, metadata !DIExpression()), !dbg !5506
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5507, metadata !DIExpression()), !dbg !5508
  %8 = load %struct.pci224_board*, %struct.pci224_board** %board, align 8, !dbg !5509
  %ao_bits = getelementptr inbounds %struct.pci224_board, %struct.pci224_board* %8, i32 0, i32 2, !dbg !5510
  %9 = load i32, i32* %ao_bits, align 4, !dbg !5510
  %sub = sub i32 16, %9, !dbg !5511
  store i32 %sub, i32* %shift, align 4, !dbg !5512
  %10 = load %struct.pci224_board*, %struct.pci224_board** %board, align 8, !dbg !5513
  %ao_hwrange = getelementptr inbounds %struct.pci224_board, %struct.pci224_board* %10, i32 0, i32 4, !dbg !5515
  %11 = load i16*, i16** %ao_hwrange, align 8, !dbg !5515
  %12 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5516
  %chanlist = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %12, i32 0, i32 12, !dbg !5516
  %13 = load i32*, i32** %chanlist, align 8, !dbg !5516
  %arrayidx = getelementptr i32, i32* %13, i64 0, !dbg !5516
  %14 = load i32, i32* %arrayidx, align 4, !dbg !5516
  %shr = lshr i32 %14, 16, !dbg !5516
  %and = and i32 %shr, 255, !dbg !5516
  %idxprom = zext i32 %and to i64, !dbg !5513
  %arrayidx3 = getelementptr i16, i16* %11, i64 %idxprom, !dbg !5513
  %15 = load i16, i16* %arrayidx3, align 2, !dbg !5513
  %conv4 = zext i16 %15 to i32, !dbg !5513
  %and5 = and i32 %conv4, 8, !dbg !5517
  %cmp = icmp eq i32 %and5, 0, !dbg !5518
  br i1 %cmp, label %if.then, label %if.else, !dbg !5519

if.then:                                          ; preds = %entry
  store i32 0, i32* %offset, align 4, !dbg !5520
  br label %if.end, !dbg !5522

if.else:                                          ; preds = %entry
  store i32 32768, i32* %offset, align 4, !dbg !5523
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %i, align 4, !dbg !5525
  br label %for.cond, !dbg !5527

for.cond:                                         ; preds = %for.inc, %if.end
  %16 = load i32, i32* %i, align 4, !dbg !5528
  %17 = load i32, i32* %length, align 4, !dbg !5530
  %cmp7 = icmp ult i32 %16, %17, !dbg !5531
  br i1 %cmp7, label %for.body, label %for.end, !dbg !5532

for.body:                                         ; preds = %for.cond
  %18 = load i16*, i16** %array, align 8, !dbg !5533
  %19 = load i32, i32* %i, align 4, !dbg !5534
  %idxprom9 = zext i32 %19 to i64, !dbg !5533
  %arrayidx10 = getelementptr i16, i16* %18, i64 %idxprom9, !dbg !5533
  %20 = load i16, i16* %arrayidx10, align 2, !dbg !5533
  %conv11 = zext i16 %20 to i32, !dbg !5533
  %21 = load i32, i32* %shift, align 4, !dbg !5535
  %shl = shl i32 %conv11, %21, !dbg !5536
  %22 = load i32, i32* %offset, align 4, !dbg !5537
  %sub12 = sub i32 %shl, %22, !dbg !5538
  %conv13 = trunc i32 %sub12 to i16, !dbg !5539
  %23 = load i16*, i16** %array, align 8, !dbg !5540
  %24 = load i32, i32* %i, align 4, !dbg !5541
  %idxprom14 = zext i32 %24 to i64, !dbg !5540
  %arrayidx15 = getelementptr i16, i16* %23, i64 %idxprom14, !dbg !5540
  store i16 %conv13, i16* %arrayidx15, align 2, !dbg !5542
  br label %for.inc, !dbg !5540

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %i, align 4, !dbg !5543
  %inc = add i32 %25, 1, !dbg !5543
  store i32 %inc, i32* %i, align 4, !dbg !5543
  br label %for.cond, !dbg !5544, !llvm.loop !5545

for.end:                                          ; preds = %for.cond
  ret void, !dbg !5547
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_alloc_subdev_readback(%struct.comedi_subdevice*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @request_irq(i32 %irq, i32 (i32, i8*)* %handler, i64 %flags, i8* %name, i8* %dev) #2 !dbg !5548 {
entry:
  %irq.addr = alloca i32, align 4
  %handler.addr = alloca i32 (i32, i8*)*, align 8
  %flags.addr = alloca i64, align 8
  %name.addr = alloca i8*, align 8
  %dev.addr = alloca i8*, align 8
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !5556, metadata !DIExpression()), !dbg !5557
  store i32 (i32, i8*)* %handler, i32 (i32, i8*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i32, i8*)** %handler.addr, metadata !5558, metadata !DIExpression()), !dbg !5559
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !5560, metadata !DIExpression()), !dbg !5561
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !5562, metadata !DIExpression()), !dbg !5563
  store i8* %dev, i8** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev.addr, metadata !5564, metadata !DIExpression()), !dbg !5565
  %0 = load i32, i32* %irq.addr, align 4, !dbg !5566
  %1 = load i32 (i32, i8*)*, i32 (i32, i8*)** %handler.addr, align 8, !dbg !5567
  %2 = load i64, i64* %flags.addr, align 8, !dbg !5568
  %3 = load i8*, i8** %name.addr, align 8, !dbg !5569
  %4 = load i8*, i8** %dev.addr, align 8, !dbg !5570
  %call = call i32 @request_threaded_irq(i32 %0, i32 (i32, i8*)* %1, i32 (i32, i8*)* null, i64 %2, i8* %3, i8* %4) #11, !dbg !5571
  ret i32 %call, !dbg !5572
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci224_interrupt(i32 %irq, i8* %d) #2 !dbg !5573 {
entry:
  %lock.addr.i111 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i111, metadata !4385, metadata !DIExpression()), !dbg !5574
  %lock.addr.i106 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i106, metadata !5003, metadata !DIExpression()), !dbg !5583
  %flags.addr.i107 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i107, metadata !5009, metadata !DIExpression()), !dbg !5585
  %tmp.i108 = alloca i32, align 4
  %tmp8.i109 = alloca i32, align 4
  %lock.addr.i104 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i104, metadata !5003, metadata !DIExpression()), !dbg !5586
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !5009, metadata !DIExpression()), !dbg !5588
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4385, metadata !DIExpression()), !dbg !5589
  %irq.addr = alloca i32, align 4
  %d.addr = alloca i8*, align 8
  %dev = alloca %struct.comedi_device*, align 8
  %devpriv = alloca %struct.pci224_private*, align 8
  %s = alloca %struct.comedi_subdevice*, align 8
  %cmd = alloca %struct.comedi_cmd*, align 8
  %intstat = alloca i8, align 1
  %valid_intstat = alloca i8, align 1
  %curenab = alloca i8, align 1
  %retval1 = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy9 = alloca i64, align 8
  %__dummy210 = alloca i64, align 8
  %tmp13 = alloca i32, align 4
  %__dummy64 = alloca i64, align 8
  %__dummy265 = alloca i64, align 8
  %tmp68 = alloca i32, align 4
  %__dummy72 = alloca i64, align 8
  %__dummy273 = alloca i64, align 8
  %tmp76 = alloca i32, align 4
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !5596, metadata !DIExpression()), !dbg !5597
  store i8* %d, i8** %d.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %d.addr, metadata !5598, metadata !DIExpression()), !dbg !5599
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev, metadata !5600, metadata !DIExpression()), !dbg !5601
  %0 = load i8*, i8** %d.addr, align 8, !dbg !5602
  %1 = bitcast i8* %0 to %struct.comedi_device*, !dbg !5602
  store %struct.comedi_device* %1, %struct.comedi_device** %dev, align 8, !dbg !5601
  call void @llvm.dbg.declare(metadata %struct.pci224_private** %devpriv, metadata !5603, metadata !DIExpression()), !dbg !5604
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5605
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %2, i32 0, i32 3, !dbg !5606
  %3 = load i8*, i8** %private, align 8, !dbg !5606
  %4 = bitcast i8* %3 to %struct.pci224_private*, !dbg !5605
  store %struct.pci224_private* %4, %struct.pci224_private** %devpriv, align 8, !dbg !5604
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s, metadata !5607, metadata !DIExpression()), !dbg !5608
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5609
  %write_subdev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 22, !dbg !5610
  %6 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %write_subdev, align 8, !dbg !5610
  store %struct.comedi_subdevice* %6, %struct.comedi_subdevice** %s, align 8, !dbg !5608
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd, metadata !5611, metadata !DIExpression()), !dbg !5612
  call void @llvm.dbg.declare(metadata i8* %intstat, metadata !5613, metadata !DIExpression()), !dbg !5614
  call void @llvm.dbg.declare(metadata i8* %valid_intstat, metadata !5615, metadata !DIExpression()), !dbg !5616
  call void @llvm.dbg.declare(metadata i8* %curenab, metadata !5617, metadata !DIExpression()), !dbg !5618
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !5619, metadata !DIExpression()), !dbg !5620
  store i32 0, i32* %retval1, align 4, !dbg !5620
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5621, metadata !DIExpression()), !dbg !5622
  %7 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !5623
  %iobase1 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %7, i32 0, i32 0, !dbg !5624
  %8 = load i64, i64* %iobase1, align 8, !dbg !5624
  %add = add i64 %8, 30, !dbg !5625
  %conv = trunc i64 %add to i32, !dbg !5623
  %call = call zeroext i8 @inb(i32 %conv) #11, !dbg !5626
  %conv2 = zext i8 %call to i32, !dbg !5626
  %and = and i32 %conv2, 63, !dbg !5627
  %conv3 = trunc i32 %and to i8, !dbg !5626
  store i8 %conv3, i8* %intstat, align 1, !dbg !5628
  %9 = load i8, i8* %intstat, align 1, !dbg !5629
  %tobool = icmp ne i8 %9, 0, !dbg !5629
  br i1 %tobool, label %if.then, label %if.end102, !dbg !5630

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval1, align 4, !dbg !5631
  br label %do.body, !dbg !5632

do.body:                                          ; preds = %if.then
  br label %do.body4, !dbg !5633

do.body4:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5634, metadata !DIExpression()), !dbg !5636
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5637, metadata !DIExpression()), !dbg !5636
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !5636
  %conv5 = zext i1 %cmp to i32, !dbg !5636
  store i32 1, i32* %tmp, align 4, !dbg !5636
  %10 = load i32, i32* %tmp, align 4, !dbg !5636
  br label %do.body6, !dbg !5638

do.body6:                                         ; preds = %do.body4
  br label %do.body7, !dbg !5639

do.body7:                                         ; preds = %do.body6
  br label %do.body8, !dbg !5640

do.body8:                                         ; preds = %do.body7
  call void @llvm.dbg.declare(metadata i64* %__dummy9, metadata !5642, metadata !DIExpression()), !dbg !5645
  call void @llvm.dbg.declare(metadata i64* %__dummy210, metadata !5646, metadata !DIExpression()), !dbg !5645
  %cmp11 = icmp eq i64* %__dummy9, %__dummy210, !dbg !5645
  %conv12 = zext i1 %cmp11 to i32, !dbg !5645
  store i32 1, i32* %tmp13, align 4, !dbg !5645
  %11 = load i32, i32* %tmp13, align 4, !dbg !5645
  %call14 = call i64 @arch_local_irq_save() #11, !dbg !5647
  store i64 %call14, i64* %flags, align 8, !dbg !5647
  br label %do.end, !dbg !5647

do.end:                                           ; preds = %do.body8
  br label %do.end15, !dbg !5640

do.end15:                                         ; preds = %do.end
  br label %do.body16, !dbg !5639

do.body16:                                        ; preds = %do.end15
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !5648, !srcloc !5649
  br label %do.body17, !dbg !5648

do.body17:                                        ; preds = %do.body16
  %12 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !5650
  %ao_spinlock = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %12, i32 0, i32 2, !dbg !5650
  store %struct.spinlock* %ao_spinlock, %struct.spinlock** %lock.addr.i, align 8
  %13 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5651
  %14 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %13, i32 0, i32 0, !dbg !5652
  %rlock.i = bitcast %union.anon.3* %14 to %struct.raw_spinlock*, !dbg !5652
  br label %do.end19, !dbg !5650

do.end19:                                         ; preds = %do.body17
  br label %do.end20, !dbg !5648

do.end20:                                         ; preds = %do.end19
  br label %do.end21, !dbg !5639

do.end21:                                         ; preds = %do.end20
  br label %do.end22, !dbg !5638

do.end22:                                         ; preds = %do.end21
  br label %do.end23, !dbg !5633

do.end23:                                         ; preds = %do.end22
  %15 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !5653
  %intsce = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %15, i32 0, i32 9, !dbg !5654
  %16 = load i8, i8* %intsce, align 2, !dbg !5654
  %conv24 = zext i8 %16 to i32, !dbg !5653
  %17 = load i8, i8* %intstat, align 1, !dbg !5655
  %conv25 = zext i8 %17 to i32, !dbg !5655
  %and26 = and i32 %conv24, %conv25, !dbg !5656
  %conv27 = trunc i32 %and26 to i8, !dbg !5653
  store i8 %conv27, i8* %valid_intstat, align 1, !dbg !5657
  %18 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !5658
  %intsce28 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %18, i32 0, i32 9, !dbg !5659
  %19 = load i8, i8* %intsce28, align 2, !dbg !5659
  %conv29 = zext i8 %19 to i32, !dbg !5658
  %20 = load i8, i8* %intstat, align 1, !dbg !5660
  %conv30 = zext i8 %20 to i32, !dbg !5660
  %neg = xor i32 %conv30, -1, !dbg !5661
  %and31 = and i32 %conv29, %neg, !dbg !5662
  %conv32 = trunc i32 %and31 to i8, !dbg !5658
  store i8 %conv32, i8* %curenab, align 1, !dbg !5663
  %21 = load i8, i8* %curenab, align 1, !dbg !5664
  %22 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !5665
  %iobase133 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %22, i32 0, i32 0, !dbg !5666
  %23 = load i64, i64* %iobase133, align 8, !dbg !5666
  %add34 = add i64 %23, 30, !dbg !5667
  %conv35 = trunc i64 %add34 to i32, !dbg !5665
  call void @outb(i8 zeroext %21, i32 %conv35) #11, !dbg !5668
  %24 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !5669
  %intr_running = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %24, i32 0, i32 6, !dbg !5670
  store i16 1, i16* %intr_running, align 4, !dbg !5671
  %25 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !5672
  %intr_cpuid = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %25, i32 0, i32 5, !dbg !5673
  store i32 0, i32* %intr_cpuid, align 8, !dbg !5674
  %26 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !5675
  %ao_spinlock36 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %26, i32 0, i32 2, !dbg !5676
  %27 = load i64, i64* %flags, align 8, !dbg !5677
  store %struct.spinlock* %ao_spinlock36, %struct.spinlock** %lock.addr.i106, align 8
  store i64 %27, i64* %flags.addr.i107, align 8
  call void @llvm.dbg.declare(metadata !294, metadata !5186, metadata !DIExpression()) #10, !dbg !5678
  call void @llvm.dbg.declare(metadata !294, metadata !5190, metadata !DIExpression()) #10, !dbg !5678
  store i32 1, i32* %tmp.i108, align 4, !dbg !5678
  %28 = load i32, i32* %tmp.i108, align 4, !dbg !5678
  call void @llvm.dbg.declare(metadata !294, metadata !5191, metadata !DIExpression()) #10, !dbg !5679
  call void @llvm.dbg.declare(metadata !294, metadata !5197, metadata !DIExpression()) #10, !dbg !5679
  store i32 1, i32* %tmp8.i109, align 4, !dbg !5679
  %29 = load i32, i32* %tmp8.i109, align 4, !dbg !5679
  %30 = load i64, i64* %flags.addr.i107, align 8, !dbg !5680
  call void @arch_local_irq_restore(i64 %30) #14, !dbg !5680
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !5681, !srcloc !5201
  %31 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i106, align 8, !dbg !5682
  %32 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %31, i32 0, i32 0, !dbg !5682
  %rlock.i110 = bitcast %union.anon.3* %32 to %struct.raw_spinlock*, !dbg !5682
  %33 = load i8, i8* %valid_intstat, align 1, !dbg !5683
  %tobool37 = icmp ne i8 %33, 0, !dbg !5683
  br i1 %tobool37, label %if.then38, label %if.end61, !dbg !5685

if.then38:                                        ; preds = %do.end23
  %34 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !5686
  %async = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %34, i32 0, i32 7, !dbg !5688
  %35 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5688
  %cmd39 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %35, i32 0, i32 17, !dbg !5689
  store %struct.comedi_cmd* %cmd39, %struct.comedi_cmd** %cmd, align 8, !dbg !5690
  %36 = load i8, i8* %valid_intstat, align 1, !dbg !5691
  %conv40 = zext i8 %36 to i32, !dbg !5691
  %and41 = and i32 %conv40, 1, !dbg !5693
  %tobool42 = icmp ne i32 %and41, 0, !dbg !5693
  br i1 %tobool42, label %if.then43, label %if.end55, !dbg !5694

if.then43:                                        ; preds = %if.then38
  %37 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !5695
  %intsce44 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %37, i32 0, i32 9, !dbg !5697
  %38 = load i8, i8* %intsce44, align 2, !dbg !5698
  %conv45 = zext i8 %38 to i32, !dbg !5698
  %and46 = and i32 %conv45, -2, !dbg !5698
  %conv47 = trunc i32 %and46 to i8, !dbg !5698
  store i8 %conv47, i8* %intsce44, align 2, !dbg !5698
  %39 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5699
  %start_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %39, i32 0, i32 2, !dbg !5701
  %40 = load i32, i32* %start_src, align 8, !dbg !5701
  %cmp48 = icmp eq i32 %40, 64, !dbg !5702
  br i1 %cmp48, label %if.then50, label %if.else, !dbg !5703

if.then50:                                        ; preds = %if.then43
  %41 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5704
  %42 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !5705
  call void @pci224_ao_start(%struct.comedi_device* %41, %struct.comedi_subdevice* %42) #11, !dbg !5706
  br label %if.end54, !dbg !5706

if.else:                                          ; preds = %if.then43
  %43 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5707
  %stop_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %43, i32 0, i32 10, !dbg !5709
  %44 = load i32, i32* %stop_src, align 8, !dbg !5709
  %cmp51 = icmp eq i32 %44, 64, !dbg !5710
  br i1 %cmp51, label %if.then53, label %if.end, !dbg !5711

if.then53:                                        ; preds = %if.else
  %45 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5712
  %46 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !5713
  call void @pci224_ao_stop(%struct.comedi_device* %45, %struct.comedi_subdevice* %46) #11, !dbg !5714
  br label %if.end, !dbg !5714

if.end:                                           ; preds = %if.then53, %if.else
  br label %if.end54

if.end54:                                         ; preds = %if.end, %if.then50
  br label %if.end55, !dbg !5715

if.end55:                                         ; preds = %if.end54, %if.then38
  %47 = load i8, i8* %valid_intstat, align 1, !dbg !5716
  %conv56 = zext i8 %47 to i32, !dbg !5716
  %and57 = and i32 %conv56, 4, !dbg !5718
  %tobool58 = icmp ne i32 %and57, 0, !dbg !5718
  br i1 %tobool58, label %if.then59, label %if.end60, !dbg !5719

if.then59:                                        ; preds = %if.end55
  %48 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5720
  %49 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !5721
  call void @pci224_ao_handle_fifo(%struct.comedi_device* %48, %struct.comedi_subdevice* %49) #11, !dbg !5722
  br label %if.end60, !dbg !5722

if.end60:                                         ; preds = %if.then59, %if.end55
  br label %if.end61, !dbg !5723

if.end61:                                         ; preds = %if.end60, %do.end23
  br label %do.body62, !dbg !5724

do.body62:                                        ; preds = %if.end61
  br label %do.body63, !dbg !5725

do.body63:                                        ; preds = %do.body62
  call void @llvm.dbg.declare(metadata i64* %__dummy64, metadata !5726, metadata !DIExpression()), !dbg !5728
  call void @llvm.dbg.declare(metadata i64* %__dummy265, metadata !5729, metadata !DIExpression()), !dbg !5728
  %cmp66 = icmp eq i64* %__dummy64, %__dummy265, !dbg !5728
  %conv67 = zext i1 %cmp66 to i32, !dbg !5728
  store i32 1, i32* %tmp68, align 4, !dbg !5728
  %50 = load i32, i32* %tmp68, align 4, !dbg !5728
  br label %do.body69, !dbg !5730

do.body69:                                        ; preds = %do.body63
  br label %do.body70, !dbg !5731

do.body70:                                        ; preds = %do.body69
  br label %do.body71, !dbg !5732

do.body71:                                        ; preds = %do.body70
  call void @llvm.dbg.declare(metadata i64* %__dummy72, metadata !5734, metadata !DIExpression()), !dbg !5737
  call void @llvm.dbg.declare(metadata i64* %__dummy273, metadata !5738, metadata !DIExpression()), !dbg !5737
  %cmp74 = icmp eq i64* %__dummy72, %__dummy273, !dbg !5737
  %conv75 = zext i1 %cmp74 to i32, !dbg !5737
  store i32 1, i32* %tmp76, align 4, !dbg !5737
  %51 = load i32, i32* %tmp76, align 4, !dbg !5737
  %call77 = call i64 @arch_local_irq_save() #11, !dbg !5739
  store i64 %call77, i64* %flags, align 8, !dbg !5739
  br label %do.end78, !dbg !5739

do.end78:                                         ; preds = %do.body71
  br label %do.end79, !dbg !5732

do.end79:                                         ; preds = %do.end78
  br label %do.body80, !dbg !5731

do.body80:                                        ; preds = %do.end79
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !5740, !srcloc !5741
  br label %do.body81, !dbg !5740

do.body81:                                        ; preds = %do.body80
  %52 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !5742
  %ao_spinlock82 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %52, i32 0, i32 2, !dbg !5742
  store %struct.spinlock* %ao_spinlock82, %struct.spinlock** %lock.addr.i111, align 8
  %53 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i111, align 8, !dbg !5743
  %54 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %53, i32 0, i32 0, !dbg !5744
  %rlock.i112 = bitcast %union.anon.3* %54 to %struct.raw_spinlock*, !dbg !5744
  br label %do.end84, !dbg !5742

do.end84:                                         ; preds = %do.body81
  br label %do.end85, !dbg !5740

do.end85:                                         ; preds = %do.end84
  br label %do.end86, !dbg !5731

do.end86:                                         ; preds = %do.end85
  br label %do.end87, !dbg !5730

do.end87:                                         ; preds = %do.end86
  br label %do.end88, !dbg !5725

do.end88:                                         ; preds = %do.end87
  %55 = load i8, i8* %curenab, align 1, !dbg !5745
  %conv89 = zext i8 %55 to i32, !dbg !5745
  %56 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !5747
  %intsce90 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %56, i32 0, i32 9, !dbg !5748
  %57 = load i8, i8* %intsce90, align 2, !dbg !5748
  %conv91 = zext i8 %57 to i32, !dbg !5747
  %cmp92 = icmp ne i32 %conv89, %conv91, !dbg !5749
  br i1 %cmp92, label %if.then94, label %if.end99, !dbg !5750

if.then94:                                        ; preds = %do.end88
  %58 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !5751
  %intsce95 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %58, i32 0, i32 9, !dbg !5753
  %59 = load i8, i8* %intsce95, align 2, !dbg !5753
  %60 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !5754
  %iobase196 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %60, i32 0, i32 0, !dbg !5755
  %61 = load i64, i64* %iobase196, align 8, !dbg !5755
  %add97 = add i64 %61, 30, !dbg !5756
  %conv98 = trunc i64 %add97 to i32, !dbg !5754
  call void @outb(i8 zeroext %59, i32 %conv98) #11, !dbg !5757
  br label %if.end99, !dbg !5758

if.end99:                                         ; preds = %if.then94, %do.end88
  %62 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !5759
  %intr_running100 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %62, i32 0, i32 6, !dbg !5760
  store i16 0, i16* %intr_running100, align 4, !dbg !5761
  %63 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !5762
  %ao_spinlock101 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %63, i32 0, i32 2, !dbg !5763
  %64 = load i64, i64* %flags, align 8, !dbg !5764
  store %struct.spinlock* %ao_spinlock101, %struct.spinlock** %lock.addr.i104, align 8
  store i64 %64, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !294, metadata !5186, metadata !DIExpression()) #10, !dbg !5765
  call void @llvm.dbg.declare(metadata !294, metadata !5190, metadata !DIExpression()) #10, !dbg !5765
  store i32 1, i32* %tmp.i, align 4, !dbg !5765
  %65 = load i32, i32* %tmp.i, align 4, !dbg !5765
  call void @llvm.dbg.declare(metadata !294, metadata !5191, metadata !DIExpression()) #10, !dbg !5766
  call void @llvm.dbg.declare(metadata !294, metadata !5197, metadata !DIExpression()) #10, !dbg !5766
  store i32 1, i32* %tmp8.i, align 4, !dbg !5766
  %66 = load i32, i32* %tmp8.i, align 4, !dbg !5766
  %67 = load i64, i64* %flags.addr.i, align 8, !dbg !5767
  call void @arch_local_irq_restore(i64 %67) #14, !dbg !5767
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !5768, !srcloc !5201
  %68 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i104, align 8, !dbg !5769
  %69 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %68, i32 0, i32 0, !dbg !5769
  %rlock.i105 = bitcast %union.anon.3* %69 to %struct.raw_spinlock*, !dbg !5769
  br label %if.end102, !dbg !5770

if.end102:                                        ; preds = %if.end99, %entry
  %70 = load i32, i32* %retval1, align 4, !dbg !5771
  %tobool103 = icmp ne i32 %70, 0, !dbg !5771
  %71 = zext i1 %tobool103 to i64, !dbg !5771
  %cond = select i1 %tobool103, i32 1, i32 0, !dbg !5771
  ret i32 %cond, !dbg !5772
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #2 !dbg !5773 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5776, metadata !DIExpression()), !dbg !5777
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5778
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !5780
  %1 = load i8*, i8** %init_name, align 8, !dbg !5780
  %tobool = icmp ne i8* %1, null, !dbg !5778
  br i1 %tobool, label %if.then, label %if.end, !dbg !5781

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5782
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !5783
  %3 = load i8*, i8** %init_name1, align 8, !dbg !5783
  store i8* %3, i8** %retval, align 8, !dbg !5784
  br label %return, !dbg !5784

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5785
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !5786
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #11, !dbg !5787
  store i8* %call, i8** %retval, align 8, !dbg !5788
  br label %return, !dbg !5788

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !5789
  ret i8* %5, !dbg !5789
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #2 !dbg !5790 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !5795, metadata !DIExpression()), !dbg !5796
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !5797
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !5798
  %1 = load i8*, i8** %name, align 8, !dbg !5798
  ret i8* %1, !dbg !5799
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #2 !dbg !5800 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !5804, metadata !DIExpression()), !dbg !5805
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !5806
  %tobool = trunc i8 %0 to i1, !dbg !5806
  %lnot = xor i1 %tobool, true, !dbg !5806
  %lnot1 = xor i1 %lnot, true, !dbg !5806
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5806
  %conv = sext i32 %lnot.ext to i64, !dbg !5806
  %tobool2 = icmp ne i64 %conv, 0, !dbg !5806
  ret i1 %tobool2, !dbg !5807
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #7

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #8 !dbg !5808 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5812, metadata !DIExpression()), !dbg !5817
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5819, metadata !DIExpression()), !dbg !5820
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5821, metadata !DIExpression()), !dbg !5822
  %0 = load i64, i64* %size.addr, align 8, !dbg !5823
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5825
  br i1 %1, label %if.then, label %if.end447, !dbg !5826

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5827
  %tobool = icmp ne i64 %2, 0, !dbg !5827
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5830

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5831
  br label %return, !dbg !5831

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5832
  %cmp = icmp ult i64 %3, 4096, !dbg !5834
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5835

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5836
  br label %return, !dbg !5836

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub = sub i64 %4, 1, !dbg !5837
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5837
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5837

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub4 = sub i64 %6, 1, !dbg !5837
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5837
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5837

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub6 = sub i64 %8, 1, !dbg !5837
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5837
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5837

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5837

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub9 = sub i64 %9, 1, !dbg !5837
  %and = and i64 %sub9, -9223372036854775808, !dbg !5837
  %tobool10 = icmp ne i64 %and, 0, !dbg !5837
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5837

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5837

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub13 = sub i64 %10, 1, !dbg !5837
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5837
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5837
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5837

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5837

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub18 = sub i64 %11, 1, !dbg !5837
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5837
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5837
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5837

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5837

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub23 = sub i64 %12, 1, !dbg !5837
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5837
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5837
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5837

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5837

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub28 = sub i64 %13, 1, !dbg !5837
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5837
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5837
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5837

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5837

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub33 = sub i64 %14, 1, !dbg !5837
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5837
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5837
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5837

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5837

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub38 = sub i64 %15, 1, !dbg !5837
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5837
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5837
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5837

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5837

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub43 = sub i64 %16, 1, !dbg !5837
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5837
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5837
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5837

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5837

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub48 = sub i64 %17, 1, !dbg !5837
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5837
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5837
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5837

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5837

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub53 = sub i64 %18, 1, !dbg !5837
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5837
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5837
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5837

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5837

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub58 = sub i64 %19, 1, !dbg !5837
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5837
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5837
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5837

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5837

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub63 = sub i64 %20, 1, !dbg !5837
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5837
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5837
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5837

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5837

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub68 = sub i64 %21, 1, !dbg !5837
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5837
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5837
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5837

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5837

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub73 = sub i64 %22, 1, !dbg !5837
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5837
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5837
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5837

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5837

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub78 = sub i64 %23, 1, !dbg !5837
  %and79 = and i64 %sub78, 562949953421312, !dbg !5837
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5837
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5837

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5837

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub83 = sub i64 %24, 1, !dbg !5837
  %and84 = and i64 %sub83, 281474976710656, !dbg !5837
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5837
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5837

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5837

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub88 = sub i64 %25, 1, !dbg !5837
  %and89 = and i64 %sub88, 140737488355328, !dbg !5837
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5837
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5837

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5837

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub93 = sub i64 %26, 1, !dbg !5837
  %and94 = and i64 %sub93, 70368744177664, !dbg !5837
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5837
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5837

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5837

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub98 = sub i64 %27, 1, !dbg !5837
  %and99 = and i64 %sub98, 35184372088832, !dbg !5837
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5837
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5837

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5837

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub103 = sub i64 %28, 1, !dbg !5837
  %and104 = and i64 %sub103, 17592186044416, !dbg !5837
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5837
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5837

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5837

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub108 = sub i64 %29, 1, !dbg !5837
  %and109 = and i64 %sub108, 8796093022208, !dbg !5837
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5837
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5837

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5837

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub113 = sub i64 %30, 1, !dbg !5837
  %and114 = and i64 %sub113, 4398046511104, !dbg !5837
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5837
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5837

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5837

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub118 = sub i64 %31, 1, !dbg !5837
  %and119 = and i64 %sub118, 2199023255552, !dbg !5837
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5837
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5837

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5837

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub123 = sub i64 %32, 1, !dbg !5837
  %and124 = and i64 %sub123, 1099511627776, !dbg !5837
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5837
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5837

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5837

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub128 = sub i64 %33, 1, !dbg !5837
  %and129 = and i64 %sub128, 549755813888, !dbg !5837
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5837
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5837

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5837

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub133 = sub i64 %34, 1, !dbg !5837
  %and134 = and i64 %sub133, 274877906944, !dbg !5837
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5837
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5837

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5837

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub138 = sub i64 %35, 1, !dbg !5837
  %and139 = and i64 %sub138, 137438953472, !dbg !5837
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5837
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5837

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5837

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub143 = sub i64 %36, 1, !dbg !5837
  %and144 = and i64 %sub143, 68719476736, !dbg !5837
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5837
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5837

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5837

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub148 = sub i64 %37, 1, !dbg !5837
  %and149 = and i64 %sub148, 34359738368, !dbg !5837
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5837
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5837

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5837

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub153 = sub i64 %38, 1, !dbg !5837
  %and154 = and i64 %sub153, 17179869184, !dbg !5837
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5837
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5837

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5837

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub158 = sub i64 %39, 1, !dbg !5837
  %and159 = and i64 %sub158, 8589934592, !dbg !5837
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5837
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5837

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5837

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub163 = sub i64 %40, 1, !dbg !5837
  %and164 = and i64 %sub163, 4294967296, !dbg !5837
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5837
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5837

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5837

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub168 = sub i64 %41, 1, !dbg !5837
  %and169 = and i64 %sub168, 2147483648, !dbg !5837
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5837
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5837

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5837

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub173 = sub i64 %42, 1, !dbg !5837
  %and174 = and i64 %sub173, 1073741824, !dbg !5837
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5837
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5837

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5837

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub178 = sub i64 %43, 1, !dbg !5837
  %and179 = and i64 %sub178, 536870912, !dbg !5837
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5837
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5837

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5837

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub183 = sub i64 %44, 1, !dbg !5837
  %and184 = and i64 %sub183, 268435456, !dbg !5837
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5837
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5837

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5837

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub188 = sub i64 %45, 1, !dbg !5837
  %and189 = and i64 %sub188, 134217728, !dbg !5837
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5837
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5837

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5837

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub193 = sub i64 %46, 1, !dbg !5837
  %and194 = and i64 %sub193, 67108864, !dbg !5837
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5837
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5837

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5837

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub198 = sub i64 %47, 1, !dbg !5837
  %and199 = and i64 %sub198, 33554432, !dbg !5837
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5837
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5837

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5837

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub203 = sub i64 %48, 1, !dbg !5837
  %and204 = and i64 %sub203, 16777216, !dbg !5837
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5837
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5837

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5837

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub208 = sub i64 %49, 1, !dbg !5837
  %and209 = and i64 %sub208, 8388608, !dbg !5837
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5837
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5837

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5837

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub213 = sub i64 %50, 1, !dbg !5837
  %and214 = and i64 %sub213, 4194304, !dbg !5837
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5837
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5837

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5837

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub218 = sub i64 %51, 1, !dbg !5837
  %and219 = and i64 %sub218, 2097152, !dbg !5837
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5837
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5837

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5837

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub223 = sub i64 %52, 1, !dbg !5837
  %and224 = and i64 %sub223, 1048576, !dbg !5837
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5837
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5837

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5837

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub228 = sub i64 %53, 1, !dbg !5837
  %and229 = and i64 %sub228, 524288, !dbg !5837
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5837
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5837

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5837

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub233 = sub i64 %54, 1, !dbg !5837
  %and234 = and i64 %sub233, 262144, !dbg !5837
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5837
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5837

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5837

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub238 = sub i64 %55, 1, !dbg !5837
  %and239 = and i64 %sub238, 131072, !dbg !5837
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5837
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5837

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5837

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub243 = sub i64 %56, 1, !dbg !5837
  %and244 = and i64 %sub243, 65536, !dbg !5837
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5837
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5837

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5837

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub248 = sub i64 %57, 1, !dbg !5837
  %and249 = and i64 %sub248, 32768, !dbg !5837
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5837
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5837

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5837

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub253 = sub i64 %58, 1, !dbg !5837
  %and254 = and i64 %sub253, 16384, !dbg !5837
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5837
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5837

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5837

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub258 = sub i64 %59, 1, !dbg !5837
  %and259 = and i64 %sub258, 8192, !dbg !5837
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5837
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5837

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5837

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub263 = sub i64 %60, 1, !dbg !5837
  %and264 = and i64 %sub263, 4096, !dbg !5837
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5837
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5837

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5837

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub268 = sub i64 %61, 1, !dbg !5837
  %and269 = and i64 %sub268, 2048, !dbg !5837
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5837
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5837

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5837

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub273 = sub i64 %62, 1, !dbg !5837
  %and274 = and i64 %sub273, 1024, !dbg !5837
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5837
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5837

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5837

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub278 = sub i64 %63, 1, !dbg !5837
  %and279 = and i64 %sub278, 512, !dbg !5837
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5837
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5837

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5837

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub283 = sub i64 %64, 1, !dbg !5837
  %and284 = and i64 %sub283, 256, !dbg !5837
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5837
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5837

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5837

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub288 = sub i64 %65, 1, !dbg !5837
  %and289 = and i64 %sub288, 128, !dbg !5837
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5837
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5837

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5837

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub293 = sub i64 %66, 1, !dbg !5837
  %and294 = and i64 %sub293, 64, !dbg !5837
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5837
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5837

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5837

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub298 = sub i64 %67, 1, !dbg !5837
  %and299 = and i64 %sub298, 32, !dbg !5837
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5837
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5837

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5837

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub303 = sub i64 %68, 1, !dbg !5837
  %and304 = and i64 %sub303, 16, !dbg !5837
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5837
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5837

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5837

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub308 = sub i64 %69, 1, !dbg !5837
  %and309 = and i64 %sub308, 8, !dbg !5837
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5837
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5837

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5837

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub313 = sub i64 %70, 1, !dbg !5837
  %and314 = and i64 %sub313, 4, !dbg !5837
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5837
  %71 = zext i1 %tobool315 to i64, !dbg !5837
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5837
  br label %cond.end, !dbg !5837

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5837
  br label %cond.end317, !dbg !5837

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5837
  br label %cond.end319, !dbg !5837

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5837
  br label %cond.end321, !dbg !5837

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5837
  br label %cond.end323, !dbg !5837

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5837
  br label %cond.end325, !dbg !5837

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5837
  br label %cond.end327, !dbg !5837

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5837
  br label %cond.end329, !dbg !5837

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5837
  br label %cond.end331, !dbg !5837

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5837
  br label %cond.end333, !dbg !5837

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5837
  br label %cond.end335, !dbg !5837

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5837
  br label %cond.end337, !dbg !5837

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5837
  br label %cond.end339, !dbg !5837

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5837
  br label %cond.end341, !dbg !5837

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5837
  br label %cond.end343, !dbg !5837

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5837
  br label %cond.end345, !dbg !5837

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5837
  br label %cond.end347, !dbg !5837

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5837
  br label %cond.end349, !dbg !5837

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5837
  br label %cond.end351, !dbg !5837

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5837
  br label %cond.end353, !dbg !5837

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5837
  br label %cond.end355, !dbg !5837

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5837
  br label %cond.end357, !dbg !5837

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5837
  br label %cond.end359, !dbg !5837

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5837
  br label %cond.end361, !dbg !5837

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5837
  br label %cond.end363, !dbg !5837

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5837
  br label %cond.end365, !dbg !5837

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5837
  br label %cond.end367, !dbg !5837

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5837
  br label %cond.end369, !dbg !5837

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5837
  br label %cond.end371, !dbg !5837

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5837
  br label %cond.end373, !dbg !5837

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5837
  br label %cond.end375, !dbg !5837

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5837
  br label %cond.end377, !dbg !5837

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5837
  br label %cond.end379, !dbg !5837

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5837
  br label %cond.end381, !dbg !5837

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5837
  br label %cond.end383, !dbg !5837

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5837
  br label %cond.end385, !dbg !5837

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5837
  br label %cond.end387, !dbg !5837

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5837
  br label %cond.end389, !dbg !5837

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5837
  br label %cond.end391, !dbg !5837

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5837
  br label %cond.end393, !dbg !5837

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5837
  br label %cond.end395, !dbg !5837

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5837
  br label %cond.end397, !dbg !5837

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5837
  br label %cond.end399, !dbg !5837

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5837
  br label %cond.end401, !dbg !5837

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5837
  br label %cond.end403, !dbg !5837

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5837
  br label %cond.end405, !dbg !5837

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5837
  br label %cond.end407, !dbg !5837

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5837
  br label %cond.end409, !dbg !5837

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5837
  br label %cond.end411, !dbg !5837

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5837
  br label %cond.end413, !dbg !5837

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5837
  br label %cond.end415, !dbg !5837

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5837
  br label %cond.end417, !dbg !5837

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5837
  br label %cond.end419, !dbg !5837

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5837
  br label %cond.end421, !dbg !5837

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5837
  br label %cond.end423, !dbg !5837

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5837
  br label %cond.end425, !dbg !5837

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5837
  br label %cond.end427, !dbg !5837

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5837
  br label %cond.end429, !dbg !5837

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5837
  br label %cond.end431, !dbg !5837

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5837
  br label %cond.end433, !dbg !5837

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5837
  br label %cond.end435, !dbg !5837

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5837
  br label %cond.end437, !dbg !5837

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5837
  br label %cond.end440, !dbg !5837

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5837

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5837
  br label %cond.end444, !dbg !5837

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5837
  %sub443 = sub i64 %72, 1, !dbg !5837
  %call = call i32 @__ilog2_u64(i64 %sub443) #13, !dbg !5837
  br label %cond.end444, !dbg !5837

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5837
  %sub446 = sub i32 %cond445, 12, !dbg !5838
  %add = add i32 %sub446, 1, !dbg !5839
  store i32 %add, i32* %retval, align 4, !dbg !5840
  br label %return, !dbg !5840

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5841
  %dec = add i64 %73, -1, !dbg !5841
  store i64 %dec, i64* %size.addr, align 8, !dbg !5841
  %74 = load i64, i64* %size.addr, align 8, !dbg !5842
  %shr = lshr i64 %74, 12, !dbg !5842
  store i64 %shr, i64* %size.addr, align 8, !dbg !5842
  %75 = load i64, i64* %size.addr, align 8, !dbg !5843
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5820
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5844
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5845
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #9, !dbg !5844, !srcloc !5846
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5844
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5847
  %add.i = add i32 %79, 1, !dbg !5848
  store i32 %add.i, i32* %retval, align 4, !dbg !5849
  br label %return, !dbg !5849

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5850
  ret i32 %80, !dbg !5850
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #8 !dbg !5851 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5812, metadata !DIExpression()), !dbg !5855
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5819, metadata !DIExpression()), !dbg !5857
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5858, metadata !DIExpression()), !dbg !5859
  %0 = load i64, i64* %n.addr, align 8, !dbg !5860
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5857
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5861
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5862
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #9, !dbg !5861, !srcloc !5846
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5861
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5863
  %add.i = add i32 %4, 1, !dbg !5864
  %sub = sub i32 %add.i, 1, !dbg !5865
  ret i32 %sub, !dbg !5866
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #2 !dbg !5867 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5871, metadata !DIExpression()), !dbg !5872
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5873, metadata !DIExpression()), !dbg !5874
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5875, metadata !DIExpression()), !dbg !5876
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5877, metadata !DIExpression()), !dbg !5878
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5879
  ret i8* %0, !dbg !5880
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pci224_ao_set_data(%struct.comedi_device* %dev, i32 %chan, i32 %range, i32 %data) #2 !dbg !5881 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %chan.addr = alloca i32, align 4
  %range.addr = alloca i32, align 4
  %data.addr = alloca i32, align 4
  %board = alloca %struct.pci224_board*, align 8
  %devpriv = alloca %struct.pci224_private*, align 8
  %mangled = alloca i16, align 2
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5884, metadata !DIExpression()), !dbg !5885
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !5886, metadata !DIExpression()), !dbg !5887
  store i32 %range, i32* %range.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %range.addr, metadata !5888, metadata !DIExpression()), !dbg !5889
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !5890, metadata !DIExpression()), !dbg !5891
  call void @llvm.dbg.declare(metadata %struct.pci224_board** %board, metadata !5892, metadata !DIExpression()), !dbg !5893
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5894
  %board_ptr = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 9, !dbg !5895
  %1 = load i8*, i8** %board_ptr, align 8, !dbg !5895
  %2 = bitcast i8* %1 to %struct.pci224_board*, !dbg !5894
  store %struct.pci224_board* %2, %struct.pci224_board** %board, align 8, !dbg !5893
  call void @llvm.dbg.declare(metadata %struct.pci224_private** %devpriv, metadata !5896, metadata !DIExpression()), !dbg !5897
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5898
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %3, i32 0, i32 3, !dbg !5899
  %4 = load i8*, i8** %private, align 8, !dbg !5899
  %5 = bitcast i8* %4 to %struct.pci224_private*, !dbg !5898
  store %struct.pci224_private* %5, %struct.pci224_private** %devpriv, align 8, !dbg !5897
  call void @llvm.dbg.declare(metadata i16* %mangled, metadata !5900, metadata !DIExpression()), !dbg !5901
  %6 = load i32, i32* %chan.addr, align 4, !dbg !5902
  %shl = shl i32 1, %6, !dbg !5903
  %conv = trunc i32 %shl to i16, !dbg !5904
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5905
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 18, !dbg !5906
  %8 = load i64, i64* %iobase, align 8, !dbg !5906
  %add = add i64 %8, 6, !dbg !5907
  %conv1 = trunc i64 %add to i32, !dbg !5905
  call void @outw(i16 zeroext %conv, i32 %conv1) #11, !dbg !5908
  %9 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !5909
  %daccon = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %9, i32 0, i32 7, !dbg !5909
  %10 = load i16, i16* %daccon, align 2, !dbg !5909
  %conv2 = zext i16 %10 to i32, !dbg !5909
  %and = and i32 %conv2, -57, !dbg !5909
  %11 = load %struct.pci224_board*, %struct.pci224_board** %board, align 8, !dbg !5909
  %ao_hwrange = getelementptr inbounds %struct.pci224_board, %struct.pci224_board* %11, i32 0, i32 4, !dbg !5909
  %12 = load i16*, i16** %ao_hwrange, align 8, !dbg !5909
  %13 = load i32, i32* %range.addr, align 4, !dbg !5909
  %idxprom = sext i32 %13 to i64, !dbg !5909
  %arrayidx = getelementptr i16, i16* %12, i64 %idxprom, !dbg !5909
  %14 = load i16, i16* %arrayidx, align 2, !dbg !5909
  %conv3 = zext i16 %14 to i32, !dbg !5909
  %and4 = and i32 %conv3, 56, !dbg !5909
  %or = or i32 %and, %and4, !dbg !5909
  %conv5 = trunc i32 %or to i16, !dbg !5909
  %15 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !5910
  %daccon6 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %15, i32 0, i32 7, !dbg !5911
  store i16 %conv5, i16* %daccon6, align 2, !dbg !5912
  %16 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !5913
  %daccon7 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %16, i32 0, i32 7, !dbg !5914
  %17 = load i16, i16* %daccon7, align 2, !dbg !5914
  %conv8 = zext i16 %17 to i64, !dbg !5913
  %or9 = or i64 %conv8, 4096, !dbg !5915
  %conv10 = trunc i64 %or9 to i16, !dbg !5913
  %18 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5916
  %iobase11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 18, !dbg !5917
  %19 = load i64, i64* %iobase11, align 8, !dbg !5917
  %add12 = add i64 %19, 2, !dbg !5918
  %conv13 = trunc i64 %add12 to i32, !dbg !5916
  call void @outw(i16 zeroext %conv10, i32 %conv13) #11, !dbg !5919
  %20 = load i32, i32* %data.addr, align 4, !dbg !5920
  %conv14 = trunc i32 %20 to i16, !dbg !5921
  %conv15 = zext i16 %conv14 to i32, !dbg !5921
  %21 = load %struct.pci224_board*, %struct.pci224_board** %board, align 8, !dbg !5922
  %ao_bits = getelementptr inbounds %struct.pci224_board, %struct.pci224_board* %21, i32 0, i32 2, !dbg !5923
  %22 = load i32, i32* %ao_bits, align 4, !dbg !5923
  %sub = sub i32 16, %22, !dbg !5924
  %shl16 = shl i32 %conv15, %sub, !dbg !5925
  %conv17 = trunc i32 %shl16 to i16, !dbg !5921
  store i16 %conv17, i16* %mangled, align 2, !dbg !5926
  %23 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !5927
  %daccon18 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %23, i32 0, i32 7, !dbg !5929
  %24 = load i16, i16* %daccon18, align 2, !dbg !5929
  %conv19 = zext i16 %24 to i32, !dbg !5927
  %and20 = and i32 %conv19, 8, !dbg !5930
  %cmp = icmp eq i32 %and20, 8, !dbg !5931
  br i1 %cmp, label %if.then, label %if.end, !dbg !5932

if.then:                                          ; preds = %entry
  %25 = load i16, i16* %mangled, align 2, !dbg !5933
  %conv22 = zext i16 %25 to i32, !dbg !5933
  %xor = xor i32 %conv22, 32768, !dbg !5933
  %conv23 = trunc i32 %xor to i16, !dbg !5933
  store i16 %conv23, i16* %mangled, align 2, !dbg !5933
  br label %if.end, !dbg !5935

if.end:                                           ; preds = %if.then, %entry
  %26 = load i16, i16* %mangled, align 2, !dbg !5936
  %27 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5937
  %iobase24 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %27, i32 0, i32 18, !dbg !5938
  %28 = load i64, i64* %iobase24, align 8, !dbg !5938
  %add25 = add i64 %28, 0, !dbg !5939
  %conv26 = trunc i64 %add25 to i32, !dbg !5937
  call void @outw(i16 zeroext %26, i32 %conv26) #11, !dbg !5940
  %29 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5941
  %iobase27 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %29, i32 0, i32 18, !dbg !5942
  %30 = load i64, i64* %iobase27, align 8, !dbg !5942
  %add28 = add i64 %30, 0, !dbg !5943
  %conv29 = trunc i64 %add28 to i32, !dbg !5941
  %call = call zeroext i16 @inw(i32 %conv29) #11, !dbg !5944
  ret void, !dbg !5945
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i16 @inw(i32 %port) #2 !dbg !5946 {
entry:
  %port.addr = alloca i32, align 4
  %value = alloca i16, align 2
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5949, metadata !DIExpression()), !dbg !5950
  call void @llvm.dbg.declare(metadata i16* %value, metadata !5951, metadata !DIExpression()), !dbg !5950
  %0 = load i32, i32* %port.addr, align 4, !dbg !5950
  %1 = call i16 asm sideeffect "inw ${1:w}, ${0:w}", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #10, !dbg !5950, !srcloc !5952
  store i16 %1, i16* %value, align 2, !dbg !5950
  %2 = load i16, i16* %value, align 2, !dbg !5950
  ret i16 %2, !dbg !5950
}

; Function Attrs: noredzone
declare dso_local void @comedi_8254_update_divisors(%struct.comedi_8254*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pci224_ao_start_pacer(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #2 !dbg !5953 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %devpriv = alloca %struct.pci224_private*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5956, metadata !DIExpression()), !dbg !5957
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5958, metadata !DIExpression()), !dbg !5959
  call void @llvm.dbg.declare(metadata %struct.pci224_private** %devpriv, metadata !5960, metadata !DIExpression()), !dbg !5961
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5962
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5963
  %1 = load i8*, i8** %private, align 8, !dbg !5963
  %2 = bitcast i8* %1 to %struct.pci224_private*, !dbg !5962
  store %struct.pci224_private* %2, %struct.pci224_private** %devpriv, align 8, !dbg !5961
  %call = call i32 @pci224_gat_config(i32 0, i32 0) #11, !dbg !5964
  %conv = trunc i32 %call to i8, !dbg !5964
  %3 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !5965
  %iobase1 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %3, i32 0, i32 0, !dbg !5966
  %4 = load i64, i64* %iobase1, align 8, !dbg !5966
  %add = add i64 %4, 29, !dbg !5967
  %conv1 = trunc i64 %add to i32, !dbg !5965
  call void @outb(i8 zeroext %conv, i32 %conv1) #11, !dbg !5968
  %call2 = call i32 @pci224_gat_config(i32 2, i32 0) #11, !dbg !5969
  %conv3 = trunc i32 %call2 to i8, !dbg !5969
  %5 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !5970
  %iobase14 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %5, i32 0, i32 0, !dbg !5971
  %6 = load i64, i64* %iobase14, align 8, !dbg !5971
  %add5 = add i64 %6, 29, !dbg !5972
  %conv6 = trunc i64 %add5 to i32, !dbg !5970
  call void @outb(i8 zeroext %conv3, i32 %conv6) #11, !dbg !5973
  %call7 = call i32 @pci224_clk_config(i32 2, i32 1) #11, !dbg !5974
  %conv8 = trunc i32 %call7 to i8, !dbg !5974
  %7 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !5975
  %iobase19 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %7, i32 0, i32 0, !dbg !5976
  %8 = load i64, i64* %iobase19, align 8, !dbg !5976
  %add10 = add i64 %8, 26, !dbg !5977
  %conv11 = trunc i64 %add10 to i32, !dbg !5975
  call void @outb(i8 zeroext %conv8, i32 %conv11) #11, !dbg !5978
  %call12 = call i32 @pci224_clk_config(i32 0, i32 6) #11, !dbg !5979
  %conv13 = trunc i32 %call12 to i8, !dbg !5979
  %9 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !5980
  %iobase114 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %9, i32 0, i32 0, !dbg !5981
  %10 = load i64, i64* %iobase114, align 8, !dbg !5981
  %add15 = add i64 %10, 26, !dbg !5982
  %conv16 = trunc i64 %add15 to i32, !dbg !5980
  call void @outb(i8 zeroext %conv13, i32 %conv16) #11, !dbg !5983
  %11 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5984
  %pacer = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 2, !dbg !5985
  %12 = load %struct.comedi_8254*, %struct.comedi_8254** %pacer, align 8, !dbg !5985
  call void @comedi_8254_pacer_enable(%struct.comedi_8254* %12, i32 2, i32 0, i1 zeroext false) #11, !dbg !5986
  ret void, !dbg !5987
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #2 !dbg !5988 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !5992, metadata !DIExpression()), !dbg !5993
  %call = call i64 @arch_local_save_flags() #11, !dbg !5994
  store i64 %call, i64* %f, align 8, !dbg !5995
  call void @arch_local_irq_disable() #11, !dbg !5996
  %0 = load i64, i64* %f, align 8, !dbg !5997
  ret i64 %0, !dbg !5998
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci224_ao_inttrig_start(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, i32 %trig_num) #2 !dbg !5999 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %trig_num.addr = alloca i32, align 4
  %cmd = alloca %struct.comedi_cmd*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !6000, metadata !DIExpression()), !dbg !6001
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !6002, metadata !DIExpression()), !dbg !6003
  store i32 %trig_num, i32* %trig_num.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %trig_num.addr, metadata !6004, metadata !DIExpression()), !dbg !6005
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd, metadata !6006, metadata !DIExpression()), !dbg !6007
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6008
  %async = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 7, !dbg !6009
  %1 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !6009
  %cmd1 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %1, i32 0, i32 17, !dbg !6010
  store %struct.comedi_cmd* %cmd1, %struct.comedi_cmd** %cmd, align 8, !dbg !6007
  %2 = load i32, i32* %trig_num.addr, align 4, !dbg !6011
  %3 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !6013
  %start_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %3, i32 0, i32 3, !dbg !6014
  %4 = load i32, i32* %start_arg, align 4, !dbg !6014
  %cmp = icmp ne i32 %2, %4, !dbg !6015
  br i1 %cmp, label %if.then, label %if.end, !dbg !6016

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !6017
  br label %return, !dbg !6017

if.end:                                           ; preds = %entry
  %5 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6018
  %async2 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %5, i32 0, i32 7, !dbg !6019
  %6 = load %struct.comedi_async*, %struct.comedi_async** %async2, align 8, !dbg !6019
  %inttrig = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %6, i32 0, i32 20, !dbg !6020
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* null, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)** %inttrig, align 8, !dbg !6021
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6022
  %8 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6023
  call void @pci224_ao_start(%struct.comedi_device* %7, %struct.comedi_subdevice* %8) #11, !dbg !6024
  store i32 1, i32* %retval, align 4, !dbg !6025
  br label %return, !dbg !6025

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !6026
  ret i32 %9, !dbg !6026
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci224_gat_config(i32 %chan, i32 %src) #2 !dbg !6027 {
entry:
  %chan.addr = alloca i32, align 4
  %src.addr = alloca i32, align 4
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !6030, metadata !DIExpression()), !dbg !6031
  store i32 %src, i32* %src.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %src.addr, metadata !6032, metadata !DIExpression()), !dbg !6033
  %0 = load i32, i32* %chan.addr, align 4, !dbg !6034
  %and = and i32 %0, 3, !dbg !6035
  %shl = shl i32 %and, 3, !dbg !6036
  %1 = load i32, i32* %src.addr, align 4, !dbg !6037
  %and1 = and i32 %1, 7, !dbg !6038
  %or = or i32 %shl, %and1, !dbg !6039
  ret i32 %or, !dbg !6040
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci224_clk_config(i32 %chan, i32 %src) #2 !dbg !6041 {
entry:
  %chan.addr = alloca i32, align 4
  %src.addr = alloca i32, align 4
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !6042, metadata !DIExpression()), !dbg !6043
  store i32 %src, i32* %src.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %src.addr, metadata !6044, metadata !DIExpression()), !dbg !6045
  %0 = load i32, i32* %chan.addr, align 4, !dbg !6046
  %and = and i32 %0, 3, !dbg !6047
  %shl = shl i32 %and, 3, !dbg !6048
  %1 = load i32, i32* %src.addr, align 4, !dbg !6049
  %and1 = and i32 %1, 7, !dbg !6050
  %or = or i32 %shl, %and1, !dbg !6051
  ret i32 %or, !dbg !6052
}

; Function Attrs: noredzone
declare dso_local void @comedi_8254_pacer_enable(%struct.comedi_8254*, i32, i32, i1 zeroext) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #2 !dbg !6053 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !6054, metadata !DIExpression()), !dbg !6056
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6057, metadata !DIExpression()), !dbg !6056
  %0 = load i64, i64* %__edi, align 8, !dbg !6056
  store i64 %0, i64* %__edi, align 8, !dbg !6056
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6058, metadata !DIExpression()), !dbg !6056
  %1 = load i64, i64* %__esi, align 8, !dbg !6056
  store i64 %1, i64* %__esi, align 8, !dbg !6056
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6059, metadata !DIExpression()), !dbg !6056
  %2 = load i64, i64* %__edx, align 8, !dbg !6056
  store i64 %2, i64* %__edx, align 8, !dbg !6056
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6060, metadata !DIExpression()), !dbg !6056
  %3 = load i64, i64* %__ecx, align 8, !dbg !6056
  store i64 %3, i64* %__ecx, align 8, !dbg !6056
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6061, metadata !DIExpression()), !dbg !6056
  %4 = load i64, i64* %__eax, align 8, !dbg !6056
  store i64 %4, i64* %__eax, align 8, !dbg !6056
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !6056
  %6 = call i64 @llvm.read_register.i64(metadata !4336), !dbg !6062
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #10, !dbg !6062, !srcloc !6065
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !6062
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !6062
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6062
  call void @llvm.write_register.i64(metadata !4336, i64 %asmresult1), !dbg !6062
  %8 = load i64, i64* %__eax, align 8, !dbg !6062
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !6066, metadata !DIExpression()), !dbg !6068
  store i64 -1, i64* %__mask, align 8, !dbg !6068
  %9 = load i64, i64* %__mask, align 8, !dbg !6068
  store i64 %9, i64* %tmp, align 8, !dbg !6068
  %10 = load i64, i64* %tmp, align 8, !dbg !6068
  %and = and i64 %8, %10, !dbg !6062
  store i64 %and, i64* %__ret, align 8, !dbg !6062
  %11 = load i64, i64* %__ret, align 8, !dbg !6056
  store i64 %11, i64* %tmp2, align 8, !dbg !6069
  %12 = load i64, i64* %tmp2, align 8, !dbg !6056
  ret i64 %12, !dbg !6070
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #2 !dbg !6071 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6072, metadata !DIExpression()), !dbg !6074
  %0 = load i64, i64* %__edi, align 8, !dbg !6074
  store i64 %0, i64* %__edi, align 8, !dbg !6074
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6075, metadata !DIExpression()), !dbg !6074
  %1 = load i64, i64* %__esi, align 8, !dbg !6074
  store i64 %1, i64* %__esi, align 8, !dbg !6074
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6076, metadata !DIExpression()), !dbg !6074
  %2 = load i64, i64* %__edx, align 8, !dbg !6074
  store i64 %2, i64* %__edx, align 8, !dbg !6074
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6077, metadata !DIExpression()), !dbg !6074
  %3 = load i64, i64* %__ecx, align 8, !dbg !6074
  store i64 %3, i64* %__ecx, align 8, !dbg !6074
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6078, metadata !DIExpression()), !dbg !6074
  %4 = load i64, i64* %__eax, align 8, !dbg !6074
  store i64 %4, i64* %__eax, align 8, !dbg !6074
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !6074
  %6 = call i64 @llvm.read_register.i64(metadata !4336), !dbg !6074
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #10, !dbg !6074, !srcloc !6079
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !6074
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !6074
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6074
  call void @llvm.write_register.i64(metadata !4336, i64 %asmresult1), !dbg !6074
  ret void, !dbg !6080
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #9

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #10

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pci224_ao_start(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #2 !dbg !6081 {
entry:
  %lock.addr.i26 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i26, metadata !5003, metadata !DIExpression()), !dbg !6082
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !5009, metadata !DIExpression()), !dbg !6084
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4385, metadata !DIExpression()), !dbg !6085
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %devpriv = alloca %struct.pci224_private*, align 8
  %cmd = alloca %struct.comedi_cmd*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy6 = alloca i64, align 8
  %__dummy27 = alloca i64, align 8
  %tmp10 = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !6092, metadata !DIExpression()), !dbg !6093
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !6094, metadata !DIExpression()), !dbg !6095
  call void @llvm.dbg.declare(metadata %struct.pci224_private** %devpriv, metadata !6096, metadata !DIExpression()), !dbg !6097
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6098
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !6099
  %1 = load i8*, i8** %private, align 8, !dbg !6099
  %2 = bitcast i8* %1 to %struct.pci224_private*, !dbg !6098
  store %struct.pci224_private* %2, %struct.pci224_private** %devpriv, align 8, !dbg !6097
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd, metadata !6100, metadata !DIExpression()), !dbg !6101
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6102
  %async = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %3, i32 0, i32 7, !dbg !6103
  %4 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !6103
  %cmd1 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %4, i32 0, i32 17, !dbg !6104
  store %struct.comedi_cmd* %cmd1, %struct.comedi_cmd** %cmd, align 8, !dbg !6101
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !6105, metadata !DIExpression()), !dbg !6106
  %5 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !6107
  %state = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %5, i32 0, i32 1, !dbg !6108
  call void @set_bit(i64 0, i64* %state) #11, !dbg !6109
  br label %do.body, !dbg !6110

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6111

do.body2:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !6112, metadata !DIExpression()), !dbg !6114
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !6115, metadata !DIExpression()), !dbg !6114
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !6114
  %conv = zext i1 %cmp to i32, !dbg !6114
  store i32 1, i32* %tmp, align 4, !dbg !6114
  %6 = load i32, i32* %tmp, align 4, !dbg !6114
  br label %do.body3, !dbg !6116

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !6117

do.body4:                                         ; preds = %do.body3
  br label %do.body5, !dbg !6118

do.body5:                                         ; preds = %do.body4
  call void @llvm.dbg.declare(metadata i64* %__dummy6, metadata !6120, metadata !DIExpression()), !dbg !6123
  call void @llvm.dbg.declare(metadata i64* %__dummy27, metadata !6124, metadata !DIExpression()), !dbg !6123
  %cmp8 = icmp eq i64* %__dummy6, %__dummy27, !dbg !6123
  %conv9 = zext i1 %cmp8 to i32, !dbg !6123
  store i32 1, i32* %tmp10, align 4, !dbg !6123
  %7 = load i32, i32* %tmp10, align 4, !dbg !6123
  %call = call i64 @arch_local_irq_save() #11, !dbg !6125
  store i64 %call, i64* %flags, align 8, !dbg !6125
  br label %do.end, !dbg !6125

do.end:                                           ; preds = %do.body5
  br label %do.end11, !dbg !6118

do.end11:                                         ; preds = %do.end
  br label %do.body12, !dbg !6117

do.body12:                                        ; preds = %do.end11
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !6126, !srcloc !6127
  br label %do.body13, !dbg !6126

do.body13:                                        ; preds = %do.body12
  %8 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !6128
  %ao_spinlock = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %8, i32 0, i32 2, !dbg !6128
  store %struct.spinlock* %ao_spinlock, %struct.spinlock** %lock.addr.i, align 8
  %9 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !6129
  %10 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %9, i32 0, i32 0, !dbg !6130
  %rlock.i = bitcast %union.anon.3* %10 to %struct.raw_spinlock*, !dbg !6130
  br label %do.end15, !dbg !6128

do.end15:                                         ; preds = %do.body13
  br label %do.end16, !dbg !6126

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !6117

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !6116

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !6111

do.end19:                                         ; preds = %do.end18
  %11 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !6131
  %stop_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %11, i32 0, i32 10, !dbg !6133
  %12 = load i32, i32* %stop_src, align 8, !dbg !6133
  %cmp20 = icmp eq i32 %12, 64, !dbg !6134
  br i1 %cmp20, label %if.then, label %if.else, !dbg !6135

if.then:                                          ; preds = %do.end19
  %13 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !6136
  %intsce = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %13, i32 0, i32 9, !dbg !6137
  store i8 5, i8* %intsce, align 2, !dbg !6138
  br label %if.end, !dbg !6136

if.else:                                          ; preds = %do.end19
  %14 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !6139
  %intsce22 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %14, i32 0, i32 9, !dbg !6140
  store i8 4, i8* %intsce22, align 2, !dbg !6141
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !6142
  %intsce23 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %15, i32 0, i32 9, !dbg !6143
  %16 = load i8, i8* %intsce23, align 2, !dbg !6143
  %17 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !6144
  %iobase1 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %17, i32 0, i32 0, !dbg !6145
  %18 = load i64, i64* %iobase1, align 8, !dbg !6145
  %add = add i64 %18, 30, !dbg !6146
  %conv24 = trunc i64 %add to i32, !dbg !6144
  call void @outb(i8 zeroext %16, i32 %conv24) #11, !dbg !6147
  %19 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !6148
  %ao_spinlock25 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %19, i32 0, i32 2, !dbg !6149
  %20 = load i64, i64* %flags, align 8, !dbg !6150
  store %struct.spinlock* %ao_spinlock25, %struct.spinlock** %lock.addr.i26, align 8
  store i64 %20, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !294, metadata !5186, metadata !DIExpression()) #10, !dbg !6151
  call void @llvm.dbg.declare(metadata !294, metadata !5190, metadata !DIExpression()) #10, !dbg !6151
  store i32 1, i32* %tmp.i, align 4, !dbg !6151
  %21 = load i32, i32* %tmp.i, align 4, !dbg !6151
  call void @llvm.dbg.declare(metadata !294, metadata !5191, metadata !DIExpression()) #10, !dbg !6152
  call void @llvm.dbg.declare(metadata !294, metadata !5197, metadata !DIExpression()) #10, !dbg !6152
  store i32 1, i32* %tmp8.i, align 4, !dbg !6152
  %22 = load i32, i32* %tmp8.i, align 4, !dbg !6152
  %23 = load i64, i64* %flags.addr.i, align 8, !dbg !6153
  call void @arch_local_irq_restore(i64 %23) #14, !dbg !6153
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !6154, !srcloc !5201
  %24 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i26, align 8, !dbg !6155
  %25 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %24, i32 0, i32 0, !dbg !6155
  %rlock.i27 = bitcast %union.anon.3* %25 to %struct.raw_spinlock*, !dbg !6155
  ret void, !dbg !6156
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_bit(i64 %nr, i64* %addr) #2 !dbg !6157 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !6163, metadata !DIExpression()), !dbg !6165
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !6167, metadata !DIExpression()), !dbg !6168
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !6169, metadata !DIExpression()), !dbg !6177
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !6179, metadata !DIExpression()), !dbg !6180
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !6181, metadata !DIExpression()), !dbg !6182
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !6183, metadata !DIExpression()), !dbg !6184
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !6185
  %1 = load i64, i64* %nr.addr, align 8, !dbg !6186
  %div = sdiv i64 %1, 64, !dbg !6186
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !6187
  %2 = bitcast i64* %add.ptr to i8*, !dbg !6185
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !6188
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !6189
  %conv.i = trunc i64 %4 to i32, !dbg !6189
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #14, !dbg !6190
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !6191
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !6191
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #14, !dbg !6191
  %7 = load i64, i64* %nr.addr, align 8, !dbg !6192
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !6193
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !6194
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #10, !dbg !6196
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !6197

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !6198
  %12 = bitcast i64* %11 to i8*, !dbg !6198
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !6198
  %shr.i = ashr i64 %13, 3, !dbg !6198
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !6198
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !6200
  %and.i = and i64 %14, 7, !dbg !6200
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !6200
  %shl.i = shl i32 1, %sh_prom.i, !dbg !6200
  call void asm sideeffect "orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %shl.i, i8* %add.ptr.i) #10, !dbg !6201, !srcloc !6202
  br label %arch_set_bit.exit, !dbg !6203

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !6204
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !6206
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #10, !dbg !6207, !srcloc !6208
  br label %arch_set_bit.exit

arch_set_bit.exit:                                ; preds = %if.then.i, %if.else.i
  ret void, !dbg !6209
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #2 !dbg !6210 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !6214, metadata !DIExpression()), !dbg !6215
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !6216, metadata !DIExpression()), !dbg !6217
  ret i1 true, !dbg !6218
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #2 !dbg !6219 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !6223, metadata !DIExpression()), !dbg !6224
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6225, metadata !DIExpression()), !dbg !6226
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !6227, metadata !DIExpression()), !dbg !6228
  ret void, !dbg !6229
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #2 !dbg !6230 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !6233, metadata !DIExpression()), !dbg !6234
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6235, metadata !DIExpression()), !dbg !6237
  %0 = load i64, i64* %__edi, align 8, !dbg !6237
  store i64 %0, i64* %__edi, align 8, !dbg !6237
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6238, metadata !DIExpression()), !dbg !6237
  %1 = load i64, i64* %__esi, align 8, !dbg !6237
  store i64 %1, i64* %__esi, align 8, !dbg !6237
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6239, metadata !DIExpression()), !dbg !6237
  %2 = load i64, i64* %__edx, align 8, !dbg !6237
  store i64 %2, i64* %__edx, align 8, !dbg !6237
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6240, metadata !DIExpression()), !dbg !6237
  %3 = load i64, i64* %__ecx, align 8, !dbg !6237
  store i64 %3, i64* %__ecx, align 8, !dbg !6237
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6241, metadata !DIExpression()), !dbg !6237
  %4 = load i64, i64* %__eax, align 8, !dbg !6237
  store i64 %4, i64* %__eax, align 8, !dbg !6237
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !6237
  %6 = call i64 @llvm.read_register.i64(metadata !4336), !dbg !6237
  %7 = load i64, i64* %f.addr, align 8, !dbg !6237
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #10, !dbg !6237, !srcloc !6242
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !6237
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !6237
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6237
  call void @llvm.write_register.i64(metadata !4336, i64 %asmresult1), !dbg !6237
  ret void, !dbg !6243
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_src(i32* %src, i32 %flags) #2 !dbg !6244 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i32*, align 8
  %flags.addr = alloca i32, align 4
  %orig_src = alloca i32, align 4
  store i32* %src, i32** %src.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %src.addr, metadata !6247, metadata !DIExpression()), !dbg !6248
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6249, metadata !DIExpression()), !dbg !6250
  call void @llvm.dbg.declare(metadata i32* %orig_src, metadata !6251, metadata !DIExpression()), !dbg !6252
  %0 = load i32*, i32** %src.addr, align 8, !dbg !6253
  %1 = load i32, i32* %0, align 4, !dbg !6254
  store i32 %1, i32* %orig_src, align 4, !dbg !6252
  %2 = load i32, i32* %orig_src, align 4, !dbg !6255
  %3 = load i32, i32* %flags.addr, align 4, !dbg !6256
  %and = and i32 %2, %3, !dbg !6257
  %4 = load i32*, i32** %src.addr, align 8, !dbg !6258
  store i32 %and, i32* %4, align 4, !dbg !6259
  %5 = load i32*, i32** %src.addr, align 8, !dbg !6260
  %6 = load i32, i32* %5, align 4, !dbg !6262
  %cmp = icmp eq i32 %6, 0, !dbg !6263
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !6264

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32*, i32** %src.addr, align 8, !dbg !6265
  %8 = load i32, i32* %7, align 4, !dbg !6266
  %9 = load i32, i32* %orig_src, align 4, !dbg !6267
  %cmp1 = icmp ne i32 %8, %9, !dbg !6268
  br i1 %cmp1, label %if.then, label %if.end, !dbg !6269

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !6270
  br label %return, !dbg !6270

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %retval, align 4, !dbg !6271
  br label %return, !dbg !6271

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !6272
  ret i32 %10, !dbg !6272
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_is_unique(i32 %src) #2 !dbg !6273 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i32, align 4
  store i32 %src, i32* %src.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %src.addr, metadata !6276, metadata !DIExpression()), !dbg !6277
  %0 = load i32, i32* %src.addr, align 4, !dbg !6278
  %1 = load i32, i32* %src.addr, align 4, !dbg !6280
  %sub = sub i32 %1, 1, !dbg !6281
  %and = and i32 %0, %sub, !dbg !6282
  %cmp = icmp ne i32 %and, 0, !dbg !6283
  br i1 %cmp, label %if.then, label %if.end, !dbg !6284

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !6285
  br label %return, !dbg !6285

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6286
  br label %return, !dbg !6286

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !6287
  ret i32 %2, !dbg !6287
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_arg_is(i32* %arg, i32 %val) #2 !dbg !6288 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca i32*, align 8
  %val.addr = alloca i32, align 4
  store i32* %arg, i32** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %arg.addr, metadata !6289, metadata !DIExpression()), !dbg !6290
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !6291, metadata !DIExpression()), !dbg !6292
  %0 = load i32*, i32** %arg.addr, align 8, !dbg !6293
  %1 = load i32, i32* %0, align 4, !dbg !6295
  %2 = load i32, i32* %val.addr, align 4, !dbg !6296
  %cmp = icmp ne i32 %1, %2, !dbg !6297
  br i1 %cmp, label %if.then, label %if.end, !dbg !6298

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %val.addr, align 4, !dbg !6299
  %4 = load i32*, i32** %arg.addr, align 8, !dbg !6301
  store i32 %3, i32* %4, align 4, !dbg !6302
  store i32 -22, i32* %retval, align 4, !dbg !6303
  br label %return, !dbg !6303

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6304
  br label %return, !dbg !6304

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !6305
  ret i32 %5, !dbg !6305
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_arg_max(i32* %arg, i32 %val) #2 !dbg !6306 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca i32*, align 8
  %val.addr = alloca i32, align 4
  store i32* %arg, i32** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %arg.addr, metadata !6307, metadata !DIExpression()), !dbg !6308
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !6309, metadata !DIExpression()), !dbg !6310
  %0 = load i32*, i32** %arg.addr, align 8, !dbg !6311
  %1 = load i32, i32* %0, align 4, !dbg !6313
  %2 = load i32, i32* %val.addr, align 4, !dbg !6314
  %cmp = icmp ugt i32 %1, %2, !dbg !6315
  br i1 %cmp, label %if.then, label %if.end, !dbg !6316

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %val.addr, align 4, !dbg !6317
  %4 = load i32*, i32** %arg.addr, align 8, !dbg !6319
  store i32 %3, i32* %4, align 4, !dbg !6320
  store i32 -22, i32* %retval, align 4, !dbg !6321
  br label %return, !dbg !6321

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6322
  br label %return, !dbg !6322

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !6323
  ret i32 %5, !dbg !6323
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_arg_min(i32* %arg, i32 %val) #2 !dbg !6324 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca i32*, align 8
  %val.addr = alloca i32, align 4
  store i32* %arg, i32** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %arg.addr, metadata !6325, metadata !DIExpression()), !dbg !6326
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !6327, metadata !DIExpression()), !dbg !6328
  %0 = load i32*, i32** %arg.addr, align 8, !dbg !6329
  %1 = load i32, i32* %0, align 4, !dbg !6331
  %2 = load i32, i32* %val.addr, align 4, !dbg !6332
  %cmp = icmp ult i32 %1, %2, !dbg !6333
  br i1 %cmp, label %if.then, label %if.end, !dbg !6334

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %val.addr, align 4, !dbg !6335
  %4 = load i32*, i32** %arg.addr, align 8, !dbg !6337
  store i32 %3, i32* %4, align 4, !dbg !6338
  store i32 -22, i32* %retval, align 4, !dbg !6339
  br label %return, !dbg !6339

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6340
  br label %return, !dbg !6340

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !6341
  ret i32 %5, !dbg !6341
}

; Function Attrs: noredzone
declare dso_local void @comedi_8254_cascade_ns_to_timer(%struct.comedi_8254*, i32*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci224_ao_check_chanlist(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_cmd* %cmd) #2 !dbg !6342 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %cmd.addr = alloca %struct.comedi_cmd*, align 8
  %board = alloca %struct.pci224_board*, align 8
  %range_check_0 = alloca i32, align 4
  %chan_mask = alloca i32, align 4
  %i = alloca i32, align 4
  %chan = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !6343, metadata !DIExpression()), !dbg !6344
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !6345, metadata !DIExpression()), !dbg !6346
  store %struct.comedi_cmd* %cmd, %struct.comedi_cmd** %cmd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd.addr, metadata !6347, metadata !DIExpression()), !dbg !6348
  call void @llvm.dbg.declare(metadata %struct.pci224_board** %board, metadata !6349, metadata !DIExpression()), !dbg !6350
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6351
  %board_ptr = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 9, !dbg !6352
  %1 = load i8*, i8** %board_ptr, align 8, !dbg !6352
  %2 = bitcast i8* %1 to %struct.pci224_board*, !dbg !6351
  store %struct.pci224_board* %2, %struct.pci224_board** %board, align 8, !dbg !6350
  call void @llvm.dbg.declare(metadata i32* %range_check_0, metadata !6353, metadata !DIExpression()), !dbg !6354
  call void @llvm.dbg.declare(metadata i32* %chan_mask, metadata !6355, metadata !DIExpression()), !dbg !6356
  store i32 0, i32* %chan_mask, align 4, !dbg !6356
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6357, metadata !DIExpression()), !dbg !6358
  %3 = load %struct.pci224_board*, %struct.pci224_board** %board, align 8, !dbg !6359
  %ao_range_check = getelementptr inbounds %struct.pci224_board, %struct.pci224_board* %3, i32 0, i32 5, !dbg !6360
  %4 = load i8*, i8** %ao_range_check, align 8, !dbg !6360
  %5 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !6361
  %chanlist = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %5, i32 0, i32 12, !dbg !6361
  %6 = load i32*, i32** %chanlist, align 8, !dbg !6361
  %arrayidx = getelementptr i32, i32* %6, i64 0, !dbg !6361
  %7 = load i32, i32* %arrayidx, align 4, !dbg !6361
  %shr = lshr i32 %7, 16, !dbg !6361
  %and = and i32 %shr, 255, !dbg !6361
  %idxprom = zext i32 %and to i64, !dbg !6359
  %arrayidx1 = getelementptr i8, i8* %4, i64 %idxprom, !dbg !6359
  %8 = load i8, i8* %arrayidx1, align 1, !dbg !6359
  %conv = zext i8 %8 to i32, !dbg !6359
  store i32 %conv, i32* %range_check_0, align 4, !dbg !6362
  store i32 0, i32* %i, align 4, !dbg !6363
  br label %for.cond, !dbg !6365

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %i, align 4, !dbg !6366
  %10 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !6368
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %10, i32 0, i32 13, !dbg !6369
  %11 = load i32, i32* %chanlist_len, align 8, !dbg !6369
  %cmp = icmp ult i32 %9, %11, !dbg !6370
  br i1 %cmp, label %for.body, label %for.end, !dbg !6371

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !6372, metadata !DIExpression()), !dbg !6374
  %12 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !6375
  %chanlist3 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %12, i32 0, i32 12, !dbg !6375
  %13 = load i32*, i32** %chanlist3, align 8, !dbg !6375
  %14 = load i32, i32* %i, align 4, !dbg !6375
  %idxprom4 = sext i32 %14 to i64, !dbg !6375
  %arrayidx5 = getelementptr i32, i32* %13, i64 %idxprom4, !dbg !6375
  %15 = load i32, i32* %arrayidx5, align 4, !dbg !6375
  %and6 = and i32 %15, 65535, !dbg !6375
  store i32 %and6, i32* %chan, align 4, !dbg !6374
  %16 = load i32, i32* %chan_mask, align 4, !dbg !6376
  %17 = load i32, i32* %chan, align 4, !dbg !6378
  %shl = shl i32 1, %17, !dbg !6379
  %and7 = and i32 %16, %shl, !dbg !6380
  %tobool = icmp ne i32 %and7, 0, !dbg !6380
  br i1 %tobool, label %if.then, label %if.end, !dbg !6381

if.then:                                          ; preds = %for.body
  store i32 -22, i32* %retval, align 4, !dbg !6382
  br label %return, !dbg !6382

if.end:                                           ; preds = %for.body
  %18 = load i32, i32* %chan, align 4, !dbg !6384
  %shl8 = shl i32 1, %18, !dbg !6385
  %19 = load i32, i32* %chan_mask, align 4, !dbg !6386
  %or = or i32 %19, %shl8, !dbg !6386
  store i32 %or, i32* %chan_mask, align 4, !dbg !6386
  %20 = load %struct.pci224_board*, %struct.pci224_board** %board, align 8, !dbg !6387
  %ao_range_check9 = getelementptr inbounds %struct.pci224_board, %struct.pci224_board* %20, i32 0, i32 5, !dbg !6389
  %21 = load i8*, i8** %ao_range_check9, align 8, !dbg !6389
  %22 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !6390
  %chanlist10 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %22, i32 0, i32 12, !dbg !6390
  %23 = load i32*, i32** %chanlist10, align 8, !dbg !6390
  %24 = load i32, i32* %i, align 4, !dbg !6390
  %idxprom11 = sext i32 %24 to i64, !dbg !6390
  %arrayidx12 = getelementptr i32, i32* %23, i64 %idxprom11, !dbg !6390
  %25 = load i32, i32* %arrayidx12, align 4, !dbg !6390
  %shr13 = lshr i32 %25, 16, !dbg !6390
  %and14 = and i32 %shr13, 255, !dbg !6390
  %idxprom15 = zext i32 %and14 to i64, !dbg !6387
  %arrayidx16 = getelementptr i8, i8* %21, i64 %idxprom15, !dbg !6387
  %26 = load i8, i8* %arrayidx16, align 1, !dbg !6387
  %conv17 = zext i8 %26 to i32, !dbg !6387
  %27 = load i32, i32* %range_check_0, align 4, !dbg !6391
  %cmp18 = icmp ne i32 %conv17, %27, !dbg !6392
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !6393

if.then20:                                        ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !6394
  br label %return, !dbg !6394

if.end21:                                         ; preds = %if.end
  br label %for.inc, !dbg !6396

for.inc:                                          ; preds = %if.end21
  %28 = load i32, i32* %i, align 4, !dbg !6397
  %inc = add i32 %28, 1, !dbg !6397
  store i32 %inc, i32* %i, align 4, !dbg !6397
  br label %for.cond, !dbg !6398, !llvm.loop !6399

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !6401
  br label %return, !dbg !6401

return:                                           ; preds = %for.end, %if.then20, %if.then
  %29 = load i32, i32* %retval, align 4, !dbg !6402
  ret i32 %29, !dbg !6402
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pci224_ao_stop(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #2 !dbg !6403 {
entry:
  %lock.addr.i69 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i69, metadata !5003, metadata !DIExpression()), !dbg !6404
  %flags.addr.i70 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i70, metadata !5009, metadata !DIExpression()), !dbg !6406
  %tmp.i71 = alloca i32, align 4
  %tmp8.i72 = alloca i32, align 4
  %lock.addr.i67 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i67, metadata !4385, metadata !DIExpression()), !dbg !6407
  %lock.addr.i65 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i65, metadata !5003, metadata !DIExpression()), !dbg !6415
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !5009, metadata !DIExpression()), !dbg !6417
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4385, metadata !DIExpression()), !dbg !6418
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %devpriv = alloca %struct.pci224_private*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  %__dummy27 = alloca i64, align 8
  %__dummy228 = alloca i64, align 8
  %tmp31 = alloca i32, align 4
  %__dummy35 = alloca i64, align 8
  %__dummy236 = alloca i64, align 8
  %tmp39 = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !6425, metadata !DIExpression()), !dbg !6426
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !6427, metadata !DIExpression()), !dbg !6428
  call void @llvm.dbg.declare(metadata %struct.pci224_private** %devpriv, metadata !6429, metadata !DIExpression()), !dbg !6430
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6431
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !6432
  %1 = load i8*, i8** %private, align 8, !dbg !6432
  %2 = bitcast i8* %1 to %struct.pci224_private*, !dbg !6431
  store %struct.pci224_private* %2, %struct.pci224_private** %devpriv, align 8, !dbg !6430
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !6433, metadata !DIExpression()), !dbg !6434
  %3 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !6435
  %state = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %3, i32 0, i32 1, !dbg !6437
  %call = call zeroext i1 @test_and_clear_bit(i64 0, i64* %state) #11, !dbg !6438
  br i1 %call, label %if.end, label %if.then, !dbg !6439

if.then:                                          ; preds = %entry
  br label %return, !dbg !6440

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !6441

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !6442

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !6443, metadata !DIExpression()), !dbg !6445
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !6446, metadata !DIExpression()), !dbg !6445
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !6445
  %conv = zext i1 %cmp to i32, !dbg !6445
  store i32 1, i32* %tmp, align 4, !dbg !6445
  %4 = load i32, i32* %tmp, align 4, !dbg !6445
  br label %do.body2, !dbg !6447

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !6448

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !6449

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !6451, metadata !DIExpression()), !dbg !6454
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !6455, metadata !DIExpression()), !dbg !6454
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !6454
  %conv8 = zext i1 %cmp7 to i32, !dbg !6454
  store i32 1, i32* %tmp9, align 4, !dbg !6454
  %5 = load i32, i32* %tmp9, align 4, !dbg !6454
  %call10 = call i64 @arch_local_irq_save() #11, !dbg !6456
  store i64 %call10, i64* %flags, align 8, !dbg !6456
  br label %do.end, !dbg !6456

do.end:                                           ; preds = %do.body4
  br label %do.end11, !dbg !6449

do.end11:                                         ; preds = %do.end
  br label %do.body12, !dbg !6448

do.body12:                                        ; preds = %do.end11
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !6457, !srcloc !6458
  br label %do.body13, !dbg !6457

do.body13:                                        ; preds = %do.body12
  %6 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !6459
  %ao_spinlock = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %6, i32 0, i32 2, !dbg !6459
  store %struct.spinlock* %ao_spinlock, %struct.spinlock** %lock.addr.i, align 8
  %7 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !6460
  %8 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %7, i32 0, i32 0, !dbg !6461
  %rlock.i = bitcast %union.anon.3* %8 to %struct.raw_spinlock*, !dbg !6461
  br label %do.end15, !dbg !6459

do.end15:                                         ; preds = %do.body13
  br label %do.end16, !dbg !6457

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !6448

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !6447

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !6442

do.end19:                                         ; preds = %do.end18
  %9 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !6462
  %intsce = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %9, i32 0, i32 9, !dbg !6463
  store i8 0, i8* %intsce, align 2, !dbg !6464
  %10 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !6465
  %iobase1 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %10, i32 0, i32 0, !dbg !6466
  %11 = load i64, i64* %iobase1, align 8, !dbg !6466
  %add = add i64 %11, 30, !dbg !6467
  %conv20 = trunc i64 %add to i32, !dbg !6465
  call void @outb(i8 zeroext 0, i32 %conv20) #11, !dbg !6468
  br label %while.cond, !dbg !6469

while.cond:                                       ; preds = %do.end51, %do.end19
  %12 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !6470
  %intr_running = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %12, i32 0, i32 6, !dbg !6471
  %13 = load i16, i16* %intr_running, align 4, !dbg !6471
  %conv21 = sext i16 %13 to i32, !dbg !6470
  %tobool = icmp ne i32 %conv21, 0, !dbg !6470
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !6472

land.rhs:                                         ; preds = %while.cond
  %14 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !6473
  %intr_cpuid = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %14, i32 0, i32 5, !dbg !6474
  %15 = load i32, i32* %intr_cpuid, align 8, !dbg !6474
  %cmp22 = icmp ne i32 %15, 0, !dbg !6475
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %16 = phi i1 [ false, %while.cond ], [ %cmp22, %land.rhs ], !dbg !6476
  br i1 %16, label %while.body, label %while.end, !dbg !6469

while.body:                                       ; preds = %land.end
  %17 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !6477
  %ao_spinlock24 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %17, i32 0, i32 2, !dbg !6478
  %18 = load i64, i64* %flags, align 8, !dbg !6479
  store %struct.spinlock* %ao_spinlock24, %struct.spinlock** %lock.addr.i65, align 8
  store i64 %18, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !294, metadata !5186, metadata !DIExpression()) #10, !dbg !6480
  call void @llvm.dbg.declare(metadata !294, metadata !5190, metadata !DIExpression()) #10, !dbg !6480
  store i32 1, i32* %tmp.i, align 4, !dbg !6480
  %19 = load i32, i32* %tmp.i, align 4, !dbg !6480
  call void @llvm.dbg.declare(metadata !294, metadata !5191, metadata !DIExpression()) #10, !dbg !6481
  call void @llvm.dbg.declare(metadata !294, metadata !5197, metadata !DIExpression()) #10, !dbg !6481
  store i32 1, i32* %tmp8.i, align 4, !dbg !6481
  %20 = load i32, i32* %tmp8.i, align 4, !dbg !6481
  %21 = load i64, i64* %flags.addr.i, align 8, !dbg !6482
  call void @arch_local_irq_restore(i64 %21) #14, !dbg !6482
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !6483, !srcloc !5201
  %22 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i65, align 8, !dbg !6484
  %23 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %22, i32 0, i32 0, !dbg !6484
  %rlock.i66 = bitcast %union.anon.3* %23 to %struct.raw_spinlock*, !dbg !6484
  br label %do.body25, !dbg !6485

do.body25:                                        ; preds = %while.body
  br label %do.body26, !dbg !6486

do.body26:                                        ; preds = %do.body25
  call void @llvm.dbg.declare(metadata i64* %__dummy27, metadata !6487, metadata !DIExpression()), !dbg !6489
  call void @llvm.dbg.declare(metadata i64* %__dummy228, metadata !6490, metadata !DIExpression()), !dbg !6489
  %cmp29 = icmp eq i64* %__dummy27, %__dummy228, !dbg !6489
  %conv30 = zext i1 %cmp29 to i32, !dbg !6489
  store i32 1, i32* %tmp31, align 4, !dbg !6489
  %24 = load i32, i32* %tmp31, align 4, !dbg !6489
  br label %do.body32, !dbg !6491

do.body32:                                        ; preds = %do.body26
  br label %do.body33, !dbg !6492

do.body33:                                        ; preds = %do.body32
  br label %do.body34, !dbg !6493

do.body34:                                        ; preds = %do.body33
  call void @llvm.dbg.declare(metadata i64* %__dummy35, metadata !6495, metadata !DIExpression()), !dbg !6498
  call void @llvm.dbg.declare(metadata i64* %__dummy236, metadata !6499, metadata !DIExpression()), !dbg !6498
  %cmp37 = icmp eq i64* %__dummy35, %__dummy236, !dbg !6498
  %conv38 = zext i1 %cmp37 to i32, !dbg !6498
  store i32 1, i32* %tmp39, align 4, !dbg !6498
  %25 = load i32, i32* %tmp39, align 4, !dbg !6498
  %call40 = call i64 @arch_local_irq_save() #11, !dbg !6500
  store i64 %call40, i64* %flags, align 8, !dbg !6500
  br label %do.end41, !dbg !6500

do.end41:                                         ; preds = %do.body34
  br label %do.end42, !dbg !6493

do.end42:                                         ; preds = %do.end41
  br label %do.body43, !dbg !6492

do.body43:                                        ; preds = %do.end42
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !6501, !srcloc !6502
  br label %do.body44, !dbg !6501

do.body44:                                        ; preds = %do.body43
  %26 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !6503
  %ao_spinlock45 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %26, i32 0, i32 2, !dbg !6503
  store %struct.spinlock* %ao_spinlock45, %struct.spinlock** %lock.addr.i67, align 8
  %27 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i67, align 8, !dbg !6504
  %28 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %27, i32 0, i32 0, !dbg !6505
  %rlock.i68 = bitcast %union.anon.3* %28 to %struct.raw_spinlock*, !dbg !6505
  br label %do.end47, !dbg !6503

do.end47:                                         ; preds = %do.body44
  br label %do.end48, !dbg !6501

do.end48:                                         ; preds = %do.end47
  br label %do.end49, !dbg !6492

do.end49:                                         ; preds = %do.end48
  br label %do.end50, !dbg !6491

do.end50:                                         ; preds = %do.end49
  br label %do.end51, !dbg !6486

do.end51:                                         ; preds = %do.end50
  br label %while.cond, !dbg !6469, !llvm.loop !6506

while.end:                                        ; preds = %land.end
  %29 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !6508
  %ao_spinlock52 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %29, i32 0, i32 2, !dbg !6509
  %30 = load i64, i64* %flags, align 8, !dbg !6510
  store %struct.spinlock* %ao_spinlock52, %struct.spinlock** %lock.addr.i69, align 8
  store i64 %30, i64* %flags.addr.i70, align 8
  call void @llvm.dbg.declare(metadata !294, metadata !5186, metadata !DIExpression()) #10, !dbg !6511
  call void @llvm.dbg.declare(metadata !294, metadata !5190, metadata !DIExpression()) #10, !dbg !6511
  store i32 1, i32* %tmp.i71, align 4, !dbg !6511
  %31 = load i32, i32* %tmp.i71, align 4, !dbg !6511
  call void @llvm.dbg.declare(metadata !294, metadata !5191, metadata !DIExpression()) #10, !dbg !6512
  call void @llvm.dbg.declare(metadata !294, metadata !5197, metadata !DIExpression()) #10, !dbg !6512
  store i32 1, i32* %tmp8.i72, align 4, !dbg !6512
  %32 = load i32, i32* %tmp8.i72, align 4, !dbg !6512
  %33 = load i64, i64* %flags.addr.i70, align 8, !dbg !6513
  call void @arch_local_irq_restore(i64 %33) #14, !dbg !6513
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !6514, !srcloc !5201
  %34 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i69, align 8, !dbg !6515
  %35 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %34, i32 0, i32 0, !dbg !6515
  %rlock.i73 = bitcast %union.anon.3* %35 to %struct.raw_spinlock*, !dbg !6515
  %36 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6516
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %36, i32 0, i32 18, !dbg !6517
  %37 = load i64, i64* %iobase, align 8, !dbg !6517
  %add53 = add i64 %37, 6, !dbg !6518
  %conv54 = trunc i64 %add53 to i32, !dbg !6516
  call void @outw(i16 zeroext 0, i32 %conv54) #11, !dbg !6519
  %38 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !6520
  %daccon = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %38, i32 0, i32 7, !dbg !6520
  %39 = load i16, i16* %daccon, align 2, !dbg !6520
  %conv55 = zext i16 %39 to i32, !dbg !6520
  %and = and i32 %conv55, -3592, !dbg !6520
  %or = or i32 %and, 1, !dbg !6520
  %conv56 = trunc i32 %or to i16, !dbg !6520
  %40 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !6521
  %daccon57 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %40, i32 0, i32 7, !dbg !6522
  store i16 %conv56, i16* %daccon57, align 2, !dbg !6523
  %41 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !6524
  %daccon58 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %41, i32 0, i32 7, !dbg !6525
  %42 = load i16, i16* %daccon58, align 2, !dbg !6525
  %conv59 = zext i16 %42 to i64, !dbg !6524
  %or60 = or i64 %conv59, 4096, !dbg !6526
  %conv61 = trunc i64 %or60 to i16, !dbg !6524
  %43 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6527
  %iobase62 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %43, i32 0, i32 18, !dbg !6528
  %44 = load i64, i64* %iobase62, align 8, !dbg !6528
  %add63 = add i64 %44, 2, !dbg !6529
  %conv64 = trunc i64 %add63 to i32, !dbg !6527
  call void @outw(i16 zeroext %conv61, i32 %conv64) #11, !dbg !6530
  br label %return, !dbg !6531

return:                                           ; preds = %while.end, %if.then
  ret void, !dbg !6531
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_and_clear_bit(i64 %nr, i64* %addr) #2 !dbg !6532 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !6535, metadata !DIExpression()), !dbg !6537
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !6539, metadata !DIExpression()), !dbg !6540
  %c.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %c.i, metadata !6541, metadata !DIExpression()), !dbg !6543
  %tmp.i = alloca i8, align 1
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !6544, metadata !DIExpression()), !dbg !6546
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !6548, metadata !DIExpression()), !dbg !6549
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !6550, metadata !DIExpression()), !dbg !6551
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !6552, metadata !DIExpression()), !dbg !6553
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !6554
  %1 = load i64, i64* %nr.addr, align 8, !dbg !6555
  %div = sdiv i64 %1, 64, !dbg !6555
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !6556
  %2 = bitcast i64* %add.ptr to i8*, !dbg !6554
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !6557
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !6558
  %conv.i = trunc i64 %4 to i32, !dbg !6558
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #14, !dbg !6559
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !6560
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !6560
  call void @kcsan_check_access(i8* %5, i64 %6, i32 7) #14, !dbg !6560
  %7 = load i64, i64* %nr.addr, align 8, !dbg !6561
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !6562
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !6543
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !6543
  %11 = call i8 asm sideeffect " btrq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10, i64* %9) #10, !dbg !6543, !srcloc !6563
  store i8 %11, i8* %c.i, align 1, !dbg !6543
  %12 = load i8, i8* %c.i, align 1, !dbg !6543
  %tobool.i = trunc i8 %12 to i1, !dbg !6543
  %frombool.i = zext i1 %tobool.i to i8, !dbg !6543
  store i8 %frombool.i, i8* %tmp.i, align 1, !dbg !6543
  %13 = load i8, i8* %tmp.i, align 1, !dbg !6543
  %tobool1.i = trunc i8 %13 to i1, !dbg !6543
  ret i1 %tobool1.i, !dbg !6564
}

; Function Attrs: noredzone
declare dso_local i32 @request_threaded_irq(i32, i32 (i32, i8*)*, i32 (i32, i8*)*, i64, i8*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @inb(i32 %port) #2 !dbg !6565 {
entry:
  %port.addr = alloca i32, align 4
  %value = alloca i8, align 1
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !6568, metadata !DIExpression()), !dbg !6569
  call void @llvm.dbg.declare(metadata i8* %value, metadata !6570, metadata !DIExpression()), !dbg !6569
  %0 = load i32, i32* %port.addr, align 4, !dbg !6569
  %1 = call i8 asm sideeffect "inb ${1:w}, ${0:b}", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #10, !dbg !6569, !srcloc !6571
  store i8 %1, i8* %value, align 1, !dbg !6569
  %2 = load i8, i8* %value, align 1, !dbg !6569
  ret i8 %2, !dbg !6569
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pci224_ao_handle_fifo(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #2 !dbg !6572 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %devpriv = alloca %struct.pci224_private*, align 8
  %cmd = alloca %struct.comedi_cmd*, align 8
  %num_scans = alloca i32, align 4
  %room = alloca i32, align 4
  %dacstat = alloca i16, align 2
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %trig = alloca i16, align 2
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !6573, metadata !DIExpression()), !dbg !6574
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !6575, metadata !DIExpression()), !dbg !6576
  call void @llvm.dbg.declare(metadata %struct.pci224_private** %devpriv, metadata !6577, metadata !DIExpression()), !dbg !6578
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6579
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !6580
  %1 = load i8*, i8** %private, align 8, !dbg !6580
  %2 = bitcast i8* %1 to %struct.pci224_private*, !dbg !6579
  store %struct.pci224_private* %2, %struct.pci224_private** %devpriv, align 8, !dbg !6578
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd, metadata !6581, metadata !DIExpression()), !dbg !6582
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6583
  %async = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %3, i32 0, i32 7, !dbg !6584
  %4 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !6584
  %cmd1 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %4, i32 0, i32 17, !dbg !6585
  store %struct.comedi_cmd* %cmd1, %struct.comedi_cmd** %cmd, align 8, !dbg !6582
  call void @llvm.dbg.declare(metadata i32* %num_scans, metadata !6586, metadata !DIExpression()), !dbg !6587
  %5 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6588
  %call = call i32 @comedi_nscans_left(%struct.comedi_subdevice* %5, i32 0) #11, !dbg !6589
  store i32 %call, i32* %num_scans, align 4, !dbg !6587
  call void @llvm.dbg.declare(metadata i32* %room, metadata !6590, metadata !DIExpression()), !dbg !6591
  call void @llvm.dbg.declare(metadata i16* %dacstat, metadata !6592, metadata !DIExpression()), !dbg !6593
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6594, metadata !DIExpression()), !dbg !6595
  call void @llvm.dbg.declare(metadata i32* %n, metadata !6596, metadata !DIExpression()), !dbg !6597
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6598
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 18, !dbg !6599
  %7 = load i64, i64* %iobase, align 8, !dbg !6599
  %add = add i64 %7, 2, !dbg !6600
  %conv = trunc i64 %add to i32, !dbg !6598
  %call2 = call zeroext i16 @inw(i32 %conv) #11, !dbg !6601
  store i16 %call2, i16* %dacstat, align 2, !dbg !6602
  %8 = load i16, i16* %dacstat, align 2, !dbg !6603
  %conv3 = zext i16 %8 to i32, !dbg !6603
  %and = and i32 %conv3, 28672, !dbg !6604
  switch i32 %and, label %sw.default [
    i32 4096, label %sw.bb
    i32 0, label %sw.bb10
    i32 16384, label %sw.bb11
  ], !dbg !6605

sw.bb:                                            ; preds = %entry
  store i32 4096, i32* %room, align 4, !dbg !6606
  %9 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !6608
  %stop_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %9, i32 0, i32 10, !dbg !6610
  %10 = load i32, i32* %stop_src, align 8, !dbg !6610
  %cmp = icmp eq i32 %10, 32, !dbg !6611
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !6612

land.lhs.true:                                    ; preds = %sw.bb
  %11 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6613
  %async5 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %11, i32 0, i32 7, !dbg !6614
  %12 = load %struct.comedi_async*, %struct.comedi_async** %async5, align 8, !dbg !6614
  %scans_done = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %12, i32 0, i32 11, !dbg !6615
  %13 = load i32, i32* %scans_done, align 8, !dbg !6615
  %14 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !6616
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %14, i32 0, i32 11, !dbg !6617
  %15 = load i32, i32* %stop_arg, align 4, !dbg !6617
  %cmp6 = icmp uge i32 %13, %15, !dbg !6618
  br i1 %cmp6, label %if.then, label %if.end, !dbg !6619

if.then:                                          ; preds = %land.lhs.true
  %16 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6620
  %async8 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %16, i32 0, i32 7, !dbg !6622
  %17 = load %struct.comedi_async*, %struct.comedi_async** %async8, align 8, !dbg !6622
  %events = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %17, i32 0, i32 16, !dbg !6623
  %18 = load i32, i32* %events, align 4, !dbg !6624
  %or = or i32 %18, 2, !dbg !6624
  store i32 %or, i32* %events, align 4, !dbg !6624
  %19 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6625
  %20 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6626
  %call9 = call i32 @comedi_handle_events(%struct.comedi_device* %19, %struct.comedi_subdevice* %20) #11, !dbg !6627
  br label %return, !dbg !6628

if.end:                                           ; preds = %land.lhs.true, %sw.bb
  br label %sw.epilog, !dbg !6629

sw.bb10:                                          ; preds = %entry
  store i32 2048, i32* %room, align 4, !dbg !6630
  br label %sw.epilog, !dbg !6631

sw.bb11:                                          ; preds = %entry
  store i32 1, i32* %room, align 4, !dbg !6632
  br label %sw.epilog, !dbg !6633

sw.default:                                       ; preds = %entry
  store i32 0, i32* %room, align 4, !dbg !6634
  br label %sw.epilog, !dbg !6635

sw.epilog:                                        ; preds = %sw.default, %sw.bb11, %sw.bb10, %if.end
  %21 = load i32, i32* %room, align 4, !dbg !6636
  %cmp12 = icmp uge i32 %21, 2048, !dbg !6638
  br i1 %cmp12, label %if.then14, label %if.end22, !dbg !6639

if.then14:                                        ; preds = %sw.epilog
  %22 = load i32, i32* %num_scans, align 4, !dbg !6640
  %cmp15 = icmp eq i32 %22, 0, !dbg !6643
  br i1 %cmp15, label %if.then17, label %if.end21, !dbg !6644

if.then17:                                        ; preds = %if.then14
  %23 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6645
  %class_dev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %23, i32 0, i32 4, !dbg !6645
  %24 = load %struct.device*, %struct.device** %class_dev, align 8, !dbg !6645
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0)) #12, !dbg !6645
  %25 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6647
  %async18 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %25, i32 0, i32 7, !dbg !6648
  %26 = load %struct.comedi_async*, %struct.comedi_async** %async18, align 8, !dbg !6648
  %events19 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %26, i32 0, i32 16, !dbg !6649
  %27 = load i32, i32* %events19, align 4, !dbg !6650
  %or20 = or i32 %27, 32, !dbg !6650
  store i32 %or20, i32* %events19, align 4, !dbg !6650
  br label %if.end21, !dbg !6651

if.end21:                                         ; preds = %if.then17, %if.then14
  br label %if.end22, !dbg !6652

if.end22:                                         ; preds = %if.end21, %sw.epilog
  %28 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !6653
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %28, i32 0, i32 13, !dbg !6654
  %29 = load i32, i32* %chanlist_len, align 8, !dbg !6654
  %30 = load i32, i32* %room, align 4, !dbg !6655
  %div = udiv i32 %30, %29, !dbg !6655
  store i32 %div, i32* %room, align 4, !dbg !6655
  %31 = load i32, i32* %num_scans, align 4, !dbg !6656
  %32 = load i32, i32* %room, align 4, !dbg !6658
  %cmp23 = icmp ugt i32 %31, %32, !dbg !6659
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !6660

if.then25:                                        ; preds = %if.end22
  %33 = load i32, i32* %room, align 4, !dbg !6661
  store i32 %33, i32* %num_scans, align 4, !dbg !6662
  br label %if.end26, !dbg !6663

if.end26:                                         ; preds = %if.then25, %if.end22
  store i32 0, i32* %n, align 4, !dbg !6664
  br label %for.cond, !dbg !6666

for.cond:                                         ; preds = %for.inc43, %if.end26
  %34 = load i32, i32* %n, align 4, !dbg !6667
  %35 = load i32, i32* %num_scans, align 4, !dbg !6669
  %cmp27 = icmp ult i32 %34, %35, !dbg !6670
  br i1 %cmp27, label %for.body, label %for.end45, !dbg !6671

for.body:                                         ; preds = %for.cond
  %36 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6672
  %37 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !6674
  %ao_scan_vals = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %37, i32 0, i32 3, !dbg !6675
  %38 = load i16*, i16** %ao_scan_vals, align 8, !dbg !6675
  %arrayidx = getelementptr i16, i16* %38, i64 0, !dbg !6674
  %39 = bitcast i16* %arrayidx to i8*, !dbg !6676
  %40 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !6677
  %chanlist_len29 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %40, i32 0, i32 13, !dbg !6678
  %41 = load i32, i32* %chanlist_len29, align 8, !dbg !6678
  %call30 = call i32 @comedi_buf_read_samples(%struct.comedi_subdevice* %36, i8* %39, i32 %41) #11, !dbg !6679
  store i32 0, i32* %i, align 4, !dbg !6680
  br label %for.cond31, !dbg !6682

for.cond31:                                       ; preds = %for.inc, %for.body
  %42 = load i32, i32* %i, align 4, !dbg !6683
  %43 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !6685
  %chanlist_len32 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %43, i32 0, i32 13, !dbg !6686
  %44 = load i32, i32* %chanlist_len32, align 8, !dbg !6686
  %cmp33 = icmp ult i32 %42, %44, !dbg !6687
  br i1 %cmp33, label %for.body35, label %for.end, !dbg !6688

for.body35:                                       ; preds = %for.cond31
  %45 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !6689
  %ao_scan_vals36 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %45, i32 0, i32 3, !dbg !6691
  %46 = load i16*, i16** %ao_scan_vals36, align 8, !dbg !6691
  %47 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !6692
  %ao_scan_order = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %47, i32 0, i32 4, !dbg !6693
  %48 = load i8*, i8** %ao_scan_order, align 8, !dbg !6693
  %49 = load i32, i32* %i, align 4, !dbg !6694
  %idxprom = zext i32 %49 to i64, !dbg !6692
  %arrayidx37 = getelementptr i8, i8* %48, i64 %idxprom, !dbg !6692
  %50 = load i8, i8* %arrayidx37, align 1, !dbg !6692
  %idxprom38 = zext i8 %50 to i64, !dbg !6689
  %arrayidx39 = getelementptr i16, i16* %46, i64 %idxprom38, !dbg !6689
  %51 = load i16, i16* %arrayidx39, align 2, !dbg !6689
  %52 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6695
  %iobase40 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %52, i32 0, i32 18, !dbg !6696
  %53 = load i64, i64* %iobase40, align 8, !dbg !6696
  %add41 = add i64 %53, 0, !dbg !6697
  %conv42 = trunc i64 %add41 to i32, !dbg !6695
  call void @outw(i16 zeroext %51, i32 %conv42) #11, !dbg !6698
  br label %for.inc, !dbg !6699

for.inc:                                          ; preds = %for.body35
  %54 = load i32, i32* %i, align 4, !dbg !6700
  %inc = add i32 %54, 1, !dbg !6700
  store i32 %inc, i32* %i, align 4, !dbg !6700
  br label %for.cond31, !dbg !6701, !llvm.loop !6702

for.end:                                          ; preds = %for.cond31
  br label %for.inc43, !dbg !6704

for.inc43:                                        ; preds = %for.end
  %55 = load i32, i32* %n, align 4, !dbg !6705
  %inc44 = add i32 %55, 1, !dbg !6705
  store i32 %inc44, i32* %n, align 4, !dbg !6705
  br label %for.cond, !dbg !6706, !llvm.loop !6707

for.end45:                                        ; preds = %for.cond
  %56 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !6709
  %stop_src46 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %56, i32 0, i32 10, !dbg !6711
  %57 = load i32, i32* %stop_src46, align 8, !dbg !6711
  %cmp47 = icmp eq i32 %57, 32, !dbg !6712
  br i1 %cmp47, label %land.lhs.true49, label %if.end64, !dbg !6713

land.lhs.true49:                                  ; preds = %for.end45
  %58 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6714
  %async50 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %58, i32 0, i32 7, !dbg !6715
  %59 = load %struct.comedi_async*, %struct.comedi_async** %async50, align 8, !dbg !6715
  %scans_done51 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %59, i32 0, i32 11, !dbg !6716
  %60 = load i32, i32* %scans_done51, align 8, !dbg !6716
  %61 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !6717
  %stop_arg52 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %61, i32 0, i32 11, !dbg !6718
  %62 = load i32, i32* %stop_arg52, align 4, !dbg !6718
  %cmp53 = icmp uge i32 %60, %62, !dbg !6719
  br i1 %cmp53, label %if.then55, label %if.end64, !dbg !6720

if.then55:                                        ; preds = %land.lhs.true49
  %63 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !6721
  %daccon = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %63, i32 0, i32 7, !dbg !6721
  %64 = load i16, i16* %daccon, align 2, !dbg !6721
  %conv56 = zext i16 %64 to i32, !dbg !6721
  %and57 = and i32 %conv56, -3585, !dbg !6721
  %conv58 = trunc i32 %and57 to i16, !dbg !6721
  %65 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !6723
  %daccon59 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %65, i32 0, i32 7, !dbg !6724
  store i16 %conv58, i16* %daccon59, align 2, !dbg !6725
  %66 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !6726
  %daccon60 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %66, i32 0, i32 7, !dbg !6727
  %67 = load i16, i16* %daccon60, align 2, !dbg !6727
  %68 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6728
  %iobase61 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %68, i32 0, i32 18, !dbg !6729
  %69 = load i64, i64* %iobase61, align 8, !dbg !6729
  %add62 = add i64 %69, 2, !dbg !6730
  %conv63 = trunc i64 %add62 to i32, !dbg !6728
  call void @outw(i16 zeroext %67, i32 %conv63) #11, !dbg !6731
  br label %if.end64, !dbg !6732

if.end64:                                         ; preds = %if.then55, %land.lhs.true49, %for.end45
  %70 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !6733
  %daccon65 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %70, i32 0, i32 7, !dbg !6735
  %71 = load i16, i16* %daccon65, align 2, !dbg !6735
  %conv66 = zext i16 %71 to i32, !dbg !6733
  %and67 = and i32 %conv66, 7, !dbg !6736
  %cmp68 = icmp eq i32 %and67, 0, !dbg !6737
  br i1 %cmp68, label %if.then70, label %if.end91, !dbg !6738

if.then70:                                        ; preds = %if.end64
  call void @llvm.dbg.declare(metadata i16* %trig, metadata !6739, metadata !DIExpression()), !dbg !6741
  %72 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !6742
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %72, i32 0, i32 4, !dbg !6744
  %73 = load i32, i32* %scan_begin_src, align 8, !dbg !6744
  %cmp71 = icmp eq i32 %73, 16, !dbg !6745
  br i1 %cmp71, label %if.then73, label %if.else, !dbg !6746

if.then73:                                        ; preds = %if.then70
  store i16 4, i16* %trig, align 2, !dbg !6747
  br label %if.end78, !dbg !6749

if.else:                                          ; preds = %if.then70
  %74 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !6750
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %74, i32 0, i32 5, !dbg !6753
  %75 = load i32, i32* %scan_begin_arg, align 4, !dbg !6753
  %and74 = and i32 %75, -2147483648, !dbg !6754
  %tobool = icmp ne i32 %and74, 0, !dbg !6754
  br i1 %tobool, label %if.then75, label %if.else76, !dbg !6755

if.then75:                                        ; preds = %if.else
  store i16 3, i16* %trig, align 2, !dbg !6756
  br label %if.end77, !dbg !6757

if.else76:                                        ; preds = %if.else
  store i16 2, i16* %trig, align 2, !dbg !6758
  br label %if.end77

if.end77:                                         ; preds = %if.else76, %if.then75
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.then73
  %76 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !6759
  %daccon79 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %76, i32 0, i32 7, !dbg !6759
  %77 = load i16, i16* %daccon79, align 2, !dbg !6759
  %conv80 = zext i16 %77 to i32, !dbg !6759
  %and81 = and i32 %conv80, -8, !dbg !6759
  %78 = load i16, i16* %trig, align 2, !dbg !6759
  %conv82 = zext i16 %78 to i32, !dbg !6759
  %and83 = and i32 %conv82, 7, !dbg !6759
  %or84 = or i32 %and81, %and83, !dbg !6759
  %conv85 = trunc i32 %or84 to i16, !dbg !6759
  %79 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !6760
  %daccon86 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %79, i32 0, i32 7, !dbg !6761
  store i16 %conv85, i16* %daccon86, align 2, !dbg !6762
  %80 = load %struct.pci224_private*, %struct.pci224_private** %devpriv, align 8, !dbg !6763
  %daccon87 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %80, i32 0, i32 7, !dbg !6764
  %81 = load i16, i16* %daccon87, align 2, !dbg !6764
  %82 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6765
  %iobase88 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %82, i32 0, i32 18, !dbg !6766
  %83 = load i64, i64* %iobase88, align 8, !dbg !6766
  %add89 = add i64 %83, 2, !dbg !6767
  %conv90 = trunc i64 %add89 to i32, !dbg !6765
  call void @outw(i16 zeroext %81, i32 %conv90) #11, !dbg !6768
  br label %if.end91, !dbg !6769

if.end91:                                         ; preds = %if.end78, %if.end64
  %84 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6770
  %85 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6771
  %call92 = call i32 @comedi_handle_events(%struct.comedi_device* %84, %struct.comedi_subdevice* %85) #11, !dbg !6772
  br label %return, !dbg !6773

return:                                           ; preds = %if.end91, %if.then
  ret void, !dbg !6773
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_nscans_left(%struct.comedi_subdevice*, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_buf_read_samples(%struct.comedi_subdevice*, i8*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @amplc_pci224_pci_probe(%struct.pci_dev* %dev, %struct.pci_device_id* %id) #2 !dbg !6774 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %id.addr = alloca %struct.pci_device_id*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !6775, metadata !DIExpression()), !dbg !6776
  store %struct.pci_device_id* %id, %struct.pci_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_device_id** %id.addr, metadata !6777, metadata !DIExpression()), !dbg !6778
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !6779
  %1 = load %struct.pci_device_id*, %struct.pci_device_id** %id.addr, align 8, !dbg !6780
  %driver_data = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %1, i32 0, i32 6, !dbg !6781
  %2 = load i64, i64* %driver_data, align 8, !dbg !6781
  %call = call i32 @comedi_pci_auto_config(%struct.pci_dev* %0, %struct.comedi_driver* @amplc_pci224_driver, i64 %2) #11, !dbg !6782
  ret i32 %call, !dbg !6783
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
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { nounwind willreturn }
attributes #8 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { noredzone }
attributes #12 = { cold noredzone }
attributes #13 = { noredzone nounwind readnone }
attributes #14 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4336}
!llvm.module.flags = !{!4337, !4338, !4339, !4340}
!llvm.ident = !{!4341}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_amplc_pci224_driver_init234", scope: !2, file: !3, line: 1139, type: !149, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !145, globals: !158, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/staging/comedi/drivers/amplc_pci224.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !100, !116, !123, !128, !134}
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
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !117, line: 305, baseType: !7, size: 32, elements: !118)
!117 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!118 = !{!119, !120, !121, !122}
!119 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!120 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!121 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!122 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !124, line: 10, baseType: !7, size: 32, elements: !125)
!124 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!125 = !{!126, !127}
!126 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!127 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !129, line: 11, baseType: !7, size: 32, elements: !130)
!129 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!130 = !{!131, !132, !133}
!131 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!132 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!133 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "comedi_cb", file: !135, line: 383, baseType: !7, size: 32, elements: !136)
!135 = !DIFile(filename: "drivers/staging/comedi/drivers/../comedidev.h", directory: "/home/lizy2001/genbc/linux")
!136 = !{!137, !138, !139, !140, !141, !142, !143, !144}
!137 = !DIEnumerator(name: "COMEDI_CB_EOS", value: 1, isUnsigned: true)
!138 = !DIEnumerator(name: "COMEDI_CB_EOA", value: 2, isUnsigned: true)
!139 = !DIEnumerator(name: "COMEDI_CB_BLOCK", value: 4, isUnsigned: true)
!140 = !DIEnumerator(name: "COMEDI_CB_EOBUF", value: 8, isUnsigned: true)
!141 = !DIEnumerator(name: "COMEDI_CB_ERROR", value: 16, isUnsigned: true)
!142 = !DIEnumerator(name: "COMEDI_CB_OVERFLOW", value: 32, isUnsigned: true)
!143 = !DIEnumerator(name: "COMEDI_CB_ERROR_MASK", value: 48, isUnsigned: true)
!144 = !DIEnumerator(name: "COMEDI_CB_CANCEL_MASK", value: 50, isUnsigned: true)
!145 = !{!146, !147, !149, !150, !151, !152, !155}
!146 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !148, line: 148, baseType: !7)
!148 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!150 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!151 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !154)
!154 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !157)
!157 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!158 = !{!0, !159, !166, !172, !177, !182, !187, !4020, !4034, !4036, !4041, !4044, !4046, !4049, !4052, !4333}
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(name: "__exitcall_amplc_pci224_driver_exit", scope: !2, file: !3, line: 1139, type: !161, isLocal: true, isDefinition: true)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !162, line: 117, baseType: !163)
!162 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DISubroutineType(types: !165)
!165 = !{null}
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author235", scope: !2, file: !3, line: 1141, type: !168, isLocal: true, isDefinition: true, align: 8)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 400, elements: !170)
!169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!170 = !{!171}
!171 = !DISubrange(count: 50)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description236", scope: !2, file: !3, line: 1142, type: !174, isLocal: true, isDefinition: true, align: 8)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 640, elements: !175)
!175 = !{!176}
!176 = !DISubrange(count: 80)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file237", scope: !2, file: !3, line: 1143, type: !179, isLocal: true, isDefinition: true, align: 8)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 496, elements: !180)
!180 = !{!181}
!181 = !DISubrange(count: 62)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license238", scope: !2, file: !3, line: 1143, type: !184, isLocal: true, isDefinition: true, align: 8)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 200, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 25)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(name: "amplc_pci224_driver", scope: !2, file: !3, line: 1109, type: !189, isLocal: true, isDefinition: true)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_driver", file: !135, line: 437, size: 576, elements: !190)
!190 = !{!191, !193, !195, !199, !4010, !4011, !4015, !4016, !4019}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !189, file: !135, line: 439, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !189, file: !135, line: 441, baseType: !194, size: 64, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !189, file: !135, line: 442, baseType: !196, size: 64, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !198, line: 76, flags: DIFlagFwdDecl)
!198 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!199 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !189, file: !135, line: 443, baseType: !200, size: 64, offset: 192)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{!146, !203, !4003}
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_device", file: !135, line: 541, size: 1920, elements: !205)
!205 = !{!206, !207, !208, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3991, !3995, !3999}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !204, file: !135, line: 542, baseType: !146, size: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !204, file: !135, line: 543, baseType: !192, size: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "pacer", scope: !204, file: !135, line: 544, baseType: !209, size: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_8254", file: !211, line: 78, size: 704, elements: !212)
!211 = !DIFile(filename: "drivers/staging/comedi/drivers/comedi_8254.h", directory: "/home/lizy2001/genbc/linux")
!212 = !{!213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !228, !229, !233}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "iobase", scope: !210, file: !211, line: 79, baseType: !151, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "mmio", scope: !210, file: !211, line: 80, baseType: !149, size: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "iosize", scope: !210, file: !211, line: 81, baseType: !7, size: 32, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "regshift", scope: !210, file: !211, line: 82, baseType: !7, size: 32, offset: 160)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "osc_base", scope: !210, file: !211, line: 83, baseType: !7, size: 32, offset: 192)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "divisor", scope: !210, file: !211, line: 84, baseType: !7, size: 32, offset: 224)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "divisor1", scope: !210, file: !211, line: 85, baseType: !7, size: 32, offset: 256)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "divisor2", scope: !210, file: !211, line: 86, baseType: !7, size: 32, offset: 288)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "next_div", scope: !210, file: !211, line: 87, baseType: !7, size: 32, offset: 320)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "next_div1", scope: !210, file: !211, line: 88, baseType: !7, size: 32, offset: 352)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "next_div2", scope: !210, file: !211, line: 89, baseType: !7, size: 32, offset: 384)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "clock_src", scope: !210, file: !211, line: 90, baseType: !225, size: 96, offset: 416)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 96, elements: !226)
!226 = !{!227}
!227 = !DISubrange(count: 3)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "gate_src", scope: !210, file: !211, line: 91, baseType: !225, size: 96, offset: 512)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !210, file: !211, line: 92, baseType: !230, size: 24, offset: 608)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 24, elements: !226)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !148, line: 30, baseType: !232)
!232 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "insn_config", scope: !210, file: !211, line: 94, baseType: !234, size: 64, offset: 640)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{!146, !203, !237, !3956, !2722}
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_subdevice", file: !135, line: 153, size: 1792, elements: !239)
!239 = !{!240, !241, !242, !243, !244, !245, !246, !247, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3914, !3927, !3930, !3931, !3932, !3933, !3934, !3935, !3939, !3944, !3945, !3946, !3947, !3951, !3952, !3953, !3954, !3955}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !238, file: !135, line: 154, baseType: !203, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !238, file: !135, line: 155, baseType: !146, size: 32, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !238, file: !135, line: 156, baseType: !146, size: 32, offset: 96)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "n_chan", scope: !238, file: !135, line: 157, baseType: !146, size: 32, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "subdev_flags", scope: !238, file: !135, line: 158, baseType: !146, size: 32, offset: 160)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "len_chanlist", scope: !238, file: !135, line: 159, baseType: !146, size: 32, offset: 192)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !238, file: !135, line: 161, baseType: !149, size: 64, offset: 256)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "async", scope: !238, file: !135, line: 163, baseType: !248, size: 64, offset: 320)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_async", file: !135, line: 347, size: 1536, elements: !250)
!250 = !{!251, !252, !253, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3900, !3901, !3902}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !249, file: !135, line: 348, baseType: !149, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_bufsz", scope: !249, file: !135, line: 349, baseType: !7, size: 32, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "buf_map", scope: !249, file: !135, line: 350, baseType: !254, size: 64, offset: 128)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_buf_map", file: !135, line: 249, size: 256, elements: !256)
!256 = !{!257, !3857, !3863, !3864, !3865}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "dma_hw_dev", scope: !255, file: !135, line: 250, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !260)
!260 = !{!261, !3411, !3412, !3415, !3416, !3467, !3558, !3559, !3560, !3561, !3562, !3571, !3676, !3689, !3692, !3693, !3697, !3699, !3700, !3701, !3705, !3711, !3712, !3715, !3719, !3809, !3810, !3811, !3812, !3813, !3845, !3846, !3847, !3850, !3853, !3854, !3855, !3856}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !259, file: !73, line: 462, baseType: !262, size: 512)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !263, line: 64, size: 512, elements: !264)
!263 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!264 = !{!265, !266, !272, !274, !332, !3262, !3401, !3406, !3407, !3408, !3409, !3410}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !262, file: !263, line: 65, baseType: !194, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !262, file: !263, line: 66, baseType: !267, size: 128, offset: 64)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !148, line: 178, size: 128, elements: !268)
!268 = !{!269, !271}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !267, file: !148, line: 179, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !267, file: !148, line: 179, baseType: !270, size: 64, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !262, file: !263, line: 67, baseType: !273, size: 64, offset: 192)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !262, file: !263, line: 68, baseType: !275, size: 64, offset: 256)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !263, line: 192, size: 704, elements: !277)
!277 = !{!278, !279, !295, !296}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !276, file: !263, line: 193, baseType: !267, size: 128)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !276, file: !263, line: 194, baseType: !280, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !281, line: 83, baseType: !282)
!281 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !281, line: 71, elements: !283)
!283 = !{!284}
!284 = !DIDerivedType(tag: DW_TAG_member, scope: !282, file: !281, line: 72, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !282, file: !281, line: 72, elements: !286)
!286 = !{!287}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !285, file: !281, line: 73, baseType: !288)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !281, line: 20, elements: !289)
!289 = !{!290}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !288, file: !281, line: 21, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !292, line: 25, baseType: !293)
!292 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !292, line: 25, elements: !294)
!294 = !{}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !276, file: !263, line: 195, baseType: !262, size: 512, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !276, file: !263, line: 196, baseType: !297, size: 64, offset: 640)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !299)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !263, line: 156, size: 192, elements: !300)
!300 = !{!301, !306, !311}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !299, file: !263, line: 157, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !303)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DISubroutineType(types: !305)
!305 = !{!146, !275, !273}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !299, file: !263, line: 158, baseType: !307, size: 64, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !308)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{!194, !275, !273}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !299, file: !263, line: 159, baseType: !312, size: 64, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{!146, !275, !273, !316}
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !263, line: 148, size: 20736, elements: !318)
!318 = !{!319, !322, !326, !327, !331}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !317, file: !263, line: 149, baseType: !320, size: 192)
!320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 192, elements: !226)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !317, file: !263, line: 150, baseType: !323, size: 4096, offset: 192)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 4096, elements: !324)
!324 = !{!325}
!325 = !DISubrange(count: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !317, file: !263, line: 151, baseType: !146, size: 32, offset: 4288)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !317, file: !263, line: 152, baseType: !328, size: 16384, offset: 4320)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 16384, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 2048)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !317, file: !263, line: 153, baseType: !146, size: 32, offset: 20704)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !262, file: !263, line: 69, baseType: !333, size: 64, offset: 320)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !263, line: 138, size: 448, elements: !335)
!335 = !{!336, !340, !367, !369, !3224, !3252, !3256}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !334, file: !263, line: 139, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !273}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !334, file: !263, line: 140, baseType: !341, size: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !343)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !344, line: 230, size: 128, elements: !345)
!344 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!345 = !{!346, !360}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !343, file: !344, line: 231, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{!350, !273, !354, !321}
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !148, line: 60, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !352, line: 73, baseType: !353)
!352 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !352, line: 15, baseType: !157)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !344, line: 30, size: 128, elements: !356)
!356 = !{!357, !358}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !355, file: !344, line: 31, baseType: !194, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !355, file: !344, line: 32, baseType: !359, size: 16, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !148, line: 19, baseType: !150)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !343, file: !344, line: 232, baseType: !361, size: 64, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{!350, !273, !354, !194, !364}
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !148, line: 55, baseType: !365)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !352, line: 72, baseType: !366)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !352, line: 16, baseType: !151)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !334, file: !263, line: 141, baseType: !368, size: 64, offset: 128)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !334, file: !263, line: 142, baseType: !370, size: 64, offset: 192)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !373)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !344, line: 84, size: 320, elements: !374)
!374 = !{!375, !376, !380, !3221, !3222}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !373, file: !344, line: 85, baseType: !194, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !373, file: !344, line: 86, baseType: !377, size: 64, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DISubroutineType(types: !379)
!379 = !{!359, !273, !354, !146}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !373, file: !344, line: 88, baseType: !381, size: 64, offset: 128)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DISubroutineType(types: !383)
!383 = !{!359, !273, !384, !146}
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !344, line: 168, size: 448, elements: !386)
!386 = !{!387, !388, !389, !390, !3216, !3217}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !385, file: !344, line: 169, baseType: !355, size: 128)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !385, file: !344, line: 170, baseType: !364, size: 64, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !385, file: !344, line: 171, baseType: !149, size: 64, offset: 192)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !385, file: !344, line: 172, baseType: !391, size: 64, offset: 256)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DISubroutineType(types: !393)
!393 = !{!350, !394, !273, !384, !321, !571, !364}
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !396)
!396 = !{!397, !415, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3199, !3200, !3209, !3210, !3211, !3212, !3213, !3214, !3215}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !395, file: !44, line: 920, baseType: !398, size: 128)
!398 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !395, file: !44, line: 917, size: 128, elements: !399)
!399 = !{!400, !406}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !398, file: !44, line: 918, baseType: !401, size: 64)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !402, line: 58, size: 64, elements: !403)
!402 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!403 = !{!404}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !401, file: !402, line: 59, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !398, file: !44, line: 919, baseType: !407, size: 128, align: 64)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !148, line: 216, size: 128, align: 64, elements: !408)
!408 = !{!409, !411}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !407, file: !148, line: 217, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !407, file: !148, line: 218, baseType: !412, size: 64, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{null, !410}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !395, file: !44, line: 921, baseType: !416, size: 128, offset: 128)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !417, line: 8, size: 128, elements: !418)
!417 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!418 = !{!419, !423}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !416, file: !417, line: 9, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !422, line: 18, flags: DIFlagFwdDecl)
!422 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!423 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !416, file: !417, line: 10, baseType: !424, size: 64, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !422, line: 89, size: 1536, elements: !426)
!426 = !{!427, !428, !438, !446, !447, !470, !3149, !3151, !3163, !3164, !3165, !3166, !3167, !3173, !3174, !3175}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !425, file: !422, line: 91, baseType: !7, size: 32)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !425, file: !422, line: 92, baseType: !429, size: 32, offset: 32)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !430, line: 277, baseType: !431)
!430 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !430, line: 277, size: 32, elements: !432)
!432 = !{!433}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !431, file: !430, line: 277, baseType: !434, size: 32)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !430, line: 70, baseType: !435)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !430, line: 65, size: 32, elements: !436)
!436 = !{!437}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !435, file: !430, line: 66, baseType: !7, size: 32)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !425, file: !422, line: 93, baseType: !439, size: 128, offset: 64)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !440, line: 38, size: 128, elements: !441)
!440 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!441 = !{!442, !444}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !439, file: !440, line: 39, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !439, file: !440, line: 39, baseType: !445, size: 64, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !425, file: !422, line: 94, baseType: !424, size: 64, offset: 192)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !425, file: !422, line: 95, baseType: !448, size: 128, offset: 256)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !422, line: 47, size: 128, elements: !449)
!449 = !{!450, !466}
!450 = !DIDerivedType(tag: DW_TAG_member, scope: !448, file: !422, line: 48, baseType: !451, size: 64)
!451 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !448, file: !422, line: 48, size: 64, elements: !452)
!452 = !{!453, !462}
!453 = !DIDerivedType(tag: DW_TAG_member, scope: !451, file: !422, line: 49, baseType: !454, size: 64)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !451, file: !422, line: 49, size: 64, elements: !455)
!455 = !{!456, !461}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !454, file: !422, line: 50, baseType: !457, size: 32)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !458, line: 21, baseType: !459)
!458 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !460, line: 27, baseType: !7)
!460 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!461 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !454, file: !422, line: 50, baseType: !457, size: 32, offset: 32)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !451, file: !422, line: 52, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !458, line: 23, baseType: !464)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !460, line: 31, baseType: !465)
!465 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !448, file: !422, line: 54, baseType: !467, size: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !469)
!469 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !425, file: !422, line: 96, baseType: !471, size: 64, offset: 384)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !473)
!473 = !{!474, !475, !476, !484, !491, !492, !638, !2860, !2861, !2862, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !3125, !3133, !3134, !3135, !3145, !3146, !3147, !3148}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !472, file: !44, line: 611, baseType: !359, size: 16)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !472, file: !44, line: 612, baseType: !150, size: 16, offset: 16)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !472, file: !44, line: 613, baseType: !477, size: 32, offset: 32)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !478, line: 23, baseType: !479)
!478 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !478, line: 21, size: 32, elements: !480)
!480 = !{!481}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !479, file: !478, line: 22, baseType: !482, size: 32)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !148, line: 32, baseType: !483)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !352, line: 49, baseType: !7)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !472, file: !44, line: 614, baseType: !485, size: 32, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !478, line: 28, baseType: !486)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !478, line: 26, size: 32, elements: !487)
!487 = !{!488}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !486, file: !478, line: 27, baseType: !489, size: 32)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !148, line: 33, baseType: !490)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !352, line: 50, baseType: !7)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !472, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !472, file: !44, line: 622, baseType: !493, size: 64, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !495)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !496)
!496 = !{!497, !501, !514, !518, !524, !528, !532, !536, !540, !544, !548, !549, !555, !559, !585, !614, !618, !624, !629, !633, !634}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !495, file: !44, line: 1865, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!424, !471, !424, !7}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !495, file: !44, line: 1866, baseType: !502, size: 64, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{!194, !424, !471, !505}
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !507, line: 10, size: 128, elements: !508)
!507 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!508 = !{!509, !513}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !506, file: !507, line: 11, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{null, !149}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !506, file: !507, line: 12, baseType: !149, size: 64, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !495, file: !44, line: 1867, baseType: !515, size: 64, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{!146, !471, !146}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !495, file: !44, line: 1868, baseType: !519, size: 64, offset: 192)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{!522, !471, !146}
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !495, file: !44, line: 1870, baseType: !525, size: 64, offset: 256)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!146, !424, !321, !146}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !495, file: !44, line: 1872, baseType: !529, size: 64, offset: 320)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!146, !471, !424, !359, !231}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !495, file: !44, line: 1873, baseType: !533, size: 64, offset: 384)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!146, !424, !471, !424}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !495, file: !44, line: 1874, baseType: !537, size: 64, offset: 448)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{!146, !471, !424}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !495, file: !44, line: 1875, baseType: !541, size: 64, offset: 512)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!146, !471, !424, !194}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !495, file: !44, line: 1876, baseType: !545, size: 64, offset: 576)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!146, !471, !424, !359}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !495, file: !44, line: 1877, baseType: !537, size: 64, offset: 640)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !495, file: !44, line: 1878, baseType: !550, size: 64, offset: 704)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DISubroutineType(types: !552)
!552 = !{!146, !471, !424, !359, !553}
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !148, line: 16, baseType: !554)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !148, line: 13, baseType: !457)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !495, file: !44, line: 1879, baseType: !556, size: 64, offset: 768)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!146, !471, !424, !471, !424, !7}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !495, file: !44, line: 1881, baseType: !560, size: 64, offset: 832)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{!146, !424, !563}
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !565)
!565 = !{!566, !567, !568, !569, !570, !574, !582, !583, !584}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !564, file: !44, line: 220, baseType: !7, size: 32)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !564, file: !44, line: 221, baseType: !359, size: 16, offset: 32)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !564, file: !44, line: 222, baseType: !477, size: 32, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !564, file: !44, line: 223, baseType: !485, size: 32, offset: 96)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !564, file: !44, line: 224, baseType: !571, size: 64, offset: 128)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !148, line: 46, baseType: !572)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !352, line: 88, baseType: !573)
!573 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !564, file: !44, line: 225, baseType: !575, size: 128, offset: 192)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !576, line: 13, size: 128, elements: !577)
!576 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!577 = !{!578, !581}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !575, file: !576, line: 14, baseType: !579, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !576, line: 8, baseType: !580)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !460, line: 30, baseType: !573)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !575, file: !576, line: 15, baseType: !157, size: 64, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !564, file: !44, line: 226, baseType: !575, size: 128, offset: 320)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !564, file: !44, line: 227, baseType: !575, size: 128, offset: 448)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !564, file: !44, line: 234, baseType: !394, size: 64, offset: 576)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !495, file: !44, line: 1882, baseType: !586, size: 64, offset: 896)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DISubroutineType(types: !588)
!588 = !{!146, !589, !591, !457, !7}
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !416)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !593, line: 22, size: 1152, elements: !594)
!593 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!594 = !{!595, !596, !597, !598, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !592, file: !593, line: 23, baseType: !457, size: 32)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !592, file: !593, line: 24, baseType: !359, size: 16, offset: 32)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !592, file: !593, line: 25, baseType: !7, size: 32, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !592, file: !593, line: 26, baseType: !599, size: 32, offset: 96)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !148, line: 104, baseType: !457)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !592, file: !593, line: 27, baseType: !463, size: 64, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !592, file: !593, line: 28, baseType: !463, size: 64, offset: 192)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !592, file: !593, line: 37, baseType: !463, size: 64, offset: 256)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !592, file: !593, line: 38, baseType: !553, size: 32, offset: 320)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !592, file: !593, line: 39, baseType: !553, size: 32, offset: 352)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !592, file: !593, line: 40, baseType: !477, size: 32, offset: 384)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !592, file: !593, line: 41, baseType: !485, size: 32, offset: 416)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !592, file: !593, line: 42, baseType: !571, size: 64, offset: 448)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !592, file: !593, line: 43, baseType: !575, size: 128, offset: 512)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !592, file: !593, line: 44, baseType: !575, size: 128, offset: 640)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !592, file: !593, line: 45, baseType: !575, size: 128, offset: 768)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !592, file: !593, line: 46, baseType: !575, size: 128, offset: 896)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !592, file: !593, line: 47, baseType: !463, size: 64, offset: 1024)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !592, file: !593, line: 48, baseType: !463, size: 64, offset: 1088)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !495, file: !44, line: 1883, baseType: !615, size: 64, offset: 960)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!350, !424, !321, !364}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !495, file: !44, line: 1884, baseType: !619, size: 64, offset: 1024)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{!146, !471, !622, !463, !463}
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !495, file: !44, line: 1886, baseType: !625, size: 64, offset: 1088)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{!146, !471, !628, !146}
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !495, file: !44, line: 1887, baseType: !630, size: 64, offset: 1152)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!146, !471, !424, !394, !7, !359}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !495, file: !44, line: 1890, baseType: !545, size: 64, offset: 1216)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !495, file: !44, line: 1891, baseType: !635, size: 64, offset: 1280)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!146, !471, !522, !146}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !472, file: !44, line: 623, baseType: !639, size: 64, offset: 192)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !641)
!641 = !{!642, !643, !644, !645, !646, !647, !694, !2467, !2549, !2632, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2648, !2652, !2653, !2656, !2657, !2660, !2661, !2662, !2703, !2730, !2731, !2732, !2733, !2734, !2735, !2738, !2740, !2747, !2748, !2750, !2751, !2752, !2811, !2812, !2827, !2828, !2829, !2830, !2831, !2834, !2835, !2836, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !640, file: !44, line: 1417, baseType: !267, size: 128)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !640, file: !44, line: 1418, baseType: !553, size: 32, offset: 128)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !640, file: !44, line: 1419, baseType: !469, size: 8, offset: 160)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !640, file: !44, line: 1420, baseType: !151, size: 64, offset: 192)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !640, file: !44, line: 1421, baseType: !571, size: 64, offset: 256)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !640, file: !44, line: 1422, baseType: !648, size: 64, offset: 320)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !650)
!650 = !{!651, !652, !653, !660, !664, !668, !672, !673, !674, !684, !687, !688, !689, !691, !692, !693}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !649, file: !44, line: 2229, baseType: !194, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !649, file: !44, line: 2230, baseType: !146, size: 32, offset: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !649, file: !44, line: 2238, baseType: !654, size: 64, offset: 128)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!146, !657}
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !659, line: 28, flags: DIFlagFwdDecl)
!659 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!660 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !649, file: !44, line: 2239, baseType: !661, size: 64, offset: 192)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !663)
!663 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !649, file: !44, line: 2240, baseType: !665, size: 64, offset: 256)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{!424, !648, !146, !194, !149}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !649, file: !44, line: 2242, baseType: !669, size: 64, offset: 320)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{null, !639}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !649, file: !44, line: 2243, baseType: !196, size: 64, offset: 384)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !649, file: !44, line: 2244, baseType: !648, size: 64, offset: 448)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !649, file: !44, line: 2245, baseType: !675, size: 64, offset: 512)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !148, line: 182, size: 64, elements: !676)
!676 = !{!677}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !675, file: !148, line: 183, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !148, line: 186, size: 128, elements: !680)
!680 = !{!681, !682}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !679, file: !148, line: 187, baseType: !678, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !679, file: !148, line: 187, baseType: !683, size: 64, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !649, file: !44, line: 2247, baseType: !685, offset: 576)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !686, line: 187, elements: !294)
!686 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!687 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !649, file: !44, line: 2248, baseType: !685, offset: 576)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !649, file: !44, line: 2249, baseType: !685, offset: 576)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !649, file: !44, line: 2250, baseType: !690, offset: 576)
!690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !685, elements: !226)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !649, file: !44, line: 2252, baseType: !685, offset: 576)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !649, file: !44, line: 2253, baseType: !685, offset: 576)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !649, file: !44, line: 2254, baseType: !685, offset: 576)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !640, file: !44, line: 1423, baseType: !695, size: 64, offset: 384)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !697)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !698)
!698 = !{!699, !703, !707, !708, !712, !718, !722, !723, !724, !728, !732, !733, !734, !735, !741, !746, !747, !754, !755, !756, !757, !2451, !2466}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !697, file: !44, line: 1936, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!471, !639}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !697, file: !44, line: 1937, baseType: !704, size: 64, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{null, !471}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !697, file: !44, line: 1938, baseType: !704, size: 64, offset: 128)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !697, file: !44, line: 1940, baseType: !709, size: 64, offset: 192)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{null, !471, !146}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !697, file: !44, line: 1941, baseType: !713, size: 64, offset: 256)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{!146, !471, !716}
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !697, file: !44, line: 1942, baseType: !719, size: 64, offset: 320)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{!146, !471}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !697, file: !44, line: 1943, baseType: !704, size: 64, offset: 384)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !697, file: !44, line: 1944, baseType: !669, size: 64, offset: 448)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !697, file: !44, line: 1945, baseType: !725, size: 64, offset: 512)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{!146, !639, !146}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !697, file: !44, line: 1946, baseType: !729, size: 64, offset: 576)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{!146, !639}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !697, file: !44, line: 1947, baseType: !729, size: 64, offset: 640)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !697, file: !44, line: 1948, baseType: !729, size: 64, offset: 704)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !697, file: !44, line: 1949, baseType: !729, size: 64, offset: 768)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !697, file: !44, line: 1950, baseType: !736, size: 64, offset: 832)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DISubroutineType(types: !738)
!738 = !{!146, !424, !739}
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !697, file: !44, line: 1951, baseType: !742, size: 64, offset: 896)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!146, !639, !745, !321}
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !697, file: !44, line: 1952, baseType: !669, size: 64, offset: 960)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !697, file: !44, line: 1954, baseType: !748, size: 64, offset: 1024)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DISubroutineType(types: !750)
!750 = !{!146, !751, !424}
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !753, line: 539, flags: DIFlagFwdDecl)
!753 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!754 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !697, file: !44, line: 1955, baseType: !748, size: 64, offset: 1088)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !697, file: !44, line: 1956, baseType: !748, size: 64, offset: 1152)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !697, file: !44, line: 1957, baseType: !748, size: 64, offset: 1216)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !697, file: !44, line: 1963, baseType: !758, size: 64, offset: 1280)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DISubroutineType(types: !760)
!760 = !{!146, !639, !761, !147}
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !763, line: 68, size: 512, align: 128, elements: !764)
!763 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!764 = !{!765, !766, !2443, !2450}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !762, file: !763, line: 69, baseType: !151, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, scope: !762, file: !763, line: 77, baseType: !767, size: 320, offset: 64)
!767 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !762, file: !763, line: 77, size: 320, elements: !768)
!768 = !{!769, !956, !961, !989, !997, !1003, !2374, !2442}
!769 = !DIDerivedType(tag: DW_TAG_member, scope: !767, file: !763, line: 78, baseType: !770, size: 320)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !767, file: !763, line: 78, size: 320, elements: !771)
!771 = !{!772, !773, !954, !955}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !770, file: !763, line: 84, baseType: !267, size: 128)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !770, file: !763, line: 86, baseType: !774, size: 64, offset: 128)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !776)
!776 = !{!777, !778, !785, !786, !791, !806, !822, !823, !824, !825, !947, !948, !951, !952, !953}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !775, file: !44, line: 452, baseType: !471, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !775, file: !44, line: 453, baseType: !779, size: 128, offset: 64)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !780, line: 292, size: 128, elements: !781)
!780 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!781 = !{!782, !783, !784}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !779, file: !780, line: 293, baseType: !280)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !779, file: !780, line: 295, baseType: !147, size: 32)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !779, file: !780, line: 296, baseType: !149, size: 64, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !775, file: !44, line: 454, baseType: !147, size: 32, offset: 192)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !775, file: !44, line: 455, baseType: !787, size: 32, offset: 224)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !148, line: 168, baseType: !788)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !148, line: 166, size: 32, elements: !789)
!789 = !{!790}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !788, file: !148, line: 167, baseType: !146, size: 32)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !775, file: !44, line: 460, baseType: !792, size: 128, offset: 256)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !793, line: 125, size: 128, elements: !794)
!793 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!794 = !{!795, !805}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !792, file: !793, line: 126, baseType: !796, size: 64)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !793, line: 31, size: 64, elements: !797)
!797 = !{!798}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !796, file: !793, line: 32, baseType: !799, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !793, line: 24, size: 192, align: 64, elements: !801)
!801 = !{!802, !803, !804}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !800, file: !793, line: 25, baseType: !151, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !800, file: !793, line: 26, baseType: !799, size: 64, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !800, file: !793, line: 27, baseType: !799, size: 64, offset: 128)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !792, file: !793, line: 127, baseType: !799, size: 64, offset: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !775, file: !44, line: 461, baseType: !807, size: 256, offset: 384)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !808, line: 35, size: 256, elements: !809)
!808 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!809 = !{!810, !818, !819, !821}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !807, file: !808, line: 36, baseType: !811, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !812, line: 13, baseType: !813)
!812 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !148, line: 175, baseType: !814)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !148, line: 173, size: 64, elements: !815)
!815 = !{!816}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !814, file: !148, line: 174, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !458, line: 22, baseType: !580)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !807, file: !808, line: 42, baseType: !811, size: 64, offset: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !807, file: !808, line: 46, baseType: !820, offset: 128)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !281, line: 29, baseType: !288)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !807, file: !808, line: 47, baseType: !267, size: 128, offset: 128)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !775, file: !44, line: 462, baseType: !151, size: 64, offset: 640)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !775, file: !44, line: 463, baseType: !151, size: 64, offset: 704)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !775, file: !44, line: 464, baseType: !151, size: 64, offset: 768)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !775, file: !44, line: 465, baseType: !826, size: 64, offset: 832)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !828)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !829)
!829 = !{!830, !834, !838, !842, !846, !850, !856, !862, !866, !871, !875, !879, !883, !911, !915, !921, !922, !923, !927, !932, !936, !943}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !828, file: !44, line: 368, baseType: !831, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DISubroutineType(types: !833)
!833 = !{!146, !761, !716}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !828, file: !44, line: 369, baseType: !835, size: 64, offset: 64)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DISubroutineType(types: !837)
!837 = !{!146, !394, !761}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !828, file: !44, line: 372, baseType: !839, size: 64, offset: 128)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!146, !774, !716}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !828, file: !44, line: 375, baseType: !843, size: 64, offset: 192)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{!146, !761}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !828, file: !44, line: 381, baseType: !847, size: 64, offset: 256)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{!146, !394, !774, !270, !7}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !828, file: !44, line: 383, baseType: !851, size: 64, offset: 320)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DISubroutineType(types: !853)
!853 = !{null, !854}
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !828, file: !44, line: 385, baseType: !857, size: 64, offset: 384)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{!146, !394, !774, !571, !7, !7, !860, !861}
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !828, file: !44, line: 388, baseType: !863, size: 64, offset: 448)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DISubroutineType(types: !865)
!865 = !{!146, !394, !774, !571, !7, !7, !761, !149}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !828, file: !44, line: 393, baseType: !867, size: 64, offset: 512)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DISubroutineType(types: !869)
!869 = !{!870, !774, !870}
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !148, line: 125, baseType: !463)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !828, file: !44, line: 394, baseType: !872, size: 64, offset: 576)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DISubroutineType(types: !874)
!874 = !{null, !761, !7, !7}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !828, file: !44, line: 395, baseType: !876, size: 64, offset: 640)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DISubroutineType(types: !878)
!878 = !{!146, !761, !147}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !828, file: !44, line: 396, baseType: !880, size: 64, offset: 704)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DISubroutineType(types: !882)
!882 = !{null, !761}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !828, file: !44, line: 397, baseType: !884, size: 64, offset: 768)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DISubroutineType(types: !886)
!886 = !{!350, !887, !909}
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !889)
!889 = !{!890, !891, !892, !896, !897, !898, !901, !902}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !888, file: !44, line: 321, baseType: !394, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !888, file: !44, line: 326, baseType: !571, size: 64, offset: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !888, file: !44, line: 327, baseType: !893, size: 64, offset: 128)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DISubroutineType(types: !895)
!895 = !{null, !887, !157, !157}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !888, file: !44, line: 328, baseType: !149, size: 64, offset: 192)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !888, file: !44, line: 329, baseType: !146, size: 32, offset: 256)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !888, file: !44, line: 330, baseType: !899, size: 16, offset: 288)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !458, line: 19, baseType: !900)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !460, line: 24, baseType: !150)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !888, file: !44, line: 331, baseType: !899, size: 16, offset: 304)
!902 = !DIDerivedType(tag: DW_TAG_member, scope: !888, file: !44, line: 332, baseType: !903, size: 64, offset: 320)
!903 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !888, file: !44, line: 332, size: 64, elements: !904)
!904 = !{!905, !906}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !903, file: !44, line: 333, baseType: !7, size: 32)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !903, file: !44, line: 334, baseType: !907, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !828, file: !44, line: 402, baseType: !912, size: 64, offset: 832)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DISubroutineType(types: !914)
!914 = !{!146, !774, !761, !761, !5}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !828, file: !44, line: 404, baseType: !916, size: 64, offset: 896)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DISubroutineType(types: !918)
!918 = !{!231, !761, !919}
!919 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !920, line: 305, baseType: !7)
!920 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!921 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !828, file: !44, line: 405, baseType: !880, size: 64, offset: 960)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !828, file: !44, line: 406, baseType: !843, size: 64, offset: 1024)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !828, file: !44, line: 407, baseType: !924, size: 64, offset: 1088)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DISubroutineType(types: !926)
!926 = !{!146, !761, !151, !151}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !828, file: !44, line: 409, baseType: !928, size: 64, offset: 1152)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DISubroutineType(types: !930)
!930 = !{null, !761, !931, !931}
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !828, file: !44, line: 410, baseType: !933, size: 64, offset: 1216)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DISubroutineType(types: !935)
!935 = !{!146, !774, !761}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !828, file: !44, line: 413, baseType: !937, size: 64, offset: 1280)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DISubroutineType(types: !939)
!939 = !{!146, !940, !394, !942}
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !828, file: !44, line: 415, baseType: !944, size: 64, offset: 1344)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DISubroutineType(types: !946)
!946 = !{null, !394}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !775, file: !44, line: 466, baseType: !151, size: 64, offset: 896)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !775, file: !44, line: 467, baseType: !949, size: 32, offset: 960)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !950, line: 8, baseType: !457)
!950 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!951 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !775, file: !44, line: 468, baseType: !280, offset: 992)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !775, file: !44, line: 469, baseType: !267, size: 128, offset: 1024)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !775, file: !44, line: 470, baseType: !149, size: 64, offset: 1152)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !770, file: !763, line: 87, baseType: !151, size: 64, offset: 192)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !770, file: !763, line: 94, baseType: !151, size: 64, offset: 256)
!956 = !DIDerivedType(tag: DW_TAG_member, scope: !767, file: !763, line: 96, baseType: !957, size: 64)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !767, file: !763, line: 96, size: 64, elements: !958)
!958 = !{!959}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !957, file: !763, line: 101, baseType: !960, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !148, line: 143, baseType: !463)
!961 = !DIDerivedType(tag: DW_TAG_member, scope: !767, file: !763, line: 103, baseType: !962, size: 320)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !767, file: !763, line: 103, size: 320, elements: !963)
!963 = !{!964, !974, !977, !978}
!964 = !DIDerivedType(tag: DW_TAG_member, scope: !962, file: !763, line: 104, baseType: !965, size: 128)
!965 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !962, file: !763, line: 104, size: 128, elements: !966)
!966 = !{!967, !968}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !965, file: !763, line: 105, baseType: !267, size: 128)
!968 = !DIDerivedType(tag: DW_TAG_member, scope: !965, file: !763, line: 106, baseType: !969, size: 128)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !965, file: !763, line: 106, size: 128, elements: !970)
!970 = !{!971, !972, !973}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !969, file: !763, line: 107, baseType: !761, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !969, file: !763, line: 109, baseType: !146, size: 32, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !969, file: !763, line: 110, baseType: !146, size: 32, offset: 96)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !962, file: !763, line: 117, baseType: !975, size: 64, offset: 128)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !763, line: 117, flags: DIFlagFwdDecl)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !962, file: !763, line: 119, baseType: !149, size: 64, offset: 192)
!978 = !DIDerivedType(tag: DW_TAG_member, scope: !962, file: !763, line: 120, baseType: !979, size: 64, offset: 256)
!979 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !962, file: !763, line: 120, size: 64, elements: !980)
!980 = !{!981, !982, !983}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !979, file: !763, line: 121, baseType: !149, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !979, file: !763, line: 122, baseType: !151, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, scope: !979, file: !763, line: 123, baseType: !984, size: 32)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !979, file: !763, line: 123, size: 32, elements: !985)
!985 = !{!986, !987, !988}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !984, file: !763, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !984, file: !763, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !984, file: !763, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!989 = !DIDerivedType(tag: DW_TAG_member, scope: !767, file: !763, line: 130, baseType: !990, size: 192)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !767, file: !763, line: 130, size: 192, elements: !991)
!991 = !{!992, !993, !994, !995, !996}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !990, file: !763, line: 131, baseType: !151, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !990, file: !763, line: 134, baseType: !469, size: 8, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !990, file: !763, line: 135, baseType: !469, size: 8, offset: 72)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !990, file: !763, line: 136, baseType: !787, size: 32, offset: 96)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !990, file: !763, line: 137, baseType: !7, size: 32, offset: 128)
!997 = !DIDerivedType(tag: DW_TAG_member, scope: !767, file: !763, line: 139, baseType: !998, size: 256)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !767, file: !763, line: 139, size: 256, elements: !999)
!999 = !{!1000, !1001, !1002}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !998, file: !763, line: 140, baseType: !151, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !998, file: !763, line: 141, baseType: !787, size: 32, offset: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !998, file: !763, line: 143, baseType: !267, size: 128, offset: 128)
!1003 = !DIDerivedType(tag: DW_TAG_member, scope: !767, file: !763, line: 145, baseType: !1004, size: 256)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !767, file: !763, line: 145, size: 256, elements: !1005)
!1005 = !{!1006, !1007, !1009, !1010, !2373}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1004, file: !763, line: 146, baseType: !151, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1004, file: !763, line: 147, baseType: !1008, size: 64, offset: 64)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !753, line: 509, baseType: !761)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1004, file: !763, line: 148, baseType: !151, size: 64, offset: 128)
!1010 = !DIDerivedType(tag: DW_TAG_member, scope: !1004, file: !763, line: 149, baseType: !1011, size: 64, offset: 192)
!1011 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1004, file: !763, line: 149, size: 64, elements: !1012)
!1012 = !{!1013, !2372}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1011, file: !763, line: 150, baseType: !1014, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !763, line: 388, size: 7296, elements: !1016)
!1016 = !{!1017, !2368}
!1017 = !DIDerivedType(tag: DW_TAG_member, scope: !1015, file: !763, line: 389, baseType: !1018, size: 7296)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1015, file: !763, line: 389, size: 7296, elements: !1019)
!1019 = !{!1020, !1138, !1139, !1140, !1144, !1145, !1146, !1147, !1148, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1189, !1197, !1200, !1246, !1247, !2352, !2353, !2356, !2357, !2358, !2361, !2362, !2363, !2366, !2367}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1018, file: !763, line: 390, baseType: !1021, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !763, line: 305, size: 1472, elements: !1023)
!1023 = !{!1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1038, !1039, !1044, !1045, !1048, !1132, !1133, !1134, !1135, !1136}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1022, file: !763, line: 308, baseType: !151, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1022, file: !763, line: 309, baseType: !151, size: 64, offset: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1022, file: !763, line: 313, baseType: !1021, size: 64, offset: 128)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1022, file: !763, line: 313, baseType: !1021, size: 64, offset: 192)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1022, file: !763, line: 315, baseType: !800, size: 192, align: 64, offset: 256)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1022, file: !763, line: 323, baseType: !151, size: 64, offset: 448)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1022, file: !763, line: 327, baseType: !1014, size: 64, offset: 512)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1022, file: !763, line: 333, baseType: !1032, size: 64, offset: 576)
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !753, line: 284, baseType: !1033)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !753, line: 284, size: 64, elements: !1034)
!1034 = !{!1035}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1033, file: !753, line: 284, baseType: !1036, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1037, line: 19, baseType: !151)
!1037 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1022, file: !763, line: 334, baseType: !151, size: 64, offset: 640)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1022, file: !763, line: 343, baseType: !1040, size: 256, offset: 704)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1022, file: !763, line: 340, size: 256, elements: !1041)
!1041 = !{!1042, !1043}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1040, file: !763, line: 341, baseType: !800, size: 192, align: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1040, file: !763, line: 342, baseType: !151, size: 64, offset: 192)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1022, file: !763, line: 351, baseType: !267, size: 128, offset: 960)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1022, file: !763, line: 353, baseType: !1046, size: 64, offset: 1088)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !763, line: 353, flags: DIFlagFwdDecl)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1022, file: !763, line: 356, baseType: !1049, size: 64, offset: 1152)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1051)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1052)
!1052 = !{!1053, !1057, !1058, !1062, !1066, !1106, !1110, !1114, !1118, !1119, !1120, !1124, !1128}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1051, file: !14, line: 558, baseType: !1054, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{null, !1021}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1051, file: !14, line: 559, baseType: !1054, size: 64, offset: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1051, file: !14, line: 560, baseType: !1059, size: 64, offset: 128)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!146, !1021, !151}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1051, file: !14, line: 561, baseType: !1063, size: 64, offset: 192)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!146, !1021}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1051, file: !14, line: 562, baseType: !1067, size: 64, offset: 256)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!1070, !1071}
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !763, line: 682, baseType: !7)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1073)
!1073 = !{!1074, !1075, !1076, !1077, !1078, !1079, !1086, !1093, !1099, !1100, !1101, !1103, !1105}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1072, file: !14, line: 509, baseType: !1021, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1072, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1072, file: !14, line: 511, baseType: !147, size: 32, offset: 96)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1072, file: !14, line: 512, baseType: !151, size: 64, offset: 128)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1072, file: !14, line: 513, baseType: !151, size: 64, offset: 192)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1072, file: !14, line: 514, baseType: !1080, size: 64, offset: 256)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !753, line: 385, baseType: !1082)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !753, line: 385, size: 64, elements: !1083)
!1083 = !{!1084}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1082, file: !753, line: 385, baseType: !1085, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1037, line: 15, baseType: !151)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1072, file: !14, line: 516, baseType: !1087, size: 64, offset: 320)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !753, line: 359, baseType: !1089)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !753, line: 359, size: 64, elements: !1090)
!1090 = !{!1091}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1089, file: !753, line: 359, baseType: !1092, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1037, line: 16, baseType: !151)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1072, file: !14, line: 519, baseType: !1094, size: 64, offset: 384)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1037, line: 21, baseType: !1095)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1037, line: 21, size: 64, elements: !1096)
!1096 = !{!1097}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1095, file: !1037, line: 21, baseType: !1098, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1037, line: 14, baseType: !151)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1072, file: !14, line: 521, baseType: !761, size: 64, offset: 448)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1072, file: !14, line: 522, baseType: !761, size: 64, offset: 512)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1072, file: !14, line: 528, baseType: !1102, size: 64, offset: 576)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1072, file: !14, line: 532, baseType: !1104, size: 64, offset: 640)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1072, file: !14, line: 536, baseType: !1008, size: 64, offset: 704)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1051, file: !14, line: 563, baseType: !1107, size: 64, offset: 320)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!1070, !1071, !13}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1051, file: !14, line: 565, baseType: !1111, size: 64, offset: 384)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{null, !1071, !151, !151}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1051, file: !14, line: 567, baseType: !1115, size: 64, offset: 448)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!151, !1021}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1051, file: !14, line: 571, baseType: !1067, size: 64, offset: 512)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1051, file: !14, line: 574, baseType: !1067, size: 64, offset: 576)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1051, file: !14, line: 579, baseType: !1121, size: 64, offset: 640)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!146, !1021, !151, !149, !146, !146}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1051, file: !14, line: 585, baseType: !1125, size: 64, offset: 704)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!194, !1021}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1051, file: !14, line: 615, baseType: !1129, size: 64, offset: 768)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!761, !1021, !151}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1022, file: !763, line: 359, baseType: !151, size: 64, offset: 1216)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1022, file: !763, line: 361, baseType: !394, size: 64, offset: 1280)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1022, file: !763, line: 362, baseType: !149, size: 64, offset: 1344)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1022, file: !763, line: 365, baseType: !811, size: 64, offset: 1408)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1022, file: !763, line: 373, baseType: !1137, offset: 1472)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !763, line: 296, elements: !294)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1018, file: !763, line: 391, baseType: !796, size: 64, offset: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1018, file: !763, line: 392, baseType: !463, size: 64, offset: 128)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1018, file: !763, line: 394, baseType: !1141, size: 64, offset: 192)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!151, !394, !151, !151, !151, !151}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1018, file: !763, line: 398, baseType: !151, size: 64, offset: 256)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1018, file: !763, line: 399, baseType: !151, size: 64, offset: 320)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1018, file: !763, line: 405, baseType: !151, size: 64, offset: 384)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1018, file: !763, line: 406, baseType: !151, size: 64, offset: 448)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1018, file: !763, line: 407, baseType: !1149, size: 64, offset: 512)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !753, line: 286, baseType: !1151)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !753, line: 286, size: 64, elements: !1152)
!1152 = !{!1153}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1151, file: !753, line: 286, baseType: !1154, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1037, line: 18, baseType: !151)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1018, file: !763, line: 416, baseType: !787, size: 32, offset: 576)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1018, file: !763, line: 428, baseType: !787, size: 32, offset: 608)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1018, file: !763, line: 437, baseType: !787, size: 32, offset: 640)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1018, file: !763, line: 447, baseType: !787, size: 32, offset: 672)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1018, file: !763, line: 450, baseType: !811, size: 64, offset: 704)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1018, file: !763, line: 452, baseType: !146, size: 32, offset: 768)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1018, file: !763, line: 454, baseType: !280, offset: 800)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1018, file: !763, line: 457, baseType: !807, size: 256, offset: 832)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1018, file: !763, line: 459, baseType: !267, size: 128, offset: 1088)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1018, file: !763, line: 466, baseType: !151, size: 64, offset: 1216)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1018, file: !763, line: 467, baseType: !151, size: 64, offset: 1280)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1018, file: !763, line: 469, baseType: !151, size: 64, offset: 1344)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1018, file: !763, line: 470, baseType: !151, size: 64, offset: 1408)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1018, file: !763, line: 471, baseType: !813, size: 64, offset: 1472)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1018, file: !763, line: 472, baseType: !151, size: 64, offset: 1536)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1018, file: !763, line: 473, baseType: !151, size: 64, offset: 1600)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1018, file: !763, line: 474, baseType: !151, size: 64, offset: 1664)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1018, file: !763, line: 475, baseType: !151, size: 64, offset: 1728)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1018, file: !763, line: 477, baseType: !280, offset: 1792)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1018, file: !763, line: 478, baseType: !151, size: 64, offset: 1792)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1018, file: !763, line: 478, baseType: !151, size: 64, offset: 1856)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1018, file: !763, line: 478, baseType: !151, size: 64, offset: 1920)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1018, file: !763, line: 478, baseType: !151, size: 64, offset: 1984)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1018, file: !763, line: 479, baseType: !151, size: 64, offset: 2048)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1018, file: !763, line: 479, baseType: !151, size: 64, offset: 2112)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1018, file: !763, line: 479, baseType: !151, size: 64, offset: 2176)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1018, file: !763, line: 480, baseType: !151, size: 64, offset: 2240)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1018, file: !763, line: 480, baseType: !151, size: 64, offset: 2304)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1018, file: !763, line: 480, baseType: !151, size: 64, offset: 2368)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1018, file: !763, line: 480, baseType: !151, size: 64, offset: 2432)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1018, file: !763, line: 482, baseType: !1186, size: 2816, offset: 2496)
!1186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 2816, elements: !1187)
!1187 = !{!1188}
!1188 = !DISubrange(count: 44)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1018, file: !763, line: 488, baseType: !1190, size: 256, offset: 5312)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1191, line: 60, size: 256, elements: !1192)
!1191 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1192 = !{!1193}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1190, file: !1191, line: 61, baseType: !1194, size: 256)
!1194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !811, size: 256, elements: !1195)
!1195 = !{!1196}
!1196 = !DISubrange(count: 4)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1018, file: !763, line: 490, baseType: !1198, size: 64, offset: 5568)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !763, line: 490, flags: DIFlagFwdDecl)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1018, file: !763, line: 493, baseType: !1201, size: 896, offset: 5632)
!1201 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1202, line: 53, baseType: !1203)
!1202 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1202, line: 13, size: 896, elements: !1204)
!1204 = !{!1205, !1206, !1207, !1208, !1211, !1212, !1219, !1220, !1240, !1241, !1242}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1203, file: !1202, line: 18, baseType: !463, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1203, file: !1202, line: 28, baseType: !813, size: 64, offset: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1203, file: !1202, line: 31, baseType: !807, size: 256, offset: 128)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1203, file: !1202, line: 32, baseType: !1209, size: 64, offset: 384)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1202, line: 32, flags: DIFlagFwdDecl)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1203, file: !1202, line: 37, baseType: !150, size: 16, offset: 448)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1203, file: !1202, line: 40, baseType: !1213, size: 192, offset: 512)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1214, line: 53, size: 192, elements: !1215)
!1214 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1215 = !{!1216, !1217, !1218}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1213, file: !1214, line: 54, baseType: !811, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1213, file: !1214, line: 55, baseType: !280, offset: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1213, file: !1214, line: 59, baseType: !267, size: 128, offset: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1203, file: !1202, line: 41, baseType: !149, size: 64, offset: 704)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1203, file: !1202, line: 42, baseType: !1221, size: 64, offset: 768)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1223)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1224, line: 13, size: 896, elements: !1225)
!1224 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1225 = !{!1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1223, file: !1224, line: 14, baseType: !149, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1223, file: !1224, line: 15, baseType: !151, size: 64, offset: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1223, file: !1224, line: 17, baseType: !151, size: 64, offset: 128)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1223, file: !1224, line: 17, baseType: !151, size: 64, offset: 192)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1223, file: !1224, line: 19, baseType: !157, size: 64, offset: 256)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1223, file: !1224, line: 21, baseType: !157, size: 64, offset: 320)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1223, file: !1224, line: 22, baseType: !157, size: 64, offset: 384)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1223, file: !1224, line: 23, baseType: !157, size: 64, offset: 448)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1223, file: !1224, line: 24, baseType: !157, size: 64, offset: 512)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1223, file: !1224, line: 25, baseType: !157, size: 64, offset: 576)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1223, file: !1224, line: 26, baseType: !157, size: 64, offset: 640)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1223, file: !1224, line: 27, baseType: !157, size: 64, offset: 704)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1223, file: !1224, line: 28, baseType: !157, size: 64, offset: 768)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1223, file: !1224, line: 29, baseType: !157, size: 64, offset: 832)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1203, file: !1202, line: 44, baseType: !787, size: 32, offset: 832)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1203, file: !1202, line: 50, baseType: !899, size: 16, offset: 864)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1203, file: !1202, line: 51, baseType: !1243, size: 16, offset: 880)
!1243 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !458, line: 18, baseType: !1244)
!1244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !460, line: 23, baseType: !1245)
!1245 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1018, file: !763, line: 495, baseType: !151, size: 64, offset: 6528)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1018, file: !763, line: 497, baseType: !1248, size: 64, offset: 6592)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !763, line: 381, size: 384, elements: !1250)
!1250 = !{!1251, !1252, !2351}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1249, file: !763, line: 382, baseType: !787, size: 32)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1249, file: !763, line: 383, baseType: !1253, size: 128, offset: 64)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !763, line: 376, size: 128, elements: !1254)
!1254 = !{!1255, !2349}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1253, file: !763, line: 377, baseType: !1256, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1258, line: 640, size: 48640, elements: !1259)
!1258 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1259 = !{!1260, !1266, !1267, !1268, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1285, !1303, !1314, !1399, !1400, !1401, !1412, !1413, !1415, !1416, !1417, !1418, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1497, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1535, !1537, !1538, !1539, !1551, !1552, !1553, !1554, !1555, !1556, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1580, !1585, !1769, !1770, !1771, !1772, !1776, !1779, !1782, !1785, !1788, !1792, !1893, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1937, !1938, !1939, !1940, !1941, !1946, !1947, !1948, !1951, !1952, !1955, !1958, !1961, !1964, !2007, !2010, !2011, !2090, !2091, !2094, !2095, !2098, !2099, !2100, !2104, !2105, !2106, !2119, !2120, !2121, !2131, !2136, !2139, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1257, file: !1258, line: 646, baseType: !1261, size: 128)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1262, line: 56, size: 128, elements: !1263)
!1262 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1263 = !{!1264, !1265}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1261, file: !1262, line: 57, baseType: !151, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1261, file: !1262, line: 58, baseType: !457, size: 32, offset: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1257, file: !1258, line: 649, baseType: !156, size: 64, offset: 128)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1257, file: !1258, line: 657, baseType: !149, size: 64, offset: 192)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1257, file: !1258, line: 658, baseType: !1269, size: 32, offset: 256)
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1270, line: 113, baseType: !1271)
!1270 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1270, line: 111, size: 32, elements: !1272)
!1272 = !{!1273}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1271, file: !1270, line: 112, baseType: !787, size: 32)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1257, file: !1258, line: 660, baseType: !7, size: 32, offset: 288)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1257, file: !1258, line: 661, baseType: !7, size: 32, offset: 320)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1257, file: !1258, line: 684, baseType: !146, size: 32, offset: 352)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1257, file: !1258, line: 686, baseType: !146, size: 32, offset: 384)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1257, file: !1258, line: 687, baseType: !146, size: 32, offset: 416)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1257, file: !1258, line: 688, baseType: !146, size: 32, offset: 448)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1257, file: !1258, line: 689, baseType: !7, size: 32, offset: 480)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1257, file: !1258, line: 691, baseType: !1282, size: 64, offset: 512)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1284)
!1284 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1258, line: 691, flags: DIFlagFwdDecl)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1257, file: !1258, line: 692, baseType: !1286, size: 832, offset: 576)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1258, line: 451, size: 832, elements: !1287)
!1287 = !{!1288, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1286, file: !1258, line: 453, baseType: !1289, size: 128)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1258, line: 325, size: 128, elements: !1290)
!1290 = !{!1291, !1292}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1289, file: !1258, line: 326, baseType: !151, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1289, file: !1258, line: 327, baseType: !457, size: 32, offset: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1286, file: !1258, line: 454, baseType: !800, size: 192, align: 64, offset: 128)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1286, file: !1258, line: 455, baseType: !267, size: 128, offset: 320)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1286, file: !1258, line: 456, baseType: !7, size: 32, offset: 448)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1286, file: !1258, line: 458, baseType: !463, size: 64, offset: 512)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1286, file: !1258, line: 459, baseType: !463, size: 64, offset: 576)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1286, file: !1258, line: 460, baseType: !463, size: 64, offset: 640)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1286, file: !1258, line: 461, baseType: !463, size: 64, offset: 704)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1286, file: !1258, line: 463, baseType: !463, size: 64, offset: 768)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1286, file: !1258, line: 465, baseType: !1302, offset: 832)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1258, line: 415, elements: !294)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1257, file: !1258, line: 693, baseType: !1304, size: 384, offset: 1408)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1258, line: 489, size: 384, elements: !1305)
!1305 = !{!1306, !1307, !1308, !1309, !1310, !1311, !1312}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1304, file: !1258, line: 490, baseType: !267, size: 128)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1304, file: !1258, line: 491, baseType: !151, size: 64, offset: 128)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1304, file: !1258, line: 492, baseType: !151, size: 64, offset: 192)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1304, file: !1258, line: 493, baseType: !7, size: 32, offset: 256)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1304, file: !1258, line: 494, baseType: !150, size: 16, offset: 288)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1304, file: !1258, line: 495, baseType: !150, size: 16, offset: 304)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1304, file: !1258, line: 497, baseType: !1313, size: 64, offset: 320)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1257, file: !1258, line: 697, baseType: !1315, size: 1792, offset: 1792)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1258, line: 507, size: 1792, elements: !1316)
!1316 = !{!1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1396, !1397}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1315, file: !1258, line: 508, baseType: !800, size: 192, align: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1315, file: !1258, line: 515, baseType: !463, size: 64, offset: 192)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1315, file: !1258, line: 516, baseType: !463, size: 64, offset: 256)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1315, file: !1258, line: 517, baseType: !463, size: 64, offset: 320)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1315, file: !1258, line: 518, baseType: !463, size: 64, offset: 384)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1315, file: !1258, line: 519, baseType: !463, size: 64, offset: 448)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1315, file: !1258, line: 526, baseType: !817, size: 64, offset: 512)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1315, file: !1258, line: 527, baseType: !463, size: 64, offset: 576)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1315, file: !1258, line: 528, baseType: !7, size: 32, offset: 640)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1315, file: !1258, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1315, file: !1258, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1315, file: !1258, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1315, file: !1258, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1315, file: !1258, line: 563, baseType: !1331, size: 512, offset: 704)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1332)
!1332 = !{!1333, !1341, !1342, !1347, !1390, !1393, !1394, !1395}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1331, file: !20, line: 119, baseType: !1334, size: 256)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1335, line: 9, size: 256, elements: !1336)
!1335 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1336 = !{!1337, !1338}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1334, file: !1335, line: 10, baseType: !800, size: 192, align: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1334, file: !1335, line: 11, baseType: !1339, size: 64, offset: 192)
!1339 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1340, line: 29, baseType: !817)
!1340 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1331, file: !20, line: 120, baseType: !1339, size: 64, offset: 256)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1331, file: !20, line: 121, baseType: !1343, size: 64, offset: 320)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!19, !1346}
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1331, file: !20, line: 122, baseType: !1348, size: 64, offset: 384)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1350)
!1350 = !{!1351, !1371, !1372, !1375, !1380, !1381, !1385, !1389}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1349, file: !20, line: 160, baseType: !1352, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1354)
!1354 = !{!1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1353, file: !20, line: 215, baseType: !820)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1353, file: !20, line: 216, baseType: !7, size: 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1353, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1353, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1353, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1353, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1353, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1353, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1353, file: !20, line: 233, baseType: !1339, size: 64, offset: 128)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1353, file: !20, line: 234, baseType: !1346, size: 64, offset: 192)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1353, file: !20, line: 235, baseType: !1339, size: 64, offset: 256)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1353, file: !20, line: 236, baseType: !1346, size: 64, offset: 320)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1353, file: !20, line: 237, baseType: !1368, size: 4096, offset: 512)
!1368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1349, size: 4096, elements: !1369)
!1369 = !{!1370}
!1370 = !DISubrange(count: 8)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1349, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1349, file: !20, line: 162, baseType: !1373, size: 32, offset: 96)
!1373 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !148, line: 27, baseType: !1374)
!1374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !352, line: 96, baseType: !146)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1349, file: !20, line: 163, baseType: !1376, size: 32, offset: 128)
!1376 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !430, line: 276, baseType: !1377)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !430, line: 276, size: 32, elements: !1378)
!1378 = !{!1379}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1377, file: !430, line: 276, baseType: !434, size: 32)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1349, file: !20, line: 164, baseType: !1346, size: 64, offset: 192)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1349, file: !20, line: 165, baseType: !1382, size: 128, offset: 256)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1335, line: 14, size: 128, elements: !1383)
!1383 = !{!1384}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1382, file: !1335, line: 15, baseType: !792, size: 128)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1349, file: !20, line: 166, baseType: !1386, size: 64, offset: 384)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{!1339}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1349, file: !20, line: 167, baseType: !1339, size: 64, offset: 448)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1331, file: !20, line: 123, baseType: !1391, size: 8, offset: 448)
!1391 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !458, line: 17, baseType: !1392)
!1392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !460, line: 21, baseType: !469)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1331, file: !20, line: 124, baseType: !1391, size: 8, offset: 456)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1331, file: !20, line: 125, baseType: !1391, size: 8, offset: 464)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1331, file: !20, line: 126, baseType: !1391, size: 8, offset: 472)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1315, file: !1258, line: 572, baseType: !1331, size: 512, offset: 1216)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1315, file: !1258, line: 580, baseType: !1398, size: 64, offset: 1728)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1257, file: !1258, line: 721, baseType: !7, size: 32, offset: 3584)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1257, file: !1258, line: 722, baseType: !146, size: 32, offset: 3616)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1257, file: !1258, line: 723, baseType: !1402, size: 64, offset: 3648)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1404)
!1404 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1405, line: 17, baseType: !1406)
!1405 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1405, line: 17, size: 64, elements: !1407)
!1407 = !{!1408}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1406, file: !1405, line: 17, baseType: !1409, size: 64)
!1409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 64, elements: !1410)
!1410 = !{!1411}
!1411 = !DISubrange(count: 1)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1257, file: !1258, line: 724, baseType: !1404, size: 64, offset: 3712)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1257, file: !1258, line: 749, baseType: !1414, offset: 3776)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1258, line: 290, elements: !294)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1257, file: !1258, line: 751, baseType: !267, size: 128, offset: 3776)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1257, file: !1258, line: 757, baseType: !1014, size: 64, offset: 3904)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1257, file: !1258, line: 758, baseType: !1014, size: 64, offset: 3968)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1257, file: !1258, line: 761, baseType: !1419, size: 320, offset: 4032)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1191, line: 34, size: 320, elements: !1420)
!1420 = !{!1421, !1422}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1419, file: !1191, line: 35, baseType: !463, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1419, file: !1191, line: 36, baseType: !1423, size: 256, offset: 64)
!1423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1021, size: 256, elements: !1195)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1257, file: !1258, line: 766, baseType: !146, size: 32, offset: 4352)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1257, file: !1258, line: 767, baseType: !146, size: 32, offset: 4384)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1257, file: !1258, line: 768, baseType: !146, size: 32, offset: 4416)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1257, file: !1258, line: 770, baseType: !146, size: 32, offset: 4448)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1257, file: !1258, line: 772, baseType: !151, size: 64, offset: 4480)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1257, file: !1258, line: 775, baseType: !7, size: 32, offset: 4544)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1257, file: !1258, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1257, file: !1258, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1257, file: !1258, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1257, file: !1258, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1257, file: !1258, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1257, file: !1258, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1257, file: !1258, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1257, file: !1258, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1257, file: !1258, line: 831, baseType: !151, size: 64, offset: 4672)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1257, file: !1258, line: 833, baseType: !1440, size: 384, offset: 4736)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1441)
!1441 = !{!1442, !1447}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1440, file: !25, line: 26, baseType: !1443, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{!157, !1446}
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, scope: !1440, file: !25, line: 27, baseType: !1448, size: 320, offset: 64)
!1448 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1440, file: !25, line: 27, size: 320, elements: !1449)
!1449 = !{!1450, !1460, !1487}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1448, file: !25, line: 36, baseType: !1451, size: 320)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1448, file: !25, line: 29, size: 320, elements: !1452)
!1452 = !{!1453, !1455, !1456, !1457, !1458, !1459}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1451, file: !25, line: 30, baseType: !1454, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1451, file: !25, line: 31, baseType: !457, size: 32, offset: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1451, file: !25, line: 32, baseType: !457, size: 32, offset: 96)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1451, file: !25, line: 33, baseType: !457, size: 32, offset: 128)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1451, file: !25, line: 34, baseType: !463, size: 64, offset: 192)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1451, file: !25, line: 35, baseType: !1454, size: 64, offset: 256)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1448, file: !25, line: 46, baseType: !1461, size: 192)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1448, file: !25, line: 38, size: 192, elements: !1462)
!1462 = !{!1463, !1464, !1465, !1486}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1461, file: !25, line: 39, baseType: !1373, size: 32)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1461, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1465 = !DIDerivedType(tag: DW_TAG_member, scope: !1461, file: !25, line: 41, baseType: !1466, size: 64, offset: 64)
!1466 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1461, file: !25, line: 41, size: 64, elements: !1467)
!1467 = !{!1468, !1476}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1466, file: !25, line: 42, baseType: !1469, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1471, line: 7, size: 128, elements: !1472)
!1471 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1472 = !{!1473, !1475}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1470, file: !1471, line: 8, baseType: !1474, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !352, line: 93, baseType: !573)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1470, file: !1471, line: 9, baseType: !573, size: 64, offset: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1466, file: !25, line: 43, baseType: !1477, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1479, line: 7, size: 64, elements: !1480)
!1479 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1480 = !{!1481, !1485}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1478, file: !1479, line: 8, baseType: !1482, size: 32)
!1482 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1479, line: 5, baseType: !1483)
!1483 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !458, line: 20, baseType: !1484)
!1484 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !460, line: 26, baseType: !146)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1478, file: !1479, line: 9, baseType: !1483, size: 32, offset: 32)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1461, file: !25, line: 45, baseType: !463, size: 64, offset: 128)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1448, file: !25, line: 54, baseType: !1488, size: 256)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1448, file: !25, line: 48, size: 256, elements: !1489)
!1489 = !{!1490, !1493, !1494, !1495, !1496}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1488, file: !25, line: 49, baseType: !1491, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1488, file: !25, line: 50, baseType: !146, size: 32, offset: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1488, file: !25, line: 51, baseType: !146, size: 32, offset: 96)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1488, file: !25, line: 52, baseType: !151, size: 64, offset: 128)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1488, file: !25, line: 53, baseType: !151, size: 64, offset: 192)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1257, file: !1258, line: 835, baseType: !1498, size: 32, offset: 5120)
!1498 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !148, line: 22, baseType: !1499)
!1499 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !352, line: 28, baseType: !146)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1257, file: !1258, line: 836, baseType: !1498, size: 32, offset: 5152)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1257, file: !1258, line: 840, baseType: !151, size: 64, offset: 5184)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1257, file: !1258, line: 849, baseType: !1256, size: 64, offset: 5248)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1257, file: !1258, line: 852, baseType: !1256, size: 64, offset: 5312)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1257, file: !1258, line: 857, baseType: !267, size: 128, offset: 5376)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1257, file: !1258, line: 858, baseType: !267, size: 128, offset: 5504)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1257, file: !1258, line: 859, baseType: !1256, size: 64, offset: 5632)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1257, file: !1258, line: 867, baseType: !267, size: 128, offset: 5696)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1257, file: !1258, line: 868, baseType: !267, size: 128, offset: 5824)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1257, file: !1258, line: 871, baseType: !1510, size: 64, offset: 5952)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1512)
!1512 = !{!1513, !1514, !1515, !1516, !1518, !1519, !1526, !1527}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1511, file: !53, line: 61, baseType: !1269, size: 32)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1511, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1511, file: !53, line: 63, baseType: !280, offset: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1511, file: !53, line: 65, baseType: !1517, size: 256, offset: 64)
!1517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !675, size: 256, elements: !1195)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1511, file: !53, line: 66, baseType: !675, size: 64, offset: 320)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1511, file: !53, line: 68, baseType: !1520, size: 128, offset: 384)
!1520 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1521, line: 40, baseType: !1522)
!1521 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1521, line: 36, size: 128, elements: !1523)
!1523 = !{!1524, !1525}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1522, file: !1521, line: 37, baseType: !280)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1522, file: !1521, line: 38, baseType: !267, size: 128)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1511, file: !53, line: 69, baseType: !407, size: 128, align: 64, offset: 512)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1511, file: !53, line: 70, baseType: !1528, size: 128, offset: 640)
!1528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1529, size: 128, elements: !1410)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1530)
!1530 = !{!1531, !1532}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1529, file: !53, line: 55, baseType: !146, size: 32)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1529, file: !53, line: 56, baseType: !1533, size: 64, offset: 64)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1257, file: !1258, line: 872, baseType: !1536, size: 512, offset: 6016)
!1536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !679, size: 512, elements: !1195)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1257, file: !1258, line: 873, baseType: !267, size: 128, offset: 6528)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1257, file: !1258, line: 874, baseType: !267, size: 128, offset: 6656)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1257, file: !1258, line: 876, baseType: !1540, size: 64, offset: 6784)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1542, line: 26, size: 192, elements: !1543)
!1542 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1543 = !{!1544, !1545}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1541, file: !1542, line: 27, baseType: !7, size: 32)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1541, file: !1542, line: 28, baseType: !1546, size: 128, offset: 64)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1547, line: 43, size: 128, elements: !1548)
!1547 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1548 = !{!1549, !1550}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1546, file: !1547, line: 44, baseType: !820)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1546, file: !1547, line: 45, baseType: !267, size: 128)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1257, file: !1258, line: 879, baseType: !745, size: 64, offset: 6848)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1257, file: !1258, line: 882, baseType: !745, size: 64, offset: 6912)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1257, file: !1258, line: 884, baseType: !463, size: 64, offset: 6976)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1257, file: !1258, line: 885, baseType: !463, size: 64, offset: 7040)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1257, file: !1258, line: 890, baseType: !463, size: 64, offset: 7104)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1257, file: !1258, line: 891, baseType: !1557, size: 128, offset: 7168)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1258, line: 242, size: 128, elements: !1558)
!1558 = !{!1559, !1560, !1561}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1557, file: !1258, line: 244, baseType: !463, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1557, file: !1258, line: 245, baseType: !463, size: 64, offset: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1557, file: !1258, line: 246, baseType: !820, offset: 128)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1257, file: !1258, line: 900, baseType: !151, size: 64, offset: 7296)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1257, file: !1258, line: 901, baseType: !151, size: 64, offset: 7360)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1257, file: !1258, line: 904, baseType: !463, size: 64, offset: 7424)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1257, file: !1258, line: 907, baseType: !463, size: 64, offset: 7488)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1257, file: !1258, line: 910, baseType: !151, size: 64, offset: 7552)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1257, file: !1258, line: 911, baseType: !151, size: 64, offset: 7616)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1257, file: !1258, line: 914, baseType: !1569, size: 640, offset: 7680)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1570, line: 123, size: 640, elements: !1571)
!1570 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1571 = !{!1572, !1578, !1579}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1569, file: !1570, line: 124, baseType: !1573, size: 576)
!1573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1574, size: 576, elements: !226)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1570, line: 108, size: 192, elements: !1575)
!1575 = !{!1576, !1577}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1574, file: !1570, line: 109, baseType: !463, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1574, file: !1570, line: 110, baseType: !1382, size: 128, offset: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1569, file: !1570, line: 125, baseType: !7, size: 32, offset: 576)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1569, file: !1570, line: 126, baseType: !7, size: 32, offset: 608)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1257, file: !1258, line: 917, baseType: !1581, size: 192, offset: 8320)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1570, line: 134, size: 192, elements: !1582)
!1582 = !{!1583, !1584}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1581, file: !1570, line: 135, baseType: !407, size: 128, align: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1581, file: !1570, line: 136, baseType: !7, size: 32, offset: 128)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1257, file: !1258, line: 923, baseType: !1586, size: 64, offset: 8512)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1588)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1589, line: 111, size: 1280, elements: !1590)
!1589 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1590 = !{!1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1610, !1611, !1612, !1613, !1614, !1615, !1722, !1723, !1724, !1725, !1751, !1754, !1764}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1588, file: !1589, line: 112, baseType: !787, size: 32)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1588, file: !1589, line: 120, baseType: !477, size: 32, offset: 32)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1588, file: !1589, line: 121, baseType: !485, size: 32, offset: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1588, file: !1589, line: 122, baseType: !477, size: 32, offset: 96)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1588, file: !1589, line: 123, baseType: !485, size: 32, offset: 128)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1588, file: !1589, line: 124, baseType: !477, size: 32, offset: 160)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1588, file: !1589, line: 125, baseType: !485, size: 32, offset: 192)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1588, file: !1589, line: 126, baseType: !477, size: 32, offset: 224)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1588, file: !1589, line: 127, baseType: !485, size: 32, offset: 256)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1588, file: !1589, line: 128, baseType: !7, size: 32, offset: 288)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1588, file: !1589, line: 129, baseType: !1602, size: 64, offset: 320)
!1602 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1603, line: 26, baseType: !1604)
!1603 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1603, line: 24, size: 64, elements: !1605)
!1605 = !{!1606}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1604, file: !1603, line: 25, baseType: !1607, size: 64)
!1607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !459, size: 64, elements: !1608)
!1608 = !{!1609}
!1609 = !DISubrange(count: 2)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1588, file: !1589, line: 130, baseType: !1602, size: 64, offset: 384)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1588, file: !1589, line: 131, baseType: !1602, size: 64, offset: 448)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1588, file: !1589, line: 132, baseType: !1602, size: 64, offset: 512)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1588, file: !1589, line: 133, baseType: !1602, size: 64, offset: 576)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1588, file: !1589, line: 135, baseType: !469, size: 8, offset: 640)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1588, file: !1589, line: 137, baseType: !1616, size: 64, offset: 704)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1618, line: 189, size: 1664, elements: !1619)
!1618 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1619 = !{!1620, !1621, !1624, !1629, !1630, !1633, !1634, !1639, !1640, !1641, !1642, !1644, !1645, !1646, !1647, !1648, !1686, !1707}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1617, file: !1618, line: 190, baseType: !1269, size: 32)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1617, file: !1618, line: 191, baseType: !1622, size: 32, offset: 32)
!1622 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1618, line: 28, baseType: !1623)
!1623 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !148, line: 98, baseType: !1483)
!1624 = !DIDerivedType(tag: DW_TAG_member, scope: !1617, file: !1618, line: 192, baseType: !1625, size: 192, offset: 64)
!1625 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1617, file: !1618, line: 192, size: 192, elements: !1626)
!1626 = !{!1627, !1628}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1625, file: !1618, line: 193, baseType: !267, size: 128)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1625, file: !1618, line: 194, baseType: !800, size: 192, align: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1617, file: !1618, line: 199, baseType: !807, size: 256, offset: 256)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1617, file: !1618, line: 200, baseType: !1631, size: 64, offset: 512)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1618, line: 200, flags: DIFlagFwdDecl)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1617, file: !1618, line: 201, baseType: !149, size: 64, offset: 576)
!1634 = !DIDerivedType(tag: DW_TAG_member, scope: !1617, file: !1618, line: 202, baseType: !1635, size: 64, offset: 640)
!1635 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1617, file: !1618, line: 202, size: 64, elements: !1636)
!1636 = !{!1637, !1638}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1635, file: !1618, line: 203, baseType: !579, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1635, file: !1618, line: 204, baseType: !579, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1617, file: !1618, line: 206, baseType: !579, size: 64, offset: 704)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1617, file: !1618, line: 207, baseType: !477, size: 32, offset: 768)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1617, file: !1618, line: 208, baseType: !485, size: 32, offset: 800)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1617, file: !1618, line: 209, baseType: !1643, size: 32, offset: 832)
!1643 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1618, line: 31, baseType: !599)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1617, file: !1618, line: 210, baseType: !150, size: 16, offset: 864)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1617, file: !1618, line: 211, baseType: !150, size: 16, offset: 880)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1617, file: !1618, line: 215, baseType: !1245, size: 16, offset: 896)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1617, file: !1618, line: 222, baseType: !151, size: 64, offset: 960)
!1648 = !DIDerivedType(tag: DW_TAG_member, scope: !1617, file: !1618, line: 239, baseType: !1649, size: 320, offset: 1024)
!1649 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1617, file: !1618, line: 239, size: 320, elements: !1650)
!1650 = !{!1651, !1678}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1649, file: !1618, line: 240, baseType: !1652, size: 320)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1618, line: 108, size: 320, elements: !1653)
!1653 = !{!1654, !1655, !1667, !1670, !1677}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1652, file: !1618, line: 110, baseType: !151, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, scope: !1652, file: !1618, line: 111, baseType: !1656, size: 64, offset: 64)
!1656 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1652, file: !1618, line: 111, size: 64, elements: !1657)
!1657 = !{!1658, !1666}
!1658 = !DIDerivedType(tag: DW_TAG_member, scope: !1656, file: !1618, line: 112, baseType: !1659, size: 64)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1656, file: !1618, line: 112, size: 64, elements: !1660)
!1660 = !{!1661, !1662}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1659, file: !1618, line: 114, baseType: !899, size: 16)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1659, file: !1618, line: 115, baseType: !1663, size: 48, offset: 16)
!1663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 48, elements: !1664)
!1664 = !{!1665}
!1665 = !DISubrange(count: 6)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1656, file: !1618, line: 121, baseType: !151, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1652, file: !1618, line: 123, baseType: !1668, size: 64, offset: 128)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1618, line: 96, flags: DIFlagFwdDecl)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1652, file: !1618, line: 124, baseType: !1671, size: 64, offset: 192)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1618, line: 102, size: 192, elements: !1673)
!1673 = !{!1674, !1675, !1676}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1672, file: !1618, line: 103, baseType: !407, size: 128, align: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1672, file: !1618, line: 104, baseType: !1269, size: 32, offset: 128)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1672, file: !1618, line: 105, baseType: !231, size: 8, offset: 160)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1652, file: !1618, line: 125, baseType: !194, size: 64, offset: 256)
!1678 = !DIDerivedType(tag: DW_TAG_member, scope: !1649, file: !1618, line: 241, baseType: !1679, size: 320)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1649, file: !1618, line: 241, size: 320, elements: !1680)
!1680 = !{!1681, !1682, !1683, !1684, !1685}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1679, file: !1618, line: 242, baseType: !151, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1679, file: !1618, line: 243, baseType: !151, size: 64, offset: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1679, file: !1618, line: 244, baseType: !1668, size: 64, offset: 128)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1679, file: !1618, line: 245, baseType: !1671, size: 64, offset: 192)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1679, file: !1618, line: 246, baseType: !321, size: 64, offset: 256)
!1686 = !DIDerivedType(tag: DW_TAG_member, scope: !1617, file: !1618, line: 254, baseType: !1687, size: 256, offset: 1344)
!1687 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1617, file: !1618, line: 254, size: 256, elements: !1688)
!1688 = !{!1689, !1695}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1687, file: !1618, line: 255, baseType: !1690, size: 256)
!1690 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1618, line: 128, size: 256, elements: !1691)
!1691 = !{!1692, !1693}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1690, file: !1618, line: 129, baseType: !149, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1690, file: !1618, line: 130, baseType: !1694, size: 256)
!1694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 256, elements: !1195)
!1695 = !DIDerivedType(tag: DW_TAG_member, scope: !1687, file: !1618, line: 256, baseType: !1696, size: 256)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1687, file: !1618, line: 256, size: 256, elements: !1697)
!1697 = !{!1698, !1699}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1696, file: !1618, line: 258, baseType: !267, size: 128)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1696, file: !1618, line: 259, baseType: !1700, size: 128, offset: 128)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1701, line: 22, size: 128, elements: !1702)
!1701 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1702 = !{!1703, !1706}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1700, file: !1701, line: 23, baseType: !1704, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1701, line: 23, flags: DIFlagFwdDecl)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1700, file: !1701, line: 24, baseType: !151, size: 64, offset: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1617, file: !1618, line: 274, baseType: !1708, size: 64, offset: 1600)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1618, line: 170, size: 192, elements: !1710)
!1710 = !{!1711, !1720, !1721}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1709, file: !1618, line: 171, baseType: !1712, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1618, line: 165, baseType: !1713)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{!146, !1616, !1716, !1718, !1616}
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1669)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1690)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1709, file: !1618, line: 172, baseType: !1616, size: 64, offset: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1709, file: !1618, line: 173, baseType: !1668, size: 64, offset: 128)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1588, file: !1589, line: 138, baseType: !1616, size: 64, offset: 768)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1588, file: !1589, line: 139, baseType: !1616, size: 64, offset: 832)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1588, file: !1589, line: 140, baseType: !1616, size: 64, offset: 896)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1588, file: !1589, line: 145, baseType: !1726, size: 64, offset: 960)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1728, line: 13, size: 896, elements: !1729)
!1728 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1729 = !{!1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1727, file: !1728, line: 14, baseType: !1269, size: 32)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1727, file: !1728, line: 15, baseType: !787, size: 32, offset: 32)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1727, file: !1728, line: 16, baseType: !787, size: 32, offset: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1727, file: !1728, line: 21, baseType: !811, size: 64, offset: 128)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1727, file: !1728, line: 27, baseType: !151, size: 64, offset: 192)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1727, file: !1728, line: 28, baseType: !151, size: 64, offset: 256)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1727, file: !1728, line: 29, baseType: !811, size: 64, offset: 320)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1727, file: !1728, line: 32, baseType: !679, size: 128, offset: 384)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1727, file: !1728, line: 33, baseType: !477, size: 32, offset: 512)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1727, file: !1728, line: 37, baseType: !811, size: 64, offset: 576)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1727, file: !1728, line: 44, baseType: !1741, size: 256, offset: 640)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1742, line: 15, size: 256, elements: !1743)
!1742 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1743 = !{!1744, !1745, !1746, !1747, !1748, !1749, !1750}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1741, file: !1742, line: 16, baseType: !820)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1741, file: !1742, line: 18, baseType: !146, size: 32)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1741, file: !1742, line: 19, baseType: !146, size: 32, offset: 32)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1741, file: !1742, line: 20, baseType: !146, size: 32, offset: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1741, file: !1742, line: 21, baseType: !146, size: 32, offset: 96)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1741, file: !1742, line: 22, baseType: !151, size: 64, offset: 128)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1741, file: !1742, line: 23, baseType: !151, size: 64, offset: 192)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1588, file: !1589, line: 146, baseType: !1752, size: 64, offset: 1024)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !478, line: 18, flags: DIFlagFwdDecl)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1588, file: !1589, line: 147, baseType: !1755, size: 64, offset: 1088)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1589, line: 25, size: 64, elements: !1757)
!1757 = !{!1758, !1759, !1760}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1756, file: !1589, line: 26, baseType: !787, size: 32)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1756, file: !1589, line: 27, baseType: !146, size: 32, offset: 32)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1756, file: !1589, line: 28, baseType: !1761, offset: 64)
!1761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !485, elements: !1762)
!1762 = !{!1763}
!1763 = !DISubrange(count: 0)
!1764 = !DIDerivedType(tag: DW_TAG_member, scope: !1588, file: !1589, line: 149, baseType: !1765, size: 128, offset: 1152)
!1765 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1588, file: !1589, line: 149, size: 128, elements: !1766)
!1766 = !{!1767, !1768}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1765, file: !1589, line: 150, baseType: !146, size: 32)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1765, file: !1589, line: 151, baseType: !407, size: 128, align: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1257, file: !1258, line: 926, baseType: !1586, size: 64, offset: 8576)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1257, file: !1258, line: 929, baseType: !1586, size: 64, offset: 8640)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1257, file: !1258, line: 933, baseType: !1616, size: 64, offset: 8704)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1257, file: !1258, line: 943, baseType: !1773, size: 128, offset: 8768)
!1773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 128, elements: !1774)
!1774 = !{!1775}
!1775 = !DISubrange(count: 16)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1257, file: !1258, line: 945, baseType: !1777, size: 64, offset: 8896)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1258, line: 49, flags: DIFlagFwdDecl)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1257, file: !1258, line: 956, baseType: !1780, size: 64, offset: 8960)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1258, line: 45, flags: DIFlagFwdDecl)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1257, file: !1258, line: 959, baseType: !1783, size: 64, offset: 9024)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1258, line: 959, flags: DIFlagFwdDecl)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1257, file: !1258, line: 962, baseType: !1786, size: 64, offset: 9088)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1258, line: 66, flags: DIFlagFwdDecl)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1257, file: !1258, line: 966, baseType: !1789, size: 64, offset: 9152)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1791, line: 35, flags: DIFlagFwdDecl)
!1791 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1257, file: !1258, line: 969, baseType: !1793, size: 64, offset: 9216)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1795, line: 82, size: 7296, elements: !1796)
!1795 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1796 = !{!1797, !1798, !1799, !1800, !1801, !1802, !1803, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1832, !1841, !1842, !1844, !1845, !1846, !1849, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1879, !1880, !1887, !1888, !1889, !1890, !1891, !1892}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1794, file: !1795, line: 83, baseType: !1269, size: 32)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1794, file: !1795, line: 84, baseType: !787, size: 32, offset: 32)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1794, file: !1795, line: 85, baseType: !146, size: 32, offset: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1794, file: !1795, line: 86, baseType: !267, size: 128, offset: 128)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1794, file: !1795, line: 88, baseType: !1520, size: 128, offset: 256)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1794, file: !1795, line: 91, baseType: !1256, size: 64, offset: 384)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1794, file: !1795, line: 94, baseType: !1804, size: 192, offset: 448)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1805, line: 30, size: 192, elements: !1806)
!1805 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1806 = !{!1807, !1808}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1804, file: !1805, line: 31, baseType: !267, size: 128)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1804, file: !1805, line: 32, baseType: !1809, size: 64, offset: 128)
!1809 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1810, line: 25, baseType: !1811)
!1810 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1810, line: 23, size: 64, elements: !1812)
!1812 = !{!1813}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1811, file: !1810, line: 24, baseType: !1409, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1794, file: !1795, line: 97, baseType: !675, size: 64, offset: 640)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1794, file: !1795, line: 100, baseType: !146, size: 32, offset: 704)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1794, file: !1795, line: 106, baseType: !146, size: 32, offset: 736)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1794, file: !1795, line: 107, baseType: !1256, size: 64, offset: 768)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1794, file: !1795, line: 110, baseType: !146, size: 32, offset: 832)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1794, file: !1795, line: 111, baseType: !7, size: 32, offset: 864)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1794, file: !1795, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1794, file: !1795, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1794, file: !1795, line: 128, baseType: !146, size: 32, offset: 928)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1794, file: !1795, line: 129, baseType: !267, size: 128, offset: 960)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1794, file: !1795, line: 132, baseType: !1331, size: 512, offset: 1088)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1794, file: !1795, line: 133, baseType: !1339, size: 64, offset: 1600)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1794, file: !1795, line: 140, baseType: !1827, size: 256, offset: 1664)
!1827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1828, size: 256, elements: !1608)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1795, line: 38, size: 128, elements: !1829)
!1829 = !{!1830, !1831}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1828, file: !1795, line: 39, baseType: !463, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1828, file: !1795, line: 40, baseType: !463, size: 64, offset: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1794, file: !1795, line: 146, baseType: !1833, size: 192, offset: 1920)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1795, line: 66, size: 192, elements: !1834)
!1834 = !{!1835}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1833, file: !1795, line: 67, baseType: !1836, size: 192)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1795, line: 47, size: 192, elements: !1837)
!1837 = !{!1838, !1839, !1840}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1836, file: !1795, line: 48, baseType: !813, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1836, file: !1795, line: 49, baseType: !813, size: 64, offset: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1836, file: !1795, line: 50, baseType: !813, size: 64, offset: 128)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1794, file: !1795, line: 150, baseType: !1569, size: 640, offset: 2112)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1794, file: !1795, line: 153, baseType: !1843, size: 256, offset: 2752)
!1843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1510, size: 256, elements: !1195)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1794, file: !1795, line: 159, baseType: !1510, size: 64, offset: 3008)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1794, file: !1795, line: 162, baseType: !146, size: 32, offset: 3072)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1794, file: !1795, line: 164, baseType: !1847, size: 64, offset: 3136)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1795, line: 164, flags: DIFlagFwdDecl)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1794, file: !1795, line: 175, baseType: !1850, size: 32, offset: 3200)
!1850 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !430, line: 805, baseType: !1851)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !430, line: 798, size: 32, elements: !1852)
!1852 = !{!1853, !1854}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1851, file: !430, line: 803, baseType: !429, size: 32)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1851, file: !430, line: 804, baseType: !280, offset: 32)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1794, file: !1795, line: 176, baseType: !463, size: 64, offset: 3264)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1794, file: !1795, line: 176, baseType: !463, size: 64, offset: 3328)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1794, file: !1795, line: 176, baseType: !463, size: 64, offset: 3392)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1794, file: !1795, line: 176, baseType: !463, size: 64, offset: 3456)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1794, file: !1795, line: 177, baseType: !463, size: 64, offset: 3520)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1794, file: !1795, line: 178, baseType: !463, size: 64, offset: 3584)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1794, file: !1795, line: 179, baseType: !1557, size: 128, offset: 3648)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1794, file: !1795, line: 180, baseType: !151, size: 64, offset: 3776)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1794, file: !1795, line: 180, baseType: !151, size: 64, offset: 3840)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1794, file: !1795, line: 180, baseType: !151, size: 64, offset: 3904)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1794, file: !1795, line: 180, baseType: !151, size: 64, offset: 3968)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1794, file: !1795, line: 181, baseType: !151, size: 64, offset: 4032)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1794, file: !1795, line: 181, baseType: !151, size: 64, offset: 4096)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1794, file: !1795, line: 181, baseType: !151, size: 64, offset: 4160)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1794, file: !1795, line: 181, baseType: !151, size: 64, offset: 4224)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1794, file: !1795, line: 182, baseType: !151, size: 64, offset: 4288)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1794, file: !1795, line: 182, baseType: !151, size: 64, offset: 4352)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1794, file: !1795, line: 182, baseType: !151, size: 64, offset: 4416)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1794, file: !1795, line: 182, baseType: !151, size: 64, offset: 4480)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1794, file: !1795, line: 183, baseType: !151, size: 64, offset: 4544)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1794, file: !1795, line: 183, baseType: !151, size: 64, offset: 4608)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1794, file: !1795, line: 184, baseType: !1877, offset: 4672)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1878, line: 12, elements: !294)
!1878 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1794, file: !1795, line: 192, baseType: !465, size: 64, offset: 4672)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1794, file: !1795, line: 203, baseType: !1881, size: 2048, offset: 4736)
!1881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1882, size: 2048, elements: !1774)
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1883, line: 43, size: 128, elements: !1884)
!1883 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1884 = !{!1885, !1886}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1882, file: !1883, line: 44, baseType: !366, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1882, file: !1883, line: 45, baseType: !366, size: 64, offset: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1794, file: !1795, line: 220, baseType: !231, size: 8, offset: 6784)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1794, file: !1795, line: 221, baseType: !1245, size: 16, offset: 6800)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1794, file: !1795, line: 222, baseType: !1245, size: 16, offset: 6816)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1794, file: !1795, line: 224, baseType: !1014, size: 64, offset: 6848)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1794, file: !1795, line: 227, baseType: !1213, size: 192, offset: 6912)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1794, file: !1795, line: 233, baseType: !1213, size: 192, offset: 7104)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1257, file: !1258, line: 970, baseType: !1894, size: 64, offset: 9280)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1795, line: 20, size: 16576, elements: !1896)
!1896 = !{!1897, !1898, !1899, !1900}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1895, file: !1795, line: 21, baseType: !280)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1895, file: !1795, line: 22, baseType: !1269, size: 32)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1895, file: !1795, line: 23, baseType: !1520, size: 128, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1895, file: !1795, line: 24, baseType: !1901, size: 16384, offset: 192)
!1901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1902, size: 16384, elements: !324)
!1902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1805, line: 49, size: 256, elements: !1903)
!1903 = !{!1904}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1902, file: !1805, line: 50, baseType: !1905, size: 256)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1805, line: 35, size: 256, elements: !1906)
!1906 = !{!1907, !1914, !1915, !1919}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1905, file: !1805, line: 37, baseType: !1908, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1909, line: 19, baseType: !1910)
!1909 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1909, line: 18, baseType: !1912)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{null, !146}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1905, file: !1805, line: 38, baseType: !151, size: 64, offset: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1905, file: !1805, line: 44, baseType: !1916, size: 64, offset: 128)
!1916 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1909, line: 22, baseType: !1917)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1909, line: 21, baseType: !164)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1905, file: !1805, line: 46, baseType: !1809, size: 64, offset: 192)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1257, file: !1258, line: 971, baseType: !1809, size: 64, offset: 9344)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1257, file: !1258, line: 972, baseType: !1809, size: 64, offset: 9408)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1257, file: !1258, line: 974, baseType: !1809, size: 64, offset: 9472)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1257, file: !1258, line: 975, baseType: !1804, size: 192, offset: 9536)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1257, file: !1258, line: 976, baseType: !151, size: 64, offset: 9728)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1257, file: !1258, line: 977, baseType: !364, size: 64, offset: 9792)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1257, file: !1258, line: 978, baseType: !7, size: 32, offset: 9856)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1257, file: !1258, line: 980, baseType: !410, size: 64, offset: 9920)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1257, file: !1258, line: 989, baseType: !1929, size: 128, offset: 9984)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1930, line: 35, size: 128, elements: !1931)
!1930 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1931 = !{!1932, !1933, !1934}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1929, file: !1930, line: 36, baseType: !146, size: 32)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1929, file: !1930, line: 37, baseType: !787, size: 32, offset: 32)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1929, file: !1930, line: 38, baseType: !1935, size: 64, offset: 64)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1930, line: 23, flags: DIFlagFwdDecl)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1257, file: !1258, line: 992, baseType: !463, size: 64, offset: 10112)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1257, file: !1258, line: 993, baseType: !463, size: 64, offset: 10176)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1257, file: !1258, line: 996, baseType: !280, offset: 10240)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1257, file: !1258, line: 999, baseType: !820, offset: 10240)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1257, file: !1258, line: 1001, baseType: !1942, size: 64, offset: 10240)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1258, line: 636, size: 64, elements: !1943)
!1943 = !{!1944}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1942, file: !1258, line: 637, baseType: !1945, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1257, file: !1258, line: 1005, baseType: !792, size: 128, offset: 10304)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1257, file: !1258, line: 1007, baseType: !1256, size: 64, offset: 10432)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1257, file: !1258, line: 1009, baseType: !1949, size: 64, offset: 10496)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1258, line: 1009, flags: DIFlagFwdDecl)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1257, file: !1258, line: 1043, baseType: !149, size: 64, offset: 10560)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1257, file: !1258, line: 1046, baseType: !1953, size: 64, offset: 10624)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1258, line: 41, flags: DIFlagFwdDecl)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1257, file: !1258, line: 1050, baseType: !1956, size: 64, offset: 10688)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1258, line: 42, flags: DIFlagFwdDecl)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1257, file: !1258, line: 1054, baseType: !1959, size: 64, offset: 10752)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1258, line: 55, flags: DIFlagFwdDecl)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1257, file: !1258, line: 1056, baseType: !1962, size: 64, offset: 10816)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1258, line: 40, flags: DIFlagFwdDecl)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1257, file: !1258, line: 1058, baseType: !1965, size: 64, offset: 10880)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1967, line: 99, size: 704, elements: !1968)
!1967 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1968 = !{!1969, !1970, !1971, !1972, !1973, !1974, !1975, !1994, !1995}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1966, file: !1967, line: 100, baseType: !811, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1966, file: !1967, line: 101, baseType: !787, size: 32, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1966, file: !1967, line: 102, baseType: !787, size: 32, offset: 96)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1966, file: !1967, line: 105, baseType: !280, offset: 128)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1966, file: !1967, line: 107, baseType: !150, size: 16, offset: 128)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1966, file: !1967, line: 109, baseType: !779, size: 128, offset: 192)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1966, file: !1967, line: 110, baseType: !1976, size: 64, offset: 320)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1967, line: 73, size: 448, elements: !1978)
!1978 = !{!1979, !1982, !1983, !1988, !1993}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1977, file: !1967, line: 74, baseType: !1980, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1967, line: 74, flags: DIFlagFwdDecl)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1977, file: !1967, line: 75, baseType: !1965, size: 64, offset: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, scope: !1977, file: !1967, line: 83, baseType: !1984, size: 128, offset: 128)
!1984 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1977, file: !1967, line: 83, size: 128, elements: !1985)
!1985 = !{!1986, !1987}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1984, file: !1967, line: 84, baseType: !267, size: 128)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1984, file: !1967, line: 85, baseType: !975, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, scope: !1977, file: !1967, line: 87, baseType: !1989, size: 128, offset: 256)
!1989 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1977, file: !1967, line: 87, size: 128, elements: !1990)
!1990 = !{!1991, !1992}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1989, file: !1967, line: 88, baseType: !679, size: 128)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1989, file: !1967, line: 89, baseType: !407, size: 128, align: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1977, file: !1967, line: 92, baseType: !7, size: 32, offset: 384)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1966, file: !1967, line: 111, baseType: !675, size: 64, offset: 384)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1966, file: !1967, line: 113, baseType: !1996, size: 256, offset: 448)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1997, line: 102, size: 256, elements: !1998)
!1997 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1998 = !{!1999, !2000, !2001}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1996, file: !1997, line: 103, baseType: !811, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1996, file: !1997, line: 104, baseType: !267, size: 128, offset: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1996, file: !1997, line: 105, baseType: !2002, size: 64, offset: 192)
!2002 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1997, line: 21, baseType: !2003)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{null, !2006}
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1257, file: !1258, line: 1061, baseType: !2008, size: 64, offset: 10944)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1258, line: 43, flags: DIFlagFwdDecl)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1257, file: !1258, line: 1064, baseType: !151, size: 64, offset: 11008)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1257, file: !1258, line: 1065, baseType: !2012, size: 64, offset: 11072)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1805, line: 14, baseType: !2014)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1805, line: 12, size: 384, elements: !2015)
!2015 = !{!2016}
!2016 = !DIDerivedType(tag: DW_TAG_member, scope: !2014, file: !1805, line: 13, baseType: !2017, size: 384)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2014, file: !1805, line: 13, size: 384, elements: !2018)
!2018 = !{!2019, !2020, !2021, !2022}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2017, file: !1805, line: 13, baseType: !146, size: 32)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2017, file: !1805, line: 13, baseType: !146, size: 32, offset: 32)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2017, file: !1805, line: 13, baseType: !146, size: 32, offset: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2017, file: !1805, line: 13, baseType: !2023, size: 256, offset: 128)
!2023 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2024, line: 32, size: 256, elements: !2025)
!2024 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2025 = !{!2026, !2031, !2044, !2050, !2059, !2079, !2084}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2023, file: !2024, line: 37, baseType: !2027, size: 64)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2023, file: !2024, line: 34, size: 64, elements: !2028)
!2028 = !{!2029, !2030}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2027, file: !2024, line: 35, baseType: !1499, size: 32)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2027, file: !2024, line: 36, baseType: !483, size: 32, offset: 32)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2023, file: !2024, line: 45, baseType: !2032, size: 192)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2023, file: !2024, line: 40, size: 192, elements: !2033)
!2033 = !{!2034, !2036, !2037, !2043}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2032, file: !2024, line: 41, baseType: !2035, size: 32)
!2035 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !352, line: 95, baseType: !146)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2032, file: !2024, line: 42, baseType: !146, size: 32, offset: 32)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2032, file: !2024, line: 43, baseType: !2038, size: 64, offset: 64)
!2038 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2024, line: 11, baseType: !2039)
!2039 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2024, line: 8, size: 64, elements: !2040)
!2040 = !{!2041, !2042}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2039, file: !2024, line: 9, baseType: !146, size: 32)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2039, file: !2024, line: 10, baseType: !149, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2032, file: !2024, line: 44, baseType: !146, size: 32, offset: 128)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2023, file: !2024, line: 52, baseType: !2045, size: 128)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2023, file: !2024, line: 48, size: 128, elements: !2046)
!2046 = !{!2047, !2048, !2049}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2045, file: !2024, line: 49, baseType: !1499, size: 32)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2045, file: !2024, line: 50, baseType: !483, size: 32, offset: 32)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2045, file: !2024, line: 51, baseType: !2038, size: 64, offset: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2023, file: !2024, line: 61, baseType: !2051, size: 256)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2023, file: !2024, line: 55, size: 256, elements: !2052)
!2052 = !{!2053, !2054, !2055, !2056, !2058}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2051, file: !2024, line: 56, baseType: !1499, size: 32)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2051, file: !2024, line: 57, baseType: !483, size: 32, offset: 32)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2051, file: !2024, line: 58, baseType: !146, size: 32, offset: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2051, file: !2024, line: 59, baseType: !2057, size: 64, offset: 128)
!2057 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !352, line: 94, baseType: !353)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2051, file: !2024, line: 60, baseType: !2057, size: 64, offset: 192)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2023, file: !2024, line: 95, baseType: !2060, size: 256)
!2060 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2023, file: !2024, line: 64, size: 256, elements: !2061)
!2061 = !{!2062, !2063}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2060, file: !2024, line: 65, baseType: !149, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, scope: !2060, file: !2024, line: 77, baseType: !2064, size: 192, offset: 64)
!2064 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2060, file: !2024, line: 77, size: 192, elements: !2065)
!2065 = !{!2066, !2067, !2074}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2064, file: !2024, line: 82, baseType: !1245, size: 16)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2064, file: !2024, line: 88, baseType: !2068, size: 192)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2064, file: !2024, line: 84, size: 192, elements: !2069)
!2069 = !{!2070, !2072, !2073}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2068, file: !2024, line: 85, baseType: !2071, size: 64)
!2071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 64, elements: !1369)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2068, file: !2024, line: 86, baseType: !149, size: 64, offset: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2068, file: !2024, line: 87, baseType: !149, size: 64, offset: 128)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2064, file: !2024, line: 93, baseType: !2075, size: 96)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2064, file: !2024, line: 90, size: 96, elements: !2076)
!2076 = !{!2077, !2078}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2075, file: !2024, line: 91, baseType: !2071, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2075, file: !2024, line: 92, baseType: !459, size: 32, offset: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2023, file: !2024, line: 101, baseType: !2080, size: 128)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2023, file: !2024, line: 98, size: 128, elements: !2081)
!2081 = !{!2082, !2083}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2080, file: !2024, line: 99, baseType: !157, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2080, file: !2024, line: 100, baseType: !146, size: 32, offset: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2023, file: !2024, line: 108, baseType: !2085, size: 128)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2023, file: !2024, line: 104, size: 128, elements: !2086)
!2086 = !{!2087, !2088, !2089}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2085, file: !2024, line: 105, baseType: !149, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2085, file: !2024, line: 106, baseType: !146, size: 32, offset: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2085, file: !2024, line: 107, baseType: !7, size: 32, offset: 96)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1257, file: !1258, line: 1067, baseType: !1877, offset: 11136)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1257, file: !1258, line: 1099, baseType: !2092, size: 64, offset: 11136)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1258, line: 56, flags: DIFlagFwdDecl)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1257, file: !1258, line: 1103, baseType: !267, size: 128, offset: 11200)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1257, file: !1258, line: 1104, baseType: !2096, size: 64, offset: 11328)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1258, line: 46, flags: DIFlagFwdDecl)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1257, file: !1258, line: 1105, baseType: !1213, size: 192, offset: 11392)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1257, file: !1258, line: 1106, baseType: !7, size: 32, offset: 11584)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1257, file: !1258, line: 1109, baseType: !2101, size: 128, offset: 11648)
!2101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2102, size: 128, elements: !1608)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1258, line: 51, flags: DIFlagFwdDecl)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1257, file: !1258, line: 1110, baseType: !1213, size: 192, offset: 11776)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1257, file: !1258, line: 1111, baseType: !267, size: 128, offset: 11968)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1257, file: !1258, line: 1173, baseType: !2107, size: 64, offset: 12096)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2109, line: 62, size: 256, align: 256, elements: !2110)
!2109 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2110 = !{!2111, !2112, !2113, !2118}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2108, file: !2109, line: 75, baseType: !459, size: 32)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2108, file: !2109, line: 90, baseType: !459, size: 32, offset: 32)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2108, file: !2109, line: 124, baseType: !2114, size: 64, offset: 64)
!2114 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2108, file: !2109, line: 109, size: 64, elements: !2115)
!2115 = !{!2116, !2117}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2114, file: !2109, line: 110, baseType: !464, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2114, file: !2109, line: 112, baseType: !464, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2108, file: !2109, line: 144, baseType: !459, size: 32, offset: 128)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1257, file: !1258, line: 1174, baseType: !457, size: 32, offset: 12160)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1257, file: !1258, line: 1179, baseType: !151, size: 64, offset: 12224)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1257, file: !1258, line: 1182, baseType: !2122, size: 128, offset: 12288)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1191, line: 76, size: 128, elements: !2123)
!2123 = !{!2124, !2129, !2130}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2122, file: !1191, line: 85, baseType: !2125, size: 64)
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2126, line: 7, size: 64, elements: !2127)
!2126 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2127 = !{!2128}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2125, file: !2126, line: 12, baseType: !1406, size: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2122, file: !1191, line: 88, baseType: !231, size: 8, offset: 64)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2122, file: !1191, line: 95, baseType: !231, size: 8, offset: 72)
!2131 = !DIDerivedType(tag: DW_TAG_member, scope: !1257, file: !1258, line: 1184, baseType: !2132, size: 128, offset: 12416)
!2132 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1257, file: !1258, line: 1184, size: 128, elements: !2133)
!2133 = !{!2134, !2135}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2132, file: !1258, line: 1185, baseType: !1269, size: 32)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2132, file: !1258, line: 1186, baseType: !407, size: 128, align: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1257, file: !1258, line: 1190, baseType: !2137, size: 64, offset: 12544)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1258, line: 53, flags: DIFlagFwdDecl)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1257, file: !1258, line: 1192, baseType: !2140, size: 128, offset: 12608)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1191, line: 64, size: 128, elements: !2141)
!2141 = !{!2142, !2143, !2144}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2140, file: !1191, line: 65, baseType: !761, size: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2140, file: !1191, line: 67, baseType: !459, size: 32, offset: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2140, file: !1191, line: 68, baseType: !459, size: 32, offset: 96)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1257, file: !1258, line: 1206, baseType: !146, size: 32, offset: 12736)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1257, file: !1258, line: 1207, baseType: !146, size: 32, offset: 12768)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1257, file: !1258, line: 1209, baseType: !151, size: 64, offset: 12800)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1257, file: !1258, line: 1219, baseType: !463, size: 64, offset: 12864)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1257, file: !1258, line: 1220, baseType: !463, size: 64, offset: 12928)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1257, file: !1258, line: 1317, baseType: !146, size: 32, offset: 12992)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1257, file: !1258, line: 1319, baseType: !1256, size: 64, offset: 13056)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1257, file: !1258, line: 1322, baseType: !2153, size: 64, offset: 13120)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2155, line: 56, size: 512, elements: !2156)
!2155 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2156 = !{!2157, !2158, !2159, !2160, !2161, !2162, !2163, !2165}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2154, file: !2155, line: 57, baseType: !2153, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2154, file: !2155, line: 58, baseType: !149, size: 64, offset: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2154, file: !2155, line: 59, baseType: !151, size: 64, offset: 128)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2154, file: !2155, line: 60, baseType: !151, size: 64, offset: 192)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2154, file: !2155, line: 61, baseType: !860, size: 64, offset: 256)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2154, file: !2155, line: 62, baseType: !7, size: 32, offset: 320)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2154, file: !2155, line: 63, baseType: !2164, size: 64, offset: 384)
!2164 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !148, line: 153, baseType: !463)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2154, file: !2155, line: 64, baseType: !2166, size: 64, offset: 448)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1257, file: !1258, line: 1326, baseType: !1269, size: 32, offset: 13184)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1257, file: !1258, line: 1342, baseType: !149, size: 64, offset: 13248)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1257, file: !1258, line: 1343, baseType: !464, size: 64, offset: 13312)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1257, file: !1258, line: 1344, baseType: !463, size: 64, offset: 13376)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1257, file: !1258, line: 1345, baseType: !464, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1257, file: !1258, line: 1346, baseType: !464, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1257, file: !1258, line: 1347, baseType: !464, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1257, file: !1258, line: 1348, baseType: !407, size: 128, align: 64, offset: 13504)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1257, file: !1258, line: 1358, baseType: !2177, size: 34816, offset: 13824)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2178, line: 485, size: 34816, elements: !2179)
!2178 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2179 = !{!2180, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2209, !2210, !2211, !2212, !2213, !2214, !2217, !2218, !2219}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2177, file: !2178, line: 487, baseType: !2181, size: 192)
!2181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2182, size: 192, elements: !226)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2183, line: 16, size: 64, elements: !2184)
!2183 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2184 = !{!2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2182, file: !2183, line: 17, baseType: !899, size: 16)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2182, file: !2183, line: 18, baseType: !899, size: 16, offset: 16)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2182, file: !2183, line: 19, baseType: !899, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2182, file: !2183, line: 19, baseType: !899, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2182, file: !2183, line: 19, baseType: !899, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2182, file: !2183, line: 19, baseType: !899, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2182, file: !2183, line: 19, baseType: !899, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2182, file: !2183, line: 20, baseType: !899, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2182, file: !2183, line: 20, baseType: !899, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2182, file: !2183, line: 20, baseType: !899, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2182, file: !2183, line: 20, baseType: !899, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2182, file: !2183, line: 20, baseType: !899, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2182, file: !2183, line: 20, baseType: !899, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2177, file: !2178, line: 491, baseType: !151, size: 64, offset: 192)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2177, file: !2178, line: 495, baseType: !150, size: 16, offset: 256)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2177, file: !2178, line: 496, baseType: !150, size: 16, offset: 272)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2177, file: !2178, line: 497, baseType: !150, size: 16, offset: 288)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2177, file: !2178, line: 498, baseType: !150, size: 16, offset: 304)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2177, file: !2178, line: 502, baseType: !151, size: 64, offset: 320)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2177, file: !2178, line: 503, baseType: !151, size: 64, offset: 384)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2177, file: !2178, line: 514, baseType: !2206, size: 256, offset: 448)
!2206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2207, size: 256, elements: !1195)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2178, line: 483, flags: DIFlagFwdDecl)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2177, file: !2178, line: 516, baseType: !151, size: 64, offset: 704)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2177, file: !2178, line: 518, baseType: !151, size: 64, offset: 768)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2177, file: !2178, line: 520, baseType: !151, size: 64, offset: 832)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2177, file: !2178, line: 521, baseType: !151, size: 64, offset: 896)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2177, file: !2178, line: 522, baseType: !151, size: 64, offset: 960)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2177, file: !2178, line: 528, baseType: !2215, size: 64, offset: 1024)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2178, line: 10, flags: DIFlagFwdDecl)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2177, file: !2178, line: 535, baseType: !151, size: 64, offset: 1088)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2177, file: !2178, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2177, file: !2178, line: 540, baseType: !2220, size: 33280, offset: 1536)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2221, line: 317, size: 33280, elements: !2222)
!2221 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2222 = !{!2223, !2224, !2225}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2220, file: !2221, line: 330, baseType: !7, size: 32)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2220, file: !2221, line: 337, baseType: !151, size: 64, offset: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2220, file: !2221, line: 348, baseType: !2226, size: 32768, offset: 512)
!2226 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2221, line: 304, size: 32768, elements: !2227)
!2227 = !{!2228, !2243, !2282, !2332, !2345}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2226, file: !2221, line: 305, baseType: !2229, size: 896)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2221, line: 12, size: 896, elements: !2230)
!2230 = !{!2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2242}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2229, file: !2221, line: 13, baseType: !457, size: 32)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2229, file: !2221, line: 14, baseType: !457, size: 32, offset: 32)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2229, file: !2221, line: 15, baseType: !457, size: 32, offset: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2229, file: !2221, line: 16, baseType: !457, size: 32, offset: 96)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2229, file: !2221, line: 17, baseType: !457, size: 32, offset: 128)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2229, file: !2221, line: 18, baseType: !457, size: 32, offset: 160)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2229, file: !2221, line: 19, baseType: !457, size: 32, offset: 192)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2229, file: !2221, line: 22, baseType: !2239, size: 640, offset: 224)
!2239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !457, size: 640, elements: !2240)
!2240 = !{!2241}
!2241 = !DISubrange(count: 20)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2229, file: !2221, line: 25, baseType: !457, size: 32, offset: 864)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2226, file: !2221, line: 306, baseType: !2244, size: 4096, align: 128)
!2244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2221, line: 34, size: 4096, align: 128, elements: !2245)
!2245 = !{!2246, !2247, !2248, !2249, !2250, !2265, !2266, !2267, !2271, !2273, !2277}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2244, file: !2221, line: 35, baseType: !899, size: 16)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2244, file: !2221, line: 36, baseType: !899, size: 16, offset: 16)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2244, file: !2221, line: 37, baseType: !899, size: 16, offset: 32)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2244, file: !2221, line: 38, baseType: !899, size: 16, offset: 48)
!2250 = !DIDerivedType(tag: DW_TAG_member, scope: !2244, file: !2221, line: 39, baseType: !2251, size: 128, offset: 64)
!2251 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2244, file: !2221, line: 39, size: 128, elements: !2252)
!2252 = !{!2253, !2258}
!2253 = !DIDerivedType(tag: DW_TAG_member, scope: !2251, file: !2221, line: 40, baseType: !2254, size: 128)
!2254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2251, file: !2221, line: 40, size: 128, elements: !2255)
!2255 = !{!2256, !2257}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2254, file: !2221, line: 41, baseType: !463, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2254, file: !2221, line: 42, baseType: !463, size: 64, offset: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, scope: !2251, file: !2221, line: 44, baseType: !2259, size: 128)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2251, file: !2221, line: 44, size: 128, elements: !2260)
!2260 = !{!2261, !2262, !2263, !2264}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2259, file: !2221, line: 45, baseType: !457, size: 32)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2259, file: !2221, line: 46, baseType: !457, size: 32, offset: 32)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2259, file: !2221, line: 47, baseType: !457, size: 32, offset: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2259, file: !2221, line: 48, baseType: !457, size: 32, offset: 96)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2244, file: !2221, line: 51, baseType: !457, size: 32, offset: 192)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2244, file: !2221, line: 52, baseType: !457, size: 32, offset: 224)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2244, file: !2221, line: 55, baseType: !2268, size: 1024, offset: 256)
!2268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !457, size: 1024, elements: !2269)
!2269 = !{!2270}
!2270 = !DISubrange(count: 32)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2244, file: !2221, line: 58, baseType: !2272, size: 2048, offset: 1280)
!2272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !457, size: 2048, elements: !324)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2244, file: !2221, line: 60, baseType: !2274, size: 384, offset: 3328)
!2274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !457, size: 384, elements: !2275)
!2275 = !{!2276}
!2276 = !DISubrange(count: 12)
!2277 = !DIDerivedType(tag: DW_TAG_member, scope: !2244, file: !2221, line: 62, baseType: !2278, size: 384, offset: 3712)
!2278 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2244, file: !2221, line: 62, size: 384, elements: !2279)
!2279 = !{!2280, !2281}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2278, file: !2221, line: 63, baseType: !2274, size: 384)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2278, file: !2221, line: 64, baseType: !2274, size: 384)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2226, file: !2221, line: 307, baseType: !2283, size: 1088)
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2221, line: 79, size: 1088, elements: !2284)
!2284 = !{!2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2331}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2283, file: !2221, line: 80, baseType: !457, size: 32)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2283, file: !2221, line: 81, baseType: !457, size: 32, offset: 32)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2283, file: !2221, line: 82, baseType: !457, size: 32, offset: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2283, file: !2221, line: 83, baseType: !457, size: 32, offset: 96)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2283, file: !2221, line: 84, baseType: !457, size: 32, offset: 128)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2283, file: !2221, line: 85, baseType: !457, size: 32, offset: 160)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2283, file: !2221, line: 86, baseType: !457, size: 32, offset: 192)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2283, file: !2221, line: 88, baseType: !2239, size: 640, offset: 224)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2283, file: !2221, line: 89, baseType: !1391, size: 8, offset: 864)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2283, file: !2221, line: 90, baseType: !1391, size: 8, offset: 872)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2283, file: !2221, line: 91, baseType: !1391, size: 8, offset: 880)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2283, file: !2221, line: 92, baseType: !1391, size: 8, offset: 888)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2283, file: !2221, line: 93, baseType: !1391, size: 8, offset: 896)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2283, file: !2221, line: 94, baseType: !1391, size: 8, offset: 904)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2283, file: !2221, line: 95, baseType: !2300, size: 64, offset: 960)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2302, line: 11, size: 128, elements: !2303)
!2302 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2303 = !{!2304, !2305}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2301, file: !2302, line: 12, baseType: !157, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2301, file: !2302, line: 13, baseType: !2306, size: 64, offset: 64)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2308, line: 56, size: 1344, elements: !2309)
!2308 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2309 = !{!2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2307, file: !2308, line: 61, baseType: !151, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2307, file: !2308, line: 62, baseType: !151, size: 64, offset: 64)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2307, file: !2308, line: 63, baseType: !151, size: 64, offset: 128)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2307, file: !2308, line: 64, baseType: !151, size: 64, offset: 192)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2307, file: !2308, line: 65, baseType: !151, size: 64, offset: 256)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2307, file: !2308, line: 66, baseType: !151, size: 64, offset: 320)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2307, file: !2308, line: 68, baseType: !151, size: 64, offset: 384)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2307, file: !2308, line: 69, baseType: !151, size: 64, offset: 448)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2307, file: !2308, line: 70, baseType: !151, size: 64, offset: 512)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2307, file: !2308, line: 71, baseType: !151, size: 64, offset: 576)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2307, file: !2308, line: 72, baseType: !151, size: 64, offset: 640)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2307, file: !2308, line: 73, baseType: !151, size: 64, offset: 704)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2307, file: !2308, line: 74, baseType: !151, size: 64, offset: 768)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2307, file: !2308, line: 75, baseType: !151, size: 64, offset: 832)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2307, file: !2308, line: 76, baseType: !151, size: 64, offset: 896)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2307, file: !2308, line: 81, baseType: !151, size: 64, offset: 960)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2307, file: !2308, line: 83, baseType: !151, size: 64, offset: 1024)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2307, file: !2308, line: 84, baseType: !151, size: 64, offset: 1088)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2307, file: !2308, line: 85, baseType: !151, size: 64, offset: 1152)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2307, file: !2308, line: 86, baseType: !151, size: 64, offset: 1216)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2307, file: !2308, line: 87, baseType: !151, size: 64, offset: 1280)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2283, file: !2221, line: 96, baseType: !457, size: 32, offset: 1024)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2226, file: !2221, line: 308, baseType: !2333, size: 4608, align: 512)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2221, line: 289, size: 4608, align: 512, elements: !2334)
!2334 = !{!2335, !2336, !2343}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2333, file: !2221, line: 290, baseType: !2244, size: 4096, align: 128)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2333, file: !2221, line: 291, baseType: !2337, size: 512, offset: 4096)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2221, line: 268, size: 512, elements: !2338)
!2338 = !{!2339, !2340, !2341}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2337, file: !2221, line: 269, baseType: !463, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2337, file: !2221, line: 270, baseType: !463, size: 64, offset: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2337, file: !2221, line: 271, baseType: !2342, size: 384, offset: 128)
!2342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !463, size: 384, elements: !1664)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2333, file: !2221, line: 292, baseType: !2344, offset: 4608)
!2344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1391, elements: !1762)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2226, file: !2221, line: 309, baseType: !2346, size: 32768)
!2346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1391, size: 32768, elements: !2347)
!2347 = !{!2348}
!2348 = !DISubrange(count: 4096)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1253, file: !763, line: 378, baseType: !2350, size: 64, offset: 64)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1249, file: !763, line: 384, baseType: !1541, size: 192, offset: 192)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1018, file: !763, line: 500, baseType: !280, offset: 6656)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1018, file: !763, line: 501, baseType: !2354, size: 64, offset: 6656)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !763, line: 387, flags: DIFlagFwdDecl)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1018, file: !763, line: 516, baseType: !1752, size: 64, offset: 6720)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1018, file: !763, line: 519, baseType: !394, size: 64, offset: 6784)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1018, file: !763, line: 521, baseType: !2359, size: 64, offset: 6848)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !763, line: 521, flags: DIFlagFwdDecl)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1018, file: !763, line: 545, baseType: !787, size: 32, offset: 6912)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1018, file: !763, line: 548, baseType: !231, size: 8, offset: 6944)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1018, file: !763, line: 550, baseType: !2364, offset: 6952)
!2364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2365, line: 142, elements: !294)
!2365 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1018, file: !763, line: 554, baseType: !1996, size: 256, offset: 6976)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1018, file: !763, line: 557, baseType: !457, size: 32, offset: 7232)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1015, file: !763, line: 565, baseType: !2369, offset: 7296)
!2369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, elements: !2370)
!2370 = !{!2371}
!2371 = !DISubrange(count: -1)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1011, file: !763, line: 151, baseType: !787, size: 32)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1004, file: !763, line: 156, baseType: !280, offset: 256)
!2374 = !DIDerivedType(tag: DW_TAG_member, scope: !767, file: !763, line: 159, baseType: !2375, size: 128)
!2375 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !767, file: !763, line: 159, size: 128, elements: !2376)
!2376 = !{!2377, !2441}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2375, file: !763, line: 161, baseType: !2378, size: 64)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2380)
!2380 = !{!2381, !2391, !2412, !2413, !2414, !2415, !2416, !2428, !2429, !2430}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2379, file: !31, line: 111, baseType: !2382, size: 384)
!2382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2383)
!2383 = !{!2384, !2386, !2387, !2388, !2389, !2390}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2382, file: !31, line: 20, baseType: !2385, size: 64)
!2385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2382, file: !31, line: 21, baseType: !2385, size: 64, offset: 64)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2382, file: !31, line: 22, baseType: !2385, size: 64, offset: 128)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2382, file: !31, line: 23, baseType: !151, size: 64, offset: 192)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2382, file: !31, line: 24, baseType: !151, size: 64, offset: 256)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2382, file: !31, line: 25, baseType: !151, size: 64, offset: 320)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2379, file: !31, line: 112, baseType: !2392, size: 64, offset: 384)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2394, line: 105, size: 128, elements: !2395)
!2394 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2395 = !{!2396, !2397}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2393, file: !2394, line: 110, baseType: !151, size: 64)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2393, file: !2394, line: 118, baseType: !2398, size: 64, offset: 64)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2394, line: 95, size: 448, elements: !2400)
!2400 = !{!2401, !2402, !2407, !2408, !2409, !2410, !2411}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2399, file: !2394, line: 96, baseType: !811, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2399, file: !2394, line: 97, baseType: !2403, size: 64, offset: 64)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2394, line: 60, baseType: !2405)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{null, !2392}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2399, file: !2394, line: 98, baseType: !2403, size: 64, offset: 128)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2399, file: !2394, line: 99, baseType: !231, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2399, file: !2394, line: 100, baseType: !231, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2399, file: !2394, line: 101, baseType: !407, size: 128, align: 64, offset: 256)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2399, file: !2394, line: 102, baseType: !2392, size: 64, offset: 384)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2379, file: !31, line: 113, baseType: !2393, size: 128, offset: 448)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2379, file: !31, line: 114, baseType: !1541, size: 192, offset: 576)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2379, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2379, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2379, file: !31, line: 117, baseType: !2417, size: 64, offset: 832)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2419)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2420)
!2420 = !{!2421, !2422, !2426, !2427}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2419, file: !31, line: 73, baseType: !880, size: 64)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2419, file: !31, line: 78, baseType: !2423, size: 64, offset: 64)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{null, !2378}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2419, file: !31, line: 83, baseType: !2423, size: 64, offset: 128)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2419, file: !31, line: 89, baseType: !1067, size: 64, offset: 192)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2379, file: !31, line: 118, baseType: !149, size: 64, offset: 896)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2379, file: !31, line: 119, baseType: !146, size: 32, offset: 960)
!2430 = !DIDerivedType(tag: DW_TAG_member, scope: !2379, file: !31, line: 120, baseType: !2431, size: 128, offset: 1024)
!2431 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2379, file: !31, line: 120, size: 128, elements: !2432)
!2432 = !{!2433, !2439}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2431, file: !31, line: 121, baseType: !2434, size: 128)
!2434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2435, line: 6, size: 128, elements: !2436)
!2435 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2436 = !{!2437, !2438}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2434, file: !2435, line: 7, baseType: !463, size: 64)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2434, file: !2435, line: 8, baseType: !463, size: 64, offset: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2431, file: !31, line: 122, baseType: !2440)
!2440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2434, elements: !1762)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2375, file: !763, line: 162, baseType: !149, size: 64, offset: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !767, file: !763, line: 176, baseType: !407, size: 128, align: 64)
!2443 = !DIDerivedType(tag: DW_TAG_member, scope: !762, file: !763, line: 179, baseType: !2444, size: 32, offset: 384)
!2444 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !762, file: !763, line: 179, size: 32, elements: !2445)
!2445 = !{!2446, !2447, !2448, !2449}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2444, file: !763, line: 184, baseType: !787, size: 32)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2444, file: !763, line: 192, baseType: !7, size: 32)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2444, file: !763, line: 194, baseType: !7, size: 32)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2444, file: !763, line: 195, baseType: !146, size: 32)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !762, file: !763, line: 199, baseType: !787, size: 32, offset: 416)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !697, file: !44, line: 1964, baseType: !2452, size: 64, offset: 1344)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!157, !639, !2455}
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2457, line: 12, size: 256, elements: !2458)
!2457 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2458 = !{!2459, !2460, !2461, !2462, !2463}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2456, file: !2457, line: 13, baseType: !147, size: 32)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2456, file: !2457, line: 16, baseType: !146, size: 32, offset: 32)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2456, file: !2457, line: 23, baseType: !151, size: 64, offset: 64)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2456, file: !2457, line: 30, baseType: !151, size: 64, offset: 128)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2456, file: !2457, line: 33, baseType: !2464, size: 64, offset: 192)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !763, line: 27, flags: DIFlagFwdDecl)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !697, file: !44, line: 1966, baseType: !2452, size: 64, offset: 1408)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !640, file: !44, line: 1424, baseType: !2468, size: 64, offset: 448)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2470)
!2470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2471)
!2471 = !{!2472, !2518, !2522, !2526, !2527, !2528, !2529, !2530, !2535, !2540, !2544}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2470, file: !38, line: 323, baseType: !2473, size: 64)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{!146, !2476}
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2478)
!2478 = !{!2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2503, !2504, !2505}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2477, file: !38, line: 295, baseType: !679, size: 128)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2477, file: !38, line: 296, baseType: !267, size: 128, offset: 128)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2477, file: !38, line: 297, baseType: !267, size: 128, offset: 256)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2477, file: !38, line: 298, baseType: !267, size: 128, offset: 384)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2477, file: !38, line: 299, baseType: !1213, size: 192, offset: 512)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2477, file: !38, line: 300, baseType: !280, offset: 704)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2477, file: !38, line: 301, baseType: !787, size: 32, offset: 704)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2477, file: !38, line: 302, baseType: !639, size: 64, offset: 768)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2477, file: !38, line: 303, baseType: !2488, size: 64, offset: 832)
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2489)
!2489 = !{!2490, !2502}
!2490 = !DIDerivedType(tag: DW_TAG_member, scope: !2488, file: !38, line: 69, baseType: !2491, size: 32)
!2491 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2488, file: !38, line: 69, size: 32, elements: !2492)
!2492 = !{!2493, !2494, !2495}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2491, file: !38, line: 70, baseType: !477, size: 32)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2491, file: !38, line: 71, baseType: !485, size: 32)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2491, file: !38, line: 72, baseType: !2496, size: 32)
!2496 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2497, line: 24, baseType: !2498)
!2497 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2498 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2497, line: 22, size: 32, elements: !2499)
!2499 = !{!2500}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2498, file: !2497, line: 23, baseType: !2501, size: 32)
!2501 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2497, line: 20, baseType: !483)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2488, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2477, file: !38, line: 304, baseType: !571, size: 64, offset: 896)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2477, file: !38, line: 305, baseType: !151, size: 64, offset: 960)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2477, file: !38, line: 306, baseType: !2506, size: 576, offset: 1024)
!2506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2507)
!2507 = !{!2508, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2506, file: !38, line: 206, baseType: !2509, size: 64)
!2509 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !573)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2506, file: !38, line: 207, baseType: !2509, size: 64, offset: 64)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2506, file: !38, line: 208, baseType: !2509, size: 64, offset: 128)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2506, file: !38, line: 209, baseType: !2509, size: 64, offset: 192)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2506, file: !38, line: 210, baseType: !2509, size: 64, offset: 256)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2506, file: !38, line: 211, baseType: !2509, size: 64, offset: 320)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2506, file: !38, line: 212, baseType: !2509, size: 64, offset: 384)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2506, file: !38, line: 213, baseType: !579, size: 64, offset: 448)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2506, file: !38, line: 214, baseType: !579, size: 64, offset: 512)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2470, file: !38, line: 324, baseType: !2519, size: 64, offset: 64)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = !DISubroutineType(types: !2521)
!2521 = !{!2476, !639, !146}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2470, file: !38, line: 325, baseType: !2523, size: 64, offset: 128)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{null, !2476}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2470, file: !38, line: 326, baseType: !2473, size: 64, offset: 192)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2470, file: !38, line: 327, baseType: !2473, size: 64, offset: 256)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2470, file: !38, line: 328, baseType: !2473, size: 64, offset: 320)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2470, file: !38, line: 329, baseType: !725, size: 64, offset: 384)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2470, file: !38, line: 332, baseType: !2531, size: 64, offset: 448)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!2534, !471}
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2470, file: !38, line: 333, baseType: !2536, size: 64, offset: 512)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!146, !471, !2539}
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2470, file: !38, line: 335, baseType: !2541, size: 64, offset: 576)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!146, !471, !2534}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2470, file: !38, line: 337, baseType: !2545, size: 64, offset: 640)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!146, !639, !2548}
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !640, file: !44, line: 1425, baseType: !2550, size: 64, offset: 512)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2552)
!2552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2553)
!2553 = !{!2554, !2558, !2559, !2563, !2564, !2565, !2580, !2603, !2607, !2608, !2631}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2552, file: !38, line: 429, baseType: !2555, size: 64)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{!146, !639, !146, !146, !589}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2552, file: !38, line: 430, baseType: !725, size: 64, offset: 64)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2552, file: !38, line: 431, baseType: !2560, size: 64, offset: 128)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{!146, !639, !7}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2552, file: !38, line: 432, baseType: !2560, size: 64, offset: 192)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2552, file: !38, line: 433, baseType: !725, size: 64, offset: 256)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2552, file: !38, line: 434, baseType: !2566, size: 64, offset: 320)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!146, !639, !146, !2569}
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2571)
!2571 = !{!2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2570, file: !38, line: 416, baseType: !146, size: 32)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2570, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2570, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2570, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2570, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2570, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2570, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2570, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2552, file: !38, line: 435, baseType: !2581, size: 64, offset: 384)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DISubroutineType(types: !2583)
!2583 = !{!146, !639, !2488, !2584}
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2586)
!2586 = !{!2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2585, file: !38, line: 344, baseType: !146, size: 32)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2585, file: !38, line: 345, baseType: !463, size: 64, offset: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2585, file: !38, line: 346, baseType: !463, size: 64, offset: 128)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2585, file: !38, line: 347, baseType: !463, size: 64, offset: 192)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2585, file: !38, line: 348, baseType: !463, size: 64, offset: 256)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2585, file: !38, line: 349, baseType: !463, size: 64, offset: 320)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2585, file: !38, line: 350, baseType: !463, size: 64, offset: 384)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2585, file: !38, line: 351, baseType: !817, size: 64, offset: 448)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2585, file: !38, line: 353, baseType: !817, size: 64, offset: 512)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2585, file: !38, line: 354, baseType: !146, size: 32, offset: 576)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2585, file: !38, line: 355, baseType: !146, size: 32, offset: 608)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2585, file: !38, line: 356, baseType: !463, size: 64, offset: 640)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2585, file: !38, line: 357, baseType: !463, size: 64, offset: 704)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2585, file: !38, line: 358, baseType: !463, size: 64, offset: 768)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2585, file: !38, line: 359, baseType: !817, size: 64, offset: 832)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2585, file: !38, line: 360, baseType: !146, size: 32, offset: 896)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2552, file: !38, line: 436, baseType: !2604, size: 64, offset: 448)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!146, !639, !2548, !2584}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2552, file: !38, line: 438, baseType: !2581, size: 64, offset: 512)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2552, file: !38, line: 439, baseType: !2609, size: 64, offset: 576)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{!146, !639, !2612}
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2614)
!2614 = !{!2615, !2616}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2613, file: !38, line: 410, baseType: !7, size: 32)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2613, file: !38, line: 411, baseType: !2617, size: 1344, offset: 64)
!2617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2618, size: 1344, elements: !226)
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2619)
!2619 = !{!2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2630}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2618, file: !38, line: 396, baseType: !7, size: 32)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2618, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2618, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2618, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2618, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2618, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2618, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2618, file: !38, line: 404, baseType: !465, size: 64, offset: 256)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2618, file: !38, line: 405, baseType: !2629, size: 64, offset: 320)
!2629 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !148, line: 126, baseType: !463)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2618, file: !38, line: 406, baseType: !2629, size: 64, offset: 384)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2552, file: !38, line: 440, baseType: !2560, size: 64, offset: 640)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !640, file: !44, line: 1426, baseType: !2633, size: 64, offset: 576)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2635)
!2635 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !640, file: !44, line: 1427, baseType: !151, size: 64, offset: 640)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !640, file: !44, line: 1428, baseType: !151, size: 64, offset: 704)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !640, file: !44, line: 1429, baseType: !151, size: 64, offset: 768)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !640, file: !44, line: 1430, baseType: !424, size: 64, offset: 832)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !640, file: !44, line: 1431, baseType: !807, size: 256, offset: 896)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !640, file: !44, line: 1432, baseType: !146, size: 32, offset: 1152)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !640, file: !44, line: 1433, baseType: !787, size: 32, offset: 1184)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !640, file: !44, line: 1437, baseType: !2644, size: 64, offset: 1216)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2647)
!2647 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !640, file: !44, line: 1449, baseType: !2649, size: 64, offset: 1280)
!2649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !440, line: 34, size: 64, elements: !2650)
!2650 = !{!2651}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2649, file: !440, line: 35, baseType: !443, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !640, file: !44, line: 1450, baseType: !267, size: 128, offset: 1344)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !640, file: !44, line: 1451, baseType: !2654, size: 64, offset: 1472)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2655 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !640, file: !44, line: 1452, baseType: !1962, size: 64, offset: 1536)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !640, file: !44, line: 1453, baseType: !2658, size: 64, offset: 1600)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !640, file: !44, line: 1454, baseType: !679, size: 128, offset: 1664)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !640, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !640, file: !44, line: 1456, baseType: !2663, size: 2432, offset: 1856)
!2663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2664)
!2664 = !{!2665, !2666, !2667, !2669, !2701}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2663, file: !38, line: 519, baseType: !7, size: 32)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2663, file: !38, line: 520, baseType: !807, size: 256, offset: 64)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2663, file: !38, line: 521, baseType: !2668, size: 192, offset: 320)
!2668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !471, size: 192, elements: !226)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2663, file: !38, line: 522, baseType: !2670, size: 1728, offset: 512)
!2670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2671, size: 1728, elements: !226)
!2671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2672)
!2672 = !{!2673, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2671, file: !38, line: 223, baseType: !2674, size: 64)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2676)
!2676 = !{!2677, !2678, !2691, !2692}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2675, file: !38, line: 444, baseType: !146, size: 32)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2675, file: !38, line: 445, baseType: !2679, size: 64, offset: 64)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2681)
!2681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2682)
!2682 = !{!2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2681, file: !38, line: 311, baseType: !725, size: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2681, file: !38, line: 312, baseType: !725, size: 64, offset: 64)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2681, file: !38, line: 313, baseType: !725, size: 64, offset: 128)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2681, file: !38, line: 314, baseType: !725, size: 64, offset: 192)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2681, file: !38, line: 315, baseType: !2473, size: 64, offset: 256)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2681, file: !38, line: 316, baseType: !2473, size: 64, offset: 320)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2681, file: !38, line: 317, baseType: !2473, size: 64, offset: 384)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2681, file: !38, line: 318, baseType: !2545, size: 64, offset: 448)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2675, file: !38, line: 446, baseType: !196, size: 64, offset: 128)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2675, file: !38, line: 447, baseType: !2674, size: 64, offset: 192)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2671, file: !38, line: 224, baseType: !146, size: 32, offset: 64)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2671, file: !38, line: 226, baseType: !267, size: 128, offset: 128)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2671, file: !38, line: 227, baseType: !151, size: 64, offset: 256)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2671, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2671, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2671, file: !38, line: 230, baseType: !2509, size: 64, offset: 384)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2671, file: !38, line: 231, baseType: !2509, size: 64, offset: 448)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2671, file: !38, line: 232, baseType: !149, size: 64, offset: 512)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2663, file: !38, line: 523, baseType: !2702, size: 192, offset: 2240)
!2702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2679, size: 192, elements: !226)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !640, file: !44, line: 1458, baseType: !2704, size: 2112, offset: 4288)
!2704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2705)
!2705 = !{!2706, !2707, !2708}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2704, file: !44, line: 1411, baseType: !146, size: 32)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2704, file: !44, line: 1412, baseType: !1520, size: 128, offset: 64)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2704, file: !44, line: 1413, baseType: !2709, size: 1920, offset: 192)
!2709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2710, size: 1920, elements: !226)
!2710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2711, line: 12, size: 640, elements: !2712)
!2711 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2712 = !{!2713, !2721, !2723, !2728, !2729}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2710, file: !2711, line: 13, baseType: !2714, size: 320)
!2714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2715, line: 17, size: 320, elements: !2716)
!2715 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2716 = !{!2717, !2718, !2719, !2720}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2714, file: !2715, line: 18, baseType: !146, size: 32)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2714, file: !2715, line: 19, baseType: !146, size: 32, offset: 32)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2714, file: !2715, line: 20, baseType: !1520, size: 128, offset: 64)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2714, file: !2715, line: 22, baseType: !407, size: 128, align: 64, offset: 192)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2710, file: !2711, line: 14, baseType: !2722, size: 64, offset: 320)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2710, file: !2711, line: 15, baseType: !2724, size: 64, offset: 384)
!2724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2725, line: 16, size: 64, elements: !2726)
!2725 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2726 = !{!2727}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2724, file: !2725, line: 17, baseType: !1256, size: 64)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2710, file: !2711, line: 16, baseType: !1520, size: 128, offset: 448)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2710, file: !2711, line: 17, baseType: !787, size: 32, offset: 576)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !640, file: !44, line: 1465, baseType: !149, size: 64, offset: 6400)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !640, file: !44, line: 1468, baseType: !457, size: 32, offset: 6464)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !640, file: !44, line: 1470, baseType: !579, size: 64, offset: 6528)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !640, file: !44, line: 1471, baseType: !579, size: 64, offset: 6592)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !640, file: !44, line: 1473, baseType: !459, size: 32, offset: 6656)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !640, file: !44, line: 1474, baseType: !2736, size: 64, offset: 6720)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !640, file: !44, line: 1477, baseType: !2739, size: 256, offset: 6784)
!2739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 256, elements: !2269)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !640, file: !44, line: 1478, baseType: !2741, size: 128, offset: 7040)
!2741 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2742, line: 18, baseType: !2743)
!2742 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2743 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2742, line: 16, size: 128, elements: !2744)
!2744 = !{!2745}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2743, file: !2742, line: 17, baseType: !2746, size: 128)
!2746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1392, size: 128, elements: !1774)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !640, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !640, file: !44, line: 1481, baseType: !2749, size: 32, offset: 7200)
!2749 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !148, line: 150, baseType: !7)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !640, file: !44, line: 1487, baseType: !1213, size: 192, offset: 7232)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !640, file: !44, line: 1493, baseType: !194, size: 64, offset: 7424)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !640, file: !44, line: 1495, baseType: !2753, size: 64, offset: 7488)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2755)
!2755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !422, line: 135, size: 1024, align: 512, elements: !2756)
!2756 = !{!2757, !2761, !2762, !2769, !2775, !2779, !2783, !2787, !2788, !2792, !2796, !2801, !2805}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2755, file: !422, line: 136, baseType: !2758, size: 64)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!146, !424, !7}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2755, file: !422, line: 137, baseType: !2758, size: 64, offset: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2755, file: !422, line: 138, baseType: !2763, size: 64, offset: 128)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!146, !2766, !2768}
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !425)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2755, file: !422, line: 139, baseType: !2770, size: 64, offset: 192)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{!146, !2766, !7, !194, !2773}
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !448)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2755, file: !422, line: 141, baseType: !2776, size: 64, offset: 256)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DISubroutineType(types: !2778)
!2778 = !{!146, !2766}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2755, file: !422, line: 142, baseType: !2780, size: 64, offset: 320)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{!146, !424}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2755, file: !422, line: 143, baseType: !2784, size: 64, offset: 384)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DISubroutineType(types: !2786)
!2786 = !{null, !424}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2755, file: !422, line: 144, baseType: !2784, size: 64, offset: 448)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2755, file: !422, line: 145, baseType: !2789, size: 64, offset: 512)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{null, !424, !471}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2755, file: !422, line: 146, baseType: !2793, size: 64, offset: 576)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{!321, !424, !321, !146}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2755, file: !422, line: 147, baseType: !2797, size: 64, offset: 640)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!420, !2800}
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2755, file: !422, line: 148, baseType: !2802, size: 64, offset: 704)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!146, !589, !231}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2755, file: !422, line: 149, baseType: !2806, size: 64, offset: 768)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{!424, !424, !2809}
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !472)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !640, file: !44, line: 1500, baseType: !146, size: 32, offset: 7552)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !640, file: !44, line: 1502, baseType: !2813, size: 448, offset: 7616)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2457, line: 60, size: 448, elements: !2814)
!2814 = !{!2815, !2820, !2821, !2822, !2823, !2824, !2825}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2813, file: !2457, line: 61, baseType: !2816, size: 64)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{!151, !2819, !2455}
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2813, file: !2457, line: 63, baseType: !2816, size: 64, offset: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2813, file: !2457, line: 66, baseType: !157, size: 64, offset: 128)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2813, file: !2457, line: 67, baseType: !146, size: 32, offset: 192)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2813, file: !2457, line: 68, baseType: !7, size: 32, offset: 224)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2813, file: !2457, line: 71, baseType: !267, size: 128, offset: 256)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2813, file: !2457, line: 77, baseType: !2826, size: 64, offset: 384)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !640, file: !44, line: 1505, baseType: !811, size: 64, offset: 8064)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !640, file: !44, line: 1508, baseType: !811, size: 64, offset: 8128)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !640, file: !44, line: 1511, baseType: !146, size: 32, offset: 8192)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !640, file: !44, line: 1514, baseType: !949, size: 32, offset: 8224)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !640, file: !44, line: 1517, baseType: !2832, size: 64, offset: 8256)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1997, line: 18, flags: DIFlagFwdDecl)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !640, file: !44, line: 1518, baseType: !675, size: 64, offset: 8320)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !640, file: !44, line: 1525, baseType: !1752, size: 64, offset: 8384)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !640, file: !44, line: 1532, baseType: !2837, size: 64, offset: 8448)
!2837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2838, line: 52, size: 64, elements: !2839)
!2838 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2839 = !{!2840}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2837, file: !2838, line: 53, baseType: !2841, size: 64)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2838, line: 40, size: 256, elements: !2843)
!2843 = !{!2844, !2845, !2850}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2842, file: !2838, line: 42, baseType: !280)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2842, file: !2838, line: 44, baseType: !2846, size: 192)
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2838, line: 28, size: 192, elements: !2847)
!2847 = !{!2848, !2849}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2846, file: !2838, line: 29, baseType: !267, size: 128)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2846, file: !2838, line: 31, baseType: !157, size: 64, offset: 128)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2842, file: !2838, line: 49, baseType: !157, size: 64, offset: 192)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !640, file: !44, line: 1533, baseType: !2837, size: 64, offset: 8512)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !640, file: !44, line: 1534, baseType: !407, size: 128, align: 64, offset: 8576)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !640, file: !44, line: 1535, baseType: !1996, size: 256, offset: 8704)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !640, file: !44, line: 1537, baseType: !1213, size: 192, offset: 8960)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !640, file: !44, line: 1542, baseType: !146, size: 32, offset: 9152)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !640, file: !44, line: 1545, baseType: !280, offset: 9184)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !640, file: !44, line: 1546, baseType: !267, size: 128, offset: 9216)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !640, file: !44, line: 1548, baseType: !280, offset: 9344)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !640, file: !44, line: 1549, baseType: !267, size: 128, offset: 9344)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !472, file: !44, line: 624, baseType: !774, size: 64, offset: 256)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !472, file: !44, line: 631, baseType: !151, size: 64, offset: 320)
!2862 = !DIDerivedType(tag: DW_TAG_member, scope: !472, file: !44, line: 639, baseType: !2863, size: 32, offset: 384)
!2863 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !472, file: !44, line: 639, size: 32, elements: !2864)
!2864 = !{!2865, !2867}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2863, file: !44, line: 640, baseType: !2866, size: 32)
!2866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2863, file: !44, line: 641, baseType: !7, size: 32)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !472, file: !44, line: 643, baseType: !553, size: 32, offset: 416)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !472, file: !44, line: 644, baseType: !571, size: 64, offset: 448)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !472, file: !44, line: 645, baseType: !575, size: 128, offset: 512)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !472, file: !44, line: 646, baseType: !575, size: 128, offset: 640)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !472, file: !44, line: 647, baseType: !575, size: 128, offset: 768)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !472, file: !44, line: 648, baseType: !280, offset: 896)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !472, file: !44, line: 649, baseType: !150, size: 16, offset: 896)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !472, file: !44, line: 650, baseType: !1391, size: 8, offset: 912)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !472, file: !44, line: 651, baseType: !1391, size: 8, offset: 920)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !472, file: !44, line: 652, baseType: !2629, size: 64, offset: 960)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !472, file: !44, line: 659, baseType: !151, size: 64, offset: 1024)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !472, file: !44, line: 660, baseType: !807, size: 256, offset: 1088)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !472, file: !44, line: 662, baseType: !151, size: 64, offset: 1344)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !472, file: !44, line: 663, baseType: !151, size: 64, offset: 1408)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !472, file: !44, line: 665, baseType: !679, size: 128, offset: 1472)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !472, file: !44, line: 666, baseType: !267, size: 128, offset: 1600)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !472, file: !44, line: 675, baseType: !267, size: 128, offset: 1728)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !472, file: !44, line: 676, baseType: !267, size: 128, offset: 1856)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !472, file: !44, line: 677, baseType: !267, size: 128, offset: 1984)
!2887 = !DIDerivedType(tag: DW_TAG_member, scope: !472, file: !44, line: 678, baseType: !2888, size: 128, offset: 2112)
!2888 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !472, file: !44, line: 678, size: 128, elements: !2889)
!2889 = !{!2890, !2891}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2888, file: !44, line: 679, baseType: !675, size: 64)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2888, file: !44, line: 680, baseType: !407, size: 128, align: 64)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !472, file: !44, line: 682, baseType: !813, size: 64, offset: 2240)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !472, file: !44, line: 683, baseType: !813, size: 64, offset: 2304)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !472, file: !44, line: 684, baseType: !787, size: 32, offset: 2368)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !472, file: !44, line: 685, baseType: !787, size: 32, offset: 2400)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !472, file: !44, line: 686, baseType: !787, size: 32, offset: 2432)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !472, file: !44, line: 688, baseType: !787, size: 32, offset: 2464)
!2898 = !DIDerivedType(tag: DW_TAG_member, scope: !472, file: !44, line: 690, baseType: !2899, size: 64, offset: 2496)
!2899 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !472, file: !44, line: 690, size: 64, elements: !2900)
!2900 = !{!2901, !3124}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2899, file: !44, line: 691, baseType: !2902, size: 64)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2904)
!2904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2905)
!2905 = !{!2906, !2907, !2911, !2916, !2920, !2921, !2922, !2926, !2939, !2940, !2948, !2952, !2953, !2957, !2958, !2962, !2967, !2968, !2972, !2976, !3084, !3088, !3089, !3093, !3094, !3098, !3102, !3107, !3111, !3115, !3119, !3123}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2904, file: !44, line: 1823, baseType: !196, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2904, file: !44, line: 1824, baseType: !2908, size: 64, offset: 64)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!571, !394, !571, !146}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2904, file: !44, line: 1825, baseType: !2912, size: 64, offset: 128)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!350, !394, !321, !364, !2915}
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2904, file: !44, line: 1826, baseType: !2917, size: 64, offset: 192)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!350, !394, !194, !364, !2915}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2904, file: !44, line: 1827, baseType: !884, size: 64, offset: 256)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2904, file: !44, line: 1828, baseType: !884, size: 64, offset: 320)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2904, file: !44, line: 1829, baseType: !2923, size: 64, offset: 384)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = !DISubroutineType(types: !2925)
!2925 = !{!146, !887, !231}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2904, file: !44, line: 1830, baseType: !2927, size: 64, offset: 448)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{!146, !394, !2930}
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2932)
!2932 = !{!2933, !2938}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2931, file: !44, line: 1777, baseType: !2934, size: 64)
!2934 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2935)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DISubroutineType(types: !2937)
!2937 = !{!146, !2930, !194, !146, !571, !463, !7}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2931, file: !44, line: 1778, baseType: !571, size: 64, offset: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2904, file: !44, line: 1831, baseType: !2927, size: 64, offset: 512)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2904, file: !44, line: 1832, baseType: !2941, size: 64, offset: 576)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{!2944, !394, !2946}
!2944 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2945, line: 52, baseType: !7)
!2945 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !659, line: 27, flags: DIFlagFwdDecl)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2904, file: !44, line: 1833, baseType: !2949, size: 64, offset: 640)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{!157, !394, !7, !151}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2904, file: !44, line: 1834, baseType: !2949, size: 64, offset: 704)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2904, file: !44, line: 1835, baseType: !2954, size: 64, offset: 768)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{!146, !394, !1021}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2904, file: !44, line: 1836, baseType: !151, size: 64, offset: 832)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2904, file: !44, line: 1837, baseType: !2959, size: 64, offset: 896)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{!146, !471, !394}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2904, file: !44, line: 1838, baseType: !2963, size: 64, offset: 960)
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{!146, !394, !2966}
!2966 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !149)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2904, file: !44, line: 1839, baseType: !2959, size: 64, offset: 1024)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2904, file: !44, line: 1840, baseType: !2969, size: 64, offset: 1088)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = !DISubroutineType(types: !2971)
!2971 = !{!146, !394, !571, !571, !146}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2904, file: !44, line: 1841, baseType: !2973, size: 64, offset: 1152)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!146, !146, !394, !146}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2904, file: !44, line: 1842, baseType: !2977, size: 64, offset: 1216)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!146, !394, !146, !2980}
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2982)
!2982 = !{!2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !3014, !3015, !3016, !3029, !3060}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2981, file: !44, line: 1063, baseType: !2980, size: 64)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2981, file: !44, line: 1064, baseType: !267, size: 128, offset: 64)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2981, file: !44, line: 1065, baseType: !679, size: 128, offset: 192)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2981, file: !44, line: 1066, baseType: !267, size: 128, offset: 320)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2981, file: !44, line: 1069, baseType: !267, size: 128, offset: 448)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2981, file: !44, line: 1072, baseType: !2966, size: 64, offset: 576)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2981, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2981, file: !44, line: 1074, baseType: !469, size: 8, offset: 672)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2981, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2981, file: !44, line: 1076, baseType: !146, size: 32, offset: 736)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2981, file: !44, line: 1077, baseType: !1520, size: 128, offset: 768)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2981, file: !44, line: 1078, baseType: !394, size: 64, offset: 896)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2981, file: !44, line: 1079, baseType: !571, size: 64, offset: 960)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2981, file: !44, line: 1080, baseType: !571, size: 64, offset: 1024)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2981, file: !44, line: 1082, baseType: !2998, size: 64, offset: 1088)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !3000)
!3000 = !{!3001, !3009, !3010, !3011, !3012, !3013}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2999, file: !44, line: 1315, baseType: !3002)
!3002 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3003, line: 20, baseType: !3004)
!3003 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3004 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3003, line: 11, elements: !3005)
!3005 = !{!3006}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3004, file: !3003, line: 12, baseType: !3007)
!3007 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !292, line: 33, baseType: !3008)
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !292, line: 31, elements: !294)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2999, file: !44, line: 1316, baseType: !146, size: 32)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2999, file: !44, line: 1317, baseType: !146, size: 32, offset: 32)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2999, file: !44, line: 1318, baseType: !2998, size: 64, offset: 64)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2999, file: !44, line: 1319, baseType: !394, size: 64, offset: 128)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2999, file: !44, line: 1320, baseType: !407, size: 128, align: 64, offset: 192)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2981, file: !44, line: 1084, baseType: !151, size: 64, offset: 1152)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2981, file: !44, line: 1085, baseType: !151, size: 64, offset: 1216)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2981, file: !44, line: 1087, baseType: !3017, size: 64, offset: 1280)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3019)
!3019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !3020)
!3020 = !{!3021, !3025}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3019, file: !44, line: 1012, baseType: !3022, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{null, !2980, !2980}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3019, file: !44, line: 1013, baseType: !3026, size: 64, offset: 64)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{null, !2980}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2981, file: !44, line: 1088, baseType: !3030, size: 64, offset: 1344)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3032)
!3032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !3033)
!3033 = !{!3034, !3038, !3042, !3043, !3047, !3051, !3055, !3059}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3032, file: !44, line: 1017, baseType: !3035, size: 64)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!2966, !2966}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3032, file: !44, line: 1018, baseType: !3039, size: 64, offset: 64)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{null, !2966}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3032, file: !44, line: 1019, baseType: !3026, size: 64, offset: 128)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3032, file: !44, line: 1020, baseType: !3044, size: 64, offset: 192)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!146, !2980, !146}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3032, file: !44, line: 1021, baseType: !3048, size: 64, offset: 256)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{!231, !2980}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3032, file: !44, line: 1022, baseType: !3052, size: 64, offset: 320)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!146, !2980, !146, !270}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3032, file: !44, line: 1023, baseType: !3056, size: 64, offset: 384)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{null, !2980, !861}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3032, file: !44, line: 1024, baseType: !3048, size: 64, offset: 448)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2981, file: !44, line: 1097, baseType: !3061, size: 256, offset: 1408)
!3061 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2981, file: !44, line: 1089, size: 256, elements: !3062)
!3062 = !{!3063, !3072, !3078}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3061, file: !44, line: 1090, baseType: !3064, size: 256)
!3064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3065, line: 10, size: 256, elements: !3066)
!3065 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3066 = !{!3067, !3068, !3071}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3064, file: !3065, line: 11, baseType: !457, size: 32)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3064, file: !3065, line: 12, baseType: !3069, size: 64, offset: 64)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3065, line: 5, flags: DIFlagFwdDecl)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3064, file: !3065, line: 13, baseType: !267, size: 128, offset: 128)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3061, file: !44, line: 1091, baseType: !3073, size: 64)
!3073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3065, line: 17, size: 64, elements: !3074)
!3074 = !{!3075}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3073, file: !3065, line: 18, baseType: !3076, size: 64)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3065, line: 16, flags: DIFlagFwdDecl)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3061, file: !44, line: 1096, baseType: !3079, size: 192)
!3079 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3061, file: !44, line: 1092, size: 192, elements: !3080)
!3080 = !{!3081, !3082, !3083}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3079, file: !44, line: 1093, baseType: !267, size: 128)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3079, file: !44, line: 1094, baseType: !146, size: 32, offset: 128)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3079, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2904, file: !44, line: 1843, baseType: !3085, size: 64, offset: 1280)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!350, !394, !761, !146, !364, !2915, !146}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2904, file: !44, line: 1844, baseType: !1141, size: 64, offset: 1344)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2904, file: !44, line: 1845, baseType: !3090, size: 64, offset: 1408)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{!146, !146}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2904, file: !44, line: 1846, baseType: !2977, size: 64, offset: 1472)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2904, file: !44, line: 1847, baseType: !3095, size: 64, offset: 1536)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{!350, !2137, !394, !2915, !364, !7}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2904, file: !44, line: 1848, baseType: !3099, size: 64, offset: 1600)
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3100, size: 64)
!3100 = !DISubroutineType(types: !3101)
!3101 = !{!350, !394, !2915, !2137, !364, !7}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2904, file: !44, line: 1849, baseType: !3103, size: 64, offset: 1664)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 64)
!3104 = !DISubroutineType(types: !3105)
!3105 = !{!146, !394, !157, !3106, !861}
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2904, file: !44, line: 1850, baseType: !3108, size: 64, offset: 1728)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{!157, !394, !146, !571, !571}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2904, file: !44, line: 1852, baseType: !3112, size: 64, offset: 1792)
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3113 = !DISubroutineType(types: !3114)
!3114 = !{null, !751, !394}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2904, file: !44, line: 1856, baseType: !3116, size: 64, offset: 1856)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!350, !394, !571, !394, !571, !364, !7}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2904, file: !44, line: 1858, baseType: !3120, size: 64, offset: 1920)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{!571, !394, !571, !394, !571, !571, !7}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2904, file: !44, line: 1861, baseType: !2969, size: 64, offset: 1984)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2899, file: !44, line: 692, baseType: !704, size: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !472, file: !44, line: 694, baseType: !3126, size: 64, offset: 2560)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3128)
!3128 = !{!3129, !3130, !3131, !3132}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3127, file: !44, line: 1101, baseType: !280)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3127, file: !44, line: 1102, baseType: !267, size: 128)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3127, file: !44, line: 1103, baseType: !267, size: 128, offset: 128)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3127, file: !44, line: 1104, baseType: !267, size: 128, offset: 256)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !472, file: !44, line: 695, baseType: !775, size: 1216, align: 64, offset: 2624)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !472, file: !44, line: 696, baseType: !267, size: 128, offset: 3840)
!3135 = !DIDerivedType(tag: DW_TAG_member, scope: !472, file: !44, line: 697, baseType: !3136, size: 64, offset: 3968)
!3136 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !472, file: !44, line: 697, size: 64, elements: !3137)
!3137 = !{!3138, !3139, !3140, !3143, !3144}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3136, file: !44, line: 698, baseType: !2137, size: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3136, file: !44, line: 699, baseType: !2654, size: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3136, file: !44, line: 700, baseType: !3141, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3142 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3136, file: !44, line: 701, baseType: !321, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3136, file: !44, line: 702, baseType: !7, size: 32)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !472, file: !44, line: 705, baseType: !459, size: 32, offset: 4032)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !472, file: !44, line: 708, baseType: !459, size: 32, offset: 4064)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !472, file: !44, line: 709, baseType: !2736, size: 64, offset: 4096)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !472, file: !44, line: 720, baseType: !149, size: 64, offset: 4160)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !425, file: !422, line: 98, baseType: !3150, size: 256, offset: 448)
!3150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !469, size: 256, elements: !2269)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !425, file: !422, line: 101, baseType: !3152, size: 32, offset: 704)
!3152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3153, line: 25, size: 32, elements: !3154)
!3153 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3154 = !{!3155}
!3155 = !DIDerivedType(tag: DW_TAG_member, scope: !3152, file: !3153, line: 26, baseType: !3156, size: 32)
!3156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3152, file: !3153, line: 26, size: 32, elements: !3157)
!3157 = !{!3158}
!3158 = !DIDerivedType(tag: DW_TAG_member, scope: !3156, file: !3153, line: 30, baseType: !3159, size: 32)
!3159 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3156, file: !3153, line: 30, size: 32, elements: !3160)
!3160 = !{!3161, !3162}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3159, file: !3153, line: 31, baseType: !280)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3159, file: !3153, line: 32, baseType: !146, size: 32)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !425, file: !422, line: 102, baseType: !2753, size: 64, offset: 768)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !425, file: !422, line: 103, baseType: !639, size: 64, offset: 832)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !425, file: !422, line: 104, baseType: !151, size: 64, offset: 896)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !425, file: !422, line: 105, baseType: !149, size: 64, offset: 960)
!3167 = !DIDerivedType(tag: DW_TAG_member, scope: !425, file: !422, line: 107, baseType: !3168, size: 128, offset: 1024)
!3168 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !425, file: !422, line: 107, size: 128, elements: !3169)
!3169 = !{!3170, !3171}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3168, file: !422, line: 108, baseType: !267, size: 128)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3168, file: !422, line: 109, baseType: !3172, size: 64)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !425, file: !422, line: 111, baseType: !267, size: 128, offset: 1152)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !425, file: !422, line: 112, baseType: !267, size: 128, offset: 1280)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !425, file: !422, line: 120, baseType: !3176, size: 128, offset: 1408)
!3176 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !425, file: !422, line: 116, size: 128, elements: !3177)
!3177 = !{!3178, !3179, !3180}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3176, file: !422, line: 117, baseType: !679, size: 128)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3176, file: !422, line: 118, baseType: !439, size: 128)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3176, file: !422, line: 119, baseType: !407, size: 128, align: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !395, file: !44, line: 922, baseType: !471, size: 64, offset: 256)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !395, file: !44, line: 923, baseType: !2902, size: 64, offset: 320)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !395, file: !44, line: 929, baseType: !280, offset: 384)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !395, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !395, file: !44, line: 931, baseType: !811, size: 64, offset: 448)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !395, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !395, file: !44, line: 933, baseType: !2749, size: 32, offset: 544)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !395, file: !44, line: 934, baseType: !1213, size: 192, offset: 576)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !395, file: !44, line: 935, baseType: !571, size: 64, offset: 768)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !395, file: !44, line: 936, baseType: !3191, size: 192, offset: 832)
!3191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3192)
!3192 = !{!3193, !3194, !3195, !3196, !3197, !3198}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3191, file: !44, line: 886, baseType: !3002)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3191, file: !44, line: 887, baseType: !1510, size: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3191, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3191, file: !44, line: 889, baseType: !477, size: 32, offset: 96)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3191, file: !44, line: 889, baseType: !477, size: 32, offset: 128)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3191, file: !44, line: 890, baseType: !146, size: 32, offset: 160)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !395, file: !44, line: 937, baseType: !1586, size: 64, offset: 1024)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !395, file: !44, line: 938, baseType: !3201, size: 256, offset: 1088)
!3201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3202)
!3202 = !{!3203, !3204, !3205, !3206, !3207, !3208}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3201, file: !44, line: 897, baseType: !151, size: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3201, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3201, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3201, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3201, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3201, file: !44, line: 904, baseType: !571, size: 64, offset: 192)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !395, file: !44, line: 940, baseType: !463, size: 64, offset: 1344)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !395, file: !44, line: 945, baseType: !149, size: 64, offset: 1408)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !395, file: !44, line: 949, baseType: !267, size: 128, offset: 1472)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !395, file: !44, line: 950, baseType: !267, size: 128, offset: 1600)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !395, file: !44, line: 952, baseType: !774, size: 64, offset: 1728)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !395, file: !44, line: 953, baseType: !949, size: 32, offset: 1792)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !395, file: !44, line: 954, baseType: !949, size: 32, offset: 1824)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !385, file: !344, line: 174, baseType: !391, size: 64, offset: 320)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !385, file: !344, line: 176, baseType: !3218, size: 64, offset: 384)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{!146, !394, !273, !384, !1021}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !373, file: !344, line: 90, baseType: !368, size: 64, offset: 192)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !373, file: !344, line: 91, baseType: !3223, size: 64, offset: 256)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !334, file: !263, line: 143, baseType: !3225, size: 64, offset: 256)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DISubroutineType(types: !3227)
!3227 = !{!3228, !273}
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3230)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3231)
!3231 = !{!3232, !3233, !3237, !3241, !3247, !3251}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3230, file: !61, line: 40, baseType: !60, size: 32)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3230, file: !61, line: 41, baseType: !3234, size: 64, offset: 64)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{!231}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3230, file: !61, line: 42, baseType: !3238, size: 64, offset: 128)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{!149}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3230, file: !61, line: 43, baseType: !3242, size: 64, offset: 192)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{!2166, !3245}
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3230, file: !61, line: 44, baseType: !3248, size: 64, offset: 256)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{!2166}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3230, file: !61, line: 45, baseType: !510, size: 64, offset: 320)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !334, file: !263, line: 144, baseType: !3253, size: 64, offset: 320)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{!2166, !273}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !334, file: !263, line: 145, baseType: !3257, size: 64, offset: 384)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{null, !273, !3260, !3261}
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !262, file: !263, line: 70, baseType: !3263, size: 64, offset: 384)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !659, line: 123, size: 1024, elements: !3265)
!3265 = !{!3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3394, !3395, !3396, !3397, !3398}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3264, file: !659, line: 124, baseType: !787, size: 32)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3264, file: !659, line: 125, baseType: !787, size: 32, offset: 32)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3264, file: !659, line: 135, baseType: !3263, size: 64, offset: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3264, file: !659, line: 136, baseType: !194, size: 64, offset: 128)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3264, file: !659, line: 138, baseType: !800, size: 192, align: 64, offset: 192)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3264, file: !659, line: 140, baseType: !2166, size: 64, offset: 384)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3264, file: !659, line: 141, baseType: !7, size: 32, offset: 448)
!3273 = !DIDerivedType(tag: DW_TAG_member, scope: !3264, file: !659, line: 142, baseType: !3274, size: 256, offset: 512)
!3274 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3264, file: !659, line: 142, size: 256, elements: !3275)
!3275 = !{!3276, !3322, !3326}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3274, file: !659, line: 143, baseType: !3277, size: 192)
!3277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !659, line: 91, size: 192, elements: !3278)
!3278 = !{!3279, !3280, !3281}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3277, file: !659, line: 92, baseType: !151, size: 64)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3277, file: !659, line: 94, baseType: !796, size: 64, offset: 64)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3277, file: !659, line: 100, baseType: !3282, size: 64, offset: 128)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !659, line: 180, size: 704, elements: !3284)
!3284 = !{!3285, !3286, !3287, !3294, !3295, !3296, !3320, !3321}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3283, file: !659, line: 182, baseType: !3263, size: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3283, file: !659, line: 183, baseType: !7, size: 32, offset: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3283, file: !659, line: 186, baseType: !3288, size: 192, offset: 128)
!3288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3289, line: 19, size: 192, elements: !3290)
!3289 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3290 = !{!3291, !3292, !3293}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3288, file: !3289, line: 20, baseType: !779, size: 128)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3288, file: !3289, line: 21, baseType: !7, size: 32, offset: 128)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3288, file: !3289, line: 22, baseType: !7, size: 32, offset: 160)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3283, file: !659, line: 187, baseType: !457, size: 32, offset: 320)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3283, file: !659, line: 188, baseType: !457, size: 32, offset: 352)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3283, file: !659, line: 189, baseType: !3297, size: 64, offset: 384)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !659, line: 168, size: 320, elements: !3299)
!3299 = !{!3300, !3304, !3308, !3312, !3316}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3298, file: !659, line: 169, baseType: !3301, size: 64)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!146, !751, !3282}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3298, file: !659, line: 171, baseType: !3305, size: 64, offset: 64)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{!146, !3263, !194, !359}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3298, file: !659, line: 173, baseType: !3309, size: 64, offset: 128)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{!146, !3263}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3298, file: !659, line: 174, baseType: !3313, size: 64, offset: 192)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{!146, !3263, !3263, !194}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3298, file: !659, line: 176, baseType: !3317, size: 64, offset: 256)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = !DISubroutineType(types: !3319)
!3319 = !{!146, !751, !3263, !3282}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3283, file: !659, line: 192, baseType: !267, size: 128, offset: 448)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3283, file: !659, line: 194, baseType: !1520, size: 128, offset: 576)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3274, file: !659, line: 144, baseType: !3323, size: 64)
!3323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !659, line: 103, size: 64, elements: !3324)
!3324 = !{!3325}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3323, file: !659, line: 104, baseType: !3263, size: 64)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3274, file: !659, line: 145, baseType: !3327, size: 256)
!3327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !659, line: 107, size: 256, elements: !3328)
!3328 = !{!3329, !3389, !3392, !3393}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3327, file: !659, line: 108, baseType: !3330, size: 64)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3332)
!3332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !659, line: 217, size: 768, elements: !3333)
!3333 = !{!3334, !3354, !3358, !3362, !3366, !3370, !3374, !3378, !3379, !3380, !3381, !3385}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3332, file: !659, line: 222, baseType: !3335, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{!146, !3338}
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !659, line: 197, size: 1088, elements: !3340)
!3340 = !{!3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3339, file: !659, line: 199, baseType: !3263, size: 64)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3339, file: !659, line: 200, baseType: !394, size: 64, offset: 64)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3339, file: !659, line: 201, baseType: !751, size: 64, offset: 128)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3339, file: !659, line: 202, baseType: !149, size: 64, offset: 192)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3339, file: !659, line: 205, baseType: !1213, size: 192, offset: 256)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3339, file: !659, line: 206, baseType: !1213, size: 192, offset: 448)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3339, file: !659, line: 207, baseType: !146, size: 32, offset: 640)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3339, file: !659, line: 208, baseType: !267, size: 128, offset: 704)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3339, file: !659, line: 209, baseType: !321, size: 64, offset: 832)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3339, file: !659, line: 211, baseType: !364, size: 64, offset: 896)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3339, file: !659, line: 212, baseType: !231, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3339, file: !659, line: 213, baseType: !231, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3339, file: !659, line: 214, baseType: !1049, size: 64, offset: 1024)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3332, file: !659, line: 223, baseType: !3355, size: 64, offset: 64)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{null, !3338}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3332, file: !659, line: 236, baseType: !3359, size: 64, offset: 128)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!146, !751, !149}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3332, file: !659, line: 238, baseType: !3363, size: 64, offset: 192)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{!149, !751, !2915}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3332, file: !659, line: 239, baseType: !3367, size: 64, offset: 256)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = !DISubroutineType(types: !3369)
!3369 = !{!149, !751, !149, !2915}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3332, file: !659, line: 240, baseType: !3371, size: 64, offset: 320)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = !DISubroutineType(types: !3373)
!3373 = !{null, !751, !149}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3332, file: !659, line: 242, baseType: !3375, size: 64, offset: 384)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = !DISubroutineType(types: !3377)
!3377 = !{!350, !3338, !321, !364, !571}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3332, file: !659, line: 252, baseType: !364, size: 64, offset: 448)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3332, file: !659, line: 259, baseType: !231, size: 8, offset: 512)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3332, file: !659, line: 260, baseType: !3375, size: 64, offset: 576)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3332, file: !659, line: 263, baseType: !3382, size: 64, offset: 640)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!2944, !3338, !2946}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3332, file: !659, line: 266, baseType: !3386, size: 64, offset: 704)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!146, !3338, !1021}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3327, file: !659, line: 109, baseType: !3390, size: 64, offset: 64)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !659, line: 31, flags: DIFlagFwdDecl)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3327, file: !659, line: 110, baseType: !571, size: 64, offset: 128)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3327, file: !659, line: 111, baseType: !3263, size: 64, offset: 192)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3264, file: !659, line: 148, baseType: !149, size: 64, offset: 768)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3264, file: !659, line: 154, baseType: !463, size: 64, offset: 832)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3264, file: !659, line: 156, baseType: !150, size: 16, offset: 896)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3264, file: !659, line: 157, baseType: !359, size: 16, offset: 912)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3264, file: !659, line: 158, baseType: !3399, size: 64, offset: 960)
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !659, line: 32, flags: DIFlagFwdDecl)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !262, file: !263, line: 71, baseType: !3402, size: 32, offset: 448)
!3402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3403, line: 19, size: 32, elements: !3404)
!3403 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3404 = !{!3405}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3402, file: !3403, line: 20, baseType: !1269, size: 32)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !262, file: !263, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !262, file: !263, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !262, file: !263, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !262, file: !263, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !262, file: !263, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !259, file: !73, line: 463, baseType: !258, size: 64, offset: 512)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !259, file: !73, line: 465, baseType: !3413, size: 64, offset: 576)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !259, file: !73, line: 467, baseType: !194, size: 64, offset: 640)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !259, file: !73, line: 468, baseType: !3417, size: 64, offset: 704)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3419)
!3419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3420)
!3420 = !{!3421, !3422, !3423, !3427, !3432, !3436}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3419, file: !73, line: 88, baseType: !194, size: 64)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3419, file: !73, line: 89, baseType: !370, size: 64, offset: 64)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3419, file: !73, line: 90, baseType: !3424, size: 64, offset: 128)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = !DISubroutineType(types: !3426)
!3426 = !{!146, !258, !316}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3419, file: !73, line: 91, baseType: !3428, size: 64, offset: 192)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{!321, !258, !3431, !3260, !3261}
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3419, file: !73, line: 93, baseType: !3433, size: 64, offset: 256)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{null, !258}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3419, file: !73, line: 95, baseType: !3437, size: 64, offset: 320)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3439)
!3439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3440)
!3440 = !{!3441, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3439, file: !80, line: 279, baseType: !3442, size: 64)
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3443, size: 64)
!3443 = !DISubroutineType(types: !3444)
!3444 = !{!146, !258}
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3439, file: !80, line: 280, baseType: !3433, size: 64, offset: 64)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3439, file: !80, line: 281, baseType: !3442, size: 64, offset: 128)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3439, file: !80, line: 282, baseType: !3442, size: 64, offset: 192)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3439, file: !80, line: 283, baseType: !3442, size: 64, offset: 256)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3439, file: !80, line: 284, baseType: !3442, size: 64, offset: 320)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3439, file: !80, line: 285, baseType: !3442, size: 64, offset: 384)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3439, file: !80, line: 286, baseType: !3442, size: 64, offset: 448)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3439, file: !80, line: 287, baseType: !3442, size: 64, offset: 512)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3439, file: !80, line: 288, baseType: !3442, size: 64, offset: 576)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3439, file: !80, line: 289, baseType: !3442, size: 64, offset: 640)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3439, file: !80, line: 290, baseType: !3442, size: 64, offset: 704)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3439, file: !80, line: 291, baseType: !3442, size: 64, offset: 768)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3439, file: !80, line: 292, baseType: !3442, size: 64, offset: 832)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3439, file: !80, line: 293, baseType: !3442, size: 64, offset: 896)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3439, file: !80, line: 294, baseType: !3442, size: 64, offset: 960)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3439, file: !80, line: 295, baseType: !3442, size: 64, offset: 1024)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3439, file: !80, line: 296, baseType: !3442, size: 64, offset: 1088)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3439, file: !80, line: 297, baseType: !3442, size: 64, offset: 1152)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3439, file: !80, line: 298, baseType: !3442, size: 64, offset: 1216)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3439, file: !80, line: 299, baseType: !3442, size: 64, offset: 1280)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3439, file: !80, line: 300, baseType: !3442, size: 64, offset: 1344)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3439, file: !80, line: 301, baseType: !3442, size: 64, offset: 1408)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !259, file: !73, line: 470, baseType: !3468, size: 64, offset: 768)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3470, line: 82, size: 1408, elements: !3471)
!3470 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3471 = !{!3472, !3473, !3474, !3475, !3476, !3477, !3478, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3553, !3556, !3557}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3469, file: !3470, line: 83, baseType: !194, size: 64)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3469, file: !3470, line: 84, baseType: !194, size: 64, offset: 64)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3469, file: !3470, line: 85, baseType: !258, size: 64, offset: 128)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3469, file: !3470, line: 86, baseType: !370, size: 64, offset: 192)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3469, file: !3470, line: 87, baseType: !370, size: 64, offset: 256)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3469, file: !3470, line: 88, baseType: !370, size: 64, offset: 320)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3469, file: !3470, line: 90, baseType: !3479, size: 64, offset: 384)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{!146, !258, !3482}
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3484)
!3484 = !{!3485, !3486, !3487, !3488, !3489, !3490, !3491, !3504, !3517, !3518, !3519, !3520, !3521, !3529, !3530, !3531, !3532, !3533, !3534}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3483, file: !67, line: 96, baseType: !194, size: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3483, file: !67, line: 97, baseType: !3468, size: 64, offset: 64)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3483, file: !67, line: 99, baseType: !196, size: 64, offset: 128)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3483, file: !67, line: 100, baseType: !194, size: 64, offset: 192)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3483, file: !67, line: 102, baseType: !231, size: 8, offset: 256)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3483, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3483, file: !67, line: 105, baseType: !3492, size: 64, offset: 320)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3494)
!3494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3495, line: 262, size: 1600, elements: !3496)
!3495 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3496 = !{!3497, !3498, !3499, !3503}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3494, file: !3495, line: 263, baseType: !2739, size: 256)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3494, file: !3495, line: 264, baseType: !2739, size: 256, offset: 256)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3494, file: !3495, line: 265, baseType: !3500, size: 1024, offset: 512)
!3500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 1024, elements: !3501)
!3501 = !{!3502}
!3502 = !DISubrange(count: 128)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3494, file: !3495, line: 266, baseType: !2166, size: 64, offset: 1536)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3483, file: !67, line: 106, baseType: !3505, size: 64, offset: 384)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3507)
!3507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3495, line: 210, size: 256, elements: !3508)
!3508 = !{!3509, !3513, !3515, !3516}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3507, file: !3495, line: 211, baseType: !3510, size: 72)
!3510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1392, size: 72, elements: !3511)
!3511 = !{!3512}
!3512 = !DISubrange(count: 9)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3507, file: !3495, line: 212, baseType: !3514, size: 64, offset: 128)
!3514 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3495, line: 14, baseType: !151)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3507, file: !3495, line: 213, baseType: !459, size: 32, offset: 192)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3507, file: !3495, line: 214, baseType: !459, size: 32, offset: 224)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3483, file: !67, line: 108, baseType: !3442, size: 64, offset: 448)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3483, file: !67, line: 109, baseType: !3433, size: 64, offset: 512)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3483, file: !67, line: 110, baseType: !3442, size: 64, offset: 576)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3483, file: !67, line: 111, baseType: !3433, size: 64, offset: 640)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3483, file: !67, line: 112, baseType: !3522, size: 64, offset: 704)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DISubroutineType(types: !3524)
!3524 = !{!146, !258, !3525}
!3525 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3526)
!3526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3527)
!3527 = !{!3528}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3526, file: !80, line: 51, baseType: !146, size: 32)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3483, file: !67, line: 113, baseType: !3442, size: 64, offset: 768)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3483, file: !67, line: 114, baseType: !370, size: 64, offset: 832)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3483, file: !67, line: 115, baseType: !370, size: 64, offset: 896)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3483, file: !67, line: 117, baseType: !3437, size: 64, offset: 960)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3483, file: !67, line: 118, baseType: !3433, size: 64, offset: 1024)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3483, file: !67, line: 120, baseType: !3535, size: 64, offset: 1088)
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3536, size: 64)
!3536 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3469, file: !3470, line: 91, baseType: !3424, size: 64, offset: 448)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3469, file: !3470, line: 92, baseType: !3442, size: 64, offset: 512)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3469, file: !3470, line: 93, baseType: !3433, size: 64, offset: 576)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3469, file: !3470, line: 94, baseType: !3442, size: 64, offset: 640)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3469, file: !3470, line: 95, baseType: !3433, size: 64, offset: 704)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3469, file: !3470, line: 97, baseType: !3442, size: 64, offset: 768)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3469, file: !3470, line: 98, baseType: !3442, size: 64, offset: 832)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3469, file: !3470, line: 100, baseType: !3522, size: 64, offset: 896)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3469, file: !3470, line: 101, baseType: !3442, size: 64, offset: 960)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3469, file: !3470, line: 103, baseType: !3442, size: 64, offset: 1024)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3469, file: !3470, line: 105, baseType: !3442, size: 64, offset: 1088)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3469, file: !3470, line: 107, baseType: !3437, size: 64, offset: 1152)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3469, file: !3470, line: 109, baseType: !3550, size: 64, offset: 1216)
!3550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3551, size: 64)
!3551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3552)
!3552 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3470, line: 109, flags: DIFlagFwdDecl)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3469, file: !3470, line: 111, baseType: !3554, size: 64, offset: 1280)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3470, line: 111, flags: DIFlagFwdDecl)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3469, file: !3470, line: 112, baseType: !685, offset: 1344)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3469, file: !3470, line: 114, baseType: !231, size: 8, offset: 1344)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !259, file: !73, line: 471, baseType: !3482, size: 64, offset: 832)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !259, file: !73, line: 473, baseType: !149, size: 64, offset: 896)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !259, file: !73, line: 475, baseType: !149, size: 64, offset: 960)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !259, file: !73, line: 480, baseType: !1213, size: 192, offset: 1024)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !259, file: !73, line: 484, baseType: !3563, size: 576, offset: 1216)
!3563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3564)
!3564 = !{!3565, !3566, !3567, !3568, !3569, !3570}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3563, file: !73, line: 362, baseType: !267, size: 128)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3563, file: !73, line: 363, baseType: !267, size: 128, offset: 128)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3563, file: !73, line: 364, baseType: !267, size: 128, offset: 256)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3563, file: !73, line: 365, baseType: !267, size: 128, offset: 384)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3563, file: !73, line: 366, baseType: !231, size: 8, offset: 512)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3563, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !259, file: !73, line: 485, baseType: !3572, size: 2304, offset: 1792)
!3572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3573)
!3573 = !{!3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3669, !3673}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3572, file: !80, line: 566, baseType: !3525, size: 32)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3572, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3572, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3572, file: !80, line: 569, baseType: !231, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3572, file: !80, line: 570, baseType: !231, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3572, file: !80, line: 571, baseType: !231, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3572, file: !80, line: 572, baseType: !231, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3572, file: !80, line: 573, baseType: !231, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3572, file: !80, line: 574, baseType: !231, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3572, file: !80, line: 575, baseType: !231, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3572, file: !80, line: 576, baseType: !231, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3572, file: !80, line: 577, baseType: !457, size: 32, offset: 64)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3572, file: !80, line: 578, baseType: !280, offset: 96)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3572, file: !80, line: 580, baseType: !267, size: 128, offset: 128)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3572, file: !80, line: 581, baseType: !1541, size: 192, offset: 256)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3572, file: !80, line: 582, baseType: !3590, size: 64, offset: 448)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3592, line: 43, size: 1472, elements: !3593)
!3592 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3593 = !{!3594, !3595, !3596, !3597, !3598, !3601, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3591, file: !3592, line: 44, baseType: !194, size: 64)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3591, file: !3592, line: 45, baseType: !146, size: 32, offset: 64)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3591, file: !3592, line: 46, baseType: !267, size: 128, offset: 128)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3591, file: !3592, line: 47, baseType: !280, offset: 256)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3591, file: !3592, line: 48, baseType: !3599, size: 64, offset: 256)
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3591, file: !3592, line: 49, baseType: !3602, size: 320, offset: 320)
!3602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3603, line: 11, size: 320, elements: !3604)
!3603 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3604 = !{!3605, !3606, !3607, !3612}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3602, file: !3603, line: 16, baseType: !679, size: 128)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3602, file: !3603, line: 17, baseType: !151, size: 64, offset: 128)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3602, file: !3603, line: 18, baseType: !3608, size: 64, offset: 192)
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = !DISubroutineType(types: !3610)
!3610 = !{null, !3611}
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3602, file: !3603, line: 19, baseType: !457, size: 32, offset: 256)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3591, file: !3592, line: 50, baseType: !151, size: 64, offset: 640)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3591, file: !3592, line: 51, baseType: !1339, size: 64, offset: 704)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3591, file: !3592, line: 52, baseType: !1339, size: 64, offset: 768)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3591, file: !3592, line: 53, baseType: !1339, size: 64, offset: 832)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3591, file: !3592, line: 54, baseType: !1339, size: 64, offset: 896)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3591, file: !3592, line: 55, baseType: !1339, size: 64, offset: 960)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3591, file: !3592, line: 56, baseType: !151, size: 64, offset: 1024)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3591, file: !3592, line: 57, baseType: !151, size: 64, offset: 1088)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3591, file: !3592, line: 58, baseType: !151, size: 64, offset: 1152)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3591, file: !3592, line: 59, baseType: !151, size: 64, offset: 1216)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3591, file: !3592, line: 60, baseType: !151, size: 64, offset: 1280)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3591, file: !3592, line: 61, baseType: !258, size: 64, offset: 1344)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3591, file: !3592, line: 62, baseType: !231, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3591, file: !3592, line: 63, baseType: !231, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3572, file: !80, line: 583, baseType: !231, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3572, file: !80, line: 584, baseType: !231, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3572, file: !80, line: 585, baseType: !231, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3572, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3572, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3572, file: !80, line: 592, baseType: !1331, size: 512, offset: 576)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3572, file: !80, line: 593, baseType: !463, size: 64, offset: 1088)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3572, file: !80, line: 594, baseType: !1996, size: 256, offset: 1152)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3572, file: !80, line: 595, baseType: !1520, size: 128, offset: 1408)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3572, file: !80, line: 596, baseType: !3599, size: 64, offset: 1536)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3572, file: !80, line: 597, baseType: !787, size: 32, offset: 1600)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3572, file: !80, line: 598, baseType: !787, size: 32, offset: 1632)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3572, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3572, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3572, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3572, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3572, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3572, file: !80, line: 604, baseType: !231, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3572, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3572, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3572, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3572, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3572, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3572, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3572, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3572, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3572, file: !80, line: 613, baseType: !146, size: 32, offset: 1792)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3572, file: !80, line: 614, baseType: !146, size: 32, offset: 1824)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3572, file: !80, line: 615, baseType: !463, size: 64, offset: 1856)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3572, file: !80, line: 616, baseType: !463, size: 64, offset: 1920)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3572, file: !80, line: 617, baseType: !463, size: 64, offset: 1984)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3572, file: !80, line: 618, baseType: !463, size: 64, offset: 2048)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3572, file: !80, line: 620, baseType: !3660, size: 64, offset: 2112)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3662)
!3662 = !{!3663, !3664, !3665, !3666}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3661, file: !80, line: 537, baseType: !280)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3661, file: !80, line: 538, baseType: !7, size: 32)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3661, file: !80, line: 540, baseType: !267, size: 128, offset: 64)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3661, file: !80, line: 543, baseType: !3667, size: 64, offset: 192)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3572, file: !80, line: 621, baseType: !3670, size: 64, offset: 2176)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{null, !258, !1483}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3572, file: !80, line: 622, baseType: !3674, size: 64, offset: 2240)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !259, file: !73, line: 486, baseType: !3677, size: 64, offset: 4096)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3679)
!3679 = !{!3680, !3681, !3682, !3686, !3687, !3688}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3678, file: !80, line: 643, baseType: !3439, size: 1472)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3678, file: !80, line: 644, baseType: !3442, size: 64, offset: 1472)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3678, file: !80, line: 645, baseType: !3683, size: 64, offset: 1536)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{null, !258, !231}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3678, file: !80, line: 646, baseType: !3442, size: 64, offset: 1600)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3678, file: !80, line: 647, baseType: !3433, size: 64, offset: 1664)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3678, file: !80, line: 648, baseType: !3433, size: 64, offset: 1728)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !259, file: !73, line: 493, baseType: !3690, size: 64, offset: 4160)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !73, line: 493, flags: DIFlagFwdDecl)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !259, file: !73, line: 499, baseType: !267, size: 128, offset: 4224)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !259, file: !73, line: 502, baseType: !3694, size: 64, offset: 4352)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3696)
!3696 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !259, file: !73, line: 504, baseType: !3698, size: 64, offset: 4416)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !259, file: !73, line: 505, baseType: !463, size: 64, offset: 4480)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !259, file: !73, line: 510, baseType: !463, size: 64, offset: 4544)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !259, file: !73, line: 511, baseType: !3702, size: 64, offset: 4608)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3704)
!3704 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !259, file: !73, line: 513, baseType: !3706, size: 64, offset: 4672)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3708)
!3708 = !{!3709, !3710}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3707, file: !73, line: 293, baseType: !7, size: 32)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3707, file: !73, line: 294, baseType: !151, size: 64, offset: 64)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !259, file: !73, line: 515, baseType: !267, size: 128, offset: 4736)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !259, file: !73, line: 526, baseType: !3713, offset: 4864)
!3713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3714, line: 5, elements: !294)
!3714 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !259, file: !73, line: 528, baseType: !3716, size: 64, offset: 4864)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3718, line: 14, flags: DIFlagFwdDecl)
!3718 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !259, file: !73, line: 529, baseType: !3720, size: 64, offset: 4928)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3722, line: 17, size: 192, elements: !3723)
!3722 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3723 = !{!3724, !3725, !3808}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3721, file: !3722, line: 18, baseType: !3720, size: 64)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3721, file: !3722, line: 19, baseType: !3726, size: 64, offset: 64)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3728)
!3728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3722, line: 110, size: 1152, elements: !3729)
!3729 = !{!3730, !3734, !3738, !3744, !3750, !3754, !3758, !3763, !3767, !3768, !3772, !3776, !3780, !3791, !3792, !3793, !3794, !3804}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3728, file: !3722, line: 111, baseType: !3731, size: 64)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!3720, !3720}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3728, file: !3722, line: 112, baseType: !3735, size: 64, offset: 64)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{null, !3720}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3728, file: !3722, line: 113, baseType: !3739, size: 64, offset: 128)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!231, !3742}
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3721)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3728, file: !3722, line: 114, baseType: !3745, size: 64, offset: 192)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{!2166, !3742, !3748}
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !259)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3728, file: !3722, line: 116, baseType: !3751, size: 64, offset: 256)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{!231, !3742, !194}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3728, file: !3722, line: 118, baseType: !3755, size: 64, offset: 320)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!146, !3742, !194, !7, !149, !364}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3728, file: !3722, line: 123, baseType: !3759, size: 64, offset: 384)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{!146, !3742, !194, !3762, !364}
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3728, file: !3722, line: 126, baseType: !3764, size: 64, offset: 448)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!194, !3742}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3728, file: !3722, line: 127, baseType: !3764, size: 64, offset: 512)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3728, file: !3722, line: 128, baseType: !3769, size: 64, offset: 576)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!3720, !3742}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3728, file: !3722, line: 130, baseType: !3773, size: 64, offset: 640)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DISubroutineType(types: !3775)
!3775 = !{!3720, !3742, !3720}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3728, file: !3722, line: 133, baseType: !3777, size: 64, offset: 704)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!3720, !3742, !194}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3728, file: !3722, line: 135, baseType: !3781, size: 64, offset: 768)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!146, !3742, !194, !194, !7, !7, !3784}
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3722, line: 43, size: 640, elements: !3786)
!3786 = !{!3787, !3788, !3789}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3785, file: !3722, line: 44, baseType: !3720, size: 64)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3785, file: !3722, line: 45, baseType: !7, size: 32, offset: 64)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3785, file: !3722, line: 46, baseType: !3790, size: 512, offset: 128)
!3790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !463, size: 512, elements: !1369)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3728, file: !3722, line: 140, baseType: !3773, size: 64, offset: 832)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3728, file: !3722, line: 143, baseType: !3769, size: 64, offset: 896)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3728, file: !3722, line: 145, baseType: !3731, size: 64, offset: 960)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3728, file: !3722, line: 146, baseType: !3795, size: 64, offset: 1024)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DISubroutineType(types: !3797)
!3797 = !{!146, !3742, !3798}
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3722, line: 29, size: 128, elements: !3800)
!3800 = !{!3801, !3802, !3803}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3799, file: !3722, line: 30, baseType: !7, size: 32)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3799, file: !3722, line: 31, baseType: !7, size: 32, offset: 32)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3799, file: !3722, line: 32, baseType: !3742, size: 64, offset: 64)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3728, file: !3722, line: 148, baseType: !3805, size: 64, offset: 1088)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!146, !3742, !258}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3721, file: !3722, line: 20, baseType: !258, size: 64, offset: 128)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !259, file: !73, line: 534, baseType: !553, size: 32, offset: 4992)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !259, file: !73, line: 535, baseType: !457, size: 32, offset: 5024)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !259, file: !73, line: 537, baseType: !280, offset: 5056)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !259, file: !73, line: 538, baseType: !267, size: 128, offset: 5056)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !259, file: !73, line: 540, baseType: !3814, size: 64, offset: 5184)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3816, line: 54, size: 960, elements: !3817)
!3816 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3817 = !{!3818, !3819, !3820, !3821, !3822, !3823, !3824, !3828, !3832, !3833, !3834, !3835, !3839, !3843, !3844}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3815, file: !3816, line: 55, baseType: !194, size: 64)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3815, file: !3816, line: 56, baseType: !196, size: 64, offset: 64)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3815, file: !3816, line: 58, baseType: !370, size: 64, offset: 128)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3815, file: !3816, line: 59, baseType: !370, size: 64, offset: 192)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3815, file: !3816, line: 60, baseType: !273, size: 64, offset: 256)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3815, file: !3816, line: 62, baseType: !3424, size: 64, offset: 320)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3815, file: !3816, line: 63, baseType: !3825, size: 64, offset: 384)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = !DISubroutineType(types: !3827)
!3827 = !{!321, !258, !3431}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3815, file: !3816, line: 65, baseType: !3829, size: 64, offset: 448)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{null, !3814}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3815, file: !3816, line: 66, baseType: !3433, size: 64, offset: 512)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3815, file: !3816, line: 68, baseType: !3442, size: 64, offset: 576)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3815, file: !3816, line: 70, baseType: !3228, size: 64, offset: 640)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3815, file: !3816, line: 71, baseType: !3836, size: 64, offset: 704)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{!2166, !258}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3815, file: !3816, line: 73, baseType: !3840, size: 64, offset: 768)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = !DISubroutineType(types: !3842)
!3842 = !{null, !258, !3260, !3261}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3815, file: !3816, line: 75, baseType: !3437, size: 64, offset: 832)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3815, file: !3816, line: 77, baseType: !3554, size: 64, offset: 896)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !259, file: !73, line: 541, baseType: !370, size: 64, offset: 5248)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !259, file: !73, line: 543, baseType: !3433, size: 64, offset: 5312)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !259, file: !73, line: 544, baseType: !3848, size: 64, offset: 5376)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !259, file: !73, line: 545, baseType: !3851, size: 64, offset: 5440)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !259, file: !73, line: 547, baseType: !231, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !259, file: !73, line: 548, baseType: !231, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !259, file: !73, line: 549, baseType: !231, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !259, file: !73, line: 550, baseType: !231, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "page_list", scope: !255, file: !135, line: 251, baseType: !3858, size: 64, offset: 64)
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_buf_page", file: !135, line: 220, size: 128, elements: !3860)
!3860 = !{!3861, !3862}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "virt_addr", scope: !3859, file: !135, line: 221, baseType: !149, size: 64)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3859, file: !135, line: 222, baseType: !960, size: 64, offset: 64)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "n_pages", scope: !255, file: !135, line: 252, baseType: !7, size: 32, offset: 128)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "dma_dir", scope: !255, file: !135, line: 253, baseType: !93, size: 32, offset: 160)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !255, file: !135, line: 254, baseType: !3402, size: 32, offset: 192)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "max_bufsize", scope: !249, file: !135, line: 351, baseType: !7, size: 32, offset: 192)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_count", scope: !249, file: !135, line: 352, baseType: !7, size: 32, offset: 224)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_alloc_count", scope: !249, file: !135, line: 353, baseType: !7, size: 32, offset: 256)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_count", scope: !249, file: !135, line: 354, baseType: !7, size: 32, offset: 288)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_alloc_count", scope: !249, file: !135, line: 355, baseType: !7, size: 32, offset: 320)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_ptr", scope: !249, file: !135, line: 356, baseType: !7, size: 32, offset: 352)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_ptr", scope: !249, file: !135, line: 357, baseType: !7, size: 32, offset: 384)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "cur_chan", scope: !249, file: !135, line: 358, baseType: !7, size: 32, offset: 416)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "scans_done", scope: !249, file: !135, line: 359, baseType: !7, size: 32, offset: 448)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "scan_progress", scope: !249, file: !135, line: 360, baseType: !7, size: 32, offset: 480)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "munge_chan", scope: !249, file: !135, line: 361, baseType: !7, size: 32, offset: 512)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "munge_count", scope: !249, file: !135, line: 362, baseType: !7, size: 32, offset: 544)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "munge_ptr", scope: !249, file: !135, line: 363, baseType: !7, size: 32, offset: 576)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !249, file: !135, line: 364, baseType: !7, size: 32, offset: 608)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !249, file: !135, line: 365, baseType: !3881, size: 640, offset: 640)
!3881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_cmd", file: !101, line: 589, size: 640, elements: !3882)
!3882 = !{!3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3899}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "subdev", scope: !3881, file: !101, line: 590, baseType: !7, size: 32)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3881, file: !101, line: 591, baseType: !7, size: 32, offset: 32)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "start_src", scope: !3881, file: !101, line: 593, baseType: !7, size: 32, offset: 64)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "start_arg", scope: !3881, file: !101, line: 594, baseType: !7, size: 32, offset: 96)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "scan_begin_src", scope: !3881, file: !101, line: 596, baseType: !7, size: 32, offset: 128)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "scan_begin_arg", scope: !3881, file: !101, line: 597, baseType: !7, size: 32, offset: 160)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "convert_src", scope: !3881, file: !101, line: 599, baseType: !7, size: 32, offset: 192)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "convert_arg", scope: !3881, file: !101, line: 600, baseType: !7, size: 32, offset: 224)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "scan_end_src", scope: !3881, file: !101, line: 602, baseType: !7, size: 32, offset: 256)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "scan_end_arg", scope: !3881, file: !101, line: 603, baseType: !7, size: 32, offset: 288)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "stop_src", scope: !3881, file: !101, line: 605, baseType: !7, size: 32, offset: 320)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "stop_arg", scope: !3881, file: !101, line: 606, baseType: !7, size: 32, offset: 352)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist", scope: !3881, file: !101, line: 608, baseType: !2722, size: 64, offset: 384)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist_len", scope: !3881, file: !101, line: 609, baseType: !7, size: 32, offset: 448)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3881, file: !101, line: 611, baseType: !3898, size: 64, offset: 512)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !3881, file: !101, line: 612, baseType: !7, size: 32, offset: 576)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "wait_head", scope: !249, file: !135, line: 366, baseType: !1520, size: 128, offset: 1280)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "cb_mask", scope: !249, file: !135, line: 367, baseType: !7, size: 32, offset: 1408)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "inttrig", scope: !249, file: !135, line: 368, baseType: !3903, size: 64, offset: 1472)
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = !DISubroutineType(types: !3905)
!3905 = !{!146, !203, !237, !7}
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !238, file: !135, line: 165, baseType: !149, size: 64, offset: 384)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !238, file: !135, line: 166, baseType: !149, size: 64, offset: 448)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "runflags", scope: !238, file: !135, line: 167, baseType: !7, size: 32, offset: 512)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "spin_lock", scope: !238, file: !135, line: 168, baseType: !280, offset: 544)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "io_bits", scope: !238, file: !135, line: 170, baseType: !7, size: 32, offset: 544)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata", scope: !238, file: !135, line: 172, baseType: !7, size: 32, offset: 576)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata_list", scope: !238, file: !135, line: 173, baseType: !3913, size: 64, offset: 640)
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "range_table", scope: !238, file: !135, line: 175, baseType: !3915, size: 64, offset: 704)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3917)
!3917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_lrange", file: !135, line: 635, size: 32, elements: !3918)
!3918 = !{!3919, !3920}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3917, file: !135, line: 636, baseType: !146, size: 32)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3917, file: !135, line: 637, baseType: !3921, offset: 32)
!3921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3922, elements: !2370)
!3922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_krange", file: !101, line: 685, size: 96, elements: !3923)
!3923 = !{!3924, !3925, !3926}
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !3922, file: !101, line: 686, baseType: !146, size: 32)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3922, file: !101, line: 687, baseType: !146, size: 32, offset: 32)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3922, file: !101, line: 688, baseType: !7, size: 32, offset: 64)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "range_table_list", scope: !238, file: !135, line: 176, baseType: !3928, size: 64, offset: 768)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3915)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist", scope: !238, file: !135, line: 178, baseType: !2722, size: 64, offset: 832)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "insn_read", scope: !238, file: !135, line: 180, baseType: !234, size: 64, offset: 896)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "insn_write", scope: !238, file: !135, line: 182, baseType: !234, size: 64, offset: 960)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "insn_bits", scope: !238, file: !135, line: 184, baseType: !234, size: 64, offset: 1024)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "insn_config", scope: !238, file: !135, line: 186, baseType: !234, size: 64, offset: 1088)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "do_cmd", scope: !238, file: !135, line: 191, baseType: !3936, size: 64, offset: 1152)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{!146, !203, !237}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "do_cmdtest", scope: !238, file: !135, line: 192, baseType: !3940, size: 64, offset: 1216)
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3941, size: 64)
!3941 = !DISubroutineType(types: !3942)
!3942 = !{!146, !203, !237, !3943}
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !238, file: !135, line: 195, baseType: !3936, size: 64, offset: 1280)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "cancel", scope: !238, file: !135, line: 196, baseType: !3936, size: 64, offset: 1344)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "buf_change", scope: !238, file: !135, line: 199, baseType: !3936, size: 64, offset: 1408)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "munge", scope: !238, file: !135, line: 202, baseType: !3948, size: 64, offset: 1472)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{null, !203, !237, !149, !7, !7}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "async_dma_dir", scope: !238, file: !135, line: 205, baseType: !93, size: 32, offset: 1536)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !238, file: !135, line: 207, baseType: !7, size: 32, offset: 1568)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !238, file: !135, line: 209, baseType: !258, size: 64, offset: 1600)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !238, file: !135, line: 210, baseType: !146, size: 32, offset: 1664)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "readback", scope: !238, file: !135, line: 212, baseType: !2722, size: 64, offset: 1728)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_insn", file: !101, line: 491, size: 320, elements: !3958)
!3958 = !{!3959, !3960, !3961, !3962, !3963, !3964}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3957, file: !101, line: 492, baseType: !7, size: 32)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !3957, file: !101, line: 493, baseType: !7, size: 32, offset: 32)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3957, file: !101, line: 494, baseType: !2722, size: 64, offset: 64)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "subdev", scope: !3957, file: !101, line: 495, baseType: !7, size: 32, offset: 128)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "chanspec", scope: !3957, file: !101, line: 496, baseType: !7, size: 32, offset: 160)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !3957, file: !101, line: 497, baseType: !225, size: 96, offset: 192)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !204, file: !135, line: 545, baseType: !149, size: 64, offset: 192)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !204, file: !135, line: 547, baseType: !258, size: 64, offset: 256)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !204, file: !135, line: 548, baseType: !146, size: 32, offset: 320)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "detach_count", scope: !204, file: !135, line: 549, baseType: !7, size: 32, offset: 352)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "hw_dev", scope: !204, file: !135, line: 550, baseType: !258, size: 64, offset: 384)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !204, file: !135, line: 552, baseType: !194, size: 64, offset: 448)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "board_ptr", scope: !204, file: !135, line: 553, baseType: !2166, size: 64, offset: 512)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "attached", scope: !204, file: !135, line: 554, baseType: !7, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "ioenabled", scope: !204, file: !135, line: 555, baseType: !7, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "spinlock", scope: !204, file: !135, line: 556, baseType: !280, offset: 584)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !204, file: !135, line: 557, baseType: !1213, size: 192, offset: 640)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "attach_lock", scope: !204, file: !135, line: 558, baseType: !807, size: 256, offset: 832)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !204, file: !135, line: 559, baseType: !3402, size: 32, offset: 1088)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "n_subdevices", scope: !204, file: !135, line: 561, baseType: !146, size: 32, offset: 1120)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "subdevices", scope: !204, file: !135, line: 562, baseType: !237, size: 64, offset: 1152)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "mmio", scope: !204, file: !135, line: 565, baseType: !149, size: 64, offset: 1216)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "iobase", scope: !204, file: !135, line: 566, baseType: !151, size: 64, offset: 1280)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "iolen", scope: !204, file: !135, line: 567, baseType: !151, size: 64, offset: 1344)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !204, file: !135, line: 568, baseType: !7, size: 32, offset: 1408)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "read_subdev", scope: !204, file: !135, line: 570, baseType: !237, size: 64, offset: 1472)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "write_subdev", scope: !204, file: !135, line: 571, baseType: !237, size: 64, offset: 1536)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "async_queue", scope: !204, file: !135, line: 573, baseType: !2998, size: 64, offset: 1600)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !204, file: !135, line: 575, baseType: !3988, size: 64, offset: 1664)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{!146, !203}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !204, file: !135, line: 576, baseType: !3992, size: 64, offset: 1728)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{null, !203}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "insn_device_config", scope: !204, file: !135, line: 577, baseType: !3996, size: 64, offset: 1792)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!146, !203, !3956, !2722}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "get_valid_routes", scope: !204, file: !135, line: 579, baseType: !4000, size: 64, offset: 1856)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = !DISubroutineType(types: !4002)
!4002 = !{!7, !203, !7, !2722}
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_devconfig", file: !101, line: 834, size: 1184, elements: !4005)
!4005 = !{!4006, !4008}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !4004, file: !101, line: 835, baseType: !4007, size: 160)
!4007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 160, elements: !2240)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !4004, file: !101, line: 836, baseType: !4009, size: 1024, offset: 160)
!4009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 1024, elements: !2269)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !189, file: !135, line: 444, baseType: !3992, size: 64, offset: 256)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "auto_attach", scope: !189, file: !135, line: 445, baseType: !4012, size: 64, offset: 320)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = !DISubroutineType(types: !4014)
!4014 = !{!146, !203, !151}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "num_names", scope: !189, file: !135, line: 446, baseType: !7, size: 32, offset: 384)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !189, file: !135, line: 447, baseType: !4017, size: 64, offset: 448)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !194)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !189, file: !135, line: 448, baseType: !146, size: 32, offset: 512)
!4020 = !DIGlobalVariableExpression(var: !4021, expr: !DIExpression())
!4021 = distinct !DIGlobalVariable(name: "pci224_boards", scope: !2, file: !3, line: 351, type: !4022, isLocal: true, isDefinition: true)
!4022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4023, size: 640, elements: !1608)
!4023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4024)
!4024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci224_board", file: !3, line: 342, size: 320, elements: !4025)
!4025 = !{!4026, !4027, !4028, !4029, !4030, !4033}
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4024, file: !3, line: 343, baseType: !194, size: 64)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "ao_chans", scope: !4024, file: !3, line: 344, baseType: !7, size: 32, offset: 64)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "ao_bits", scope: !4024, file: !3, line: 345, baseType: !7, size: 32, offset: 96)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "ao_range", scope: !4024, file: !3, line: 346, baseType: !3915, size: 64, offset: 128)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "ao_hwrange", scope: !4024, file: !3, line: 347, baseType: !4031, size: 64, offset: 192)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "ao_range_check", scope: !4024, file: !3, line: 348, baseType: !467, size: 64, offset: 256)
!4034 = !DIGlobalVariableExpression(var: !4035, expr: !DIExpression())
!4035 = distinct !DIGlobalVariable(name: "range_pci224", scope: !2, file: !3, line: 266, type: !3916, isLocal: true, isDefinition: true)
!4036 = !DIGlobalVariableExpression(var: !4037, expr: !DIExpression())
!4037 = distinct !DIGlobalVariable(name: "hwrange_pci224", scope: !2, file: !3, line: 283, type: !4038, isLocal: true, isDefinition: true)
!4038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4032, size: 160, elements: !4039)
!4039 = !{!4040}
!4040 = !DISubrange(count: 10)
!4041 = !DIGlobalVariableExpression(var: !4042, expr: !DIExpression())
!4042 = distinct !DIGlobalVariable(name: "range_check_pci224", scope: !2, file: !3, line: 299, type: !4043, isLocal: true, isDefinition: true)
!4043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !468, size: 80, elements: !4039)
!4044 = !DIGlobalVariableExpression(var: !4045, expr: !DIExpression())
!4045 = distinct !DIGlobalVariable(name: "range_pci234", scope: !2, file: !3, line: 310, type: !3916, isLocal: true, isDefinition: true)
!4046 = !DIGlobalVariableExpression(var: !4047, expr: !DIExpression())
!4047 = distinct !DIGlobalVariable(name: "hwrange_pci234", scope: !2, file: !3, line: 324, type: !4048, isLocal: true, isDefinition: true)
!4048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4032, size: 64, elements: !1195)
!4049 = !DIGlobalVariableExpression(var: !4050, expr: !DIExpression())
!4050 = distinct !DIGlobalVariable(name: "range_check_pci234", scope: !2, file: !3, line: 332, type: !4051, isLocal: true, isDefinition: true)
!4051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !468, size: 32, elements: !1195)
!4052 = !DIGlobalVariableExpression(var: !4053, expr: !DIExpression())
!4053 = distinct !DIGlobalVariable(name: "amplc_pci224_pci_driver", scope: !2, file: !3, line: 1133, type: !4054, isLocal: true, isDefinition: true)
!4054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !4055, line: 858, size: 2048, elements: !4056)
!4055 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!4056 = !{!4057, !4058, !4059, !4071, !4291, !4295, !4299, !4303, !4304, !4308, !4326, !4327, !4328}
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4054, file: !4055, line: 859, baseType: !267, size: 128)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4054, file: !4055, line: 860, baseType: !194, size: 64, offset: 128)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4054, file: !4055, line: 861, baseType: !4060, size: 64, offset: 192)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4062)
!4062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3495, line: 38, size: 256, elements: !4063)
!4063 = !{!4064, !4065, !4066, !4067, !4068, !4069, !4070}
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4062, file: !3495, line: 39, baseType: !459, size: 32)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4062, file: !3495, line: 39, baseType: !459, size: 32, offset: 32)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4062, file: !3495, line: 40, baseType: !459, size: 32, offset: 64)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4062, file: !3495, line: 40, baseType: !459, size: 32, offset: 96)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4062, file: !3495, line: 41, baseType: !459, size: 32, offset: 128)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4062, file: !3495, line: 41, baseType: !459, size: 32, offset: 160)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4062, file: !3495, line: 42, baseType: !3514, size: 64, offset: 192)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4054, file: !4055, line: 862, baseType: !4072, size: 64, offset: 256)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DISubroutineType(types: !4074)
!4074 = !{!146, !4075, !4060}
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !4055, line: 309, size: 19264, elements: !4077)
!4077 = !{!4078, !4079, !4154, !4155, !4156, !4157, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4185, !4187, !4188, !4189, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4213, !4214, !4215, !4216, !4218, !4219, !4220, !4221, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4264, !4265, !4267, !4268, !4269, !4270, !4272, !4273, !4274, !4277, !4284, !4285, !4286, !4287, !4288, !4289, !4290}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !4076, file: !4055, line: 310, baseType: !267, size: 128)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4076, file: !4055, line: 311, baseType: !4080, size: 64, offset: 128)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !4055, line: 605, size: 8064, elements: !4082)
!4082 = !{!4083, !4084, !4085, !4086, !4087, !4088, !4089, !4104, !4105, !4106, !4130, !4133, !4134, !4138, !4139, !4140, !4141, !4142, !4146, !4147, !4149, !4150, !4151, !4152, !4153}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4081, file: !4055, line: 606, baseType: !267, size: 128)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4081, file: !4055, line: 607, baseType: !4080, size: 64, offset: 128)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4081, file: !4055, line: 608, baseType: !267, size: 128, offset: 192)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4081, file: !4055, line: 609, baseType: !267, size: 128, offset: 320)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4081, file: !4055, line: 610, baseType: !4075, size: 64, offset: 448)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !4081, file: !4055, line: 611, baseType: !267, size: 128, offset: 512)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4081, file: !4055, line: 613, baseType: !4090, size: 256, offset: 640)
!4090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4091, size: 256, elements: !1195)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4093, line: 20, size: 512, elements: !4094)
!4093 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!4094 = !{!4095, !4097, !4098, !4099, !4100, !4101, !4102, !4103}
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4092, file: !4093, line: 21, baseType: !4096, size: 64)
!4096 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !148, line: 158, baseType: !2164)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4092, file: !4093, line: 22, baseType: !4096, size: 64, offset: 64)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4092, file: !4093, line: 23, baseType: !194, size: 64, offset: 128)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4092, file: !4093, line: 24, baseType: !151, size: 64, offset: 192)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4092, file: !4093, line: 25, baseType: !151, size: 64, offset: 256)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4092, file: !4093, line: 26, baseType: !4091, size: 64, offset: 320)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4092, file: !4093, line: 26, baseType: !4091, size: 64, offset: 384)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4092, file: !4093, line: 26, baseType: !4091, size: 64, offset: 448)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4081, file: !4055, line: 614, baseType: !267, size: 128, offset: 896)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !4081, file: !4055, line: 615, baseType: !4092, size: 512, offset: 1024)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4081, file: !4055, line: 617, baseType: !4107, size: 64, offset: 1536)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !4055, line: 731, size: 320, elements: !4109)
!4109 = !{!4110, !4114, !4118, !4122, !4126}
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !4108, file: !4055, line: 732, baseType: !4111, size: 64)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4112 = !DISubroutineType(types: !4113)
!4113 = !{!146, !4080}
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !4108, file: !4055, line: 733, baseType: !4115, size: 64, offset: 64)
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4116 = !DISubroutineType(types: !4117)
!4117 = !{null, !4080}
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !4108, file: !4055, line: 734, baseType: !4119, size: 64, offset: 128)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{!149, !4080, !7, !146}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4108, file: !4055, line: 735, baseType: !4123, size: 64, offset: 192)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{!146, !4080, !7, !146, !146, !1454}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4108, file: !4055, line: 736, baseType: !4127, size: 64, offset: 256)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DISubroutineType(types: !4129)
!4129 = !{!146, !4080, !7, !146, !146, !457}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4081, file: !4055, line: 618, baseType: !4131, size: 64, offset: 1600)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !4055, line: 537, flags: DIFlagFwdDecl)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4081, file: !4055, line: 619, baseType: !149, size: 64, offset: 1664)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !4081, file: !4055, line: 620, baseType: !4135, size: 64, offset: 1728)
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4136 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4137, line: 123, flags: DIFlagFwdDecl)
!4137 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4081, file: !4055, line: 622, baseType: !469, size: 8, offset: 1792)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4081, file: !4055, line: 623, baseType: !469, size: 8, offset: 1800)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !4081, file: !4055, line: 624, baseType: !469, size: 8, offset: 1808)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !4081, file: !4055, line: 625, baseType: !469, size: 8, offset: 1816)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4081, file: !4055, line: 630, baseType: !4143, size: 384, offset: 1824)
!4143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 384, elements: !4144)
!4144 = !{!4145}
!4145 = !DISubrange(count: 48)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !4081, file: !4055, line: 632, baseType: !150, size: 16, offset: 2208)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !4081, file: !4055, line: 633, baseType: !4148, size: 16, offset: 2224)
!4148 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !4055, line: 237, baseType: !150)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !4081, file: !4055, line: 634, baseType: !258, size: 64, offset: 2240)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4081, file: !4055, line: 635, baseType: !259, size: 5568, offset: 2304)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !4081, file: !4055, line: 636, baseType: !384, size: 64, offset: 7872)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !4081, file: !4055, line: 637, baseType: !384, size: 64, offset: 7936)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !4081, file: !4055, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !4076, file: !4055, line: 312, baseType: !4080, size: 64, offset: 192)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4076, file: !4055, line: 314, baseType: !149, size: 64, offset: 256)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !4076, file: !4055, line: 315, baseType: !4135, size: 64, offset: 320)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4076, file: !4055, line: 316, baseType: !4158, size: 64, offset: 384)
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !4055, line: 69, size: 832, elements: !4160)
!4160 = !{!4161, !4162, !4163, !4166, !4167}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4159, file: !4055, line: 70, baseType: !4080, size: 64)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4159, file: !4055, line: 71, baseType: !267, size: 128, offset: 64)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4159, file: !4055, line: 72, baseType: !4164, size: 64, offset: 192)
!4164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4165, size: 64)
!4165 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !4055, line: 72, flags: DIFlagFwdDecl)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4159, file: !4055, line: 73, baseType: !469, size: 8, offset: 256)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4159, file: !4055, line: 74, baseType: !262, size: 512, offset: 320)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !4076, file: !4055, line: 318, baseType: !7, size: 32, offset: 448)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4076, file: !4055, line: 319, baseType: !150, size: 16, offset: 480)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4076, file: !4055, line: 320, baseType: !150, size: 16, offset: 496)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4076, file: !4055, line: 321, baseType: !150, size: 16, offset: 512)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4076, file: !4055, line: 322, baseType: !150, size: 16, offset: 528)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4076, file: !4055, line: 323, baseType: !7, size: 32, offset: 544)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4076, file: !4055, line: 324, baseType: !1391, size: 8, offset: 576)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4076, file: !4055, line: 325, baseType: !1391, size: 8, offset: 584)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !4076, file: !4055, line: 330, baseType: !1391, size: 8, offset: 592)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !4076, file: !4055, line: 331, baseType: !1391, size: 8, offset: 600)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !4076, file: !4055, line: 332, baseType: !1391, size: 8, offset: 608)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !4076, file: !4055, line: 333, baseType: !1391, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !4076, file: !4055, line: 334, baseType: !1391, size: 8, offset: 624)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4076, file: !4055, line: 335, baseType: !1391, size: 8, offset: 632)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !4076, file: !4055, line: 336, baseType: !899, size: 16, offset: 640)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !4076, file: !4055, line: 337, baseType: !4184, size: 64, offset: 704)
!4184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4076, file: !4055, line: 339, baseType: !4186, size: 64, offset: 768)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4076, file: !4055, line: 340, baseType: !463, size: 64, offset: 832)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4076, file: !4055, line: 346, baseType: !3707, size: 128, offset: 896)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !4076, file: !4055, line: 348, baseType: !4190, size: 32, offset: 1024)
!4190 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !4055, line: 155, baseType: !146)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !4076, file: !4055, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !4076, file: !4055, line: 352, baseType: !1391, size: 8, offset: 1064)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !4076, file: !4055, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !4076, file: !4055, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !4076, file: !4055, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !4076, file: !4055, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !4076, file: !4055, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !4076, file: !4055, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !4076, file: !4055, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !4076, file: !4055, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !4076, file: !4055, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !4076, file: !4055, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !4076, file: !4055, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !4076, file: !4055, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !4076, file: !4055, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !4076, file: !4055, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !4076, file: !4055, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !4076, file: !4055, line: 376, baseType: !7, size: 32, offset: 1120)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !4076, file: !4055, line: 377, baseType: !7, size: 32, offset: 1152)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !4076, file: !4055, line: 380, baseType: !4211, size: 64, offset: 1216)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !4055, line: 303, flags: DIFlagFwdDecl)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !4076, file: !4055, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !4076, file: !4055, line: 383, baseType: !146, size: 32, offset: 1312)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !4076, file: !4055, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !4076, file: !4055, line: 387, baseType: !4217, size: 32, offset: 1376)
!4217 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !4055, line: 180, baseType: !7)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4076, file: !4055, line: 388, baseType: !259, size: 5568, offset: 1408)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !4076, file: !4055, line: 390, baseType: !146, size: 32, offset: 6976)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4076, file: !4055, line: 396, baseType: !7, size: 32, offset: 7008)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4076, file: !4055, line: 397, baseType: !4222, size: 8704, offset: 7040)
!4222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4092, size: 8704, elements: !4223)
!4223 = !{!4224}
!4224 = !DISubrange(count: 17)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4076, file: !4055, line: 399, baseType: !231, size: 8, offset: 15744)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !4076, file: !4055, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !4076, file: !4055, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !4076, file: !4055, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !4076, file: !4055, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !4076, file: !4055, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !4076, file: !4055, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !4076, file: !4055, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !4076, file: !4055, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !4076, file: !4055, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !4076, file: !4055, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !4076, file: !4055, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !4076, file: !4055, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !4076, file: !4055, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !4076, file: !4055, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !4076, file: !4055, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !4076, file: !4055, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !4076, file: !4055, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !4076, file: !4055, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !4076, file: !4055, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !4076, file: !4055, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !4076, file: !4055, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !4076, file: !4055, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !4076, file: !4055, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !4076, file: !4055, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !4076, file: !4055, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !4076, file: !4055, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !4076, file: !4055, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !4076, file: !4055, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !4076, file: !4055, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !4076, file: !4055, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !4076, file: !4055, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !4076, file: !4055, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !4076, file: !4055, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !4076, file: !4055, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !4076, file: !4055, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !4076, file: !4055, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !4076, file: !4055, line: 450, baseType: !4263, size: 16, offset: 15792)
!4263 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !4055, line: 206, baseType: !150)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !4076, file: !4055, line: 451, baseType: !787, size: 32, offset: 15808)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !4076, file: !4055, line: 453, baseType: !4266, size: 512, offset: 15840)
!4266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !457, size: 512, elements: !1774)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !4076, file: !4055, line: 454, baseType: !675, size: 64, offset: 16384)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !4076, file: !4055, line: 455, baseType: !384, size: 64, offset: 16448)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !4076, file: !4055, line: 456, baseType: !146, size: 32, offset: 16512)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !4076, file: !4055, line: 457, baseType: !4271, size: 1088, offset: 16576)
!4271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 1088, elements: !4223)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !4076, file: !4055, line: 458, baseType: !4271, size: 1088, offset: 17664)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !4076, file: !4055, line: 469, baseType: !370, size: 64, offset: 18752)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !4076, file: !4055, line: 471, baseType: !4275, size: 64, offset: 18816)
!4275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4276, size: 64)
!4276 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !4055, line: 304, flags: DIFlagFwdDecl)
!4277 = !DIDerivedType(tag: DW_TAG_member, scope: !4076, file: !4055, line: 478, baseType: !4278, size: 64, offset: 18880)
!4278 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4076, file: !4055, line: 478, size: 64, elements: !4279)
!4279 = !{!4280, !4283}
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4278, file: !4055, line: 479, baseType: !4281, size: 64)
!4281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4282, size: 64)
!4282 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !4055, line: 305, flags: DIFlagFwdDecl)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4278, file: !4055, line: 480, baseType: !4075, size: 64)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !4076, file: !4055, line: 482, baseType: !899, size: 16, offset: 18944)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !4076, file: !4055, line: 483, baseType: !1391, size: 8, offset: 18960)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !4076, file: !4055, line: 497, baseType: !899, size: 16, offset: 18976)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !4076, file: !4055, line: 498, baseType: !2164, size: 64, offset: 19008)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !4076, file: !4055, line: 499, baseType: !364, size: 64, offset: 19072)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !4076, file: !4055, line: 500, baseType: !321, size: 64, offset: 19136)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !4076, file: !4055, line: 502, baseType: !151, size: 64, offset: 19200)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4054, file: !4055, line: 863, baseType: !4292, size: 64, offset: 320)
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4293 = !DISubroutineType(types: !4294)
!4294 = !{null, !4075}
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4054, file: !4055, line: 864, baseType: !4296, size: 64, offset: 384)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = !DISubroutineType(types: !4298)
!4298 = !{!146, !4075, !3525}
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4054, file: !4055, line: 865, baseType: !4300, size: 64, offset: 448)
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = !DISubroutineType(types: !4302)
!4302 = !{!146, !4075}
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4054, file: !4055, line: 866, baseType: !4292, size: 64, offset: 512)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4054, file: !4055, line: 867, baseType: !4305, size: 64, offset: 576)
!4305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4306, size: 64)
!4306 = !DISubroutineType(types: !4307)
!4307 = !{!146, !4075, !146}
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4054, file: !4055, line: 868, baseType: !4309, size: 64, offset: 640)
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4310, size: 64)
!4310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4311)
!4311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !4055, line: 795, size: 384, elements: !4312)
!4312 = !{!4313, !4318, !4322, !4323, !4324, !4325}
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4311, file: !4055, line: 797, baseType: !4314, size: 64)
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4315 = !DISubroutineType(types: !4316)
!4316 = !{!4317, !4075, !4217}
!4317 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !4055, line: 772, baseType: !7)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4311, file: !4055, line: 801, baseType: !4319, size: 64, offset: 64)
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4320, size: 64)
!4320 = !DISubroutineType(types: !4321)
!4321 = !{!4317, !4075}
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4311, file: !4055, line: 804, baseType: !4319, size: 64, offset: 128)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4311, file: !4055, line: 807, baseType: !4292, size: 64, offset: 192)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4311, file: !4055, line: 808, baseType: !4292, size: 64, offset: 256)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4311, file: !4055, line: 811, baseType: !4292, size: 64, offset: 320)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4054, file: !4055, line: 869, baseType: !370, size: 64, offset: 704)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4054, file: !4055, line: 870, baseType: !3483, size: 1152, offset: 768)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4054, file: !4055, line: 871, baseType: !4329, size: 128, offset: 1920)
!4329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !4055, line: 759, size: 128, elements: !4330)
!4330 = !{!4331, !4332}
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4329, file: !4055, line: 760, baseType: !280)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4329, file: !4055, line: 761, baseType: !267, size: 128)
!4333 = !DIGlobalVariableExpression(var: !4334, expr: !DIExpression())
!4334 = distinct !DIGlobalVariable(name: "amplc_pci224_pci_table", scope: !2, file: !3, line: 1126, type: !4335, isLocal: true, isDefinition: true)
!4335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4061, size: 768, elements: !226)
!4336 = !{!"rsp"}
!4337 = !{i32 7, !"Dwarf Version", i32 4}
!4338 = !{i32 2, !"Debug Info Version", i32 3}
!4339 = !{i32 1, !"wchar_size", i32 2}
!4340 = !{i32 1, !"Code Model", i32 2}
!4341 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4342 = distinct !DISubprogram(name: "amplc_pci224_driver_init", scope: !3, file: !3, line: 1139, type: !4343, scopeLine: 1139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!4343 = !DISubroutineType(types: !4344)
!4344 = !{!146}
!4345 = !DILocation(line: 1139, column: 1, scope: !4342)
!4346 = distinct !DISubprogram(name: "amplc_pci224_driver_exit", scope: !3, file: !3, line: 1139, type: !164, scopeLine: 1139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!4347 = !DILocation(line: 1139, column: 1, scope: !4346)
!4348 = distinct !DISubprogram(name: "pci224_detach", scope: !3, file: !3, line: 1098, type: !3993, scopeLine: 1099, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!4349 = !DILocalVariable(name: "dev", arg: 1, scope: !4348, file: !3, line: 1098, type: !203)
!4350 = !DILocation(line: 1098, column: 49, scope: !4348)
!4351 = !DILocalVariable(name: "devpriv", scope: !4348, file: !3, line: 1100, type: !4352)
!4352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4353, size: 64)
!4353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci224_private", file: !3, line: 370, size: 384, elements: !4354)
!4354 = !{!4355, !4356, !4357, !4358, !4360, !4362, !4363, !4364, !4365, !4366}
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "iobase1", scope: !4353, file: !3, line: 371, baseType: !151, size: 64)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4353, file: !3, line: 372, baseType: !151, size: 64, offset: 64)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "ao_spinlock", scope: !4353, file: !3, line: 373, baseType: !280, offset: 128)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "ao_scan_vals", scope: !4353, file: !3, line: 374, baseType: !4359, size: 64, offset: 128)
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "ao_scan_order", scope: !4353, file: !3, line: 375, baseType: !4361, size: 64, offset: 192)
!4361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "intr_cpuid", scope: !4353, file: !3, line: 376, baseType: !146, size: 32, offset: 256)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "intr_running", scope: !4353, file: !3, line: 377, baseType: !1245, size: 16, offset: 288)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "daccon", scope: !4353, file: !3, line: 378, baseType: !150, size: 16, offset: 304)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "ao_enab", scope: !4353, file: !3, line: 379, baseType: !150, size: 16, offset: 320)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "intsce", scope: !4353, file: !3, line: 380, baseType: !469, size: 8, offset: 336)
!4367 = !DILocation(line: 1100, column: 25, scope: !4348)
!4368 = !DILocation(line: 1100, column: 35, scope: !4348)
!4369 = !DILocation(line: 1100, column: 40, scope: !4348)
!4370 = !DILocation(line: 1102, column: 20, scope: !4348)
!4371 = !DILocation(line: 1102, column: 2, scope: !4348)
!4372 = !DILocation(line: 1103, column: 6, scope: !4373)
!4373 = distinct !DILexicalBlock(scope: !4348, file: !3, line: 1103, column: 6)
!4374 = !DILocation(line: 1103, column: 6, scope: !4348)
!4375 = !DILocation(line: 1104, column: 9, scope: !4376)
!4376 = distinct !DILexicalBlock(scope: !4373, file: !3, line: 1103, column: 15)
!4377 = !DILocation(line: 1104, column: 18, scope: !4376)
!4378 = !DILocation(line: 1104, column: 3, scope: !4376)
!4379 = !DILocation(line: 1105, column: 9, scope: !4376)
!4380 = !DILocation(line: 1105, column: 18, scope: !4376)
!4381 = !DILocation(line: 1105, column: 3, scope: !4376)
!4382 = !DILocation(line: 1106, column: 2, scope: !4376)
!4383 = !DILocation(line: 1107, column: 1, scope: !4348)
!4384 = distinct !DISubprogram(name: "pci224_auto_attach", scope: !3, file: !3, line: 992, type: !4013, scopeLine: 993, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!4385 = !DILocalVariable(name: "lock", arg: 1, scope: !4386, file: !4387, line: 327, type: !1104)
!4386 = distinct !DISubprogram(name: "spinlock_check", scope: !4387, file: !4387, line: 327, type: !4388, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!4387 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!4388 = !DISubroutineType(types: !4389)
!4389 = !{!4390, !1104}
!4390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!4391 = !DILocation(line: 327, column: 67, scope: !4386, inlinedAt: !4392)
!4392 = distinct !DILocation(line: 1022, column: 2, scope: !4393)
!4393 = distinct !DILexicalBlock(scope: !4384, file: !3, line: 1022, column: 2)
!4394 = !DILocalVariable(name: "dev", arg: 1, scope: !4384, file: !3, line: 992, type: !203)
!4395 = !DILocation(line: 992, column: 42, scope: !4384)
!4396 = !DILocalVariable(name: "context_model", arg: 2, scope: !4384, file: !3, line: 992, type: !151)
!4397 = !DILocation(line: 992, column: 61, scope: !4384)
!4398 = !DILocalVariable(name: "pci_dev", scope: !4384, file: !3, line: 994, type: !4075)
!4399 = !DILocation(line: 994, column: 18, scope: !4384)
!4400 = !DILocation(line: 994, column: 46, scope: !4384)
!4401 = !DILocation(line: 994, column: 28, scope: !4384)
!4402 = !DILocalVariable(name: "board", scope: !4384, file: !3, line: 995, type: !4403)
!4403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4404 = !DILocation(line: 995, column: 29, scope: !4384)
!4405 = !DILocalVariable(name: "devpriv", scope: !4384, file: !3, line: 996, type: !4352)
!4406 = !DILocation(line: 996, column: 25, scope: !4384)
!4407 = !DILocalVariable(name: "s", scope: !4384, file: !3, line: 997, type: !237)
!4408 = !DILocation(line: 997, column: 27, scope: !4384)
!4409 = !DILocalVariable(name: "irq", scope: !4384, file: !3, line: 998, type: !7)
!4410 = !DILocation(line: 998, column: 15, scope: !4384)
!4411 = !DILocalVariable(name: "ret", scope: !4384, file: !3, line: 999, type: !146)
!4412 = !DILocation(line: 999, column: 6, scope: !4384)
!4413 = !DILocation(line: 1001, column: 6, scope: !4414)
!4414 = distinct !DILexicalBlock(scope: !4384, file: !3, line: 1001, column: 6)
!4415 = !DILocation(line: 1001, column: 20, scope: !4414)
!4416 = !DILocation(line: 1001, column: 6, scope: !4384)
!4417 = !DILocation(line: 1002, column: 26, scope: !4414)
!4418 = !DILocation(line: 1002, column: 12, scope: !4414)
!4419 = !DILocation(line: 1002, column: 9, scope: !4414)
!4420 = !DILocation(line: 1002, column: 3, scope: !4414)
!4421 = !DILocation(line: 1003, column: 7, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4384, file: !3, line: 1003, column: 6)
!4423 = !DILocation(line: 1003, column: 13, scope: !4422)
!4424 = !DILocation(line: 1003, column: 17, scope: !4422)
!4425 = !DILocation(line: 1003, column: 24, scope: !4422)
!4426 = !DILocation(line: 1003, column: 6, scope: !4384)
!4427 = !DILocation(line: 1004, column: 3, scope: !4428)
!4428 = distinct !DILexicalBlock(scope: !4422, file: !3, line: 1003, column: 30)
!4429 = !DILocation(line: 1006, column: 3, scope: !4428)
!4430 = !DILocation(line: 1008, column: 19, scope: !4384)
!4431 = !DILocation(line: 1008, column: 2, scope: !4384)
!4432 = !DILocation(line: 1008, column: 7, scope: !4384)
!4433 = !DILocation(line: 1008, column: 17, scope: !4384)
!4434 = !DILocation(line: 1009, column: 20, scope: !4384)
!4435 = !DILocation(line: 1009, column: 27, scope: !4384)
!4436 = !DILocation(line: 1009, column: 2, scope: !4384)
!4437 = !DILocation(line: 1009, column: 7, scope: !4384)
!4438 = !DILocation(line: 1009, column: 18, scope: !4384)
!4439 = !DILocation(line: 1011, column: 2, scope: !4384)
!4440 = !DILocation(line: 1014, column: 33, scope: !4384)
!4441 = !DILocation(line: 1014, column: 12, scope: !4384)
!4442 = !DILocation(line: 1014, column: 10, scope: !4384)
!4443 = !DILocation(line: 1015, column: 7, scope: !4444)
!4444 = distinct !DILexicalBlock(scope: !4384, file: !3, line: 1015, column: 6)
!4445 = !DILocation(line: 1015, column: 6, scope: !4384)
!4446 = !DILocation(line: 1016, column: 3, scope: !4444)
!4447 = !DILocation(line: 1018, column: 26, scope: !4384)
!4448 = !DILocation(line: 1018, column: 8, scope: !4384)
!4449 = !DILocation(line: 1018, column: 6, scope: !4384)
!4450 = !DILocation(line: 1019, column: 6, scope: !4451)
!4451 = distinct !DILexicalBlock(scope: !4384, file: !3, line: 1019, column: 6)
!4452 = !DILocation(line: 1019, column: 6, scope: !4384)
!4453 = !DILocation(line: 1020, column: 10, scope: !4451)
!4454 = !DILocation(line: 1020, column: 3, scope: !4451)
!4455 = !DILocation(line: 1022, column: 2, scope: !4384)
!4456 = !DILocation(line: 1022, column: 2, scope: !4393)
!4457 = !DILocation(line: 329, column: 10, scope: !4386, inlinedAt: !4392)
!4458 = !DILocation(line: 329, column: 16, scope: !4386, inlinedAt: !4392)
!4459 = !DILocation(line: 1024, column: 21, scope: !4384)
!4460 = !DILocation(line: 1024, column: 2, scope: !4384)
!4461 = !DILocation(line: 1024, column: 11, scope: !4384)
!4462 = !DILocation(line: 1024, column: 19, scope: !4384)
!4463 = !DILocation(line: 1025, column: 16, scope: !4384)
!4464 = !DILocation(line: 1025, column: 2, scope: !4384)
!4465 = !DILocation(line: 1025, column: 7, scope: !4384)
!4466 = !DILocation(line: 1025, column: 14, scope: !4384)
!4467 = !DILocation(line: 1026, column: 8, scope: !4384)
!4468 = !DILocation(line: 1026, column: 17, scope: !4384)
!4469 = !DILocation(line: 1026, column: 6, scope: !4384)
!4470 = !DILocation(line: 1029, column: 40, scope: !4384)
!4471 = !DILocation(line: 1029, column: 47, scope: !4384)
!4472 = !DILocation(line: 1029, column: 26, scope: !4384)
!4473 = !DILocation(line: 1029, column: 2, scope: !4384)
!4474 = !DILocation(line: 1029, column: 11, scope: !4384)
!4475 = !DILocation(line: 1029, column: 24, scope: !4384)
!4476 = !DILocation(line: 1032, column: 7, scope: !4477)
!4477 = distinct !DILexicalBlock(scope: !4384, file: !3, line: 1032, column: 6)
!4478 = !DILocation(line: 1032, column: 16, scope: !4477)
!4479 = !DILocation(line: 1032, column: 6, scope: !4384)
!4480 = !DILocation(line: 1033, column: 3, scope: !4477)
!4481 = !DILocation(line: 1037, column: 19, scope: !4384)
!4482 = !DILocation(line: 1037, column: 26, scope: !4384)
!4483 = !DILocation(line: 1037, column: 5, scope: !4384)
!4484 = !DILocation(line: 1036, column: 2, scope: !4384)
!4485 = !DILocation(line: 1036, column: 11, scope: !4384)
!4486 = !DILocation(line: 1036, column: 25, scope: !4384)
!4487 = !DILocation(line: 1040, column: 7, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4384, file: !3, line: 1040, column: 6)
!4489 = !DILocation(line: 1040, column: 16, scope: !4488)
!4490 = !DILocation(line: 1040, column: 6, scope: !4384)
!4491 = !DILocation(line: 1041, column: 3, scope: !4488)
!4492 = !DILocation(line: 1044, column: 2, scope: !4384)
!4493 = !DILocation(line: 1044, column: 11, scope: !4384)
!4494 = !DILocation(line: 1044, column: 18, scope: !4384)
!4495 = !DILocation(line: 1045, column: 10, scope: !4384)
!4496 = !DILocation(line: 1045, column: 19, scope: !4384)
!4497 = !DILocation(line: 1045, column: 27, scope: !4384)
!4498 = !DILocation(line: 1045, column: 2, scope: !4384)
!4499 = !DILocation(line: 1048, column: 34, scope: !4384)
!4500 = !DILocation(line: 1048, column: 39, scope: !4384)
!4501 = !DILocation(line: 1048, column: 46, scope: !4384)
!4502 = !DILocation(line: 1048, column: 2, scope: !4384)
!4503 = !DILocation(line: 1049, column: 10, scope: !4384)
!4504 = !DILocation(line: 1049, column: 15, scope: !4384)
!4505 = !DILocation(line: 1049, column: 22, scope: !4384)
!4506 = !DILocation(line: 1049, column: 2, scope: !4384)
!4507 = !DILocation(line: 1050, column: 10, scope: !4384)
!4508 = !DILocation(line: 1050, column: 15, scope: !4384)
!4509 = !DILocation(line: 1050, column: 22, scope: !4384)
!4510 = !DILocation(line: 1050, column: 2, scope: !4384)
!4511 = !DILocation(line: 1051, column: 2, scope: !4384)
!4512 = !DILocation(line: 1051, column: 11, scope: !4384)
!4513 = !DILocation(line: 1051, column: 18, scope: !4384)
!4514 = !DILocation(line: 1053, column: 7, scope: !4384)
!4515 = !DILocation(line: 1053, column: 16, scope: !4384)
!4516 = !DILocation(line: 1053, column: 23, scope: !4384)
!4517 = !DILocation(line: 1054, column: 7, scope: !4384)
!4518 = !DILocation(line: 1054, column: 12, scope: !4384)
!4519 = !DILocation(line: 1054, column: 19, scope: !4384)
!4520 = !DILocation(line: 1053, column: 2, scope: !4384)
!4521 = !DILocation(line: 1056, column: 32, scope: !4384)
!4522 = !DILocation(line: 1056, column: 41, scope: !4384)
!4523 = !DILocation(line: 1056, column: 49, scope: !4384)
!4524 = !DILocation(line: 1056, column: 15, scope: !4384)
!4525 = !DILocation(line: 1056, column: 2, scope: !4384)
!4526 = !DILocation(line: 1056, column: 7, scope: !4384)
!4527 = !DILocation(line: 1056, column: 13, scope: !4384)
!4528 = !DILocation(line: 1058, column: 7, scope: !4529)
!4529 = distinct !DILexicalBlock(scope: !4384, file: !3, line: 1058, column: 6)
!4530 = !DILocation(line: 1058, column: 12, scope: !4529)
!4531 = !DILocation(line: 1058, column: 6, scope: !4384)
!4532 = !DILocation(line: 1059, column: 3, scope: !4529)
!4533 = !DILocation(line: 1061, column: 32, scope: !4384)
!4534 = !DILocation(line: 1061, column: 8, scope: !4384)
!4535 = !DILocation(line: 1061, column: 6, scope: !4384)
!4536 = !DILocation(line: 1062, column: 6, scope: !4537)
!4537 = distinct !DILexicalBlock(scope: !4384, file: !3, line: 1062, column: 6)
!4538 = !DILocation(line: 1062, column: 6, scope: !4384)
!4539 = !DILocation(line: 1063, column: 10, scope: !4537)
!4540 = !DILocation(line: 1063, column: 3, scope: !4537)
!4541 = !DILocation(line: 1065, column: 7, scope: !4384)
!4542 = !DILocation(line: 1065, column: 12, scope: !4384)
!4543 = !DILocation(line: 1065, column: 4, scope: !4384)
!4544 = !DILocation(line: 1067, column: 2, scope: !4384)
!4545 = !DILocation(line: 1067, column: 5, scope: !4384)
!4546 = !DILocation(line: 1067, column: 10, scope: !4384)
!4547 = !DILocation(line: 1068, column: 2, scope: !4384)
!4548 = !DILocation(line: 1068, column: 5, scope: !4384)
!4549 = !DILocation(line: 1068, column: 18, scope: !4384)
!4550 = !DILocation(line: 1069, column: 14, scope: !4384)
!4551 = !DILocation(line: 1069, column: 21, scope: !4384)
!4552 = !DILocation(line: 1069, column: 2, scope: !4384)
!4553 = !DILocation(line: 1069, column: 5, scope: !4384)
!4554 = !DILocation(line: 1069, column: 12, scope: !4384)
!4555 = !DILocation(line: 1070, column: 21, scope: !4384)
!4556 = !DILocation(line: 1070, column: 28, scope: !4384)
!4557 = !DILocation(line: 1070, column: 18, scope: !4384)
!4558 = !DILocation(line: 1070, column: 37, scope: !4384)
!4559 = !DILocation(line: 1070, column: 2, scope: !4384)
!4560 = !DILocation(line: 1070, column: 5, scope: !4384)
!4561 = !DILocation(line: 1070, column: 13, scope: !4384)
!4562 = !DILocation(line: 1071, column: 19, scope: !4384)
!4563 = !DILocation(line: 1071, column: 26, scope: !4384)
!4564 = !DILocation(line: 1071, column: 2, scope: !4384)
!4565 = !DILocation(line: 1071, column: 5, scope: !4384)
!4566 = !DILocation(line: 1071, column: 17, scope: !4384)
!4567 = !DILocation(line: 1072, column: 2, scope: !4384)
!4568 = !DILocation(line: 1072, column: 5, scope: !4384)
!4569 = !DILocation(line: 1072, column: 16, scope: !4384)
!4570 = !DILocation(line: 1073, column: 20, scope: !4384)
!4571 = !DILocation(line: 1073, column: 23, scope: !4384)
!4572 = !DILocation(line: 1073, column: 2, scope: !4384)
!4573 = !DILocation(line: 1073, column: 5, scope: !4384)
!4574 = !DILocation(line: 1073, column: 18, scope: !4384)
!4575 = !DILocation(line: 1074, column: 22, scope: !4384)
!4576 = !DILocation(line: 1074, column: 2, scope: !4384)
!4577 = !DILocation(line: 1074, column: 7, scope: !4384)
!4578 = !DILocation(line: 1074, column: 20, scope: !4384)
!4579 = !DILocation(line: 1075, column: 2, scope: !4384)
!4580 = !DILocation(line: 1075, column: 5, scope: !4384)
!4581 = !DILocation(line: 1075, column: 12, scope: !4384)
!4582 = !DILocation(line: 1076, column: 2, scope: !4384)
!4583 = !DILocation(line: 1076, column: 5, scope: !4384)
!4584 = !DILocation(line: 1076, column: 16, scope: !4384)
!4585 = !DILocation(line: 1077, column: 2, scope: !4384)
!4586 = !DILocation(line: 1077, column: 5, scope: !4384)
!4587 = !DILocation(line: 1077, column: 12, scope: !4384)
!4588 = !DILocation(line: 1078, column: 2, scope: !4384)
!4589 = !DILocation(line: 1078, column: 5, scope: !4384)
!4590 = !DILocation(line: 1078, column: 11, scope: !4384)
!4591 = !DILocation(line: 1080, column: 37, scope: !4384)
!4592 = !DILocation(line: 1080, column: 8, scope: !4384)
!4593 = !DILocation(line: 1080, column: 6, scope: !4384)
!4594 = !DILocation(line: 1081, column: 6, scope: !4595)
!4595 = distinct !DILexicalBlock(scope: !4384, file: !3, line: 1081, column: 6)
!4596 = !DILocation(line: 1081, column: 6, scope: !4384)
!4597 = !DILocation(line: 1082, column: 10, scope: !4595)
!4598 = !DILocation(line: 1082, column: 3, scope: !4595)
!4599 = !DILocation(line: 1084, column: 6, scope: !4600)
!4600 = distinct !DILexicalBlock(scope: !4384, file: !3, line: 1084, column: 6)
!4601 = !DILocation(line: 1084, column: 6, scope: !4384)
!4602 = !DILocation(line: 1085, column: 21, scope: !4603)
!4603 = distinct !DILexicalBlock(scope: !4600, file: !3, line: 1084, column: 11)
!4604 = !DILocation(line: 1086, column: 7, scope: !4603)
!4605 = !DILocation(line: 1086, column: 12, scope: !4603)
!4606 = !DILocation(line: 1086, column: 24, scope: !4603)
!4607 = !DILocation(line: 1085, column: 9, scope: !4603)
!4608 = !DILocation(line: 1085, column: 7, scope: !4603)
!4609 = !DILocation(line: 1087, column: 7, scope: !4610)
!4610 = distinct !DILexicalBlock(scope: !4603, file: !3, line: 1087, column: 7)
!4611 = !DILocation(line: 1087, column: 11, scope: !4610)
!4612 = !DILocation(line: 1087, column: 7, scope: !4603)
!4613 = !DILocation(line: 1088, column: 4, scope: !4614)
!4614 = distinct !DILexicalBlock(scope: !4610, file: !3, line: 1087, column: 16)
!4615 = !DILocation(line: 1090, column: 11, scope: !4614)
!4616 = !DILocation(line: 1090, column: 4, scope: !4614)
!4617 = !DILocation(line: 1092, column: 14, scope: !4603)
!4618 = !DILocation(line: 1092, column: 3, scope: !4603)
!4619 = !DILocation(line: 1092, column: 8, scope: !4603)
!4620 = !DILocation(line: 1092, column: 12, scope: !4603)
!4621 = !DILocation(line: 1093, column: 2, scope: !4603)
!4622 = !DILocation(line: 1095, column: 2, scope: !4384)
!4623 = !DILocation(line: 1096, column: 1, scope: !4384)
!4624 = distinct !DISubprogram(name: "pci_name", scope: !4055, file: !4055, line: 1875, type: !4625, scopeLine: 1876, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!4625 = !DISubroutineType(types: !4626)
!4626 = !{!194, !4627}
!4627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4628, size: 64)
!4628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4076)
!4629 = !DILocalVariable(name: "pdev", arg: 1, scope: !4624, file: !4055, line: 1875, type: !4627)
!4630 = !DILocation(line: 1875, column: 58, scope: !4624)
!4631 = !DILocation(line: 1877, column: 19, scope: !4624)
!4632 = !DILocation(line: 1877, column: 25, scope: !4624)
!4633 = !DILocation(line: 1877, column: 9, scope: !4624)
!4634 = !DILocation(line: 1877, column: 2, scope: !4624)
!4635 = distinct !DISubprogram(name: "kmalloc_array", scope: !117, file: !117, line: 584, type: !4636, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!4636 = !DISubroutineType(types: !4637)
!4637 = !{!149, !364, !364, !147}
!4638 = !DILocalVariable(name: "s", arg: 1, scope: !4639, file: !117, line: 445, type: !975)
!4639 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !117, file: !117, line: 445, type: !4640, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!4640 = !DISubroutineType(types: !4641)
!4641 = !{!149, !975, !147, !364}
!4642 = !DILocation(line: 445, column: 72, scope: !4639, inlinedAt: !4643)
!4643 = distinct !DILocation(line: 552, column: 10, scope: !4644, inlinedAt: !4649)
!4644 = distinct !DILexicalBlock(scope: !4645, file: !117, line: 540, column: 34)
!4645 = distinct !DILexicalBlock(scope: !4646, file: !117, line: 540, column: 6)
!4646 = distinct !DISubprogram(name: "kmalloc", scope: !117, file: !117, line: 538, type: !4647, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!4647 = !DISubroutineType(types: !4648)
!4648 = !{!149, !364, !147}
!4649 = distinct !DILocation(line: 591, column: 10, scope: !4650)
!4650 = distinct !DILexicalBlock(scope: !4635, file: !117, line: 590, column: 6)
!4651 = !DILocalVariable(name: "flags", arg: 2, scope: !4639, file: !117, line: 446, type: !147)
!4652 = !DILocation(line: 446, column: 9, scope: !4639, inlinedAt: !4643)
!4653 = !DILocalVariable(name: "size", arg: 3, scope: !4639, file: !117, line: 446, type: !364)
!4654 = !DILocation(line: 446, column: 23, scope: !4639, inlinedAt: !4643)
!4655 = !DILocalVariable(name: "ret", scope: !4639, file: !117, line: 448, type: !149)
!4656 = !DILocation(line: 448, column: 8, scope: !4639, inlinedAt: !4643)
!4657 = !DILocalVariable(name: "flags", arg: 1, scope: !4658, file: !117, line: 318, type: !147)
!4658 = distinct !DISubprogram(name: "kmalloc_type", scope: !117, file: !117, line: 318, type: !4659, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!4659 = !DISubroutineType(types: !4660)
!4660 = !{!116, !147}
!4661 = !DILocation(line: 318, column: 67, scope: !4658, inlinedAt: !4662)
!4662 = distinct !DILocation(line: 553, column: 20, scope: !4644, inlinedAt: !4649)
!4663 = !DILocalVariable(name: "size", arg: 1, scope: !4664, file: !117, line: 346, type: !364)
!4664 = distinct !DISubprogram(name: "kmalloc_index", scope: !117, file: !117, line: 346, type: !4665, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!4665 = !DISubroutineType(types: !4666)
!4666 = !{!7, !364}
!4667 = !DILocation(line: 346, column: 58, scope: !4664, inlinedAt: !4668)
!4668 = distinct !DILocation(line: 547, column: 11, scope: !4644, inlinedAt: !4649)
!4669 = !DILocalVariable(name: "size", arg: 1, scope: !4670, file: !117, line: 472, type: !364)
!4670 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !117, file: !117, line: 472, type: !4671, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!4671 = !DISubroutineType(types: !4672)
!4672 = !{!149, !364, !147, !7}
!4673 = !DILocation(line: 472, column: 28, scope: !4670, inlinedAt: !4674)
!4674 = distinct !DILocation(line: 481, column: 9, scope: !4675, inlinedAt: !4676)
!4675 = distinct !DISubprogram(name: "kmalloc_large", scope: !117, file: !117, line: 478, type: !4647, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!4676 = distinct !DILocation(line: 545, column: 11, scope: !4677, inlinedAt: !4649)
!4677 = distinct !DILexicalBlock(scope: !4644, file: !117, line: 544, column: 7)
!4678 = !DILocalVariable(name: "flags", arg: 2, scope: !4670, file: !117, line: 472, type: !147)
!4679 = !DILocation(line: 472, column: 40, scope: !4670, inlinedAt: !4674)
!4680 = !DILocalVariable(name: "order", arg: 3, scope: !4670, file: !117, line: 472, type: !7)
!4681 = !DILocation(line: 472, column: 60, scope: !4670, inlinedAt: !4674)
!4682 = !DILocalVariable(name: "size", arg: 1, scope: !4675, file: !117, line: 478, type: !364)
!4683 = !DILocation(line: 478, column: 51, scope: !4675, inlinedAt: !4676)
!4684 = !DILocalVariable(name: "flags", arg: 2, scope: !4675, file: !117, line: 478, type: !147)
!4685 = !DILocation(line: 478, column: 63, scope: !4675, inlinedAt: !4676)
!4686 = !DILocalVariable(name: "order", scope: !4675, file: !117, line: 480, type: !7)
!4687 = !DILocation(line: 480, column: 15, scope: !4675, inlinedAt: !4676)
!4688 = !DILocalVariable(name: "size", arg: 1, scope: !4646, file: !117, line: 538, type: !364)
!4689 = !DILocation(line: 538, column: 45, scope: !4646, inlinedAt: !4649)
!4690 = !DILocalVariable(name: "flags", arg: 2, scope: !4646, file: !117, line: 538, type: !147)
!4691 = !DILocation(line: 538, column: 57, scope: !4646, inlinedAt: !4649)
!4692 = !DILocalVariable(name: "index", scope: !4644, file: !117, line: 542, type: !7)
!4693 = !DILocation(line: 542, column: 16, scope: !4644, inlinedAt: !4649)
!4694 = !DILocalVariable(name: "n", arg: 1, scope: !4635, file: !117, line: 584, type: !364)
!4695 = !DILocation(line: 584, column: 42, scope: !4635)
!4696 = !DILocalVariable(name: "size", arg: 2, scope: !4635, file: !117, line: 584, type: !364)
!4697 = !DILocation(line: 584, column: 52, scope: !4635)
!4698 = !DILocalVariable(name: "flags", arg: 3, scope: !4635, file: !117, line: 584, type: !147)
!4699 = !DILocation(line: 584, column: 64, scope: !4635)
!4700 = !DILocalVariable(name: "bytes", scope: !4635, file: !117, line: 586, type: !364)
!4701 = !DILocation(line: 586, column: 9, scope: !4635)
!4702 = !DILocalVariable(name: "__a", scope: !4703, file: !117, line: 588, type: !364)
!4703 = distinct !DILexicalBlock(scope: !4704, file: !117, line: 588, column: 6)
!4704 = distinct !DILexicalBlock(scope: !4635, file: !117, line: 588, column: 6)
!4705 = !DILocation(line: 588, column: 6, scope: !4703)
!4706 = !DILocalVariable(name: "__b", scope: !4703, file: !117, line: 588, type: !364)
!4707 = !DILocalVariable(name: "__d", scope: !4703, file: !117, line: 588, type: !4708)
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!4709 = !DILocation(line: 588, column: 6, scope: !4704)
!4710 = !DILocation(line: 588, column: 6, scope: !4635)
!4711 = !DILocation(line: 589, column: 3, scope: !4704)
!4712 = !DILocation(line: 590, column: 27, scope: !4650)
!4713 = !DILocation(line: 590, column: 6, scope: !4650)
!4714 = !DILocation(line: 590, column: 30, scope: !4650)
!4715 = !DILocation(line: 590, column: 54, scope: !4650)
!4716 = !DILocation(line: 590, column: 33, scope: !4650)
!4717 = !DILocation(line: 590, column: 6, scope: !4635)
!4718 = !DILocation(line: 591, column: 18, scope: !4650)
!4719 = !DILocation(line: 591, column: 25, scope: !4650)
!4720 = !DILocation(line: 540, column: 27, scope: !4645, inlinedAt: !4649)
!4721 = !DILocation(line: 540, column: 6, scope: !4645, inlinedAt: !4649)
!4722 = !DILocation(line: 540, column: 6, scope: !4646, inlinedAt: !4649)
!4723 = !DILocation(line: 544, column: 7, scope: !4677, inlinedAt: !4649)
!4724 = !DILocation(line: 544, column: 12, scope: !4677, inlinedAt: !4649)
!4725 = !DILocation(line: 544, column: 7, scope: !4644, inlinedAt: !4649)
!4726 = !DILocation(line: 545, column: 25, scope: !4677, inlinedAt: !4649)
!4727 = !DILocation(line: 545, column: 31, scope: !4677, inlinedAt: !4649)
!4728 = !DILocation(line: 480, column: 33, scope: !4675, inlinedAt: !4676)
!4729 = !DILocation(line: 480, column: 23, scope: !4675, inlinedAt: !4676)
!4730 = !DILocation(line: 481, column: 29, scope: !4675, inlinedAt: !4676)
!4731 = !DILocation(line: 481, column: 35, scope: !4675, inlinedAt: !4676)
!4732 = !DILocation(line: 481, column: 42, scope: !4675, inlinedAt: !4676)
!4733 = !DILocation(line: 474, column: 23, scope: !4670, inlinedAt: !4674)
!4734 = !DILocation(line: 474, column: 29, scope: !4670, inlinedAt: !4674)
!4735 = !DILocation(line: 474, column: 36, scope: !4670, inlinedAt: !4674)
!4736 = !DILocation(line: 474, column: 9, scope: !4670, inlinedAt: !4674)
!4737 = !DILocation(line: 545, column: 4, scope: !4677, inlinedAt: !4649)
!4738 = !DILocation(line: 547, column: 25, scope: !4644, inlinedAt: !4649)
!4739 = !DILocation(line: 348, column: 7, scope: !4740, inlinedAt: !4668)
!4740 = distinct !DILexicalBlock(scope: !4664, file: !117, line: 348, column: 6)
!4741 = !DILocation(line: 348, column: 6, scope: !4664, inlinedAt: !4668)
!4742 = !DILocation(line: 349, column: 3, scope: !4740, inlinedAt: !4668)
!4743 = !DILocation(line: 351, column: 6, scope: !4744, inlinedAt: !4668)
!4744 = distinct !DILexicalBlock(scope: !4664, file: !117, line: 351, column: 6)
!4745 = !DILocation(line: 351, column: 11, scope: !4744, inlinedAt: !4668)
!4746 = !DILocation(line: 351, column: 6, scope: !4664, inlinedAt: !4668)
!4747 = !DILocation(line: 352, column: 3, scope: !4744, inlinedAt: !4668)
!4748 = !DILocation(line: 354, column: 32, scope: !4749, inlinedAt: !4668)
!4749 = distinct !DILexicalBlock(scope: !4664, file: !117, line: 354, column: 6)
!4750 = !DILocation(line: 354, column: 37, scope: !4749, inlinedAt: !4668)
!4751 = !DILocation(line: 354, column: 42, scope: !4749, inlinedAt: !4668)
!4752 = !DILocation(line: 354, column: 45, scope: !4749, inlinedAt: !4668)
!4753 = !DILocation(line: 354, column: 50, scope: !4749, inlinedAt: !4668)
!4754 = !DILocation(line: 354, column: 6, scope: !4664, inlinedAt: !4668)
!4755 = !DILocation(line: 355, column: 3, scope: !4749, inlinedAt: !4668)
!4756 = !DILocation(line: 356, column: 32, scope: !4757, inlinedAt: !4668)
!4757 = distinct !DILexicalBlock(scope: !4664, file: !117, line: 356, column: 6)
!4758 = !DILocation(line: 356, column: 37, scope: !4757, inlinedAt: !4668)
!4759 = !DILocation(line: 356, column: 43, scope: !4757, inlinedAt: !4668)
!4760 = !DILocation(line: 356, column: 46, scope: !4757, inlinedAt: !4668)
!4761 = !DILocation(line: 356, column: 51, scope: !4757, inlinedAt: !4668)
!4762 = !DILocation(line: 356, column: 6, scope: !4664, inlinedAt: !4668)
!4763 = !DILocation(line: 357, column: 3, scope: !4757, inlinedAt: !4668)
!4764 = !DILocation(line: 358, column: 6, scope: !4765, inlinedAt: !4668)
!4765 = distinct !DILexicalBlock(scope: !4664, file: !117, line: 358, column: 6)
!4766 = !DILocation(line: 358, column: 11, scope: !4765, inlinedAt: !4668)
!4767 = !DILocation(line: 358, column: 6, scope: !4664, inlinedAt: !4668)
!4768 = !DILocation(line: 358, column: 26, scope: !4765, inlinedAt: !4668)
!4769 = !DILocation(line: 359, column: 6, scope: !4770, inlinedAt: !4668)
!4770 = distinct !DILexicalBlock(scope: !4664, file: !117, line: 359, column: 6)
!4771 = !DILocation(line: 359, column: 11, scope: !4770, inlinedAt: !4668)
!4772 = !DILocation(line: 359, column: 6, scope: !4664, inlinedAt: !4668)
!4773 = !DILocation(line: 359, column: 26, scope: !4770, inlinedAt: !4668)
!4774 = !DILocation(line: 360, column: 6, scope: !4775, inlinedAt: !4668)
!4775 = distinct !DILexicalBlock(scope: !4664, file: !117, line: 360, column: 6)
!4776 = !DILocation(line: 360, column: 11, scope: !4775, inlinedAt: !4668)
!4777 = !DILocation(line: 360, column: 6, scope: !4664, inlinedAt: !4668)
!4778 = !DILocation(line: 360, column: 26, scope: !4775, inlinedAt: !4668)
!4779 = !DILocation(line: 361, column: 6, scope: !4780, inlinedAt: !4668)
!4780 = distinct !DILexicalBlock(scope: !4664, file: !117, line: 361, column: 6)
!4781 = !DILocation(line: 361, column: 11, scope: !4780, inlinedAt: !4668)
!4782 = !DILocation(line: 361, column: 6, scope: !4664, inlinedAt: !4668)
!4783 = !DILocation(line: 361, column: 26, scope: !4780, inlinedAt: !4668)
!4784 = !DILocation(line: 362, column: 6, scope: !4785, inlinedAt: !4668)
!4785 = distinct !DILexicalBlock(scope: !4664, file: !117, line: 362, column: 6)
!4786 = !DILocation(line: 362, column: 11, scope: !4785, inlinedAt: !4668)
!4787 = !DILocation(line: 362, column: 6, scope: !4664, inlinedAt: !4668)
!4788 = !DILocation(line: 362, column: 26, scope: !4785, inlinedAt: !4668)
!4789 = !DILocation(line: 363, column: 6, scope: !4790, inlinedAt: !4668)
!4790 = distinct !DILexicalBlock(scope: !4664, file: !117, line: 363, column: 6)
!4791 = !DILocation(line: 363, column: 11, scope: !4790, inlinedAt: !4668)
!4792 = !DILocation(line: 363, column: 6, scope: !4664, inlinedAt: !4668)
!4793 = !DILocation(line: 363, column: 26, scope: !4790, inlinedAt: !4668)
!4794 = !DILocation(line: 364, column: 6, scope: !4795, inlinedAt: !4668)
!4795 = distinct !DILexicalBlock(scope: !4664, file: !117, line: 364, column: 6)
!4796 = !DILocation(line: 364, column: 11, scope: !4795, inlinedAt: !4668)
!4797 = !DILocation(line: 364, column: 6, scope: !4664, inlinedAt: !4668)
!4798 = !DILocation(line: 364, column: 26, scope: !4795, inlinedAt: !4668)
!4799 = !DILocation(line: 365, column: 6, scope: !4800, inlinedAt: !4668)
!4800 = distinct !DILexicalBlock(scope: !4664, file: !117, line: 365, column: 6)
!4801 = !DILocation(line: 365, column: 11, scope: !4800, inlinedAt: !4668)
!4802 = !DILocation(line: 365, column: 6, scope: !4664, inlinedAt: !4668)
!4803 = !DILocation(line: 365, column: 26, scope: !4800, inlinedAt: !4668)
!4804 = !DILocation(line: 366, column: 6, scope: !4805, inlinedAt: !4668)
!4805 = distinct !DILexicalBlock(scope: !4664, file: !117, line: 366, column: 6)
!4806 = !DILocation(line: 366, column: 11, scope: !4805, inlinedAt: !4668)
!4807 = !DILocation(line: 366, column: 6, scope: !4664, inlinedAt: !4668)
!4808 = !DILocation(line: 366, column: 26, scope: !4805, inlinedAt: !4668)
!4809 = !DILocation(line: 367, column: 6, scope: !4810, inlinedAt: !4668)
!4810 = distinct !DILexicalBlock(scope: !4664, file: !117, line: 367, column: 6)
!4811 = !DILocation(line: 367, column: 11, scope: !4810, inlinedAt: !4668)
!4812 = !DILocation(line: 367, column: 6, scope: !4664, inlinedAt: !4668)
!4813 = !DILocation(line: 367, column: 26, scope: !4810, inlinedAt: !4668)
!4814 = !DILocation(line: 368, column: 6, scope: !4815, inlinedAt: !4668)
!4815 = distinct !DILexicalBlock(scope: !4664, file: !117, line: 368, column: 6)
!4816 = !DILocation(line: 368, column: 11, scope: !4815, inlinedAt: !4668)
!4817 = !DILocation(line: 368, column: 6, scope: !4664, inlinedAt: !4668)
!4818 = !DILocation(line: 368, column: 26, scope: !4815, inlinedAt: !4668)
!4819 = !DILocation(line: 369, column: 6, scope: !4820, inlinedAt: !4668)
!4820 = distinct !DILexicalBlock(scope: !4664, file: !117, line: 369, column: 6)
!4821 = !DILocation(line: 369, column: 11, scope: !4820, inlinedAt: !4668)
!4822 = !DILocation(line: 369, column: 6, scope: !4664, inlinedAt: !4668)
!4823 = !DILocation(line: 369, column: 26, scope: !4820, inlinedAt: !4668)
!4824 = !DILocation(line: 370, column: 6, scope: !4825, inlinedAt: !4668)
!4825 = distinct !DILexicalBlock(scope: !4664, file: !117, line: 370, column: 6)
!4826 = !DILocation(line: 370, column: 11, scope: !4825, inlinedAt: !4668)
!4827 = !DILocation(line: 370, column: 6, scope: !4664, inlinedAt: !4668)
!4828 = !DILocation(line: 370, column: 26, scope: !4825, inlinedAt: !4668)
!4829 = !DILocation(line: 371, column: 6, scope: !4830, inlinedAt: !4668)
!4830 = distinct !DILexicalBlock(scope: !4664, file: !117, line: 371, column: 6)
!4831 = !DILocation(line: 371, column: 11, scope: !4830, inlinedAt: !4668)
!4832 = !DILocation(line: 371, column: 6, scope: !4664, inlinedAt: !4668)
!4833 = !DILocation(line: 371, column: 26, scope: !4830, inlinedAt: !4668)
!4834 = !DILocation(line: 372, column: 6, scope: !4835, inlinedAt: !4668)
!4835 = distinct !DILexicalBlock(scope: !4664, file: !117, line: 372, column: 6)
!4836 = !DILocation(line: 372, column: 11, scope: !4835, inlinedAt: !4668)
!4837 = !DILocation(line: 372, column: 6, scope: !4664, inlinedAt: !4668)
!4838 = !DILocation(line: 372, column: 26, scope: !4835, inlinedAt: !4668)
!4839 = !DILocation(line: 373, column: 6, scope: !4840, inlinedAt: !4668)
!4840 = distinct !DILexicalBlock(scope: !4664, file: !117, line: 373, column: 6)
!4841 = !DILocation(line: 373, column: 11, scope: !4840, inlinedAt: !4668)
!4842 = !DILocation(line: 373, column: 6, scope: !4664, inlinedAt: !4668)
!4843 = !DILocation(line: 373, column: 26, scope: !4840, inlinedAt: !4668)
!4844 = !DILocation(line: 374, column: 6, scope: !4845, inlinedAt: !4668)
!4845 = distinct !DILexicalBlock(scope: !4664, file: !117, line: 374, column: 6)
!4846 = !DILocation(line: 374, column: 11, scope: !4845, inlinedAt: !4668)
!4847 = !DILocation(line: 374, column: 6, scope: !4664, inlinedAt: !4668)
!4848 = !DILocation(line: 374, column: 26, scope: !4845, inlinedAt: !4668)
!4849 = !DILocation(line: 375, column: 6, scope: !4850, inlinedAt: !4668)
!4850 = distinct !DILexicalBlock(scope: !4664, file: !117, line: 375, column: 6)
!4851 = !DILocation(line: 375, column: 11, scope: !4850, inlinedAt: !4668)
!4852 = !DILocation(line: 375, column: 6, scope: !4664, inlinedAt: !4668)
!4853 = !DILocation(line: 375, column: 27, scope: !4850, inlinedAt: !4668)
!4854 = !DILocation(line: 376, column: 6, scope: !4855, inlinedAt: !4668)
!4855 = distinct !DILexicalBlock(scope: !4664, file: !117, line: 376, column: 6)
!4856 = !DILocation(line: 376, column: 11, scope: !4855, inlinedAt: !4668)
!4857 = !DILocation(line: 376, column: 6, scope: !4664, inlinedAt: !4668)
!4858 = !DILocation(line: 376, column: 32, scope: !4855, inlinedAt: !4668)
!4859 = !DILocation(line: 377, column: 6, scope: !4860, inlinedAt: !4668)
!4860 = distinct !DILexicalBlock(scope: !4664, file: !117, line: 377, column: 6)
!4861 = !DILocation(line: 377, column: 11, scope: !4860, inlinedAt: !4668)
!4862 = !DILocation(line: 377, column: 6, scope: !4664, inlinedAt: !4668)
!4863 = !DILocation(line: 377, column: 32, scope: !4860, inlinedAt: !4668)
!4864 = !DILocation(line: 378, column: 6, scope: !4865, inlinedAt: !4668)
!4865 = distinct !DILexicalBlock(scope: !4664, file: !117, line: 378, column: 6)
!4866 = !DILocation(line: 378, column: 11, scope: !4865, inlinedAt: !4668)
!4867 = !DILocation(line: 378, column: 6, scope: !4664, inlinedAt: !4668)
!4868 = !DILocation(line: 378, column: 32, scope: !4865, inlinedAt: !4668)
!4869 = !DILocation(line: 379, column: 6, scope: !4870, inlinedAt: !4668)
!4870 = distinct !DILexicalBlock(scope: !4664, file: !117, line: 379, column: 6)
!4871 = !DILocation(line: 379, column: 11, scope: !4870, inlinedAt: !4668)
!4872 = !DILocation(line: 379, column: 6, scope: !4664, inlinedAt: !4668)
!4873 = !DILocation(line: 379, column: 33, scope: !4870, inlinedAt: !4668)
!4874 = !DILocation(line: 380, column: 6, scope: !4875, inlinedAt: !4668)
!4875 = distinct !DILexicalBlock(scope: !4664, file: !117, line: 380, column: 6)
!4876 = !DILocation(line: 380, column: 11, scope: !4875, inlinedAt: !4668)
!4877 = !DILocation(line: 380, column: 6, scope: !4664, inlinedAt: !4668)
!4878 = !DILocation(line: 380, column: 33, scope: !4875, inlinedAt: !4668)
!4879 = !DILocation(line: 381, column: 6, scope: !4880, inlinedAt: !4668)
!4880 = distinct !DILexicalBlock(scope: !4664, file: !117, line: 381, column: 6)
!4881 = !DILocation(line: 381, column: 11, scope: !4880, inlinedAt: !4668)
!4882 = !DILocation(line: 381, column: 6, scope: !4664, inlinedAt: !4668)
!4883 = !DILocation(line: 381, column: 33, scope: !4880, inlinedAt: !4668)
!4884 = !DILocation(line: 382, column: 2, scope: !4885, inlinedAt: !4668)
!4885 = distinct !DILexicalBlock(scope: !4886, file: !117, line: 382, column: 2)
!4886 = distinct !DILexicalBlock(scope: !4664, file: !117, line: 382, column: 2)
!4887 = !{i32 -2144102449, i32 -2144102420, i32 -2144102374, i32 -2144102316, i32 -2144102262, i32 -2144102208, i32 -2144102153, i32 -2144102122}
!4888 = !DILocation(line: 382, column: 2, scope: !4889, inlinedAt: !4668)
!4889 = distinct !DILexicalBlock(scope: !4890, file: !117, line: 382, column: 2)
!4890 = distinct !DILexicalBlock(scope: !4886, file: !117, line: 382, column: 2)
!4891 = !{i32 -2144101679, i32 -2144101672, i32 -2144101618, i32 -2144101587, i32 -2144101557}
!4892 = !DILocation(line: 382, column: 2, scope: !4890, inlinedAt: !4668)
!4893 = !DILocation(line: 386, column: 1, scope: !4664, inlinedAt: !4668)
!4894 = !DILocation(line: 547, column: 9, scope: !4644, inlinedAt: !4649)
!4895 = !DILocation(line: 549, column: 8, scope: !4896, inlinedAt: !4649)
!4896 = distinct !DILexicalBlock(scope: !4644, file: !117, line: 549, column: 7)
!4897 = !DILocation(line: 549, column: 7, scope: !4644, inlinedAt: !4649)
!4898 = !DILocation(line: 550, column: 4, scope: !4896, inlinedAt: !4649)
!4899 = !DILocation(line: 553, column: 33, scope: !4644, inlinedAt: !4649)
!4900 = !DILocation(line: 325, column: 6, scope: !4901, inlinedAt: !4662)
!4901 = distinct !DILexicalBlock(scope: !4658, file: !117, line: 325, column: 6)
!4902 = !DILocation(line: 325, column: 6, scope: !4658, inlinedAt: !4662)
!4903 = !DILocation(line: 326, column: 3, scope: !4901, inlinedAt: !4662)
!4904 = !DILocation(line: 332, column: 9, scope: !4658, inlinedAt: !4662)
!4905 = !DILocation(line: 332, column: 15, scope: !4658, inlinedAt: !4662)
!4906 = !DILocation(line: 332, column: 2, scope: !4658, inlinedAt: !4662)
!4907 = !DILocation(line: 336, column: 1, scope: !4658, inlinedAt: !4662)
!4908 = !DILocation(line: 553, column: 5, scope: !4644, inlinedAt: !4649)
!4909 = !DILocation(line: 553, column: 41, scope: !4644, inlinedAt: !4649)
!4910 = !DILocation(line: 554, column: 5, scope: !4644, inlinedAt: !4649)
!4911 = !DILocation(line: 554, column: 12, scope: !4644, inlinedAt: !4649)
!4912 = !DILocation(line: 448, column: 31, scope: !4639, inlinedAt: !4643)
!4913 = !DILocation(line: 448, column: 34, scope: !4639, inlinedAt: !4643)
!4914 = !DILocation(line: 448, column: 14, scope: !4639, inlinedAt: !4643)
!4915 = !DILocation(line: 450, column: 22, scope: !4639, inlinedAt: !4643)
!4916 = !DILocation(line: 450, column: 25, scope: !4639, inlinedAt: !4643)
!4917 = !DILocation(line: 450, column: 30, scope: !4639, inlinedAt: !4643)
!4918 = !DILocation(line: 450, column: 36, scope: !4639, inlinedAt: !4643)
!4919 = !DILocation(line: 450, column: 8, scope: !4639, inlinedAt: !4643)
!4920 = !DILocation(line: 450, column: 6, scope: !4639, inlinedAt: !4643)
!4921 = !DILocation(line: 451, column: 9, scope: !4639, inlinedAt: !4643)
!4922 = !DILocation(line: 552, column: 3, scope: !4644, inlinedAt: !4649)
!4923 = !DILocation(line: 557, column: 19, scope: !4646, inlinedAt: !4649)
!4924 = !DILocation(line: 557, column: 25, scope: !4646, inlinedAt: !4649)
!4925 = !DILocation(line: 557, column: 9, scope: !4646, inlinedAt: !4649)
!4926 = !DILocation(line: 557, column: 2, scope: !4646, inlinedAt: !4649)
!4927 = !DILocation(line: 558, column: 1, scope: !4646, inlinedAt: !4649)
!4928 = !DILocation(line: 591, column: 3, scope: !4650)
!4929 = !DILocation(line: 592, column: 19, scope: !4635)
!4930 = !DILocation(line: 592, column: 26, scope: !4635)
!4931 = !DILocation(line: 592, column: 9, scope: !4635)
!4932 = !DILocation(line: 592, column: 2, scope: !4635)
!4933 = !DILocation(line: 593, column: 1, scope: !4635)
!4934 = distinct !DISubprogram(name: "outb", scope: !4935, file: !4935, line: 334, type: !4936, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!4935 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!4936 = !DISubroutineType(types: !4937)
!4937 = !{null, !469, !146}
!4938 = !DILocalVariable(name: "value", arg: 1, scope: !4934, file: !4935, line: 334, type: !469)
!4939 = !DILocation(line: 334, column: 1, scope: !4934)
!4940 = !DILocalVariable(name: "port", arg: 2, scope: !4934, file: !4935, line: 334, type: !146)
!4941 = !{i32 -2143299190}
!4942 = distinct !DISubprogram(name: "outw", scope: !4935, file: !4935, line: 335, type: !4943, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!4943 = !DISubroutineType(types: !4944)
!4944 = !{null, !150, !146}
!4945 = !DILocalVariable(name: "value", arg: 1, scope: !4942, file: !4935, line: 335, type: !150)
!4946 = !DILocation(line: 335, column: 1, scope: !4942)
!4947 = !DILocalVariable(name: "port", arg: 2, scope: !4942, file: !4935, line: 335, type: !146)
!4948 = !{i32 -2143296447}
!4949 = distinct !DISubprogram(name: "pci224_ao_insn_write", scope: !3, file: !3, line: 418, type: !235, scopeLine: 422, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!4950 = !DILocalVariable(name: "dev", arg: 1, scope: !4949, file: !3, line: 418, type: !203)
!4951 = !DILocation(line: 418, column: 55, scope: !4949)
!4952 = !DILocalVariable(name: "s", arg: 2, scope: !4949, file: !3, line: 419, type: !237)
!4953 = !DILocation(line: 419, column: 30, scope: !4949)
!4954 = !DILocalVariable(name: "insn", arg: 3, scope: !4949, file: !3, line: 420, type: !3956)
!4955 = !DILocation(line: 420, column: 25, scope: !4949)
!4956 = !DILocalVariable(name: "data", arg: 4, scope: !4949, file: !3, line: 421, type: !2722)
!4957 = !DILocation(line: 421, column: 19, scope: !4949)
!4958 = !DILocalVariable(name: "chan", scope: !4949, file: !3, line: 423, type: !7)
!4959 = !DILocation(line: 423, column: 15, scope: !4949)
!4960 = !DILocation(line: 423, column: 22, scope: !4949)
!4961 = !DILocalVariable(name: "range", scope: !4949, file: !3, line: 424, type: !7)
!4962 = !DILocation(line: 424, column: 15, scope: !4949)
!4963 = !DILocation(line: 424, column: 23, scope: !4949)
!4964 = !DILocalVariable(name: "val", scope: !4949, file: !3, line: 425, type: !7)
!4965 = !DILocation(line: 425, column: 15, scope: !4949)
!4966 = !DILocation(line: 425, column: 21, scope: !4949)
!4967 = !DILocation(line: 425, column: 24, scope: !4949)
!4968 = !DILocation(line: 425, column: 33, scope: !4949)
!4969 = !DILocalVariable(name: "i", scope: !4949, file: !3, line: 426, type: !146)
!4970 = !DILocation(line: 426, column: 6, scope: !4949)
!4971 = !DILocation(line: 428, column: 9, scope: !4972)
!4972 = distinct !DILexicalBlock(scope: !4949, file: !3, line: 428, column: 2)
!4973 = !DILocation(line: 428, column: 7, scope: !4972)
!4974 = !DILocation(line: 428, column: 14, scope: !4975)
!4975 = distinct !DILexicalBlock(scope: !4972, file: !3, line: 428, column: 2)
!4976 = !DILocation(line: 428, column: 18, scope: !4975)
!4977 = !DILocation(line: 428, column: 24, scope: !4975)
!4978 = !DILocation(line: 428, column: 16, scope: !4975)
!4979 = !DILocation(line: 428, column: 2, scope: !4972)
!4980 = !DILocation(line: 429, column: 9, scope: !4981)
!4981 = distinct !DILexicalBlock(scope: !4975, file: !3, line: 428, column: 32)
!4982 = !DILocation(line: 429, column: 14, scope: !4981)
!4983 = !DILocation(line: 429, column: 7, scope: !4981)
!4984 = !DILocation(line: 430, column: 22, scope: !4981)
!4985 = !DILocation(line: 430, column: 27, scope: !4981)
!4986 = !DILocation(line: 430, column: 33, scope: !4981)
!4987 = !DILocation(line: 430, column: 40, scope: !4981)
!4988 = !DILocation(line: 430, column: 3, scope: !4981)
!4989 = !DILocation(line: 431, column: 2, scope: !4981)
!4990 = !DILocation(line: 428, column: 28, scope: !4975)
!4991 = !DILocation(line: 428, column: 2, scope: !4975)
!4992 = distinct !{!4992, !4979, !4993}
!4993 = !DILocation(line: 431, column: 2, scope: !4972)
!4994 = !DILocation(line: 432, column: 22, scope: !4949)
!4995 = !DILocation(line: 432, column: 2, scope: !4949)
!4996 = !DILocation(line: 432, column: 5, scope: !4949)
!4997 = !DILocation(line: 432, column: 14, scope: !4949)
!4998 = !DILocation(line: 432, column: 20, scope: !4949)
!4999 = !DILocation(line: 434, column: 9, scope: !4949)
!5000 = !DILocation(line: 434, column: 15, scope: !4949)
!5001 = !DILocation(line: 434, column: 2, scope: !4949)
!5002 = distinct !DISubprogram(name: "pci224_ao_cmd", scope: !3, file: !3, line: 831, type: !3937, scopeLine: 832, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!5003 = !DILocalVariable(name: "lock", arg: 1, scope: !5004, file: !4387, line: 407, type: !1104)
!5004 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !4387, file: !4387, line: 407, type: !5005, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!5005 = !DISubroutineType(types: !5006)
!5006 = !{null, !1104, !151}
!5007 = !DILocation(line: 407, column: 64, scope: !5004, inlinedAt: !5008)
!5008 = distinct !DILocation(line: 896, column: 2, scope: !5002)
!5009 = !DILocalVariable(name: "flags", arg: 2, scope: !5004, file: !4387, line: 407, type: !151)
!5010 = !DILocation(line: 407, column: 84, scope: !5004, inlinedAt: !5008)
!5011 = !DILocation(line: 327, column: 67, scope: !4386, inlinedAt: !5012)
!5012 = distinct !DILocation(line: 888, column: 2, scope: !5013)
!5013 = distinct !DILexicalBlock(scope: !5014, file: !3, line: 888, column: 2)
!5014 = distinct !DILexicalBlock(scope: !5015, file: !3, line: 888, column: 2)
!5015 = distinct !DILexicalBlock(scope: !5016, file: !3, line: 888, column: 2)
!5016 = distinct !DILexicalBlock(scope: !5017, file: !3, line: 888, column: 2)
!5017 = distinct !DILexicalBlock(scope: !5002, file: !3, line: 888, column: 2)
!5018 = !DILocalVariable(name: "dev", arg: 1, scope: !5002, file: !3, line: 831, type: !203)
!5019 = !DILocation(line: 831, column: 48, scope: !5002)
!5020 = !DILocalVariable(name: "s", arg: 2, scope: !5002, file: !3, line: 831, type: !237)
!5021 = !DILocation(line: 831, column: 78, scope: !5002)
!5022 = !DILocalVariable(name: "board", scope: !5002, file: !3, line: 833, type: !4403)
!5023 = !DILocation(line: 833, column: 29, scope: !5002)
!5024 = !DILocation(line: 833, column: 37, scope: !5002)
!5025 = !DILocation(line: 833, column: 42, scope: !5002)
!5026 = !DILocalVariable(name: "devpriv", scope: !5002, file: !3, line: 834, type: !4352)
!5027 = !DILocation(line: 834, column: 25, scope: !5002)
!5028 = !DILocation(line: 834, column: 35, scope: !5002)
!5029 = !DILocation(line: 834, column: 40, scope: !5002)
!5030 = !DILocalVariable(name: "cmd", scope: !5002, file: !3, line: 835, type: !3943)
!5031 = !DILocation(line: 835, column: 21, scope: !5002)
!5032 = !DILocation(line: 835, column: 28, scope: !5002)
!5033 = !DILocation(line: 835, column: 31, scope: !5002)
!5034 = !DILocation(line: 835, column: 38, scope: !5002)
!5035 = !DILocalVariable(name: "range", scope: !5002, file: !3, line: 836, type: !146)
!5036 = !DILocation(line: 836, column: 6, scope: !5002)
!5037 = !DILocalVariable(name: "i", scope: !5002, file: !3, line: 837, type: !7)
!5038 = !DILocation(line: 837, column: 15, scope: !5002)
!5039 = !DILocalVariable(name: "j", scope: !5002, file: !3, line: 837, type: !7)
!5040 = !DILocation(line: 837, column: 18, scope: !5002)
!5041 = !DILocalVariable(name: "ch", scope: !5002, file: !3, line: 838, type: !7)
!5042 = !DILocation(line: 838, column: 15, scope: !5002)
!5043 = !DILocalVariable(name: "rank", scope: !5002, file: !3, line: 839, type: !7)
!5044 = !DILocation(line: 839, column: 15, scope: !5002)
!5045 = !DILocalVariable(name: "flags", scope: !5002, file: !3, line: 840, type: !151)
!5046 = !DILocation(line: 840, column: 16, scope: !5002)
!5047 = !DILocation(line: 843, column: 7, scope: !5048)
!5048 = distinct !DILexicalBlock(scope: !5002, file: !3, line: 843, column: 6)
!5049 = !DILocation(line: 843, column: 12, scope: !5048)
!5050 = !DILocation(line: 843, column: 21, scope: !5048)
!5051 = !DILocation(line: 843, column: 24, scope: !5048)
!5052 = !DILocation(line: 843, column: 29, scope: !5048)
!5053 = !DILocation(line: 843, column: 42, scope: !5048)
!5054 = !DILocation(line: 843, column: 6, scope: !5002)
!5055 = !DILocation(line: 844, column: 3, scope: !5048)
!5056 = !DILocation(line: 847, column: 2, scope: !5002)
!5057 = !DILocation(line: 847, column: 11, scope: !5002)
!5058 = !DILocation(line: 847, column: 19, scope: !5002)
!5059 = !DILocation(line: 849, column: 9, scope: !5060)
!5060 = distinct !DILexicalBlock(scope: !5002, file: !3, line: 849, column: 2)
!5061 = !DILocation(line: 849, column: 7, scope: !5060)
!5062 = !DILocation(line: 849, column: 14, scope: !5063)
!5063 = distinct !DILexicalBlock(scope: !5060, file: !3, line: 849, column: 2)
!5064 = !DILocation(line: 849, column: 18, scope: !5063)
!5065 = !DILocation(line: 849, column: 23, scope: !5063)
!5066 = !DILocation(line: 849, column: 16, scope: !5063)
!5067 = !DILocation(line: 849, column: 2, scope: !5060)
!5068 = !DILocation(line: 850, column: 8, scope: !5069)
!5069 = distinct !DILexicalBlock(scope: !5063, file: !3, line: 849, column: 42)
!5070 = !DILocation(line: 850, column: 6, scope: !5069)
!5071 = !DILocation(line: 851, column: 29, scope: !5069)
!5072 = !DILocation(line: 851, column: 26, scope: !5069)
!5073 = !DILocation(line: 851, column: 3, scope: !5069)
!5074 = !DILocation(line: 851, column: 12, scope: !5069)
!5075 = !DILocation(line: 851, column: 20, scope: !5069)
!5076 = !DILocation(line: 852, column: 8, scope: !5069)
!5077 = !DILocation(line: 853, column: 10, scope: !5078)
!5078 = distinct !DILexicalBlock(scope: !5069, file: !3, line: 853, column: 3)
!5079 = !DILocation(line: 853, column: 8, scope: !5078)
!5080 = !DILocation(line: 853, column: 15, scope: !5081)
!5081 = distinct !DILexicalBlock(scope: !5078, file: !3, line: 853, column: 3)
!5082 = !DILocation(line: 853, column: 19, scope: !5081)
!5083 = !DILocation(line: 853, column: 24, scope: !5081)
!5084 = !DILocation(line: 853, column: 17, scope: !5081)
!5085 = !DILocation(line: 853, column: 3, scope: !5078)
!5086 = !DILocation(line: 854, column: 8, scope: !5087)
!5087 = distinct !DILexicalBlock(scope: !5088, file: !3, line: 854, column: 8)
!5088 = distinct !DILexicalBlock(scope: !5081, file: !3, line: 853, column: 43)
!5089 = !DILocation(line: 854, column: 36, scope: !5087)
!5090 = !DILocation(line: 854, column: 34, scope: !5087)
!5091 = !DILocation(line: 854, column: 8, scope: !5088)
!5092 = !DILocation(line: 855, column: 9, scope: !5087)
!5093 = !DILocation(line: 855, column: 5, scope: !5087)
!5094 = !DILocation(line: 856, column: 3, scope: !5088)
!5095 = !DILocation(line: 853, column: 39, scope: !5081)
!5096 = !DILocation(line: 853, column: 3, scope: !5081)
!5097 = distinct !{!5097, !5085, !5098}
!5098 = !DILocation(line: 856, column: 3, scope: !5078)
!5099 = !DILocation(line: 857, column: 34, scope: !5069)
!5100 = !DILocation(line: 857, column: 3, scope: !5069)
!5101 = !DILocation(line: 857, column: 12, scope: !5069)
!5102 = !DILocation(line: 857, column: 26, scope: !5069)
!5103 = !DILocation(line: 857, column: 32, scope: !5069)
!5104 = !DILocation(line: 858, column: 2, scope: !5069)
!5105 = !DILocation(line: 849, column: 38, scope: !5063)
!5106 = !DILocation(line: 849, column: 2, scope: !5063)
!5107 = distinct !{!5107, !5067, !5108}
!5108 = !DILocation(line: 858, column: 2, scope: !5060)
!5109 = !DILocation(line: 861, column: 7, scope: !5002)
!5110 = !DILocation(line: 861, column: 16, scope: !5002)
!5111 = !DILocation(line: 861, column: 25, scope: !5002)
!5112 = !DILocation(line: 861, column: 30, scope: !5002)
!5113 = !DILocation(line: 861, column: 37, scope: !5002)
!5114 = !DILocation(line: 861, column: 2, scope: !5002)
!5115 = !DILocation(line: 864, column: 10, scope: !5002)
!5116 = !DILocation(line: 864, column: 8, scope: !5002)
!5117 = !DILocation(line: 875, column: 6, scope: !5002)
!5118 = !DILocation(line: 874, column: 2, scope: !5002)
!5119 = !DILocation(line: 874, column: 11, scope: !5002)
!5120 = !DILocation(line: 874, column: 18, scope: !5002)
!5121 = !DILocation(line: 880, column: 7, scope: !5002)
!5122 = !DILocation(line: 880, column: 16, scope: !5002)
!5123 = !DILocation(line: 880, column: 23, scope: !5002)
!5124 = !DILocation(line: 881, column: 7, scope: !5002)
!5125 = !DILocation(line: 881, column: 12, scope: !5002)
!5126 = !DILocation(line: 881, column: 19, scope: !5002)
!5127 = !DILocation(line: 880, column: 2, scope: !5002)
!5128 = !DILocation(line: 883, column: 6, scope: !5129)
!5129 = distinct !DILexicalBlock(scope: !5002, file: !3, line: 883, column: 6)
!5130 = !DILocation(line: 883, column: 11, scope: !5129)
!5131 = !DILocation(line: 883, column: 26, scope: !5129)
!5132 = !DILocation(line: 883, column: 6, scope: !5002)
!5133 = !DILocation(line: 884, column: 31, scope: !5134)
!5134 = distinct !DILexicalBlock(scope: !5129, file: !3, line: 883, column: 41)
!5135 = !DILocation(line: 884, column: 36, scope: !5134)
!5136 = !DILocation(line: 884, column: 3, scope: !5134)
!5137 = !DILocation(line: 885, column: 25, scope: !5134)
!5138 = !DILocation(line: 885, column: 30, scope: !5134)
!5139 = !DILocation(line: 885, column: 3, scope: !5134)
!5140 = !DILocation(line: 886, column: 2, scope: !5134)
!5141 = !DILocation(line: 888, column: 2, scope: !5002)
!5142 = !DILocation(line: 888, column: 2, scope: !5017)
!5143 = !DILocalVariable(name: "__dummy", scope: !5144, file: !3, line: 888, type: !151)
!5144 = distinct !DILexicalBlock(scope: !5016, file: !3, line: 888, column: 2)
!5145 = !DILocation(line: 888, column: 2, scope: !5144)
!5146 = !DILocalVariable(name: "__dummy2", scope: !5144, file: !3, line: 888, type: !151)
!5147 = !DILocation(line: 888, column: 2, scope: !5016)
!5148 = !DILocation(line: 888, column: 2, scope: !5015)
!5149 = !DILocation(line: 888, column: 2, scope: !5150)
!5150 = distinct !DILexicalBlock(scope: !5015, file: !3, line: 888, column: 2)
!5151 = !DILocalVariable(name: "__dummy", scope: !5152, file: !3, line: 888, type: !151)
!5152 = distinct !DILexicalBlock(scope: !5153, file: !3, line: 888, column: 2)
!5153 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 888, column: 2)
!5154 = !DILocation(line: 888, column: 2, scope: !5152)
!5155 = !DILocalVariable(name: "__dummy2", scope: !5152, file: !3, line: 888, type: !151)
!5156 = !DILocation(line: 888, column: 2, scope: !5153)
!5157 = !DILocation(line: 888, column: 2, scope: !5014)
!5158 = !{i32 -2141601578}
!5159 = !DILocation(line: 888, column: 2, scope: !5013)
!5160 = !DILocation(line: 329, column: 10, scope: !4386, inlinedAt: !5012)
!5161 = !DILocation(line: 329, column: 16, scope: !4386, inlinedAt: !5012)
!5162 = !DILocation(line: 889, column: 6, scope: !5163)
!5163 = distinct !DILexicalBlock(scope: !5002, file: !3, line: 889, column: 6)
!5164 = !DILocation(line: 889, column: 11, scope: !5163)
!5165 = !DILocation(line: 889, column: 21, scope: !5163)
!5166 = !DILocation(line: 889, column: 6, scope: !5002)
!5167 = !DILocation(line: 890, column: 3, scope: !5168)
!5168 = distinct !DILexicalBlock(scope: !5163, file: !3, line: 889, column: 34)
!5169 = !DILocation(line: 890, column: 6, scope: !5168)
!5170 = !DILocation(line: 890, column: 13, scope: !5168)
!5171 = !DILocation(line: 890, column: 21, scope: !5168)
!5172 = !DILocation(line: 891, column: 2, scope: !5168)
!5173 = !DILocation(line: 893, column: 3, scope: !5174)
!5174 = distinct !DILexicalBlock(scope: !5163, file: !3, line: 891, column: 9)
!5175 = !DILocation(line: 893, column: 12, scope: !5174)
!5176 = !DILocation(line: 893, column: 19, scope: !5174)
!5177 = !DILocation(line: 894, column: 8, scope: !5174)
!5178 = !DILocation(line: 894, column: 17, scope: !5174)
!5179 = !DILocation(line: 894, column: 25, scope: !5174)
!5180 = !DILocation(line: 894, column: 34, scope: !5174)
!5181 = !DILocation(line: 894, column: 42, scope: !5174)
!5182 = !DILocation(line: 894, column: 3, scope: !5174)
!5183 = !DILocation(line: 896, column: 26, scope: !5002)
!5184 = !DILocation(line: 896, column: 35, scope: !5002)
!5185 = !DILocation(line: 896, column: 48, scope: !5002)
!5186 = !DILocalVariable(name: "__dummy", scope: !5187, file: !4387, line: 409, type: !151)
!5187 = distinct !DILexicalBlock(scope: !5188, file: !4387, line: 409, column: 2)
!5188 = distinct !DILexicalBlock(scope: !5004, file: !4387, line: 409, column: 2)
!5189 = !DILocation(line: 409, column: 2, scope: !5187, inlinedAt: !5008)
!5190 = !DILocalVariable(name: "__dummy2", scope: !5187, file: !4387, line: 409, type: !151)
!5191 = !DILocalVariable(name: "__dummy", scope: !5192, file: !4387, line: 409, type: !151)
!5192 = distinct !DILexicalBlock(scope: !5193, file: !4387, line: 409, column: 2)
!5193 = distinct !DILexicalBlock(scope: !5194, file: !4387, line: 409, column: 2)
!5194 = distinct !DILexicalBlock(scope: !5195, file: !4387, line: 409, column: 2)
!5195 = distinct !DILexicalBlock(scope: !5188, file: !4387, line: 409, column: 2)
!5196 = !DILocation(line: 409, column: 2, scope: !5192, inlinedAt: !5008)
!5197 = !DILocalVariable(name: "__dummy2", scope: !5192, file: !4387, line: 409, type: !151)
!5198 = !DILocation(line: 409, column: 2, scope: !5193, inlinedAt: !5008)
!5199 = !DILocation(line: 409, column: 2, scope: !5200, inlinedAt: !5008)
!5200 = distinct !DILexicalBlock(scope: !5195, file: !4387, line: 409, column: 2)
!5201 = !{i32 -2145443376}
!5202 = !DILocation(line: 409, column: 2, scope: !5203, inlinedAt: !5008)
!5203 = distinct !DILexicalBlock(scope: !5200, file: !4387, line: 409, column: 2)
!5204 = !DILocation(line: 898, column: 2, scope: !5002)
!5205 = !DILocation(line: 899, column: 1, scope: !5002)
!5206 = distinct !DISubprogram(name: "pci224_ao_cmdtest", scope: !3, file: !3, line: 662, type: !3941, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!5207 = !DILocalVariable(name: "dev", arg: 1, scope: !5206, file: !3, line: 662, type: !203)
!5208 = !DILocation(line: 662, column: 41, scope: !5206)
!5209 = !DILocalVariable(name: "s", arg: 2, scope: !5206, file: !3, line: 662, type: !237)
!5210 = !DILocation(line: 662, column: 71, scope: !5206)
!5211 = !DILocalVariable(name: "cmd", arg: 3, scope: !5206, file: !3, line: 663, type: !3943)
!5212 = !DILocation(line: 663, column: 24, scope: !5206)
!5213 = !DILocalVariable(name: "err", scope: !5206, file: !3, line: 665, type: !146)
!5214 = !DILocation(line: 665, column: 6, scope: !5206)
!5215 = !DILocalVariable(name: "arg", scope: !5206, file: !3, line: 666, type: !7)
!5216 = !DILocation(line: 666, column: 15, scope: !5206)
!5217 = !DILocation(line: 670, column: 35, scope: !5206)
!5218 = !DILocation(line: 670, column: 40, scope: !5206)
!5219 = !DILocation(line: 670, column: 9, scope: !5206)
!5220 = !DILocation(line: 670, column: 6, scope: !5206)
!5221 = !DILocation(line: 671, column: 35, scope: !5206)
!5222 = !DILocation(line: 671, column: 40, scope: !5206)
!5223 = !DILocation(line: 671, column: 9, scope: !5206)
!5224 = !DILocation(line: 671, column: 6, scope: !5206)
!5225 = !DILocation(line: 673, column: 35, scope: !5206)
!5226 = !DILocation(line: 673, column: 40, scope: !5206)
!5227 = !DILocation(line: 673, column: 9, scope: !5206)
!5228 = !DILocation(line: 673, column: 6, scope: !5206)
!5229 = !DILocation(line: 674, column: 35, scope: !5206)
!5230 = !DILocation(line: 674, column: 40, scope: !5206)
!5231 = !DILocation(line: 674, column: 9, scope: !5206)
!5232 = !DILocation(line: 674, column: 6, scope: !5206)
!5233 = !DILocation(line: 675, column: 35, scope: !5206)
!5234 = !DILocation(line: 675, column: 40, scope: !5206)
!5235 = !DILocation(line: 675, column: 9, scope: !5206)
!5236 = !DILocation(line: 675, column: 6, scope: !5206)
!5237 = !DILocation(line: 678, column: 6, scope: !5238)
!5238 = distinct !DILexicalBlock(scope: !5206, file: !3, line: 678, column: 6)
!5239 = !DILocation(line: 678, column: 6, scope: !5206)
!5240 = !DILocation(line: 679, column: 3, scope: !5238)
!5241 = !DILocation(line: 683, column: 40, scope: !5206)
!5242 = !DILocation(line: 683, column: 45, scope: !5206)
!5243 = !DILocation(line: 683, column: 9, scope: !5206)
!5244 = !DILocation(line: 683, column: 6, scope: !5206)
!5245 = !DILocation(line: 684, column: 40, scope: !5206)
!5246 = !DILocation(line: 684, column: 45, scope: !5206)
!5247 = !DILocation(line: 684, column: 9, scope: !5206)
!5248 = !DILocation(line: 684, column: 6, scope: !5206)
!5249 = !DILocation(line: 685, column: 40, scope: !5206)
!5250 = !DILocation(line: 685, column: 45, scope: !5206)
!5251 = !DILocation(line: 685, column: 9, scope: !5206)
!5252 = !DILocation(line: 685, column: 6, scope: !5206)
!5253 = !DILocation(line: 693, column: 6, scope: !5206)
!5254 = !DILocation(line: 694, column: 6, scope: !5255)
!5255 = distinct !DILexicalBlock(scope: !5206, file: !3, line: 694, column: 6)
!5256 = !DILocation(line: 694, column: 11, scope: !5255)
!5257 = !DILocation(line: 694, column: 21, scope: !5255)
!5258 = !DILocation(line: 694, column: 6, scope: !5206)
!5259 = !DILocation(line: 695, column: 6, scope: !5255)
!5260 = !DILocation(line: 695, column: 3, scope: !5255)
!5261 = !DILocation(line: 696, column: 6, scope: !5262)
!5262 = distinct !DILexicalBlock(scope: !5206, file: !3, line: 696, column: 6)
!5263 = !DILocation(line: 696, column: 11, scope: !5262)
!5264 = !DILocation(line: 696, column: 26, scope: !5262)
!5265 = !DILocation(line: 696, column: 6, scope: !5206)
!5266 = !DILocation(line: 697, column: 6, scope: !5262)
!5267 = !DILocation(line: 697, column: 3, scope: !5262)
!5268 = !DILocation(line: 698, column: 6, scope: !5269)
!5269 = distinct !DILexicalBlock(scope: !5206, file: !3, line: 698, column: 6)
!5270 = !DILocation(line: 698, column: 11, scope: !5269)
!5271 = !DILocation(line: 698, column: 20, scope: !5269)
!5272 = !DILocation(line: 698, column: 6, scope: !5206)
!5273 = !DILocation(line: 699, column: 6, scope: !5269)
!5274 = !DILocation(line: 699, column: 3, scope: !5269)
!5275 = !DILocation(line: 700, column: 6, scope: !5276)
!5276 = distinct !DILexicalBlock(scope: !5206, file: !3, line: 700, column: 6)
!5277 = !DILocation(line: 700, column: 10, scope: !5276)
!5278 = !DILocation(line: 700, column: 6, scope: !5206)
!5279 = !DILocation(line: 701, column: 7, scope: !5276)
!5280 = !DILocation(line: 701, column: 3, scope: !5276)
!5281 = !DILocation(line: 703, column: 6, scope: !5282)
!5282 = distinct !DILexicalBlock(scope: !5206, file: !3, line: 703, column: 6)
!5283 = !DILocation(line: 703, column: 6, scope: !5206)
!5284 = !DILocation(line: 704, column: 3, scope: !5282)
!5285 = !DILocation(line: 708, column: 10, scope: !5206)
!5286 = !DILocation(line: 708, column: 15, scope: !5206)
!5287 = !DILocation(line: 708, column: 2, scope: !5206)
!5288 = !DILocation(line: 710, column: 39, scope: !5289)
!5289 = distinct !DILexicalBlock(scope: !5206, file: !3, line: 708, column: 26)
!5290 = !DILocation(line: 710, column: 44, scope: !5289)
!5291 = !DILocation(line: 710, column: 10, scope: !5289)
!5292 = !DILocation(line: 710, column: 7, scope: !5289)
!5293 = !DILocation(line: 711, column: 3, scope: !5289)
!5294 = !DILocation(line: 714, column: 7, scope: !5295)
!5295 = distinct !DILexicalBlock(scope: !5289, file: !3, line: 714, column: 7)
!5296 = !DILocation(line: 714, column: 12, scope: !5295)
!5297 = !DILocation(line: 714, column: 22, scope: !5295)
!5298 = !DILocation(line: 714, column: 7, scope: !5289)
!5299 = !DILocation(line: 716, column: 8, scope: !5300)
!5300 = distinct !DILexicalBlock(scope: !5295, file: !3, line: 714, column: 40)
!5301 = !DILocation(line: 715, column: 4, scope: !5300)
!5302 = !DILocation(line: 715, column: 9, scope: !5300)
!5303 = !DILocation(line: 715, column: 19, scope: !5300)
!5304 = !DILocation(line: 717, column: 8, scope: !5300)
!5305 = !DILocation(line: 718, column: 3, scope: !5300)
!5306 = !DILocation(line: 720, column: 7, scope: !5307)
!5307 = distinct !DILexicalBlock(scope: !5289, file: !3, line: 720, column: 7)
!5308 = !DILocation(line: 720, column: 12, scope: !5307)
!5309 = !DILocation(line: 720, column: 22, scope: !5307)
!5310 = !DILocation(line: 720, column: 38, scope: !5307)
!5311 = !DILocation(line: 720, column: 7, scope: !5289)
!5312 = !DILocation(line: 721, column: 21, scope: !5313)
!5313 = distinct !DILexicalBlock(scope: !5307, file: !3, line: 720, column: 50)
!5314 = !DILocation(line: 721, column: 4, scope: !5313)
!5315 = !DILocation(line: 721, column: 9, scope: !5313)
!5316 = !DILocation(line: 721, column: 19, scope: !5313)
!5317 = !DILocation(line: 723, column: 8, scope: !5313)
!5318 = !DILocation(line: 724, column: 3, scope: !5313)
!5319 = !DILocation(line: 725, column: 3, scope: !5289)
!5320 = !DILocation(line: 728, column: 10, scope: !5206)
!5321 = !DILocation(line: 728, column: 15, scope: !5206)
!5322 = !DILocation(line: 728, column: 2, scope: !5206)
!5323 = !DILocation(line: 730, column: 40, scope: !5324)
!5324 = distinct !DILexicalBlock(scope: !5206, file: !3, line: 728, column: 31)
!5325 = !DILocation(line: 730, column: 45, scope: !5324)
!5326 = !DILocation(line: 730, column: 10, scope: !5324)
!5327 = !DILocation(line: 730, column: 7, scope: !5324)
!5328 = !DILocation(line: 733, column: 9, scope: !5324)
!5329 = !DILocation(line: 733, column: 14, scope: !5324)
!5330 = !DILocation(line: 733, column: 27, scope: !5324)
!5331 = !DILocation(line: 733, column: 7, scope: !5324)
!5332 = !DILocation(line: 734, column: 7, scope: !5333)
!5333 = distinct !DILexicalBlock(scope: !5324, file: !3, line: 734, column: 7)
!5334 = !DILocation(line: 734, column: 11, scope: !5333)
!5335 = !DILocation(line: 734, column: 7, scope: !5324)
!5336 = !DILocation(line: 735, column: 8, scope: !5333)
!5337 = !DILocation(line: 735, column: 4, scope: !5333)
!5338 = !DILocation(line: 736, column: 40, scope: !5324)
!5339 = !DILocation(line: 736, column: 45, scope: !5324)
!5340 = !DILocation(line: 736, column: 61, scope: !5324)
!5341 = !DILocation(line: 736, column: 10, scope: !5324)
!5342 = !DILocation(line: 736, column: 7, scope: !5324)
!5343 = !DILocation(line: 737, column: 3, scope: !5324)
!5344 = !DILocation(line: 740, column: 7, scope: !5345)
!5345 = distinct !DILexicalBlock(scope: !5324, file: !3, line: 740, column: 7)
!5346 = !DILocation(line: 740, column: 12, scope: !5345)
!5347 = !DILocation(line: 740, column: 27, scope: !5345)
!5348 = !DILocation(line: 740, column: 7, scope: !5324)
!5349 = !DILocation(line: 742, column: 8, scope: !5350)
!5350 = distinct !DILexicalBlock(scope: !5345, file: !3, line: 740, column: 45)
!5351 = !DILocation(line: 741, column: 4, scope: !5350)
!5352 = !DILocation(line: 741, column: 9, scope: !5350)
!5353 = !DILocation(line: 741, column: 24, scope: !5350)
!5354 = !DILocation(line: 743, column: 8, scope: !5350)
!5355 = !DILocation(line: 744, column: 3, scope: !5350)
!5356 = !DILocation(line: 746, column: 7, scope: !5357)
!5357 = distinct !DILexicalBlock(scope: !5324, file: !3, line: 746, column: 7)
!5358 = !DILocation(line: 746, column: 12, scope: !5357)
!5359 = !DILocation(line: 746, column: 27, scope: !5357)
!5360 = !DILocation(line: 746, column: 43, scope: !5357)
!5361 = !DILocation(line: 746, column: 7, scope: !5324)
!5362 = !DILocation(line: 749, column: 8, scope: !5363)
!5363 = distinct !DILexicalBlock(scope: !5357, file: !3, line: 747, column: 31)
!5364 = !DILocation(line: 748, column: 4, scope: !5363)
!5365 = !DILocation(line: 748, column: 9, scope: !5363)
!5366 = !DILocation(line: 748, column: 24, scope: !5363)
!5367 = !DILocation(line: 751, column: 8, scope: !5363)
!5368 = !DILocation(line: 752, column: 3, scope: !5363)
!5369 = !DILocation(line: 753, column: 3, scope: !5324)
!5370 = !DILocation(line: 756, column: 38, scope: !5206)
!5371 = !DILocation(line: 756, column: 43, scope: !5206)
!5372 = !DILocation(line: 756, column: 9, scope: !5206)
!5373 = !DILocation(line: 756, column: 6, scope: !5206)
!5374 = !DILocation(line: 757, column: 38, scope: !5206)
!5375 = !DILocation(line: 757, column: 43, scope: !5206)
!5376 = !DILocation(line: 758, column: 9, scope: !5206)
!5377 = !DILocation(line: 758, column: 14, scope: !5206)
!5378 = !DILocation(line: 757, column: 9, scope: !5206)
!5379 = !DILocation(line: 757, column: 6, scope: !5206)
!5380 = !DILocation(line: 760, column: 10, scope: !5206)
!5381 = !DILocation(line: 760, column: 15, scope: !5206)
!5382 = !DILocation(line: 760, column: 2, scope: !5206)
!5383 = !DILocation(line: 762, column: 40, scope: !5384)
!5384 = distinct !DILexicalBlock(scope: !5206, file: !3, line: 760, column: 25)
!5385 = !DILocation(line: 762, column: 45, scope: !5384)
!5386 = !DILocation(line: 762, column: 10, scope: !5384)
!5387 = !DILocation(line: 762, column: 7, scope: !5384)
!5388 = !DILocation(line: 763, column: 3, scope: !5384)
!5389 = !DILocation(line: 766, column: 7, scope: !5390)
!5390 = distinct !DILexicalBlock(scope: !5384, file: !3, line: 766, column: 7)
!5391 = !DILocation(line: 766, column: 12, scope: !5390)
!5392 = !DILocation(line: 766, column: 21, scope: !5390)
!5393 = !DILocation(line: 766, column: 7, scope: !5384)
!5394 = !DILocation(line: 768, column: 8, scope: !5395)
!5395 = distinct !DILexicalBlock(scope: !5390, file: !3, line: 766, column: 39)
!5396 = !DILocation(line: 767, column: 4, scope: !5395)
!5397 = !DILocation(line: 767, column: 9, scope: !5395)
!5398 = !DILocation(line: 767, column: 18, scope: !5395)
!5399 = !DILocation(line: 769, column: 8, scope: !5395)
!5400 = !DILocation(line: 770, column: 3, scope: !5395)
!5401 = !DILocation(line: 772, column: 7, scope: !5402)
!5402 = distinct !DILexicalBlock(scope: !5384, file: !3, line: 772, column: 7)
!5403 = !DILocation(line: 772, column: 12, scope: !5402)
!5404 = !DILocation(line: 772, column: 21, scope: !5402)
!5405 = !DILocation(line: 772, column: 37, scope: !5402)
!5406 = !DILocation(line: 772, column: 7, scope: !5384)
!5407 = !DILocation(line: 774, column: 8, scope: !5408)
!5408 = distinct !DILexicalBlock(scope: !5402, file: !3, line: 772, column: 49)
!5409 = !DILocation(line: 773, column: 4, scope: !5408)
!5410 = !DILocation(line: 773, column: 9, scope: !5408)
!5411 = !DILocation(line: 773, column: 18, scope: !5408)
!5412 = !DILocation(line: 775, column: 3, scope: !5408)
!5413 = !DILocation(line: 776, column: 3, scope: !5384)
!5414 = !DILocation(line: 778, column: 39, scope: !5384)
!5415 = !DILocation(line: 778, column: 44, scope: !5384)
!5416 = !DILocation(line: 778, column: 10, scope: !5384)
!5417 = !DILocation(line: 778, column: 7, scope: !5384)
!5418 = !DILocation(line: 779, column: 3, scope: !5384)
!5419 = !DILocation(line: 782, column: 6, scope: !5420)
!5420 = distinct !DILexicalBlock(scope: !5206, file: !3, line: 782, column: 6)
!5421 = !DILocation(line: 782, column: 6, scope: !5206)
!5422 = !DILocation(line: 783, column: 3, scope: !5420)
!5423 = !DILocation(line: 787, column: 6, scope: !5424)
!5424 = distinct !DILexicalBlock(scope: !5206, file: !3, line: 787, column: 6)
!5425 = !DILocation(line: 787, column: 11, scope: !5424)
!5426 = !DILocation(line: 787, column: 26, scope: !5424)
!5427 = !DILocation(line: 787, column: 6, scope: !5206)
!5428 = !DILocation(line: 788, column: 9, scope: !5429)
!5429 = distinct !DILexicalBlock(scope: !5424, file: !3, line: 787, column: 41)
!5430 = !DILocation(line: 788, column: 14, scope: !5429)
!5431 = !DILocation(line: 788, column: 7, scope: !5429)
!5432 = !DILocation(line: 790, column: 35, scope: !5429)
!5433 = !DILocation(line: 790, column: 40, scope: !5429)
!5434 = !DILocation(line: 790, column: 53, scope: !5429)
!5435 = !DILocation(line: 790, column: 58, scope: !5429)
!5436 = !DILocation(line: 790, column: 3, scope: !5429)
!5437 = !DILocation(line: 791, column: 39, scope: !5429)
!5438 = !DILocation(line: 791, column: 44, scope: !5429)
!5439 = !DILocation(line: 791, column: 60, scope: !5429)
!5440 = !DILocation(line: 791, column: 10, scope: !5429)
!5441 = !DILocation(line: 791, column: 7, scope: !5429)
!5442 = !DILocation(line: 792, column: 2, scope: !5429)
!5443 = !DILocation(line: 794, column: 6, scope: !5444)
!5444 = distinct !DILexicalBlock(scope: !5206, file: !3, line: 794, column: 6)
!5445 = !DILocation(line: 794, column: 6, scope: !5206)
!5446 = !DILocation(line: 795, column: 3, scope: !5444)
!5447 = !DILocation(line: 798, column: 6, scope: !5448)
!5448 = distinct !DILexicalBlock(scope: !5206, file: !3, line: 798, column: 6)
!5449 = !DILocation(line: 798, column: 11, scope: !5448)
!5450 = !DILocation(line: 798, column: 20, scope: !5448)
!5451 = !DILocation(line: 798, column: 23, scope: !5448)
!5452 = !DILocation(line: 798, column: 28, scope: !5448)
!5453 = !DILocation(line: 798, column: 41, scope: !5448)
!5454 = !DILocation(line: 798, column: 6, scope: !5206)
!5455 = !DILocation(line: 799, column: 35, scope: !5448)
!5456 = !DILocation(line: 799, column: 40, scope: !5448)
!5457 = !DILocation(line: 799, column: 43, scope: !5448)
!5458 = !DILocation(line: 799, column: 10, scope: !5448)
!5459 = !DILocation(line: 799, column: 7, scope: !5448)
!5460 = !DILocation(line: 799, column: 3, scope: !5448)
!5461 = !DILocation(line: 801, column: 6, scope: !5462)
!5462 = distinct !DILexicalBlock(scope: !5206, file: !3, line: 801, column: 6)
!5463 = !DILocation(line: 801, column: 6, scope: !5206)
!5464 = !DILocation(line: 802, column: 3, scope: !5462)
!5465 = !DILocation(line: 804, column: 2, scope: !5206)
!5466 = !DILocation(line: 805, column: 1, scope: !5206)
!5467 = distinct !DISubprogram(name: "pci224_ao_cancel", scope: !3, file: !3, line: 904, type: !3937, scopeLine: 906, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!5468 = !DILocalVariable(name: "dev", arg: 1, scope: !5467, file: !3, line: 904, type: !203)
!5469 = !DILocation(line: 904, column: 51, scope: !5467)
!5470 = !DILocalVariable(name: "s", arg: 2, scope: !5467, file: !3, line: 905, type: !237)
!5471 = !DILocation(line: 905, column: 33, scope: !5467)
!5472 = !DILocation(line: 907, column: 17, scope: !5467)
!5473 = !DILocation(line: 907, column: 22, scope: !5467)
!5474 = !DILocation(line: 907, column: 2, scope: !5467)
!5475 = !DILocation(line: 908, column: 2, scope: !5467)
!5476 = distinct !DISubprogram(name: "pci224_ao_munge", scope: !3, file: !3, line: 915, type: !3949, scopeLine: 917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!5477 = !DILocalVariable(name: "dev", arg: 1, scope: !5476, file: !3, line: 915, type: !203)
!5478 = !DILocation(line: 915, column: 39, scope: !5476)
!5479 = !DILocalVariable(name: "s", arg: 2, scope: !5476, file: !3, line: 915, type: !237)
!5480 = !DILocation(line: 915, column: 69, scope: !5476)
!5481 = !DILocalVariable(name: "data", arg: 3, scope: !5476, file: !3, line: 916, type: !149)
!5482 = !DILocation(line: 916, column: 9, scope: !5476)
!5483 = !DILocalVariable(name: "num_bytes", arg: 4, scope: !5476, file: !3, line: 916, type: !7)
!5484 = !DILocation(line: 916, column: 28, scope: !5476)
!5485 = !DILocalVariable(name: "chan_index", arg: 5, scope: !5476, file: !3, line: 916, type: !7)
!5486 = !DILocation(line: 916, column: 52, scope: !5476)
!5487 = !DILocalVariable(name: "board", scope: !5476, file: !3, line: 918, type: !4403)
!5488 = !DILocation(line: 918, column: 29, scope: !5476)
!5489 = !DILocation(line: 918, column: 37, scope: !5476)
!5490 = !DILocation(line: 918, column: 42, scope: !5476)
!5491 = !DILocalVariable(name: "cmd", scope: !5476, file: !3, line: 919, type: !3943)
!5492 = !DILocation(line: 919, column: 21, scope: !5476)
!5493 = !DILocation(line: 919, column: 28, scope: !5476)
!5494 = !DILocation(line: 919, column: 31, scope: !5476)
!5495 = !DILocation(line: 919, column: 38, scope: !5476)
!5496 = !DILocalVariable(name: "array", scope: !5476, file: !3, line: 920, type: !4359)
!5497 = !DILocation(line: 920, column: 18, scope: !5476)
!5498 = !DILocation(line: 920, column: 26, scope: !5476)
!5499 = !DILocalVariable(name: "length", scope: !5476, file: !3, line: 921, type: !7)
!5500 = !DILocation(line: 921, column: 15, scope: !5476)
!5501 = !DILocation(line: 921, column: 24, scope: !5476)
!5502 = !DILocation(line: 921, column: 34, scope: !5476)
!5503 = !DILocalVariable(name: "offset", scope: !5476, file: !3, line: 922, type: !7)
!5504 = !DILocation(line: 922, column: 15, scope: !5476)
!5505 = !DILocalVariable(name: "shift", scope: !5476, file: !3, line: 923, type: !7)
!5506 = !DILocation(line: 923, column: 15, scope: !5476)
!5507 = !DILocalVariable(name: "i", scope: !5476, file: !3, line: 924, type: !7)
!5508 = !DILocation(line: 924, column: 15, scope: !5476)
!5509 = !DILocation(line: 927, column: 15, scope: !5476)
!5510 = !DILocation(line: 927, column: 22, scope: !5476)
!5511 = !DILocation(line: 927, column: 13, scope: !5476)
!5512 = !DILocation(line: 927, column: 8, scope: !5476)
!5513 = !DILocation(line: 929, column: 7, scope: !5514)
!5514 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 929, column: 6)
!5515 = !DILocation(line: 929, column: 14, scope: !5514)
!5516 = !DILocation(line: 929, column: 25, scope: !5514)
!5517 = !DILocation(line: 929, column: 53, scope: !5514)
!5518 = !DILocation(line: 930, column: 33, scope: !5514)
!5519 = !DILocation(line: 929, column: 6, scope: !5476)
!5520 = !DILocation(line: 932, column: 10, scope: !5521)
!5521 = distinct !DILexicalBlock(scope: !5514, file: !3, line: 930, column: 61)
!5522 = !DILocation(line: 933, column: 2, scope: !5521)
!5523 = !DILocation(line: 935, column: 10, scope: !5524)
!5524 = distinct !DILexicalBlock(scope: !5514, file: !3, line: 933, column: 9)
!5525 = !DILocation(line: 938, column: 9, scope: !5526)
!5526 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 938, column: 2)
!5527 = !DILocation(line: 938, column: 7, scope: !5526)
!5528 = !DILocation(line: 938, column: 14, scope: !5529)
!5529 = distinct !DILexicalBlock(scope: !5526, file: !3, line: 938, column: 2)
!5530 = !DILocation(line: 938, column: 18, scope: !5529)
!5531 = !DILocation(line: 938, column: 16, scope: !5529)
!5532 = !DILocation(line: 938, column: 2, scope: !5526)
!5533 = !DILocation(line: 939, column: 15, scope: !5529)
!5534 = !DILocation(line: 939, column: 21, scope: !5529)
!5535 = !DILocation(line: 939, column: 27, scope: !5529)
!5536 = !DILocation(line: 939, column: 24, scope: !5529)
!5537 = !DILocation(line: 939, column: 36, scope: !5529)
!5538 = !DILocation(line: 939, column: 34, scope: !5529)
!5539 = !DILocation(line: 939, column: 14, scope: !5529)
!5540 = !DILocation(line: 939, column: 3, scope: !5529)
!5541 = !DILocation(line: 939, column: 9, scope: !5529)
!5542 = !DILocation(line: 939, column: 12, scope: !5529)
!5543 = !DILocation(line: 938, column: 27, scope: !5529)
!5544 = !DILocation(line: 938, column: 2, scope: !5529)
!5545 = distinct !{!5545, !5532, !5546}
!5546 = !DILocation(line: 939, column: 36, scope: !5526)
!5547 = !DILocation(line: 940, column: 1, scope: !5476)
!5548 = distinct !DISubprogram(name: "request_irq", scope: !4137, file: !4137, line: 157, type: !5549, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!5549 = !DISubroutineType(types: !5550)
!5550 = !{!146, !7, !5551, !151, !194, !149}
!5551 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !4137, line: 92, baseType: !5552)
!5552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5553, size: 64)
!5553 = !DISubroutineType(types: !5554)
!5554 = !{!5555, !146, !149}
!5555 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !129, line: 17, baseType: !128)
!5556 = !DILocalVariable(name: "irq", arg: 1, scope: !5548, file: !4137, line: 157, type: !7)
!5557 = !DILocation(line: 157, column: 26, scope: !5548)
!5558 = !DILocalVariable(name: "handler", arg: 2, scope: !5548, file: !4137, line: 157, type: !5551)
!5559 = !DILocation(line: 157, column: 45, scope: !5548)
!5560 = !DILocalVariable(name: "flags", arg: 3, scope: !5548, file: !4137, line: 157, type: !151)
!5561 = !DILocation(line: 157, column: 68, scope: !5548)
!5562 = !DILocalVariable(name: "name", arg: 4, scope: !5548, file: !4137, line: 158, type: !194)
!5563 = !DILocation(line: 158, column: 18, scope: !5548)
!5564 = !DILocalVariable(name: "dev", arg: 5, scope: !5548, file: !4137, line: 158, type: !149)
!5565 = !DILocation(line: 158, column: 30, scope: !5548)
!5566 = !DILocation(line: 160, column: 30, scope: !5548)
!5567 = !DILocation(line: 160, column: 35, scope: !5548)
!5568 = !DILocation(line: 160, column: 50, scope: !5548)
!5569 = !DILocation(line: 160, column: 57, scope: !5548)
!5570 = !DILocation(line: 160, column: 63, scope: !5548)
!5571 = !DILocation(line: 160, column: 9, scope: !5548)
!5572 = !DILocation(line: 160, column: 2, scope: !5548)
!5573 = distinct !DISubprogram(name: "pci224_interrupt", scope: !3, file: !3, line: 945, type: !5553, scopeLine: 946, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!5574 = !DILocation(line: 327, column: 67, scope: !4386, inlinedAt: !5575)
!5575 = distinct !DILocation(line: 980, column: 3, scope: !5576)
!5576 = distinct !DILexicalBlock(scope: !5577, file: !3, line: 980, column: 3)
!5577 = distinct !DILexicalBlock(scope: !5578, file: !3, line: 980, column: 3)
!5578 = distinct !DILexicalBlock(scope: !5579, file: !3, line: 980, column: 3)
!5579 = distinct !DILexicalBlock(scope: !5580, file: !3, line: 980, column: 3)
!5580 = distinct !DILexicalBlock(scope: !5581, file: !3, line: 980, column: 3)
!5581 = distinct !DILexicalBlock(scope: !5582, file: !3, line: 957, column: 15)
!5582 = distinct !DILexicalBlock(scope: !5573, file: !3, line: 957, column: 6)
!5583 = !DILocation(line: 407, column: 64, scope: !5004, inlinedAt: !5584)
!5584 = distinct !DILocation(line: 966, column: 3, scope: !5581)
!5585 = !DILocation(line: 407, column: 84, scope: !5004, inlinedAt: !5584)
!5586 = !DILocation(line: 407, column: 64, scope: !5004, inlinedAt: !5587)
!5587 = distinct !DILocation(line: 986, column: 3, scope: !5581)
!5588 = !DILocation(line: 407, column: 84, scope: !5004, inlinedAt: !5587)
!5589 = !DILocation(line: 327, column: 67, scope: !4386, inlinedAt: !5590)
!5590 = distinct !DILocation(line: 959, column: 3, scope: !5591)
!5591 = distinct !DILexicalBlock(scope: !5592, file: !3, line: 959, column: 3)
!5592 = distinct !DILexicalBlock(scope: !5593, file: !3, line: 959, column: 3)
!5593 = distinct !DILexicalBlock(scope: !5594, file: !3, line: 959, column: 3)
!5594 = distinct !DILexicalBlock(scope: !5595, file: !3, line: 959, column: 3)
!5595 = distinct !DILexicalBlock(scope: !5581, file: !3, line: 959, column: 3)
!5596 = !DILocalVariable(name: "irq", arg: 1, scope: !5573, file: !3, line: 945, type: !146)
!5597 = !DILocation(line: 945, column: 41, scope: !5573)
!5598 = !DILocalVariable(name: "d", arg: 2, scope: !5573, file: !3, line: 945, type: !149)
!5599 = !DILocation(line: 945, column: 52, scope: !5573)
!5600 = !DILocalVariable(name: "dev", scope: !5573, file: !3, line: 947, type: !203)
!5601 = !DILocation(line: 947, column: 24, scope: !5573)
!5602 = !DILocation(line: 947, column: 30, scope: !5573)
!5603 = !DILocalVariable(name: "devpriv", scope: !5573, file: !3, line: 948, type: !4352)
!5604 = !DILocation(line: 948, column: 25, scope: !5573)
!5605 = !DILocation(line: 948, column: 35, scope: !5573)
!5606 = !DILocation(line: 948, column: 40, scope: !5573)
!5607 = !DILocalVariable(name: "s", scope: !5573, file: !3, line: 949, type: !237)
!5608 = !DILocation(line: 949, column: 27, scope: !5573)
!5609 = !DILocation(line: 949, column: 31, scope: !5573)
!5610 = !DILocation(line: 949, column: 36, scope: !5573)
!5611 = !DILocalVariable(name: "cmd", scope: !5573, file: !3, line: 950, type: !3943)
!5612 = !DILocation(line: 950, column: 21, scope: !5573)
!5613 = !DILocalVariable(name: "intstat", scope: !5573, file: !3, line: 951, type: !469)
!5614 = !DILocation(line: 951, column: 16, scope: !5573)
!5615 = !DILocalVariable(name: "valid_intstat", scope: !5573, file: !3, line: 951, type: !469)
!5616 = !DILocation(line: 951, column: 25, scope: !5573)
!5617 = !DILocalVariable(name: "curenab", scope: !5573, file: !3, line: 952, type: !469)
!5618 = !DILocation(line: 952, column: 16, scope: !5573)
!5619 = !DILocalVariable(name: "retval", scope: !5573, file: !3, line: 953, type: !146)
!5620 = !DILocation(line: 953, column: 6, scope: !5573)
!5621 = !DILocalVariable(name: "flags", scope: !5573, file: !3, line: 954, type: !151)
!5622 = !DILocation(line: 954, column: 16, scope: !5573)
!5623 = !DILocation(line: 956, column: 16, scope: !5573)
!5624 = !DILocation(line: 956, column: 25, scope: !5573)
!5625 = !DILocation(line: 956, column: 33, scope: !5573)
!5626 = !DILocation(line: 956, column: 12, scope: !5573)
!5627 = !DILocation(line: 956, column: 51, scope: !5573)
!5628 = !DILocation(line: 956, column: 10, scope: !5573)
!5629 = !DILocation(line: 957, column: 6, scope: !5582)
!5630 = !DILocation(line: 957, column: 6, scope: !5573)
!5631 = !DILocation(line: 958, column: 10, scope: !5581)
!5632 = !DILocation(line: 959, column: 3, scope: !5581)
!5633 = !DILocation(line: 959, column: 3, scope: !5595)
!5634 = !DILocalVariable(name: "__dummy", scope: !5635, file: !3, line: 959, type: !151)
!5635 = distinct !DILexicalBlock(scope: !5594, file: !3, line: 959, column: 3)
!5636 = !DILocation(line: 959, column: 3, scope: !5635)
!5637 = !DILocalVariable(name: "__dummy2", scope: !5635, file: !3, line: 959, type: !151)
!5638 = !DILocation(line: 959, column: 3, scope: !5594)
!5639 = !DILocation(line: 959, column: 3, scope: !5593)
!5640 = !DILocation(line: 959, column: 3, scope: !5641)
!5641 = distinct !DILexicalBlock(scope: !5593, file: !3, line: 959, column: 3)
!5642 = !DILocalVariable(name: "__dummy", scope: !5643, file: !3, line: 959, type: !151)
!5643 = distinct !DILexicalBlock(scope: !5644, file: !3, line: 959, column: 3)
!5644 = distinct !DILexicalBlock(scope: !5641, file: !3, line: 959, column: 3)
!5645 = !DILocation(line: 959, column: 3, scope: !5643)
!5646 = !DILocalVariable(name: "__dummy2", scope: !5643, file: !3, line: 959, type: !151)
!5647 = !DILocation(line: 959, column: 3, scope: !5644)
!5648 = !DILocation(line: 959, column: 3, scope: !5592)
!5649 = !{i32 -2141600328}
!5650 = !DILocation(line: 959, column: 3, scope: !5591)
!5651 = !DILocation(line: 329, column: 10, scope: !4386, inlinedAt: !5590)
!5652 = !DILocation(line: 329, column: 16, scope: !4386, inlinedAt: !5590)
!5653 = !DILocation(line: 960, column: 19, scope: !5581)
!5654 = !DILocation(line: 960, column: 28, scope: !5581)
!5655 = !DILocation(line: 960, column: 37, scope: !5581)
!5656 = !DILocation(line: 960, column: 35, scope: !5581)
!5657 = !DILocation(line: 960, column: 17, scope: !5581)
!5658 = !DILocation(line: 962, column: 13, scope: !5581)
!5659 = !DILocation(line: 962, column: 22, scope: !5581)
!5660 = !DILocation(line: 962, column: 32, scope: !5581)
!5661 = !DILocation(line: 962, column: 31, scope: !5581)
!5662 = !DILocation(line: 962, column: 29, scope: !5581)
!5663 = !DILocation(line: 962, column: 11, scope: !5581)
!5664 = !DILocation(line: 963, column: 8, scope: !5581)
!5665 = !DILocation(line: 963, column: 17, scope: !5581)
!5666 = !DILocation(line: 963, column: 26, scope: !5581)
!5667 = !DILocation(line: 963, column: 34, scope: !5581)
!5668 = !DILocation(line: 963, column: 3, scope: !5581)
!5669 = !DILocation(line: 964, column: 3, scope: !5581)
!5670 = !DILocation(line: 964, column: 12, scope: !5581)
!5671 = !DILocation(line: 964, column: 25, scope: !5581)
!5672 = !DILocation(line: 965, column: 3, scope: !5581)
!5673 = !DILocation(line: 965, column: 12, scope: !5581)
!5674 = !DILocation(line: 965, column: 23, scope: !5581)
!5675 = !DILocation(line: 966, column: 27, scope: !5581)
!5676 = !DILocation(line: 966, column: 36, scope: !5581)
!5677 = !DILocation(line: 966, column: 49, scope: !5581)
!5678 = !DILocation(line: 409, column: 2, scope: !5187, inlinedAt: !5584)
!5679 = !DILocation(line: 409, column: 2, scope: !5192, inlinedAt: !5584)
!5680 = !DILocation(line: 409, column: 2, scope: !5193, inlinedAt: !5584)
!5681 = !DILocation(line: 409, column: 2, scope: !5200, inlinedAt: !5584)
!5682 = !DILocation(line: 409, column: 2, scope: !5203, inlinedAt: !5584)
!5683 = !DILocation(line: 967, column: 7, scope: !5684)
!5684 = distinct !DILexicalBlock(scope: !5581, file: !3, line: 967, column: 7)
!5685 = !DILocation(line: 967, column: 7, scope: !5581)
!5686 = !DILocation(line: 968, column: 11, scope: !5687)
!5687 = distinct !DILexicalBlock(scope: !5684, file: !3, line: 967, column: 22)
!5688 = !DILocation(line: 968, column: 14, scope: !5687)
!5689 = !DILocation(line: 968, column: 21, scope: !5687)
!5690 = !DILocation(line: 968, column: 8, scope: !5687)
!5691 = !DILocation(line: 969, column: 8, scope: !5692)
!5692 = distinct !DILexicalBlock(scope: !5687, file: !3, line: 969, column: 8)
!5693 = !DILocation(line: 969, column: 22, scope: !5692)
!5694 = !DILocation(line: 969, column: 8, scope: !5687)
!5695 = !DILocation(line: 970, column: 5, scope: !5696)
!5696 = distinct !DILexicalBlock(scope: !5692, file: !3, line: 969, column: 41)
!5697 = !DILocation(line: 970, column: 14, scope: !5696)
!5698 = !DILocation(line: 970, column: 21, scope: !5696)
!5699 = !DILocation(line: 971, column: 9, scope: !5700)
!5700 = distinct !DILexicalBlock(scope: !5696, file: !3, line: 971, column: 9)
!5701 = !DILocation(line: 971, column: 14, scope: !5700)
!5702 = !DILocation(line: 971, column: 24, scope: !5700)
!5703 = !DILocation(line: 971, column: 9, scope: !5696)
!5704 = !DILocation(line: 972, column: 22, scope: !5700)
!5705 = !DILocation(line: 972, column: 27, scope: !5700)
!5706 = !DILocation(line: 972, column: 6, scope: !5700)
!5707 = !DILocation(line: 973, column: 14, scope: !5708)
!5708 = distinct !DILexicalBlock(scope: !5700, file: !3, line: 973, column: 14)
!5709 = !DILocation(line: 973, column: 19, scope: !5708)
!5710 = !DILocation(line: 973, column: 28, scope: !5708)
!5711 = !DILocation(line: 973, column: 14, scope: !5700)
!5712 = !DILocation(line: 974, column: 21, scope: !5708)
!5713 = !DILocation(line: 974, column: 26, scope: !5708)
!5714 = !DILocation(line: 974, column: 6, scope: !5708)
!5715 = !DILocation(line: 975, column: 4, scope: !5696)
!5716 = !DILocation(line: 976, column: 8, scope: !5717)
!5717 = distinct !DILexicalBlock(scope: !5687, file: !3, line: 976, column: 8)
!5718 = !DILocation(line: 976, column: 22, scope: !5717)
!5719 = !DILocation(line: 976, column: 8, scope: !5687)
!5720 = !DILocation(line: 977, column: 27, scope: !5717)
!5721 = !DILocation(line: 977, column: 32, scope: !5717)
!5722 = !DILocation(line: 977, column: 5, scope: !5717)
!5723 = !DILocation(line: 978, column: 3, scope: !5687)
!5724 = !DILocation(line: 980, column: 3, scope: !5581)
!5725 = !DILocation(line: 980, column: 3, scope: !5580)
!5726 = !DILocalVariable(name: "__dummy", scope: !5727, file: !3, line: 980, type: !151)
!5727 = distinct !DILexicalBlock(scope: !5579, file: !3, line: 980, column: 3)
!5728 = !DILocation(line: 980, column: 3, scope: !5727)
!5729 = !DILocalVariable(name: "__dummy2", scope: !5727, file: !3, line: 980, type: !151)
!5730 = !DILocation(line: 980, column: 3, scope: !5579)
!5731 = !DILocation(line: 980, column: 3, scope: !5578)
!5732 = !DILocation(line: 980, column: 3, scope: !5733)
!5733 = distinct !DILexicalBlock(scope: !5578, file: !3, line: 980, column: 3)
!5734 = !DILocalVariable(name: "__dummy", scope: !5735, file: !3, line: 980, type: !151)
!5735 = distinct !DILexicalBlock(scope: !5736, file: !3, line: 980, column: 3)
!5736 = distinct !DILexicalBlock(scope: !5733, file: !3, line: 980, column: 3)
!5737 = !DILocation(line: 980, column: 3, scope: !5735)
!5738 = !DILocalVariable(name: "__dummy2", scope: !5735, file: !3, line: 980, type: !151)
!5739 = !DILocation(line: 980, column: 3, scope: !5736)
!5740 = !DILocation(line: 980, column: 3, scope: !5577)
!5741 = !{i32 -2141599126}
!5742 = !DILocation(line: 980, column: 3, scope: !5576)
!5743 = !DILocation(line: 329, column: 10, scope: !4386, inlinedAt: !5575)
!5744 = !DILocation(line: 329, column: 16, scope: !4386, inlinedAt: !5575)
!5745 = !DILocation(line: 981, column: 7, scope: !5746)
!5746 = distinct !DILexicalBlock(scope: !5581, file: !3, line: 981, column: 7)
!5747 = !DILocation(line: 981, column: 18, scope: !5746)
!5748 = !DILocation(line: 981, column: 27, scope: !5746)
!5749 = !DILocation(line: 981, column: 15, scope: !5746)
!5750 = !DILocation(line: 981, column: 7, scope: !5581)
!5751 = !DILocation(line: 982, column: 9, scope: !5752)
!5752 = distinct !DILexicalBlock(scope: !5746, file: !3, line: 981, column: 35)
!5753 = !DILocation(line: 982, column: 18, scope: !5752)
!5754 = !DILocation(line: 983, column: 9, scope: !5752)
!5755 = !DILocation(line: 983, column: 18, scope: !5752)
!5756 = !DILocation(line: 983, column: 26, scope: !5752)
!5757 = !DILocation(line: 982, column: 4, scope: !5752)
!5758 = !DILocation(line: 984, column: 3, scope: !5752)
!5759 = !DILocation(line: 985, column: 3, scope: !5581)
!5760 = !DILocation(line: 985, column: 12, scope: !5581)
!5761 = !DILocation(line: 985, column: 25, scope: !5581)
!5762 = !DILocation(line: 986, column: 27, scope: !5581)
!5763 = !DILocation(line: 986, column: 36, scope: !5581)
!5764 = !DILocation(line: 986, column: 49, scope: !5581)
!5765 = !DILocation(line: 409, column: 2, scope: !5187, inlinedAt: !5587)
!5766 = !DILocation(line: 409, column: 2, scope: !5192, inlinedAt: !5587)
!5767 = !DILocation(line: 409, column: 2, scope: !5193, inlinedAt: !5587)
!5768 = !DILocation(line: 409, column: 2, scope: !5200, inlinedAt: !5587)
!5769 = !DILocation(line: 409, column: 2, scope: !5203, inlinedAt: !5587)
!5770 = !DILocation(line: 987, column: 2, scope: !5581)
!5771 = !DILocation(line: 988, column: 9, scope: !5573)
!5772 = !DILocation(line: 988, column: 2, scope: !5573)
!5773 = distinct !DISubprogram(name: "dev_name", scope: !73, file: !73, line: 609, type: !5774, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!5774 = !DISubroutineType(types: !5775)
!5775 = !{!194, !3748}
!5776 = !DILocalVariable(name: "dev", arg: 1, scope: !5773, file: !73, line: 609, type: !3748)
!5777 = !DILocation(line: 609, column: 57, scope: !5773)
!5778 = !DILocation(line: 612, column: 6, scope: !5779)
!5779 = distinct !DILexicalBlock(scope: !5773, file: !73, line: 612, column: 6)
!5780 = !DILocation(line: 612, column: 11, scope: !5779)
!5781 = !DILocation(line: 612, column: 6, scope: !5773)
!5782 = !DILocation(line: 613, column: 10, scope: !5779)
!5783 = !DILocation(line: 613, column: 15, scope: !5779)
!5784 = !DILocation(line: 613, column: 3, scope: !5779)
!5785 = !DILocation(line: 615, column: 23, scope: !5773)
!5786 = !DILocation(line: 615, column: 28, scope: !5773)
!5787 = !DILocation(line: 615, column: 9, scope: !5773)
!5788 = !DILocation(line: 615, column: 2, scope: !5773)
!5789 = !DILocation(line: 616, column: 1, scope: !5773)
!5790 = distinct !DISubprogram(name: "kobject_name", scope: !263, file: !263, line: 88, type: !5791, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!5791 = !DISubroutineType(types: !5792)
!5792 = !{!194, !5793}
!5793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5794, size: 64)
!5794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !262)
!5795 = !DILocalVariable(name: "kobj", arg: 1, scope: !5790, file: !263, line: 88, type: !5793)
!5796 = !DILocation(line: 88, column: 62, scope: !5790)
!5797 = !DILocation(line: 90, column: 9, scope: !5790)
!5798 = !DILocation(line: 90, column: 15, scope: !5790)
!5799 = !DILocation(line: 90, column: 2, scope: !5790)
!5800 = distinct !DISubprogram(name: "__must_check_overflow", scope: !5801, file: !5801, line: 52, type: !5802, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!5801 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!5802 = !DISubroutineType(types: !5803)
!5803 = !{!231, !231}
!5804 = !DILocalVariable(name: "overflow", arg: 1, scope: !5800, file: !5801, line: 52, type: !231)
!5805 = !DILocation(line: 52, column: 60, scope: !5800)
!5806 = !DILocation(line: 54, column: 9, scope: !5800)
!5807 = !DILocation(line: 54, column: 2, scope: !5800)
!5808 = distinct !DISubprogram(name: "get_order", scope: !5809, file: !5809, line: 29, type: !5810, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!5809 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5810 = !DISubroutineType(types: !5811)
!5811 = !{!146, !151}
!5812 = !DILocalVariable(name: "x", arg: 1, scope: !5813, file: !5814, line: 366, type: !464)
!5813 = distinct !DISubprogram(name: "fls64", scope: !5814, file: !5814, line: 366, type: !5815, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!5814 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5815 = !DISubroutineType(types: !5816)
!5816 = !{!146, !464}
!5817 = !DILocation(line: 366, column: 40, scope: !5813, inlinedAt: !5818)
!5818 = distinct !DILocation(line: 46, column: 9, scope: !5808)
!5819 = !DILocalVariable(name: "bitpos", scope: !5813, file: !5814, line: 368, type: !146)
!5820 = !DILocation(line: 368, column: 6, scope: !5813, inlinedAt: !5818)
!5821 = !DILocalVariable(name: "size", arg: 1, scope: !5808, file: !5809, line: 29, type: !151)
!5822 = !DILocation(line: 29, column: 63, scope: !5808)
!5823 = !DILocation(line: 31, column: 27, scope: !5824)
!5824 = distinct !DILexicalBlock(scope: !5808, file: !5809, line: 31, column: 6)
!5825 = !DILocation(line: 31, column: 6, scope: !5824)
!5826 = !DILocation(line: 31, column: 6, scope: !5808)
!5827 = !DILocation(line: 32, column: 8, scope: !5828)
!5828 = distinct !DILexicalBlock(scope: !5829, file: !5809, line: 32, column: 7)
!5829 = distinct !DILexicalBlock(scope: !5824, file: !5809, line: 31, column: 34)
!5830 = !DILocation(line: 32, column: 7, scope: !5829)
!5831 = !DILocation(line: 33, column: 4, scope: !5828)
!5832 = !DILocation(line: 35, column: 7, scope: !5833)
!5833 = distinct !DILexicalBlock(scope: !5829, file: !5809, line: 35, column: 7)
!5834 = !DILocation(line: 35, column: 12, scope: !5833)
!5835 = !DILocation(line: 35, column: 7, scope: !5829)
!5836 = !DILocation(line: 36, column: 4, scope: !5833)
!5837 = !DILocation(line: 38, column: 10, scope: !5829)
!5838 = !DILocation(line: 38, column: 28, scope: !5829)
!5839 = !DILocation(line: 38, column: 41, scope: !5829)
!5840 = !DILocation(line: 38, column: 3, scope: !5829)
!5841 = !DILocation(line: 41, column: 6, scope: !5808)
!5842 = !DILocation(line: 42, column: 7, scope: !5808)
!5843 = !DILocation(line: 46, column: 15, scope: !5808)
!5844 = !DILocation(line: 374, column: 2, scope: !5813, inlinedAt: !5818)
!5845 = !DILocation(line: 376, column: 14, scope: !5813, inlinedAt: !5818)
!5846 = !{i32 331014}
!5847 = !DILocation(line: 377, column: 9, scope: !5813, inlinedAt: !5818)
!5848 = !DILocation(line: 377, column: 16, scope: !5813, inlinedAt: !5818)
!5849 = !DILocation(line: 46, column: 2, scope: !5808)
!5850 = !DILocation(line: 48, column: 1, scope: !5808)
!5851 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5852, file: !5852, line: 30, type: !5853, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!5852 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5853 = !DISubroutineType(types: !5854)
!5854 = !{!146, !463}
!5855 = !DILocation(line: 366, column: 40, scope: !5813, inlinedAt: !5856)
!5856 = distinct !DILocation(line: 32, column: 9, scope: !5851)
!5857 = !DILocation(line: 368, column: 6, scope: !5813, inlinedAt: !5856)
!5858 = !DILocalVariable(name: "n", arg: 1, scope: !5851, file: !5852, line: 30, type: !463)
!5859 = !DILocation(line: 30, column: 21, scope: !5851)
!5860 = !DILocation(line: 32, column: 15, scope: !5851)
!5861 = !DILocation(line: 374, column: 2, scope: !5813, inlinedAt: !5856)
!5862 = !DILocation(line: 376, column: 14, scope: !5813, inlinedAt: !5856)
!5863 = !DILocation(line: 377, column: 9, scope: !5813, inlinedAt: !5856)
!5864 = !DILocation(line: 377, column: 16, scope: !5813, inlinedAt: !5856)
!5865 = !DILocation(line: 32, column: 18, scope: !5851)
!5866 = !DILocation(line: 32, column: 2, scope: !5851)
!5867 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5868, file: !5868, line: 137, type: !5869, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!5868 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5869 = !DISubroutineType(types: !5870)
!5870 = !{!149, !975, !2166, !364, !147}
!5871 = !DILocalVariable(name: "s", arg: 1, scope: !5867, file: !5868, line: 137, type: !975)
!5872 = !DILocation(line: 137, column: 54, scope: !5867)
!5873 = !DILocalVariable(name: "object", arg: 2, scope: !5867, file: !5868, line: 137, type: !2166)
!5874 = !DILocation(line: 137, column: 69, scope: !5867)
!5875 = !DILocalVariable(name: "size", arg: 3, scope: !5867, file: !5868, line: 138, type: !364)
!5876 = !DILocation(line: 138, column: 12, scope: !5867)
!5877 = !DILocalVariable(name: "flags", arg: 4, scope: !5867, file: !5868, line: 138, type: !147)
!5878 = !DILocation(line: 138, column: 24, scope: !5867)
!5879 = !DILocation(line: 140, column: 17, scope: !5867)
!5880 = !DILocation(line: 140, column: 2, scope: !5867)
!5881 = distinct !DISubprogram(name: "pci224_ao_set_data", scope: !3, file: !3, line: 387, type: !5882, scopeLine: 389, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!5882 = !DISubroutineType(types: !5883)
!5883 = !{null, !203, !146, !146, !7}
!5884 = !DILocalVariable(name: "dev", arg: 1, scope: !5881, file: !3, line: 387, type: !203)
!5885 = !DILocation(line: 387, column: 42, scope: !5881)
!5886 = !DILocalVariable(name: "chan", arg: 2, scope: !5881, file: !3, line: 387, type: !146)
!5887 = !DILocation(line: 387, column: 51, scope: !5881)
!5888 = !DILocalVariable(name: "range", arg: 3, scope: !5881, file: !3, line: 387, type: !146)
!5889 = !DILocation(line: 387, column: 61, scope: !5881)
!5890 = !DILocalVariable(name: "data", arg: 4, scope: !5881, file: !3, line: 388, type: !7)
!5891 = !DILocation(line: 388, column: 19, scope: !5881)
!5892 = !DILocalVariable(name: "board", scope: !5881, file: !3, line: 390, type: !4403)
!5893 = !DILocation(line: 390, column: 29, scope: !5881)
!5894 = !DILocation(line: 390, column: 37, scope: !5881)
!5895 = !DILocation(line: 390, column: 42, scope: !5881)
!5896 = !DILocalVariable(name: "devpriv", scope: !5881, file: !3, line: 391, type: !4352)
!5897 = !DILocation(line: 391, column: 25, scope: !5881)
!5898 = !DILocation(line: 391, column: 35, scope: !5881)
!5899 = !DILocation(line: 391, column: 40, scope: !5881)
!5900 = !DILocalVariable(name: "mangled", scope: !5881, file: !3, line: 392, type: !150)
!5901 = !DILocation(line: 392, column: 17, scope: !5881)
!5902 = !DILocation(line: 395, column: 12, scope: !5881)
!5903 = !DILocation(line: 395, column: 9, scope: !5881)
!5904 = !DILocation(line: 395, column: 7, scope: !5881)
!5905 = !DILocation(line: 395, column: 18, scope: !5881)
!5906 = !DILocation(line: 395, column: 23, scope: !5881)
!5907 = !DILocation(line: 395, column: 30, scope: !5881)
!5908 = !DILocation(line: 395, column: 2, scope: !5881)
!5909 = !DILocation(line: 397, column: 20, scope: !5881)
!5910 = !DILocation(line: 397, column: 2, scope: !5881)
!5911 = !DILocation(line: 397, column: 11, scope: !5881)
!5912 = !DILocation(line: 397, column: 18, scope: !5881)
!5913 = !DILocation(line: 400, column: 7, scope: !5881)
!5914 = !DILocation(line: 400, column: 16, scope: !5881)
!5915 = !DILocation(line: 400, column: 23, scope: !5881)
!5916 = !DILocation(line: 401, column: 7, scope: !5881)
!5917 = !DILocation(line: 401, column: 12, scope: !5881)
!5918 = !DILocation(line: 401, column: 19, scope: !5881)
!5919 = !DILocation(line: 400, column: 2, scope: !5881)
!5920 = !DILocation(line: 407, column: 28, scope: !5881)
!5921 = !DILocation(line: 407, column: 12, scope: !5881)
!5922 = !DILocation(line: 407, column: 42, scope: !5881)
!5923 = !DILocation(line: 407, column: 49, scope: !5881)
!5924 = !DILocation(line: 407, column: 40, scope: !5881)
!5925 = !DILocation(line: 407, column: 33, scope: !5881)
!5926 = !DILocation(line: 407, column: 10, scope: !5881)
!5927 = !DILocation(line: 408, column: 7, scope: !5928)
!5928 = distinct !DILexicalBlock(scope: !5881, file: !3, line: 408, column: 6)
!5929 = !DILocation(line: 408, column: 16, scope: !5928)
!5930 = !DILocation(line: 408, column: 23, scope: !5928)
!5931 = !DILocation(line: 408, column: 51, scope: !5928)
!5932 = !DILocation(line: 408, column: 6, scope: !5881)
!5933 = !DILocation(line: 410, column: 11, scope: !5934)
!5934 = distinct !DILexicalBlock(scope: !5928, file: !3, line: 409, column: 30)
!5935 = !DILocation(line: 411, column: 2, scope: !5934)
!5936 = !DILocation(line: 413, column: 7, scope: !5881)
!5937 = !DILocation(line: 413, column: 16, scope: !5881)
!5938 = !DILocation(line: 413, column: 21, scope: !5881)
!5939 = !DILocation(line: 413, column: 28, scope: !5881)
!5940 = !DILocation(line: 413, column: 2, scope: !5881)
!5941 = !DILocation(line: 415, column: 6, scope: !5881)
!5942 = !DILocation(line: 415, column: 11, scope: !5881)
!5943 = !DILocation(line: 415, column: 18, scope: !5881)
!5944 = !DILocation(line: 415, column: 2, scope: !5881)
!5945 = !DILocation(line: 416, column: 1, scope: !5881)
!5946 = distinct !DISubprogram(name: "inw", scope: !4935, file: !4935, line: 335, type: !5947, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!5947 = !DISubroutineType(types: !5948)
!5948 = !{!150, !146}
!5949 = !DILocalVariable(name: "port", arg: 1, scope: !5946, file: !4935, line: 335, type: !146)
!5950 = !DILocation(line: 335, column: 1, scope: !5946)
!5951 = !DILocalVariable(name: "value", scope: !5946, file: !4935, line: 335, type: !150)
!5952 = !{i32 -2143296245}
!5953 = distinct !DISubprogram(name: "pci224_ao_start_pacer", scope: !3, file: !3, line: 807, type: !5954, scopeLine: 809, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!5954 = !DISubroutineType(types: !5955)
!5955 = !{null, !203, !237}
!5956 = !DILocalVariable(name: "dev", arg: 1, scope: !5953, file: !3, line: 807, type: !203)
!5957 = !DILocation(line: 807, column: 57, scope: !5953)
!5958 = !DILocalVariable(name: "s", arg: 2, scope: !5953, file: !3, line: 808, type: !237)
!5959 = !DILocation(line: 808, column: 32, scope: !5953)
!5960 = !DILocalVariable(name: "devpriv", scope: !5953, file: !3, line: 810, type: !4352)
!5961 = !DILocation(line: 810, column: 25, scope: !5953)
!5962 = !DILocation(line: 810, column: 35, scope: !5953)
!5963 = !DILocation(line: 810, column: 40, scope: !5953)
!5964 = !DILocation(line: 817, column: 7, scope: !5953)
!5965 = !DILocation(line: 817, column: 38, scope: !5953)
!5966 = !DILocation(line: 817, column: 47, scope: !5953)
!5967 = !DILocation(line: 817, column: 55, scope: !5953)
!5968 = !DILocation(line: 817, column: 2, scope: !5953)
!5969 = !DILocation(line: 820, column: 7, scope: !5953)
!5970 = !DILocation(line: 820, column: 38, scope: !5953)
!5971 = !DILocation(line: 820, column: 47, scope: !5953)
!5972 = !DILocation(line: 820, column: 55, scope: !5953)
!5973 = !DILocation(line: 820, column: 2, scope: !5953)
!5974 = !DILocation(line: 822, column: 7, scope: !5953)
!5975 = !DILocation(line: 823, column: 7, scope: !5953)
!5976 = !DILocation(line: 823, column: 16, scope: !5953)
!5977 = !DILocation(line: 823, column: 24, scope: !5953)
!5978 = !DILocation(line: 822, column: 2, scope: !5953)
!5979 = !DILocation(line: 825, column: 7, scope: !5953)
!5980 = !DILocation(line: 826, column: 7, scope: !5953)
!5981 = !DILocation(line: 826, column: 16, scope: !5953)
!5982 = !DILocation(line: 826, column: 24, scope: !5953)
!5983 = !DILocation(line: 825, column: 2, scope: !5953)
!5984 = !DILocation(line: 828, column: 27, scope: !5953)
!5985 = !DILocation(line: 828, column: 32, scope: !5953)
!5986 = !DILocation(line: 828, column: 2, scope: !5953)
!5987 = !DILocation(line: 829, column: 1, scope: !5953)
!5988 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !5989, file: !5989, line: 666, type: !5990, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!5989 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!5990 = !DISubroutineType(types: !5991)
!5991 = !{!151}
!5992 = !DILocalVariable(name: "f", scope: !5988, file: !5989, line: 668, type: !151)
!5993 = !DILocation(line: 668, column: 16, scope: !5988)
!5994 = !DILocation(line: 670, column: 6, scope: !5988)
!5995 = !DILocation(line: 670, column: 4, scope: !5988)
!5996 = !DILocation(line: 671, column: 2, scope: !5988)
!5997 = !DILocation(line: 672, column: 9, scope: !5988)
!5998 = !DILocation(line: 672, column: 2, scope: !5988)
!5999 = distinct !DISubprogram(name: "pci224_ao_inttrig_start", scope: !3, file: !3, line: 606, type: !3904, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!6000 = !DILocalVariable(name: "dev", arg: 1, scope: !5999, file: !3, line: 606, type: !203)
!6001 = !DILocation(line: 606, column: 58, scope: !5999)
!6002 = !DILocalVariable(name: "s", arg: 2, scope: !5999, file: !3, line: 607, type: !237)
!6003 = !DILocation(line: 607, column: 33, scope: !5999)
!6004 = !DILocalVariable(name: "trig_num", arg: 3, scope: !5999, file: !3, line: 608, type: !7)
!6005 = !DILocation(line: 608, column: 21, scope: !5999)
!6006 = !DILocalVariable(name: "cmd", scope: !5999, file: !3, line: 610, type: !3943)
!6007 = !DILocation(line: 610, column: 21, scope: !5999)
!6008 = !DILocation(line: 610, column: 28, scope: !5999)
!6009 = !DILocation(line: 610, column: 31, scope: !5999)
!6010 = !DILocation(line: 610, column: 38, scope: !5999)
!6011 = !DILocation(line: 612, column: 6, scope: !6012)
!6012 = distinct !DILexicalBlock(scope: !5999, file: !3, line: 612, column: 6)
!6013 = !DILocation(line: 612, column: 18, scope: !6012)
!6014 = !DILocation(line: 612, column: 23, scope: !6012)
!6015 = !DILocation(line: 612, column: 15, scope: !6012)
!6016 = !DILocation(line: 612, column: 6, scope: !5999)
!6017 = !DILocation(line: 613, column: 3, scope: !6012)
!6018 = !DILocation(line: 615, column: 2, scope: !5999)
!6019 = !DILocation(line: 615, column: 5, scope: !5999)
!6020 = !DILocation(line: 615, column: 12, scope: !5999)
!6021 = !DILocation(line: 615, column: 20, scope: !5999)
!6022 = !DILocation(line: 616, column: 18, scope: !5999)
!6023 = !DILocation(line: 616, column: 23, scope: !5999)
!6024 = !DILocation(line: 616, column: 2, scope: !5999)
!6025 = !DILocation(line: 618, column: 2, scope: !5999)
!6026 = !DILocation(line: 619, column: 1, scope: !5999)
!6027 = distinct !DISubprogram(name: "pci224_gat_config", scope: !3, file: !3, line: 214, type: !6028, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!6028 = !DISubroutineType(types: !6029)
!6029 = !{!7, !7, !7}
!6030 = !DILocalVariable(name: "chan", arg: 1, scope: !6027, file: !3, line: 214, type: !7)
!6031 = !DILocation(line: 214, column: 52, scope: !6027)
!6032 = !DILocalVariable(name: "src", arg: 2, scope: !6027, file: !3, line: 214, type: !7)
!6033 = !DILocation(line: 214, column: 71, scope: !6027)
!6034 = !DILocation(line: 216, column: 11, scope: !6027)
!6035 = !DILocation(line: 216, column: 16, scope: !6027)
!6036 = !DILocation(line: 216, column: 21, scope: !6027)
!6037 = !DILocation(line: 216, column: 30, scope: !6027)
!6038 = !DILocation(line: 216, column: 34, scope: !6027)
!6039 = !DILocation(line: 216, column: 27, scope: !6027)
!6040 = !DILocation(line: 216, column: 2, scope: !6027)
!6041 = distinct !DISubprogram(name: "pci224_clk_config", scope: !3, file: !3, line: 201, type: !6028, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!6042 = !DILocalVariable(name: "chan", arg: 1, scope: !6041, file: !3, line: 201, type: !7)
!6043 = !DILocation(line: 201, column: 52, scope: !6041)
!6044 = !DILocalVariable(name: "src", arg: 2, scope: !6041, file: !3, line: 201, type: !7)
!6045 = !DILocation(line: 201, column: 71, scope: !6041)
!6046 = !DILocation(line: 203, column: 11, scope: !6041)
!6047 = !DILocation(line: 203, column: 16, scope: !6041)
!6048 = !DILocation(line: 203, column: 21, scope: !6041)
!6049 = !DILocation(line: 203, column: 30, scope: !6041)
!6050 = !DILocation(line: 203, column: 34, scope: !6041)
!6051 = !DILocation(line: 203, column: 27, scope: !6041)
!6052 = !DILocation(line: 203, column: 2, scope: !6041)
!6053 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !5989, file: !5989, line: 646, type: !5990, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!6054 = !DILocalVariable(name: "__ret", scope: !6055, file: !5989, line: 648, type: !151)
!6055 = distinct !DILexicalBlock(scope: !6053, file: !5989, line: 648, column: 9)
!6056 = !DILocation(line: 648, column: 9, scope: !6055)
!6057 = !DILocalVariable(name: "__edi", scope: !6055, file: !5989, line: 648, type: !151)
!6058 = !DILocalVariable(name: "__esi", scope: !6055, file: !5989, line: 648, type: !151)
!6059 = !DILocalVariable(name: "__edx", scope: !6055, file: !5989, line: 648, type: !151)
!6060 = !DILocalVariable(name: "__ecx", scope: !6055, file: !5989, line: 648, type: !151)
!6061 = !DILocalVariable(name: "__eax", scope: !6055, file: !5989, line: 648, type: !151)
!6062 = !DILocation(line: 648, column: 9, scope: !6063)
!6063 = distinct !DILexicalBlock(scope: !6064, file: !5989, line: 648, column: 9)
!6064 = distinct !DILexicalBlock(scope: !6055, file: !5989, line: 648, column: 9)
!6065 = !{i32 -2145756945, i32 -2145754630, i32 -2145754396, i32 -2145754345, i32 -2145754317, i32 -2145754292, i32 -2145754608, i32 -2145754595, i32 -2145754157, i32 -2145754038, i32 -2145754503, i32 -2145754476, i32 -2145754448, i32 -2145754418}
!6066 = !DILocalVariable(name: "__mask", scope: !6067, file: !5989, line: 648, type: !151)
!6067 = distinct !DILexicalBlock(scope: !6063, file: !5989, line: 648, column: 9)
!6068 = !DILocation(line: 648, column: 9, scope: !6067)
!6069 = !DILocation(line: 648, column: 9, scope: !6064)
!6070 = !DILocation(line: 648, column: 2, scope: !6053)
!6071 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !5989, file: !5989, line: 656, type: !164, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!6072 = !DILocalVariable(name: "__edi", scope: !6073, file: !5989, line: 658, type: !151)
!6073 = distinct !DILexicalBlock(scope: !6071, file: !5989, line: 658, column: 2)
!6074 = !DILocation(line: 658, column: 2, scope: !6073)
!6075 = !DILocalVariable(name: "__esi", scope: !6073, file: !5989, line: 658, type: !151)
!6076 = !DILocalVariable(name: "__edx", scope: !6073, file: !5989, line: 658, type: !151)
!6077 = !DILocalVariable(name: "__ecx", scope: !6073, file: !5989, line: 658, type: !151)
!6078 = !DILocalVariable(name: "__eax", scope: !6073, file: !5989, line: 658, type: !151)
!6079 = !{i32 -2145749851, i32 -2145749119, i32 -2145748885, i32 -2145748834, i32 -2145748806, i32 -2145748781, i32 -2145749097, i32 -2145749084, i32 -2145748646, i32 -2145748527, i32 -2145748992, i32 -2145748965, i32 -2145748937, i32 -2145748907}
!6080 = !DILocation(line: 659, column: 1, scope: !6071)
!6081 = distinct !DISubprogram(name: "pci224_ao_start", scope: !3, file: !3, line: 482, type: !5954, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!6082 = !DILocation(line: 407, column: 64, scope: !5004, inlinedAt: !6083)
!6083 = distinct !DILocation(line: 499, column: 2, scope: !6081)
!6084 = !DILocation(line: 407, column: 84, scope: !5004, inlinedAt: !6083)
!6085 = !DILocation(line: 327, column: 67, scope: !4386, inlinedAt: !6086)
!6086 = distinct !DILocation(line: 492, column: 2, scope: !6087)
!6087 = distinct !DILexicalBlock(scope: !6088, file: !3, line: 492, column: 2)
!6088 = distinct !DILexicalBlock(scope: !6089, file: !3, line: 492, column: 2)
!6089 = distinct !DILexicalBlock(scope: !6090, file: !3, line: 492, column: 2)
!6090 = distinct !DILexicalBlock(scope: !6091, file: !3, line: 492, column: 2)
!6091 = distinct !DILexicalBlock(scope: !6081, file: !3, line: 492, column: 2)
!6092 = !DILocalVariable(name: "dev", arg: 1, scope: !6081, file: !3, line: 482, type: !203)
!6093 = !DILocation(line: 482, column: 51, scope: !6081)
!6094 = !DILocalVariable(name: "s", arg: 2, scope: !6081, file: !3, line: 483, type: !237)
!6095 = !DILocation(line: 483, column: 33, scope: !6081)
!6096 = !DILocalVariable(name: "devpriv", scope: !6081, file: !3, line: 485, type: !4352)
!6097 = !DILocation(line: 485, column: 25, scope: !6081)
!6098 = !DILocation(line: 485, column: 35, scope: !6081)
!6099 = !DILocation(line: 485, column: 40, scope: !6081)
!6100 = !DILocalVariable(name: "cmd", scope: !6081, file: !3, line: 486, type: !3943)
!6101 = !DILocation(line: 486, column: 21, scope: !6081)
!6102 = !DILocation(line: 486, column: 28, scope: !6081)
!6103 = !DILocation(line: 486, column: 31, scope: !6081)
!6104 = !DILocation(line: 486, column: 38, scope: !6081)
!6105 = !DILocalVariable(name: "flags", scope: !6081, file: !3, line: 487, type: !151)
!6106 = !DILocation(line: 487, column: 16, scope: !6081)
!6107 = !DILocation(line: 489, column: 27, scope: !6081)
!6108 = !DILocation(line: 489, column: 36, scope: !6081)
!6109 = !DILocation(line: 489, column: 2, scope: !6081)
!6110 = !DILocation(line: 492, column: 2, scope: !6081)
!6111 = !DILocation(line: 492, column: 2, scope: !6091)
!6112 = !DILocalVariable(name: "__dummy", scope: !6113, file: !3, line: 492, type: !151)
!6113 = distinct !DILexicalBlock(scope: !6090, file: !3, line: 492, column: 2)
!6114 = !DILocation(line: 492, column: 2, scope: !6113)
!6115 = !DILocalVariable(name: "__dummy2", scope: !6113, file: !3, line: 492, type: !151)
!6116 = !DILocation(line: 492, column: 2, scope: !6090)
!6117 = !DILocation(line: 492, column: 2, scope: !6089)
!6118 = !DILocation(line: 492, column: 2, scope: !6119)
!6119 = distinct !DILexicalBlock(scope: !6089, file: !3, line: 492, column: 2)
!6120 = !DILocalVariable(name: "__dummy", scope: !6121, file: !3, line: 492, type: !151)
!6121 = distinct !DILexicalBlock(scope: !6122, file: !3, line: 492, column: 2)
!6122 = distinct !DILexicalBlock(scope: !6119, file: !3, line: 492, column: 2)
!6123 = !DILocation(line: 492, column: 2, scope: !6121)
!6124 = !DILocalVariable(name: "__dummy2", scope: !6121, file: !3, line: 492, type: !151)
!6125 = !DILocation(line: 492, column: 2, scope: !6122)
!6126 = !DILocation(line: 492, column: 2, scope: !6088)
!6127 = !{i32 -2141606318}
!6128 = !DILocation(line: 492, column: 2, scope: !6087)
!6129 = !DILocation(line: 329, column: 10, scope: !4386, inlinedAt: !6086)
!6130 = !DILocation(line: 329, column: 16, scope: !4386, inlinedAt: !6086)
!6131 = !DILocation(line: 493, column: 6, scope: !6132)
!6132 = distinct !DILexicalBlock(scope: !6081, file: !3, line: 493, column: 6)
!6133 = !DILocation(line: 493, column: 11, scope: !6132)
!6134 = !DILocation(line: 493, column: 20, scope: !6132)
!6135 = !DILocation(line: 493, column: 6, scope: !6081)
!6136 = !DILocation(line: 494, column: 3, scope: !6132)
!6137 = !DILocation(line: 494, column: 12, scope: !6132)
!6138 = !DILocation(line: 494, column: 19, scope: !6132)
!6139 = !DILocation(line: 496, column: 3, scope: !6132)
!6140 = !DILocation(line: 496, column: 12, scope: !6132)
!6141 = !DILocation(line: 496, column: 19, scope: !6132)
!6142 = !DILocation(line: 498, column: 7, scope: !6081)
!6143 = !DILocation(line: 498, column: 16, scope: !6081)
!6144 = !DILocation(line: 498, column: 24, scope: !6081)
!6145 = !DILocation(line: 498, column: 33, scope: !6081)
!6146 = !DILocation(line: 498, column: 41, scope: !6081)
!6147 = !DILocation(line: 498, column: 2, scope: !6081)
!6148 = !DILocation(line: 499, column: 26, scope: !6081)
!6149 = !DILocation(line: 499, column: 35, scope: !6081)
!6150 = !DILocation(line: 499, column: 48, scope: !6081)
!6151 = !DILocation(line: 409, column: 2, scope: !5187, inlinedAt: !6083)
!6152 = !DILocation(line: 409, column: 2, scope: !5192, inlinedAt: !6083)
!6153 = !DILocation(line: 409, column: 2, scope: !5193, inlinedAt: !6083)
!6154 = !DILocation(line: 409, column: 2, scope: !5200, inlinedAt: !6083)
!6155 = !DILocation(line: 409, column: 2, scope: !5203, inlinedAt: !6083)
!6156 = !DILocation(line: 500, column: 1, scope: !6081)
!6157 = distinct !DISubprogram(name: "set_bit", scope: !6158, file: !6158, line: 26, type: !6159, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!6158 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!6159 = !DISubroutineType(types: !6160)
!6160 = !{null, !157, !6161}
!6161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6162, size: 64)
!6162 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !151)
!6163 = !DILocalVariable(name: "nr", arg: 1, scope: !6164, file: !5814, line: 52, type: !157)
!6164 = distinct !DISubprogram(name: "arch_set_bit", scope: !5814, file: !5814, line: 52, type: !6159, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!6165 = !DILocation(line: 52, column: 19, scope: !6164, inlinedAt: !6166)
!6166 = distinct !DILocation(line: 29, column: 2, scope: !6157)
!6167 = !DILocalVariable(name: "addr", arg: 2, scope: !6164, file: !5814, line: 52, type: !6161)
!6168 = !DILocation(line: 52, column: 47, scope: !6164, inlinedAt: !6166)
!6169 = !DILocalVariable(name: "v", arg: 1, scope: !6170, file: !6171, line: 84, type: !6174)
!6170 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !6171, file: !6171, line: 84, type: !6172, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!6171 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!6172 = !DISubroutineType(types: !6173)
!6173 = !{null, !6174, !364}
!6174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6175, size: 64)
!6175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6176)
!6176 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6177 = !DILocation(line: 84, column: 74, scope: !6170, inlinedAt: !6178)
!6178 = distinct !DILocation(line: 28, column: 2, scope: !6157)
!6179 = !DILocalVariable(name: "size", arg: 2, scope: !6170, file: !6171, line: 84, type: !364)
!6180 = !DILocation(line: 84, column: 84, scope: !6170, inlinedAt: !6178)
!6181 = !DILocalVariable(name: "nr", arg: 1, scope: !6157, file: !6158, line: 26, type: !157)
!6182 = !DILocation(line: 26, column: 33, scope: !6157)
!6183 = !DILocalVariable(name: "addr", arg: 2, scope: !6157, file: !6158, line: 26, type: !6161)
!6184 = !DILocation(line: 26, column: 61, scope: !6157)
!6185 = !DILocation(line: 28, column: 26, scope: !6157)
!6186 = !DILocation(line: 28, column: 33, scope: !6157)
!6187 = !DILocation(line: 28, column: 31, scope: !6157)
!6188 = !DILocation(line: 86, column: 20, scope: !6170, inlinedAt: !6178)
!6189 = !DILocation(line: 86, column: 23, scope: !6170, inlinedAt: !6178)
!6190 = !DILocation(line: 86, column: 2, scope: !6170, inlinedAt: !6178)
!6191 = !DILocation(line: 87, column: 2, scope: !6170, inlinedAt: !6178)
!6192 = !DILocation(line: 29, column: 15, scope: !6157)
!6193 = !DILocation(line: 29, column: 19, scope: !6157)
!6194 = !DILocation(line: 54, column: 27, scope: !6195, inlinedAt: !6166)
!6195 = distinct !DILexicalBlock(scope: !6164, file: !5814, line: 54, column: 6)
!6196 = !DILocation(line: 54, column: 6, scope: !6195, inlinedAt: !6166)
!6197 = !DILocation(line: 54, column: 6, scope: !6164, inlinedAt: !6166)
!6198 = !DILocation(line: 56, column: 6, scope: !6199, inlinedAt: !6166)
!6199 = distinct !DILexicalBlock(scope: !6195, file: !5814, line: 54, column: 32)
!6200 = !DILocation(line: 57, column: 12, scope: !6199, inlinedAt: !6166)
!6201 = !DILocation(line: 55, column: 3, scope: !6199, inlinedAt: !6166)
!6202 = !{i32 -2147121207}
!6203 = !DILocation(line: 59, column: 2, scope: !6199, inlinedAt: !6166)
!6204 = !DILocation(line: 61, column: 8, scope: !6205, inlinedAt: !6166)
!6205 = distinct !DILexicalBlock(scope: !6195, file: !5814, line: 59, column: 9)
!6206 = !DILocation(line: 61, column: 32, scope: !6205, inlinedAt: !6166)
!6207 = !DILocation(line: 60, column: 3, scope: !6205, inlinedAt: !6166)
!6208 = !{i32 -2147121075}
!6209 = !DILocation(line: 30, column: 1, scope: !6157)
!6210 = distinct !DISubprogram(name: "kasan_check_write", scope: !6211, file: !6211, line: 38, type: !6212, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!6211 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!6212 = !DISubroutineType(types: !6213)
!6213 = !{!231, !6174, !7}
!6214 = !DILocalVariable(name: "p", arg: 1, scope: !6210, file: !6211, line: 38, type: !6174)
!6215 = !DILocation(line: 38, column: 59, scope: !6210)
!6216 = !DILocalVariable(name: "size", arg: 2, scope: !6210, file: !6211, line: 38, type: !7)
!6217 = !DILocation(line: 38, column: 75, scope: !6210)
!6218 = !DILocation(line: 40, column: 2, scope: !6210)
!6219 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6220, file: !6220, line: 178, type: !6221, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!6220 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!6221 = !DISubroutineType(types: !6222)
!6222 = !{null, !6174, !364, !146}
!6223 = !DILocalVariable(name: "ptr", arg: 1, scope: !6219, file: !6220, line: 178, type: !6174)
!6224 = !DILocation(line: 178, column: 60, scope: !6219)
!6225 = !DILocalVariable(name: "size", arg: 2, scope: !6219, file: !6220, line: 178, type: !364)
!6226 = !DILocation(line: 178, column: 72, scope: !6219)
!6227 = !DILocalVariable(name: "type", arg: 3, scope: !6219, file: !6220, line: 179, type: !146)
!6228 = !DILocation(line: 179, column: 15, scope: !6219)
!6229 = !DILocation(line: 179, column: 23, scope: !6219)
!6230 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !5989, file: !5989, line: 651, type: !6231, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!6231 = !DISubroutineType(types: !6232)
!6232 = !{null, !151}
!6233 = !DILocalVariable(name: "f", arg: 1, scope: !6230, file: !5989, line: 651, type: !151)
!6234 = !DILocation(line: 651, column: 65, scope: !6230)
!6235 = !DILocalVariable(name: "__edi", scope: !6236, file: !5989, line: 653, type: !151)
!6236 = distinct !DILexicalBlock(scope: !6230, file: !5989, line: 653, column: 2)
!6237 = !DILocation(line: 653, column: 2, scope: !6236)
!6238 = !DILocalVariable(name: "__esi", scope: !6236, file: !5989, line: 653, type: !151)
!6239 = !DILocalVariable(name: "__edx", scope: !6236, file: !5989, line: 653, type: !151)
!6240 = !DILocalVariable(name: "__ecx", scope: !6236, file: !5989, line: 653, type: !151)
!6241 = !DILocalVariable(name: "__eax", scope: !6236, file: !5989, line: 653, type: !151)
!6242 = !{i32 -2145752478, i32 -2145751728, i32 -2145751494, i32 -2145751443, i32 -2145751415, i32 -2145751390, i32 -2145751706, i32 -2145751693, i32 -2145751255, i32 -2145751136, i32 -2145751601, i32 -2145751574, i32 -2145751546, i32 -2145751516}
!6243 = !DILocation(line: 654, column: 1, scope: !6230)
!6244 = distinct !DISubprogram(name: "comedi_check_trigger_src", scope: !135, file: !135, line: 859, type: !6245, scopeLine: 861, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!6245 = !DISubroutineType(types: !6246)
!6246 = !{!146, !2722, !7}
!6247 = !DILocalVariable(name: "src", arg: 1, scope: !6244, file: !135, line: 859, type: !2722)
!6248 = !DILocation(line: 859, column: 58, scope: !6244)
!6249 = !DILocalVariable(name: "flags", arg: 2, scope: !6244, file: !135, line: 860, type: !7)
!6250 = !DILocation(line: 860, column: 22, scope: !6244)
!6251 = !DILocalVariable(name: "orig_src", scope: !6244, file: !135, line: 862, type: !7)
!6252 = !DILocation(line: 862, column: 15, scope: !6244)
!6253 = !DILocation(line: 862, column: 27, scope: !6244)
!6254 = !DILocation(line: 862, column: 26, scope: !6244)
!6255 = !DILocation(line: 864, column: 9, scope: !6244)
!6256 = !DILocation(line: 864, column: 20, scope: !6244)
!6257 = !DILocation(line: 864, column: 18, scope: !6244)
!6258 = !DILocation(line: 864, column: 3, scope: !6244)
!6259 = !DILocation(line: 864, column: 7, scope: !6244)
!6260 = !DILocation(line: 865, column: 7, scope: !6261)
!6261 = distinct !DILexicalBlock(scope: !6244, file: !135, line: 865, column: 6)
!6262 = !DILocation(line: 865, column: 6, scope: !6261)
!6263 = !DILocation(line: 865, column: 11, scope: !6261)
!6264 = !DILocation(line: 865, column: 27, scope: !6261)
!6265 = !DILocation(line: 865, column: 31, scope: !6261)
!6266 = !DILocation(line: 865, column: 30, scope: !6261)
!6267 = !DILocation(line: 865, column: 38, scope: !6261)
!6268 = !DILocation(line: 865, column: 35, scope: !6261)
!6269 = !DILocation(line: 865, column: 6, scope: !6244)
!6270 = !DILocation(line: 866, column: 3, scope: !6261)
!6271 = !DILocation(line: 867, column: 2, scope: !6244)
!6272 = !DILocation(line: 868, column: 1, scope: !6244)
!6273 = distinct !DISubprogram(name: "comedi_check_trigger_is_unique", scope: !135, file: !135, line: 878, type: !6274, scopeLine: 879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!6274 = !DISubroutineType(types: !6275)
!6275 = !{!146, !7}
!6276 = !DILocalVariable(name: "src", arg: 1, scope: !6273, file: !135, line: 878, type: !7)
!6277 = !DILocation(line: 878, column: 63, scope: !6273)
!6278 = !DILocation(line: 881, column: 7, scope: !6279)
!6279 = distinct !DILexicalBlock(scope: !6273, file: !135, line: 881, column: 6)
!6280 = !DILocation(line: 881, column: 14, scope: !6279)
!6281 = !DILocation(line: 881, column: 18, scope: !6279)
!6282 = !DILocation(line: 881, column: 11, scope: !6279)
!6283 = !DILocation(line: 881, column: 24, scope: !6279)
!6284 = !DILocation(line: 881, column: 6, scope: !6273)
!6285 = !DILocation(line: 882, column: 3, scope: !6279)
!6286 = !DILocation(line: 883, column: 2, scope: !6273)
!6287 = !DILocation(line: 884, column: 1, scope: !6273)
!6288 = distinct !DISubprogram(name: "comedi_check_trigger_arg_is", scope: !135, file: !135, line: 897, type: !6245, scopeLine: 899, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!6289 = !DILocalVariable(name: "arg", arg: 1, scope: !6288, file: !135, line: 897, type: !2722)
!6290 = !DILocation(line: 897, column: 61, scope: !6288)
!6291 = !DILocalVariable(name: "val", arg: 2, scope: !6288, file: !135, line: 898, type: !7)
!6292 = !DILocation(line: 898, column: 25, scope: !6288)
!6293 = !DILocation(line: 900, column: 7, scope: !6294)
!6294 = distinct !DILexicalBlock(scope: !6288, file: !135, line: 900, column: 6)
!6295 = !DILocation(line: 900, column: 6, scope: !6294)
!6296 = !DILocation(line: 900, column: 14, scope: !6294)
!6297 = !DILocation(line: 900, column: 11, scope: !6294)
!6298 = !DILocation(line: 900, column: 6, scope: !6288)
!6299 = !DILocation(line: 901, column: 10, scope: !6300)
!6300 = distinct !DILexicalBlock(scope: !6294, file: !135, line: 900, column: 19)
!6301 = !DILocation(line: 901, column: 4, scope: !6300)
!6302 = !DILocation(line: 901, column: 8, scope: !6300)
!6303 = !DILocation(line: 902, column: 3, scope: !6300)
!6304 = !DILocation(line: 904, column: 2, scope: !6288)
!6305 = !DILocation(line: 905, column: 1, scope: !6288)
!6306 = distinct !DISubprogram(name: "comedi_check_trigger_arg_max", scope: !135, file: !135, line: 939, type: !6245, scopeLine: 941, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!6307 = !DILocalVariable(name: "arg", arg: 1, scope: !6306, file: !135, line: 939, type: !2722)
!6308 = !DILocation(line: 939, column: 62, scope: !6306)
!6309 = !DILocalVariable(name: "val", arg: 2, scope: !6306, file: !135, line: 940, type: !7)
!6310 = !DILocation(line: 940, column: 26, scope: !6306)
!6311 = !DILocation(line: 942, column: 7, scope: !6312)
!6312 = distinct !DILexicalBlock(scope: !6306, file: !135, line: 942, column: 6)
!6313 = !DILocation(line: 942, column: 6, scope: !6312)
!6314 = !DILocation(line: 942, column: 13, scope: !6312)
!6315 = !DILocation(line: 942, column: 11, scope: !6312)
!6316 = !DILocation(line: 942, column: 6, scope: !6306)
!6317 = !DILocation(line: 943, column: 10, scope: !6318)
!6318 = distinct !DILexicalBlock(scope: !6312, file: !135, line: 942, column: 18)
!6319 = !DILocation(line: 943, column: 4, scope: !6318)
!6320 = !DILocation(line: 943, column: 8, scope: !6318)
!6321 = !DILocation(line: 944, column: 3, scope: !6318)
!6322 = !DILocation(line: 946, column: 2, scope: !6306)
!6323 = !DILocation(line: 947, column: 1, scope: !6306)
!6324 = distinct !DISubprogram(name: "comedi_check_trigger_arg_min", scope: !135, file: !135, line: 918, type: !6245, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!6325 = !DILocalVariable(name: "arg", arg: 1, scope: !6324, file: !135, line: 918, type: !2722)
!6326 = !DILocation(line: 918, column: 62, scope: !6324)
!6327 = !DILocalVariable(name: "val", arg: 2, scope: !6324, file: !135, line: 919, type: !7)
!6328 = !DILocation(line: 919, column: 26, scope: !6324)
!6329 = !DILocation(line: 921, column: 7, scope: !6330)
!6330 = distinct !DILexicalBlock(scope: !6324, file: !135, line: 921, column: 6)
!6331 = !DILocation(line: 921, column: 6, scope: !6330)
!6332 = !DILocation(line: 921, column: 13, scope: !6330)
!6333 = !DILocation(line: 921, column: 11, scope: !6330)
!6334 = !DILocation(line: 921, column: 6, scope: !6324)
!6335 = !DILocation(line: 922, column: 10, scope: !6336)
!6336 = distinct !DILexicalBlock(scope: !6330, file: !135, line: 921, column: 18)
!6337 = !DILocation(line: 922, column: 4, scope: !6336)
!6338 = !DILocation(line: 922, column: 8, scope: !6336)
!6339 = !DILocation(line: 923, column: 3, scope: !6336)
!6340 = !DILocation(line: 925, column: 2, scope: !6324)
!6341 = !DILocation(line: 926, column: 1, scope: !6324)
!6342 = distinct !DISubprogram(name: "pci224_ao_check_chanlist", scope: !3, file: !3, line: 621, type: !3941, scopeLine: 624, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!6343 = !DILocalVariable(name: "dev", arg: 1, scope: !6342, file: !3, line: 621, type: !203)
!6344 = !DILocation(line: 621, column: 59, scope: !6342)
!6345 = !DILocalVariable(name: "s", arg: 2, scope: !6342, file: !3, line: 622, type: !237)
!6346 = !DILocation(line: 622, column: 34, scope: !6342)
!6347 = !DILocalVariable(name: "cmd", arg: 3, scope: !6342, file: !3, line: 623, type: !3943)
!6348 = !DILocation(line: 623, column: 28, scope: !6342)
!6349 = !DILocalVariable(name: "board", scope: !6342, file: !3, line: 625, type: !4403)
!6350 = !DILocation(line: 625, column: 29, scope: !6342)
!6351 = !DILocation(line: 625, column: 37, scope: !6342)
!6352 = !DILocation(line: 625, column: 42, scope: !6342)
!6353 = !DILocalVariable(name: "range_check_0", scope: !6342, file: !3, line: 626, type: !7)
!6354 = !DILocation(line: 626, column: 15, scope: !6342)
!6355 = !DILocalVariable(name: "chan_mask", scope: !6342, file: !3, line: 627, type: !7)
!6356 = !DILocation(line: 627, column: 15, scope: !6342)
!6357 = !DILocalVariable(name: "i", scope: !6342, file: !3, line: 628, type: !146)
!6358 = !DILocation(line: 628, column: 6, scope: !6342)
!6359 = !DILocation(line: 630, column: 18, scope: !6342)
!6360 = !DILocation(line: 630, column: 25, scope: !6342)
!6361 = !DILocation(line: 630, column: 40, scope: !6342)
!6362 = !DILocation(line: 630, column: 16, scope: !6342)
!6363 = !DILocation(line: 631, column: 9, scope: !6364)
!6364 = distinct !DILexicalBlock(scope: !6342, file: !3, line: 631, column: 2)
!6365 = !DILocation(line: 631, column: 7, scope: !6364)
!6366 = !DILocation(line: 631, column: 14, scope: !6367)
!6367 = distinct !DILexicalBlock(scope: !6364, file: !3, line: 631, column: 2)
!6368 = !DILocation(line: 631, column: 18, scope: !6367)
!6369 = !DILocation(line: 631, column: 23, scope: !6367)
!6370 = !DILocation(line: 631, column: 16, scope: !6367)
!6371 = !DILocation(line: 631, column: 2, scope: !6364)
!6372 = !DILocalVariable(name: "chan", scope: !6373, file: !3, line: 632, type: !7)
!6373 = distinct !DILexicalBlock(scope: !6367, file: !3, line: 631, column: 42)
!6374 = !DILocation(line: 632, column: 16, scope: !6373)
!6375 = !DILocation(line: 632, column: 23, scope: !6373)
!6376 = !DILocation(line: 634, column: 7, scope: !6377)
!6377 = distinct !DILexicalBlock(scope: !6373, file: !3, line: 634, column: 7)
!6378 = !DILocation(line: 634, column: 25, scope: !6377)
!6379 = !DILocation(line: 634, column: 22, scope: !6377)
!6380 = !DILocation(line: 634, column: 17, scope: !6377)
!6381 = !DILocation(line: 634, column: 7, scope: !6373)
!6382 = !DILocation(line: 638, column: 4, scope: !6383)
!6383 = distinct !DILexicalBlock(scope: !6377, file: !3, line: 634, column: 32)
!6384 = !DILocation(line: 640, column: 21, scope: !6373)
!6385 = !DILocation(line: 640, column: 18, scope: !6373)
!6386 = !DILocation(line: 640, column: 13, scope: !6373)
!6387 = !DILocation(line: 642, column: 7, scope: !6388)
!6388 = distinct !DILexicalBlock(scope: !6373, file: !3, line: 642, column: 7)
!6389 = !DILocation(line: 642, column: 14, scope: !6388)
!6390 = !DILocation(line: 642, column: 29, scope: !6388)
!6391 = !DILocation(line: 643, column: 7, scope: !6388)
!6392 = !DILocation(line: 642, column: 57, scope: !6388)
!6393 = !DILocation(line: 642, column: 7, scope: !6373)
!6394 = !DILocation(line: 647, column: 4, scope: !6395)
!6395 = distinct !DILexicalBlock(scope: !6388, file: !3, line: 643, column: 22)
!6396 = !DILocation(line: 649, column: 2, scope: !6373)
!6397 = !DILocation(line: 631, column: 38, scope: !6367)
!6398 = !DILocation(line: 631, column: 2, scope: !6367)
!6399 = distinct !{!6399, !6371, !6400}
!6400 = !DILocation(line: 649, column: 2, scope: !6364)
!6401 = !DILocation(line: 651, column: 2, scope: !6342)
!6402 = !DILocation(line: 652, column: 1, scope: !6342)
!6403 = distinct !DISubprogram(name: "pci224_ao_stop", scope: !3, file: !3, line: 440, type: !5954, scopeLine: 442, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!6404 = !DILocation(line: 407, column: 64, scope: !5004, inlinedAt: !6405)
!6405 = distinct !DILocation(line: 468, column: 2, scope: !6403)
!6406 = !DILocation(line: 407, column: 84, scope: !5004, inlinedAt: !6405)
!6407 = !DILocation(line: 327, column: 67, scope: !4386, inlinedAt: !6408)
!6408 = distinct !DILocation(line: 466, column: 3, scope: !6409)
!6409 = distinct !DILexicalBlock(scope: !6410, file: !3, line: 466, column: 3)
!6410 = distinct !DILexicalBlock(scope: !6411, file: !3, line: 466, column: 3)
!6411 = distinct !DILexicalBlock(scope: !6412, file: !3, line: 466, column: 3)
!6412 = distinct !DILexicalBlock(scope: !6413, file: !3, line: 466, column: 3)
!6413 = distinct !DILexicalBlock(scope: !6414, file: !3, line: 466, column: 3)
!6414 = distinct !DILexicalBlock(scope: !6403, file: !3, line: 464, column: 66)
!6415 = !DILocation(line: 407, column: 64, scope: !5004, inlinedAt: !6416)
!6416 = distinct !DILocation(line: 465, column: 3, scope: !6414)
!6417 = !DILocation(line: 407, column: 84, scope: !5004, inlinedAt: !6416)
!6418 = !DILocation(line: 327, column: 67, scope: !4386, inlinedAt: !6419)
!6419 = distinct !DILocation(line: 449, column: 2, scope: !6420)
!6420 = distinct !DILexicalBlock(scope: !6421, file: !3, line: 449, column: 2)
!6421 = distinct !DILexicalBlock(scope: !6422, file: !3, line: 449, column: 2)
!6422 = distinct !DILexicalBlock(scope: !6423, file: !3, line: 449, column: 2)
!6423 = distinct !DILexicalBlock(scope: !6424, file: !3, line: 449, column: 2)
!6424 = distinct !DILexicalBlock(scope: !6403, file: !3, line: 449, column: 2)
!6425 = !DILocalVariable(name: "dev", arg: 1, scope: !6403, file: !3, line: 440, type: !203)
!6426 = !DILocation(line: 440, column: 50, scope: !6403)
!6427 = !DILocalVariable(name: "s", arg: 2, scope: !6403, file: !3, line: 441, type: !237)
!6428 = !DILocation(line: 441, column: 32, scope: !6403)
!6429 = !DILocalVariable(name: "devpriv", scope: !6403, file: !3, line: 443, type: !4352)
!6430 = !DILocation(line: 443, column: 25, scope: !6403)
!6431 = !DILocation(line: 443, column: 35, scope: !6403)
!6432 = !DILocation(line: 443, column: 40, scope: !6403)
!6433 = !DILocalVariable(name: "flags", scope: !6403, file: !3, line: 444, type: !151)
!6434 = !DILocation(line: 444, column: 16, scope: !6403)
!6435 = !DILocation(line: 446, column: 43, scope: !6436)
!6436 = distinct !DILexicalBlock(scope: !6403, file: !3, line: 446, column: 6)
!6437 = !DILocation(line: 446, column: 52, scope: !6436)
!6438 = !DILocation(line: 446, column: 7, scope: !6436)
!6439 = !DILocation(line: 446, column: 6, scope: !6403)
!6440 = !DILocation(line: 447, column: 3, scope: !6436)
!6441 = !DILocation(line: 449, column: 2, scope: !6403)
!6442 = !DILocation(line: 449, column: 2, scope: !6424)
!6443 = !DILocalVariable(name: "__dummy", scope: !6444, file: !3, line: 449, type: !151)
!6444 = distinct !DILexicalBlock(scope: !6423, file: !3, line: 449, column: 2)
!6445 = !DILocation(line: 449, column: 2, scope: !6444)
!6446 = !DILocalVariable(name: "__dummy2", scope: !6444, file: !3, line: 449, type: !151)
!6447 = !DILocation(line: 449, column: 2, scope: !6423)
!6448 = !DILocation(line: 449, column: 2, scope: !6422)
!6449 = !DILocation(line: 449, column: 2, scope: !6450)
!6450 = distinct !DILexicalBlock(scope: !6422, file: !3, line: 449, column: 2)
!6451 = !DILocalVariable(name: "__dummy", scope: !6452, file: !3, line: 449, type: !151)
!6452 = distinct !DILexicalBlock(scope: !6453, file: !3, line: 449, column: 2)
!6453 = distinct !DILexicalBlock(scope: !6450, file: !3, line: 449, column: 2)
!6454 = !DILocation(line: 449, column: 2, scope: !6452)
!6455 = !DILocalVariable(name: "__dummy2", scope: !6452, file: !3, line: 449, type: !151)
!6456 = !DILocation(line: 449, column: 2, scope: !6453)
!6457 = !DILocation(line: 449, column: 2, scope: !6421)
!6458 = !{i32 -2141609045}
!6459 = !DILocation(line: 449, column: 2, scope: !6420)
!6460 = !DILocation(line: 329, column: 10, scope: !4386, inlinedAt: !6419)
!6461 = !DILocation(line: 329, column: 16, scope: !4386, inlinedAt: !6419)
!6462 = !DILocation(line: 451, column: 2, scope: !6403)
!6463 = !DILocation(line: 451, column: 11, scope: !6403)
!6464 = !DILocation(line: 451, column: 18, scope: !6403)
!6465 = !DILocation(line: 452, column: 10, scope: !6403)
!6466 = !DILocation(line: 452, column: 19, scope: !6403)
!6467 = !DILocation(line: 452, column: 27, scope: !6403)
!6468 = !DILocation(line: 452, column: 2, scope: !6403)
!6469 = !DILocation(line: 464, column: 2, scope: !6403)
!6470 = !DILocation(line: 464, column: 9, scope: !6403)
!6471 = !DILocation(line: 464, column: 18, scope: !6403)
!6472 = !DILocation(line: 464, column: 31, scope: !6403)
!6473 = !DILocation(line: 464, column: 34, scope: !6403)
!6474 = !DILocation(line: 464, column: 43, scope: !6403)
!6475 = !DILocation(line: 464, column: 54, scope: !6403)
!6476 = !DILocation(line: 0, scope: !6403)
!6477 = !DILocation(line: 465, column: 27, scope: !6414)
!6478 = !DILocation(line: 465, column: 36, scope: !6414)
!6479 = !DILocation(line: 465, column: 49, scope: !6414)
!6480 = !DILocation(line: 409, column: 2, scope: !5187, inlinedAt: !6416)
!6481 = !DILocation(line: 409, column: 2, scope: !5192, inlinedAt: !6416)
!6482 = !DILocation(line: 409, column: 2, scope: !5193, inlinedAt: !6416)
!6483 = !DILocation(line: 409, column: 2, scope: !5200, inlinedAt: !6416)
!6484 = !DILocation(line: 409, column: 2, scope: !5203, inlinedAt: !6416)
!6485 = !DILocation(line: 466, column: 3, scope: !6414)
!6486 = !DILocation(line: 466, column: 3, scope: !6413)
!6487 = !DILocalVariable(name: "__dummy", scope: !6488, file: !3, line: 466, type: !151)
!6488 = distinct !DILexicalBlock(scope: !6412, file: !3, line: 466, column: 3)
!6489 = !DILocation(line: 466, column: 3, scope: !6488)
!6490 = !DILocalVariable(name: "__dummy2", scope: !6488, file: !3, line: 466, type: !151)
!6491 = !DILocation(line: 466, column: 3, scope: !6412)
!6492 = !DILocation(line: 466, column: 3, scope: !6411)
!6493 = !DILocation(line: 466, column: 3, scope: !6494)
!6494 = distinct !DILexicalBlock(scope: !6411, file: !3, line: 466, column: 3)
!6495 = !DILocalVariable(name: "__dummy", scope: !6496, file: !3, line: 466, type: !151)
!6496 = distinct !DILexicalBlock(scope: !6497, file: !3, line: 466, column: 3)
!6497 = distinct !DILexicalBlock(scope: !6494, file: !3, line: 466, column: 3)
!6498 = !DILocation(line: 466, column: 3, scope: !6496)
!6499 = !DILocalVariable(name: "__dummy2", scope: !6496, file: !3, line: 466, type: !151)
!6500 = !DILocation(line: 466, column: 3, scope: !6497)
!6501 = !DILocation(line: 466, column: 3, scope: !6410)
!6502 = !{i32 -2141607880}
!6503 = !DILocation(line: 466, column: 3, scope: !6409)
!6504 = !DILocation(line: 329, column: 10, scope: !4386, inlinedAt: !6408)
!6505 = !DILocation(line: 329, column: 16, scope: !4386, inlinedAt: !6408)
!6506 = distinct !{!6506, !6469, !6507}
!6507 = !DILocation(line: 467, column: 2, scope: !6403)
!6508 = !DILocation(line: 468, column: 26, scope: !6403)
!6509 = !DILocation(line: 468, column: 35, scope: !6403)
!6510 = !DILocation(line: 468, column: 48, scope: !6403)
!6511 = !DILocation(line: 409, column: 2, scope: !5187, inlinedAt: !6405)
!6512 = !DILocation(line: 409, column: 2, scope: !5192, inlinedAt: !6405)
!6513 = !DILocation(line: 409, column: 2, scope: !5193, inlinedAt: !6405)
!6514 = !DILocation(line: 409, column: 2, scope: !5200, inlinedAt: !6405)
!6515 = !DILocation(line: 409, column: 2, scope: !5203, inlinedAt: !6405)
!6516 = !DILocation(line: 470, column: 10, scope: !6403)
!6517 = !DILocation(line: 470, column: 15, scope: !6403)
!6518 = !DILocation(line: 470, column: 22, scope: !6403)
!6519 = !DILocation(line: 470, column: 2, scope: !6403)
!6520 = !DILocation(line: 472, column: 7, scope: !6403)
!6521 = !DILocation(line: 471, column: 2, scope: !6403)
!6522 = !DILocation(line: 471, column: 11, scope: !6403)
!6523 = !DILocation(line: 471, column: 18, scope: !6403)
!6524 = !DILocation(line: 475, column: 7, scope: !6403)
!6525 = !DILocation(line: 475, column: 16, scope: !6403)
!6526 = !DILocation(line: 475, column: 23, scope: !6403)
!6527 = !DILocation(line: 476, column: 7, scope: !6403)
!6528 = !DILocation(line: 476, column: 12, scope: !6403)
!6529 = !DILocation(line: 476, column: 19, scope: !6403)
!6530 = !DILocation(line: 475, column: 2, scope: !6403)
!6531 = !DILocation(line: 477, column: 1, scope: !6403)
!6532 = distinct !DISubprogram(name: "test_and_clear_bit", scope: !6158, file: !6158, line: 81, type: !6533, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!6533 = !DISubroutineType(types: !6534)
!6534 = !{!231, !157, !6161}
!6535 = !DILocalVariable(name: "nr", arg: 1, scope: !6536, file: !5814, line: 160, type: !157)
!6536 = distinct !DISubprogram(name: "arch_test_and_clear_bit", scope: !5814, file: !5814, line: 160, type: !6533, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!6537 = !DILocation(line: 160, column: 30, scope: !6536, inlinedAt: !6538)
!6538 = distinct !DILocation(line: 84, column: 9, scope: !6532)
!6539 = !DILocalVariable(name: "addr", arg: 2, scope: !6536, file: !5814, line: 160, type: !6161)
!6540 = !DILocation(line: 160, column: 58, scope: !6536, inlinedAt: !6538)
!6541 = !DILocalVariable(name: "c", scope: !6542, file: !5814, line: 162, type: !231)
!6542 = distinct !DILexicalBlock(scope: !6536, file: !5814, line: 162, column: 9)
!6543 = !DILocation(line: 162, column: 9, scope: !6542, inlinedAt: !6538)
!6544 = !DILocalVariable(name: "v", arg: 1, scope: !6545, file: !6171, line: 99, type: !6174)
!6545 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6171, file: !6171, line: 99, type: !6172, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!6546 = !DILocation(line: 99, column: 79, scope: !6545, inlinedAt: !6547)
!6547 = distinct !DILocation(line: 83, column: 2, scope: !6532)
!6548 = !DILocalVariable(name: "size", arg: 2, scope: !6545, file: !6171, line: 99, type: !364)
!6549 = !DILocation(line: 99, column: 89, scope: !6545, inlinedAt: !6547)
!6550 = !DILocalVariable(name: "nr", arg: 1, scope: !6532, file: !6158, line: 81, type: !157)
!6551 = !DILocation(line: 81, column: 44, scope: !6532)
!6552 = !DILocalVariable(name: "addr", arg: 2, scope: !6532, file: !6158, line: 81, type: !6161)
!6553 = !DILocation(line: 81, column: 72, scope: !6532)
!6554 = !DILocation(line: 83, column: 31, scope: !6532)
!6555 = !DILocation(line: 83, column: 38, scope: !6532)
!6556 = !DILocation(line: 83, column: 36, scope: !6532)
!6557 = !DILocation(line: 101, column: 20, scope: !6545, inlinedAt: !6547)
!6558 = !DILocation(line: 101, column: 23, scope: !6545, inlinedAt: !6547)
!6559 = !DILocation(line: 101, column: 2, scope: !6545, inlinedAt: !6547)
!6560 = !DILocation(line: 102, column: 2, scope: !6545, inlinedAt: !6547)
!6561 = !DILocation(line: 84, column: 33, scope: !6532)
!6562 = !DILocation(line: 84, column: 37, scope: !6532)
!6563 = !{i32 -2147114809, i32 -2147114713}
!6564 = !DILocation(line: 84, column: 2, scope: !6532)
!6565 = distinct !DISubprogram(name: "inb", scope: !4935, file: !4935, line: 334, type: !6566, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!6566 = !DISubroutineType(types: !6567)
!6567 = !{!469, !146}
!6568 = !DILocalVariable(name: "port", arg: 1, scope: !6565, file: !4935, line: 334, type: !146)
!6569 = !DILocation(line: 334, column: 1, scope: !6565)
!6570 = !DILocalVariable(name: "value", scope: !6565, file: !4935, line: 334, type: !469)
!6571 = !{i32 -2143298988}
!6572 = distinct !DISubprogram(name: "pci224_ao_handle_fifo", scope: !3, file: !3, line: 505, type: !5954, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!6573 = !DILocalVariable(name: "dev", arg: 1, scope: !6572, file: !3, line: 505, type: !203)
!6574 = !DILocation(line: 505, column: 57, scope: !6572)
!6575 = !DILocalVariable(name: "s", arg: 2, scope: !6572, file: !3, line: 506, type: !237)
!6576 = !DILocation(line: 506, column: 32, scope: !6572)
!6577 = !DILocalVariable(name: "devpriv", scope: !6572, file: !3, line: 508, type: !4352)
!6578 = !DILocation(line: 508, column: 25, scope: !6572)
!6579 = !DILocation(line: 508, column: 35, scope: !6572)
!6580 = !DILocation(line: 508, column: 40, scope: !6572)
!6581 = !DILocalVariable(name: "cmd", scope: !6572, file: !3, line: 509, type: !3943)
!6582 = !DILocation(line: 509, column: 21, scope: !6572)
!6583 = !DILocation(line: 509, column: 28, scope: !6572)
!6584 = !DILocation(line: 509, column: 31, scope: !6572)
!6585 = !DILocation(line: 509, column: 38, scope: !6572)
!6586 = !DILocalVariable(name: "num_scans", scope: !6572, file: !3, line: 510, type: !7)
!6587 = !DILocation(line: 510, column: 15, scope: !6572)
!6588 = !DILocation(line: 510, column: 46, scope: !6572)
!6589 = !DILocation(line: 510, column: 27, scope: !6572)
!6590 = !DILocalVariable(name: "room", scope: !6572, file: !3, line: 511, type: !7)
!6591 = !DILocation(line: 511, column: 15, scope: !6572)
!6592 = !DILocalVariable(name: "dacstat", scope: !6572, file: !3, line: 512, type: !150)
!6593 = !DILocation(line: 512, column: 17, scope: !6572)
!6594 = !DILocalVariable(name: "i", scope: !6572, file: !3, line: 513, type: !7)
!6595 = !DILocation(line: 513, column: 15, scope: !6572)
!6596 = !DILocalVariable(name: "n", scope: !6572, file: !3, line: 513, type: !7)
!6597 = !DILocation(line: 513, column: 18, scope: !6572)
!6598 = !DILocation(line: 516, column: 16, scope: !6572)
!6599 = !DILocation(line: 516, column: 21, scope: !6572)
!6600 = !DILocation(line: 516, column: 28, scope: !6572)
!6601 = !DILocation(line: 516, column: 12, scope: !6572)
!6602 = !DILocation(line: 516, column: 10, scope: !6572)
!6603 = !DILocation(line: 517, column: 10, scope: !6572)
!6604 = !DILocation(line: 517, column: 18, scope: !6572)
!6605 = !DILocation(line: 517, column: 2, scope: !6572)
!6606 = !DILocation(line: 519, column: 8, scope: !6607)
!6607 = distinct !DILexicalBlock(scope: !6572, file: !3, line: 517, column: 47)
!6608 = !DILocation(line: 520, column: 7, scope: !6609)
!6609 = distinct !DILexicalBlock(scope: !6607, file: !3, line: 520, column: 7)
!6610 = !DILocation(line: 520, column: 12, scope: !6609)
!6611 = !DILocation(line: 520, column: 21, scope: !6609)
!6612 = !DILocation(line: 520, column: 35, scope: !6609)
!6613 = !DILocation(line: 521, column: 7, scope: !6609)
!6614 = !DILocation(line: 521, column: 10, scope: !6609)
!6615 = !DILocation(line: 521, column: 17, scope: !6609)
!6616 = !DILocation(line: 521, column: 31, scope: !6609)
!6617 = !DILocation(line: 521, column: 36, scope: !6609)
!6618 = !DILocation(line: 521, column: 28, scope: !6609)
!6619 = !DILocation(line: 520, column: 7, scope: !6607)
!6620 = !DILocation(line: 523, column: 4, scope: !6621)
!6621 = distinct !DILexicalBlock(scope: !6609, file: !3, line: 521, column: 46)
!6622 = !DILocation(line: 523, column: 7, scope: !6621)
!6623 = !DILocation(line: 523, column: 14, scope: !6621)
!6624 = !DILocation(line: 523, column: 21, scope: !6621)
!6625 = !DILocation(line: 524, column: 25, scope: !6621)
!6626 = !DILocation(line: 524, column: 30, scope: !6621)
!6627 = !DILocation(line: 524, column: 4, scope: !6621)
!6628 = !DILocation(line: 525, column: 4, scope: !6621)
!6629 = !DILocation(line: 527, column: 3, scope: !6607)
!6630 = !DILocation(line: 529, column: 8, scope: !6607)
!6631 = !DILocation(line: 530, column: 3, scope: !6607)
!6632 = !DILocation(line: 532, column: 8, scope: !6607)
!6633 = !DILocation(line: 533, column: 3, scope: !6607)
!6634 = !DILocation(line: 535, column: 8, scope: !6607)
!6635 = !DILocation(line: 536, column: 3, scope: !6607)
!6636 = !DILocation(line: 538, column: 6, scope: !6637)
!6637 = distinct !DILexicalBlock(scope: !6572, file: !3, line: 538, column: 6)
!6638 = !DILocation(line: 538, column: 11, scope: !6637)
!6639 = !DILocation(line: 538, column: 6, scope: !6572)
!6640 = !DILocation(line: 540, column: 7, scope: !6641)
!6641 = distinct !DILexicalBlock(scope: !6642, file: !3, line: 540, column: 7)
!6642 = distinct !DILexicalBlock(scope: !6637, file: !3, line: 538, column: 42)
!6643 = !DILocation(line: 540, column: 17, scope: !6641)
!6644 = !DILocation(line: 540, column: 7, scope: !6642)
!6645 = !DILocation(line: 542, column: 4, scope: !6646)
!6646 = distinct !DILexicalBlock(scope: !6641, file: !3, line: 540, column: 23)
!6647 = !DILocation(line: 543, column: 4, scope: !6646)
!6648 = !DILocation(line: 543, column: 7, scope: !6646)
!6649 = !DILocation(line: 543, column: 14, scope: !6646)
!6650 = !DILocation(line: 543, column: 21, scope: !6646)
!6651 = !DILocation(line: 544, column: 3, scope: !6646)
!6652 = !DILocation(line: 545, column: 2, scope: !6642)
!6653 = !DILocation(line: 547, column: 10, scope: !6572)
!6654 = !DILocation(line: 547, column: 15, scope: !6572)
!6655 = !DILocation(line: 547, column: 7, scope: !6572)
!6656 = !DILocation(line: 550, column: 6, scope: !6657)
!6657 = distinct !DILexicalBlock(scope: !6572, file: !3, line: 550, column: 6)
!6658 = !DILocation(line: 550, column: 18, scope: !6657)
!6659 = !DILocation(line: 550, column: 16, scope: !6657)
!6660 = !DILocation(line: 550, column: 6, scope: !6572)
!6661 = !DILocation(line: 551, column: 15, scope: !6657)
!6662 = !DILocation(line: 551, column: 13, scope: !6657)
!6663 = !DILocation(line: 551, column: 3, scope: !6657)
!6664 = !DILocation(line: 554, column: 9, scope: !6665)
!6665 = distinct !DILexicalBlock(scope: !6572, file: !3, line: 554, column: 2)
!6666 = !DILocation(line: 554, column: 7, scope: !6665)
!6667 = !DILocation(line: 554, column: 14, scope: !6668)
!6668 = distinct !DILexicalBlock(scope: !6665, file: !3, line: 554, column: 2)
!6669 = !DILocation(line: 554, column: 18, scope: !6668)
!6670 = !DILocation(line: 554, column: 16, scope: !6668)
!6671 = !DILocation(line: 554, column: 2, scope: !6665)
!6672 = !DILocation(line: 555, column: 27, scope: !6673)
!6673 = distinct !DILexicalBlock(scope: !6668, file: !3, line: 554, column: 34)
!6674 = !DILocation(line: 555, column: 31, scope: !6673)
!6675 = !DILocation(line: 555, column: 40, scope: !6673)
!6676 = !DILocation(line: 555, column: 30, scope: !6673)
!6677 = !DILocation(line: 556, column: 6, scope: !6673)
!6678 = !DILocation(line: 556, column: 11, scope: !6673)
!6679 = !DILocation(line: 555, column: 3, scope: !6673)
!6680 = !DILocation(line: 557, column: 10, scope: !6681)
!6681 = distinct !DILexicalBlock(scope: !6673, file: !3, line: 557, column: 3)
!6682 = !DILocation(line: 557, column: 8, scope: !6681)
!6683 = !DILocation(line: 557, column: 15, scope: !6684)
!6684 = distinct !DILexicalBlock(scope: !6681, file: !3, line: 557, column: 3)
!6685 = !DILocation(line: 557, column: 19, scope: !6684)
!6686 = !DILocation(line: 557, column: 24, scope: !6684)
!6687 = !DILocation(line: 557, column: 17, scope: !6684)
!6688 = !DILocation(line: 557, column: 3, scope: !6681)
!6689 = !DILocation(line: 558, column: 9, scope: !6690)
!6690 = distinct !DILexicalBlock(scope: !6684, file: !3, line: 557, column: 43)
!6691 = !DILocation(line: 558, column: 18, scope: !6690)
!6692 = !DILocation(line: 558, column: 31, scope: !6690)
!6693 = !DILocation(line: 558, column: 40, scope: !6690)
!6694 = !DILocation(line: 558, column: 54, scope: !6690)
!6695 = !DILocation(line: 559, column: 9, scope: !6690)
!6696 = !DILocation(line: 559, column: 14, scope: !6690)
!6697 = !DILocation(line: 559, column: 21, scope: !6690)
!6698 = !DILocation(line: 558, column: 4, scope: !6690)
!6699 = !DILocation(line: 560, column: 3, scope: !6690)
!6700 = !DILocation(line: 557, column: 39, scope: !6684)
!6701 = !DILocation(line: 557, column: 3, scope: !6684)
!6702 = distinct !{!6702, !6688, !6703}
!6703 = !DILocation(line: 560, column: 3, scope: !6681)
!6704 = !DILocation(line: 561, column: 2, scope: !6673)
!6705 = !DILocation(line: 554, column: 30, scope: !6668)
!6706 = !DILocation(line: 554, column: 2, scope: !6668)
!6707 = distinct !{!6707, !6671, !6708}
!6708 = !DILocation(line: 561, column: 2, scope: !6665)
!6709 = !DILocation(line: 562, column: 6, scope: !6710)
!6710 = distinct !DILexicalBlock(scope: !6572, file: !3, line: 562, column: 6)
!6711 = !DILocation(line: 562, column: 11, scope: !6710)
!6712 = !DILocation(line: 562, column: 20, scope: !6710)
!6713 = !DILocation(line: 562, column: 34, scope: !6710)
!6714 = !DILocation(line: 563, column: 6, scope: !6710)
!6715 = !DILocation(line: 563, column: 9, scope: !6710)
!6716 = !DILocation(line: 563, column: 16, scope: !6710)
!6717 = !DILocation(line: 563, column: 30, scope: !6710)
!6718 = !DILocation(line: 563, column: 35, scope: !6710)
!6719 = !DILocation(line: 563, column: 27, scope: !6710)
!6720 = !DILocation(line: 562, column: 6, scope: !6572)
!6721 = !DILocation(line: 568, column: 21, scope: !6722)
!6722 = distinct !DILexicalBlock(scope: !6710, file: !3, line: 563, column: 45)
!6723 = !DILocation(line: 568, column: 3, scope: !6722)
!6724 = !DILocation(line: 568, column: 12, scope: !6722)
!6725 = !DILocation(line: 568, column: 19, scope: !6722)
!6726 = !DILocation(line: 571, column: 8, scope: !6722)
!6727 = !DILocation(line: 571, column: 17, scope: !6722)
!6728 = !DILocation(line: 571, column: 25, scope: !6722)
!6729 = !DILocation(line: 571, column: 30, scope: !6722)
!6730 = !DILocation(line: 571, column: 37, scope: !6722)
!6731 = !DILocation(line: 571, column: 3, scope: !6722)
!6732 = !DILocation(line: 572, column: 2, scope: !6722)
!6733 = !DILocation(line: 573, column: 7, scope: !6734)
!6734 = distinct !DILexicalBlock(scope: !6572, file: !3, line: 573, column: 6)
!6735 = !DILocation(line: 573, column: 16, scope: !6734)
!6736 = !DILocation(line: 573, column: 23, scope: !6734)
!6737 = !DILocation(line: 573, column: 50, scope: !6734)
!6738 = !DILocation(line: 573, column: 6, scope: !6572)
!6739 = !DILocalVariable(name: "trig", scope: !6740, file: !3, line: 575, type: !150)
!6740 = distinct !DILexicalBlock(scope: !6734, file: !3, line: 574, column: 31)
!6741 = !DILocation(line: 575, column: 18, scope: !6740)
!6742 = !DILocation(line: 589, column: 7, scope: !6743)
!6743 = distinct !DILexicalBlock(scope: !6740, file: !3, line: 589, column: 7)
!6744 = !DILocation(line: 589, column: 12, scope: !6743)
!6745 = !DILocation(line: 589, column: 27, scope: !6743)
!6746 = !DILocation(line: 589, column: 7, scope: !6740)
!6747 = !DILocation(line: 590, column: 9, scope: !6748)
!6748 = distinct !DILexicalBlock(scope: !6743, file: !3, line: 589, column: 42)
!6749 = !DILocation(line: 591, column: 3, scope: !6748)
!6750 = !DILocation(line: 593, column: 8, scope: !6751)
!6751 = distinct !DILexicalBlock(scope: !6752, file: !3, line: 593, column: 8)
!6752 = distinct !DILexicalBlock(scope: !6743, file: !3, line: 591, column: 10)
!6753 = !DILocation(line: 593, column: 13, scope: !6751)
!6754 = !DILocation(line: 593, column: 28, scope: !6751)
!6755 = !DILocation(line: 593, column: 8, scope: !6752)
!6756 = !DILocation(line: 594, column: 10, scope: !6751)
!6757 = !DILocation(line: 594, column: 5, scope: !6751)
!6758 = !DILocation(line: 596, column: 10, scope: !6751)
!6759 = !DILocation(line: 599, column: 7, scope: !6740)
!6760 = !DILocation(line: 598, column: 3, scope: !6740)
!6761 = !DILocation(line: 598, column: 12, scope: !6740)
!6762 = !DILocation(line: 598, column: 19, scope: !6740)
!6763 = !DILocation(line: 600, column: 8, scope: !6740)
!6764 = !DILocation(line: 600, column: 17, scope: !6740)
!6765 = !DILocation(line: 600, column: 25, scope: !6740)
!6766 = !DILocation(line: 600, column: 30, scope: !6740)
!6767 = !DILocation(line: 600, column: 37, scope: !6740)
!6768 = !DILocation(line: 600, column: 3, scope: !6740)
!6769 = !DILocation(line: 601, column: 2, scope: !6740)
!6770 = !DILocation(line: 603, column: 23, scope: !6572)
!6771 = !DILocation(line: 603, column: 28, scope: !6572)
!6772 = !DILocation(line: 603, column: 2, scope: !6572)
!6773 = !DILocation(line: 604, column: 1, scope: !6572)
!6774 = distinct !DISubprogram(name: "amplc_pci224_pci_probe", scope: !3, file: !3, line: 1119, type: !4073, scopeLine: 1121, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !294)
!6775 = !DILocalVariable(name: "dev", arg: 1, scope: !6774, file: !3, line: 1119, type: !4075)
!6776 = !DILocation(line: 1119, column: 51, scope: !6774)
!6777 = !DILocalVariable(name: "id", arg: 2, scope: !6774, file: !3, line: 1120, type: !4060)
!6778 = !DILocation(line: 1120, column: 35, scope: !6774)
!6779 = !DILocation(line: 1122, column: 32, scope: !6774)
!6780 = !DILocation(line: 1123, column: 11, scope: !6774)
!6781 = !DILocation(line: 1123, column: 15, scope: !6774)
!6782 = !DILocation(line: 1122, column: 9, scope: !6774)
!6783 = !DILocation(line: 1122, column: 2, scope: !6774)
