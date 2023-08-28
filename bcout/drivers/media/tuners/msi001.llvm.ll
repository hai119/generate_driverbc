; ModuleID = '../bcout/drivers/media/tuners/msi001.llvm.bc'
source_filename = "drivers/media/tuners/msi001.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_msi001_driver_init6:\09\09\09"
module asm ".long\09msi001_driver_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.spi_driver = type { %struct.spi_device_id*, i32 (%struct.spi_device*)*, i32 (%struct.spi_device*)*, void (%struct.spi_device*)*, %struct.device_driver }
%struct.spi_device_id = type { [32 x i8], i64 }
%struct.spi_device = type { %struct.device, %struct.spi_controller*, %struct.spi_controller*, i32, i8, i8, i8, i32, i32, i8*, i8*, [32 x i8], i8*, i32, %struct.gpio_desc*, %struct.spi_delay, %struct.spi_statistics }
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
%struct.module = type opaque
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
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
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
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.57 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.atomic64_t = type { i64 }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
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
%struct.kref = type { %struct.refcount_struct }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
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
%struct.irq_domain = type { %struct.list_head, i8*, %struct.irq_domain_ops*, i8*, i32, i32, %struct.fwnode_handle*, i32, %struct.irq_domain_chip_generic*, %struct.irq_domain*, i64, i32, i32, %struct.xarray, %struct.mutex, [0 x i32] }
%struct.irq_domain_ops = type { i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, i32, i64)*, void (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, i32, i32, i8*)*, void (%struct.irq_domain*, i32, i32)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, void (%struct.irq_domain*, %struct.irq_data*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.irq_fwspec = type { %struct.fwnode_handle*, i32, [16 x i32] }
%struct.irq_data = type opaque
%struct.irq_domain_chip_generic = type opaque
%struct.dma_map_ops = type opaque
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i64 }
%struct.dev_archdata = type {}
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i64 (%struct.spi_device*)*, i64 (%struct.spi_device*)*, %struct.mutex, %struct.spinlock, %struct.mutex, i8, {}*, i32 (%struct.spi_device*, %struct.spi_delay*, %struct.spi_delay*, %struct.spi_delay*)*, i32 (%struct.spi_device*, %struct.spi_message*)*, void (%struct.spi_device*)*, i1 (%struct.spi_controller*, %struct.spi_device*, %struct.spi_transfer*)*, i8, %struct.kthread_worker*, %struct.kthread_work, %struct.spinlock, %struct.list_head, %struct.spi_message*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i64, i32 (%struct.spi_controller*)*, i32 (%struct.spi_controller*, %struct.spi_message*)*, i32 (%struct.spi_controller*)*, i32 (%struct.spi_controller*, %struct.spi_message*)*, i32 (%struct.spi_controller*, %struct.spi_message*)*, i32 (%struct.spi_controller*)*, void (%struct.spi_device*, i1)*, i32 (%struct.spi_controller*, %struct.spi_device*, %struct.spi_transfer*)*, void (%struct.spi_controller*, %struct.spi_message*)*, %struct.spi_controller_mem_ops*, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32*, %struct.gpio_desc**, i8, i8, i8, %struct.spi_statistics, %struct.dma_chan*, %struct.dma_chan*, i8*, i8*, i32 (%struct.spi_controller*, i32)*, i8, i64 }
%struct.spi_transfer = type { i8*, i8*, i32, i64, i64, %struct.sg_table, %struct.sg_table, i8, i8, i16, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, %struct.ptp_system_timestamp*, i8, %struct.list_head, i16 }
%struct.sg_table = type { %struct.scatterlist*, i32, i32 }
%struct.scatterlist = type { i64, i32, i32, i64, i32 }
%struct.ptp_system_timestamp = type { %struct.timespec64, %struct.timespec64 }
%struct.kthread_worker = type { i32, %struct.raw_spinlock, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.kthread_work* }
%struct.kthread_work = type { %struct.list_head, void (%struct.kthread_work*)*, %struct.kthread_worker*, i32 }
%struct.spi_message = type { %struct.list_head, %struct.spi_device*, i8, void (i8*)*, i8*, i32, i32, i32, %struct.list_head, i8*, %struct.list_head }
%struct.spi_controller_mem_ops = type opaque
%struct.dma_chan = type opaque
%struct.gpio_desc = type opaque
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [17 x i64], i64 }
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
%struct.v4l2_frequency_band = type { i32, i32, i32, i32, i32, i32, i32, [9 x i32] }
%struct.v4l2_subdev_ops = type { %struct.v4l2_subdev_core_ops*, %struct.v4l2_subdev_tuner_ops*, %struct.v4l2_subdev_audio_ops*, %struct.v4l2_subdev_video_ops*, %struct.v4l2_subdev_vbi_ops*, %struct.v4l2_subdev_ir_ops*, %struct.v4l2_subdev_sensor_ops*, %struct.v4l2_subdev_pad_ops* }
%struct.v4l2_subdev_core_ops = type { i32 (%struct.v4l2_subdev*)*, i32 (%struct.v4l2_subdev*, i64, %struct.v4l2_subdev_io_pin_config*)*, i32 (%struct.v4l2_subdev*, i32)*, i32 (%struct.v4l2_subdev*)*, i32 (%struct.v4l2_subdev*, i32)*, i32 (%struct.v4l2_subdev*, i32)*, i64 (%struct.v4l2_subdev*, i32, i8*)*, i32 (%struct.v4l2_subdev*, i32)*, i32 (%struct.v4l2_subdev*, i32, i8*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_fh*, %struct.v4l2_event_subscription*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_fh*, %struct.v4l2_event_subscription*)* }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, %struct.module*, i8, i32, %struct.v4l2_device*, %struct.v4l2_subdev_ops*, %struct.v4l2_subdev_internal_ops*, %struct.v4l2_ctrl_handler*, [32 x i8], i32, i8*, i8*, %struct.video_device*, %struct.device*, %struct.fwnode_handle*, %struct.list_head, %struct.v4l2_async_subdev*, %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier*, %struct.v4l2_subdev_platform_data* }
%struct.media_entity = type { %struct.media_gobj, i8*, i32, i32, i64, i16, i16, i16, i32, %struct.media_pad*, %struct.list_head, %struct.media_entity_operations*, i32, i32, %struct.media_pipeline*, %union.anon.68 }
%struct.media_gobj = type { %struct.media_device*, i32, %struct.list_head }
%struct.media_device = type { %struct.device*, %struct.media_devnode*, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, i8*, i32 (%struct.media_entity*, %struct.media_pipeline*)*, void (%struct.media_entity*)*, %struct.media_device_ops*, %struct.mutex, %struct.atomic_t }
%struct.media_devnode = type { %struct.media_device*, %struct.media_file_operations*, %struct.device, %struct.cdev, %struct.device*, i32, i64, void (%struct.media_devnode*)* }
%struct.media_file_operations = type { %struct.module*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*)*, i32 (%struct.file*)* }
%struct.cdev = type { %struct.kobject, %struct.module*, %struct.file_operations*, %struct.list_head, i32, i32 }
%struct.ida = type { %struct.xarray }
%struct.media_graph = type { [16 x %struct.anon.65], %struct.media_entity_enum, i32 }
%struct.anon.65 = type { %struct.media_entity*, %struct.list_head* }
%struct.media_entity_enum = type { i64*, i32 }
%struct.media_device_ops = type { i32 (%struct.media_link*, i32, i32)*, %struct.media_request* (%struct.media_device*)*, void (%struct.media_request*)*, i32 (%struct.media_request*)*, void (%struct.media_request*)* }
%struct.media_link = type { %struct.media_gobj, %struct.list_head, %union.anon.66, %union.anon.67, %struct.media_link*, i64, i8 }
%union.anon.66 = type { %struct.media_gobj* }
%union.anon.67 = type { %struct.media_gobj* }
%struct.media_request = type { %struct.media_device*, %struct.kref, [27 x i8], i32, i32, i32, %struct.list_head, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.media_pad = type { %struct.media_gobj, %struct.media_entity*, i16, i32, i64 }
%struct.media_entity_operations = type { i32 (%struct.media_entity*, %struct.fwnode_endpoint*)*, i32 (%struct.media_entity*, %struct.media_pad*, %struct.media_pad*, i32)*, i32 (%struct.media_link*)* }
%struct.media_pipeline = type { i32, %struct.media_graph }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { i32, i32 }
%struct.v4l2_device = type { %struct.device*, %struct.media_device*, %struct.list_head, %struct.spinlock, [36 x i8], void (%struct.v4l2_subdev*, i32, i8*)*, %struct.v4l2_ctrl_handler*, %struct.v4l2_prio_state, %struct.kref, void (%struct.v4l2_device*)* }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_subdev_internal_ops = type { i32 (%struct.v4l2_subdev*)*, void (%struct.v4l2_subdev*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_fh*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_fh*)*, void (%struct.v4l2_subdev*)* }
%struct.v4l2_subdev_fh = type { %struct.v4l2_fh, %struct.module*, %struct.v4l2_subdev_pad_config* }
%struct.v4l2_fh = type { %struct.list_head, %struct.video_device*, %struct.v4l2_ctrl_handler*, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, %struct.v4l2_m2m_ctx* }
%struct.v4l2_m2m_ctx = type opaque
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.74, i16, i16, i16, [10 x i16] }
%union.anon.74 = type { i16 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, %struct.mutex*, %struct.list_head, %struct.list_head, %struct.v4l2_ctrl_ref*, %struct.v4l2_ctrl_ref**, void (%struct.v4l2_ctrl*, i8*)*, i8*, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.v4l2_ctrl_ref = type { %struct.list_head, %struct.v4l2_ctrl_ref*, %struct.v4l2_ctrl*, %struct.v4l2_ctrl_helper*, i8, i8, %struct.v4l2_ctrl_ref*, %union.v4l2_ctrl_ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl**, i32, i24, %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_type_ops*, i32, i8*, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.70, %union.anon.71, i64, i8*, i32, %struct.anon.72, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%struct.v4l2_ctrl_ops = type { i32 (%struct.v4l2_ctrl*)*, i32 (%struct.v4l2_ctrl*)*, i32 (%struct.v4l2_ctrl*)* }
%struct.v4l2_ctrl_type_ops = type { i1 (%struct.v4l2_ctrl*, i32, i32*, i32*)*, void (%struct.v4l2_ctrl*, i32, i32*)*, void (%struct.v4l2_ctrl*)*, i32 (%struct.v4l2_ctrl*, i32, i32*)* }
%union.anon.70 = type { i64 }
%union.anon.71 = type { i8** }
%struct.anon.72 = type { i32 }
%struct.v4l2_ctrl_helper = type opaque
%union.v4l2_ctrl_ptr = type { i32* }
%struct.media_request_object = type { %struct.media_request_object_ops*, i8*, %struct.media_request*, %struct.list_head, %struct.kref, i8 }
%struct.media_request_object_ops = type { i32 (%struct.media_request_object*)*, void (%struct.media_request_object*)*, void (%struct.media_request_object*)*, void (%struct.media_request_object*)*, void (%struct.media_request_object*)* }
%struct.video_device = type { %struct.media_entity, %struct.media_intf_devnode*, %struct.media_pipeline, %struct.v4l2_file_operations*, i32, %struct.device, %struct.cdev*, %struct.v4l2_device*, %struct.device*, %struct.v4l2_ctrl_handler*, %struct.vb2_queue*, %struct.v4l2_prio_state*, [32 x i8], i32, i32, i32, i16, i64, i32, %struct.spinlock, %struct.list_head, i32, i64, void (%struct.video_device*)*, %struct.v4l2_ioctl_ops*, [3 x i64], %struct.mutex* }
%struct.media_intf_devnode = type { %struct.media_interface, i32, i32 }
%struct.media_interface = type { %struct.media_gobj, %struct.list_head, i32, i32 }
%struct.v4l2_file_operations = type { %struct.module*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i32 (%struct.file*)*, i32 (%struct.file*)* }
%struct.vb2_queue = type opaque
%struct.v4l2_ioctl_ops = type opaque
%struct.v4l2_async_subdev = type { i32, %union.anon.76, %struct.list_head, %struct.list_head }
%union.anon.76 = type { %struct.anon.78 }
%struct.anon.78 = type { i1 (%struct.device*, %struct.v4l2_async_subdev*)*, i8* }
%struct.v4l2_async_notifier = type { %struct.v4l2_async_notifier_operations*, %struct.v4l2_device*, %struct.v4l2_subdev*, %struct.v4l2_async_notifier*, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.v4l2_async_notifier_operations = type { i32 (%struct.v4l2_async_notifier*, %struct.v4l2_subdev*, %struct.v4l2_async_subdev*)*, i32 (%struct.v4l2_async_notifier*)*, void (%struct.v4l2_async_notifier*, %struct.v4l2_subdev*, %struct.v4l2_async_subdev*)* }
%struct.v4l2_subdev_platform_data = type { %struct.regulator_bulk_data*, i32, i8* }
%struct.regulator_bulk_data = type opaque
%struct.v4l2_subdev_io_pin_config = type { i32, i8, i8, i8, i8 }
%struct.v4l2_event_subscription = type { i32, i32, i32, [5 x i32] }
%struct.v4l2_subdev_tuner_ops = type { i32 (%struct.v4l2_subdev*)*, i32 (%struct.v4l2_subdev*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_frequency*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_frequency*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_frequency_band*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_tuner*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_tuner*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_modulator*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_modulator*)*, i32 (%struct.v4l2_subdev*, %struct.tuner_setup*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_priv_tun_config*)* }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_modulator = type { i32, [32 x i8], i32, i32, i32, i32, i32, [3 x i32] }
%struct.tuner_setup = type opaque
%struct.v4l2_priv_tun_config = type { i32, i8* }
%struct.v4l2_subdev_audio_ops = type { i32 (%struct.v4l2_subdev*, i32)*, i32 (%struct.v4l2_subdev*, i32)*, i32 (%struct.v4l2_subdev*, i32, i32, i32)*, i32 (%struct.v4l2_subdev*, i32)* }
%struct.v4l2_subdev_video_ops = type { i32 (%struct.v4l2_subdev*, i32, i32, i32)*, i32 (%struct.v4l2_subdev*, i32, i32)*, i32 (%struct.v4l2_subdev*, i64*)*, i32 (%struct.v4l2_subdev*, i64)*, i32 (%struct.v4l2_subdev*, i64)*, i32 (%struct.v4l2_subdev*, i64*)*, i32 (%struct.v4l2_subdev*, i64*)*, i32 (%struct.v4l2_subdev*, i64*)*, i32 (%struct.v4l2_subdev*, i64*)*, i32 (%struct.v4l2_subdev*, i32*)*, i32 (%struct.v4l2_subdev*, i32)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_fract*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_frame_interval*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_frame_interval*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_dv_timings*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_dv_timings*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_dv_timings*)*, i32 (%struct.v4l2_subdev*, i8*, i32*)* }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_subdev_frame_interval = type { i32, %struct.v4l2_fract, [9 x i32] }
%struct.v4l2_dv_timings = type { i32, %union.anon.73 }
%union.anon.73 = type { [32 x i32] }
%struct.v4l2_subdev_vbi_ops = type { i32 (%struct.v4l2_subdev*, %struct.v4l2_decode_vbi_line*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_sliced_vbi_data*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_sliced_vbi_data*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_sliced_vbi_cap*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_vbi_format*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_sliced_vbi_format*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_sliced_vbi_format*)* }
%struct.v4l2_decode_vbi_line = type { i32, i8*, i32, i32 }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
%struct.v4l2_sliced_vbi_cap = type { i16, [2 x [24 x i16]], i32, [3 x i32] }
%struct.v4l2_vbi_format = type { i32, i32, i32, i32, [2 x i32], [2 x i32], i32, [2 x i32] }
%struct.v4l2_sliced_vbi_format = type { i16, [2 x [24 x i16]], i32, [2 x i32] }
%struct.v4l2_subdev_ir_ops = type { i32 (%struct.v4l2_subdev*, i8*, i64, i64*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_ir_parameters*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_ir_parameters*)*, i32 (%struct.v4l2_subdev*, i8*, i64, i64*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_ir_parameters*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_ir_parameters*)* }
%struct.v4l2_subdev_ir_parameters = type { i32, i32, i8, i8, i8, i8, i32, i32, i32, i8, i8, i32, i32, i32, i32 }
%struct.v4l2_subdev_sensor_ops = type { i32 (%struct.v4l2_subdev*, i32*)*, i32 (%struct.v4l2_subdev*, i32*)* }
%struct.v4l2_subdev_pad_ops = type { i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_mbus_code_enum*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_frame_size_enum*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_frame_interval_enum*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_selection*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_selection*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_edid*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_edid*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_dv_timings_cap*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_enum_dv_timings*)*, i32 (%struct.v4l2_subdev*, %struct.media_link*, %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format*)*, i32 (%struct.v4l2_subdev*, i32, %struct.v4l2_mbus_frame_desc*)*, i32 (%struct.v4l2_subdev*, i32, %struct.v4l2_mbus_frame_desc*)*, i32 (%struct.v4l2_subdev*, i32, %struct.v4l2_mbus_config*)*, i32 (%struct.v4l2_subdev*, i32, %struct.v4l2_mbus_config*)* }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_frame_interval_enum = type { i32, i32, i32, i32, i32, %struct.v4l2_fract, i32, [8 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }
%struct.v4l2_edid = type { i32, i32, i32, [5 x i32], i8* }
%struct.v4l2_dv_timings_cap = type { i32, i32, [2 x i32], %union.anon.75 }
%union.anon.75 = type { %struct.v4l2_bt_timings_cap, [24 x i8] }
%struct.v4l2_bt_timings_cap = type { i32, i32, i32, i32, i64, i64, i32, i32, [16 x i32] }
%struct.v4l2_enum_dv_timings = type { i32, i32, [2 x i32], %struct.v4l2_dv_timings }
%struct.v4l2_mbus_frame_desc = type { [4 x %struct.v4l2_mbus_frame_desc_entry], i16 }
%struct.v4l2_mbus_frame_desc_entry = type { i32, i32, i32 }
%struct.v4l2_mbus_config = type { i32, i32 }
%struct.kmem_cache = type opaque
%struct.anon.79 = type { i32, i8, i8 }
%struct.anon.80 = type { i32, i8 }
%struct.anon.81 = type { i32, i8 }
%struct.msi001_dev = type { %struct.spi_device*, %struct.v4l2_subdev, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl*, %struct.v4l2_ctrl*, %struct.v4l2_ctrl*, %struct.v4l2_ctrl*, %struct.v4l2_ctrl*, i32 }

@__UNIQUE_ID___addressable_msi001_driver_init262 = internal global i8* bitcast (i32 ()* @msi001_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@msi001_driver = internal global %struct.spi_driver { %struct.spi_device_id* getelementptr inbounds ([2 x %struct.spi_device_id], [2 x %struct.spi_device_id]* @msi001_id_table, i32 0, i32 0), i32 (%struct.spi_device*)* @msi001_probe, i32 (%struct.spi_device*)* @msi001_remove, void (%struct.spi_device*)* null, %struct.device_driver { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), %struct.bus_type* null, %struct.module* null, i8* null, i8 1, i32 0, %struct.of_device_id* null, %struct.acpi_device_id* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* null, void (%struct.device*)* null, %struct.driver_private* null } }, align 8, !dbg !5785
@__exitcall_msi001_driver_exit = internal global void ()* @msi001_driver_exit, section ".exitcall.exit", align 8, !dbg !5763
@__UNIQUE_ID_author263 = internal constant [45 x i8] c"msi001.author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1, !dbg !5768
@__UNIQUE_ID_description264 = internal constant [33 x i8] c"msi001.description=Mirics MSi001\00", section ".modinfo", align 1, !dbg !5773
@__UNIQUE_ID_file265 = internal constant [40 x i8] c"msi001.file=drivers/media/tuners/msi001\00", section ".modinfo", align 1, !dbg !5778
@__UNIQUE_ID_license266 = internal constant [19 x i8] c"msi001.license=GPL\00", section ".modinfo", align 1, !dbg !5781
@msi001_id_table = internal constant [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"msi001\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0 }, %struct.spi_device_id zeroinitializer], align 16, !dbg !5800
@.str = private unnamed_addr constant [7 x i8] c"msi001\00", align 1
@bands = internal constant [2 x %struct.v4l2_frequency_band] [%struct.v4l2_frequency_band { i32 0, i32 5, i32 0, i32 5120, i32 49000000, i32 263000000, i32 0, [9 x i32] zeroinitializer }, %struct.v4l2_frequency_band { i32 0, i32 5, i32 1, i32 5120, i32 390000000, i32 960000000, i32 0, [9 x i32] zeroinitializer }], align 16, !dbg !5803
@msi001_ops = internal constant %struct.v4l2_subdev_ops { %struct.v4l2_subdev_core_ops* null, %struct.v4l2_subdev_tuner_ops* @msi001_tuner_ops, %struct.v4l2_subdev_audio_ops* null, %struct.v4l2_subdev_video_ops* null, %struct.v4l2_subdev_vbi_ops* null, %struct.v4l2_subdev_ir_ops* null, %struct.v4l2_subdev_sensor_ops* null, %struct.v4l2_subdev_pad_ops* null }, align 8, !dbg !5807
@msi001_ctrl_ops = internal constant %struct.v4l2_ctrl_ops { i32 (%struct.v4l2_ctrl*)* null, i32 (%struct.v4l2_ctrl*)* null, i32 (%struct.v4l2_ctrl*)* @msi001_s_ctrl }, align 8, !dbg !5839
@.str.1 = private unnamed_addr constant [31 x i8] c"Could not initialize controls\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@msi001_tuner_ops = internal constant %struct.v4l2_subdev_tuner_ops { i32 (%struct.v4l2_subdev*)* @msi001_standby, i32 (%struct.v4l2_subdev*)* null, i32 (%struct.v4l2_subdev*, %struct.v4l2_frequency*)* @msi001_s_frequency, i32 (%struct.v4l2_subdev*, %struct.v4l2_frequency*)* @msi001_g_frequency, i32 (%struct.v4l2_subdev*, %struct.v4l2_frequency_band*)* @msi001_enum_freq_bands, i32 (%struct.v4l2_subdev*, %struct.v4l2_tuner*)* @msi001_g_tuner, i32 (%struct.v4l2_subdev*, %struct.v4l2_tuner*)* @msi001_s_tuner, i32 (%struct.v4l2_subdev*, %struct.v4l2_modulator*)* null, i32 (%struct.v4l2_subdev*, %struct.v4l2_modulator*)* null, i32 (%struct.v4l2_subdev*, %struct.tuner_setup*)* null, i32 (%struct.v4l2_subdev*, %struct.v4l2_priv_tun_config*)* null }, align 8, !dbg !5809
@msi001_set_tuner.band_lut = internal constant [5 x %struct.anon.79] [%struct.anon.79 { i32 50000000, i8 -31, i8 16 }, %struct.anon.79 { i32 108000000, i8 66, i8 32 }, %struct.anon.79 { i32 330000000, i8 68, i8 16 }, %struct.anon.79 { i32 960000000, i8 72, i8 4 }, %struct.anon.79 { i32 -1, i8 80, i8 2 }], align 16, !dbg !5811
@msi001_set_tuner.if_freq_lut = internal constant [4 x %struct.anon.80] [%struct.anon.80 { i32 0, i8 3 }, %struct.anon.80 { i32 450000, i8 2 }, %struct.anon.80 { i32 1620000, i8 1 }, %struct.anon.80 { i32 2048000, i8 0 }], align 16, !dbg !5823
@msi001_set_tuner.bandwidth_lut = internal constant [8 x %struct.anon.81] [%struct.anon.81 { i32 200000, i8 0 }, %struct.anon.81 { i32 300000, i8 1 }, %struct.anon.81 { i32 600000, i8 2 }, %struct.anon.81 { i32 1536000, i8 3 }, %struct.anon.81 { i32 5000000, i8 4 }, %struct.anon.81 { i32 6000000, i8 5 }, %struct.anon.81 { i32 7000000, i8 6 }, %struct.anon.81 { i32 8000000, i8 7 }], align 16, !dbg !5831
@.str.3 = private unnamed_addr constant [14 x i8] c"Mirics MSi001\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_msi001_driver_init262 to i8*), i8* bitcast (void ()* @msi001_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_msi001_driver_exit to i8*), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__UNIQUE_ID_author263, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__UNIQUE_ID_description264, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__UNIQUE_ID_file265, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__UNIQUE_ID_license266, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @msi001_driver_init() #0 section ".init.text" !dbg !5846 {
entry:
  %call = call i32 @__spi_register_driver(%struct.module* null, %struct.spi_driver* @msi001_driver) #10, !dbg !5849
  ret i32 %call, !dbg !5849
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @msi001_driver_exit() #0 section ".exit.text" !dbg !5850 {
entry:
  call void @spi_unregister_driver(%struct.spi_driver* @msi001_driver) #10, !dbg !5851
  ret void, !dbg !5851
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @spi_unregister_driver(%struct.spi_driver* %sdrv) #1 !dbg !5852 {
entry:
  %sdrv.addr = alloca %struct.spi_driver*, align 8
  store %struct.spi_driver* %sdrv, %struct.spi_driver** %sdrv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_driver** %sdrv.addr, metadata !5856, metadata !DIExpression()), !dbg !5857
  %0 = load %struct.spi_driver*, %struct.spi_driver** %sdrv.addr, align 8, !dbg !5858
  %tobool = icmp ne %struct.spi_driver* %0, null, !dbg !5858
  br i1 %tobool, label %if.then, label %if.end, !dbg !5860

if.then:                                          ; preds = %entry
  %1 = load %struct.spi_driver*, %struct.spi_driver** %sdrv.addr, align 8, !dbg !5861
  %driver = getelementptr inbounds %struct.spi_driver, %struct.spi_driver* %1, i32 0, i32 4, !dbg !5862
  call void @driver_unregister(%struct.device_driver* %driver) #10, !dbg !5863
  br label %if.end, !dbg !5863

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5864
}

; Function Attrs: noredzone
declare dso_local i32 @__spi_register_driver(%struct.module*, %struct.spi_driver*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noredzone
declare dso_local void @driver_unregister(%struct.device_driver*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @msi001_probe(%struct.spi_device* %spi) #1 !dbg !5865 {
entry:
  %retval = alloca i32, align 4
  %spi.addr = alloca %struct.spi_device*, align 8
  %dev = alloca %struct.msi001_dev*, align 8
  %ret = alloca i32, align 4
  store %struct.spi_device* %spi, %struct.spi_device** %spi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_device** %spi.addr, metadata !5866, metadata !DIExpression()), !dbg !5867
  call void @llvm.dbg.declare(metadata %struct.msi001_dev** %dev, metadata !5868, metadata !DIExpression()), !dbg !5869
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5870, metadata !DIExpression()), !dbg !5871
  %call = call i8* @kzalloc(i64 568, i32 3264) #10, !dbg !5872
  %0 = bitcast i8* %call to %struct.msi001_dev*, !dbg !5872
  store %struct.msi001_dev* %0, %struct.msi001_dev** %dev, align 8, !dbg !5873
  %1 = load %struct.msi001_dev*, %struct.msi001_dev** %dev, align 8, !dbg !5874
  %tobool = icmp ne %struct.msi001_dev* %1, null, !dbg !5874
  br i1 %tobool, label %if.end, label %if.then, !dbg !5876

if.then:                                          ; preds = %entry
  store i32 -12, i32* %ret, align 4, !dbg !5877
  br label %err, !dbg !5879

if.end:                                           ; preds = %entry
  %2 = load %struct.spi_device*, %struct.spi_device** %spi.addr, align 8, !dbg !5880
  %3 = load %struct.msi001_dev*, %struct.msi001_dev** %dev, align 8, !dbg !5881
  %spi1 = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %3, i32 0, i32 0, !dbg !5882
  store %struct.spi_device* %2, %struct.spi_device** %spi1, align 8, !dbg !5883
  %4 = load i32, i32* getelementptr inbounds ([2 x %struct.v4l2_frequency_band], [2 x %struct.v4l2_frequency_band]* @bands, i64 0, i64 0, i32 4), align 16, !dbg !5884
  %5 = load %struct.msi001_dev*, %struct.msi001_dev** %dev, align 8, !dbg !5885
  %f_tuner = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %5, i32 0, i32 8, !dbg !5886
  store i32 %4, i32* %f_tuner, align 8, !dbg !5887
  %6 = load %struct.msi001_dev*, %struct.msi001_dev** %dev, align 8, !dbg !5888
  %sd = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %6, i32 0, i32 1, !dbg !5889
  %7 = load %struct.spi_device*, %struct.spi_device** %spi.addr, align 8, !dbg !5890
  call void @v4l2_spi_subdev_init(%struct.v4l2_subdev* %sd, %struct.spi_device* %7, %struct.v4l2_subdev_ops* @msi001_ops) #10, !dbg !5891
  %8 = load %struct.msi001_dev*, %struct.msi001_dev** %dev, align 8, !dbg !5892
  %hdl = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %8, i32 0, i32 2, !dbg !5892
  %call2 = call i32 @v4l2_ctrl_handler_init_class(%struct.v4l2_ctrl_handler* %hdl, i32 5, %struct.lock_class_key* null, i8* null) #10, !dbg !5892
  %9 = load %struct.msi001_dev*, %struct.msi001_dev** %dev, align 8, !dbg !5893
  %hdl3 = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %9, i32 0, i32 2, !dbg !5894
  %call4 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %hdl3, %struct.v4l2_ctrl_ops* @msi001_ctrl_ops, i32 10619147, i64 0, i64 1, i64 1, i64 1) #10, !dbg !5895
  %10 = load %struct.msi001_dev*, %struct.msi001_dev** %dev, align 8, !dbg !5896
  %bandwidth_auto = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %10, i32 0, i32 3, !dbg !5897
  store %struct.v4l2_ctrl* %call4, %struct.v4l2_ctrl** %bandwidth_auto, align 8, !dbg !5898
  %11 = load %struct.msi001_dev*, %struct.msi001_dev** %dev, align 8, !dbg !5899
  %hdl5 = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %11, i32 0, i32 2, !dbg !5900
  %call6 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %hdl5, %struct.v4l2_ctrl_ops* @msi001_ctrl_ops, i32 10619148, i64 200000, i64 8000000, i64 1, i64 200000) #10, !dbg !5901
  %12 = load %struct.msi001_dev*, %struct.msi001_dev** %dev, align 8, !dbg !5902
  %bandwidth = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %12, i32 0, i32 4, !dbg !5903
  store %struct.v4l2_ctrl* %call6, %struct.v4l2_ctrl** %bandwidth, align 8, !dbg !5904
  %13 = load %struct.msi001_dev*, %struct.msi001_dev** %dev, align 8, !dbg !5905
  %bandwidth_auto7 = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %13, i32 0, i32 3, !dbg !5906
  call void @v4l2_ctrl_auto_cluster(i32 2, %struct.v4l2_ctrl** %bandwidth_auto7, i8 zeroext 0, i1 zeroext false) #10, !dbg !5907
  %14 = load %struct.msi001_dev*, %struct.msi001_dev** %dev, align 8, !dbg !5908
  %hdl8 = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %14, i32 0, i32 2, !dbg !5909
  %call9 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %hdl8, %struct.v4l2_ctrl_ops* @msi001_ctrl_ops, i32 10619178, i64 0, i64 1, i64 1, i64 1) #10, !dbg !5910
  %15 = load %struct.msi001_dev*, %struct.msi001_dev** %dev, align 8, !dbg !5911
  %lna_gain = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %15, i32 0, i32 5, !dbg !5912
  store %struct.v4l2_ctrl* %call9, %struct.v4l2_ctrl** %lna_gain, align 8, !dbg !5913
  %16 = load %struct.msi001_dev*, %struct.msi001_dev** %dev, align 8, !dbg !5914
  %hdl10 = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %16, i32 0, i32 2, !dbg !5915
  %call11 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %hdl10, %struct.v4l2_ctrl_ops* @msi001_ctrl_ops, i32 10619188, i64 0, i64 1, i64 1, i64 1) #10, !dbg !5916
  %17 = load %struct.msi001_dev*, %struct.msi001_dev** %dev, align 8, !dbg !5917
  %mixer_gain = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %17, i32 0, i32 6, !dbg !5918
  store %struct.v4l2_ctrl* %call11, %struct.v4l2_ctrl** %mixer_gain, align 8, !dbg !5919
  %18 = load %struct.msi001_dev*, %struct.msi001_dev** %dev, align 8, !dbg !5920
  %hdl12 = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %18, i32 0, i32 2, !dbg !5921
  %call13 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %hdl12, %struct.v4l2_ctrl_ops* @msi001_ctrl_ops, i32 10619198, i64 0, i64 59, i64 1, i64 0) #10, !dbg !5922
  %19 = load %struct.msi001_dev*, %struct.msi001_dev** %dev, align 8, !dbg !5923
  %if_gain = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %19, i32 0, i32 7, !dbg !5924
  store %struct.v4l2_ctrl* %call13, %struct.v4l2_ctrl** %if_gain, align 8, !dbg !5925
  %20 = load %struct.msi001_dev*, %struct.msi001_dev** %dev, align 8, !dbg !5926
  %hdl14 = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %20, i32 0, i32 2, !dbg !5928
  %error = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %hdl14, i32 0, i32 9, !dbg !5929
  %21 = load i32, i32* %error, align 4, !dbg !5929
  %tobool15 = icmp ne i32 %21, 0, !dbg !5926
  br i1 %tobool15, label %if.then16, label %if.end20, !dbg !5930

if.then16:                                        ; preds = %if.end
  %22 = load %struct.msi001_dev*, %struct.msi001_dev** %dev, align 8, !dbg !5931
  %hdl17 = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %22, i32 0, i32 2, !dbg !5933
  %error18 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %hdl17, i32 0, i32 9, !dbg !5934
  %23 = load i32, i32* %error18, align 4, !dbg !5934
  store i32 %23, i32* %ret, align 4, !dbg !5935
  %24 = load %struct.spi_device*, %struct.spi_device** %spi.addr, align 8, !dbg !5936
  %dev19 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %24, i32 0, i32 0, !dbg !5936
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0)) #11, !dbg !5936
  br label %err_ctrl_handler_free, !dbg !5937

if.end20:                                         ; preds = %if.end
  %25 = load %struct.msi001_dev*, %struct.msi001_dev** %dev, align 8, !dbg !5938
  %hdl21 = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %25, i32 0, i32 2, !dbg !5939
  %26 = load %struct.msi001_dev*, %struct.msi001_dev** %dev, align 8, !dbg !5940
  %sd22 = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %26, i32 0, i32 1, !dbg !5941
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %sd22, i32 0, i32 8, !dbg !5942
  store %struct.v4l2_ctrl_handler* %hdl21, %struct.v4l2_ctrl_handler** %ctrl_handler, align 8, !dbg !5943
  store i32 0, i32* %retval, align 4, !dbg !5944
  br label %return, !dbg !5944

err_ctrl_handler_free:                            ; preds = %if.then16
  call void @llvm.dbg.label(metadata !5945), !dbg !5946
  %27 = load %struct.msi001_dev*, %struct.msi001_dev** %dev, align 8, !dbg !5947
  %hdl23 = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %27, i32 0, i32 2, !dbg !5948
  call void @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %hdl23) #10, !dbg !5949
  %28 = load %struct.msi001_dev*, %struct.msi001_dev** %dev, align 8, !dbg !5950
  %29 = bitcast %struct.msi001_dev* %28 to i8*, !dbg !5950
  call void @kfree(i8* %29) #10, !dbg !5951
  br label %err, !dbg !5951

err:                                              ; preds = %err_ctrl_handler_free, %if.then
  call void @llvm.dbg.label(metadata !5952), !dbg !5953
  %30 = load i32, i32* %ret, align 4, !dbg !5954
  store i32 %30, i32* %retval, align 4, !dbg !5955
  br label %return, !dbg !5955

return:                                           ; preds = %err, %if.end20
  %31 = load i32, i32* %retval, align 4, !dbg !5956
  ret i32 %31, !dbg !5956
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @msi001_remove(%struct.spi_device* %spi) #1 !dbg !5957 {
entry:
  %spi.addr = alloca %struct.spi_device*, align 8
  %sd = alloca %struct.v4l2_subdev*, align 8
  %dev = alloca %struct.msi001_dev*, align 8
  store %struct.spi_device* %spi, %struct.spi_device** %spi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_device** %spi.addr, metadata !5958, metadata !DIExpression()), !dbg !5959
  call void @llvm.dbg.declare(metadata %struct.v4l2_subdev** %sd, metadata !5960, metadata !DIExpression()), !dbg !5961
  %0 = load %struct.spi_device*, %struct.spi_device** %spi.addr, align 8, !dbg !5962
  %call = call i8* @spi_get_drvdata(%struct.spi_device* %0) #10, !dbg !5963
  %1 = bitcast i8* %call to %struct.v4l2_subdev*, !dbg !5963
  store %struct.v4l2_subdev* %1, %struct.v4l2_subdev** %sd, align 8, !dbg !5961
  call void @llvm.dbg.declare(metadata %struct.msi001_dev** %dev, metadata !5964, metadata !DIExpression()), !dbg !5965
  %2 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %sd, align 8, !dbg !5966
  %call1 = call %struct.msi001_dev* @sd_to_msi001_dev(%struct.v4l2_subdev* %2) #10, !dbg !5967
  store %struct.msi001_dev* %call1, %struct.msi001_dev** %dev, align 8, !dbg !5965
  %3 = load %struct.msi001_dev*, %struct.msi001_dev** %dev, align 8, !dbg !5968
  %sd2 = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %3, i32 0, i32 1, !dbg !5969
  call void @v4l2_device_unregister_subdev(%struct.v4l2_subdev* %sd2) #10, !dbg !5970
  %4 = load %struct.msi001_dev*, %struct.msi001_dev** %dev, align 8, !dbg !5971
  %hdl = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %4, i32 0, i32 2, !dbg !5972
  call void @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %hdl) #10, !dbg !5973
  %5 = load %struct.msi001_dev*, %struct.msi001_dev** %dev, align 8, !dbg !5974
  %6 = bitcast %struct.msi001_dev* %5 to i8*, !dbg !5974
  call void @kfree(i8* %6) #10, !dbg !5975
  ret i32 0, !dbg !5976
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #1 !dbg !5977 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !5980, metadata !DIExpression()), !dbg !5984
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !5990, metadata !DIExpression()), !dbg !5991
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !5992, metadata !DIExpression()), !dbg !5993
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !5994, metadata !DIExpression()), !dbg !5995
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !5996, metadata !DIExpression()), !dbg !6000
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !6002, metadata !DIExpression()), !dbg !6006
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !6008, metadata !DIExpression()), !dbg !6012
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !6017, metadata !DIExpression()), !dbg !6018
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !6019, metadata !DIExpression()), !dbg !6020
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !6021, metadata !DIExpression()), !dbg !6022
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !6023, metadata !DIExpression()), !dbg !6024
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !6025, metadata !DIExpression()), !dbg !6026
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !6027, metadata !DIExpression()), !dbg !6028
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !6029, metadata !DIExpression()), !dbg !6030
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !6031, metadata !DIExpression()), !dbg !6032
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6033, metadata !DIExpression()), !dbg !6034
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6035, metadata !DIExpression()), !dbg !6036
  %0 = load i64, i64* %size.addr, align 8, !dbg !6037
  %1 = load i32, i32* %flags.addr, align 4, !dbg !6038
  %or = or i32 %1, 256, !dbg !6039
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !6040
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #12, !dbg !6041
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !6042

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !6043
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !6044
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !6045

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !6046
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !6047
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !6048
  %call.i.i = call i32 @get_order(i64 %7) #13, !dbg !6049
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !6026
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !6050
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !6051
  %10 = load i32, i32* %order.i.i, align 4, !dbg !6052
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !6053
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !6054
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !6055
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #14, !dbg !6056
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !6056
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !6056
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !6056
  call void @llvm.assume(i1 %maskcond.i.i.i) #12, !dbg !6056
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !6057
  br label %kmalloc.exit, !dbg !6057

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !6058
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6059
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !6059
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !6061

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !6062
  br label %kmalloc_index.exit.i, !dbg !6062

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6063
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !6065
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !6066

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !6067
  br label %kmalloc_index.exit.i, !dbg !6067

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6068
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !6070
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !6071

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6072
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !6073
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !6074

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !6075
  br label %kmalloc_index.exit.i, !dbg !6075

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6076
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !6078
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !6079

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6080
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !6081
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !6082

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !6083
  br label %kmalloc_index.exit.i, !dbg !6083

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6084
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !6086
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !6087

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !6088
  br label %kmalloc_index.exit.i, !dbg !6088

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6089
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !6091
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !6092

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !6093
  br label %kmalloc_index.exit.i, !dbg !6093

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6094
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !6096
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !6097

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !6098
  br label %kmalloc_index.exit.i, !dbg !6098

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6099
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !6101
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !6102

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !6103
  br label %kmalloc_index.exit.i, !dbg !6103

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6104
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !6106
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !6107

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !6108
  br label %kmalloc_index.exit.i, !dbg !6108

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6109
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !6111
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !6112

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !6113
  br label %kmalloc_index.exit.i, !dbg !6113

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6114
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !6116
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !6117

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !6118
  br label %kmalloc_index.exit.i, !dbg !6118

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6119
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !6121
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !6122

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !6123
  br label %kmalloc_index.exit.i, !dbg !6123

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6124
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !6126
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !6127

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !6128
  br label %kmalloc_index.exit.i, !dbg !6128

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6129
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !6131
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !6132

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !6133
  br label %kmalloc_index.exit.i, !dbg !6133

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6134
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !6136
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !6137

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !6138
  br label %kmalloc_index.exit.i, !dbg !6138

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6139
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !6141
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !6142

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !6143
  br label %kmalloc_index.exit.i, !dbg !6143

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6144
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !6146
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !6147

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !6148
  br label %kmalloc_index.exit.i, !dbg !6148

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6149
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !6151
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !6152

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !6153
  br label %kmalloc_index.exit.i, !dbg !6153

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6154
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !6156
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !6157

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !6158
  br label %kmalloc_index.exit.i, !dbg !6158

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6159
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !6161
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !6162

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !6163
  br label %kmalloc_index.exit.i, !dbg !6163

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6164
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !6166
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !6167

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !6168
  br label %kmalloc_index.exit.i, !dbg !6168

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6169
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !6171
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !6172

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !6173
  br label %kmalloc_index.exit.i, !dbg !6173

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6174
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !6176
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !6177

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !6178
  br label %kmalloc_index.exit.i, !dbg !6178

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6179
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !6181
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !6182

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !6183
  br label %kmalloc_index.exit.i, !dbg !6183

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6184
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !6186
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !6187

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !6188
  br label %kmalloc_index.exit.i, !dbg !6188

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6189
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !6191
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !6192

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !6193
  br label %kmalloc_index.exit.i, !dbg !6193

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6194
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !6196
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !6197

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !6198
  br label %kmalloc_index.exit.i, !dbg !6198

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6199
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !6201
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !6202

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !6203
  br label %kmalloc_index.exit.i, !dbg !6203

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 382, i32 0, i64 12) #12, !dbg !6204, !srcloc !6207
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 210) #12, !dbg !6208, !srcloc !6211
  unreachable, !dbg !6212

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !6213
  store i32 %45, i32* %index.i, align 4, !dbg !6214
  %46 = load i32, i32* %index.i, align 4, !dbg !6215
  %tobool.i = icmp ne i32 %46, 0, !dbg !6215
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !6217

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !6218
  br label %kmalloc.exit, !dbg !6218

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !6219
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6220
  %and.i.i = and i32 %48, 17, !dbg !6220
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !6220
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !6220
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !6220
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !6220
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !6222

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !6223
  br label %kmalloc_type.exit.i, !dbg !6223

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6224
  %and2.i.i = and i32 %49, 1, !dbg !6225
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !6224
  %50 = zext i1 %tobool3.i.i to i64, !dbg !6224
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !6224
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !6226
  br label %kmalloc_type.exit.i, !dbg !6226

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !6227
  %idxprom.i = zext i32 %51 to i64, !dbg !6228
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !6228
  %52 = load i32, i32* %index.i, align 4, !dbg !6229
  %idxprom6.i = zext i32 %52 to i64, !dbg !6228
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !6228
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !6228
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !6230
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !6231
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6232
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6233
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #14, !dbg !6234
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !6234
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !6234
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !6234
  call void @llvm.assume(i1 %maskcond.i.i) #12, !dbg !6234
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5995
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6235
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !6236
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !6237
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6238
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #14, !dbg !6239
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !6240
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !6241
  store i8* %62, i8** %retval.i, align 8, !dbg !6242
  br label %kmalloc.exit, !dbg !6242

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !6243
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !6244
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #14, !dbg !6245
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !6245
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !6245
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !6245
  call void @llvm.assume(i1 %maskcond.i) #12, !dbg !6245
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !6246
  br label %kmalloc.exit, !dbg !6246

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !6247
  ret i8* %65, !dbg !6248
}

; Function Attrs: noredzone
declare dso_local void @v4l2_spi_subdev_init(%struct.v4l2_subdev*, %struct.spi_device*, %struct.v4l2_subdev_ops*) #2

; Function Attrs: noredzone
declare dso_local i32 @v4l2_ctrl_handler_init_class(%struct.v4l2_ctrl_handler*, i32, %struct.lock_class_key*, i8*) #2

; Function Attrs: noredzone
declare dso_local %struct.v4l2_ctrl* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_ops*, i32, i64, i64, i64, i64) #2

; Function Attrs: noredzone
declare dso_local void @v4l2_ctrl_auto_cluster(i32, %struct.v4l2_ctrl**, i8 zeroext, i1 zeroext) #2

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone
declare dso_local void @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler*) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !6249 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6253, metadata !DIExpression()), !dbg !6258
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6260, metadata !DIExpression()), !dbg !6261
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6262, metadata !DIExpression()), !dbg !6263
  %0 = load i64, i64* %size.addr, align 8, !dbg !6264
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6266
  br i1 %1, label %if.then, label %if.end447, !dbg !6267

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !6268
  %tobool = icmp ne i64 %2, 0, !dbg !6268
  br i1 %tobool, label %if.end, label %if.then1, !dbg !6271

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !6272
  br label %return, !dbg !6272

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !6273
  %cmp = icmp ult i64 %3, 4096, !dbg !6275
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !6276

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !6277
  br label %return, !dbg !6277

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub = sub i64 %4, 1, !dbg !6278
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !6278
  br i1 %5, label %cond.true, label %cond.false442, !dbg !6278

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub4 = sub i64 %6, 1, !dbg !6278
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !6278
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !6278

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub6 = sub i64 %8, 1, !dbg !6278
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !6278
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !6278

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !6278

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub9 = sub i64 %9, 1, !dbg !6278
  %and = and i64 %sub9, -9223372036854775808, !dbg !6278
  %tobool10 = icmp ne i64 %and, 0, !dbg !6278
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !6278

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !6278

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub13 = sub i64 %10, 1, !dbg !6278
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !6278
  %tobool15 = icmp ne i64 %and14, 0, !dbg !6278
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !6278

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !6278

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub18 = sub i64 %11, 1, !dbg !6278
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !6278
  %tobool20 = icmp ne i64 %and19, 0, !dbg !6278
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !6278

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !6278

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub23 = sub i64 %12, 1, !dbg !6278
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !6278
  %tobool25 = icmp ne i64 %and24, 0, !dbg !6278
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !6278

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !6278

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub28 = sub i64 %13, 1, !dbg !6278
  %and29 = and i64 %sub28, 576460752303423488, !dbg !6278
  %tobool30 = icmp ne i64 %and29, 0, !dbg !6278
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !6278

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !6278

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub33 = sub i64 %14, 1, !dbg !6278
  %and34 = and i64 %sub33, 288230376151711744, !dbg !6278
  %tobool35 = icmp ne i64 %and34, 0, !dbg !6278
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !6278

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !6278

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub38 = sub i64 %15, 1, !dbg !6278
  %and39 = and i64 %sub38, 144115188075855872, !dbg !6278
  %tobool40 = icmp ne i64 %and39, 0, !dbg !6278
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !6278

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !6278

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub43 = sub i64 %16, 1, !dbg !6278
  %and44 = and i64 %sub43, 72057594037927936, !dbg !6278
  %tobool45 = icmp ne i64 %and44, 0, !dbg !6278
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !6278

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !6278

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub48 = sub i64 %17, 1, !dbg !6278
  %and49 = and i64 %sub48, 36028797018963968, !dbg !6278
  %tobool50 = icmp ne i64 %and49, 0, !dbg !6278
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !6278

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !6278

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub53 = sub i64 %18, 1, !dbg !6278
  %and54 = and i64 %sub53, 18014398509481984, !dbg !6278
  %tobool55 = icmp ne i64 %and54, 0, !dbg !6278
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !6278

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !6278

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub58 = sub i64 %19, 1, !dbg !6278
  %and59 = and i64 %sub58, 9007199254740992, !dbg !6278
  %tobool60 = icmp ne i64 %and59, 0, !dbg !6278
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !6278

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !6278

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub63 = sub i64 %20, 1, !dbg !6278
  %and64 = and i64 %sub63, 4503599627370496, !dbg !6278
  %tobool65 = icmp ne i64 %and64, 0, !dbg !6278
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !6278

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !6278

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub68 = sub i64 %21, 1, !dbg !6278
  %and69 = and i64 %sub68, 2251799813685248, !dbg !6278
  %tobool70 = icmp ne i64 %and69, 0, !dbg !6278
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !6278

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !6278

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub73 = sub i64 %22, 1, !dbg !6278
  %and74 = and i64 %sub73, 1125899906842624, !dbg !6278
  %tobool75 = icmp ne i64 %and74, 0, !dbg !6278
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !6278

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !6278

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub78 = sub i64 %23, 1, !dbg !6278
  %and79 = and i64 %sub78, 562949953421312, !dbg !6278
  %tobool80 = icmp ne i64 %and79, 0, !dbg !6278
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !6278

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !6278

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub83 = sub i64 %24, 1, !dbg !6278
  %and84 = and i64 %sub83, 281474976710656, !dbg !6278
  %tobool85 = icmp ne i64 %and84, 0, !dbg !6278
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !6278

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !6278

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub88 = sub i64 %25, 1, !dbg !6278
  %and89 = and i64 %sub88, 140737488355328, !dbg !6278
  %tobool90 = icmp ne i64 %and89, 0, !dbg !6278
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !6278

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !6278

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub93 = sub i64 %26, 1, !dbg !6278
  %and94 = and i64 %sub93, 70368744177664, !dbg !6278
  %tobool95 = icmp ne i64 %and94, 0, !dbg !6278
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !6278

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !6278

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub98 = sub i64 %27, 1, !dbg !6278
  %and99 = and i64 %sub98, 35184372088832, !dbg !6278
  %tobool100 = icmp ne i64 %and99, 0, !dbg !6278
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !6278

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !6278

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub103 = sub i64 %28, 1, !dbg !6278
  %and104 = and i64 %sub103, 17592186044416, !dbg !6278
  %tobool105 = icmp ne i64 %and104, 0, !dbg !6278
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !6278

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !6278

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub108 = sub i64 %29, 1, !dbg !6278
  %and109 = and i64 %sub108, 8796093022208, !dbg !6278
  %tobool110 = icmp ne i64 %and109, 0, !dbg !6278
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !6278

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !6278

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub113 = sub i64 %30, 1, !dbg !6278
  %and114 = and i64 %sub113, 4398046511104, !dbg !6278
  %tobool115 = icmp ne i64 %and114, 0, !dbg !6278
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !6278

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !6278

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub118 = sub i64 %31, 1, !dbg !6278
  %and119 = and i64 %sub118, 2199023255552, !dbg !6278
  %tobool120 = icmp ne i64 %and119, 0, !dbg !6278
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !6278

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !6278

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub123 = sub i64 %32, 1, !dbg !6278
  %and124 = and i64 %sub123, 1099511627776, !dbg !6278
  %tobool125 = icmp ne i64 %and124, 0, !dbg !6278
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !6278

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !6278

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub128 = sub i64 %33, 1, !dbg !6278
  %and129 = and i64 %sub128, 549755813888, !dbg !6278
  %tobool130 = icmp ne i64 %and129, 0, !dbg !6278
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !6278

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !6278

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub133 = sub i64 %34, 1, !dbg !6278
  %and134 = and i64 %sub133, 274877906944, !dbg !6278
  %tobool135 = icmp ne i64 %and134, 0, !dbg !6278
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !6278

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !6278

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub138 = sub i64 %35, 1, !dbg !6278
  %and139 = and i64 %sub138, 137438953472, !dbg !6278
  %tobool140 = icmp ne i64 %and139, 0, !dbg !6278
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !6278

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !6278

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub143 = sub i64 %36, 1, !dbg !6278
  %and144 = and i64 %sub143, 68719476736, !dbg !6278
  %tobool145 = icmp ne i64 %and144, 0, !dbg !6278
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !6278

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !6278

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub148 = sub i64 %37, 1, !dbg !6278
  %and149 = and i64 %sub148, 34359738368, !dbg !6278
  %tobool150 = icmp ne i64 %and149, 0, !dbg !6278
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !6278

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !6278

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub153 = sub i64 %38, 1, !dbg !6278
  %and154 = and i64 %sub153, 17179869184, !dbg !6278
  %tobool155 = icmp ne i64 %and154, 0, !dbg !6278
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !6278

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !6278

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub158 = sub i64 %39, 1, !dbg !6278
  %and159 = and i64 %sub158, 8589934592, !dbg !6278
  %tobool160 = icmp ne i64 %and159, 0, !dbg !6278
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !6278

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !6278

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub163 = sub i64 %40, 1, !dbg !6278
  %and164 = and i64 %sub163, 4294967296, !dbg !6278
  %tobool165 = icmp ne i64 %and164, 0, !dbg !6278
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !6278

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !6278

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub168 = sub i64 %41, 1, !dbg !6278
  %and169 = and i64 %sub168, 2147483648, !dbg !6278
  %tobool170 = icmp ne i64 %and169, 0, !dbg !6278
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !6278

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !6278

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub173 = sub i64 %42, 1, !dbg !6278
  %and174 = and i64 %sub173, 1073741824, !dbg !6278
  %tobool175 = icmp ne i64 %and174, 0, !dbg !6278
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !6278

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !6278

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub178 = sub i64 %43, 1, !dbg !6278
  %and179 = and i64 %sub178, 536870912, !dbg !6278
  %tobool180 = icmp ne i64 %and179, 0, !dbg !6278
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !6278

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !6278

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub183 = sub i64 %44, 1, !dbg !6278
  %and184 = and i64 %sub183, 268435456, !dbg !6278
  %tobool185 = icmp ne i64 %and184, 0, !dbg !6278
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !6278

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !6278

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub188 = sub i64 %45, 1, !dbg !6278
  %and189 = and i64 %sub188, 134217728, !dbg !6278
  %tobool190 = icmp ne i64 %and189, 0, !dbg !6278
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !6278

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !6278

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub193 = sub i64 %46, 1, !dbg !6278
  %and194 = and i64 %sub193, 67108864, !dbg !6278
  %tobool195 = icmp ne i64 %and194, 0, !dbg !6278
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !6278

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !6278

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub198 = sub i64 %47, 1, !dbg !6278
  %and199 = and i64 %sub198, 33554432, !dbg !6278
  %tobool200 = icmp ne i64 %and199, 0, !dbg !6278
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !6278

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !6278

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub203 = sub i64 %48, 1, !dbg !6278
  %and204 = and i64 %sub203, 16777216, !dbg !6278
  %tobool205 = icmp ne i64 %and204, 0, !dbg !6278
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !6278

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !6278

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub208 = sub i64 %49, 1, !dbg !6278
  %and209 = and i64 %sub208, 8388608, !dbg !6278
  %tobool210 = icmp ne i64 %and209, 0, !dbg !6278
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !6278

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !6278

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub213 = sub i64 %50, 1, !dbg !6278
  %and214 = and i64 %sub213, 4194304, !dbg !6278
  %tobool215 = icmp ne i64 %and214, 0, !dbg !6278
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !6278

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !6278

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub218 = sub i64 %51, 1, !dbg !6278
  %and219 = and i64 %sub218, 2097152, !dbg !6278
  %tobool220 = icmp ne i64 %and219, 0, !dbg !6278
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !6278

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !6278

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub223 = sub i64 %52, 1, !dbg !6278
  %and224 = and i64 %sub223, 1048576, !dbg !6278
  %tobool225 = icmp ne i64 %and224, 0, !dbg !6278
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !6278

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !6278

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub228 = sub i64 %53, 1, !dbg !6278
  %and229 = and i64 %sub228, 524288, !dbg !6278
  %tobool230 = icmp ne i64 %and229, 0, !dbg !6278
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !6278

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !6278

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub233 = sub i64 %54, 1, !dbg !6278
  %and234 = and i64 %sub233, 262144, !dbg !6278
  %tobool235 = icmp ne i64 %and234, 0, !dbg !6278
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !6278

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !6278

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub238 = sub i64 %55, 1, !dbg !6278
  %and239 = and i64 %sub238, 131072, !dbg !6278
  %tobool240 = icmp ne i64 %and239, 0, !dbg !6278
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !6278

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !6278

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub243 = sub i64 %56, 1, !dbg !6278
  %and244 = and i64 %sub243, 65536, !dbg !6278
  %tobool245 = icmp ne i64 %and244, 0, !dbg !6278
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !6278

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !6278

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub248 = sub i64 %57, 1, !dbg !6278
  %and249 = and i64 %sub248, 32768, !dbg !6278
  %tobool250 = icmp ne i64 %and249, 0, !dbg !6278
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !6278

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !6278

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub253 = sub i64 %58, 1, !dbg !6278
  %and254 = and i64 %sub253, 16384, !dbg !6278
  %tobool255 = icmp ne i64 %and254, 0, !dbg !6278
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !6278

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !6278

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub258 = sub i64 %59, 1, !dbg !6278
  %and259 = and i64 %sub258, 8192, !dbg !6278
  %tobool260 = icmp ne i64 %and259, 0, !dbg !6278
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !6278

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !6278

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub263 = sub i64 %60, 1, !dbg !6278
  %and264 = and i64 %sub263, 4096, !dbg !6278
  %tobool265 = icmp ne i64 %and264, 0, !dbg !6278
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !6278

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !6278

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub268 = sub i64 %61, 1, !dbg !6278
  %and269 = and i64 %sub268, 2048, !dbg !6278
  %tobool270 = icmp ne i64 %and269, 0, !dbg !6278
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !6278

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !6278

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub273 = sub i64 %62, 1, !dbg !6278
  %and274 = and i64 %sub273, 1024, !dbg !6278
  %tobool275 = icmp ne i64 %and274, 0, !dbg !6278
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !6278

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !6278

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub278 = sub i64 %63, 1, !dbg !6278
  %and279 = and i64 %sub278, 512, !dbg !6278
  %tobool280 = icmp ne i64 %and279, 0, !dbg !6278
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !6278

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !6278

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub283 = sub i64 %64, 1, !dbg !6278
  %and284 = and i64 %sub283, 256, !dbg !6278
  %tobool285 = icmp ne i64 %and284, 0, !dbg !6278
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !6278

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !6278

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub288 = sub i64 %65, 1, !dbg !6278
  %and289 = and i64 %sub288, 128, !dbg !6278
  %tobool290 = icmp ne i64 %and289, 0, !dbg !6278
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !6278

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !6278

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub293 = sub i64 %66, 1, !dbg !6278
  %and294 = and i64 %sub293, 64, !dbg !6278
  %tobool295 = icmp ne i64 %and294, 0, !dbg !6278
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !6278

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !6278

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub298 = sub i64 %67, 1, !dbg !6278
  %and299 = and i64 %sub298, 32, !dbg !6278
  %tobool300 = icmp ne i64 %and299, 0, !dbg !6278
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !6278

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !6278

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub303 = sub i64 %68, 1, !dbg !6278
  %and304 = and i64 %sub303, 16, !dbg !6278
  %tobool305 = icmp ne i64 %and304, 0, !dbg !6278
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !6278

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !6278

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub308 = sub i64 %69, 1, !dbg !6278
  %and309 = and i64 %sub308, 8, !dbg !6278
  %tobool310 = icmp ne i64 %and309, 0, !dbg !6278
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !6278

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !6278

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub313 = sub i64 %70, 1, !dbg !6278
  %and314 = and i64 %sub313, 4, !dbg !6278
  %tobool315 = icmp ne i64 %and314, 0, !dbg !6278
  %71 = zext i1 %tobool315 to i64, !dbg !6278
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !6278
  br label %cond.end, !dbg !6278

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !6278
  br label %cond.end317, !dbg !6278

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !6278
  br label %cond.end319, !dbg !6278

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !6278
  br label %cond.end321, !dbg !6278

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !6278
  br label %cond.end323, !dbg !6278

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !6278
  br label %cond.end325, !dbg !6278

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !6278
  br label %cond.end327, !dbg !6278

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !6278
  br label %cond.end329, !dbg !6278

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !6278
  br label %cond.end331, !dbg !6278

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !6278
  br label %cond.end333, !dbg !6278

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !6278
  br label %cond.end335, !dbg !6278

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !6278
  br label %cond.end337, !dbg !6278

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !6278
  br label %cond.end339, !dbg !6278

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !6278
  br label %cond.end341, !dbg !6278

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !6278
  br label %cond.end343, !dbg !6278

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !6278
  br label %cond.end345, !dbg !6278

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !6278
  br label %cond.end347, !dbg !6278

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !6278
  br label %cond.end349, !dbg !6278

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !6278
  br label %cond.end351, !dbg !6278

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !6278
  br label %cond.end353, !dbg !6278

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !6278
  br label %cond.end355, !dbg !6278

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !6278
  br label %cond.end357, !dbg !6278

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !6278
  br label %cond.end359, !dbg !6278

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !6278
  br label %cond.end361, !dbg !6278

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !6278
  br label %cond.end363, !dbg !6278

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !6278
  br label %cond.end365, !dbg !6278

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !6278
  br label %cond.end367, !dbg !6278

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !6278
  br label %cond.end369, !dbg !6278

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !6278
  br label %cond.end371, !dbg !6278

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !6278
  br label %cond.end373, !dbg !6278

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !6278
  br label %cond.end375, !dbg !6278

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !6278
  br label %cond.end377, !dbg !6278

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !6278
  br label %cond.end379, !dbg !6278

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !6278
  br label %cond.end381, !dbg !6278

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !6278
  br label %cond.end383, !dbg !6278

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !6278
  br label %cond.end385, !dbg !6278

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !6278
  br label %cond.end387, !dbg !6278

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !6278
  br label %cond.end389, !dbg !6278

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !6278
  br label %cond.end391, !dbg !6278

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !6278
  br label %cond.end393, !dbg !6278

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !6278
  br label %cond.end395, !dbg !6278

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !6278
  br label %cond.end397, !dbg !6278

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !6278
  br label %cond.end399, !dbg !6278

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !6278
  br label %cond.end401, !dbg !6278

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !6278
  br label %cond.end403, !dbg !6278

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !6278
  br label %cond.end405, !dbg !6278

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !6278
  br label %cond.end407, !dbg !6278

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !6278
  br label %cond.end409, !dbg !6278

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !6278
  br label %cond.end411, !dbg !6278

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !6278
  br label %cond.end413, !dbg !6278

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !6278
  br label %cond.end415, !dbg !6278

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !6278
  br label %cond.end417, !dbg !6278

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !6278
  br label %cond.end419, !dbg !6278

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !6278
  br label %cond.end421, !dbg !6278

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !6278
  br label %cond.end423, !dbg !6278

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !6278
  br label %cond.end425, !dbg !6278

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !6278
  br label %cond.end427, !dbg !6278

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !6278
  br label %cond.end429, !dbg !6278

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !6278
  br label %cond.end431, !dbg !6278

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !6278
  br label %cond.end433, !dbg !6278

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !6278
  br label %cond.end435, !dbg !6278

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !6278
  br label %cond.end437, !dbg !6278

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !6278
  br label %cond.end440, !dbg !6278

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !6278

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !6278
  br label %cond.end444, !dbg !6278

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !6278
  %sub443 = sub i64 %72, 1, !dbg !6278
  %call = call i32 @__ilog2_u64(i64 %sub443) #13, !dbg !6278
  br label %cond.end444, !dbg !6278

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !6278
  %sub446 = sub i32 %cond445, 12, !dbg !6279
  %add = add i32 %sub446, 1, !dbg !6280
  store i32 %add, i32* %retval, align 4, !dbg !6281
  br label %return, !dbg !6281

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !6282
  %dec = add i64 %73, -1, !dbg !6282
  store i64 %dec, i64* %size.addr, align 8, !dbg !6282
  %74 = load i64, i64* %size.addr, align 8, !dbg !6283
  %shr = lshr i64 %74, 12, !dbg !6283
  store i64 %shr, i64* %size.addr, align 8, !dbg !6283
  %75 = load i64, i64* %size.addr, align 8, !dbg !6284
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6261
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !6285
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !6286
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #15, !dbg !6285, !srcloc !6287
  store i32 %78, i32* %bitpos.i, align 4, !dbg !6285
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !6288
  %add.i = add i32 %79, 1, !dbg !6289
  store i32 %add.i, i32* %retval, align 4, !dbg !6290
  br label %return, !dbg !6290

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !6291
  ret i32 %80, !dbg !6291
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !6292 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6253, metadata !DIExpression()), !dbg !6296
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6260, metadata !DIExpression()), !dbg !6298
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !6299, metadata !DIExpression()), !dbg !6300
  %0 = load i64, i64* %n.addr, align 8, !dbg !6301
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6298
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !6302
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !6303
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #15, !dbg !6302, !srcloc !6287
  store i32 %3, i32* %bitpos.i, align 4, !dbg !6302
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !6304
  %add.i = add i32 %4, 1, !dbg !6305
  %sub = sub i32 %add.i, 1, !dbg !6306
  ret i32 %sub, !dbg !6307
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #1 !dbg !6308 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !6312, metadata !DIExpression()), !dbg !6313
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !6314, metadata !DIExpression()), !dbg !6315
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6316, metadata !DIExpression()), !dbg !6317
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6318, metadata !DIExpression()), !dbg !6319
  %0 = load i8*, i8** %object.addr, align 8, !dbg !6320
  ret i8* %0, !dbg !6321
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @msi001_standby(%struct.v4l2_subdev* %sd) #1 !dbg !6322 {
entry:
  %sd.addr = alloca %struct.v4l2_subdev*, align 8
  %dev = alloca %struct.msi001_dev*, align 8
  store %struct.v4l2_subdev* %sd, %struct.v4l2_subdev** %sd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_subdev** %sd.addr, metadata !6323, metadata !DIExpression()), !dbg !6324
  call void @llvm.dbg.declare(metadata %struct.msi001_dev** %dev, metadata !6325, metadata !DIExpression()), !dbg !6326
  %0 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %sd.addr, align 8, !dbg !6327
  %call = call %struct.msi001_dev* @sd_to_msi001_dev(%struct.v4l2_subdev* %0) #10, !dbg !6328
  store %struct.msi001_dev* %call, %struct.msi001_dev** %dev, align 8, !dbg !6326
  %1 = load %struct.msi001_dev*, %struct.msi001_dev** %dev, align 8, !dbg !6329
  %call1 = call i32 @msi001_wreg(%struct.msi001_dev* %1, i32 0) #10, !dbg !6330
  ret i32 %call1, !dbg !6331
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @msi001_s_frequency(%struct.v4l2_subdev* %sd, %struct.v4l2_frequency* %f) #1 !dbg !6332 {
entry:
  %sd.addr = alloca %struct.v4l2_subdev*, align 8
  %f.addr = alloca %struct.v4l2_frequency*, align 8
  %dev = alloca %struct.msi001_dev*, align 8
  %spi = alloca %struct.spi_device*, align 8
  %band = alloca i32, align 4
  %__UNIQUE_ID___x259 = alloca i32, align 4
  %__UNIQUE_ID___x257 = alloca i32, align 4
  %__UNIQUE_ID___y258 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___y260 = alloca i32, align 4
  %tmp6 = alloca i32, align 4
  store %struct.v4l2_subdev* %sd, %struct.v4l2_subdev** %sd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_subdev** %sd.addr, metadata !6333, metadata !DIExpression()), !dbg !6334
  store %struct.v4l2_frequency* %f, %struct.v4l2_frequency** %f.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_frequency** %f.addr, metadata !6335, metadata !DIExpression()), !dbg !6336
  call void @llvm.dbg.declare(metadata %struct.msi001_dev** %dev, metadata !6337, metadata !DIExpression()), !dbg !6338
  %0 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %sd.addr, align 8, !dbg !6339
  %call = call %struct.msi001_dev* @sd_to_msi001_dev(%struct.v4l2_subdev* %0) #10, !dbg !6340
  store %struct.msi001_dev* %call, %struct.msi001_dev** %dev, align 8, !dbg !6338
  call void @llvm.dbg.declare(metadata %struct.spi_device** %spi, metadata !6341, metadata !DIExpression()), !dbg !6342
  %1 = load %struct.msi001_dev*, %struct.msi001_dev** %dev, align 8, !dbg !6343
  %spi1 = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %1, i32 0, i32 0, !dbg !6344
  %2 = load %struct.spi_device*, %struct.spi_device** %spi1, align 8, !dbg !6344
  store %struct.spi_device* %2, %struct.spi_device** %spi, align 8, !dbg !6342
  call void @llvm.dbg.declare(metadata i32* %band, metadata !6345, metadata !DIExpression()), !dbg !6346
  %3 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %f.addr, align 8, !dbg !6347
  %frequency = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %3, i32 0, i32 2, !dbg !6349
  %4 = load i32, i32* %frequency, align 4, !dbg !6349
  %5 = load i32, i32* getelementptr inbounds ([2 x %struct.v4l2_frequency_band], [2 x %struct.v4l2_frequency_band]* @bands, i64 0, i64 0, i32 5), align 4, !dbg !6350
  %6 = load i32, i32* getelementptr inbounds ([2 x %struct.v4l2_frequency_band], [2 x %struct.v4l2_frequency_band]* @bands, i64 0, i64 1, i32 4), align 16, !dbg !6351
  %add = add i32 %5, %6, !dbg !6352
  %div = udiv i32 %add, 2, !dbg !6353
  %cmp = icmp ult i32 %4, %div, !dbg !6354
  br i1 %cmp, label %if.then, label %if.else, !dbg !6355

if.then:                                          ; preds = %entry
  store i32 0, i32* %band, align 4, !dbg !6356
  br label %if.end, !dbg !6357

if.else:                                          ; preds = %entry
  store i32 1, i32* %band, align 4, !dbg !6358
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x259, metadata !6359, metadata !DIExpression()), !dbg !6361
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x257, metadata !6362, metadata !DIExpression()), !dbg !6364
  %7 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %f.addr, align 8, !dbg !6364
  %frequency2 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %7, i32 0, i32 2, !dbg !6364
  %8 = load i32, i32* %frequency2, align 4, !dbg !6364
  store i32 %8, i32* %__UNIQUE_ID___x257, align 4, !dbg !6364
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y258, metadata !6365, metadata !DIExpression()), !dbg !6364
  %9 = load i32, i32* %band, align 4, !dbg !6364
  %idxprom = zext i32 %9 to i64, !dbg !6364
  %arrayidx = getelementptr [2 x %struct.v4l2_frequency_band], [2 x %struct.v4l2_frequency_band]* @bands, i64 0, i64 %idxprom, !dbg !6364
  %rangelow = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %arrayidx, i32 0, i32 4, !dbg !6364
  %10 = load i32, i32* %rangelow, align 16, !dbg !6364
  store i32 %10, i32* %__UNIQUE_ID___y258, align 4, !dbg !6364
  %11 = load i32, i32* %__UNIQUE_ID___x257, align 4, !dbg !6364
  %12 = load i32, i32* %__UNIQUE_ID___y258, align 4, !dbg !6364
  %cmp3 = icmp ugt i32 %11, %12, !dbg !6364
  br i1 %cmp3, label %cond.true, label %cond.false, !dbg !6364

cond.true:                                        ; preds = %if.end
  %13 = load i32, i32* %__UNIQUE_ID___x257, align 4, !dbg !6364
  br label %cond.end, !dbg !6364

cond.false:                                       ; preds = %if.end
  %14 = load i32, i32* %__UNIQUE_ID___y258, align 4, !dbg !6364
  br label %cond.end, !dbg !6364

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %13, %cond.true ], [ %14, %cond.false ], !dbg !6364
  store i32 %cond, i32* %tmp, align 4, !dbg !6364
  %15 = load i32, i32* %tmp, align 4, !dbg !6364
  store i32 %15, i32* %__UNIQUE_ID___x259, align 4, !dbg !6361
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y260, metadata !6366, metadata !DIExpression()), !dbg !6361
  %16 = load i32, i32* %band, align 4, !dbg !6361
  %idxprom4 = zext i32 %16 to i64, !dbg !6361
  %arrayidx5 = getelementptr [2 x %struct.v4l2_frequency_band], [2 x %struct.v4l2_frequency_band]* @bands, i64 0, i64 %idxprom4, !dbg !6361
  %rangehigh = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %arrayidx5, i32 0, i32 5, !dbg !6361
  %17 = load i32, i32* %rangehigh, align 4, !dbg !6361
  store i32 %17, i32* %__UNIQUE_ID___y260, align 4, !dbg !6361
  %18 = load i32, i32* %__UNIQUE_ID___x259, align 4, !dbg !6361
  %19 = load i32, i32* %__UNIQUE_ID___y260, align 4, !dbg !6361
  %cmp7 = icmp ult i32 %18, %19, !dbg !6361
  br i1 %cmp7, label %cond.true8, label %cond.false9, !dbg !6361

cond.true8:                                       ; preds = %cond.end
  %20 = load i32, i32* %__UNIQUE_ID___x259, align 4, !dbg !6361
  br label %cond.end10, !dbg !6361

cond.false9:                                      ; preds = %cond.end
  %21 = load i32, i32* %__UNIQUE_ID___y260, align 4, !dbg !6361
  br label %cond.end10, !dbg !6361

cond.end10:                                       ; preds = %cond.false9, %cond.true8
  %cond11 = phi i32 [ %20, %cond.true8 ], [ %21, %cond.false9 ], !dbg !6361
  store i32 %cond11, i32* %tmp6, align 4, !dbg !6361
  %22 = load i32, i32* %tmp6, align 4, !dbg !6361
  %23 = load %struct.msi001_dev*, %struct.msi001_dev** %dev, align 8, !dbg !6367
  %f_tuner = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %23, i32 0, i32 8, !dbg !6368
  store i32 %22, i32* %f_tuner, align 8, !dbg !6369
  %24 = load %struct.msi001_dev*, %struct.msi001_dev** %dev, align 8, !dbg !6370
  %call12 = call i32 @msi001_set_tuner(%struct.msi001_dev* %24) #10, !dbg !6371
  ret i32 %call12, !dbg !6372
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @msi001_g_frequency(%struct.v4l2_subdev* %sd, %struct.v4l2_frequency* %f) #1 !dbg !6373 {
entry:
  %sd.addr = alloca %struct.v4l2_subdev*, align 8
  %f.addr = alloca %struct.v4l2_frequency*, align 8
  %dev = alloca %struct.msi001_dev*, align 8
  %spi = alloca %struct.spi_device*, align 8
  store %struct.v4l2_subdev* %sd, %struct.v4l2_subdev** %sd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_subdev** %sd.addr, metadata !6374, metadata !DIExpression()), !dbg !6375
  store %struct.v4l2_frequency* %f, %struct.v4l2_frequency** %f.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_frequency** %f.addr, metadata !6376, metadata !DIExpression()), !dbg !6377
  call void @llvm.dbg.declare(metadata %struct.msi001_dev** %dev, metadata !6378, metadata !DIExpression()), !dbg !6379
  %0 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %sd.addr, align 8, !dbg !6380
  %call = call %struct.msi001_dev* @sd_to_msi001_dev(%struct.v4l2_subdev* %0) #10, !dbg !6381
  store %struct.msi001_dev* %call, %struct.msi001_dev** %dev, align 8, !dbg !6379
  call void @llvm.dbg.declare(metadata %struct.spi_device** %spi, metadata !6382, metadata !DIExpression()), !dbg !6383
  %1 = load %struct.msi001_dev*, %struct.msi001_dev** %dev, align 8, !dbg !6384
  %spi1 = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %1, i32 0, i32 0, !dbg !6385
  %2 = load %struct.spi_device*, %struct.spi_device** %spi1, align 8, !dbg !6385
  store %struct.spi_device* %2, %struct.spi_device** %spi, align 8, !dbg !6383
  %3 = load %struct.msi001_dev*, %struct.msi001_dev** %dev, align 8, !dbg !6386
  %f_tuner = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %3, i32 0, i32 8, !dbg !6387
  %4 = load i32, i32* %f_tuner, align 8, !dbg !6387
  %5 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %f.addr, align 8, !dbg !6388
  %frequency = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %5, i32 0, i32 2, !dbg !6389
  store i32 %4, i32* %frequency, align 4, !dbg !6390
  ret i32 0, !dbg !6391
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @msi001_enum_freq_bands(%struct.v4l2_subdev* %sd, %struct.v4l2_frequency_band* %band) #1 !dbg !6392 {
entry:
  %retval = alloca i32, align 4
  %sd.addr = alloca %struct.v4l2_subdev*, align 8
  %band.addr = alloca %struct.v4l2_frequency_band*, align 8
  %dev = alloca %struct.msi001_dev*, align 8
  %spi = alloca %struct.spi_device*, align 8
  store %struct.v4l2_subdev* %sd, %struct.v4l2_subdev** %sd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_subdev** %sd.addr, metadata !6393, metadata !DIExpression()), !dbg !6394
  store %struct.v4l2_frequency_band* %band, %struct.v4l2_frequency_band** %band.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_frequency_band** %band.addr, metadata !6395, metadata !DIExpression()), !dbg !6396
  call void @llvm.dbg.declare(metadata %struct.msi001_dev** %dev, metadata !6397, metadata !DIExpression()), !dbg !6398
  %0 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %sd.addr, align 8, !dbg !6399
  %call = call %struct.msi001_dev* @sd_to_msi001_dev(%struct.v4l2_subdev* %0) #10, !dbg !6400
  store %struct.msi001_dev* %call, %struct.msi001_dev** %dev, align 8, !dbg !6398
  call void @llvm.dbg.declare(metadata %struct.spi_device** %spi, metadata !6401, metadata !DIExpression()), !dbg !6402
  %1 = load %struct.msi001_dev*, %struct.msi001_dev** %dev, align 8, !dbg !6403
  %spi1 = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %1, i32 0, i32 0, !dbg !6404
  %2 = load %struct.spi_device*, %struct.spi_device** %spi1, align 8, !dbg !6404
  store %struct.spi_device* %2, %struct.spi_device** %spi, align 8, !dbg !6402
  %3 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %band.addr, align 8, !dbg !6405
  %index = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %3, i32 0, i32 2, !dbg !6407
  %4 = load i32, i32* %index, align 4, !dbg !6407
  %conv = zext i32 %4 to i64, !dbg !6405
  %cmp = icmp uge i64 %conv, 2, !dbg !6408
  br i1 %cmp, label %if.then, label %if.end, !dbg !6409

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !6410
  br label %return, !dbg !6410

if.end:                                           ; preds = %entry
  %5 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %band.addr, align 8, !dbg !6411
  %index3 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %5, i32 0, i32 2, !dbg !6412
  %6 = load i32, i32* %index3, align 4, !dbg !6412
  %idxprom = zext i32 %6 to i64, !dbg !6413
  %arrayidx = getelementptr [2 x %struct.v4l2_frequency_band], [2 x %struct.v4l2_frequency_band]* @bands, i64 0, i64 %idxprom, !dbg !6413
  %capability = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %arrayidx, i32 0, i32 3, !dbg !6414
  %7 = load i32, i32* %capability, align 4, !dbg !6414
  %8 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %band.addr, align 8, !dbg !6415
  %capability4 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %8, i32 0, i32 3, !dbg !6416
  store i32 %7, i32* %capability4, align 4, !dbg !6417
  %9 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %band.addr, align 8, !dbg !6418
  %index5 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %9, i32 0, i32 2, !dbg !6419
  %10 = load i32, i32* %index5, align 4, !dbg !6419
  %idxprom6 = zext i32 %10 to i64, !dbg !6420
  %arrayidx7 = getelementptr [2 x %struct.v4l2_frequency_band], [2 x %struct.v4l2_frequency_band]* @bands, i64 0, i64 %idxprom6, !dbg !6420
  %rangelow = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %arrayidx7, i32 0, i32 4, !dbg !6421
  %11 = load i32, i32* %rangelow, align 16, !dbg !6421
  %12 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %band.addr, align 8, !dbg !6422
  %rangelow8 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %12, i32 0, i32 4, !dbg !6423
  store i32 %11, i32* %rangelow8, align 4, !dbg !6424
  %13 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %band.addr, align 8, !dbg !6425
  %index9 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %13, i32 0, i32 2, !dbg !6426
  %14 = load i32, i32* %index9, align 4, !dbg !6426
  %idxprom10 = zext i32 %14 to i64, !dbg !6427
  %arrayidx11 = getelementptr [2 x %struct.v4l2_frequency_band], [2 x %struct.v4l2_frequency_band]* @bands, i64 0, i64 %idxprom10, !dbg !6427
  %rangehigh = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %arrayidx11, i32 0, i32 5, !dbg !6428
  %15 = load i32, i32* %rangehigh, align 4, !dbg !6428
  %16 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %band.addr, align 8, !dbg !6429
  %rangehigh12 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %16, i32 0, i32 5, !dbg !6430
  store i32 %15, i32* %rangehigh12, align 4, !dbg !6431
  store i32 0, i32* %retval, align 4, !dbg !6432
  br label %return, !dbg !6432

return:                                           ; preds = %if.end, %if.then
  %17 = load i32, i32* %retval, align 4, !dbg !6433
  ret i32 %17, !dbg !6433
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @msi001_g_tuner(%struct.v4l2_subdev* %sd, %struct.v4l2_tuner* %v) #1 !dbg !6434 {
entry:
  %sd.addr = alloca %struct.v4l2_subdev*, align 8
  %v.addr = alloca %struct.v4l2_tuner*, align 8
  %dev = alloca %struct.msi001_dev*, align 8
  %spi = alloca %struct.spi_device*, align 8
  store %struct.v4l2_subdev* %sd, %struct.v4l2_subdev** %sd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_subdev** %sd.addr, metadata !6435, metadata !DIExpression()), !dbg !6436
  store %struct.v4l2_tuner* %v, %struct.v4l2_tuner** %v.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_tuner** %v.addr, metadata !6437, metadata !DIExpression()), !dbg !6438
  call void @llvm.dbg.declare(metadata %struct.msi001_dev** %dev, metadata !6439, metadata !DIExpression()), !dbg !6440
  %0 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %sd.addr, align 8, !dbg !6441
  %call = call %struct.msi001_dev* @sd_to_msi001_dev(%struct.v4l2_subdev* %0) #10, !dbg !6442
  store %struct.msi001_dev* %call, %struct.msi001_dev** %dev, align 8, !dbg !6440
  call void @llvm.dbg.declare(metadata %struct.spi_device** %spi, metadata !6443, metadata !DIExpression()), !dbg !6444
  %1 = load %struct.msi001_dev*, %struct.msi001_dev** %dev, align 8, !dbg !6445
  %spi1 = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %1, i32 0, i32 0, !dbg !6446
  %2 = load %struct.spi_device*, %struct.spi_device** %spi1, align 8, !dbg !6446
  store %struct.spi_device* %2, %struct.spi_device** %spi, align 8, !dbg !6444
  %3 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %v.addr, align 8, !dbg !6447
  %name = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %3, i32 0, i32 1, !dbg !6448
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %name, i64 0, i64 0, !dbg !6447
  %call2 = call i64 @strscpy(i8* %arraydecay, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i64 32) #10, !dbg !6449
  %4 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %v.addr, align 8, !dbg !6450
  %type = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %4, i32 0, i32 2, !dbg !6451
  store i32 5, i32* %type, align 4, !dbg !6452
  %5 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %v.addr, align 8, !dbg !6453
  %capability = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %5, i32 0, i32 3, !dbg !6454
  store i32 5120, i32* %capability, align 4, !dbg !6455
  %6 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %v.addr, align 8, !dbg !6456
  %rangelow = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %6, i32 0, i32 4, !dbg !6457
  store i32 49000000, i32* %rangelow, align 4, !dbg !6458
  %7 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %v.addr, align 8, !dbg !6459
  %rangehigh = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %7, i32 0, i32 5, !dbg !6460
  store i32 960000000, i32* %rangehigh, align 4, !dbg !6461
  ret i32 0, !dbg !6462
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @msi001_s_tuner(%struct.v4l2_subdev* %sd, %struct.v4l2_tuner* %v) #1 !dbg !6463 {
entry:
  %sd.addr = alloca %struct.v4l2_subdev*, align 8
  %v.addr = alloca %struct.v4l2_tuner*, align 8
  %dev = alloca %struct.msi001_dev*, align 8
  %spi = alloca %struct.spi_device*, align 8
  store %struct.v4l2_subdev* %sd, %struct.v4l2_subdev** %sd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_subdev** %sd.addr, metadata !6464, metadata !DIExpression()), !dbg !6465
  store %struct.v4l2_tuner* %v, %struct.v4l2_tuner** %v.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_tuner** %v.addr, metadata !6466, metadata !DIExpression()), !dbg !6467
  call void @llvm.dbg.declare(metadata %struct.msi001_dev** %dev, metadata !6468, metadata !DIExpression()), !dbg !6469
  %0 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %sd.addr, align 8, !dbg !6470
  %call = call %struct.msi001_dev* @sd_to_msi001_dev(%struct.v4l2_subdev* %0) #10, !dbg !6471
  store %struct.msi001_dev* %call, %struct.msi001_dev** %dev, align 8, !dbg !6469
  call void @llvm.dbg.declare(metadata %struct.spi_device** %spi, metadata !6472, metadata !DIExpression()), !dbg !6473
  %1 = load %struct.msi001_dev*, %struct.msi001_dev** %dev, align 8, !dbg !6474
  %spi1 = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %1, i32 0, i32 0, !dbg !6475
  %2 = load %struct.spi_device*, %struct.spi_device** %spi1, align 8, !dbg !6475
  store %struct.spi_device* %2, %struct.spi_device** %spi, align 8, !dbg !6473
  ret i32 0, !dbg !6476
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.msi001_dev* @sd_to_msi001_dev(%struct.v4l2_subdev* %sd) #1 !dbg !6477 {
entry:
  %sd.addr = alloca %struct.v4l2_subdev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.msi001_dev*, align 8
  store %struct.v4l2_subdev* %sd, %struct.v4l2_subdev** %sd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_subdev** %sd.addr, metadata !6480, metadata !DIExpression()), !dbg !6481
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6482, metadata !DIExpression()), !dbg !6484
  %0 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %sd.addr, align 8, !dbg !6484
  %1 = bitcast %struct.v4l2_subdev* %0 to i8*, !dbg !6484
  store i8* %1, i8** %__mptr, align 8, !dbg !6484
  br label %do.body, !dbg !6484

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6485

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !6484
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !6484
  %3 = bitcast i8* %add.ptr to %struct.msi001_dev*, !dbg !6484
  store %struct.msi001_dev* %3, %struct.msi001_dev** %tmp, align 8, !dbg !6485
  %4 = load %struct.msi001_dev*, %struct.msi001_dev** %tmp, align 8, !dbg !6484
  ret %struct.msi001_dev* %4, !dbg !6487
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @msi001_wreg(%struct.msi001_dev* %dev, i32 %data) #1 !dbg !6488 {
entry:
  %dev.addr = alloca %struct.msi001_dev*, align 8
  %data.addr = alloca i32, align 4
  store %struct.msi001_dev* %dev, %struct.msi001_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.msi001_dev** %dev.addr, metadata !6491, metadata !DIExpression()), !dbg !6492
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !6493, metadata !DIExpression()), !dbg !6494
  %0 = load %struct.msi001_dev*, %struct.msi001_dev** %dev.addr, align 8, !dbg !6495
  %spi = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %0, i32 0, i32 0, !dbg !6496
  %1 = load %struct.spi_device*, %struct.spi_device** %spi, align 8, !dbg !6496
  %2 = bitcast i32* %data.addr to i8*, !dbg !6497
  %call = call i32 @spi_write(%struct.spi_device* %1, i8* %2, i64 3) #10, !dbg !6498
  ret i32 %call, !dbg !6499
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @spi_write(%struct.spi_device* %spi, i8* %buf, i64 %len) #1 !dbg !6500 {
entry:
  %spi.addr = alloca %struct.spi_device*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %t = alloca %struct.spi_transfer, align 8
  store %struct.spi_device* %spi, %struct.spi_device** %spi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_device** %spi.addr, metadata !6503, metadata !DIExpression()), !dbg !6504
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6505, metadata !DIExpression()), !dbg !6506
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !6507, metadata !DIExpression()), !dbg !6508
  call void @llvm.dbg.declare(metadata %struct.spi_transfer* %t, metadata !6509, metadata !DIExpression()), !dbg !6510
  %0 = bitcast %struct.spi_transfer* %t to i8*, !dbg !6510
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 144, i1 false), !dbg !6510
  %tx_buf = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %t, i32 0, i32 0, !dbg !6511
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !6512
  store i8* %1, i8** %tx_buf, align 8, !dbg !6511
  %len1 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %t, i32 0, i32 2, !dbg !6511
  %2 = load i64, i64* %len.addr, align 8, !dbg !6513
  %conv = trunc i64 %2 to i32, !dbg !6513
  store i32 %conv, i32* %len1, align 8, !dbg !6511
  %cs_change = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %t, i32 0, i32 7, !dbg !6511
  %tx_nbits = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %t, i32 0, i32 7, !dbg !6511
  %rx_nbits = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %t, i32 0, i32 7, !dbg !6511
  %3 = load %struct.spi_device*, %struct.spi_device** %spi.addr, align 8, !dbg !6514
  %call = call i32 @spi_sync_transfer(%struct.spi_device* %3, %struct.spi_transfer* %t, i32 1) #10, !dbg !6515
  ret i32 %call, !dbg !6516
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @spi_sync_transfer(%struct.spi_device* %spi, %struct.spi_transfer* %xfers, i32 %num_xfers) #1 !dbg !6517 {
entry:
  %spi.addr = alloca %struct.spi_device*, align 8
  %xfers.addr = alloca %struct.spi_transfer*, align 8
  %num_xfers.addr = alloca i32, align 4
  %msg = alloca %struct.spi_message, align 8
  store %struct.spi_device* %spi, %struct.spi_device** %spi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_device** %spi.addr, metadata !6520, metadata !DIExpression()), !dbg !6521
  store %struct.spi_transfer* %xfers, %struct.spi_transfer** %xfers.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_transfer** %xfers.addr, metadata !6522, metadata !DIExpression()), !dbg !6523
  store i32 %num_xfers, i32* %num_xfers.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_xfers.addr, metadata !6524, metadata !DIExpression()), !dbg !6525
  call void @llvm.dbg.declare(metadata %struct.spi_message* %msg, metadata !6526, metadata !DIExpression()), !dbg !6527
  %0 = load %struct.spi_transfer*, %struct.spi_transfer** %xfers.addr, align 8, !dbg !6528
  %1 = load i32, i32* %num_xfers.addr, align 4, !dbg !6529
  call void @spi_message_init_with_transfers(%struct.spi_message* %msg, %struct.spi_transfer* %0, i32 %1) #10, !dbg !6530
  %2 = load %struct.spi_device*, %struct.spi_device** %spi.addr, align 8, !dbg !6531
  %call = call i32 @spi_sync(%struct.spi_device* %2, %struct.spi_message* %msg) #10, !dbg !6532
  ret i32 %call, !dbg !6533
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @spi_message_init_with_transfers(%struct.spi_message* %m, %struct.spi_transfer* %xfers, i32 %num_xfers) #1 !dbg !6534 {
entry:
  %m.addr = alloca %struct.spi_message*, align 8
  %xfers.addr = alloca %struct.spi_transfer*, align 8
  %num_xfers.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.spi_message* %m, %struct.spi_message** %m.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_message** %m.addr, metadata !6537, metadata !DIExpression()), !dbg !6538
  store %struct.spi_transfer* %xfers, %struct.spi_transfer** %xfers.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_transfer** %xfers.addr, metadata !6539, metadata !DIExpression()), !dbg !6540
  store i32 %num_xfers, i32* %num_xfers.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_xfers.addr, metadata !6541, metadata !DIExpression()), !dbg !6542
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6543, metadata !DIExpression()), !dbg !6544
  %0 = load %struct.spi_message*, %struct.spi_message** %m.addr, align 8, !dbg !6545
  call void @spi_message_init(%struct.spi_message* %0) #10, !dbg !6546
  store i32 0, i32* %i, align 4, !dbg !6547
  br label %for.cond, !dbg !6549

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !6550
  %2 = load i32, i32* %num_xfers.addr, align 4, !dbg !6552
  %cmp = icmp ult i32 %1, %2, !dbg !6553
  br i1 %cmp, label %for.body, label %for.end, !dbg !6554

for.body:                                         ; preds = %for.cond
  %3 = load %struct.spi_transfer*, %struct.spi_transfer** %xfers.addr, align 8, !dbg !6555
  %4 = load i32, i32* %i, align 4, !dbg !6556
  %idxprom = zext i32 %4 to i64, !dbg !6555
  %arrayidx = getelementptr %struct.spi_transfer, %struct.spi_transfer* %3, i64 %idxprom, !dbg !6555
  %5 = load %struct.spi_message*, %struct.spi_message** %m.addr, align 8, !dbg !6557
  call void @spi_message_add_tail(%struct.spi_transfer* %arrayidx, %struct.spi_message* %5) #10, !dbg !6558
  br label %for.inc, !dbg !6558

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !6559
  %inc = add i32 %6, 1, !dbg !6559
  store i32 %inc, i32* %i, align 4, !dbg !6559
  br label %for.cond, !dbg !6560, !llvm.loop !6561

for.end:                                          ; preds = %for.cond
  ret void, !dbg !6563
}

; Function Attrs: noredzone
declare dso_local i32 @spi_sync(%struct.spi_device*, %struct.spi_message*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @spi_message_init(%struct.spi_message* %m) #1 !dbg !6564 {
entry:
  %m.addr = alloca %struct.spi_message*, align 8
  store %struct.spi_message* %m, %struct.spi_message** %m.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_message** %m.addr, metadata !6567, metadata !DIExpression()), !dbg !6568
  %0 = load %struct.spi_message*, %struct.spi_message** %m.addr, align 8, !dbg !6569
  %1 = bitcast %struct.spi_message* %0 to i8*, !dbg !6570
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 104, i1 false), !dbg !6570
  %2 = load %struct.spi_message*, %struct.spi_message** %m.addr, align 8, !dbg !6571
  call void @spi_message_init_no_memset(%struct.spi_message* %2) #10, !dbg !6572
  ret void, !dbg !6573
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @spi_message_add_tail(%struct.spi_transfer* %t, %struct.spi_message* %m) #1 !dbg !6574 {
entry:
  %t.addr = alloca %struct.spi_transfer*, align 8
  %m.addr = alloca %struct.spi_message*, align 8
  store %struct.spi_transfer* %t, %struct.spi_transfer** %t.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_transfer** %t.addr, metadata !6577, metadata !DIExpression()), !dbg !6578
  store %struct.spi_message* %m, %struct.spi_message** %m.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_message** %m.addr, metadata !6579, metadata !DIExpression()), !dbg !6580
  %0 = load %struct.spi_transfer*, %struct.spi_transfer** %t.addr, align 8, !dbg !6581
  %transfer_list = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %0, i32 0, i32 19, !dbg !6582
  %1 = load %struct.spi_message*, %struct.spi_message** %m.addr, align 8, !dbg !6583
  %transfers = getelementptr inbounds %struct.spi_message, %struct.spi_message* %1, i32 0, i32 0, !dbg !6584
  call void @list_add_tail(%struct.list_head* %transfer_list, %struct.list_head* %transfers) #10, !dbg !6585
  ret void, !dbg !6586
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @spi_message_init_no_memset(%struct.spi_message* %m) #1 !dbg !6587 {
entry:
  %m.addr = alloca %struct.spi_message*, align 8
  store %struct.spi_message* %m, %struct.spi_message** %m.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_message** %m.addr, metadata !6588, metadata !DIExpression()), !dbg !6589
  %0 = load %struct.spi_message*, %struct.spi_message** %m.addr, align 8, !dbg !6590
  %transfers = getelementptr inbounds %struct.spi_message, %struct.spi_message* %0, i32 0, i32 0, !dbg !6591
  call void @INIT_LIST_HEAD(%struct.list_head* %transfers) #10, !dbg !6592
  %1 = load %struct.spi_message*, %struct.spi_message** %m.addr, align 8, !dbg !6593
  %resources = getelementptr inbounds %struct.spi_message, %struct.spi_message* %1, i32 0, i32 10, !dbg !6594
  call void @INIT_LIST_HEAD(%struct.list_head* %resources) #10, !dbg !6595
  ret void, !dbg !6596
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #1 !dbg !6597 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !6601, metadata !DIExpression()), !dbg !6602
  br label %do.body, !dbg !6603

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6604

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6606

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6604

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !6608
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !6608
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !6608
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !6608
  br label %do.end3, !dbg !6608

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !6604

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !6610
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !6611
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !6612
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !6613
  ret void, !dbg !6614
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #1 !dbg !6615 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !6618, metadata !DIExpression()), !dbg !6619
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !6620, metadata !DIExpression()), !dbg !6621
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6622
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !6623
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !6624
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !6624
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !6625
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #10, !dbg !6626
  ret void, !dbg !6627
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #1 !dbg !6628 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !6631, metadata !DIExpression()), !dbg !6632
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !6633, metadata !DIExpression()), !dbg !6634
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !6635, metadata !DIExpression()), !dbg !6636
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6637
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6639
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6640
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #10, !dbg !6641
  br i1 %call, label %if.end, label %if.then, !dbg !6642

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !6643

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6644
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6645
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !6646
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !6647
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6648
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6649
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !6650
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !6651
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6652
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6653
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !6654
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !6655
  br label %do.body, !dbg !6656

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !6657

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !6659

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !6657

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6661
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6661
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !6661
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !6661
  br label %do.end7, !dbg !6661

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !6657

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !6663
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #1 !dbg !6664 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !6667, metadata !DIExpression()), !dbg !6668
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !6669, metadata !DIExpression()), !dbg !6670
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !6671, metadata !DIExpression()), !dbg !6672
  ret i1 true, !dbg !6673
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @msi001_set_tuner(%struct.msi001_dev* %dev) #1 !dbg !5813 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.msi001_dev*, align 8
  %spi = alloca %struct.spi_device*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %uitmp = alloca i32, align 4
  %div_n = alloca i32, align 4
  %k = alloca i32, align 4
  %k_thresh = alloca i32, align 4
  %k_frac = alloca i32, align 4
  %div_lo = alloca i32, align 4
  %f_if1 = alloca i32, align 4
  %reg = alloca i32, align 4
  %f_vco = alloca i64, align 8
  %mode = alloca i8, align 1
  %filter_mode = alloca i8, align 1
  %f_rf = alloca i32, align 4
  %bandwidth = alloca i32, align 4
  %f_if = alloca i32, align 4
  %__UNIQUE_ID___x255 = alloca i32, align 4
  %__UNIQUE_ID___x253 = alloca i32, align 4
  %__UNIQUE_ID___y254 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___y256 = alloca i32, align 4
  %tmp45 = alloca i32, align 4
  %__x = alloca i32, align 4
  %__d = alloca i32, align 4
  %tmp98 = alloca i32, align 4
  %__x102 = alloca i32, align 4
  %__d103 = alloca i32, align 4
  %tmp104 = alloca i32, align 4
  store %struct.msi001_dev* %dev, %struct.msi001_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.msi001_dev** %dev.addr, metadata !6674, metadata !DIExpression()), !dbg !6675
  call void @llvm.dbg.declare(metadata %struct.spi_device** %spi, metadata !6676, metadata !DIExpression()), !dbg !6677
  %0 = load %struct.msi001_dev*, %struct.msi001_dev** %dev.addr, align 8, !dbg !6678
  %spi1 = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %0, i32 0, i32 0, !dbg !6679
  %1 = load %struct.spi_device*, %struct.spi_device** %spi1, align 8, !dbg !6679
  store %struct.spi_device* %1, %struct.spi_device** %spi, align 8, !dbg !6677
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6680, metadata !DIExpression()), !dbg !6681
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6682, metadata !DIExpression()), !dbg !6683
  call void @llvm.dbg.declare(metadata i32* %uitmp, metadata !6684, metadata !DIExpression()), !dbg !6685
  call void @llvm.dbg.declare(metadata i32* %div_n, metadata !6686, metadata !DIExpression()), !dbg !6687
  call void @llvm.dbg.declare(metadata i32* %k, metadata !6688, metadata !DIExpression()), !dbg !6689
  call void @llvm.dbg.declare(metadata i32* %k_thresh, metadata !6690, metadata !DIExpression()), !dbg !6691
  call void @llvm.dbg.declare(metadata i32* %k_frac, metadata !6692, metadata !DIExpression()), !dbg !6693
  call void @llvm.dbg.declare(metadata i32* %div_lo, metadata !6694, metadata !DIExpression()), !dbg !6695
  call void @llvm.dbg.declare(metadata i32* %f_if1, metadata !6696, metadata !DIExpression()), !dbg !6697
  call void @llvm.dbg.declare(metadata i32* %reg, metadata !6698, metadata !DIExpression()), !dbg !6699
  call void @llvm.dbg.declare(metadata i64* %f_vco, metadata !6700, metadata !DIExpression()), !dbg !6701
  call void @llvm.dbg.declare(metadata i8* %mode, metadata !6702, metadata !DIExpression()), !dbg !6703
  call void @llvm.dbg.declare(metadata i8* %filter_mode, metadata !6704, metadata !DIExpression()), !dbg !6705
  call void @llvm.dbg.declare(metadata i32* %f_rf, metadata !6706, metadata !DIExpression()), !dbg !6707
  %2 = load %struct.msi001_dev*, %struct.msi001_dev** %dev.addr, align 8, !dbg !6708
  %f_tuner = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %2, i32 0, i32 8, !dbg !6709
  %3 = load i32, i32* %f_tuner, align 8, !dbg !6709
  store i32 %3, i32* %f_rf, align 4, !dbg !6707
  call void @llvm.dbg.declare(metadata i32* %bandwidth, metadata !6710, metadata !DIExpression()), !dbg !6711
  call void @llvm.dbg.declare(metadata i32* %f_if, metadata !6712, metadata !DIExpression()), !dbg !6713
  store i32 0, i32* %f_if, align 4, !dbg !6713
  store i32 0, i32* %i, align 4, !dbg !6714
  br label %for.cond, !dbg !6716

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !dbg !6717
  %conv = sext i32 %4 to i64, !dbg !6717
  %cmp = icmp ult i64 %conv, 5, !dbg !6719
  br i1 %cmp, label %for.body, label %for.end, !dbg !6720

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %f_rf, align 4, !dbg !6721
  %6 = load i32, i32* %i, align 4, !dbg !6724
  %idxprom = sext i32 %6 to i64, !dbg !6725
  %arrayidx = getelementptr [5 x %struct.anon.79], [5 x %struct.anon.79]* @msi001_set_tuner.band_lut, i64 0, i64 %idxprom, !dbg !6725
  %rf = getelementptr inbounds %struct.anon.79, %struct.anon.79* %arrayidx, i32 0, i32 0, !dbg !6726
  %7 = load i32, i32* %rf, align 8, !dbg !6726
  %cmp3 = icmp ule i32 %5, %7, !dbg !6727
  br i1 %cmp3, label %if.then, label %if.end, !dbg !6728

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !6729
  %idxprom5 = sext i32 %8 to i64, !dbg !6731
  %arrayidx6 = getelementptr [5 x %struct.anon.79], [5 x %struct.anon.79]* @msi001_set_tuner.band_lut, i64 0, i64 %idxprom5, !dbg !6731
  %mode7 = getelementptr inbounds %struct.anon.79, %struct.anon.79* %arrayidx6, i32 0, i32 1, !dbg !6732
  %9 = load i8, i8* %mode7, align 4, !dbg !6732
  store i8 %9, i8* %mode, align 1, !dbg !6733
  %10 = load i32, i32* %i, align 4, !dbg !6734
  %idxprom8 = sext i32 %10 to i64, !dbg !6735
  %arrayidx9 = getelementptr [5 x %struct.anon.79], [5 x %struct.anon.79]* @msi001_set_tuner.band_lut, i64 0, i64 %idxprom8, !dbg !6735
  %div_lo10 = getelementptr inbounds %struct.anon.79, %struct.anon.79* %arrayidx9, i32 0, i32 2, !dbg !6736
  %11 = load i8, i8* %div_lo10, align 1, !dbg !6736
  %conv11 = zext i8 %11 to i32, !dbg !6735
  store i32 %conv11, i32* %div_lo, align 4, !dbg !6737
  br label %for.end, !dbg !6738

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !6739

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4, !dbg !6740
  %inc = add i32 %12, 1, !dbg !6740
  store i32 %inc, i32* %i, align 4, !dbg !6740
  br label %for.cond, !dbg !6741, !llvm.loop !6742

for.end:                                          ; preds = %if.then, %for.cond
  %13 = load i32, i32* %i, align 4, !dbg !6744
  %conv12 = sext i32 %13 to i64, !dbg !6744
  %cmp13 = icmp eq i64 %conv12, 5, !dbg !6746
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !6747

if.then15:                                        ; preds = %for.end
  store i32 -22, i32* %ret, align 4, !dbg !6748
  br label %err, !dbg !6750

if.end16:                                         ; preds = %for.end
  %14 = load i8, i8* %mode, align 1, !dbg !6751
  %conv17 = zext i8 %14 to i32, !dbg !6751
  %shr = ashr i32 %conv17, 0, !dbg !6753
  %and = and i32 %shr, 1, !dbg !6754
  %tobool = icmp ne i32 %and, 0, !dbg !6754
  br i1 %tobool, label %if.then18, label %if.else, !dbg !6755

if.then18:                                        ; preds = %if.end16
  store i32 120000000, i32* %f_if1, align 4, !dbg !6756
  br label %if.end19, !dbg !6757

if.else:                                          ; preds = %if.end16
  store i32 0, i32* %f_if1, align 4, !dbg !6758
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then18
  store i32 0, i32* %i, align 4, !dbg !6759
  br label %for.cond20, !dbg !6761

for.cond20:                                       ; preds = %for.inc34, %if.end19
  %15 = load i32, i32* %i, align 4, !dbg !6762
  %conv21 = sext i32 %15 to i64, !dbg !6762
  %cmp22 = icmp ult i64 %conv21, 4, !dbg !6764
  br i1 %cmp22, label %for.body24, label %for.end36, !dbg !6765

for.body24:                                       ; preds = %for.cond20
  %16 = load i32, i32* %f_if, align 4, !dbg !6766
  %17 = load i32, i32* %i, align 4, !dbg !6769
  %idxprom25 = sext i32 %17 to i64, !dbg !6770
  %arrayidx26 = getelementptr [4 x %struct.anon.80], [4 x %struct.anon.80]* @msi001_set_tuner.if_freq_lut, i64 0, i64 %idxprom25, !dbg !6770
  %freq = getelementptr inbounds %struct.anon.80, %struct.anon.80* %arrayidx26, i32 0, i32 0, !dbg !6771
  %18 = load i32, i32* %freq, align 8, !dbg !6771
  %cmp27 = icmp eq i32 %16, %18, !dbg !6772
  br i1 %cmp27, label %if.then29, label %if.end33, !dbg !6773

if.then29:                                        ; preds = %for.body24
  %19 = load i32, i32* %i, align 4, !dbg !6774
  %idxprom30 = sext i32 %19 to i64, !dbg !6776
  %arrayidx31 = getelementptr [4 x %struct.anon.80], [4 x %struct.anon.80]* @msi001_set_tuner.if_freq_lut, i64 0, i64 %idxprom30, !dbg !6776
  %filter_mode32 = getelementptr inbounds %struct.anon.80, %struct.anon.80* %arrayidx31, i32 0, i32 1, !dbg !6777
  %20 = load i8, i8* %filter_mode32, align 4, !dbg !6777
  store i8 %20, i8* %filter_mode, align 1, !dbg !6778
  br label %for.end36, !dbg !6779

if.end33:                                         ; preds = %for.body24
  br label %for.inc34, !dbg !6780

for.inc34:                                        ; preds = %if.end33
  %21 = load i32, i32* %i, align 4, !dbg !6781
  %inc35 = add i32 %21, 1, !dbg !6781
  store i32 %inc35, i32* %i, align 4, !dbg !6781
  br label %for.cond20, !dbg !6782, !llvm.loop !6783

for.end36:                                        ; preds = %if.then29, %for.cond20
  %22 = load i32, i32* %i, align 4, !dbg !6785
  %conv37 = sext i32 %22 to i64, !dbg !6785
  %cmp38 = icmp eq i64 %conv37, 4, !dbg !6787
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !6788

if.then40:                                        ; preds = %for.end36
  store i32 -22, i32* %ret, align 4, !dbg !6789
  br label %err, !dbg !6791

if.end41:                                         ; preds = %for.end36
  %23 = load %struct.msi001_dev*, %struct.msi001_dev** %dev.addr, align 8, !dbg !6792
  %bandwidth42 = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %23, i32 0, i32 4, !dbg !6793
  %24 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %bandwidth42, align 8, !dbg !6793
  %val = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %24, i32 0, i32 22, !dbg !6794
  %25 = load i32, i32* %val, align 8, !dbg !6794
  store i32 %25, i32* %bandwidth, align 4, !dbg !6795
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x255, metadata !6796, metadata !DIExpression()), !dbg !6798
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x253, metadata !6799, metadata !DIExpression()), !dbg !6801
  %26 = load i32, i32* %bandwidth, align 4, !dbg !6801
  store i32 %26, i32* %__UNIQUE_ID___x253, align 4, !dbg !6801
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y254, metadata !6802, metadata !DIExpression()), !dbg !6801
  store i32 200000, i32* %__UNIQUE_ID___y254, align 4, !dbg !6801
  %27 = load i32, i32* %__UNIQUE_ID___x253, align 4, !dbg !6801
  %28 = load i32, i32* %__UNIQUE_ID___y254, align 4, !dbg !6801
  %cmp43 = icmp ugt i32 %27, %28, !dbg !6801
  br i1 %cmp43, label %cond.true, label %cond.false, !dbg !6801

cond.true:                                        ; preds = %if.end41
  %29 = load i32, i32* %__UNIQUE_ID___x253, align 4, !dbg !6801
  br label %cond.end, !dbg !6801

cond.false:                                       ; preds = %if.end41
  %30 = load i32, i32* %__UNIQUE_ID___y254, align 4, !dbg !6801
  br label %cond.end, !dbg !6801

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %29, %cond.true ], [ %30, %cond.false ], !dbg !6801
  store i32 %cond, i32* %tmp, align 4, !dbg !6801
  %31 = load i32, i32* %tmp, align 4, !dbg !6801
  store i32 %31, i32* %__UNIQUE_ID___x255, align 4, !dbg !6798
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y256, metadata !6803, metadata !DIExpression()), !dbg !6798
  store i32 8000000, i32* %__UNIQUE_ID___y256, align 4, !dbg !6798
  %32 = load i32, i32* %__UNIQUE_ID___x255, align 4, !dbg !6798
  %33 = load i32, i32* %__UNIQUE_ID___y256, align 4, !dbg !6798
  %cmp46 = icmp ult i32 %32, %33, !dbg !6798
  br i1 %cmp46, label %cond.true48, label %cond.false49, !dbg !6798

cond.true48:                                      ; preds = %cond.end
  %34 = load i32, i32* %__UNIQUE_ID___x255, align 4, !dbg !6798
  br label %cond.end50, !dbg !6798

cond.false49:                                     ; preds = %cond.end
  %35 = load i32, i32* %__UNIQUE_ID___y256, align 4, !dbg !6798
  br label %cond.end50, !dbg !6798

cond.end50:                                       ; preds = %cond.false49, %cond.true48
  %cond51 = phi i32 [ %34, %cond.true48 ], [ %35, %cond.false49 ], !dbg !6798
  store i32 %cond51, i32* %tmp45, align 4, !dbg !6798
  %36 = load i32, i32* %tmp45, align 4, !dbg !6798
  store i32 %36, i32* %bandwidth, align 4, !dbg !6804
  store i32 0, i32* %i, align 4, !dbg !6805
  br label %for.cond52, !dbg !6807

for.cond52:                                       ; preds = %for.inc68, %cond.end50
  %37 = load i32, i32* %i, align 4, !dbg !6808
  %conv53 = sext i32 %37 to i64, !dbg !6808
  %cmp54 = icmp ult i64 %conv53, 8, !dbg !6810
  br i1 %cmp54, label %for.body56, label %for.end70, !dbg !6811

for.body56:                                       ; preds = %for.cond52
  %38 = load i32, i32* %bandwidth, align 4, !dbg !6812
  %39 = load i32, i32* %i, align 4, !dbg !6815
  %idxprom57 = sext i32 %39 to i64, !dbg !6816
  %arrayidx58 = getelementptr [8 x %struct.anon.81], [8 x %struct.anon.81]* @msi001_set_tuner.bandwidth_lut, i64 0, i64 %idxprom57, !dbg !6816
  %freq59 = getelementptr inbounds %struct.anon.81, %struct.anon.81* %arrayidx58, i32 0, i32 0, !dbg !6817
  %40 = load i32, i32* %freq59, align 8, !dbg !6817
  %cmp60 = icmp ule i32 %38, %40, !dbg !6818
  br i1 %cmp60, label %if.then62, label %if.end67, !dbg !6819

if.then62:                                        ; preds = %for.body56
  %41 = load i32, i32* %i, align 4, !dbg !6820
  %idxprom63 = sext i32 %41 to i64, !dbg !6822
  %arrayidx64 = getelementptr [8 x %struct.anon.81], [8 x %struct.anon.81]* @msi001_set_tuner.bandwidth_lut, i64 0, i64 %idxprom63, !dbg !6822
  %val65 = getelementptr inbounds %struct.anon.81, %struct.anon.81* %arrayidx64, i32 0, i32 1, !dbg !6823
  %42 = load i8, i8* %val65, align 4, !dbg !6823
  %conv66 = zext i8 %42 to i32, !dbg !6822
  store i32 %conv66, i32* %bandwidth, align 4, !dbg !6824
  br label %for.end70, !dbg !6825

if.end67:                                         ; preds = %for.body56
  br label %for.inc68, !dbg !6826

for.inc68:                                        ; preds = %if.end67
  %43 = load i32, i32* %i, align 4, !dbg !6827
  %inc69 = add i32 %43, 1, !dbg !6827
  store i32 %inc69, i32* %i, align 4, !dbg !6827
  br label %for.cond52, !dbg !6828, !llvm.loop !6829

for.end70:                                        ; preds = %if.then62, %for.cond52
  %44 = load i32, i32* %i, align 4, !dbg !6831
  %conv71 = sext i32 %44 to i64, !dbg !6831
  %cmp72 = icmp eq i64 %conv71, 8, !dbg !6833
  br i1 %cmp72, label %if.then74, label %if.end75, !dbg !6834

if.then74:                                        ; preds = %for.end70
  store i32 -22, i32* %ret, align 4, !dbg !6835
  br label %err, !dbg !6837

if.end75:                                         ; preds = %for.end70
  %45 = load i32, i32* %i, align 4, !dbg !6838
  %idxprom76 = sext i32 %45 to i64, !dbg !6839
  %arrayidx77 = getelementptr [8 x %struct.anon.81], [8 x %struct.anon.81]* @msi001_set_tuner.bandwidth_lut, i64 0, i64 %idxprom76, !dbg !6839
  %freq78 = getelementptr inbounds %struct.anon.81, %struct.anon.81* %arrayidx77, i32 0, i32 0, !dbg !6840
  %46 = load i32, i32* %freq78, align 8, !dbg !6840
  %47 = load %struct.msi001_dev*, %struct.msi001_dev** %dev.addr, align 8, !dbg !6841
  %bandwidth79 = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %47, i32 0, i32 4, !dbg !6842
  %48 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %bandwidth79, align 8, !dbg !6842
  %val80 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %48, i32 0, i32 22, !dbg !6843
  store i32 %46, i32* %val80, align 8, !dbg !6844
  %49 = load i32, i32* %f_rf, align 4, !dbg !6845
  %50 = load i32, i32* %f_if, align 4, !dbg !6846
  %add = add i32 %49, %50, !dbg !6847
  %51 = load i32, i32* %f_if1, align 4, !dbg !6848
  %add81 = add i32 %add, %51, !dbg !6849
  %conv82 = zext i32 %add81 to i64, !dbg !6850
  %52 = load i32, i32* %div_lo, align 4, !dbg !6851
  %conv83 = zext i32 %52 to i64, !dbg !6851
  %mul = mul i64 %conv82, %conv83, !dbg !6852
  store i64 %mul, i64* %f_vco, align 8, !dbg !6853
  %53 = load i64, i64* %f_vco, align 8, !dbg !6854
  %call = call i64 @div_u64_rem(i64 %53, i32 96000000, i32* %k) #10, !dbg !6855
  %conv84 = trunc i64 %call to i32, !dbg !6855
  store i32 %conv84, i32* %div_n, align 4, !dbg !6856
  %54 = load i32, i32* %div_lo, align 4, !dbg !6857
  %div = udiv i32 96000000, %54, !dbg !6858
  store i32 %div, i32* %k_thresh, align 4, !dbg !6859
  %55 = load i32, i32* %k, align 4, !dbg !6860
  %conv85 = zext i32 %55 to i64, !dbg !6861
  %56 = load i32, i32* %k_thresh, align 4, !dbg !6862
  %conv86 = zext i32 %56 to i64, !dbg !6862
  %mul87 = mul i64 %conv85, %conv86, !dbg !6863
  %call88 = call i64 @div_u64(i64 %mul87, i32 96000000) #10, !dbg !6864
  %conv89 = trunc i64 %call88 to i32, !dbg !6864
  store i32 %conv89, i32* %k_frac, align 4, !dbg !6865
  %57 = load i32, i32* %k_thresh, align 4, !dbg !6866
  %conv90 = zext i32 %57 to i64, !dbg !6866
  %58 = load i32, i32* %k_frac, align 4, !dbg !6867
  %conv91 = zext i32 %58 to i64, !dbg !6867
  %call92 = call i64 @gcd(i64 %conv90, i64 %conv91) #13, !dbg !6868
  %conv93 = trunc i64 %call92 to i32, !dbg !6868
  store i32 %conv93, i32* %uitmp, align 4, !dbg !6869
  %59 = load i32, i32* %uitmp, align 4, !dbg !6870
  %60 = load i32, i32* %k_thresh, align 4, !dbg !6871
  %div94 = udiv i32 %60, %59, !dbg !6871
  store i32 %div94, i32* %k_thresh, align 4, !dbg !6871
  %61 = load i32, i32* %uitmp, align 4, !dbg !6872
  %62 = load i32, i32* %k_frac, align 4, !dbg !6873
  %div95 = udiv i32 %62, %61, !dbg !6873
  store i32 %div95, i32* %k_frac, align 4, !dbg !6873
  %63 = load i32, i32* %k_thresh, align 4, !dbg !6874
  %add96 = add i32 %63, 4095, !dbg !6874
  %sub = sub i32 %add96, 1, !dbg !6874
  %div97 = udiv i32 %sub, 4095, !dbg !6874
  store i32 %div97, i32* %uitmp, align 4, !dbg !6875
  call void @llvm.dbg.declare(metadata i32* %__x, metadata !6876, metadata !DIExpression()), !dbg !6878
  %64 = load i32, i32* %k_thresh, align 4, !dbg !6878
  store i32 %64, i32* %__x, align 4, !dbg !6878
  call void @llvm.dbg.declare(metadata i32* %__d, metadata !6879, metadata !DIExpression()), !dbg !6878
  %65 = load i32, i32* %uitmp, align 4, !dbg !6878
  store i32 %65, i32* %__d, align 4, !dbg !6878
  %66 = load i32, i32* %__x, align 4, !dbg !6878
  %67 = load i32, i32* %__d, align 4, !dbg !6878
  %div99 = udiv i32 %67, 2, !dbg !6878
  %add100 = add i32 %66, %div99, !dbg !6878
  %68 = load i32, i32* %__d, align 4, !dbg !6878
  %div101 = udiv i32 %add100, %68, !dbg !6878
  store i32 %div101, i32* %tmp98, align 4, !dbg !6878
  %69 = load i32, i32* %tmp98, align 4, !dbg !6878
  store i32 %69, i32* %k_thresh, align 4, !dbg !6880
  call void @llvm.dbg.declare(metadata i32* %__x102, metadata !6881, metadata !DIExpression()), !dbg !6883
  %70 = load i32, i32* %k_frac, align 4, !dbg !6883
  store i32 %70, i32* %__x102, align 4, !dbg !6883
  call void @llvm.dbg.declare(metadata i32* %__d103, metadata !6884, metadata !DIExpression()), !dbg !6883
  %71 = load i32, i32* %uitmp, align 4, !dbg !6883
  store i32 %71, i32* %__d103, align 4, !dbg !6883
  %72 = load i32, i32* %__x102, align 4, !dbg !6883
  %73 = load i32, i32* %__d103, align 4, !dbg !6883
  %div105 = udiv i32 %73, 2, !dbg !6883
  %add106 = add i32 %72, %div105, !dbg !6883
  %74 = load i32, i32* %__d103, align 4, !dbg !6883
  %div107 = udiv i32 %add106, %74, !dbg !6883
  store i32 %div107, i32* %tmp104, align 4, !dbg !6883
  %75 = load i32, i32* %tmp104, align 4, !dbg !6883
  store i32 %75, i32* %k_frac, align 4, !dbg !6885
  %76 = load i32, i32* %div_n, align 4, !dbg !6886
  %mul108 = mul i32 96000000, %76, !dbg !6887
  store i32 %mul108, i32* %uitmp, align 4, !dbg !6888
  %77 = load i32, i32* %k_frac, align 4, !dbg !6889
  %mul109 = mul i32 96000000, %77, !dbg !6890
  %78 = load i32, i32* %k_thresh, align 4, !dbg !6891
  %div110 = udiv i32 %mul109, %78, !dbg !6892
  %79 = load i32, i32* %uitmp, align 4, !dbg !6893
  %add111 = add i32 %79, %div110, !dbg !6893
  store i32 %add111, i32* %uitmp, align 4, !dbg !6893
  %80 = load i32, i32* %div_lo, align 4, !dbg !6894
  %81 = load i32, i32* %uitmp, align 4, !dbg !6895
  %div112 = udiv i32 %81, %80, !dbg !6895
  store i32 %div112, i32* %uitmp, align 4, !dbg !6895
  %82 = load %struct.msi001_dev*, %struct.msi001_dev** %dev.addr, align 8, !dbg !6896
  %call113 = call i32 @msi001_wreg(%struct.msi001_dev* %82, i32 14) #10, !dbg !6897
  store i32 %call113, i32* %ret, align 4, !dbg !6898
  %83 = load i32, i32* %ret, align 4, !dbg !6899
  %tobool114 = icmp ne i32 %83, 0, !dbg !6899
  br i1 %tobool114, label %if.then115, label %if.end116, !dbg !6901

if.then115:                                       ; preds = %if.end75
  br label %err, !dbg !6902

if.end116:                                        ; preds = %if.end75
  %84 = load %struct.msi001_dev*, %struct.msi001_dev** %dev.addr, align 8, !dbg !6903
  %call117 = call i32 @msi001_wreg(%struct.msi001_dev* %84, i32 3) #10, !dbg !6904
  store i32 %call117, i32* %ret, align 4, !dbg !6905
  %85 = load i32, i32* %ret, align 4, !dbg !6906
  %tobool118 = icmp ne i32 %85, 0, !dbg !6906
  br i1 %tobool118, label %if.then119, label %if.end120, !dbg !6908

if.then119:                                       ; preds = %if.end116
  br label %err, !dbg !6909

if.end120:                                        ; preds = %if.end116
  store i32 0, i32* %reg, align 4, !dbg !6910
  %86 = load i8, i8* %mode, align 1, !dbg !6911
  %conv121 = zext i8 %86 to i32, !dbg !6911
  %shl = shl i32 %conv121, 4, !dbg !6912
  %87 = load i32, i32* %reg, align 4, !dbg !6913
  %or = or i32 %87, %shl, !dbg !6913
  store i32 %or, i32* %reg, align 4, !dbg !6913
  %88 = load i8, i8* %filter_mode, align 1, !dbg !6914
  %conv122 = zext i8 %88 to i32, !dbg !6914
  %shl123 = shl i32 %conv122, 12, !dbg !6915
  %89 = load i32, i32* %reg, align 4, !dbg !6916
  %or124 = or i32 %89, %shl123, !dbg !6916
  store i32 %or124, i32* %reg, align 4, !dbg !6916
  %90 = load i32, i32* %bandwidth, align 4, !dbg !6917
  %shl125 = shl i32 %90, 14, !dbg !6918
  %91 = load i32, i32* %reg, align 4, !dbg !6919
  %or126 = or i32 %91, %shl125, !dbg !6919
  store i32 %or126, i32* %reg, align 4, !dbg !6919
  %92 = load i32, i32* %reg, align 4, !dbg !6920
  %or127 = or i32 %92, 262144, !dbg !6920
  store i32 %or127, i32* %reg, align 4, !dbg !6920
  %93 = load i32, i32* %reg, align 4, !dbg !6921
  store i32 %93, i32* %reg, align 4, !dbg !6921
  %94 = load %struct.msi001_dev*, %struct.msi001_dev** %dev.addr, align 8, !dbg !6922
  %95 = load i32, i32* %reg, align 4, !dbg !6923
  %call128 = call i32 @msi001_wreg(%struct.msi001_dev* %94, i32 %95) #10, !dbg !6924
  store i32 %call128, i32* %ret, align 4, !dbg !6925
  %96 = load i32, i32* %ret, align 4, !dbg !6926
  %tobool129 = icmp ne i32 %96, 0, !dbg !6926
  br i1 %tobool129, label %if.then130, label %if.end131, !dbg !6928

if.then130:                                       ; preds = %if.end120
  br label %err, !dbg !6929

if.end131:                                        ; preds = %if.end120
  store i32 5, i32* %reg, align 4, !dbg !6930
  %97 = load i32, i32* %k_thresh, align 4, !dbg !6931
  %shl132 = shl i32 %97, 4, !dbg !6932
  %98 = load i32, i32* %reg, align 4, !dbg !6933
  %or133 = or i32 %98, %shl132, !dbg !6933
  store i32 %or133, i32* %reg, align 4, !dbg !6933
  %99 = load i32, i32* %reg, align 4, !dbg !6934
  %or134 = or i32 %99, 524288, !dbg !6934
  store i32 %or134, i32* %reg, align 4, !dbg !6934
  %100 = load i32, i32* %reg, align 4, !dbg !6935
  %or135 = or i32 %100, 2097152, !dbg !6935
  store i32 %or135, i32* %reg, align 4, !dbg !6935
  %101 = load %struct.msi001_dev*, %struct.msi001_dev** %dev.addr, align 8, !dbg !6936
  %102 = load i32, i32* %reg, align 4, !dbg !6937
  %call136 = call i32 @msi001_wreg(%struct.msi001_dev* %101, i32 %102) #10, !dbg !6938
  store i32 %call136, i32* %ret, align 4, !dbg !6939
  %103 = load i32, i32* %ret, align 4, !dbg !6940
  %tobool137 = icmp ne i32 %103, 0, !dbg !6940
  br i1 %tobool137, label %if.then138, label %if.end139, !dbg !6942

if.then138:                                       ; preds = %if.end131
  br label %err, !dbg !6943

if.end139:                                        ; preds = %if.end131
  store i32 2, i32* %reg, align 4, !dbg !6944
  %104 = load i32, i32* %k_frac, align 4, !dbg !6945
  %shl140 = shl i32 %104, 4, !dbg !6946
  %105 = load i32, i32* %reg, align 4, !dbg !6947
  %or141 = or i32 %105, %shl140, !dbg !6947
  store i32 %or141, i32* %reg, align 4, !dbg !6947
  %106 = load i32, i32* %div_n, align 4, !dbg !6948
  %shl142 = shl i32 %106, 16, !dbg !6949
  %107 = load i32, i32* %reg, align 4, !dbg !6950
  %or143 = or i32 %107, %shl142, !dbg !6950
  store i32 %or143, i32* %reg, align 4, !dbg !6950
  %108 = load %struct.msi001_dev*, %struct.msi001_dev** %dev.addr, align 8, !dbg !6951
  %109 = load i32, i32* %reg, align 4, !dbg !6952
  %call144 = call i32 @msi001_wreg(%struct.msi001_dev* %108, i32 %109) #10, !dbg !6953
  store i32 %call144, i32* %ret, align 4, !dbg !6954
  %110 = load i32, i32* %ret, align 4, !dbg !6955
  %tobool145 = icmp ne i32 %110, 0, !dbg !6955
  br i1 %tobool145, label %if.then146, label %if.end147, !dbg !6957

if.then146:                                       ; preds = %if.end139
  br label %err, !dbg !6958

if.end147:                                        ; preds = %if.end139
  %111 = load %struct.msi001_dev*, %struct.msi001_dev** %dev.addr, align 8, !dbg !6959
  %112 = load %struct.msi001_dev*, %struct.msi001_dev** %dev.addr, align 8, !dbg !6960
  %lna_gain = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %112, i32 0, i32 5, !dbg !6961
  %113 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %lna_gain, align 8, !dbg !6961
  %cur = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %113, i32 0, i32 23, !dbg !6962
  %val148 = getelementptr inbounds %struct.anon.72, %struct.anon.72* %cur, i32 0, i32 0, !dbg !6963
  %114 = load i32, i32* %val148, align 4, !dbg !6963
  %115 = load %struct.msi001_dev*, %struct.msi001_dev** %dev.addr, align 8, !dbg !6964
  %mixer_gain = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %115, i32 0, i32 6, !dbg !6965
  %116 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %mixer_gain, align 8, !dbg !6965
  %cur149 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %116, i32 0, i32 23, !dbg !6966
  %val150 = getelementptr inbounds %struct.anon.72, %struct.anon.72* %cur149, i32 0, i32 0, !dbg !6967
  %117 = load i32, i32* %val150, align 4, !dbg !6967
  %118 = load %struct.msi001_dev*, %struct.msi001_dev** %dev.addr, align 8, !dbg !6968
  %if_gain = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %118, i32 0, i32 7, !dbg !6969
  %119 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %if_gain, align 8, !dbg !6969
  %cur151 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %119, i32 0, i32 23, !dbg !6970
  %val152 = getelementptr inbounds %struct.anon.72, %struct.anon.72* %cur151, i32 0, i32 0, !dbg !6971
  %120 = load i32, i32* %val152, align 4, !dbg !6971
  %call153 = call i32 @msi001_set_gain(%struct.msi001_dev* %111, i32 %114, i32 %117, i32 %120) #10, !dbg !6972
  store i32 %call153, i32* %ret, align 4, !dbg !6973
  %121 = load i32, i32* %ret, align 4, !dbg !6974
  %tobool154 = icmp ne i32 %121, 0, !dbg !6974
  br i1 %tobool154, label %if.then155, label %if.end156, !dbg !6976

if.then155:                                       ; preds = %if.end147
  br label %err, !dbg !6977

if.end156:                                        ; preds = %if.end147
  store i32 6, i32* %reg, align 4, !dbg !6978
  %122 = load i32, i32* %reg, align 4, !dbg !6979
  %or157 = or i32 %122, 1008, !dbg !6979
  store i32 %or157, i32* %reg, align 4, !dbg !6979
  %123 = load i32, i32* %reg, align 4, !dbg !6980
  %or158 = or i32 %123, 4193280, !dbg !6980
  store i32 %or158, i32* %reg, align 4, !dbg !6980
  %124 = load %struct.msi001_dev*, %struct.msi001_dev** %dev.addr, align 8, !dbg !6981
  %125 = load i32, i32* %reg, align 4, !dbg !6982
  %call159 = call i32 @msi001_wreg(%struct.msi001_dev* %124, i32 %125) #10, !dbg !6983
  store i32 %call159, i32* %ret, align 4, !dbg !6984
  %126 = load i32, i32* %ret, align 4, !dbg !6985
  %tobool160 = icmp ne i32 %126, 0, !dbg !6985
  br i1 %tobool160, label %if.then161, label %if.end162, !dbg !6987

if.then161:                                       ; preds = %if.end156
  br label %err, !dbg !6988

if.end162:                                        ; preds = %if.end156
  store i32 0, i32* %retval, align 4, !dbg !6989
  br label %return, !dbg !6989

err:                                              ; preds = %if.then161, %if.then155, %if.then146, %if.then138, %if.then130, %if.then119, %if.then115, %if.then74, %if.then40, %if.then15
  call void @llvm.dbg.label(metadata !6990), !dbg !6991
  %127 = load i32, i32* %ret, align 4, !dbg !6992
  store i32 %127, i32* %retval, align 4, !dbg !6993
  br label %return, !dbg !6993

return:                                           ; preds = %err, %if.end162
  %128 = load i32, i32* %retval, align 4, !dbg !6994
  ret i32 %128, !dbg !6994
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @div_u64_rem(i64 %dividend, i32 %divisor, i32* %remainder) #1 !dbg !6995 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder.addr = alloca i32*, align 8
  store i64 %dividend, i64* %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dividend.addr, metadata !6999, metadata !DIExpression()), !dbg !7000
  store i32 %divisor, i32* %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %divisor.addr, metadata !7001, metadata !DIExpression()), !dbg !7002
  store i32* %remainder, i32** %remainder.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %remainder.addr, metadata !7003, metadata !DIExpression()), !dbg !7004
  %0 = load i64, i64* %dividend.addr, align 8, !dbg !7005
  %1 = load i32, i32* %divisor.addr, align 4, !dbg !7006
  %conv = zext i32 %1 to i64, !dbg !7006
  %rem = urem i64 %0, %conv, !dbg !7007
  %conv1 = trunc i64 %rem to i32, !dbg !7005
  %2 = load i32*, i32** %remainder.addr, align 8, !dbg !7008
  store i32 %conv1, i32* %2, align 4, !dbg !7009
  %3 = load i64, i64* %dividend.addr, align 8, !dbg !7010
  %4 = load i32, i32* %divisor.addr, align 4, !dbg !7011
  %conv2 = zext i32 %4 to i64, !dbg !7011
  %div = udiv i64 %3, %conv2, !dbg !7012
  ret i64 %div, !dbg !7013
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @div_u64(i64 %dividend, i32 %divisor) #1 !dbg !7014 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder = alloca i32, align 4
  store i64 %dividend, i64* %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dividend.addr, metadata !7017, metadata !DIExpression()), !dbg !7018
  store i32 %divisor, i32* %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %divisor.addr, metadata !7019, metadata !DIExpression()), !dbg !7020
  call void @llvm.dbg.declare(metadata i32* %remainder, metadata !7021, metadata !DIExpression()), !dbg !7022
  %0 = load i64, i64* %dividend.addr, align 8, !dbg !7023
  %1 = load i32, i32* %divisor.addr, align 4, !dbg !7024
  %call = call i64 @div_u64_rem(i64 %0, i32 %1, i32* %remainder) #10, !dbg !7025
  ret i64 %call, !dbg !7026
}

; Function Attrs: noredzone nounwind readnone
declare dso_local i64 @gcd(i64, i64) #9

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @msi001_set_gain(%struct.msi001_dev* %dev, i32 %lna_gain, i32 %mixer_gain, i32 %if_gain) #1 !dbg !7027 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.msi001_dev*, align 8
  %lna_gain.addr = alloca i32, align 4
  %mixer_gain.addr = alloca i32, align 4
  %if_gain.addr = alloca i32, align 4
  %spi = alloca %struct.spi_device*, align 8
  %ret = alloca i32, align 4
  %reg = alloca i32, align 4
  store %struct.msi001_dev* %dev, %struct.msi001_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.msi001_dev** %dev.addr, metadata !7030, metadata !DIExpression()), !dbg !7031
  store i32 %lna_gain, i32* %lna_gain.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %lna_gain.addr, metadata !7032, metadata !DIExpression()), !dbg !7033
  store i32 %mixer_gain, i32* %mixer_gain.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mixer_gain.addr, metadata !7034, metadata !DIExpression()), !dbg !7035
  store i32 %if_gain, i32* %if_gain.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %if_gain.addr, metadata !7036, metadata !DIExpression()), !dbg !7037
  call void @llvm.dbg.declare(metadata %struct.spi_device** %spi, metadata !7038, metadata !DIExpression()), !dbg !7039
  %0 = load %struct.msi001_dev*, %struct.msi001_dev** %dev.addr, align 8, !dbg !7040
  %spi1 = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %0, i32 0, i32 0, !dbg !7041
  %1 = load %struct.spi_device*, %struct.spi_device** %spi1, align 8, !dbg !7041
  store %struct.spi_device* %1, %struct.spi_device** %spi, align 8, !dbg !7039
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !7042, metadata !DIExpression()), !dbg !7043
  call void @llvm.dbg.declare(metadata i32* %reg, metadata !7044, metadata !DIExpression()), !dbg !7045
  store i32 1, i32* %reg, align 4, !dbg !7046
  %2 = load i32, i32* %if_gain.addr, align 4, !dbg !7047
  %sub = sub i32 59, %2, !dbg !7048
  %shl = shl i32 %sub, 4, !dbg !7049
  %3 = load i32, i32* %reg, align 4, !dbg !7050
  %or = or i32 %3, %shl, !dbg !7050
  store i32 %or, i32* %reg, align 4, !dbg !7050
  %4 = load i32, i32* %reg, align 4, !dbg !7051
  store i32 %4, i32* %reg, align 4, !dbg !7051
  %5 = load i32, i32* %mixer_gain.addr, align 4, !dbg !7052
  %sub2 = sub i32 1, %5, !dbg !7053
  %shl3 = shl i32 %sub2, 12, !dbg !7054
  %6 = load i32, i32* %reg, align 4, !dbg !7055
  %or4 = or i32 %6, %shl3, !dbg !7055
  store i32 %or4, i32* %reg, align 4, !dbg !7055
  %7 = load i32, i32* %lna_gain.addr, align 4, !dbg !7056
  %sub5 = sub i32 1, %7, !dbg !7057
  %shl6 = shl i32 %sub5, 13, !dbg !7058
  %8 = load i32, i32* %reg, align 4, !dbg !7059
  %or7 = or i32 %8, %shl6, !dbg !7059
  store i32 %or7, i32* %reg, align 4, !dbg !7059
  %9 = load i32, i32* %reg, align 4, !dbg !7060
  %or8 = or i32 %9, 65536, !dbg !7060
  store i32 %or8, i32* %reg, align 4, !dbg !7060
  %10 = load i32, i32* %reg, align 4, !dbg !7061
  store i32 %10, i32* %reg, align 4, !dbg !7061
  %11 = load %struct.msi001_dev*, %struct.msi001_dev** %dev.addr, align 8, !dbg !7062
  %12 = load i32, i32* %reg, align 4, !dbg !7063
  %call = call i32 @msi001_wreg(%struct.msi001_dev* %11, i32 %12) #10, !dbg !7064
  store i32 %call, i32* %ret, align 4, !dbg !7065
  %13 = load i32, i32* %ret, align 4, !dbg !7066
  %tobool = icmp ne i32 %13, 0, !dbg !7066
  br i1 %tobool, label %if.then, label %if.end, !dbg !7068

if.then:                                          ; preds = %entry
  br label %err, !dbg !7069

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !7070
  br label %return, !dbg !7070

err:                                              ; preds = %if.then
  call void @llvm.dbg.label(metadata !7071), !dbg !7072
  %14 = load i32, i32* %ret, align 4, !dbg !7073
  store i32 %14, i32* %retval, align 4, !dbg !7074
  br label %return, !dbg !7074

return:                                           ; preds = %err, %if.end
  %15 = load i32, i32* %retval, align 4, !dbg !7075
  ret i32 %15, !dbg !7075
}

; Function Attrs: noredzone
declare dso_local i64 @strscpy(i8*, i8*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @msi001_s_ctrl(%struct.v4l2_ctrl* %ctrl) #1 !dbg !7076 {
entry:
  %ctrl.addr = alloca %struct.v4l2_ctrl*, align 8
  %dev = alloca %struct.msi001_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.msi001_dev*, align 8
  %spi = alloca %struct.spi_device*, align 8
  %ret = alloca i32, align 4
  store %struct.v4l2_ctrl* %ctrl, %struct.v4l2_ctrl** %ctrl.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_ctrl** %ctrl.addr, metadata !7077, metadata !DIExpression()), !dbg !7078
  call void @llvm.dbg.declare(metadata %struct.msi001_dev** %dev, metadata !7079, metadata !DIExpression()), !dbg !7080
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !7081, metadata !DIExpression()), !dbg !7083
  %0 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %ctrl.addr, align 8, !dbg !7083
  %handler = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %0, i32 0, i32 2, !dbg !7083
  %1 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %handler, align 8, !dbg !7083
  %2 = bitcast %struct.v4l2_ctrl_handler* %1 to i8*, !dbg !7083
  store i8* %2, i8** %__mptr, align 8, !dbg !7083
  br label %do.body, !dbg !7083

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7084

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !7083
  %add.ptr = getelementptr i8, i8* %3, i64 -328, !dbg !7083
  %4 = bitcast i8* %add.ptr to %struct.msi001_dev*, !dbg !7083
  store %struct.msi001_dev* %4, %struct.msi001_dev** %tmp, align 8, !dbg !7084
  %5 = load %struct.msi001_dev*, %struct.msi001_dev** %tmp, align 8, !dbg !7083
  store %struct.msi001_dev* %5, %struct.msi001_dev** %dev, align 8, !dbg !7080
  call void @llvm.dbg.declare(metadata %struct.spi_device** %spi, metadata !7086, metadata !DIExpression()), !dbg !7087
  %6 = load %struct.msi001_dev*, %struct.msi001_dev** %dev, align 8, !dbg !7088
  %spi1 = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %6, i32 0, i32 0, !dbg !7089
  %7 = load %struct.spi_device*, %struct.spi_device** %spi1, align 8, !dbg !7089
  store %struct.spi_device* %7, %struct.spi_device** %spi, align 8, !dbg !7087
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !7090, metadata !DIExpression()), !dbg !7091
  %8 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %ctrl.addr, align 8, !dbg !7092
  %id = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %8, i32 0, i32 8, !dbg !7093
  %9 = load i32, i32* %id, align 8, !dbg !7093
  switch i32 %9, label %sw.default [
    i32 10619147, label %sw.bb
    i32 10619148, label %sw.bb
    i32 10619178, label %sw.bb2
    i32 10619188, label %sw.bb7
    i32 10619198, label %sw.bb17
  ], !dbg !7094

sw.bb:                                            ; preds = %do.end, %do.end
  %10 = load %struct.msi001_dev*, %struct.msi001_dev** %dev, align 8, !dbg !7095
  %call = call i32 @msi001_set_tuner(%struct.msi001_dev* %10) #10, !dbg !7097
  store i32 %call, i32* %ret, align 4, !dbg !7098
  br label %sw.epilog, !dbg !7099

sw.bb2:                                           ; preds = %do.end
  %11 = load %struct.msi001_dev*, %struct.msi001_dev** %dev, align 8, !dbg !7100
  %12 = load %struct.msi001_dev*, %struct.msi001_dev** %dev, align 8, !dbg !7101
  %lna_gain = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %12, i32 0, i32 5, !dbg !7102
  %13 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %lna_gain, align 8, !dbg !7102
  %val = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %13, i32 0, i32 22, !dbg !7103
  %14 = load i32, i32* %val, align 8, !dbg !7103
  %15 = load %struct.msi001_dev*, %struct.msi001_dev** %dev, align 8, !dbg !7104
  %mixer_gain = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %15, i32 0, i32 6, !dbg !7105
  %16 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %mixer_gain, align 8, !dbg !7105
  %cur = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %16, i32 0, i32 23, !dbg !7106
  %val3 = getelementptr inbounds %struct.anon.72, %struct.anon.72* %cur, i32 0, i32 0, !dbg !7107
  %17 = load i32, i32* %val3, align 4, !dbg !7107
  %18 = load %struct.msi001_dev*, %struct.msi001_dev** %dev, align 8, !dbg !7108
  %if_gain = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %18, i32 0, i32 7, !dbg !7109
  %19 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %if_gain, align 8, !dbg !7109
  %cur4 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %19, i32 0, i32 23, !dbg !7110
  %val5 = getelementptr inbounds %struct.anon.72, %struct.anon.72* %cur4, i32 0, i32 0, !dbg !7111
  %20 = load i32, i32* %val5, align 4, !dbg !7111
  %call6 = call i32 @msi001_set_gain(%struct.msi001_dev* %11, i32 %14, i32 %17, i32 %20) #10, !dbg !7112
  store i32 %call6, i32* %ret, align 4, !dbg !7113
  br label %sw.epilog, !dbg !7114

sw.bb7:                                           ; preds = %do.end
  %21 = load %struct.msi001_dev*, %struct.msi001_dev** %dev, align 8, !dbg !7115
  %22 = load %struct.msi001_dev*, %struct.msi001_dev** %dev, align 8, !dbg !7116
  %lna_gain8 = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %22, i32 0, i32 5, !dbg !7117
  %23 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %lna_gain8, align 8, !dbg !7117
  %cur9 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %23, i32 0, i32 23, !dbg !7118
  %val10 = getelementptr inbounds %struct.anon.72, %struct.anon.72* %cur9, i32 0, i32 0, !dbg !7119
  %24 = load i32, i32* %val10, align 4, !dbg !7119
  %25 = load %struct.msi001_dev*, %struct.msi001_dev** %dev, align 8, !dbg !7120
  %mixer_gain11 = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %25, i32 0, i32 6, !dbg !7121
  %26 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %mixer_gain11, align 8, !dbg !7121
  %val12 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %26, i32 0, i32 22, !dbg !7122
  %27 = load i32, i32* %val12, align 8, !dbg !7122
  %28 = load %struct.msi001_dev*, %struct.msi001_dev** %dev, align 8, !dbg !7123
  %if_gain13 = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %28, i32 0, i32 7, !dbg !7124
  %29 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %if_gain13, align 8, !dbg !7124
  %cur14 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %29, i32 0, i32 23, !dbg !7125
  %val15 = getelementptr inbounds %struct.anon.72, %struct.anon.72* %cur14, i32 0, i32 0, !dbg !7126
  %30 = load i32, i32* %val15, align 4, !dbg !7126
  %call16 = call i32 @msi001_set_gain(%struct.msi001_dev* %21, i32 %24, i32 %27, i32 %30) #10, !dbg !7127
  store i32 %call16, i32* %ret, align 4, !dbg !7128
  br label %sw.epilog, !dbg !7129

sw.bb17:                                          ; preds = %do.end
  %31 = load %struct.msi001_dev*, %struct.msi001_dev** %dev, align 8, !dbg !7130
  %32 = load %struct.msi001_dev*, %struct.msi001_dev** %dev, align 8, !dbg !7131
  %lna_gain18 = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %32, i32 0, i32 5, !dbg !7132
  %33 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %lna_gain18, align 8, !dbg !7132
  %cur19 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %33, i32 0, i32 23, !dbg !7133
  %val20 = getelementptr inbounds %struct.anon.72, %struct.anon.72* %cur19, i32 0, i32 0, !dbg !7134
  %34 = load i32, i32* %val20, align 4, !dbg !7134
  %35 = load %struct.msi001_dev*, %struct.msi001_dev** %dev, align 8, !dbg !7135
  %mixer_gain21 = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %35, i32 0, i32 6, !dbg !7136
  %36 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %mixer_gain21, align 8, !dbg !7136
  %cur22 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %36, i32 0, i32 23, !dbg !7137
  %val23 = getelementptr inbounds %struct.anon.72, %struct.anon.72* %cur22, i32 0, i32 0, !dbg !7138
  %37 = load i32, i32* %val23, align 4, !dbg !7138
  %38 = load %struct.msi001_dev*, %struct.msi001_dev** %dev, align 8, !dbg !7139
  %if_gain24 = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %38, i32 0, i32 7, !dbg !7140
  %39 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %if_gain24, align 8, !dbg !7140
  %val25 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %39, i32 0, i32 22, !dbg !7141
  %40 = load i32, i32* %val25, align 8, !dbg !7141
  %call26 = call i32 @msi001_set_gain(%struct.msi001_dev* %31, i32 %34, i32 %37, i32 %40) #10, !dbg !7142
  store i32 %call26, i32* %ret, align 4, !dbg !7143
  br label %sw.epilog, !dbg !7144

sw.default:                                       ; preds = %do.end
  store i32 -22, i32* %ret, align 4, !dbg !7145
  br label %sw.epilog, !dbg !7146

sw.epilog:                                        ; preds = %sw.default, %sw.bb17, %sw.bb7, %sw.bb2, %sw.bb
  %41 = load i32, i32* %ret, align 4, !dbg !7147
  ret i32 %41, !dbg !7148
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @spi_get_drvdata(%struct.spi_device* %spi) #1 !dbg !7149 {
entry:
  %spi.addr = alloca %struct.spi_device*, align 8
  store %struct.spi_device* %spi, %struct.spi_device** %spi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spi_device** %spi.addr, metadata !7152, metadata !DIExpression()), !dbg !7153
  %0 = load %struct.spi_device*, %struct.spi_device** %spi.addr, align 8, !dbg !7154
  %dev = getelementptr inbounds %struct.spi_device, %struct.spi_device* %0, i32 0, i32 0, !dbg !7155
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #10, !dbg !7156
  ret i8* %call, !dbg !7157
}

; Function Attrs: noredzone
declare dso_local void @v4l2_device_unregister_subdev(%struct.v4l2_subdev*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #1 !dbg !7158 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7161, metadata !DIExpression()), !dbg !7162
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7163
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !7164
  %1 = load i8*, i8** %driver_data, align 8, !dbg !7164
  ret i8* %1, !dbg !7165
}

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind willreturn }
attributes #9 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noredzone }
attributes #11 = { cold noredzone }
attributes #12 = { nounwind }
attributes #13 = { noredzone nounwind readnone }
attributes #14 = { noredzone nounwind }
attributes #15 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5841, !5842, !5843, !5844}
!llvm.ident = !{!5845}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_msi001_driver_init262", scope: !2, file: !3, line: 500, type: !218, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !212, globals: !5762, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/tuners/msi001.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !107, !114, !124, !129, !146, !156, !161, !168, !172, !176, !186, !193, !198, !205}
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
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !94, line: 76, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/lizy2001/genbc/linux")
!95 = !{!96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106}
!96 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0, isUnsigned: true)
!97 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1, isUnsigned: true)
!98 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2, isUnsigned: true)
!99 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3, isUnsigned: true)
!100 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4, isUnsigned: true)
!101 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5, isUnsigned: true)
!102 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6, isUnsigned: true)
!103 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7, isUnsigned: true)
!104 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8, isUnsigned: true)
!105 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9, isUnsigned: true)
!106 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10, isUnsigned: true)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "media_pad_signal_type", file: !108, line: 171, baseType: !7, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/media/media-entity.h", directory: "/home/lizy2001/genbc/linux")
!109 = !{!110, !111, !112, !113}
!110 = !DIEnumerator(name: "PAD_SIGNAL_DEFAULT", value: 0, isUnsigned: true)
!111 = !DIEnumerator(name: "PAD_SIGNAL_ANALOG", value: 1, isUnsigned: true)
!112 = !DIEnumerator(name: "PAD_SIGNAL_DV", value: 2, isUnsigned: true)
!113 = !DIEnumerator(name: "PAD_SIGNAL_AUDIO", value: 3, isUnsigned: true)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "media_request_state", file: !115, line: 37, baseType: !7, size: 32, elements: !116)
!115 = !DIFile(filename: "./include/media/media-request.h", directory: "/home/lizy2001/genbc/linux")
!116 = !{!117, !118, !119, !120, !121, !122, !123}
!117 = !DIEnumerator(name: "MEDIA_REQUEST_STATE_IDLE", value: 0, isUnsigned: true)
!118 = !DIEnumerator(name: "MEDIA_REQUEST_STATE_VALIDATING", value: 1, isUnsigned: true)
!119 = !DIEnumerator(name: "MEDIA_REQUEST_STATE_QUEUED", value: 2, isUnsigned: true)
!120 = !DIEnumerator(name: "MEDIA_REQUEST_STATE_COMPLETE", value: 3, isUnsigned: true)
!121 = !DIEnumerator(name: "MEDIA_REQUEST_STATE_CLEANING", value: 4, isUnsigned: true)
!122 = !DIEnumerator(name: "MEDIA_REQUEST_STATE_UPDATING", value: 5, isUnsigned: true)
!123 = !DIEnumerator(name: "NR_OF_MEDIA_REQUEST_STATE", value: 6, isUnsigned: true)
!124 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "media_entity_type", file: !108, line: 244, baseType: !7, size: 32, elements: !125)
!125 = !{!126, !127, !128}
!126 = !DIEnumerator(name: "MEDIA_ENTITY_TYPE_BASE", value: 0, isUnsigned: true)
!127 = !DIEnumerator(name: "MEDIA_ENTITY_TYPE_VIDEO_DEVICE", value: 1, isUnsigned: true)
!128 = !DIEnumerator(name: "MEDIA_ENTITY_TYPE_V4L2_SUBDEV", value: 2, isUnsigned: true)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "v4l2_ctrl_type", file: !130, line: 1763, baseType: !7, size: 32, elements: !131)
!130 = !DIFile(filename: "./include/uapi/linux/videodev2.h", directory: "/home/lizy2001/genbc/linux")
!131 = !{!132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145}
!132 = !DIEnumerator(name: "V4L2_CTRL_TYPE_INTEGER", value: 1, isUnsigned: true)
!133 = !DIEnumerator(name: "V4L2_CTRL_TYPE_BOOLEAN", value: 2, isUnsigned: true)
!134 = !DIEnumerator(name: "V4L2_CTRL_TYPE_MENU", value: 3, isUnsigned: true)
!135 = !DIEnumerator(name: "V4L2_CTRL_TYPE_BUTTON", value: 4, isUnsigned: true)
!136 = !DIEnumerator(name: "V4L2_CTRL_TYPE_INTEGER64", value: 5, isUnsigned: true)
!137 = !DIEnumerator(name: "V4L2_CTRL_TYPE_CTRL_CLASS", value: 6, isUnsigned: true)
!138 = !DIEnumerator(name: "V4L2_CTRL_TYPE_STRING", value: 7, isUnsigned: true)
!139 = !DIEnumerator(name: "V4L2_CTRL_TYPE_BITMASK", value: 8, isUnsigned: true)
!140 = !DIEnumerator(name: "V4L2_CTRL_TYPE_INTEGER_MENU", value: 9, isUnsigned: true)
!141 = !DIEnumerator(name: "V4L2_CTRL_COMPOUND_TYPES", value: 256, isUnsigned: true)
!142 = !DIEnumerator(name: "V4L2_CTRL_TYPE_U8", value: 256, isUnsigned: true)
!143 = !DIEnumerator(name: "V4L2_CTRL_TYPE_U16", value: 257, isUnsigned: true)
!144 = !DIEnumerator(name: "V4L2_CTRL_TYPE_U32", value: 258, isUnsigned: true)
!145 = !DIEnumerator(name: "V4L2_CTRL_TYPE_AREA", value: 262, isUnsigned: true)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "vfl_devnode_type", file: !147, line: 35, baseType: !7, size: 32, elements: !148)
!147 = !DIFile(filename: "./include/media/v4l2-dev.h", directory: "/home/lizy2001/genbc/linux")
!148 = !{!149, !150, !151, !152, !153, !154, !155}
!149 = !DIEnumerator(name: "VFL_TYPE_VIDEO", value: 0, isUnsigned: true)
!150 = !DIEnumerator(name: "VFL_TYPE_VBI", value: 1, isUnsigned: true)
!151 = !DIEnumerator(name: "VFL_TYPE_RADIO", value: 2, isUnsigned: true)
!152 = !DIEnumerator(name: "VFL_TYPE_SUBDEV", value: 3, isUnsigned: true)
!153 = !DIEnumerator(name: "VFL_TYPE_SDR", value: 4, isUnsigned: true)
!154 = !DIEnumerator(name: "VFL_TYPE_TOUCH", value: 5, isUnsigned: true)
!155 = !DIEnumerator(name: "VFL_TYPE_MAX", value: 6, isUnsigned: true)
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "vfl_devnode_direction", file: !147, line: 55, baseType: !7, size: 32, elements: !157)
!157 = !{!158, !159, !160}
!158 = !DIEnumerator(name: "VFL_DIR_RX", value: 0, isUnsigned: true)
!159 = !DIEnumerator(name: "VFL_DIR_TX", value: 1, isUnsigned: true)
!160 = !DIEnumerator(name: "VFL_DIR_M2M", value: 2, isUnsigned: true)
!161 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "v4l2_priority", file: !130, line: 406, baseType: !7, size: 32, elements: !162)
!162 = !{!163, !164, !165, !166, !167}
!163 = !DIEnumerator(name: "V4L2_PRIORITY_UNSET", value: 0, isUnsigned: true)
!164 = !DIEnumerator(name: "V4L2_PRIORITY_BACKGROUND", value: 1, isUnsigned: true)
!165 = !DIEnumerator(name: "V4L2_PRIORITY_INTERACTIVE", value: 2, isUnsigned: true)
!166 = !DIEnumerator(name: "V4L2_PRIORITY_RECORD", value: 3, isUnsigned: true)
!167 = !DIEnumerator(name: "V4L2_PRIORITY_DEFAULT", value: 2, isUnsigned: true)
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "v4l2_subdev_ir_mode", file: !169, line: 501, baseType: !7, size: 32, elements: !170)
!169 = !DIFile(filename: "./include/media/v4l2-subdev.h", directory: "/home/lizy2001/genbc/linux")
!170 = !{!171}
!171 = !DIEnumerator(name: "V4L2_SUBDEV_IR_MODE_PULSE_WIDTH", value: 0, isUnsigned: true)
!172 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "v4l2_mbus_frame_desc_flags", file: !169, line: 321, baseType: !7, size: 32, elements: !173)
!173 = !{!174, !175}
!174 = !DIEnumerator(name: "V4L2_MBUS_FRAME_DESC_FL_LEN_MAX", value: 1, isUnsigned: true)
!175 = !DIEnumerator(name: "V4L2_MBUS_FRAME_DESC_FL_BLOB", value: 2, isUnsigned: true)
!176 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "v4l2_mbus_type", file: !177, line: 107, baseType: !7, size: 32, elements: !178)
!177 = !DIFile(filename: "./include/media/v4l2-mediabus.h", directory: "/home/lizy2001/genbc/linux")
!178 = !{!179, !180, !181, !182, !183, !184, !185}
!179 = !DIEnumerator(name: "V4L2_MBUS_UNKNOWN", value: 0, isUnsigned: true)
!180 = !DIEnumerator(name: "V4L2_MBUS_PARALLEL", value: 1, isUnsigned: true)
!181 = !DIEnumerator(name: "V4L2_MBUS_BT656", value: 2, isUnsigned: true)
!182 = !DIEnumerator(name: "V4L2_MBUS_CSI1", value: 3, isUnsigned: true)
!183 = !DIEnumerator(name: "V4L2_MBUS_CCP2", value: 4, isUnsigned: true)
!184 = !DIEnumerator(name: "V4L2_MBUS_CSI2_DPHY", value: 5, isUnsigned: true)
!185 = !DIEnumerator(name: "V4L2_MBUS_CSI2_CPHY", value: 6, isUnsigned: true)
!186 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "v4l2_async_match_type", file: !187, line: 33, baseType: !7, size: 32, elements: !188)
!187 = !DIFile(filename: "./include/media/v4l2-async.h", directory: "/home/lizy2001/genbc/linux")
!188 = !{!189, !190, !191, !192}
!189 = !DIEnumerator(name: "V4L2_ASYNC_MATCH_CUSTOM", value: 0, isUnsigned: true)
!190 = !DIEnumerator(name: "V4L2_ASYNC_MATCH_DEVNAME", value: 1, isUnsigned: true)
!191 = !DIEnumerator(name: "V4L2_ASYNC_MATCH_I2C", value: 2, isUnsigned: true)
!192 = !DIEnumerator(name: "V4L2_ASYNC_MATCH_FWNODE", value: 3, isUnsigned: true)
!193 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !194, line: 10, baseType: !7, size: 32, elements: !195)
!194 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!195 = !{!196, !197}
!196 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!197 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!198 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !199, line: 305, baseType: !7, size: 32, elements: !200)
!199 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!200 = !{!201, !202, !203, !204}
!201 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!202 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!203 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!204 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!205 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "v4l2_tuner_type", file: !130, line: 176, baseType: !7, size: 32, elements: !206)
!206 = !{!207, !208, !209, !210, !211}
!207 = !DIEnumerator(name: "V4L2_TUNER_RADIO", value: 1, isUnsigned: true)
!208 = !DIEnumerator(name: "V4L2_TUNER_ANALOG_TV", value: 2, isUnsigned: true)
!209 = !DIEnumerator(name: "V4L2_TUNER_DIGITAL_TV", value: 3, isUnsigned: true)
!210 = !DIEnumerator(name: "V4L2_TUNER_SDR", value: 4, isUnsigned: true)
!211 = !DIEnumerator(name: "V4L2_TUNER_RF", value: 5, isUnsigned: true)
!212 = !{!213, !216, !218, !219, !5760, !7, !278, !441}
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !215, line: 76, flags: DIFlagFwdDecl)
!215 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !217, line: 148, baseType: !7)
!217 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi001_dev", file: !3, line: 30, size: 4544, elements: !221)
!221 = !{!222, !4197, !5753, !5754, !5755, !5756, !5757, !5758, !5759}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "spi", scope: !220, file: !3, line: 31, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spi_device", file: !225, line: 159, size: 8256, elements: !226)
!225 = !DIFile(filename: "./include/linux/spi/spi.h", directory: "/home/lizy2001/genbc/linux")
!226 = !{!227, !3962, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !224, file: !225, line: 160, baseType: !228, size: 5568)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !229)
!229 = !{!230, !3415, !3417, !3420, !3421, !3472, !3563, !3564, !3565, !3566, !3567, !3576, !3681, !3694, !3889, !3890, !3894, !3896, !3897, !3898, !3902, !3908, !3909, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3950, !3951, !3952, !3955, !3958, !3959, !3960, !3961}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !228, file: !73, line: 462, baseType: !231, size: 512)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !232, line: 64, size: 512, elements: !233)
!232 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!233 = !{!234, !238, !244, !246, !307, !3266, !3405, !3410, !3411, !3412, !3413, !3414}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !231, file: !232, line: 65, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !237)
!237 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !231, file: !232, line: 66, baseType: !239, size: 128, offset: 64)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !217, line: 178, size: 128, elements: !240)
!240 = !{!241, !243}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !239, file: !217, line: 179, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !239, file: !217, line: 179, baseType: !242, size: 64, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !231, file: !232, line: 67, baseType: !245, size: 64, offset: 192)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !231, file: !232, line: 68, baseType: !247, size: 64, offset: 256)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !232, line: 192, size: 704, elements: !249)
!249 = !{!250, !251, !267, !268}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !248, file: !232, line: 193, baseType: !239, size: 128)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !248, file: !232, line: 194, baseType: !252, offset: 128)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !253, line: 83, baseType: !254)
!253 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !253, line: 71, elements: !255)
!255 = !{!256}
!256 = !DIDerivedType(tag: DW_TAG_member, scope: !254, file: !253, line: 72, baseType: !257)
!257 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !254, file: !253, line: 72, elements: !258)
!258 = !{!259}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !257, file: !253, line: 73, baseType: !260)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !253, line: 20, elements: !261)
!261 = !{!262}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !260, file: !253, line: 21, baseType: !263)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !264, line: 25, baseType: !265)
!264 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !264, line: 25, elements: !266)
!266 = !{}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !248, file: !232, line: 195, baseType: !231, size: 512, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !248, file: !232, line: 196, baseType: !269, size: 64, offset: 640)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !271)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !232, line: 156, size: 192, elements: !272)
!272 = !{!273, !279, !284}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !271, file: !232, line: 157, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!278, !247, !245}
!278 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !271, file: !232, line: 158, baseType: !280, size: 64, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!235, !247, !245}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !271, file: !232, line: 159, baseType: !285, size: 64, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !286)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{!278, !247, !245, !289}
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !232, line: 148, size: 20736, elements: !291)
!291 = !{!292, !297, !301, !302, !306}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !290, file: !232, line: 149, baseType: !293, size: 192)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 192, elements: !295)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!295 = !{!296}
!296 = !DISubrange(count: 3)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !290, file: !232, line: 150, baseType: !298, size: 4096, offset: 192)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 4096, elements: !299)
!299 = !{!300}
!300 = !DISubrange(count: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !290, file: !232, line: 151, baseType: !278, size: 32, offset: 4288)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !290, file: !232, line: 152, baseType: !303, size: 16384, offset: 4320)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 16384, elements: !304)
!304 = !{!305}
!305 = !DISubrange(count: 2048)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !290, file: !232, line: 153, baseType: !278, size: 32, offset: 20704)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !231, file: !232, line: 69, baseType: !308, size: 64, offset: 320)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !232, line: 138, size: 448, elements: !310)
!310 = !{!311, !315, !345, !347, !3228, !3256, !3260}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !309, file: !232, line: 139, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{null, !245}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !309, file: !232, line: 140, baseType: !316, size: 64, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !318)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !319, line: 230, size: 128, elements: !320)
!319 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!320 = !{!321, !337}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !318, file: !319, line: 231, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!325, !245, !330, !294}
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !217, line: 60, baseType: !326)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !327, line: 73, baseType: !328)
!327 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !327, line: 15, baseType: !329)
!329 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !319, line: 30, size: 128, elements: !332)
!332 = !{!333, !334}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !331, file: !319, line: 31, baseType: !235, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !331, file: !319, line: 32, baseType: !335, size: 16, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !217, line: 19, baseType: !336)
!336 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !318, file: !319, line: 232, baseType: !338, size: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DISubroutineType(types: !340)
!340 = !{!325, !245, !330, !235, !341}
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !217, line: 55, baseType: !342)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !327, line: 72, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !327, line: 16, baseType: !344)
!344 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !309, file: !232, line: 141, baseType: !346, size: 64, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !309, file: !232, line: 142, baseType: !348, size: 64, offset: 192)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !351)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !319, line: 84, size: 320, elements: !352)
!352 = !{!353, !354, !358, !3225, !3226}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !351, file: !319, line: 85, baseType: !235, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !351, file: !319, line: 86, baseType: !355, size: 64, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!335, !245, !330, !278}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !351, file: !319, line: 88, baseType: !359, size: 64, offset: 128)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{!335, !245, !362, !278}
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !319, line: 168, size: 448, elements: !364)
!364 = !{!365, !366, !367, !368, !3220, !3221}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !363, file: !319, line: 169, baseType: !331, size: 128)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !363, file: !319, line: 170, baseType: !341, size: 64, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !363, file: !319, line: 171, baseType: !218, size: 64, offset: 192)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !363, file: !319, line: 172, baseType: !369, size: 64, offset: 256)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{!325, !372, !245, !362, !294, !551, !341}
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !374)
!374 = !{!375, !393, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3203, !3204, !3213, !3214, !3215, !3216, !3217, !3218, !3219}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !373, file: !44, line: 920, baseType: !376, size: 128)
!376 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !373, file: !44, line: 917, size: 128, elements: !377)
!377 = !{!378, !384}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !376, file: !44, line: 918, baseType: !379, size: 64)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !380, line: 58, size: 64, elements: !381)
!380 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!381 = !{!382}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !379, file: !380, line: 59, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !376, file: !44, line: 919, baseType: !385, size: 128, align: 64)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !217, line: 216, size: 128, align: 64, elements: !386)
!386 = !{!387, !389}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !385, file: !217, line: 217, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !385, file: !217, line: 218, baseType: !390, size: 64, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DISubroutineType(types: !392)
!392 = !{null, !388}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !373, file: !44, line: 921, baseType: !394, size: 128, offset: 128)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !395, line: 8, size: 128, elements: !396)
!395 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!396 = !{!397, !401}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !394, file: !395, line: 9, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !400, line: 18, flags: DIFlagFwdDecl)
!400 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!401 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !394, file: !395, line: 10, baseType: !402, size: 64, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !400, line: 89, size: 1536, elements: !404)
!404 = !{!405, !406, !416, !424, !425, !448, !3154, !3156, !3168, !3169, !3170, !3171, !3172, !3177, !3178, !3179}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !403, file: !400, line: 91, baseType: !7, size: 32)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !403, file: !400, line: 92, baseType: !407, size: 32, offset: 32)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !408, line: 277, baseType: !409)
!408 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !408, line: 277, size: 32, elements: !410)
!410 = !{!411}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !409, file: !408, line: 277, baseType: !412, size: 32)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !408, line: 70, baseType: !413)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !408, line: 65, size: 32, elements: !414)
!414 = !{!415}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !413, file: !408, line: 66, baseType: !7, size: 32)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !403, file: !400, line: 93, baseType: !417, size: 128, offset: 64)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !418, line: 38, size: 128, elements: !419)
!418 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!419 = !{!420, !422}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !417, file: !418, line: 39, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !417, file: !418, line: 39, baseType: !423, size: 64, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !403, file: !400, line: 94, baseType: !402, size: 64, offset: 192)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !403, file: !400, line: 95, baseType: !426, size: 128, offset: 256)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !400, line: 47, size: 128, elements: !427)
!427 = !{!428, !444}
!428 = !DIDerivedType(tag: DW_TAG_member, scope: !426, file: !400, line: 48, baseType: !429, size: 64)
!429 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !426, file: !400, line: 48, size: 64, elements: !430)
!430 = !{!431, !440}
!431 = !DIDerivedType(tag: DW_TAG_member, scope: !429, file: !400, line: 49, baseType: !432, size: 64)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !429, file: !400, line: 49, size: 64, elements: !433)
!433 = !{!434, !439}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !432, file: !400, line: 50, baseType: !435, size: 32)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !436, line: 21, baseType: !437)
!436 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !438, line: 27, baseType: !7)
!438 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!439 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !432, file: !400, line: 50, baseType: !435, size: 32, offset: 32)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !429, file: !400, line: 52, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !436, line: 23, baseType: !442)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !438, line: 31, baseType: !443)
!443 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !426, file: !400, line: 54, baseType: !445, size: 64, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !447)
!447 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !403, file: !400, line: 96, baseType: !449, size: 64, offset: 384)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !451)
!451 = !{!452, !453, !454, !462, !469, !470, !618, !2848, !2849, !2850, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !3122, !3130, !3131, !3132, !3150, !3151, !3152, !3153}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !450, file: !44, line: 611, baseType: !335, size: 16)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !450, file: !44, line: 612, baseType: !336, size: 16, offset: 16)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !450, file: !44, line: 613, baseType: !455, size: 32, offset: 32)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !456, line: 23, baseType: !457)
!456 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !456, line: 21, size: 32, elements: !458)
!458 = !{!459}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !457, file: !456, line: 22, baseType: !460, size: 32)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !217, line: 32, baseType: !461)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !327, line: 49, baseType: !7)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !450, file: !44, line: 614, baseType: !463, size: 32, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !456, line: 28, baseType: !464)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !456, line: 26, size: 32, elements: !465)
!465 = !{!466}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !464, file: !456, line: 27, baseType: !467, size: 32)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !217, line: 33, baseType: !468)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !327, line: 50, baseType: !7)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !450, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !450, file: !44, line: 622, baseType: !471, size: 64, offset: 128)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !473)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !474)
!474 = !{!475, !479, !492, !496, !502, !506, !512, !516, !520, !524, !528, !529, !535, !539, !565, !594, !598, !604, !609, !613, !614}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !473, file: !44, line: 1865, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!402, !449, !402, !7}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !473, file: !44, line: 1866, baseType: !480, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!235, !402, !449, !483}
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !485, line: 10, size: 128, elements: !486)
!485 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!486 = !{!487, !491}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !484, file: !485, line: 11, baseType: !488, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{null, !218}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !484, file: !485, line: 12, baseType: !218, size: 64, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !473, file: !44, line: 1867, baseType: !493, size: 64, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!278, !449, !278}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !473, file: !44, line: 1868, baseType: !497, size: 64, offset: 192)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{!500, !449, !278}
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !473, file: !44, line: 1870, baseType: !503, size: 64, offset: 256)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!278, !402, !294, !278}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !473, file: !44, line: 1872, baseType: !507, size: 64, offset: 320)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{!278, !449, !402, !335, !510}
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !217, line: 30, baseType: !511)
!511 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !473, file: !44, line: 1873, baseType: !513, size: 64, offset: 384)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{!278, !402, !449, !402}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !473, file: !44, line: 1874, baseType: !517, size: 64, offset: 448)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!278, !449, !402}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !473, file: !44, line: 1875, baseType: !521, size: 64, offset: 512)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{!278, !449, !402, !235}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !473, file: !44, line: 1876, baseType: !525, size: 64, offset: 576)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!278, !449, !402, !335}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !473, file: !44, line: 1877, baseType: !517, size: 64, offset: 640)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !473, file: !44, line: 1878, baseType: !530, size: 64, offset: 704)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DISubroutineType(types: !532)
!532 = !{!278, !449, !402, !335, !533}
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !217, line: 16, baseType: !534)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !217, line: 13, baseType: !435)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !473, file: !44, line: 1879, baseType: !536, size: 64, offset: 768)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!278, !449, !402, !449, !402, !7}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !473, file: !44, line: 1881, baseType: !540, size: 64, offset: 832)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!278, !402, !543}
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !545)
!545 = !{!546, !547, !548, !549, !550, !554, !562, !563, !564}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !544, file: !44, line: 220, baseType: !7, size: 32)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !544, file: !44, line: 221, baseType: !335, size: 16, offset: 32)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !544, file: !44, line: 222, baseType: !455, size: 32, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !544, file: !44, line: 223, baseType: !463, size: 32, offset: 96)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !544, file: !44, line: 224, baseType: !551, size: 64, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !217, line: 46, baseType: !552)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !327, line: 88, baseType: !553)
!553 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !544, file: !44, line: 225, baseType: !555, size: 128, offset: 192)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !556, line: 13, size: 128, elements: !557)
!556 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!557 = !{!558, !561}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !555, file: !556, line: 14, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !556, line: 8, baseType: !560)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !438, line: 30, baseType: !553)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !555, file: !556, line: 15, baseType: !329, size: 64, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !544, file: !44, line: 226, baseType: !555, size: 128, offset: 320)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !544, file: !44, line: 227, baseType: !555, size: 128, offset: 448)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !544, file: !44, line: 234, baseType: !372, size: 64, offset: 576)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !473, file: !44, line: 1882, baseType: !566, size: 64, offset: 896)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DISubroutineType(types: !568)
!568 = !{!278, !569, !571, !435, !7}
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !394)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !573, line: 22, size: 1152, elements: !574)
!573 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!574 = !{!575, !576, !577, !578, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !572, file: !573, line: 23, baseType: !435, size: 32)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !572, file: !573, line: 24, baseType: !335, size: 16, offset: 32)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !572, file: !573, line: 25, baseType: !7, size: 32, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !572, file: !573, line: 26, baseType: !579, size: 32, offset: 96)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !217, line: 104, baseType: !435)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !572, file: !573, line: 27, baseType: !441, size: 64, offset: 128)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !572, file: !573, line: 28, baseType: !441, size: 64, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !572, file: !573, line: 37, baseType: !441, size: 64, offset: 256)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !572, file: !573, line: 38, baseType: !533, size: 32, offset: 320)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !572, file: !573, line: 39, baseType: !533, size: 32, offset: 352)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !572, file: !573, line: 40, baseType: !455, size: 32, offset: 384)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !572, file: !573, line: 41, baseType: !463, size: 32, offset: 416)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !572, file: !573, line: 42, baseType: !551, size: 64, offset: 448)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !572, file: !573, line: 43, baseType: !555, size: 128, offset: 512)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !572, file: !573, line: 44, baseType: !555, size: 128, offset: 640)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !572, file: !573, line: 45, baseType: !555, size: 128, offset: 768)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !572, file: !573, line: 46, baseType: !555, size: 128, offset: 896)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !572, file: !573, line: 47, baseType: !441, size: 64, offset: 1024)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !572, file: !573, line: 48, baseType: !441, size: 64, offset: 1088)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !473, file: !44, line: 1883, baseType: !595, size: 64, offset: 960)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{!325, !402, !294, !341}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !473, file: !44, line: 1884, baseType: !599, size: 64, offset: 1024)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DISubroutineType(types: !601)
!601 = !{!278, !449, !602, !441, !441}
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !473, file: !44, line: 1886, baseType: !605, size: 64, offset: 1088)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!278, !449, !608, !278}
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !473, file: !44, line: 1887, baseType: !610, size: 64, offset: 1152)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DISubroutineType(types: !612)
!612 = !{!278, !449, !402, !372, !7, !335}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !473, file: !44, line: 1890, baseType: !525, size: 64, offset: 1216)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !473, file: !44, line: 1891, baseType: !615, size: 64, offset: 1280)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!278, !449, !500, !278}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !450, file: !44, line: 623, baseType: !619, size: 64, offset: 192)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !621)
!621 = !{!622, !623, !624, !625, !626, !627, !674, !2455, !2537, !2620, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2636, !2640, !2641, !2644, !2645, !2648, !2649, !2650, !2691, !2718, !2719, !2720, !2721, !2722, !2723, !2726, !2728, !2735, !2736, !2738, !2739, !2740, !2799, !2800, !2815, !2816, !2817, !2818, !2819, !2822, !2823, !2824, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !620, file: !44, line: 1417, baseType: !239, size: 128)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !620, file: !44, line: 1418, baseType: !533, size: 32, offset: 128)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !620, file: !44, line: 1419, baseType: !447, size: 8, offset: 160)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !620, file: !44, line: 1420, baseType: !344, size: 64, offset: 192)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !620, file: !44, line: 1421, baseType: !551, size: 64, offset: 256)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !620, file: !44, line: 1422, baseType: !628, size: 64, offset: 320)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !630)
!630 = !{!631, !632, !633, !640, !644, !648, !652, !653, !654, !664, !667, !668, !669, !671, !672, !673}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !629, file: !44, line: 2229, baseType: !235, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !629, file: !44, line: 2230, baseType: !278, size: 32, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !629, file: !44, line: 2238, baseType: !634, size: 64, offset: 128)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!278, !637}
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !639, line: 28, flags: DIFlagFwdDecl)
!639 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!640 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !629, file: !44, line: 2239, baseType: !641, size: 64, offset: 192)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !643)
!643 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !629, file: !44, line: 2240, baseType: !645, size: 64, offset: 256)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{!402, !628, !278, !235, !218}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !629, file: !44, line: 2242, baseType: !649, size: 64, offset: 320)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{null, !619}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !629, file: !44, line: 2243, baseType: !213, size: 64, offset: 384)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !629, file: !44, line: 2244, baseType: !628, size: 64, offset: 448)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !629, file: !44, line: 2245, baseType: !655, size: 64, offset: 512)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !217, line: 182, size: 64, elements: !656)
!656 = !{!657}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !655, file: !217, line: 183, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !217, line: 186, size: 128, elements: !660)
!660 = !{!661, !662}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !659, file: !217, line: 187, baseType: !658, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !659, file: !217, line: 187, baseType: !663, size: 64, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !629, file: !44, line: 2247, baseType: !665, offset: 576)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !666, line: 187, elements: !266)
!666 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!667 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !629, file: !44, line: 2248, baseType: !665, offset: 576)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !629, file: !44, line: 2249, baseType: !665, offset: 576)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !629, file: !44, line: 2250, baseType: !670, offset: 576)
!670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !665, elements: !295)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !629, file: !44, line: 2252, baseType: !665, offset: 576)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !629, file: !44, line: 2253, baseType: !665, offset: 576)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !629, file: !44, line: 2254, baseType: !665, offset: 576)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !620, file: !44, line: 1423, baseType: !675, size: 64, offset: 384)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !677)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !678)
!678 = !{!679, !683, !687, !688, !692, !698, !702, !703, !704, !708, !712, !713, !714, !715, !721, !726, !727, !734, !735, !736, !737, !2439, !2454}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !677, file: !44, line: 1936, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{!449, !619}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !677, file: !44, line: 1937, baseType: !684, size: 64, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DISubroutineType(types: !686)
!686 = !{null, !449}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !677, file: !44, line: 1938, baseType: !684, size: 64, offset: 128)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !677, file: !44, line: 1940, baseType: !689, size: 64, offset: 192)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{null, !449, !278}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !677, file: !44, line: 1941, baseType: !693, size: 64, offset: 256)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DISubroutineType(types: !695)
!695 = !{!278, !449, !696}
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !44, line: 289, flags: DIFlagFwdDecl)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !677, file: !44, line: 1942, baseType: !699, size: 64, offset: 320)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{!278, !449}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !677, file: !44, line: 1943, baseType: !684, size: 64, offset: 384)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !677, file: !44, line: 1944, baseType: !649, size: 64, offset: 448)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !677, file: !44, line: 1945, baseType: !705, size: 64, offset: 512)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DISubroutineType(types: !707)
!707 = !{!278, !619, !278}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !677, file: !44, line: 1946, baseType: !709, size: 64, offset: 576)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{!278, !619}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !677, file: !44, line: 1947, baseType: !709, size: 64, offset: 640)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !677, file: !44, line: 1948, baseType: !709, size: 64, offset: 704)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !677, file: !44, line: 1949, baseType: !709, size: 64, offset: 768)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !677, file: !44, line: 1950, baseType: !716, size: 64, offset: 832)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DISubroutineType(types: !718)
!718 = !{!278, !402, !719}
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !677, file: !44, line: 1951, baseType: !722, size: 64, offset: 896)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{!278, !619, !725, !294}
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !677, file: !44, line: 1952, baseType: !649, size: 64, offset: 960)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !677, file: !44, line: 1954, baseType: !728, size: 64, offset: 1024)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DISubroutineType(types: !730)
!730 = !{!278, !731, !402}
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !733, line: 539, flags: DIFlagFwdDecl)
!733 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!734 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !677, file: !44, line: 1955, baseType: !728, size: 64, offset: 1088)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !677, file: !44, line: 1956, baseType: !728, size: 64, offset: 1152)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !677, file: !44, line: 1957, baseType: !728, size: 64, offset: 1216)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !677, file: !44, line: 1963, baseType: !738, size: 64, offset: 1280)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{!278, !619, !741, !216}
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !743, line: 68, size: 512, align: 128, elements: !744)
!743 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!744 = !{!745, !746, !2431, !2438}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !742, file: !743, line: 69, baseType: !344, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, scope: !742, file: !743, line: 77, baseType: !747, size: 320, offset: 64)
!747 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !742, file: !743, line: 77, size: 320, elements: !748)
!748 = !{!749, !936, !941, !969, !977, !983, !2362, !2430}
!749 = !DIDerivedType(tag: DW_TAG_member, scope: !747, file: !743, line: 78, baseType: !750, size: 320)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !747, file: !743, line: 78, size: 320, elements: !751)
!751 = !{!752, !753, !934, !935}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !750, file: !743, line: 84, baseType: !239, size: 128)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !750, file: !743, line: 86, baseType: !754, size: 64, offset: 128)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !756)
!756 = !{!757, !758, !765, !766, !771, !786, !802, !803, !804, !805, !927, !928, !931, !932, !933}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !755, file: !44, line: 452, baseType: !449, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !755, file: !44, line: 453, baseType: !759, size: 128, offset: 64)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !760, line: 292, size: 128, elements: !761)
!760 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!761 = !{!762, !763, !764}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !759, file: !760, line: 293, baseType: !252)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !759, file: !760, line: 295, baseType: !216, size: 32)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !759, file: !760, line: 296, baseType: !218, size: 64, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !755, file: !44, line: 454, baseType: !216, size: 32, offset: 192)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !755, file: !44, line: 455, baseType: !767, size: 32, offset: 224)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !217, line: 168, baseType: !768)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !217, line: 166, size: 32, elements: !769)
!769 = !{!770}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !768, file: !217, line: 167, baseType: !278, size: 32)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !755, file: !44, line: 460, baseType: !772, size: 128, offset: 256)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !773, line: 125, size: 128, elements: !774)
!773 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!774 = !{!775, !785}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !772, file: !773, line: 126, baseType: !776, size: 64)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !773, line: 31, size: 64, elements: !777)
!777 = !{!778}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !776, file: !773, line: 32, baseType: !779, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !773, line: 24, size: 192, align: 64, elements: !781)
!781 = !{!782, !783, !784}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !780, file: !773, line: 25, baseType: !344, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !780, file: !773, line: 26, baseType: !779, size: 64, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !780, file: !773, line: 27, baseType: !779, size: 64, offset: 128)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !772, file: !773, line: 127, baseType: !779, size: 64, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !755, file: !44, line: 461, baseType: !787, size: 256, offset: 384)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !788, line: 35, size: 256, elements: !789)
!788 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!789 = !{!790, !798, !799, !801}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !787, file: !788, line: 36, baseType: !791, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !792, line: 13, baseType: !793)
!792 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !217, line: 175, baseType: !794)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !217, line: 173, size: 64, elements: !795)
!795 = !{!796}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !794, file: !217, line: 174, baseType: !797, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !436, line: 22, baseType: !560)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !787, file: !788, line: 42, baseType: !791, size: 64, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !787, file: !788, line: 46, baseType: !800, offset: 128)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !253, line: 29, baseType: !260)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !787, file: !788, line: 47, baseType: !239, size: 128, offset: 128)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !755, file: !44, line: 462, baseType: !344, size: 64, offset: 640)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !755, file: !44, line: 463, baseType: !344, size: 64, offset: 704)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !755, file: !44, line: 464, baseType: !344, size: 64, offset: 768)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !755, file: !44, line: 465, baseType: !806, size: 64, offset: 832)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !808)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !809)
!809 = !{!810, !814, !818, !822, !826, !830, !836, !842, !846, !851, !855, !859, !863, !891, !895, !901, !902, !903, !907, !912, !916, !923}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !808, file: !44, line: 368, baseType: !811, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DISubroutineType(types: !813)
!813 = !{!278, !741, !696}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !808, file: !44, line: 369, baseType: !815, size: 64, offset: 64)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DISubroutineType(types: !817)
!817 = !{!278, !372, !741}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !808, file: !44, line: 372, baseType: !819, size: 64, offset: 128)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DISubroutineType(types: !821)
!821 = !{!278, !754, !696}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !808, file: !44, line: 375, baseType: !823, size: 64, offset: 192)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DISubroutineType(types: !825)
!825 = !{!278, !741}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !808, file: !44, line: 381, baseType: !827, size: 64, offset: 256)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DISubroutineType(types: !829)
!829 = !{!278, !372, !754, !242, !7}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !808, file: !44, line: 383, baseType: !831, size: 64, offset: 320)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DISubroutineType(types: !833)
!833 = !{null, !834}
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !808, file: !44, line: 385, baseType: !837, size: 64, offset: 384)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{!278, !372, !754, !551, !7, !7, !840, !841}
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !808, file: !44, line: 388, baseType: !843, size: 64, offset: 448)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{!278, !372, !754, !551, !7, !7, !741, !218}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !808, file: !44, line: 393, baseType: !847, size: 64, offset: 512)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{!850, !754, !850}
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !217, line: 125, baseType: !441)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !808, file: !44, line: 394, baseType: !852, size: 64, offset: 576)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{null, !741, !7, !7}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !808, file: !44, line: 395, baseType: !856, size: 64, offset: 640)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DISubroutineType(types: !858)
!858 = !{!278, !741, !216}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !808, file: !44, line: 396, baseType: !860, size: 64, offset: 704)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{null, !741}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !808, file: !44, line: 397, baseType: !864, size: 64, offset: 768)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DISubroutineType(types: !866)
!866 = !{!325, !867, !889}
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !869)
!869 = !{!870, !871, !872, !876, !877, !878, !881, !882}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !868, file: !44, line: 321, baseType: !372, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !868, file: !44, line: 326, baseType: !551, size: 64, offset: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !868, file: !44, line: 327, baseType: !873, size: 64, offset: 128)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{null, !867, !329, !329}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !868, file: !44, line: 328, baseType: !218, size: 64, offset: 192)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !868, file: !44, line: 329, baseType: !278, size: 32, offset: 256)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !868, file: !44, line: 330, baseType: !879, size: 16, offset: 288)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !436, line: 19, baseType: !880)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !438, line: 24, baseType: !336)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !868, file: !44, line: 331, baseType: !879, size: 16, offset: 304)
!882 = !DIDerivedType(tag: DW_TAG_member, scope: !868, file: !44, line: 332, baseType: !883, size: 64, offset: 320)
!883 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !868, file: !44, line: 332, size: 64, elements: !884)
!884 = !{!885, !886}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !883, file: !44, line: 333, baseType: !7, size: 32)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !883, file: !44, line: 334, baseType: !887, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !808, file: !44, line: 402, baseType: !892, size: 64, offset: 832)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DISubroutineType(types: !894)
!894 = !{!278, !754, !741, !741, !5}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !808, file: !44, line: 404, baseType: !896, size: 64, offset: 896)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DISubroutineType(types: !898)
!898 = !{!510, !741, !899}
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !900, line: 305, baseType: !7)
!900 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!901 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !808, file: !44, line: 405, baseType: !860, size: 64, offset: 960)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !808, file: !44, line: 406, baseType: !823, size: 64, offset: 1024)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !808, file: !44, line: 407, baseType: !904, size: 64, offset: 1088)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DISubroutineType(types: !906)
!906 = !{!278, !741, !344, !344}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !808, file: !44, line: 409, baseType: !908, size: 64, offset: 1152)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DISubroutineType(types: !910)
!910 = !{null, !741, !911, !911}
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !808, file: !44, line: 410, baseType: !913, size: 64, offset: 1216)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DISubroutineType(types: !915)
!915 = !{!278, !754, !741}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !808, file: !44, line: 413, baseType: !917, size: 64, offset: 1280)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DISubroutineType(types: !919)
!919 = !{!278, !920, !372, !922}
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !808, file: !44, line: 415, baseType: !924, size: 64, offset: 1344)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DISubroutineType(types: !926)
!926 = !{null, !372}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !755, file: !44, line: 466, baseType: !344, size: 64, offset: 896)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !755, file: !44, line: 467, baseType: !929, size: 32, offset: 960)
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !930, line: 8, baseType: !435)
!930 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!931 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !755, file: !44, line: 468, baseType: !252, offset: 992)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !755, file: !44, line: 469, baseType: !239, size: 128, offset: 1024)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !755, file: !44, line: 470, baseType: !218, size: 64, offset: 1152)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !750, file: !743, line: 87, baseType: !344, size: 64, offset: 192)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !750, file: !743, line: 94, baseType: !344, size: 64, offset: 256)
!936 = !DIDerivedType(tag: DW_TAG_member, scope: !747, file: !743, line: 96, baseType: !937, size: 64)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !747, file: !743, line: 96, size: 64, elements: !938)
!938 = !{!939}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !937, file: !743, line: 101, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !217, line: 143, baseType: !441)
!941 = !DIDerivedType(tag: DW_TAG_member, scope: !747, file: !743, line: 103, baseType: !942, size: 320)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !747, file: !743, line: 103, size: 320, elements: !943)
!943 = !{!944, !954, !957, !958}
!944 = !DIDerivedType(tag: DW_TAG_member, scope: !942, file: !743, line: 104, baseType: !945, size: 128)
!945 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !942, file: !743, line: 104, size: 128, elements: !946)
!946 = !{!947, !948}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !945, file: !743, line: 105, baseType: !239, size: 128)
!948 = !DIDerivedType(tag: DW_TAG_member, scope: !945, file: !743, line: 106, baseType: !949, size: 128)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !945, file: !743, line: 106, size: 128, elements: !950)
!950 = !{!951, !952, !953}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !949, file: !743, line: 107, baseType: !741, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !949, file: !743, line: 109, baseType: !278, size: 32, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !949, file: !743, line: 110, baseType: !278, size: 32, offset: 96)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !942, file: !743, line: 117, baseType: !955, size: 64, offset: 128)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !743, line: 117, flags: DIFlagFwdDecl)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !942, file: !743, line: 119, baseType: !218, size: 64, offset: 192)
!958 = !DIDerivedType(tag: DW_TAG_member, scope: !942, file: !743, line: 120, baseType: !959, size: 64, offset: 256)
!959 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !942, file: !743, line: 120, size: 64, elements: !960)
!960 = !{!961, !962, !963}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !959, file: !743, line: 121, baseType: !218, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !959, file: !743, line: 122, baseType: !344, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, scope: !959, file: !743, line: 123, baseType: !964, size: 32)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !959, file: !743, line: 123, size: 32, elements: !965)
!965 = !{!966, !967, !968}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !964, file: !743, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !964, file: !743, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !964, file: !743, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!969 = !DIDerivedType(tag: DW_TAG_member, scope: !747, file: !743, line: 130, baseType: !970, size: 192)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !747, file: !743, line: 130, size: 192, elements: !971)
!971 = !{!972, !973, !974, !975, !976}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !970, file: !743, line: 131, baseType: !344, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !970, file: !743, line: 134, baseType: !447, size: 8, offset: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !970, file: !743, line: 135, baseType: !447, size: 8, offset: 72)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !970, file: !743, line: 136, baseType: !767, size: 32, offset: 96)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !970, file: !743, line: 137, baseType: !7, size: 32, offset: 128)
!977 = !DIDerivedType(tag: DW_TAG_member, scope: !747, file: !743, line: 139, baseType: !978, size: 256)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !747, file: !743, line: 139, size: 256, elements: !979)
!979 = !{!980, !981, !982}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !978, file: !743, line: 140, baseType: !344, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !978, file: !743, line: 141, baseType: !767, size: 32, offset: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !978, file: !743, line: 143, baseType: !239, size: 128, offset: 128)
!983 = !DIDerivedType(tag: DW_TAG_member, scope: !747, file: !743, line: 145, baseType: !984, size: 256)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !747, file: !743, line: 145, size: 256, elements: !985)
!985 = !{!986, !987, !989, !990, !2361}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !984, file: !743, line: 146, baseType: !344, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !984, file: !743, line: 147, baseType: !988, size: 64, offset: 64)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !733, line: 509, baseType: !741)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !984, file: !743, line: 148, baseType: !344, size: 64, offset: 128)
!990 = !DIDerivedType(tag: DW_TAG_member, scope: !984, file: !743, line: 149, baseType: !991, size: 64, offset: 192)
!991 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !984, file: !743, line: 149, size: 64, elements: !992)
!992 = !{!993, !2360}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !991, file: !743, line: 150, baseType: !994, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !743, line: 388, size: 7296, elements: !996)
!996 = !{!997, !2356}
!997 = !DIDerivedType(tag: DW_TAG_member, scope: !995, file: !743, line: 389, baseType: !998, size: 7296)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !995, file: !743, line: 389, size: 7296, elements: !999)
!999 = !{!1000, !1118, !1119, !1120, !1124, !1125, !1126, !1127, !1128, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1169, !1177, !1180, !1226, !1227, !2340, !2341, !2344, !2345, !2346, !2349, !2350, !2351, !2354, !2355}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !998, file: !743, line: 390, baseType: !1001, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !743, line: 305, size: 1472, elements: !1003)
!1003 = !{!1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1018, !1019, !1024, !1025, !1028, !1112, !1113, !1114, !1115, !1116}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1002, file: !743, line: 308, baseType: !344, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1002, file: !743, line: 309, baseType: !344, size: 64, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1002, file: !743, line: 313, baseType: !1001, size: 64, offset: 128)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1002, file: !743, line: 313, baseType: !1001, size: 64, offset: 192)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1002, file: !743, line: 315, baseType: !780, size: 192, align: 64, offset: 256)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1002, file: !743, line: 323, baseType: !344, size: 64, offset: 448)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1002, file: !743, line: 327, baseType: !994, size: 64, offset: 512)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1002, file: !743, line: 333, baseType: !1012, size: 64, offset: 576)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !733, line: 284, baseType: !1013)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !733, line: 284, size: 64, elements: !1014)
!1014 = !{!1015}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1013, file: !733, line: 284, baseType: !1016, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1017, line: 19, baseType: !344)
!1017 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1002, file: !743, line: 334, baseType: !344, size: 64, offset: 640)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1002, file: !743, line: 343, baseType: !1020, size: 256, offset: 704)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1002, file: !743, line: 340, size: 256, elements: !1021)
!1021 = !{!1022, !1023}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1020, file: !743, line: 341, baseType: !780, size: 192, align: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1020, file: !743, line: 342, baseType: !344, size: 64, offset: 192)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1002, file: !743, line: 351, baseType: !239, size: 128, offset: 960)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1002, file: !743, line: 353, baseType: !1026, size: 64, offset: 1088)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !743, line: 353, flags: DIFlagFwdDecl)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1002, file: !743, line: 356, baseType: !1029, size: 64, offset: 1152)
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
!1041 = !{!278, !1001, !344}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1031, file: !14, line: 561, baseType: !1043, size: 64, offset: 192)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!278, !1001}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1031, file: !14, line: 562, baseType: !1047, size: 64, offset: 256)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!1050, !1051}
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !743, line: 682, baseType: !7)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1053)
!1053 = !{!1054, !1055, !1056, !1057, !1058, !1059, !1066, !1073, !1079, !1080, !1081, !1083, !1085}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1052, file: !14, line: 509, baseType: !1001, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1052, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1052, file: !14, line: 511, baseType: !216, size: 32, offset: 96)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1052, file: !14, line: 512, baseType: !344, size: 64, offset: 128)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1052, file: !14, line: 513, baseType: !344, size: 64, offset: 192)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1052, file: !14, line: 514, baseType: !1060, size: 64, offset: 256)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !733, line: 385, baseType: !1062)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !733, line: 385, size: 64, elements: !1063)
!1063 = !{!1064}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1062, file: !733, line: 385, baseType: !1065, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1017, line: 15, baseType: !344)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1052, file: !14, line: 516, baseType: !1067, size: 64, offset: 320)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !733, line: 359, baseType: !1069)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !733, line: 359, size: 64, elements: !1070)
!1070 = !{!1071}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1069, file: !733, line: 359, baseType: !1072, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1017, line: 16, baseType: !344)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1052, file: !14, line: 519, baseType: !1074, size: 64, offset: 384)
!1074 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1017, line: 21, baseType: !1075)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1017, line: 21, size: 64, elements: !1076)
!1076 = !{!1077}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1075, file: !1017, line: 21, baseType: !1078, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1017, line: 14, baseType: !344)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1052, file: !14, line: 521, baseType: !741, size: 64, offset: 448)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1052, file: !14, line: 522, baseType: !741, size: 64, offset: 512)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1052, file: !14, line: 528, baseType: !1082, size: 64, offset: 576)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1052, file: !14, line: 532, baseType: !1084, size: 64, offset: 640)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1052, file: !14, line: 536, baseType: !988, size: 64, offset: 704)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1031, file: !14, line: 563, baseType: !1087, size: 64, offset: 320)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!1050, !1051, !13}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1031, file: !14, line: 565, baseType: !1091, size: 64, offset: 384)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{null, !1051, !344, !344}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1031, file: !14, line: 567, baseType: !1095, size: 64, offset: 448)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!344, !1001}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1031, file: !14, line: 571, baseType: !1047, size: 64, offset: 512)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1031, file: !14, line: 574, baseType: !1047, size: 64, offset: 576)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1031, file: !14, line: 579, baseType: !1101, size: 64, offset: 640)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!278, !1001, !344, !218, !278, !278}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1031, file: !14, line: 585, baseType: !1105, size: 64, offset: 704)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!235, !1001}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1031, file: !14, line: 615, baseType: !1109, size: 64, offset: 768)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!741, !1001, !344}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1002, file: !743, line: 359, baseType: !344, size: 64, offset: 1216)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1002, file: !743, line: 361, baseType: !372, size: 64, offset: 1280)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1002, file: !743, line: 362, baseType: !218, size: 64, offset: 1344)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1002, file: !743, line: 365, baseType: !791, size: 64, offset: 1408)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1002, file: !743, line: 373, baseType: !1117, offset: 1472)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !743, line: 296, elements: !266)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !998, file: !743, line: 391, baseType: !776, size: 64, offset: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !998, file: !743, line: 392, baseType: !441, size: 64, offset: 128)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !998, file: !743, line: 394, baseType: !1121, size: 64, offset: 192)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!344, !372, !344, !344, !344, !344}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !998, file: !743, line: 398, baseType: !344, size: 64, offset: 256)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !998, file: !743, line: 399, baseType: !344, size: 64, offset: 320)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !998, file: !743, line: 405, baseType: !344, size: 64, offset: 384)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !998, file: !743, line: 406, baseType: !344, size: 64, offset: 448)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !998, file: !743, line: 407, baseType: !1129, size: 64, offset: 512)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !733, line: 286, baseType: !1131)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !733, line: 286, size: 64, elements: !1132)
!1132 = !{!1133}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1131, file: !733, line: 286, baseType: !1134, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1017, line: 18, baseType: !344)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !998, file: !743, line: 416, baseType: !767, size: 32, offset: 576)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !998, file: !743, line: 428, baseType: !767, size: 32, offset: 608)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !998, file: !743, line: 437, baseType: !767, size: 32, offset: 640)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !998, file: !743, line: 447, baseType: !767, size: 32, offset: 672)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !998, file: !743, line: 450, baseType: !791, size: 64, offset: 704)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !998, file: !743, line: 452, baseType: !278, size: 32, offset: 768)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !998, file: !743, line: 454, baseType: !252, offset: 800)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !998, file: !743, line: 457, baseType: !787, size: 256, offset: 832)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !998, file: !743, line: 459, baseType: !239, size: 128, offset: 1088)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !998, file: !743, line: 466, baseType: !344, size: 64, offset: 1216)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !998, file: !743, line: 467, baseType: !344, size: 64, offset: 1280)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !998, file: !743, line: 469, baseType: !344, size: 64, offset: 1344)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !998, file: !743, line: 470, baseType: !344, size: 64, offset: 1408)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !998, file: !743, line: 471, baseType: !793, size: 64, offset: 1472)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !998, file: !743, line: 472, baseType: !344, size: 64, offset: 1536)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !998, file: !743, line: 473, baseType: !344, size: 64, offset: 1600)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !998, file: !743, line: 474, baseType: !344, size: 64, offset: 1664)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !998, file: !743, line: 475, baseType: !344, size: 64, offset: 1728)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !998, file: !743, line: 477, baseType: !252, offset: 1792)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !998, file: !743, line: 478, baseType: !344, size: 64, offset: 1792)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !998, file: !743, line: 478, baseType: !344, size: 64, offset: 1856)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !998, file: !743, line: 478, baseType: !344, size: 64, offset: 1920)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !998, file: !743, line: 478, baseType: !344, size: 64, offset: 1984)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !998, file: !743, line: 479, baseType: !344, size: 64, offset: 2048)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !998, file: !743, line: 479, baseType: !344, size: 64, offset: 2112)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !998, file: !743, line: 479, baseType: !344, size: 64, offset: 2176)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !998, file: !743, line: 480, baseType: !344, size: 64, offset: 2240)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !998, file: !743, line: 480, baseType: !344, size: 64, offset: 2304)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !998, file: !743, line: 480, baseType: !344, size: 64, offset: 2368)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !998, file: !743, line: 480, baseType: !344, size: 64, offset: 2432)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !998, file: !743, line: 482, baseType: !1166, size: 2816, offset: 2496)
!1166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 2816, elements: !1167)
!1167 = !{!1168}
!1168 = !DISubrange(count: 44)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !998, file: !743, line: 488, baseType: !1170, size: 256, offset: 5312)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1171, line: 60, size: 256, elements: !1172)
!1171 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1172 = !{!1173}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1170, file: !1171, line: 61, baseType: !1174, size: 256)
!1174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !791, size: 256, elements: !1175)
!1175 = !{!1176}
!1176 = !DISubrange(count: 4)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !998, file: !743, line: 490, baseType: !1178, size: 64, offset: 5568)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !743, line: 490, flags: DIFlagFwdDecl)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !998, file: !743, line: 493, baseType: !1181, size: 896, offset: 5632)
!1181 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1182, line: 53, baseType: !1183)
!1182 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1182, line: 13, size: 896, elements: !1184)
!1184 = !{!1185, !1186, !1187, !1188, !1191, !1192, !1199, !1200, !1220, !1221, !1222}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1183, file: !1182, line: 18, baseType: !441, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1183, file: !1182, line: 28, baseType: !793, size: 64, offset: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1183, file: !1182, line: 31, baseType: !787, size: 256, offset: 128)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1183, file: !1182, line: 32, baseType: !1189, size: 64, offset: 384)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1182, line: 32, flags: DIFlagFwdDecl)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1183, file: !1182, line: 37, baseType: !336, size: 16, offset: 448)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1183, file: !1182, line: 40, baseType: !1193, size: 192, offset: 512)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1194, line: 53, size: 192, elements: !1195)
!1194 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1195 = !{!1196, !1197, !1198}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1193, file: !1194, line: 54, baseType: !791, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1193, file: !1194, line: 55, baseType: !252, offset: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1193, file: !1194, line: 59, baseType: !239, size: 128, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1183, file: !1182, line: 41, baseType: !218, size: 64, offset: 704)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1183, file: !1182, line: 42, baseType: !1201, size: 64, offset: 768)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1203)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1204, line: 13, size: 896, elements: !1205)
!1204 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1205 = !{!1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1203, file: !1204, line: 14, baseType: !218, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1203, file: !1204, line: 15, baseType: !344, size: 64, offset: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1203, file: !1204, line: 17, baseType: !344, size: 64, offset: 128)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1203, file: !1204, line: 17, baseType: !344, size: 64, offset: 192)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1203, file: !1204, line: 19, baseType: !329, size: 64, offset: 256)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1203, file: !1204, line: 21, baseType: !329, size: 64, offset: 320)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1203, file: !1204, line: 22, baseType: !329, size: 64, offset: 384)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1203, file: !1204, line: 23, baseType: !329, size: 64, offset: 448)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1203, file: !1204, line: 24, baseType: !329, size: 64, offset: 512)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1203, file: !1204, line: 25, baseType: !329, size: 64, offset: 576)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1203, file: !1204, line: 26, baseType: !329, size: 64, offset: 640)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1203, file: !1204, line: 27, baseType: !329, size: 64, offset: 704)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1203, file: !1204, line: 28, baseType: !329, size: 64, offset: 768)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1203, file: !1204, line: 29, baseType: !329, size: 64, offset: 832)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1183, file: !1182, line: 44, baseType: !767, size: 32, offset: 832)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1183, file: !1182, line: 50, baseType: !879, size: 16, offset: 864)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1183, file: !1182, line: 51, baseType: !1223, size: 16, offset: 880)
!1223 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !436, line: 18, baseType: !1224)
!1224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !438, line: 23, baseType: !1225)
!1225 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !998, file: !743, line: 495, baseType: !344, size: 64, offset: 6528)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !998, file: !743, line: 497, baseType: !1228, size: 64, offset: 6592)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !743, line: 381, size: 384, elements: !1230)
!1230 = !{!1231, !1232, !2339}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1229, file: !743, line: 382, baseType: !767, size: 32)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1229, file: !743, line: 383, baseType: !1233, size: 128, offset: 64)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !743, line: 376, size: 128, elements: !1234)
!1234 = !{!1235, !2337}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1233, file: !743, line: 377, baseType: !1236, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1238, line: 640, size: 48640, elements: !1239)
!1238 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1239 = !{!1240, !1246, !1248, !1249, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1266, !1284, !1295, !1380, !1381, !1382, !1393, !1394, !1396, !1397, !1398, !1399, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1483, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1521, !1523, !1524, !1525, !1537, !1538, !1539, !1540, !1541, !1542, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1566, !1571, !1755, !1756, !1757, !1758, !1762, !1765, !1768, !1771, !1774, !1778, !1879, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1925, !1926, !1927, !1928, !1929, !1934, !1935, !1936, !1939, !1940, !1943, !1946, !1949, !1952, !1995, !1998, !1999, !2078, !2079, !2082, !2083, !2086, !2087, !2088, !2092, !2093, !2094, !2107, !2108, !2109, !2119, !2124, !2127, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1237, file: !1238, line: 646, baseType: !1241, size: 128)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1242, line: 56, size: 128, elements: !1243)
!1242 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1243 = !{!1244, !1245}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1241, file: !1242, line: 57, baseType: !344, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1241, file: !1242, line: 58, baseType: !435, size: 32, offset: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1237, file: !1238, line: 649, baseType: !1247, size: 64, offset: 128)
!1247 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !329)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1237, file: !1238, line: 657, baseType: !218, size: 64, offset: 192)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1237, file: !1238, line: 658, baseType: !1250, size: 32, offset: 256)
!1250 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1251, line: 113, baseType: !1252)
!1251 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1251, line: 111, size: 32, elements: !1253)
!1253 = !{!1254}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1252, file: !1251, line: 112, baseType: !767, size: 32)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1237, file: !1238, line: 660, baseType: !7, size: 32, offset: 288)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1237, file: !1238, line: 661, baseType: !7, size: 32, offset: 320)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1237, file: !1238, line: 684, baseType: !278, size: 32, offset: 352)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1237, file: !1238, line: 686, baseType: !278, size: 32, offset: 384)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1237, file: !1238, line: 687, baseType: !278, size: 32, offset: 416)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1237, file: !1238, line: 688, baseType: !278, size: 32, offset: 448)
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
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1270, file: !1238, line: 326, baseType: !344, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1270, file: !1238, line: 327, baseType: !435, size: 32, offset: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1267, file: !1238, line: 454, baseType: !780, size: 192, align: 64, offset: 128)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1267, file: !1238, line: 455, baseType: !239, size: 128, offset: 320)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1267, file: !1238, line: 456, baseType: !7, size: 32, offset: 448)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1267, file: !1238, line: 458, baseType: !441, size: 64, offset: 512)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1267, file: !1238, line: 459, baseType: !441, size: 64, offset: 576)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1267, file: !1238, line: 460, baseType: !441, size: 64, offset: 640)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1267, file: !1238, line: 461, baseType: !441, size: 64, offset: 704)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1267, file: !1238, line: 463, baseType: !441, size: 64, offset: 768)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1267, file: !1238, line: 465, baseType: !1283, offset: 832)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1238, line: 415, elements: !266)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1237, file: !1238, line: 693, baseType: !1285, size: 384, offset: 1408)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1238, line: 489, size: 384, elements: !1286)
!1286 = !{!1287, !1288, !1289, !1290, !1291, !1292, !1293}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1285, file: !1238, line: 490, baseType: !239, size: 128)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1285, file: !1238, line: 491, baseType: !344, size: 64, offset: 128)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1285, file: !1238, line: 492, baseType: !344, size: 64, offset: 192)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1285, file: !1238, line: 493, baseType: !7, size: 32, offset: 256)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1285, file: !1238, line: 494, baseType: !336, size: 16, offset: 288)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1285, file: !1238, line: 495, baseType: !336, size: 16, offset: 304)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1285, file: !1238, line: 497, baseType: !1294, size: 64, offset: 320)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1237, file: !1238, line: 697, baseType: !1296, size: 1792, offset: 1792)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1238, line: 507, size: 1792, elements: !1297)
!1297 = !{!1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1377, !1378}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1296, file: !1238, line: 508, baseType: !780, size: 192, align: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1296, file: !1238, line: 515, baseType: !441, size: 64, offset: 192)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1296, file: !1238, line: 516, baseType: !441, size: 64, offset: 256)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1296, file: !1238, line: 517, baseType: !441, size: 64, offset: 320)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1296, file: !1238, line: 518, baseType: !441, size: 64, offset: 384)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1296, file: !1238, line: 519, baseType: !441, size: 64, offset: 448)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1296, file: !1238, line: 526, baseType: !797, size: 64, offset: 512)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1296, file: !1238, line: 527, baseType: !441, size: 64, offset: 576)
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
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1315, file: !1316, line: 10, baseType: !780, size: 192, align: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1315, file: !1316, line: 11, baseType: !1320, size: 64, offset: 192)
!1320 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1321, line: 29, baseType: !797)
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
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1334, file: !20, line: 215, baseType: !800)
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
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !217, line: 27, baseType: !1355)
!1355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !327, line: 96, baseType: !278)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1330, file: !20, line: 163, baseType: !1357, size: 32, offset: 128)
!1357 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !408, line: 276, baseType: !1358)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !408, line: 276, size: 32, elements: !1359)
!1359 = !{!1360}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1358, file: !408, line: 276, baseType: !412, size: 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1330, file: !20, line: 164, baseType: !1327, size: 64, offset: 192)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1330, file: !20, line: 165, baseType: !1363, size: 128, offset: 256)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1316, line: 14, size: 128, elements: !1364)
!1364 = !{!1365}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1363, file: !1316, line: 15, baseType: !772, size: 128)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1330, file: !20, line: 166, baseType: !1367, size: 64, offset: 384)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!1320}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1330, file: !20, line: 167, baseType: !1320, size: 64, offset: 448)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1312, file: !20, line: 123, baseType: !1372, size: 8, offset: 448)
!1372 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !436, line: 17, baseType: !1373)
!1373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !438, line: 21, baseType: !447)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1312, file: !20, line: 124, baseType: !1372, size: 8, offset: 456)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1312, file: !20, line: 125, baseType: !1372, size: 8, offset: 464)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1312, file: !20, line: 126, baseType: !1372, size: 8, offset: 472)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1296, file: !1238, line: 572, baseType: !1312, size: 512, offset: 1216)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1296, file: !1238, line: 580, baseType: !1379, size: 64, offset: 1728)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1237, file: !1238, line: 721, baseType: !7, size: 32, offset: 3584)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1237, file: !1238, line: 722, baseType: !278, size: 32, offset: 3616)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1237, file: !1238, line: 723, baseType: !1383, size: 64, offset: 3648)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1385)
!1385 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1386, line: 17, baseType: !1387)
!1386 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1386, line: 17, size: 64, elements: !1388)
!1388 = !{!1389}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1387, file: !1386, line: 17, baseType: !1390, size: 64)
!1390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 64, elements: !1391)
!1391 = !{!1392}
!1392 = !DISubrange(count: 1)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1237, file: !1238, line: 724, baseType: !1385, size: 64, offset: 3712)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1237, file: !1238, line: 749, baseType: !1395, offset: 3776)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1238, line: 290, elements: !266)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1237, file: !1238, line: 751, baseType: !239, size: 128, offset: 3776)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1237, file: !1238, line: 757, baseType: !994, size: 64, offset: 3904)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1237, file: !1238, line: 758, baseType: !994, size: 64, offset: 3968)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1237, file: !1238, line: 761, baseType: !1400, size: 320, offset: 4032)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1171, line: 34, size: 320, elements: !1401)
!1401 = !{!1402, !1403}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1400, file: !1171, line: 35, baseType: !441, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1400, file: !1171, line: 36, baseType: !1404, size: 256, offset: 64)
!1404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1001, size: 256, elements: !1175)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1237, file: !1238, line: 766, baseType: !278, size: 32, offset: 4352)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1237, file: !1238, line: 767, baseType: !278, size: 32, offset: 4384)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1237, file: !1238, line: 768, baseType: !278, size: 32, offset: 4416)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1237, file: !1238, line: 770, baseType: !278, size: 32, offset: 4448)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1237, file: !1238, line: 772, baseType: !344, size: 64, offset: 4480)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1237, file: !1238, line: 775, baseType: !7, size: 32, offset: 4544)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1237, file: !1238, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1237, file: !1238, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1237, file: !1238, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1237, file: !1238, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1237, file: !1238, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1237, file: !1238, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1237, file: !1238, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1237, file: !1238, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1237, file: !1238, line: 831, baseType: !344, size: 64, offset: 4672)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1237, file: !1238, line: 833, baseType: !1421, size: 384, offset: 4736)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1422)
!1422 = !{!1423, !1428}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1421, file: !25, line: 26, baseType: !1424, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!329, !1427}
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, scope: !1421, file: !25, line: 27, baseType: !1429, size: 320, offset: 64)
!1429 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1421, file: !25, line: 27, size: 320, elements: !1430)
!1430 = !{!1431, !1441, !1468}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1429, file: !25, line: 36, baseType: !1432, size: 320)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1429, file: !25, line: 29, size: 320, elements: !1433)
!1433 = !{!1434, !1436, !1437, !1438, !1439, !1440}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1432, file: !25, line: 30, baseType: !1435, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1432, file: !25, line: 31, baseType: !435, size: 32, offset: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1432, file: !25, line: 32, baseType: !435, size: 32, offset: 96)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1432, file: !25, line: 33, baseType: !435, size: 32, offset: 128)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1432, file: !25, line: 34, baseType: !441, size: 64, offset: 192)
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
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !327, line: 93, baseType: !553)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1451, file: !1452, line: 9, baseType: !553, size: 64, offset: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1447, file: !25, line: 43, baseType: !1458, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1460, line: 7, size: 64, elements: !1461)
!1460 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1461 = !{!1462, !1466}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1459, file: !1460, line: 8, baseType: !1463, size: 32)
!1463 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1460, line: 5, baseType: !1464)
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !436, line: 20, baseType: !1465)
!1465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !438, line: 26, baseType: !278)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1459, file: !1460, line: 9, baseType: !1464, size: 32, offset: 32)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1442, file: !25, line: 45, baseType: !441, size: 64, offset: 128)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1429, file: !25, line: 54, baseType: !1469, size: 256)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1429, file: !25, line: 48, size: 256, elements: !1470)
!1470 = !{!1471, !1479, !1480, !1481, !1482}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1469, file: !25, line: 49, baseType: !1472, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1474, line: 36, size: 64, elements: !1475)
!1474 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!1475 = !{!1476, !1477, !1478}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1473, file: !1474, line: 37, baseType: !278, size: 32)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1473, file: !1474, line: 38, baseType: !1225, size: 16, offset: 32)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1473, file: !1474, line: 39, baseType: !1225, size: 16, offset: 48)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1469, file: !25, line: 50, baseType: !278, size: 32, offset: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1469, file: !25, line: 51, baseType: !278, size: 32, offset: 96)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1469, file: !25, line: 52, baseType: !344, size: 64, offset: 128)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1469, file: !25, line: 53, baseType: !344, size: 64, offset: 192)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1237, file: !1238, line: 835, baseType: !1484, size: 32, offset: 5120)
!1484 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !217, line: 22, baseType: !1485)
!1485 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !327, line: 28, baseType: !278)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1237, file: !1238, line: 836, baseType: !1484, size: 32, offset: 5152)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1237, file: !1238, line: 840, baseType: !344, size: 64, offset: 5184)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1237, file: !1238, line: 849, baseType: !1236, size: 64, offset: 5248)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1237, file: !1238, line: 852, baseType: !1236, size: 64, offset: 5312)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1237, file: !1238, line: 857, baseType: !239, size: 128, offset: 5376)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1237, file: !1238, line: 858, baseType: !239, size: 128, offset: 5504)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1237, file: !1238, line: 859, baseType: !1236, size: 64, offset: 5632)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1237, file: !1238, line: 867, baseType: !239, size: 128, offset: 5696)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1237, file: !1238, line: 868, baseType: !239, size: 128, offset: 5824)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1237, file: !1238, line: 871, baseType: !1496, size: 64, offset: 5952)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1498)
!1498 = !{!1499, !1500, !1501, !1502, !1504, !1505, !1512, !1513}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1497, file: !53, line: 61, baseType: !1250, size: 32)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1497, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1497, file: !53, line: 63, baseType: !252, offset: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1497, file: !53, line: 65, baseType: !1503, size: 256, offset: 64)
!1503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !655, size: 256, elements: !1175)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1497, file: !53, line: 66, baseType: !655, size: 64, offset: 320)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1497, file: !53, line: 68, baseType: !1506, size: 128, offset: 384)
!1506 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1507, line: 40, baseType: !1508)
!1507 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1507, line: 36, size: 128, elements: !1509)
!1509 = !{!1510, !1511}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1508, file: !1507, line: 37, baseType: !252)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1508, file: !1507, line: 38, baseType: !239, size: 128)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1497, file: !53, line: 69, baseType: !385, size: 128, align: 64, offset: 512)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1497, file: !53, line: 70, baseType: !1514, size: 128, offset: 640)
!1514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1515, size: 128, elements: !1391)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1516)
!1516 = !{!1517, !1518}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1515, file: !53, line: 55, baseType: !278, size: 32)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1515, file: !53, line: 56, baseType: !1519, size: 64, offset: 64)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1237, file: !1238, line: 872, baseType: !1522, size: 512, offset: 6016)
!1522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !659, size: 512, elements: !1175)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1237, file: !1238, line: 873, baseType: !239, size: 128, offset: 6528)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1237, file: !1238, line: 874, baseType: !239, size: 128, offset: 6656)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1237, file: !1238, line: 876, baseType: !1526, size: 64, offset: 6784)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1528, line: 26, size: 192, elements: !1529)
!1528 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1529 = !{!1530, !1531}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1527, file: !1528, line: 27, baseType: !7, size: 32)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1527, file: !1528, line: 28, baseType: !1532, size: 128, offset: 64)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1533, line: 43, size: 128, elements: !1534)
!1533 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1534 = !{!1535, !1536}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1532, file: !1533, line: 44, baseType: !800)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1532, file: !1533, line: 45, baseType: !239, size: 128)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1237, file: !1238, line: 879, baseType: !725, size: 64, offset: 6848)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1237, file: !1238, line: 882, baseType: !725, size: 64, offset: 6912)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1237, file: !1238, line: 884, baseType: !441, size: 64, offset: 6976)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1237, file: !1238, line: 885, baseType: !441, size: 64, offset: 7040)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1237, file: !1238, line: 890, baseType: !441, size: 64, offset: 7104)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1237, file: !1238, line: 891, baseType: !1543, size: 128, offset: 7168)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1238, line: 242, size: 128, elements: !1544)
!1544 = !{!1545, !1546, !1547}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1543, file: !1238, line: 244, baseType: !441, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1543, file: !1238, line: 245, baseType: !441, size: 64, offset: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1543, file: !1238, line: 246, baseType: !800, offset: 128)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1237, file: !1238, line: 900, baseType: !344, size: 64, offset: 7296)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1237, file: !1238, line: 901, baseType: !344, size: 64, offset: 7360)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1237, file: !1238, line: 904, baseType: !441, size: 64, offset: 7424)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1237, file: !1238, line: 907, baseType: !441, size: 64, offset: 7488)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1237, file: !1238, line: 910, baseType: !344, size: 64, offset: 7552)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1237, file: !1238, line: 911, baseType: !344, size: 64, offset: 7616)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1237, file: !1238, line: 914, baseType: !1555, size: 640, offset: 7680)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1556, line: 123, size: 640, elements: !1557)
!1556 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1557 = !{!1558, !1564, !1565}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1555, file: !1556, line: 124, baseType: !1559, size: 576)
!1559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1560, size: 576, elements: !295)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1556, line: 108, size: 192, elements: !1561)
!1561 = !{!1562, !1563}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1560, file: !1556, line: 109, baseType: !441, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1560, file: !1556, line: 110, baseType: !1363, size: 128, offset: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1555, file: !1556, line: 125, baseType: !7, size: 32, offset: 576)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1555, file: !1556, line: 126, baseType: !7, size: 32, offset: 608)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1237, file: !1238, line: 917, baseType: !1567, size: 192, offset: 8320)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1556, line: 134, size: 192, elements: !1568)
!1568 = !{!1569, !1570}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1567, file: !1556, line: 135, baseType: !385, size: 128, align: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1567, file: !1556, line: 136, baseType: !7, size: 32, offset: 128)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1237, file: !1238, line: 923, baseType: !1572, size: 64, offset: 8512)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1574)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1575, line: 111, size: 1280, elements: !1576)
!1575 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1576 = !{!1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1596, !1597, !1598, !1599, !1600, !1601, !1708, !1709, !1710, !1711, !1737, !1740, !1750}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1574, file: !1575, line: 112, baseType: !767, size: 32)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1574, file: !1575, line: 120, baseType: !455, size: 32, offset: 32)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1574, file: !1575, line: 121, baseType: !463, size: 32, offset: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1574, file: !1575, line: 122, baseType: !455, size: 32, offset: 96)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1574, file: !1575, line: 123, baseType: !463, size: 32, offset: 128)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1574, file: !1575, line: 124, baseType: !455, size: 32, offset: 160)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1574, file: !1575, line: 125, baseType: !463, size: 32, offset: 192)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1574, file: !1575, line: 126, baseType: !455, size: 32, offset: 224)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1574, file: !1575, line: 127, baseType: !463, size: 32, offset: 256)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1574, file: !1575, line: 128, baseType: !7, size: 32, offset: 288)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1574, file: !1575, line: 129, baseType: !1588, size: 64, offset: 320)
!1588 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1589, line: 26, baseType: !1590)
!1589 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1589, line: 24, size: 64, elements: !1591)
!1591 = !{!1592}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1590, file: !1589, line: 25, baseType: !1593, size: 64)
!1593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !437, size: 64, elements: !1594)
!1594 = !{!1595}
!1595 = !DISubrange(count: 2)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1574, file: !1575, line: 130, baseType: !1588, size: 64, offset: 384)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1574, file: !1575, line: 131, baseType: !1588, size: 64, offset: 448)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1574, file: !1575, line: 132, baseType: !1588, size: 64, offset: 512)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1574, file: !1575, line: 133, baseType: !1588, size: 64, offset: 576)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1574, file: !1575, line: 135, baseType: !447, size: 8, offset: 640)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1574, file: !1575, line: 137, baseType: !1602, size: 64, offset: 704)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1604, line: 189, size: 1664, elements: !1605)
!1604 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1605 = !{!1606, !1607, !1610, !1615, !1616, !1619, !1620, !1625, !1626, !1627, !1628, !1630, !1631, !1632, !1633, !1634, !1672, !1693}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1603, file: !1604, line: 190, baseType: !1250, size: 32)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1603, file: !1604, line: 191, baseType: !1608, size: 32, offset: 32)
!1608 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1604, line: 28, baseType: !1609)
!1609 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !217, line: 98, baseType: !1464)
!1610 = !DIDerivedType(tag: DW_TAG_member, scope: !1603, file: !1604, line: 192, baseType: !1611, size: 192, offset: 64)
!1611 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1603, file: !1604, line: 192, size: 192, elements: !1612)
!1612 = !{!1613, !1614}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1611, file: !1604, line: 193, baseType: !239, size: 128)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1611, file: !1604, line: 194, baseType: !780, size: 192, align: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1603, file: !1604, line: 199, baseType: !787, size: 256, offset: 256)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1603, file: !1604, line: 200, baseType: !1617, size: 64, offset: 512)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1604, line: 200, flags: DIFlagFwdDecl)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1603, file: !1604, line: 201, baseType: !218, size: 64, offset: 576)
!1620 = !DIDerivedType(tag: DW_TAG_member, scope: !1603, file: !1604, line: 202, baseType: !1621, size: 64, offset: 640)
!1621 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1603, file: !1604, line: 202, size: 64, elements: !1622)
!1622 = !{!1623, !1624}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1621, file: !1604, line: 203, baseType: !559, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1621, file: !1604, line: 204, baseType: !559, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1603, file: !1604, line: 206, baseType: !559, size: 64, offset: 704)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1603, file: !1604, line: 207, baseType: !455, size: 32, offset: 768)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1603, file: !1604, line: 208, baseType: !463, size: 32, offset: 800)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1603, file: !1604, line: 209, baseType: !1629, size: 32, offset: 832)
!1629 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1604, line: 31, baseType: !579)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1603, file: !1604, line: 210, baseType: !336, size: 16, offset: 864)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1603, file: !1604, line: 211, baseType: !336, size: 16, offset: 880)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1603, file: !1604, line: 215, baseType: !1225, size: 16, offset: 896)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1603, file: !1604, line: 222, baseType: !344, size: 64, offset: 960)
!1634 = !DIDerivedType(tag: DW_TAG_member, scope: !1603, file: !1604, line: 239, baseType: !1635, size: 320, offset: 1024)
!1635 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1603, file: !1604, line: 239, size: 320, elements: !1636)
!1636 = !{!1637, !1664}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1635, file: !1604, line: 240, baseType: !1638, size: 320)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1604, line: 108, size: 320, elements: !1639)
!1639 = !{!1640, !1641, !1653, !1656, !1663}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1638, file: !1604, line: 110, baseType: !344, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, scope: !1638, file: !1604, line: 111, baseType: !1642, size: 64, offset: 64)
!1642 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1638, file: !1604, line: 111, size: 64, elements: !1643)
!1643 = !{!1644, !1652}
!1644 = !DIDerivedType(tag: DW_TAG_member, scope: !1642, file: !1604, line: 112, baseType: !1645, size: 64)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1642, file: !1604, line: 112, size: 64, elements: !1646)
!1646 = !{!1647, !1648}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1645, file: !1604, line: 114, baseType: !879, size: 16)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1645, file: !1604, line: 115, baseType: !1649, size: 48, offset: 16)
!1649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 48, elements: !1650)
!1650 = !{!1651}
!1651 = !DISubrange(count: 6)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1642, file: !1604, line: 121, baseType: !344, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1638, file: !1604, line: 123, baseType: !1654, size: 64, offset: 128)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1604, line: 96, flags: DIFlagFwdDecl)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1638, file: !1604, line: 124, baseType: !1657, size: 64, offset: 192)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1604, line: 102, size: 192, elements: !1659)
!1659 = !{!1660, !1661, !1662}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1658, file: !1604, line: 103, baseType: !385, size: 128, align: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1658, file: !1604, line: 104, baseType: !1250, size: 32, offset: 128)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1658, file: !1604, line: 105, baseType: !510, size: 8, offset: 160)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1638, file: !1604, line: 125, baseType: !235, size: 64, offset: 256)
!1664 = !DIDerivedType(tag: DW_TAG_member, scope: !1635, file: !1604, line: 241, baseType: !1665, size: 320)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1635, file: !1604, line: 241, size: 320, elements: !1666)
!1666 = !{!1667, !1668, !1669, !1670, !1671}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1665, file: !1604, line: 242, baseType: !344, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1665, file: !1604, line: 243, baseType: !344, size: 64, offset: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1665, file: !1604, line: 244, baseType: !1654, size: 64, offset: 128)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1665, file: !1604, line: 245, baseType: !1657, size: 64, offset: 192)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1665, file: !1604, line: 246, baseType: !294, size: 64, offset: 256)
!1672 = !DIDerivedType(tag: DW_TAG_member, scope: !1603, file: !1604, line: 254, baseType: !1673, size: 256, offset: 1344)
!1673 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1603, file: !1604, line: 254, size: 256, elements: !1674)
!1674 = !{!1675, !1681}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1673, file: !1604, line: 255, baseType: !1676, size: 256)
!1676 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1604, line: 128, size: 256, elements: !1677)
!1677 = !{!1678, !1679}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1676, file: !1604, line: 129, baseType: !218, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1676, file: !1604, line: 130, baseType: !1680, size: 256)
!1680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 256, elements: !1175)
!1681 = !DIDerivedType(tag: DW_TAG_member, scope: !1673, file: !1604, line: 256, baseType: !1682, size: 256)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1673, file: !1604, line: 256, size: 256, elements: !1683)
!1683 = !{!1684, !1685}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1682, file: !1604, line: 258, baseType: !239, size: 128)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1682, file: !1604, line: 259, baseType: !1686, size: 128, offset: 128)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1687, line: 22, size: 128, elements: !1688)
!1687 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1688 = !{!1689, !1692}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1686, file: !1687, line: 23, baseType: !1690, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1687, line: 23, flags: DIFlagFwdDecl)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1686, file: !1687, line: 24, baseType: !344, size: 64, offset: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1603, file: !1604, line: 274, baseType: !1694, size: 64, offset: 1600)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1604, line: 170, size: 192, elements: !1696)
!1696 = !{!1697, !1706, !1707}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1695, file: !1604, line: 171, baseType: !1698, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1604, line: 165, baseType: !1699)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{!278, !1602, !1702, !1704, !1602}
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1655)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1676)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1695, file: !1604, line: 172, baseType: !1602, size: 64, offset: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1695, file: !1604, line: 173, baseType: !1654, size: 64, offset: 128)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1574, file: !1575, line: 138, baseType: !1602, size: 64, offset: 768)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1574, file: !1575, line: 139, baseType: !1602, size: 64, offset: 832)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1574, file: !1575, line: 140, baseType: !1602, size: 64, offset: 896)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1574, file: !1575, line: 145, baseType: !1712, size: 64, offset: 960)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1714, line: 13, size: 896, elements: !1715)
!1714 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1715 = !{!1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1713, file: !1714, line: 14, baseType: !1250, size: 32)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1713, file: !1714, line: 15, baseType: !767, size: 32, offset: 32)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1713, file: !1714, line: 16, baseType: !767, size: 32, offset: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1713, file: !1714, line: 21, baseType: !791, size: 64, offset: 128)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1713, file: !1714, line: 27, baseType: !344, size: 64, offset: 192)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1713, file: !1714, line: 28, baseType: !344, size: 64, offset: 256)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1713, file: !1714, line: 29, baseType: !791, size: 64, offset: 320)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1713, file: !1714, line: 32, baseType: !659, size: 128, offset: 384)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1713, file: !1714, line: 33, baseType: !455, size: 32, offset: 512)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1713, file: !1714, line: 37, baseType: !791, size: 64, offset: 576)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1713, file: !1714, line: 44, baseType: !1727, size: 256, offset: 640)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1728, line: 15, size: 256, elements: !1729)
!1728 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1729 = !{!1730, !1731, !1732, !1733, !1734, !1735, !1736}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1727, file: !1728, line: 16, baseType: !800)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1727, file: !1728, line: 18, baseType: !278, size: 32)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1727, file: !1728, line: 19, baseType: !278, size: 32, offset: 32)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1727, file: !1728, line: 20, baseType: !278, size: 32, offset: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1727, file: !1728, line: 21, baseType: !278, size: 32, offset: 96)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1727, file: !1728, line: 22, baseType: !344, size: 64, offset: 128)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1727, file: !1728, line: 23, baseType: !344, size: 64, offset: 192)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1574, file: !1575, line: 146, baseType: !1738, size: 64, offset: 1024)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !456, line: 18, flags: DIFlagFwdDecl)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1574, file: !1575, line: 147, baseType: !1741, size: 64, offset: 1088)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1575, line: 25, size: 64, elements: !1743)
!1743 = !{!1744, !1745, !1746}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1742, file: !1575, line: 26, baseType: !767, size: 32)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1742, file: !1575, line: 27, baseType: !278, size: 32, offset: 32)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1742, file: !1575, line: 28, baseType: !1747, offset: 64)
!1747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !463, elements: !1748)
!1748 = !{!1749}
!1749 = !DISubrange(count: 0)
!1750 = !DIDerivedType(tag: DW_TAG_member, scope: !1574, file: !1575, line: 149, baseType: !1751, size: 128, offset: 1152)
!1751 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1574, file: !1575, line: 149, size: 128, elements: !1752)
!1752 = !{!1753, !1754}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1751, file: !1575, line: 150, baseType: !278, size: 32)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1751, file: !1575, line: 151, baseType: !385, size: 128, align: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1237, file: !1238, line: 926, baseType: !1572, size: 64, offset: 8576)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1237, file: !1238, line: 929, baseType: !1572, size: 64, offset: 8640)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1237, file: !1238, line: 933, baseType: !1602, size: 64, offset: 8704)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1237, file: !1238, line: 943, baseType: !1759, size: 128, offset: 8768)
!1759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 128, elements: !1760)
!1760 = !{!1761}
!1761 = !DISubrange(count: 16)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1237, file: !1238, line: 945, baseType: !1763, size: 64, offset: 8896)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1238, line: 49, flags: DIFlagFwdDecl)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1237, file: !1238, line: 956, baseType: !1766, size: 64, offset: 8960)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1238, line: 45, flags: DIFlagFwdDecl)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1237, file: !1238, line: 959, baseType: !1769, size: 64, offset: 9024)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1238, line: 959, flags: DIFlagFwdDecl)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1237, file: !1238, line: 962, baseType: !1772, size: 64, offset: 9088)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1238, line: 66, flags: DIFlagFwdDecl)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1237, file: !1238, line: 966, baseType: !1775, size: 64, offset: 9152)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1777, line: 35, flags: DIFlagFwdDecl)
!1777 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1237, file: !1238, line: 969, baseType: !1779, size: 64, offset: 9216)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1781, line: 82, size: 7296, elements: !1782)
!1781 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1782 = !{!1783, !1784, !1785, !1786, !1787, !1788, !1789, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1818, !1827, !1828, !1830, !1831, !1832, !1835, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1865, !1866, !1873, !1874, !1875, !1876, !1877, !1878}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1780, file: !1781, line: 83, baseType: !1250, size: 32)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1780, file: !1781, line: 84, baseType: !767, size: 32, offset: 32)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1780, file: !1781, line: 85, baseType: !278, size: 32, offset: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1780, file: !1781, line: 86, baseType: !239, size: 128, offset: 128)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1780, file: !1781, line: 88, baseType: !1506, size: 128, offset: 256)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1780, file: !1781, line: 91, baseType: !1236, size: 64, offset: 384)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1780, file: !1781, line: 94, baseType: !1790, size: 192, offset: 448)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1791, line: 30, size: 192, elements: !1792)
!1791 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1792 = !{!1793, !1794}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1790, file: !1791, line: 31, baseType: !239, size: 128)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1790, file: !1791, line: 32, baseType: !1795, size: 64, offset: 128)
!1795 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1796, line: 25, baseType: !1797)
!1796 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1796, line: 23, size: 64, elements: !1798)
!1798 = !{!1799}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1797, file: !1796, line: 24, baseType: !1390, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1780, file: !1781, line: 97, baseType: !655, size: 64, offset: 640)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1780, file: !1781, line: 100, baseType: !278, size: 32, offset: 704)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1780, file: !1781, line: 106, baseType: !278, size: 32, offset: 736)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1780, file: !1781, line: 107, baseType: !1236, size: 64, offset: 768)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1780, file: !1781, line: 110, baseType: !278, size: 32, offset: 832)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1780, file: !1781, line: 111, baseType: !7, size: 32, offset: 864)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1780, file: !1781, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1780, file: !1781, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1780, file: !1781, line: 128, baseType: !278, size: 32, offset: 928)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1780, file: !1781, line: 129, baseType: !239, size: 128, offset: 960)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1780, file: !1781, line: 132, baseType: !1312, size: 512, offset: 1088)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1780, file: !1781, line: 133, baseType: !1320, size: 64, offset: 1600)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1780, file: !1781, line: 140, baseType: !1813, size: 256, offset: 1664)
!1813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1814, size: 256, elements: !1594)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1781, line: 38, size: 128, elements: !1815)
!1815 = !{!1816, !1817}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1814, file: !1781, line: 39, baseType: !441, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1814, file: !1781, line: 40, baseType: !441, size: 64, offset: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1780, file: !1781, line: 146, baseType: !1819, size: 192, offset: 1920)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1781, line: 66, size: 192, elements: !1820)
!1820 = !{!1821}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1819, file: !1781, line: 67, baseType: !1822, size: 192)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1781, line: 47, size: 192, elements: !1823)
!1823 = !{!1824, !1825, !1826}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1822, file: !1781, line: 48, baseType: !793, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1822, file: !1781, line: 49, baseType: !793, size: 64, offset: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1822, file: !1781, line: 50, baseType: !793, size: 64, offset: 128)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1780, file: !1781, line: 150, baseType: !1555, size: 640, offset: 2112)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1780, file: !1781, line: 153, baseType: !1829, size: 256, offset: 2752)
!1829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1496, size: 256, elements: !1175)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1780, file: !1781, line: 159, baseType: !1496, size: 64, offset: 3008)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1780, file: !1781, line: 162, baseType: !278, size: 32, offset: 3072)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1780, file: !1781, line: 164, baseType: !1833, size: 64, offset: 3136)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1781, line: 164, flags: DIFlagFwdDecl)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1780, file: !1781, line: 175, baseType: !1836, size: 32, offset: 3200)
!1836 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !408, line: 805, baseType: !1837)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !408, line: 798, size: 32, elements: !1838)
!1838 = !{!1839, !1840}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1837, file: !408, line: 803, baseType: !407, size: 32)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1837, file: !408, line: 804, baseType: !252, offset: 32)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1780, file: !1781, line: 176, baseType: !441, size: 64, offset: 3264)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1780, file: !1781, line: 176, baseType: !441, size: 64, offset: 3328)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1780, file: !1781, line: 176, baseType: !441, size: 64, offset: 3392)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1780, file: !1781, line: 176, baseType: !441, size: 64, offset: 3456)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1780, file: !1781, line: 177, baseType: !441, size: 64, offset: 3520)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1780, file: !1781, line: 178, baseType: !441, size: 64, offset: 3584)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1780, file: !1781, line: 179, baseType: !1543, size: 128, offset: 3648)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1780, file: !1781, line: 180, baseType: !344, size: 64, offset: 3776)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1780, file: !1781, line: 180, baseType: !344, size: 64, offset: 3840)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1780, file: !1781, line: 180, baseType: !344, size: 64, offset: 3904)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1780, file: !1781, line: 180, baseType: !344, size: 64, offset: 3968)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1780, file: !1781, line: 181, baseType: !344, size: 64, offset: 4032)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1780, file: !1781, line: 181, baseType: !344, size: 64, offset: 4096)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1780, file: !1781, line: 181, baseType: !344, size: 64, offset: 4160)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1780, file: !1781, line: 181, baseType: !344, size: 64, offset: 4224)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1780, file: !1781, line: 182, baseType: !344, size: 64, offset: 4288)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1780, file: !1781, line: 182, baseType: !344, size: 64, offset: 4352)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1780, file: !1781, line: 182, baseType: !344, size: 64, offset: 4416)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1780, file: !1781, line: 182, baseType: !344, size: 64, offset: 4480)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1780, file: !1781, line: 183, baseType: !344, size: 64, offset: 4544)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1780, file: !1781, line: 183, baseType: !344, size: 64, offset: 4608)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1780, file: !1781, line: 184, baseType: !1863, offset: 4672)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1864, line: 12, elements: !266)
!1864 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1780, file: !1781, line: 192, baseType: !443, size: 64, offset: 4672)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1780, file: !1781, line: 203, baseType: !1867, size: 2048, offset: 4736)
!1867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1868, size: 2048, elements: !1760)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1869, line: 43, size: 128, elements: !1870)
!1869 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1870 = !{!1871, !1872}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1868, file: !1869, line: 44, baseType: !343, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1868, file: !1869, line: 45, baseType: !343, size: 64, offset: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1780, file: !1781, line: 220, baseType: !510, size: 8, offset: 6784)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1780, file: !1781, line: 221, baseType: !1225, size: 16, offset: 6800)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1780, file: !1781, line: 222, baseType: !1225, size: 16, offset: 6816)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1780, file: !1781, line: 224, baseType: !994, size: 64, offset: 6848)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1780, file: !1781, line: 227, baseType: !1193, size: 192, offset: 6912)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1780, file: !1781, line: 233, baseType: !1193, size: 192, offset: 7104)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1237, file: !1238, line: 970, baseType: !1880, size: 64, offset: 9280)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1781, line: 20, size: 16576, elements: !1882)
!1882 = !{!1883, !1884, !1885, !1886}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1881, file: !1781, line: 21, baseType: !252)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1881, file: !1781, line: 22, baseType: !1250, size: 32)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1881, file: !1781, line: 23, baseType: !1506, size: 128, offset: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1881, file: !1781, line: 24, baseType: !1887, size: 16384, offset: 192)
!1887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1888, size: 16384, elements: !299)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1791, line: 49, size: 256, elements: !1889)
!1889 = !{!1890}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1888, file: !1791, line: 50, baseType: !1891, size: 256)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1791, line: 35, size: 256, elements: !1892)
!1892 = !{!1893, !1900, !1901, !1907}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1891, file: !1791, line: 37, baseType: !1894, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1895, line: 19, baseType: !1896)
!1895 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1895, line: 18, baseType: !1898)
!1898 = !DISubroutineType(types: !1899)
!1899 = !{null, !278}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1891, file: !1791, line: 38, baseType: !344, size: 64, offset: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1891, file: !1791, line: 44, baseType: !1902, size: 64, offset: 128)
!1902 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1895, line: 22, baseType: !1903)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1895, line: 21, baseType: !1905)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{null}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1891, file: !1791, line: 46, baseType: !1795, size: 64, offset: 192)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1237, file: !1238, line: 971, baseType: !1795, size: 64, offset: 9344)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1237, file: !1238, line: 972, baseType: !1795, size: 64, offset: 9408)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1237, file: !1238, line: 974, baseType: !1795, size: 64, offset: 9472)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1237, file: !1238, line: 975, baseType: !1790, size: 192, offset: 9536)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1237, file: !1238, line: 976, baseType: !344, size: 64, offset: 9728)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1237, file: !1238, line: 977, baseType: !341, size: 64, offset: 9792)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1237, file: !1238, line: 978, baseType: !7, size: 32, offset: 9856)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1237, file: !1238, line: 980, baseType: !388, size: 64, offset: 9920)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1237, file: !1238, line: 989, baseType: !1917, size: 128, offset: 9984)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1918, line: 35, size: 128, elements: !1919)
!1918 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1919 = !{!1920, !1921, !1922}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1917, file: !1918, line: 36, baseType: !278, size: 32)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1917, file: !1918, line: 37, baseType: !767, size: 32, offset: 32)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1917, file: !1918, line: 38, baseType: !1923, size: 64, offset: 64)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1918, line: 23, flags: DIFlagFwdDecl)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1237, file: !1238, line: 992, baseType: !441, size: 64, offset: 10112)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1237, file: !1238, line: 993, baseType: !441, size: 64, offset: 10176)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1237, file: !1238, line: 996, baseType: !252, offset: 10240)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1237, file: !1238, line: 999, baseType: !800, offset: 10240)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1237, file: !1238, line: 1001, baseType: !1930, size: 64, offset: 10240)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1238, line: 636, size: 64, elements: !1931)
!1931 = !{!1932}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1930, file: !1238, line: 637, baseType: !1933, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1237, file: !1238, line: 1005, baseType: !772, size: 128, offset: 10304)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1237, file: !1238, line: 1007, baseType: !1236, size: 64, offset: 10432)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1237, file: !1238, line: 1009, baseType: !1937, size: 64, offset: 10496)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1238, line: 1009, flags: DIFlagFwdDecl)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1237, file: !1238, line: 1043, baseType: !218, size: 64, offset: 10560)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1237, file: !1238, line: 1046, baseType: !1941, size: 64, offset: 10624)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1238, line: 41, flags: DIFlagFwdDecl)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1237, file: !1238, line: 1050, baseType: !1944, size: 64, offset: 10688)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1238, line: 42, flags: DIFlagFwdDecl)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1237, file: !1238, line: 1054, baseType: !1947, size: 64, offset: 10752)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1238, line: 55, flags: DIFlagFwdDecl)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1237, file: !1238, line: 1056, baseType: !1950, size: 64, offset: 10816)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1238, line: 40, flags: DIFlagFwdDecl)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1237, file: !1238, line: 1058, baseType: !1953, size: 64, offset: 10880)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1955, line: 99, size: 704, elements: !1956)
!1955 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1956 = !{!1957, !1958, !1959, !1960, !1961, !1962, !1963, !1982, !1983}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1954, file: !1955, line: 100, baseType: !791, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1954, file: !1955, line: 101, baseType: !767, size: 32, offset: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1954, file: !1955, line: 102, baseType: !767, size: 32, offset: 96)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1954, file: !1955, line: 105, baseType: !252, offset: 128)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1954, file: !1955, line: 107, baseType: !336, size: 16, offset: 128)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1954, file: !1955, line: 109, baseType: !759, size: 128, offset: 192)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1954, file: !1955, line: 110, baseType: !1964, size: 64, offset: 320)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1955, line: 73, size: 448, elements: !1966)
!1966 = !{!1967, !1970, !1971, !1976, !1981}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1965, file: !1955, line: 74, baseType: !1968, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1955, line: 74, flags: DIFlagFwdDecl)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1965, file: !1955, line: 75, baseType: !1953, size: 64, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, scope: !1965, file: !1955, line: 83, baseType: !1972, size: 128, offset: 128)
!1972 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1965, file: !1955, line: 83, size: 128, elements: !1973)
!1973 = !{!1974, !1975}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1972, file: !1955, line: 84, baseType: !239, size: 128)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1972, file: !1955, line: 85, baseType: !955, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, scope: !1965, file: !1955, line: 87, baseType: !1977, size: 128, offset: 256)
!1977 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1965, file: !1955, line: 87, size: 128, elements: !1978)
!1978 = !{!1979, !1980}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1977, file: !1955, line: 88, baseType: !659, size: 128)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1977, file: !1955, line: 89, baseType: !385, size: 128, align: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1965, file: !1955, line: 92, baseType: !7, size: 32, offset: 384)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1954, file: !1955, line: 111, baseType: !655, size: 64, offset: 384)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1954, file: !1955, line: 113, baseType: !1984, size: 256, offset: 448)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1985, line: 102, size: 256, elements: !1986)
!1985 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1986 = !{!1987, !1988, !1989}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1984, file: !1985, line: 103, baseType: !791, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1984, file: !1985, line: 104, baseType: !239, size: 128, offset: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1984, file: !1985, line: 105, baseType: !1990, size: 64, offset: 192)
!1990 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1985, line: 21, baseType: !1991)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{null, !1994}
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1237, file: !1238, line: 1061, baseType: !1996, size: 64, offset: 10944)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1238, line: 43, flags: DIFlagFwdDecl)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1237, file: !1238, line: 1064, baseType: !344, size: 64, offset: 11008)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1237, file: !1238, line: 1065, baseType: !2000, size: 64, offset: 11072)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1791, line: 14, baseType: !2002)
!2002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1791, line: 12, size: 384, elements: !2003)
!2003 = !{!2004}
!2004 = !DIDerivedType(tag: DW_TAG_member, scope: !2002, file: !1791, line: 13, baseType: !2005, size: 384)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2002, file: !1791, line: 13, size: 384, elements: !2006)
!2006 = !{!2007, !2008, !2009, !2010}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2005, file: !1791, line: 13, baseType: !278, size: 32)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2005, file: !1791, line: 13, baseType: !278, size: 32, offset: 32)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2005, file: !1791, line: 13, baseType: !278, size: 32, offset: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2005, file: !1791, line: 13, baseType: !2011, size: 256, offset: 128)
!2011 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2012, line: 32, size: 256, elements: !2013)
!2012 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2013 = !{!2014, !2019, !2032, !2038, !2047, !2067, !2072}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2011, file: !2012, line: 37, baseType: !2015, size: 64)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2011, file: !2012, line: 34, size: 64, elements: !2016)
!2016 = !{!2017, !2018}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2015, file: !2012, line: 35, baseType: !1485, size: 32)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2015, file: !2012, line: 36, baseType: !461, size: 32, offset: 32)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2011, file: !2012, line: 45, baseType: !2020, size: 192)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2011, file: !2012, line: 40, size: 192, elements: !2021)
!2021 = !{!2022, !2024, !2025, !2031}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2020, file: !2012, line: 41, baseType: !2023, size: 32)
!2023 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !327, line: 95, baseType: !278)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2020, file: !2012, line: 42, baseType: !278, size: 32, offset: 32)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2020, file: !2012, line: 43, baseType: !2026, size: 64, offset: 64)
!2026 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2012, line: 11, baseType: !2027)
!2027 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2012, line: 8, size: 64, elements: !2028)
!2028 = !{!2029, !2030}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2027, file: !2012, line: 9, baseType: !278, size: 32)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2027, file: !2012, line: 10, baseType: !218, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2020, file: !2012, line: 44, baseType: !278, size: 32, offset: 128)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2011, file: !2012, line: 52, baseType: !2033, size: 128)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2011, file: !2012, line: 48, size: 128, elements: !2034)
!2034 = !{!2035, !2036, !2037}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2033, file: !2012, line: 49, baseType: !1485, size: 32)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2033, file: !2012, line: 50, baseType: !461, size: 32, offset: 32)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2033, file: !2012, line: 51, baseType: !2026, size: 64, offset: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2011, file: !2012, line: 61, baseType: !2039, size: 256)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2011, file: !2012, line: 55, size: 256, elements: !2040)
!2040 = !{!2041, !2042, !2043, !2044, !2046}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2039, file: !2012, line: 56, baseType: !1485, size: 32)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2039, file: !2012, line: 57, baseType: !461, size: 32, offset: 32)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2039, file: !2012, line: 58, baseType: !278, size: 32, offset: 64)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2039, file: !2012, line: 59, baseType: !2045, size: 64, offset: 128)
!2045 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !327, line: 94, baseType: !328)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2039, file: !2012, line: 60, baseType: !2045, size: 64, offset: 192)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2011, file: !2012, line: 95, baseType: !2048, size: 256)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2011, file: !2012, line: 64, size: 256, elements: !2049)
!2049 = !{!2050, !2051}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2048, file: !2012, line: 65, baseType: !218, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, scope: !2048, file: !2012, line: 77, baseType: !2052, size: 192, offset: 64)
!2052 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2048, file: !2012, line: 77, size: 192, elements: !2053)
!2053 = !{!2054, !2055, !2062}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2052, file: !2012, line: 82, baseType: !1225, size: 16)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2052, file: !2012, line: 88, baseType: !2056, size: 192)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2052, file: !2012, line: 84, size: 192, elements: !2057)
!2057 = !{!2058, !2060, !2061}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2056, file: !2012, line: 85, baseType: !2059, size: 64)
!2059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 64, elements: !1350)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2056, file: !2012, line: 86, baseType: !218, size: 64, offset: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2056, file: !2012, line: 87, baseType: !218, size: 64, offset: 128)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2052, file: !2012, line: 93, baseType: !2063, size: 96)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2052, file: !2012, line: 90, size: 96, elements: !2064)
!2064 = !{!2065, !2066}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2063, file: !2012, line: 91, baseType: !2059, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2063, file: !2012, line: 92, baseType: !437, size: 32, offset: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2011, file: !2012, line: 101, baseType: !2068, size: 128)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2011, file: !2012, line: 98, size: 128, elements: !2069)
!2069 = !{!2070, !2071}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2068, file: !2012, line: 99, baseType: !329, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2068, file: !2012, line: 100, baseType: !278, size: 32, offset: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2011, file: !2012, line: 108, baseType: !2073, size: 128)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2011, file: !2012, line: 104, size: 128, elements: !2074)
!2074 = !{!2075, !2076, !2077}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2073, file: !2012, line: 105, baseType: !218, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2073, file: !2012, line: 106, baseType: !278, size: 32, offset: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2073, file: !2012, line: 107, baseType: !7, size: 32, offset: 96)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1237, file: !1238, line: 1067, baseType: !1863, offset: 11136)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1237, file: !1238, line: 1099, baseType: !2080, size: 64, offset: 11136)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1238, line: 56, flags: DIFlagFwdDecl)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1237, file: !1238, line: 1103, baseType: !239, size: 128, offset: 11200)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1237, file: !1238, line: 1104, baseType: !2084, size: 64, offset: 11328)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1238, line: 46, flags: DIFlagFwdDecl)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1237, file: !1238, line: 1105, baseType: !1193, size: 192, offset: 11392)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1237, file: !1238, line: 1106, baseType: !7, size: 32, offset: 11584)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1237, file: !1238, line: 1109, baseType: !2089, size: 128, offset: 11648)
!2089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2090, size: 128, elements: !1594)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1238, line: 51, flags: DIFlagFwdDecl)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1237, file: !1238, line: 1110, baseType: !1193, size: 192, offset: 11776)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1237, file: !1238, line: 1111, baseType: !239, size: 128, offset: 11968)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1237, file: !1238, line: 1173, baseType: !2095, size: 64, offset: 12096)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2097, line: 62, size: 256, align: 256, elements: !2098)
!2097 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2098 = !{!2099, !2100, !2101, !2106}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2096, file: !2097, line: 75, baseType: !437, size: 32)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2096, file: !2097, line: 90, baseType: !437, size: 32, offset: 32)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2096, file: !2097, line: 124, baseType: !2102, size: 64, offset: 64)
!2102 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2096, file: !2097, line: 109, size: 64, elements: !2103)
!2103 = !{!2104, !2105}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2102, file: !2097, line: 110, baseType: !442, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2102, file: !2097, line: 112, baseType: !442, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2096, file: !2097, line: 144, baseType: !437, size: 32, offset: 128)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1237, file: !1238, line: 1174, baseType: !435, size: 32, offset: 12160)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1237, file: !1238, line: 1179, baseType: !344, size: 64, offset: 12224)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1237, file: !1238, line: 1182, baseType: !2110, size: 128, offset: 12288)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1171, line: 76, size: 128, elements: !2111)
!2111 = !{!2112, !2117, !2118}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2110, file: !1171, line: 85, baseType: !2113, size: 64)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2114, line: 7, size: 64, elements: !2115)
!2114 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2115 = !{!2116}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2113, file: !2114, line: 12, baseType: !1387, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2110, file: !1171, line: 88, baseType: !510, size: 8, offset: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2110, file: !1171, line: 95, baseType: !510, size: 8, offset: 72)
!2119 = !DIDerivedType(tag: DW_TAG_member, scope: !1237, file: !1238, line: 1184, baseType: !2120, size: 128, offset: 12416)
!2120 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1237, file: !1238, line: 1184, size: 128, elements: !2121)
!2121 = !{!2122, !2123}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2120, file: !1238, line: 1185, baseType: !1250, size: 32)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2120, file: !1238, line: 1186, baseType: !385, size: 128, align: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1237, file: !1238, line: 1190, baseType: !2125, size: 64, offset: 12544)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1238, line: 53, flags: DIFlagFwdDecl)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1237, file: !1238, line: 1192, baseType: !2128, size: 128, offset: 12608)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1171, line: 64, size: 128, elements: !2129)
!2129 = !{!2130, !2131, !2132}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2128, file: !1171, line: 65, baseType: !741, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2128, file: !1171, line: 67, baseType: !437, size: 32, offset: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2128, file: !1171, line: 68, baseType: !437, size: 32, offset: 96)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1237, file: !1238, line: 1206, baseType: !278, size: 32, offset: 12736)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1237, file: !1238, line: 1207, baseType: !278, size: 32, offset: 12768)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1237, file: !1238, line: 1209, baseType: !344, size: 64, offset: 12800)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1237, file: !1238, line: 1219, baseType: !441, size: 64, offset: 12864)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1237, file: !1238, line: 1220, baseType: !441, size: 64, offset: 12928)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1237, file: !1238, line: 1317, baseType: !278, size: 32, offset: 12992)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1237, file: !1238, line: 1319, baseType: !1236, size: 64, offset: 13056)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1237, file: !1238, line: 1322, baseType: !2141, size: 64, offset: 13120)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2143, line: 56, size: 512, elements: !2144)
!2143 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2144 = !{!2145, !2146, !2147, !2148, !2149, !2150, !2151, !2153}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2142, file: !2143, line: 57, baseType: !2141, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2142, file: !2143, line: 58, baseType: !218, size: 64, offset: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2142, file: !2143, line: 59, baseType: !344, size: 64, offset: 128)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2142, file: !2143, line: 60, baseType: !344, size: 64, offset: 192)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2142, file: !2143, line: 61, baseType: !840, size: 64, offset: 256)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2142, file: !2143, line: 62, baseType: !7, size: 32, offset: 320)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2142, file: !2143, line: 63, baseType: !2152, size: 64, offset: 384)
!2152 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !217, line: 153, baseType: !441)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2142, file: !2143, line: 64, baseType: !2154, size: 64, offset: 448)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1237, file: !1238, line: 1326, baseType: !1250, size: 32, offset: 13184)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1237, file: !1238, line: 1342, baseType: !218, size: 64, offset: 13248)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1237, file: !1238, line: 1343, baseType: !442, size: 64, offset: 13312)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1237, file: !1238, line: 1344, baseType: !441, size: 64, offset: 13376)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1237, file: !1238, line: 1345, baseType: !442, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1237, file: !1238, line: 1346, baseType: !442, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1237, file: !1238, line: 1347, baseType: !442, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1237, file: !1238, line: 1348, baseType: !385, size: 128, align: 64, offset: 13504)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1237, file: !1238, line: 1358, baseType: !2165, size: 34816, offset: 13824)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2166, line: 485, size: 34816, elements: !2167)
!2166 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2167 = !{!2168, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2197, !2198, !2199, !2200, !2201, !2202, !2205, !2206, !2207}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2165, file: !2166, line: 487, baseType: !2169, size: 192)
!2169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2170, size: 192, elements: !295)
!2170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2171, line: 16, size: 64, elements: !2172)
!2171 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2172 = !{!2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2170, file: !2171, line: 17, baseType: !879, size: 16)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2170, file: !2171, line: 18, baseType: !879, size: 16, offset: 16)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2170, file: !2171, line: 19, baseType: !879, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2170, file: !2171, line: 19, baseType: !879, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2170, file: !2171, line: 19, baseType: !879, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2170, file: !2171, line: 19, baseType: !879, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2170, file: !2171, line: 19, baseType: !879, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2170, file: !2171, line: 20, baseType: !879, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2170, file: !2171, line: 20, baseType: !879, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2170, file: !2171, line: 20, baseType: !879, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2170, file: !2171, line: 20, baseType: !879, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2170, file: !2171, line: 20, baseType: !879, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2170, file: !2171, line: 20, baseType: !879, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2165, file: !2166, line: 491, baseType: !344, size: 64, offset: 192)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2165, file: !2166, line: 495, baseType: !336, size: 16, offset: 256)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2165, file: !2166, line: 496, baseType: !336, size: 16, offset: 272)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2165, file: !2166, line: 497, baseType: !336, size: 16, offset: 288)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2165, file: !2166, line: 498, baseType: !336, size: 16, offset: 304)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2165, file: !2166, line: 502, baseType: !344, size: 64, offset: 320)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2165, file: !2166, line: 503, baseType: !344, size: 64, offset: 384)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2165, file: !2166, line: 514, baseType: !2194, size: 256, offset: 448)
!2194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2195, size: 256, elements: !1175)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2166, line: 483, flags: DIFlagFwdDecl)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2165, file: !2166, line: 516, baseType: !344, size: 64, offset: 704)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2165, file: !2166, line: 518, baseType: !344, size: 64, offset: 768)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2165, file: !2166, line: 520, baseType: !344, size: 64, offset: 832)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2165, file: !2166, line: 521, baseType: !344, size: 64, offset: 896)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2165, file: !2166, line: 522, baseType: !344, size: 64, offset: 960)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2165, file: !2166, line: 528, baseType: !2203, size: 64, offset: 1024)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2166, line: 10, flags: DIFlagFwdDecl)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2165, file: !2166, line: 535, baseType: !344, size: 64, offset: 1088)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2165, file: !2166, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2165, file: !2166, line: 540, baseType: !2208, size: 33280, offset: 1536)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2209, line: 317, size: 33280, elements: !2210)
!2209 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2210 = !{!2211, !2212, !2213}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2208, file: !2209, line: 330, baseType: !7, size: 32)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2208, file: !2209, line: 337, baseType: !344, size: 64, offset: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2208, file: !2209, line: 348, baseType: !2214, size: 32768, offset: 512)
!2214 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2209, line: 304, size: 32768, elements: !2215)
!2215 = !{!2216, !2231, !2270, !2320, !2333}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2214, file: !2209, line: 305, baseType: !2217, size: 896)
!2217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2209, line: 12, size: 896, elements: !2218)
!2218 = !{!2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2230}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2217, file: !2209, line: 13, baseType: !435, size: 32)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2217, file: !2209, line: 14, baseType: !435, size: 32, offset: 32)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2217, file: !2209, line: 15, baseType: !435, size: 32, offset: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2217, file: !2209, line: 16, baseType: !435, size: 32, offset: 96)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2217, file: !2209, line: 17, baseType: !435, size: 32, offset: 128)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2217, file: !2209, line: 18, baseType: !435, size: 32, offset: 160)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2217, file: !2209, line: 19, baseType: !435, size: 32, offset: 192)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2217, file: !2209, line: 22, baseType: !2227, size: 640, offset: 224)
!2227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 640, elements: !2228)
!2228 = !{!2229}
!2229 = !DISubrange(count: 20)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2217, file: !2209, line: 25, baseType: !435, size: 32, offset: 864)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2214, file: !2209, line: 306, baseType: !2232, size: 4096, align: 128)
!2232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2209, line: 34, size: 4096, align: 128, elements: !2233)
!2233 = !{!2234, !2235, !2236, !2237, !2238, !2253, !2254, !2255, !2259, !2261, !2265}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2232, file: !2209, line: 35, baseType: !879, size: 16)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2232, file: !2209, line: 36, baseType: !879, size: 16, offset: 16)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2232, file: !2209, line: 37, baseType: !879, size: 16, offset: 32)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2232, file: !2209, line: 38, baseType: !879, size: 16, offset: 48)
!2238 = !DIDerivedType(tag: DW_TAG_member, scope: !2232, file: !2209, line: 39, baseType: !2239, size: 128, offset: 64)
!2239 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2232, file: !2209, line: 39, size: 128, elements: !2240)
!2240 = !{!2241, !2246}
!2241 = !DIDerivedType(tag: DW_TAG_member, scope: !2239, file: !2209, line: 40, baseType: !2242, size: 128)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2239, file: !2209, line: 40, size: 128, elements: !2243)
!2243 = !{!2244, !2245}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2242, file: !2209, line: 41, baseType: !441, size: 64)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2242, file: !2209, line: 42, baseType: !441, size: 64, offset: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, scope: !2239, file: !2209, line: 44, baseType: !2247, size: 128)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2239, file: !2209, line: 44, size: 128, elements: !2248)
!2248 = !{!2249, !2250, !2251, !2252}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2247, file: !2209, line: 45, baseType: !435, size: 32)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2247, file: !2209, line: 46, baseType: !435, size: 32, offset: 32)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2247, file: !2209, line: 47, baseType: !435, size: 32, offset: 64)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2247, file: !2209, line: 48, baseType: !435, size: 32, offset: 96)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2232, file: !2209, line: 51, baseType: !435, size: 32, offset: 192)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2232, file: !2209, line: 52, baseType: !435, size: 32, offset: 224)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2232, file: !2209, line: 55, baseType: !2256, size: 1024, offset: 256)
!2256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 1024, elements: !2257)
!2257 = !{!2258}
!2258 = !DISubrange(count: 32)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2232, file: !2209, line: 58, baseType: !2260, size: 2048, offset: 1280)
!2260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 2048, elements: !299)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2232, file: !2209, line: 60, baseType: !2262, size: 384, offset: 3328)
!2262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 384, elements: !2263)
!2263 = !{!2264}
!2264 = !DISubrange(count: 12)
!2265 = !DIDerivedType(tag: DW_TAG_member, scope: !2232, file: !2209, line: 62, baseType: !2266, size: 384, offset: 3712)
!2266 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2232, file: !2209, line: 62, size: 384, elements: !2267)
!2267 = !{!2268, !2269}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2266, file: !2209, line: 63, baseType: !2262, size: 384)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2266, file: !2209, line: 64, baseType: !2262, size: 384)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2214, file: !2209, line: 307, baseType: !2271, size: 1088)
!2271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2209, line: 79, size: 1088, elements: !2272)
!2272 = !{!2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2319}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2271, file: !2209, line: 80, baseType: !435, size: 32)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2271, file: !2209, line: 81, baseType: !435, size: 32, offset: 32)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2271, file: !2209, line: 82, baseType: !435, size: 32, offset: 64)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2271, file: !2209, line: 83, baseType: !435, size: 32, offset: 96)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2271, file: !2209, line: 84, baseType: !435, size: 32, offset: 128)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2271, file: !2209, line: 85, baseType: !435, size: 32, offset: 160)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2271, file: !2209, line: 86, baseType: !435, size: 32, offset: 192)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2271, file: !2209, line: 88, baseType: !2227, size: 640, offset: 224)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2271, file: !2209, line: 89, baseType: !1372, size: 8, offset: 864)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2271, file: !2209, line: 90, baseType: !1372, size: 8, offset: 872)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2271, file: !2209, line: 91, baseType: !1372, size: 8, offset: 880)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2271, file: !2209, line: 92, baseType: !1372, size: 8, offset: 888)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2271, file: !2209, line: 93, baseType: !1372, size: 8, offset: 896)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2271, file: !2209, line: 94, baseType: !1372, size: 8, offset: 904)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2271, file: !2209, line: 95, baseType: !2288, size: 64, offset: 960)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2290, line: 11, size: 128, elements: !2291)
!2290 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2291 = !{!2292, !2293}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2289, file: !2290, line: 12, baseType: !329, size: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2289, file: !2290, line: 13, baseType: !2294, size: 64, offset: 64)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2296, line: 56, size: 1344, elements: !2297)
!2296 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2297 = !{!2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2295, file: !2296, line: 61, baseType: !344, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2295, file: !2296, line: 62, baseType: !344, size: 64, offset: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2295, file: !2296, line: 63, baseType: !344, size: 64, offset: 128)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2295, file: !2296, line: 64, baseType: !344, size: 64, offset: 192)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2295, file: !2296, line: 65, baseType: !344, size: 64, offset: 256)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2295, file: !2296, line: 66, baseType: !344, size: 64, offset: 320)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2295, file: !2296, line: 68, baseType: !344, size: 64, offset: 384)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2295, file: !2296, line: 69, baseType: !344, size: 64, offset: 448)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2295, file: !2296, line: 70, baseType: !344, size: 64, offset: 512)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2295, file: !2296, line: 71, baseType: !344, size: 64, offset: 576)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2295, file: !2296, line: 72, baseType: !344, size: 64, offset: 640)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2295, file: !2296, line: 73, baseType: !344, size: 64, offset: 704)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2295, file: !2296, line: 74, baseType: !344, size: 64, offset: 768)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2295, file: !2296, line: 75, baseType: !344, size: 64, offset: 832)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2295, file: !2296, line: 76, baseType: !344, size: 64, offset: 896)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2295, file: !2296, line: 81, baseType: !344, size: 64, offset: 960)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2295, file: !2296, line: 83, baseType: !344, size: 64, offset: 1024)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2295, file: !2296, line: 84, baseType: !344, size: 64, offset: 1088)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2295, file: !2296, line: 85, baseType: !344, size: 64, offset: 1152)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2295, file: !2296, line: 86, baseType: !344, size: 64, offset: 1216)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2295, file: !2296, line: 87, baseType: !344, size: 64, offset: 1280)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2271, file: !2209, line: 96, baseType: !435, size: 32, offset: 1024)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2214, file: !2209, line: 308, baseType: !2321, size: 4608, align: 512)
!2321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2209, line: 289, size: 4608, align: 512, elements: !2322)
!2322 = !{!2323, !2324, !2331}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2321, file: !2209, line: 290, baseType: !2232, size: 4096, align: 128)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2321, file: !2209, line: 291, baseType: !2325, size: 512, offset: 4096)
!2325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2209, line: 268, size: 512, elements: !2326)
!2326 = !{!2327, !2328, !2329}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2325, file: !2209, line: 269, baseType: !441, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2325, file: !2209, line: 270, baseType: !441, size: 64, offset: 64)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2325, file: !2209, line: 271, baseType: !2330, size: 384, offset: 128)
!2330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 384, elements: !1650)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2321, file: !2209, line: 292, baseType: !2332, offset: 4608)
!2332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1372, elements: !1748)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2214, file: !2209, line: 309, baseType: !2334, size: 32768)
!2334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1372, size: 32768, elements: !2335)
!2335 = !{!2336}
!2336 = !DISubrange(count: 4096)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1233, file: !743, line: 378, baseType: !2338, size: 64, offset: 64)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1229, file: !743, line: 384, baseType: !1527, size: 192, offset: 192)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !998, file: !743, line: 500, baseType: !252, offset: 6656)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !998, file: !743, line: 501, baseType: !2342, size: 64, offset: 6656)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !743, line: 387, flags: DIFlagFwdDecl)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !998, file: !743, line: 516, baseType: !1738, size: 64, offset: 6720)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !998, file: !743, line: 519, baseType: !372, size: 64, offset: 6784)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !998, file: !743, line: 521, baseType: !2347, size: 64, offset: 6848)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !743, line: 521, flags: DIFlagFwdDecl)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !998, file: !743, line: 545, baseType: !767, size: 32, offset: 6912)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !998, file: !743, line: 548, baseType: !510, size: 8, offset: 6944)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !998, file: !743, line: 550, baseType: !2352, offset: 6952)
!2352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2353, line: 142, elements: !266)
!2353 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !998, file: !743, line: 554, baseType: !1984, size: 256, offset: 6976)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !998, file: !743, line: 557, baseType: !435, size: 32, offset: 7232)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !995, file: !743, line: 565, baseType: !2357, offset: 7296)
!2357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, elements: !2358)
!2358 = !{!2359}
!2359 = !DISubrange(count: -1)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !991, file: !743, line: 151, baseType: !767, size: 32)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !984, file: !743, line: 156, baseType: !252, offset: 256)
!2362 = !DIDerivedType(tag: DW_TAG_member, scope: !747, file: !743, line: 159, baseType: !2363, size: 128)
!2363 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !747, file: !743, line: 159, size: 128, elements: !2364)
!2364 = !{!2365, !2429}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2363, file: !743, line: 161, baseType: !2366, size: 64)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2368)
!2368 = !{!2369, !2379, !2400, !2401, !2402, !2403, !2404, !2416, !2417, !2418}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2367, file: !31, line: 111, baseType: !2370, size: 384)
!2370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2371)
!2371 = !{!2372, !2374, !2375, !2376, !2377, !2378}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2370, file: !31, line: 20, baseType: !2373, size: 64)
!2373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !344)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2370, file: !31, line: 21, baseType: !2373, size: 64, offset: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2370, file: !31, line: 22, baseType: !2373, size: 64, offset: 128)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2370, file: !31, line: 23, baseType: !344, size: 64, offset: 192)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2370, file: !31, line: 24, baseType: !344, size: 64, offset: 256)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2370, file: !31, line: 25, baseType: !344, size: 64, offset: 320)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2367, file: !31, line: 112, baseType: !2380, size: 64, offset: 384)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2382, line: 105, size: 128, elements: !2383)
!2382 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2383 = !{!2384, !2385}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2381, file: !2382, line: 110, baseType: !344, size: 64)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2381, file: !2382, line: 118, baseType: !2386, size: 64, offset: 64)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2382, line: 95, size: 448, elements: !2388)
!2388 = !{!2389, !2390, !2395, !2396, !2397, !2398, !2399}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2387, file: !2382, line: 96, baseType: !791, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2387, file: !2382, line: 97, baseType: !2391, size: 64, offset: 64)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2382, line: 60, baseType: !2393)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{null, !2380}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2387, file: !2382, line: 98, baseType: !2391, size: 64, offset: 128)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2387, file: !2382, line: 99, baseType: !510, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2387, file: !2382, line: 100, baseType: !510, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2387, file: !2382, line: 101, baseType: !385, size: 128, align: 64, offset: 256)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2387, file: !2382, line: 102, baseType: !2380, size: 64, offset: 384)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2367, file: !31, line: 113, baseType: !2381, size: 128, offset: 448)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2367, file: !31, line: 114, baseType: !1527, size: 192, offset: 576)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2367, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2367, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2367, file: !31, line: 117, baseType: !2405, size: 64, offset: 832)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2407)
!2407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2408)
!2408 = !{!2409, !2410, !2414, !2415}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2407, file: !31, line: 73, baseType: !860, size: 64)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2407, file: !31, line: 78, baseType: !2411, size: 64, offset: 64)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{null, !2366}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2407, file: !31, line: 83, baseType: !2411, size: 64, offset: 128)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2407, file: !31, line: 89, baseType: !1047, size: 64, offset: 192)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2367, file: !31, line: 118, baseType: !218, size: 64, offset: 896)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2367, file: !31, line: 119, baseType: !278, size: 32, offset: 960)
!2418 = !DIDerivedType(tag: DW_TAG_member, scope: !2367, file: !31, line: 120, baseType: !2419, size: 128, offset: 1024)
!2419 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2367, file: !31, line: 120, size: 128, elements: !2420)
!2420 = !{!2421, !2427}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2419, file: !31, line: 121, baseType: !2422, size: 128)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2423, line: 6, size: 128, elements: !2424)
!2423 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2424 = !{!2425, !2426}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2422, file: !2423, line: 7, baseType: !441, size: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2422, file: !2423, line: 8, baseType: !441, size: 64, offset: 64)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2419, file: !31, line: 122, baseType: !2428)
!2428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2422, elements: !1748)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2363, file: !743, line: 162, baseType: !218, size: 64, offset: 64)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !747, file: !743, line: 176, baseType: !385, size: 128, align: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, scope: !742, file: !743, line: 179, baseType: !2432, size: 32, offset: 384)
!2432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !742, file: !743, line: 179, size: 32, elements: !2433)
!2433 = !{!2434, !2435, !2436, !2437}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2432, file: !743, line: 184, baseType: !767, size: 32)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2432, file: !743, line: 192, baseType: !7, size: 32)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2432, file: !743, line: 194, baseType: !7, size: 32)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2432, file: !743, line: 195, baseType: !278, size: 32)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !742, file: !743, line: 199, baseType: !767, size: 32, offset: 416)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !677, file: !44, line: 1964, baseType: !2440, size: 64, offset: 1344)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!329, !619, !2443}
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2445, line: 12, size: 256, elements: !2446)
!2445 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2446 = !{!2447, !2448, !2449, !2450, !2451}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2444, file: !2445, line: 13, baseType: !216, size: 32)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2444, file: !2445, line: 16, baseType: !278, size: 32, offset: 32)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2444, file: !2445, line: 23, baseType: !344, size: 64, offset: 64)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2444, file: !2445, line: 30, baseType: !344, size: 64, offset: 128)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2444, file: !2445, line: 33, baseType: !2452, size: 64, offset: 192)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !743, line: 27, flags: DIFlagFwdDecl)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !677, file: !44, line: 1966, baseType: !2440, size: 64, offset: 1408)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !620, file: !44, line: 1424, baseType: !2456, size: 64, offset: 448)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2458)
!2458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2459)
!2459 = !{!2460, !2506, !2510, !2514, !2515, !2516, !2517, !2518, !2523, !2528, !2532}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2458, file: !38, line: 323, baseType: !2461, size: 64)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{!278, !2464}
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2466)
!2466 = !{!2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2491, !2492, !2493}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2465, file: !38, line: 295, baseType: !659, size: 128)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2465, file: !38, line: 296, baseType: !239, size: 128, offset: 128)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2465, file: !38, line: 297, baseType: !239, size: 128, offset: 256)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2465, file: !38, line: 298, baseType: !239, size: 128, offset: 384)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2465, file: !38, line: 299, baseType: !1193, size: 192, offset: 512)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2465, file: !38, line: 300, baseType: !252, offset: 704)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2465, file: !38, line: 301, baseType: !767, size: 32, offset: 704)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2465, file: !38, line: 302, baseType: !619, size: 64, offset: 768)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2465, file: !38, line: 303, baseType: !2476, size: 64, offset: 832)
!2476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2477)
!2477 = !{!2478, !2490}
!2478 = !DIDerivedType(tag: DW_TAG_member, scope: !2476, file: !38, line: 69, baseType: !2479, size: 32)
!2479 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2476, file: !38, line: 69, size: 32, elements: !2480)
!2480 = !{!2481, !2482, !2483}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2479, file: !38, line: 70, baseType: !455, size: 32)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2479, file: !38, line: 71, baseType: !463, size: 32)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2479, file: !38, line: 72, baseType: !2484, size: 32)
!2484 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2485, line: 24, baseType: !2486)
!2485 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2485, line: 22, size: 32, elements: !2487)
!2487 = !{!2488}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2486, file: !2485, line: 23, baseType: !2489, size: 32)
!2489 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2485, line: 20, baseType: !461)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2476, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2465, file: !38, line: 304, baseType: !551, size: 64, offset: 896)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2465, file: !38, line: 305, baseType: !344, size: 64, offset: 960)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2465, file: !38, line: 306, baseType: !2494, size: 576, offset: 1024)
!2494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2495)
!2495 = !{!2496, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2494, file: !38, line: 206, baseType: !2497, size: 64)
!2497 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !553)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2494, file: !38, line: 207, baseType: !2497, size: 64, offset: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2494, file: !38, line: 208, baseType: !2497, size: 64, offset: 128)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2494, file: !38, line: 209, baseType: !2497, size: 64, offset: 192)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2494, file: !38, line: 210, baseType: !2497, size: 64, offset: 256)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2494, file: !38, line: 211, baseType: !2497, size: 64, offset: 320)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2494, file: !38, line: 212, baseType: !2497, size: 64, offset: 384)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2494, file: !38, line: 213, baseType: !559, size: 64, offset: 448)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2494, file: !38, line: 214, baseType: !559, size: 64, offset: 512)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2458, file: !38, line: 324, baseType: !2507, size: 64, offset: 64)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DISubroutineType(types: !2509)
!2509 = !{!2464, !619, !278}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2458, file: !38, line: 325, baseType: !2511, size: 64, offset: 128)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{null, !2464}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2458, file: !38, line: 326, baseType: !2461, size: 64, offset: 192)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2458, file: !38, line: 327, baseType: !2461, size: 64, offset: 256)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2458, file: !38, line: 328, baseType: !2461, size: 64, offset: 320)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2458, file: !38, line: 329, baseType: !705, size: 64, offset: 384)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2458, file: !38, line: 332, baseType: !2519, size: 64, offset: 448)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = !DISubroutineType(types: !2521)
!2521 = !{!2522, !449}
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2458, file: !38, line: 333, baseType: !2524, size: 64, offset: 512)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!278, !449, !2527}
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2458, file: !38, line: 335, baseType: !2529, size: 64, offset: 576)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!278, !449, !2522}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2458, file: !38, line: 337, baseType: !2533, size: 64, offset: 640)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{!278, !619, !2536}
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !620, file: !44, line: 1425, baseType: !2538, size: 64, offset: 512)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2540)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2541)
!2541 = !{!2542, !2546, !2547, !2551, !2552, !2553, !2568, !2591, !2595, !2596, !2619}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2540, file: !38, line: 429, baseType: !2543, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{!278, !619, !278, !278, !569}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2540, file: !38, line: 430, baseType: !705, size: 64, offset: 64)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2540, file: !38, line: 431, baseType: !2548, size: 64, offset: 128)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!278, !619, !7}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2540, file: !38, line: 432, baseType: !2548, size: 64, offset: 192)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2540, file: !38, line: 433, baseType: !705, size: 64, offset: 256)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2540, file: !38, line: 434, baseType: !2554, size: 64, offset: 320)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{!278, !619, !278, !2557}
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2559)
!2559 = !{!2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2558, file: !38, line: 416, baseType: !278, size: 32)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2558, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2558, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2558, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2558, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2558, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2558, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2558, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2540, file: !38, line: 435, baseType: !2569, size: 64, offset: 384)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = !DISubroutineType(types: !2571)
!2571 = !{!278, !619, !2476, !2572}
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2574)
!2574 = !{!2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2573, file: !38, line: 344, baseType: !278, size: 32)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2573, file: !38, line: 345, baseType: !441, size: 64, offset: 64)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2573, file: !38, line: 346, baseType: !441, size: 64, offset: 128)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2573, file: !38, line: 347, baseType: !441, size: 64, offset: 192)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2573, file: !38, line: 348, baseType: !441, size: 64, offset: 256)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2573, file: !38, line: 349, baseType: !441, size: 64, offset: 320)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2573, file: !38, line: 350, baseType: !441, size: 64, offset: 384)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2573, file: !38, line: 351, baseType: !797, size: 64, offset: 448)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2573, file: !38, line: 353, baseType: !797, size: 64, offset: 512)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2573, file: !38, line: 354, baseType: !278, size: 32, offset: 576)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2573, file: !38, line: 355, baseType: !278, size: 32, offset: 608)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2573, file: !38, line: 356, baseType: !441, size: 64, offset: 640)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2573, file: !38, line: 357, baseType: !441, size: 64, offset: 704)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2573, file: !38, line: 358, baseType: !441, size: 64, offset: 768)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2573, file: !38, line: 359, baseType: !797, size: 64, offset: 832)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2573, file: !38, line: 360, baseType: !278, size: 32, offset: 896)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2540, file: !38, line: 436, baseType: !2592, size: 64, offset: 448)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{!278, !619, !2536, !2572}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2540, file: !38, line: 438, baseType: !2569, size: 64, offset: 512)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2540, file: !38, line: 439, baseType: !2597, size: 64, offset: 576)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{!278, !619, !2600}
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2602)
!2602 = !{!2603, !2604}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2601, file: !38, line: 410, baseType: !7, size: 32)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2601, file: !38, line: 411, baseType: !2605, size: 1344, offset: 64)
!2605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2606, size: 1344, elements: !295)
!2606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2607)
!2607 = !{!2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2618}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2606, file: !38, line: 396, baseType: !7, size: 32)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2606, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2606, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2606, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2606, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2606, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2606, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2606, file: !38, line: 404, baseType: !443, size: 64, offset: 256)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2606, file: !38, line: 405, baseType: !2617, size: 64, offset: 320)
!2617 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !217, line: 126, baseType: !441)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2606, file: !38, line: 406, baseType: !2617, size: 64, offset: 384)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2540, file: !38, line: 440, baseType: !2548, size: 64, offset: 640)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !620, file: !44, line: 1426, baseType: !2621, size: 64, offset: 576)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2623)
!2623 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !620, file: !44, line: 1427, baseType: !344, size: 64, offset: 640)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !620, file: !44, line: 1428, baseType: !344, size: 64, offset: 704)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !620, file: !44, line: 1429, baseType: !344, size: 64, offset: 768)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !620, file: !44, line: 1430, baseType: !402, size: 64, offset: 832)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !620, file: !44, line: 1431, baseType: !787, size: 256, offset: 896)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !620, file: !44, line: 1432, baseType: !278, size: 32, offset: 1152)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !620, file: !44, line: 1433, baseType: !767, size: 32, offset: 1184)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !620, file: !44, line: 1437, baseType: !2632, size: 64, offset: 1216)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2635)
!2635 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !620, file: !44, line: 1449, baseType: !2637, size: 64, offset: 1280)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !418, line: 34, size: 64, elements: !2638)
!2638 = !{!2639}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2637, file: !418, line: 35, baseType: !421, size: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !620, file: !44, line: 1450, baseType: !239, size: 128, offset: 1344)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !620, file: !44, line: 1451, baseType: !2642, size: 64, offset: 1472)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !620, file: !44, line: 1452, baseType: !1950, size: 64, offset: 1536)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !620, file: !44, line: 1453, baseType: !2646, size: 64, offset: 1600)
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64)
!2647 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !620, file: !44, line: 1454, baseType: !659, size: 128, offset: 1664)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !620, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !620, file: !44, line: 1456, baseType: !2651, size: 2432, offset: 1856)
!2651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2652)
!2652 = !{!2653, !2654, !2655, !2657, !2689}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2651, file: !38, line: 519, baseType: !7, size: 32)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2651, file: !38, line: 520, baseType: !787, size: 256, offset: 64)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2651, file: !38, line: 521, baseType: !2656, size: 192, offset: 320)
!2656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !449, size: 192, elements: !295)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2651, file: !38, line: 522, baseType: !2658, size: 1728, offset: 512)
!2658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2659, size: 1728, elements: !295)
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2660)
!2660 = !{!2661, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2659, file: !38, line: 223, baseType: !2662, size: 64)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2664)
!2664 = !{!2665, !2666, !2679, !2680}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2663, file: !38, line: 444, baseType: !278, size: 32)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2663, file: !38, line: 445, baseType: !2667, size: 64, offset: 64)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2669)
!2669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2670)
!2670 = !{!2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2669, file: !38, line: 311, baseType: !705, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2669, file: !38, line: 312, baseType: !705, size: 64, offset: 64)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2669, file: !38, line: 313, baseType: !705, size: 64, offset: 128)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2669, file: !38, line: 314, baseType: !705, size: 64, offset: 192)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2669, file: !38, line: 315, baseType: !2461, size: 64, offset: 256)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2669, file: !38, line: 316, baseType: !2461, size: 64, offset: 320)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2669, file: !38, line: 317, baseType: !2461, size: 64, offset: 384)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2669, file: !38, line: 318, baseType: !2533, size: 64, offset: 448)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2663, file: !38, line: 446, baseType: !213, size: 64, offset: 128)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2663, file: !38, line: 447, baseType: !2662, size: 64, offset: 192)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2659, file: !38, line: 224, baseType: !278, size: 32, offset: 64)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2659, file: !38, line: 226, baseType: !239, size: 128, offset: 128)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2659, file: !38, line: 227, baseType: !344, size: 64, offset: 256)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2659, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2659, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2659, file: !38, line: 230, baseType: !2497, size: 64, offset: 384)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2659, file: !38, line: 231, baseType: !2497, size: 64, offset: 448)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2659, file: !38, line: 232, baseType: !218, size: 64, offset: 512)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2651, file: !38, line: 523, baseType: !2690, size: 192, offset: 2240)
!2690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2667, size: 192, elements: !295)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !620, file: !44, line: 1458, baseType: !2692, size: 2112, offset: 4288)
!2692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2693)
!2693 = !{!2694, !2695, !2696}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2692, file: !44, line: 1411, baseType: !278, size: 32)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2692, file: !44, line: 1412, baseType: !1506, size: 128, offset: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2692, file: !44, line: 1413, baseType: !2697, size: 1920, offset: 192)
!2697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2698, size: 1920, elements: !295)
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2699, line: 12, size: 640, elements: !2700)
!2699 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2700 = !{!2701, !2709, !2711, !2716, !2717}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2698, file: !2699, line: 13, baseType: !2702, size: 320)
!2702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2703, line: 17, size: 320, elements: !2704)
!2703 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2704 = !{!2705, !2706, !2707, !2708}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2702, file: !2703, line: 18, baseType: !278, size: 32)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2702, file: !2703, line: 19, baseType: !278, size: 32, offset: 32)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2702, file: !2703, line: 20, baseType: !1506, size: 128, offset: 64)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2702, file: !2703, line: 22, baseType: !385, size: 128, align: 64, offset: 192)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2698, file: !2699, line: 14, baseType: !2710, size: 64, offset: 320)
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2698, file: !2699, line: 15, baseType: !2712, size: 64, offset: 384)
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2713, line: 16, size: 64, elements: !2714)
!2713 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2714 = !{!2715}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2712, file: !2713, line: 17, baseType: !1236, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2698, file: !2699, line: 16, baseType: !1506, size: 128, offset: 448)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2698, file: !2699, line: 17, baseType: !767, size: 32, offset: 576)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !620, file: !44, line: 1465, baseType: !218, size: 64, offset: 6400)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !620, file: !44, line: 1468, baseType: !435, size: 32, offset: 6464)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !620, file: !44, line: 1470, baseType: !559, size: 64, offset: 6528)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !620, file: !44, line: 1471, baseType: !559, size: 64, offset: 6592)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !620, file: !44, line: 1473, baseType: !437, size: 32, offset: 6656)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !620, file: !44, line: 1474, baseType: !2724, size: 64, offset: 6720)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !620, file: !44, line: 1477, baseType: !2727, size: 256, offset: 6784)
!2727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 256, elements: !2257)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !620, file: !44, line: 1478, baseType: !2729, size: 128, offset: 7040)
!2729 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2730, line: 18, baseType: !2731)
!2730 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2731 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2730, line: 16, size: 128, elements: !2732)
!2732 = !{!2733}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2731, file: !2730, line: 17, baseType: !2734, size: 128)
!2734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1373, size: 128, elements: !1760)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !620, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !620, file: !44, line: 1481, baseType: !2737, size: 32, offset: 7200)
!2737 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !217, line: 150, baseType: !7)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !620, file: !44, line: 1487, baseType: !1193, size: 192, offset: 7232)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !620, file: !44, line: 1493, baseType: !235, size: 64, offset: 7424)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !620, file: !44, line: 1495, baseType: !2741, size: 64, offset: 7488)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2743)
!2743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !400, line: 135, size: 1024, align: 512, elements: !2744)
!2744 = !{!2745, !2749, !2750, !2757, !2763, !2767, !2771, !2775, !2776, !2780, !2784, !2789, !2793}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2743, file: !400, line: 136, baseType: !2746, size: 64)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{!278, !402, !7}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2743, file: !400, line: 137, baseType: !2746, size: 64, offset: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2743, file: !400, line: 138, baseType: !2751, size: 64, offset: 128)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2752 = !DISubroutineType(types: !2753)
!2753 = !{!278, !2754, !2756}
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !403)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2743, file: !400, line: 139, baseType: !2758, size: 64, offset: 192)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!278, !2754, !7, !235, !2761}
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !426)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2743, file: !400, line: 141, baseType: !2764, size: 64, offset: 256)
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2765 = !DISubroutineType(types: !2766)
!2766 = !{!278, !2754}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2743, file: !400, line: 142, baseType: !2768, size: 64, offset: 320)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = !DISubroutineType(types: !2770)
!2770 = !{!278, !402}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2743, file: !400, line: 143, baseType: !2772, size: 64, offset: 384)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{null, !402}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2743, file: !400, line: 144, baseType: !2772, size: 64, offset: 448)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2743, file: !400, line: 145, baseType: !2777, size: 64, offset: 512)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{null, !402, !449}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2743, file: !400, line: 146, baseType: !2781, size: 64, offset: 576)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!294, !402, !294, !278}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2743, file: !400, line: 147, baseType: !2785, size: 64, offset: 640)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{!398, !2788}
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2743, file: !400, line: 148, baseType: !2790, size: 64, offset: 704)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{!278, !569, !510}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2743, file: !400, line: 149, baseType: !2794, size: 64, offset: 768)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{!402, !402, !2797}
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !450)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !620, file: !44, line: 1500, baseType: !278, size: 32, offset: 7552)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !620, file: !44, line: 1502, baseType: !2801, size: 448, offset: 7616)
!2801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2445, line: 60, size: 448, elements: !2802)
!2802 = !{!2803, !2808, !2809, !2810, !2811, !2812, !2813}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2801, file: !2445, line: 61, baseType: !2804, size: 64)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{!344, !2807, !2443}
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2801, file: !2445, line: 63, baseType: !2804, size: 64, offset: 64)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2801, file: !2445, line: 66, baseType: !329, size: 64, offset: 128)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2801, file: !2445, line: 67, baseType: !278, size: 32, offset: 192)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2801, file: !2445, line: 68, baseType: !7, size: 32, offset: 224)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2801, file: !2445, line: 71, baseType: !239, size: 128, offset: 256)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2801, file: !2445, line: 77, baseType: !2814, size: 64, offset: 384)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !620, file: !44, line: 1505, baseType: !791, size: 64, offset: 8064)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !620, file: !44, line: 1508, baseType: !791, size: 64, offset: 8128)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !620, file: !44, line: 1511, baseType: !278, size: 32, offset: 8192)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !620, file: !44, line: 1514, baseType: !929, size: 32, offset: 8224)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !620, file: !44, line: 1517, baseType: !2820, size: 64, offset: 8256)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1985, line: 18, flags: DIFlagFwdDecl)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !620, file: !44, line: 1518, baseType: !655, size: 64, offset: 8320)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !620, file: !44, line: 1525, baseType: !1738, size: 64, offset: 8384)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !620, file: !44, line: 1532, baseType: !2825, size: 64, offset: 8448)
!2825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2826, line: 52, size: 64, elements: !2827)
!2826 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2827 = !{!2828}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2825, file: !2826, line: 53, baseType: !2829, size: 64)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2826, line: 40, size: 256, elements: !2831)
!2831 = !{!2832, !2833, !2838}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2830, file: !2826, line: 42, baseType: !252)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2830, file: !2826, line: 44, baseType: !2834, size: 192)
!2834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2826, line: 28, size: 192, elements: !2835)
!2835 = !{!2836, !2837}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2834, file: !2826, line: 29, baseType: !239, size: 128)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2834, file: !2826, line: 31, baseType: !329, size: 64, offset: 128)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2830, file: !2826, line: 49, baseType: !329, size: 64, offset: 192)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !620, file: !44, line: 1533, baseType: !2825, size: 64, offset: 8512)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !620, file: !44, line: 1534, baseType: !385, size: 128, align: 64, offset: 8576)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !620, file: !44, line: 1535, baseType: !1984, size: 256, offset: 8704)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !620, file: !44, line: 1537, baseType: !1193, size: 192, offset: 8960)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !620, file: !44, line: 1542, baseType: !278, size: 32, offset: 9152)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !620, file: !44, line: 1545, baseType: !252, offset: 9184)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !620, file: !44, line: 1546, baseType: !239, size: 128, offset: 9216)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !620, file: !44, line: 1548, baseType: !252, offset: 9344)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !620, file: !44, line: 1549, baseType: !239, size: 128, offset: 9344)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !450, file: !44, line: 624, baseType: !754, size: 64, offset: 256)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !450, file: !44, line: 631, baseType: !344, size: 64, offset: 320)
!2850 = !DIDerivedType(tag: DW_TAG_member, scope: !450, file: !44, line: 639, baseType: !2851, size: 32, offset: 384)
!2851 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !450, file: !44, line: 639, size: 32, elements: !2852)
!2852 = !{!2853, !2855}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2851, file: !44, line: 640, baseType: !2854, size: 32)
!2854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2851, file: !44, line: 641, baseType: !7, size: 32)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !450, file: !44, line: 643, baseType: !533, size: 32, offset: 416)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !450, file: !44, line: 644, baseType: !551, size: 64, offset: 448)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !450, file: !44, line: 645, baseType: !555, size: 128, offset: 512)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !450, file: !44, line: 646, baseType: !555, size: 128, offset: 640)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !450, file: !44, line: 647, baseType: !555, size: 128, offset: 768)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !450, file: !44, line: 648, baseType: !252, offset: 896)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !450, file: !44, line: 649, baseType: !336, size: 16, offset: 896)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !450, file: !44, line: 650, baseType: !1372, size: 8, offset: 912)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !450, file: !44, line: 651, baseType: !1372, size: 8, offset: 920)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !450, file: !44, line: 652, baseType: !2617, size: 64, offset: 960)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !450, file: !44, line: 659, baseType: !344, size: 64, offset: 1024)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !450, file: !44, line: 660, baseType: !787, size: 256, offset: 1088)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !450, file: !44, line: 662, baseType: !344, size: 64, offset: 1344)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !450, file: !44, line: 663, baseType: !344, size: 64, offset: 1408)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !450, file: !44, line: 665, baseType: !659, size: 128, offset: 1472)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !450, file: !44, line: 666, baseType: !239, size: 128, offset: 1600)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !450, file: !44, line: 675, baseType: !239, size: 128, offset: 1728)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !450, file: !44, line: 676, baseType: !239, size: 128, offset: 1856)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !450, file: !44, line: 677, baseType: !239, size: 128, offset: 1984)
!2875 = !DIDerivedType(tag: DW_TAG_member, scope: !450, file: !44, line: 678, baseType: !2876, size: 128, offset: 2112)
!2876 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !450, file: !44, line: 678, size: 128, elements: !2877)
!2877 = !{!2878, !2879}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2876, file: !44, line: 679, baseType: !655, size: 64)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2876, file: !44, line: 680, baseType: !385, size: 128, align: 64)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !450, file: !44, line: 682, baseType: !793, size: 64, offset: 2240)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !450, file: !44, line: 683, baseType: !793, size: 64, offset: 2304)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !450, file: !44, line: 684, baseType: !767, size: 32, offset: 2368)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !450, file: !44, line: 685, baseType: !767, size: 32, offset: 2400)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !450, file: !44, line: 686, baseType: !767, size: 32, offset: 2432)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !450, file: !44, line: 688, baseType: !767, size: 32, offset: 2464)
!2886 = !DIDerivedType(tag: DW_TAG_member, scope: !450, file: !44, line: 690, baseType: !2887, size: 64, offset: 2496)
!2887 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !450, file: !44, line: 690, size: 64, elements: !2888)
!2888 = !{!2889, !3121}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2887, file: !44, line: 691, baseType: !2890, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2892)
!2892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2893)
!2893 = !{!2894, !2895, !2899, !2904, !2908, !2909, !2910, !2914, !2927, !2928, !2945, !2949, !2950, !2954, !2955, !2959, !2964, !2965, !2969, !2973, !3081, !3085, !3086, !3090, !3091, !3095, !3099, !3104, !3108, !3112, !3116, !3120}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2892, file: !44, line: 1823, baseType: !213, size: 64)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2892, file: !44, line: 1824, baseType: !2896, size: 64, offset: 64)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{!551, !372, !551, !278}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2892, file: !44, line: 1825, baseType: !2900, size: 64, offset: 128)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{!325, !372, !294, !341, !2903}
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2892, file: !44, line: 1826, baseType: !2905, size: 64, offset: 192)
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{!325, !372, !235, !341, !2903}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2892, file: !44, line: 1827, baseType: !864, size: 64, offset: 256)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2892, file: !44, line: 1828, baseType: !864, size: 64, offset: 320)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2892, file: !44, line: 1829, baseType: !2911, size: 64, offset: 384)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{!278, !867, !510}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2892, file: !44, line: 1830, baseType: !2915, size: 64, offset: 448)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DISubroutineType(types: !2917)
!2917 = !{!278, !372, !2918}
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2920)
!2920 = !{!2921, !2926}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2919, file: !44, line: 1777, baseType: !2922, size: 64)
!2922 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2923)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = !DISubroutineType(types: !2925)
!2925 = !{!278, !2918, !235, !278, !551, !441, !7}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2919, file: !44, line: 1778, baseType: !551, size: 64, offset: 64)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2892, file: !44, line: 1831, baseType: !2915, size: 64, offset: 512)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2892, file: !44, line: 1832, baseType: !2929, size: 64, offset: 576)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!2932, !372, !2934}
!2932 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2933, line: 52, baseType: !7)
!2933 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2936, line: 43, size: 128, elements: !2937)
!2936 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!2937 = !{!2938, !2944}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2935, file: !2936, line: 44, baseType: !2939, size: 64)
!2939 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2936, line: 37, baseType: !2940)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{null, !372, !2943, !2934}
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2935, file: !2936, line: 45, baseType: !2932, size: 32, offset: 64)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2892, file: !44, line: 1833, baseType: !2946, size: 64, offset: 640)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{!329, !372, !7, !344}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2892, file: !44, line: 1834, baseType: !2946, size: 64, offset: 704)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2892, file: !44, line: 1835, baseType: !2951, size: 64, offset: 768)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{!278, !372, !1001}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2892, file: !44, line: 1836, baseType: !344, size: 64, offset: 832)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2892, file: !44, line: 1837, baseType: !2956, size: 64, offset: 896)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{!278, !449, !372}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2892, file: !44, line: 1838, baseType: !2960, size: 64, offset: 960)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{!278, !372, !2963}
!2963 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !218)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2892, file: !44, line: 1839, baseType: !2956, size: 64, offset: 1024)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2892, file: !44, line: 1840, baseType: !2966, size: 64, offset: 1088)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!278, !372, !551, !551, !278}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2892, file: !44, line: 1841, baseType: !2970, size: 64, offset: 1152)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{!278, !278, !372, !278}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2892, file: !44, line: 1842, baseType: !2974, size: 64, offset: 1216)
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2975 = !DISubroutineType(types: !2976)
!2976 = !{!278, !372, !278, !2977}
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2979)
!2979 = !{!2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !3011, !3012, !3013, !3026, !3057}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2978, file: !44, line: 1063, baseType: !2977, size: 64)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2978, file: !44, line: 1064, baseType: !239, size: 128, offset: 64)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2978, file: !44, line: 1065, baseType: !659, size: 128, offset: 192)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2978, file: !44, line: 1066, baseType: !239, size: 128, offset: 320)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2978, file: !44, line: 1069, baseType: !239, size: 128, offset: 448)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2978, file: !44, line: 1072, baseType: !2963, size: 64, offset: 576)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2978, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2978, file: !44, line: 1074, baseType: !447, size: 8, offset: 672)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2978, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2978, file: !44, line: 1076, baseType: !278, size: 32, offset: 736)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2978, file: !44, line: 1077, baseType: !1506, size: 128, offset: 768)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2978, file: !44, line: 1078, baseType: !372, size: 64, offset: 896)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2978, file: !44, line: 1079, baseType: !551, size: 64, offset: 960)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2978, file: !44, line: 1080, baseType: !551, size: 64, offset: 1024)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2978, file: !44, line: 1082, baseType: !2995, size: 64, offset: 1088)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2997)
!2997 = !{!2998, !3006, !3007, !3008, !3009, !3010}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2996, file: !44, line: 1315, baseType: !2999)
!2999 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3000, line: 20, baseType: !3001)
!3000 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3001 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3000, line: 11, elements: !3002)
!3002 = !{!3003}
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3001, file: !3000, line: 12, baseType: !3004)
!3004 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !264, line: 33, baseType: !3005)
!3005 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !264, line: 31, elements: !266)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2996, file: !44, line: 1316, baseType: !278, size: 32)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2996, file: !44, line: 1317, baseType: !278, size: 32, offset: 32)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2996, file: !44, line: 1318, baseType: !2995, size: 64, offset: 64)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2996, file: !44, line: 1319, baseType: !372, size: 64, offset: 128)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2996, file: !44, line: 1320, baseType: !385, size: 128, align: 64, offset: 192)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2978, file: !44, line: 1084, baseType: !344, size: 64, offset: 1152)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2978, file: !44, line: 1085, baseType: !344, size: 64, offset: 1216)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2978, file: !44, line: 1087, baseType: !3014, size: 64, offset: 1280)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3016)
!3016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !3017)
!3017 = !{!3018, !3022}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3016, file: !44, line: 1012, baseType: !3019, size: 64)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{null, !2977, !2977}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3016, file: !44, line: 1013, baseType: !3023, size: 64, offset: 64)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{null, !2977}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2978, file: !44, line: 1088, baseType: !3027, size: 64, offset: 1344)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3029)
!3029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !3030)
!3030 = !{!3031, !3035, !3039, !3040, !3044, !3048, !3052, !3056}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3029, file: !44, line: 1017, baseType: !3032, size: 64)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{!2963, !2963}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3029, file: !44, line: 1018, baseType: !3036, size: 64, offset: 64)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{null, !2963}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3029, file: !44, line: 1019, baseType: !3023, size: 64, offset: 128)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3029, file: !44, line: 1020, baseType: !3041, size: 64, offset: 192)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{!278, !2977, !278}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3029, file: !44, line: 1021, baseType: !3045, size: 64, offset: 256)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{!510, !2977}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3029, file: !44, line: 1022, baseType: !3049, size: 64, offset: 320)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{!278, !2977, !278, !242}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3029, file: !44, line: 1023, baseType: !3053, size: 64, offset: 384)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = !DISubroutineType(types: !3055)
!3055 = !{null, !2977, !841}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3029, file: !44, line: 1024, baseType: !3045, size: 64, offset: 448)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2978, file: !44, line: 1097, baseType: !3058, size: 256, offset: 1408)
!3058 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2978, file: !44, line: 1089, size: 256, elements: !3059)
!3059 = !{!3060, !3069, !3075}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3058, file: !44, line: 1090, baseType: !3061, size: 256)
!3061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3062, line: 10, size: 256, elements: !3063)
!3062 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3063 = !{!3064, !3065, !3068}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3061, file: !3062, line: 11, baseType: !435, size: 32)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3061, file: !3062, line: 12, baseType: !3066, size: 64, offset: 64)
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3067 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3062, line: 5, flags: DIFlagFwdDecl)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3061, file: !3062, line: 13, baseType: !239, size: 128, offset: 128)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3058, file: !44, line: 1091, baseType: !3070, size: 64)
!3070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3062, line: 17, size: 64, elements: !3071)
!3071 = !{!3072}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3070, file: !3062, line: 18, baseType: !3073, size: 64)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3062, line: 16, flags: DIFlagFwdDecl)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3058, file: !44, line: 1096, baseType: !3076, size: 192)
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3058, file: !44, line: 1092, size: 192, elements: !3077)
!3077 = !{!3078, !3079, !3080}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3076, file: !44, line: 1093, baseType: !239, size: 128)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3076, file: !44, line: 1094, baseType: !278, size: 32, offset: 128)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3076, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2892, file: !44, line: 1843, baseType: !3082, size: 64, offset: 1280)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{!325, !372, !741, !278, !341, !2903, !278}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2892, file: !44, line: 1844, baseType: !1121, size: 64, offset: 1344)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2892, file: !44, line: 1845, baseType: !3087, size: 64, offset: 1408)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!278, !278}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2892, file: !44, line: 1846, baseType: !2974, size: 64, offset: 1472)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2892, file: !44, line: 1847, baseType: !3092, size: 64, offset: 1536)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{!325, !2125, !372, !2903, !341, !7}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2892, file: !44, line: 1848, baseType: !3096, size: 64, offset: 1600)
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!3097 = !DISubroutineType(types: !3098)
!3098 = !{!325, !372, !2903, !2125, !341, !7}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2892, file: !44, line: 1849, baseType: !3100, size: 64, offset: 1664)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!278, !372, !329, !3103, !841}
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2892, file: !44, line: 1850, baseType: !3105, size: 64, offset: 1728)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!329, !372, !278, !551, !551}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2892, file: !44, line: 1852, baseType: !3109, size: 64, offset: 1792)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{null, !731, !372}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2892, file: !44, line: 1856, baseType: !3113, size: 64, offset: 1856)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{!325, !372, !551, !372, !551, !341, !7}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2892, file: !44, line: 1858, baseType: !3117, size: 64, offset: 1920)
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{!551, !372, !551, !372, !551, !551, !7}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2892, file: !44, line: 1861, baseType: !2966, size: 64, offset: 1984)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2887, file: !44, line: 692, baseType: !684, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !450, file: !44, line: 694, baseType: !3123, size: 64, offset: 2560)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3125)
!3125 = !{!3126, !3127, !3128, !3129}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3124, file: !44, line: 1101, baseType: !252)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3124, file: !44, line: 1102, baseType: !239, size: 128)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3124, file: !44, line: 1103, baseType: !239, size: 128, offset: 128)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3124, file: !44, line: 1104, baseType: !239, size: 128, offset: 256)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !450, file: !44, line: 695, baseType: !755, size: 1216, align: 64, offset: 2624)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !450, file: !44, line: 696, baseType: !239, size: 128, offset: 3840)
!3132 = !DIDerivedType(tag: DW_TAG_member, scope: !450, file: !44, line: 697, baseType: !3133, size: 64, offset: 3968)
!3133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !450, file: !44, line: 697, size: 64, elements: !3134)
!3134 = !{!3135, !3136, !3137, !3148, !3149}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3133, file: !44, line: 698, baseType: !2125, size: 64)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3133, file: !44, line: 699, baseType: !2642, size: 64)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3133, file: !44, line: 700, baseType: !3138, size: 64)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3140, line: 14, size: 832, elements: !3141)
!3140 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!3141 = !{!3142, !3143, !3144, !3145, !3146, !3147}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3139, file: !3140, line: 15, baseType: !231, size: 512)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3139, file: !3140, line: 16, baseType: !213, size: 64, offset: 512)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3139, file: !3140, line: 17, baseType: !2890, size: 64, offset: 576)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3139, file: !3140, line: 18, baseType: !239, size: 128, offset: 640)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3139, file: !3140, line: 19, baseType: !533, size: 32, offset: 768)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3139, file: !3140, line: 20, baseType: !7, size: 32, offset: 800)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3133, file: !44, line: 701, baseType: !294, size: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3133, file: !44, line: 702, baseType: !7, size: 32)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !450, file: !44, line: 705, baseType: !437, size: 32, offset: 4032)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !450, file: !44, line: 708, baseType: !437, size: 32, offset: 4064)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !450, file: !44, line: 709, baseType: !2724, size: 64, offset: 4096)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !450, file: !44, line: 720, baseType: !218, size: 64, offset: 4160)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !403, file: !400, line: 98, baseType: !3155, size: 256, offset: 448)
!3155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !447, size: 256, elements: !2257)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !403, file: !400, line: 101, baseType: !3157, size: 32, offset: 704)
!3157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3158, line: 25, size: 32, elements: !3159)
!3158 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3159 = !{!3160}
!3160 = !DIDerivedType(tag: DW_TAG_member, scope: !3157, file: !3158, line: 26, baseType: !3161, size: 32)
!3161 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3157, file: !3158, line: 26, size: 32, elements: !3162)
!3162 = !{!3163}
!3163 = !DIDerivedType(tag: DW_TAG_member, scope: !3161, file: !3158, line: 30, baseType: !3164, size: 32)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3161, file: !3158, line: 30, size: 32, elements: !3165)
!3165 = !{!3166, !3167}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3164, file: !3158, line: 31, baseType: !252)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3164, file: !3158, line: 32, baseType: !278, size: 32)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !403, file: !400, line: 102, baseType: !2741, size: 64, offset: 768)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !403, file: !400, line: 103, baseType: !619, size: 64, offset: 832)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !403, file: !400, line: 104, baseType: !344, size: 64, offset: 896)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !403, file: !400, line: 105, baseType: !218, size: 64, offset: 960)
!3172 = !DIDerivedType(tag: DW_TAG_member, scope: !403, file: !400, line: 107, baseType: !3173, size: 128, offset: 1024)
!3173 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !403, file: !400, line: 107, size: 128, elements: !3174)
!3174 = !{!3175, !3176}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3173, file: !400, line: 108, baseType: !239, size: 128)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3173, file: !400, line: 109, baseType: !2943, size: 64)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !403, file: !400, line: 111, baseType: !239, size: 128, offset: 1152)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !403, file: !400, line: 112, baseType: !239, size: 128, offset: 1280)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !403, file: !400, line: 120, baseType: !3180, size: 128, offset: 1408)
!3180 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !403, file: !400, line: 116, size: 128, elements: !3181)
!3181 = !{!3182, !3183, !3184}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3180, file: !400, line: 117, baseType: !659, size: 128)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3180, file: !400, line: 118, baseType: !417, size: 128)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3180, file: !400, line: 119, baseType: !385, size: 128, align: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !373, file: !44, line: 922, baseType: !449, size: 64, offset: 256)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !373, file: !44, line: 923, baseType: !2890, size: 64, offset: 320)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !373, file: !44, line: 929, baseType: !252, offset: 384)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !373, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !373, file: !44, line: 931, baseType: !791, size: 64, offset: 448)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !373, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !373, file: !44, line: 933, baseType: !2737, size: 32, offset: 544)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !373, file: !44, line: 934, baseType: !1193, size: 192, offset: 576)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !373, file: !44, line: 935, baseType: !551, size: 64, offset: 768)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !373, file: !44, line: 936, baseType: !3195, size: 192, offset: 832)
!3195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3196)
!3196 = !{!3197, !3198, !3199, !3200, !3201, !3202}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3195, file: !44, line: 886, baseType: !2999)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3195, file: !44, line: 887, baseType: !1496, size: 64)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3195, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3195, file: !44, line: 889, baseType: !455, size: 32, offset: 96)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3195, file: !44, line: 889, baseType: !455, size: 32, offset: 128)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3195, file: !44, line: 890, baseType: !278, size: 32, offset: 160)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !373, file: !44, line: 937, baseType: !1572, size: 64, offset: 1024)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !373, file: !44, line: 938, baseType: !3205, size: 256, offset: 1088)
!3205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3206)
!3206 = !{!3207, !3208, !3209, !3210, !3211, !3212}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3205, file: !44, line: 897, baseType: !344, size: 64)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3205, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3205, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3205, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3205, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3205, file: !44, line: 904, baseType: !551, size: 64, offset: 192)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !373, file: !44, line: 940, baseType: !441, size: 64, offset: 1344)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !373, file: !44, line: 945, baseType: !218, size: 64, offset: 1408)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !373, file: !44, line: 949, baseType: !239, size: 128, offset: 1472)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !373, file: !44, line: 950, baseType: !239, size: 128, offset: 1600)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !373, file: !44, line: 952, baseType: !754, size: 64, offset: 1728)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !373, file: !44, line: 953, baseType: !929, size: 32, offset: 1792)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !373, file: !44, line: 954, baseType: !929, size: 32, offset: 1824)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !363, file: !319, line: 174, baseType: !369, size: 64, offset: 320)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !363, file: !319, line: 176, baseType: !3222, size: 64, offset: 384)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{!278, !372, !245, !362, !1001}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !351, file: !319, line: 90, baseType: !346, size: 64, offset: 192)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !351, file: !319, line: 91, baseType: !3227, size: 64, offset: 256)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !309, file: !232, line: 143, baseType: !3229, size: 64, offset: 256)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = !DISubroutineType(types: !3231)
!3231 = !{!3232, !245}
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3234)
!3234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3235)
!3235 = !{!3236, !3237, !3241, !3245, !3251, !3255}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3234, file: !61, line: 40, baseType: !60, size: 32)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3234, file: !61, line: 41, baseType: !3238, size: 64, offset: 64)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{!510}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3234, file: !61, line: 42, baseType: !3242, size: 64, offset: 128)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{!218}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3234, file: !61, line: 43, baseType: !3246, size: 64, offset: 192)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!2154, !3249}
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3234, file: !61, line: 44, baseType: !3252, size: 64, offset: 256)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!2154}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3234, file: !61, line: 45, baseType: !488, size: 64, offset: 320)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !309, file: !232, line: 144, baseType: !3257, size: 64, offset: 320)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!2154, !245}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !309, file: !232, line: 145, baseType: !3261, size: 64, offset: 384)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{null, !245, !3264, !3265}
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !231, file: !232, line: 70, baseType: !3267, size: 64, offset: 384)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !639, line: 123, size: 1024, elements: !3269)
!3269 = !{!3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3398, !3399, !3400, !3401, !3402}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3268, file: !639, line: 124, baseType: !767, size: 32)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3268, file: !639, line: 125, baseType: !767, size: 32, offset: 32)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3268, file: !639, line: 135, baseType: !3267, size: 64, offset: 64)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3268, file: !639, line: 136, baseType: !235, size: 64, offset: 128)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3268, file: !639, line: 138, baseType: !780, size: 192, align: 64, offset: 192)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3268, file: !639, line: 140, baseType: !2154, size: 64, offset: 384)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3268, file: !639, line: 141, baseType: !7, size: 32, offset: 448)
!3277 = !DIDerivedType(tag: DW_TAG_member, scope: !3268, file: !639, line: 142, baseType: !3278, size: 256, offset: 512)
!3278 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3268, file: !639, line: 142, size: 256, elements: !3279)
!3279 = !{!3280, !3326, !3330}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3278, file: !639, line: 143, baseType: !3281, size: 192)
!3281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !639, line: 91, size: 192, elements: !3282)
!3282 = !{!3283, !3284, !3285}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3281, file: !639, line: 92, baseType: !344, size: 64)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3281, file: !639, line: 94, baseType: !776, size: 64, offset: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3281, file: !639, line: 100, baseType: !3286, size: 64, offset: 128)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !639, line: 180, size: 704, elements: !3288)
!3288 = !{!3289, !3290, !3291, !3298, !3299, !3300, !3324, !3325}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3287, file: !639, line: 182, baseType: !3267, size: 64)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3287, file: !639, line: 183, baseType: !7, size: 32, offset: 64)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3287, file: !639, line: 186, baseType: !3292, size: 192, offset: 128)
!3292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3293, line: 19, size: 192, elements: !3294)
!3293 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3294 = !{!3295, !3296, !3297}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3292, file: !3293, line: 20, baseType: !759, size: 128)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3292, file: !3293, line: 21, baseType: !7, size: 32, offset: 128)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3292, file: !3293, line: 22, baseType: !7, size: 32, offset: 160)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3287, file: !639, line: 187, baseType: !435, size: 32, offset: 320)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3287, file: !639, line: 188, baseType: !435, size: 32, offset: 352)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3287, file: !639, line: 189, baseType: !3301, size: 64, offset: 384)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !639, line: 168, size: 320, elements: !3303)
!3303 = !{!3304, !3308, !3312, !3316, !3320}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3302, file: !639, line: 169, baseType: !3305, size: 64)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{!278, !731, !3286}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3302, file: !639, line: 171, baseType: !3309, size: 64, offset: 64)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{!278, !3267, !235, !335}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3302, file: !639, line: 173, baseType: !3313, size: 64, offset: 128)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{!278, !3267}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3302, file: !639, line: 174, baseType: !3317, size: 64, offset: 192)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = !DISubroutineType(types: !3319)
!3319 = !{!278, !3267, !3267, !235}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3302, file: !639, line: 176, baseType: !3321, size: 64, offset: 256)
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = !DISubroutineType(types: !3323)
!3323 = !{!278, !731, !3267, !3286}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3287, file: !639, line: 192, baseType: !239, size: 128, offset: 448)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3287, file: !639, line: 194, baseType: !1506, size: 128, offset: 576)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3278, file: !639, line: 144, baseType: !3327, size: 64)
!3327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !639, line: 103, size: 64, elements: !3328)
!3328 = !{!3329}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3327, file: !639, line: 104, baseType: !3267, size: 64)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3278, file: !639, line: 145, baseType: !3331, size: 256)
!3331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !639, line: 107, size: 256, elements: !3332)
!3332 = !{!3333, !3393, !3396, !3397}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3331, file: !639, line: 108, baseType: !3334, size: 64)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3336)
!3336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !639, line: 217, size: 768, elements: !3337)
!3337 = !{!3338, !3358, !3362, !3366, !3370, !3374, !3378, !3382, !3383, !3384, !3385, !3389}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3336, file: !639, line: 222, baseType: !3339, size: 64)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!278, !3342}
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !639, line: 197, size: 1088, elements: !3344)
!3344 = !{!3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3343, file: !639, line: 199, baseType: !3267, size: 64)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3343, file: !639, line: 200, baseType: !372, size: 64, offset: 64)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3343, file: !639, line: 201, baseType: !731, size: 64, offset: 128)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3343, file: !639, line: 202, baseType: !218, size: 64, offset: 192)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3343, file: !639, line: 205, baseType: !1193, size: 192, offset: 256)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3343, file: !639, line: 206, baseType: !1193, size: 192, offset: 448)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3343, file: !639, line: 207, baseType: !278, size: 32, offset: 640)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3343, file: !639, line: 208, baseType: !239, size: 128, offset: 704)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3343, file: !639, line: 209, baseType: !294, size: 64, offset: 832)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3343, file: !639, line: 211, baseType: !341, size: 64, offset: 896)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3343, file: !639, line: 212, baseType: !510, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3343, file: !639, line: 213, baseType: !510, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3343, file: !639, line: 214, baseType: !1029, size: 64, offset: 1024)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3336, file: !639, line: 223, baseType: !3359, size: 64, offset: 64)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{null, !3342}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3336, file: !639, line: 236, baseType: !3363, size: 64, offset: 128)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{!278, !731, !218}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3336, file: !639, line: 238, baseType: !3367, size: 64, offset: 192)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = !DISubroutineType(types: !3369)
!3369 = !{!218, !731, !2903}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3336, file: !639, line: 239, baseType: !3371, size: 64, offset: 256)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = !DISubroutineType(types: !3373)
!3373 = !{!218, !731, !218, !2903}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3336, file: !639, line: 240, baseType: !3375, size: 64, offset: 320)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = !DISubroutineType(types: !3377)
!3377 = !{null, !731, !218}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3336, file: !639, line: 242, baseType: !3379, size: 64, offset: 384)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{!325, !3342, !294, !341, !551}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3336, file: !639, line: 252, baseType: !341, size: 64, offset: 448)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3336, file: !639, line: 259, baseType: !510, size: 8, offset: 512)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3336, file: !639, line: 260, baseType: !3379, size: 64, offset: 576)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3336, file: !639, line: 263, baseType: !3386, size: 64, offset: 640)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!2932, !3342, !2934}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3336, file: !639, line: 266, baseType: !3390, size: 64, offset: 704)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = !DISubroutineType(types: !3392)
!3392 = !{!278, !3342, !1001}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3331, file: !639, line: 109, baseType: !3394, size: 64, offset: 64)
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3395 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !639, line: 31, flags: DIFlagFwdDecl)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3331, file: !639, line: 110, baseType: !551, size: 64, offset: 128)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3331, file: !639, line: 111, baseType: !3267, size: 64, offset: 192)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3268, file: !639, line: 148, baseType: !218, size: 64, offset: 768)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3268, file: !639, line: 154, baseType: !441, size: 64, offset: 832)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3268, file: !639, line: 156, baseType: !336, size: 16, offset: 896)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3268, file: !639, line: 157, baseType: !335, size: 16, offset: 912)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3268, file: !639, line: 158, baseType: !3403, size: 64, offset: 960)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !639, line: 32, flags: DIFlagFwdDecl)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !231, file: !232, line: 71, baseType: !3406, size: 32, offset: 448)
!3406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3407, line: 19, size: 32, elements: !3408)
!3407 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3408 = !{!3409}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3406, file: !3407, line: 20, baseType: !1250, size: 32)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !231, file: !232, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !231, file: !232, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !231, file: !232, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !231, file: !232, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !231, file: !232, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !228, file: !73, line: 463, baseType: !3416, size: 64, offset: 512)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !228, file: !73, line: 465, baseType: !3418, size: 64, offset: 576)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !228, file: !73, line: 467, baseType: !235, size: 64, offset: 640)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !228, file: !73, line: 468, baseType: !3422, size: 64, offset: 704)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3424)
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3425)
!3425 = !{!3426, !3427, !3428, !3432, !3437, !3441}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3424, file: !73, line: 88, baseType: !235, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3424, file: !73, line: 89, baseType: !348, size: 64, offset: 64)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3424, file: !73, line: 90, baseType: !3429, size: 64, offset: 128)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3430 = !DISubroutineType(types: !3431)
!3431 = !{!278, !3416, !289}
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3424, file: !73, line: 91, baseType: !3433, size: 64, offset: 192)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{!294, !3416, !3436, !3264, !3265}
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3424, file: !73, line: 93, baseType: !3438, size: 64, offset: 256)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = !DISubroutineType(types: !3440)
!3440 = !{null, !3416}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3424, file: !73, line: 95, baseType: !3442, size: 64, offset: 320)
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3443, size: 64)
!3443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3444)
!3444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3445)
!3445 = !{!3446, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3444, file: !80, line: 279, baseType: !3447, size: 64)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{!278, !3416}
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
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !228, file: !73, line: 470, baseType: !3473, size: 64, offset: 768)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3475, line: 82, size: 1408, elements: !3476)
!3475 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3476 = !{!3477, !3478, !3479, !3480, !3481, !3482, !3483, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3558, !3561, !3562}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3474, file: !3475, line: 83, baseType: !235, size: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3474, file: !3475, line: 84, baseType: !235, size: 64, offset: 64)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3474, file: !3475, line: 85, baseType: !3416, size: 64, offset: 128)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3474, file: !3475, line: 86, baseType: !348, size: 64, offset: 192)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3474, file: !3475, line: 87, baseType: !348, size: 64, offset: 256)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3474, file: !3475, line: 88, baseType: !348, size: 64, offset: 320)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3474, file: !3475, line: 90, baseType: !3484, size: 64, offset: 384)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DISubroutineType(types: !3486)
!3486 = !{!278, !3416, !3487}
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3489)
!3489 = !{!3490, !3491, !3492, !3493, !3494, !3495, !3496, !3509, !3522, !3523, !3524, !3525, !3526, !3534, !3535, !3536, !3537, !3538, !3539}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3488, file: !67, line: 96, baseType: !235, size: 64)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3488, file: !67, line: 97, baseType: !3473, size: 64, offset: 64)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3488, file: !67, line: 99, baseType: !213, size: 64, offset: 128)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3488, file: !67, line: 100, baseType: !235, size: 64, offset: 192)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3488, file: !67, line: 102, baseType: !510, size: 8, offset: 256)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3488, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3488, file: !67, line: 105, baseType: !3497, size: 64, offset: 320)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3499)
!3499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3500, line: 262, size: 1600, elements: !3501)
!3500 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3501 = !{!3502, !3503, !3504, !3508}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3499, file: !3500, line: 263, baseType: !2727, size: 256)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3499, file: !3500, line: 264, baseType: !2727, size: 256, offset: 256)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3499, file: !3500, line: 265, baseType: !3505, size: 1024, offset: 512)
!3505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 1024, elements: !3506)
!3506 = !{!3507}
!3507 = !DISubrange(count: 128)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3499, file: !3500, line: 266, baseType: !2154, size: 64, offset: 1536)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3488, file: !67, line: 106, baseType: !3510, size: 64, offset: 384)
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64)
!3511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3512)
!3512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3500, line: 210, size: 256, elements: !3513)
!3513 = !{!3514, !3518, !3520, !3521}
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3512, file: !3500, line: 211, baseType: !3515, size: 72)
!3515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1373, size: 72, elements: !3516)
!3516 = !{!3517}
!3517 = !DISubrange(count: 9)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3512, file: !3500, line: 212, baseType: !3519, size: 64, offset: 128)
!3519 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3500, line: 14, baseType: !344)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3512, file: !3500, line: 213, baseType: !437, size: 32, offset: 192)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3512, file: !3500, line: 214, baseType: !437, size: 32, offset: 224)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3488, file: !67, line: 108, baseType: !3447, size: 64, offset: 448)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3488, file: !67, line: 109, baseType: !3438, size: 64, offset: 512)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3488, file: !67, line: 110, baseType: !3447, size: 64, offset: 576)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3488, file: !67, line: 111, baseType: !3438, size: 64, offset: 640)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3488, file: !67, line: 112, baseType: !3527, size: 64, offset: 704)
!3527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3528, size: 64)
!3528 = !DISubroutineType(types: !3529)
!3529 = !{!278, !3416, !3530}
!3530 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3531)
!3531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3532)
!3532 = !{!3533}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3531, file: !80, line: 51, baseType: !278, size: 32)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3488, file: !67, line: 113, baseType: !3447, size: 64, offset: 768)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3488, file: !67, line: 114, baseType: !348, size: 64, offset: 832)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3488, file: !67, line: 115, baseType: !348, size: 64, offset: 896)
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
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3474, file: !3475, line: 112, baseType: !665, offset: 1344)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3474, file: !3475, line: 114, baseType: !510, size: 8, offset: 1344)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !228, file: !73, line: 471, baseType: !3487, size: 64, offset: 832)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !228, file: !73, line: 473, baseType: !218, size: 64, offset: 896)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !228, file: !73, line: 475, baseType: !218, size: 64, offset: 960)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !228, file: !73, line: 480, baseType: !1193, size: 192, offset: 1024)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !228, file: !73, line: 484, baseType: !3568, size: 576, offset: 1216)
!3568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3569)
!3569 = !{!3570, !3571, !3572, !3573, !3574, !3575}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3568, file: !73, line: 362, baseType: !239, size: 128)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3568, file: !73, line: 363, baseType: !239, size: 128, offset: 128)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3568, file: !73, line: 364, baseType: !239, size: 128, offset: 256)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3568, file: !73, line: 365, baseType: !239, size: 128, offset: 384)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3568, file: !73, line: 366, baseType: !510, size: 8, offset: 512)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3568, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !228, file: !73, line: 485, baseType: !3577, size: 2304, offset: 1792)
!3577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3578)
!3578 = !{!3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3674, !3678}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3577, file: !80, line: 566, baseType: !3530, size: 32)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3577, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3577, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3577, file: !80, line: 569, baseType: !510, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3577, file: !80, line: 570, baseType: !510, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3577, file: !80, line: 571, baseType: !510, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3577, file: !80, line: 572, baseType: !510, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3577, file: !80, line: 573, baseType: !510, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3577, file: !80, line: 574, baseType: !510, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3577, file: !80, line: 575, baseType: !510, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3577, file: !80, line: 576, baseType: !510, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3577, file: !80, line: 577, baseType: !435, size: 32, offset: 64)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3577, file: !80, line: 578, baseType: !252, offset: 96)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3577, file: !80, line: 580, baseType: !239, size: 128, offset: 128)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3577, file: !80, line: 581, baseType: !1527, size: 192, offset: 256)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3577, file: !80, line: 582, baseType: !3595, size: 64, offset: 448)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3597, line: 43, size: 1472, elements: !3598)
!3597 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3598 = !{!3599, !3600, !3601, !3602, !3603, !3606, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3596, file: !3597, line: 44, baseType: !235, size: 64)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3596, file: !3597, line: 45, baseType: !278, size: 32, offset: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3596, file: !3597, line: 46, baseType: !239, size: 128, offset: 128)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3596, file: !3597, line: 47, baseType: !252, offset: 256)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3596, file: !3597, line: 48, baseType: !3604, size: 64, offset: 256)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3596, file: !3597, line: 49, baseType: !3607, size: 320, offset: 320)
!3607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3608, line: 11, size: 320, elements: !3609)
!3608 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3609 = !{!3610, !3611, !3612, !3617}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3607, file: !3608, line: 16, baseType: !659, size: 128)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3607, file: !3608, line: 17, baseType: !344, size: 64, offset: 128)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3607, file: !3608, line: 18, baseType: !3613, size: 64, offset: 192)
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3614 = !DISubroutineType(types: !3615)
!3615 = !{null, !3616}
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3607, size: 64)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3607, file: !3608, line: 19, baseType: !435, size: 32, offset: 256)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3596, file: !3597, line: 50, baseType: !344, size: 64, offset: 640)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3596, file: !3597, line: 51, baseType: !1320, size: 64, offset: 704)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3596, file: !3597, line: 52, baseType: !1320, size: 64, offset: 768)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3596, file: !3597, line: 53, baseType: !1320, size: 64, offset: 832)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3596, file: !3597, line: 54, baseType: !1320, size: 64, offset: 896)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3596, file: !3597, line: 55, baseType: !1320, size: 64, offset: 960)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3596, file: !3597, line: 56, baseType: !344, size: 64, offset: 1024)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3596, file: !3597, line: 57, baseType: !344, size: 64, offset: 1088)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3596, file: !3597, line: 58, baseType: !344, size: 64, offset: 1152)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3596, file: !3597, line: 59, baseType: !344, size: 64, offset: 1216)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3596, file: !3597, line: 60, baseType: !344, size: 64, offset: 1280)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3596, file: !3597, line: 61, baseType: !3416, size: 64, offset: 1344)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3596, file: !3597, line: 62, baseType: !510, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3596, file: !3597, line: 63, baseType: !510, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3577, file: !80, line: 583, baseType: !510, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3577, file: !80, line: 584, baseType: !510, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3577, file: !80, line: 585, baseType: !510, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3577, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3577, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3577, file: !80, line: 592, baseType: !1312, size: 512, offset: 576)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3577, file: !80, line: 593, baseType: !441, size: 64, offset: 1088)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3577, file: !80, line: 594, baseType: !1984, size: 256, offset: 1152)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3577, file: !80, line: 595, baseType: !1506, size: 128, offset: 1408)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3577, file: !80, line: 596, baseType: !3604, size: 64, offset: 1536)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3577, file: !80, line: 597, baseType: !767, size: 32, offset: 1600)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3577, file: !80, line: 598, baseType: !767, size: 32, offset: 1632)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3577, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3577, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3577, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3577, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3577, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3577, file: !80, line: 604, baseType: !510, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3577, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3577, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3577, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3577, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3577, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3577, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3577, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3577, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3577, file: !80, line: 613, baseType: !278, size: 32, offset: 1792)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3577, file: !80, line: 614, baseType: !278, size: 32, offset: 1824)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3577, file: !80, line: 615, baseType: !441, size: 64, offset: 1856)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3577, file: !80, line: 616, baseType: !441, size: 64, offset: 1920)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3577, file: !80, line: 617, baseType: !441, size: 64, offset: 1984)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3577, file: !80, line: 618, baseType: !441, size: 64, offset: 2048)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3577, file: !80, line: 620, baseType: !3665, size: 64, offset: 2112)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3667)
!3667 = !{!3668, !3669, !3670, !3671}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3666, file: !80, line: 537, baseType: !252)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3666, file: !80, line: 538, baseType: !7, size: 32)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3666, file: !80, line: 540, baseType: !239, size: 128, offset: 64)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3666, file: !80, line: 543, baseType: !3672, size: 64, offset: 192)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3577, file: !80, line: 621, baseType: !3675, size: 64, offset: 2176)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{null, !3416, !1464}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3577, file: !80, line: 622, baseType: !3679, size: 64, offset: 2240)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !228, file: !73, line: 486, baseType: !3682, size: 64, offset: 4096)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3684)
!3684 = !{!3685, !3686, !3687, !3691, !3692, !3693}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3683, file: !80, line: 643, baseType: !3444, size: 1472)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3683, file: !80, line: 644, baseType: !3447, size: 64, offset: 1472)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3683, file: !80, line: 645, baseType: !3688, size: 64, offset: 1536)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{null, !3416, !510}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3683, file: !80, line: 646, baseType: !3447, size: 64, offset: 1600)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3683, file: !80, line: 647, baseType: !3438, size: 64, offset: 1664)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3683, file: !80, line: 648, baseType: !3438, size: 64, offset: 1728)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !228, file: !73, line: 493, baseType: !3695, size: 64, offset: 4160)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !94, line: 162, size: 1088, elements: !3697)
!3697 = !{!3698, !3699, !3700, !3873, !3874, !3875, !3876, !3877, !3878, !3881, !3882, !3883, !3884, !3885, !3886, !3887}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3696, file: !94, line: 163, baseType: !239, size: 128)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3696, file: !94, line: 164, baseType: !235, size: 64, offset: 128)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3696, file: !94, line: 165, baseType: !3701, size: 64, offset: 192)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3703)
!3703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !94, line: 105, size: 640, elements: !3704)
!3704 = !{!3705, !3823, !3834, !3839, !3843, !3850, !3854, !3858, !3865, !3869}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3703, file: !94, line: 106, baseType: !3706, size: 64)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!278, !3695, !3709, !93}
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3711, line: 51, size: 1344, elements: !3712)
!3711 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3712 = !{!3713, !3714, !3716, !3717, !3807, !3816, !3817, !3818, !3819, !3820, !3821, !3822}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3710, file: !3711, line: 52, baseType: !235, size: 64)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3710, file: !3711, line: 53, baseType: !3715, size: 32, offset: 64)
!3715 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3711, line: 28, baseType: !435)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3710, file: !3711, line: 54, baseType: !235, size: 64, offset: 128)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3710, file: !3711, line: 55, baseType: !3718, size: 192, offset: 192)
!3718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3719, line: 17, size: 192, elements: !3720)
!3719 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3720 = !{!3721, !3723, !3806}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3718, file: !3719, line: 18, baseType: !3722, size: 64)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3718, file: !3719, line: 19, baseType: !3724, size: 64, offset: 64)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3726)
!3726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3719, line: 110, size: 1152, elements: !3727)
!3727 = !{!3728, !3732, !3736, !3742, !3748, !3752, !3756, !3761, !3765, !3766, !3770, !3774, !3778, !3789, !3790, !3791, !3792, !3802}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3726, file: !3719, line: 111, baseType: !3729, size: 64)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!3722, !3722}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3726, file: !3719, line: 112, baseType: !3733, size: 64, offset: 64)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{null, !3722}
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3726, file: !3719, line: 113, baseType: !3737, size: 64, offset: 128)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{!510, !3740}
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3741, size: 64)
!3741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3718)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3726, file: !3719, line: 114, baseType: !3743, size: 64, offset: 192)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{!2154, !3740, !3746}
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !228)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3726, file: !3719, line: 116, baseType: !3749, size: 64, offset: 256)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{!510, !3740, !235}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3726, file: !3719, line: 118, baseType: !3753, size: 64, offset: 320)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{!278, !3740, !235, !7, !218, !341}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3726, file: !3719, line: 123, baseType: !3757, size: 64, offset: 384)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!278, !3740, !235, !3760, !341}
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3726, file: !3719, line: 126, baseType: !3762, size: 64, offset: 448)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DISubroutineType(types: !3764)
!3764 = !{!235, !3740}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3726, file: !3719, line: 127, baseType: !3762, size: 64, offset: 512)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3726, file: !3719, line: 128, baseType: !3767, size: 64, offset: 576)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = !DISubroutineType(types: !3769)
!3769 = !{!3722, !3740}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3726, file: !3719, line: 130, baseType: !3771, size: 64, offset: 640)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = !DISubroutineType(types: !3773)
!3773 = !{!3722, !3740, !3722}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3726, file: !3719, line: 133, baseType: !3775, size: 64, offset: 704)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DISubroutineType(types: !3777)
!3777 = !{!3722, !3740, !235}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3726, file: !3719, line: 135, baseType: !3779, size: 64, offset: 768)
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = !DISubroutineType(types: !3781)
!3781 = !{!278, !3740, !235, !235, !7, !7, !3782}
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3719, line: 43, size: 640, elements: !3784)
!3784 = !{!3785, !3786, !3787}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3783, file: !3719, line: 44, baseType: !3722, size: 64)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3783, file: !3719, line: 45, baseType: !7, size: 32, offset: 64)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3783, file: !3719, line: 46, baseType: !3788, size: 512, offset: 128)
!3788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 512, elements: !1350)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3726, file: !3719, line: 140, baseType: !3771, size: 64, offset: 832)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3726, file: !3719, line: 143, baseType: !3767, size: 64, offset: 896)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3726, file: !3719, line: 145, baseType: !3729, size: 64, offset: 960)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3726, file: !3719, line: 146, baseType: !3793, size: 64, offset: 1024)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{!278, !3740, !3796}
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3719, line: 29, size: 128, elements: !3798)
!3798 = !{!3799, !3800, !3801}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3797, file: !3719, line: 30, baseType: !7, size: 32)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3797, file: !3719, line: 31, baseType: !7, size: 32, offset: 32)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3797, file: !3719, line: 32, baseType: !3740, size: 64, offset: 64)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3726, file: !3719, line: 148, baseType: !3803, size: 64, offset: 1088)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!278, !3740, !3416}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3718, file: !3719, line: 20, baseType: !3416, size: 64, offset: 128)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3710, file: !3711, line: 57, baseType: !3808, size: 64, offset: 384)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3711, line: 31, size: 704, elements: !3810)
!3810 = !{!3811, !3812, !3813, !3814, !3815}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3809, file: !3711, line: 32, baseType: !294, size: 64)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3809, file: !3711, line: 33, baseType: !278, size: 32, offset: 64)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3809, file: !3711, line: 34, baseType: !218, size: 64, offset: 128)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3809, file: !3711, line: 35, baseType: !3808, size: 64, offset: 192)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3809, file: !3711, line: 43, baseType: !363, size: 448, offset: 256)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3710, file: !3711, line: 58, baseType: !3808, size: 64, offset: 448)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3710, file: !3711, line: 59, baseType: !3709, size: 64, offset: 512)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3710, file: !3711, line: 60, baseType: !3709, size: 64, offset: 576)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3710, file: !3711, line: 61, baseType: !3709, size: 64, offset: 640)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3710, file: !3711, line: 63, baseType: !231, size: 512, offset: 704)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3710, file: !3711, line: 65, baseType: !344, size: 64, offset: 1216)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3710, file: !3711, line: 66, baseType: !218, size: 64, offset: 1280)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3703, file: !94, line: 108, baseType: !3824, size: 64, offset: 64)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{!278, !3695, !3827, !93}
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !94, line: 63, size: 640, elements: !3829)
!3829 = !{!3830, !3831, !3832}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3828, file: !94, line: 64, baseType: !3722, size: 64)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3828, file: !94, line: 65, baseType: !278, size: 32, offset: 64)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3828, file: !94, line: 66, baseType: !3833, size: 512, offset: 96)
!3833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 512, elements: !1760)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3703, file: !94, line: 110, baseType: !3835, size: 64, offset: 128)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{!278, !3695, !7, !3838}
!3838 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !217, line: 164, baseType: !344)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3703, file: !94, line: 111, baseType: !3840, size: 64, offset: 192)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = !DISubroutineType(types: !3842)
!3842 = !{null, !3695, !7}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3703, file: !94, line: 112, baseType: !3844, size: 64, offset: 256)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = !DISubroutineType(types: !3846)
!3846 = !{!278, !3695, !3709, !3847, !7, !3849, !2710}
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !435)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3703, file: !94, line: 117, baseType: !3851, size: 64, offset: 320)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = !DISubroutineType(types: !3853)
!3853 = !{!278, !3695, !7, !7, !218}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3703, file: !94, line: 119, baseType: !3855, size: 64, offset: 384)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DISubroutineType(types: !3857)
!3857 = !{null, !3695, !7, !7}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3703, file: !94, line: 121, baseType: !3859, size: 64, offset: 448)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DISubroutineType(types: !3861)
!3861 = !{!278, !3695, !3862, !510}
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3864, line: 11, flags: DIFlagFwdDecl)
!3864 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3703, file: !94, line: 122, baseType: !3866, size: 64, offset: 512)
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3867 = !DISubroutineType(types: !3868)
!3868 = !{null, !3695, !3862}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3703, file: !94, line: 123, baseType: !3870, size: 64, offset: 576)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{!278, !3695, !3827, !3849, !2710}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3696, file: !94, line: 166, baseType: !218, size: 64, offset: 256)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3696, file: !94, line: 167, baseType: !7, size: 32, offset: 320)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3696, file: !94, line: 168, baseType: !7, size: 32, offset: 352)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3696, file: !94, line: 171, baseType: !3722, size: 64, offset: 384)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3696, file: !94, line: 172, baseType: !93, size: 32, offset: 448)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3696, file: !94, line: 173, baseType: !3879, size: 64, offset: 512)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !94, line: 134, flags: DIFlagFwdDecl)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3696, file: !94, line: 175, baseType: !3695, size: 64, offset: 576)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3696, file: !94, line: 182, baseType: !3838, size: 64, offset: 640)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3696, file: !94, line: 183, baseType: !7, size: 32, offset: 704)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3696, file: !94, line: 184, baseType: !7, size: 32, offset: 736)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3696, file: !94, line: 185, baseType: !759, size: 128, offset: 768)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3696, file: !94, line: 186, baseType: !1193, size: 192, offset: 896)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3696, file: !94, line: 187, baseType: !3888, offset: 1088)
!3888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2358)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !228, file: !73, line: 499, baseType: !239, size: 128, offset: 4224)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !228, file: !73, line: 502, baseType: !3891, size: 64, offset: 4352)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3893)
!3893 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !228, file: !73, line: 504, baseType: !3895, size: 64, offset: 4416)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !228, file: !73, line: 505, baseType: !441, size: 64, offset: 4480)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !228, file: !73, line: 510, baseType: !441, size: 64, offset: 4544)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !228, file: !73, line: 511, baseType: !3899, size: 64, offset: 4608)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3901)
!3901 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !228, file: !73, line: 513, baseType: !3903, size: 64, offset: 4672)
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3905)
!3905 = !{!3906, !3907}
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3904, file: !73, line: 293, baseType: !7, size: 32)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3904, file: !73, line: 294, baseType: !344, size: 64, offset: 64)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !228, file: !73, line: 515, baseType: !239, size: 128, offset: 4736)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !228, file: !73, line: 526, baseType: !3910, offset: 4864)
!3910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3911, line: 5, elements: !266)
!3911 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !228, file: !73, line: 528, baseType: !3709, size: 64, offset: 4864)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !228, file: !73, line: 529, baseType: !3722, size: 64, offset: 4928)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !228, file: !73, line: 534, baseType: !533, size: 32, offset: 4992)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !228, file: !73, line: 535, baseType: !435, size: 32, offset: 5024)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !228, file: !73, line: 537, baseType: !252, offset: 5056)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !228, file: !73, line: 538, baseType: !239, size: 128, offset: 5056)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !228, file: !73, line: 540, baseType: !3919, size: 64, offset: 5184)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3921, line: 54, size: 960, elements: !3922)
!3921 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3922 = !{!3923, !3924, !3925, !3926, !3927, !3928, !3929, !3933, !3937, !3938, !3939, !3940, !3944, !3948, !3949}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3920, file: !3921, line: 55, baseType: !235, size: 64)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3920, file: !3921, line: 56, baseType: !213, size: 64, offset: 64)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3920, file: !3921, line: 58, baseType: !348, size: 64, offset: 128)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3920, file: !3921, line: 59, baseType: !348, size: 64, offset: 192)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3920, file: !3921, line: 60, baseType: !245, size: 64, offset: 256)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3920, file: !3921, line: 62, baseType: !3429, size: 64, offset: 320)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3920, file: !3921, line: 63, baseType: !3930, size: 64, offset: 384)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = !DISubroutineType(types: !3932)
!3932 = !{!294, !3416, !3436}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3920, file: !3921, line: 65, baseType: !3934, size: 64, offset: 448)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = !DISubroutineType(types: !3936)
!3936 = !{null, !3919}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3920, file: !3921, line: 66, baseType: !3438, size: 64, offset: 512)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3920, file: !3921, line: 68, baseType: !3447, size: 64, offset: 576)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3920, file: !3921, line: 70, baseType: !3232, size: 64, offset: 640)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3920, file: !3921, line: 71, baseType: !3941, size: 64, offset: 704)
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3942 = !DISubroutineType(types: !3943)
!3943 = !{!2154, !3416}
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3920, file: !3921, line: 73, baseType: !3945, size: 64, offset: 768)
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3946, size: 64)
!3946 = !DISubroutineType(types: !3947)
!3947 = !{null, !3416, !3264, !3265}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3920, file: !3921, line: 75, baseType: !3442, size: 64, offset: 832)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3920, file: !3921, line: 77, baseType: !3559, size: 64, offset: 896)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !228, file: !73, line: 541, baseType: !348, size: 64, offset: 5248)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !228, file: !73, line: 543, baseType: !3438, size: 64, offset: 5312)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !228, file: !73, line: 544, baseType: !3953, size: 64, offset: 5376)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !228, file: !73, line: 545, baseType: !3956, size: 64, offset: 5440)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !228, file: !73, line: 547, baseType: !510, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !228, file: !73, line: 548, baseType: !510, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !228, file: !73, line: 549, baseType: !510, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !228, file: !73, line: 550, baseType: !510, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !224, file: !225, line: 161, baseType: !3963, size: 64, offset: 5568)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spi_controller", file: !225, line: 466, size: 11072, elements: !3965)
!3965 = !{!3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3982, !3983, !3984, !3985, !3986, !3987, !3991, !4000, !4018, !4022, !4072, !4073, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4115, !4119, !4120, !4121, !4122, !4123, !4127, !4131, !4135, !4139, !4140, !4141, !4142, !4143, !4148, !4149, !4150, !4151, !4170, !4173, !4174, !4175, !4176, !4180, !4181}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3964, file: !225, line: 467, baseType: !228, size: 5568)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3964, file: !225, line: 469, baseType: !239, size: 128, offset: 5568)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "bus_num", scope: !3964, file: !225, line: 477, baseType: !1223, size: 16, offset: 5696)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "num_chipselect", scope: !3964, file: !225, line: 482, baseType: !879, size: 16, offset: 5712)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alignment", scope: !3964, file: !225, line: 487, baseType: !879, size: 16, offset: 5728)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "mode_bits", scope: !3964, file: !225, line: 490, baseType: !435, size: 32, offset: 5760)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "buswidth_override_bits", scope: !3964, file: !225, line: 493, baseType: !435, size: 32, offset: 5792)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_word_mask", scope: !3964, file: !225, line: 496, baseType: !435, size: 32, offset: 5824)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "min_speed_hz", scope: !3964, file: !225, line: 501, baseType: !435, size: 32, offset: 5856)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "max_speed_hz", scope: !3964, file: !225, line: 502, baseType: !435, size: 32, offset: 5888)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3964, file: !225, line: 505, baseType: !879, size: 16, offset: 5920)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "slave", scope: !3964, file: !225, line: 515, baseType: !510, size: 8, offset: 5936)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "max_transfer_size", scope: !3964, file: !225, line: 521, baseType: !3979, size: 64, offset: 5952)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = !DISubroutineType(types: !3981)
!3981 = !{!341, !223}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "max_message_size", scope: !3964, file: !225, line: 522, baseType: !3979, size: 64, offset: 6016)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "io_mutex", scope: !3964, file: !225, line: 525, baseType: !1193, size: 192, offset: 6080)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock_spinlock", scope: !3964, file: !225, line: 528, baseType: !252, offset: 6272)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock_mutex", scope: !3964, file: !225, line: 529, baseType: !1193, size: 192, offset: 6272)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock_flag", scope: !3964, file: !225, line: 532, baseType: !510, size: 8, offset: 6464)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3964, file: !225, line: 540, baseType: !3988, size: 64, offset: 6528)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{!278, !223}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "set_cs_timing", scope: !3964, file: !225, line: 550, baseType: !3992, size: 64, offset: 6592)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!278, !223, !3995, !3995, !3995}
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spi_delay", file: !225, line: 98, size: 32, elements: !3997)
!3997 = !{!3998, !3999}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3996, file: !225, line: 102, baseType: !879, size: 16)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "unit", scope: !3996, file: !225, line: 103, baseType: !1372, size: 8, offset: 16)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "transfer", scope: !3964, file: !225, line: 572, baseType: !4001, size: 64, offset: 6656)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!278, !223, !4004}
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spi_message", file: !225, line: 999, size: 832, elements: !4006)
!4006 = !{!4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017}
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "transfers", scope: !4005, file: !225, line: 1000, baseType: !239, size: 128)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "spi", scope: !4005, file: !225, line: 1002, baseType: !223, size: 64, offset: 128)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "is_dma_mapped", scope: !4005, file: !225, line: 1004, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4005, file: !225, line: 1018, baseType: !488, size: 64, offset: 256)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !4005, file: !225, line: 1019, baseType: !218, size: 64, offset: 320)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "frame_length", scope: !4005, file: !225, line: 1020, baseType: !7, size: 32, offset: 384)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !4005, file: !225, line: 1021, baseType: !7, size: 32, offset: 416)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4005, file: !225, line: 1022, baseType: !278, size: 32, offset: 448)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !4005, file: !225, line: 1028, baseType: !239, size: 128, offset: 512)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4005, file: !225, line: 1029, baseType: !218, size: 64, offset: 640)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4005, file: !225, line: 1032, baseType: !239, size: 128, offset: 704)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !3964, file: !225, line: 576, baseType: !4019, size: 64, offset: 6720)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DISubroutineType(types: !4021)
!4021 = !{null, !223}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "can_dma", scope: !3964, file: !225, line: 585, baseType: !4023, size: 64, offset: 6784)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{!510, !3963, !223, !4026}
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spi_transfer", file: !225, line: 926, size: 1152, elements: !4028)
!4028 = !{!4029, !4030, !4031, !4032, !4033, !4034, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4069, !4070, !4071}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "tx_buf", scope: !4027, file: !225, line: 932, baseType: !2154, size: 64)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "rx_buf", scope: !4027, file: !225, line: 933, baseType: !218, size: 64, offset: 64)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4027, file: !225, line: 934, baseType: !7, size: 32, offset: 128)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "tx_dma", scope: !4027, file: !225, line: 936, baseType: !940, size: 64, offset: 192)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "rx_dma", scope: !4027, file: !225, line: 937, baseType: !940, size: 64, offset: 256)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "tx_sg", scope: !4027, file: !225, line: 938, baseType: !4035, size: 128, offset: 320)
!4035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sg_table", file: !4036, line: 42, size: 128, elements: !4037)
!4036 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/lizy2001/genbc/linux")
!4037 = !{!4038, !4047, !4048}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "sgl", scope: !4035, file: !4036, line: 43, baseType: !4039, size: 64)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !4036, line: 11, size: 256, elements: !4041)
!4041 = !{!4042, !4043, !4044, !4045, !4046}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !4040, file: !4036, line: 12, baseType: !344, size: 64)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4040, file: !4036, line: 13, baseType: !7, size: 32, offset: 64)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4040, file: !4036, line: 14, baseType: !7, size: 32, offset: 96)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !4040, file: !4036, line: 15, baseType: !940, size: 64, offset: 128)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !4040, file: !4036, line: 17, baseType: !7, size: 32, offset: 192)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "nents", scope: !4035, file: !4036, line: 44, baseType: !7, size: 32, offset: 64)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "orig_nents", scope: !4035, file: !4036, line: 45, baseType: !7, size: 32, offset: 96)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "rx_sg", scope: !4027, file: !225, line: 939, baseType: !4035, size: 128, offset: 448)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "cs_change", scope: !4027, file: !225, line: 941, baseType: !7, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "tx_nbits", scope: !4027, file: !225, line: 942, baseType: !7, size: 3, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "rx_nbits", scope: !4027, file: !225, line: 943, baseType: !7, size: 3, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_word", scope: !4027, file: !225, line: 947, baseType: !1372, size: 8, offset: 584)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "delay_usecs", scope: !4027, file: !225, line: 948, baseType: !879, size: 16, offset: 592)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !4027, file: !225, line: 949, baseType: !3996, size: 32, offset: 608)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "cs_change_delay", scope: !4027, file: !225, line: 950, baseType: !3996, size: 32, offset: 640)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "word_delay", scope: !4027, file: !225, line: 951, baseType: !3996, size: 32, offset: 672)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "speed_hz", scope: !4027, file: !225, line: 952, baseType: !435, size: 32, offset: 704)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "effective_speed_hz", scope: !4027, file: !225, line: 954, baseType: !435, size: 32, offset: 736)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_sts_word_pre", scope: !4027, file: !225, line: 956, baseType: !7, size: 32, offset: 768)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_sts_word_post", scope: !4027, file: !225, line: 957, baseType: !7, size: 32, offset: 800)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_sts", scope: !4027, file: !225, line: 959, baseType: !4063, size: 64, offset: 832)
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_system_timestamp", file: !4065, line: 33, size: 256, elements: !4066)
!4065 = !DIFile(filename: "./include/linux/ptp_clock_kernel.h", directory: "/home/lizy2001/genbc/linux")
!4066 = !{!4067, !4068}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "pre_ts", scope: !4064, file: !4065, line: 34, baseType: !555, size: 128)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "post_ts", scope: !4064, file: !4065, line: 35, baseType: !555, size: 128, offset: 128)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "timestamped", scope: !4027, file: !225, line: 961, baseType: !510, size: 8, offset: 896)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_list", scope: !4027, file: !225, line: 963, baseType: !239, size: 128, offset: 960)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !4027, file: !225, line: 966, baseType: !879, size: 16, offset: 1088)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "queued", scope: !3964, file: !225, line: 595, baseType: !510, size: 8, offset: 6848)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "kworker", scope: !3964, file: !225, line: 596, baseType: !4074, size: 64, offset: 6912)
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kthread_worker", file: !4076, line: 89, size: 448, elements: !4077)
!4076 = !DIFile(filename: "./include/linux/kthread.h", directory: "/home/lizy2001/genbc/linux")
!4077 = !{!4078, !4079, !4080, !4081, !4082, !4083}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4075, file: !4076, line: 90, baseType: !7, size: 32)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4075, file: !4076, line: 91, baseType: !800, offset: 32)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !4075, file: !4076, line: 92, baseType: !239, size: 128, offset: 64)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_work_list", scope: !4075, file: !4076, line: 93, baseType: !239, size: 128, offset: 192)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4075, file: !4076, line: 94, baseType: !1236, size: 64, offset: 320)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "current_work", scope: !4075, file: !4076, line: 95, baseType: !4084, size: 64, offset: 384)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kthread_work", file: !4076, line: 98, size: 320, elements: !4086)
!4086 = !{!4087, !4088, !4093, !4094}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4085, file: !4076, line: 99, baseType: !239, size: 128)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4085, file: !4076, line: 100, baseType: !4089, size: 64, offset: 128)
!4089 = !DIDerivedType(tag: DW_TAG_typedef, name: "kthread_work_func_t", file: !4076, line: 82, baseType: !4090)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = !DISubroutineType(types: !4092)
!4092 = !{null, !4084}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !4085, file: !4076, line: 101, baseType: !4074, size: 64, offset: 192)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "canceling", scope: !4085, file: !4076, line: 103, baseType: !278, size: 32, offset: 256)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "pump_messages", scope: !3964, file: !225, line: 597, baseType: !4085, size: 320, offset: 6976)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "queue_lock", scope: !3964, file: !225, line: 598, baseType: !252, offset: 7296)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !3964, file: !225, line: 599, baseType: !239, size: 128, offset: 7296)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "cur_msg", scope: !3964, file: !225, line: 600, baseType: !4004, size: 64, offset: 7424)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "idling", scope: !3964, file: !225, line: 601, baseType: !510, size: 8, offset: 7488)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !3964, file: !225, line: 602, baseType: !510, size: 8, offset: 7496)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !3964, file: !225, line: 603, baseType: !510, size: 8, offset: 7504)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3964, file: !225, line: 604, baseType: !510, size: 8, offset: 7512)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "auto_runtime_pm", scope: !3964, file: !225, line: 605, baseType: !510, size: 8, offset: 7520)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "cur_msg_prepared", scope: !3964, file: !225, line: 606, baseType: !510, size: 8, offset: 7528)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "cur_msg_mapped", scope: !3964, file: !225, line: 607, baseType: !510, size: 8, offset: 7536)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "last_cs_enable", scope: !3964, file: !225, line: 608, baseType: !510, size: 8, offset: 7544)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "last_cs_mode_high", scope: !3964, file: !225, line: 609, baseType: !510, size: 8, offset: 7552)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "fallback", scope: !3964, file: !225, line: 610, baseType: !510, size: 8, offset: 7560)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "xfer_completion", scope: !3964, file: !225, line: 611, baseType: !1527, size: 192, offset: 7616)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "max_dma_len", scope: !3964, file: !225, line: 612, baseType: !341, size: 64, offset: 7808)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_transfer_hardware", scope: !3964, file: !225, line: 614, baseType: !4112, size: 64, offset: 7872)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = !DISubroutineType(types: !4114)
!4114 = !{!278, !3963}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_one_message", scope: !3964, file: !225, line: 615, baseType: !4116, size: 64, offset: 7936)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = !DISubroutineType(types: !4118)
!4118 = !{!278, !3963, !4004}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_transfer_hardware", scope: !3964, file: !225, line: 617, baseType: !4112, size: 64, offset: 8000)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_message", scope: !3964, file: !225, line: 618, baseType: !4116, size: 64, offset: 8064)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_message", scope: !3964, file: !225, line: 620, baseType: !4116, size: 64, offset: 8128)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "slave_abort", scope: !3964, file: !225, line: 622, baseType: !4112, size: 64, offset: 8192)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "set_cs", scope: !3964, file: !225, line: 628, baseType: !4124, size: 64, offset: 8256)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 64)
!4125 = !DISubroutineType(types: !4126)
!4126 = !{null, !223, !510}
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_one", scope: !3964, file: !225, line: 629, baseType: !4128, size: 64, offset: 8320)
!4128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4129, size: 64)
!4129 = !DISubroutineType(types: !4130)
!4130 = !{!278, !3963, !223, !4026}
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "handle_err", scope: !3964, file: !225, line: 631, baseType: !4132, size: 64, offset: 8384)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = !DISubroutineType(types: !4134)
!4134 = !{null, !3963, !4004}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "mem_ops", scope: !3964, file: !225, line: 635, baseType: !4136, size: 64, offset: 8448)
!4136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4137, size: 64)
!4137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4138)
!4138 = !DICompositeType(tag: DW_TAG_structure_type, name: "spi_controller_mem_ops", file: !225, line: 22, flags: DIFlagFwdDecl)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "cs_setup", scope: !3964, file: !225, line: 638, baseType: !3996, size: 32, offset: 8512)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "cs_hold", scope: !3964, file: !225, line: 639, baseType: !3996, size: 32, offset: 8544)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "cs_inactive", scope: !3964, file: !225, line: 640, baseType: !3996, size: 32, offset: 8576)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "cs_gpios", scope: !3964, file: !225, line: 643, baseType: !725, size: 64, offset: 8640)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "cs_gpiods", scope: !3964, file: !225, line: 644, baseType: !4144, size: 64, offset: 8704)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4146 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !4147, line: 631, flags: DIFlagFwdDecl)
!4147 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "use_gpio_descriptors", scope: !3964, file: !225, line: 645, baseType: !510, size: 8, offset: 8768)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "unused_native_cs", scope: !3964, file: !225, line: 646, baseType: !1372, size: 8, offset: 8776)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "max_native_cs", scope: !3964, file: !225, line: 647, baseType: !1372, size: 8, offset: 8784)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !3964, file: !225, line: 650, baseType: !4152, size: 1792, offset: 8832)
!4152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spi_statistics", file: !225, line: 56, size: 1792, elements: !4153)
!4153 = !{!4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4169}
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4152, file: !225, line: 57, baseType: !252)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "messages", scope: !4152, file: !225, line: 59, baseType: !344, size: 64)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "transfers", scope: !4152, file: !225, line: 60, baseType: !344, size: 64, offset: 64)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "errors", scope: !4152, file: !225, line: 61, baseType: !344, size: 64, offset: 128)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "timedout", scope: !4152, file: !225, line: 62, baseType: !344, size: 64, offset: 192)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "spi_sync", scope: !4152, file: !225, line: 64, baseType: !344, size: 64, offset: 256)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "spi_sync_immediate", scope: !4152, file: !225, line: 65, baseType: !344, size: 64, offset: 320)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "spi_async", scope: !4152, file: !225, line: 66, baseType: !344, size: 64, offset: 384)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !4152, file: !225, line: 68, baseType: !443, size: 64, offset: 448)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_rx", scope: !4152, file: !225, line: 69, baseType: !443, size: 64, offset: 512)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_tx", scope: !4152, file: !225, line: 70, baseType: !443, size: 64, offset: 576)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_bytes_histo", scope: !4152, file: !225, line: 73, baseType: !4166, size: 1088, offset: 640)
!4166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 1088, elements: !4167)
!4167 = !{!4168}
!4168 = !DISubrange(count: 17)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "transfers_split_maxsize", scope: !4152, file: !225, line: 75, baseType: !344, size: 64, offset: 1728)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "dma_tx", scope: !3964, file: !225, line: 653, baseType: !4171, size: 64, offset: 10624)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4172, size: 64)
!4172 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_chan", file: !225, line: 18, flags: DIFlagFwdDecl)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "dma_rx", scope: !3964, file: !225, line: 654, baseType: !4171, size: 64, offset: 10688)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "dummy_rx", scope: !3964, file: !225, line: 657, baseType: !218, size: 64, offset: 10752)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "dummy_tx", scope: !3964, file: !225, line: 658, baseType: !218, size: 64, offset: 10816)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "fw_translate_cs", scope: !3964, file: !225, line: 660, baseType: !4177, size: 64, offset: 10880)
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4178 = !DISubroutineType(types: !4179)
!4179 = !{!278, !3963, !7}
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_sts_supported", scope: !3964, file: !225, line: 666, baseType: !510, size: 8, offset: 10944)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags", scope: !3964, file: !225, line: 669, baseType: !344, size: 64, offset: 11008)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !224, file: !225, line: 162, baseType: !3963, size: 64, offset: 5632)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "max_speed_hz", scope: !224, file: !225, line: 163, baseType: !435, size: 32, offset: 5696)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "chip_select", scope: !224, file: !225, line: 164, baseType: !1372, size: 8, offset: 5728)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_word", scope: !224, file: !225, line: 165, baseType: !1372, size: 8, offset: 5736)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !224, file: !225, line: 166, baseType: !510, size: 8, offset: 5744)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !224, file: !225, line: 167, baseType: !435, size: 32, offset: 5760)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !224, file: !225, line: 188, baseType: !278, size: 32, offset: 5792)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "controller_state", scope: !224, file: !225, line: 189, baseType: !218, size: 64, offset: 5824)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "controller_data", scope: !224, file: !225, line: 190, baseType: !218, size: 64, offset: 5888)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "modalias", scope: !224, file: !225, line: 191, baseType: !2727, size: 256, offset: 5952)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !224, file: !225, line: 192, baseType: !235, size: 64, offset: 6208)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "cs_gpio", scope: !224, file: !225, line: 193, baseType: !278, size: 32, offset: 6272)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "cs_gpiod", scope: !224, file: !225, line: 194, baseType: !4145, size: 64, offset: 6336)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "word_delay", scope: !224, file: !225, line: 195, baseType: !3996, size: 32, offset: 6400)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !224, file: !225, line: 198, baseType: !4152, size: 1792, offset: 6464)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !220, file: !3, line: 32, baseType: !4198, size: 2560, offset: 64)
!4198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev", file: !169, line: 866, size: 2560, elements: !4199)
!4199 = !{!4200, !4412, !4413, !4414, !4415, !4416, !4993, !5659, !5681, !5682, !5683, !5684, !5685, !5686, !5687, !5688, !5689, !5690, !5715, !5743, !5744}
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "entity", scope: !4198, file: !169, line: 868, baseType: !4201, size: 1024)
!4201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_entity", file: !108, line: 290, size: 1024, elements: !4202)
!4202 = !{!4203, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4401, !4402, !4403, !4404}
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "graph_obj", scope: !4201, file: !108, line: 291, baseType: !4204, size: 256)
!4204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_gobj", file: !108, line: 57, size: 256, elements: !4205)
!4205 = !{!4206, !4370, !4371}
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "mdev", scope: !4204, file: !108, line: 58, baseType: !4207, size: 64)
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_device", file: !4209, line: 144, size: 5184, elements: !4210)
!4209 = !DIFile(filename: "./include/media/media-device.h", directory: "/home/lizy2001/genbc/linux")
!4210 = !{!4211, !4212, !4243, !4244, !4245, !4249, !4250, !4251, !4252, !4253, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4280, !4281, !4290, !4294, !4368, !4369}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4208, file: !4209, line: 146, baseType: !3416, size: 64)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4208, file: !4209, line: 147, baseType: !4213, size: 64, offset: 64)
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_devnode", file: !4215, line: 75, size: 6784, elements: !4216)
!4215 = !DIFile(filename: "./include/media/media-devnode.h", directory: "/home/lizy2001/genbc/linux")
!4216 = !{!4217, !4218, !4234, !4235, !4236, !4237, !4238, !4239}
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "media_dev", scope: !4214, file: !4215, line: 76, baseType: !4207, size: 64)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4214, file: !4215, line: 79, baseType: !4219, size: 64, offset: 64)
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4221)
!4221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_file_operations", file: !4215, line: 47, size: 512, elements: !4222)
!4222 = !{!4223, !4224, !4225, !4226, !4227, !4228, !4229, !4233}
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4221, file: !4215, line: 48, baseType: !213, size: 64)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4221, file: !4215, line: 49, baseType: !2900, size: 64, offset: 64)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4221, file: !4215, line: 50, baseType: !2905, size: 64, offset: 128)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4221, file: !4215, line: 51, baseType: !2929, size: 64, offset: 192)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !4221, file: !4215, line: 52, baseType: !2946, size: 64, offset: 256)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4221, file: !4215, line: 53, baseType: !2946, size: 64, offset: 320)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4221, file: !4215, line: 54, baseType: !4230, size: 64, offset: 384)
!4230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4231, size: 64)
!4231 = !DISubroutineType(types: !4232)
!4232 = !{!278, !372}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4221, file: !4215, line: 55, baseType: !4230, size: 64, offset: 448)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4214, file: !4215, line: 82, baseType: !228, size: 5568, offset: 128)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !4214, file: !4215, line: 83, baseType: !3139, size: 832, offset: 5696)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4214, file: !4215, line: 84, baseType: !3416, size: 64, offset: 6528)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4214, file: !4215, line: 87, baseType: !278, size: 32, offset: 6592)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4214, file: !4215, line: 88, baseType: !344, size: 64, offset: 6656)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4214, file: !4215, line: 91, baseType: !4240, size: 64, offset: 6720)
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4241, size: 64)
!4241 = !DISubroutineType(types: !4242)
!4242 = !{null, !4213}
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !4208, file: !4209, line: 149, baseType: !2727, size: 256, offset: 128)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !4208, file: !4209, line: 150, baseType: !2727, size: 256, offset: 384)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !4208, file: !4209, line: 151, baseType: !4246, size: 320, offset: 640)
!4246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 320, elements: !4247)
!4247 = !{!4248}
!4248 = !DISubrange(count: 40)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "bus_info", scope: !4208, file: !4209, line: 152, baseType: !2727, size: 256, offset: 960)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "hw_revision", scope: !4208, file: !4209, line: 153, baseType: !435, size: 32, offset: 1216)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "topology_version", scope: !4208, file: !4209, line: 155, baseType: !441, size: 64, offset: 1280)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4208, file: !4209, line: 157, baseType: !435, size: 32, offset: 1344)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "entity_internal_idx", scope: !4208, file: !4209, line: 158, baseType: !4254, size: 128, offset: 1408)
!4254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !3293, line: 244, size: 128, elements: !4255)
!4255 = !{!4256}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4254, file: !3293, line: 245, baseType: !759, size: 128)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "entity_internal_idx_max", scope: !4208, file: !4209, line: 159, baseType: !278, size: 32, offset: 1536)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !4208, file: !4209, line: 161, baseType: !239, size: 128, offset: 1600)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "interfaces", scope: !4208, file: !4209, line: 162, baseType: !239, size: 128, offset: 1728)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "pads", scope: !4208, file: !4209, line: 163, baseType: !239, size: 128, offset: 1856)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4208, file: !4209, line: 164, baseType: !239, size: 128, offset: 1984)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "entity_notify", scope: !4208, file: !4209, line: 167, baseType: !239, size: 128, offset: 2112)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "graph_mutex", scope: !4208, file: !4209, line: 170, baseType: !1193, size: 192, offset: 2240)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "pm_count_walk", scope: !4208, file: !4209, line: 171, baseType: !4265, size: 2240, offset: 2432)
!4265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_graph", file: !108, line: 88, size: 2240, elements: !4266)
!4266 = !{!4267, !4274, !4279}
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4265, file: !108, line: 92, baseType: !4268, size: 2048)
!4268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4269, size: 2048, elements: !1760)
!4269 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4265, file: !108, line: 89, size: 128, elements: !4270)
!4270 = !{!4271, !4273}
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "entity", scope: !4269, file: !108, line: 90, baseType: !4272, size: 64)
!4272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4269, file: !108, line: 91, baseType: !242, size: 64, offset: 64)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "ent_enum", scope: !4265, file: !108, line: 94, baseType: !4275, size: 128, offset: 2048)
!4275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_entity_enum", file: !108, line: 72, size: 128, elements: !4276)
!4276 = !{!4277, !4278}
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4275, file: !108, line: 73, baseType: !3849, size: 64)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "idx_max", scope: !4275, file: !108, line: 74, baseType: !278, size: 32, offset: 64)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !4265, file: !108, line: 95, baseType: !278, size: 32, offset: 2176)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "source_priv", scope: !4208, file: !4209, line: 173, baseType: !218, size: 64, offset: 4672)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "enable_source", scope: !4208, file: !4209, line: 174, baseType: !4282, size: 64, offset: 4736)
!4282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4283, size: 64)
!4283 = !DISubroutineType(types: !4284)
!4284 = !{!278, !4272, !4285}
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4286, size: 64)
!4286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_pipeline", file: !108, line: 104, size: 2304, elements: !4287)
!4287 = !{!4288, !4289}
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "streaming_count", scope: !4286, file: !108, line: 105, baseType: !278, size: 32)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "graph", scope: !4286, file: !108, line: 106, baseType: !4265, size: 2240, offset: 64)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "disable_source", scope: !4208, file: !4209, line: 176, baseType: !4291, size: 64, offset: 4800)
!4291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4292, size: 64)
!4292 = !DISubroutineType(types: !4293)
!4293 = !{null, !4272}
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4208, file: !4209, line: 178, baseType: !4295, size: 64, offset: 4864)
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4296, size: 64)
!4296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4297)
!4297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_device_ops", file: !4209, line: 65, size: 320, elements: !4298)
!4298 = !{!4299, !4339, !4359, !4363, !4367}
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "link_notify", scope: !4297, file: !4209, line: 66, baseType: !4300, size: 64)
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = !DISubroutineType(types: !4302)
!4302 = !{!278, !4303, !435, !7}
!4303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4304, size: 64)
!4304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_link", file: !108, line: 132, size: 704, elements: !4305)
!4305 = !{!4306, !4307, !4308, !4330, !4336, !4337, !4338}
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "graph_obj", scope: !4304, file: !108, line: 133, baseType: !4204, size: 256)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4304, file: !108, line: 134, baseType: !239, size: 128, offset: 256)
!4308 = !DIDerivedType(tag: DW_TAG_member, scope: !4304, file: !108, line: 135, baseType: !4309, size: 64, offset: 384)
!4309 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4304, file: !108, line: 135, size: 64, elements: !4310)
!4310 = !{!4311, !4313, !4322}
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "gobj0", scope: !4309, file: !108, line: 136, baseType: !4312, size: 64)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !4309, file: !108, line: 137, baseType: !4314, size: 64)
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_pad", file: !108, line: 189, size: 448, elements: !4316)
!4316 = !{!4317, !4318, !4319, !4320, !4321}
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "graph_obj", scope: !4315, file: !108, line: 190, baseType: !4204, size: 256)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "entity", scope: !4315, file: !108, line: 191, baseType: !4272, size: 64, offset: 256)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4315, file: !108, line: 192, baseType: !879, size: 16, offset: 320)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "sig_type", scope: !4315, file: !108, line: 193, baseType: !107, size: 32, offset: 352)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4315, file: !108, line: 194, baseType: !344, size: 64, offset: 384)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "intf", scope: !4309, file: !108, line: 138, baseType: !4323, size: 64)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_interface", file: !108, line: 336, size: 448, elements: !4325)
!4325 = !{!4326, !4327, !4328, !4329}
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "graph_obj", scope: !4324, file: !108, line: 337, baseType: !4204, size: 256)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4324, file: !108, line: 338, baseType: !239, size: 128, offset: 256)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4324, file: !108, line: 339, baseType: !435, size: 32, offset: 384)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4324, file: !108, line: 340, baseType: !435, size: 32, offset: 416)
!4330 = !DIDerivedType(tag: DW_TAG_member, scope: !4304, file: !108, line: 140, baseType: !4331, size: 64, offset: 448)
!4331 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4304, file: !108, line: 140, size: 64, elements: !4332)
!4332 = !{!4333, !4334, !4335}
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "gobj1", scope: !4331, file: !108, line: 141, baseType: !4312, size: 64)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "sink", scope: !4331, file: !108, line: 142, baseType: !4314, size: 64)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "entity", scope: !4331, file: !108, line: 143, baseType: !4272, size: 64)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !4304, file: !108, line: 145, baseType: !4303, size: 64, offset: 512)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4304, file: !108, line: 146, baseType: !344, size: 64, offset: 576)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "is_backlink", scope: !4304, file: !108, line: 147, baseType: !510, size: 8, offset: 640)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "req_alloc", scope: !4297, file: !4209, line: 68, baseType: !4340, size: 64, offset: 64)
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4341 = !DISubroutineType(types: !4342)
!4342 = !{!4343, !4207}
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4344, size: 64)
!4344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_request", file: !115, line: 62, size: 768, elements: !4345)
!4345 = !{!4346, !4347, !4348, !4352, !4353, !4354, !4355, !4356, !4357, !4358}
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "mdev", scope: !4344, file: !115, line: 63, baseType: !4207, size: 64)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !4344, file: !115, line: 64, baseType: !3406, size: 32, offset: 64)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "debug_str", scope: !4344, file: !115, line: 65, baseType: !4349, size: 216, offset: 96)
!4349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 216, elements: !4350)
!4350 = !{!4351}
!4351 = !DISubrange(count: 27)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4344, file: !115, line: 66, baseType: !114, size: 32, offset: 320)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "updating_count", scope: !4344, file: !115, line: 67, baseType: !7, size: 32, offset: 352)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "access_count", scope: !4344, file: !115, line: 68, baseType: !7, size: 32, offset: 384)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !4344, file: !115, line: 69, baseType: !239, size: 128, offset: 448)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "num_incomplete_objects", scope: !4344, file: !115, line: 70, baseType: !7, size: 32, offset: 576)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "poll_wait", scope: !4344, file: !115, line: 71, baseType: !1506, size: 128, offset: 640)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4344, file: !115, line: 72, baseType: !252, offset: 768)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "req_free", scope: !4297, file: !4209, line: 69, baseType: !4360, size: 64, offset: 128)
!4360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4361, size: 64)
!4361 = !DISubroutineType(types: !4362)
!4362 = !{null, !4343}
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "req_validate", scope: !4297, file: !4209, line: 70, baseType: !4364, size: 64, offset: 192)
!4364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4365, size: 64)
!4365 = !DISubroutineType(types: !4366)
!4366 = !{!278, !4343}
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "req_queue", scope: !4297, file: !4209, line: 71, baseType: !4360, size: 64, offset: 256)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "req_queue_mutex", scope: !4208, file: !4209, line: 180, baseType: !1193, size: 192, offset: 4928)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "request_id", scope: !4208, file: !4209, line: 181, baseType: !767, size: 32, offset: 5120)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4204, file: !108, line: 59, baseType: !435, size: 32, offset: 64)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4204, file: !108, line: 60, baseType: !239, size: 128, offset: 128)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4201, file: !108, line: 292, baseType: !235, size: 64, offset: 256)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "obj_type", scope: !4201, file: !108, line: 293, baseType: !124, size: 32, offset: 320)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !4201, file: !108, line: 294, baseType: !435, size: 32, offset: 352)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4201, file: !108, line: 295, baseType: !344, size: 64, offset: 384)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "num_pads", scope: !4201, file: !108, line: 297, baseType: !879, size: 16, offset: 448)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "num_links", scope: !4201, file: !108, line: 298, baseType: !879, size: 16, offset: 464)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "num_backlinks", scope: !4201, file: !108, line: 299, baseType: !879, size: 16, offset: 480)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "internal_idx", scope: !4201, file: !108, line: 300, baseType: !278, size: 32, offset: 512)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "pads", scope: !4201, file: !108, line: 302, baseType: !4314, size: 64, offset: 576)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4201, file: !108, line: 303, baseType: !239, size: 128, offset: 640)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4201, file: !108, line: 305, baseType: !4383, size: 64, offset: 768)
!4383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4384, size: 64)
!4384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4385)
!4385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_entity_operations", file: !108, line: 214, size: 192, elements: !4386)
!4386 = !{!4387, !4391, !4397}
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "get_fwnode_pad", scope: !4385, file: !108, line: 215, baseType: !4388, size: 64)
!4388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4389, size: 64)
!4389 = !DISubroutineType(types: !4390)
!4390 = !{!278, !4272, !3796}
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "link_setup", scope: !4385, file: !108, line: 217, baseType: !4392, size: 64, offset: 64)
!4392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4393, size: 64)
!4393 = !DISubroutineType(types: !4394)
!4394 = !{!278, !4272, !4395, !4395, !435}
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4396, size: 64)
!4396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4315)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "link_validate", scope: !4385, file: !108, line: 220, baseType: !4398, size: 64, offset: 128)
!4398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4399, size: 64)
!4399 = !DISubroutineType(types: !4400)
!4400 = !{!278, !4303}
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "stream_count", scope: !4201, file: !108, line: 307, baseType: !278, size: 32, offset: 832)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !4201, file: !108, line: 308, baseType: !278, size: 32, offset: 864)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !4201, file: !108, line: 310, baseType: !4285, size: 64, offset: 896)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4201, file: !108, line: 317, baseType: !4405, size: 64, offset: 960)
!4405 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4201, file: !108, line: 312, size: 64, elements: !4406)
!4406 = !{!4407}
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4405, file: !108, line: 316, baseType: !4408, size: 64)
!4408 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4405, file: !108, line: 313, size: 64, elements: !4409)
!4409 = !{!4410, !4411}
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !4408, file: !108, line: 314, baseType: !435, size: 32)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4408, file: !108, line: 315, baseType: !435, size: 32, offset: 32)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4198, file: !169, line: 870, baseType: !239, size: 128, offset: 1024)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4198, file: !169, line: 871, baseType: !213, size: 64, offset: 1152)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "owner_v4l2_dev", scope: !4198, file: !169, line: 872, baseType: !510, size: 8, offset: 1216)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4198, file: !169, line: 873, baseType: !435, size: 32, offset: 1248)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "v4l2_dev", scope: !4198, file: !169, line: 874, baseType: !4417, size: 64, offset: 1280)
!4417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4418, size: 64)
!4418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_device", file: !4419, line: 47, size: 960, elements: !4420)
!4419 = !DIFile(filename: "./include/media/v4l2-device.h", directory: "/home/lizy2001/genbc/linux")
!4420 = !{!4421, !4422, !4423, !4424, !4425, !4429, !4434, !4983, !4988, !4989}
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4418, file: !4419, line: 48, baseType: !3416, size: 64)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "mdev", scope: !4418, file: !4419, line: 49, baseType: !4207, size: 64, offset: 64)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "subdevs", scope: !4418, file: !4419, line: 50, baseType: !239, size: 128, offset: 128)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4418, file: !4419, line: 51, baseType: !252, offset: 256)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4418, file: !4419, line: 52, baseType: !4426, size: 288, offset: 256)
!4426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 288, elements: !4427)
!4427 = !{!4428}
!4428 = !DISubrange(count: 36)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !4418, file: !4419, line: 53, baseType: !4430, size: 64, offset: 576)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = !DISubroutineType(types: !4432)
!4432 = !{null, !4433, !7, !218}
!4433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl_handler", scope: !4418, file: !4419, line: 55, baseType: !4435, size: 64, offset: 640)
!4435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4436, size: 64)
!4436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_ctrl_handler", file: !4437, line: 361, size: 1536, elements: !4438)
!4437 = !DIFile(filename: "./include/media/v4l2-ctrls.h", directory: "/home/lizy2001/genbc/linux")
!4438 = !{!4439, !4440, !4442, !4443, !4444, !4945, !4947, !4952, !4953, !4954, !4955, !4956, !4957, !4958}
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4436, file: !4437, line: 362, baseType: !1193, size: 192)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4436, file: !4437, line: 363, baseType: !4441, size: 64, offset: 192)
!4441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "ctrls", scope: !4436, file: !4437, line: 364, baseType: !239, size: 128, offset: 256)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl_refs", scope: !4436, file: !4437, line: 365, baseType: !239, size: 128, offset: 384)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "cached", scope: !4436, file: !4437, line: 366, baseType: !4445, size: 64, offset: 512)
!4445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4446, size: 64)
!4446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_ctrl_ref", file: !4437, line: 317, size: 512, elements: !4447)
!4447 = !{!4448, !4449, !4450, !4938, !4941, !4942, !4943, !4944}
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4446, file: !4437, line: 318, baseType: !239, size: 128)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4446, file: !4437, line: 319, baseType: !4445, size: 64, offset: 128)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !4446, file: !4437, line: 320, baseType: !4451, size: 64, offset: 192)
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4452, size: 64)
!4452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_ctrl", file: !4437, line: 239, size: 1728, elements: !4453)
!4453 = !{!4454, !4455, !4456, !4457, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4483, !4903, !4904, !4905, !4906, !4907, !4908, !4909, !4910, !4911, !4913, !4914, !4919, !4928, !4929, !4930, !4931, !4935, !4936, !4937}
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4452, file: !4437, line: 241, baseType: !239, size: 128)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "ev_subs", scope: !4452, file: !4437, line: 242, baseType: !239, size: 128, offset: 128)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4452, file: !4437, line: 243, baseType: !4435, size: 64, offset: 256)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "cluster", scope: !4452, file: !4437, line: 244, baseType: !4458, size: 64, offset: 320)
!4458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4451, size: 64)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "ncontrols", scope: !4452, file: !4437, line: 245, baseType: !7, size: 32, offset: 384)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !4452, file: !4437, line: 247, baseType: !7, size: 1, offset: 416, flags: DIFlagBitField, extraData: i64 416)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "is_new", scope: !4452, file: !4437, line: 249, baseType: !7, size: 1, offset: 417, flags: DIFlagBitField, extraData: i64 416)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "has_changed", scope: !4452, file: !4437, line: 250, baseType: !7, size: 1, offset: 418, flags: DIFlagBitField, extraData: i64 416)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "is_private", scope: !4452, file: !4437, line: 251, baseType: !7, size: 1, offset: 419, flags: DIFlagBitField, extraData: i64 416)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "is_auto", scope: !4452, file: !4437, line: 252, baseType: !7, size: 1, offset: 420, flags: DIFlagBitField, extraData: i64 416)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "is_int", scope: !4452, file: !4437, line: 253, baseType: !7, size: 1, offset: 421, flags: DIFlagBitField, extraData: i64 416)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "is_string", scope: !4452, file: !4437, line: 254, baseType: !7, size: 1, offset: 422, flags: DIFlagBitField, extraData: i64 416)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "is_ptr", scope: !4452, file: !4437, line: 255, baseType: !7, size: 1, offset: 423, flags: DIFlagBitField, extraData: i64 416)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "is_array", scope: !4452, file: !4437, line: 256, baseType: !7, size: 1, offset: 424, flags: DIFlagBitField, extraData: i64 416)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatiles", scope: !4452, file: !4437, line: 257, baseType: !7, size: 1, offset: 425, flags: DIFlagBitField, extraData: i64 416)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "call_notify", scope: !4452, file: !4437, line: 258, baseType: !7, size: 1, offset: 426, flags: DIFlagBitField, extraData: i64 416)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "manual_mode_value", scope: !4452, file: !4437, line: 259, baseType: !7, size: 8, offset: 427, flags: DIFlagBitField, extraData: i64 416)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4452, file: !4437, line: 261, baseType: !4473, size: 64, offset: 448)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4475)
!4475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_ctrl_ops", file: !4437, line: 114, size: 192, elements: !4476)
!4476 = !{!4477, !4481, !4482}
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "g_volatile_ctrl", scope: !4475, file: !4437, line: 115, baseType: !4478, size: 64)
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = !DISubroutineType(types: !4480)
!4480 = !{!278, !4451}
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "try_ctrl", scope: !4475, file: !4437, line: 116, baseType: !4478, size: 64, offset: 64)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "s_ctrl", scope: !4475, file: !4437, line: 117, baseType: !4478, size: 64, offset: 128)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "type_ops", scope: !4452, file: !4437, line: 262, baseType: !4484, size: 64, offset: 512)
!4484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4485, size: 64)
!4485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4486)
!4486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_ctrl_type_ops", file: !4437, line: 130, size: 256, elements: !4487)
!4487 = !{!4488, !4891, !4895, !4899}
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "equal", scope: !4486, file: !4437, line: 131, baseType: !4489, size: 64)
!4489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4490, size: 64)
!4490 = !DISubroutineType(types: !4491)
!4491 = !{!510, !4492, !435, !4494, !4494}
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4493, size: 64)
!4493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4452)
!4494 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "v4l2_ctrl_ptr", file: !4437, line: 63, size: 64, elements: !4495)
!4495 = !{!4496, !4498, !4500, !4502, !4504, !4505, !4506, !4542, !4555, !4569, !4595, !4612, !4622, !4648, !4681, !4698, !4772, !4800, !4822, !4883, !4889, !4890}
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "p_s32", scope: !4494, file: !4437, line: 64, baseType: !4497, size: 64)
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "p_s64", scope: !4494, file: !4437, line: 65, baseType: !4499, size: 64)
!4499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "p_u8", scope: !4494, file: !4437, line: 66, baseType: !4501, size: 64)
!4501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "p_u16", scope: !4494, file: !4437, line: 67, baseType: !4503, size: 64)
!4503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "p_u32", scope: !4494, file: !4437, line: 68, baseType: !1435, size: 64)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "p_char", scope: !4494, file: !4437, line: 69, baseType: !294, size: 64)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "p_mpeg2_slice_params", scope: !4494, file: !4437, line: 70, baseType: !4507, size: 64)
!4507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4508, size: 64)
!4508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_ctrl_mpeg2_slice_params", file: !4509, line: 56, size: 448, elements: !4510)
!4509 = !DIFile(filename: "./include/media/mpeg2-ctrls.h", directory: "/home/lizy2001/genbc/linux")
!4510 = !{!4511, !4512, !4513, !4514, !4515, !4524, !4541}
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "bit_size", scope: !4508, file: !4509, line: 57, baseType: !437, size: 32)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "data_bit_offset", scope: !4508, file: !4509, line: 58, baseType: !437, size: 32, offset: 32)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "backward_ref_ts", scope: !4508, file: !4509, line: 59, baseType: !442, size: 64, offset: 64)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "forward_ref_ts", scope: !4508, file: !4509, line: 60, baseType: !442, size: 64, offset: 128)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !4508, file: !4509, line: 62, baseType: !4516, size: 96, offset: 192)
!4516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_mpeg2_sequence", file: !4509, line: 26, size: 96, elements: !4517)
!4517 = !{!4518, !4519, !4520, !4521, !4522, !4523}
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_size", scope: !4516, file: !4509, line: 28, baseType: !880, size: 16)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_size", scope: !4516, file: !4509, line: 29, baseType: !880, size: 16, offset: 16)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "vbv_buffer_size", scope: !4516, file: !4509, line: 30, baseType: !437, size: 32, offset: 32)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "profile_and_level_indication", scope: !4516, file: !4509, line: 33, baseType: !880, size: 16, offset: 64)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "progressive_sequence", scope: !4516, file: !4509, line: 34, baseType: !1373, size: 8, offset: 80)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format", scope: !4516, file: !4509, line: 35, baseType: !1373, size: 8, offset: 88)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "picture", scope: !4508, file: !4509, line: 63, baseType: !4525, size: 128, offset: 288)
!4525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_mpeg2_picture", file: !4509, line: 38, size: 128, elements: !4526)
!4526 = !{!4527, !4528, !4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540}
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "picture_coding_type", scope: !4525, file: !4509, line: 40, baseType: !1373, size: 8)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "f_code", scope: !4525, file: !4509, line: 43, baseType: !4529, size: 32, offset: 8)
!4529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1373, size: 32, elements: !4530)
!4530 = !{!1595, !1595}
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "intra_dc_precision", scope: !4525, file: !4509, line: 44, baseType: !1373, size: 8, offset: 40)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "picture_structure", scope: !4525, file: !4509, line: 45, baseType: !1373, size: 8, offset: 48)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "top_field_first", scope: !4525, file: !4509, line: 46, baseType: !1373, size: 8, offset: 56)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "frame_pred_frame_dct", scope: !4525, file: !4509, line: 47, baseType: !1373, size: 8, offset: 64)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_motion_vectors", scope: !4525, file: !4509, line: 48, baseType: !1373, size: 8, offset: 72)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "q_scale_type", scope: !4525, file: !4509, line: 49, baseType: !1373, size: 8, offset: 80)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "intra_vlc_format", scope: !4525, file: !4509, line: 50, baseType: !1373, size: 8, offset: 88)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_scan", scope: !4525, file: !4509, line: 51, baseType: !1373, size: 8, offset: 96)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_first_field", scope: !4525, file: !4509, line: 52, baseType: !1373, size: 8, offset: 104)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "progressive_frame", scope: !4525, file: !4509, line: 53, baseType: !880, size: 16, offset: 112)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "quantiser_scale_code", scope: !4508, file: !4509, line: 66, baseType: !437, size: 32, offset: 416)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "p_mpeg2_quantization", scope: !4494, file: !4437, line: 71, baseType: !4543, size: 64)
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4544, size: 64)
!4544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_ctrl_mpeg2_quantization", file: !4509, line: 69, size: 2080, elements: !4545)
!4545 = !{!4546, !4547, !4548, !4549, !4550, !4552, !4553, !4554}
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "load_intra_quantiser_matrix", scope: !4544, file: !4509, line: 71, baseType: !1373, size: 8)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "load_non_intra_quantiser_matrix", scope: !4544, file: !4509, line: 72, baseType: !1373, size: 8, offset: 8)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "load_chroma_intra_quantiser_matrix", scope: !4544, file: !4509, line: 73, baseType: !1373, size: 8, offset: 16)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "load_chroma_non_intra_quantiser_matrix", scope: !4544, file: !4509, line: 74, baseType: !1373, size: 8, offset: 24)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "intra_quantiser_matrix", scope: !4544, file: !4509, line: 76, baseType: !4551, size: 512, offset: 32)
!4551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1373, size: 512, elements: !299)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "non_intra_quantiser_matrix", scope: !4544, file: !4509, line: 77, baseType: !4551, size: 512, offset: 544)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_intra_quantiser_matrix", scope: !4544, file: !4509, line: 78, baseType: !4551, size: 512, offset: 1056)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_non_intra_quantiser_matrix", scope: !4544, file: !4509, line: 79, baseType: !4551, size: 512, offset: 1568)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "p_fwht_params", scope: !4494, file: !4437, line: 72, baseType: !4556, size: 64)
!4556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4557, size: 64)
!4557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_ctrl_fwht_params", file: !4558, line: 18, size: 320, elements: !4559)
!4558 = !DIFile(filename: "./include/media/fwht-ctrls.h", directory: "/home/lizy2001/genbc/linux")
!4559 = !{!4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4568}
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "backward_ref_ts", scope: !4557, file: !4558, line: 19, baseType: !442, size: 64)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4557, file: !4558, line: 20, baseType: !437, size: 32, offset: 64)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4557, file: !4558, line: 21, baseType: !437, size: 32, offset: 96)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4557, file: !4558, line: 22, baseType: !437, size: 32, offset: 128)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4557, file: !4558, line: 23, baseType: !437, size: 32, offset: 160)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !4557, file: !4558, line: 24, baseType: !437, size: 32, offset: 192)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "xfer_func", scope: !4557, file: !4558, line: 25, baseType: !437, size: 32, offset: 224)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "ycbcr_enc", scope: !4557, file: !4558, line: 26, baseType: !437, size: 32, offset: 256)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "quantization", scope: !4557, file: !4558, line: 27, baseType: !437, size: 32, offset: 288)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "p_h264_sps", scope: !4494, file: !4437, line: 73, baseType: !4570, size: 64)
!4570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4571, size: 64)
!4571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_ctrl_h264_sps", file: !4572, line: 74, size: 8384, elements: !4573)
!4572 = !DIFile(filename: "./include/media/h264-ctrls.h", directory: "/home/lizy2001/genbc/linux")
!4573 = !{!4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4590, !4591, !4592, !4593, !4594}
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !4571, file: !4572, line: 75, baseType: !1373, size: 8)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "constraint_set_flags", scope: !4571, file: !4572, line: 76, baseType: !1373, size: 8, offset: 8)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !4571, file: !4572, line: 77, baseType: !1373, size: 8, offset: 16)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !4571, file: !4572, line: 78, baseType: !1373, size: 8, offset: 24)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !4571, file: !4572, line: 79, baseType: !1373, size: 8, offset: 32)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_luma_minus8", scope: !4571, file: !4572, line: 80, baseType: !1373, size: 8, offset: 40)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_chroma_minus8", scope: !4571, file: !4572, line: 81, baseType: !1373, size: 8, offset: 48)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_frame_num_minus4", scope: !4571, file: !4572, line: 82, baseType: !1373, size: 8, offset: 56)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_type", scope: !4571, file: !4572, line: 83, baseType: !1373, size: 8, offset: 64)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_pic_order_cnt_lsb_minus4", scope: !4571, file: !4572, line: 84, baseType: !1373, size: 8, offset: 72)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_ref_frames", scope: !4571, file: !4572, line: 85, baseType: !1373, size: 8, offset: 80)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames_in_pic_order_cnt_cycle", scope: !4571, file: !4572, line: 86, baseType: !1373, size: 8, offset: 88)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_ref_frame", scope: !4571, file: !4572, line: 87, baseType: !4587, size: 8160, offset: 96)
!4587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1465, size: 8160, elements: !4588)
!4588 = !{!4589}
!4589 = !DISubrange(count: 255)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_non_ref_pic", scope: !4571, file: !4572, line: 88, baseType: !1465, size: 32, offset: 8256)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_top_to_bottom_field", scope: !4571, file: !4572, line: 89, baseType: !1465, size: 32, offset: 8288)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "pic_width_in_mbs_minus1", scope: !4571, file: !4572, line: 90, baseType: !880, size: 16, offset: 8320)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "pic_height_in_map_units_minus1", scope: !4571, file: !4572, line: 91, baseType: !880, size: 16, offset: 8336)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4571, file: !4572, line: 92, baseType: !437, size: 32, offset: 8352)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "p_h264_pps", scope: !4494, file: !4437, line: 74, baseType: !4596, size: 64)
!4596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4597, size: 64)
!4597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_ctrl_h264_pps", file: !4572, line: 104, size: 96, elements: !4598)
!4598 = !{!4599, !4600, !4601, !4602, !4603, !4604, !4605, !4608, !4609, !4610, !4611}
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !4597, file: !4572, line: 105, baseType: !1373, size: 8)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !4597, file: !4572, line: 106, baseType: !1373, size: 8, offset: 8)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "num_slice_groups_minus1", scope: !4597, file: !4572, line: 107, baseType: !1373, size: 8, offset: 16)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l0_default_active_minus1", scope: !4597, file: !4572, line: 108, baseType: !1373, size: 8, offset: 24)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l1_default_active_minus1", scope: !4597, file: !4572, line: 109, baseType: !1373, size: 8, offset: 32)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !4597, file: !4572, line: 110, baseType: !1373, size: 8, offset: 40)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qp_minus26", scope: !4597, file: !4572, line: 111, baseType: !4606, size: 8, offset: 48)
!4606 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !438, line: 20, baseType: !4607)
!4607 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qs_minus26", scope: !4597, file: !4572, line: 112, baseType: !4606, size: 8, offset: 56)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_index_offset", scope: !4597, file: !4572, line: 113, baseType: !4606, size: 8, offset: 64)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "second_chroma_qp_index_offset", scope: !4597, file: !4572, line: 114, baseType: !4606, size: 8, offset: 72)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4597, file: !4572, line: 115, baseType: !880, size: 16, offset: 80)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "p_h264_scaling_matrix", scope: !4494, file: !4437, line: 75, baseType: !4613, size: 64)
!4613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4614, size: 64)
!4614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_ctrl_h264_scaling_matrix", file: !4572, line: 118, size: 3840, elements: !4615)
!4615 = !{!4616, !4619}
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_list_4x4", scope: !4614, file: !4572, line: 119, baseType: !4617, size: 768)
!4617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1373, size: 768, elements: !4618)
!4618 = !{!1651, !1761}
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_list_8x8", scope: !4614, file: !4572, line: 120, baseType: !4620, size: 3072, offset: 768)
!4620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1373, size: 3072, elements: !4621)
!4621 = !{!1651, !300}
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "p_h264_slice_params", scope: !4494, file: !4437, line: 76, baseType: !4623, size: 64)
!4623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4624, size: 64)
!4624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_ctrl_h264_slice_params", file: !4572, line: 163, size: 1216, elements: !4625)
!4625 = !{!4626, !4627, !4628, !4629, !4630, !4631, !4632, !4633, !4634, !4635, !4636, !4637, !4638, !4639, !4640, !4646, !4647}
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "header_bit_size", scope: !4624, file: !4572, line: 165, baseType: !437, size: 32)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "first_mb_in_slice", scope: !4624, file: !4572, line: 167, baseType: !437, size: 32, offset: 32)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !4624, file: !4572, line: 169, baseType: !1373, size: 8, offset: 64)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "colour_plane_id", scope: !4624, file: !4572, line: 170, baseType: !1373, size: 8, offset: 72)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt", scope: !4624, file: !4572, line: 171, baseType: !1373, size: 8, offset: 80)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "cabac_init_idc", scope: !4624, file: !4572, line: 172, baseType: !1373, size: 8, offset: 88)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp_delta", scope: !4624, file: !4572, line: 173, baseType: !4606, size: 8, offset: 96)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qs_delta", scope: !4624, file: !4572, line: 174, baseType: !4606, size: 8, offset: 104)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "disable_deblocking_filter_idc", scope: !4624, file: !4572, line: 175, baseType: !1373, size: 8, offset: 112)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "slice_alpha_c0_offset_div2", scope: !4624, file: !4572, line: 176, baseType: !4606, size: 8, offset: 120)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "slice_beta_offset_div2", scope: !4624, file: !4572, line: 177, baseType: !4606, size: 8, offset: 128)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l0_active_minus1", scope: !4624, file: !4572, line: 178, baseType: !1373, size: 8, offset: 136)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l1_active_minus1", scope: !4624, file: !4572, line: 179, baseType: !1373, size: 8, offset: 144)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4624, file: !4572, line: 181, baseType: !1373, size: 8, offset: 152)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list0", scope: !4624, file: !4572, line: 183, baseType: !4641, size: 512, offset: 160)
!4641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4642, size: 512, elements: !2257)
!4642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_h264_reference", file: !4572, line: 156, size: 16, elements: !4643)
!4643 = !{!4644, !4645}
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !4642, file: !4572, line: 157, baseType: !1373, size: 8)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4642, file: !4572, line: 160, baseType: !1373, size: 8, offset: 8)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list1", scope: !4624, file: !4572, line: 184, baseType: !4641, size: 512, offset: 672)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4624, file: !4572, line: 186, baseType: !437, size: 32, offset: 1184)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "p_h264_decode_params", scope: !4494, file: !4437, line: 77, baseType: !4649, size: 64)
!4649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4650, size: 64)
!4650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_ctrl_h264_decode_params", file: !4572, line: 210, size: 4480, elements: !4651)
!4651 = !{!4652, !4667, !4668, !4669, !4670, !4671, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4679, !4680}
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "dpb", scope: !4650, file: !4572, line: 211, baseType: !4653, size: 4096)
!4653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4654, size: 4096, elements: !1760)
!4654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_h264_dpb_entry", file: !4572, line: 194, size: 256, elements: !4655)
!4655 = !{!4656, !4657, !4658, !4659, !4660, !4664, !4665, !4666}
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "reference_ts", scope: !4654, file: !4572, line: 195, baseType: !442, size: 64)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "pic_num", scope: !4654, file: !4572, line: 196, baseType: !437, size: 32, offset: 64)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !4654, file: !4572, line: 197, baseType: !880, size: 16, offset: 96)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !4654, file: !4572, line: 198, baseType: !1373, size: 8, offset: 112)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4654, file: !4572, line: 199, baseType: !4661, size: 40, offset: 120)
!4661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1373, size: 40, elements: !4662)
!4662 = !{!4663}
!4663 = !DISubrange(count: 5)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "top_field_order_cnt", scope: !4654, file: !4572, line: 201, baseType: !1465, size: 32, offset: 160)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_order_cnt", scope: !4654, file: !4572, line: 202, baseType: !1465, size: 32, offset: 192)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4654, file: !4572, line: 203, baseType: !437, size: 32, offset: 224)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "nal_ref_idc", scope: !4650, file: !4572, line: 212, baseType: !880, size: 16, offset: 4096)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !4650, file: !4572, line: 213, baseType: !880, size: 16, offset: 4112)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "top_field_order_cnt", scope: !4650, file: !4572, line: 214, baseType: !1465, size: 32, offset: 4128)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_order_cnt", scope: !4650, file: !4572, line: 215, baseType: !1465, size: 32, offset: 4160)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "idr_pic_id", scope: !4650, file: !4572, line: 216, baseType: !880, size: 16, offset: 4192)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_lsb", scope: !4650, file: !4572, line: 217, baseType: !880, size: 16, offset: 4208)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt_bottom", scope: !4650, file: !4572, line: 218, baseType: !1465, size: 32, offset: 4224)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt0", scope: !4650, file: !4572, line: 219, baseType: !1465, size: 32, offset: 4256)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt1", scope: !4650, file: !4572, line: 220, baseType: !1465, size: 32, offset: 4288)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "dec_ref_pic_marking_bit_size", scope: !4650, file: !4572, line: 222, baseType: !437, size: 32, offset: 4320)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_bit_size", scope: !4650, file: !4572, line: 224, baseType: !437, size: 32, offset: 4352)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_cycle", scope: !4650, file: !4572, line: 225, baseType: !437, size: 32, offset: 4384)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4650, file: !4572, line: 227, baseType: !437, size: 32, offset: 4416)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4650, file: !4572, line: 228, baseType: !437, size: 32, offset: 4448)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "p_h264_pred_weights", scope: !4494, file: !4437, line: 78, baseType: !4682, size: 64)
!4682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4683, size: 64)
!4683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_ctrl_h264_pred_weights", file: !4572, line: 137, size: 6176, elements: !4684)
!4684 = !{!4685, !4686, !4687}
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "luma_log2_weight_denom", scope: !4683, file: !4572, line: 138, baseType: !880, size: 16)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_log2_weight_denom", scope: !4683, file: !4572, line: 139, baseType: !880, size: 16, offset: 16)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "weight_factors", scope: !4683, file: !4572, line: 140, baseType: !4688, size: 6144, offset: 32)
!4688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4689, size: 6144, elements: !1594)
!4689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_h264_weight_factors", file: !4572, line: 123, size: 3072, elements: !4690)
!4690 = !{!4691, !4693, !4694, !4697}
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "luma_weight", scope: !4689, file: !4572, line: 124, baseType: !4692, size: 512)
!4692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1224, size: 512, elements: !2257)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "luma_offset", scope: !4689, file: !4572, line: 125, baseType: !4692, size: 512, offset: 512)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_weight", scope: !4689, file: !4572, line: 126, baseType: !4695, size: 1024, offset: 1024)
!4695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1224, size: 1024, elements: !4696)
!4696 = !{!2258, !1595}
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_offset", scope: !4689, file: !4572, line: 127, baseType: !4695, size: 1024, offset: 2048)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "p_vp8_frame_header", scope: !4494, file: !4437, line: 79, baseType: !4699, size: 64)
!4699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4700, size: 64)
!4700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_ctrl_vp8_frame_header", file: !4701, line: 81, size: 9856, elements: !4702)
!4701 = !DIFile(filename: "./include/media/vp8-ctrls.h", directory: "/home/lizy2001/genbc/linux")
!4702 = !{!4703, !4713, !4722, !4732, !4747, !4754, !4755, !4756, !4757, !4758, !4759, !4760, !4761, !4762, !4763, !4764, !4765, !4766, !4768, !4769, !4770, !4771}
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "segment_header", scope: !4700, file: !4701, line: 82, baseType: !4704, size: 128)
!4704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_vp8_segment_header", file: !4701, line: 26, size: 128, elements: !4705)
!4705 = !{!4706, !4708, !4709, !4711, !4712}
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "quant_update", scope: !4704, file: !4701, line: 27, baseType: !4707, size: 32)
!4707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4606, size: 32, elements: !1175)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "lf_update", scope: !4704, file: !4701, line: 28, baseType: !4707, size: 32, offset: 32)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "segment_probs", scope: !4704, file: !4701, line: 29, baseType: !4710, size: 24, offset: 64)
!4710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1373, size: 24, elements: !295)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4704, file: !4701, line: 30, baseType: !1373, size: 8, offset: 88)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4704, file: !4701, line: 31, baseType: !437, size: 32, offset: 96)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "lf_header", scope: !4700, file: !4701, line: 83, baseType: !4714, size: 128, offset: 128)
!4714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_vp8_loopfilter_header", file: !4701, line: 37, size: 128, elements: !4715)
!4715 = !{!4716, !4717, !4718, !4719, !4720, !4721}
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "ref_frm_delta", scope: !4714, file: !4701, line: 38, baseType: !4707, size: 32)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "mb_mode_delta", scope: !4714, file: !4701, line: 39, baseType: !4707, size: 32, offset: 32)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "sharpness_level", scope: !4714, file: !4701, line: 40, baseType: !1373, size: 8, offset: 64)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4714, file: !4701, line: 41, baseType: !1373, size: 8, offset: 72)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4714, file: !4701, line: 42, baseType: !880, size: 16, offset: 80)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4714, file: !4701, line: 43, baseType: !437, size: 32, offset: 96)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "quant_header", scope: !4700, file: !4701, line: 84, baseType: !4723, size: 64, offset: 256)
!4723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_vp8_quantization_header", file: !4701, line: 46, size: 64, elements: !4724)
!4724 = !{!4725, !4726, !4727, !4728, !4729, !4730, !4731}
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "y_ac_qi", scope: !4723, file: !4701, line: 47, baseType: !1373, size: 8)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "y_dc_delta", scope: !4723, file: !4701, line: 48, baseType: !4606, size: 8, offset: 8)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "y2_dc_delta", scope: !4723, file: !4701, line: 49, baseType: !4606, size: 8, offset: 16)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "y2_ac_delta", scope: !4723, file: !4701, line: 50, baseType: !4606, size: 8, offset: 24)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "uv_dc_delta", scope: !4723, file: !4701, line: 51, baseType: !4606, size: 8, offset: 32)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "uv_ac_delta", scope: !4723, file: !4701, line: 52, baseType: !4606, size: 8, offset: 40)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4723, file: !4701, line: 53, baseType: !880, size: 16, offset: 48)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "entropy_header", scope: !4700, file: !4701, line: 85, baseType: !4733, size: 8832, offset: 320)
!4733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_vp8_entropy_header", file: !4701, line: 56, size: 8832, elements: !4734)
!4734 = !{!4735, !4739, !4741, !4742, !4746}
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_probs", scope: !4733, file: !4701, line: 57, baseType: !4736, size: 8448)
!4736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1373, size: 8448, elements: !4737)
!4737 = !{!1176, !1351, !296, !4738}
!4738 = !DISubrange(count: 11)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "y_mode_probs", scope: !4733, file: !4701, line: 58, baseType: !4740, size: 32, offset: 8448)
!4740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1373, size: 32, elements: !1175)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "uv_mode_probs", scope: !4733, file: !4701, line: 59, baseType: !4710, size: 24, offset: 8480)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "mv_probs", scope: !4733, file: !4701, line: 60, baseType: !4743, size: 304, offset: 8504)
!4743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1373, size: 304, elements: !4744)
!4744 = !{!1595, !4745}
!4745 = !DISubrange(count: 19)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4733, file: !4701, line: 61, baseType: !4710, size: 24, offset: 8808)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "coder_state", scope: !4700, file: !4701, line: 86, baseType: !4748, size: 32, offset: 9152)
!4748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_vp8_entropy_coder_state", file: !4701, line: 64, size: 32, elements: !4749)
!4749 = !{!4750, !4751, !4752, !4753}
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !4748, file: !4701, line: 65, baseType: !1373, size: 8)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4748, file: !4701, line: 66, baseType: !1373, size: 8, offset: 8)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "bit_count", scope: !4748, file: !4701, line: 67, baseType: !1373, size: 8, offset: 16)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4748, file: !4701, line: 68, baseType: !1373, size: 8, offset: 24)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4700, file: !4701, line: 88, baseType: !880, size: 16, offset: 9184)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4700, file: !4701, line: 89, baseType: !880, size: 16, offset: 9200)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_scale", scope: !4700, file: !4701, line: 91, baseType: !1373, size: 8, offset: 9216)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_scale", scope: !4700, file: !4701, line: 92, baseType: !1373, size: 8, offset: 9224)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4700, file: !4701, line: 94, baseType: !1373, size: 8, offset: 9232)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "prob_skip_false", scope: !4700, file: !4701, line: 95, baseType: !1373, size: 8, offset: 9240)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "prob_intra", scope: !4700, file: !4701, line: 96, baseType: !1373, size: 8, offset: 9248)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "prob_last", scope: !4700, file: !4701, line: 97, baseType: !1373, size: 8, offset: 9256)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "prob_gf", scope: !4700, file: !4701, line: 98, baseType: !1373, size: 8, offset: 9264)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "num_dct_parts", scope: !4700, file: !4701, line: 99, baseType: !1373, size: 8, offset: 9272)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "first_part_size", scope: !4700, file: !4701, line: 101, baseType: !437, size: 32, offset: 9280)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "first_part_header_bits", scope: !4700, file: !4701, line: 102, baseType: !437, size: 32, offset: 9312)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "dct_part_sizes", scope: !4700, file: !4701, line: 103, baseType: !4767, size: 256, offset: 9344)
!4767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !437, size: 256, elements: !1350)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "last_frame_ts", scope: !4700, file: !4701, line: 105, baseType: !442, size: 64, offset: 9600)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "golden_frame_ts", scope: !4700, file: !4701, line: 106, baseType: !442, size: 64, offset: 9664)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "alt_frame_ts", scope: !4700, file: !4701, line: 107, baseType: !442, size: 64, offset: 9728)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4700, file: !4701, line: 109, baseType: !442, size: 64, offset: 9792)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "p_hevc_sps", scope: !4494, file: !4437, line: 80, baseType: !4773, size: 64)
!4773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4774, size: 64)
!4774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_ctrl_hevc_sps", file: !4775, line: 55, size: 256, elements: !4776)
!4775 = !DIFile(filename: "./include/media/hevc-ctrls.h", directory: "/home/lizy2001/genbc/linux")
!4776 = !{!4777, !4778, !4779, !4780, !4781, !4782, !4783, !4784, !4785, !4786, !4787, !4788, !4789, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797, !4798, !4799}
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "pic_width_in_luma_samples", scope: !4774, file: !4775, line: 57, baseType: !880, size: 16)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "pic_height_in_luma_samples", scope: !4774, file: !4775, line: 58, baseType: !880, size: 16, offset: 16)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_luma_minus8", scope: !4774, file: !4775, line: 59, baseType: !1373, size: 8, offset: 32)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_chroma_minus8", scope: !4774, file: !4775, line: 60, baseType: !1373, size: 8, offset: 40)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_pic_order_cnt_lsb_minus4", scope: !4774, file: !4775, line: 61, baseType: !1373, size: 8, offset: 48)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "sps_max_dec_pic_buffering_minus1", scope: !4774, file: !4775, line: 62, baseType: !1373, size: 8, offset: 56)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "sps_max_num_reorder_pics", scope: !4774, file: !4775, line: 63, baseType: !1373, size: 8, offset: 64)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "sps_max_latency_increase_plus1", scope: !4774, file: !4775, line: 64, baseType: !1373, size: 8, offset: 72)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "log2_min_luma_coding_block_size_minus3", scope: !4774, file: !4775, line: 65, baseType: !1373, size: 8, offset: 80)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "log2_diff_max_min_luma_coding_block_size", scope: !4774, file: !4775, line: 66, baseType: !1373, size: 8, offset: 88)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "log2_min_luma_transform_block_size_minus2", scope: !4774, file: !4775, line: 67, baseType: !1373, size: 8, offset: 96)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "log2_diff_max_min_luma_transform_block_size", scope: !4774, file: !4775, line: 68, baseType: !1373, size: 8, offset: 104)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "max_transform_hierarchy_depth_inter", scope: !4774, file: !4775, line: 69, baseType: !1373, size: 8, offset: 112)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "max_transform_hierarchy_depth_intra", scope: !4774, file: !4775, line: 70, baseType: !1373, size: 8, offset: 120)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "pcm_sample_bit_depth_luma_minus1", scope: !4774, file: !4775, line: 71, baseType: !1373, size: 8, offset: 128)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "pcm_sample_bit_depth_chroma_minus1", scope: !4774, file: !4775, line: 72, baseType: !1373, size: 8, offset: 136)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "log2_min_pcm_luma_coding_block_size_minus3", scope: !4774, file: !4775, line: 73, baseType: !1373, size: 8, offset: 144)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "log2_diff_max_min_pcm_luma_coding_block_size", scope: !4774, file: !4775, line: 74, baseType: !1373, size: 8, offset: 152)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "num_short_term_ref_pic_sets", scope: !4774, file: !4775, line: 75, baseType: !1373, size: 8, offset: 160)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "num_long_term_ref_pics_sps", scope: !4774, file: !4775, line: 76, baseType: !1373, size: 8, offset: 168)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !4774, file: !4775, line: 77, baseType: !1373, size: 8, offset: 176)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4774, file: !4775, line: 79, baseType: !1373, size: 8, offset: 184)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4774, file: !4775, line: 81, baseType: !442, size: 64, offset: 192)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "p_hevc_pps", scope: !4494, file: !4437, line: 81, baseType: !4801, size: 64)
!4801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4802, size: 64)
!4802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_ctrl_hevc_pps", file: !4775, line: 104, size: 512, elements: !4803)
!4803 = !{!4804, !4805, !4806, !4807, !4808, !4809, !4810, !4811, !4813, !4817, !4818, !4819, !4820, !4821}
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "num_extra_slice_header_bits", scope: !4802, file: !4775, line: 106, baseType: !1373, size: 8)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "init_qp_minus26", scope: !4802, file: !4775, line: 107, baseType: !4606, size: 8, offset: 8)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "diff_cu_qp_delta_depth", scope: !4802, file: !4775, line: 108, baseType: !1373, size: 8, offset: 16)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "pps_cb_qp_offset", scope: !4802, file: !4775, line: 109, baseType: !4606, size: 8, offset: 24)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "pps_cr_qp_offset", scope: !4802, file: !4775, line: 110, baseType: !4606, size: 8, offset: 32)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "num_tile_columns_minus1", scope: !4802, file: !4775, line: 111, baseType: !1373, size: 8, offset: 40)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "num_tile_rows_minus1", scope: !4802, file: !4775, line: 112, baseType: !1373, size: 8, offset: 48)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "column_width_minus1", scope: !4802, file: !4775, line: 113, baseType: !4812, size: 160, offset: 56)
!4812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1373, size: 160, elements: !2228)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "row_height_minus1", scope: !4802, file: !4775, line: 114, baseType: !4814, size: 176, offset: 216)
!4814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1373, size: 176, elements: !4815)
!4815 = !{!4816}
!4816 = !DISubrange(count: 22)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "pps_beta_offset_div2", scope: !4802, file: !4775, line: 115, baseType: !4606, size: 8, offset: 392)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "pps_tc_offset_div2", scope: !4802, file: !4775, line: 116, baseType: !4606, size: 8, offset: 400)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "log2_parallel_merge_level_minus2", scope: !4802, file: !4775, line: 117, baseType: !1373, size: 8, offset: 408)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4802, file: !4775, line: 119, baseType: !4740, size: 32, offset: 416)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4802, file: !4775, line: 120, baseType: !442, size: 64, offset: 448)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "p_hevc_slice_params", scope: !4494, file: !4437, line: 82, baseType: !4823, size: 64)
!4823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4824, size: 64)
!4824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_ctrl_hevc_slice_params", file: !4775, line: 164, size: 4224, elements: !4825)
!4825 = !{!4826, !4827, !4828, !4829, !4830, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849, !4850, !4851, !4852, !4853, !4864, !4882}
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "bit_size", scope: !4824, file: !4775, line: 165, baseType: !437, size: 32)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "data_bit_offset", scope: !4824, file: !4775, line: 166, baseType: !437, size: 32, offset: 32)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "nal_unit_type", scope: !4824, file: !4775, line: 169, baseType: !1373, size: 8, offset: 64)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "nuh_temporal_id_plus1", scope: !4824, file: !4775, line: 170, baseType: !1373, size: 8, offset: 72)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !4824, file: !4775, line: 173, baseType: !1373, size: 8, offset: 80)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "colour_plane_id", scope: !4824, file: !4775, line: 174, baseType: !1373, size: 8, offset: 88)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "slice_pic_order_cnt", scope: !4824, file: !4775, line: 175, baseType: !880, size: 16, offset: 96)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l0_active_minus1", scope: !4824, file: !4775, line: 176, baseType: !1373, size: 8, offset: 112)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l1_active_minus1", scope: !4824, file: !4775, line: 177, baseType: !1373, size: 8, offset: 120)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "collocated_ref_idx", scope: !4824, file: !4775, line: 178, baseType: !1373, size: 8, offset: 128)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "five_minus_max_num_merge_cand", scope: !4824, file: !4775, line: 179, baseType: !1373, size: 8, offset: 136)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp_delta", scope: !4824, file: !4775, line: 180, baseType: !4606, size: 8, offset: 144)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "slice_cb_qp_offset", scope: !4824, file: !4775, line: 181, baseType: !4606, size: 8, offset: 152)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "slice_cr_qp_offset", scope: !4824, file: !4775, line: 182, baseType: !4606, size: 8, offset: 160)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "slice_act_y_qp_offset", scope: !4824, file: !4775, line: 183, baseType: !4606, size: 8, offset: 168)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "slice_act_cb_qp_offset", scope: !4824, file: !4775, line: 184, baseType: !4606, size: 8, offset: 176)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "slice_act_cr_qp_offset", scope: !4824, file: !4775, line: 185, baseType: !4606, size: 8, offset: 184)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "slice_beta_offset_div2", scope: !4824, file: !4775, line: 186, baseType: !4606, size: 8, offset: 192)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "slice_tc_offset_div2", scope: !4824, file: !4775, line: 187, baseType: !4606, size: 8, offset: 200)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "pic_struct", scope: !4824, file: !4775, line: 190, baseType: !1373, size: 8, offset: 208)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "num_active_dpb_entries", scope: !4824, file: !4775, line: 193, baseType: !1373, size: 8, offset: 216)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "ref_idx_l0", scope: !4824, file: !4775, line: 194, baseType: !2734, size: 128, offset: 224)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "ref_idx_l1", scope: !4824, file: !4775, line: 195, baseType: !2734, size: 128, offset: 352)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "num_rps_poc_st_curr_before", scope: !4824, file: !4775, line: 197, baseType: !1373, size: 8, offset: 480)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "num_rps_poc_st_curr_after", scope: !4824, file: !4775, line: 198, baseType: !1373, size: 8, offset: 488)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "num_rps_poc_lt_curr", scope: !4824, file: !4775, line: 199, baseType: !1373, size: 8, offset: 496)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4824, file: !4775, line: 201, baseType: !1373, size: 8, offset: 504)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "dpb", scope: !4824, file: !4775, line: 204, baseType: !4854, size: 2048, offset: 512)
!4854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4855, size: 2048, elements: !1760)
!4855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_hevc_dpb_entry", file: !4775, line: 129, size: 128, elements: !4856)
!4856 = !{!4857, !4858, !4859, !4860, !4862}
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4855, file: !4775, line: 130, baseType: !442, size: 64)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "rps", scope: !4855, file: !4775, line: 131, baseType: !1373, size: 8, offset: 64)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "field_pic", scope: !4855, file: !4775, line: 132, baseType: !1373, size: 8, offset: 72)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt", scope: !4855, file: !4775, line: 133, baseType: !4861, size: 32, offset: 80)
!4861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !880, size: 32, elements: !1594)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4855, file: !4775, line: 134, baseType: !4863, size: 16, offset: 112)
!4863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1373, size: 16, elements: !1594)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "pred_weight_table", scope: !4824, file: !4775, line: 207, baseType: !4865, size: 1600, offset: 2560)
!4865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_hevc_pred_weight_table", file: !4775, line: 137, size: 1600, elements: !4866)
!4866 = !{!4867, !4869, !4870, !4873, !4874, !4875, !4876, !4877, !4878, !4880, !4881}
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "delta_luma_weight_l0", scope: !4865, file: !4775, line: 138, baseType: !4868, size: 128)
!4868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4606, size: 128, elements: !1760)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "luma_offset_l0", scope: !4865, file: !4775, line: 139, baseType: !4868, size: 128, offset: 128)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "delta_chroma_weight_l0", scope: !4865, file: !4775, line: 140, baseType: !4871, size: 256, offset: 256)
!4871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4606, size: 256, elements: !4872)
!4872 = !{!1761, !1595}
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_offset_l0", scope: !4865, file: !4775, line: 141, baseType: !4871, size: 256, offset: 512)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "delta_luma_weight_l1", scope: !4865, file: !4775, line: 143, baseType: !4868, size: 128, offset: 768)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "luma_offset_l1", scope: !4865, file: !4775, line: 144, baseType: !4868, size: 128, offset: 896)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "delta_chroma_weight_l1", scope: !4865, file: !4775, line: 145, baseType: !4871, size: 256, offset: 1024)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_offset_l1", scope: !4865, file: !4775, line: 146, baseType: !4871, size: 256, offset: 1280)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4865, file: !4775, line: 148, baseType: !4879, size: 48, offset: 1536)
!4879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1373, size: 48, elements: !1650)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "luma_log2_weight_denom", scope: !4865, file: !4775, line: 150, baseType: !1373, size: 8, offset: 1584)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "delta_chroma_log2_weight_denom", scope: !4865, file: !4775, line: 151, baseType: !4606, size: 8, offset: 1592)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4824, file: !4775, line: 209, baseType: !442, size: 64, offset: 4160)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "p_area", scope: !4494, file: !4437, line: 83, baseType: !4884, size: 64)
!4884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4885, size: 64)
!4885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_area", file: !130, line: 426, size: 64, elements: !4886)
!4886 = !{!4887, !4888}
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4885, file: !130, line: 427, baseType: !437, size: 32)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4885, file: !130, line: 428, baseType: !437, size: 32, offset: 32)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4494, file: !4437, line: 84, baseType: !218, size: 64)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "p_const", scope: !4494, file: !4437, line: 85, baseType: !2154, size: 64)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4486, file: !4437, line: 134, baseType: !4892, size: 64, offset: 64)
!4892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4893, size: 64)
!4893 = !DISubroutineType(types: !4894)
!4894 = !{null, !4492, !435, !4494}
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !4486, file: !4437, line: 136, baseType: !4896, size: 64, offset: 128)
!4896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4897, size: 64)
!4897 = !DISubroutineType(types: !4898)
!4898 = !{null, !4492}
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "validate", scope: !4486, file: !4437, line: 137, baseType: !4900, size: 64, offset: 192)
!4900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4901, size: 64)
!4901 = !DISubroutineType(types: !4902)
!4902 = !{!278, !4492, !435, !4494}
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4452, file: !4437, line: 263, baseType: !435, size: 32, offset: 576)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4452, file: !4437, line: 264, baseType: !235, size: 64, offset: 640)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4452, file: !4437, line: 265, baseType: !129, size: 32, offset: 704)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !4452, file: !4437, line: 266, baseType: !797, size: 64, offset: 768)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !4452, file: !4437, line: 266, baseType: !797, size: 64, offset: 832)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "default_value", scope: !4452, file: !4437, line: 266, baseType: !797, size: 64, offset: 896)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !4452, file: !4437, line: 267, baseType: !435, size: 32, offset: 960)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "elem_size", scope: !4452, file: !4437, line: 268, baseType: !435, size: 32, offset: 992)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "dims", scope: !4452, file: !4437, line: 269, baseType: !4912, size: 128, offset: 1024)
!4912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 128, elements: !1175)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "nr_of_dims", scope: !4452, file: !4437, line: 270, baseType: !435, size: 32, offset: 1152)
!4914 = !DIDerivedType(tag: DW_TAG_member, scope: !4452, file: !4437, line: 271, baseType: !4915, size: 64, offset: 1216)
!4915 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4452, file: !4437, line: 271, size: 64, elements: !4916)
!4916 = !{!4917, !4918}
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !4915, file: !4437, line: 272, baseType: !441, size: 64)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "menu_skip_mask", scope: !4915, file: !4437, line: 273, baseType: !441, size: 64)
!4919 = !DIDerivedType(tag: DW_TAG_member, scope: !4452, file: !4437, line: 275, baseType: !4920, size: 64, offset: 1280)
!4920 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4452, file: !4437, line: 275, size: 64, elements: !4921)
!4921 = !{!4922, !4925}
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "qmenu", scope: !4920, file: !4437, line: 276, baseType: !4923, size: 64)
!4923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4924, size: 64)
!4924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !235)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "qmenu_int", scope: !4920, file: !4437, line: 277, baseType: !4926, size: 64)
!4926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4927, size: 64)
!4927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !797)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4452, file: !4437, line: 279, baseType: !344, size: 64, offset: 1344)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4452, file: !4437, line: 280, baseType: !218, size: 64, offset: 1408)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4452, file: !4437, line: 281, baseType: !1464, size: 32, offset: 1472)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !4452, file: !4437, line: 284, baseType: !4932, size: 32, offset: 1504)
!4932 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4452, file: !4437, line: 282, size: 32, elements: !4933)
!4933 = !{!4934}
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4932, file: !4437, line: 283, baseType: !1464, size: 32)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "p_def", scope: !4452, file: !4437, line: 286, baseType: !4494, size: 64, offset: 1536)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "p_new", scope: !4452, file: !4437, line: 287, baseType: !4494, size: 64, offset: 1600)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "p_cur", scope: !4452, file: !4437, line: 288, baseType: !4494, size: 64, offset: 1664)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "helper", scope: !4446, file: !4437, line: 321, baseType: !4939, size: 64, offset: 256)
!4939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4940, size: 64)
!4940 = !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_ctrl_helper", file: !4437, line: 31, flags: DIFlagFwdDecl)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "from_other_dev", scope: !4446, file: !4437, line: 322, baseType: !510, size: 8, offset: 320)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "req_done", scope: !4446, file: !4437, line: 323, baseType: !510, size: 8, offset: 328)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "req", scope: !4446, file: !4437, line: 324, baseType: !4445, size: 64, offset: 384)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "p_req", scope: !4446, file: !4437, line: 325, baseType: !4494, size: 64, offset: 448)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "buckets", scope: !4436, file: !4437, line: 367, baseType: !4946, size: 64, offset: 576)
!4946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4445, size: 64)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !4436, file: !4437, line: 368, baseType: !4948, size: 64, offset: 640)
!4948 = !DIDerivedType(tag: DW_TAG_typedef, name: "v4l2_ctrl_notify_fnc", file: !4437, line: 151, baseType: !4949)
!4949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4950, size: 64)
!4950 = !DISubroutineType(types: !4951)
!4951 = !{null, !4451, !218}
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "notify_priv", scope: !4436, file: !4437, line: 369, baseType: !218, size: 64, offset: 704)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "nr_of_buckets", scope: !4436, file: !4437, line: 370, baseType: !879, size: 16, offset: 768)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !4436, file: !4437, line: 371, baseType: !278, size: 32, offset: 800)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "request_is_queued", scope: !4436, file: !4437, line: 372, baseType: !510, size: 8, offset: 832)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "requests", scope: !4436, file: !4437, line: 373, baseType: !239, size: 128, offset: 896)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "requests_queued", scope: !4436, file: !4437, line: 374, baseType: !239, size: 128, offset: 1024)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "req_obj", scope: !4436, file: !4437, line: 375, baseType: !4959, size: 384, offset: 1152)
!4959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_request_object", file: !115, line: 269, size: 384, elements: !4960)
!4960 = !{!4961, !4978, !4979, !4980, !4981, !4982}
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4959, file: !115, line: 270, baseType: !4962, size: 64)
!4962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4963, size: 64)
!4963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4964)
!4964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_request_object_ops", file: !115, line: 247, size: 320, elements: !4965)
!4965 = !{!4966, !4971, !4975, !4976, !4977}
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4964, file: !115, line: 248, baseType: !4967, size: 64)
!4967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4968, size: 64)
!4968 = !DISubroutineType(types: !4969)
!4969 = !{!278, !4970}
!4970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4959, size: 64)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare", scope: !4964, file: !115, line: 249, baseType: !4972, size: 64, offset: 64)
!4972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4973, size: 64)
!4973 = !DISubroutineType(types: !4974)
!4974 = !{null, !4970}
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !4964, file: !115, line: 250, baseType: !4972, size: 64, offset: 128)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !4964, file: !115, line: 251, baseType: !4972, size: 64, offset: 192)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4964, file: !115, line: 252, baseType: !4972, size: 64, offset: 256)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4959, file: !115, line: 271, baseType: !218, size: 64, offset: 64)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "req", scope: !4959, file: !115, line: 272, baseType: !4343, size: 64, offset: 128)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4959, file: !115, line: 273, baseType: !239, size: 128, offset: 192)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !4959, file: !115, line: 274, baseType: !3406, size: 32, offset: 320)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "completed", scope: !4959, file: !115, line: 275, baseType: !510, size: 8, offset: 352)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !4418, file: !4419, line: 56, baseType: !4984, size: 128, offset: 704)
!4984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_prio_state", file: !147, line: 111, size: 128, elements: !4985)
!4985 = !{!4986}
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "prios", scope: !4984, file: !147, line: 112, baseType: !4987, size: 128)
!4987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !767, size: 128, elements: !1175)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4418, file: !4419, line: 57, baseType: !3406, size: 32, offset: 832)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4418, file: !4419, line: 58, baseType: !4990, size: 64, offset: 896)
!4990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4991, size: 64)
!4991 = !DISubroutineType(types: !4992)
!4992 = !{null, !4417}
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4198, file: !169, line: 875, baseType: !4994, size: 64, offset: 1344)
!4994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4995, size: 64)
!4995 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4996)
!4996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_ops", file: !169, line: 745, size: 512, elements: !4997)
!4997 = !{!4998, !5128, !5233, !5245, !5340, !5419, !5455, !5462}
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "core", scope: !4996, file: !169, line: 746, baseType: !4999, size: 64)
!4999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5000, size: 64)
!5000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5001)
!5001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_core_ops", file: !169, line: 188, size: 704, elements: !5002)
!5002 = !{!5003, !5007, !5019, !5023, !5024, !5025, !5026, !5030, !5034, !5038, !5127}
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "log_status", scope: !5001, file: !169, line: 189, baseType: !5004, size: 64)
!5004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5005, size: 64)
!5005 = !DISubroutineType(types: !5006)
!5006 = !{!278, !4433}
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "s_io_pin_config", scope: !5001, file: !169, line: 190, baseType: !5008, size: 64, offset: 64)
!5008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5009, size: 64)
!5009 = !DISubroutineType(types: !5010)
!5010 = !{!278, !4433, !341, !5011}
!5011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5012, size: 64)
!5012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_io_pin_config", file: !169, line: 132, size: 64, elements: !5013)
!5013 = !{!5014, !5015, !5016, !5017, !5018}
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5012, file: !169, line: 133, baseType: !435, size: 32)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !5012, file: !169, line: 134, baseType: !1372, size: 8, offset: 32)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !5012, file: !169, line: 135, baseType: !1372, size: 8, offset: 40)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !5012, file: !169, line: 136, baseType: !1372, size: 8, offset: 48)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !5012, file: !169, line: 137, baseType: !1372, size: 8, offset: 56)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !5001, file: !169, line: 192, baseType: !5020, size: 64, offset: 128)
!5020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5021, size: 64)
!5021 = !DISubroutineType(types: !5022)
!5022 = !{!278, !4433, !435}
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "load_fw", scope: !5001, file: !169, line: 193, baseType: !5004, size: 64, offset: 192)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5001, file: !169, line: 194, baseType: !5020, size: 64, offset: 256)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "s_gpio", scope: !5001, file: !169, line: 195, baseType: !5020, size: 64, offset: 320)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !5001, file: !169, line: 196, baseType: !5027, size: 64, offset: 384)
!5027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5028, size: 64)
!5028 = !DISubroutineType(types: !5029)
!5029 = !{!329, !4433, !7, !218}
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "s_power", scope: !5001, file: !169, line: 205, baseType: !5031, size: 64, offset: 448)
!5031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5032, size: 64)
!5032 = !DISubroutineType(types: !5033)
!5033 = !{!278, !4433, !278}
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_service_routine", scope: !5001, file: !169, line: 206, baseType: !5035, size: 64, offset: 512)
!5035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5036, size: 64)
!5036 = !DISubroutineType(types: !5037)
!5037 = !{!278, !4433, !435, !911}
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "subscribe_event", scope: !5001, file: !169, line: 208, baseType: !5039, size: 64, offset: 576)
!5039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5040, size: 64)
!5040 = !DISubroutineType(types: !5041)
!5041 = !{!278, !4433, !5042, !5119}
!5042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5043, size: 64)
!5043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_fh", file: !5044, line: 42, size: 1024, elements: !5045)
!5044 = !DIFile(filename: "./include/media/v4l2-fh.h", directory: "/home/lizy2001/genbc/linux")
!5045 = !{!5046, !5047, !5108, !5109, !5110, !5111, !5112, !5113, !5114, !5115, !5116}
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5043, file: !5044, line: 43, baseType: !239, size: 128)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "vdev", scope: !5043, file: !5044, line: 44, baseType: !5048, size: 64, offset: 128)
!5048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5049, size: 64)
!5049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "video_device", file: !147, line: 263, size: 10624, elements: !5050)
!5050 = !{!5051, !5052, !5059, !5060, !5074, !5075, !5076, !5077, !5078, !5079, !5080, !5083, !5085, !5086, !5087, !5088, !5089, !5090, !5091, !5092, !5093, !5094, !5095, !5097, !5101, !5105, !5107}
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "entity", scope: !5049, file: !147, line: 266, baseType: !4201, size: 1024)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "intf_devnode", scope: !5049, file: !147, line: 267, baseType: !5053, size: 64, offset: 1024)
!5053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5054, size: 64)
!5054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_intf_devnode", file: !108, line: 350, size: 512, elements: !5055)
!5055 = !{!5056, !5057, !5058}
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "intf", scope: !5054, file: !108, line: 351, baseType: !4324, size: 448)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !5054, file: !108, line: 354, baseType: !435, size: 32, offset: 448)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !5054, file: !108, line: 355, baseType: !435, size: 32, offset: 480)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !5049, file: !147, line: 268, baseType: !4286, size: 2304, offset: 1088)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !5049, file: !147, line: 270, baseType: !5061, size: 64, offset: 3392)
!5061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5062, size: 64)
!5062 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5063)
!5063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_file_operations", file: !147, line: 200, size: 576, elements: !5064)
!5064 = !{!5065, !5066, !5067, !5068, !5069, !5070, !5071, !5072, !5073}
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5063, file: !147, line: 201, baseType: !213, size: 64)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !5063, file: !147, line: 202, baseType: !2900, size: 64, offset: 64)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !5063, file: !147, line: 203, baseType: !2905, size: 64, offset: 128)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !5063, file: !147, line: 204, baseType: !2929, size: 64, offset: 192)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !5063, file: !147, line: 205, baseType: !2946, size: 64, offset: 256)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !5063, file: !147, line: 209, baseType: !1121, size: 64, offset: 320)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !5063, file: !147, line: 211, baseType: !2951, size: 64, offset: 384)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5063, file: !147, line: 212, baseType: !4230, size: 64, offset: 448)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5063, file: !147, line: 213, baseType: !4230, size: 64, offset: 512)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "device_caps", scope: !5049, file: !147, line: 272, baseType: !435, size: 32, offset: 3456)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5049, file: !147, line: 275, baseType: !228, size: 5568, offset: 3520)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !5049, file: !147, line: 276, baseType: !3138, size: 64, offset: 9088)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "v4l2_dev", scope: !5049, file: !147, line: 278, baseType: !4417, size: 64, offset: 9152)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "dev_parent", scope: !5049, file: !147, line: 279, baseType: !3416, size: 64, offset: 9216)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl_handler", scope: !5049, file: !147, line: 281, baseType: !4435, size: 64, offset: 9280)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !5049, file: !147, line: 283, baseType: !5081, size: 64, offset: 9344)
!5081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5082, size: 64)
!5082 = !DICompositeType(tag: DW_TAG_structure_type, name: "vb2_queue", file: !147, line: 283, flags: DIFlagFwdDecl)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !5049, file: !147, line: 285, baseType: !5084, size: 64, offset: 9408)
!5084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4984, size: 64)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5049, file: !147, line: 288, baseType: !2727, size: 256, offset: 9472)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "vfl_type", scope: !5049, file: !147, line: 289, baseType: !146, size: 32, offset: 9728)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "vfl_dir", scope: !5049, file: !147, line: 290, baseType: !156, size: 32, offset: 9760)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !5049, file: !147, line: 291, baseType: !278, size: 32, offset: 9792)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !5049, file: !147, line: 292, baseType: !879, size: 16, offset: 9824)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5049, file: !147, line: 293, baseType: !344, size: 64, offset: 9856)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5049, file: !147, line: 294, baseType: !278, size: 32, offset: 9920)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "fh_lock", scope: !5049, file: !147, line: 297, baseType: !252, offset: 9952)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "fh_list", scope: !5049, file: !147, line: 298, baseType: !239, size: 128, offset: 9984)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "dev_debug", scope: !5049, file: !147, line: 300, baseType: !278, size: 32, offset: 10112)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "tvnorms", scope: !5049, file: !147, line: 302, baseType: !5096, size: 64, offset: 10176)
!5096 = !DIDerivedType(tag: DW_TAG_typedef, name: "v4l2_std_id", file: !130, line: 1260, baseType: !442)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5049, file: !147, line: 305, baseType: !5098, size: 64, offset: 10240)
!5098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5099, size: 64)
!5099 = !DISubroutineType(types: !5100)
!5100 = !{null, !5048}
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl_ops", scope: !5049, file: !147, line: 306, baseType: !5102, size: 64, offset: 10304)
!5102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5103, size: 64)
!5103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5104)
!5104 = !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_ioctl_ops", file: !147, line: 306, flags: DIFlagFwdDecl)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "valid_ioctls", scope: !5049, file: !147, line: 307, baseType: !5106, size: 192, offset: 10368)
!5106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 192, elements: !295)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5049, file: !147, line: 309, baseType: !4441, size: 64, offset: 10560)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl_handler", scope: !5043, file: !5044, line: 45, baseType: !4435, size: 64, offset: 192)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !5043, file: !5044, line: 46, baseType: !161, size: 32, offset: 256)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !5043, file: !5044, line: 49, baseType: !1506, size: 128, offset: 320)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "subscribe_lock", scope: !5043, file: !5044, line: 50, baseType: !1193, size: 192, offset: 448)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "subscribed", scope: !5043, file: !5044, line: 51, baseType: !239, size: 128, offset: 640)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !5043, file: !5044, line: 52, baseType: !239, size: 128, offset: 768)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "navailable", scope: !5043, file: !5044, line: 53, baseType: !7, size: 32, offset: 896)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !5043, file: !5044, line: 54, baseType: !435, size: 32, offset: 928)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "m2m_ctx", scope: !5043, file: !5044, line: 56, baseType: !5117, size: 64, offset: 960)
!5117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5118, size: 64)
!5118 = !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_m2m_ctx", file: !5044, line: 56, flags: DIFlagFwdDecl)
!5119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5120, size: 64)
!5120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_event_subscription", file: !130, line: 2400, size: 256, elements: !5121)
!5121 = !{!5122, !5123, !5124, !5125}
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5120, file: !130, line: 2401, baseType: !437, size: 32)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5120, file: !130, line: 2402, baseType: !437, size: 32, offset: 32)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5120, file: !130, line: 2403, baseType: !437, size: 32, offset: 64)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5120, file: !130, line: 2404, baseType: !5126, size: 160, offset: 96)
!5126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !437, size: 160, elements: !4662)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "unsubscribe_event", scope: !5001, file: !169, line: 210, baseType: !5039, size: 64, offset: 640)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "tuner", scope: !4996, file: !169, line: 747, baseType: !5129, size: 64, offset: 64)
!5129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5130, size: 64)
!5130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5131)
!5131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_tuner_ops", file: !169, line: 264, size: 704, elements: !5132)
!5132 = !{!5133, !5134, !5135, !5147, !5152, !5168, !5188, !5194, !5210, !5216, !5222}
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "standby", scope: !5131, file: !169, line: 265, baseType: !5004, size: 64)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "s_radio", scope: !5131, file: !169, line: 266, baseType: !5004, size: 64, offset: 64)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "s_frequency", scope: !5131, file: !169, line: 267, baseType: !5136, size: 64, offset: 128)
!5136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5137, size: 64)
!5137 = !DISubroutineType(types: !5138)
!5138 = !{!278, !4433, !5139}
!5139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5140, size: 64)
!5140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5141)
!5141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_frequency", file: !130, line: 1906, size: 352, elements: !5142)
!5142 = !{!5143, !5144, !5145, !5146}
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "tuner", scope: !5141, file: !130, line: 1907, baseType: !437, size: 32)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5141, file: !130, line: 1908, baseType: !437, size: 32, offset: 32)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !5141, file: !130, line: 1909, baseType: !437, size: 32, offset: 64)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5141, file: !130, line: 1910, baseType: !4767, size: 256, offset: 96)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "g_frequency", scope: !5131, file: !169, line: 268, baseType: !5148, size: 64, offset: 192)
!5148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5149, size: 64)
!5149 = !DISubroutineType(types: !5150)
!5150 = !{!278, !4433, !5151}
!5151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5141, size: 64)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "enum_freq_bands", scope: !5131, file: !169, line: 269, baseType: !5153, size: 64, offset: 256)
!5153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5154, size: 64)
!5154 = !DISubroutineType(types: !5155)
!5155 = !{!278, !4433, !5156}
!5156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5157, size: 64)
!5157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_frequency_band", file: !130, line: 1917, size: 512, elements: !5158)
!5158 = !{!5159, !5160, !5161, !5162, !5163, !5164, !5165, !5166}
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "tuner", scope: !5157, file: !130, line: 1918, baseType: !437, size: 32)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5157, file: !130, line: 1919, baseType: !437, size: 32, offset: 32)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5157, file: !130, line: 1920, baseType: !437, size: 32, offset: 64)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "capability", scope: !5157, file: !130, line: 1921, baseType: !437, size: 32, offset: 96)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "rangelow", scope: !5157, file: !130, line: 1922, baseType: !437, size: 32, offset: 128)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "rangehigh", scope: !5157, file: !130, line: 1923, baseType: !437, size: 32, offset: 160)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !5157, file: !130, line: 1924, baseType: !437, size: 32, offset: 192)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5157, file: !130, line: 1925, baseType: !5167, size: 288, offset: 224)
!5167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !437, size: 288, elements: !3516)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "g_tuner", scope: !5131, file: !169, line: 270, baseType: !5169, size: 64, offset: 320)
!5169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5170, size: 64)
!5170 = !DISubroutineType(types: !5171)
!5171 = !{!278, !4433, !5172}
!5172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5173, size: 64)
!5173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_tuner", file: !130, line: 1849, size: 672, elements: !5174)
!5174 = !{!5175, !5176, !5178, !5179, !5180, !5181, !5182, !5183, !5184, !5185, !5186}
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5173, file: !130, line: 1850, baseType: !437, size: 32)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5173, file: !130, line: 1851, baseType: !5177, size: 256, offset: 32)
!5177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1373, size: 256, elements: !2257)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5173, file: !130, line: 1852, baseType: !437, size: 32, offset: 288)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "capability", scope: !5173, file: !130, line: 1853, baseType: !437, size: 32, offset: 320)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "rangelow", scope: !5173, file: !130, line: 1854, baseType: !437, size: 32, offset: 352)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "rangehigh", scope: !5173, file: !130, line: 1855, baseType: !437, size: 32, offset: 384)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "rxsubchans", scope: !5173, file: !130, line: 1856, baseType: !437, size: 32, offset: 416)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "audmode", scope: !5173, file: !130, line: 1857, baseType: !437, size: 32, offset: 448)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !5173, file: !130, line: 1858, baseType: !1465, size: 32, offset: 480)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "afc", scope: !5173, file: !130, line: 1859, baseType: !1465, size: 32, offset: 512)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5173, file: !130, line: 1860, baseType: !5187, size: 128, offset: 544)
!5187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !437, size: 128, elements: !1175)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "s_tuner", scope: !5131, file: !169, line: 271, baseType: !5189, size: 64, offset: 384)
!5189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5190, size: 64)
!5190 = !DISubroutineType(types: !5191)
!5191 = !{!278, !4433, !5192}
!5192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5193, size: 64)
!5193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5173)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "g_modulator", scope: !5131, file: !169, line: 272, baseType: !5195, size: 64, offset: 448)
!5195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5196, size: 64)
!5196 = !DISubroutineType(types: !5197)
!5197 = !{!278, !4433, !5198}
!5198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5199, size: 64)
!5199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_modulator", file: !130, line: 1863, size: 544, elements: !5200)
!5200 = !{!5201, !5202, !5203, !5204, !5205, !5206, !5207, !5208}
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5199, file: !130, line: 1864, baseType: !437, size: 32)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5199, file: !130, line: 1865, baseType: !5177, size: 256, offset: 32)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "capability", scope: !5199, file: !130, line: 1866, baseType: !437, size: 32, offset: 288)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "rangelow", scope: !5199, file: !130, line: 1867, baseType: !437, size: 32, offset: 320)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "rangehigh", scope: !5199, file: !130, line: 1868, baseType: !437, size: 32, offset: 352)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "txsubchans", scope: !5199, file: !130, line: 1869, baseType: !437, size: 32, offset: 384)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5199, file: !130, line: 1870, baseType: !437, size: 32, offset: 416)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5199, file: !130, line: 1871, baseType: !5209, size: 96, offset: 448)
!5209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !437, size: 96, elements: !295)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "s_modulator", scope: !5131, file: !169, line: 273, baseType: !5211, size: 64, offset: 512)
!5211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5212, size: 64)
!5212 = !DISubroutineType(types: !5213)
!5213 = !{!278, !4433, !5214}
!5214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5215, size: 64)
!5215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5199)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "s_type_addr", scope: !5131, file: !169, line: 274, baseType: !5217, size: 64, offset: 576)
!5217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5218, size: 64)
!5218 = !DISubroutineType(types: !5219)
!5219 = !{!278, !4433, !5220}
!5220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5221, size: 64)
!5221 = !DICompositeType(tag: DW_TAG_structure_type, name: "tuner_setup", file: !169, line: 39, flags: DIFlagFwdDecl)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "s_config", scope: !5131, file: !169, line: 275, baseType: !5223, size: 64, offset: 640)
!5223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5224, size: 64)
!5224 = !DISubroutineType(types: !5225)
!5225 = !{!278, !4433, !5226}
!5226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5227, size: 64)
!5227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5228)
!5228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_priv_tun_config", file: !5229, line: 336, size: 128, elements: !5230)
!5229 = !DIFile(filename: "./include/media/v4l2-common.h", directory: "/home/lizy2001/genbc/linux")
!5230 = !{!5231, !5232}
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "tuner", scope: !5228, file: !5229, line: 337, baseType: !278, size: 32)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !5228, file: !5229, line: 338, baseType: !218, size: 64, offset: 64)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "audio", scope: !4996, file: !169, line: 748, baseType: !5234, size: 64, offset: 128)
!5234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5235, size: 64)
!5235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5236)
!5236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_audio_ops", file: !169, line: 304, size: 256, elements: !5237)
!5237 = !{!5238, !5239, !5240, !5244}
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "s_clock_freq", scope: !5236, file: !169, line: 305, baseType: !5020, size: 64)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "s_i2s_clock_freq", scope: !5236, file: !169, line: 306, baseType: !5020, size: 64, offset: 64)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "s_routing", scope: !5236, file: !169, line: 307, baseType: !5241, size: 64, offset: 128)
!5241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5242, size: 64)
!5242 = !DISubroutineType(types: !5243)
!5243 = !{!278, !4433, !435, !435, !435}
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "s_stream", scope: !5236, file: !169, line: 308, baseType: !5031, size: 64, offset: 192)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "video", scope: !4996, file: !169, line: 749, baseType: !5246, size: 64, offset: 192)
!5246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5247, size: 64)
!5247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5248)
!5248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_video_ops", file: !169, line: 409, size: 1152, elements: !5249)
!5249 = !{!5250, !5251, !5255, !5260, !5264, !5265, !5266, !5267, !5268, !5269, !5273, !5274, !5283, !5294, !5295, !5334, !5335, !5336}
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "s_routing", scope: !5248, file: !169, line: 410, baseType: !5241, size: 64)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "s_crystal_freq", scope: !5248, file: !169, line: 411, baseType: !5252, size: 64, offset: 64)
!5252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5253, size: 64)
!5253 = !DISubroutineType(types: !5254)
!5254 = !{!278, !4433, !435, !435}
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "g_std", scope: !5248, file: !169, line: 412, baseType: !5256, size: 64, offset: 128)
!5256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5257, size: 64)
!5257 = !DISubroutineType(types: !5258)
!5258 = !{!278, !4433, !5259}
!5259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5096, size: 64)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "s_std", scope: !5248, file: !169, line: 413, baseType: !5261, size: 64, offset: 192)
!5261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5262, size: 64)
!5262 = !DISubroutineType(types: !5263)
!5263 = !{!278, !4433, !5096}
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "s_std_output", scope: !5248, file: !169, line: 414, baseType: !5261, size: 64, offset: 256)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "g_std_output", scope: !5248, file: !169, line: 415, baseType: !5256, size: 64, offset: 320)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "querystd", scope: !5248, file: !169, line: 416, baseType: !5256, size: 64, offset: 384)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "g_tvnorms", scope: !5248, file: !169, line: 417, baseType: !5256, size: 64, offset: 448)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "g_tvnorms_output", scope: !5248, file: !169, line: 418, baseType: !5256, size: 64, offset: 512)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "g_input_status", scope: !5248, file: !169, line: 419, baseType: !5270, size: 64, offset: 576)
!5270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5271, size: 64)
!5271 = !DISubroutineType(types: !5272)
!5272 = !{!278, !4433, !1435}
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "s_stream", scope: !5248, file: !169, line: 420, baseType: !5031, size: 64, offset: 640)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "g_pixelaspect", scope: !5248, file: !169, line: 421, baseType: !5275, size: 64, offset: 704)
!5275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5276, size: 64)
!5276 = !DISubroutineType(types: !5277)
!5277 = !{!278, !4433, !5278}
!5278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5279, size: 64)
!5279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_fract", file: !130, line: 421, size: 64, elements: !5280)
!5280 = !{!5281, !5282}
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "numerator", scope: !5279, file: !130, line: 422, baseType: !437, size: 32)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "denominator", scope: !5279, file: !130, line: 423, baseType: !437, size: 32, offset: 32)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "g_frame_interval", scope: !5248, file: !169, line: 422, baseType: !5284, size: 64, offset: 768)
!5284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5285, size: 64)
!5285 = !DISubroutineType(types: !5286)
!5286 = !{!278, !4433, !5287}
!5287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5288, size: 64)
!5288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_frame_interval", file: !5289, line: 115, size: 384, elements: !5290)
!5289 = !DIFile(filename: "./include/uapi/linux/v4l2-subdev.h", directory: "/home/lizy2001/genbc/linux")
!5290 = !{!5291, !5292, !5293}
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !5288, file: !5289, line: 116, baseType: !437, size: 32)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !5288, file: !5289, line: 117, baseType: !5279, size: 64, offset: 32)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5288, file: !5289, line: 118, baseType: !5167, size: 288, offset: 96)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "s_frame_interval", scope: !5248, file: !169, line: 424, baseType: !5284, size: 64, offset: 832)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "s_dv_timings", scope: !5248, file: !169, line: 426, baseType: !5296, size: 64, offset: 896)
!5296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5297, size: 64)
!5297 = !DISubroutineType(types: !5298)
!5298 = !{!278, !4433, !5299}
!5299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5300, size: 64)
!5300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_dv_timings", file: !130, line: 1563, size: 1056, elements: !5301)
!5301 = !{!5302, !5303}
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5300, file: !130, line: 1564, baseType: !437, size: 32)
!5303 = !DIDerivedType(tag: DW_TAG_member, scope: !5300, file: !130, line: 1565, baseType: !5304, size: 1024, offset: 32)
!5304 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5300, file: !130, line: 1565, size: 1024, elements: !5305)
!5305 = !{!5306, !5332}
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "bt", scope: !5304, file: !130, line: 1566, baseType: !5307, size: 992)
!5307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_bt_timings", file: !130, line: 1440, size: 992, elements: !5308)
!5308 = !{!5309, !5310, !5311, !5312, !5313, !5314, !5315, !5316, !5317, !5318, !5319, !5320, !5321, !5322, !5323, !5324, !5325, !5326, !5327, !5328}
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !5307, file: !130, line: 1441, baseType: !437, size: 32)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !5307, file: !130, line: 1442, baseType: !437, size: 32, offset: 32)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "interlaced", scope: !5307, file: !130, line: 1443, baseType: !437, size: 32, offset: 64)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "polarities", scope: !5307, file: !130, line: 1444, baseType: !437, size: 32, offset: 96)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "pixelclock", scope: !5307, file: !130, line: 1445, baseType: !442, size: 64, offset: 128)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "hfrontporch", scope: !5307, file: !130, line: 1446, baseType: !437, size: 32, offset: 192)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "hsync", scope: !5307, file: !130, line: 1447, baseType: !437, size: 32, offset: 224)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "hbackporch", scope: !5307, file: !130, line: 1448, baseType: !437, size: 32, offset: 256)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "vfrontporch", scope: !5307, file: !130, line: 1449, baseType: !437, size: 32, offset: 288)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "vsync", scope: !5307, file: !130, line: 1450, baseType: !437, size: 32, offset: 320)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "vbackporch", scope: !5307, file: !130, line: 1451, baseType: !437, size: 32, offset: 352)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "il_vfrontporch", scope: !5307, file: !130, line: 1452, baseType: !437, size: 32, offset: 384)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "il_vsync", scope: !5307, file: !130, line: 1453, baseType: !437, size: 32, offset: 416)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "il_vbackporch", scope: !5307, file: !130, line: 1454, baseType: !437, size: 32, offset: 448)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "standards", scope: !5307, file: !130, line: 1455, baseType: !437, size: 32, offset: 480)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5307, file: !130, line: 1456, baseType: !437, size: 32, offset: 512)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "picture_aspect", scope: !5307, file: !130, line: 1457, baseType: !5279, size: 64, offset: 544)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "cea861_vic", scope: !5307, file: !130, line: 1458, baseType: !1373, size: 8, offset: 608)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "hdmi_vic", scope: !5307, file: !130, line: 1459, baseType: !1373, size: 8, offset: 616)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5307, file: !130, line: 1460, baseType: !5329, size: 368, offset: 624)
!5329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1373, size: 368, elements: !5330)
!5330 = !{!5331}
!5331 = !DISubrange(count: 46)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5304, file: !130, line: 1567, baseType: !5333, size: 1024)
!5333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !437, size: 1024, elements: !2257)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "g_dv_timings", scope: !5248, file: !169, line: 428, baseType: !5296, size: 64, offset: 960)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "query_dv_timings", scope: !5248, file: !169, line: 430, baseType: !5296, size: 64, offset: 1024)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "s_rx_buffer", scope: !5248, file: !169, line: 432, baseType: !5337, size: 64, offset: 1088)
!5337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5338, size: 64)
!5338 = !DISubroutineType(types: !5339)
!5339 = !{!278, !4433, !218, !2710}
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "vbi", scope: !4996, file: !169, line: 750, baseType: !5341, size: 64, offset: 256)
!5341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5342, size: 64)
!5342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5343)
!5343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_vbi_ops", file: !169, line: 471, size: 448, elements: !5344)
!5344 = !{!5345, !5356, !5372, !5377, !5391, !5407, !5418}
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "decode_vbi_line", scope: !5343, file: !169, line: 472, baseType: !5346, size: 64)
!5346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5347, size: 64)
!5347 = !DISubroutineType(types: !5348)
!5348 = !{!278, !4433, !5349}
!5349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5350, size: 64)
!5350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_decode_vbi_line", file: !169, line: 52, size: 192, elements: !5351)
!5351 = !{!5352, !5353, !5354, !5355}
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "is_second_field", scope: !5350, file: !169, line: 53, baseType: !435, size: 32)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5350, file: !169, line: 54, baseType: !4501, size: 64, offset: 64)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !5350, file: !169, line: 55, baseType: !435, size: 32, offset: 128)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5350, file: !169, line: 56, baseType: !435, size: 32, offset: 160)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "s_vbi_data", scope: !5343, file: !169, line: 473, baseType: !5357, size: 64, offset: 64)
!5357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5358, size: 64)
!5358 = !DISubroutineType(types: !5359)
!5359 = !{!278, !4433, !5360}
!5360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5361, size: 64)
!5361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5362)
!5362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_sliced_vbi_data", file: !130, line: 2152, size: 512, elements: !5363)
!5363 = !{!5364, !5365, !5366, !5367, !5368}
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5362, file: !130, line: 2153, baseType: !437, size: 32)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !5362, file: !130, line: 2154, baseType: !437, size: 32, offset: 32)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !5362, file: !130, line: 2155, baseType: !437, size: 32, offset: 64)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5362, file: !130, line: 2156, baseType: !437, size: 32, offset: 96)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5362, file: !130, line: 2157, baseType: !5369, size: 384, offset: 128)
!5369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1373, size: 384, elements: !5370)
!5370 = !{!5371}
!5371 = !DISubrange(count: 48)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "g_vbi_data", scope: !5343, file: !169, line: 474, baseType: !5373, size: 64, offset: 128)
!5373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5374, size: 64)
!5374 = !DISubroutineType(types: !5375)
!5375 = !{!278, !4433, !5376}
!5376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5362, size: 64)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "g_sliced_vbi_cap", scope: !5343, file: !169, line: 475, baseType: !5378, size: 64, offset: 192)
!5378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5379, size: 64)
!5379 = !DISubroutineType(types: !5380)
!5380 = !{!278, !4433, !5381}
!5381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5382, size: 64)
!5382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_sliced_vbi_cap", file: !130, line: 2141, size: 928, elements: !5383)
!5383 = !{!5384, !5385, !5389, !5390}
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "service_set", scope: !5382, file: !130, line: 2142, baseType: !880, size: 16)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "service_lines", scope: !5382, file: !130, line: 2147, baseType: !5386, size: 768, offset: 16)
!5386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !880, size: 768, elements: !5387)
!5387 = !{!1595, !5388}
!5388 = !DISubrange(count: 24)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5382, file: !130, line: 2148, baseType: !437, size: 32, offset: 800)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5382, file: !130, line: 2149, baseType: !5209, size: 96, offset: 832)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "s_raw_fmt", scope: !5343, file: !169, line: 476, baseType: !5392, size: 64, offset: 256)
!5392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5393, size: 64)
!5393 = !DISubroutineType(types: !5394)
!5394 = !{!278, !4433, !5395}
!5395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5396, size: 64)
!5396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_vbi_format", file: !130, line: 2089, size: 352, elements: !5397)
!5397 = !{!5398, !5399, !5400, !5401, !5402, !5404, !5405, !5406}
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "sampling_rate", scope: !5396, file: !130, line: 2090, baseType: !437, size: 32)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5396, file: !130, line: 2091, baseType: !437, size: 32, offset: 32)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "samples_per_line", scope: !5396, file: !130, line: 2092, baseType: !437, size: 32, offset: 64)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "sample_format", scope: !5396, file: !130, line: 2093, baseType: !437, size: 32, offset: 96)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5396, file: !130, line: 2094, baseType: !5403, size: 64, offset: 128)
!5403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1465, size: 64, elements: !1594)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5396, file: !130, line: 2095, baseType: !1593, size: 64, offset: 192)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5396, file: !130, line: 2096, baseType: !437, size: 32, offset: 256)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5396, file: !130, line: 2097, baseType: !1593, size: 64, offset: 288)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "g_sliced_fmt", scope: !5343, file: !169, line: 477, baseType: !5408, size: 64, offset: 320)
!5408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5409, size: 64)
!5409 = !DISubroutineType(types: !5410)
!5410 = !{!278, !4433, !5411}
!5411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5412, size: 64)
!5412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_sliced_vbi_format", file: !130, line: 2117, size: 896, elements: !5413)
!5413 = !{!5414, !5415, !5416, !5417}
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "service_set", scope: !5412, file: !130, line: 2118, baseType: !880, size: 16)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "service_lines", scope: !5412, file: !130, line: 2123, baseType: !5386, size: 768, offset: 16)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "io_size", scope: !5412, file: !130, line: 2124, baseType: !437, size: 32, offset: 800)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5412, file: !130, line: 2125, baseType: !1593, size: 64, offset: 832)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "s_sliced_fmt", scope: !5343, file: !169, line: 478, baseType: !5408, size: 64, offset: 384)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "ir", scope: !4996, file: !169, line: 751, baseType: !5420, size: 64, offset: 320)
!5420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5421, size: 64)
!5421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5422)
!5422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_ir_ops", file: !169, line: 589, size: 384, elements: !5423)
!5423 = !{!5424, !5429, !5451, !5452, !5453, !5454}
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "rx_read", scope: !5422, file: !169, line: 591, baseType: !5425, size: 64)
!5425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5426, size: 64)
!5426 = !DISubroutineType(types: !5427)
!5427 = !{!278, !4433, !4501, !341, !5428}
!5428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "rx_g_parameters", scope: !5422, file: !169, line: 594, baseType: !5430, size: 64, offset: 64)
!5430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5431, size: 64)
!5431 = !DISubroutineType(types: !5432)
!5432 = !{!278, !4433, !5433}
!5433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5434, size: 64)
!5434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_ir_parameters", file: !169, line: 530, size: 352, elements: !5435)
!5435 = !{!5436, !5437, !5438, !5439, !5440, !5441, !5442, !5443, !5444, !5445, !5446, !5447, !5448, !5449, !5450}
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_per_data_element", scope: !5434, file: !169, line: 531, baseType: !7, size: 32)
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5434, file: !169, line: 532, baseType: !168, size: 32, offset: 32)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !5434, file: !169, line: 534, baseType: !510, size: 8, offset: 64)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_enable", scope: !5434, file: !169, line: 535, baseType: !510, size: 8, offset: 72)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !5434, file: !169, line: 536, baseType: !510, size: 8, offset: 80)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !5434, file: !169, line: 538, baseType: !510, size: 8, offset: 88)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "max_pulse_width", scope: !5434, file: !169, line: 539, baseType: !435, size: 32, offset: 96)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "carrier_freq", scope: !5434, file: !169, line: 540, baseType: !7, size: 32, offset: 128)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "duty_cycle", scope: !5434, file: !169, line: 541, baseType: !7, size: 32, offset: 160)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "invert_level", scope: !5434, file: !169, line: 542, baseType: !510, size: 8, offset: 192)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "invert_carrier_sense", scope: !5434, file: !169, line: 545, baseType: !510, size: 8, offset: 200)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "noise_filter_min_width", scope: !5434, file: !169, line: 548, baseType: !435, size: 32, offset: 224)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "carrier_range_lower", scope: !5434, file: !169, line: 549, baseType: !7, size: 32, offset: 256)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "carrier_range_upper", scope: !5434, file: !169, line: 550, baseType: !7, size: 32, offset: 288)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !5434, file: !169, line: 551, baseType: !435, size: 32, offset: 320)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "rx_s_parameters", scope: !5422, file: !169, line: 596, baseType: !5430, size: 64, offset: 128)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "tx_write", scope: !5422, file: !169, line: 600, baseType: !5425, size: 64, offset: 192)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "tx_g_parameters", scope: !5422, file: !169, line: 603, baseType: !5430, size: 64, offset: 256)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "tx_s_parameters", scope: !5422, file: !169, line: 605, baseType: !5430, size: 64, offset: 320)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "sensor", scope: !4996, file: !169, line: 752, baseType: !5456, size: 64, offset: 384)
!5456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5457, size: 64)
!5457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5458)
!5458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_sensor_ops", file: !169, line: 491, size: 128, elements: !5459)
!5459 = !{!5460, !5461}
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "g_skip_top_lines", scope: !5458, file: !169, line: 492, baseType: !5270, size: 64)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "g_skip_frames", scope: !5458, file: !169, line: 493, baseType: !5270, size: 64, offset: 64)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !4996, file: !169, line: 753, baseType: !5463, size: 64, offset: 448)
!5463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5464, size: 64)
!5464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5465)
!5465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_pad_ops", file: !169, line: 688, size: 1088, elements: !5466)
!5466 = !{!5467, !5503, !5519, !5535, !5550, !5561, !5562, !5575, !5576, !5590, !5591, !5618, !5629, !5633, !5648, !5649, !5658}
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "init_cfg", scope: !5465, file: !169, line: 689, baseType: !5468, size: 64)
!5468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5469, size: 64)
!5469 = !DISubroutineType(types: !5470)
!5470 = !{!278, !4433, !5471}
!5471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5472, size: 64)
!5472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_pad_config", file: !169, line: 620, size: 640, elements: !5473)
!5473 = !{!5474, !5495, !5502}
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "try_fmt", scope: !5472, file: !169, line: 621, baseType: !5475, size: 384)
!5475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_mbus_framefmt", file: !5476, line: 35, size: 384, elements: !5477)
!5476 = !DIFile(filename: "./include/uapi/linux/v4l2-mediabus.h", directory: "/home/lizy2001/genbc/linux")
!5477 = !{!5478, !5479, !5480, !5481, !5482, !5483, !5488, !5489, !5490, !5491}
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !5475, file: !5476, line: 36, baseType: !437, size: 32)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !5475, file: !5476, line: 37, baseType: !437, size: 32, offset: 32)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !5475, file: !5476, line: 38, baseType: !437, size: 32, offset: 64)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !5475, file: !5476, line: 39, baseType: !437, size: 32, offset: 96)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !5475, file: !5476, line: 40, baseType: !437, size: 32, offset: 128)
!5483 = !DIDerivedType(tag: DW_TAG_member, scope: !5475, file: !5476, line: 41, baseType: !5484, size: 16, offset: 160)
!5484 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5475, file: !5476, line: 41, size: 16, elements: !5485)
!5485 = !{!5486, !5487}
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "ycbcr_enc", scope: !5484, file: !5476, line: 43, baseType: !880, size: 16)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "hsv_enc", scope: !5484, file: !5476, line: 45, baseType: !880, size: 16)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "quantization", scope: !5475, file: !5476, line: 47, baseType: !880, size: 16, offset: 176)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "xfer_func", scope: !5475, file: !5476, line: 48, baseType: !880, size: 16, offset: 192)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5475, file: !5476, line: 49, baseType: !880, size: 16, offset: 208)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5475, file: !5476, line: 50, baseType: !5492, size: 160, offset: 224)
!5492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !880, size: 160, elements: !5493)
!5493 = !{!5494}
!5494 = !DISubrange(count: 10)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "try_crop", scope: !5472, file: !169, line: 622, baseType: !5496, size: 128, offset: 384)
!5496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_rect", file: !130, line: 414, size: 128, elements: !5497)
!5497 = !{!5498, !5499, !5500, !5501}
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !5496, file: !130, line: 415, baseType: !1465, size: 32)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !5496, file: !130, line: 416, baseType: !1465, size: 32, offset: 32)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !5496, file: !130, line: 417, baseType: !437, size: 32, offset: 64)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !5496, file: !130, line: 418, baseType: !437, size: 32, offset: 96)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "try_compose", scope: !5472, file: !169, line: 623, baseType: !5496, size: 128, offset: 512)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "enum_mbus_code", scope: !5465, file: !169, line: 691, baseType: !5504, size: 64, offset: 64)
!5504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5505, size: 64)
!5505 = !DISubroutineType(types: !5506)
!5506 = !{!278, !4433, !5471, !5507}
!5507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5508, size: 64)
!5508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_mbus_code_enum", file: !5289, line: 82, size: 384, elements: !5509)
!5509 = !{!5510, !5511, !5512, !5513, !5514, !5515}
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !5508, file: !5289, line: 83, baseType: !437, size: 32)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5508, file: !5289, line: 84, baseType: !437, size: 32, offset: 32)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !5508, file: !5289, line: 85, baseType: !437, size: 32, offset: 64)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "which", scope: !5508, file: !5289, line: 86, baseType: !437, size: 32, offset: 96)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5508, file: !5289, line: 87, baseType: !437, size: 32, offset: 128)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5508, file: !5289, line: 88, baseType: !5516, size: 224, offset: 160)
!5516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !437, size: 224, elements: !5517)
!5517 = !{!5518}
!5518 = !DISubrange(count: 7)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "enum_frame_size", scope: !5465, file: !169, line: 694, baseType: !5520, size: 64, offset: 128)
!5520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5521, size: 64)
!5521 = !DISubroutineType(types: !5522)
!5522 = !{!278, !4433, !5471, !5523}
!5523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5524, size: 64)
!5524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_frame_size_enum", file: !5289, line: 98, size: 512, elements: !5525)
!5525 = !{!5526, !5527, !5528, !5529, !5530, !5531, !5532, !5533, !5534}
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5524, file: !5289, line: 99, baseType: !437, size: 32)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !5524, file: !5289, line: 100, baseType: !437, size: 32, offset: 32)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !5524, file: !5289, line: 101, baseType: !437, size: 32, offset: 64)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "min_width", scope: !5524, file: !5289, line: 102, baseType: !437, size: 32, offset: 96)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "max_width", scope: !5524, file: !5289, line: 103, baseType: !437, size: 32, offset: 128)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "min_height", scope: !5524, file: !5289, line: 104, baseType: !437, size: 32, offset: 160)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "max_height", scope: !5524, file: !5289, line: 105, baseType: !437, size: 32, offset: 192)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "which", scope: !5524, file: !5289, line: 106, baseType: !437, size: 32, offset: 224)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5524, file: !5289, line: 107, baseType: !4767, size: 256, offset: 256)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "enum_frame_interval", scope: !5465, file: !169, line: 697, baseType: !5536, size: 64, offset: 192)
!5536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5537, size: 64)
!5537 = !DISubroutineType(types: !5538)
!5538 = !{!278, !4433, !5471, !5539}
!5539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5540, size: 64)
!5540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_frame_interval_enum", file: !5289, line: 131, size: 512, elements: !5541)
!5541 = !{!5542, !5543, !5544, !5545, !5546, !5547, !5548, !5549}
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5540, file: !5289, line: 132, baseType: !437, size: 32)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !5540, file: !5289, line: 133, baseType: !437, size: 32, offset: 32)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !5540, file: !5289, line: 134, baseType: !437, size: 32, offset: 64)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !5540, file: !5289, line: 135, baseType: !437, size: 32, offset: 96)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !5540, file: !5289, line: 136, baseType: !437, size: 32, offset: 128)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !5540, file: !5289, line: 137, baseType: !5279, size: 64, offset: 160)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "which", scope: !5540, file: !5289, line: 138, baseType: !437, size: 32, offset: 224)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5540, file: !5289, line: 139, baseType: !4767, size: 256, offset: 256)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "get_fmt", scope: !5465, file: !169, line: 700, baseType: !5551, size: 64, offset: 256)
!5551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5552, size: 64)
!5552 = !DISubroutineType(types: !5553)
!5553 = !{!278, !4433, !5471, !5554}
!5554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5555, size: 64)
!5555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_format", file: !5289, line: 48, size: 704, elements: !5556)
!5556 = !{!5557, !5558, !5559, !5560}
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "which", scope: !5555, file: !5289, line: 49, baseType: !437, size: 32)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !5555, file: !5289, line: 50, baseType: !437, size: 32, offset: 32)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !5555, file: !5289, line: 51, baseType: !5475, size: 384, offset: 64)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5555, file: !5289, line: 52, baseType: !4767, size: 256, offset: 448)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "set_fmt", scope: !5465, file: !169, line: 703, baseType: !5551, size: 64, offset: 320)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "get_selection", scope: !5465, file: !169, line: 706, baseType: !5563, size: 64, offset: 384)
!5563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5564, size: 64)
!5564 = !DISubroutineType(types: !5565)
!5565 = !{!278, !4433, !5471, !5566}
!5566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5567, size: 64)
!5567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_selection", file: !5289, line: 157, size: 512, elements: !5568)
!5568 = !{!5569, !5570, !5571, !5572, !5573, !5574}
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "which", scope: !5567, file: !5289, line: 158, baseType: !437, size: 32)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !5567, file: !5289, line: 159, baseType: !437, size: 32, offset: 32)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !5567, file: !5289, line: 160, baseType: !437, size: 32, offset: 64)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5567, file: !5289, line: 161, baseType: !437, size: 32, offset: 96)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !5567, file: !5289, line: 162, baseType: !5496, size: 128, offset: 128)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5567, file: !5289, line: 163, baseType: !4767, size: 256, offset: 256)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "set_selection", scope: !5465, file: !169, line: 709, baseType: !5563, size: 64, offset: 448)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "get_edid", scope: !5465, file: !169, line: 712, baseType: !5577, size: 64, offset: 512)
!5577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5578, size: 64)
!5578 = !DISubroutineType(types: !5579)
!5579 = !{!278, !4433, !5580}
!5580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5581, size: 64)
!5581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_edid", file: !5582, line: 87, size: 320, elements: !5583)
!5582 = !DIFile(filename: "./include/uapi/linux/v4l2-common.h", directory: "/home/lizy2001/genbc/linux")
!5583 = !{!5584, !5585, !5586, !5587, !5588}
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !5581, file: !5582, line: 88, baseType: !437, size: 32)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "start_block", scope: !5581, file: !5582, line: 89, baseType: !437, size: 32, offset: 32)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !5581, file: !5582, line: 90, baseType: !437, size: 32, offset: 64)
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5581, file: !5582, line: 91, baseType: !5126, size: 160, offset: 96)
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "edid", scope: !5581, file: !5582, line: 92, baseType: !5589, size: 64, offset: 256)
!5589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "set_edid", scope: !5465, file: !169, line: 713, baseType: !5577, size: 64, offset: 576)
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "dv_timings_cap", scope: !5465, file: !169, line: 714, baseType: !5592, size: 64, offset: 640)
!5592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5593, size: 64)
!5593 = !DISubroutineType(types: !5594)
!5594 = !{!278, !4433, !5595}
!5595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5596, size: 64)
!5596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_dv_timings_cap", file: !130, line: 1627, size: 1152, elements: !5597)
!5597 = !{!5598, !5599, !5600, !5601}
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5596, file: !130, line: 1628, baseType: !437, size: 32)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !5596, file: !130, line: 1629, baseType: !437, size: 32, offset: 32)
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5596, file: !130, line: 1630, baseType: !1593, size: 64, offset: 64)
!5601 = !DIDerivedType(tag: DW_TAG_member, scope: !5596, file: !130, line: 1631, baseType: !5602, size: 1024, offset: 128)
!5602 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5596, file: !130, line: 1631, size: 1024, elements: !5603)
!5603 = !{!5604, !5617}
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "bt", scope: !5602, file: !130, line: 1632, baseType: !5605, size: 832)
!5605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_bt_timings_cap", file: !130, line: 1600, size: 832, elements: !5606)
!5606 = !{!5607, !5608, !5609, !5610, !5611, !5612, !5613, !5614, !5615}
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "min_width", scope: !5605, file: !130, line: 1601, baseType: !437, size: 32)
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "max_width", scope: !5605, file: !130, line: 1602, baseType: !437, size: 32, offset: 32)
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "min_height", scope: !5605, file: !130, line: 1603, baseType: !437, size: 32, offset: 64)
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "max_height", scope: !5605, file: !130, line: 1604, baseType: !437, size: 32, offset: 96)
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "min_pixelclock", scope: !5605, file: !130, line: 1605, baseType: !442, size: 64, offset: 128)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "max_pixelclock", scope: !5605, file: !130, line: 1606, baseType: !442, size: 64, offset: 192)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "standards", scope: !5605, file: !130, line: 1607, baseType: !437, size: 32, offset: 256)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !5605, file: !130, line: 1608, baseType: !437, size: 32, offset: 288)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5605, file: !130, line: 1609, baseType: !5616, size: 512, offset: 320)
!5616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !437, size: 512, elements: !1760)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data", scope: !5602, file: !130, line: 1633, baseType: !5333, size: 1024)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "enum_dv_timings", scope: !5465, file: !169, line: 716, baseType: !5619, size: 64, offset: 704)
!5619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5620, size: 64)
!5620 = !DISubroutineType(types: !5621)
!5621 = !{!278, !4433, !5622}
!5622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5623, size: 64)
!5623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_enum_dv_timings", file: !130, line: 1582, size: 1184, elements: !5624)
!5624 = !{!5625, !5626, !5627, !5628}
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5623, file: !130, line: 1583, baseType: !437, size: 32)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !5623, file: !130, line: 1584, baseType: !437, size: 32, offset: 32)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5623, file: !130, line: 1585, baseType: !1593, size: 64, offset: 64)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "timings", scope: !5623, file: !130, line: 1586, baseType: !5300, size: 1056, offset: 128)
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "link_validate", scope: !5465, file: !169, line: 719, baseType: !5630, size: 64, offset: 768)
!5630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5631, size: 64)
!5631 = !DISubroutineType(types: !5632)
!5632 = !{!278, !4433, !4303, !5554, !5554}
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "get_frame_desc", scope: !5465, file: !169, line: 723, baseType: !5634, size: 64, offset: 832)
!5634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5635, size: 64)
!5635 = !DISubroutineType(types: !5636)
!5636 = !{!278, !4433, !7, !5637}
!5637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5638, size: 64)
!5638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_mbus_frame_desc", file: !169, line: 348, size: 416, elements: !5639)
!5639 = !{!5640, !5647}
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5638, file: !169, line: 349, baseType: !5641, size: 384)
!5641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5642, size: 384, elements: !1175)
!5642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_mbus_frame_desc_entry", file: !169, line: 335, size: 96, elements: !5643)
!5643 = !{!5644, !5645, !5646}
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5642, file: !169, line: 336, baseType: !172, size: 32)
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "pixelcode", scope: !5642, file: !169, line: 337, baseType: !435, size: 32, offset: 32)
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5642, file: !169, line: 338, baseType: !435, size: 32, offset: 64)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "num_entries", scope: !5638, file: !169, line: 350, baseType: !336, size: 16, offset: 384)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "set_frame_desc", scope: !5465, file: !169, line: 725, baseType: !5634, size: 64, offset: 896)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "get_mbus_config", scope: !5465, file: !169, line: 727, baseType: !5650, size: 64, offset: 960)
!5650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5651, size: 64)
!5651 = !DISubroutineType(types: !5652)
!5652 = !{!278, !4433, !7, !5653}
!5653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5654, size: 64)
!5654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_mbus_config", file: !177, line: 122, size: 64, elements: !5655)
!5655 = !{!5656, !5657}
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5654, file: !177, line: 123, baseType: !176, size: 32)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5654, file: !177, line: 124, baseType: !7, size: 32, offset: 32)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "set_mbus_config", scope: !5465, file: !169, line: 729, baseType: !5650, size: 64, offset: 1024)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ops", scope: !4198, file: !169, line: 876, baseType: !5660, size: 64, offset: 1408)
!5660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5661, size: 64)
!5661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5662)
!5662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_internal_ops", file: !169, line: 783, size: 320, elements: !5663)
!5663 = !{!5664, !5665, !5669, !5679, !5680}
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !5662, file: !169, line: 784, baseType: !5004, size: 64)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "unregistered", scope: !5662, file: !169, line: 785, baseType: !5666, size: 64, offset: 64)
!5666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5667, size: 64)
!5667 = !DISubroutineType(types: !5668)
!5668 = !{null, !4433}
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5662, file: !169, line: 786, baseType: !5670, size: 64, offset: 128)
!5670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5671, size: 64)
!5671 = !DISubroutineType(types: !5672)
!5672 = !{!278, !4433, !5673}
!5673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5674, size: 64)
!5674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_fh", file: !169, line: 924, size: 1152, elements: !5675)
!5675 = !{!5676, !5677, !5678}
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "vfh", scope: !5674, file: !169, line: 925, baseType: !5043, size: 1024)
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5674, file: !169, line: 926, baseType: !213, size: 64, offset: 1024)
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !5674, file: !169, line: 928, baseType: !5471, size: 64, offset: 1088)
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !5662, file: !169, line: 787, baseType: !5670, size: 64, offset: 192)
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5662, file: !169, line: 788, baseType: !5666, size: 64, offset: 256)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl_handler", scope: !4198, file: !169, line: 877, baseType: !4435, size: 64, offset: 1472)
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4198, file: !169, line: 878, baseType: !2727, size: 256, offset: 1536)
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "grp_id", scope: !4198, file: !169, line: 879, baseType: !435, size: 32, offset: 1792)
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "dev_priv", scope: !4198, file: !169, line: 880, baseType: !218, size: 64, offset: 1856)
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "host_priv", scope: !4198, file: !169, line: 881, baseType: !218, size: 64, offset: 1920)
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4198, file: !169, line: 882, baseType: !5048, size: 64, offset: 1984)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4198, file: !169, line: 883, baseType: !3416, size: 64, offset: 2048)
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4198, file: !169, line: 884, baseType: !3722, size: 64, offset: 2112)
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "async_list", scope: !4198, file: !169, line: 885, baseType: !239, size: 128, offset: 2176)
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "asd", scope: !4198, file: !169, line: 886, baseType: !5691, size: 64, offset: 2304)
!5691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5692, size: 64)
!5692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_async_subdev", file: !187, line: 79, size: 448, elements: !5693)
!5693 = !{!5694, !5695, !5713, !5714}
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "match_type", scope: !5692, file: !187, line: 80, baseType: !186, size: 32)
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !5692, file: !187, line: 93, baseType: !5696, size: 128, offset: 64)
!5696 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5692, file: !187, line: 81, size: 128, elements: !5697)
!5697 = !{!5698, !5699, !5700, !5705}
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5696, file: !187, line: 82, baseType: !3722, size: 64)
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !5696, file: !187, line: 83, baseType: !235, size: 64)
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "i2c", scope: !5696, file: !187, line: 87, baseType: !5701, size: 64)
!5701 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5696, file: !187, line: 84, size: 64, elements: !5702)
!5702 = !{!5703, !5704}
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "adapter_id", scope: !5701, file: !187, line: 85, baseType: !278, size: 32)
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5701, file: !187, line: 86, baseType: !336, size: 16, offset: 32)
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "custom", scope: !5696, file: !187, line: 92, baseType: !5706, size: 128)
!5706 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5696, file: !187, line: 88, size: 128, elements: !5707)
!5707 = !{!5708, !5712}
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !5706, file: !187, line: 89, baseType: !5709, size: 64)
!5709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5710, size: 64)
!5710 = !DISubroutineType(types: !5711)
!5711 = !{!510, !3416, !5691}
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !5706, file: !187, line: 91, baseType: !218, size: 64, offset: 64)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5692, file: !187, line: 96, baseType: !239, size: 128, offset: 192)
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "asd_list", scope: !5692, file: !187, line: 97, baseType: !239, size: 128, offset: 320)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "notifier", scope: !4198, file: !169, line: 887, baseType: !5716, size: 64, offset: 2368)
!5716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5717, size: 64)
!5717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_async_notifier", file: !187, line: 129, size: 768, elements: !5718)
!5718 = !{!5719, !5736, !5737, !5738, !5739, !5740, !5741, !5742}
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5717, file: !187, line: 130, baseType: !5720, size: 64)
!5720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5721, size: 64)
!5721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5722)
!5722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_async_notifier_operations", file: !187, line: 107, size: 192, elements: !5723)
!5723 = !{!5724, !5728, !5732}
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !5722, file: !187, line: 108, baseType: !5725, size: 64)
!5725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5726, size: 64)
!5726 = !DISubroutineType(types: !5727)
!5727 = !{!278, !5716, !4433, !5691}
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !5722, file: !187, line: 111, baseType: !5729, size: 64, offset: 64)
!5729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5730, size: 64)
!5730 = !DISubroutineType(types: !5731)
!5731 = !{!278, !5716}
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !5722, file: !187, line: 112, baseType: !5733, size: 64, offset: 128)
!5733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5734, size: 64)
!5734 = !DISubroutineType(types: !5735)
!5735 = !{null, !5716, !4433, !5691}
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "v4l2_dev", scope: !5717, file: !187, line: 131, baseType: !4417, size: 64, offset: 64)
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !5717, file: !187, line: 132, baseType: !4433, size: 64, offset: 128)
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5717, file: !187, line: 133, baseType: !5716, size: 64, offset: 192)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "asd_list", scope: !5717, file: !187, line: 134, baseType: !239, size: 128, offset: 256)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !5717, file: !187, line: 135, baseType: !239, size: 128, offset: 384)
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !5717, file: !187, line: 136, baseType: !239, size: 128, offset: 512)
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5717, file: !187, line: 137, baseType: !239, size: 128, offset: 640)
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "subdev_notifier", scope: !4198, file: !169, line: 888, baseType: !5716, size: 64, offset: 2432)
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "pdata", scope: !4198, file: !169, line: 889, baseType: !5745, size: 64, offset: 2496)
!5745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5746, size: 64)
!5746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_platform_data", file: !169, line: 815, size: 192, elements: !5747)
!5747 = !{!5748, !5751, !5752}
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "regulators", scope: !5746, file: !169, line: 816, baseType: !5749, size: 64)
!5749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5750, size: 64)
!5750 = !DICompositeType(tag: DW_TAG_structure_type, name: "regulator_bulk_data", file: !169, line: 806, flags: DIFlagFwdDecl)
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "num_regulators", scope: !5746, file: !169, line: 817, baseType: !278, size: 32, offset: 64)
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "host_priv", scope: !5746, file: !169, line: 819, baseType: !218, size: 64, offset: 128)
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "hdl", scope: !220, file: !3, line: 35, baseType: !4436, size: 1536, offset: 2624)
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_auto", scope: !220, file: !3, line: 36, baseType: !4451, size: 64, offset: 4160)
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth", scope: !220, file: !3, line: 37, baseType: !4451, size: 64, offset: 4224)
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "lna_gain", scope: !220, file: !3, line: 38, baseType: !4451, size: 64, offset: 4288)
!5757 = !DIDerivedType(tag: DW_TAG_member, name: "mixer_gain", scope: !220, file: !3, line: 39, baseType: !4451, size: 64, offset: 4352)
!5758 = !DIDerivedType(tag: DW_TAG_member, name: "if_gain", scope: !220, file: !3, line: 40, baseType: !4451, size: 64, offset: 4416)
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "f_tuner", scope: !220, file: !3, line: 42, baseType: !7, size: 32, offset: 4480)
!5760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5761, size: 64)
!5761 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !242)
!5762 = !{!0, !5763, !5768, !5773, !5778, !5781, !5785, !5800, !5803, !5807, !5809, !5811, !5823, !5831, !5839}
!5763 = !DIGlobalVariableExpression(var: !5764, expr: !DIExpression())
!5764 = distinct !DIGlobalVariable(name: "__exitcall_msi001_driver_exit", scope: !2, file: !3, line: 500, type: !5765, isLocal: true, isDefinition: true)
!5765 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !5766, line: 117, baseType: !5767)
!5766 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!5767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!5768 = !DIGlobalVariableExpression(var: !5769, expr: !DIExpression())
!5769 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author263", scope: !2, file: !3, line: 502, type: !5770, isLocal: true, isDefinition: true, align: 8)
!5770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, size: 360, elements: !5771)
!5771 = !{!5772}
!5772 = !DISubrange(count: 45)
!5773 = !DIGlobalVariableExpression(var: !5774, expr: !DIExpression())
!5774 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description264", scope: !2, file: !3, line: 503, type: !5775, isLocal: true, isDefinition: true, align: 8)
!5775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, size: 264, elements: !5776)
!5776 = !{!5777}
!5777 = !DISubrange(count: 33)
!5778 = !DIGlobalVariableExpression(var: !5779, expr: !DIExpression())
!5779 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file265", scope: !2, file: !3, line: 504, type: !5780, isLocal: true, isDefinition: true, align: 8)
!5780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, size: 320, elements: !4247)
!5781 = !DIGlobalVariableExpression(var: !5782, expr: !DIExpression())
!5782 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license266", scope: !2, file: !3, line: 504, type: !5783, isLocal: true, isDefinition: true, align: 8)
!5783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, size: 152, elements: !5784)
!5784 = !{!4745}
!5785 = !DIGlobalVariableExpression(var: !5786, expr: !DIExpression())
!5786 = distinct !DIGlobalVariable(name: "msi001_driver", scope: !2, file: !3, line: 491, type: !5787, isLocal: true, isDefinition: true)
!5787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spi_driver", file: !225, line: 278, size: 1408, elements: !5788)
!5788 = !{!5789, !5796, !5797, !5798, !5799}
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !5787, file: !225, line: 279, baseType: !5790, size: 64)
!5790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5791, size: 64)
!5791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5792)
!5792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spi_device_id", file: !3500, line: 494, size: 320, elements: !5793)
!5793 = !{!5794, !5795}
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5792, file: !3500, line: 495, baseType: !2727, size: 256)
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !5792, file: !3500, line: 496, baseType: !3519, size: 64, offset: 256)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !5787, file: !225, line: 280, baseType: !3988, size: 64, offset: 64)
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !5787, file: !225, line: 281, baseType: !3988, size: 64, offset: 128)
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !5787, file: !225, line: 282, baseType: !4019, size: 64, offset: 192)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !5787, file: !225, line: 283, baseType: !3488, size: 1152, offset: 256)
!5800 = !DIGlobalVariableExpression(var: !5801, expr: !DIExpression())
!5801 = distinct !DIGlobalVariable(name: "msi001_id_table", scope: !2, file: !3, line: 485, type: !5802, isLocal: true, isDefinition: true)
!5802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5791, size: 640, elements: !1594)
!5803 = !DIGlobalVariableExpression(var: !5804, expr: !DIExpression())
!5804 = distinct !DIGlobalVariable(name: "bands", scope: !2, file: !3, line: 14, type: !5805, isLocal: true, isDefinition: true)
!5805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5806, size: 1024, elements: !1594)
!5806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5157)
!5807 = !DIGlobalVariableExpression(var: !5808, expr: !DIExpression())
!5808 = distinct !DIGlobalVariable(name: "msi001_ops", scope: !2, file: !3, line: 375, type: !4995, isLocal: true, isDefinition: true)
!5809 = !DIGlobalVariableExpression(var: !5810, expr: !DIExpression())
!5810 = distinct !DIGlobalVariable(name: "msi001_tuner_ops", scope: !2, file: !3, line: 366, type: !5130, isLocal: true, isDefinition: true)
!5811 = !DIGlobalVariableExpression(var: !5812, expr: !DIExpression())
!5812 = distinct !DIGlobalVariable(name: "band_lut", scope: !5813, file: !3, line: 96, type: !5816, isLocal: true, isDefinition: true)
!5813 = distinct !DISubprogram(name: "msi001_set_tuner", scope: !3, file: !3, line: 83, type: !5814, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !266)
!5814 = !DISubroutineType(types: !5815)
!5815 = !{!278, !219}
!5816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5817, size: 320, elements: !4662)
!5817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5818)
!5818 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5813, file: !3, line: 92, size: 64, elements: !5819)
!5819 = !{!5820, !5821, !5822}
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "rf", scope: !5818, file: !3, line: 93, baseType: !435, size: 32)
!5821 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5818, file: !3, line: 94, baseType: !1372, size: 8, offset: 32)
!5822 = !DIDerivedType(tag: DW_TAG_member, name: "div_lo", scope: !5818, file: !3, line: 95, baseType: !1372, size: 8, offset: 40)
!5823 = !DIGlobalVariableExpression(var: !5824, expr: !DIExpression())
!5824 = distinct !DIGlobalVariable(name: "if_freq_lut", scope: !5813, file: !3, line: 106, type: !5825, isLocal: true, isDefinition: true)
!5825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5826, size: 256, elements: !1175)
!5826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5827)
!5827 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5813, file: !3, line: 103, size: 64, elements: !5828)
!5828 = !{!5829, !5830}
!5829 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !5827, file: !3, line: 104, baseType: !435, size: 32)
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "filter_mode", scope: !5827, file: !3, line: 105, baseType: !1372, size: 8, offset: 32)
!5831 = !DIGlobalVariableExpression(var: !5832, expr: !DIExpression())
!5832 = distinct !DIGlobalVariable(name: "bandwidth_lut", scope: !5813, file: !3, line: 115, type: !5833, isLocal: true, isDefinition: true)
!5833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5834, size: 512, elements: !1350)
!5834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5835)
!5835 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5813, file: !3, line: 112, size: 64, elements: !5836)
!5836 = !{!5837, !5838}
!5837 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !5835, file: !3, line: 113, baseType: !435, size: 32)
!5838 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5835, file: !3, line: 114, baseType: !1372, size: 8, offset: 32)
!5839 = !DIGlobalVariableExpression(var: !5840, expr: !DIExpression())
!5840 = distinct !DIGlobalVariable(name: "msi001_ctrl_ops", scope: !2, file: !3, line: 418, type: !4474, isLocal: true, isDefinition: true)
!5841 = !{i32 7, !"Dwarf Version", i32 4}
!5842 = !{i32 2, !"Debug Info Version", i32 3}
!5843 = !{i32 1, !"wchar_size", i32 2}
!5844 = !{i32 1, !"Code Model", i32 2}
!5845 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!5846 = distinct !DISubprogram(name: "msi001_driver_init", scope: !3, file: !3, line: 500, type: !5847, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !266)
!5847 = !DISubroutineType(types: !5848)
!5848 = !{!278}
!5849 = !DILocation(line: 500, column: 1, scope: !5846)
!5850 = distinct !DISubprogram(name: "msi001_driver_exit", scope: !3, file: !3, line: 500, type: !1905, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !266)
!5851 = !DILocation(line: 500, column: 1, scope: !5850)
!5852 = distinct !DISubprogram(name: "spi_unregister_driver", scope: !225, file: !225, line: 298, type: !5853, scopeLine: 299, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !266)
!5853 = !DISubroutineType(types: !5854)
!5854 = !{null, !5855}
!5855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5787, size: 64)
!5856 = !DILocalVariable(name: "sdrv", arg: 1, scope: !5852, file: !225, line: 298, type: !5855)
!5857 = !DILocation(line: 298, column: 61, scope: !5852)
!5858 = !DILocation(line: 300, column: 6, scope: !5859)
!5859 = distinct !DILexicalBlock(scope: !5852, file: !225, line: 300, column: 6)
!5860 = !DILocation(line: 300, column: 6, scope: !5852)
!5861 = !DILocation(line: 301, column: 22, scope: !5859)
!5862 = !DILocation(line: 301, column: 28, scope: !5859)
!5863 = !DILocation(line: 301, column: 3, scope: !5859)
!5864 = !DILocation(line: 302, column: 1, scope: !5852)
!5865 = distinct !DISubprogram(name: "msi001_probe", scope: !3, file: !3, line: 422, type: !3989, scopeLine: 423, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !266)
!5866 = !DILocalVariable(name: "spi", arg: 1, scope: !5865, file: !3, line: 422, type: !223)
!5867 = !DILocation(line: 422, column: 44, scope: !5865)
!5868 = !DILocalVariable(name: "dev", scope: !5865, file: !3, line: 424, type: !219)
!5869 = !DILocation(line: 424, column: 21, scope: !5865)
!5870 = !DILocalVariable(name: "ret", scope: !5865, file: !3, line: 425, type: !278)
!5871 = !DILocation(line: 425, column: 6, scope: !5865)
!5872 = !DILocation(line: 429, column: 8, scope: !5865)
!5873 = !DILocation(line: 429, column: 6, scope: !5865)
!5874 = !DILocation(line: 430, column: 7, scope: !5875)
!5875 = distinct !DILexicalBlock(scope: !5865, file: !3, line: 430, column: 6)
!5876 = !DILocation(line: 430, column: 6, scope: !5865)
!5877 = !DILocation(line: 431, column: 7, scope: !5878)
!5878 = distinct !DILexicalBlock(scope: !5875, file: !3, line: 430, column: 12)
!5879 = !DILocation(line: 432, column: 3, scope: !5878)
!5880 = !DILocation(line: 435, column: 13, scope: !5865)
!5881 = !DILocation(line: 435, column: 2, scope: !5865)
!5882 = !DILocation(line: 435, column: 7, scope: !5865)
!5883 = !DILocation(line: 435, column: 11, scope: !5865)
!5884 = !DILocation(line: 436, column: 26, scope: !5865)
!5885 = !DILocation(line: 436, column: 2, scope: !5865)
!5886 = !DILocation(line: 436, column: 7, scope: !5865)
!5887 = !DILocation(line: 436, column: 15, scope: !5865)
!5888 = !DILocation(line: 437, column: 24, scope: !5865)
!5889 = !DILocation(line: 437, column: 29, scope: !5865)
!5890 = !DILocation(line: 437, column: 33, scope: !5865)
!5891 = !DILocation(line: 437, column: 2, scope: !5865)
!5892 = !DILocation(line: 440, column: 2, scope: !5865)
!5893 = !DILocation(line: 441, column: 43, scope: !5865)
!5894 = !DILocation(line: 441, column: 48, scope: !5865)
!5895 = !DILocation(line: 441, column: 24, scope: !5865)
!5896 = !DILocation(line: 441, column: 2, scope: !5865)
!5897 = !DILocation(line: 441, column: 7, scope: !5865)
!5898 = !DILocation(line: 441, column: 22, scope: !5865)
!5899 = !DILocation(line: 443, column: 38, scope: !5865)
!5900 = !DILocation(line: 443, column: 43, scope: !5865)
!5901 = !DILocation(line: 443, column: 19, scope: !5865)
!5902 = !DILocation(line: 443, column: 2, scope: !5865)
!5903 = !DILocation(line: 443, column: 7, scope: !5865)
!5904 = !DILocation(line: 443, column: 17, scope: !5865)
!5905 = !DILocation(line: 445, column: 29, scope: !5865)
!5906 = !DILocation(line: 445, column: 34, scope: !5865)
!5907 = !DILocation(line: 445, column: 2, scope: !5865)
!5908 = !DILocation(line: 446, column: 37, scope: !5865)
!5909 = !DILocation(line: 446, column: 42, scope: !5865)
!5910 = !DILocation(line: 446, column: 18, scope: !5865)
!5911 = !DILocation(line: 446, column: 2, scope: !5865)
!5912 = !DILocation(line: 446, column: 7, scope: !5865)
!5913 = !DILocation(line: 446, column: 16, scope: !5865)
!5914 = !DILocation(line: 448, column: 39, scope: !5865)
!5915 = !DILocation(line: 448, column: 44, scope: !5865)
!5916 = !DILocation(line: 448, column: 20, scope: !5865)
!5917 = !DILocation(line: 448, column: 2, scope: !5865)
!5918 = !DILocation(line: 448, column: 7, scope: !5865)
!5919 = !DILocation(line: 448, column: 18, scope: !5865)
!5920 = !DILocation(line: 450, column: 36, scope: !5865)
!5921 = !DILocation(line: 450, column: 41, scope: !5865)
!5922 = !DILocation(line: 450, column: 17, scope: !5865)
!5923 = !DILocation(line: 450, column: 2, scope: !5865)
!5924 = !DILocation(line: 450, column: 7, scope: !5865)
!5925 = !DILocation(line: 450, column: 15, scope: !5865)
!5926 = !DILocation(line: 452, column: 6, scope: !5927)
!5927 = distinct !DILexicalBlock(scope: !5865, file: !3, line: 452, column: 6)
!5928 = !DILocation(line: 452, column: 11, scope: !5927)
!5929 = !DILocation(line: 452, column: 15, scope: !5927)
!5930 = !DILocation(line: 452, column: 6, scope: !5865)
!5931 = !DILocation(line: 453, column: 9, scope: !5932)
!5932 = distinct !DILexicalBlock(scope: !5927, file: !3, line: 452, column: 22)
!5933 = !DILocation(line: 453, column: 14, scope: !5932)
!5934 = !DILocation(line: 453, column: 18, scope: !5932)
!5935 = !DILocation(line: 453, column: 7, scope: !5932)
!5936 = !DILocation(line: 454, column: 3, scope: !5932)
!5937 = !DILocation(line: 456, column: 3, scope: !5932)
!5938 = !DILocation(line: 459, column: 26, scope: !5865)
!5939 = !DILocation(line: 459, column: 31, scope: !5865)
!5940 = !DILocation(line: 459, column: 2, scope: !5865)
!5941 = !DILocation(line: 459, column: 7, scope: !5865)
!5942 = !DILocation(line: 459, column: 10, scope: !5865)
!5943 = !DILocation(line: 459, column: 23, scope: !5865)
!5944 = !DILocation(line: 460, column: 2, scope: !5865)
!5945 = !DILabel(scope: !5865, name: "err_ctrl_handler_free", file: !3, line: 461)
!5946 = !DILocation(line: 461, column: 1, scope: !5865)
!5947 = !DILocation(line: 462, column: 26, scope: !5865)
!5948 = !DILocation(line: 462, column: 31, scope: !5865)
!5949 = !DILocation(line: 462, column: 2, scope: !5865)
!5950 = !DILocation(line: 463, column: 8, scope: !5865)
!5951 = !DILocation(line: 463, column: 2, scope: !5865)
!5952 = !DILabel(scope: !5865, name: "err", file: !3, line: 464)
!5953 = !DILocation(line: 464, column: 1, scope: !5865)
!5954 = !DILocation(line: 465, column: 9, scope: !5865)
!5955 = !DILocation(line: 465, column: 2, scope: !5865)
!5956 = !DILocation(line: 466, column: 1, scope: !5865)
!5957 = distinct !DISubprogram(name: "msi001_remove", scope: !3, file: !3, line: 468, type: !3989, scopeLine: 469, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !266)
!5958 = !DILocalVariable(name: "spi", arg: 1, scope: !5957, file: !3, line: 468, type: !223)
!5959 = !DILocation(line: 468, column: 45, scope: !5957)
!5960 = !DILocalVariable(name: "sd", scope: !5957, file: !3, line: 470, type: !4433)
!5961 = !DILocation(line: 470, column: 22, scope: !5957)
!5962 = !DILocation(line: 470, column: 43, scope: !5957)
!5963 = !DILocation(line: 470, column: 27, scope: !5957)
!5964 = !DILocalVariable(name: "dev", scope: !5957, file: !3, line: 471, type: !219)
!5965 = !DILocation(line: 471, column: 21, scope: !5957)
!5966 = !DILocation(line: 471, column: 44, scope: !5957)
!5967 = !DILocation(line: 471, column: 27, scope: !5957)
!5968 = !DILocation(line: 479, column: 33, scope: !5957)
!5969 = !DILocation(line: 479, column: 38, scope: !5957)
!5970 = !DILocation(line: 479, column: 2, scope: !5957)
!5971 = !DILocation(line: 480, column: 26, scope: !5957)
!5972 = !DILocation(line: 480, column: 31, scope: !5957)
!5973 = !DILocation(line: 480, column: 2, scope: !5957)
!5974 = !DILocation(line: 481, column: 8, scope: !5957)
!5975 = !DILocation(line: 481, column: 2, scope: !5957)
!5976 = !DILocation(line: 482, column: 2, scope: !5957)
!5977 = distinct !DISubprogram(name: "kzalloc", scope: !199, file: !199, line: 662, type: !5978, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !266)
!5978 = !DISubroutineType(types: !5979)
!5979 = !{!218, !341, !216}
!5980 = !DILocalVariable(name: "s", arg: 1, scope: !5981, file: !199, line: 445, type: !955)
!5981 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !199, file: !199, line: 445, type: !5982, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !266)
!5982 = !DISubroutineType(types: !5983)
!5983 = !{!218, !955, !216, !341}
!5984 = !DILocation(line: 445, column: 72, scope: !5981, inlinedAt: !5985)
!5985 = distinct !DILocation(line: 552, column: 10, scope: !5986, inlinedAt: !5989)
!5986 = distinct !DILexicalBlock(scope: !5987, file: !199, line: 540, column: 34)
!5987 = distinct !DILexicalBlock(scope: !5988, file: !199, line: 540, column: 6)
!5988 = distinct !DISubprogram(name: "kmalloc", scope: !199, file: !199, line: 538, type: !5978, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !266)
!5989 = distinct !DILocation(line: 664, column: 9, scope: !5977)
!5990 = !DILocalVariable(name: "flags", arg: 2, scope: !5981, file: !199, line: 446, type: !216)
!5991 = !DILocation(line: 446, column: 9, scope: !5981, inlinedAt: !5985)
!5992 = !DILocalVariable(name: "size", arg: 3, scope: !5981, file: !199, line: 446, type: !341)
!5993 = !DILocation(line: 446, column: 23, scope: !5981, inlinedAt: !5985)
!5994 = !DILocalVariable(name: "ret", scope: !5981, file: !199, line: 448, type: !218)
!5995 = !DILocation(line: 448, column: 8, scope: !5981, inlinedAt: !5985)
!5996 = !DILocalVariable(name: "flags", arg: 1, scope: !5997, file: !199, line: 318, type: !216)
!5997 = distinct !DISubprogram(name: "kmalloc_type", scope: !199, file: !199, line: 318, type: !5998, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !266)
!5998 = !DISubroutineType(types: !5999)
!5999 = !{!198, !216}
!6000 = !DILocation(line: 318, column: 67, scope: !5997, inlinedAt: !6001)
!6001 = distinct !DILocation(line: 553, column: 20, scope: !5986, inlinedAt: !5989)
!6002 = !DILocalVariable(name: "size", arg: 1, scope: !6003, file: !199, line: 346, type: !341)
!6003 = distinct !DISubprogram(name: "kmalloc_index", scope: !199, file: !199, line: 346, type: !6004, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !266)
!6004 = !DISubroutineType(types: !6005)
!6005 = !{!7, !341}
!6006 = !DILocation(line: 346, column: 58, scope: !6003, inlinedAt: !6007)
!6007 = distinct !DILocation(line: 547, column: 11, scope: !5986, inlinedAt: !5989)
!6008 = !DILocalVariable(name: "size", arg: 1, scope: !6009, file: !199, line: 472, type: !341)
!6009 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !199, file: !199, line: 472, type: !6010, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !266)
!6010 = !DISubroutineType(types: !6011)
!6011 = !{!218, !341, !216, !7}
!6012 = !DILocation(line: 472, column: 28, scope: !6009, inlinedAt: !6013)
!6013 = distinct !DILocation(line: 481, column: 9, scope: !6014, inlinedAt: !6015)
!6014 = distinct !DISubprogram(name: "kmalloc_large", scope: !199, file: !199, line: 478, type: !5978, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !266)
!6015 = distinct !DILocation(line: 545, column: 11, scope: !6016, inlinedAt: !5989)
!6016 = distinct !DILexicalBlock(scope: !5986, file: !199, line: 544, column: 7)
!6017 = !DILocalVariable(name: "flags", arg: 2, scope: !6009, file: !199, line: 472, type: !216)
!6018 = !DILocation(line: 472, column: 40, scope: !6009, inlinedAt: !6013)
!6019 = !DILocalVariable(name: "order", arg: 3, scope: !6009, file: !199, line: 472, type: !7)
!6020 = !DILocation(line: 472, column: 60, scope: !6009, inlinedAt: !6013)
!6021 = !DILocalVariable(name: "size", arg: 1, scope: !6014, file: !199, line: 478, type: !341)
!6022 = !DILocation(line: 478, column: 51, scope: !6014, inlinedAt: !6015)
!6023 = !DILocalVariable(name: "flags", arg: 2, scope: !6014, file: !199, line: 478, type: !216)
!6024 = !DILocation(line: 478, column: 63, scope: !6014, inlinedAt: !6015)
!6025 = !DILocalVariable(name: "order", scope: !6014, file: !199, line: 480, type: !7)
!6026 = !DILocation(line: 480, column: 15, scope: !6014, inlinedAt: !6015)
!6027 = !DILocalVariable(name: "size", arg: 1, scope: !5988, file: !199, line: 538, type: !341)
!6028 = !DILocation(line: 538, column: 45, scope: !5988, inlinedAt: !5989)
!6029 = !DILocalVariable(name: "flags", arg: 2, scope: !5988, file: !199, line: 538, type: !216)
!6030 = !DILocation(line: 538, column: 57, scope: !5988, inlinedAt: !5989)
!6031 = !DILocalVariable(name: "index", scope: !5986, file: !199, line: 542, type: !7)
!6032 = !DILocation(line: 542, column: 16, scope: !5986, inlinedAt: !5989)
!6033 = !DILocalVariable(name: "size", arg: 1, scope: !5977, file: !199, line: 662, type: !341)
!6034 = !DILocation(line: 662, column: 36, scope: !5977)
!6035 = !DILocalVariable(name: "flags", arg: 2, scope: !5977, file: !199, line: 662, type: !216)
!6036 = !DILocation(line: 662, column: 48, scope: !5977)
!6037 = !DILocation(line: 664, column: 17, scope: !5977)
!6038 = !DILocation(line: 664, column: 23, scope: !5977)
!6039 = !DILocation(line: 664, column: 29, scope: !5977)
!6040 = !DILocation(line: 540, column: 27, scope: !5987, inlinedAt: !5989)
!6041 = !DILocation(line: 540, column: 6, scope: !5987, inlinedAt: !5989)
!6042 = !DILocation(line: 540, column: 6, scope: !5988, inlinedAt: !5989)
!6043 = !DILocation(line: 544, column: 7, scope: !6016, inlinedAt: !5989)
!6044 = !DILocation(line: 544, column: 12, scope: !6016, inlinedAt: !5989)
!6045 = !DILocation(line: 544, column: 7, scope: !5986, inlinedAt: !5989)
!6046 = !DILocation(line: 545, column: 25, scope: !6016, inlinedAt: !5989)
!6047 = !DILocation(line: 545, column: 31, scope: !6016, inlinedAt: !5989)
!6048 = !DILocation(line: 480, column: 33, scope: !6014, inlinedAt: !6015)
!6049 = !DILocation(line: 480, column: 23, scope: !6014, inlinedAt: !6015)
!6050 = !DILocation(line: 481, column: 29, scope: !6014, inlinedAt: !6015)
!6051 = !DILocation(line: 481, column: 35, scope: !6014, inlinedAt: !6015)
!6052 = !DILocation(line: 481, column: 42, scope: !6014, inlinedAt: !6015)
!6053 = !DILocation(line: 474, column: 23, scope: !6009, inlinedAt: !6013)
!6054 = !DILocation(line: 474, column: 29, scope: !6009, inlinedAt: !6013)
!6055 = !DILocation(line: 474, column: 36, scope: !6009, inlinedAt: !6013)
!6056 = !DILocation(line: 474, column: 9, scope: !6009, inlinedAt: !6013)
!6057 = !DILocation(line: 545, column: 4, scope: !6016, inlinedAt: !5989)
!6058 = !DILocation(line: 547, column: 25, scope: !5986, inlinedAt: !5989)
!6059 = !DILocation(line: 348, column: 7, scope: !6060, inlinedAt: !6007)
!6060 = distinct !DILexicalBlock(scope: !6003, file: !199, line: 348, column: 6)
!6061 = !DILocation(line: 348, column: 6, scope: !6003, inlinedAt: !6007)
!6062 = !DILocation(line: 349, column: 3, scope: !6060, inlinedAt: !6007)
!6063 = !DILocation(line: 351, column: 6, scope: !6064, inlinedAt: !6007)
!6064 = distinct !DILexicalBlock(scope: !6003, file: !199, line: 351, column: 6)
!6065 = !DILocation(line: 351, column: 11, scope: !6064, inlinedAt: !6007)
!6066 = !DILocation(line: 351, column: 6, scope: !6003, inlinedAt: !6007)
!6067 = !DILocation(line: 352, column: 3, scope: !6064, inlinedAt: !6007)
!6068 = !DILocation(line: 354, column: 32, scope: !6069, inlinedAt: !6007)
!6069 = distinct !DILexicalBlock(scope: !6003, file: !199, line: 354, column: 6)
!6070 = !DILocation(line: 354, column: 37, scope: !6069, inlinedAt: !6007)
!6071 = !DILocation(line: 354, column: 42, scope: !6069, inlinedAt: !6007)
!6072 = !DILocation(line: 354, column: 45, scope: !6069, inlinedAt: !6007)
!6073 = !DILocation(line: 354, column: 50, scope: !6069, inlinedAt: !6007)
!6074 = !DILocation(line: 354, column: 6, scope: !6003, inlinedAt: !6007)
!6075 = !DILocation(line: 355, column: 3, scope: !6069, inlinedAt: !6007)
!6076 = !DILocation(line: 356, column: 32, scope: !6077, inlinedAt: !6007)
!6077 = distinct !DILexicalBlock(scope: !6003, file: !199, line: 356, column: 6)
!6078 = !DILocation(line: 356, column: 37, scope: !6077, inlinedAt: !6007)
!6079 = !DILocation(line: 356, column: 43, scope: !6077, inlinedAt: !6007)
!6080 = !DILocation(line: 356, column: 46, scope: !6077, inlinedAt: !6007)
!6081 = !DILocation(line: 356, column: 51, scope: !6077, inlinedAt: !6007)
!6082 = !DILocation(line: 356, column: 6, scope: !6003, inlinedAt: !6007)
!6083 = !DILocation(line: 357, column: 3, scope: !6077, inlinedAt: !6007)
!6084 = !DILocation(line: 358, column: 6, scope: !6085, inlinedAt: !6007)
!6085 = distinct !DILexicalBlock(scope: !6003, file: !199, line: 358, column: 6)
!6086 = !DILocation(line: 358, column: 11, scope: !6085, inlinedAt: !6007)
!6087 = !DILocation(line: 358, column: 6, scope: !6003, inlinedAt: !6007)
!6088 = !DILocation(line: 358, column: 26, scope: !6085, inlinedAt: !6007)
!6089 = !DILocation(line: 359, column: 6, scope: !6090, inlinedAt: !6007)
!6090 = distinct !DILexicalBlock(scope: !6003, file: !199, line: 359, column: 6)
!6091 = !DILocation(line: 359, column: 11, scope: !6090, inlinedAt: !6007)
!6092 = !DILocation(line: 359, column: 6, scope: !6003, inlinedAt: !6007)
!6093 = !DILocation(line: 359, column: 26, scope: !6090, inlinedAt: !6007)
!6094 = !DILocation(line: 360, column: 6, scope: !6095, inlinedAt: !6007)
!6095 = distinct !DILexicalBlock(scope: !6003, file: !199, line: 360, column: 6)
!6096 = !DILocation(line: 360, column: 11, scope: !6095, inlinedAt: !6007)
!6097 = !DILocation(line: 360, column: 6, scope: !6003, inlinedAt: !6007)
!6098 = !DILocation(line: 360, column: 26, scope: !6095, inlinedAt: !6007)
!6099 = !DILocation(line: 361, column: 6, scope: !6100, inlinedAt: !6007)
!6100 = distinct !DILexicalBlock(scope: !6003, file: !199, line: 361, column: 6)
!6101 = !DILocation(line: 361, column: 11, scope: !6100, inlinedAt: !6007)
!6102 = !DILocation(line: 361, column: 6, scope: !6003, inlinedAt: !6007)
!6103 = !DILocation(line: 361, column: 26, scope: !6100, inlinedAt: !6007)
!6104 = !DILocation(line: 362, column: 6, scope: !6105, inlinedAt: !6007)
!6105 = distinct !DILexicalBlock(scope: !6003, file: !199, line: 362, column: 6)
!6106 = !DILocation(line: 362, column: 11, scope: !6105, inlinedAt: !6007)
!6107 = !DILocation(line: 362, column: 6, scope: !6003, inlinedAt: !6007)
!6108 = !DILocation(line: 362, column: 26, scope: !6105, inlinedAt: !6007)
!6109 = !DILocation(line: 363, column: 6, scope: !6110, inlinedAt: !6007)
!6110 = distinct !DILexicalBlock(scope: !6003, file: !199, line: 363, column: 6)
!6111 = !DILocation(line: 363, column: 11, scope: !6110, inlinedAt: !6007)
!6112 = !DILocation(line: 363, column: 6, scope: !6003, inlinedAt: !6007)
!6113 = !DILocation(line: 363, column: 26, scope: !6110, inlinedAt: !6007)
!6114 = !DILocation(line: 364, column: 6, scope: !6115, inlinedAt: !6007)
!6115 = distinct !DILexicalBlock(scope: !6003, file: !199, line: 364, column: 6)
!6116 = !DILocation(line: 364, column: 11, scope: !6115, inlinedAt: !6007)
!6117 = !DILocation(line: 364, column: 6, scope: !6003, inlinedAt: !6007)
!6118 = !DILocation(line: 364, column: 26, scope: !6115, inlinedAt: !6007)
!6119 = !DILocation(line: 365, column: 6, scope: !6120, inlinedAt: !6007)
!6120 = distinct !DILexicalBlock(scope: !6003, file: !199, line: 365, column: 6)
!6121 = !DILocation(line: 365, column: 11, scope: !6120, inlinedAt: !6007)
!6122 = !DILocation(line: 365, column: 6, scope: !6003, inlinedAt: !6007)
!6123 = !DILocation(line: 365, column: 26, scope: !6120, inlinedAt: !6007)
!6124 = !DILocation(line: 366, column: 6, scope: !6125, inlinedAt: !6007)
!6125 = distinct !DILexicalBlock(scope: !6003, file: !199, line: 366, column: 6)
!6126 = !DILocation(line: 366, column: 11, scope: !6125, inlinedAt: !6007)
!6127 = !DILocation(line: 366, column: 6, scope: !6003, inlinedAt: !6007)
!6128 = !DILocation(line: 366, column: 26, scope: !6125, inlinedAt: !6007)
!6129 = !DILocation(line: 367, column: 6, scope: !6130, inlinedAt: !6007)
!6130 = distinct !DILexicalBlock(scope: !6003, file: !199, line: 367, column: 6)
!6131 = !DILocation(line: 367, column: 11, scope: !6130, inlinedAt: !6007)
!6132 = !DILocation(line: 367, column: 6, scope: !6003, inlinedAt: !6007)
!6133 = !DILocation(line: 367, column: 26, scope: !6130, inlinedAt: !6007)
!6134 = !DILocation(line: 368, column: 6, scope: !6135, inlinedAt: !6007)
!6135 = distinct !DILexicalBlock(scope: !6003, file: !199, line: 368, column: 6)
!6136 = !DILocation(line: 368, column: 11, scope: !6135, inlinedAt: !6007)
!6137 = !DILocation(line: 368, column: 6, scope: !6003, inlinedAt: !6007)
!6138 = !DILocation(line: 368, column: 26, scope: !6135, inlinedAt: !6007)
!6139 = !DILocation(line: 369, column: 6, scope: !6140, inlinedAt: !6007)
!6140 = distinct !DILexicalBlock(scope: !6003, file: !199, line: 369, column: 6)
!6141 = !DILocation(line: 369, column: 11, scope: !6140, inlinedAt: !6007)
!6142 = !DILocation(line: 369, column: 6, scope: !6003, inlinedAt: !6007)
!6143 = !DILocation(line: 369, column: 26, scope: !6140, inlinedAt: !6007)
!6144 = !DILocation(line: 370, column: 6, scope: !6145, inlinedAt: !6007)
!6145 = distinct !DILexicalBlock(scope: !6003, file: !199, line: 370, column: 6)
!6146 = !DILocation(line: 370, column: 11, scope: !6145, inlinedAt: !6007)
!6147 = !DILocation(line: 370, column: 6, scope: !6003, inlinedAt: !6007)
!6148 = !DILocation(line: 370, column: 26, scope: !6145, inlinedAt: !6007)
!6149 = !DILocation(line: 371, column: 6, scope: !6150, inlinedAt: !6007)
!6150 = distinct !DILexicalBlock(scope: !6003, file: !199, line: 371, column: 6)
!6151 = !DILocation(line: 371, column: 11, scope: !6150, inlinedAt: !6007)
!6152 = !DILocation(line: 371, column: 6, scope: !6003, inlinedAt: !6007)
!6153 = !DILocation(line: 371, column: 26, scope: !6150, inlinedAt: !6007)
!6154 = !DILocation(line: 372, column: 6, scope: !6155, inlinedAt: !6007)
!6155 = distinct !DILexicalBlock(scope: !6003, file: !199, line: 372, column: 6)
!6156 = !DILocation(line: 372, column: 11, scope: !6155, inlinedAt: !6007)
!6157 = !DILocation(line: 372, column: 6, scope: !6003, inlinedAt: !6007)
!6158 = !DILocation(line: 372, column: 26, scope: !6155, inlinedAt: !6007)
!6159 = !DILocation(line: 373, column: 6, scope: !6160, inlinedAt: !6007)
!6160 = distinct !DILexicalBlock(scope: !6003, file: !199, line: 373, column: 6)
!6161 = !DILocation(line: 373, column: 11, scope: !6160, inlinedAt: !6007)
!6162 = !DILocation(line: 373, column: 6, scope: !6003, inlinedAt: !6007)
!6163 = !DILocation(line: 373, column: 26, scope: !6160, inlinedAt: !6007)
!6164 = !DILocation(line: 374, column: 6, scope: !6165, inlinedAt: !6007)
!6165 = distinct !DILexicalBlock(scope: !6003, file: !199, line: 374, column: 6)
!6166 = !DILocation(line: 374, column: 11, scope: !6165, inlinedAt: !6007)
!6167 = !DILocation(line: 374, column: 6, scope: !6003, inlinedAt: !6007)
!6168 = !DILocation(line: 374, column: 26, scope: !6165, inlinedAt: !6007)
!6169 = !DILocation(line: 375, column: 6, scope: !6170, inlinedAt: !6007)
!6170 = distinct !DILexicalBlock(scope: !6003, file: !199, line: 375, column: 6)
!6171 = !DILocation(line: 375, column: 11, scope: !6170, inlinedAt: !6007)
!6172 = !DILocation(line: 375, column: 6, scope: !6003, inlinedAt: !6007)
!6173 = !DILocation(line: 375, column: 27, scope: !6170, inlinedAt: !6007)
!6174 = !DILocation(line: 376, column: 6, scope: !6175, inlinedAt: !6007)
!6175 = distinct !DILexicalBlock(scope: !6003, file: !199, line: 376, column: 6)
!6176 = !DILocation(line: 376, column: 11, scope: !6175, inlinedAt: !6007)
!6177 = !DILocation(line: 376, column: 6, scope: !6003, inlinedAt: !6007)
!6178 = !DILocation(line: 376, column: 32, scope: !6175, inlinedAt: !6007)
!6179 = !DILocation(line: 377, column: 6, scope: !6180, inlinedAt: !6007)
!6180 = distinct !DILexicalBlock(scope: !6003, file: !199, line: 377, column: 6)
!6181 = !DILocation(line: 377, column: 11, scope: !6180, inlinedAt: !6007)
!6182 = !DILocation(line: 377, column: 6, scope: !6003, inlinedAt: !6007)
!6183 = !DILocation(line: 377, column: 32, scope: !6180, inlinedAt: !6007)
!6184 = !DILocation(line: 378, column: 6, scope: !6185, inlinedAt: !6007)
!6185 = distinct !DILexicalBlock(scope: !6003, file: !199, line: 378, column: 6)
!6186 = !DILocation(line: 378, column: 11, scope: !6185, inlinedAt: !6007)
!6187 = !DILocation(line: 378, column: 6, scope: !6003, inlinedAt: !6007)
!6188 = !DILocation(line: 378, column: 32, scope: !6185, inlinedAt: !6007)
!6189 = !DILocation(line: 379, column: 6, scope: !6190, inlinedAt: !6007)
!6190 = distinct !DILexicalBlock(scope: !6003, file: !199, line: 379, column: 6)
!6191 = !DILocation(line: 379, column: 11, scope: !6190, inlinedAt: !6007)
!6192 = !DILocation(line: 379, column: 6, scope: !6003, inlinedAt: !6007)
!6193 = !DILocation(line: 379, column: 33, scope: !6190, inlinedAt: !6007)
!6194 = !DILocation(line: 380, column: 6, scope: !6195, inlinedAt: !6007)
!6195 = distinct !DILexicalBlock(scope: !6003, file: !199, line: 380, column: 6)
!6196 = !DILocation(line: 380, column: 11, scope: !6195, inlinedAt: !6007)
!6197 = !DILocation(line: 380, column: 6, scope: !6003, inlinedAt: !6007)
!6198 = !DILocation(line: 380, column: 33, scope: !6195, inlinedAt: !6007)
!6199 = !DILocation(line: 381, column: 6, scope: !6200, inlinedAt: !6007)
!6200 = distinct !DILexicalBlock(scope: !6003, file: !199, line: 381, column: 6)
!6201 = !DILocation(line: 381, column: 11, scope: !6200, inlinedAt: !6007)
!6202 = !DILocation(line: 381, column: 6, scope: !6003, inlinedAt: !6007)
!6203 = !DILocation(line: 381, column: 33, scope: !6200, inlinedAt: !6007)
!6204 = !DILocation(line: 382, column: 2, scope: !6205, inlinedAt: !6007)
!6205 = distinct !DILexicalBlock(scope: !6206, file: !199, line: 382, column: 2)
!6206 = distinct !DILexicalBlock(scope: !6003, file: !199, line: 382, column: 2)
!6207 = !{i32 -2142303051, i32 -2142303022, i32 -2142302976, i32 -2142302918, i32 -2142302864, i32 -2142302810, i32 -2142302755, i32 -2142302724}
!6208 = !DILocation(line: 382, column: 2, scope: !6209, inlinedAt: !6007)
!6209 = distinct !DILexicalBlock(scope: !6210, file: !199, line: 382, column: 2)
!6210 = distinct !DILexicalBlock(scope: !6206, file: !199, line: 382, column: 2)
!6211 = !{i32 -2142302281, i32 -2142302274, i32 -2142302220, i32 -2142302189, i32 -2142302159}
!6212 = !DILocation(line: 382, column: 2, scope: !6210, inlinedAt: !6007)
!6213 = !DILocation(line: 386, column: 1, scope: !6003, inlinedAt: !6007)
!6214 = !DILocation(line: 547, column: 9, scope: !5986, inlinedAt: !5989)
!6215 = !DILocation(line: 549, column: 8, scope: !6216, inlinedAt: !5989)
!6216 = distinct !DILexicalBlock(scope: !5986, file: !199, line: 549, column: 7)
!6217 = !DILocation(line: 549, column: 7, scope: !5986, inlinedAt: !5989)
!6218 = !DILocation(line: 550, column: 4, scope: !6216, inlinedAt: !5989)
!6219 = !DILocation(line: 553, column: 33, scope: !5986, inlinedAt: !5989)
!6220 = !DILocation(line: 325, column: 6, scope: !6221, inlinedAt: !6001)
!6221 = distinct !DILexicalBlock(scope: !5997, file: !199, line: 325, column: 6)
!6222 = !DILocation(line: 325, column: 6, scope: !5997, inlinedAt: !6001)
!6223 = !DILocation(line: 326, column: 3, scope: !6221, inlinedAt: !6001)
!6224 = !DILocation(line: 332, column: 9, scope: !5997, inlinedAt: !6001)
!6225 = !DILocation(line: 332, column: 15, scope: !5997, inlinedAt: !6001)
!6226 = !DILocation(line: 332, column: 2, scope: !5997, inlinedAt: !6001)
!6227 = !DILocation(line: 336, column: 1, scope: !5997, inlinedAt: !6001)
!6228 = !DILocation(line: 553, column: 5, scope: !5986, inlinedAt: !5989)
!6229 = !DILocation(line: 553, column: 41, scope: !5986, inlinedAt: !5989)
!6230 = !DILocation(line: 554, column: 5, scope: !5986, inlinedAt: !5989)
!6231 = !DILocation(line: 554, column: 12, scope: !5986, inlinedAt: !5989)
!6232 = !DILocation(line: 448, column: 31, scope: !5981, inlinedAt: !5985)
!6233 = !DILocation(line: 448, column: 34, scope: !5981, inlinedAt: !5985)
!6234 = !DILocation(line: 448, column: 14, scope: !5981, inlinedAt: !5985)
!6235 = !DILocation(line: 450, column: 22, scope: !5981, inlinedAt: !5985)
!6236 = !DILocation(line: 450, column: 25, scope: !5981, inlinedAt: !5985)
!6237 = !DILocation(line: 450, column: 30, scope: !5981, inlinedAt: !5985)
!6238 = !DILocation(line: 450, column: 36, scope: !5981, inlinedAt: !5985)
!6239 = !DILocation(line: 450, column: 8, scope: !5981, inlinedAt: !5985)
!6240 = !DILocation(line: 450, column: 6, scope: !5981, inlinedAt: !5985)
!6241 = !DILocation(line: 451, column: 9, scope: !5981, inlinedAt: !5985)
!6242 = !DILocation(line: 552, column: 3, scope: !5986, inlinedAt: !5989)
!6243 = !DILocation(line: 557, column: 19, scope: !5988, inlinedAt: !5989)
!6244 = !DILocation(line: 557, column: 25, scope: !5988, inlinedAt: !5989)
!6245 = !DILocation(line: 557, column: 9, scope: !5988, inlinedAt: !5989)
!6246 = !DILocation(line: 557, column: 2, scope: !5988, inlinedAt: !5989)
!6247 = !DILocation(line: 558, column: 1, scope: !5988, inlinedAt: !5989)
!6248 = !DILocation(line: 664, column: 2, scope: !5977)
!6249 = distinct !DISubprogram(name: "get_order", scope: !6250, file: !6250, line: 29, type: !6251, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !266)
!6250 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!6251 = !DISubroutineType(types: !6252)
!6252 = !{!278, !344}
!6253 = !DILocalVariable(name: "x", arg: 1, scope: !6254, file: !6255, line: 366, type: !442)
!6254 = distinct !DISubprogram(name: "fls64", scope: !6255, file: !6255, line: 366, type: !6256, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !266)
!6255 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!6256 = !DISubroutineType(types: !6257)
!6257 = !{!278, !442}
!6258 = !DILocation(line: 366, column: 40, scope: !6254, inlinedAt: !6259)
!6259 = distinct !DILocation(line: 46, column: 9, scope: !6249)
!6260 = !DILocalVariable(name: "bitpos", scope: !6254, file: !6255, line: 368, type: !278)
!6261 = !DILocation(line: 368, column: 6, scope: !6254, inlinedAt: !6259)
!6262 = !DILocalVariable(name: "size", arg: 1, scope: !6249, file: !6250, line: 29, type: !344)
!6263 = !DILocation(line: 29, column: 63, scope: !6249)
!6264 = !DILocation(line: 31, column: 27, scope: !6265)
!6265 = distinct !DILexicalBlock(scope: !6249, file: !6250, line: 31, column: 6)
!6266 = !DILocation(line: 31, column: 6, scope: !6265)
!6267 = !DILocation(line: 31, column: 6, scope: !6249)
!6268 = !DILocation(line: 32, column: 8, scope: !6269)
!6269 = distinct !DILexicalBlock(scope: !6270, file: !6250, line: 32, column: 7)
!6270 = distinct !DILexicalBlock(scope: !6265, file: !6250, line: 31, column: 34)
!6271 = !DILocation(line: 32, column: 7, scope: !6270)
!6272 = !DILocation(line: 33, column: 4, scope: !6269)
!6273 = !DILocation(line: 35, column: 7, scope: !6274)
!6274 = distinct !DILexicalBlock(scope: !6270, file: !6250, line: 35, column: 7)
!6275 = !DILocation(line: 35, column: 12, scope: !6274)
!6276 = !DILocation(line: 35, column: 7, scope: !6270)
!6277 = !DILocation(line: 36, column: 4, scope: !6274)
!6278 = !DILocation(line: 38, column: 10, scope: !6270)
!6279 = !DILocation(line: 38, column: 28, scope: !6270)
!6280 = !DILocation(line: 38, column: 41, scope: !6270)
!6281 = !DILocation(line: 38, column: 3, scope: !6270)
!6282 = !DILocation(line: 41, column: 6, scope: !6249)
!6283 = !DILocation(line: 42, column: 7, scope: !6249)
!6284 = !DILocation(line: 46, column: 15, scope: !6249)
!6285 = !DILocation(line: 374, column: 2, scope: !6254, inlinedAt: !6259)
!6286 = !DILocation(line: 376, column: 14, scope: !6254, inlinedAt: !6259)
!6287 = !{i32 308974}
!6288 = !DILocation(line: 377, column: 9, scope: !6254, inlinedAt: !6259)
!6289 = !DILocation(line: 377, column: 16, scope: !6254, inlinedAt: !6259)
!6290 = !DILocation(line: 46, column: 2, scope: !6249)
!6291 = !DILocation(line: 48, column: 1, scope: !6249)
!6292 = distinct !DISubprogram(name: "__ilog2_u64", scope: !6293, file: !6293, line: 30, type: !6294, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !266)
!6293 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!6294 = !DISubroutineType(types: !6295)
!6295 = !{!278, !441}
!6296 = !DILocation(line: 366, column: 40, scope: !6254, inlinedAt: !6297)
!6297 = distinct !DILocation(line: 32, column: 9, scope: !6292)
!6298 = !DILocation(line: 368, column: 6, scope: !6254, inlinedAt: !6297)
!6299 = !DILocalVariable(name: "n", arg: 1, scope: !6292, file: !6293, line: 30, type: !441)
!6300 = !DILocation(line: 30, column: 21, scope: !6292)
!6301 = !DILocation(line: 32, column: 15, scope: !6292)
!6302 = !DILocation(line: 374, column: 2, scope: !6254, inlinedAt: !6297)
!6303 = !DILocation(line: 376, column: 14, scope: !6254, inlinedAt: !6297)
!6304 = !DILocation(line: 377, column: 9, scope: !6254, inlinedAt: !6297)
!6305 = !DILocation(line: 377, column: 16, scope: !6254, inlinedAt: !6297)
!6306 = !DILocation(line: 32, column: 18, scope: !6292)
!6307 = !DILocation(line: 32, column: 2, scope: !6292)
!6308 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !6309, file: !6309, line: 137, type: !6310, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !266)
!6309 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!6310 = !DISubroutineType(types: !6311)
!6311 = !{!218, !955, !2154, !341, !216}
!6312 = !DILocalVariable(name: "s", arg: 1, scope: !6308, file: !6309, line: 137, type: !955)
!6313 = !DILocation(line: 137, column: 54, scope: !6308)
!6314 = !DILocalVariable(name: "object", arg: 2, scope: !6308, file: !6309, line: 137, type: !2154)
!6315 = !DILocation(line: 137, column: 69, scope: !6308)
!6316 = !DILocalVariable(name: "size", arg: 3, scope: !6308, file: !6309, line: 138, type: !341)
!6317 = !DILocation(line: 138, column: 12, scope: !6308)
!6318 = !DILocalVariable(name: "flags", arg: 4, scope: !6308, file: !6309, line: 138, type: !216)
!6319 = !DILocation(line: 138, column: 24, scope: !6308)
!6320 = !DILocation(line: 140, column: 17, scope: !6308)
!6321 = !DILocation(line: 140, column: 2, scope: !6308)
!6322 = distinct !DISubprogram(name: "msi001_standby", scope: !3, file: !3, line: 285, type: !5005, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !266)
!6323 = !DILocalVariable(name: "sd", arg: 1, scope: !6322, file: !3, line: 285, type: !4433)
!6324 = !DILocation(line: 285, column: 47, scope: !6322)
!6325 = !DILocalVariable(name: "dev", scope: !6322, file: !3, line: 287, type: !219)
!6326 = !DILocation(line: 287, column: 21, scope: !6322)
!6327 = !DILocation(line: 287, column: 44, scope: !6322)
!6328 = !DILocation(line: 287, column: 27, scope: !6322)
!6329 = !DILocation(line: 289, column: 21, scope: !6322)
!6330 = !DILocation(line: 289, column: 9, scope: !6322)
!6331 = !DILocation(line: 289, column: 2, scope: !6322)
!6332 = distinct !DISubprogram(name: "msi001_s_frequency", scope: !3, file: !3, line: 327, type: !5137, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !266)
!6333 = !DILocalVariable(name: "sd", arg: 1, scope: !6332, file: !3, line: 327, type: !4433)
!6334 = !DILocation(line: 327, column: 51, scope: !6332)
!6335 = !DILocalVariable(name: "f", arg: 2, scope: !6332, file: !3, line: 328, type: !5139)
!6336 = !DILocation(line: 328, column: 39, scope: !6332)
!6337 = !DILocalVariable(name: "dev", scope: !6332, file: !3, line: 330, type: !219)
!6338 = !DILocation(line: 330, column: 21, scope: !6332)
!6339 = !DILocation(line: 330, column: 44, scope: !6332)
!6340 = !DILocation(line: 330, column: 27, scope: !6332)
!6341 = !DILocalVariable(name: "spi", scope: !6332, file: !3, line: 331, type: !223)
!6342 = !DILocation(line: 331, column: 21, scope: !6332)
!6343 = !DILocation(line: 331, column: 27, scope: !6332)
!6344 = !DILocation(line: 331, column: 32, scope: !6332)
!6345 = !DILocalVariable(name: "band", scope: !6332, file: !3, line: 332, type: !7)
!6346 = !DILocation(line: 332, column: 15, scope: !6332)
!6347 = !DILocation(line: 337, column: 6, scope: !6348)
!6348 = distinct !DILexicalBlock(scope: !6332, file: !3, line: 337, column: 6)
!6349 = !DILocation(line: 337, column: 9, scope: !6348)
!6350 = !DILocation(line: 337, column: 32, scope: !6348)
!6351 = !DILocation(line: 337, column: 53, scope: !6348)
!6352 = !DILocation(line: 337, column: 42, scope: !6348)
!6353 = !DILocation(line: 337, column: 63, scope: !6348)
!6354 = !DILocation(line: 337, column: 19, scope: !6348)
!6355 = !DILocation(line: 337, column: 6, scope: !6332)
!6356 = !DILocation(line: 338, column: 8, scope: !6348)
!6357 = !DILocation(line: 338, column: 3, scope: !6348)
!6358 = !DILocation(line: 340, column: 8, scope: !6348)
!6359 = !DILocalVariable(name: "__UNIQUE_ID___x259", scope: !6360, file: !3, line: 341, type: !7)
!6360 = distinct !DILexicalBlock(scope: !6332, file: !3, line: 341, column: 17)
!6361 = !DILocation(line: 341, column: 17, scope: !6360)
!6362 = !DILocalVariable(name: "__UNIQUE_ID___x257", scope: !6363, file: !3, line: 341, type: !7)
!6363 = distinct !DILexicalBlock(scope: !6360, file: !3, line: 341, column: 17)
!6364 = !DILocation(line: 341, column: 17, scope: !6363)
!6365 = !DILocalVariable(name: "__UNIQUE_ID___y258", scope: !6363, file: !3, line: 341, type: !7)
!6366 = !DILocalVariable(name: "__UNIQUE_ID___y260", scope: !6360, file: !3, line: 341, type: !7)
!6367 = !DILocation(line: 341, column: 2, scope: !6332)
!6368 = !DILocation(line: 341, column: 7, scope: !6332)
!6369 = !DILocation(line: 341, column: 15, scope: !6332)
!6370 = !DILocation(line: 344, column: 26, scope: !6332)
!6371 = !DILocation(line: 344, column: 9, scope: !6332)
!6372 = !DILocation(line: 344, column: 2, scope: !6332)
!6373 = distinct !DISubprogram(name: "msi001_g_frequency", scope: !3, file: !3, line: 317, type: !5149, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !266)
!6374 = !DILocalVariable(name: "sd", arg: 1, scope: !6373, file: !3, line: 317, type: !4433)
!6375 = !DILocation(line: 317, column: 51, scope: !6373)
!6376 = !DILocalVariable(name: "f", arg: 2, scope: !6373, file: !3, line: 317, type: !5151)
!6377 = !DILocation(line: 317, column: 78, scope: !6373)
!6378 = !DILocalVariable(name: "dev", scope: !6373, file: !3, line: 319, type: !219)
!6379 = !DILocation(line: 319, column: 21, scope: !6373)
!6380 = !DILocation(line: 319, column: 44, scope: !6373)
!6381 = !DILocation(line: 319, column: 27, scope: !6373)
!6382 = !DILocalVariable(name: "spi", scope: !6373, file: !3, line: 320, type: !223)
!6383 = !DILocation(line: 320, column: 21, scope: !6373)
!6384 = !DILocation(line: 320, column: 27, scope: !6373)
!6385 = !DILocation(line: 320, column: 32, scope: !6373)
!6386 = !DILocation(line: 323, column: 17, scope: !6373)
!6387 = !DILocation(line: 323, column: 22, scope: !6373)
!6388 = !DILocation(line: 323, column: 2, scope: !6373)
!6389 = !DILocation(line: 323, column: 5, scope: !6373)
!6390 = !DILocation(line: 323, column: 15, scope: !6373)
!6391 = !DILocation(line: 324, column: 2, scope: !6373)
!6392 = distinct !DISubprogram(name: "msi001_enum_freq_bands", scope: !3, file: !3, line: 347, type: !5154, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !266)
!6393 = !DILocalVariable(name: "sd", arg: 1, scope: !6392, file: !3, line: 347, type: !4433)
!6394 = !DILocation(line: 347, column: 55, scope: !6392)
!6395 = !DILocalVariable(name: "band", arg: 2, scope: !6392, file: !3, line: 348, type: !5156)
!6396 = !DILocation(line: 348, column: 35, scope: !6392)
!6397 = !DILocalVariable(name: "dev", scope: !6392, file: !3, line: 350, type: !219)
!6398 = !DILocation(line: 350, column: 21, scope: !6392)
!6399 = !DILocation(line: 350, column: 44, scope: !6392)
!6400 = !DILocation(line: 350, column: 27, scope: !6392)
!6401 = !DILocalVariable(name: "spi", scope: !6392, file: !3, line: 351, type: !223)
!6402 = !DILocation(line: 351, column: 21, scope: !6392)
!6403 = !DILocation(line: 351, column: 27, scope: !6392)
!6404 = !DILocation(line: 351, column: 32, scope: !6392)
!6405 = !DILocation(line: 356, column: 6, scope: !6406)
!6406 = distinct !DILexicalBlock(scope: !6392, file: !3, line: 356, column: 6)
!6407 = !DILocation(line: 356, column: 12, scope: !6406)
!6408 = !DILocation(line: 356, column: 18, scope: !6406)
!6409 = !DILocation(line: 356, column: 6, scope: !6392)
!6410 = !DILocation(line: 357, column: 3, scope: !6406)
!6411 = !DILocation(line: 359, column: 27, scope: !6392)
!6412 = !DILocation(line: 359, column: 33, scope: !6392)
!6413 = !DILocation(line: 359, column: 21, scope: !6392)
!6414 = !DILocation(line: 359, column: 40, scope: !6392)
!6415 = !DILocation(line: 359, column: 2, scope: !6392)
!6416 = !DILocation(line: 359, column: 8, scope: !6392)
!6417 = !DILocation(line: 359, column: 19, scope: !6392)
!6418 = !DILocation(line: 360, column: 25, scope: !6392)
!6419 = !DILocation(line: 360, column: 31, scope: !6392)
!6420 = !DILocation(line: 360, column: 19, scope: !6392)
!6421 = !DILocation(line: 360, column: 38, scope: !6392)
!6422 = !DILocation(line: 360, column: 2, scope: !6392)
!6423 = !DILocation(line: 360, column: 8, scope: !6392)
!6424 = !DILocation(line: 360, column: 17, scope: !6392)
!6425 = !DILocation(line: 361, column: 26, scope: !6392)
!6426 = !DILocation(line: 361, column: 32, scope: !6392)
!6427 = !DILocation(line: 361, column: 20, scope: !6392)
!6428 = !DILocation(line: 361, column: 39, scope: !6392)
!6429 = !DILocation(line: 361, column: 2, scope: !6392)
!6430 = !DILocation(line: 361, column: 8, scope: !6392)
!6431 = !DILocation(line: 361, column: 18, scope: !6392)
!6432 = !DILocation(line: 363, column: 2, scope: !6392)
!6433 = !DILocation(line: 364, column: 1, scope: !6392)
!6434 = distinct !DISubprogram(name: "msi001_g_tuner", scope: !3, file: !3, line: 292, type: !5170, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !266)
!6435 = !DILocalVariable(name: "sd", arg: 1, scope: !6434, file: !3, line: 292, type: !4433)
!6436 = !DILocation(line: 292, column: 47, scope: !6434)
!6437 = !DILocalVariable(name: "v", arg: 2, scope: !6434, file: !3, line: 292, type: !5172)
!6438 = !DILocation(line: 292, column: 70, scope: !6434)
!6439 = !DILocalVariable(name: "dev", scope: !6434, file: !3, line: 294, type: !219)
!6440 = !DILocation(line: 294, column: 21, scope: !6434)
!6441 = !DILocation(line: 294, column: 44, scope: !6434)
!6442 = !DILocation(line: 294, column: 27, scope: !6434)
!6443 = !DILocalVariable(name: "spi", scope: !6434, file: !3, line: 295, type: !223)
!6444 = !DILocation(line: 295, column: 21, scope: !6434)
!6445 = !DILocation(line: 295, column: 27, scope: !6434)
!6446 = !DILocation(line: 295, column: 32, scope: !6434)
!6447 = !DILocation(line: 299, column: 10, scope: !6434)
!6448 = !DILocation(line: 299, column: 13, scope: !6434)
!6449 = !DILocation(line: 299, column: 2, scope: !6434)
!6450 = !DILocation(line: 300, column: 2, scope: !6434)
!6451 = !DILocation(line: 300, column: 5, scope: !6434)
!6452 = !DILocation(line: 300, column: 10, scope: !6434)
!6453 = !DILocation(line: 301, column: 2, scope: !6434)
!6454 = !DILocation(line: 301, column: 5, scope: !6434)
!6455 = !DILocation(line: 301, column: 16, scope: !6434)
!6456 = !DILocation(line: 302, column: 2, scope: !6434)
!6457 = !DILocation(line: 302, column: 5, scope: !6434)
!6458 = !DILocation(line: 302, column: 14, scope: !6434)
!6459 = !DILocation(line: 303, column: 2, scope: !6434)
!6460 = !DILocation(line: 303, column: 5, scope: !6434)
!6461 = !DILocation(line: 303, column: 15, scope: !6434)
!6462 = !DILocation(line: 305, column: 2, scope: !6434)
!6463 = distinct !DISubprogram(name: "msi001_s_tuner", scope: !3, file: !3, line: 308, type: !5190, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !266)
!6464 = !DILocalVariable(name: "sd", arg: 1, scope: !6463, file: !3, line: 308, type: !4433)
!6465 = !DILocation(line: 308, column: 47, scope: !6463)
!6466 = !DILocalVariable(name: "v", arg: 2, scope: !6463, file: !3, line: 308, type: !5192)
!6467 = !DILocation(line: 308, column: 76, scope: !6463)
!6468 = !DILocalVariable(name: "dev", scope: !6463, file: !3, line: 310, type: !219)
!6469 = !DILocation(line: 310, column: 21, scope: !6463)
!6470 = !DILocation(line: 310, column: 44, scope: !6463)
!6471 = !DILocation(line: 310, column: 27, scope: !6463)
!6472 = !DILocalVariable(name: "spi", scope: !6463, file: !3, line: 311, type: !223)
!6473 = !DILocation(line: 311, column: 21, scope: !6463)
!6474 = !DILocation(line: 311, column: 27, scope: !6463)
!6475 = !DILocation(line: 311, column: 32, scope: !6463)
!6476 = !DILocation(line: 314, column: 2, scope: !6463)
!6477 = distinct !DISubprogram(name: "sd_to_msi001_dev", scope: !3, file: !3, line: 45, type: !6478, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !266)
!6478 = !DISubroutineType(types: !6479)
!6479 = !{!219, !4433}
!6480 = !DILocalVariable(name: "sd", arg: 1, scope: !6477, file: !3, line: 45, type: !4433)
!6481 = !DILocation(line: 45, column: 71, scope: !6477)
!6482 = !DILocalVariable(name: "__mptr", scope: !6483, file: !3, line: 47, type: !218)
!6483 = distinct !DILexicalBlock(scope: !6477, file: !3, line: 47, column: 9)
!6484 = !DILocation(line: 47, column: 9, scope: !6483)
!6485 = !DILocation(line: 47, column: 9, scope: !6486)
!6486 = distinct !DILexicalBlock(scope: !6483, file: !3, line: 47, column: 9)
!6487 = !DILocation(line: 47, column: 2, scope: !6477)
!6488 = distinct !DISubprogram(name: "msi001_wreg", scope: !3, file: !3, line: 50, type: !6489, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !266)
!6489 = !DISubroutineType(types: !6490)
!6490 = !{!278, !219, !435}
!6491 = !DILocalVariable(name: "dev", arg: 1, scope: !6488, file: !3, line: 50, type: !219)
!6492 = !DILocation(line: 50, column: 43, scope: !6488)
!6493 = !DILocalVariable(name: "data", arg: 2, scope: !6488, file: !3, line: 50, type: !435)
!6494 = !DILocation(line: 50, column: 52, scope: !6488)
!6495 = !DILocation(line: 53, column: 19, scope: !6488)
!6496 = !DILocation(line: 53, column: 24, scope: !6488)
!6497 = !DILocation(line: 53, column: 29, scope: !6488)
!6498 = !DILocation(line: 53, column: 9, scope: !6488)
!6499 = !DILocation(line: 53, column: 2, scope: !6488)
!6500 = distinct !DISubprogram(name: "spi_write", scope: !225, file: !225, line: 1278, type: !6501, scopeLine: 1279, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !266)
!6501 = !DISubroutineType(types: !6502)
!6502 = !{!278, !223, !2154, !341}
!6503 = !DILocalVariable(name: "spi", arg: 1, scope: !6500, file: !225, line: 1278, type: !223)
!6504 = !DILocation(line: 1278, column: 30, scope: !6500)
!6505 = !DILocalVariable(name: "buf", arg: 2, scope: !6500, file: !225, line: 1278, type: !2154)
!6506 = !DILocation(line: 1278, column: 47, scope: !6500)
!6507 = !DILocalVariable(name: "len", arg: 3, scope: !6500, file: !225, line: 1278, type: !341)
!6508 = !DILocation(line: 1278, column: 59, scope: !6500)
!6509 = !DILocalVariable(name: "t", scope: !6500, file: !225, line: 1280, type: !4027)
!6510 = !DILocation(line: 1280, column: 22, scope: !6500)
!6511 = !DILocation(line: 1280, column: 26, scope: !6500)
!6512 = !DILocation(line: 1281, column: 15, scope: !6500)
!6513 = !DILocation(line: 1282, column: 12, scope: !6500)
!6514 = !DILocation(line: 1285, column: 27, scope: !6500)
!6515 = !DILocation(line: 1285, column: 9, scope: !6500)
!6516 = !DILocation(line: 1285, column: 2, scope: !6500)
!6517 = distinct !DISubprogram(name: "spi_sync_transfer", scope: !225, file: !225, line: 1255, type: !6518, scopeLine: 1257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !266)
!6518 = !DISubroutineType(types: !6519)
!6519 = !{!278, !223, !4026, !7}
!6520 = !DILocalVariable(name: "spi", arg: 1, scope: !6517, file: !225, line: 1255, type: !223)
!6521 = !DILocation(line: 1255, column: 38, scope: !6517)
!6522 = !DILocalVariable(name: "xfers", arg: 2, scope: !6517, file: !225, line: 1255, type: !4026)
!6523 = !DILocation(line: 1255, column: 64, scope: !6517)
!6524 = !DILocalVariable(name: "num_xfers", arg: 3, scope: !6517, file: !225, line: 1256, type: !7)
!6525 = !DILocation(line: 1256, column: 15, scope: !6517)
!6526 = !DILocalVariable(name: "msg", scope: !6517, file: !225, line: 1258, type: !4005)
!6527 = !DILocation(line: 1258, column: 21, scope: !6517)
!6528 = !DILocation(line: 1260, column: 40, scope: !6517)
!6529 = !DILocation(line: 1260, column: 47, scope: !6517)
!6530 = !DILocation(line: 1260, column: 2, scope: !6517)
!6531 = !DILocation(line: 1262, column: 18, scope: !6517)
!6532 = !DILocation(line: 1262, column: 9, scope: !6517)
!6533 = !DILocation(line: 1262, column: 2, scope: !6517)
!6534 = distinct !DISubprogram(name: "spi_message_init_with_transfers", scope: !225, file: !225, line: 1083, type: !6535, scopeLine: 1085, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !266)
!6535 = !DISubroutineType(types: !6536)
!6536 = !{null, !4004, !4026, !7}
!6537 = !DILocalVariable(name: "m", arg: 1, scope: !6534, file: !225, line: 1083, type: !4004)
!6538 = !DILocation(line: 1083, column: 53, scope: !6534)
!6539 = !DILocalVariable(name: "xfers", arg: 2, scope: !6534, file: !225, line: 1084, type: !4026)
!6540 = !DILocation(line: 1084, column: 22, scope: !6534)
!6541 = !DILocalVariable(name: "num_xfers", arg: 3, scope: !6534, file: !225, line: 1084, type: !7)
!6542 = !DILocation(line: 1084, column: 42, scope: !6534)
!6543 = !DILocalVariable(name: "i", scope: !6534, file: !225, line: 1086, type: !7)
!6544 = !DILocation(line: 1086, column: 15, scope: !6534)
!6545 = !DILocation(line: 1088, column: 19, scope: !6534)
!6546 = !DILocation(line: 1088, column: 2, scope: !6534)
!6547 = !DILocation(line: 1089, column: 9, scope: !6548)
!6548 = distinct !DILexicalBlock(scope: !6534, file: !225, line: 1089, column: 2)
!6549 = !DILocation(line: 1089, column: 7, scope: !6548)
!6550 = !DILocation(line: 1089, column: 14, scope: !6551)
!6551 = distinct !DILexicalBlock(scope: !6548, file: !225, line: 1089, column: 2)
!6552 = !DILocation(line: 1089, column: 18, scope: !6551)
!6553 = !DILocation(line: 1089, column: 16, scope: !6551)
!6554 = !DILocation(line: 1089, column: 2, scope: !6548)
!6555 = !DILocation(line: 1090, column: 25, scope: !6551)
!6556 = !DILocation(line: 1090, column: 31, scope: !6551)
!6557 = !DILocation(line: 1090, column: 35, scope: !6551)
!6558 = !DILocation(line: 1090, column: 3, scope: !6551)
!6559 = !DILocation(line: 1089, column: 29, scope: !6551)
!6560 = !DILocation(line: 1089, column: 2, scope: !6551)
!6561 = distinct !{!6561, !6554, !6562}
!6562 = !DILocation(line: 1090, column: 36, scope: !6548)
!6563 = !DILocation(line: 1091, column: 1, scope: !6534)
!6564 = distinct !DISubprogram(name: "spi_message_init", scope: !225, file: !225, line: 1041, type: !6565, scopeLine: 1042, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !266)
!6565 = !DISubroutineType(types: !6566)
!6566 = !{null, !4004}
!6567 = !DILocalVariable(name: "m", arg: 1, scope: !6564, file: !225, line: 1041, type: !4004)
!6568 = !DILocation(line: 1041, column: 57, scope: !6564)
!6569 = !DILocation(line: 1043, column: 9, scope: !6564)
!6570 = !DILocation(line: 1043, column: 2, scope: !6564)
!6571 = !DILocation(line: 1044, column: 29, scope: !6564)
!6572 = !DILocation(line: 1044, column: 2, scope: !6564)
!6573 = !DILocation(line: 1045, column: 1, scope: !6564)
!6574 = distinct !DISubprogram(name: "spi_message_add_tail", scope: !225, file: !225, line: 1048, type: !6575, scopeLine: 1049, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !266)
!6575 = !DISubroutineType(types: !6576)
!6576 = !{null, !4026, !4004}
!6577 = !DILocalVariable(name: "t", arg: 1, scope: !6574, file: !225, line: 1048, type: !4026)
!6578 = !DILocation(line: 1048, column: 43, scope: !6574)
!6579 = !DILocalVariable(name: "m", arg: 2, scope: !6574, file: !225, line: 1048, type: !4004)
!6580 = !DILocation(line: 1048, column: 66, scope: !6574)
!6581 = !DILocation(line: 1050, column: 17, scope: !6574)
!6582 = !DILocation(line: 1050, column: 20, scope: !6574)
!6583 = !DILocation(line: 1050, column: 36, scope: !6574)
!6584 = !DILocation(line: 1050, column: 39, scope: !6574)
!6585 = !DILocation(line: 1050, column: 2, scope: !6574)
!6586 = !DILocation(line: 1051, column: 1, scope: !6574)
!6587 = distinct !DISubprogram(name: "spi_message_init_no_memset", scope: !225, file: !225, line: 1035, type: !6565, scopeLine: 1036, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !266)
!6588 = !DILocalVariable(name: "m", arg: 1, scope: !6587, file: !225, line: 1035, type: !4004)
!6589 = !DILocation(line: 1035, column: 67, scope: !6587)
!6590 = !DILocation(line: 1037, column: 18, scope: !6587)
!6591 = !DILocation(line: 1037, column: 21, scope: !6587)
!6592 = !DILocation(line: 1037, column: 2, scope: !6587)
!6593 = !DILocation(line: 1038, column: 18, scope: !6587)
!6594 = !DILocation(line: 1038, column: 21, scope: !6587)
!6595 = !DILocation(line: 1038, column: 2, scope: !6587)
!6596 = !DILocation(line: 1039, column: 1, scope: !6587)
!6597 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !6598, file: !6598, line: 33, type: !6599, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !266)
!6598 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!6599 = !DISubroutineType(types: !6600)
!6600 = !{null, !242}
!6601 = !DILocalVariable(name: "list", arg: 1, scope: !6597, file: !6598, line: 33, type: !242)
!6602 = !DILocation(line: 33, column: 53, scope: !6597)
!6603 = !DILocation(line: 35, column: 2, scope: !6597)
!6604 = !DILocation(line: 35, column: 2, scope: !6605)
!6605 = distinct !DILexicalBlock(scope: !6597, file: !6598, line: 35, column: 2)
!6606 = !DILocation(line: 35, column: 2, scope: !6607)
!6607 = distinct !DILexicalBlock(scope: !6605, file: !6598, line: 35, column: 2)
!6608 = !DILocation(line: 35, column: 2, scope: !6609)
!6609 = distinct !DILexicalBlock(scope: !6605, file: !6598, line: 35, column: 2)
!6610 = !DILocation(line: 36, column: 15, scope: !6597)
!6611 = !DILocation(line: 36, column: 2, scope: !6597)
!6612 = !DILocation(line: 36, column: 8, scope: !6597)
!6613 = !DILocation(line: 36, column: 13, scope: !6597)
!6614 = !DILocation(line: 37, column: 1, scope: !6597)
!6615 = distinct !DISubprogram(name: "list_add_tail", scope: !6598, file: !6598, line: 98, type: !6616, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !266)
!6616 = !DISubroutineType(types: !6617)
!6617 = !{null, !242, !242}
!6618 = !DILocalVariable(name: "new", arg: 1, scope: !6615, file: !6598, line: 98, type: !242)
!6619 = !DILocation(line: 98, column: 52, scope: !6615)
!6620 = !DILocalVariable(name: "head", arg: 2, scope: !6615, file: !6598, line: 98, type: !242)
!6621 = !DILocation(line: 98, column: 75, scope: !6615)
!6622 = !DILocation(line: 100, column: 13, scope: !6615)
!6623 = !DILocation(line: 100, column: 18, scope: !6615)
!6624 = !DILocation(line: 100, column: 24, scope: !6615)
!6625 = !DILocation(line: 100, column: 30, scope: !6615)
!6626 = !DILocation(line: 100, column: 2, scope: !6615)
!6627 = !DILocation(line: 101, column: 1, scope: !6615)
!6628 = distinct !DISubprogram(name: "__list_add", scope: !6598, file: !6598, line: 63, type: !6629, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !266)
!6629 = !DISubroutineType(types: !6630)
!6630 = !{null, !242, !242, !242}
!6631 = !DILocalVariable(name: "new", arg: 1, scope: !6628, file: !6598, line: 63, type: !242)
!6632 = !DILocation(line: 63, column: 49, scope: !6628)
!6633 = !DILocalVariable(name: "prev", arg: 2, scope: !6628, file: !6598, line: 64, type: !242)
!6634 = !DILocation(line: 64, column: 28, scope: !6628)
!6635 = !DILocalVariable(name: "next", arg: 3, scope: !6628, file: !6598, line: 65, type: !242)
!6636 = !DILocation(line: 65, column: 28, scope: !6628)
!6637 = !DILocation(line: 67, column: 24, scope: !6638)
!6638 = distinct !DILexicalBlock(scope: !6628, file: !6598, line: 67, column: 6)
!6639 = !DILocation(line: 67, column: 29, scope: !6638)
!6640 = !DILocation(line: 67, column: 35, scope: !6638)
!6641 = !DILocation(line: 67, column: 7, scope: !6638)
!6642 = !DILocation(line: 67, column: 6, scope: !6628)
!6643 = !DILocation(line: 68, column: 3, scope: !6638)
!6644 = !DILocation(line: 70, column: 15, scope: !6628)
!6645 = !DILocation(line: 70, column: 2, scope: !6628)
!6646 = !DILocation(line: 70, column: 8, scope: !6628)
!6647 = !DILocation(line: 70, column: 13, scope: !6628)
!6648 = !DILocation(line: 71, column: 14, scope: !6628)
!6649 = !DILocation(line: 71, column: 2, scope: !6628)
!6650 = !DILocation(line: 71, column: 7, scope: !6628)
!6651 = !DILocation(line: 71, column: 12, scope: !6628)
!6652 = !DILocation(line: 72, column: 14, scope: !6628)
!6653 = !DILocation(line: 72, column: 2, scope: !6628)
!6654 = !DILocation(line: 72, column: 7, scope: !6628)
!6655 = !DILocation(line: 72, column: 12, scope: !6628)
!6656 = !DILocation(line: 73, column: 2, scope: !6628)
!6657 = !DILocation(line: 73, column: 2, scope: !6658)
!6658 = distinct !DILexicalBlock(scope: !6628, file: !6598, line: 73, column: 2)
!6659 = !DILocation(line: 73, column: 2, scope: !6660)
!6660 = distinct !DILexicalBlock(scope: !6658, file: !6598, line: 73, column: 2)
!6661 = !DILocation(line: 73, column: 2, scope: !6662)
!6662 = distinct !DILexicalBlock(scope: !6658, file: !6598, line: 73, column: 2)
!6663 = !DILocation(line: 74, column: 1, scope: !6628)
!6664 = distinct !DISubprogram(name: "__list_add_valid", scope: !6598, file: !6598, line: 45, type: !6665, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !266)
!6665 = !DISubroutineType(types: !6666)
!6666 = !{!510, !242, !242, !242}
!6667 = !DILocalVariable(name: "new", arg: 1, scope: !6664, file: !6598, line: 45, type: !242)
!6668 = !DILocation(line: 45, column: 55, scope: !6664)
!6669 = !DILocalVariable(name: "prev", arg: 2, scope: !6664, file: !6598, line: 46, type: !242)
!6670 = !DILocation(line: 46, column: 23, scope: !6664)
!6671 = !DILocalVariable(name: "next", arg: 3, scope: !6664, file: !6598, line: 47, type: !242)
!6672 = !DILocation(line: 47, column: 23, scope: !6664)
!6673 = !DILocation(line: 49, column: 2, scope: !6664)
!6674 = !DILocalVariable(name: "dev", arg: 1, scope: !5813, file: !3, line: 83, type: !219)
!6675 = !DILocation(line: 83, column: 48, scope: !5813)
!6676 = !DILocalVariable(name: "spi", scope: !5813, file: !3, line: 85, type: !223)
!6677 = !DILocation(line: 85, column: 21, scope: !5813)
!6678 = !DILocation(line: 85, column: 27, scope: !5813)
!6679 = !DILocation(line: 85, column: 32, scope: !5813)
!6680 = !DILocalVariable(name: "ret", scope: !5813, file: !3, line: 86, type: !278)
!6681 = !DILocation(line: 86, column: 6, scope: !5813)
!6682 = !DILocalVariable(name: "i", scope: !5813, file: !3, line: 86, type: !278)
!6683 = !DILocation(line: 86, column: 11, scope: !5813)
!6684 = !DILocalVariable(name: "uitmp", scope: !5813, file: !3, line: 87, type: !7)
!6685 = !DILocation(line: 87, column: 15, scope: !5813)
!6686 = !DILocalVariable(name: "div_n", scope: !5813, file: !3, line: 87, type: !7)
!6687 = !DILocation(line: 87, column: 22, scope: !5813)
!6688 = !DILocalVariable(name: "k", scope: !5813, file: !3, line: 87, type: !7)
!6689 = !DILocation(line: 87, column: 29, scope: !5813)
!6690 = !DILocalVariable(name: "k_thresh", scope: !5813, file: !3, line: 87, type: !7)
!6691 = !DILocation(line: 87, column: 32, scope: !5813)
!6692 = !DILocalVariable(name: "k_frac", scope: !5813, file: !3, line: 87, type: !7)
!6693 = !DILocation(line: 87, column: 42, scope: !5813)
!6694 = !DILocalVariable(name: "div_lo", scope: !5813, file: !3, line: 87, type: !7)
!6695 = !DILocation(line: 87, column: 50, scope: !5813)
!6696 = !DILocalVariable(name: "f_if1", scope: !5813, file: !3, line: 87, type: !7)
!6697 = !DILocation(line: 87, column: 58, scope: !5813)
!6698 = !DILocalVariable(name: "reg", scope: !5813, file: !3, line: 88, type: !435)
!6699 = !DILocation(line: 88, column: 6, scope: !5813)
!6700 = !DILocalVariable(name: "f_vco", scope: !5813, file: !3, line: 89, type: !441)
!6701 = !DILocation(line: 89, column: 6, scope: !5813)
!6702 = !DILocalVariable(name: "mode", scope: !5813, file: !3, line: 90, type: !1372)
!6703 = !DILocation(line: 90, column: 5, scope: !5813)
!6704 = !DILocalVariable(name: "filter_mode", scope: !5813, file: !3, line: 90, type: !1372)
!6705 = !DILocation(line: 90, column: 11, scope: !5813)
!6706 = !DILocalVariable(name: "f_rf", scope: !5813, file: !3, line: 126, type: !7)
!6707 = !DILocation(line: 126, column: 15, scope: !5813)
!6708 = !DILocation(line: 126, column: 22, scope: !5813)
!6709 = !DILocation(line: 126, column: 27, scope: !5813)
!6710 = !DILocalVariable(name: "bandwidth", scope: !5813, file: !3, line: 132, type: !7)
!6711 = !DILocation(line: 132, column: 15, scope: !5813)
!6712 = !DILocalVariable(name: "f_if", scope: !5813, file: !3, line: 138, type: !7)
!6713 = !DILocation(line: 138, column: 15, scope: !5813)
!6714 = !DILocation(line: 145, column: 9, scope: !6715)
!6715 = distinct !DILexicalBlock(scope: !5813, file: !3, line: 145, column: 2)
!6716 = !DILocation(line: 145, column: 7, scope: !6715)
!6717 = !DILocation(line: 145, column: 14, scope: !6718)
!6718 = distinct !DILexicalBlock(scope: !6715, file: !3, line: 145, column: 2)
!6719 = !DILocation(line: 145, column: 16, scope: !6718)
!6720 = !DILocation(line: 145, column: 2, scope: !6715)
!6721 = !DILocation(line: 146, column: 7, scope: !6722)
!6722 = distinct !DILexicalBlock(scope: !6723, file: !3, line: 146, column: 7)
!6723 = distinct !DILexicalBlock(scope: !6718, file: !3, line: 145, column: 45)
!6724 = !DILocation(line: 146, column: 24, scope: !6722)
!6725 = !DILocation(line: 146, column: 15, scope: !6722)
!6726 = !DILocation(line: 146, column: 27, scope: !6722)
!6727 = !DILocation(line: 146, column: 12, scope: !6722)
!6728 = !DILocation(line: 146, column: 7, scope: !6723)
!6729 = !DILocation(line: 147, column: 20, scope: !6730)
!6730 = distinct !DILexicalBlock(scope: !6722, file: !3, line: 146, column: 31)
!6731 = !DILocation(line: 147, column: 11, scope: !6730)
!6732 = !DILocation(line: 147, column: 23, scope: !6730)
!6733 = !DILocation(line: 147, column: 9, scope: !6730)
!6734 = !DILocation(line: 148, column: 22, scope: !6730)
!6735 = !DILocation(line: 148, column: 13, scope: !6730)
!6736 = !DILocation(line: 148, column: 25, scope: !6730)
!6737 = !DILocation(line: 148, column: 11, scope: !6730)
!6738 = !DILocation(line: 149, column: 4, scope: !6730)
!6739 = !DILocation(line: 151, column: 2, scope: !6723)
!6740 = !DILocation(line: 145, column: 41, scope: !6718)
!6741 = !DILocation(line: 145, column: 2, scope: !6718)
!6742 = distinct !{!6742, !6720, !6743}
!6743 = !DILocation(line: 151, column: 2, scope: !6715)
!6744 = !DILocation(line: 152, column: 6, scope: !6745)
!6745 = distinct !DILexicalBlock(scope: !5813, file: !3, line: 152, column: 6)
!6746 = !DILocation(line: 152, column: 8, scope: !6745)
!6747 = !DILocation(line: 152, column: 6, scope: !5813)
!6748 = !DILocation(line: 153, column: 7, scope: !6749)
!6749 = distinct !DILexicalBlock(scope: !6745, file: !3, line: 152, column: 33)
!6750 = !DILocation(line: 154, column: 3, scope: !6749)
!6751 = !DILocation(line: 158, column: 7, scope: !6752)
!6752 = distinct !DILexicalBlock(scope: !5813, file: !3, line: 158, column: 6)
!6753 = !DILocation(line: 158, column: 12, scope: !6752)
!6754 = !DILocation(line: 158, column: 18, scope: !6752)
!6755 = !DILocation(line: 158, column: 6, scope: !5813)
!6756 = !DILocation(line: 159, column: 9, scope: !6752)
!6757 = !DILocation(line: 159, column: 3, scope: !6752)
!6758 = !DILocation(line: 161, column: 9, scope: !6752)
!6759 = !DILocation(line: 163, column: 9, scope: !6760)
!6760 = distinct !DILexicalBlock(scope: !5813, file: !3, line: 163, column: 2)
!6761 = !DILocation(line: 163, column: 7, scope: !6760)
!6762 = !DILocation(line: 163, column: 14, scope: !6763)
!6763 = distinct !DILexicalBlock(scope: !6760, file: !3, line: 163, column: 2)
!6764 = !DILocation(line: 163, column: 16, scope: !6763)
!6765 = !DILocation(line: 163, column: 2, scope: !6760)
!6766 = !DILocation(line: 164, column: 7, scope: !6767)
!6767 = distinct !DILexicalBlock(scope: !6768, file: !3, line: 164, column: 7)
!6768 = distinct !DILexicalBlock(scope: !6763, file: !3, line: 163, column: 48)
!6769 = !DILocation(line: 164, column: 27, scope: !6767)
!6770 = !DILocation(line: 164, column: 15, scope: !6767)
!6771 = !DILocation(line: 164, column: 30, scope: !6767)
!6772 = !DILocation(line: 164, column: 12, scope: !6767)
!6773 = !DILocation(line: 164, column: 7, scope: !6768)
!6774 = !DILocation(line: 165, column: 30, scope: !6775)
!6775 = distinct !DILexicalBlock(scope: !6767, file: !3, line: 164, column: 36)
!6776 = !DILocation(line: 165, column: 18, scope: !6775)
!6777 = !DILocation(line: 165, column: 33, scope: !6775)
!6778 = !DILocation(line: 165, column: 16, scope: !6775)
!6779 = !DILocation(line: 166, column: 4, scope: !6775)
!6780 = !DILocation(line: 168, column: 2, scope: !6768)
!6781 = !DILocation(line: 163, column: 44, scope: !6763)
!6782 = !DILocation(line: 163, column: 2, scope: !6763)
!6783 = distinct !{!6783, !6765, !6784}
!6784 = !DILocation(line: 168, column: 2, scope: !6760)
!6785 = !DILocation(line: 169, column: 6, scope: !6786)
!6786 = distinct !DILexicalBlock(scope: !5813, file: !3, line: 169, column: 6)
!6787 = !DILocation(line: 169, column: 8, scope: !6786)
!6788 = !DILocation(line: 169, column: 6, scope: !5813)
!6789 = !DILocation(line: 170, column: 7, scope: !6790)
!6790 = distinct !DILexicalBlock(scope: !6786, file: !3, line: 169, column: 36)
!6791 = !DILocation(line: 171, column: 3, scope: !6790)
!6792 = !DILocation(line: 175, column: 14, scope: !5813)
!6793 = !DILocation(line: 175, column: 19, scope: !5813)
!6794 = !DILocation(line: 175, column: 30, scope: !5813)
!6795 = !DILocation(line: 175, column: 12, scope: !5813)
!6796 = !DILocalVariable(name: "__UNIQUE_ID___x255", scope: !6797, file: !3, line: 176, type: !7)
!6797 = distinct !DILexicalBlock(scope: !5813, file: !3, line: 176, column: 14)
!6798 = !DILocation(line: 176, column: 14, scope: !6797)
!6799 = !DILocalVariable(name: "__UNIQUE_ID___x253", scope: !6800, file: !3, line: 176, type: !7)
!6800 = distinct !DILexicalBlock(scope: !6797, file: !3, line: 176, column: 14)
!6801 = !DILocation(line: 176, column: 14, scope: !6800)
!6802 = !DILocalVariable(name: "__UNIQUE_ID___y254", scope: !6800, file: !3, line: 176, type: !7)
!6803 = !DILocalVariable(name: "__UNIQUE_ID___y256", scope: !6797, file: !3, line: 176, type: !7)
!6804 = !DILocation(line: 176, column: 12, scope: !5813)
!6805 = !DILocation(line: 178, column: 9, scope: !6806)
!6806 = distinct !DILexicalBlock(scope: !5813, file: !3, line: 178, column: 2)
!6807 = !DILocation(line: 178, column: 7, scope: !6806)
!6808 = !DILocation(line: 178, column: 14, scope: !6809)
!6809 = distinct !DILexicalBlock(scope: !6806, file: !3, line: 178, column: 2)
!6810 = !DILocation(line: 178, column: 16, scope: !6809)
!6811 = !DILocation(line: 178, column: 2, scope: !6806)
!6812 = !DILocation(line: 179, column: 7, scope: !6813)
!6813 = distinct !DILexicalBlock(scope: !6814, file: !3, line: 179, column: 7)
!6814 = distinct !DILexicalBlock(scope: !6809, file: !3, line: 178, column: 50)
!6815 = !DILocation(line: 179, column: 34, scope: !6813)
!6816 = !DILocation(line: 179, column: 20, scope: !6813)
!6817 = !DILocation(line: 179, column: 37, scope: !6813)
!6818 = !DILocation(line: 179, column: 17, scope: !6813)
!6819 = !DILocation(line: 179, column: 7, scope: !6814)
!6820 = !DILocation(line: 180, column: 30, scope: !6821)
!6821 = distinct !DILexicalBlock(scope: !6813, file: !3, line: 179, column: 43)
!6822 = !DILocation(line: 180, column: 16, scope: !6821)
!6823 = !DILocation(line: 180, column: 33, scope: !6821)
!6824 = !DILocation(line: 180, column: 14, scope: !6821)
!6825 = !DILocation(line: 181, column: 4, scope: !6821)
!6826 = !DILocation(line: 183, column: 2, scope: !6814)
!6827 = !DILocation(line: 178, column: 46, scope: !6809)
!6828 = !DILocation(line: 178, column: 2, scope: !6809)
!6829 = distinct !{!6829, !6811, !6830}
!6830 = !DILocation(line: 183, column: 2, scope: !6806)
!6831 = !DILocation(line: 184, column: 6, scope: !6832)
!6832 = distinct !DILexicalBlock(scope: !5813, file: !3, line: 184, column: 6)
!6833 = !DILocation(line: 184, column: 8, scope: !6832)
!6834 = !DILocation(line: 184, column: 6, scope: !5813)
!6835 = !DILocation(line: 185, column: 7, scope: !6836)
!6836 = distinct !DILexicalBlock(scope: !6832, file: !3, line: 184, column: 38)
!6837 = !DILocation(line: 186, column: 3, scope: !6836)
!6838 = !DILocation(line: 189, column: 38, scope: !5813)
!6839 = !DILocation(line: 189, column: 24, scope: !5813)
!6840 = !DILocation(line: 189, column: 41, scope: !5813)
!6841 = !DILocation(line: 189, column: 2, scope: !5813)
!6842 = !DILocation(line: 189, column: 7, scope: !5813)
!6843 = !DILocation(line: 189, column: 18, scope: !5813)
!6844 = !DILocation(line: 189, column: 22, scope: !5813)
!6845 = !DILocation(line: 210, column: 17, scope: !5813)
!6846 = !DILocation(line: 210, column: 24, scope: !5813)
!6847 = !DILocation(line: 210, column: 22, scope: !5813)
!6848 = !DILocation(line: 210, column: 31, scope: !5813)
!6849 = !DILocation(line: 210, column: 29, scope: !5813)
!6850 = !DILocation(line: 210, column: 10, scope: !5813)
!6851 = !DILocation(line: 210, column: 40, scope: !5813)
!6852 = !DILocation(line: 210, column: 38, scope: !5813)
!6853 = !DILocation(line: 210, column: 8, scope: !5813)
!6854 = !DILocation(line: 211, column: 22, scope: !5813)
!6855 = !DILocation(line: 211, column: 10, scope: !5813)
!6856 = !DILocation(line: 211, column: 8, scope: !5813)
!6857 = !DILocation(line: 212, column: 35, scope: !5813)
!6858 = !DILocation(line: 212, column: 33, scope: !5813)
!6859 = !DILocation(line: 212, column: 11, scope: !5813)
!6860 = !DILocation(line: 213, column: 25, scope: !5813)
!6861 = !DILocation(line: 213, column: 19, scope: !5813)
!6862 = !DILocation(line: 213, column: 29, scope: !5813)
!6863 = !DILocation(line: 213, column: 27, scope: !5813)
!6864 = !DILocation(line: 213, column: 11, scope: !5813)
!6865 = !DILocation(line: 213, column: 9, scope: !5813)
!6866 = !DILocation(line: 216, column: 14, scope: !5813)
!6867 = !DILocation(line: 216, column: 24, scope: !5813)
!6868 = !DILocation(line: 216, column: 10, scope: !5813)
!6869 = !DILocation(line: 216, column: 8, scope: !5813)
!6870 = !DILocation(line: 217, column: 14, scope: !5813)
!6871 = !DILocation(line: 217, column: 11, scope: !5813)
!6872 = !DILocation(line: 218, column: 12, scope: !5813)
!6873 = !DILocation(line: 218, column: 9, scope: !5813)
!6874 = !DILocation(line: 221, column: 10, scope: !5813)
!6875 = !DILocation(line: 221, column: 8, scope: !5813)
!6876 = !DILocalVariable(name: "__x", scope: !6877, file: !3, line: 222, type: !7)
!6877 = distinct !DILexicalBlock(scope: !5813, file: !3, line: 222, column: 13)
!6878 = !DILocation(line: 222, column: 13, scope: !6877)
!6879 = !DILocalVariable(name: "__d", scope: !6877, file: !3, line: 222, type: !7)
!6880 = !DILocation(line: 222, column: 11, scope: !5813)
!6881 = !DILocalVariable(name: "__x", scope: !6882, file: !3, line: 223, type: !7)
!6882 = distinct !DILexicalBlock(scope: !5813, file: !3, line: 223, column: 11)
!6883 = !DILocation(line: 223, column: 11, scope: !6882)
!6884 = !DILocalVariable(name: "__d", scope: !6882, file: !3, line: 223, type: !7)
!6885 = !DILocation(line: 223, column: 9, scope: !5813)
!6886 = !DILocation(line: 226, column: 45, scope: !5813)
!6887 = !DILocation(line: 226, column: 43, scope: !5813)
!6888 = !DILocation(line: 226, column: 8, scope: !5813)
!6889 = !DILocation(line: 227, column: 46, scope: !5813)
!6890 = !DILocation(line: 227, column: 44, scope: !5813)
!6891 = !DILocation(line: 227, column: 55, scope: !5813)
!6892 = !DILocation(line: 227, column: 53, scope: !5813)
!6893 = !DILocation(line: 227, column: 8, scope: !5813)
!6894 = !DILocation(line: 228, column: 11, scope: !5813)
!6895 = !DILocation(line: 228, column: 8, scope: !5813)
!6896 = !DILocation(line: 234, column: 20, scope: !5813)
!6897 = !DILocation(line: 234, column: 8, scope: !5813)
!6898 = !DILocation(line: 234, column: 6, scope: !5813)
!6899 = !DILocation(line: 235, column: 6, scope: !6900)
!6900 = distinct !DILexicalBlock(scope: !5813, file: !3, line: 235, column: 6)
!6901 = !DILocation(line: 235, column: 6, scope: !5813)
!6902 = !DILocation(line: 236, column: 3, scope: !6900)
!6903 = !DILocation(line: 238, column: 20, scope: !5813)
!6904 = !DILocation(line: 238, column: 8, scope: !5813)
!6905 = !DILocation(line: 238, column: 6, scope: !5813)
!6906 = !DILocation(line: 239, column: 6, scope: !6907)
!6907 = distinct !DILexicalBlock(scope: !5813, file: !3, line: 239, column: 6)
!6908 = !DILocation(line: 239, column: 6, scope: !5813)
!6909 = !DILocation(line: 240, column: 3, scope: !6907)
!6910 = !DILocation(line: 242, column: 6, scope: !5813)
!6911 = !DILocation(line: 243, column: 9, scope: !5813)
!6912 = !DILocation(line: 243, column: 14, scope: !5813)
!6913 = !DILocation(line: 243, column: 6, scope: !5813)
!6914 = !DILocation(line: 244, column: 9, scope: !5813)
!6915 = !DILocation(line: 244, column: 21, scope: !5813)
!6916 = !DILocation(line: 244, column: 6, scope: !5813)
!6917 = !DILocation(line: 245, column: 9, scope: !5813)
!6918 = !DILocation(line: 245, column: 19, scope: !5813)
!6919 = !DILocation(line: 245, column: 6, scope: !5813)
!6920 = !DILocation(line: 246, column: 6, scope: !5813)
!6921 = !DILocation(line: 247, column: 6, scope: !5813)
!6922 = !DILocation(line: 248, column: 20, scope: !5813)
!6923 = !DILocation(line: 248, column: 25, scope: !5813)
!6924 = !DILocation(line: 248, column: 8, scope: !5813)
!6925 = !DILocation(line: 248, column: 6, scope: !5813)
!6926 = !DILocation(line: 249, column: 6, scope: !6927)
!6927 = distinct !DILexicalBlock(scope: !5813, file: !3, line: 249, column: 6)
!6928 = !DILocation(line: 249, column: 6, scope: !5813)
!6929 = !DILocation(line: 250, column: 3, scope: !6927)
!6930 = !DILocation(line: 252, column: 6, scope: !5813)
!6931 = !DILocation(line: 253, column: 9, scope: !5813)
!6932 = !DILocation(line: 253, column: 18, scope: !5813)
!6933 = !DILocation(line: 253, column: 6, scope: !5813)
!6934 = !DILocation(line: 254, column: 6, scope: !5813)
!6935 = !DILocation(line: 255, column: 6, scope: !5813)
!6936 = !DILocation(line: 256, column: 20, scope: !5813)
!6937 = !DILocation(line: 256, column: 25, scope: !5813)
!6938 = !DILocation(line: 256, column: 8, scope: !5813)
!6939 = !DILocation(line: 256, column: 6, scope: !5813)
!6940 = !DILocation(line: 257, column: 6, scope: !6941)
!6941 = distinct !DILexicalBlock(scope: !5813, file: !3, line: 257, column: 6)
!6942 = !DILocation(line: 257, column: 6, scope: !5813)
!6943 = !DILocation(line: 258, column: 3, scope: !6941)
!6944 = !DILocation(line: 260, column: 6, scope: !5813)
!6945 = !DILocation(line: 261, column: 9, scope: !5813)
!6946 = !DILocation(line: 261, column: 16, scope: !5813)
!6947 = !DILocation(line: 261, column: 6, scope: !5813)
!6948 = !DILocation(line: 262, column: 9, scope: !5813)
!6949 = !DILocation(line: 262, column: 15, scope: !5813)
!6950 = !DILocation(line: 262, column: 6, scope: !5813)
!6951 = !DILocation(line: 263, column: 20, scope: !5813)
!6952 = !DILocation(line: 263, column: 25, scope: !5813)
!6953 = !DILocation(line: 263, column: 8, scope: !5813)
!6954 = !DILocation(line: 263, column: 6, scope: !5813)
!6955 = !DILocation(line: 264, column: 6, scope: !6956)
!6956 = distinct !DILexicalBlock(scope: !5813, file: !3, line: 264, column: 6)
!6957 = !DILocation(line: 264, column: 6, scope: !5813)
!6958 = !DILocation(line: 265, column: 3, scope: !6956)
!6959 = !DILocation(line: 267, column: 24, scope: !5813)
!6960 = !DILocation(line: 267, column: 29, scope: !5813)
!6961 = !DILocation(line: 267, column: 34, scope: !5813)
!6962 = !DILocation(line: 267, column: 44, scope: !5813)
!6963 = !DILocation(line: 267, column: 48, scope: !5813)
!6964 = !DILocation(line: 268, column: 10, scope: !5813)
!6965 = !DILocation(line: 268, column: 15, scope: !5813)
!6966 = !DILocation(line: 268, column: 27, scope: !5813)
!6967 = !DILocation(line: 268, column: 31, scope: !5813)
!6968 = !DILocation(line: 268, column: 36, scope: !5813)
!6969 = !DILocation(line: 268, column: 41, scope: !5813)
!6970 = !DILocation(line: 268, column: 50, scope: !5813)
!6971 = !DILocation(line: 268, column: 54, scope: !5813)
!6972 = !DILocation(line: 267, column: 8, scope: !5813)
!6973 = !DILocation(line: 267, column: 6, scope: !5813)
!6974 = !DILocation(line: 269, column: 6, scope: !6975)
!6975 = distinct !DILexicalBlock(scope: !5813, file: !3, line: 269, column: 6)
!6976 = !DILocation(line: 269, column: 6, scope: !5813)
!6977 = !DILocation(line: 270, column: 3, scope: !6975)
!6978 = !DILocation(line: 272, column: 6, scope: !5813)
!6979 = !DILocation(line: 273, column: 6, scope: !5813)
!6980 = !DILocation(line: 274, column: 6, scope: !5813)
!6981 = !DILocation(line: 275, column: 20, scope: !5813)
!6982 = !DILocation(line: 275, column: 25, scope: !5813)
!6983 = !DILocation(line: 275, column: 8, scope: !5813)
!6984 = !DILocation(line: 275, column: 6, scope: !5813)
!6985 = !DILocation(line: 276, column: 6, scope: !6986)
!6986 = distinct !DILexicalBlock(scope: !5813, file: !3, line: 276, column: 6)
!6987 = !DILocation(line: 276, column: 6, scope: !5813)
!6988 = !DILocation(line: 277, column: 3, scope: !6986)
!6989 = !DILocation(line: 279, column: 2, scope: !5813)
!6990 = !DILabel(scope: !5813, name: "err", file: !3, line: 280)
!6991 = !DILocation(line: 280, column: 1, scope: !5813)
!6992 = !DILocation(line: 282, column: 9, scope: !5813)
!6993 = !DILocation(line: 282, column: 2, scope: !5813)
!6994 = !DILocation(line: 283, column: 1, scope: !5813)
!6995 = distinct !DISubprogram(name: "div_u64_rem", scope: !6996, file: !6996, line: 25, type: !6997, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !266)
!6996 = !DIFile(filename: "./include/linux/math64.h", directory: "/home/lizy2001/genbc/linux")
!6997 = !DISubroutineType(types: !6998)
!6998 = !{!441, !441, !435, !1435}
!6999 = !DILocalVariable(name: "dividend", arg: 1, scope: !6995, file: !6996, line: 25, type: !441)
!7000 = !DILocation(line: 25, column: 35, scope: !6995)
!7001 = !DILocalVariable(name: "divisor", arg: 2, scope: !6995, file: !6996, line: 25, type: !435)
!7002 = !DILocation(line: 25, column: 49, scope: !6995)
!7003 = !DILocalVariable(name: "remainder", arg: 3, scope: !6995, file: !6996, line: 25, type: !1435)
!7004 = !DILocation(line: 25, column: 63, scope: !6995)
!7005 = !DILocation(line: 27, column: 15, scope: !6995)
!7006 = !DILocation(line: 27, column: 26, scope: !6995)
!7007 = !DILocation(line: 27, column: 24, scope: !6995)
!7008 = !DILocation(line: 27, column: 3, scope: !6995)
!7009 = !DILocation(line: 27, column: 13, scope: !6995)
!7010 = !DILocation(line: 28, column: 9, scope: !6995)
!7011 = !DILocation(line: 28, column: 20, scope: !6995)
!7012 = !DILocation(line: 28, column: 18, scope: !6995)
!7013 = !DILocation(line: 28, column: 2, scope: !6995)
!7014 = distinct !DISubprogram(name: "div_u64", scope: !6996, file: !6996, line: 124, type: !7015, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !266)
!7015 = !DISubroutineType(types: !7016)
!7016 = !{!441, !441, !435}
!7017 = !DILocalVariable(name: "dividend", arg: 1, scope: !7014, file: !6996, line: 124, type: !441)
!7018 = !DILocation(line: 124, column: 31, scope: !7014)
!7019 = !DILocalVariable(name: "divisor", arg: 2, scope: !7014, file: !6996, line: 124, type: !435)
!7020 = !DILocation(line: 124, column: 45, scope: !7014)
!7021 = !DILocalVariable(name: "remainder", scope: !7014, file: !6996, line: 126, type: !435)
!7022 = !DILocation(line: 126, column: 6, scope: !7014)
!7023 = !DILocation(line: 127, column: 21, scope: !7014)
!7024 = !DILocation(line: 127, column: 31, scope: !7014)
!7025 = !DILocation(line: 127, column: 9, scope: !7014)
!7026 = !DILocation(line: 127, column: 2, scope: !7014)
!7027 = distinct !DISubprogram(name: "msi001_set_gain", scope: !3, file: !3, line: 56, type: !7028, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !266)
!7028 = !DISubroutineType(types: !7029)
!7029 = !{!278, !219, !278, !278, !278}
!7030 = !DILocalVariable(name: "dev", arg: 1, scope: !7027, file: !3, line: 56, type: !219)
!7031 = !DILocation(line: 56, column: 47, scope: !7027)
!7032 = !DILocalVariable(name: "lna_gain", arg: 2, scope: !7027, file: !3, line: 56, type: !278)
!7033 = !DILocation(line: 56, column: 56, scope: !7027)
!7034 = !DILocalVariable(name: "mixer_gain", arg: 3, scope: !7027, file: !3, line: 56, type: !278)
!7035 = !DILocation(line: 56, column: 70, scope: !7027)
!7036 = !DILocalVariable(name: "if_gain", arg: 4, scope: !7027, file: !3, line: 57, type: !278)
!7037 = !DILocation(line: 57, column: 11, scope: !7027)
!7038 = !DILocalVariable(name: "spi", scope: !7027, file: !3, line: 59, type: !223)
!7039 = !DILocation(line: 59, column: 21, scope: !7027)
!7040 = !DILocation(line: 59, column: 27, scope: !7027)
!7041 = !DILocation(line: 59, column: 32, scope: !7027)
!7042 = !DILocalVariable(name: "ret", scope: !7027, file: !3, line: 60, type: !278)
!7043 = !DILocation(line: 60, column: 6, scope: !7027)
!7044 = !DILocalVariable(name: "reg", scope: !7027, file: !3, line: 61, type: !435)
!7045 = !DILocation(line: 61, column: 6, scope: !7027)
!7046 = !DILocation(line: 66, column: 6, scope: !7027)
!7047 = !DILocation(line: 67, column: 15, scope: !7027)
!7048 = !DILocation(line: 67, column: 13, scope: !7027)
!7049 = !DILocation(line: 67, column: 24, scope: !7027)
!7050 = !DILocation(line: 67, column: 6, scope: !7027)
!7051 = !DILocation(line: 68, column: 6, scope: !7027)
!7052 = !DILocation(line: 69, column: 14, scope: !7027)
!7053 = !DILocation(line: 69, column: 12, scope: !7027)
!7054 = !DILocation(line: 69, column: 26, scope: !7027)
!7055 = !DILocation(line: 69, column: 6, scope: !7027)
!7056 = !DILocation(line: 70, column: 14, scope: !7027)
!7057 = !DILocation(line: 70, column: 12, scope: !7027)
!7058 = !DILocation(line: 70, column: 24, scope: !7027)
!7059 = !DILocation(line: 70, column: 6, scope: !7027)
!7060 = !DILocation(line: 71, column: 6, scope: !7027)
!7061 = !DILocation(line: 72, column: 6, scope: !7027)
!7062 = !DILocation(line: 73, column: 20, scope: !7027)
!7063 = !DILocation(line: 73, column: 25, scope: !7027)
!7064 = !DILocation(line: 73, column: 8, scope: !7027)
!7065 = !DILocation(line: 73, column: 6, scope: !7027)
!7066 = !DILocation(line: 74, column: 6, scope: !7067)
!7067 = distinct !DILexicalBlock(scope: !7027, file: !3, line: 74, column: 6)
!7068 = !DILocation(line: 74, column: 6, scope: !7027)
!7069 = !DILocation(line: 75, column: 3, scope: !7067)
!7070 = !DILocation(line: 77, column: 2, scope: !7027)
!7071 = !DILabel(scope: !7027, name: "err", file: !3, line: 78)
!7072 = !DILocation(line: 78, column: 1, scope: !7027)
!7073 = !DILocation(line: 80, column: 9, scope: !7027)
!7074 = !DILocation(line: 80, column: 2, scope: !7027)
!7075 = !DILocation(line: 81, column: 1, scope: !7027)
!7076 = distinct !DISubprogram(name: "msi001_s_ctrl", scope: !3, file: !3, line: 379, type: !4479, scopeLine: 380, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !266)
!7077 = !DILocalVariable(name: "ctrl", arg: 1, scope: !7076, file: !3, line: 379, type: !4451)
!7078 = !DILocation(line: 379, column: 44, scope: !7076)
!7079 = !DILocalVariable(name: "dev", scope: !7076, file: !3, line: 381, type: !219)
!7080 = !DILocation(line: 381, column: 21, scope: !7076)
!7081 = !DILocalVariable(name: "__mptr", scope: !7082, file: !3, line: 381, type: !218)
!7082 = distinct !DILexicalBlock(scope: !7076, file: !3, line: 381, column: 27)
!7083 = !DILocation(line: 381, column: 27, scope: !7082)
!7084 = !DILocation(line: 381, column: 27, scope: !7085)
!7085 = distinct !DILexicalBlock(scope: !7082, file: !3, line: 381, column: 27)
!7086 = !DILocalVariable(name: "spi", scope: !7076, file: !3, line: 382, type: !223)
!7087 = !DILocation(line: 382, column: 21, scope: !7076)
!7088 = !DILocation(line: 382, column: 27, scope: !7076)
!7089 = !DILocation(line: 382, column: 32, scope: !7076)
!7090 = !DILocalVariable(name: "ret", scope: !7076, file: !3, line: 384, type: !278)
!7091 = !DILocation(line: 384, column: 6, scope: !7076)
!7092 = !DILocation(line: 390, column: 10, scope: !7076)
!7093 = !DILocation(line: 390, column: 16, scope: !7076)
!7094 = !DILocation(line: 390, column: 2, scope: !7076)
!7095 = !DILocation(line: 393, column: 26, scope: !7096)
!7096 = distinct !DILexicalBlock(scope: !7076, file: !3, line: 390, column: 20)
!7097 = !DILocation(line: 393, column: 9, scope: !7096)
!7098 = !DILocation(line: 393, column: 7, scope: !7096)
!7099 = !DILocation(line: 394, column: 3, scope: !7096)
!7100 = !DILocation(line: 396, column: 25, scope: !7096)
!7101 = !DILocation(line: 396, column: 30, scope: !7096)
!7102 = !DILocation(line: 396, column: 35, scope: !7096)
!7103 = !DILocation(line: 396, column: 45, scope: !7096)
!7104 = !DILocation(line: 397, column: 11, scope: !7096)
!7105 = !DILocation(line: 397, column: 16, scope: !7096)
!7106 = !DILocation(line: 397, column: 28, scope: !7096)
!7107 = !DILocation(line: 397, column: 32, scope: !7096)
!7108 = !DILocation(line: 398, column: 11, scope: !7096)
!7109 = !DILocation(line: 398, column: 16, scope: !7096)
!7110 = !DILocation(line: 398, column: 25, scope: !7096)
!7111 = !DILocation(line: 398, column: 29, scope: !7096)
!7112 = !DILocation(line: 396, column: 9, scope: !7096)
!7113 = !DILocation(line: 396, column: 7, scope: !7096)
!7114 = !DILocation(line: 399, column: 3, scope: !7096)
!7115 = !DILocation(line: 401, column: 25, scope: !7096)
!7116 = !DILocation(line: 401, column: 30, scope: !7096)
!7117 = !DILocation(line: 401, column: 35, scope: !7096)
!7118 = !DILocation(line: 401, column: 45, scope: !7096)
!7119 = !DILocation(line: 401, column: 49, scope: !7096)
!7120 = !DILocation(line: 402, column: 11, scope: !7096)
!7121 = !DILocation(line: 402, column: 16, scope: !7096)
!7122 = !DILocation(line: 402, column: 28, scope: !7096)
!7123 = !DILocation(line: 403, column: 11, scope: !7096)
!7124 = !DILocation(line: 403, column: 16, scope: !7096)
!7125 = !DILocation(line: 403, column: 25, scope: !7096)
!7126 = !DILocation(line: 403, column: 29, scope: !7096)
!7127 = !DILocation(line: 401, column: 9, scope: !7096)
!7128 = !DILocation(line: 401, column: 7, scope: !7096)
!7129 = !DILocation(line: 404, column: 3, scope: !7096)
!7130 = !DILocation(line: 406, column: 25, scope: !7096)
!7131 = !DILocation(line: 406, column: 30, scope: !7096)
!7132 = !DILocation(line: 406, column: 35, scope: !7096)
!7133 = !DILocation(line: 406, column: 45, scope: !7096)
!7134 = !DILocation(line: 406, column: 49, scope: !7096)
!7135 = !DILocation(line: 407, column: 11, scope: !7096)
!7136 = !DILocation(line: 407, column: 16, scope: !7096)
!7137 = !DILocation(line: 407, column: 28, scope: !7096)
!7138 = !DILocation(line: 407, column: 32, scope: !7096)
!7139 = !DILocation(line: 408, column: 11, scope: !7096)
!7140 = !DILocation(line: 408, column: 16, scope: !7096)
!7141 = !DILocation(line: 408, column: 25, scope: !7096)
!7142 = !DILocation(line: 406, column: 9, scope: !7096)
!7143 = !DILocation(line: 406, column: 7, scope: !7096)
!7144 = !DILocation(line: 409, column: 3, scope: !7096)
!7145 = !DILocation(line: 412, column: 7, scope: !7096)
!7146 = !DILocation(line: 413, column: 2, scope: !7096)
!7147 = !DILocation(line: 415, column: 9, scope: !7076)
!7148 = !DILocation(line: 415, column: 2, scope: !7076)
!7149 = distinct !DISubprogram(name: "spi_get_drvdata", scope: !225, file: !225, line: 245, type: !7150, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !266)
!7150 = !DISubroutineType(types: !7151)
!7151 = !{!218, !223}
!7152 = !DILocalVariable(name: "spi", arg: 1, scope: !7149, file: !225, line: 245, type: !223)
!7153 = !DILocation(line: 245, column: 56, scope: !7149)
!7154 = !DILocation(line: 247, column: 26, scope: !7149)
!7155 = !DILocation(line: 247, column: 31, scope: !7149)
!7156 = !DILocation(line: 247, column: 9, scope: !7149)
!7157 = !DILocation(line: 247, column: 2, scope: !7149)
!7158 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !73, file: !73, line: 655, type: !7159, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !266)
!7159 = !DISubroutineType(types: !7160)
!7160 = !{!218, !3746}
!7161 = !DILocalVariable(name: "dev", arg: 1, scope: !7158, file: !73, line: 655, type: !3746)
!7162 = !DILocation(line: 655, column: 58, scope: !7158)
!7163 = !DILocation(line: 657, column: 9, scope: !7158)
!7164 = !DILocation(line: 657, column: 14, scope: !7158)
!7165 = !DILocation(line: 657, column: 2, scope: !7158)
